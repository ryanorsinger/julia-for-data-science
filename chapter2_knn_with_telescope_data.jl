
"""distance function defaults to euclidean distance with the option for 'manhattan' or city block distance."""
function distance(x, y, distance_measure="euclidean")
    if distance_measure == "city_block_distance"
        return city_block_distance(x, y)
    end
    return euclidean_distance(x, y)
end

function euclidean_distance(x, y)
    distance = 0
    for i in 1:length(x)
        distance += (x[i] - y[i])^2
    end
    distance = sqrt(distance)
    return distance
end

function city_block_distance(x, y)
    distance = 0
    for i in 1:length(x)
        distance += abs(x[i] - y[i])
    end
    distance = sqrt(distance)
    return distance
end
    

""" Define the implementation of the classify function """
function classify(distances, labels, k)
    # Find all of the distinct classes
    class = unique(labels)

    # Determine the number of classees
    number_of_classes = length(class) 
    
    # Initialize the vector of indexes
    indexes = Array{Int, 0}
    
    # Specify the largest possible number that this vector can have
    M = typemax(distances[1])
    
    class_count = Array{Int, number_of_classes}
    
    for i in 1:k
        indexes[i] = argmin(distances)
        
        # make sure this element is not selected again
        distances[indexes[i]] = M
    end
    
    klabels = labels[indexes]
    for i in 1:number_of_classes
        for j in 1:k
            if klabels[j] == class[i]
                class_count[i] += 1
                break
            end
        end
    end
    index = argmax(class_count)
    return class[index]
end


function apply_kNN(X, x, Y, k)

    N = size(X, 1) # Number of known datapoints
    
    n = size(Y, 1) # number of datapoints to classify
    
    D = Array{Float64}(undef, N)
    
    z = Array{typeof(x[1]), n} # Initialize the labels vector (output)
    
    for i in 1:n
        for j in 1:N
            D[j] = distance(X[j,:], Y[i,:])
        end
        z[i] = classify(D, x, k)
    end
    return z
end


# To install a package, run the following line in this notebook or from the Julia REPL.
# import Pkg; Pkg.add("CSV")
# using Pkg; Pkg.add("Random") # Uncomment and run this line if you need to install the "Random" package
# If the CSV package is already installed, this is the only line necessary to use it in a program.

using CSV 
using DataFrames
using Random

# This file is from https://archive.ics.uci.edu/ml/datasets/magic+gamma+telescope
data = CSV.File("./data/Magic/magic04.csv") 

# Create a dataframe out of the CSV data object
data = DataFrame(data)

# Set I to hold all of the numeric columns
I = data[:, 1:(end-1)]

# Set O variable to hold the column of labels. "g" for "gamma" and "h" for "hadron"
O = data[:, end]

N = length(O) 
n = round(Int64, N / 2)

R = randperm(N) # a random permutation of all the indexes (essential for sampling)
indX = R[1:n] # get some random indexes for the training set 
X = I[indX, :] # input values for training and testing set respectively
x = O[indX] # Target values for training and testing set respectively
indY = R[(n+1):end] # get some random indexes for the training set 
Y = I[indY,:] # input values for training and testing set respectively
y = O[indY] # Target values for training and testing set respectively

# # Let's test the implementation of the kNN algorithm using the Magic dataset
z = apply_kNN(X, x, Y, 5)

print(z)
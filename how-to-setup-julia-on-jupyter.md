# How to setup your Jupyter notebooks to use Julia

## Rationale
- Julia is high performance general purpose programming language built to be fast and dynamic with high level syntax, making it more direct to learn.
    - [Juila performance benchmarks](https://julialang.org/benchmarks/)
    - Built around matrix/vectorized computations. For example `[1, 2, 3] * 3 is [3, 6, 9]` and `[[1, 2], [3, 4], [5, 6]] * 2 is [2, 4], [6, 8], [10, 12]`.
    - My personal favorite thing in Julia is syntax to define functions. For example typing `f(x) = x + 3` creates a function named f that does exactly this process. 
    - While general purpose, Julia's syntax and paradigms are extremely well suited for mathematics and the sciences.
- Jupyter notebooks are an in-browser interactive coding environment great for projects, curriculum, and everything from rapid prototyping to creating full products. Commonly used with languages like Python and R for data oriented projects, it's fairly direct to configure Jupyter notebooks.

## Quickest Setup - Access Julia running in a hosted Jupyter notebook online.
- Create a free tier account on https://juliabox.com/ and get after it :)

## Setup and installation of Julia + Jupyter on your own machine (runs faster, loads quicker)
- [Install the Julia Language](https://julialang.org/downloads/) on your computer.
- Most importantly, add Julia to your $PATH. See https://julialang.org/downloads/platform.html for more detailed information.
- For Mac users who use Homebrew to install applications, it's super quick to run `brew cask install julia`. This process will also automatically put Julia in your $PATH.

- [Install Jupyter](https://jupyter.org/install), the in-browser interactive programming environment.

Open up the Julia REPL by launching the application or running `julia` from your terminal.

Once in the Julia repl, type `using Pkg` and then run `Pkg.add("IJulia")` to install IJulia on your machine.

Launch Jupyter and you'll see the Julia language listed as one of your kernels!


## Additional Julia Resources
- The language official documentation https://docs.julialang.org/
- [Julia Language Youtube Channel](https://www.youtube.com/user/JuliaLanguage)
- [Julia Language Learning Resources](https://julialang.org/learning/)

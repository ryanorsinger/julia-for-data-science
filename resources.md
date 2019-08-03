

## How to run Julia code
[Setup Julia to run on Jupyter Notebooks](https://ryanorsinger.com/run-julia-language-on-jupyter-notebook/)


## Video courses and conference recordings
[Julia Language Youtube Channel](https://www.youtube.com/user/JuliaLanguage)


## Community Links
https://julialang.org/community/
https://discourse.julialang.org/


## Source and Packages
https://github.com/JuliaLang
https://pkg.julialang.org/docs/


## Package installation and usage
`Pkg.add("mypackage")` to install
`Pkg.clone("git://github.com/AuthorName/SomeCoolPackage.jl.git")` to pull a package in by the repo's address
`Pkg.update()` to update packages
Write `using mypackage` inside a Julia script to use an installed package
Document\tation for Pkg is at https://julialang.github.io/Pkg.jl/



## Using Julia w/ Jupyter
- If you prefer to share the notebook with other people without needing to run code (e.g. via a website, or as part of a demonstration), you can export it either as an .html file or a LaTex-based digital printout (.pdf file).

## Using other .jl code files
`include("my_other_script.jl")`
Once you run the include() command, everything in that file will be executed

## Julia Shell command functions
`pwd()`
`cd("~/path/to/stuff")`


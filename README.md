# AdvancedR3: Advanced Reproducible Research

The overall aim of this workshop is to enable you to:

-   Describe what an open, collaboration-friendly, and nearly-automated
    reproducible data analysis pipeline and workflow looks like.

-   Design your code and analysis using simple principles and concepts
    that allow you to write more flexible and robust code that does more
    for less and that is friendlier to both you and your collaborators.

-   Create an R project that follows these practices.

# Brief description of folder and file contents

The following folders contain:

-   `data/`: lipidomics data from DOI: 10.5281/zenodo.6597902, Direct
    URL: <https://zenodo.org/record/6597902>
-   `docs/`: contains the main scientific product of the project as well
    as all other files related to it
-   `R/`: contains custom functions or R scripts used for this project's
    analyses

# Installing project R package dependencies

If dependencies have been managed by using
`usethis::use_package("packagename")` through the `DESCRIPTION` file,
installing dependencies is as easy as opening the `AdvancedR3.Rproj`
file and running this command in the console:

```         
# install.packages("pak")
pak::pak()
```

You'll need to have remotes installed for this to work.

# Resource

For more information on this folder and file workflow and setup, check
out the [prodigenr](https://rostools.github.io/prodigenr) online
documentation.

Cognitive Development Lab - Datavyu Material
=======

# general

General scripts to be used with the www.datavyu.org software. These are designed not to be specific to any particular type of project.

## `datavyu2csv.rb`

Creates a `.csv` file that contains all the cells found for a particular column, and converts any empty arguments to empty spaces. Multiple files will be created for each column. It doesn't do any other processing, such as handling nested columns. Mostly used for batch importing [datavyu](datavyu.org/user-guide/api.html) files into other software such as R, Python, or MATLAB (or working in Excel).

1. Get the script `datavyu2csv.rb` from the `general` folder.
2. Make sure the `.opf` files you want to convert to `.csv` are all in one folder on your computer somewhere.
3. Run the script `datavyu2csv.rb` through datavyu
3. When prompted, select the folder containing the `.opf` files
4. A new subfolder will be made that outputs a `.csv` file for each column and each `.opf` file found in your selected folder.

# tutorial

Scripting tutorial for the lab catered towards beginners. The tutorial is not very detailed and focuses mostly on quickly making several columns with multiple `<codes>` and also some basics on extracting data from Datavyu using Ruby.

# datavyur

This is an R package to help with getting data from Datavyu and into R and back into Datavyu again.

## How to install

### Windows dependencies

If you're on Windows, you might need to install rtools first before you can use the `devtools` package in step 1. To install, see here: [http://cran.r-project.org/bin/windows/Rtools/](http://cran.r-project.org/bin/windows/Rtools/)

###Step 1.

First, open RStudio and then install the package `devtools` from CRAN. This is so you can get the package from the internet (GitHub) and build it. After that, load the library. Here are the steps for this in the R console:

```r
install.packages("devtools")
library(devtools)
```

###Step 2.

Use the `install_github` function from the package you just installed and loaded. This will download the package from the `datavyur` github repository and build it on your computer. Run this code:

```r
install_github("iamamutt/datavyu/datavyur")
```

###Step 3.

The package is now installed. Load the package as you normally would any other package. Repeat steps 2--3 if there are updates to the package or to reinstall on another computer. You should now see it in your packages tab within RStudio.

```r
library(datavyur)
```

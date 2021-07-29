# Ana's Practice Task

## Hello*! Welcome to my GSLab RA PracticeTask
\* (Houda)

## This repo uses the GSLab Template! The text below is from the [[original repo]](https://github.com/gslab-econ/template)
The GSLab Template is a minimal working demonstration of the [tools and organization](https://github.com/gslab-econ/ra-manual/wiki/Getting-Started) used by projects in the GSLab. We use [SCons](http://scons.org/) and a few custom builders to execute scripts and track dependencies in a portable and flexible manner.

## Prerequisites

You'll need the following to run the template. [Homebrew](https://brew.sh/) for Mac and [Linuxbrew](http://linuxbrew.sh/) for Linux make this easier.
* Windows `cmd.exe`, Mac OS X `bash`, or Linux `bash`.
* [Python 2.7.X](https://wiki.python.org/moin/BeginnersGuide/Download) and [pip](https://pip.pypa.io/en/stable/installing/) for [Windows](https://docs.python.org/2/using/windows.html), [Mac](https://docs.python.org/2/using/mac.html) or [Linux](https://docs.python.org/2/using/unix.html).
* [git](https://git-scm.com/downloads) for version control.
    * [git-lfs](https://git-lfs.github.com/) for versioning large files. 
    * You'll need both git and git-lfs to clone the repository. 
* [LyX](https://www.lyx.org/Download) (with instructions for LaTeX) 
    * Add LyX to your PATH for [Windows](http://www.computerhope.com/issues/ch000549.htm), [Mac](http://hathaway.cc/post/69201163472/how-to-edit-your-path-environment-variables-on-mac), and [Linux](http://stackoverflow.com/questions/14637979/how-to-permanently-set-path-on-linux).
    * The beamer theme [`metropolis`](https://github.com/matze/mtheme). This is part of MikTeX since Dec 2014. 

## Quick start

1. Open a shell, clone the repository, and navigate to its root.
    ```bash
    git lfs clone https://github.com/gslab-econ/template.git YourProjectName
    cd YourProjectName
    ```
2. Install Python dependencies ([GSLab Python v4.1.0](https://github.com/gslab-econ/gslab_python/tree/v4.1.0), [PyYAML](http://pyyaml.org/), [numpy](http://www.numpy.org/), and [matplotlib]('matplotlib')).
    ```bash
    # Store package names in this text file.
    pip install -r config/requirements.txt
    ```
3. Unzip the scons package.
    ```bash
    unzip config/scons.zip -d config/scons # Do manually on Windows
    ```
4. Navigate to the `analysis` or `paper_slides` subdirectory.  
    ```bash
    cd analysis
    ```
5. You're ready to go. We'll prompt you to enter any necessary information and store it in `config_user.yaml` as your scripts run. 
    * To build everything in the subdirectory that has been modified or with dependencies in the subdirectory that have been modified.
        ```bash
        python run.py
        ```
    * To build everything in a single directory of targets that has been modified and all of their dependencies that have been modified.
        ```bash
        python run.py build/path/to/directory
        ```
    * To build a single target that has been modified and all of its dependencies that have been modified.
        ```bash
        python run.py build/path/to/file.txt
        ```

## Copying the template

If you want to create a repository with the same structure as this template you can fork it. If you want a repository without any of our git history, follow these instructions. 
* Create an empty repository in GitHub and clone it. 
* Copy the contents of this template into the empty repository. Make sure to exclude the `.git` folder, but include the [`.gitattributes`](https://git-scm.com/docs/gitattributes) and [`.gitignore`](https://git-scm.com/docs/gitignore) files. 
* Commit the changes and push to the new repository **(Do not commit `config_user.yaml`)**.

You can accomplish the last two bullets by running these (Bash) commands. 
```bash
# Get new repository's name
echo "Enter the empty repository's name."     
read REPO_NAME      

# Clone new repository and template
git clone https://github.com/gslab-econ/$REPO_NAME
git lfs clone https://github.com/gslab-econ/template.git

# Copy template's contents to new repository and clean up
rm -rf  template/.git       
cp -a template/ $REPO_NAME/
rm -rf template

# Commit and push new repository   
cd $REPO_NAME
git add .               
git commit -m "Initialized repository with the gslab-econ template."        
git push
```

## License

The MIT License (MIT)

Copyright (c) 2017 Matthew Gentzkow, Jesse Shapiro

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

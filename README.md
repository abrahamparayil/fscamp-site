# Free Software Camp Website

This website is build using [Hugo](https://gohugo.io/ "Hugo website"), a static site generator built with Go.

### Installing Hugo
Hugo is available on most modern operating systems. If you're using a GNU/Linux distribution that uses the `apt` package manager (Debian, Ubuntu or any of their derivatives) you can install it with the following command: 

``` sh
sudo apt install hugo
```
If you're using a GNU/Linux distribution that uses the `pacman` package manager (Archlinux or any of it's derivatives) you can use the following command:

``` sh
sudo pacman -S hugo
```
If you're using a Distro that uses the dnf package manger (Fedora) you can use the following command:

``` sh
sudo dnf install hugo
```
### Running a development server
To run a development server run the following command:

``` sh
hugo server -D
```
If you want your server to show your draft posts to run:

``` sh
hugo server -D --buildDrafts
```
### Generating Static Sites
To generate static websites, just run the command `hugo` from the command line from the project's root folder where the config.toml file is present.
This will generate the files in a directory called `public`. These files can now be deployed using a web server of your choice.

### Workflow for camp.fsf.org.in
- Run the hugo commands to generate the static site in the public folder.
- Commit the contents of the public folder to the `production` branch.
- The production branch can then be pushed to the server.

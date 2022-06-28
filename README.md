# Common Bash Scripting Tasks

Experimenting with scripts to perform various tasks using bash.

Helpful guides:

- Brian P. Hogan, *Small, Sharp Software Tools* (Pragmatic Bookshelf, 2019).
- [Explanation](https://shapeshed.com/unix-xargs/) of `xargs`: "a command line utility for building an execution pipeline from standard input. Whilst tools like `grep` can accept standard input as a parameter, many other tools cannot. Using `xargs` allows tools like `echo` and `rm` and `mkdir` to accept standard input as arguments."
- [Shell vs. R Fundamentals](https://morphoscape.wordpress.com/2022/06/24/shell-vs-r-fundamentals-from-syntax-to-control-structures-with-zsh-amp-bash/)

Notes:

- [GNU core commands](https://en.wikipedia.org/wiki/List_of_GNU_Core_Utilities_commands) (via [iamlemec help](https://github.com/pickettj/dot_files/issues/4#issuecomment-684444175)):
  - "The general usage of piping (`|`) should be covered in most shell tutorials though. And of course you can always look at the man page (for example, run `man xargs`) for these commands."
  - `cut`: splits lines by a given delimiter and lets you select a field or fields to return. So you could make a crude CSV selector with this and -d ,, though it wouldn't handle quotes or escaping.
  - `xargs`: this is pretty handy but not obviously so at first. It'll pass a list of arguments to a given command. So in a case similar to above, instead of writing `cat $(echo file.txt)`, we could write `echo file.txt | xargs cat`. For multiple arguments we could write `echo file1.txt file2.txt | xargs cat`. And if we want them run one at a time, we'd need `echo file1.txt file2.txt | xargs -n 1 cat`.

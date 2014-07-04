# Monokai Colorscheme for Vim

This is yet another Vim port of the TextMate's Monokai Colorscheme.

## Configuration

Not much to do, except that this colorscheme comes with a new highlighting
group called Argument, which one can use to improve highlighting.

I personally use
[vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax) and
[vim-ruby](https://girhub.com/vim-ruby/vim-ruby), and use the following in my
`vimrc` file:

```
hi! link rubyBlockParameter Argument
hi! link javaScriptFuncArg Argument
```

Take that as an example.  Not sure how it could be done so easily with Vim's
default highlighting of JavaScript and Ruby, since I don't know if these
syntax groups exist by default.  Certainly one can find the proper syntax
groups for other languages and do the same thing, or create them if not
available.

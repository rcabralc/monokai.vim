# Monokai color scheme for Vim

This is yet another Vim port of the TextMate's Monokai color scheme.

## Configuration

Just set the color scheme in your `vimrc` file:

```
colorscheme monokai
```

## Gamma correction

By default gamma correction is applied.  See more details in
http://www.hardtoc.com/archives/310

If you don't like the gamma-corrected palette, you can use the "normal"
palette setting this in your `vimrc` file (before setting the color scheme):

```
let g:monokai_colorscheme#output_srgb = 0
```

## Terminal colors

This color scheme was built for the GUI version.  For terminals which can
render 256 colors, there is a palette which approximate the GUI version colors
to their equivalent ones in the Xterm 256 colors palette.  If that
approximation is good enough for you (just test it and see), you don't need to
configure anything else.

However, for more fidelity to the GUI version, or for terminals which don't
support the Xterm 256 colors palette but can render 16 colors, customize your
default terminal colors as the following:

Colors         | With gamma correction  | Without gamma correction
-------------- | ---------------------- | ------------------------
0, Background  | `#34352d`              | `#272822`
1, 9           | `#fd4485`              | `#f92672`
2, 10          | `#b3e43b`              | `#a6e22e`
3,             | `#ffa727`              | `#fd971f`
4, 5, 12, 13   | `#bd99ff`              | `#ae81ff`
6, 14          | `#75e0f2`              | `#66d9ef`
7              | `#888471`              | `#75715e`
8              | `#5b5a4f`              | `#49483e`
11             | `#ebe086`              | `#e6db74`
15, Foreground | `#f9f9f5`              | `#f8f8f2`

Then set this in your `vimrc` file (before setting the color scheme):

```
let g:monokai_colorscheme#use_default_term_colors = 1
```

Please note that if you skip the terminal palette customization, the results
will likely be very wrong.  Either make sure to follow the palette
customization in addition to setting the above mentioned variable, or stick
with the approximated colors for terminal (and don't set the variable).

### Transparent background

As a bonus, for terminals which are emulated under a compositing environment
and have transparency enabled, it's possible to use a transparent background
inside Vim.  Set this in your `vimrc` file (before setting the color scheme):

```
let g:monokai_colorscheme#transparent_background = 1
```

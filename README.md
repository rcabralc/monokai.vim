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
to their equivalent ones in the Xterm 256 colors palette (this approximation
can be improved in further versions).  If that approximation is good enough
for you (just test it and see), you don't need to configure anything else.

However, for more fidelity to the GUI version, or for terminals which don't
support the Xterm 256 colors palette but can render 16 colors, customize your
default terminal colors as the following:

Color index  | With gamma correction  | Without gamma correction
------------ | ---------------------- | ------------------------
0            | `#34352d`              | `#272822`
1            | `#fd4485`              | `#f92672`
2            | `#b3e43b`              | `#a6e22e`
3,           | `#ffa727`              | `#fd971f`
5            | `#bd99ff`              | `#ae81ff`
6            | `#75e0f2`              | `#66d9ef`
7            | `#888471`              | `#75715e`
8            | `#5b5a4f`              | `#49483e`
11           | `#ebe086`              | `#e6db74`
15           | `#f9f9f5`              | `#f8f8f2`


The following colors may have any value because they are not used.  These are
just suggestions:

Color index  | Color value
------------ | -----------
Background   | same as 0
9            | same as 1
10           | same as 2
4, 12, 13    | same as 5
14           | same as 6
Foreground   | same as 15


Then set this in your `vimrc` file (before setting the color scheme):

```
let g:monokai_colorscheme#use_default_term_colors = 1
```

Please note that if you skip the terminal palette customization, the results
will likely be very wrong.  Don't set the above variable if you don't want to
customize your terminal's palette (and stick with the provided approximated
colors).


### Transparent background

As a bonus, for terminals which are emulated under a compositing environment
and have transparency enabled, it's possible to use a transparent background
inside Vim.  Set this in your `vimrc` file (before setting the color scheme):

```
if !has('gui_running')
  let g:monokai_colorscheme#transparent_background = 1
endif
```

Note that this only works in terminals, not in GUI.

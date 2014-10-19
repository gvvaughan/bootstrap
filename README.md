BOOTSTRAP
=========

Run all the Autotools scripts in a sane order according to the contents
of `configure.ac` (or `configure.in`) and `Makefile.am` (if any).

This is a complete rewrite of the [GNU Gnulib][] `bootstrap` script, for
figuring out what autotools need to be run, in what order, and with what
arguments to bootstrap a newly checked out working copy. This version is
much more robust, a lot more user friendly, slightly faster, and a little
more portable than the GNU version.  It's also quite a lot larger than
the GNU implementation.

The original idea behind the rewrite is that the incumbent Gnulib
implementation was not flexible enough to bootstrap either of GNU M4,
nor GNU Libtool - and rather than copying and editing the upstream
version and merging changes back downstream as bugs were found and
squashed, I decided the neighbourly thing to do would be to rewrite the
whole messy thing with it's accreted features and piecemeal merges from
other projects with scriptable extensibility designed in from the
outset.

This version was never merged back into gnulib proper, where the feature
accreted incumbent script still resides (albeit carrying fixes to many of
the outright bugs and misfeatures fixed by this version).  However, I've
found this version considerably more reliable, and infinitely more
malleable when it comes to extending the existing functionality for the
unusal requirements of other projects that the Gnulib `bootstrap` cannot
handle.  It is very widely deployed, and extremely well tested in all of
my own projects, and many others besides.

Thanks
------

My sincere thanks to Bruno Haible, Jim Meyering and Paul Eggert on the
gnulib developers list for encouragement and input during the design and
implementation stages.

Usage
-----

Use `./bootstrap` to run autotools (you can customize the behaviour of
this script with a `bootstrap.conf` file, as described in the
`bootstrap.texi` documentation).


[gnu gnulib]: http://gnu.org/s/gnulib
[slingshot]:  http://github.org/gvvaughan/slingshot

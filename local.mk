
# Remove "oldorg:" to switch to "all" as the default target.
# Change "oldorg:" to an existing target to make that target the default,
# or define your own target here to become the default target.
oldorg:	# do what the old Makefile did by default.

##----------------------------------------------------------------------
##  CHECK AND ADAPT THE FOLLOWING DEFINITIONS
##----------------------------------------------------------------------

# Name of your emacs binary
# EMACS	= /usr/local/bin/emacs
# EMACS = /mingw64/bin/emacs
# EMACS	= /cygdrive/c/Apps/emacs-27.1-x86_64/bin/emacs
EMACS	= /Applications/Emacs.app/Contents/MacOS/Emacs

# Where local software is found
prefix	= /usr/share

# Where local lisp files go.
lispdir= $(prefix)/emacs/site-lisp/org

# Where local data files go.
datadir = $(prefix)/emacs/etc/org

# Where info files go.
infodir = $(prefix)/info

# Define if you only need info documentation, the default includes html and pdf
#ORG_MAKE_DOC = info # html pdf

# Define if you want to include some (or all) files from contrib/lisp
# just the filename please (no path prefix, no .el suffix), maybe with globbing
#ORG_ADD_CONTRIB = org-e-* org-md org-export # e.g. the new exporter

# Where to create temporary files for the testsuite
# respect TMPDIR if it is already defined in the environment
TMPDIR ?= /tmp
testdir = $(TMPDIR)/tmp-orgtest

# Configuration for testing
# add options before standard load-path
BTEST_PRE   =
# add options after standard load path
BTEST_POST  =
              # -L <path-to>/ert      # needed for Emacs23, Emacs24 has ert built in
              # -L <path-to>/ess      # needed for running R tests
              # -L <path-to>/htmlize  # need at least version 1.34 for source code formatting
BTEST_OB_LANGUAGES = awk C fortran maxima lilypond octave python sh
              # R                     # requires ESS to be installed and configured
# extra packages to require for testing
BTEST_EXTRA =
              # ess-site  # load ESS for R tests
# See default.mk for further configuration options.

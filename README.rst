system-setups
=============

Dependencies
++++++++++++

First, get the dependencies installed.

Debian/Ubuntu-based systems:

.. code:: shell

  sudo apt-get install git openssh-server make

Initial file-copies:

With that in place, scp the appropriate ``.ssh`` files over to the new system
(as well as the ``.gitconfig`` and ``.gitignore_global`` files), and then ``git
clone`` the repo:

With these changes in place, the repo can now be checked out:

.. code:: shell

  git clone git@github.com:oubiwann/system-setups.git

Or, if you're not me:

.. code:: shell

  git clone https://github.com/oubiwann/system-setups.git


Lubuntu/CL-FSWM Tiling WM
+++++++++++++++++++++++++

These instructions can be applied (with the appropriate substitutions) for
other targets as well:

.. code:: shell

  cd system-setups
  make lubuntu-clfswm

When that finishes, you will have a ``clfswm`` enabled system on your hands
(with fonts, scripts, background images, etc.). In order to use this:

* log out of your current session in Lubuntu

* in the login window, select one of the two ``clfswm`` session options,
logging in with username and password as usual


Getting started with CL-FSWM
----------------------------

Tiling
______

``clfswm`` is a "full screen" window manager; it does more than just tiling.
However, here's how you get started with tiling:

* log in to X using ``clfswm``

* go into "second mode" with ``alt+t`` and then access the menu with ``m``

* Then type ``f`` then ``l``  then ``e`` to access the frame layout
  menu

* At this menu are listed some tiling options that can get you started quickly,
  with or without space around your windows (guess that depends upon how much
  you like your background image!).

Moving Windows/Changing Layouts
_______________________________

* ``alt+F10`` will alternate between layout options (horizontal and vertical)

* ``shift+ctl+F10`` will go into an expose mode; when you click on a window,
  that one will take the primary spot (and windows will return to normal)

* ``alt+<arrow key>`` will swap windows in and out of the primary spot, without
  having to go into the expose mode

Mac
+++

Dependencies
------------

* Xcode and commandline tools (App Store)

* git: http://git-scm.com/download/mac

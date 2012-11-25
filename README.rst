system-setups
=============

Getting Started
---------------

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


Lubuntu/Awesome Tiling WM
-------------------------

.. code:: shell

  cd system-setups/lubuntu-awesome

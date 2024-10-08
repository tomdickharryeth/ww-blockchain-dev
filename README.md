# Wilder World Community Led Events: Blockchain Coding

Throughout this course we will be mostly using python/jupyter notebook.

## Python environment

To download a python environment, head to https://www.anaconda.com/download#Downloads 

Once installed, you should be able to enter the Start Menu, type **Anaconda** and see the Anaconda Prompt:

![image](https://github.com/tomdickharryeth/ww-blockchain-dev/assets/103291582/5d25363d-9eff-4601-93e2-8ff4952c8afc)

Add this as a shortcut as we'll be using this a lot.

Or if you already have another Python distribution installed, you should navigate to the scripts path in a Command window and use
``activate.bat``

## Git

Git is a commonly used source code repository - this means that it is used to store and manage source code.

If you don't already have a git client installed, you can follow the guides below. The first step installs git itself:

https://learn.adafruit.com/an-introduction-to-collaborating-with-version-control/windows
https://learn.adafruit.com/an-introduction-to-collaborating-with-version-control/os-x

If you are using windows, this guide installs tortoisegit which gives you a nicer user interface to interact with git through the windows context menus.

https://learn.adafruit.com/an-introduction-to-collaborating-with-version-control/installing-tortoisegit-on-windows

Then go to https://github.com/tomdickharryeth/ww-blockchain-dev and paste the link that you see in Code

![image](https://github.com/tomdickharryeth/ww-blockchain-dev/assets/103291582/b6017280-dfbe-4782-9a49-67771ea3110a)

and use this to clone the git repo into a local folder of your choice.

Here's an example of doing this with tortoisegit.

![image](https://github.com/tomdickharryeth/ww-blockchain-dev/assets/103291582/e330d9a0-9d18-4f1d-9630-5ed837ee8252)

![image](https://github.com/tomdickharryeth/ww-blockchain-dev/assets/103291582/5d0acf68-965c-44e3-a36a-8f4c0b3d655a)


Remember your git path as you'll need it later.

## Open up the Anaconda prompt and install python dependencies

Now we need to install the web3 and the moralis python libraries as we'll be using these. In the Anaconda prompt type

**``pip install web3``**<br>
**``pip install moralis``**<br>

## Move to your ww-blockchain-dev folder and launch Jupyter Notebook

Still in the Anaconda prompt, change to the ww-blockchain-dev directory that you cloned with git earlier, and then type

**``jupyter-notebook``**

You will see something like this:

![image](https://github.com/tomdickharryeth/ww-blockchain-dev/assets/103291582/4ea2c246-6114-4a2d-88a8-e754658f7ce3)

and after a few seconds a new browser window show open up looking like this

![image](https://github.com/tomdickharryeth/ww-blockchain-dev/assets/103291582/0f96e624-af74-4a64-bffa-2b613c8d03da)

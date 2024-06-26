#############################################
Set up before class
#############################################

# Start in a folder ~/projects

python --version

jupyter --version

python3 -m venv openai_apis_venv

ls -l

source openai_apis_venv/bin/activate

# Note the command prompt change

# Environment activation for Windows (FYI nothing for the recording)

# openai_apis_venv\Scripts\activate.bat


# IPython kernel (ipykernel) is a Python package that provides the communication between the Jupyter Notebook or JupyterLab interface and the Python kernel. It enables you to run Python code interactively and display the output within the notebook environment.

pip install ipykernel

# This will list the kernels available (only one Python3 kernel - remove all others)

jupyter kernelspec list

# Install and make the pytorch_venv kernel available to Jupyter Notebooks

python -m ipykernel install --user --name=openai_apis_venv

# Now we have 2 kernels available

jupyter kernelspec list

 # Upgrade pip

pip install --upgrade pip


















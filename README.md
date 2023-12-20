
# Environment Repository

This repository is dedicated to storing various environment setups including Docker environments, Python environments, and more.

## Docker Environment

To use the Docker environment, a `Dockerfile` is provided in the repository. Follow these steps to build and run the Docker container:

1. Build the Docker image:
   ```sh
   bash run.sh
   ```
   The `run.sh` script in the directory will execute the necessary commands to build the Docker container.

2. Run the container:
   ```sh
   docker run [OPTIONS] IMAGE[:TAG] [COMMAND] [ARG...]
   ```


## Python Environment

### Using Pip

To set up the Python environment using pip, follow these steps:

1. Install the required packages:
   ```sh
   pip install -r requirements.txt
   ```
   This command will install all the dependencies listed in the `requirements.txt` file.

### Using Conda

To create a virtual environment using Conda, follow these instructions:

1. Create a new Conda environment:
   ```sh
   conda create --name myenv
   ```

2. Activate the environment:
   ```sh
   conda activate myenv
   ```

3. Install the required packages:
   ```sh
   conda install --file requirements.txt
   ```
   Alternatively, you can manually install the required packages as specified in the `requirements.txt` file.

## Contribution

Feel free to contribute to this repository by submitting pull requests or suggesting new environment setups.

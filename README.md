# Assessments of the Computer Infrastructure module

This repository contains the Computer Infrastructure module's code, scripts and documentation. This repository is the base for three automated workflows (GitHub Actions). 

## Automated Workflows
- weather.sh: This Bash script downloads weather data from the Met Éireann API, saving it as a JSON file with a timestamped filename in the data/weather/ directory.
- stocks.py: Python script downloads stock data for NVDA, AAPL, and GOOG from Yahoo Finance, saves the closing prices as a CSV file with a timestamped filename in the data/stocks/ directory, and is intended to run daily at 10:00 AM via a cron job.
- **Automation**: Automate system checks and reports using scripts.
- **Reporting**: Generate reports for system status and potential issues.

## Project Structure
computer_infrastructure_assessment/


- data/                   # Contains input files, datasets, and configuration files
- lecture_files/          # Stores all work made during lectures
- weather.ipynb           # Contains the first 9 weeks of weekly tasks
- weather.sh              # Script to pull weather data from Met Eireann
- .github/                # Stores workflows for GitHub Actions
- requirements.txt        # Python dependencies for running the scripts
- README.md               # Documentation for the repository
- .gitignore              # Files and directories to be ignored by Git  

## Getting Started

Follow these steps to set up and run the project on your local machine or GitHub Codespaces.

### 1. Clone the repository
First, clone the repository to your local machine:
```bash
git clone https://github.com/atacanbt/computer_infrastructure_assessment.git
cd computer_infrastructure_assessment
```

### 2. Set up Python environment

If you are using Python locally, creating a virtual environment for your project is a good practice.

#### Option 1: Using Virtualenv (Recommended for local machines)

1. Install `virtualenv` if it is not already installed:
   ```bash
   pip install virtualenv
   ```

2. Create a new virtual environment:
   ```bash
   python -m venv venv
   ```

3. Activate the virtual environment:
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
     ```
   - On Windows:
     ```bash
     venv\Scripts\activate
     ```

#### Option 2: Using Conda (Alternative)

If you prefer using Conda, follow these steps:

1. Create a new Conda environment:
   ```bash
   conda create --name myenv python=3.8
   ```

2. Activate the Conda environment:
   ```bash
   conda activate myenv
   ```

### 3. Install dependencies
All required libraries are listed in `requirements.txt`. Run the following command to install the dependencies:
```bash
pip install -r requirements.txt
```

### 4. Running the project

Now that you have everything set up, you can run the project in VSCode:

1. Open the terminal in VSCode (Ctrl + ~ or Cmd + ~ on macOS).
2. Make sure your environment (e.g., `myenv`) is activated, if it’s not already:
   ```bash
   source venv/bin/activate  # For virtualenv
   conda activate myenv      # For conda
   ```
3. Run the script:
   ```bash
   python weather.py
   ```

### 5. (Optional) Running Jupyter Notebooks

If you want to run the Jupyter notebooks (weather.ipynb), you can launch the Jupyter notebook environment from the terminal:

1. Install Jupyter in your Conda/virtual environment (if not already installed):
   ```bash
   pip install jupyter
   ```

2. Start Jupyter Notebook:
   ```bash
   jupyter notebook
   ```
   This will open a new browser window where you can navigate to the `weather.ipynb` file and run the notebook.

### 6. Running the project on GitHub Codespaces

If you want to run the project on GitHub Codespaces, open the repository in Codespaces, and the environment will be set up automatically. You can then run the scripts without any additional setup.

## Features
- **Weather Data Collection**: Pulls real-time weather data from Met Eireann using the `weather.sh` script.
- **Weekly Tasks**: The `weather.ipynb` notebook contains tasks for data analysis for the first 9 weeks.
- **Automation**: Automates weather data collection and analysis.


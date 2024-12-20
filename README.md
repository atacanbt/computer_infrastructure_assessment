# Assessments of the Computer Infrastructure module

This repository contains the Computer Infrastructure module's code, scripts and documentation. This repository is the base for three automated workflows (GitHub Actions). 


<img src="https://github.com/atacanbt/computer_infrastructure_assessment/blob/main/img/automated_workflow_high_res.png?raw=true" width="900" height="800">


## Automated Workflows
- weather.sh:
   - This Bash script downloads weather data from the Met Éireann API, saving it as a JSON file with a timestamped filename in the data/weather/ directory.
- stocks.py:
   - Python script downloads stock data for NVDA, AAPL, and GOOG from Yahoo Finance, saves the closing prices as a CSV file with a timestamped filename in the data/stocks/   directory, and is intended to run daily at 10:00 AM via a cron job.
- Fortune Cowsay:
   - The “Fortune Cowsay Workflow” runs daily via a cron schedule, installs the fortune and cowsay utilities, generates a random fortune, saves it to a txt file, and commits the file back to the repository.

## Getting Started

Follow these steps to set up and run the project on your local machine or GitHub Codespaces.

### 1. Clone the repository
First, clone the repository to your local machine:
```bash
git clone https://github.com/atacanbt/computer_infrastructure_assessment.git
cd computer_infrastructure_assessment
```
### 2. Set up Python environment using Conda

1. Install [Anaconda](https://www.anaconda.com/download)
2. Install [Visual Studio Code](https://code.visualstudio.com/)
   
3. Create a new Conda environment:
   ```bash
   conda create --name myenv python=3.8
   ```

4. Activate the Conda environment:
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

1. Open the terminal in VSCode.
2. Make sure your environment (e.g., `myenv`) is activated, if it’s not already:
   ```bash
   source venv/bin/activate  # For virtualenv
   conda activate myenv      # For conda
   ```
3. Run the script:
   ```bash
   python lecture_files/stocks/stocks.py
   ```

### 5. Running Jupyter Notebooks

<a target="_blank" href="https://colab.research.google.com/github/atacanbt/computer_infrastructure_assessment/blob/main/weather.ipynb">
  <img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/>
</a>

If you want to run the Jupyter notebooks (weather.ipynb):

1. Run the notebook in Visual Studio Code
2. Alternatively, you can run the notebook on web page through Google Colab by clicking on the badge above. 

### 6. Running the project on GitHub Codespaces

If you want to run the project on GitHub Codespaces, open the repository in Codespaces, and the environment will be set up automatically. You can then run the scripts without any additional setup.


- **Weather Data Collection**: Pulls real-time weather data from Met Eireann using the `weather.sh` script.
- **Weekly Tasks**: The `weather.ipynb` notebook contains tasks for data analysis for the first 9 weeks.
- **Automation**: Automates weather data collection and analysis.


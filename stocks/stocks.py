#! /usr/bin/env python3
# shabang line to tell the shell to use python3

# Financial Data 
import yfinance as yf
# Date and Time
import datetime as dt

# Cron job to run the script every day at 10:00 AM

# Get the data for the stock AAPL, MSFT and GOOG
tickers = ['NVDA', 'AAPL', 'GOOG']
df = yf.download(tickers, period="1d", interval="1m")

# Get the current date and time
filename = dt.datetime.now()
# Create a string from the current date and time
filename = filename.strftime("%Y%m%d_%H%M%S") 
# Prepend the path to the filename and append the file extension
filename = 'data/stocks/' + filename + ".csv"

# Save the data to a CSV file
df['Close'].to_csv(filename)

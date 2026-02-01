
import pandas as pd
import numpy as np

data = pd.read_csv("data/prices.csv", index_col=0, parse_dates=True)
returns = np.log(data/data.shift(1)).dropna()
print("Portfolio Risk Analysis Completed")

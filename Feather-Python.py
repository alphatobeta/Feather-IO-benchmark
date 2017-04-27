# 在IPython环境中执行
cd C:\Users\cheng\Documents
import feather
import pandas as pd
import numpy as np
%time df = feather.read_dataframe('testR.feather')
%time feather.write_dataframe(df, 'testPython.feather')
df.head()

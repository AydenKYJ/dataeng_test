#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Import Packages
import pandas as pd
import numpy as np
import glob


# In[2]:


# Function to combine all CSV Data in the folder
def combine_csv(path):
    all_files = glob.glob(path + "/*.csv")

    li = []

    for filename in all_files:
        df = pd.read_csv(filename, index_col=None, header=0)
        li.append(df)

    combined_df = pd.concat(li, axis=0, ignore_index=True)
    return combined_df

# Function to process and split name
def split_name(name):
    name = name.split()
    firstName = name[0]
    lastName = name[1]
    return pd.Series([firstName,lastName])

# Function to create True/False col for price
def pricecheck(price):
    if price > 100:
        return True
    else:
        return False


# In[3]:


# Define the filepath location
path = r'/Users/Ayden Koh/Documents/GitHub/dataeng_test_Ayden/Section_1/Original_Data'

# Join CSVs with function
combine_df = combine_csv(path)


# In[4]:


# Quick look at data
combine_df.head(20)


# In[5]:


# Drop all rows with no name
combine_df = combine_df[combine_df['name'].notna()]

# Ensure name col is str
combine_df['name'] = combine_df['name'].astype(str)

# Clean out all salutations
combine_df['name'] = combine_df['name'].replace(['Miss ','Mr\. ','Ms\. ', 'Mrs\. ', 'Dr\. '], '', regex=True)

# Ensure price col is numeric and remove any prepended 0; which should be because number is not numeric but string
combine_df['price'] = pd.to_numeric(combine_df["price"])

# Create col for first and last name for namesplit
combine_df[['first_name','last_name']] = combine_df['name'].apply(split_name)

# Create col to indicate price is above or below 100
combine_df['above_100'] = combine_df['price'].apply(pricecheck)


# In[6]:


# Quick check at dataframe
combine_df.head(20)


# In[7]:


# Generating output csv
combine_df.to_csv("output_dataset.csv")


# In[ ]:





# Create a dataset with one categorical feature (Gender) with some
# None values, one numerical feature (Age) with some NaN values

# Impute the Gender column with the mode of the column and Age
# column with mean.


# Visualize the data before and after imputation


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Step 1: Create dataset
data = {
    'Gender': ['Male', 'Female', None, 'Female', 'Male', None, 'Male'],
    'Age': [25, 30, 22, np.nan, 28, 35, np.nan]
}
df_original = pd.DataFrame(data)

# Step 2: Plot original data
plt.figure(figsize=(12, 5))

# Gender before
plt.subplot(1, 2, 1)
df_original['Gender'].value_counts(dropna=False).plot(kind='bar', color='skyblue')
plt.title('Gender Before Imputation')
plt.xlabel('Gender')
plt.ylabel('Count')

# Age before
plt.subplot(1, 2, 2)
df_original['Age'].plot(kind='hist', bins=5, color='lightgreen', edgecolor='black')
plt.title('Age Before Imputation')
plt.xlabel('Age')

plt.tight_layout()
plt.show()

# Step 3: Impute missing values
df_imputed = df_original.copy()
df_imputed['Gender'].fillna(df_imputed['Gender'].mode()[0], inplace=True)
df_imputed['Age'].fillna(df_imputed['Age'].mean(), inplace=True)

# Step 4: Plot after imputation
plt.figure(figsize=(12, 5))

# Gender after
plt.subplot(1, 2, 1)
df_imputed['Gender'].value_counts().plot(kind='bar', color='orange')
plt.title('Gender After Imputation')
plt.xlabel('Gender')
plt.ylabel('Count')

# Age after
plt.subplot(1, 2, 2)
df_imputed['Age'].plot(kind='hist', bins=5, color='tomato', edgecolor='black')
plt.title('Age After Imputation')
plt.xlabel('Age')

plt.tight_layout()
plt.show()


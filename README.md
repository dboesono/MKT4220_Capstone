# Customer Segmentation Using Machine Learning for Optimized Marketing Strategies

This project was undertaken as part of the course **MKT4220: Big Data Marketing** during Term 1, 2023/2024 at The Chinese University of Hong Kong, Shenzhen (CUHK-SZ).

## Team Members

| Student ID | Student Name   | Email                        
| :----------: | :--------------: | :------------------------------: | 
| 120040022  | Darren Boesono        | 120040022@link.cuhk.edu.cn     | 
| 120040023  | Dharma Setiawan            | 120040023@link.cuhk.edu.cn     |
| 120040002  | Joseph Ariel Christopher Teja          | 120040002@link.cuhk.edu.cn     | 

## Project Overview

### Problem and Proposed Solution
Customer segmentation is a fundamental aspect of modern marketing that enables businesses to group customers based on shared characteristics, improving targeted marketing strategies. Traditional segmentation methods, such as Recency, Frequency, and Monetary (RFM) analysis, often fall short in capturing the complexity of customer behavior, leading to suboptimal marketing resource allocation.

This project addresses the challenge of enhancing customer segmentation using machine learning techniques. By leveraging clustering and classification algorithms, businesses can categorize customers into distinct groups, predict purchasing behaviors, and optimize marketing efforts. The solution involves a hybrid approach, integrating unsupervised clustering methods with supervised classification techniques to build an automated, scalable, and efficient customer segmentation model.

### Statistical Techniques & Machine Learning Models
The project employs a combination of machine learning algorithms and statistical techniques to enhance customer segmentation. The following tools and methods were used:

#### Data Collection & Processing:

- Data sourced from Kaggle’s Marketing Campaign dataset, consisting of 2,240 rows and 29 features. [Link to dataset](https://www.kaggle.com/datasets/rodsaldanha/arketing-campaign)
- Missing value handling, feature engineering (e.g., aggregating purchase data), and normalization were applied to enhance data quality.

#### Machine Learning Models Used:

- RFM Analysis: Traditional segmentation approach using Recency, Frequency, and Monetary metrics.
- Clustering Algorithms:
  - K-Means (with PCA and t-SNE for dimensionality reduction)
  - Hierarchical Agglomerative Clustering
  - DBSCAN (Density-Based Spatial Clustering)
  - OPTICS (Ordering Points to Identify the Clustering Structure) – the best-performing model with a silhouette score of 0.72.
- Classification for Predicting Customer Behavior:
  - K-Nearest Neighbors (KNN), Decision Tree Classifier (DTC) – highest accuracy at 98.91%.
  - Logistic Regression, Naïve Bayes, Support Vector Machine (SVM), Random Forest, XGBoost, and Neural Networks were tested for predictive analysis.
- Evaluation Metrics:
  - Silhouette Score for clustering effectiveness.
  - Accuracy, Precision, Recall, and F1-Score for classification models.
    
The final implementation integrates a clustering-classification hybrid model, where an unsupervised learning algorithm segments customers, followed by a supervised classifier to categorize new customers in real-time.

# classification-of-hypertension-and-its-stages-using-ppg-signals


The dataset for this study was obtained from Guilin People’s Hospital in China and includes information from 219 subjects. Data comprises PPG signals and related clinical information such as systolic and diastolic blood pressure. The dataset is categorized into four classes: normal, prehypertension, hypertension Stage-I, and hypertension Stage-II.

PPG signals were recorded using a SEP9AF-2 PPG sensor with a sampling frequency of 1 kHz and a band-pass filter, capturing a total of 2.1 seconds of data. This resulted in 657 datasets, with varying proportions across classes.

Data Preprocessing:
1) Standardization: To ensure consistency, data points were standardized using the StandardScaler to transform them to a mean of 0 and a standard deviation of 1.
2) Upsampling: Due to class imbalance, Synthetic Minority Oversampling Technique (SMOTE) was used to balance the dataset by generating synthetic samples for minority classes.

Methodology:
1) Input Layer: Accepts sequences of PPG signals.
2) Residual Convolutional Blocks: These blocks allow gradients to flow more effectively through the network, facilitating the learning of hierarchical features.
3) Temporal Convolutional Networks (TCNs): Capture long-term dependencies in the sequence data with varying dilation rates.
4) Time-Distributed Dense Layer: Processes each time step independently to maintain temporal structure.
5) Final Classification Layer: Uses a Conv1D layer with a softmax activation function to classify the data into four categories.

Performance Evaluation:
The CNN model demonstrated impressive performance with the following metrics:

1) Accuracy: 98.48%
2) Precision: 99%
3) Recall: 96.60%
4) F1-Score: 97.73%
5) The confusion matrix analysis revealed:

->Normal: Precision of 98.70%, Recall of 100%, F1-Score of 99.35%
->Prehypertension: Precision of 97.33%, Recall of 100%, F1-Score of 98.65%
->Hypertension Stage-I: Precision of 100%, Recall of 96.43%, F1-Score of 98.18%
->Hypertension Stage-II: Precision of 100%, Recall of 90.00%, F1-Score of 94.74%

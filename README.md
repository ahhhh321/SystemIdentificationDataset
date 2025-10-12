# System Identification Dataset (MATLAB)

This repository contains a synthetic system identification dataset generated using MATLAB.

---

## 📘 Description
The dataset models a nonlinear dynamic system governed by the following nonlinear difference equation:


---

### 📂 Files
- `SI.m`: MATLAB function to generate training and testing datasets.  
- `System_Identification_Dataset.mat`: Saved dataset file (MATLAB format).  

---

### 📊 Variables
- `u`: Input excitation signal  
- `yp`: System output  
- `SamIn`: Training input samples  
- `SamOut`: Training output samples  

---

### ⚙️ How to Use

**In MATLAB:**
```matlab
load('System_Identification_Dataset.mat');
whos
```
**In Python (using SciPy):**
```python
from scipy.io import loadmat
data = loadmat('System_Identification_Dataset.mat')
```
 **Citation:**

If you use this dataset, please cite:

Ahmad, Z. (2025). System Identification Dataset (MATLAB). GitHub Repository.
Available at: https://github.com/ahhhh321/SystemIdentificationDataset

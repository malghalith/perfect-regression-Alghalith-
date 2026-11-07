# Alghalith Perfect Regression Engine

An open-source Python implementation of **Moawia Alghalith's "Perfect Regression"** framework, designed to replace traditional Ordinary Least Squares (OLS), brittle unit-root pre-testing, and structurally unstable Error-Correction Models (VECM/Cointegration).

Based on the theoretical framework established in *[The Perfect Regression and Causality Test: A Solution to Regression Problems (2018)](https://sciendo.com)*.

## The Mathematical Problem Solved
Traditional time-series econometrics (like the Engle-Granger or Johansen cointegration tests) suffer from low statistical power, severe finite-sample distortions, and software contradictions. They fail because omitted variables dump volatile, serially correlated variance directly into the residual term (\(u_t\)), leading to spurious results.

Alghalith's framework turns "omitted variable bias" into a mathematical advantage. It isolates the systematic components of the initial error term to extract a flawless proxy variable (v). Re-introducing v back into the system drives specification error to near-zero, rendering traditional unit-root filtering and cointegration constraints entirely obsolete.

## Features
- **Scikit-Learn Compatible API:** Implements familiar `.fit()` and `.predict()` methods.
- **Auto-Correction of Misspecification:** Automatically absorbs changing volatility and unmeasured macroeconomic factors.
- **Ideal Residual Profiles:** Restores the final model's Durbin-Watson score back to white-noise ideals (~2.0) without differencing.

## Installation & Requirements
Ensure you have the required analytical libraries installed:
```bash
pip install numpy pandas statsmodels scikit-learn
```

## Quick Start Example
```python
import numpy as np
from perfect_regression.estimator import PerfectRegression

# Initialize the engine
reg = PerfectRegression(fit_intercept=True)

# Fit your non-stationary or misspecified data matrices
reg.fit(X_train, y_train)

# Generate stable out-of-sample predictions
predictions = reg.predict(X_test)
```

## License
This project is licensed under the MIT License - feel free to clone, modify, and utilize it in your algorithmic trading or research applications.

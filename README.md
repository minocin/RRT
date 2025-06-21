# Relational Rhythm Theory – Public Dataset & Code Archive  
*(Bell / GHZ simulations + IBM Quantum hardware runs)*

This repository accompanies the manuscript  
**“Experimental Confirmation of the Relational Rhythm Theory via λ‑Dependent GHZ Correlations.”**  
All files needed to reproduce every figure, table, and numerical claim are included.

---

## 1.  Folder map
**01_basic_circuit_response_with_interference_tensor/**  
  - 01_Bell Benchmark/
  - 02_Bell＋Interference Tensor Insertion Test/
  - 03_4-qubit GHZ Baseline Check …/
  - 04_Noise-Robustness Test …/
  - 05_Temporal Breathing Mode S(t)…/ 
  - 06_GHZ Scaling Flagship Run/
  - 07_Temporal Rhythm Peak Analysis …/ 
  - 08_Noise Robustness (Measurement…)/
  - 09_Phase‑Sensor Application …/
  - 10_φ × λ Contrast Heat‑Map …/  
    
**02_hardware_GHZ_lambda_scan/**  
  - combined_lambda.png  ← overlay of all hardware curves  
  - 01_Cal_code/         ← QASM for calibration shots  
  - 02_Circuit_code/     ← QASM for λ‑scan circuits  
  - 03_ibm_brisbane/     ← 3 independent runs  
  - 04_ibm_sherbrooke/   ← single run (hardware‑independence verified)  
    
    
*Every leaf directory contains two plain‑text files:*    
`Code_….txt`   – executable Python (copy‑paste into a notebook or `python -s`);  
`Result_….txt` – console output recorded at publication time.  
Where a figure is needed, a `.png` is stored alongside.

---

## 2. Quick start – run the simulations

```bash
# 1.  create an environment (Python 3.10+)
python -m venv rrt-env
source rrt-env/bin/activate      # Win: rrt-env\Scripts\activate

# 2.  install the exact toolkit versions
pip install "qiskit~=0.45" "qiskit-aer~=0.13" numpy scipy pandas

# 3.  open any Code_*.txt (e.g. 01_Bell Benchmark/Code_Baseline …txt)
#     in your editor / Jupyter and run all cells.
```
  
## 3. Re‑creating hardware figures
02_hardware_GHZ_lambda_scan/03_ibm_brisbane/
holds three independent λ‑scans (First, Second, Third).
04_ibm_sherbrooke/ contains only First, because the very first sweep already
confirmed device‑independence.

Running combined_lambda.png merges the corrected expectation values with the
ideal cos λ curve, reproducing Fig. 3 of the paper.

## 4. How to cite
Please reference the repository DOI shown on the GitHub page; it resolves to the
immutable Zenodo snapshot linked in the manuscript:
  
@dataset{rrt_dataset_2025,  
  author       = {minocin},  
  title        = {Experimental Confirmation of the Relational Rhythm Theory via λ‑Dependent GHZ Correlations.},  
  year         = 2025,  
  publisher    = {Zenodo},  
  doi          = {10.5281/zenodo.15700094}  
}  
  
## 5. Licence & Contributions
All code is MIT‑licensed. Data files are released under CC‑BY 4.0 unless a header
states otherwise. Issues and pull requests (new analyses, back‑end ports, etc.)
are warmly welcomed.










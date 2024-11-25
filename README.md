## 🛠️ Setup
Environment setup
```
conda create -n ImBD python=3.10
conda activate ImBD
pip install -r requirements.txt
```
Download necessary models to ```./models ```
```
bash scripts/download_model.sh
```
## 🚀 Reproduce Results
### Reproduce Our Multi-domain Results
Tuning the model with SPO
```bash
bash scripts/train_spo.sh
```
Eval tuned model on our multi-domain datasets
```bash
# For polish task
bash scripts/eval_spo_polish.sh
# For rewrite task
bash scripts/eval_spo_rewrite.sh
# For expand task
bash scripts/eval_spo_expand.sh
# For generation task
bash scripts/eval_spo_generation.sh
```
### Reproduce Our Multilang Results
The following script will train the model of corresponding language and automatically evaluate the model's result, including **Spanish**, **Portuguese** and **Chinese**.
```bash
bash scripts/train_spo_multilang.sh
```

### Reproduce Other Methods' Results
First Download other models  
```
bash scripts/download_other_models.sh
```
Then Eval other models on our datasets
```bash
# For polish task
bash scripts/eval_other_models_polish.sh
# For rewrite task
bash scripts/eval_other_models_rewrite.sh
# For expand task
bash scripts/eval_other_models_expand.sh
# For generation task
bash scripts/eval_other_models_generation.sh
```
Eval Roberta models on our datasets
```bash
# For four tasks
bash eval_supervised.sh
```
Train and eval sft/rlhf/orpo models on our datasets
```bash
# SFT
python ablation_exp/train_gpt_neo_sft.py
# RLHF
python ablation_exp/train_gpt_neo_rlhf.py
# ORPO
python ablation_exp/train_gpt_neo_orpo.py

# Eval
bash scripts/eval_ablation.sh
```
## Regenerate Data
### For Opensource Model
Download text-generation models  
**Notes:** You need to first apply for corresponding model download permission and fill the ```HF_TOKEN=``` in the download script, then remove the comments if you need to regenerate the datasets
```
bash scripts/download_other_models.sh
```
Build Data using opensource models
```
bash scripts/build_data.sh
```
### For GPTs
We provide related codes in `tools/data_builder_gpts`. Make sure you fill the api_key and set the right path to save results.

## TODO

- [ ] Optimize the preservation of the trained model. 
- [ ] Inference code for detection. 

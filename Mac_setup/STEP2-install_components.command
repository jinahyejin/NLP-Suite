cd "$(dirname "$0")"

git init ..
git remote add -t \* -f origin https://github.com/NLP-Suite/NLP-Suite.git
git checkout current

source $HOME/anaconda/bin/activate
conda create -y -n NLP python=3.9
conda activate NLP

conda install -y -c conda-forge scikit-learn
pip install -r ../requirements.txt

conda activate NLP
python ../src/download_nltk.py

conda activate NLP
python -m spacy download en

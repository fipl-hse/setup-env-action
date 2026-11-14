set -ex

which python

python -m pip install --upgrade pip
python -m pip install virtualenv
python -m virtualenv venv

source venv/bin/activate
export PYTHONPATH=$(pwd):$PYTHONPATH
which python

if [ -f "requirements.txt" ]; then
    python -m pip install -r requirements.txt
fi

if [ -f "requirements_qa.txt" ]; then
    python -m pip install -r requirements_qa.txt
fi

export PYTHONPATH

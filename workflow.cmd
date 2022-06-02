  874  module load anaconda3/2021.11
  878  conda create --name pi
  879  conda activate pi
  880  conda install jupyterlab
  881  conda install numpy matplotlib
  882  conda install pip
  883  pip install -U poetry pip
  919  pip install -U pytest
  888  poetry new --src estimate_pi
  889  cd estimate_pi/
  891  poetry add numpy
  893  poetry add -D jupyterlab
  894  poetry add -D mkdocs mkdocstrings mkdocs-material
  896  poetry add -D pytkdocs -E numpy-style
  897  poetry run mkdocs new .
  899  cd src/
  901  cd estimate_pi/
  903  cp ~/repositories/usrp-sciprog-changgoo/day4/review_basics/pi_estimate.py .
  905  vi pi_estimate.py 
  906  mv pi_estimate.py estimate_pi.py
  908  cd ../../
  910  cd tests/
  913  vi test_throw.py
  914  mv test_throw.py test_meanpi.py
  917  poetry install
  920  poetry run pytest src/ tests/
  922  cd docs
  924  vi estimate_pi.md
  926  cd ..
  928  vi mkdocs.yml 
  929  poetry run mkdocs serve
  930  ls
  931  vi mkdocs.yml 
  932  vi docs/estimate_pi.md 
  933  poetry run mkdocs serve
  934  vi mkdocs.yml 
  935  poetry run mkdocs serve
  936  ls
  937  mv docs/estimate_pi.md .
  938  poetry run mkdocs serve
  939  ls
  940  ls docs/
  941  vi estimate_pi.md 
  942  ls -a
  943  vi .gitignore
  944  git init
  945  git status
  946  git add .
  947  git commit -m "First commit"
  948  git remote add origin git@github.com:changgoo/usrp-estimate-pi.git
  949  git status
  950  git push
  951  git push --set-upstream origin master
  952  poetry run mkdocs gh-deploy
  953  poetry add -D black
  954  poetry run black src
  955  git diff
  956  git commit -a
  957  history 
  958  man history
  959  history > workflow.cmd

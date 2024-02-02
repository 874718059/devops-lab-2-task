#!/bin/bash
rm -R fol_1
rm -R fol_2
mkdir fol_1
mkdir fol_2
cd fol_1
touch 1_1.txt
touch 1_2.txt
touch 1_3.txt
cd ../fol_2
touch 2_1.txt
touch 2_2.txt
touch 2_3.txt
cd ..
touch .gitignore
echo ".gitignore" >> .gitignore
echo fol_1 >> .gitignore
echo fol_2 >> .gitignore
chmod 600 fol_1/1_1.txt
chmod 600 fol_1/1_3.txt
chmod 600 fol_2/2_1.txt
chmod 600 fol_2/2_3.txt
chmod 000 fol_1/1_2.txt
chmod 000 fol_1/1_2.txt
touch README.md
echo "# devops-lab-2-task" > README.md
echo Jiayang Li >> README.md
echo "[devops-lab-2](https://github.com/874718059/devops-lab-2-task)" >> README.md
echo --- >> README.md
echo "To run the script.sh run: \`bash script.sh\`" >> README.md

git init
git add .
git commit -m "Final commit"
git remote add origin https://github.com/874718059/devops-lab-2-task
git branch -M main
git push -u origin main

echo Job Completed
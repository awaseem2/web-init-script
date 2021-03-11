if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage: sh web-init.sh [name of repo]"
    exit 2
fi

cd ..

# create github repo
gh repo create $1 --confirm --private

# create style folder
mkdir $1/style

# copy web code and read me
cp web-init-script/exampleIndex.html $1/index.html

cp web-init-script/style/bootstrap.min.css $1/style

cp web-init-script/style/exampleStyle.css $1/style/style.css

cp web-init-script/ExampleREADME.md $1/README.md

# cd into repo dir
cd $1

# commit and push
git add -A
git commit -m "Initialize repo"
git push --set-upstream origin master

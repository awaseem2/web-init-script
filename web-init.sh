if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    echo "Usage: sh web-init.sh [name of repo]"
    exit 2
fi

cd ..

# create github repo
gh repo create $1 --confirm --private
cd $1

# create index.html
touch index.html

# copy contents of index.html
# TODO

# create style folder
mkdir style

# create style.css inside style folder
touch style/style.css

# copy contents of style.css
# TODO

# commit and push
git add index.html style/style.css
git commit -m "Initialize repo"
git push --set-upstream origin master

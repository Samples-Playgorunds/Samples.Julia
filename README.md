# Samples.Julia

Samples.Julia repository - samples/playground for Julia programming language


Clone submodules (with data):

```
git submodule update --init --recursive
git submodule update --recursive
git submodule update --recursive --remote
git pull --recurse-submodules 
git submodule foreach git pull origin master
```


```
cd ./externals/Core.Math.Data/
git checkout master
git status
git add .
git commit -m "new data 202010"
git push
```

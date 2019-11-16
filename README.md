# Namespaced Twitter Bootstrap

This repo is following [this tutorial][1].

To use this, clone including submodules: `git clone --recurse-submodules $url`

## Initial setup

```
yarn global add json npm-run-all

cd bootstrap; json -I -f package.json -e 'this.scripts["css-compile"]="node-sass --output-style expanded --source-map true --source-map-contents true --precision 6 scss/bootstrap.scss dist/css/bootstrap.css && node-sass --output-style expanded --source-map true --source-map-contents true --precision 6 scss/bootstrap-ns.scss dist/css/bootstrap-ns.css && node-sass --output-style expanded --source-map true --source-map-contents true --precision 6 scss/bootstrap-grid.scss dist/css/bootstrap-grid.css && node-sass --output-style expanded --source-map true --source-map-contents true --precision 6 scss/bootstrap-reboot.scss dist/css/bootstrap-reboot.css"'; cd ..;

cd bootstrap; json -I -f package.json -e 'this.scripts["css-minify"]="cleancss --level 1 --source-map --source-map-inline-sources --output dist/css/bootstrap.min.css dist/css/bootstrap.css && cleancss --level 1 --source-map --source-map-inline-sources --output dist/css/bootstrap-ns.min.css dist/css/bootstrap-ns.css && cleancss --level 1 --source-map --source-map-inline-sources --output dist/css/bootstrap-grid.min.css dist/css/bootstrap-grid.css && cleancss --level 1 --source-map --source-map-inline-sources --output dist/css/bootstrap-reboot.min.css dist/css/bootstrap-reboot.css"'; cd ..;
```

## Usage (`script.sh`)

```
cd bootstrap
echo '.twbs { @import "bootstrap"; }' >> scss/bootstrap-ns.scss
```

[1]: https://medium.com/@JonasJancarik/namespacing-bootstrap-css-419961f4d1f8

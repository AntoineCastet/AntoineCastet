rmarkdown::render_site()
git add .
git commit -m "restore index"
git push


ssh-keygen -t ed25519 -C "antoine.castet.field@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
pbcopy < ~/.ssh/id_ed25519.pub   # colle la clé sur GitHub: Settings → SSH and GPG keys
git remote set-url origin git@github.com:AntoineCastet/AntoineCastetWebsite.git
git push
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Etchial/Movie-Search-File /Movie-Search-File
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-Search-File
fi
cd /Movie-Search-File
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

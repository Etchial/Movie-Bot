if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Etchial/Movie-File-search /Movie-File-search
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-File-search
fi
cd /Movie-File-search
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

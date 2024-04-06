curl https://www.youtube.com/@pittsylvaniacountyschools4099/streams | tr '{}' '\n' | grep -e 'videoId' | cut -d, -f1 | cut -d: -f2 | tr '"[]' '\n' | sort -bfdu | grep -v -e '^true$' | grep -v '^$' | awk '{print "yt-dlp --write-auto-sub --skip-download "$0}' >! yt.sh
source yt.sh

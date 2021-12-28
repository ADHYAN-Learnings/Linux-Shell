awk '{ORS=NR%2?";":"\n"}{print $0}' filename

import os

print("What `.pdf` file would you like to enter?")
usrinput = raw_input() 
f.append(usrinput)

f = ()

for x in f:
  fileStatsObj = os.stat ( filePath )
  modificationTime = time.ctime ( fileStatsObj [ stat.ST_MTIME ] )
  
print()

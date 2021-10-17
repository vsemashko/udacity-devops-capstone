import os

projectVersion=os.environ.get('PROJECT_VERSION') or 'undefined'

with open('index.html', 'r') as file :
  filedata = file.read()

# Replace the target string
filedata = filedata.replace('${PROJECT_VERSION}', projectVersion)

targetFile = os.path.join('./build', 'index.html')
os.mkdir('./build')
with open(targetFile, 'w') as file:
  file.write(filedata)

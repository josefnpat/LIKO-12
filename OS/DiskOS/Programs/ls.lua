--Lists the folders and files at the current directory.
--The same of dir.lua
local term = require("C://terminal") --Require the terminal api.
local path = term.getpath() --Get the current active directory.
local files = fs.directoryItems(path) --Returns a table containing the names of folders and files in the given directory

for k, f in ipairs(files) do
  color(fs.isFile(path..f) and 7 or 11)
  print(f.." ",false)
end
print("")
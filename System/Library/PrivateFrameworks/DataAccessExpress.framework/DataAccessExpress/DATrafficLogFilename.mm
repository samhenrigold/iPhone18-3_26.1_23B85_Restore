@interface DATrafficLogFilename
+ (id)filenameWithBasename:(id)basename;
+ (id)filenameWithBasename:(id)basename bundle:(id)bundle processInfo:(id)info uid:(unsigned int)uid;
@end

@implementation DATrafficLogFilename

+ (id)filenameWithBasename:(id)basename
{
  v4 = MEMORY[0x277CCA8D8];
  basenameCopy = basename;
  mainBundle = [v4 mainBundle];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  v8 = [self filenameWithBasename:basenameCopy bundle:mainBundle processInfo:processInfo uid:getuid()];

  return v8;
}

+ (id)filenameWithBasename:(id)basename bundle:(id)bundle processInfo:(id)info uid:(unsigned int)uid
{
  v6 = *&uid;
  basenameCopy = basename;
  infoCopy = info;
  bundleIdentifier = [bundle bundleIdentifier];
  v12 = bundleIdentifier;
  if (bundleIdentifier)
  {
    processName = bundleIdentifier;
  }

  else
  {
    processName = [infoCopy processName];
  }

  v14 = processName;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%u", basenameCopy, processName, v6];

  return v15;
}

@end
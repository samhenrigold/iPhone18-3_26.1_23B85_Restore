@interface SystemInfo
+ (id)buildString;
+ (id)deviceName;
@end

@implementation SystemInfo

+ (id)deviceName
{
  v5 = *MEMORY[0x29EDCA608];
  memset(&v4, 0, 512);
  uname(&v4);
  v2 = [MEMORY[0x29EDBA0F8] stringWithCString:v4.machine encoding:4];

  return v2;
}

+ (id)buildString
{
  processInfo = [MEMORY[0x29EDBA0B0] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];
  v4 = [operatingSystemVersionString componentsSeparatedByString:@" "];

  lastObject = [v4 lastObject];
  lastObject2 = [v4 lastObject];
  v7 = [lastObject substringToIndex:{objc_msgSend(lastObject2, "length") - 1}];

  return v7;
}

@end
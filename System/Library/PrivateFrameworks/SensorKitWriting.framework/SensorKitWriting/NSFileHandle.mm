@interface NSFileHandle
- (void)pathname;
@end

@implementation NSFileHandle

- (void)pathname
{
  v3 = *MEMORY[0x277D85DE8];
  if (result)
  {
    fileDescriptor = [result fileDescriptor];
    if (fileDescriptor < 0 || fcntl(fileDescriptor, 50, v2) < 0)
    {
      return 0;
    }

    else
    {
      return [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    }
  }

  return result;
}

@end
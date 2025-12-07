@interface SSSimulatedCrash
+ (void)simulateCrashWithFormat:(id)format;
+ (void)simulateCrashWithString:(id)string;
@end

@implementation SSSimulatedCrash

+ (void)simulateCrashWithFormat:(id)format
{
  formatCopy = format;
  if (SSIsInternalBuild(formatCopy, v5))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v7];
    [self simulateCrashWithString:v6];
  }
}

+ (void)simulateCrashWithString:(id)string
{
  stringCopy = string;
  if (SSIsInternalBuild(stringCopy, v3))
  {
    v4 = getpid();
    softLinkSimulateCrash(v4, 195939070, stringCopy);
  }
}

@end
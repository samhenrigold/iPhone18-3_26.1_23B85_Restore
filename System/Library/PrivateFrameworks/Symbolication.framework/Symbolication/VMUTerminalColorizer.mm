@interface VMUTerminalColorizer
+ (id)colorize:(id)colorize withColor:(unsigned int)color bold:(BOOL)bold;
@end

@implementation VMUTerminalColorizer

+ (id)colorize:(id)colorize withColor:(unsigned int)color bold:(BOOL)bold
{
  boldCopy = bold;
  v6 = *&color;
  colorizeCopy = colorize;
  if (getenv("TERM") && isatty(0) && isatty(1) && isatty(2))
  {
    v8 = &stru_1F461F9C8;
    if (boldCopy)
    {
      v8 = @";1";
    }

    colorizeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"\x1B[385;%d%@m%@\x1B[0m", v6, v8, colorizeCopy];;
  }

  else
  {
    colorizeCopy = colorizeCopy;
  }

  v10 = colorizeCopy;

  return v10;
}

@end
@interface NSMutableString(SCRCMathLatex)
- (void)addMathIndicators;
@end

@implementation NSMutableString(SCRCMathLatex)

- (void)addMathIndicators
{
  result = [self length];
  if (result)
  {
    [self insertString:@"$" atIndex:0];

    return [self appendString:@"$"];
  }

  return result;
}

@end
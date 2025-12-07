@interface NSMutableAttributedString(SCRCMathExpression)
- (void)scrcAppendFormat:()SCRCMathExpression;
@end

@implementation NSMutableAttributedString(SCRCMathExpression)

- (void)scrcAppendFormat:()SCRCMathExpression
{
  v10 = [MEMORY[0x277CCA898] _scrcStringWithFormat:a3 args:&a9, a5, a6, a7, a8];
  [self appendAttributedString:v10];
}

@end
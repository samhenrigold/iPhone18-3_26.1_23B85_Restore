@interface SPUISAppClipResultBuilder
- (id)buildCommand;
@end

@implementation SPUISAppClipResultBuilder

- (id)buildCommand
{
  result = [(SPUISResultBuilder *)self result];
  if ([result type] == 24 || objc_msgSend(result, "type") == 22)
  {
    v3 = objc_opt_new();
    identifier = [result identifier];
    [v3 setClipIdentifier:identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
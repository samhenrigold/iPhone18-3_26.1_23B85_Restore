@interface NSString(TITypingSession)
- (char)endsInPunctuation;
- (char)endsInWhitespace;
@end

@implementation NSString(TITypingSession)

- (char)endsInWhitespace
{
  result = [self length];
  if (result)
  {
    v3 = [self characterAtIndex:result - 1];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v5 = [whitespaceCharacterSet characterIsMember:v3];

    return v5;
  }

  return result;
}

- (char)endsInPunctuation
{
  result = [self length];
  if (result)
  {
    v3 = [self characterAtIndex:result - 1];
    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    v5 = [punctuationCharacterSet characterIsMember:v3];

    return v5;
  }

  return result;
}

@end
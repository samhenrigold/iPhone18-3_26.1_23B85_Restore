@interface JavaNetURI_PartEncoder
- (BOOL)isRetainedWithChar:(unsigned __int16)char;
- (JavaNetURI_PartEncoder)initWithNSString:(id)string;
- (void)dealloc;
@end

@implementation JavaNetURI_PartEncoder

- (JavaNetURI_PartEncoder)initWithNSString:(id)string
{
  LibcoreNetUriCodec_init();
  JreStrongAssign(&self->extraLegalCharacters_, string);
  return self;
}

- (BOOL)isRetainedWithChar:(unsigned __int16)char
{
  if (!JavaNetURI_UNRESERVED_)
  {
    goto LABEL_12;
  }

  charCopy = char;
  if ([JavaNetURI_UNRESERVED_ indexOf:?] != -1)
  {
    return 1;
  }

  if (!JavaNetURI_PUNCTUATION_)
  {
    goto LABEL_12;
  }

  if ([JavaNetURI_PUNCTUATION_ indexOf:charCopy] != -1)
  {
    return 1;
  }

  extraLegalCharacters = self->extraLegalCharacters_;
  if (!extraLegalCharacters)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  if ([(NSString *)extraLegalCharacters indexOf:charCopy]!= -1)
  {
    return 1;
  }

  return charCopy >= 0x80 && !JavaLangCharacter_isSpaceCharWithChar_(charCopy, v6) && !JavaLangCharacter_isISOControlWithChar_(charCopy, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetURI_PartEncoder;
  [(JavaNetURI_PartEncoder *)&v3 dealloc];
}

@end
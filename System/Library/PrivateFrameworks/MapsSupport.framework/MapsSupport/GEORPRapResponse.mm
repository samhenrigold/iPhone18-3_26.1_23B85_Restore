@interface GEORPRapResponse
+ (id)RapStateIconAsString:(int)string;
@end

@implementation GEORPRapResponse

+ (id)RapStateIconAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_10003CD00[string];
  }

  return v4;
}

@end
@interface GEOPlaceReplyMessage
- (BOOL)isValid;
@end

@implementation GEOPlaceReplyMessage

- (BOOL)isValid
{
  response = [(GEOPlaceReplyMessage *)self response];
  if (response)
  {
    v4 = 1;
  }

  else
  {
    error = [(GEOXPCReply *)self error];
    v4 = error != 0;
  }

  return v4;
}

@end
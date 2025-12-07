@interface SUUIRatingResponseProvider
- (BOOL)parseData:(id)data returningError:(id *)error;
@end

@implementation SUUIRatingResponseProvider

- (BOOL)parseData:(id)data returningError:(id *)error
{
  dataCopy = data;
  contentType = [(ISDataProvider *)self contentType];
  v8 = contentType;
  if (contentType && [contentType rangeOfString:@"text/html" options:1] != 0x7FFFFFFFFFFFFFFFLL && (v9 = objc_msgSend(objc_alloc(MEMORY[0x277CCACA8]), "initWithData:encoding:", dataCopy, 4), isEqualToString = objc_msgSend_isEqualToString_(v9), v9, (isEqualToString & 1) != 0))
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIRatingResponseProvider;
    v11 = [(ISProtocolDataProvider *)&v13 parseData:dataCopy returningError:error];
  }

  return v11;
}

@end
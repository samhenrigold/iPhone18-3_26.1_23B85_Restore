@interface IMCommSafetySummaryImage
- (IMCommSafetySummaryImage)initWithIdentifier:(id)identifier imageData:(id)data;
@end

@implementation IMCommSafetySummaryImage

- (IMCommSafetySummaryImage)initWithIdentifier:(id)identifier imageData:(id)data
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = IMCommSafetySummaryImage;
  identifierCopy = identifier;
  v8 = [(IMCommSafetySummaryImage *)&v13 init];
  v9 = [identifierCopy copy];

  identifier = v8->_identifier;
  v8->_identifier = v9;

  imageData = v8->_imageData;
  v8->_imageData = dataCopy;

  return v8;
}

@end
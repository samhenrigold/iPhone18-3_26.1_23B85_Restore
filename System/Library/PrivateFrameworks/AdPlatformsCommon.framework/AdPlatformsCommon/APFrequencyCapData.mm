@interface APFrequencyCapData
- (APFrequencyCapData)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APFrequencyCapData

- (APFrequencyCapData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = APFrequencyCapData;
  v6 = [(APFrequencyCapData *)&v10 init];
  if (v6)
  {
    v6->_relevantIdentifier = objc_msgSend_decodeIntForKey_(coderCopy, v5, @"relevantIdentifier");
    v6->_value = objc_msgSend_decodeIntForKey_(coderCopy, v7, @"frequencyValue");
    v6->_duration = objc_msgSend_decodeIntForKey_(coderCopy, v8, @"frequencyDuration");
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  relevantIdentifier_low = LODWORD(self->_relevantIdentifier);
  coderCopy = coder;
  objc_msgSend_encodeInt_forKey_(coderCopy, v5, relevantIdentifier_low, @"relevantIdentifier");
  objc_msgSend_encodeInt_forKey_(coderCopy, v6, LODWORD(self->_value), @"frequencyValue");
  objc_msgSend_encodeInt_forKey_(coderCopy, v7, LODWORD(self->_duration), @"frequencyDuration");
}

@end
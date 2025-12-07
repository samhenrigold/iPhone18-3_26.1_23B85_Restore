@interface CLPair
- (CLPair)initWithCoder:(id)coder;
- (CLPair)initWithFirst:(int)first second:(int)second;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLPair

- (CLPair)initWithFirst:(int)first second:(int)second
{
  v7.receiver = self;
  v7.super_class = CLPair;
  result = [(CLPair *)&v7 init];
  if (result)
  {
    result->_first = first;
    result->_second = second;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CLPair alloc];
  first = self->_first;
  second = self->_second;

  return objc_msgSend_initWithFirst_second_(v4, v5, first, second);
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend_first(self, a2, coder, v3);
  objc_msgSend_encodeInt_forKey_(coder, v7, v6, @"first");
  v12 = objc_msgSend_second(self, v8, v9, v10);

  objc_msgSend_encodeInt_forKey_(coder, v11, v12, @"second");
}

- (CLPair)initWithCoder:(id)coder
{
  v4 = [CLPair alloc];
  v7 = objc_msgSend_decodeIntForKey_(coder, v5, @"first", v6);
  v11 = objc_msgSend_decodeIntForKey_(coder, v8, @"second", v9);

  return objc_msgSend_initWithFirst_second_(v4, v10, v7, v11);
}

@end
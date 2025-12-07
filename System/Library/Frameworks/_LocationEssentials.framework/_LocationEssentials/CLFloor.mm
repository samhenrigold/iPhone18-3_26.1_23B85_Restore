@interface CLFloor
- (CLFloor)initWithCoder:(id)coder;
- (CLFloor)initWithLevel:(int64_t)level;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFloor

- (CLFloor)initWithLevel:(int64_t)level
{
  v5.receiver = self;
  v5.super_class = CLFloor;
  result = [(CLFloor *)&v5 init];
  if (result)
  {
    result->level = level;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    level = self->level;

    objc_msgSend_encodeInteger_forKey_(coder, v5, level, @"kCLLocationCodingKeyFloor");
  }

  else
  {

    objc_msgSend_encodeValueOfObjCType_at_(coder, v5, "q", &self->level);
  }
}

- (CLFloor)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CLFloor;
  v6 = [(CLFloor *)&v9 init];
  if (v6)
  {
    if (objc_msgSend_allowsKeyedCoding(coder, v4, v5))
    {
      v6->level = objc_msgSend_decodeIntegerForKey_(coder, v7, @"kCLLocationCodingKeyFloor");
    }

    else
    {
      objc_msgSend_decodeValueOfObjCType_at_(coder, v7, "q", &v6->level);
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(CLFloor, a2, zone);
  level = self->level;

  return objc_msgSend_initWithLevel_(v4, v5, level);
}

@end
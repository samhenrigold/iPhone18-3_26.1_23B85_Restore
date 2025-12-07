@interface _DUIPresentationUpdate
- (BOOL)isEqual:(id)equal;
- (_DUIPresentationUpdate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DUIPresentationUpdate

- (_DUIPresentationUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _DUIPresentationUpdate;
  v5 = [(_DUIPresentationUpdate *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"modifiedPreviews"];
    modifiedPreviews = v5->_modifiedPreviews;
    v5->_modifiedPreviews = v6;

    v5->_badgeStyle = [coderCopy decodeIntegerForKey:@"badgeStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  badgeStyle = self->_badgeStyle;
  coderCopy = coder;
  [coderCopy encodeInteger:badgeStyle forKey:@"badgeStyle"];
  [coderCopy encodeObject:self->_modifiedPreviews forKey:@"modifiedPreviews"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_badgeStyle == *(v5 + 2))
    {
      modifiedPreviews = self->_modifiedPreviews;
      v8 = *(v5 + 1);
      v9 = modifiedPreviews;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
        isEqual = 1;
      }

      else
      {
        isEqual = 0;
        if (v9 && v10)
        {
          isEqual = objc_msgSend_isEqual_(v9);
        }
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

@end
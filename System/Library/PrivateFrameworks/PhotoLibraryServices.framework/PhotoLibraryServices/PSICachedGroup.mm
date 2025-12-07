@interface PSICachedGroup
- (BOOL)isEqual:(id)equal;
- (PSICachedGroup)initWithText:(id)text identifier:(id)identifier category:(unint64_t)category owningGroupId:(unint64_t)id;
- (id)description;
@end

@implementation PSICachedGroup

- (id)description
{
  text = self->_text;
  if (text)
  {
    v5 = @"text";
  }

  else
  {
    text = self->_identifier;
    v5 = @"identifier";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' (%@, %d) -> %d", text, v5, self->_category, self->_owningGroupId, v2, v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqualToString = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      v8 = v7;
      if (self->_category == v7->_category && self->_owningGroupId == v7->_owningGroupId && ((text = self->_text, text == v8->_text) || objc_msgSend_isEqualToString_(text)))
      {
        identifier = self->_identifier;
        if (identifier == v8->_identifier)
        {
          isEqualToString = 1;
        }

        else
        {
          isEqualToString = objc_msgSend_isEqualToString_(identifier);
        }
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (PSICachedGroup)initWithText:(id)text identifier:(id)identifier category:(unint64_t)category owningGroupId:(unint64_t)id
{
  textCopy = text;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = PSICachedGroup;
  v12 = [(PSICachedGroup *)&v18 init];
  if (v12)
  {
    v13 = [textCopy copy];
    text = v12->_text;
    v12->_text = v13;

    v15 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v15;

    v12->_category = category;
    v12->_owningGroupId = id;
  }

  return v12;
}

@end
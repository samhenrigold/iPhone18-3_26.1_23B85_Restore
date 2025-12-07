@interface TSCEWarningValue
+ (id)valueWithNumber:(id)number;
+ (id)valueWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSCEWarningValue

+ (id)valueWithNumber:(id)number
{
  numberCopy = number;
  v4 = objc_alloc_init(TSCEWarningValue);
  objc_msgSend_setNumber_(v4, v5, numberCopy, v6);

  return v4;
}

+ (id)valueWithString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(TSCEWarningValue);
  objc_msgSend_setString_(v4, v5, stringCopy, v6);

  return v4;
}

- (unint64_t)hash
{
  string = self->_string;
  if (!string)
  {
    string = self->_number;
  }

  return objc_msgSend_hash(string, a2, v2, v3);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v9 = v5;
  if (v5)
  {
    string = self->_string;
    if (string)
    {
      objc_msgSend_string(v5, v6, v7, v8);
    }

    else
    {
      string = self->_number;
      objc_msgSend_number(v5, v6, v7, v8);
    }
    v11 = ;
    isEqual = objc_msgSend_isEqual_(string, v12, v11, v13);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  string = self->_string;
  v7 = string;
  if (!string)
  {
    v7 = objc_msgSend_stringValue(self->_number, a2, v2, v3);
  }

  v8 = objc_msgSend_stringWithFormat_(v5, a2, @"(TSCEWarningValue *) %p %@", v3, self, v7);
  if (!string)
  {
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_msgSend_allocWithZone_(TSCEWarningValue, a2, zone, v3);
  v9 = objc_msgSend_init(v5, v6, v7, v8);
  objc_msgSend_setNumber_(v9, v10, self->_number, v11);
  objc_msgSend_setString_(v9, v12, self->_string, v13);
  return v9;
}

@end
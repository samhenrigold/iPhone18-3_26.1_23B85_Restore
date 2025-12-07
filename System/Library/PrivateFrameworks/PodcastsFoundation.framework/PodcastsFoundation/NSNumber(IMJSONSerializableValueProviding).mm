@interface NSNumber(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSNumber(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  v7 = *MEMORY[0x1E69E9840];
  if (([self isEqualToNumber:*MEMORY[0x1E695E870]] & 1) != 0 || (objc_msgSend(self, "isEqualToNumber:", *MEMORY[0x1E695E880]) & 1) != 0 || objc_msgSend(self, "isEqualToNumber:", *MEMORY[0x1E695E878]))
  {
    v2 = _IMStoreLogCategoryDefault();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1D8CEC000, v2, OS_LOG_TYPE_ERROR, "NaN, +inf and -inf are not JSON serializable (%@)", &v5, 0xCu);
    }

    selfCopy2 = 0;
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

@end
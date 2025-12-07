@interface TTSStringTransformation
- (TTSStringTransformation)initWithRange:(_NSRange)range andReplacement:(id)replacement;
- (_NSRange)finalRange;
- (_NSRange)range;
- (int64_t)sizeDelta;
@end

@implementation TTSStringTransformation

- (TTSStringTransformation)initWithRange:(_NSRange)range andReplacement:(id)replacement
{
  length = range.length;
  location = range.location;
  replacementCopy = replacement;
  v12.receiver = self;
  v12.super_class = TTSStringTransformation;
  v9 = [(TTSStringTransformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    objc_storeStrong(&v9->_replacement, replacement);
  }

  return v10;
}

- (int64_t)sizeDelta
{
  replacement = [(TTSStringTransformation *)self replacement];
  v4 = [replacement length];
  [(TTSStringTransformation *)self range];
  v6 = v4 - v5;

  return v6;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)finalRange
{
  length = self->_finalRange.length;
  location = self->_finalRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
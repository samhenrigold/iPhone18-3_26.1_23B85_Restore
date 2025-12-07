@interface _GEOConfigKeyHelper
- (id)_currentValue;
- (uint64_t)valueChanged;
- (void)_lookupKeyProperties;
- (void)keyString;
@end

@implementation _GEOConfigKeyHelper

- (id)_currentValue
{
  v1 = _getValue(*(self + 40), *(self + 48), 1, 0, 0, 0);

  return v1;
}

- (void)keyString
{
  if (self)
  {
    selfCopy = self;
    v3 = self[4];
    if (!v3)
    {
      [(_GEOConfigKeyHelper *)self _lookupKeyProperties];
      v3 = selfCopy[4];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_lookupKeyProperties
{
  v2 = *(self + 40);
  v1 = *(self + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43___GEOConfigKeyHelper__lookupKeyProperties__block_invoke;
  v3[3] = &unk_1E705D990;
  v3[4] = self;
  GEOConfigGetPropertiesForKey(v2, v1, v3);
}

- (uint64_t)valueChanged
{
  if (!self)
  {
    return 0;
  }

  _currentValue = [(_GEOConfigKeyHelper *)self _currentValue];
  v3 = *(self + 8);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _currentValue == 0;
  }

  if (v4)
  {
    if (!v3 || _currentValue)
    {
      v5 = 0;
      if (v3 && _currentValue)
      {
        v5 = [v3 isEqual:_currentValue] ^ 1;
        v3 = *(self + 8);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = 1;
LABEL_13:
  *(self + 8) = _currentValue;

  return v5;
}

@end
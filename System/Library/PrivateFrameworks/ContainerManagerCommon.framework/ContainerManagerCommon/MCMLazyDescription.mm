@interface MCMLazyDescription
- (MCMLazyDescription)initWithDescriber:(id)describer;
- (id)description;
- (id)redactedDescription;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation MCMLazyDescription

- (id)redactedDescription
{
  v2 = *(self->_block + 2);

  return v2();
}

- (id)description
{
  value = self->_value;
  if (!value)
  {
    v4 = (*(self->_block + 2))();
    v5 = self->_value;
    self->_value = v4;

    value = self->_value;
  }

  return value;
}

- (unint64_t)length
{
  value = self->_value;
  if (!value)
  {
    v4 = [(MCMLazyDescription *)self description];
    value = self->_value;
  }

  return [(NSString *)value length];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  value = self->_value;
  if (!value)
  {
    v9 = [(MCMLazyDescription *)self description];
    value = self->_value;
  }

  [(NSString *)value getCharacters:characters range:location, length];
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  value = self->_value;
  if (!value)
  {
    v6 = [(MCMLazyDescription *)self description];
    value = self->_value;
  }

  return [(NSString *)value characterAtIndex:index];
}

- (MCMLazyDescription)initWithDescriber:(id)describer
{
  v10 = *MEMORY[0x1E69E9840];
  describerCopy = describer;
  v9.receiver = self;
  v9.super_class = MCMLazyDescription;
  v5 = [(MCMLazyDescription *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(describerCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end
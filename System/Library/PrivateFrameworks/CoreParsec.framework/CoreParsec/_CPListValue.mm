@interface _CPListValue
- (BOOL)isEqual:(id)equal;
- (_CPListValue)initWithFacade:(id)facade;
- (void)addValues:(id)values;
- (void)setValues:(id)values;
- (void)writeTo:(id)to;
@end

@implementation _CPListValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    values = [(_CPListValue *)self values];
    values2 = [equalCopy values];
    v7 = values2;
    if ((values != 0) != (values2 == 0))
    {
      values3 = [(_CPListValue *)self values];
      if (!values3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = values3;
      values4 = [(_CPListValue *)self values];
      values5 = [equalCopy values];
      v12 = [values4 isEqual:values5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_values;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addValues:(id)values
{
  valuesCopy = values;
  values = self->_values;
  v8 = valuesCopy;
  if (!values)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_values;
    self->_values = array;

    valuesCopy = v8;
    values = self->_values;
  }

  [(NSArray *)values addObject:valuesCopy];
}

- (void)setValues:(id)values
{
  self->_values = [values mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (_CPListValue)initWithFacade:(id)facade
{
  v21 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_CPListValue *)self init];
  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = facadeCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = [_CPValue alloc];
          v13 = [(_CPValue *)v12 initWithFacade:v11, v16];
          [(_CPListValue *)v5 addValues:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = v5;
  }

  return v5;
}

@end
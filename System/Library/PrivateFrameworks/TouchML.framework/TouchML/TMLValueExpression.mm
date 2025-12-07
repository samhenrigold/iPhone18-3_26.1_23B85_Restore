@interface TMLValueExpression
+ (id)decode:(const ProtobufCMessage *)decode;
- (BOOL)isEqual:(id)equal;
- (TMLValueExpression)initWithExpressionText:(id)text bindings:(id)bindings;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLValueExpression

- (TMLValueExpression)initWithExpressionText:(id)text bindings:(id)bindings
{
  textCopy = text;
  bindingsCopy = bindings;
  v14.receiver = self;
  v14.super_class = TMLValueExpression;
  v8 = [(TMLValueExpression *)&v14 init];
  if (v8)
  {
    v9 = [textCopy copy];
    expressionText = v8->_expressionText;
    v8->_expressionText = v9;

    v11 = [bindingsCopy copy];
    bindings = v8->_bindings;
    v8->_bindings = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    expressionText = self->_expressionText;
    expressionText = [equalCopy expressionText];
    if ([(NSString *)expressionText isEqualToString:expressionText])
    {
      bindings = self->_bindings;
      bindings = [equalCopy bindings];
      if ([(NSArray *)bindings isEqualToArray:bindings])
      {
        v9 = 1;
      }

      else
      {
        v10 = self->_bindings;
        bindings2 = [equalCopy bindings];
        v9 = v10 == bindings2;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_expressionText UTF8String];
  encode[1].var0 = strdup(uTF8String);
  v6 = [(NSArray *)self->_bindings count];
  *&encode[1].var1 = v6;
  if (v6)
  {
    v6 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
  }

  encode[1].var2 = v6;
  bindings = self->_bindings;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_26F1F5178;
  v8[3] = &unk_279DC7D10;
  v8[4] = encode;
  [(NSArray *)bindings enumerateObjectsUsingBlock:v8];
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  if (*&decode[1].var1)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*&decode[1].var1];
  }

  else
  {
    v6 = 0;
  }

  if (*&decode[1].var1)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(decode[1].var2 + v7)];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < *&decode[1].var1);
  }

  v9 = [[self alloc] initWithExpressionText:v5 bindings:v6];

  return v9;
}

@end
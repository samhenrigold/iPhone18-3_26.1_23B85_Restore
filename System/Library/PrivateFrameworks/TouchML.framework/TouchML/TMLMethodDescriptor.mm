@interface TMLMethodDescriptor
+ (id)decode:(const ProtobufCMessage *)decode;
+ (id)methodSelectorForMethodName:(id)name parameters:(id)parameters;
- (BOOL)isEqual:(id)equal;
- (TMLMethodDescriptor)initWithName:(id)name returnType:(unint64_t)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLMethodDescriptor

- (TMLMethodDescriptor)initWithName:(id)name returnType:(unint64_t)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes
{
  nameCopy = name;
  parametersCopy = parameters;
  selectorCopy = selector;
  attributesCopy = attributes;
  v22.receiver = self;
  v22.super_class = TMLMethodDescriptor;
  v16 = [(TMLMethodDescriptor *)&v22 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    methodName = v16->_methodName;
    v16->_methodName = v17;

    v16->_returnType = type;
    v19 = [parametersCopy copy];
    parameters = v16->_parameters;
    v16->_parameters = v19;

    objc_storeStrong(&v16->_methodSelector, selector);
    v16->_optional = [attributesCopy containsObject:@"optional"];
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    methodName = self->_methodName;
    methodName = [equalCopy methodName];
    if (!-[NSString isEqualToString:](methodName, "isEqualToString:", methodName) || (returnType = self->_returnType, returnType != [equalCopy returnType]) || (optional = self->_optional, optional != objc_msgSend(equalCopy, "isOptional")))
    {
      v13 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v10 = [(NSArray *)self->_parameters count];
    if (v10 || ([equalCopy parameters], optional = objc_claimAutoreleasedReturnValue(), objc_msgSend(optional, "count")))
    {
      parameters = self->_parameters;
      parameters = [equalCopy parameters];
      if (![(NSArray *)parameters isEqualToArray:parameters])
      {
        v13 = 0;
        goto LABEL_17;
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }

    methodSelector = self->_methodSelector;
    methodSelector = [equalCopy methodSelector];
    v17 = methodSelector;
    if (methodSelector == methodSelector)
    {

      v13 = 1;
      if (!v12)
      {
LABEL_18:
        if (!v10)
        {
        }

        goto LABEL_11;
      }
    }

    else
    {
      v18 = self->_methodSelector;
      methodSelector2 = [equalCopy methodSelector];
      v13 = [(NSString *)v18 isEqualToString:methodSelector2];

      if ((v12 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)methodSelectorForMethodName:(id)name parameters:(id)parameters
{
  nameCopy = name;
  if ([parameters count])
  {
    v6 = [nameCopy stringByAppendingString:@":"];
  }

  else
  {
    v6 = nameCopy;
  }

  v7 = v6;

  return v7;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_methodName UTF8String];
  encode[1].var0 = strdup(uTF8String);
  encode[1].var1 = self->_returnType;
  if (self->_optional)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(encode[2].var2) = self->_optional;
  HIDWORD(encode[2].var2) = v6;
  methodSelector = self->_methodSelector;
  if (methodSelector)
  {
    methodSelector = strdup([methodSelector UTF8String]);
  }

  *&encode[2].var1 = methodSelector;
  v8 = [(NSArray *)self->_parameters count];
  encode[1].var2 = v8;
  if (v8)
  {
    v8 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
  }

  encode[2].var0 = v8;
  parameters = self->_parameters;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26F19A348;
  v10[3] = &unk_279DC58E8;
  v10[4] = encode;
  [(NSArray *)parameters enumerateObjectsUsingBlock:v10];
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  if (*&decode[2].var1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v6 = 0;
  }

  if (decode[1].var2)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:decode[1].var2];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v8 = v7;
  if (decode[1].var2)
  {
    v9 = 0;
    do
    {
      v10 = [objc_opt_class() decode:*(&decode[2].var0->var0 + v9)];
      [v8 addObject:v10];

      v9 = (v9 + 1);
    }

    while (v9 < decode[1].var2);
  }

  if (LODWORD(decode[2].var2) && (BYTE4(decode[2].var2) & 2) != 0)
  {
    v11 = [MEMORY[0x277CBEB98] setWithObject:@"optional"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [[self alloc] initWithName:v5 returnType:decode[1].var1 parameters:v8 methodSelector:v6 attributes:v11];

  return v12;
}

@end
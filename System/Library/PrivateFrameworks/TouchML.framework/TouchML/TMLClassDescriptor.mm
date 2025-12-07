@interface TMLClassDescriptor
+ (id)decode:(const ProtobufCMessage *)decode;
- (BOOL)canMergeFromClassDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromClassDescriptor:(id)descriptor;
- (Class)objcClass;
- (NSDictionary)inheritedMethods;
- (NSDictionary)inheritedProperties;
- (NSDictionary)inheritedSignals;
- (TMLClassDescriptor)initWithName:(id)name superClassName:(id)className initializer:(id)initializer optional:(BOOL)optional;
- (id)propertyForName:(id)name;
- (void)addChildClass:(id)class;
- (void)addMethod:(id)method;
- (void)addProperty:(id)property;
- (void)addSignal:(id)signal;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLClassDescriptor

- (TMLClassDescriptor)initWithName:(id)name superClassName:(id)className initializer:(id)initializer optional:(BOOL)optional
{
  nameCopy = name;
  classNameCopy = className;
  initializerCopy = initializer;
  v27.receiver = self;
  v27.super_class = TMLClassDescriptor;
  v13 = [(TMLClassDescriptor *)&v27 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    className = v13->_className;
    v13->_className = v14;

    v16 = [classNameCopy copy];
    superClassName = v13->_superClassName;
    v13->_superClassName = v16;

    objc_storeStrong(&v13->_initializer, initializer);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    properties = v13->_properties;
    v13->_properties = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    signals = v13->_signals;
    v13->_signals = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    methods = v13->_methods;
    v13->_methods = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    childClasses = v13->_childClasses;
    v13->_childClasses = v24;

    v13->_optional = optional;
  }

  return v13;
}

- (Class)objcClass
{
  objcClass = self->_objcClass;
  if (!objcClass)
  {
    v4 = [(NSString *)self->_objcClassName length];
    v5 = 88;
    if (!v4)
    {
      v5 = 8;
    }

    objcClass = NSClassFromString(*(&self->super.isa + v5));
    v6 = self->_objcClass;
    self->_objcClass = objcClass;
  }

  return objcClass;
}

- (void)addProperty:(id)property
{
  properties = self->_properties;
  propertyCopy = property;
  propertyName = [propertyCopy propertyName];
  [(NSMutableDictionary *)properties setObject:propertyCopy forKey:propertyName];
}

- (id)propertyForName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:nameCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(TMLClassDescriptor *)self->_superClass propertyForName:nameCopy];
  }

  v8 = v7;

  return v8;
}

- (void)addSignal:(id)signal
{
  signals = self->_signals;
  signalCopy = signal;
  signalName = [signalCopy signalName];
  [(NSMutableDictionary *)signals setObject:signalCopy forKey:signalName];
}

- (void)addMethod:(id)method
{
  methods = self->_methods;
  methodCopy = method;
  methodName = [methodCopy methodName];
  [(NSMutableDictionary *)methods setObject:methodCopy forKey:methodName];
}

- (void)addChildClass:(id)class
{
  childClasses = self->_childClasses;
  classCopy = class;
  className = [classCopy className];
  [(NSMutableDictionary *)childClasses setObject:classCopy forKey:className];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      className = self->_className;
      className = [(TMLClassDescriptor *)v6 className];
      if (![(NSString *)className isEqualToString:className])
      {
        v12 = 0;
LABEL_18:

        goto LABEL_19;
      }

      superClassName = self->_superClassName;
      superClassName = [(TMLClassDescriptor *)v6 superClassName];
      if (superClassName != superClassName)
      {
        v11 = self->_superClassName;
        superClassName2 = [(TMLClassDescriptor *)v6 superClassName];
        if (![(NSString *)v11 isEqualToString:superClassName2])
        {
          v12 = 0;
          goto LABEL_16;
        }
      }

      properties = self->_properties;
      properties = [(TMLClassDescriptor *)v6 properties];
      if ([(NSMutableDictionary *)properties isEqualToDictionary:properties])
      {
        signals = self->_signals;
        signals = [(TMLClassDescriptor *)v6 signals];
        if ([(NSMutableDictionary *)signals isEqualToDictionary:signals])
        {
          methods = self->_methods;
          methods = [(TMLClassDescriptor *)v6 methods];
          v12 = [(NSMutableDictionary *)methods isEqualToDictionary:methods];

          goto LABEL_15;
        }
      }

      v12 = 0;
LABEL_15:
      if (superClassName == superClassName)
      {
LABEL_17:

        goto LABEL_18;
      }

LABEL_16:

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (NSDictionary)inheritedProperties
{
  superClass = self->_superClass;
  if (superClass)
  {
    inheritedProperties = [(TMLClassDescriptor *)superClass inheritedProperties];
    v5 = [inheritedProperties mutableCopy];

    [(NSMutableDictionary *)v5 addEntriesFromDictionary:self->_properties];
  }

  else
  {
    v5 = self->_properties;
  }

  return v5;
}

- (NSDictionary)inheritedSignals
{
  superClass = self->_superClass;
  if (superClass)
  {
    inheritedSignals = [(TMLClassDescriptor *)superClass inheritedSignals];
    v5 = [inheritedSignals mutableCopy];

    [(NSMutableDictionary *)v5 addEntriesFromDictionary:self->_signals];
  }

  else
  {
    v5 = self->_signals;
  }

  return v5;
}

- (NSDictionary)inheritedMethods
{
  superClass = self->_superClass;
  if (superClass)
  {
    inheritedMethods = [(TMLClassDescriptor *)superClass inheritedMethods];
    v5 = [inheritedMethods mutableCopy];

    [(NSMutableDictionary *)v5 addEntriesFromDictionary:self->_methods];
  }

  else
  {
    v5 = self->_methods;
  }

  return v5;
}

- (BOOL)canMergeFromClassDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  className = self->_className;
  className = [descriptorCopy className];
  if ([(NSString *)className isEqualToString:className])
  {
    superClassName = self->_superClassName;
    superClassName = [descriptorCopy superClassName];
    v9 = superClassName;
    if (superClassName == superClassName)
    {

LABEL_8:
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 1;
      inheritedProperties = [(TMLClassDescriptor *)self inheritedProperties];
      properties = [descriptorCopy properties];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_26F1E5C78;
      v29[3] = &unk_279DC8C38;
      v15 = inheritedProperties;
      v30 = v15;
      v31 = &v32;
      [properties enumerateKeysAndObjectsUsingBlock:v29];

      inheritedMethods = [(TMLClassDescriptor *)self inheritedMethods];
      methods = [descriptorCopy methods];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_26F1E5D1C;
      v26[3] = &unk_279DC8C60;
      v18 = inheritedMethods;
      v27 = v18;
      v28 = &v32;
      [methods enumerateKeysAndObjectsUsingBlock:v26];

      inheritedSignals = [(TMLClassDescriptor *)self inheritedSignals];
      signals = [descriptorCopy signals];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_26F1E5DB0;
      v23[3] = &unk_279DC8C88;
      v21 = inheritedSignals;
      v24 = v21;
      v25 = &v32;
      [signals enumerateKeysAndObjectsUsingBlock:v23];

      v12 = *(v33 + 24);
      _Block_object_dispose(&v32, 8);
      goto LABEL_9;
    }

    v10 = self->_superClassName;
    superClassName2 = [descriptorCopy superClassName];
    LODWORD(v10) = [(NSString *)v10 isEqualToString:superClassName2];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_9:

  return v12 & 1;
}

- (BOOL)mergeFromClassDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  properties = [descriptorCopy properties];
  v6 = [properties mutableCopy];

  inheritedProperties = [(TMLClassDescriptor *)self inheritedProperties];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_26F1E60D0;
  v23[3] = &unk_279DC8CB0;
  v24 = v6;
  v8 = v6;
  [inheritedProperties enumerateKeysAndObjectsUsingBlock:v23];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_26F1E6164;
  v22[3] = &unk_279DC8CB0;
  v22[4] = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v22];
  methods = [descriptorCopy methods];
  v10 = [methods mutableCopy];

  inheritedMethods = [(TMLClassDescriptor *)self inheritedMethods];
  allKeys = [inheritedMethods allKeys];
  [v10 removeObjectsForKeys:allKeys];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26F1E616C;
  v21[3] = &unk_279DC8CD8;
  v21[4] = self;
  [v10 enumerateKeysAndObjectsUsingBlock:v21];
  signals = [descriptorCopy signals];

  v14 = [signals mutableCopy];
  inheritedSignals = [(TMLClassDescriptor *)self inheritedSignals];
  allKeys2 = [inheritedSignals allKeys];
  [v14 removeObjectsForKeys:allKeys2];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26F1E6174;
  v20[3] = &unk_279DC8D00;
  v20[4] = self;
  [v14 enumerateKeysAndObjectsUsingBlock:v20];
  v17 = [v8 count];
  v18 = [v10 count] + v17;
  LOBYTE(v18) = v18 + [v14 count] != 0;

  return v18;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_className UTF8String];
  encode[1].var0 = strdup(uTF8String);
  superClassName = self->_superClassName;
  if (superClassName)
  {
    superClassName = strdup([superClassName UTF8String]);
  }

  *&encode[1].var1 = superClassName;
  objcClassName = self->_objcClassName;
  if (objcClassName)
  {
    objcClassName = strdup([(ProtobufCMessageUnknownField *)objcClassName UTF8String]);
  }

  encode[1].var2 = objcClassName;
  allValues = [(NSMutableDictionary *)self->_properties allValues];
  v9 = [allValues count];
  encode[2].var0 = v9;
  if (v9)
  {
    v9 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
  }

  *&encode[2].var1 = v9;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26F1E6448;
  v21[3] = &unk_279DC58E8;
  v21[4] = encode;
  [allValues enumerateObjectsUsingBlock:v21];
  allValues2 = [(NSMutableDictionary *)self->_signals allValues];
  v11 = [allValues2 count];
  encode[2].var2 = v11;
  if (v11)
  {
    v11 = malloc_type_malloc(8 * v11, 0x2004093837F09uLL);
  }

  encode[3].var0 = v11;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26F1E64C0;
  v20[3] = &unk_279DC7D30;
  v20[4] = encode;
  [allValues2 enumerateObjectsUsingBlock:v20];
  allValues3 = [(NSMutableDictionary *)self->_childClasses allValues];
  v13 = [allValues3 count];
  encode[4].var0 = v13;
  if (v13)
  {
    v13 = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
  }

  *&encode[4].var1 = v13;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_26F1E6538;
  v19[3] = &unk_279DC8D20;
  v19[4] = encode;
  [allValues3 enumerateObjectsUsingBlock:v19];
  allValues4 = [(NSMutableDictionary *)self->_methods allValues];
  v15 = [allValues4 count];
  *&encode[3].var1 = v15;
  if (v15)
  {
    v15 = malloc_type_malloc(8 * v15, 0x2004093837F09uLL);
  }

  encode[3].var2 = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26F1E65B0;
  v18[3] = &unk_279DC8D40;
  v18[4] = encode;
  [allValues4 enumerateObjectsUsingBlock:v18];
  if (self->_initializer)
  {
    v16 = malloc_type_malloc(0x30uLL, 0x10F004065BF17CFuLL);
    encode[4].var2 = v16;
    [(TMLValueExpression *)self->_initializer encode:v16];
  }

  optional = self->_optional;
  LODWORD(encode[5].var0) = optional;
  HIDWORD(encode[5].var0) = optional;
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  if (*&decode[1].var1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v6 = 0;
  }

  if (decode[4].var2)
  {
    v7 = [objc_opt_class() decode:decode[4].var2];
  }

  else
  {
    v7 = 0;
  }

  if (LODWORD(decode[5].var0))
  {
    v8 = BYTE4(decode[5].var0) & 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [[self alloc] initWithName:v5 superClassName:v6 initializer:v7 optional:v8];
  if (decode[1].var2)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v9 setObjcClassName:v10];
  }

  if (decode[2].var0)
  {
    v11 = 0;
    do
    {
      v12 = [objc_opt_class() decode:*(*&decode[2].var1 + 8 * v11)];
      [v9 addProperty:v12];

      v11 = (v11 + 1);
    }

    while (v11 < decode[2].var0);
  }

  if (decode[2].var2)
  {
    v13 = 0;
    do
    {
      v14 = [objc_opt_class() decode:*(&decode[3].var0->var0 + v13)];
      [v9 addSignal:v14];

      v13 = (v13 + 1);
    }

    while (v13 < decode[2].var2);
  }

  if (decode[4].var0)
  {
    v15 = 0;
    do
    {
      v16 = [objc_opt_class() decode:*(*&decode[4].var1 + 8 * v15)];
      [v9 addChildClass:v16];

      v15 = (v15 + 1);
    }

    while (v15 < decode[4].var0);
  }

  if (*&decode[3].var1)
  {
    v17 = 0;
    do
    {
      v18 = [objc_opt_class() decode:*(decode[3].var2 + v17)];
      [v9 addMethod:v18];

      ++v17;
    }

    while (v17 < *&decode[3].var1);
  }

  return v9;
}

@end
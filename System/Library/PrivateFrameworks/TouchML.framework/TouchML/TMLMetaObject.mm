@interface TMLMetaObject
+ (id)decode:(const ProtobufCMessage *)decode;
- (TMLMetaObject)initWithType:(id)type attributes:(id)attributes;
- (id)propertyDeclaration:(id)declaration;
- (id)signalDeclaration:(id)declaration;
- (void)addConstructorDeclaration:(id)declaration parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes;
- (void)addImplements:(id)implements;
- (void)addMethodDeclaration:(id)declaration returnType:(id)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes;
- (void)addObject:(id)object;
- (void)addProperty:(id)property value:(id)value;
- (void)addPropertyDeclaration:(id)declaration typeName:(id)name attributes:(id)attributes;
- (void)addSignalDeclaration:(id)declaration returnType:(id)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes;
- (void)addSignalHandler:(id)handler signalTarget:(id)target;
- (void)applyCategory:(id)category;
- (void)encode:(ProtobufCMessage *)encode;
@end

@implementation TMLMetaObject

- (TMLMetaObject)initWithType:(id)type attributes:(id)attributes
{
  typeCopy = type;
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = TMLMetaObject;
  v8 = [(TMLMetaObject *)&v16 init];
  if (v8)
  {
    v9 = [typeCopy copy];
    type = v8->_type;
    v8->_type = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:8];
    declarations = v8->_declarations;
    v8->_declarations = v11;

    v13 = [attributesCopy copy];
    attributes = v8->_attributes;
    v8->_attributes = v13;
  }

  return v8;
}

- (void)addProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"id"])
  {
    v7 = [valueCopy copy];
    identifier = self->_identifier;
    self->_identifier = v7;
  }

  else
  {
    properties = self->_properties;
    if (!properties)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
      v11 = self->_properties;
      self->_properties = v10;

      v12 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:8];
      propertyKeys = self->_propertyKeys;
      self->_propertyKeys = v12;

      properties = self->_properties;
    }

    [(NSMutableDictionary *)properties setObject:valueCopy forKeyedSubscript:propertyCopy];
    [(NSMutableOrderedSet *)self->_propertyKeys addObject:propertyCopy];
  }
}

- (void)addSignalHandler:(id)handler signalTarget:(id)target
{
  handlerCopy = handler;
  targetCopy = target;
  signalHandlers = self->_signalHandlers;
  if (!signalHandlers)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
    v9 = self->_signalHandlers;
    self->_signalHandlers = v8;

    signalHandlers = self->_signalHandlers;
  }

  [(NSMutableDictionary *)signalHandlers setObject:handlerCopy forKeyedSubscript:targetCopy];
}

- (void)addPropertyDeclaration:(id)declaration typeName:(id)name attributes:(id)attributes
{
  attributesCopy = attributes;
  nameCopy = name;
  declarationCopy = declaration;
  v11 = [[TMLPropertyDescriptor alloc] initWithName:declarationCopy typeName:nameCopy attributes:attributesCopy];

  [(TMLMetaObject *)self addDeclaration:v11];
}

- (void)addSignalDeclaration:(id)declaration returnType:(id)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes
{
  attributesCopy = attributes;
  selectorCopy = selector;
  parametersCopy = parameters;
  typeCopy = type;
  declarationCopy = declaration;
  v17 = [TMLSignalDescriptor alloc];
  v18 = [TMLTypeRegistry typeForTypeName:typeCopy];

  v19 = [(TMLSignalDescriptor *)v17 initWithName:declarationCopy returnType:v18 parameters:parametersCopy methodSelector:selectorCopy attributes:attributesCopy];
  [(TMLMetaObject *)self addDeclaration:v19];
}

- (void)addMethodDeclaration:(id)declaration returnType:(id)type parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes
{
  declarationCopy = declaration;
  parametersCopy = parameters;
  selectorCopy = selector;
  attributesCopy = attributes;
  typeCopy = type;
  v16 = [TMLMethodDescriptor alloc];
  v17 = [TMLTypeRegistry typeForTypeName:typeCopy];

  v18 = selectorCopy;
  if (!selectorCopy)
  {
    v18 = [TMLMethodDescriptor methodSelectorForMethodName:declarationCopy parameters:parametersCopy];
  }

  v19 = [(TMLMethodDescriptor *)v16 initWithName:declarationCopy returnType:v17 parameters:parametersCopy methodSelector:v18 attributes:attributesCopy];
  [(TMLMetaObject *)self addDeclaration:v19];

  if (!selectorCopy)
  {
  }
}

- (void)addConstructorDeclaration:(id)declaration parameters:(id)parameters methodSelector:(id)selector attributes:(id)attributes
{
  declarationCopy = declaration;
  parametersCopy = parameters;
  selectorCopy = selector;
  attributesCopy = attributes;
  v13 = [TMLMethodDescriptor alloc];
  v14 = [TMLTypeRegistry typeForTypeName:self->_type];
  v15 = selectorCopy;
  if (!selectorCopy)
  {
    v15 = [TMLMethodDescriptor methodSelectorForMethodName:declarationCopy parameters:parametersCopy];
  }

  v16 = [(TMLMethodDescriptor *)v13 initWithName:declarationCopy returnType:v14 parameters:parametersCopy methodSelector:v15 attributes:attributesCopy];
  [(TMLMetaObject *)self addDeclaration:v16];

  if (!selectorCopy)
  {
  }
}

- (void)addImplements:(id)implements
{
  implementsCopy = implements;
  implements = self->_implements;
  v8 = implementsCopy;
  if (!implements)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    v7 = self->_implements;
    self->_implements = v6;

    implementsCopy = v8;
    implements = self->_implements;
  }

  [(NSMutableSet *)implements addObject:implementsCopy];
}

- (void)addObject:(id)object
{
  objectCopy = object;
  objects = self->_objects;
  v8 = objectCopy;
  if (!objects)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v7 = self->_objects;
    self->_objects = v6;

    objectCopy = v8;
    objects = self->_objects;
  }

  [(NSMutableArray *)objects addObject:objectCopy];
}

- (void)applyCategory:(id)category
{
  categoryCopy = category;
  declarations = [categoryCopy declarations];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26F1E9700;
  v15[3] = &unk_279DC64B0;
  v15[4] = self;
  [declarations enumerateObjectsUsingBlock:v15];

  signalHandlers = [categoryCopy signalHandlers];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_26F1E970C;
  v14[3] = &unk_279DC8DE8;
  v14[4] = self;
  [signalHandlers enumerateKeysAndObjectsUsingBlock:v14];

  properties = [categoryCopy properties];
  propertyKeys = [categoryCopy propertyKeys];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26F1E9718;
  v12[3] = &unk_279DC5920;
  v12[4] = self;
  v13 = properties;
  v9 = properties;
  [propertyKeys enumerateObjectsUsingBlock:v12];

  objects = [categoryCopy objects];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1E978C;
  v11[3] = &unk_279DC7FD0;
  v11[4] = self;
  [objects enumerateObjectsUsingBlock:v11];
}

- (id)propertyDeclaration:(id)declaration
{
  declarationCopy = declaration;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_26F1E98C4;
  v16 = sub_26F1E98D4;
  v17 = 0;
  declarations = self->_declarations;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F1E98DC;
  v9[3] = &unk_279DC6108;
  v6 = declarationCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)declarations enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)signalDeclaration:(id)declaration
{
  declarationCopy = declaration;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_26F1E98C4;
  v16 = sub_26F1E98D4;
  v17 = 0;
  declarations = self->_declarations;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F1E9AC0;
  v9[3] = &unk_279DC6108;
  v6 = declarationCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)declarations enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)encode:(ProtobufCMessage *)encode
{
  uTF8String = [(NSString *)self->_type UTF8String];
  encode[1].var0 = strdup(uTF8String);
  identifier = self->_identifier;
  if (identifier)
  {
    identifier = strdup([identifier UTF8String]);
  }

  *&encode[1].var1 = identifier;
  v7 = [(NSMutableOrderedSet *)self->_propertyKeys count];
  encode[1].var2 = v7;
  if (v7)
  {
    v7 = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);
  }

  encode[2].var0 = v7;
  propertyKeys = self->_propertyKeys;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_26F1E9F88;
  v31[3] = &unk_279DC8E10;
  v31[4] = self;
  v31[5] = encode;
  [(NSMutableOrderedSet *)propertyKeys enumerateObjectsUsingBlock:v31];
  v9 = [(NSMutableArray *)self->_objects count];
  encode[5].var0 = v9;
  if (v9)
  {
    v9 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
  }

  *&encode[5].var1 = v9;
  objects = self->_objects;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_26F1EA1C8;
  v30[3] = &unk_279DC8E30;
  v30[4] = encode;
  [(NSMutableArray *)objects enumerateObjectsUsingBlock:v30];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  declarations = self->_declarations;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_26F1EA240;
  v27[3] = &unk_279DC7DD0;
  v14 = v11;
  v28 = v14;
  v15 = v12;
  v29 = v15;
  [(NSMutableArray *)declarations enumerateObjectsUsingBlock:v27];
  v16 = [v14 count];
  encode[3].var0 = v16;
  if (v16)
  {
    v16 = malloc_type_malloc(8 * v16, 0x2004093837F09uLL);
  }

  *&encode[3].var1 = v16;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_26F1EA2DC;
  v26[3] = &unk_279DC58E8;
  v26[4] = encode;
  [v14 enumerateObjectsUsingBlock:v26];
  v17 = [v15 count];
  encode[3].var2 = v17;
  if (v17)
  {
    v17 = malloc_type_malloc(8 * v17, 0x2004093837F09uLL);
  }

  encode[4].var0 = v17;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = sub_26F1EA354;
  v25[3] = &unk_279DC7D30;
  v25[4] = encode;
  [v15 enumerateObjectsUsingBlock:v25];
  v18 = [(NSMutableDictionary *)self->_signalHandlers count];
  *&encode[2].var1 = v18;
  if (v18)
  {
    v18 = malloc_type_malloc(8 * v18, 0x2004093837F09uLL);
  }

  encode[2].var2 = v18;
  allKeys = [(NSMutableDictionary *)self->_signalHandlers allKeys];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_26F1EA3CC;
  v24[3] = &unk_279DC8E10;
  v24[4] = self;
  v24[5] = encode;
  [allKeys enumerateObjectsUsingBlock:v24];

  if (self->_initializer)
  {
    v20 = malloc_type_malloc(0x30uLL, 0x10F004065BF17CFuLL);
    encode[5].var2 = v20;
    [(TMLValueExpression *)self->_initializer encode:v20];
  }

  if ([(NSMutableSet *)self->_implements count])
  {
    v21 = [(NSMutableSet *)self->_implements count];
    encode[6].var0 = v21;
    if (v21)
    {
      v21 = malloc_type_malloc(8 * v21, 0x80040B8603338uLL);
    }

    *&encode[6].var1 = v21;
    allObjects = [(NSMutableSet *)self->_implements allObjects];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_26F1EA48C;
    v23[3] = &unk_279DC7D10;
    v23[4] = encode;
    [allObjects enumerateObjectsUsingBlock:v23];
  }
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:decode[1].var0];
  v5 = [[self alloc] initWithType:v30 attributes:0];
  if (*&decode[1].var1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v6 = 0;
  }

  [v5 addProperty:@"id" value:v6];
  if (decode[1].var2)
  {
    for (i = 0; i < decode[1].var2; i = (i + 1))
    {
      v9 = 0;
      v10 = *(&decode[2].var0->var0 + i);
      v11 = *(v10 + 32);
      if (v11 <= 2)
      {
        switch(v11)
        {
          case 0:
            null = [MEMORY[0x277CBEB68] null];
            goto LABEL_23;
          case 1:
            null = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v10 + 40)];
            goto LABEL_23;
          case 2:
            null = [MEMORY[0x277CCABB0] numberWithInteger:*(v10 + 52)];
            goto LABEL_23;
        }
      }

      else
      {
        if (v11 <= 4)
        {
          if (v11 == 3)
          {
            LODWORD(v7) = *(v10 + 68);
            [MEMORY[0x277CCABB0] numberWithFloat:v7];
          }

          else
          {
            [MEMORY[0x277CCABB0] numberWithBool:*(v10 + 60) != 0];
          }
          null = ;
          goto LABEL_23;
        }

        if (v11 == 5)
        {
          v13 = objc_opt_class();
          v14 = *(v10 + 72);
LABEL_21:
          null = [v13 decode:v14];
LABEL_23:
          v9 = null;
          goto LABEL_24;
        }

        if (v11 == 6)
        {
          v13 = objc_opt_class();
          v14 = *(v10 + 80);
          goto LABEL_21;
        }
      }

LABEL_24:
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v10 + 24)];
      [v5 addProperty:v15 value:v9];
    }
  }

  if (decode[5].var0)
  {
    v16 = 0;
    do
    {
      v17 = [objc_opt_class() decode:*(*&decode[5].var1 + 8 * v16)];
      [v5 addObject:v17];

      v16 = (v16 + 1);
    }

    while (v16 < decode[5].var0);
  }

  if (decode[3].var0)
  {
    v18 = 0;
    do
    {
      v19 = [objc_opt_class() decode:*(*&decode[3].var1 + 8 * v18)];
      [v5 addDeclaration:v19];

      v18 = (v18 + 1);
    }

    while (v18 < decode[3].var0);
  }

  if (decode[3].var2)
  {
    v20 = 0;
    do
    {
      v21 = [objc_opt_class() decode:*(&decode[4].var0->var0 + v20)];
      [v5 addDeclaration:v21];

      v20 = (v20 + 1);
    }

    while (v20 < decode[3].var2);
  }

  if (*&decode[2].var1)
  {
    v22 = 0;
    do
    {
      v23 = *(decode[2].var2 + v22);
      v24 = [objc_opt_class() decode:v23];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v23 + 48)];
      [v5 addSignalHandler:v24 signalTarget:v25];

      ++v22;
    }

    while (v22 < *&decode[2].var1);
  }

  if (decode[5].var2)
  {
    v26 = [objc_opt_class() decode:decode[5].var2];
    [v5 setInitializer:v26];
  }

  else
  {
    [v5 setInitializer:0];
  }

  if (decode[6].var0)
  {
    v27 = 0;
    do
    {
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(*&decode[6].var1 + 8 * v27)];
      [v5 addImplements:v28];

      v27 = (v27 + 1);
    }

    while (v27 < decode[6].var0);
  }

  return v5;
}

@end
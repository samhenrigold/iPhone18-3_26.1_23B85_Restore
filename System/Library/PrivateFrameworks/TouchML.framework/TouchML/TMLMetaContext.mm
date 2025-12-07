@interface TMLMetaContext
+ (id)convertObject:(id)object toClass:(id)class;
+ (id)convertObject:(id)object toProtocol:(id)protocol;
+ (id)decode:(const ProtobufCMessage *)decode;
+ (id)deserializeFromData:(id)data;
- (TMLMetaContext)init;
- (TMLMetaObject)rootObject;
- (id)findParentForObjectWithIdentifier:(id)identifier;
- (id)serializedData;
- (void)addClass:(id)class;
- (void)addExports:(id)exports;
- (void)addFunction:(id)function;
- (void)addObject:(id)object;
- (void)addObjectAsClass:(id)class;
- (void)addObjectAsProtocol:(id)protocol;
- (void)addProtocol:(id)protocol;
- (void)addRequire:(id)require;
- (void)commit;
- (void)encode:(ProtobufCMessage *)encode;
- (void)removeCategories;
- (void)removeClasses;
- (void)removeFunctions;
@end

@implementation TMLMetaContext

- (TMLMetaContext)init
{
  v14.receiver = self;
  v14.super_class = TMLMetaContext;
  v2 = [(TMLMetaContext *)&v14 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    objects = v2->_objects;
    v2->_objects = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    classes = v2->_classes;
    v2->_classes = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    protocols = v2->_protocols;
    v2->_protocols = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    functions = v2->_functions;
    v2->_functions = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    categories = v2->_categories;
    v2->_categories = v11;
  }

  return v2;
}

- (TMLMetaObject)rootObject
{
  if (self->_rootObjectIdentifier)
  {
    rootObjectIdentifier = self->_rootObjectIdentifier;
  }

  else
  {
    rootObjectIdentifier = &stru_287F301C0;
  }

  return [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:rootObjectIdentifier];
}

- (void)addObject:(id)object
{
  objectCopy = object;
  type = [objectCopy type];
  v5 = [type isEqualToString:@"Class"];

  if (v5)
  {
    [(TMLMetaContext *)self addObjectAsClass:objectCopy];
  }

  else
  {
    type2 = [objectCopy type];
    v7 = [type2 isEqualToString:@"Protocol"];

    if (v7)
    {
      [(TMLMetaContext *)self addObjectAsProtocol:objectCopy];
    }

    else
    {
      type3 = [objectCopy type];
      v9 = [type3 isEqualToString:@"Category"];

      if (v9)
      {
        [(NSMutableArray *)self->_categories addObject:objectCopy];
      }

      else
      {
        if (!self->_rootObjectIdentifier)
        {
          identifier = [objectCopy identifier];
          v11 = [identifier copy];
          rootObjectIdentifier = self->_rootObjectIdentifier;
          self->_rootObjectIdentifier = v11;
        }

        objects = self->_objects;
        identifier2 = [objectCopy identifier];
        [(NSMutableDictionary *)objects setObject:objectCopy forKey:identifier2];
      }
    }
  }
}

- (void)commit
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  categories = self->_categories;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = sub_26F1EACC0;
  v9 = &unk_279DC7DF8;
  selfCopy = self;
  v11 = v3;
  v5 = v3;
  [(NSMutableArray *)categories enumerateObjectsUsingBlock:&v6];
  [(NSMutableArray *)self->_categories removeObjectsAtIndexes:v5, v6, v7, v8, v9, selfCopy];
}

- (void)removeClasses
{
  classes = self->_classes;
  self->_classes = 0;
  MEMORY[0x2821F96F8](self, classes);
}

- (void)removeFunctions
{
  functions = self->_functions;
  self->_functions = 0;
  MEMORY[0x2821F96F8](self, functions);
}

- (void)removeCategories
{
  categories = self->_categories;
  self->_categories = 0;
  MEMORY[0x2821F96F8](self, categories);
}

+ (id)convertObject:(id)object toClass:(id)class
{
  objectCopy = object;
  classCopy = class;
  if (!classCopy)
  {
    v7 = [TMLClassDescriptor alloc];
    identifier = [objectCopy identifier];
    properties = [objectCopy properties];
    v10 = [properties objectForKeyedSubscript:@"superclass"];
    initializer = [objectCopy initializer];
    attributes = [objectCopy attributes];
    classCopy = -[TMLClassDescriptor initWithName:superClassName:initializer:optional:](v7, "initWithName:superClassName:initializer:optional:", identifier, v10, initializer, [attributes containsObject:@"optional"]);

    properties2 = [objectCopy properties];
    v14 = [properties2 objectForKeyedSubscript:@"nativeclass"];
    [(TMLClassDescriptor *)classCopy setObjcClassName:v14];
  }

  declarations = [objectCopy declarations];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26F1EAF3C;
  v18[3] = &unk_279DC64B0;
  v16 = classCopy;
  v19 = v16;
  [declarations enumerateObjectsUsingBlock:v18];

  return v16;
}

- (void)addObjectAsClass:(id)class
{
  classCopy = class;
  v5 = objc_opt_class();
  classes = self->_classes;
  identifier = [classCopy identifier];
  v8 = [(NSMutableDictionary *)classes objectForKeyedSubscript:identifier];
  v9 = [v5 convertObject:classCopy toClass:v8];

  objects = [classCopy objects];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_26F1EB120;
  v15 = &unk_279DC7DF8;
  selfCopy = self;
  v17 = v9;
  v11 = v9;
  [objects enumerateObjectsUsingBlock:&v12];

  [(TMLMetaContext *)self addClass:v11, v12, v13, v14, v15, selfCopy];
}

+ (id)convertObject:(id)object toProtocol:(id)protocol
{
  objectCopy = object;
  protocolCopy = protocol;
  if (!protocolCopy)
  {
    v7 = [TMLProtocolDescriptor alloc];
    identifier = [objectCopy identifier];
    implements = [objectCopy implements];
    protocolCopy = [(TMLProtocolDescriptor *)v7 initWithName:identifier implementsProtocols:implements];

    properties = [objectCopy properties];
    v11 = [properties objectForKeyedSubscript:@"nativeclass"];
    [(TMLProtocolDescriptor *)protocolCopy setObjcProtocolName:v11];
  }

  declarations = [objectCopy declarations];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26F1EB3BC;
  v15[3] = &unk_279DC64B0;
  v13 = protocolCopy;
  v16 = v13;
  [declarations enumerateObjectsUsingBlock:v15];

  return v13;
}

- (void)addObjectAsProtocol:(id)protocol
{
  protocolCopy = protocol;
  v5 = objc_opt_class();
  protocols = self->_protocols;
  identifier = [protocolCopy identifier];
  v8 = [(NSMutableDictionary *)protocols objectForKeyedSubscript:identifier];
  v9 = [v5 convertObject:protocolCopy toProtocol:v8];

  [(TMLMetaContext *)self addProtocol:v9];
}

- (void)addClass:(id)class
{
  classes = self->_classes;
  classCopy = class;
  className = [classCopy className];
  [(NSMutableDictionary *)classes setObject:classCopy forKeyedSubscript:className];
}

- (void)addProtocol:(id)protocol
{
  protocols = self->_protocols;
  protocolCopy = protocol;
  protocolName = [protocolCopy protocolName];
  [(NSMutableDictionary *)protocols setObject:protocolCopy forKeyedSubscript:protocolName];
}

- (void)addFunction:(id)function
{
  functions = self->_functions;
  functionCopy = function;
  functionName = [functionCopy functionName];
  [(NSMutableDictionary *)functions setObject:functionCopy forKeyedSubscript:functionName];
}

- (void)addExports:(id)exports
{
  exportsCopy = exports;
  exports = self->_exports;
  v8 = exportsCopy;
  if (!exports)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    v7 = self->_exports;
    self->_exports = v6;

    exportsCopy = v8;
    exports = self->_exports;
  }

  [(NSMutableArray *)exports addObjectsFromArray:exportsCopy];
}

- (void)addRequire:(id)require
{
  requireCopy = require;
  requires = self->_requires;
  v8 = requireCopy;
  if (!requires)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    v7 = self->_requires;
    self->_requires = v6;

    requireCopy = v8;
    requires = self->_requires;
  }

  [(NSMutableSet *)requires addObject:requireCopy];
}

- (id)findParentForObjectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_26F1EB838;
  v16 = sub_26F1EB848;
  v17 = 0;
  objects = self->_objects;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26F1EB850;
  v9[3] = &unk_279DC8E88;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)encode:(ProtobufCMessage *)encode
{
  allValues = [(NSMutableDictionary *)self->_classes allValues];
  v6 = [allValues count];
  encode[1].var0 = v6;
  if (v6)
  {
    v6 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
  }

  *&encode[1].var1 = v6;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_26F1EBCE8;
  v22[3] = &unk_279DC8D20;
  v22[4] = encode;
  [allValues enumerateObjectsUsingBlock:v22];
  allValues2 = [(NSMutableDictionary *)self->_objects allValues];
  v8 = [allValues2 mutableCopy];

  rootObject = [(TMLMetaContext *)self rootObject];
  v10 = [v8 indexOfObjectIdenticalTo:rootObject];

  if (v10 && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 exchangeObjectAtIndex:v10 withObjectAtIndex:0];
  }

  [v8 addObjectsFromArray:self->_categories];
  v11 = [v8 count];
  encode[1].var2 = v11;
  if (v11)
  {
    v11 = malloc_type_malloc(8 * v11, 0x2004093837F09uLL);
  }

  encode[2].var0 = v11;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_26F1EBD60;
  v21[3] = &unk_279DC8E30;
  v21[4] = encode;
  [v8 enumerateObjectsUsingBlock:v21];
  allValues3 = [(NSMutableDictionary *)self->_functions allValues];
  v13 = [allValues3 count];
  *&encode[2].var1 = v13;
  if (v13)
  {
    v13 = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
  }

  encode[2].var2 = v13;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26F1EBDD8;
  v20[3] = &unk_279DC8EA8;
  v20[4] = encode;
  [allValues3 enumerateObjectsUsingBlock:v20];
  allValues4 = [(NSMutableDictionary *)self->_protocols allValues];
  v15 = [allValues4 count];
  encode[3].var0 = v15;
  if (v15)
  {
    v15 = malloc_type_malloc(8 * v15, 0x2004093837F09uLL);
  }

  *&encode[3].var1 = v15;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_26F1EBE50;
  v19[3] = &unk_279DC8EC8;
  v19[4] = encode;
  [allValues4 enumerateObjectsUsingBlock:v19];
  allObjects = [(NSMutableSet *)self->_requires allObjects];
  v17 = [allObjects count];
  encode[3].var2 = v17;
  if (v17)
  {
    v17 = malloc_type_malloc(8 * v17, 0x80040B8603338uLL);
  }

  encode[4].var0 = v17;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26F1EBEC8;
  v18[3] = &unk_279DC7D10;
  v18[4] = encode;
  [allObjects enumerateObjectsUsingBlock:v18];
}

+ (id)decode:(const ProtobufCMessage *)decode
{
  v4 = objc_alloc_init(self);
  if (decode[1].var0)
  {
    v5 = 0;
    do
    {
      v6 = [objc_opt_class() decode:*(*&decode[1].var1 + 8 * v5)];
      [v4 addClass:v6];

      v5 = (v5 + 1);
    }

    while (v5 < decode[1].var0);
  }

  if (decode[3].var0)
  {
    v7 = 0;
    do
    {
      v8 = [objc_opt_class() decode:*(*&decode[3].var1 + 8 * v7)];
      [v4 addProtocol:v8];

      v7 = (v7 + 1);
    }

    while (v7 < decode[3].var0);
  }

  if (decode[1].var2)
  {
    v9 = 0;
    do
    {
      v10 = [objc_opt_class() decode:*(&decode[2].var0->var0 + v9)];
      [v4 addObject:v10];

      v9 = (v9 + 1);
    }

    while (v9 < decode[1].var2);
  }

  if (*&decode[2].var1)
  {
    v11 = 0;
    do
    {
      v12 = [objc_opt_class() decode:*(decode[2].var2 + v11)];
      [v4 addFunction:v12];

      ++v11;
    }

    while (v11 < *&decode[2].var1);
  }

  if (decode[3].var2)
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&decode[4].var0->var0 + v13)];
      [v4 addRequire:v14];

      v13 = (v13 + 1);
    }

    while (v13 < decode[3].var2);
  }

  return v4;
}

- (id)serializedData
{
  v3 = malloc_type_malloc(0x68uLL, 0x10E0040650DB1CFuLL);
  [(TMLMetaContext *)self encode:v3];
  v4 = [TMLModelSerialize pack:v3];
  sub_26F1BAE90(v3, 0);

  return v4;
}

+ (id)deserializeFromData:(id)data
{
  v4 = [TMLModelSerialize unpackData:data withDescriptor:&unk_287F2BF10];
  if (v4)
  {
    p_var0 = &v4->var0;
    v6 = [self decode:v4];
    sub_26F1BAE90(p_var0, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
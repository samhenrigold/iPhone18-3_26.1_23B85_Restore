@interface TMLContext
+ (BOOL)loadClasses:(id)classes path:(id)path;
+ (BOOL)loadClassesFromPath:(id)path;
+ (Class)createClassFromPath:(id)path;
+ (id)cloneContext:(id)context objects:(id)objects;
+ (id)loadMetaContextWithSource:(id)source path:(id)path options:(unint64_t)options;
+ (void)initializeJSContext:(id)context;
- (BOOL)loadSource:(id)source path:(id)path;
- (BOOL)loadSourceFromPath:(id)path;
- (BOOL)raiseException:(id)exception;
- (NSDictionary)allObjects;
- (NSObject)rootObject;
- (TMLContext)initWithOptions:(unint64_t)options;
- (id)applyProperties:(id)properties inOrder:(id)order toObject:(id)object;
- (id)callFunction:(id)function arguments:(id)arguments returnType:(unint64_t)type;
- (id)createObjectFromMetaObject:(id)object parent:(id)parent;
- (id)evaluateExpression:(id)expression ofType:(unint64_t)type withBindings:(id)bindings;
- (id)existingObjectWithIdentifier:(id)identifier;
- (id)objectWithIdentifier:(id)identifier unwrapWeak:(BOOL)weak createIfMissing:(BOOL)missing;
- (id)objectsOfType:(id)type;
- (id)processValue:(id)value ofType:(unint64_t)type selfValue:(id)selfValue;
- (void)addObject:(id)object withIdentifier:(id)identifier;
- (void)attachToAPIObject;
- (void)dealloc;
- (void)dispose;
- (void)disposeIfNecessary;
- (void)initializeJSContext;
- (void)initializeWithCloneContext:(id)context;
- (void)initizalizeContext;
- (void)makeWeakObjectWithIdentifier:(id)identifier;
- (void)raiseJSException:(id)exception;
- (void)requireModule:(id)module;
- (void)resetException;
- (void)resetJSException;
@end

@implementation TMLContext

- (TMLContext)initWithOptions:(unint64_t)options
{
  v9.receiver = self;
  v9.super_class = TMLContext;
  v4 = [(TMLContext *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    objects = v5->_objects;
    v5->_objects = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(TMLContext *)self dispose];
  v3.receiver = self;
  v3.super_class = TMLContext;
  [(TMLContext *)&v3 dealloc];
}

- (void)disposeIfNecessary
{
  if (!self->_beingDisposed)
  {
    [(TMLContext *)self dispose];
  }
}

- (void)dispose
{
  self->_beingDisposed = 1;
  if (self->_jsContext)
  {
    [(TMLContext *)self callFunction:@"onunload" arguments:0];
  }

  [(NSMutableArray *)self->_signalHandlers makeObjectsPerformSelector:sel_detach];
  signalHandlers = self->_signalHandlers;
  self->_signalHandlers = 0;

  contextObjects = self->_contextObjects;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26F1C63D8;
  v16[3] = &unk_279DC7D58;
  v16[4] = self;
  [(NSMutableSet *)contextObjects enumerateObjectsUsingBlock:v16];
  v5 = self->_contextObjects;
  self->_contextObjects = 0;

  objects = self->_objects;
  self->_objects = 0;

  jsContext = self->_jsContext;
  if (self->_apiObject && jsContext)
  {
    v8 = [MEMORY[0x277CD4658] valueWithUndefinedInContext:?];
    v9 = [(JSValue *)self->_apiObject objectForKeyedSubscript:@"_$ctxs"];
    if ([v9 isArray])
    {
      toArray = [v9 toArray];
      apiObject = [toArray mutableCopy];

      [(JSValue *)apiObject removeObject:self];
      if ([(JSValue *)apiObject count])
      {
        v12 = [MEMORY[0x277CD4658] valueWithObject:apiObject inContext:self->_jsContext];
        [(JSValue *)self->_apiObject setObject:v12 forKeyedSubscript:@"_$ctxs"];

LABEL_10:
        jsContext = self->_jsContext;
        goto LABEL_11;
      }

      [(JSValue *)self->_apiObject setObject:v8 forKeyedSubscript:@"_$ctxs"];
    }

    globalObject = [(JSContext *)self->_jsContext globalObject];
    [globalObject setObject:v8 forKeyedSubscript:self->_apiObjectKey];

    apiObjectKey = self->_apiObjectKey;
    self->_apiObjectKey = 0;

    apiObject = self->_apiObject;
    self->_apiObject = 0;
    goto LABEL_10;
  }

LABEL_11:
  self->_jsContext = 0;

  metaContext = self->_metaContext;
  self->_metaContext = 0;
}

- (BOOL)raiseException:(id)exception
{
  exceptionCopy = exception;
  if (self->_jsEvaluationException == exceptionCopy)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&self->_jsEvaluationException, exception);
  if (![(TMLContext *)self valid])
  {
    v7 = MEMORY[0x277CD4658];
    currentContext = [MEMORY[0x277CD4640] currentContext];
    v9 = [v7 valueWithNewErrorFromMessage:@"Disposed TML context" inContext:currentContext];
    currentContext2 = [MEMORY[0x277CD4640] currentContext];
    [currentContext2 setException:v9];

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (void)resetJSException
{
  name = [(NSException *)self->_jsEvaluationException name];
  v4 = [name isEqualToString:@"TMLJSException"];

  if (v4)
  {

    [(TMLContext *)self resetException];
  }
}

- (void)resetException
{
  jsEvaluationException = self->_jsEvaluationException;
  self->_jsEvaluationException = 0;
  MEMORY[0x2821F96F8](self, jsEvaluationException);
}

- (void)raiseJSException:(id)exception
{
  v19[1] = *MEMORY[0x277D85DE8];
  exceptionCopy = exception;
  v5 = [exceptionCopy objectForKeyedSubscript:@"stack"];
  toString = [v5 toString];
  v7 = [toString componentsSeparatedByString:@"\n"];
  v8 = [v7 mutableCopy];

  if (v8)
  {
    firstObject = [v8 firstObject];
    v10 = MEMORY[0x277CCACA8];
    v11 = [exceptionCopy objectForKeyedSubscript:@"line"];
    toString2 = [v11 toString];
    v13 = [v10 stringWithFormat:@"%@:#%@", firstObject, toString2];
    [v8 replaceObjectAtIndex:0 withObject:v13];
  }

  v14 = objc_alloc(MEMORY[0x277CBEAD8]);
  toString3 = [exceptionCopy toString];
  v18 = @"stack";
  v19[0] = v8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v17 = [v14 initWithName:@"TMLJSException" reason:toString3 userInfo:v16];
  [(TMLContext *)self raiseException:v17];
}

- (BOOL)loadSourceFromPath:(id)path
{
  v4 = MEMORY[0x277CBEA90];
  pathCopy = path;
  v6 = [v4 dataWithContentsOfFile:pathCopy];
  LOBYTE(self) = [(TMLContext *)self loadSource:v6 path:pathCopy];

  return self;
}

- (BOOL)loadSource:(id)source path:(id)path
{
  sourceCopy = source;
  pathCopy = path;
  v8 = [objc_opt_class() loadMetaContextWithSource:sourceCopy path:pathCopy options:self->_options];
  if (v8)
  {
    objc_storeStrong(&self->_metaContext, v8);
    [(TMLContext *)self initizalizeContext];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initializeWithCloneContext:(id)context
{
  contextCopy = context;
  metaContext = [contextCopy metaContext];
  metaContext = self->_metaContext;
  self->_metaContext = metaContext;

  self->_options |= 8uLL;
  jsContext = [contextCopy jsContext];
  jsContext = self->_jsContext;
  self->_jsContext = jsContext;

  apiObject = [contextCopy apiObject];
  apiObject = self->_apiObject;
  self->_apiObject = apiObject;

  apiObjectKey = [contextCopy apiObjectKey];
  apiObjectKey = self->_apiObjectKey;
  self->_apiObjectKey = apiObjectKey;

  [(TMLContext *)self initizalizeContext];
  jsContext2 = [contextCopy jsContext];

  if (!jsContext2)
  {
    [contextCopy setJsContext:self->_jsContext];
  }

  apiObject2 = [contextCopy apiObject];

  if (!apiObject2)
  {
    [contextCopy setApiObject:self->_apiObject];
  }

  apiObjectKey2 = [contextCopy apiObjectKey];

  if (!apiObjectKey2)
  {
    [contextCopy setApiObjectKey:self->_apiObjectKey];
  }
}

+ (id)loadMetaContextWithSource:(id)source path:(id)path options:(unint64_t)options
{
  optionsCopy = options;
  sourceCopy = source;
  pathCopy = path;
  v9 = [TMLModelSerialize decode:sourceCopy];
  if (v9)
  {
    v10 = [TMLMetaContext deserializeFromData:v9];
    if (v10)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if ((optionsCopy & 4) == 0)
  {
LABEL_5:
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:@"TMLRuntimeException" reason:@"Malformed format error" userInfo:0];
    [TMLExceptionHandler raiseException:v11];
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = objc_alloc_init(TMLMetaContext);
  v11 = [[TMLParser alloc] initWithContext:v10];
  [(TMLParser *)v11 addPreprocessorMacro:@"TARGET_OS_IPHONE"];
  [(TMLParser *)v11 addPreprocessorMacro:@"TARGET_OS_IOS"];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:sourceCopy encoding:4];
  if (!v12 || ([pathCopy stringByDeletingLastPathComponent], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(pathCopy, "lastPathComponent"), v14 = objc_claimAutoreleasedReturnValue(), v15 = -[TMLParser parseString:basePath:filename:](v11, "parseString:basePath:filename:", v12, v13, v14), v14, v13, !v15))
  {
    v16 = MEMORY[0x277CBEAD8];
    error = [(TMLParser *)v11 error];
    v18 = [v16 exceptionWithName:@"TMLRuntimeException" reason:error userInfo:0];
    [TMLExceptionHandler raiseException:v18];

    v11 = v10;
    goto LABEL_10;
  }

LABEL_11:
LABEL_12:

  return v10;
}

+ (BOOL)loadClassesFromPath:(id)path
{
  v4 = MEMORY[0x277CBEA90];
  pathCopy = path;
  v6 = [v4 dataWithContentsOfFile:pathCopy];
  LOBYTE(self) = [self loadClasses:v6 path:pathCopy];

  return self;
}

+ (BOOL)loadClasses:(id)classes path:(id)path
{
  pathCopy = path;
  classesCopy = classes;
  v7 = [[TMLContext alloc] initWithOptions:3];
  v8 = [(TMLContext *)v7 loadSource:classesCopy path:pathCopy];

  return v8;
}

+ (Class)createClassFromPath:(id)path
{
  v4 = MEMORY[0x277CBEA90];
  pathCopy = path;
  v6 = [v4 dataWithContentsOfFile:pathCopy];
  v7 = [self loadMetaContextWithSource:v6 path:pathCopy options:1];

  v8 = [[TMLCloneContext alloc] initWithMetaContext:v7];
  v9 = [TMLRuntime createClass:v8];
  v10 = +[TMLJSEnvironment currentContext];
  [v10 addObjectReference:v9];

  v11 = v9;
  return v9;
}

+ (id)cloneContext:(id)context objects:(id)objects
{
  objectsCopy = objects;
  contextCopy = context;
  v8 = objc_alloc_init(self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26F1C6F58;
  v11[3] = &unk_279DC6340;
  v9 = v8;
  v12 = v9;
  [objectsCopy enumerateKeysAndObjectsUsingBlock:v11];

  [v9 initializeWithCloneContext:contextCopy];

  return v9;
}

- (NSObject)rootObject
{
  rootObject = [(TMLMetaContext *)self->_metaContext rootObject];
  identifier = [rootObject identifier];
  v5 = [(TMLContext *)self objectWithIdentifier:identifier];

  return v5;
}

- (NSDictionary)allObjects
{
  v2 = [(NSMutableDictionary *)self->_objects copy];

  return v2;
}

- (id)existingObjectWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object = [v3 object];

    v3 = object;
  }

  return v3;
}

- (id)objectWithIdentifier:(id)identifier unwrapWeak:(BOOL)weak createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  weakCopy = weak;
  identifierCopy = identifier;
  v9 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:identifierCopy];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !missingCopy;
  }

  if (!v10)
  {
    objects = [(TMLMetaContext *)self->_metaContext objects];
    v12 = [objects objectForKeyedSubscript:identifierCopy];

    if (v12)
    {
      v9 = [(TMLContext *)self createObjectFromMetaObject:v12 parent:0];
LABEL_10:

      goto LABEL_11;
    }

    v13 = [(TMLMetaContext *)self->_metaContext findParentForObjectWithIdentifier:identifierCopy];
    v14 = v13;
    if (v13 && ([v13 identifier], v15 = objc_claimAutoreleasedReturnValue(), -[TMLContext objectWithIdentifier:](self, "objectWithIdentifier:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v9 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:identifierCopy];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v19 = MEMORY[0x277CBEAD8];
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown object identifier %@", identifierCopy];
    v21 = [v19 exceptionWithName:@"TMLRuntimeException" reason:identifierCopy userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

LABEL_11:
  if (weakCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object = [v9 object];

      v9 = object;
    }
  }

  return v9;
}

- (id)objectsOfType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objects = [(TMLMetaContext *)self->_metaContext objects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_26F1C7364;
  v12[3] = &unk_279DC7D80;
  v13 = typeCopy;
  selfCopy = self;
  v7 = v5;
  v15 = v7;
  v8 = typeCopy;
  [objects enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

- (id)createObjectFromMetaObject:(id)object parent:(id)parent
{
  objectCopy = object;
  parentCopy = parent;
  identifier = [objectCopy identifier];
  initializer = [objectCopy initializer];
  v10 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:identifier];
  v43 = initializer;
  if (v10)
  {
    v11 = v10;
    v42 = 0;
  }

  else
  {
    type = [objectCopy type];
    v42 = initializer != 0;
    if (initializer)
    {
      v13 = v54;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_26F1C79F4;
      v54[3] = &unk_279DC7DA8;
      v54[4] = self;
      v40 = &v55;
      v55 = initializer;
    }

    else
    {
      v13 = 0;
    }

    v11 = [TMLRuntime createObjectWithIdentifier:identifier ofType:type initializer:v13 parentObject:parentCopy];

    if (!v11)
    {
LABEL_8:
      v14 = MEMORY[0x277CBEAD8];
      v15 = MEMORY[0x277CCACA8];
      reason = [v11 reason];
      v17 = [v15 stringWithFormat:@"Unable create object with identifier %@.\nRoot cause: %@", identifier, reason];
      v18 = [v14 exceptionWithName:@"TMLRuntimeException" reason:v17 userInfo:0];
      [TMLExceptionHandler raiseException:v18];

      v19 = 0;
      if (!v42)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v21 = v11;
  v22 = v21;
  if ([identifier length])
  {
    v22 = v21;
    if ([(NSMutableSet *)self->_weakObjectIdentifiers containsObject:identifier])
    {
      objc_opt_class();
      v22 = v21;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = [TMLWeakReferenceObject weakReferenceWithObject:v21];
      }
    }

    [(NSMutableDictionary *)self->_objects setObject:v22 forKeyedSubscript:identifier];
  }

  v41 = parentCopy;
  v23 = v22;
  objc_opt_class();
  object = v23;
  if (objc_opt_isKindOfClass())
  {
    object = [v23 object];
  }

  implements = [objectCopy implements];
  [TMLRuntime makeObject:object implementProtocols:implements];

  declarations = [objectCopy declarations];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_26F1C7A50;
  v51[3] = &unk_279DC7DD0;
  v27 = object;
  v52 = v27;
  tmlIdentifier = identifier;
  v53 = tmlIdentifier;
  [declarations enumerateObjectsUsingBlock:v51];

  properties = [objectCopy properties];
  propertyKeys = [objectCopy propertyKeys];
  v31 = [(TMLContext *)self applyProperties:properties inOrder:propertyKeys toObject:v27];

  objects = [objectCopy objects];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_26F1C7BCC;
  v49[3] = &unk_279DC7DF8;
  v49[4] = self;
  v33 = v27;
  v50 = v33;
  [objects enumerateObjectsUsingBlock:v49];

  if (v31)
  {
    [v33 setTMLValue:v31 forKeyPath:@"tmlState"];
  }

  if (!tmlIdentifier)
  {
    tmlIdentifier = [v33 tmlIdentifier];
  }

  v34 = [v33 setTMLOwnerContext:self];
  [(NSMutableSet *)self->_contextObjects addObject:v23];
  [v33 addMetaObject:objectCopy];
  signalHandlers = [objectCopy signalHandlers];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = sub_26F1C7BF8;
  v44[3] = &unk_279DC7E20;
  v36 = v33;
  v45 = v36;
  v37 = objectCopy;
  v46 = v37;
  identifier = tmlIdentifier;
  v47 = identifier;
  selfCopy = self;
  [signalHandlers enumerateKeysAndObjectsUsingBlock:v44];

  [v36 tmlMakeJSObjectClass];
  if (v34)
  {
    type2 = [v37 type];
    v39 = [type2 isEqualToString:@"Category"];

    if ((v39 & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [v36 tmlObjectCompleted];
      }

      [v36 emitTMLSignal:@"initialize" withArguments:0];
    }
  }

  v19 = [(TMLContext *)self didCreateObject:v36];

  parentCopy = v41;
  if (v42)
  {
LABEL_9:
  }

LABEL_10:

  return v19;
}

- (id)applyProperties:(id)properties inOrder:(id)order toObject:(id)object
{
  propertiesCopy = properties;
  orderCopy = order;
  objectCopy = object;
  tmlDefaultState = [objectCopy tmlDefaultState];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_26F1C83B4;
  v27 = sub_26F1C83C4;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26F1C83CC;
  v17[3] = &unk_279DC7E48;
  v12 = propertiesCopy;
  v18 = v12;
  selfCopy = self;
  v13 = objectCopy;
  v20 = v13;
  v14 = tmlDefaultState;
  v21 = v14;
  v22 = &v23;
  [orderCopy enumerateObjectsUsingBlock:v17];
  v15 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (void)makeWeakObjectWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  weakObjectIdentifiers = self->_weakObjectIdentifiers;
  v8 = identifierCopy;
  if (!weakObjectIdentifiers)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    v7 = self->_weakObjectIdentifiers;
    self->_weakObjectIdentifiers = v6;

    identifierCopy = v8;
    weakObjectIdentifiers = self->_weakObjectIdentifiers;
  }

  [(NSMutableSet *)weakObjectIdentifiers addObject:identifierCopy];
}

- (void)addObject:(id)object withIdentifier:(id)identifier
{
  v27[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifierCopy = identifier;
  v7 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:identifierCopy];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([objectCopy object], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v9))
    {
      [(NSMutableDictionary *)self->_objects setObject:objectCopy forKeyedSubscript:identifierCopy];
      [(NSMutableSet *)self->_contextObjects removeObject:v7];
      [(NSMutableSet *)self->_contextObjects addObject:objectCopy];
    }

    else if (([v7 isEqual:objectCopy] & 1) == 0)
    {
      v10 = MEMORY[0x277CBEAD8];
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Object with identifier %@ already exists in the context", identifierCopy];
      v26[0] = @"existing";
      v26[1] = @"object";
      v27[0] = v7;
      v27[1] = objectCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
      v13 = [v10 exceptionWithName:@"TMLRuntimeException" reason:identifierCopy userInfo:v12];
      v14 = v13;

      objc_exception_throw(v13);
    }
  }

  else
  {
    if (self->_initialized)
    {
      v15 = [TMLRuntime classForObject:objectCopy];

      if (!v15)
      {
        v18 = MEMORY[0x277CBEAD8];
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to add object of undeclared class %@", objc_opt_class()];
        v24 = @"object";
        v25 = objectCopy;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v21 = [v18 exceptionWithName:@"TMLRuntimeException" reason:v19 userInfo:v20];
        v22 = v21;

        objc_exception_throw(v21);
      }
    }

    [objectCopy setTmlIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_objects setObject:objectCopy forKeyedSubscript:identifierCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      object = [objectCopy object];

      v17 = object;
    }

    else
    {
      v17 = objectCopy;
    }

    objectCopy = v17;
    [v17 tmlMakeJSObjectClass];
  }
}

- (void)requireModule:(id)module
{
  moduleCopy = module;
  v4 = +[TMLJSEnvironment defaultModules];
  v5 = [v4 containsObject:moduleCopy];

  if ((v5 & 1) == 0)
  {
    requires = self->_requires;
    if (!requires)
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
      v8 = self->_requires;
      self->_requires = v7;

      requires = self->_requires;
    }

    [(NSMutableSet *)requires addObject:moduleCopy];
  }
}

- (id)processValue:(id)value ofType:(unint64_t)type selfValue:(id)selfValue
{
  v37[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_initWeak(&location, selfValue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = valueCopy;
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    bindings = [v11 bindings];
    v14 = [v12 initWithCapacity:{objc_msgSend(bindings, "count")}];

    objc_initWeak(&from, self);
    v15 = objc_loadWeakRetained(&location);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = objc_loadWeakRetained(&location);
      tmlParent = [v17 tmlParent];
      objc_storeWeak(&location, tmlParent);
    }

    bindings2 = [v11 bindings];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = sub_26F1C8DCC;
    v30 = &unk_279DC7E98;
    objc_copyWeak(&v33, &location);
    selfCopy = self;
    v20 = v14;
    v32 = v20;
    objc_copyWeak(&v34, &from);
    [bindings2 enumerateObjectsUsingBlock:&v27];

    v21 = [TMLExpressionReactiveValue alloc];
    expressionText = [v11 expressionText];
    v9 = [(TMLExpressionReactiveValue *)v21 initWithExpression:expressionText context:self bindings:v20 valueType:type];

    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_3:
      v9 = valueCopy;
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [(TMLContext *)self createObjectFromMetaObject:valueCopy parent:0];
      v24 = [TMLExpressionReactiveValue alloc];
      v25 = [TMLReference referenceForTarget:v23];
      v37[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      v9 = [(TMLExpressionReactiveValue *)v24 initWithExpression:@"$(0)" context:self bindings:v26 valueType:type];
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_4:
  objc_destroyWeak(&location);

  return v9;
}

- (void)attachToAPIObject
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(JSValue *)self->_apiObject objectForKeyedSubscript:@"_$ctxs"];
  if ([v3 isArray])
  {
    toArray = [v3 toArray];
    v5 = [toArray arrayByAddingObject:self];

    v6 = MEMORY[0x277CD4658];
    jsContext = self->_jsContext;
  }

  else
  {
    v8 = MEMORY[0x277CD4658];
    v10[0] = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    jsContext = self->_jsContext;
    v6 = v8;
  }

  v9 = [v6 valueWithObject:v5 inContext:jsContext];
  [(JSValue *)self->_apiObject setObject:v9 forKeyedSubscript:@"_$ctxs"];
}

- (void)initializeJSContext
{
  if (self->_apiObject)
  {

    [(TMLContext *)self attachToAPIObject];
  }

  else
  {
    v3 = [TMLJSEnvironment createJSContextWithRuntimeContext:self];
    jsContext = self->_jsContext;
    self->_jsContext = v3;

    [(JSContext *)self->_jsContext setExceptionHandler:&unk_287F2CBE0];
    v5 = [MEMORY[0x277CD4658] valueWithNewObjectInContext:self->_jsContext];
    apiObject = self->_apiObject;
    self->_apiObject = v5;

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"api%p", self];
    apiObjectKey = self->_apiObjectKey;
    self->_apiObjectKey = v7;

    v9 = self->_apiObject;
    globalObject = [(JSContext *)self->_jsContext globalObject];
    [globalObject setObject:v9 forKeyedSubscript:self->_apiObjectKey];

    [(TMLContext *)self attachToAPIObject];
    if ([(NSMutableSet *)self->_requires count])
    {
      requires = self->_requires;
      requires = [(TMLMetaContext *)self->_metaContext requires];
      v13 = [(NSMutableSet *)requires setByAddingObjectsFromSet:requires];
      v14 = [v13 mutableCopy];
    }

    else
    {
      requires = [(TMLMetaContext *)self->_metaContext requires];
      v14 = [requires mutableCopy];
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_26F1C9360;
    v15[3] = &unk_279DC7EC0;
    v15[4] = self;
    [v14 enumerateObjectsUsingBlock:v15];
  }
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [contextCopy setObject:&unk_287F2CC00 forKeyedSubscript:@"$"];
  [contextCopy setObject:&unk_287F2CC20 forKeyedSubscript:@"get"];
  [contextCopy setObject:&unk_287F2CC20 forKeyedSubscript:@"$$"];
  [contextCopy setObject:&unk_287F2CC40 forKeyedSubscript:@"$ctor$"];
  [contextCopy setObject:&unk_287F2CC60 forKeyedSubscript:@"$new$"];
  [contextCopy setObject:&unk_287F2CC80 forKeyedSubscript:@"trycatch"];
  [contextCopy setObject:&unk_287F2CCA0 forKeyedSubscript:@"currentContext"];
}

- (void)initizalizeContext
{
  [(TMLMetaContext *)self->_metaContext commit];
  requires = [(TMLMetaContext *)self->_metaContext requires];
  [requires enumerateObjectsUsingBlock:&unk_287F2CCC0];

  options = self->_options;
  if (options)
  {
    protocols = [(TMLMetaContext *)self->_metaContext protocols];
    [protocols enumerateKeysAndObjectsUsingBlock:&unk_287F2CCE0];

    classes = [(TMLMetaContext *)self->_metaContext classes];
    [classes enumerateKeysAndObjectsUsingBlock:&unk_287F2CD00];

    options = self->_options;
  }

  if ((~options & 3) != 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:16];
    contextObjects = self->_contextObjects;
    self->_contextObjects = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:32];
    signalHandlers = self->_signalHandlers;
    self->_signalHandlers = v9;

    apiObject = self->_apiObject;
    [(TMLContext *)self initializeJSContext];
    v12 = +[TMLApplication sharedInstance];
    [(TMLContext *)self addObject:v12 withIdentifier:@"application"];

    if (!apiObject)
    {
      functions = [(TMLMetaContext *)self->_metaContext functions];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_26F1C9D84;
      v18[3] = &unk_279DC7FA8;
      v18[4] = self;
      [functions enumerateKeysAndObjectsUsingBlock:v18];
    }

    self->_initialized = 1;
    v14 = [(NSMutableDictionary *)self->_objects copy];
    categories = [(TMLMetaContext *)self->_metaContext categories];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_26F1C9F44;
    v17[3] = &unk_279DC7FD0;
    v17[4] = self;
    [categories enumerateObjectsUsingBlock:v17];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_26F1C9FD8;
    v16[3] = &unk_279DC6340;
    v16[4] = self;
    [v14 enumerateKeysAndObjectsUsingBlock:v16];
    [(TMLContext *)self callFunction:@"onload" arguments:0];
    [(TMLMetaContext *)self->_metaContext removeClasses];
    if ((self->_options & 8) == 0)
    {
      [(TMLMetaContext *)self->_metaContext removeFunctions];
      [(TMLMetaContext *)self->_metaContext removeCategories];
    }
  }
}

- (id)evaluateExpression:(id)expression ofType:(unint64_t)type withBindings:(id)bindings
{
  expressionCopy = expression;
  bindingsCopy = bindings;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_26F1C83B4;
  v30 = sub_26F1C83C4;
  v31 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = sub_26F1CA33C;
  v21 = &unk_279DC7FF8;
  selfCopy = self;
  v10 = bindingsCopy;
  v23 = v10;
  v11 = expressionCopy;
  v24 = v11;
  v25 = &v26;
  [TMLJSEnvironment runInContext:self block:&v18];
  jsEvaluationException = self->_jsEvaluationException;
  if (jsEvaluationException)
  {
    v13 = jsEvaluationException;
    v14 = self->_jsEvaluationException;
    self->_jsEvaluationException = 0;

    v15 = [(NSException *)v13 name:v18];
    v16 = [v15 isEqualToString:@"TMLJSException"];

    if ((v16 & 1) == 0)
    {
      objc_exception_throw(v13);
    }
  }

  else
  {
    v13 = [TMLJSEnvironment convertJsValue:v27[5] toType:type, v18, v19, v20, v21, selfCopy, v23];
  }

  _Block_object_dispose(&v26, 8);

  return v13;
}

- (id)callFunction:(id)function arguments:(id)arguments returnType:(unint64_t)type
{
  functionCopy = function;
  argumentsCopy = arguments;
  v10 = [(JSValue *)self->_apiObject objectForKeyedSubscript:functionCopy];
  if ([v10 isObject])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_26F1C83B4;
    v23 = sub_26F1C83C4;
    v24 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_26F1CA620;
    v15[3] = &unk_279DC8020;
    v18 = &v19;
    v16 = v10;
    v17 = argumentsCopy;
    [TMLJSEnvironment runInContext:self block:v15];
    jsEvaluationException = self->_jsEvaluationException;
    if (jsEvaluationException)
    {
      v12 = jsEvaluationException;
      v13 = self->_jsEvaluationException;
      self->_jsEvaluationException = 0;
    }

    else
    {
      v12 = [TMLJSEnvironment convertJsValue:v20[5] toType:type];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
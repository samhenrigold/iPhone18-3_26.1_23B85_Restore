@interface FMDJSONDecoder
+ (BOOL)checkAndSetOutError:(id *)error WithError:(id)withError;
+ (id)decodeCollectionClass:(Class)class fromData:(id)data usingObjectKeyType:(id)type forObjectClass:(Class)objectClass error:(id *)error;
+ (id)decodeObjectOfClass:(Class)class fromData:(id)data error:(id *)error;
+ (id)decodeObjectOfClass:(Class)class fromData:(id)data usingFactory:(id)factory error:(id *)error;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (BOOL)isValidObject:(id)object usingProtocols:(id)protocols;
- (FMDJSONDecoder)init;
- (FMDJSONDecoder)initWithArrayData:(id)data andError:(id *)error;
- (FMDJSONDecoder)initWithData:(id)data error:(id *)error;
- (FMDJSONDecoder)initWithData:(id)data usingCollectionObjectKeyType:(id)type andCollectionObjectClass:(Class)class error:(id *)error;
- (FMDJSONDecoder)initWithDictionary:(id)dictionary;
- (FMDJSONDecoder)initWithDictionaryData:(id)data andError:(id *)error;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)decodeArrayCollection:(id)collection usingFactory:(id)factory error:(id *)error;
- (id)decodeCodableClass:(Class)class withJSONObject:(id)object usingFactory:(id)factory error:(id *)error;
- (id)decodeCodableClass:(Class)class withJSONObject:(id)object usingObjectKeyType:(id)type error:(id *)error;
- (id)decodeCollectionOfClass:(Class)class fromJSONObject:(id)object usingFactory:(id)factory error:(id *)error;
- (id)decodeCollectionOfClass:(Class)class usingFactory:(id)factory forKey:(id)key error:(id *)error;
- (id)decodeDictionaryCollection:(id)collection usingFactory:(id)factory error:(id *)error;
- (id)decodeNumberForKey:(id)key;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key error:(id *)error;
- (id)decodeObjectOfClass:(Class)class forKey:(id)key usingFactory:(id)factory error:(id *)error;
- (id)decodeObjectOfProtocols:(id)protocols forKey:(id)key error:(id *)error;
- (id)decodeObjectUsingFactories:(id)factories forKey:(id)key error:(id *)error;
- (id)decodeStringForKey:(id)key;
- (id)processJSON:(id)n forCodableType:(Class)type usingFactory:(id)factory error:(id *)error;
- (int64_t)decodeIntegerForKey:(id)key;
- (unint64_t)decodeUnsignedIntegerForKey:(id)key;
@end

@implementation FMDJSONDecoder

- (FMDJSONDecoder)init
{
  v10.receiver = self;
  v10.super_class = FMDJSONDecoder;
  v2 = [(FMDJSONDecoder *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    container = v2->_container;
    v2->_container = v3;

    v5 = objc_alloc_init(NSMutableArray);
    stack = v2->_stack;
    v2->_stack = v5;

    v7 = objc_opt_new();
    factory = v2->_factory;
    v2->_factory = v7;
  }

  return v2;
}

- (FMDJSONDecoder)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = FMDJSONDecoder;
  v7 = [(FMDJSONDecoder *)&v17 init];
  if (v7)
  {
    v8 = objc_opt_new();
    factory = v7->_factory;
    v7->_factory = v8;

    v16 = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:dataCopy options:4 error:&v16];
    v11 = v16;
    objc_storeStrong(&v7->_jsonObject, v10);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = 16;
    if (isKindOfClass)
    {
      v13 = 24;
    }

    objc_storeStrong((&v7->super.isa + v13), v10);
    if (error && v11)
    {
      v14 = v11;
      *error = v11;
    }
  }

  return v7;
}

- (FMDJSONDecoder)initWithData:(id)data usingCollectionObjectKeyType:(id)type andCollectionObjectClass:(Class)class error:(id *)error
{
  dataCopy = data;
  typeCopy = type;
  v22.receiver = self;
  v22.super_class = FMDJSONDecoder;
  v12 = [(FMDJSONDecoder *)&v22 init];
  if (v12)
  {
    v13 = objc_opt_new();
    factory = v12->_factory;
    v12->_factory = v13;

    objc_storeStrong(&v12->_collectionObjectClass, class);
    objc_storeStrong(&v12->_collectionObjectKeyType, type);
    v21 = 0;
    v15 = [NSJSONSerialization JSONObjectWithData:dataCopy options:4 error:&v21];
    v16 = v21;
    objc_storeStrong(&v12->_jsonObject, v15);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v18 = 16;
    if (isKindOfClass)
    {
      v18 = 24;
    }

    objc_storeStrong((&v12->super.isa + v18), v15);
    if (error && v16)
    {
      v19 = v16;
      *error = v16;
    }
  }

  return v12;
}

- (FMDJSONDecoder)initWithDictionaryData:(id)data andError:(id *)error
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = FMDJSONDecoder;
  v7 = [(FMDJSONDecoder *)&v17 init];
  if (v7)
  {
    v16 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:dataCopy options:4 error:&v16];
    v9 = v16;
    container = v7->_container;
    v7->_container = v8;

    v11 = objc_opt_new();
    factory = v7->_factory;
    v7->_factory = v11;

    if (error && v9)
    {
      code = [v9 code];
      userInfo = [v9 userInfo];
      *error = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:code userInfo:userInfo];
    }
  }

  return v7;
}

- (FMDJSONDecoder)initWithArrayData:(id)data andError:(id *)error
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = FMDJSONDecoder;
  v7 = [(FMDJSONDecoder *)&v17 init];
  if (v7)
  {
    v16 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:dataCopy options:4 error:&v16];
    v9 = v16;
    stack = v7->_stack;
    v7->_stack = v8;

    v11 = objc_opt_new();
    factory = v7->_factory;
    v7->_factory = v11;

    if (error && v9)
    {
      code = [v9 code];
      userInfo = [v9 userInfo];
      *error = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:code userInfo:userInfo];
    }
  }

  return v7;
}

- (FMDJSONDecoder)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = FMDJSONDecoder;
  v5 = [(FMDJSONDecoder *)&v11 init];
  if (v5)
  {
    v6 = [NSMutableDictionary dictionaryWithDictionary:dictionaryCopy];
    container = v5->_container;
    v5->_container = v6;

    v8 = objc_opt_new();
    factory = v5->_factory;
    v5->_factory = v8;
  }

  return v5;
}

- (BOOL)containsValueForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];

  return v6 != 0;
}

- (BOOL)decodeBoolForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    container2 = [(FMDJSONDecoder *)self container];
    v8 = [container2 objectForKey:keyCopy];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (double)decodeDoubleForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];
  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    container2 = [(FMDJSONDecoder *)self container];
    v9 = [container2 objectForKey:keyCopy];
    [v9 doubleValue];
    v7 = v10;
  }

  return v7;
}

- (float)decodeFloatForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];
  objc_opt_class();
  v7 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    container2 = [(FMDJSONDecoder *)self container];
    v9 = [container2 objectForKey:keyCopy];
    [v9 floatValue];
    v7 = v10;
  }

  return v7;
}

- (int64_t)decodeIntegerForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    container2 = [(FMDJSONDecoder *)self container];
    v8 = [container2 objectForKey:keyCopy];
    integerValue = [v8 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)decodeUnsignedIntegerForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    container2 = [(FMDJSONDecoder *)self container];
    v8 = [container2 objectForKey:keyCopy];
    unsignedIntegerValue = [v8 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)decodeNumberForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    container2 = [(FMDJSONDecoder *)self container];
    v8 = [container2 objectForKey:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decodeStringForKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONDecoder *)self container];
  v6 = [container objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    container2 = [(FMDJSONDecoder *)self container];
    v8 = [container2 objectForKey:keyCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key error:(id *)error
{
  keyCopy = key;
  v9 = sub_10017DAFC(keyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FACC();
  }

  if (objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class)
  {
    container = [(FMDJSONDecoder *)self container];
    v14 = [container objectForKey:keyCopy];

    if (objc_opt_isKindOfClass())
    {
      v15 = 0;
      goto LABEL_15;
    }

    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Object does not conform to given class.";
    v17 = &v24;
    v18 = &v23;
  }

  else
  {
    if ([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
    {
      v10 = objc_alloc_init(FMDJSONDecoder);
      container2 = [(FMDJSONDecoder *)self container];
      v12 = [container2 objectForKey:keyCopy];

      if (v12)
      {
        factory = [(FMDJSONDecoder *)self factory];
        v20 = 0;
        v14 = [(FMDJSONDecoder *)v10 processJSON:v12 forCodableType:class usingFactory:factory error:&v20];
        v15 = v20;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      goto LABEL_14;
    }

    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"Object does not conform to FMDCodable.";
    v17 = &v22;
    v18 = &v21;
  }

  v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v18 count:1];
  v15 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v10];
  v14 = 0;
LABEL_14:

LABEL_15:
  [FMDJSONDecoder checkAndSetOutError:error WithError:v15];

  return v14;
}

- (id)decodeObjectOfClass:(Class)class forKey:(id)key usingFactory:(id)factory error:(id *)error
{
  keyCopy = key;
  factoryCopy = factory;
  v12 = sub_10017DAFC(factoryCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    classCopy = class;
    v24 = 2112;
    v25 = keyCopy;
    v26 = 2112;
    v27 = factoryCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "decodeObjectOfClass:%@ forKey:%@ usingFactory:%@", buf, 0x20u);
  }

  if (objc_opt_class() == class || objc_opt_class() == class || objc_opt_class() == class)
  {
    container = [(FMDJSONDecoder *)self container];
    v16 = [(FMDJSONDecoder *)container objectForKey:keyCopy];
    v17 = 0;
  }

  else if ([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    container = objc_alloc_init(FMDJSONDecoder);
    container2 = [(FMDJSONDecoder *)self container];
    v15 = [container2 objectForKey:keyCopy];

    v19 = 0;
    v16 = [(FMDJSONDecoder *)container processJSON:v15 forCodableType:class usingFactory:factoryCopy error:&v19];
    v17 = v19;
  }

  else
  {
    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"Object does not conform to FMDCodable.";
    container = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v17 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:container];
    v16 = 0;
  }

  [FMDJSONDecoder checkAndSetOutError:error WithError:v17];

  return v16;
}

- (id)decodeObjectOfProtocols:(id)protocols forKey:(id)key error:(id *)error
{
  protocolsCopy = protocols;
  keyCopy = key;
  v10 = sub_10017DAFC(keyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FB34();
  }

  container = [(FMDJSONDecoder *)self container];
  v12 = [container objectForKey:keyCopy];

  if (v12)
  {
    v13 = objc_opt_class();
    factory = [(FMDJSONDecoder *)self factory];
    v21 = 0;
    v15 = [(FMDJSONDecoder *)self processJSON:v12 forCodableType:v13 usingFactory:factory error:&v21];
    v16 = v21;

    [FMDJSONDecoder checkAndSetOutError:error WithError:v16];
    v17 = [(FMDJSONDecoder *)self isValidObject:v15 usingProtocols:protocolsCopy];

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)decodeObjectUsingFactories:(id)factories forKey:(id)key error:(id *)error
{
  factoriesCopy = factories;
  keyCopy = key;
  v10 = sub_10017DAFC(keyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FB9C();
  }

  container = [(FMDJSONDecoder *)self container];
  v12 = [container objectForKey:keyCopy];

  v13 = &ADClientAddValueForScalarKey_ptr;
  p_vtable = FMDAccessorySerialNumbers.vtable;
  if (v12 == objc_opt_class() || v12 == objc_opt_class() || v12 == objc_opt_class())
  {
    v23 = v12;
    v24 = 0;
  }

  else if ([v12 conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    v15 = v12;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = factoriesCopy;
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      errorCopy = error;
      v19 = *v41;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v40 + 1) + 8 * i) classForObjectInfo:v15];
          if (v21)
          {
            v22 = v21;
            goto LABEL_22;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v22 = 0;
LABEL_22:
      error = errorCopy;
      v13 = &ADClientAddValueForScalarKey_ptr;
    }

    else
    {
      v22 = 0;
    }

    p_vtable = FMDAccessorySerialNumbers.vtable;
    v27 = [[FMDJSONDecoder alloc] initWithDictionary:v15];
    factory = [(FMDJSONDecoder *)self factory];
    [(FMDJSONDecoder *)v27 setFactory:factory];

    v39 = 0;
    v23 = [[v22 alloc] initWithFMDCoder:v27 error:&v39];
    v29 = v39;
    if (v29)
    {
      v38 = v29;
      v34 = +[NSMutableDictionary dictionary];
      v30 = v13[402];
      userInfo = [0 userInfo];
      [userInfo objectForKey:NSLocalizedFailureReasonErrorKey];
      v32 = v36 = v27;
      v35 = [v30 stringWithFormat:@"Key: %@ | Error: %@", keyCopy, v32];

      [v34 setObject:v35 forKey:NSLocalizedFailureReasonErrorKey];
      [v34 setObject:v38 forKey:NSUnderlyingErrorKey];
      domain = [0 domain];
      p_vtable = (FMDAccessorySerialNumbers + 24);
      v24 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [0 code], v34);

      v27 = v36;
      v29 = v38;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v44 = NSLocalizedFailureReasonErrorKey;
    v45 = @"Object does not conform to FMDCodable.";
    v26 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v24 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v26];

    v23 = 0;
  }

  [p_vtable + 337 checkAndSetOutError:error WithError:v24];

  return v23;
}

- (BOOL)isValidObject:(id)object usingProtocols:(id)protocols
{
  objectCopy = object;
  protocolsCopy = protocols;
  v8 = sub_10017DAFC(protocolsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FC04();
  }

  protocols = [(FMDJSONDecoder *)self protocols];
  if (protocols)
  {
    protocols2 = [(FMDJSONDecoder *)self protocols];
    v11 = [protocolsCopy setByAddingObjectsFromSet:protocols2];
  }

  else
  {
    v11 = protocolsCopy;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allObjects = [v11 allObjects];
  v13 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(allObjects);
        }

        if (![objectCopy conformsToProtocol:*(*(&v19 + 1) + 8 * i)])
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v14 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_16:

  return v17;
}

- (id)decodeCodableClass:(Class)class withJSONObject:(id)object usingFactory:(id)factory error:(id *)error
{
  objectCopy = object;
  factoryCopy = factory;
  v11 = sub_10017DAFC(factoryCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    classCopy = class;
    v22 = 2112;
    v23 = objectCopy;
    v24 = 2112;
    v25 = factoryCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "decodeCodableClass:%@ withJSONObject:%@ usingFactory:%@", buf, 0x20u);
  }

  if (objc_opt_isKindOfClass() & 1) != 0 && ((objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v12 = objectCopy;
    v13 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[FMDJSONDecoder alloc] initWithDictionary:objectCopy];
      [(FMDJSONDecoder *)v14 setFactory:factoryCopy];
      v17 = 0;
      v12 = [[class alloc] initWithFMDCoder:v14 error:&v17];
      v13 = v17;
    }

    else
    {
      v18 = NSLocalizedFailureReasonErrorKey;
      v19 = @"FMDCodable Class mismatch.";
      v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v13 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v15];

      v12 = 0;
    }
  }

  [FMDJSONDecoder checkAndSetOutError:error WithError:v13];

  return v12;
}

- (id)decodeCodableClass:(Class)class withJSONObject:(id)object usingObjectKeyType:(id)type error:(id *)error
{
  objectCopy = object;
  typeCopy = type;
  v11 = sub_10017DAFC(typeCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    classCopy = class;
    v26 = 2112;
    v27 = objectCopy;
    v28 = 2112;
    v29 = typeCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "decodeCodableClass:%@ withJSONObject:%@ usingObjectKeyType:%@", buf, 0x20u);
  }

  v12 = [[FMDJSONDecoder alloc] initWithDictionary:objectCopy];
  container = [(FMDJSONDecoder *)v12 container];
  allKeys = [container allKeys];
  v15 = [allKeys containsObject:typeCopy];

  if (v15)
  {
    v21 = 0;
    v16 = [[class alloc] initWithFMDCoder:v12 error:&v21];
    v17 = v21;
  }

  else
  {
    v22 = NSLocalizedFailureReasonErrorKey;
    typeCopy = [NSString stringWithFormat:@"Unsupported object class key - %@", typeCopy];
    v23 = typeCopy;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v19];

    v16 = 0;
  }

  [FMDJSONDecoder checkAndSetOutError:error WithError:v17];

  return v16;
}

- (id)processJSON:(id)n forCodableType:(Class)type usingFactory:(id)factory error:(id *)error
{
  nCopy = n;
  factoryCopy = factory;
  v12 = sub_10017DAFC(factoryCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = nCopy;
    v26 = 2112;
    typeCopy = type;
    v28 = 2112;
    v29 = factoryCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "processJSON:%@ forCodableType:%@ usingFactory:%@", buf, 0x20u);
  }

  v14 = sub_10017DAFC(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FC6C(self, v14);
  }

  if ([(objc_class *)type conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection])
  {
    v21 = 0;
    v15 = [(FMDJSONDecoder *)self decodeCollectionOfClass:type fromJSONObject:nCopy usingFactory:factoryCopy error:&v21];
    v16 = v21;
LABEL_9:
    v17 = v16;
    goto LABEL_11;
  }

  if ([(objc_class *)type conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    v20 = 0;
    v15 = [(FMDJSONDecoder *)self decodeCodableClass:type withJSONObject:nCopy usingFactory:factoryCopy error:&v20];
    v16 = v20;
    goto LABEL_9;
  }

  v22 = NSLocalizedFailureReasonErrorKey;
  v23 = @"Object does not conform to FMDCodable.";
  v18 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v17 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v18];

  v15 = 0;
LABEL_11:
  [FMDJSONDecoder checkAndSetOutError:error WithError:v17];

  return v15;
}

- (id)decodeCollectionOfClass:(Class)class usingFactory:(id)factory forKey:(id)key error:(id *)error
{
  factoryCopy = factory;
  keyCopy = key;
  v12 = sub_10017DAFC(keyCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    classCopy = class;
    v21 = 2112;
    v22 = factoryCopy;
    v23 = 2112;
    v24 = keyCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "decodeCollectionOfClass:%@ usingFactory:%@ forKey:%@", buf, 0x20u);
  }

  container = [(FMDJSONDecoder *)self container];
  v14 = [container objectForKey:keyCopy];

  if (v14)
  {
    v18 = 0;
    v15 = [(FMDJSONDecoder *)self decodeCollectionOfClass:class fromJSONObject:v14 usingFactory:factoryCopy error:&v18];
    v16 = v18;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  [FMDJSONDecoder checkAndSetOutError:error WithError:v16];

  return v15;
}

- (id)decodeCollectionOfClass:(Class)class fromJSONObject:(id)object usingFactory:(id)factory error:(id *)error
{
  objectCopy = object;
  factoryCopy = factory;
  v12 = sub_10017DAFC(factoryCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    classCopy = class;
    v28 = 2112;
    v29 = objectCopy;
    v30 = 2112;
    v31 = factoryCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "decodeCollectionOfClass:%@ fromJSONObject:%@ usingFactory:%@", buf, 0x20u);
  }

  if ([(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection])
  {
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = 0;
        v13 = objectCopy;
        v14 = [(FMDJSONDecoder *)self decodeArrayCollection:v13 usingFactory:factoryCopy error:&v21];
        v15 = v21;
LABEL_11:
        v16 = v15;
        goto LABEL_14;
      }
    }

    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = 0;
        v13 = objectCopy;
        v14 = [(FMDJSONDecoder *)self decodeDictionaryCollection:v13 usingFactory:factoryCopy error:&v20];
        v15 = v20;
        goto LABEL_11;
      }
    }

    v24 = NSLocalizedFailureReasonErrorKey;
    v13 = NSStringFromClass(class);
    v17 = [NSString stringWithFormat:@"Object Type mismatch: %@", v13];
    v25 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v16 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v18];
  }

  else
  {
    v22 = NSLocalizedFailureReasonErrorKey;
    v23 = @"Object does not conform to FMDCodableCollection.";
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v13];
  }

  v14 = 0;
LABEL_14:

  [FMDJSONDecoder checkAndSetOutError:error WithError:v16];

  return v14;
}

- (id)decodeArrayCollection:(id)collection usingFactory:(id)factory error:(id *)error
{
  errorCopy = error;
  collectionCopy = collection;
  factoryCopy = factory;
  v9 = sub_10017DAFC(factoryCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022FD30();
  }

  v10 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = collectionCopy;
  p_vtable = FMDAccessorySerialNumbers.vtable;
  v13 = &ADClientAddValueForScalarKey_ptr;
  v32 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v32)
  {
    v31 = *v37;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v37 != v31)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v36 + 1) + 8 * v14);
      v16 = objc_alloc_init((p_vtable + 337));
      [v16 setFactory:factoryCopy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (![(FMDJSONDecoder *)self collectionObjectClass])
      {
        v27 = objc_opt_class();
        v33 = 0;
        v18 = [v16 processJSON:v15 forCodableType:v27 usingFactory:factoryCopy error:&v33];
        v19 = v33;
LABEL_14:
        v26 = v19;
        if (v26)
        {
LABEL_18:

          v28 = 0;
          goto LABEL_19;
        }

        goto LABEL_15;
      }

      collectionObjectClass = [(FMDJSONDecoder *)self collectionObjectClass];
      [(FMDJSONDecoder *)self collectionObjectKeyType];
      v21 = factoryCopy;
      v22 = p_vtable;
      v23 = v10;
      v25 = v24 = v11;
      v34 = 0;
      v18 = [(FMDJSONDecoder *)self decodeCodableClass:collectionObjectClass withJSONObject:v15 usingObjectKeyType:v25 error:&v34];
      v26 = v34;

      v11 = v24;
      v10 = v23;
      p_vtable = v22;
      factoryCopy = v21;
      v13 = &ADClientAddValueForScalarKey_ptr;
      if (v26)
      {
        goto LABEL_18;
      }

LABEL_15:
      [v10 addObject:{v18, errorCopy}];

      if (v32 == ++v14)
      {
        v32 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v32)
        {
          goto LABEL_5;
        }

        goto LABEL_17;
      }
    }

    v17 = objc_opt_class();
    v35 = 0;
    v18 = [v16 processJSON:v15 forCodableType:v17 usingFactory:factoryCopy error:&v35];
    v19 = v35;
    goto LABEL_14;
  }

LABEL_17:

  v28 = [v13[510] arrayWithArray:v10];
  v26 = 0;
LABEL_19:
  [p_vtable + 337 checkAndSetOutError:errorCopy WithError:{v26, errorCopy}];

  return v28;
}

- (id)decodeDictionaryCollection:(id)collection usingFactory:(id)factory error:(id *)error
{
  collectionCopy = collection;
  factoryCopy = factory;
  v10 = sub_10017DAFC(factoryCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v77 = collectionCopy;
    v78 = 2112;
    v79 = factoryCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "decodeDictionaryCollection:%@ usingFactory:%@", buf, 0x16u);
  }

  p_vtable = (FMDAccessorySerialNumbers + 24);
  if ([collectionCopy count])
  {
    v12 = [factoryCopy classForObjectInfo:collectionCopy];
    if (v12)
    {
      v72 = 0;
      v13 = [(FMDJSONDecoder *)self decodeCodableClass:v12 withJSONObject:collectionCopy usingFactory:factoryCopy error:&v72];
      v14 = v72;
      goto LABEL_47;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v15 = collectionCopy;
    v16 = [v15 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v69;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v69 != v18)
          {
            objc_enumerationMutation(v15);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v68 objects:v75 count:16];
      }

      while (v17);

      v20 = +[NSMutableDictionary dictionary];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v15;
      p_vtable = FMDAccessorySerialNumbers.vtable;
      v47 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v47)
      {
        v46 = *v65;
LABEL_17:
        v21 = 0;
        while (1)
        {
          v22 = v20;
          if (*v65 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v64 + 1) + 8 * v21);
          v24 = objc_alloc_init((p_vtable + 337));
          v51 = v23;
          v25 = [obj objectForKey:v23];
          objc_opt_class();
          v53 = v25;
          v54 = v24;
          v52 = v21;
          if (objc_opt_isKindOfClass())
          {
            v26 = objc_opt_class();
            v63 = 0;
            v27 = [v24 processJSON:v25 forCodableType:v26 usingFactory:factoryCopy error:&v63];
            v28 = v63;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = v25;
              v30 = [factoryCopy classForObjectInfo:v29];
              v20 = v22;
              if (v30)
              {
                v62 = 0;
                v49 = [v54 processJSON:v29 forCodableType:v30 usingFactory:factoryCopy error:&v62];
                v14 = v62;
              }

              else if ([(FMDJSONDecoder *)self collectionObjectClass])
              {
                collectionObjectClass = [(FMDJSONDecoder *)self collectionObjectClass];
                collectionObjectKeyType = [(FMDJSONDecoder *)self collectionObjectKeyType];
                v61 = 0;
                v49 = [(FMDJSONDecoder *)self decodeCodableClass:collectionObjectClass withJSONObject:v29 usingObjectKeyType:collectionObjectKeyType error:&v61];
                v14 = v61;
              }

              else
              {
                v49 = +[NSMutableDictionary dictionary];
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v48 = v29;
                v45 = [v48 countByEnumeratingWithState:&v57 objects:v73 count:16];
                if (v45)
                {
                  v42 = v22;
                  v43 = *v58;
                  v34 = v54;
                  v44 = v29;
                  while (2)
                  {
                    for (j = 0; j != v45; j = j + 1)
                    {
                      if (*v58 != v43)
                      {
                        objc_enumerationMutation(v48);
                      }

                      v36 = *(*(&v57 + 1) + 8 * j);
                      v37 = [v48 objectForKey:v36];
                      v38 = [v48 objectForKey:v36];
                      v39 = objc_opt_class();
                      v56 = 0;
                      v40 = [v34 processJSON:v37 forCodableType:v39 usingFactory:factoryCopy error:&v56];
                      v14 = v56;

                      if (v14)
                      {

                        p_vtable = (FMDAccessorySerialNumbers + 24);
                        v20 = v42;
                        v29 = v44;
                        goto LABEL_41;
                      }

                      [v49 setObject:v40 forKey:v36];

                      v29 = v44;
                      v34 = v54;
                    }

                    v45 = [v48 countByEnumeratingWithState:&v57 objects:v73 count:16];
                    if (v45)
                    {
                      continue;
                    }

                    break;
                  }

                  v14 = 0;
                  p_vtable = (FMDAccessorySerialNumbers + 24);
                  v20 = v42;
                }

                else
                {
                  v14 = 0;
                }

LABEL_41:
              }

              v27 = v49;
              if (v14)
              {
LABEL_50:

                v13 = 0;
                goto LABEL_51;
              }

              goto LABEL_43;
            }

            v31 = objc_opt_class();
            v55 = 0;
            v27 = [v24 processJSON:v25 forCodableType:v31 usingFactory:factoryCopy error:&v55];
            v28 = v55;
          }

          v14 = v28;
          v20 = v22;
          if (v14)
          {
            goto LABEL_50;
          }

LABEL_43:
          [v20 setObject:v27 forKey:v51];

          v21 = v52 + 1;
          if ((v52 + 1) == v47)
          {
            v47 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
            if (v47)
            {
              goto LABEL_17;
            }

            break;
          }
        }
      }

      v13 = [NSDictionary dictionaryWithDictionary:v20];
      v14 = 0;
LABEL_51:
    }

    else
    {
LABEL_46:

      v13 = 0;
      v14 = 0;
      p_vtable = FMDAccessorySerialNumbers.vtable;
    }
  }

  else
  {
    v13 = collectionCopy;
    v14 = 0;
  }

LABEL_47:
  [p_vtable + 337 checkAndSetOutError:error WithError:v14];

  return v13;
}

+ (id)decodeObjectOfClass:(Class)class fromData:(id)data usingFactory:(id)factory error:(id *)error
{
  dataCopy = data;
  factoryCopy = factory;
  if (!dataCopy)
  {
    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Unsupported nil data found";
    v16 = &v24;
    v17 = &v23;
LABEL_7:
    v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:1];
    v12 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v11];
    goto LABEL_8;
  }

  if (![(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___FMDCodable])
  {
    v21 = NSLocalizedFailureReasonErrorKey;
    v22 = @"Unsupported object class.";
    v16 = &v22;
    v17 = &v21;
    goto LABEL_7;
  }

  v20 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:dataCopy options:4 error:&v20];
  v12 = v20;
  if (!v12)
  {
    v13 = objc_alloc_init(FMDJSONDecoder);
    [(FMDJSONDecoder *)v13 setFactory:factoryCopy];
    v19 = 0;
    v14 = [(FMDJSONDecoder *)v13 processJSON:v11 forCodableType:class usingFactory:factoryCopy error:&v19];
    v15 = v19;

    goto LABEL_9;
  }

LABEL_8:
  v15 = v12;
  v14 = 0;
LABEL_9:

  [FMDJSONDecoder checkAndSetOutError:error WithError:v15];

  return v14;
}

+ (id)decodeObjectOfClass:(Class)class fromData:(id)data error:(id *)error
{
  dataCopy = data;
  v8 = objc_opt_new();
  v9 = [FMDJSONDecoder decodeObjectOfClass:class fromData:dataCopy usingFactory:v8 error:error];

  return v9;
}

+ (id)decodeCollectionClass:(Class)class fromData:(id)data usingObjectKeyType:(id)type forObjectClass:(Class)objectClass error:(id *)error
{
  dataCopy = data;
  typeCopy = type;
  if (![(objc_class *)class conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection])
  {
    v27 = NSLocalizedFailureReasonErrorKey;
    v28 = @"Unsupported collection class.";
    v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v14 = [NSError errorWithDomain:@"FMJSONDecoderErrorDomain" code:0 userInfo:v13];
    goto LABEL_6;
  }

  v26 = 0;
  v13 = [[FMDJSONDecoder alloc] initWithData:dataCopy usingCollectionObjectKeyType:typeCopy andCollectionObjectClass:objectClass error:&v26];
  v14 = v26;
  if (v14)
  {
LABEL_6:
    v20 = v14;
    v21 = 0;
    goto LABEL_7;
  }

  container = [(FMDJSONDecoder *)v13 container];

  if (container)
  {
    container2 = [(FMDJSONDecoder *)v13 container];
    factory = [(FMDJSONDecoder *)v13 factory];
    v25 = 0;
    v18 = &v25;
    v19 = &v25;
LABEL_12:
    v21 = [(FMDJSONDecoder *)v13 processJSON:container2 forCodableType:class usingFactory:factory error:v19, v24, v25];
    v20 = *v18;

    goto LABEL_7;
  }

  stack = [(FMDJSONDecoder *)v13 stack];

  if (stack)
  {
    container2 = [(FMDJSONDecoder *)v13 stack];
    factory = [(FMDJSONDecoder *)v13 factory];
    v24 = 0;
    v18 = &v24;
    v19 = &v24;
    goto LABEL_12;
  }

  v21 = 0;
  v20 = 0;
LABEL_7:

  [FMDJSONDecoder checkAndSetOutError:error WithError:v20];

  return v21;
}

+ (BOOL)checkAndSetOutError:(id *)error WithError:(id)withError
{
  withErrorCopy = withError;
  v6 = withErrorCopy;
  if (withErrorCopy)
  {
    v7 = sub_10017DAFC(withErrorCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10022FD98(v6, v7);
    }

    if (error)
    {
      v8 = v6;
      *error = v6;
    }
  }

  return v6 == 0;
}

@end
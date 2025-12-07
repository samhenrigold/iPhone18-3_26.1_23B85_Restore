@interface FMDJSONEncoder
+ (BOOL)checkAndSetOutError:(id *)error WithError:(id)withError;
+ (id)encodedDataWithRootObject:(id)object error:(id *)error;
+ (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error;
+ (unint64_t)convertToNSJSONWritingOptions:(unint64_t)options;
- (BOOL)encodeCollectionObject:(id)object error:(id *)error;
- (BOOL)encodeObject:(id)object forKey:(id)key error:(id *)error;
- (BOOL)encodeObjects:(id)objects forKey:(id)key error:(id *)error;
- (FMDJSONEncoder)init;
- (FMDJSONEncoder)initWithRootObject:(id)object error:(id *)error;
- (id)encodeArrayCollectionObject:(id)object error:(id *)error;
- (id)encodeStringKeysDictionaryCollectionObject:(id)object error:(id *)error;
- (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error;
- (id)processObject:(id)object error:(id *)error;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeInteger:(int64_t)integer forKey:(id)key;
- (void)encodeNumber:(id)number forKey:(id)key;
- (void)encodeObjectTypeUsingClass:(Class)class;
- (void)encodeString:(id)string forKey:(id)key;
- (void)encodeUnsignedInteger:(unint64_t)integer forKey:(id)key;
@end

@implementation FMDJSONEncoder

- (FMDJSONEncoder)init
{
  v8.receiver = self;
  v8.super_class = FMDJSONEncoder;
  v2 = [(FMDJSONEncoder *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    container = v2->_container;
    v2->_container = v3;

    v5 = objc_alloc_init(NSMutableArray);
    stack = v2->_stack;
    v2->_stack = v5;
  }

  return v2;
}

- (FMDJSONEncoder)initWithRootObject:(id)object error:(id *)error
{
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = FMDJSONEncoder;
  v7 = [(FMDJSONEncoder *)&v17 init];
  if (v7 && (v8 = objc_alloc_init(NSMutableDictionary), container = v7->_container, v7->_container = v8, container, v10 = objc_alloc_init(NSMutableArray), stack = v7->_stack, v7->_stack = v10, stack, v16 = 0, v12 = [(FMDJSONEncoder *)v7 processObject:objectCopy error:&v16], (v13 = v16) != 0))
  {
    if (error)
    {
      v13 = v13;
      *error = v13;
    }

    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  return v14;
}

- (BOOL)encodeObject:(id)object forKey:(id)key error:(id *)error
{
  objectCopy = object;
  keyCopy = key;
  v10 = sub_10017DAFC(keyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A688();
  }

  p_info = &OBJC_METACLASS___FMDXPCManager.info;
  if (objectCopy)
  {
    v13 = +[NSNull null];

    if (v13 == objectCopy)
    {
      container = [(FMDJSONEncoder *)self container];
      [(FMDJSONEncoder *)container setObject:objectCopy forKey:keyCopy];
    }

    else
    {
      v31 = 0;
      container = [[FMDJSONEncoder alloc] initWithRootObject:objectCopy error:&v31];
      v15 = v31;
      if (v15)
      {
        v16 = v15;
        userInfo = [v15 userInfo];
        container2 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

        keyCopy = [NSString stringWithFormat:@"Failed Key: %@", keyCopy];
        [container2 setObject:keyCopy forKey:NSLocalizedRecoverySuggestionErrorKey];

        userInfo2 = [v16 userInfo];
        if (userInfo2)
        {
          v21 = userInfo2;
          userInfo3 = [v16 userInfo];
          v23 = [userInfo3 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

          if (v23)
          {
            userInfo4 = [v16 userInfo];
            v25 = [userInfo4 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
            [container2 setObject:v25 forKey:NSLocalizedFailureReasonErrorKey];
          }
        }

        domain = [v16 domain];
        v27 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v16 code], container2);

        p_info = (&OBJC_METACLASS___FMDXPCManager + 32);
        goto LABEL_19;
      }

      if ([(FMDJSONEncoder *)container rootType]== 1)
      {
        container2 = [(FMDJSONEncoder *)self container];
        stack = [(FMDJSONEncoder *)container stack];
LABEL_18:
        domain = stack;
        [container2 setObject:stack forKey:keyCopy];
        v27 = 0;
LABEL_19:

        goto LABEL_20;
      }

      if (![(FMDJSONEncoder *)container rootType])
      {
        container2 = [(FMDJSONEncoder *)self container];
        stack = [(FMDJSONEncoder *)container container];
        goto LABEL_18;
      }
    }
  }

  else
  {
    container = sub_10017DAFC(v11);
    if (os_log_type_enabled(&container->super, OS_LOG_TYPE_DEBUG))
    {
      sub_10022A6FC();
    }
  }

  v27 = 0;
LABEL_20:

  v29 = [p_info + 411 checkAndSetOutError:error WithError:v27];
  return v29;
}

- (BOOL)encodeObjects:(id)objects forKey:(id)key error:(id *)error
{
  objectsCopy = objects;
  keyCopy = key;
  v9 = sub_10017DAFC(keyCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A76C();
  }

  v10 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = objectsCopy;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        v17 = [FMDJSONEncoder alloc];
        v36 = 0;
        v18 = [(FMDJSONEncoder *)v17 initWithRootObject:v16 error:&v36];
        v19 = v36;
        if (v19)
        {
          v23 = v19;

          userInfo = [v23 userInfo];
          container2 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

          keyCopy = [NSString stringWithFormat:@"Failed Key: %@", keyCopy];
          [container2 setObject:keyCopy forKey:NSLocalizedRecoverySuggestionErrorKey];

          userInfo2 = [v23 userInfo];
          if (userInfo2)
          {
            v27 = userInfo2;
            userInfo3 = [v23 userInfo];
            v29 = [userInfo3 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];

            if (v29)
            {
              userInfo4 = [v23 userInfo];
              v31 = [userInfo4 objectForKeyedSubscript:NSLocalizedFailureReasonErrorKey];
              [container2 setObject:v31 forKey:NSLocalizedFailureReasonErrorKey];
            }
          }

          domain = [v23 domain];
          v22 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v23 code], container2);

          goto LABEL_16;
        }

        container = [(FMDJSONEncoder *)v18 container];
        [v10 addObject:container];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  container2 = [(FMDJSONEncoder *)self container];
  [container2 setObject:v10 forKey:keyCopy];
  v22 = 0;
LABEL_16:

  v33 = [FMDJSONEncoder checkAndSetOutError:error WithError:v22];
  return v33;
}

- (void)encodeString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  if (stringCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      container = [(FMDJSONEncoder *)self container];
      [container setObject:stringCopy forKey:keyCopy];
    }
  }
}

- (void)encodeNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  if (numberCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      container = [(FMDJSONEncoder *)self container];
      [container setObject:numberCopy forKey:keyCopy];
    }
  }
}

- (void)encodeInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithInteger:integer];
  [container setObject:v7 forKey:keyCopy];
}

- (void)encodeUnsignedInteger:(unint64_t)integer forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithUnsignedInteger:integer];
  [container setObject:v7 forKey:keyCopy];
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithBool:boolCopy];
  [container setObject:v7 forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  v7 = [NSNumber numberWithDouble:double];
  [container setObject:v7 forKey:keyCopy];
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  container = [(FMDJSONEncoder *)self container];
  *&v7 = float;
  v8 = [NSNumber numberWithFloat:v7];
  [container setObject:v8 forKey:keyCopy];
}

- (void)encodeObjectTypeUsingClass:(Class)class
{
  container = [(FMDJSONEncoder *)self container];
  objectType = [(objc_class *)class objectType];
  objectTypeKey = [(objc_class *)class objectTypeKey];
  [container setObject:objectType forKey:objectTypeKey];
}

- (id)processObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = sub_10017DAFC(objectCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = objectCopy;
    v27 = 2048;
    rootType = [(FMDJSONEncoder *)self rootType];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "processObject:%@ root-type:%lu", buf, 0x16u);
  }

  v9 = sub_10017DAFC(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A7E0(self, v9);
  }

  if (([objectCopy conformsToProtocol:&OBJC_PROTOCOL___FMDCodable] & 1) == 0)
  {
    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = @"Object not supported by encoder";
    v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [NSError errorWithDomain:@"FMJSONEncoderError" code:-1 userInfo:v15];

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v10 = [objectCopy conformsToProtocol:&OBJC_PROTOCOL___FMDCodableCollection];
  v11 = v10;
  v12 = sub_10017DAFC(v10);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    if (v13)
    {
      sub_10022A8E4();
    }

    v22 = 0;
    v14 = &v22;
    [(FMDJSONEncoder *)self encodeCollectionObject:objectCopy error:&v22];
  }

  else
  {
    if (v13)
    {
      sub_10022A8A4();
    }

    [(FMDJSONEncoder *)self setRootType:0];
    v21 = 0;
    v14 = &v21;
    [objectCopy encodeWithFMDCoder:self error:&v21];
  }

  v17 = *v14;
  if (v17)
  {
    v16 = v17;
    goto LABEL_16;
  }

  if ([(FMDJSONEncoder *)self rootType])
  {
    if ([(FMDJSONEncoder *)self rootType]!= 1)
    {
      v18 = 0;
      goto LABEL_26;
    }

    stack = [(FMDJSONEncoder *)self stack];
  }

  else
  {
    stack = [(FMDJSONEncoder *)self container];
  }

  v18 = stack;
LABEL_26:
  v16 = 0;
LABEL_17:
  [FMDJSONEncoder checkAndSetOutError:error WithError:v16];

  return v18;
}

- (BOOL)encodeCollectionObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = sub_10017DAFC(objectCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A924();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FMDJSONEncoder *)self setRootType:1];
    v24 = 0;
    v8 = [(FMDJSONEncoder *)self encodeArrayCollectionObject:objectCopy error:&v24];
    v9 = v24;
    if (!v9)
    {
      stack = [(FMDJSONEncoder *)self stack];
      [stack addObjectsFromArray:v8];
LABEL_6:
    }

LABEL_7:

LABEL_21:
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(FMDJSONEncoder *)self setRootType:0];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = objectCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
LABEL_11:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v13)
          {
            goto LABEL_11;
          }

          v19 = 0;
          v8 = [(FMDJSONEncoder *)self encodeStringKeysDictionaryCollectionObject:v11 error:&v19];
          v9 = v19;
          if (!v9)
          {
            stack = [(FMDJSONEncoder *)self container];
            [stack addEntriesFromDictionary:v8];
            goto LABEL_6;
          }

          goto LABEL_7;
        }
      }
    }

    [(FMDJSONEncoder *)self encodeObjectTypeUsingClass:objc_opt_class()];
    v18 = 0;
    [v11 encodeWithFMDCoder:self error:&v18];
    v9 = v18;
    goto LABEL_21;
  }

  v9 = 0;
LABEL_22:
  v16 = [FMDJSONEncoder checkAndSetOutError:error WithError:v9];

  return v16;
}

- (id)encodeArrayCollectionObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = sub_10017DAFC(objectCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A994();
  }

  v7 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = objectCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    v19 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  errorCopy = error;
  v11 = *v24;
LABEL_5:
  v12 = 0;
  while (1)
  {
    if (*v24 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }
    }

    [v7 addObject:{v13, errorCopy}];
LABEL_12:
    if (v10 == ++v12)
    {
      v18 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v10 = v18;
      if (!v18)
      {
        v19 = 0;
        goto LABEL_22;
      }

      goto LABEL_5;
    }
  }

  v14 = objc_alloc_init(FMDJSONEncoder);
  v22 = 0;
  v15 = [(FMDJSONEncoder *)v14 processObject:v13 error:&v22];
  v16 = v22;
  if (!v16)
  {
    if ([(FMDJSONEncoder *)v14 rootType]== 1)
    {
      [(FMDJSONEncoder *)v14 stack];
    }

    else
    {
      [(FMDJSONEncoder *)v14 container];
    }
    v17 = ;
    [v7 addObject:{v17, errorCopy}];

    goto LABEL_12;
  }

  v19 = v16;

LABEL_22:
  error = errorCopy;
LABEL_24:

  [FMDJSONEncoder checkAndSetOutError:error WithError:v19];

  return v7;
}

- (id)encodeStringKeysDictionaryCollectionObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = sub_10017DAFC(objectCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = objectCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "encodeStringKeysDictionaryCollectionObject:%@", buf, 0xCu);
  }

  v7 = +[NSMutableDictionary dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = objectCopy;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v9)
  {
    v26 = 0;
    goto LABEL_25;
  }

  v10 = v9;
  errorCopy = error;
  v11 = *v34;
  v12 = &ADClientAddValueForScalarKey_ptr;
  v13 = &ADClientAddValueForScalarKey_ptr;
LABEL_5:
  v14 = 0;
  v31 = v10;
  while (1)
  {
    if (*v34 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v15 = *(*(&v33 + 1) + 8 * v14);
    v16 = [v8 objectForKey:v15];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v18 = [v8 objectForKey:v15];
    if (isKindOfClass)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    v18 = [v8 objectForKey:v15];
    if (v19)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    v20 = objc_opt_isKindOfClass();

    if ((v20 & 1) == 0)
    {
      break;
    }

    v18 = [v8 objectForKey:v15];
LABEL_12:
    [v7 setObject:v18 forKey:v15];
LABEL_13:

    if (v10 == ++v14)
    {
      v28 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      v10 = v28;
      if (!v28)
      {
        v26 = 0;
        goto LABEL_23;
      }

      goto LABEL_5;
    }
  }

  v21 = v11;
  v22 = v12;
  v23 = v13;
  v18 = objc_alloc_init(FMDJSONEncoder);
  v24 = [v8 objectForKey:v15];
  v32 = 0;
  v25 = [(FMDJSONEncoder *)v18 processObject:v24 error:&v32];
  v26 = v32;

  if (!v26)
  {
    if ([(FMDJSONEncoder *)v18 rootType]== 1)
    {
      [(FMDJSONEncoder *)v18 stack];
    }

    else
    {
      [(FMDJSONEncoder *)v18 container];
    }
    v27 = ;
    v13 = v23;
    [v7 setObject:v27 forKey:v15];

    v12 = v22;
    v11 = v21;
    v10 = v31;
    goto LABEL_13;
  }

LABEL_23:
  error = errorCopy;
LABEL_25:

  [FMDJSONEncoder checkAndSetOutError:error WithError:v26];

  return v7;
}

- (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error
{
  objectCopy = object;
  if (objectCopy)
  {
    v16[0] = 0;
    v9 = [(FMDJSONEncoder *)self processObject:objectCopy error:v16];
    v10 = v16[0];
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 == 0;
    }

    if (!v11)
    {
      v15 = 0;
      v12 = +[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", v9, [objc_opt_class() convertToNSJSONWritingOptions:options], &v15);
      v13 = v15;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"object is nil";
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v10 = [NSError errorWithDomain:@"FMJSONEncoderError" code:-1 userInfo:v9];
  }

  v13 = v10;
  v12 = 0;
LABEL_9:

  [FMDJSONEncoder checkAndSetOutError:error WithError:v13];

  return v12;
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
      sub_10022AA04();
    }

    if (error)
    {
      v8 = v6;
      *error = v6;
    }
  }

  return v6 == 0;
}

+ (unint64_t)convertToNSJSONWritingOptions:(unint64_t)options
{
  if (options - 1 >= 3)
  {
    return 0;
  }

  else
  {
    return options;
  }
}

+ (id)encodedDataWithRootObject:(id)object options:(unint64_t)options error:(id *)error
{
  objectCopy = object;
  v8 = objc_alloc_init(FMDJSONEncoder);
  v9 = sub_100002880(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = objectCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ start encoding of object: %@", buf, 0x16u);
  }

  v13 = 0;
  v10 = [(FMDJSONEncoder *)v8 encodedDataWithRootObject:objectCopy options:options error:&v13];
  v11 = v13;
  [FMDJSONEncoder checkAndSetOutError:error WithError:v11];

  return v10;
}

+ (id)encodedDataWithRootObject:(id)object error:(id *)error
{
  objectCopy = object;
  v6 = objc_alloc_init(FMDJSONEncoder);
  v7 = sub_100002880(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = objectCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ start encoding of object: %@", buf, 0x16u);
  }

  v11 = 0;
  v8 = [(FMDJSONEncoder *)v6 encodedDataWithRootObject:objectCopy options:3 error:&v11];
  v9 = v11;
  [FMDJSONEncoder checkAndSetOutError:error WithError:v9];

  return v8;
}

@end
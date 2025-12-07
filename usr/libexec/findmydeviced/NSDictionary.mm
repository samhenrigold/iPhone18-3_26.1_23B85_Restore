@interface NSDictionary
- (BOOL)BOOLForCaseInsensitiveStringKey:(id)key;
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSDictionary)initWithFMDCoder:(id)coder error:(id *)error;
- (id)flattenedArrayFromObject:(id)object parentIndices:(id)indices;
- (id)objectForCaseInsensitiveStringKey:(id)key;
- (id)stringForCaseInsensitiveStringKey:(id)key;
@end

@implementation NSDictionary

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v7 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v18 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [NSString stringWithFormat:@"FM.key.%ld", v9];
        v20 = 0;
        [coderCopy encodeObject:v11 forKey:v12 error:&v20];
        v13 = v20;

        v14 = [(NSDictionary *)selfCopy objectForKey:v11];
        v15 = [NSString stringWithFormat:@"FM.object.%ld", v9];
        v19 = v13;
        [coderCopy encodeObject:v14 forKey:v15 error:&v19];
        v16 = v19;

        ++v9;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return 1;
}

- (NSDictionary)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v32 = +[NSMutableDictionary dictionary];
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [NSSet setWithObject:&OBJC_PROTOCOL___FMDCodable];
    v8 = [NSString stringWithFormat:@"FM.key.%ld", v5];
    v34 = v6;
    v9 = [coderCopy decodeObjectOfProtocols:v7 forKey:v8 error:&v34];
    v10 = v34;

    if (v10)
    {
      userInfo = [v10 userInfo];
      v16 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

      v39 = NSLocalizedFailureReasonErrorKey;
      v17 = [NSString stringWithFormat:@"Unexpected object nil for key FM.key.%lu", v5];
      v40 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v19 = [NSError errorWithDomain:@"FMDictionaryError" code:-1 userInfo:v18];
      [v16 setObject:v19 forKeyedSubscript:NSUnderlyingErrorKey];

      domain = [v10 domain];
      v21 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v10 code], v16);

      goto LABEL_11;
    }

    if (!v9)
    {
      v21 = 0;
      goto LABEL_12;
    }

    v12 = [NSSet setWithObject:&OBJC_PROTOCOL___FMDCodable];
    v13 = [NSString stringWithFormat:@"FM.object.%ld", v5];
    v33 = 0;
    v14 = [coderCopy decodeObjectOfProtocols:v12 forKey:v13 error:&v33];
    v6 = v33;

    if (!v14)
    {
      break;
    }

    [v32 setObject:v14 forKey:v9];

    ++v5;
  }

  if (v6)
  {
    userInfo2 = [v6 userInfo];
    v16 = [NSMutableDictionary dictionaryWithDictionary:userInfo2];

    v37 = NSLocalizedFailureReasonErrorKey;
    v23 = [NSString stringWithFormat:@"Unexpected object nil for key FM.object.%lu", v5];
    v38 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v25 = [NSError errorWithDomain:@"FMDictionaryError" code:-1 userInfo:v24];
    [v16 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];

    domain = [v6 domain];
    v21 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [v6 code], v16);
  }

  else
  {
    v35 = NSLocalizedFailureReasonErrorKey;
    v16 = [NSString stringWithFormat:@"Unexpected object nil for key FM.object.%lu", v5];
    v36 = v16;
    domain = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v21 = [NSError errorWithDomain:@"FMDictionaryError" code:-1 userInfo:domain];
  }

LABEL_11:

LABEL_12:
  if (v21)
  {
    v26 = sub_10017DAFC(v11);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100227D3C(v21, v26);
    }

    if (error)
    {
      v27 = v21;
      *error = v21;
    }
  }

  v28 = [(NSDictionary *)self initWithDictionary:v32];

  return v28;
}

- (id)stringForCaseInsensitiveStringKey:(id)key
{
  v3 = [(NSDictionary *)self objectForCaseInsensitiveStringKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)BOOLForCaseInsensitiveStringKey:(id)key
{
  v3 = [(NSDictionary *)self objectForCaseInsensitiveStringKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)objectForCaseInsensitiveStringKey:(id)key
{
  keyCopy = key;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v6 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![v9 compare:keyCopy options:{1, v11}])
        {
          v6 = [(NSDictionary *)selfCopy objectForKeyedSubscript:v9];
          goto LABEL_11;
        }
      }

      v6 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)flattenedArrayFromObject:(id)object parentIndices:(id)indices
{
  objectCopy = object;
  indicesCopy = indices;
  v8 = indicesCopy;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000AAD4;
  v28 = sub_100002B34;
  v9 = &__NSArray0__struct;
  if (indicesCopy)
  {
    v9 = indicesCopy;
  }

  v29 = v9;
  v10 = +[NSMutableArray array];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objectCopy;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10019BBD8;
    v22[3] = &unk_1002D0488;
    v23[3] = v11;
    v23[4] = v12;
    v23[0] = v10;
    v23[1] = self;
    v23[2] = &v24;
    [v13 enumerateKeysAndObjectsUsingBlock:v22];
    v14 = v23;
LABEL_7:
    objectCopy = *v14;
    v17 = objectCopy;
    goto LABEL_9;
  }

  if (objc_opt_isKindOfClass())
  {
    v15 = objectCopy;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10019BD10;
    v20[3] = &unk_1002D04B0;
    v21[2] = &v24;
    v21[0] = v10;
    v21[1] = self;
    [v15 enumerateObjectsUsingBlock:v20];
    v14 = v21;
    goto LABEL_7;
  }

  v17 = [v25[5] componentsJoinedByString:@"_"];
  objectCopy = [NSString stringWithFormat:@"%@_%@", v17, objectCopy];
  [v10 addObject:objectCopy];
LABEL_9:

  v18 = [v10 sortedArrayUsingSelector:"compare:"];

  _Block_object_dispose(&v24, 8);

  return v18;
}

@end
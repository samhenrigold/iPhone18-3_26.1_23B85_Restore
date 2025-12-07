@interface NSArray
+ (NSArray)arrayWithXPCArray:(id)array;
- (NSArray)initWithXPCArray:(id)array;
- (id)_convertObjectToNSData:(id)data;
- (id)xpcArrayFromArray;
- (id)xpcSafeArrayFromArray;
@end

@implementation NSArray

+ (NSArray)arrayWithXPCArray:(id)array
{
  arrayCopy = array;
  v4 = [[NSArray alloc] initWithXPCArray:arrayCopy];

  return v4;
}

- (NSArray)initWithXPCArray:(id)array
{
  arrayCopy = array;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = sub_A760;
  v17[3] = sub_A770;
  v18 = +[NSMutableArray array];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_A778;
  v13 = &unk_18908;
  v15 = &v16;
  selfCopy = self;
  v14 = selfCopy;
  v6 = xpc_array_apply(arrayCopy, &v10);
  if (v6)
  {
    v7 = defaultLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_C580(v17, v7);
    }

    selfCopy = [(NSArray *)selfCopy initWithArray:*(v17[0] + 40), v10, v11, v12, v13];
    v8 = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

- (id)xpcArrayFromArray
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_AB40;
  v6[3] = &unk_18930;
  v3 = xpc_array_create(0, 0);
  v7 = v3;
  v8 = &v9;
  [(NSArray *)self enumerateObjectsUsingBlock:v6];
  if (v10[3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)xpcSafeArrayFromArray
{
  if (self)
  {
    v26 = objc_alloc_init(NSMutableArray);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = self;
    v3 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (!v3)
    {
      goto LABEL_32;
    }

    v4 = v3;
    v5 = *v34;
    v6 = &BYSetupAssistantNeedsToRun_ptr;
    v24 = *v34;
    while (1)
    {
      v7 = 0;
      v25 = v4;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v7;
          v9 = v8;
          v10 = objc_alloc_init(NSMutableDictionary);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v30;
            do
            {
              v15 = 0;
              do
              {
                if (*v30 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v29 + 1) + 8 * v15);
                v17 = [v11 objectForKeyedSubscript:v16];
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  [v10 setObject:v17 forKeyedSubscript:v16];
                }

                else
                {
                  v18 = v6;
                  if (v17)
                  {
                    [(NSArray *)obj _convertObjectToNSData:v17];
                  }

                  else
                  {
                    +[NSNull null];
                  }
                  v19 = ;
                  [v10 setObject:v19 forKeyedSubscript:v16];

                  v6 = v18;
                }

                v15 = v15 + 1;
              }

              while (v13 != v15);
              v20 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
              v13 = v20;
            }

            while (v20);
          }

          v21 = [v10 copy];
          [v26 addObject:v21];

          v5 = v24;
          v4 = v25;
          v7 = v27;
        }

        else
        {
          if (!v8)
          {
            goto LABEL_30;
          }

          v11 = [v8 description];
          [v26 addObject:v11];
        }

LABEL_30:
        v7 = v7 + 1;
      }

      while (v7 != v4);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (!v4)
      {
LABEL_32:

        v22 = [v26 copy];
        goto LABEL_34;
      }
    }
  }

  v22 = &__NSArray0__struct;
LABEL_34:

  return v22;
}

- (id)_convertObjectToNSData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    if (![dataCopy conformsToProtocol:&OBJC_PROTOCOL___NSCoding] || (+[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", v4, 0, 0), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (![NSPropertyListSerialization propertyList:v4 isValidForFormat:200]|| ([NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:0], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:0];
        if (!v5)
        {
          v6 = [v4 description];
          v5 = [v6 dataUsingEncoding:4];
        }
      }
    }
  }

  else
  {
    v5 = +[NSData data];
  }

  return v5;
}

@end
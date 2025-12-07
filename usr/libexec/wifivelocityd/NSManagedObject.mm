@interface NSManagedObject
- (id)_w5AllAttributes;
- (id)_w5DictionaryRepresentation;
@end

@implementation NSManagedObject

- (id)_w5DictionaryRepresentation
{
  v27 = objc_opt_new();
  [(NSManagedObject *)self _w5AllAttributes];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v6 = &WiFiManagerClientCopyProperty_ptr;
    do
    {
      v7 = 0;
      v26 = v4;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * v7);
        v9 = [(NSManagedObject *)self valueForKey:v8];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        if (![v11 containsString:@"Faulting"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v5;
            selfCopy = self;
            v14 = v6;
            v15 = v9;
            _w5DictionaryRepresentation = [v15 _w5DictionaryRepresentation];
            if (_w5DictionaryRepresentation)
            {
              [v27 setValue:_w5DictionaryRepresentation forKey:v8];
            }

            else
            {
              v20 = [v15 description];
              [v27 setValue:v20 forKey:v8];
            }

            v6 = v14;
            self = selfCopy;
            v5 = v12;
            v4 = v26;
          }

          else if ([v9 conformsToProtocol:&OBJC_PROTOCOL___NSSecureCoding] && objc_msgSend(objc_opt_class(), "supportsSecureCoding"))
          {
            [v27 setValue:v9 forKey:v8];
          }

          else
          {
            v17 = sub_100098A04();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = objc_opt_class();
              v33 = 136316418;
              v34 = "[NSManagedObject(WiFiVelocity) _w5DictionaryRepresentation]";
              v35 = 2080;
              v36 = "NSManagedObject+WiFiVelocity.m";
              v37 = 1024;
              v38 = 45;
              v39 = 2112;
              v40 = v18;
              v41 = 2112;
              v42 = v8;
              v43 = 2112;
              v44 = v9;
              v19 = v18;
              LODWORD(v25) = 58;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v17, 0, "[wifivelocity] %s (%s:%u) Ignoring non secure codeable object (%@) for %@: %@", &v33, v25);
            }
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v4);
  }

  allKeys = [v27 allKeys];
  if ([allKeys count])
  {
    v22 = v27;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  return v22;
}

- (id)_w5AllAttributes
{
  outCount = 0;
  v2 = objc_opt_new();
  v3 = objc_opt_class();
  if ([(objc_class *)v3 isSubclassOfClass:objc_opt_class()])
  {
    while (1)
    {
      v4 = class_copyPropertyList(v3, &outCount);
      if (outCount)
      {
        break;
      }

      v3 = [(objc_class *)v3 superclass];
      if (v4)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (([(objc_class *)v3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
      {
        goto LABEL_13;
      }
    }

    for (i = 0; i < outCount; ++i)
    {
      Attributes = property_getAttributes(v4[i]);
      v7 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", property_getName(v4[i]), +[NSString defaultCStringEncoding]);
      if (!Attributes || (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", Attributes), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasPrefix:@"T:"], v8, (v9 & 1) == 0) && (+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", Attributes), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsString:", @",R"), v10, (v11 & 1) == 0))
      {
        [v2 addObject:v7];
      }
    }

    v3 = [(objc_class *)v3 superclass];
LABEL_11:
    free(v4);
    goto LABEL_12;
  }

LABEL_13:
  v12 = [v2 copy];

  return v12;
}

@end
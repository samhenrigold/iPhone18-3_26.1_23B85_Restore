@interface _LSQueryResultWithPropertyList
- (_LSQueryResultWithPropertyList)initWithCoder:(id)coder;
- (_LSQueryResultWithPropertyList)initWithPropertyList:(id)list;
- (_LSQueryResultWithPropertyList)propertyListWithClass:(Class)class valuesOfClass:(Class)ofClass;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSQueryResultWithPropertyList

- (_LSQueryResultWithPropertyList)initWithPropertyList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = _LSQueryResultWithPropertyList;
  _init = [(_LSQueryResult *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, list);
  }

  return v7;
}

- (_LSQueryResultWithPropertyList)propertyListWithClass:(Class)class valuesOfClass:(Class)ofClass
{
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__45;
  v27 = __Block_byref_object_dispose__45;
  propertyList = [(_LSQueryResultWithPropertyList *)self propertyList];
  v6 = v24;
  if (class)
  {
    if (v24[5])
    {
      isKindOfClass = objc_opt_isKindOfClass();
      v6 = v24;
      if ((isKindOfClass & 1) == 0)
      {
        v8 = v24[5];
        v24[5] = 0;

        v6 = v24;
      }
    }
  }

  if (ofClass && v6[5])
  {
    v9 = _NSIsNSDictionary();
    v10 = v24[5];
    if (v9)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70___LSQueryResultWithPropertyList_propertyListWithClass_valuesOfClass___block_invoke;
      v22[3] = &unk_1E6A1DB88;
      v22[4] = &v23;
      v22[5] = ofClass;
      [v10 enumerateKeysAndObjectsUsingBlock:v22];
    }

    else if (_NSIsNSArray())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v24[5];
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v29 count:16];
      if (v12)
      {
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v11);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v15 = v24[5];
              v24[5] = 0;

              goto LABEL_20;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v18 objects:v29 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }
  }

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  propertyList = [(_LSQueryResultWithPropertyList *)self propertyList];
  [coderCopy encodeObject:propertyList forKey:@"propertyList"];
}

- (_LSQueryResultWithPropertyList)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(_LSQueryResult *)self _init];
  if (_init)
  {
    v6 = objc_opt_class();
    v7 = XNSGetPropertyListClasses(v6);
    v8 = [coderCopy ls_decodeDictionaryWithKeysOfClass:v6 valuesOfClasses:v7 forKey:@"propertyList"];
    propertyList = _init->_propertyList;
    _init->_propertyList = v8;
  }

  return _init;
}

@end
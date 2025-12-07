@interface TSUExtendedAttributeCollection
+ (BOOL)removeExtraExtendedAttributesAtPath:(id)path forIntent:(unsigned int)intent options:(int)options error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)setAttributeCollectionToPath:(id)path intent:(unsigned int)intent options:(int)options forRemoval:(BOOL)removal error:(id *)error;
- (TSUExtendedAttributeCollection)initWithAttributes:(id)attributes;
- (TSUExtendedAttributeCollection)initWithPath:(id)path forRemoval:(BOOL)removal options:(int)options error:(id *)error;
- (id)description;
- (id)extendedAttributeForName:(id)name;
- (void)setExtendedAttributeValue:(id)value forName:(id)name;
@end

@implementation TSUExtendedAttributeCollection

+ (BOOL)removeExtraExtendedAttributesAtPath:(id)path forIntent:(unsigned int)intent options:(int)options error:(id *)error
{
  v7 = *&options;
  v8 = *&intent;
  pathCopy = path;
  v11 = [[self alloc] initWithPath:pathCopy forRemoval:1 options:v7 error:error];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 setAttributeCollectionToPath:pathCopy intent:v8 options:v7 forRemoval:1 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TSUExtendedAttributeCollection)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v24.receiver = self;
  v24.super_class = TSUExtendedAttributeCollection;
  v5 = [(TSUExtendedAttributeCollection *)&v24 init];
  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(attributesCopy, "count")}];
    attributes = v5->_attributes;
    v5->_attributes = v6;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = attributesCopy;
    v8 = attributesCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          name = [v13 name];
          v15 = xattr_name_without_flags([name UTF8String]);

          v16 = v5->_attributes;
          v17 = [[NSString alloc] initWithUTF8String:v15];
          [(NSMutableDictionary *)v16 setObject:v13 forKeyedSubscript:v17];

          free(v15);
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    attributesCopy = v19;
  }

  return v5;
}

- (TSUExtendedAttributeCollection)initWithPath:(id)path forRemoval:(BOOL)removal options:(int)options error:(id *)error
{
  v7 = *&options;
  removalCopy = removal;
  pathCopy = path;
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
    if (!error)
    {
      goto LABEL_28;
    }

    v25 = 2;
LABEL_24:
    [NSError tsu_fileReadPOSIXErrorWithNumber:v25 userInfo:0];
    *error = selfCopy2 = 0;
    goto LABEL_32;
  }

  v12 = fileSystemRepresentation;
  v13 = listxattr(fileSystemRepresentation, 0, 0, v7);
  if (v13 == -1)
  {
    if (!error)
    {
      goto LABEL_28;
    }

    v25 = *__error();
    goto LABEL_24;
  }

  v14 = v13;
  if (v13 < 1)
  {
    self = [(TSUExtendedAttributeCollection *)self init];
    selfCopy2 = self;
    goto LABEL_32;
  }

  v15 = malloc_type_malloc(v13, 0x100004077774924uLL);
  if (!v15)
  {
    if (error)
    {
      v25 = 12;
      goto LABEL_24;
    }

LABEL_28:
    selfCopy2 = 0;
    goto LABEL_32;
  }

  v16 = v15;
  v17 = listxattr(v12, v15, v14, v7);
  if (v17 == -1)
  {
    if (error)
    {
      *error = [NSError tsu_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }

    free(v16);
    goto LABEL_28;
  }

  v18 = v17;
  v29 = objc_opt_new();
  if (v18 < 1)
  {
    goto LABEL_31;
  }

  v28 = v16;
  v19 = v16;
  while (1)
  {
    v20 = [[NSString alloc] initWithUTF8String:v19];
    if ([v20 hasPrefix:@"com.apple.security.private."])
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_10015B238();
      }

      v21 = TSUDefaultCat_log_t;
      if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v31 = v20;
        v32 = 2080;
        v33 = v12;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Not reading the %@ xattr on %s", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v22 = [[TSUExtendedAttribute alloc] initFromPathFileSystemRepresentation:v12 name:v20 forRemoval:removalCopy options:v7 error:error];
    if (!v22)
    {
      break;
    }

    v23 = v22;
    [v29 addObject:v22];

LABEL_15:
    v24 = strlen(v19);
    v19 += v24 + 1;
    v18 -= v24 + 1;

    if (v18 <= 0)
    {
      goto LABEL_30;
    }
  }

  self = 0;
LABEL_30:
  v16 = v28;
LABEL_31:
  free(v16);
  self = [(TSUExtendedAttributeCollection *)self initWithAttributes:v29];

  selfCopy2 = self;
LABEL_32:

  return selfCopy2;
}

- (BOOL)setAttributeCollectionToPath:(id)path intent:(unsigned int)intent options:(int)options forRemoval:(BOOL)removal error:(id *)error
{
  pathCopy = path;
  fileSystemRepresentation = [pathCopy fileSystemRepresentation];
  if (fileSystemRepresentation)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10008247C;
    v25 = sub_10008248C;
    v26 = 0;
    attributes = self->_attributes;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100082494;
    v17[3] = &unk_1001CCA38;
    removalCopy = removal;
    v17[5] = &v27;
    v17[6] = fileSystemRepresentation;
    intentCopy = intent;
    optionsCopy = options;
    v17[4] = &v21;
    [(NSMutableDictionary *)attributes enumerateKeysAndObjectsUsingBlock:v17];
    v15 = *(v28 + 24);
    if (error && (v28[3] & 1) == 0)
    {
      *error = v22[5];
      v15 = *(v28 + 24);
    }

    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else if (error)
  {
    [NSError tsu_fileReadPOSIXErrorWithNumber:2 userInfo:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

- (id)extendedAttributeForName:(id)name
{
  nameCopy = name;
  uTF8String = [name UTF8String];
  if (uTF8String)
  {
    v7 = xattr_name_without_flags(uTF8String);
    attributes = self->_attributes;
    v9 = [[NSString alloc] initWithUTF8String:v7];
    v10 = [(NSMutableDictionary *)attributes objectForKeyedSubscript:v9];

    free(v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setExtendedAttributeValue:(id)value forName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  uTF8String = [nameCopy UTF8String];
  if (uTF8String)
  {
    v8 = xattr_name_without_flags(uTF8String);
    v9 = [[TSUExtendedAttribute alloc] initWithName:nameCopy value:valueCopy];
    attributes = self->_attributes;
    v11 = [[NSString alloc] initWithUTF8String:v8];
    [(NSMutableDictionary *)attributes setObject:v9 forKeyedSubscript:v11];

    free(v8);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);

  if (v6)
  {
    attributes = self->_attributes;
    if (attributes | v6[1])
    {
      v8 = [(NSMutableDictionary *)attributes isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  allAttributes = [(TSUExtendedAttributeCollection *)self allAttributes];
  v6 = [NSString stringWithFormat:@"<%@: %p attributes='%@'>", v4, self, allAttributes];

  return v6;
}

@end
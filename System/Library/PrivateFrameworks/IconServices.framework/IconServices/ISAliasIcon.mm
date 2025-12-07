@interface ISAliasIcon
+ (id)_iconForBookmarkData:(id)data;
+ (id)_iconForValues:(id)values;
+ (id)aliasUUID;
- (ISAliasIcon)initWithAliasURL:(id)l;
- (ISAliasIcon)initWithBookmarkData:(id)data decorations:(id)decorations;
- (ISAliasIcon)initWithCoder:(id)coder;
- (ISConcreteIcon)icon;
- (id)description;
- (id)makeResourceProvider;
- (void)encodeWithCoder:(id)coder;
- (void)resolve;
@end

@implementation ISAliasIcon

+ (id)aliasUUID
{
  if (aliasUUID_onceToken != -1)
  {
    +[ISAliasIcon aliasUUID];
  }

  v3 = aliasUUID_aliasUUID;

  return v3;
}

uint64_t __24__ISAliasIcon_aliasUUID__block_invoke()
{
  aliasUUID_aliasUUID = [MEMORY[0x1E696AFB0] _IS_UUIDWithString:@"com.apple.icon-decoration.system.alias"];

  return MEMORY[0x1EEE66BB8]();
}

- (ISAliasIcon)initWithAliasURL:(id)l
{
  v24[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([lCopy __is__isSymLink])
  {
    v6 = MEMORY[0x1E696AFB0];
    absoluteString = [lCopy absoluteString];
    v8 = [v6 _IF_UUIDWithString:absoluteString];

    v9 = +[ISURLResourcePropertySpecification sharedInstance];
    iconInitWithURLProperties = [v9 iconInitWithURLProperties];
    v11 = [lCopy __is_resourceValuesForKeys:iconInitWithURLProperties error:0];

    v12 = [ISAliasIcon _iconForValues:v11];
    v20.receiver = self;
    v20.super_class = ISAliasIcon;
    v13 = [(ISConcreteIcon *)&v20 initWithDigest:v8];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_icon, v12);
      objc_storeStrong(&v14->_alias, l);
      v15 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.system.alias"];
      v24[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      decorations = v14->_decorations;
      v14->_decorations = v16;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DFF8] bookmarkDataWithContentsOfURL:lCopy error:0];
    if (!v8)
    {
      v18 = _ISDefaultLog(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = 0;
        _os_log_impl(&dword_1A77B8000, v18, OS_LOG_TYPE_DEFAULT, "Could not read bookmark from alias file with error: %@", buf, 0xCu);
      }
    }

    v11 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.system.alias"];
    v21 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v14 = [(ISAliasIcon *)self initWithBookmarkData:v8 decorations:v12];
  }

  return v14;
}

- (ISAliasIcon)initWithBookmarkData:(id)data decorations:(id)decorations
{
  v27[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  decorationsCopy = decorations;
  v9 = MEMORY[0x1E695DFF8];
  v10 = +[ISURLResourcePropertySpecification sharedInstance];
  iconInitWithURLProperties = [v10 iconInitWithURLProperties];
  v12 = [v9 resourceValuesForKeys:iconInitWithURLProperties fromBookmarkData:dataCopy];

  v13 = [ISAliasIcon _iconForValues:v12];
  v14 = [MEMORY[0x1E696AFB0] _IF_UUIDWithData:dataCopy];
  v15 = MEMORY[0x1E696AFB0];
  v27[0] = v14;
  digest = [v13 digest];
  v27[1] = digest;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v18 = [v15 _IF_UUIDByXORingUUIDs:v17];

  v19 = [v12 _IF_BOOLForKey:*MEMORY[0x1E695DB68]];
  if ((v19 & 1) != 0 || (v19 = [v12 _IF_BOOLForKey:*MEMORY[0x1E695DBC8]], v19))
  {
    v20 = _ISDefaultLog(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [ISAliasIcon initWithBookmarkData:decorations:];
    }

    if (decorationsCopy)
    {
      v21 = decorationsCopy;
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }

    v22 = [[ISIconDecoration alloc] initWithType:@"com.apple.icon-decoration.system.alias"];
    decorationsCopy = [v21 arrayByAddingObject:v22];
  }

  v26.receiver = self;
  v26.super_class = ISAliasIcon;
  v23 = [(ISConcreteIcon *)&v26 initWithDigest:v18];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_icon, v13);
    objc_storeStrong(&v24->_alias, data);
    objc_storeStrong(&v24->_decorations, decorationsCopy);
  }

  return v24;
}

- (ISAliasIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ISAliasIcon;
  v5 = [(ISConcreteIcon *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    if (initWithCoder__onceToken_0 != -1)
    {
      [ISAliasIcon initWithCoder:];
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder__classes_0 forKey:@"alias"];
    alias = v5->_alias;
    v5->_alias = v6;

    v8 = [coderCopy decodeObjectOfClasses:initWithCoder__classes_0 forKey:@"decorations"];
    decorations = v5->_decorations;
    v5->_decorations = v8;
  }

  return v5;
}

void __29__ISAliasIcon_initWithCoder___block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__classes_0;
  initWithCoder__classes_0 = v2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISAliasIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alias forKey:{@"alias", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_decorations forKey:@"decorations"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  v5 = [v3 initWithFormat:@"<%s %p> Icon: %@, Alias: %@", class_getName(Class), self, self->_icon, self->_alias];

  return v5;
}

- (void)resolve
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_0_0();
  v8 = 2112;
  v9 = a2;
}

- (ISConcreteIcon)icon
{
  resolvedIcon = [(ISAliasIcon *)self resolvedIcon];
  icon = resolvedIcon;
  if (!resolvedIcon)
  {
    icon = self->_icon;
  }

  v5 = icon;

  return v5;
}

- (id)makeResourceProvider
{
  [(ISAliasIcon *)self resolve];
  icon = [(ISAliasIcon *)self icon];
  makeResourceProvider = [icon makeResourceProvider];

  return makeResourceProvider;
}

+ (id)_iconForBookmarkData:(id)data
{
  v3 = MEMORY[0x1E695DFF8];
  dataCopy = data;
  v5 = +[ISURLResourcePropertySpecification sharedInstance];
  iconInitWithURLProperties = [v5 iconInitWithURLProperties];
  v7 = [v3 resourceValuesForKeys:iconInitWithURLProperties fromBookmarkData:dataCopy];

  v8 = [ISAliasIcon _iconForValues:v7];

  return v8;
}

+ (id)_iconForValues:(id)values
{
  valuesCopy = values;
  v4 = [valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DB70]];
  if (v4)
  {
    v5 = _ISDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    v6 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DA88]];
    if (!v6)
    {
      v6 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    }

    pathExtension = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    v8 = [[ISBundleIcon alloc] initWithBundleURL:pathExtension];
    goto LABEL_16;
  }

  if ([valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DBA0]])
  {
    v6 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    pathExtension = [v6 pathExtension];
    v9 = _ISDefaultLog(pathExtension);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    v10 = [ISTagIcon alloc];
    v11 = MEMORY[0x1E6963868];
LABEL_15:
    v8 = [(ISTagIcon *)v10 initWithFileExtension:pathExtension baseType:*v11];
    goto LABEL_16;
  }

  if ([valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DBB8]])
  {
    v6 = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    pathExtension = [v6 pathExtension];
    v12 = _ISDefaultLog(pathExtension);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    v10 = [ISTagIcon alloc];
    v11 = MEMORY[0x1E6963800];
    goto LABEL_15;
  }

  v14 = [valuesCopy _IF_BOOLForKey:*MEMORY[0x1E695DB78]];
  if (v14)
  {
    v18 = _ISDefaultLog(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      +[ISAliasIcon(Factory) _iconForValues:];
    }

    pathExtension = [valuesCopy _IF_stringForKey:*MEMORY[0x1E695DC40]];
    if (pathExtension)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathExtension isDirectory:1];
      v19 = +[ISCustomIconManager sharedInstance];
      v20 = [v19 specialFolderTypeForURL:v6];

      if (v20)
      {
        v22 = _ISDefaultLog(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          +[ISAliasIcon(Factory) _iconForValues:];
        }

        v13 = [[ISTypeIcon alloc] initWithType:v20];
LABEL_17:

        if (v13)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v6 = 0;
    }

    v23 = [ISTypeIcon alloc];
    v8 = [(ISTypeIcon *)v23 initWithType:*MEMORY[0x1E69637D0]];
LABEL_16:
    v13 = v8;
    goto LABEL_17;
  }

LABEL_18:
  v15 = _ISDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[ISAliasIcon(Factory) _iconForValues:];
  }

  v16 = [ISTypeIcon alloc];
  v13 = [(ISTypeIcon *)v16 initWithType:*MEMORY[0x1E6963800]];
LABEL_21:

  return v13;
}

- (void)initWithBookmarkData:decorations:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_7();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end
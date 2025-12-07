@interface MCMStaticConfiguration
+ (id)defaultPlistDirectoryURL;
- (BOOL)loadWithError:(id *)error;
- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error;
- (Class)containerConfigClass;
- (NSString)debugDescription;
- (id)_posixUserFromPlistValue:(id)value;
- (id)configForContainerClass:(unint64_t)class;
- (id)descriptionForContainerConfiguration;
- (id)initFromPlistAtPathOrName:(id)name defaultPlistDirectoryURL:(id)l;
@end

@implementation MCMStaticConfiguration

- (Class)containerConfigClass
{
  containerConfigClass = self->_containerConfigClass;

  return containerConfigClass;
}

- (id)descriptionForContainerConfiguration
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(MCMStaticConfiguration *)self containerConfigMap];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    v6 = @"containerConfiguration: {\n";
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        containerConfigMap = [(MCMStaticConfiguration *)self containerConfigMap];
        v10 = [containerConfigMap objectForKeyedSubscript:v8];

        v11 = [(__CFString *)v6 stringByAppendingFormat:@"\t%@: {\n", v8];

        v12 = [v10 debugDescriptionWithIndentString:@"\t\t"];
        v13 = [v11 stringByAppendingString:v12];

        v6 = [v13 stringByAppendingString:@"\t}\n"];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = @"containerConfiguration: {\n";
  }

  v14 = [(__CFString *)v6 stringByAppendingString:@"}\n"];

  return v14;
}

- (id)_posixUserFromPlistValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [valueCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if ([v6 isEqualToString:@"current"])
    {
      v7 = +[MCMPOSIXUser currentPOSIXUser];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MCMPOSIXUser posixUserWithName:valueCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)debugDescription
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMStaticConfiguration;
  v3 = [(MCMPlistReadOnly *)&v10 descriptionOfBoolPropertiesWithIndentString:0];
  v4 = NSStringFromSelector(sel_defaultUser);
  defaultUser = [(MCMStaticConfiguration *)self defaultUser];
  v6 = [v3 stringByAppendingFormat:@"%@: %@\n", v4, defaultUser];

  descriptionForContainerConfiguration = [(MCMStaticConfiguration *)self descriptionForContainerConfiguration];
  v8 = [v6 stringByAppendingString:descriptionForContainerConfiguration];

  return v8;
}

- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v6 = [plistCopy objectForKeyedSubscript:@"containerConfiguration"];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v39 = plistCopy;

  v9 = MEMORY[0x1E695E0F8];
  if (v8)
  {
    v9 = v8;
  }

  v10 = v9;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  selfCopy = self;
  containerConfigClass = [(MCMStaticConfiguration *)self containerConfigClass];
  if (!containerConfigClass)
  {
    containerConfigClass = objc_opt_class();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    v17 = MEMORY[0x1E695E0F8];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        v20 = [v13 objectForKeyedSubscript:v19];
        objc_opt_class();
        v21 = v20;
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (!v22 || (v23 = [[(objc_class *)containerConfigClass alloc] initWithPreprocessedPlist:v22 name:v19]) == 0)
        {
          v23 = [[(objc_class *)containerConfigClass alloc] initWithPreprocessedPlist:v17 name:v19];
        }

        [dictionary setObject:v23 forKeyedSubscript:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v15);
  }

  v24 = [dictionary copy];
  containerConfigMap = selfCopy->_containerConfigMap;
  selfCopy->_containerConfigMap = v24;

  v26 = NSStringFromSelector(sel_defaultUser);
  v27 = [v39 objectForKeyedSubscript:v26];

  if (v27 && ([(MCMStaticConfiguration *)selfCopy _posixUserFromPlistValue:v27], v28 = objc_claimAutoreleasedReturnValue(), defaultUser = selfCopy->_defaultUser, selfCopy->_defaultUser = v28, defaultUser, !selfCopy->_defaultUser))
  {
    v33 = [MCMError alloc];
    sourceFileURL = [(MCMPlistReadOnly *)selfCopy sourceFileURL];
    path = [sourceFileURL path];
    v30 = [(MCMError *)v33 initWithErrorType:149 category:5 path:path POSIXerrno:100];

    if (error)
    {
      v36 = v30;
      v31 = 0;
      *error = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = 1;
  }

  return v31;
}

- (BOOL)loadWithError:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27.receiver = self;
  v27.super_class = MCMStaticConfiguration;
  v28 = 0;
  v6 = [(MCMPlistReadOnly *)&v27 loadWithError:&v28];
  v7 = v28;
  v8 = v7;
  if (v6)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    containerConfigMap = [(MCMStaticConfiguration *)self containerConfigMap];
    v10 = [containerConfigMap countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (!v10)
    {
LABEL_12:

      v20 = [dictionary copy];
      containerConfigMapByEnum = self->_containerConfigMapByEnum;
      self->_containerConfigMapByEnum = v20;

      v22 = 1;
      v18 = v8;
      goto LABEL_17;
    }

    v11 = v10;
    errorCopy = error;
    v12 = *v31;
LABEL_4:
    v13 = 0;
    while (1)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(containerConfigMap);
      }

      v14 = *(*(&v30 + 1) + 8 * v13);
      containerConfigMap2 = [(MCMStaticConfiguration *)self containerConfigMap];
      v16 = [containerConfigMap2 objectForKeyedSubscript:v14];

      if (v16)
      {
        v26 = v8;
        v17 = [v16 loadWithError:&v26];
        v18 = v26;

        if (!v17)
        {

          error = errorCopy;
          if (errorCopy)
          {
            goto LABEL_14;
          }

LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }

        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v16, "containerClass")}];
        [dictionary setObject:v16 forKeyedSubscript:v19];

        v8 = v18;
      }

      if (v11 == ++v13)
      {
        v11 = [containerConfigMap countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v11)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }
  }

  v18 = v7;
  if (!error)
  {
    goto LABEL_16;
  }

LABEL_14:
  v23 = v18;
  v22 = 0;
  *error = v18;
LABEL_17:

  return v22;
}

- (id)configForContainerClass:(unint64_t)class
{
  containerConfigMapByEnum = self->_containerConfigMapByEnum;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:container_class_normalized()];
  v5 = [(NSDictionary *)containerConfigMapByEnum objectForKeyedSubscript:v4];

  return v5;
}

- (id)initFromPlistAtPathOrName:(id)name defaultPlistDirectoryURL:(id)l
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMStaticConfiguration;
  v4 = [(MCMPlistReadOnly *)&v8 initFromPlistAtPathOrName:name defaultPlistDirectoryURL:l conformingToProtocol:&unk_1F5A85260];
  v5 = v4;
  if (v4)
  {
    v6 = v4[11];
    v4[11] = 0;
  }

  return v5;
}

+ (id)defaultPlistDirectoryURL
{
  v8 = *MEMORY[0x1E69E9840];
  if (defaultPlistDirectoryURL_onceToken != -1)
  {
    dispatch_once(&defaultPlistDirectoryURL_onceToken, &__block_literal_global_7207);
  }

  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    path = [defaultPlistDirectoryURL_defaultURL path];
    v6 = 138412290;
    v7 = path;
    _os_log_debug_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEBUG, "defaultPlistDirectoryURL: [%@]", &v6, 0xCu);
  }

  v3 = defaultPlistDirectoryURL_defaultURL;

  return v3;
}

uint64_t __50__MCMStaticConfiguration_defaultPlistDirectoryURL__block_invoke()
{
  defaultPlistDirectoryURL_defaultURL = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"/System/Library/PrivateFrameworks/ContainerManagerCommon.framework" isDirectory:1 relativeToURL:0];

  return MEMORY[0x1EEE66BB8]();
}

@end
@interface FSTaskOptionsBundle
+ (id)bundleForArguments:(char *)arguments count:(int)count extension:(id)extension operationType:(unsigned __int8)type errorHandler:(id)handler;
+ (id)bundleForArguments:(char *)arguments count:(int)count syntaxDictionary:(id)dictionary errorHandler:(id)handler;
- (FSTaskOptions)taskOptions;
- (FSTaskOptionsBundle)init;
- (FSTaskOptionsBundle)initWithCoder:(id)coder;
- (FSTaskOptionsBundle)initWithOptionString:(char *)string count:(int)count optionDictionary:(id)dictionary errorHandler:(id)handler;
- (int)mapStringToKind:(id)kind;
- (void)addOption:(id)option;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateOptionsUsingBlock:(id)block;
@end

@implementation FSTaskOptionsBundle

+ (id)bundleForArguments:(char *)arguments count:(int)count syntaxDictionary:(id)dictionary errorHandler:(id)handler
{
  v7 = *&count;
  handlerCopy = handler;
  dictionaryCopy = dictionary;
  v12 = [[self alloc] initWithOptionString:arguments count:v7 optionDictionary:dictionaryCopy errorHandler:handlerCopy];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v4);
  }

  [coderCopy encodeObject:self->_extras forKey:@"FSTB.e"];
  [coderCopy encodeObject:self->_options forKey:@"FSTB.o"];
  [coderCopy encodeObject:self->_parameters forKey:@"FSTB.p"];
}

- (FSTaskOptionsBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v17);
  }

  v18.receiver = self;
  v18.super_class = FSTaskOptionsBundle;
  v5 = [(FSTaskOptionsBundle *)&v18 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"FSTB.e"];
    v8 = [v7 mutableCopy];
    extras = v5->_extras;
    v5->_extras = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"FSTB.o"];
    v11 = [v10 mutableCopy];
    options = v5->_options;
    v5->_options = v11;

    v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"FSTB.p"];
    v14 = [v13 mutableCopy];
    parameters = v5->_parameters;
    v5->_parameters = v14;
  }

  return v5;
}

- (FSTaskOptionsBundle)init
{
  v10.receiver = self;
  v10.super_class = FSTaskOptionsBundle;
  v2 = [(FSTaskOptionsBundle *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    options = v2->_options;
    v2->_options = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    parameters = v2->_parameters;
    v2->_parameters = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    extras = v2->_extras;
    v2->_extras = v7;
  }

  return v2;
}

- (int)mapStringToKind:(id)kind
{
  kindCopy = kind;
  if (kindCopy)
  {
    if ([@"Path" isEqualToString:kindCopy])
    {
      v4 = 0;
    }

    else if ([@"Directory" isEqualToString:kindCopy])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (FSTaskOptionsBundle)initWithOptionString:(char *)string count:(int)count optionDictionary:(id)dictionary errorHandler:(id)handler
{
  v7 = *&count;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  v12 = [(FSTaskOptionsBundle *)self init];
  if (!dictionaryCopy || ![dictionaryCopy count] || !v12)
  {
    goto LABEL_32;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"shortOptions"];
  v35 = [dictionaryCopy objectForKeyedSubscript:@"pathOptions"];
  if (!v13 || ![v13 length])
  {
    v7 = v12;
    v31 = 0;
    v22 = 0;
    v18 = 0;
    v15 = 0;
    goto LABEL_31;
  }

  v34 = handlerCopy;
  if ([v13 characterAtIndex:0] != 58)
  {
    v14 = [@":" stringByAppendingString:v13];

    v13 = v14;
  }

  v15 = 0;
  v16 = 0;
  *MEMORY[0x277D85E88] = 1;
  v17 = 0x277CCA000uLL;
  while (1)
  {
    v18 = v16;
    v19 = getopt(v7, string, [v13 UTF8String]);
    if (v19 << 24 == -16777216)
    {
      break;
    }

    v20 = v19;
    if (v20 == 58)
    {
      v22 = fs_errorForPOSIXError(22);
      if (v22)
      {
LABEL_28:
        v34[2](v34, v22, v15);
        v31 = 0;
        v7 = 0;
        v18 = v16;
        handlerCopy = v34;
        goto LABEL_31;
      }
    }

    else if (v20 == 63)
    {
      v21 = [*(v17 + 3240) stringWithUTF8String:string[*MEMORY[0x277D85E78] - 1]];

      v22 = fs_errorForPOSIXError(45);
      v15 = v21;
      v17 = 0x277CCA000;
      if (v22)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = [*(v17 + 3240) stringWithFormat:@"%c", v20];

      if (*MEMORY[0x277D85E68])
      {
        v23 = [objc_alloc(*(v17 + 3240)) initWithUTF8String:*MEMORY[0x277D85E68]];
        if (v35)
        {
          v24 = [v35 objectForKeyedSubscript:v16];
          if (!v24)
          {
            goto LABEL_27;
          }

          v25 = [(FSTaskOptionsBundle *)v12 mapStringToKind:v24];
          if (v25)
          {
            if (v25 != 1)
            {
              goto LABEL_27;
            }

            v26 = 1;
          }

          else
          {
            v26 = 0;
          }

          v28 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v16 isDirectory:v26];
          if (v28)
          {
            v29 = v28;
            v33 = [[FSPathURLResource alloc] initAsSecureURL:v28 readOnly:0];
            [(NSMutableDictionary *)v12->_extras setObject:v33 forKeyedSubscript:v23];
          }
        }

        else
        {
          v24 = 0;
        }

LABEL_27:
        v30 = [FSTaskOption option:v16 value:v23];
        [(FSTaskOptionsBundle *)v12 addOption:v30];

        v17 = 0x277CCA000;
      }

      else
      {
        v27 = [FSTaskOption optionWithoutValue:v16];
        [(FSTaskOptionsBundle *)v12 addOption:v27];

        v17 = 0x277CCA000;
      }
    }
  }

  v22 = 0;
  v31 = 1;
  handlerCopy = v34;
LABEL_31:

  if (v31)
  {
LABEL_32:
    v7 = v12;
  }

  return v7;
}

+ (id)bundleForArguments:(char *)arguments count:(int)count extension:(id)extension operationType:(unsigned __int8)type errorHandler:(id)handler
{
  typeCopy = type;
  v9 = *&count;
  extensionCopy = extension;
  handlerCopy = handler;
  v13 = objc_alloc_init(FSTaskOptionsBundle);
  v14 = +[FSClient sharedInstance];
  v15 = v14;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __85__FSTaskOptionsBundle_bundleForArguments_count_extension_operationType_errorHandler___block_invoke;
    v27 = &unk_278FED228;
    v28 = extensionCopy;
    v29 = &v30;
    [v15 installedExtensionsSync:&v24];
    v18 = v31[5];
    if (!v18)
    {
      puts("No bundle for us!");
      v20 = 0;
      v21 = 0;
      v17 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (typeCopy == 2)
    {
      attributes = [v18 attributes];
      v20 = [attributes objectForKeyedSubscript:@"FSActivateOptionSyntax"];
      v21 = &stru_285DEFA28;
    }

    else if (typeCopy == 1)
    {
      attributes = [v18 attributes];
      v20 = [attributes objectForKeyedSubscript:@"FSFormatOptionSyntax"];
      v21 = @"Nv:";
    }

    else
    {
      if (typeCopy)
      {
        v20 = 0;
        v21 = 0;
LABEL_21:
        v17 = [(FSTaskOptionsBundle *)v13 initWithOptionString:arguments count:v9 optionDictionary:v20 errorHandler:handlerCopy];
        goto LABEL_22;
      }

      attributes = [v18 attributes];
      v20 = [attributes objectForKeyedSubscript:@"FSCheckOptionSyntax"];
      v21 = @"qny";
    }

    if (v20)
    {
      v22 = [v20 objectForKeyedSubscript:@"shortOptions"];

      if (v22)
      {
        v21 = [v20 objectForKeyedSubscript:@"shortOptions"];
      }
    }

    goto LABEL_21;
  }

  if (!v14)
  {

    v13 = 0;
  }

  v13 = v13;
  v17 = v13;
LABEL_23:
  _Block_object_dispose(&v30, 8);

  return v17;
}

void __85__FSTaskOptionsBundle_bundleForArguments_count_extension_operationType_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v9 = fskit_std_log(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_24A929000, v9, OS_LOG_TYPE_INFO, "Could not get extensions - %@", buf, 0xCu);
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__FSTaskOptionsBundle_bundleForArguments_count_extension_operationType_errorHandler___block_invoke_2;
    v10[3] = &unk_278FED200;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    [a2 enumerateObjectsUsingBlock:v10];
    v9 = v11;
  }
}

void __85__FSTaskOptionsBundle_bundleForArguments_count_extension_operationType_errorHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 bundleIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)addOption:(id)option
{
  options = self->_options;
  optionCopy = option;
  [(NSArray *)options addObject:optionCopy];
  parameters = self->_parameters;
  originalArgv = [optionCopy originalArgv];

  [(NSArray *)parameters addObjectsFromArray:originalArgv];
}

- (FSTaskOptions)taskOptions
{
  v2 = [[FSTaskOptions alloc] initWithOptions:self->_parameters extras:self->_extras];

  return v2;
}

- (void)enumerateOptionsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSArray *)self->_options count];
  v12 = 0;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v8;
      v8 = [(NSArray *)self->_options objectAtIndexedSubscript:v7];

      option = [v8 option];
      if ([v8 hasValue])
      {
        optionValue = [v8 optionValue];
        blockCopy[2](blockCopy, option, optionValue, v7, &v12);
      }

      else
      {
        blockCopy[2](blockCopy, option, 0, v7, &v12);
      }

      if (v12)
      {
        break;
      }

      ++v7;
    }

    while (v7 < v6);
  }
}

@end
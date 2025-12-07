@interface MCMContainerConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerConfig:(id)config;
- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error;
- (MCMContainerConfiguration)initWithPreprocessedPlist:(id)plist name:(id)name;
- (NSString)debugDescription;
- (NSString)description;
- (id)_clientIdentifiersSetFromPlistValue:(id)value error:(id *)error;
- (id)_containerIdentifierSetFromPlistValue:(id)value error:(id *)error;
- (id)_identifierPrefixesExemptFromAutomaticProtectionFromPlistValue:(id)value error:(id *)error;
- (id)_requiredEntitlementFromPlistValue:(id)value error:(id *)error;
- (id)_sandboxAffordancesFromPlistValue:(id)value error:(id *)error;
- (id)_sandboxExtensionClassFromPlistValue:(id)value;
- (id)debugDescriptionWithIndentString:(id)string;
- (unint64_t)_containerClassFromPlistValue:(id)value;
- (unint64_t)_normalizedContainerClassFromPlistValue:(id)value defaultContainerClass:(unint64_t)class;
- (unsigned)disposition;
@end

@implementation MCMContainerConfiguration

- (unsigned)disposition
{
  if ([(MCMContainerConfiguration *)self handledDirectly])
  {
    return 1;
  }

  if ([(MCMContainerConfiguration *)self handledByProxy])
  {
    return 2;
  }

  return 0;
}

- (BOOL)override_initNonBoolPropertiesWithPlist:(id)plist error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v7 = [plistCopy objectForKeyedSubscript:@"containerClass"];
  self->_containerClass = [(MCMContainerConfiguration *)self _containerClassFromPlistValue:v7];

  v8 = [plistCopy objectForKeyedSubscript:@"normalizedContainerClass"];
  self->_normalizedContainerClass = [(MCMContainerConfiguration *)self _normalizedContainerClassFromPlistValue:v8 defaultContainerClass:self->_containerClass];

  v9 = [plistCopy objectForKeyedSubscript:@"sandboxAffordances"];
  v34[0] = 0;
  v10 = [(MCMContainerConfiguration *)self _sandboxAffordancesFromPlistValue:v9 error:v34];
  v11 = v34[0];
  sandboxAffordances = self->_sandboxAffordances;
  self->_sandboxAffordances = v10;

  if (!self->_sandboxAffordances)
  {
LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  v13 = [plistCopy objectForKeyedSubscript:@"requiredEntitlement"];
  v33 = v11;
  v14 = [(MCMContainerConfiguration *)self _requiredEntitlementFromPlistValue:v13 error:&v33];
  v15 = v33;

  requiredEntitlement = self->_requiredEntitlement;
  self->_requiredEntitlement = v14;

  if (self->_requiredEntitlement || !v15)
  {
    v18 = [plistCopy objectForKeyedSubscript:@"genericExtensionsAllowedForClients"];
    v32 = v15;
    v19 = [(MCMContainerConfiguration *)self _clientIdentifiersSetFromPlistValue:v18 error:&v32];
    v11 = v32;

    genericExtensionsAllowedForClients = self->_genericExtensionsAllowedForClients;
    self->_genericExtensionsAllowedForClients = v19;

    if (self->_genericExtensionsAllowedForClients)
    {
      v21 = [plistCopy objectForKeyedSubscript:@"sandboxExtensionClass"];
      v22 = [(MCMContainerConfiguration *)self _sandboxExtensionClassFromPlistValue:v21];
      sandboxExtensionClass = self->_sandboxExtensionClass;
      self->_sandboxExtensionClass = v22;

      v24 = [plistCopy objectForKeyedSubscript:@"identifierPrefixesExemptFromAutomaticProtection"];
      v31 = v11;
      v25 = [(MCMContainerConfiguration *)self _identifierPrefixesExemptFromAutomaticProtectionFromPlistValue:v24 error:&v31];
      v26 = v31;

      identifierPrefixesExemptFromAutomaticProtection = self->_identifierPrefixesExemptFromAutomaticProtection;
      self->_identifierPrefixesExemptFromAutomaticProtection = v25;

      if (self->_identifierPrefixesExemptFromAutomaticProtection)
      {
        v28 = 1;
      }

      else
      {
        v28 = v26 == 0;
      }

      v17 = v28;
      v11 = v26;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = 0;
  v11 = v15;
LABEL_14:
  if (error && !v17)
  {
    v29 = v11;
    *error = v11;
  }

  return v17;
}

- (id)_identifierPrefixesExemptFromAutomaticProtectionFromPlistValue:(id)value error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = valueCopy;
  if (!v7)
  {
    v14 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              *buf = 138412546;
              v30 = v23;
              v31 = 2112;
              v32 = v8;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Identifier prefixes value is not in a valid format; expected = NSArray<NSString>, got = NSArray<%@>, value = %@", buf, 0x16u);
            }

            v15 = [[MCMError alloc] initWithErrorType:149 category:3];
            goto LABEL_21;
          }

          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = [v6 copy];
LABEL_13:
    v15 = 0;
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138412546;
    v30 = v21;
    v31 = 2112;
    v32 = v7;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Identifier prefixes is not in a valid format; expected = NSArray, got = %@, value = %@", buf, 0x16u);
  }

  v15 = [[MCMError alloc] initWithErrorType:149 category:3];
LABEL_21:
  v14 = 0;
  if (error)
  {
LABEL_22:
    if (!v14)
    {
      v18 = v15;
      *error = v15;
    }
  }

LABEL_24:

  return v14;
}

- (unint64_t)_normalizedContainerClassFromPlistValue:(id)value defaultContainerClass:(unint64_t)class
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    class = [valueCopy unsignedLongLongValue];
  }

  return class;
}

- (id)_clientIdentifiersSetFromPlistValue:(id)value error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = valueCopy;
  if (!v7)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v22 = objc_opt_class();
              v23 = NSStringFromClass(v22);
              *buf = 138412546;
              v30 = v23;
              v31 = 2112;
              v32 = v8;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Generic extension client value is not in a valid format; expected = NSArray<NSString>, got = NSArray<%@>, value = %@", buf, 0x16u);
            }

            v15 = [[MCMError alloc] initWithErrorType:149 category:3];
            goto LABEL_20;
          }

          [v6 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v14 = [v6 copy];
    v15 = 0;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138412546;
    v30 = v21;
    v31 = 2112;
    v32 = v7;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Generic extension clients is not in a valid format; expected = NSArray, got = %@, value = %@", buf, 0x16u);
  }

  v15 = [[MCMError alloc] initWithErrorType:149 category:3];
LABEL_20:
  v14 = 0;
  if (error)
  {
LABEL_21:
    if (!v14)
    {
      v18 = v15;
      *error = v15;
    }
  }

LABEL_23:

  return v14;
}

- (id)_requiredEntitlementFromPlistValue:(id)value error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = valueCopy;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      valueCopy = 0;
    }

    else
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138412546;
        v13 = v11;
        v14 = 2112;
        v15 = v6;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Required entitlement is not in a valid format; expected = NSString, got = %@, value = %@", &v12, 0x16u);
      }

      valueCopy = [[MCMError alloc] initWithErrorType:149 category:3];
      v7 = 0;
      if (error && valueCopy)
      {
        valueCopy = valueCopy;
        v7 = 0;
        *error = valueCopy;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_sandboxAffordancesFromPlistValue:(id)value error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = objc_opt_new();
  if (!valueCopy)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = valueCopy;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      errorCopy = error;
      v25 = valueCopy;
      v11 = 0;
      v12 = *v34;
      while (2)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v33 + 1) + 8 * v13);
          v16 = [v8 objectForKeyedSubscript:{v15, errorCopy, v25}];
          v27 = v14;
          v17 = [(MCMContainerConfiguration *)self _containerIdentifierSetFromPlistValue:v16 error:&v27];
          v11 = v27;

          if (!v17)
          {

            v6 = 0;
            goto LABEL_19;
          }

          [v6 setObject:v17 forKeyedSubscript:v15];

          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v33 objects:v32 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_19:
      error = errorCopy;
      valueCopy = v25;
    }

    else
    {
      v11 = 0;
    }

    if (error)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138412546;
      v29 = v23;
      v30 = 2112;
      v31 = valueCopy;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Team ID container ID map is not in a valid format; expected = NSDictionary, got = %@, value = %@", buf, 0x16u);
    }

    v11 = [[MCMError alloc] initWithErrorType:149 category:3];
    v6 = 0;
    if (error)
    {
LABEL_22:
      if (!v6)
      {
        v19 = v11;
        *error = v11;
      }
    }
  }

LABEL_24:
  v20 = [v6 copy];

  return v20;
}

- (id)_containerIdentifierSetFromPlistValue:(id)value error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = valueCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412546;
      v31 = v22;
      v32 = 2112;
      v33 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Team ID container ID map value is not in a valid format; expected = NSArray, got = %@, value = %@", buf, 0x16u);
    }

    v16 = [[MCMError alloc] initWithErrorType:149 category:3];
LABEL_18:
    v15 = 0;
    if (!error)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!v15)
    {
      v19 = v16;
      *error = v16;
    }

    goto LABEL_21;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = container_log_handle_for_category();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = 138412546;
            v31 = v24;
            v32 = 2112;
            v33 = v8;
            _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Team ID container ID map value is not in a valid format; expected = NSArray<NSString>, got = NSArray<%@>, value = %@", buf, 0x16u);
          }

          v16 = [[MCMError alloc] initWithErrorType:149 category:3];
          goto LABEL_18;
        }

        lowercaseString = [v13 lowercaseString];
        [v6 addObject:lowercaseString];
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = [v6 copy];
  v16 = 0;
  if (error)
  {
    goto LABEL_19;
  }

LABEL_21:

  return v15;
}

- (id)_sandboxExtensionClassFromPlistValue:(id)value
{
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_containerClassFromPlistValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [valueCopy unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if ([(MCMContainerConfiguration *)equalCopy conformsToProtocol:&unk_1F5A802D0])
  {
    v6 = [(MCMContainerConfiguration *)self isEqualToContainerConfig:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToContainerConfig:(id)config
{
  configCopy = config;
  containerClass = [(MCMContainerConfiguration *)self containerClass];
  containerClass2 = [configCopy containerClass];

  return containerClass == containerClass2;
}

- (id)debugDescriptionWithIndentString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMContainerConfiguration;
  stringCopy = string;
  v5 = [(MCMPlistReadOnly *)&v9 descriptionOfBoolPropertiesWithIndentString:stringCopy];
  v6 = [v5 stringByAppendingFormat:@"%@containerClass: %llu\n", stringCopy, self->_containerClass];

  v7 = [v6 stringByAppendingFormat:@"%@name: %@\n", stringCopy, self->_name];

  return v7;
}

- (NSString)debugDescription
{

  return [(MCMContainerConfiguration *)self debugDescriptionWithIndentString:&stru_1F5A5B2B8];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  containerClass = [(MCMContainerConfiguration *)self containerClass];
  name = [(MCMContainerConfiguration *)self name];
  v6 = [v3 stringWithFormat:@"(%llu)%@", containerClass, name];

  return v6;
}

- (MCMContainerConfiguration)initWithPreprocessedPlist:(id)plist name:(id)name
{
  v12 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MCMContainerConfiguration;
  v8 = [(MCMPlistReadOnly *)&v11 initWithPreprocessedPlist:plist conformingToProtocol:&unk_1F5A802D0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
  }

  return v9;
}

@end
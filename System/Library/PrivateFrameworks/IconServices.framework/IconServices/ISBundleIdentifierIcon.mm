@interface ISBundleIdentifierIcon
- (ISBundleIdentifierIcon)initWithBundleIdentifier:(id)identifier;
- (ISBundleIdentifierIcon)initWithCoder:(id)coder;
- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)fallback;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISBundleIdentifierIcon

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  bundleIdentifier = self->_bundleIdentifier;
  digest = [(ISConcreteIcon *)self digest];
  v8 = [v3 initWithFormat:@"<%s %p>BundleID: %@ digest: %@", Name, self, bundleIdentifier, digest];

  return v8;
}

- (ISBundleIdentifierIcon)initWithBundleIdentifier:(id)identifier
{
  v57 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 stringByAppendingPathComponent:identifierCopy];

  v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  v10 = 0x1E696A000uLL;
  if (!v9)
  {
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([bundleRecordForCurrentProcess bundleIdentifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", identifierCopy), v12, (v13))
    {
      if (bundleRecordForCurrentProcess)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v9 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifierOfSystemPlaceholder:identifierCopy error:0];
    if (!v9)
    {
      alternateIconName = _ISDefaultLog(0);
      if (os_log_type_enabled(alternateIconName, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = identifierCopy;
        _os_log_impl(&dword_1A77B8000, alternateIconName, OS_LOG_TYPE_DEFAULT, "No record for %@", buf, 0xCu);
      }

      bundleRecordForCurrentProcess = 0;
      persistentIdentifier = 0;
      goto LABEL_25;
    }
  }

  bundleRecordForCurrentProcess = v9;
LABEL_9:
  if ([bundleRecordForCurrentProcess isPlaceholder])
  {
    v14 = [bundleRecordForCurrentProcess URL];
    __is__contentModifiedDate = [v14 __is__contentModifiedDate];

    v16 = MEMORY[0x1E696AEC0];
    [__is__contentModifiedDate timeIntervalSinceReferenceDate];
    v18 = [v16 stringWithFormat:@"%f", v17];
    v19 = [v8 stringByAppendingPathComponent:v18];

    v21 = _ISDefaultLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(ISBundleIdentifierIcon *)v19 initWithBundleIdentifier:v21, v22, v23, v24, v25, v26, v27];
    }

    persistentIdentifier = 0;
  }

  else
  {
    persistentIdentifier = [bundleRecordForCurrentProcess persistentIdentifier];

    if (!persistentIdentifier)
    {
      goto LABEL_18;
    }

    persistentIdentifier = [bundleRecordForCurrentProcess exactBundleVersion];
    v29 = MEMORY[0x1E696AFB0];
    persistentIdentifier2 = [bundleRecordForCurrentProcess persistentIdentifier];
    v31 = [v29 _IF_UUIDWithData:persistentIdentifier2];
    uUIDString = [v31 UUIDString];
    v19 = [identifierCopy stringByAppendingPathComponent:uUIDString];

    __is__contentModifiedDate = _ISDefaultLog(v33);
    if (os_log_type_enabled(__is__contentModifiedDate, OS_LOG_TYPE_DEBUG))
    {
      [(ISBundleIdentifierIcon *)v19 initWithBundleIdentifier:__is__contentModifiedDate, v34, v35, v36, v37, v38, v39];
    }

    v10 = 0x1E696A000;
  }

  v8 = v19;
LABEL_18:
  alternateIconName = [bundleRecordForCurrentProcess alternateIconName];
  if (!alternateIconName)
  {
LABEL_25:
    v41 = v8;
    goto LABEL_26;
  }

  v41 = [identifierCopy stringByAppendingPathComponent:alternateIconName];

  v43 = _ISDefaultLog(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [(ISBundleIdentifierIcon *)v41 initWithBundleIdentifier:v43, v44, v45, v46, v47, v48, v49];
  }

LABEL_26:
  v50 = [*(v10 + 4016) _IF_UUIDWithString:v41];
  v54.receiver = self;
  v54.super_class = ISBundleIdentifierIcon;
  v51 = [(ISConcreteIcon *)&v54 initWithDigest:v50];
  v52 = v51;
  if (v51)
  {
    objc_storeStrong(&v51->_bundleIdentifier, identifier);
    objc_storeStrong(&v52->_bundleVersion, persistentIdentifier);
  }

  return v52;
}

- (ISBundleIdentifierIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ISBundleIdentifierIcon;
  v5 = [(ISConcreteIcon *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleVersion"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISBundleIdentifierIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_bundleVersion forKey:@"bundleVersion"];
}

- (id)_makeResourceProviderAllowIconResourceFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:self->_bundleIdentifier allowPlaceholder:1 error:0];
  v6 = +[ISDefaults sharedInstance];
  enableAppIconOverides = [v6 enableAppIconOverides];

  if (!enableAppIconOverides || (+[ISCustomIconManager sharedInstance](ISCustomIconManager, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), [v8 overrideResourceForBundleIdentifier:self->_bundleIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:self->_bundleIdentifier error:0];
      v12 = 0;
      if ([v5 _IS_isMessagesExtension])
      {
        v12 = objc_opt_new();
      }

      if (([v5 _is_canProvideIconResources] & 1) == 0)
      {
        containingBundleRecord = [v5 containingBundleRecord];

        v5 = containingBundleRecord;
      }

      if (!v5)
      {
        v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifierOfSystemPlaceholder:self->_bundleIdentifier error:0];
        if (!v14)
        {
          v24 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:*MEMORY[0x1E6963738]];
          v11 = v24;
          if (v24)
          {
            v25 = v24;
          }

          v5 = 0;
LABEL_14:
          v15 = [[ISRecordResourceProvider alloc] initWithRecord:v11 options:0];
          if (v15)
          {
            v10 = v15;
            if (!fallbackCopy)
            {
              goto LABEL_25;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              containingBundleRecord2 = [v11 containingBundleRecord];

              v10 = [[ISRecordResourceProvider alloc] initWithRecord:containingBundleRecord2 options:0];
              v11 = containingBundleRecord2;
              if (!fallbackCopy)
              {
                goto LABEL_25;
              }
            }

            else
            {
              v10 = 0;
              if (!fallbackCopy)
              {
LABEL_25:
                suggestedRecipe = [(ISResourceProvider *)v10 suggestedRecipe];
                if (suggestedRecipe)
                {
                  suggestedRecipe2 = [(ISResourceProvider *)v10 suggestedRecipe];
                  [(ISResourceProvider *)v10 setSuggestedRecipe:suggestedRecipe2];
                }

                else
                {
                  [(ISResourceProvider *)v10 setSuggestedRecipe:v12];
                }

                [(ISResourceProvider *)v10 setResourceType:1];
                goto LABEL_29;
              }
            }
          }

          iconResource = [(ISRecordResourceProvider *)v10 iconResource];

          if (!iconResource)
          {
            v19 = _ISDefaultLog(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [(ISBundleIdentifierIcon *)&self->_bundleIdentifier _makeResourceProviderAllowIconResourceFallback:v10, v19];
            }

            v20 = +[ISResourceProvider defaultAppIconResourceProvider];

            [(ISResourceProvider *)v20 setPlaceholder:1];
            v10 = v20;
          }

          goto LABEL_25;
        }

        v5 = v14;
      }
    }

    v5 = v5;
    v11 = v5;
    goto LABEL_14;
  }

  v10 = [[ISResourceProvider alloc] initWithResource:v9 templateResource:0];

  v11 = 0;
LABEL_29:

  return v10;
}

- (void)initWithBundleIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, a2, a3, "Suffixed bundle ID: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithBundleIdentifier:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, a2, a3, "Placeholder bundle suffixed bundle ID: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithBundleIdentifier:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_1_0(&dword_1A77B8000, a2, a3, "Custom icon suffixed bundle ID: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_makeResourceProviderAllowIconResourceFallback:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Failed to find icon resources for bundle identifier %@ - %@. Creating placeholder provider", &v4, 0x16u);
}

@end
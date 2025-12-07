@interface ISBundleIcon
- (ISBundleIcon)initWithBundleURL:(id)l type:(id)type tag:(id)tag tagClass:(id)class;
- (ISBundleIcon)initWithCoder:(id)coder;
- (id)_makeAppResourceProvider;
- (id)_makeDocumentResourceProvider;
- (id)description;
- (id)makeResourceProvider;
- (void)_makeAppResourceProvider;
- (void)_makeDocumentResourceProvider;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISBundleIcon

- (ISBundleIcon)initWithBundleURL:(id)l type:(id)type tag:(id)tag tagClass:(id)class
{
  v45[2] = *MEMORY[0x1E69E9840];
  obj = l;
  lCopy = l;
  typeCopy = type;
  tagCopy = tag;
  classCopy = class;
  classCopy2 = class;
  absoluteString = [lCopy absoluteString];
  v14 = absoluteString;
  if (typeCopy)
  {
    v15 = [absoluteString stringByAppendingString:{typeCopy, obj, class}];

    v14 = v15;
  }

  if (tagCopy)
  {
    v16 = [v14 stringByAppendingString:tagCopy];

    v14 = v16;
  }

  v43 = typeCopy;
  if (classCopy2)
  {
    v17 = [v14 stringByAppendingString:classCopy2];

    v14 = v17;
  }

  v18 = [objc_alloc(MEMORY[0x1E69635F8]) initWithURL:lCopy allowPlaceholder:1 error:0];
  if (!v18)
  {
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([bundleRecordForCurrentProcess URL], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqual:", lCopy), v20, v21))
    {
      v18 = bundleRecordForCurrentProcess;
    }

    else
    {
      v18 = 0;
    }
  }

  alternateIconName = [v18 alternateIconName];
  v42 = classCopy2;
  if (alternateIconName)
  {
    v23 = [v14 stringByAppendingString:alternateIconName];

    v14 = v23;
  }

  __is__contentModifiedDate = [lCopy __is__contentModifiedDate];
  v25 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v14];
  v26 = MEMORY[0x1E696AFB0];
  [__is__contentModifiedDate timeIntervalSinceReferenceDate];
  v27 = [v26 _IF_UUIDWithDouble:?];
  v28 = MEMORY[0x1E696AFB0];
  v45[0] = v25;
  v45[1] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  v30 = [v28 _IF_UUIDByXORingUUIDs:v29];

  v44.receiver = self;
  v44.super_class = ISBundleIcon;
  v31 = [(ISConcreteIcon *)&v44 initWithDigest:v30];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_url, obja);
    v33 = [tagCopy copy];
    tag = v32->_tag;
    v32->_tag = v33;

    objc_storeStrong(&v32->_tagClass, classCopy);
    v35 = [v43 copy];
    type = v32->_type;
    v32->_type = v35;
  }

  return v32;
}

- (ISBundleIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ISBundleIcon;
  v5 = [(ISConcreteIcon *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURLString"];
    url = v5->_url;
    v5->_url = v6;
    v8 = v6;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tagClass"];
    tagClass = v5->_tagClass;
    v5->_tagClass = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISBundleIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"bundleURLString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_tag forKey:@"tag"];
  [coderCopy encodeObject:self->_tagClass forKey:@"tagClass"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
}

- (id)_makeDocumentResourceProvider
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6963798];
  if ([(NSURL *)self->_url __is_isApplication])
  {
    v4 = objc_alloc(MEMORY[0x1E69635F8]);
    url = self->_url;
    v27 = 0;
    containingBundleRecord = [v4 initWithURL:url allowPlaceholder:1 error:&v27];
    v7 = v27;
    v8 = v7;
    if (containingBundleRecord)
    {
LABEL_16:
      v9 = containingBundleRecord;
      goto LABEL_17;
    }

    v9 = _ISDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_url;
      *buf = 138412546;
      v30 = v10;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_DEFAULT, "Application record not found for URL %@ with error: %@", buf, 0x16u);
    }

LABEL_15:

    goto LABEL_16;
  }

  __is_isAppExtension = [(NSURL *)self->_url __is_isAppExtension];
  if (!__is_isAppExtension)
  {
    v15 = _ISDefaultLog(__is_isAppExtension);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(ISBundleIcon *)&self->_url _makeDocumentResourceProvider];
    }

    v9 = 0;
    v16 = 0;
    goto LABEL_22;
  }

  v12 = objc_alloc(MEMORY[0x1E69635D0]);
  v13 = self->_url;
  v26 = 0;
  v9 = [v12 initWithURL:v13 error:&v26];
  v14 = v26;
  v8 = v14;
  if (!v9)
  {
    v9 = _ISDefaultLog(v14);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_url;
      *buf = 138412546;
      v30 = v17;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_DEFAULT, "ApplicationExtension record not found for URL %@ with error: %@", buf, 0x16u);
    }

    containingBundleRecord = 0;
    goto LABEL_15;
  }

  if (([v9 _is_canProvideIconResources]& 1) == 0)
  {
    containingBundleRecord = [v9 containingBundleRecord];
    goto LABEL_15;
  }

LABEL_17:

  if (!v9)
  {
    goto LABEL_26;
  }

  if (self->_type)
  {
    v18 = [v9 _IS_iconDictionaryForType:?];
  }

  else
  {
    if (!self->_tag || !self->_tagClass)
    {
      goto LABEL_26;
    }

    v18 = [NSObject _IS_iconDictionaryForTag:v9 tagClass:"_IS_iconDictionaryForTag:tagClass:"];
  }

  v15 = v18;
  if (!v18)
  {
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  v28[0] = 0x1F1A4DBE0;
  v28[1] = 0x1F1A4F2E0;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v20 = [v15 _IF_stringForKeys:v19];

  v16 = [[ISBundleResourceProvider alloc] initWithBundleURL:self->_url iconDictionary:v15 options:v20 != 0];
LABEL_22:

LABEL_27:
  if (![(ISResourceProvider *)v16 options])
  {
    iconResource = [(ISBundleResourceProvider *)v16 iconResource];

    if (!iconResource)
    {
      v23 = _ISDefaultLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(ISBundleIcon *)&self->_url _makeDocumentResourceProvider];
      }

      v24 = +[ISResourceProvider defaultAppIconResourceProvider];

      v16 = v24;
    }
  }

  [(ISResourceProvider *)v16 setResourceType:2];

  return v16;
}

- (id)_makeAppResourceProvider
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(NSURL *)self->_url __is_isApplication])
  {
    v3 = objc_alloc(MEMORY[0x1E69635F8]);
    url = self->_url;
    v32 = 0;
    v5 = [v3 initWithURL:url allowPlaceholder:1 error:&v32];
    v6 = v32;
    v7 = v6;
    if (!v5)
    {
      v17 = _ISDefaultLog(v6);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_url;
        *buf = 138412546;
        v34 = v18;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&dword_1A77B8000, v17, OS_LOG_TYPE_DEFAULT, "Application record not found for URL %@ with error: %@", buf, 0x16u);
      }

      goto LABEL_17;
    }

    v8 = +[ISDefaults sharedInstance];
    if ([v8 enableAppIconOverides])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_16:
        v19 = v5;
LABEL_17:
        v8 = 0;
        containingBundleRecord = v5;
        goto LABEL_18;
      }

      v8 = v5;
      v10 = +[ISCustomIconManager sharedInstance];
      bundleIdentifier = [v8 bundleIdentifier];
      v12 = [v10 overrideResourceForBundleIdentifier:bundleIdentifier];

      if (v12)
      {
        v13 = [[ISResourceProvider alloc] initWithResource:v12 templateResource:0];

        goto LABEL_36;
      }
    }

    goto LABEL_16;
  }

  if (![(NSURL *)self->_url __is_isAppExtension])
  {
    v8 = 0;
    v7 = 0;
LABEL_21:
    v22 = [MEMORY[0x1E69A8960] bundleWithURL:self->_url];
    if (v22)
    {
      v13 = [[ISBundleResourceProvider alloc] initWithBundle:v22 options:0];
    }

    else
    {
      v23 = _ISDefaultLog(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [(ISBundleIcon *)&self->_url _makeAppResourceProvider];
      }

      v13 = 0;
    }

    goto LABEL_27;
  }

  v14 = objc_alloc(MEMORY[0x1E69635D0]);
  v15 = self->_url;
  v31 = 0;
  v5 = [v14 initWithURL:v15 error:&v31];
  v16 = v31;
  v7 = v16;
  if (v5)
  {
    if ([v5 _IS_isMessagesExtension])
    {
      v8 = objc_opt_new();
    }

    else
    {
      v8 = 0;
    }

    if (([v5 _is_canProvideIconResources]& 1) != 0)
    {
      v21 = v7;
      v7 = v5;
      goto LABEL_19;
    }

    containingBundleRecord = [v5 containingBundleRecord];
  }

  else
  {
    v5 = _ISDefaultLog(v16);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_url;
      *buf = 138412546;
      v34 = v30;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_1A77B8000, v5, OS_LOG_TYPE_DEFAULT, "ApplicationExtension record not found for URL %@ with error: %@", buf, 0x16u);
    }

    v8 = 0;
    containingBundleRecord = 0;
  }

LABEL_18:

  v21 = v7;
  v7 = containingBundleRecord;
LABEL_19:

  if (!v7)
  {
    goto LABEL_21;
  }

  v13 = [[ISRecordResourceProvider alloc] initWithRecord:v7 options:0];
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_27:
  iconResource = [(ISBundleResourceProvider *)v13 iconResource];
  if (iconResource)
  {
  }

  else
  {
    customRecipe = [(ISResourceProvider *)v13 customRecipe];

    if (!customRecipe)
    {
      v27 = _ISDefaultLog(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(ISBundleIcon *)&self->_url _makeAppResourceProvider];
      }

      v28 = +[ISResourceProvider defaultAppIconResourceProvider];

      [(ISResourceProvider *)v28 setPlaceholder:1];
      v13 = v28;
    }
  }

  if (v8)
  {
    [(ISResourceProvider *)v13 setSuggestedRecipe:v8];
  }

  [(ISResourceProvider *)v13 setResourceType:1];
LABEL_36:

  return v13;
}

- (id)makeResourceProvider
{
  if (self->_tag && self->_tagClass || self->_type)
  {
    _makeDocumentResourceProvider = [(ISBundleIcon *)self _makeDocumentResourceProvider];
  }

  else
  {
    _makeDocumentResourceProvider = [(ISBundleIcon *)self _makeAppResourceProvider];
  }

  return _makeDocumentResourceProvider;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  url = self->_url;
  type = self->_type;
  tag = self->_tag;
  tagClass = self->_tagClass;
  digest = [(ISConcreteIcon *)self digest];
  v11 = [v3 initWithFormat:@"<%s %p> Bundle URL: %@ type: %@ tag: %@ tag class: %@ digest:%@", Name, self, url, type, tag, tagClass, digest];

  return v11;
}

- (void)_makeDocumentResourceProvider
{
  path = [*self path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_1A77B8000, v2, v3, "Failed to find document icon resources for %@ - %@. Creating placeholder provider", v4, v5, v6, v7);
}

- (void)_makeAppResourceProvider
{
  path = [*self path];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_3(&dword_1A77B8000, v2, v3, "Failed to find icon resources for %@ - %@. Creating placeholder provider", v4, v5, v6, v7);
}

@end
@interface LSResourceProxy
- (BOOL)boundIconIsBadge;
- (LSIconResourceLocator)iconResourceLocator;
- (LSResourceProxy)initWithCoder:(id)coder;
- (NSDictionary)iconsDictionary;
- (NSString)primaryIconName;
- (id)_initWithLocalizedName:(id)name;
- (id)_privateDocumentFileNamesAsCacheKey;
- (id)iconDataForVariant:(int)variant;
- (id)iconDataForVariant:(int)variant withOptions:(int)options;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)primaryIconName;
@end

@implementation LSResourceProxy

- (id)_initWithLocalizedName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = LSResourceProxy;
  _init = [(_LSQueryResult *)&v11 _init];
  if (_init)
  {
    v6 = [nameCopy copy];
    v7 = _init[1];
    _init[1] = v6;

    if (IconServicesLibrary_frameworkLibrary_3 || (IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      v8 = objc_alloc_init(_LSBoundIconInfo);
      v9 = _init[2];
      _init[2] = v8;
    }
  }

  return _init;
}

- (BOOL)boundIconIsBadge
{
  if (IconServicesLibrary_frameworkLibrary_3 || (v3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_3 = v3) != 0))
  {
    _boundIconInfo = [(LSResourceProxy *)self _boundIconInfo];
    isBadge = [(_LSBoundIconInfo *)_boundIconInfo isBadge];

    LOBYTE(v3) = isBadge;
  }

  return v3;
}

- (LSResourceProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = LSResourceProxy;
  v5 = [(_LSQueryResult *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    if (IconServicesLibrary_frameworkLibrary_3)
    {
      v8 = &OBJC_IVAR___LSResourceProxy___boundIconInfo;
      v9 = @"boundIconInfo";
    }

    else
    {
      v10 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
      IconServicesLibrary_frameworkLibrary_3 = v10;
      if (v10)
      {
        v9 = @"boundIconInfo";
      }

      else
      {
        v9 = @"iconsDictionary";
      }

      if (v10)
      {
        v8 = &OBJC_IVAR___LSResourceProxy___boundIconInfo;
      }

      else
      {
        v8 = &OBJC_IVAR___LSResourceProxy___iconsDictionary;
      }
    }

    v11 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:v9];
    v12 = *v8;
    v13 = *(&v5->super.super.isa + v12);
    *(&v5->super.super.isa + v12) = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
  v4 = @"boundIconInfo";
  v5 = &OBJC_IVAR___LSResourceProxy___boundIconInfo;
  if (!IconServicesLibrary_frameworkLibrary_3)
  {
    IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    if (!IconServicesLibrary_frameworkLibrary_3)
    {
      v5 = &OBJC_IVAR___LSResourceProxy___iconsDictionary;
      v4 = @"iconsDictionary";
    }
  }

  [coderCopy encodeObject:*(&self->super.super.isa + *v5) forKey:v4];
}

- (id)uniqueIdentifier
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unimplemented exception" reason:@"Subclasses must implement -uniqueIdentifier" userInfo:0];
  objc_exception_throw(v2);
}

- (LSIconResourceLocator)iconResourceLocator
{
  if (IconServicesLibrary_frameworkLibrary_3 || (_boundIconInfo = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_3 = _boundIconInfo) != 0))
  {
    _boundIconInfo = [(LSResourceProxy *)self _boundIconInfo];
  }

  return _boundIconInfo;
}

- (NSDictionary)iconsDictionary
{
  if (IconServicesLibrary_frameworkLibrary_3 || (IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    _boundIconInfo = [(LSResourceProxy *)self _boundIconInfo];
    iconsDictionary = [(_LSBoundIconInfo *)_boundIconInfo iconsDictionary];
    propertyList = [(_LSLazyPropertyList *)iconsDictionary propertyList];
  }

  else
  {
    _boundIconInfo = [(LSResourceProxy *)self _iconsDictionary];
    propertyList = [(_LSLazyPropertyList *)_boundIconInfo propertyList];
  }

  return propertyList;
}

- (NSString)primaryIconName
{
  if (IconServicesLibrary_frameworkLibrary_3 || (IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    _boundIconInfo = [(LSResourceProxy *)self _boundIconInfo];
    iconsDictionary = [(_LSBoundIconInfo *)_boundIconInfo iconsDictionary];

    if (iconsDictionary)
    {
      goto LABEL_4;
    }
  }

  else
  {
    iconsDictionary = [(LSResourceProxy *)self _iconsDictionary];
    if (iconsDictionary)
    {
LABEL_4:
      v5 = [iconsDictionary objectForKey:@"CFBundlePrimaryIcon" ofClass:0];
      if (_NSIsNSDictionary())
      {
        v6 = [v5 objectForKey:@"CFBundleIconName"];
      }

      else
      {
        if (!_NSIsNSString())
        {
          goto LABEL_13;
        }

        v6 = v5;
      }

      v7 = v6;
      if (!v6)
      {
        goto LABEL_14;
      }

      v8 = _NSIsNSString();
      if (v8)
      {
        goto LABEL_14;
      }

      v9 = _LSDefaultLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(LSResourceProxy *)v7 primaryIconName];
      }

LABEL_13:
      v7 = 0;
LABEL_14:

      goto LABEL_17;
    }
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (id)iconDataForVariant:(int)variant
{
  v3 = *&variant;
  if (IconServicesLibrary_frameworkLibrary_3 || (v5 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_3 = v5) != 0))
  {
    v5 = [(LSResourceProxy *)self iconDataForVariant:v3 withOptions:0];
  }

  return v5;
}

- (id)_privateDocumentFileNamesAsCacheKey
{
  v20 = *MEMORY[0x1E69E9840];
  _boundIconInfo = [(LSResourceProxy *)self _boundIconInfo];
  fileNames = [(_LSBoundIconInfo *)_boundIconInfo fileNames];

  if (fileNames)
  {
    v4 = MEMORY[0x1E695DF70];
    fileNames2 = [(_LSBoundIconInfo *)_boundIconInfo fileNames];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(fileNames2, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    fileNames3 = [(_LSBoundIconInfo *)_boundIconInfo fileNames];
    v8 = [fileNames3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(fileNames3);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"/" withString:{@":", v15}];
          [v6 addObject:v12];
        }

        v9 = [fileNames3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [v6 componentsJoinedByString:@"_"];
  }

  else
  {
    v13 = @"defaultIcon";
  }

  return v13;
}

- (id)iconDataForVariant:(int)variant withOptions:(int)options
{
  v4 = *&options;
  v5 = *&variant;
  if (IconServicesLibrary_frameworkLibrary_3 || (v7 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_3 = v7) != 0))
  {
    v7 = softLink_ISIconDataForResourceProxy_1(self, v5, v4);
  }

  return v7;
}

- (void)primaryIconName
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = objc_opt_class();
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Expected icon name to be a string, but it was a %{public}@", &v3, 0xCu);
}

@end
@interface _ACPluginDBBundle
- (_ACPluginDBBundle)initWithCoder:(id)coder;
- (_ACPluginDBBundle)initWithPath:(id)path infoPlistModDate:(double)date rsrcModDate:(double)modDate;
- (__n128)scanWithPriority:loadable:infoPlistPath:;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)scanWithPriority:(int)priority loadable:(BOOL)loadable infoPlistPath:(id)path;
- (void)scanWithPriority:loadable:infoPlistPath:;
@end

@implementation _ACPluginDBBundle

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 56) = 1;
  return self;
}

- (void)scanWithPriority:(int)priority loadable:(BOOL)loadable infoPlistPath:(id)path
{
  v37 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  priorityCopy = priority;
  loadableCopy = loadable;
  pathCopy = path;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::clear[abi:ne200100](&self->mBundleComponentVector);
  self->mBundleComponentVector.mSorted = 1;
  v7 = MEMORY[0x1E695DF20];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  v25 = 0;
  v9 = [v7 dictionaryWithContentsOfURL:v8 error:&v25];
  v10 = v25;

  if (v10)
  {
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v11 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315906;
      *&cf[4] = "AudioComponentPluginScanner.mm";
      v31 = 1024;
      v32 = 167;
      v33 = 2112;
      v34 = pathCopy;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_18F5DF000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't read %@ error: %@", cf, 0x26u);
    }
  }

  else
  {
    v12 = [v9 objectForKeyedSubscript:@"AudioComponents"];
    if (v12)
    {
      array = [MEMORY[0x1E695DEC8] array];
      applesauce::CF::ArrayRef::from_ns(cf, array);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        applesauce::CF::ArrayRef::from_ns(&v24, v12);
        v14 = *cf;
        *cf = v24;
        v24 = v14;
        if (v14)
        {
          CFRelease(v14);
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v12, 0}];
          applesauce::CF::ArrayRef::from_ns(&v24, v16);
          v17 = *cf;
          *cf = v24;
          v24 = v17;
          if (v17)
          {
            CFRelease(v17);
          }
        }
      }

      v18 = self->mFullPath;
      v19 = v18;
      if (v18)
      {
        CFRetain(v18);
        v24 = v19;
        v20 = CFGetTypeID(v19);
        if (v20 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v24 = 0;
      }

      [MEMORY[0x1E696AAE8] bundleWithPath:self->mFullPath];
      executableArchitectures = [objc_claimAutoreleasedReturnValue() executableArchitectures];
      applesauce::CF::ArrayRef::from_ns(&v23, executableArchitectures);

      v29 = 0;
      operator new();
    }
  }
}

- (void)scanWithPriority:loadable:infoPlistPath:
{
  if (*(a2 + 40) != 0)
  {
    if (**(self + 8) == 1)
    {
      v3 = *(self + 24);
      v4 = **(self + 16);
      v5 = 0;
      APComponent_FromBundle_Loadable::create_shared(&v6, v4, v3, &v5, *(self + 32), a2);
    }

    operator new();
  }
}

- (__n128)scanWithPriority:loadable:infoPlistPath:
{
  *a2 = &unk_1F033C8F8;
  result = *(self + 8);
  v3 = *(self + 24);
  *(a2 + 40) = *(self + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->mFullPath forKey:@"path"];
  [coderCopy encodeDouble:@"infoPlistModDate" forKey:self->mInfoPlistModDate];
  v4 = [[_ACComponentVector alloc] initWithVector:&self->mBundleComponentVector];
  [coderCopy encodeObject:v4 forKey:@"components"];
}

- (_ACPluginDBBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
  mFullPath = self->mFullPath;
  self->mFullPath = v5;

  [coderCopy decodeDoubleForKey:@"infoPlistModDate"];
  self->mInfoPlistModDate = v7;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"components"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (&self->mBundleComponentVector != (v8 + 8))
    {
      std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(&self->mBundleComponentVector, *(v8 + 8), *(v8 + 16), (*(v8 + 16) - *(v8 + 8)) >> 4);
    }

    self->mBundleComponentVector.mSorted = *(v8 + 32);
  }

  return self;
}

- (_ACPluginDBBundle)initWithPath:(id)path infoPlistModDate:(double)date rsrcModDate:(double)modDate
{
  objc_storeStrong(&self->mFullPath, path);
  self->mInfoPlistModDate = date;
  self->mRsrcModDate = modDate;
  return self;
}

@end
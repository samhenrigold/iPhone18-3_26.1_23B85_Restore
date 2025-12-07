@interface _ACPluginDB
+ (id)path;
- (AudioComponentVector)postInit:(SEL)init;
- (_ACPluginDB)init;
- (_ACPluginDB)initWithCoder:(id)coder;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)initialScanDirectory:(id)directory priority:(int)priority components:(void *)components;
@end

@implementation _ACPluginDB

+ (id)path
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 stringByAppendingPathComponent:@"com.apple.audio.components"];

  return v4;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 11) = 0;
  return self;
}

- (void)initialScanDirectory:(id)directory priority:(int)priority components:(void *)components
{
  v6 = *&priority;
  v21 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  uTF8String = [directoryCopy UTF8String];
  if (!access(uTF8String, 5))
  {

    v11 = [(NSMutableDictionary *)self->mSearchDirectories objectForKeyedSubscript:directoryCopy];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong((v11 + 8), self);
      if (v12[3] == v12[7])
      {
        [v12 loadAllComponents:components];
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v14 = [[_ACPluginDBDirectory alloc] initWithPath:directoryCopy priority:v6];
      objc_storeStrong(&v14->mDB, self);
      [(NSMutableDictionary *)self->mSearchDirectories setObject:v14 forKeyedSubscript:directoryCopy];
      self->mDirty = 1;
      v12 = v14;
    }

    [v12 scanDirectory];
    [v12 loadAllComponents:components];
    goto LABEL_13;
  }

  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v10 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315650;
    v16 = "AudioComponentPluginScanner.mm";
    v17 = 1024;
    v18 = 647;
    v19 = 2080;
    v20 = uTF8String;
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d ACPL: can't access %s", &v15, 0x1Cu);
  }

LABEL_14:
}

- (AudioComponentVector)postInit:(SEL)init
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = dispatch_queue_create("AudioComponentPluginScanner", 0);
  mDispatchQueue = self->mDispatchQueue;
  self->mDispatchQueue = v7;

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->mSorted = 1;
  v32 = a4;
  if (!a4)
  {
    v9 = getenv("HOME");
    v48 = "";
    v49 = "/AppleInternal";
    v50 = 0;
    if (v9)
    {
      v10 = 40;
      v11 = 8;
      do
      {
        snprintf(__str, 0x400uLL, "%s/Library/Audio/Plug-Ins/Components", v9);
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__str];
        [(_ACPluginDB *)self initialScanDirectory:v12 priority:v10 components:retstr];

        v10 = (v10 - 1);
        v9 = *&v47[v11 + 128];
        v11 += 8;
      }

      while (v9);
    }
  }

  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v13 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
  {
    *__str = 136315394;
    v52 = "AudioComponentPluginScanner.mm";
    v53 = 1024;
    v54 = 608;
    _os_log_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d ACPL: loading complete", __str, 0x12u);
  }

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  allKeys = [(NSMutableDictionary *)self->mSearchDirectories allKeys];
  v18 = [allKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v18)
  {
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        v22 = [(NSMutableDictionary *)self->mSearchDirectories objectForKeyedSubscript:v21];
        if (v22[1])
        {
          [v16 addObject:v22];
        }

        else
        {
          [v15 addObject:v21];
        }
      }

      v18 = [allKeys countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v18);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = v15;
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v24)
  {
    v25 = *v38;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [(NSMutableDictionary *)self->mSearchDirectories removeObjectForKey:*(*(&v37 + 1) + 8 * j)];
        self->mDirty = 1;
      }

      v24 = [v23 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v24);
  }

  [(_ACPluginDB *)self writeIfDirty];
  if (!v32)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v28)
    {
      v29 = *v34;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v33 + 1) + 8 * k) monitorDirectory];
        }

        v28 = [v27 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v28);
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:3 forKey:@"version"];
  [coderCopy encodeObject:self->mSearchDirectories forKey:@"directories"];
}

- (_ACPluginDB)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy decodeInt32ForKey:@"version"] == 3)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"directories"];
    mSearchDirectories = self->mSearchDirectories;
    self->mSearchDirectories = v8;
  }

  else
  {
    self = [(_ACPluginDB *)self init];
  }

  selfCopy = self;

  return selfCopy;
}

- (_ACPluginDB)init
{
  v3 = objc_opt_new();
  mSearchDirectories = self->mSearchDirectories;
  self->mSearchDirectories = v3;

  return self;
}

@end
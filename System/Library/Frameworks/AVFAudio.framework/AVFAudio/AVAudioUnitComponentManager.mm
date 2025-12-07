@interface AVAudioUnitComponentManager
+ (AVAudioUnitComponentManager)sharedAudioUnitComponentManager;
+ (void)privateAllocInitSingleton;
- (AVAudioUnitComponentManager)init;
- (NSArray)componentsMatchingDescription:(AudioComponentDescription *)desc;
- (NSArray)componentsMatchingPredicate:(NSPredicate *)predicate;
- (NSArray)componentsPassingTest:(void *)testHandler;
- (NSArray)standardLocalizedTagNames;
- (NSArray)tagNames;
- (void)localeChanged:(id)changed;
- (void)registrationsChanged:(id)changed;
@end

@implementation AVAudioUnitComponentManager

+ (void)privateAllocInitSingleton
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___AVAudioUnitComponentManager;
  allocWithZone_ = [objc_msgSendSuper2(&v4 allocWithZone_];
  v3 = gAVAudioUnitComponentManager;
  gAVAudioUnitComponentManager = allocWithZone_;
}

+ (AVAudioUnitComponentManager)sharedAudioUnitComponentManager
{
  pthread_once(&gAVAudioUnitComponentManagerInitOnce, AVAudioUnitComponentManagerInitOnce);
  v2 = gAVAudioUnitComponentManager;

  return v2;
}

- (NSArray)componentsMatchingDescription:(AudioComponentDescription *)desc
{
  v22 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v6 = *(self->_impl + 1);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v15 = *&desc->componentType;
        componentFlagsMask = desc->componentFlagsMask;
        if ([v12 isComponentDescriptionMatch:&v15])
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];

  std::mutex::unlock((impl + 32));

  return v13;
}

- (NSArray)componentsPassingTest:(void *)testHandler
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = testHandler;
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v6 = *(self->_impl + 1);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (v4[2](v4, v12, &v19))
      {
        [v7 addObject:{v12, v15}];
      }

      if (v19)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];

  std::mutex::unlock((impl + 32));

  return v13;
}

- (NSArray)componentsMatchingPredicate:(NSPredicate *)predicate
{
  v4 = predicate;
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v6 = [*(self->_impl + 1) filteredArrayUsingPredicate:v4];
  std::mutex::unlock((impl + 32));

  return v6;
}

- (NSArray)standardLocalizedTagNames
{
  impl = self->_impl;
  v3 = *(impl + 3);
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&standardTagNamesKeys count:22];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(impl + 3);
    *(impl + 3) = v5;

    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.audio.units.Components"];
    if (v7)
    {
      for (i = 0; [v4 count] > i; ++i)
      {
        v9 = [v4 objectAtIndex:i];
        v10 = [v7 localizedStringForKey:v9 value:&stru_1F384E730 table:@"AudioUnitTags"];
        [*(impl + 3) addObject:v10];
      }
    }

    v3 = *(impl + 3);
  }

  v11 = v3;
  v12 = [v11 copy];

  return v12;
}

- (NSArray)tagNames
{
  v2 = [*(self->_impl + 2) copy];

  return v2;
}

- (void)registrationsChanged:(id)changed
{
  v35 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:*(impl + 1)];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  memset(&inDesc, 0, sizeof(inDesc));
  for (i = AudioComponentFindNext(0, &inDesc); i; i = AudioComponentFindNext(i, &inDesc))
  {
    memset(&outDesc, 0, sizeof(outDesc));
    AudioComponentGetDescription(i, &outDesc);
    if (HIWORD(outDesc.componentType) == 24949)
    {
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v8)
      {
        v9 = *v31;
        while (2)
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v30 + 1) + 8 * j);
            if ([v11 audioComponent] == i)
            {
              if (v11)
              {
                objc_msgSend_audioComponentDescription(v11);
              }

              else
              {
                v27 = 0uLL;
                v28 = 0;
              }

              *&v29.componentType = v27;
              v26 = *&outDesc.componentType;
              if (v27 == *&outDesc.componentType && DWORD2(v27) == outDesc.componentManufacturer)
              {
                [v22 removeObject:v11];
                v14 = v11;

                goto LABEL_20;
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v13 = [AVAudioUnitComponent alloc];
      v29 = outDesc;
      v14 = [(AVAudioUnitComponent *)v13 initWithComponentDescription:&v29 withAVAUManagerImpl:impl];
      [v21 addObject:v14];
LABEL_20:
      v15 = MEMORY[0x1E695DFD8];
      allTagNames = [(AVAudioUnitComponent *)v14 allTagNames];
      v17 = [v15 setWithArray:allTagNames];

      [v5 unionSet:v17];
    }
  }

  if ([v21 count] || objc_msgSend(v22, "count"))
  {
    [v4 removeObjectsInArray:v22];
    [v4 addObjectsFromArray:v21];
    std::mutex::lock((impl + 32));
    [*(impl + 1) removeAllObjects];
    [*(impl + 1) addObjectsFromArray:v4];
    [*(impl + 2) removeAllObjects];
    v18 = *(impl + 2);
    allObjects = [v5 allObjects];
    [v18 addObjectsFromArray:allObjects];

    std::mutex::unlock((impl + 32));
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AVAudioUnitComponentManagerRegistrationsChangedNotification" object:self];
}

- (void)localeChanged:(id)changed
{
  v15 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  std::mutex::lock((impl + 32));
  v5 = *(self->_impl + 1);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) localeChanged];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  std::mutex::unlock((impl + 32));
}

- (AVAudioUnitComponentManager)init
{
  v3.receiver = self;
  v3.super_class = AVAudioUnitComponentManager;
  if ([(AVAudioUnitComponentManager *)&v3 init])
  {
    operator new();
  }

  return 0;
}

@end
@interface CFPrefsManagedSource
- (id)initWithDomain:(uint64_t)domain user:(uint64_t)user byHost:(uint64_t)host containingPreferences:;
- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from;
@end

@implementation CFPrefsManagedSource

- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from
{
  v19 = *MEMORY[0x1E69E9840];
  if (count >= 1)
  {
    countCopy = count;
    do
    {
      v10 = *keys;
      v11 = *values;
      alreadylocked_copyDictionary = [(CFPrefsPlistSource *)self alreadylocked_copyDictionary];
      if (alreadylocked_copyDictionary)
      {
        v13 = alreadylocked_copyDictionary;
        MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, alreadylocked_copyDictionary);
        if (!MutableCopy)
        {
          MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        CFRelease(v13);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      if (v11)
      {
        CFDictionarySetValue(MutableCopy, v10, v11);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, v10);
      }

      bzero(v18, 0x400uLL);
      userIdentifier = [(CFPrefsPlistSource *)self userIdentifier];
      if (CFEqual(userIdentifier, @"kCFPreferencesCurrentUser"))
      {
        userIdentifier = CFCopyUserName();
      }

      else
      {
        CFRetain(userIdentifier);
      }

      if (_CFPrefsGetPathForManagedBundleID([(CFPrefsPlistSource *)self domainIdentifier], userIdentifier, 0, v18))
      {
        v16 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v18);
        if (v16)
        {
          v17 = v16;
          _CFPreferencesWriteDomainDictionaryToPath(MutableCopy, v16, [(CFPrefsPlistSource *)self domainIdentifier]);
          CFRelease(v17);
        }
      }

      CFRelease(userIdentifier);
      CFRelease(MutableCopy);
      ++values;
      ++keys;
      --countCopy;
    }

    while (countCopy);
  }

  atomic_fetch_add(&self->super.super._generationCount, 1uLL);
}

- (id)initWithDomain:(uint64_t)domain user:(uint64_t)user byHost:(uint64_t)host containingPreferences:
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5.receiver = result;
    v5.super_class = CFPrefsManagedSource;
    return objc_msgSendSuper2(&v5, sel_initWithDomain_user_byHost_containerPath_containingPreferences_, a2, domain, user, 0, host);
  }

  return result;
}

@end
@interface CFPrefsSource
- (BOOL)alreadylocked_requestNewData;
- (CFPrefsSource)initWithContainingPreferences:(id)preferences;
- (__CFArray)alreadylocked_copyKeyList;
- (__CFDictionary)alreadylocked_copyDictionary;
- (__CFString)copyOSLogDescription;
- (id)copyVolatileSourceWithContainingPreferences:(id)preferences;
- (id)description;
- (os_unfair_lock_s)copyDictionary;
- (os_unfair_lock_s)copyKeyList;
- (uint64_t)alreadylocked_addPreferencesObserver:(uint64_t)observer;
- (uint64_t)alreadylocked_removePreferencesObserver:(uint64_t)observer;
- (uint64_t)validateValue:(CFTypeRef)cf1 forKey:(const __CFDictionary *)key inDict:(int)dict forWriting:;
- (void)_notifyObserversOfChangeFromValuesForKeys:(id)keys toValuesForKeys:(id)forKeys;
- (void)alreadylocked_copyValueForKey:(__CFString *)key;
- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from;
- (void)copyValueForKey:(__CFString *)key;
- (void)dealloc;
- (void)forEachObserver:(uint64_t)observer;
- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator;
- (void)removeAllValues_from:(os_unfair_lock_s *)values_from;
- (void)replaceAllValuesWithValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count from:;
- (void)setValue:(uint64_t)value forKey:(uint64_t)key from:;
- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count copyValues:(uint64_t)copyValues from:;
- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count copyValues:(uint64_t)copyValues removeValuesForKeys:(unint64_t)forKeys count:(uint64_t)a8 from:;
@end

@implementation CFPrefsSource

- (__CFDictionary)alreadylocked_copyDictionary
{
  os_unfair_lock_assert_owner(&self->_lock);
  dict = self->_dict;
  if (!dict || CFDictionaryGetCount(dict) < 1)
  {
    return 0;
  }

  v4 = self->_dict;

  return CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, v4);
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  dict = self->_dict;
  if (dict)
  {
    CFRelease(dict);
  }

  self->_dict = 0;

  v4.receiver = self;
  v4.super_class = CFPrefsSource;
  [(CFPrefsSource *)&v4 dealloc];
}

- (os_unfair_lock_s)copyDictionary
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 13);
    alreadylocked_copyDictionary = [(os_unfair_lock_s *)v1 alreadylocked_copyDictionary];
    os_unfair_lock_unlock(v1 + 13);
    return alreadylocked_copyDictionary;
  }

  return result;
}

- (__CFString)copyOSLogDescription
{
  ClassName = object_getClassName(self);
  domainIdentifier = [(CFPrefsSource *)self domainIdentifier];
  userIdentifier = [(CFPrefsSource *)self userIdentifier];
  isByHost = [(CFPrefsSource *)self isByHost];
  container = [(CFPrefsSource *)self container];
  v8 = atomic_load(&self->shmemEntry);
  v9 = "No";
  if (v8 && ((v10 = atomic_load(v8), v10 == -1) || (v11 = atomic_load(&self->lastKnownShmemState), v10 == v11)))
  {
    v12 = "No";
  }

  else
  {
    v12 = "Yes";
  }

  if (isByHost)
  {
    v9 = "Yes";
  }

  return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s<%p> (Domain: %@, User: %@, ByHost: %s, Container: %@, Contents Need Refresh: %s)", ClassName, self, domainIdentifier, userIdentifier, v9, container, v12);
}

- (os_unfair_lock_s)copyKeyList
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 13);
    alreadylocked_copyKeyList = [(os_unfair_lock_s *)v1 alreadylocked_copyKeyList];
    os_unfair_lock_unlock(v1 + 13);
    return alreadylocked_copyKeyList;
  }

  return result;
}

- (__CFArray)alreadylocked_copyKeyList
{
  v16[1] = *MEMORY[0x1E69E9840];
  alreadylocked_copyDictionary = [(CFPrefsSource *)self alreadylocked_copyDictionary];
  if (alreadylocked_copyDictionary)
  {
    v3 = alreadylocked_copyDictionary;
    Count = CFDictionaryGetCount(alreadylocked_copyDictionary);
    v7 = Count;
    if (Count >> 60)
    {
      v14 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
      v15 = [NSException exceptionWithName:@"NSGenericException" reason:v14 userInfo:0];
      CFRelease(v14);
      objc_exception_throw(v15);
    }

    if (Count <= 1)
    {
      Count = 1;
    }

    v8 = MEMORY[0x1EEE9AC00](Count, v5, v6);
    v10 = (v16 - v9);
    v16[0] = 0;
    if (v7 >= 0x101)
    {
      v10 = _CFCreateArrayStorage(v8, 0, v16);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    CFDictionaryGetKeysAndValues(v3, v10, 0);
    v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, v10, v7, &kCFTypeArrayCallBacks);
    CFRelease(v3);
    free(v11);
    return v13;
  }

  else
  {

    return CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }
}

- (CFPrefsSource)initWithContainingPreferences:(id)preferences
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CFPrefsSource;
  result = [(CFPrefsSource *)&v5 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    atomic_store(&sentinelGeneration, &result->shmemEntry);
    result->_containingPreferences = preferences;
    result->_isSearchList = 0;
  }

  return result;
}

- (id)copyVolatileSourceWithContainingPreferences:(id)preferences
{
  os_unfair_lock_lock(&self->_lock);
  if ([(CFPrefsSource *)self isVolatile])
  {
    v5 = [[CFPrefsSource alloc] initWithContainingPreferences:preferences];
    dict = self->_dict;
    if (dict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, dict);
      if (MutableCopy)
      {
        v8 = MutableCopy;
        v9 = v5->_dict;
        if (v9)
        {
          CFRelease(v9);
        }

        v5->_dict = v8;
      }
    }

    v10 = atomic_load(&self->_generationCount);
    atomic_store(v10, &v5->_generationCount);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (uint64_t)alreadylocked_addPreferencesObserver:(uint64_t)observer
{
  if (!observer || !a2)
  {
    return 0;
  }

  os_unfair_lock_assert_owner((observer + 52));
  v4 = *(observer + 24);
  if (!v4)
  {
    v4 = objc_alloc_init(__CFPrefsWeakObservers);
    *(observer + 24) = v4;
  }

  [(__CFPrefsWeakObservers *)v4 addObject:a2];

  return [observer alreadylocked_updateObservingRemoteChanges];
}

- (void)forEachObserver:(uint64_t)observer
{
  v17 = *MEMORY[0x1E69E9840];
  if (observer)
  {
    os_unfair_lock_lock((observer + 52));
    v4 = *(observer + 24);
    if (v4)
    {
      approximateCount = [v4 approximateCount];
      v8 = approximateCount;
      if (approximateCount >> 60)
      {
        v14 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", approximateCount);
        v15 = [NSException exceptionWithName:@"NSGenericException" reason:v14 userInfo:0];
        CFRelease(v14);
        objc_exception_throw(v15);
      }

      if (approximateCount <= 1)
      {
        approximateCount = 1;
      }

      v9 = MEMORY[0x1EEE9AC00](approximateCount, v6, v7);
      v11 = (&v16 - v10);
      v16 = 0;
      if (v8 >= 0x101)
      {
        v11 = _CFCreateArrayStorage(v9, 0, &v16);
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = [*(observer + 24) borrowObjects:v11 count:{v8, v16, v17}];
      os_unfair_lock_unlock((observer + 52));
      for (; v13; --v13)
      {
        (*(a2 + 16))(a2, *v11);
      }

      free(v12);
    }

    else
    {

      os_unfair_lock_unlock((observer + 52));
    }
  }
}

- (uint64_t)alreadylocked_removePreferencesObserver:(uint64_t)observer
{
  if (!observer || !a2)
  {
    return 0;
  }

  os_unfair_lock_assert_owner((observer + 52));
  [*(observer + 24) removeObject:a2];

  return [observer alreadylocked_updateObservingRemoteChanges];
}

- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_dict)
  {
    self->_dict = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (count >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *keys;
      v12 = *values;
      if ([(CFPrefsSource *)self validateValue:*keys forKey:0 inDict:1 forWriting:?])
      {
        dict = self->_dict;
        if (v12)
        {
          CFDictionarySetValue(dict, v11, v12);
        }

        else
        {
          CFDictionaryRemoveValue(dict, v11);
        }

        v16 = _CFPrefsClientLog(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          copyOSLogDescription = [(CFPrefsSource *)self copyOSLogDescription];
          v18 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
          v20 = _CFPrefsClientLog(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138478339;
            v22 = v12;
            v23 = 2113;
            v24 = v11;
            v25 = 2114;
            v26 = copyOSLogDescription;
            _os_log_debug_impl(&dword_1830E6000, v20, OS_LOG_TYPE_DEBUG, "setting new value %{private}@ for key %{private}@ in %{public}@", buf, 0x20u);
          }

          _CFSetTSD(15, 0, 0);
          CFRelease(copyOSLogDescription);
        }

        v10 = 1;
      }

      ++values;
      ++keys;
      --count;
    }

    while (count);
    if (v10)
    {
      atomic_fetch_add(&self->_generationCount, 1uLL);
    }
  }
}

- (uint64_t)validateValue:(CFTypeRef)cf1 forKey:(const __CFDictionary *)key inDict:(int)dict forWriting:
{
  v31 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (!cf1)
  {
    return 1;
  }

  v9 = result;
  Value = a2;
  if (CFEqual(cf1, @"AppleLanguages"))
  {
    Value = a2;
    if (!a2)
    {
      Value = 0;
      if (key)
      {
        Value = CFDictionaryGetValue(key, cf1);
      }
    }

    if (!Value)
    {
      return 1;
    }

    v11 = CFGetTypeID(Value);
    if (v11 != CFArrayGetTypeID())
    {
      goto LABEL_20;
    }

    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v14);
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 != CFStringGetTypeID())
        {
          goto LABEL_20;
        }
      }

      while (v13 != ++v14);
    }
  }

  if (!CFEqual(cf1, @"AppleLocale"))
  {
    return 1;
  }

  if (key && !Value)
  {
    Value = CFDictionaryGetValue(key, cf1);
  }

  if (!Value)
  {
    return 1;
  }

  v17 = CFGetTypeID(Value);
  if (v17 == CFStringGetTypeID())
  {
    return 1;
  }

LABEL_20:
  copyOSLogDescription = [v9 copyOSLogDescription];
  if (dict)
  {
    v19 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
    v21 = _CFPrefsClientLog(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = 138478339;
      v26 = a2;
      v27 = 2114;
      v28 = cf1;
      v29 = 2114;
      v30 = copyOSLogDescription;
      _os_log_error_impl(&dword_1830E6000, v21, OS_LOG_TYPE_ERROR, "attempted to write invalid value %{private}@ for key %{public}@ in %{public}@. Replacing with NULL.", &v25, 0x20u);
    }
  }

  else
  {
    v22 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
    v24 = _CFPrefsClientLog(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = 138478339;
      v26 = a2;
      v27 = 2114;
      v28 = cf1;
      v29 = 2114;
      v30 = copyOSLogDescription;
      _os_log_error_impl(&dword_1830E6000, v24, OS_LOG_TYPE_ERROR, "looked up invalid value %{private}@ for key %{public}@ in %{public}@. Replacing with NULL.", &v25, 0x20u);
    }
  }

  _CFSetTSD(15, 0, 0);
  CFRelease(copyOSLogDescription);
  return 0;
}

- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count copyValues:(uint64_t)copyValues removeValuesForKeys:(unint64_t)forKeys count:(uint64_t)a8 from:
{
  v40 = a8;
  v43[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if (forKeys >> 60)
  {
    v32 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", keys, count, copyValues, forKeys);
    v33 = [NSException exceptionWithName:@"NSGenericException" reason:v32 userInfo:0];
    CFRelease(v32);
    objc_exception_throw(v33);
  }

  countCopy = count;
  v38 = &v36;
  if (forKeys <= 1)
  {
    forKeysCopy = 1;
  }

  else
  {
    forKeysCopy = forKeys;
  }

  v16 = MEMORY[0x1EEE9AC00](forKeysCopy, a2, values);
  v18 = &v36 - v17;
  if (forKeys > 0x100)
  {
    v43[0] = 0;
    v18 = _CFCreateArrayStorage(v16, 1, v43);
    v39 = v18;
  }

  else
  {
    bzero(&v36 - v17, 8 * v16);
    v39 = 0;
    v43[0] = 0;
  }

  if (keys >> 60)
  {
    v34 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", keys);
    v35 = [NSException exceptionWithName:@"NSGenericException" reason:v34 userInfo:0];
    CFRelease(v34);
    objc_exception_throw(v35);
  }

  if (keys <= 1)
  {
    keysCopy = 1;
  }

  else
  {
    keysCopy = keys;
  }

  v22 = MEMORY[0x1EEE9AC00](keysCopy, v19, v20);
  v24 = (&v36 - v23);
  v42 = 0;
  if (keys >= 0x101)
  {
    v24 = _CFCreateArrayStorage(v22, 0, &v42);
    v37 = v24;
  }

  else
  {
    if (!keys)
    {
      v27 = self + 13;
      os_unfair_lock_lock(self + 13);
      v30 = 0;
      v29 = v40;
      if (!forKeys)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v37 = 0;
  }

  v25 = 0;
  do
  {
    DeepCopyOfValueForKey = *(a2 + 8 * v25);
    if (DeepCopyOfValueForKey)
    {
      if (countCopy)
      {
        DeepCopyOfValueForKey = createDeepCopyOfValueForKey(DeepCopyOfValueForKey, *(values + 8 * v25));
      }

      else
      {
        DeepCopyOfValueForKey = CFRetain(DeepCopyOfValueForKey);
      }
    }

    v24[v25++] = DeepCopyOfValueForKey;
  }

  while (keys != v25);
  v27 = self + 13;
  os_unfair_lock_lock(self + 13);
  valuesCopy = values;
  v29 = v40;
  v30 = v37;
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v24 forKeys:valuesCopy count:keys from:v40];
  if (!forKeys)
  {
    goto LABEL_25;
  }

LABEL_24:
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v18 forKeys:copyValues count:forKeys from:v29];
LABEL_25:
  os_unfair_lock_unlock(v27);
  for (i = keys; i; --i)
  {
    if (*v24)
    {
      CFRelease(*v24);
    }

    ++v24;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __83__CFPrefsSource_setValues_forKeys_count_copyValues_removeValuesForKeys_count_from___block_invoke;
  v41[3] = &unk_1E6DCF018;
  v41[4] = v29;
  v41[5] = self;
  [(CFPrefsSource *)self forEachObserver:v41];
  free(v30);
  free(v39);
}

uint64_t __83__CFPrefsSource_setValues_forKeys_count_copyValues_removeValuesForKeys_count_from___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32) != a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = [*(v3 + 40) domainIdentifier];

      return [a2 handleChangeNotificationForDomainIdentifier:v4 isRemote:0];
    }
  }

  return result;
}

- (void)_notifyObserversOfChangeFromValuesForKeys:(id)keys toValuesForKeys:(id)forKeys
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__CFPrefsSource__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys___block_invoke;
  v4[3] = &unk_1E6DCF018;
  v4[4] = keys;
  v4[5] = forKeys;
  [(CFPrefsSource *)self forEachObserver:v4];
}

- (void)replaceAllValuesWithValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count from:
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  countCopy = count;
  os_unfair_lock_lock(self + 13);
  alreadylocked_copyKeyList = [(os_unfair_lock_s *)self alreadylocked_copyKeyList];
  os_unfair_lock_unlock(self + 13);
  v47 = alreadylocked_copyKeyList;
  Count = CFArrayGetCount(alreadylocked_copyKeyList);
  v13 = Count;
  if (Count >> 60)
  {
    v38 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v39 = [NSException exceptionWithName:@"NSGenericException" reason:v38 userInfo:0];
    CFRelease(v38);
    objc_exception_throw(v39);
  }

  if (Count <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = Count;
  }

  if (Count >= 0x101)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = 8 * v15;
  MEMORY[0x1EEE9AC00](Count, v11, v12);
  v18 = (&v42 - v17);
  v50[0] = 0;
  if (v13 >= 0x101)
  {
    v18 = _CFCreateArrayStorage(v14, 0, v50);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v51.location = 0;
  v51.length = v13;
  CFArrayGetValues(v47, v51, v18);
  v45 = &v42;
  MEMORY[0x1EEE9AC00](v20, v21, v22);
  v23 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13 > 0x100)
  {
    v49 = 0;
    v26 = _CFCreateArrayStorage(v14, 1, &v49);
  }

  else
  {
    bzero(v23, 8 * v14);
    v26 = 0;
    v49 = 0;
  }

  if (v13 >= 0x101)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  if (keys >> 60)
  {
    v43 = v26;
    v40 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", keys);
    v41 = [NSException exceptionWithName:@"NSGenericException" reason:v40 userInfo:0];
    CFRelease(v40);
    objc_exception_throw(v41);
  }

  if (keys <= 1)
  {
    keysCopy = 1;
  }

  else
  {
    keysCopy = keys;
  }

  v29 = MEMORY[0x1EEE9AC00](keysCopy, v24, v25);
  v31 = (&v42 - v30);
  v48 = 0;
  if (keys >= 0x101)
  {
    v43 = v26;
    v31 = _CFCreateArrayStorage(v29, 0, &v48);
    v32 = v19;
    v46 = v31;
LABEL_26:
    v33 = 0;
    do
    {
      v34 = *(a2 + 8 * v33);
      if (v34)
      {
        v31[v33] = createDeepCopyOfValueForKey(v34, *(values + 8 * v33));
      }

      ++v33;
    }

    while (keys != v33);
    v35 = 0;
    v19 = v32;
    v26 = v43;
    goto LABEL_31;
  }

  v46 = 0;
  if (keys)
  {
    v43 = v26;
    v32 = v19;
    goto LABEL_26;
  }

  v35 = 1;
LABEL_31:
  os_unfair_lock_lock(self + 13);
  v36 = v27;
  v37 = countCopy;
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v36 forKeys:v18 count:v13 from:countCopy];
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v31 forKeys:values count:keys from:v37];
  os_unfair_lock_unlock(self + 13);
  CFRelease(v47);
  if ((v35 & 1) == 0)
  {
    do
    {
      if (*v31)
      {
        CFRelease(*v31);
      }

      ++v31;
      --keys;
    }

    while (keys);
  }

  free(v46);
  free(v26);
  free(v19);
}

- (void)alreadylocked_copyValueForKey:(__CFString *)key
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  dict = self->_dict;
  if (dict)
  {
    dict = CFDictionaryGetValue(dict, key);
    v7 = dict;
  }

  else
  {
    v7 = 0;
  }

  v8 = _CFPrefsClientLog(dict, v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    copyOSLogDescription = [(CFPrefsSource *)self copyOSLogDescription];
    if (v7)
    {
      v10 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v12 = _CFPrefsClientLog(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138478339;
        v18 = v7;
        v19 = 2114;
        keyCopy = key;
        v21 = 2114;
        v22 = copyOSLogDescription;
        _os_log_debug_impl(&dword_1830E6000, v12, OS_LOG_TYPE_DEBUG, "looked up value %{private}@ for key %{public}@ in %{public}@", &v17, 0x20u);
      }

      _CFSetTSD(15, 0, 0);
    }

    else
    {
      v13 = _CFSetTSD(15, &__kCFBooleanTrue, 0);
      v15 = _CFPrefsClientLog(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [CFPrefsSource alreadylocked_copyValueForKey:];
      }

      _CFSetTSD(15, 0, 0);
    }

    CFRelease(copyOSLogDescription);
  }

  if (v7)
  {
    return CFRetain(v7);
  }

  else
  {
    return 0;
  }
}

- (void)copyValueForKey:(__CFString *)key
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(CFPrefsSource *)self alreadylocked_copyValueForKey:key];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator
{
  v10[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  alreadylocked_copyDictionary = [(CFPrefsSource *)self alreadylocked_copyDictionary];
  if (alreadylocked_copyDictionary)
  {
    v9 = alreadylocked_copyDictionary;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__CFPrefsSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke;
    v10[3] = &unk_1E6DCF040;
    v10[5] = dictionary;
    v10[6] = sourceDictionary;
    v10[4] = self;
    _CFPrefsDictionaryApplyBlock(alreadylocked_copyDictionary, v10);
    CFRelease(v9);
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __72__CFPrefsSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionaryAddValue(*(a1 + 40), a2, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);

    CFDictionaryAddValue(v5, a2, v6);
  }
}

- (id)description
{
  v18[1] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  os_unfair_lock_lock(&self->_lock);
  ClassName = object_getClassName(self);
  domainIdentifier = [(CFPrefsSource *)self domainIdentifier];
  userIdentifier = [(CFPrefsSource *)self userIdentifier];
  if ([(CFPrefsSource *)self isByHost])
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @"%s<%p> (Domain: %@, User: %@, ByHost: %s, Container: %@)", ClassName, self, domainIdentifier, userIdentifier, v7, [(CFPrefsSource *)self container]);
  dict = self->_dict;
  if (dict)
  {
    dict = CFDictionaryGetCount(dict);
    v11 = dict;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1EEE9AC00](dict, v8, v9);
  v14 = (v18 - v13);
  if (v12 >= 0x200)
  {
    v15 = 512;
  }

  else
  {
    v15 = v12;
  }

  bzero(v18 - v13, v15);
  if (v11 <= 0)
  {
    CFStringAppend(Mutable, @" Keys: [");
  }

  else
  {
    CFDictionaryGetKeysAndValues(self->_dict, v14, 0);
    CFStringAppend(Mutable, @" Keys: [");
    do
    {
      v16 = *v14++;
      CFStringAppend(Mutable, v16);
      CFStringAppend(Mutable, @", ");
      --v11;
    }

    while (v11);
  }

  CFStringAppend(Mutable, @"]\n");
  os_unfair_lock_unlock(&self->_lock);
  return CFAutorelease(Mutable);
}

- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count copyValues:(uint64_t)copyValues from:
{
  if (self)
  {
    [(CFPrefsSource *)self setValues:a2 forKeys:values count:keys copyValues:count removeValuesForKeys:0 count:0 from:copyValues];
  }
}

- (void)setValue:(uint64_t)value forKey:(uint64_t)key from:
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    valueCopy = value;
    v5[0] = a2;
    [(CFPrefsSource *)self setValues:v5 forKeys:&valueCopy count:1uLL copyValues:1 removeValuesForKeys:0 count:0 from:key];
  }
}

- (void)removeAllValues_from:(os_unfair_lock_s *)values_from
{
  if (values_from)
  {
    [(CFPrefsSource *)values_from replaceAllValuesWithValues:0 forKeys:0 count:a2 from:?];
  }
}

- (BOOL)alreadylocked_requestNewData
{
  if (self)
  {
    os_unfair_lock_assert_owner(self + 13);
  }

  return self != 0;
}

- (void)alreadylocked_copyValueForKey:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(&dword_1830E6000, v0, OS_LOG_TYPE_DEBUG, "found no value for key %{public}@ in %{public}@", v1, 0x16u);
}

@end
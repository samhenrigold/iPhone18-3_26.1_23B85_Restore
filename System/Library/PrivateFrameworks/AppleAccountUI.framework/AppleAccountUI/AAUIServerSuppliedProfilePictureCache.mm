@interface AAUIServerSuppliedProfilePictureCache
+ (id)sharedCache;
- (AAUIServerSuppliedProfilePictureCache)init;
- (BOOL)updateProfilePicture:(id)picture didReceiveNewPicture:(BOOL)newPicture serverCacheTag:(id)tag forPersonID:(id)d;
- (double)pictureDiameter;
- (id)_entryForPersonID:(id)d;
- (id)profilePictureForPersonID:(id)d diameter:(double)diameter serverFetchBlock:(id)block;
- (id)serverCacheTagForPersonID:(id)d diameter:(double)diameter;
- (void)_ensureMinimumPictureDiameter_mustBeSynchronized:(double)synchronized;
- (void)profilePictureForPersonID:(id)d diameter:(double)diameter completion:(id)completion;
@end

@implementation AAUIServerSuppliedProfilePictureCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[AAUIServerSuppliedProfilePictureCache sharedCache];
  }

  v3 = sharedCache___sharedCache;

  return v3;
}

uint64_t __52__AAUIServerSuppliedProfilePictureCache_sharedCache__block_invoke()
{
  sharedCache___sharedCache = objc_alloc_init(AAUIServerSuppliedProfilePictureCache);

  return MEMORY[0x1EEE66BB8]();
}

- (AAUIServerSuppliedProfilePictureCache)init
{
  v6.receiver = self;
  v6.super_class = AAUIServerSuppliedProfilePictureCache;
  v2 = [(AAUIServerSuppliedProfilePictureCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    personIDToEntryMap = v2->_personIDToEntryMap;
    v2->_personIDToEntryMap = v3;

    v2->_pictureDiameter = 60.0;
  }

  return v2;
}

- (double)pictureDiameter
{
  v3 = self->_personIDToEntryMap;
  objc_sync_enter(v3);
  pictureDiameter = self->_pictureDiameter;
  objc_sync_exit(v3);

  return pictureDiameter;
}

- (void)_ensureMinimumPictureDiameter_mustBeSynchronized:(double)synchronized
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_pictureDiameter < synchronized)
  {
    v5 = _AAUIPPSLogSystem(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:synchronized];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_pictureDiameter];
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore _ensureMinimumPictureDiameter: %@ _pictureDiameter %@. Will expire all cached pictures.", buf, 0x16u);
    }

    obj = self->_personIDToEntryMap;
    objc_sync_enter(obj);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [(NSMutableDictionary *)self->_personIDToEntryMap allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:v12];
          v14 = _AAUIPPSLogSystem(v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v12;
            _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore _ensureMinimumPictureDiameter: Expiring cache entry for %@", buf, 0xCu);
          }

          [v13 expire];
        }

        v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    objc_sync_exit(obj);
    v16 = _AAUIPPSLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore _ensureMinimumPictureDiameter: Did expire all cached pictures.", buf, 2u);
    }

    self->_pictureDiameter = synchronized;
  }
}

- (id)serverCacheTagForPersonID:(id)d diameter:(double)diameter
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = _AAUIPPSLogSystem(dCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    v12 = 138740227;
    v13 = dCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@", &v12, 0x16u);
  }

  if (dCopy)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:diameter];
    v9 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
    serverCacheTag = [v9 serverCacheTag];
  }

  else
  {
    serverCacheTag = 0;
  }

  return serverCacheTag;
}

- (id)profilePictureForPersonID:(id)d diameter:(double)diameter serverFetchBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  v10 = _AAUIPPSLogSystem(blockCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    v21 = 138740227;
    v22 = dCopy;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@", &v21, 0x16u);
  }

  if (dCopy)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:diameter];
    v13 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
    picture = [v13 picture];
    updating = [v13 updating];
    if ((updating & 1) != 0 || (updating = [v13 expired], !updating))
    {
      serverCacheTag = _AAUIPPSLogSystem(updating);
      if (os_log_type_enabled(serverCacheTag, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1C5355000, serverCacheTag, OS_LOG_TYPE_DEFAULT, "performServerFetch is False", &v21, 2u);
      }
    }

    else
    {
      v16 = _AAUIPPSLogSystem(updating);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "performServerFetch is True", &v21, 2u);
      }

      [v13 setUpdating:1];
      serverCacheTag = [v13 serverCacheTag];
      v18 = _AAUIPPSLogSystem(serverCacheTag);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138739971;
        v22 = dCopy;
        _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ triggering performServerFetch", &v21, 0xCu);
      }

      blockCopy[2](blockCopy, serverCacheTag);
    }
  }

  else
  {
    picture = 0;
  }

  v19 = _AAUIPPSLogSystem(v12);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138740227;
    v22 = dCopy;
    v23 = 2112;
    v24 = picture;
    _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ returning profilePicture %@", &v21, 0x16u);
  }

  return picture;
}

- (void)profilePictureForPersonID:(id)d diameter:(double)diameter completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v10 = _AAUIPPSLogSystem(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    v20 = 138740227;
    v21 = dCopy;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ diameter: %@ completion:", &v20, 0x16u);
  }

  if (dCopy)
  {
    [(AAUIServerSuppliedProfilePictureCache *)self _ensureMinimumPictureDiameter_mustBeSynchronized:diameter];
    v13 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
    picture = [v13 picture];
    serverCacheTag = [v13 serverCacheTag];
    expired = [v13 expired];
    v17 = _AAUIPPSLogSystem(expired);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x1E696AD98] numberWithBool:expired];
      v20 = 138740739;
      v21 = dCopy;
      v22 = 2112;
      v23 = picture;
      v24 = 2112;
      v25 = serverCacheTag;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ completion: calling completion with profilePicture %@ serverCacheTag %@ performServerFetch %@", &v20, 0x2Au);
    }

    completionCopy[2](completionCopy, picture, serverCacheTag, expired);
  }

  else
  {
    v19 = _AAUIPPSLogSystem(v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138739971;
      v21 = 0;
      _os_log_impl(&dword_1C5355000, v19, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore profilePictureForPersonID: %{sensitive}@ completion: No personID provided!", &v20, 0xCu);
    }

    completionCopy[2](completionCopy, 0, 0, 0);
  }
}

- (BOOL)updateProfilePicture:(id)picture didReceiveNewPicture:(BOOL)newPicture serverCacheTag:(id)tag forPersonID:(id)d
{
  newPictureCopy = newPicture;
  v38 = *MEMORY[0x1E69E9840];
  pictureCopy = picture;
  tagCopy = tag;
  dCopy = d;
  v13 = _AAUIPPSLogSystem(dCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:newPictureCopy];
    v28 = 138413059;
    v29 = pictureCopy;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = tagCopy;
    v34 = 2117;
    v35 = dCopy;
    _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@", &v28, 0x2Au);
  }

  if (dCopy)
  {
    if (!pictureCopy || (v15 = [pictureCopy size], v16 == self->_pictureDiameter))
    {
      v17 = [(AAUIServerSuppliedProfilePictureCache *)self _entryForPersonID:dCopy];
      v21 = _AAUIPPSLogSystem(v17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [MEMORY[0x1E696AD98] numberWithBool:newPictureCopy];
        v28 = 138413315;
        v29 = pictureCopy;
        v30 = 2112;
        v31 = v22;
        v32 = 2112;
        v33 = tagCopy;
        v34 = 2117;
        v35 = dCopy;
        v36 = 2112;
        v37 = v17;
        _os_log_impl(&dword_1C5355000, v21, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@ updating entry %@", &v28, 0x34u);
      }

      [v17 setUpdating:0];
      if (newPictureCopy)
      {
        picture = [v17 picture];
        LOBYTE(newPictureCopy) = picture != pictureCopy;

        v24 = [v17 setPicture:pictureCopy];
        if (tagCopy)
        {
          v24 = [v17 setServerCacheTag:tagCopy];
        }

        v25 = _AAUIPPSLogSystem(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [MEMORY[0x1E696AD98] numberWithBool:1];
          v28 = 138413315;
          v29 = pictureCopy;
          v30 = 2112;
          v31 = v26;
          v32 = 2112;
          v33 = tagCopy;
          v34 = 2117;
          v35 = dCopy;
          v36 = 2112;
          v37 = v17;
          _os_log_impl(&dword_1C5355000, v25, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: %@ didReceiveNewPicture: %@ serverCacheTag: %@ forPersonID: %{sensitive}@ did update entry %@", &v28, 0x34u);
        }
      }

      else
      {
        [v17 extendExpirationDate];
      }
    }

    else
    {
      v17 = _AAUIPPSLogSystem(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x1E696B098];
        [pictureCopy size];
        v19 = [v18 valueWithCGSize:?];
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_pictureDiameter];
        v28 = 138740483;
        v29 = dCopy;
        v30 = 2112;
        v31 = v19;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "AAUIProfilePictureStore updateProfilePicture: ... forPersonID: %{sensitive}@ ignoring picture with size %@ different from _pictureDiameter %@", &v28, 0x20u);
      }

      LOBYTE(newPictureCopy) = 0;
    }
  }

  else
  {
    LOBYTE(newPictureCopy) = 0;
  }

  return newPictureCopy;
}

- (id)_entryForPersonID:(id)d
{
  dCopy = d;
  v5 = self->_personIDToEntryMap;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_personIDToEntryMap objectForKey:dCopy];
  v7 = v6;
  if (v6)
  {
    v8 = _AAUIPPSLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAUIServerSuppliedProfilePictureCache _entryForPersonID:];
    }
  }

  else
  {
    v7 = objc_alloc_init(AAUIServerSuppliedProfilePictureCacheEntry);
    v8 = _AAUIPPSLogSystem([(NSMutableDictionary *)self->_personIDToEntryMap setObject:v7 forKey:dCopy]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [AAUIServerSuppliedProfilePictureCache _entryForPersonID:];
    }
  }

  objc_sync_exit(v5);

  return v7;
}

@end
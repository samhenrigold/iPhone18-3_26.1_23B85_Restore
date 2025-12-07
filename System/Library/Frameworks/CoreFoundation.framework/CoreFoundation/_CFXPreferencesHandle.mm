@interface _CFXPreferencesHandle
- (_CFXPreferencesHandle)init;
- (id)copyPrefs;
- (uint64_t)_canUseCachedPersonaInfo;
- (void)copyPrefs;
- (void)dealloc;
- (void)forEachPrefsPerformBlock:(id)block;
@end

@implementation _CFXPreferencesHandle

- (id)copyPrefs
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->lock);
  overrideEUID = self->overrideEUID;
  if (overrideEUID == -1)
  {
    overrideEUID = _CFGetEUID();
  }

  p_prefs = &self->prefs;
  prefs = self->prefs;
  if (prefs->_euid == overrideEUID)
  {
    prefs = 0;
  }

  else
  {
    v7 = objc_alloc_init(_CFXPreferences);
    self->prefs = v7;
    [(_CFXPreferences *)v7 ingestVolatileStateFromPreferences:?];
    self->nonLaunchPersonaID = -1;
    v10 = _CFPrefsClientLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(_CFXPreferencesHandle *)&prefs->_euid copyPrefs];
    }
  }

  if (self->processCanHaveMultiplePersonas)
  {
    if ([(_CFXPreferencesHandle *)self _canUseCachedPersonaInfo])
    {
      cachedUseLaunchPersona = self->cachedUseLaunchPersona;
      nonLaunchPersonaID = self->nonLaunchPersonaID;
    }

    else
    {
      getpid();
      if (sandbox_check())
      {
        nonLaunchPersonaID = 0;
        cachedUseLaunchPersona = 1;
      }

      else
      {
        v27 = 0;
        memset(v26, 0, sizeof(v26));
        *buf = 2;
        v24 = kpersona_info();
        nonLaunchPersonaID = 0;
        if (v24)
        {
          nonLaunchPersonaID = 0;
        }

        cachedUseLaunchPersona = 1;
      }

      self->cachedUseLaunchPersona = 1;
    }
  }

  else
  {
    nonLaunchPersonaID = 0;
    cachedUseLaunchPersona = 1;
  }

  if (_CFPNLPO == -1)
  {
    v13 = nonLaunchPersonaID;
  }

  else
  {
    v13 = _CFPNLPO;
  }

  if (_CFPNLPO == -1 && cachedUseLaunchPersona)
  {
    nonLaunchPersonaPrefs = 0;
  }

  else
  {
    if (self->nonLaunchPersonaID == v13)
    {
      nonLaunchPersonaPrefs = 0;
    }

    else
    {
      nonLaunchPersonaPrefs = self->nonLaunchPersonaPrefs;
      v15 = objc_alloc_init(_CFXPreferences);
      self->nonLaunchPersonaPrefs = v15;
      v15->_nonLaunchPersonaUID = v13;
      if (nonLaunchPersonaPrefs)
      {
        v16 = nonLaunchPersonaPrefs;
      }

      else
      {
        v16 = *p_prefs;
      }

      [(_CFXPreferences *)self->nonLaunchPersonaPrefs ingestVolatileStateFromPreferences:v16];
      v19 = _CFPrefsClientLog(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v22 = self->nonLaunchPersonaID;
        v23 = self->nonLaunchPersonaPrefs;
        *buf = 67109634;
        LODWORD(v26[0]) = v22;
        WORD2(v26[0]) = 1024;
        *(v26 + 6) = v13;
        WORD5(v26[0]) = 2114;
        *(v26 + 12) = v23;
        _os_log_debug_impl(&dword_1830E6000, v19, OS_LOG_TYPE_DEBUG, "Replacing preferences for non-launch persona UID change: %u -> %u %{public}@", buf, 0x18u);
      }

      self->nonLaunchPersonaID = v13;
    }

    p_prefs = &self->nonLaunchPersonaPrefs;
  }

  v20 = *p_prefs;
  os_unfair_lock_unlock(&self->lock);
  if (prefs)
  {
  }

  if (nonLaunchPersonaPrefs)
  {
  }

  return v20;
}

- (_CFXPreferencesHandle)init
{
  v28 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _CFXPreferencesHandle;
  v2 = [(_CFXPreferencesHandle *)&v4 init];
  if (v2)
  {
    v2->prefs = objc_alloc_init(_CFXPreferences);
    *&v2->lock._os_unfair_lock_opaque = 0xFFFFFFFF00000000;
    v2->nonLaunchPersonaID = -1;
    v2->lastCheckedVoucher = -1;
    getpid();
    if (!sandbox_check())
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v17 = 0u;
      v16 = 0u;
      v15 = 0u;
      v14 = 0u;
      v13 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      v5 = 2;
      getpid();
      if (!kpersona_pidinfo())
      {
        v2->processCanHaveMultiplePersonas = (DWORD1(v6) & 0xFFFFFFFD) == 4;
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->lastCheckedVoucher != -1)
  {
    voucher_release();
  }

  v3.receiver = self;
  v3.super_class = _CFXPreferencesHandle;
  [(_CFXPreferencesHandle *)&v3 dealloc];
}

- (void)forEachPrefsPerformBlock:(id)block
{
  os_unfair_lock_lock(&self->lock);
  v5 = self->prefs;
  v6 = self->nonLaunchPersonaPrefs;
  os_unfair_lock_unlock(&self->lock);
  (*(block + 2))(block, v5);
  (*(block + 2))(block, v6);
}

- (uint64_t)_canUseCachedPersonaInfo
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 40);
    if (v3 == -1)
    {
LABEL_6:
      v4 = voucher_copy();
      result = 0;
      *(v2 + 40) = v4;
      return result;
    }

    if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 224) != v3)
    {
      if (v3)
      {
        voucher_release();
      }

      goto LABEL_6;
    }

    return 1;
  }

  return result;
}

- (void)copyPrefs
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = *a2;
  v5 = *(*a2 + 60);
  v6[0] = 67109634;
  v6[1] = v3;
  v7 = 1024;
  v8 = v5;
  v9 = 2114;
  v10 = v4;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Replacing preferences for EUID change: %u -> %u %{public}@", v6, 0x18u);
}

@end
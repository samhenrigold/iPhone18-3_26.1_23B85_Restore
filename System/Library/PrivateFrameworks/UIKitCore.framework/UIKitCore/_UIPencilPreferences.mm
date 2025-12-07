@interface _UIPencilPreferences
+ (id)sharedPreferences;
+ (uint64_t)hasSeenPencilPairingUI;
+ (uint64_t)hasUsedPassivePencil;
+ (uint64_t)preferredSqueezeAction;
+ (uint64_t)preferredTapAction;
+ (uint64_t)prefersHoverToolPreview;
+ (uint64_t)prefersPencilOnlyDrawing;
+ (void)setHasUsedPassivePencil:(uint64_t)pencil;
+ (void)setPrefersPencilOnlyDrawing:(uint64_t)drawing;
- (_UIPencilPreferences)init;
- (void)_hasUsedPassivePencilDidChange;
- (void)_preferredSqueezeActionDidChange;
- (void)_preferredTapActionDidChange;
- (void)_prefersPencilOnlyDrawingDidChange;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation _UIPencilPreferences

- (_UIPencilPreferences)init
{
  v11.receiver = self;
  v11.super_class = _UIPencilPreferences;
  v3 = [(_UIPencilPreferences *)&v11 init];
  if (v3)
  {
    v3->_cachedPreferredTapAction = _UIPencilPreferredActionForKey(@"UIPencilPreferredTapAction", v2);
    v3->_cachedPreferredSqueezeAction = _UIPencilPreferredActionForKey(@"UIPencilPreferredSqueezeAction", v4);
    v5 = _UIKitUserDefaults();
    *&v3->_preferenceFlags = *&v3->_preferenceFlags & 0xFE | _UIPencilPrefersPencilOnlyDrawingForKey();
    if (_UIPencilPrefersHoverToolPreview())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&v3->_preferenceFlags = *&v3->_preferenceFlags & 0xFD | v6;
    if ([v5 BOOLForKey:@"PKHasEverShownEduUI"])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&v3->_preferenceFlags = *&v3->_preferenceFlags & 0xFB | v7;
    if ([v5 BOOLForKey:@"UIPencilHasUsedPassivePencilKey"])
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&v3->_preferenceFlags = *&v3->_preferenceFlags & 0xF7 | v8;
    [v5 addObserver:v3 forKeyPath:@"UIPencilPreferredTapAction" options:0 context:0];
    [v5 addObserver:v3 forKeyPath:@"UIPencilPreferredSqueezeAction" options:0 context:0];
    [v5 addObserver:v3 forKeyPath:@"UIPencilOnlyDrawWithPencilKey" options:0 context:0];
    [v5 addObserver:v3 forKeyPath:@"PKUIPencilHoverPreviewEnabledKey" options:0 context:0];
    [v5 addObserver:v3 forKeyPath:@"PKHasEverShownEduUI" options:0 context:0];
    [v5 addObserver:v3 forKeyPath:@"UIPencilHasUsedPassivePencilKey" options:0 context:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _accessibilityOpaqueTouchGestureValueChangedCallback, *MEMORY[0x1E69E4C40], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

+ (id)sharedPreferences
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___UIPencilPreferences_sharedPreferences__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  if (qword_1ED4A0780 != -1)
  {
    dispatch_once(&qword_1ED4A0780, block);
  }

  v2 = _MergedGlobals_1268;

  return v2;
}

+ (uint64_t)preferredSqueezeAction
{
  objc_opt_self();
  v1 = +[_UIPencilPreferences sharedPreferences];
  if (v1)
  {
    v2 = v1[2];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (uint64_t)preferredTapAction
{
  objc_opt_self();
  v1 = +[_UIPencilPreferences sharedPreferences];
  if (v1)
  {
    v2 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (uint64_t)prefersPencilOnlyDrawing
{
  objc_opt_self();
  v1 = +[_UIPencilPreferences sharedPreferences];
  if (v1)
  {
    v2 = v1[24] & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (uint64_t)hasSeenPencilPairingUI
{
  objc_opt_self();
  v1 = +[_UIPencilPreferences sharedPreferences];
  if (v1)
  {
    v2 = (v1[24] >> 2) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (uint64_t)hasUsedPassivePencil
{
  objc_opt_self();
  v1 = +[_UIPencilPreferences sharedPreferences];
  if (v1)
  {
    v2 = (v1[24] >> 3) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (void)setHasUsedPassivePencil:(uint64_t)pencil
{
  objc_opt_self();
  v3 = +[_UIPencilPreferences sharedPreferences];
  if (v3 && ((((v3[24] & 8) == 0) ^ a2) & 1) == 0)
  {
    v5 = v3;
    v4 = _UIKitUserDefaults();
    [v4 setBool:a2 forKey:@"UIPencilHasUsedPassivePencilKey"];

    [(_UIPencilPreferences *)v5 _hasUsedPassivePencilDidChange];
    v3 = v5;
  }
}

+ (void)setPrefersPencilOnlyDrawing:(uint64_t)drawing
{
  objc_opt_self();
  v3 = +[_UIPencilPreferences sharedPreferences];
  if (v3 && (v3[24] & 1) != a2)
  {
    val = v3;
    v4 = _UIKitUserDefaults();
    [v4 setBool:a2 forKey:@"UIPencilOnlyDrawWithPencilKey"];

    [(_UIPencilPreferences *)val _prefersPencilOnlyDrawingDidChange];
    v3 = val;
  }
}

+ (uint64_t)prefersHoverToolPreview
{
  objc_opt_self();
  v1 = +[_UIPencilPreferences sharedPreferences];
  if (v1)
  {
    v2 = (v1[24] >> 1) & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = _UIKitUserDefaults();
  [v3 removeObserver:self forKeyPath:@"UIPencilPreferredTapAction"];
  [v3 removeObserver:self forKeyPath:@"UIPencilPreferredSqueezeAction"];
  [v3 removeObserver:self forKeyPath:@"UIPencilOnlyDrawWithPencilKey"];
  [v3 removeObserver:self forKeyPath:@"PKUIPencilHoverPreviewEnabledKey"];
  [v3 removeObserver:self forKeyPath:@"PKHasEverShownEduUI"];
  [v3 removeObserver:self forKeyPath:@"UIPencilHasUsedPassivePencilKey"];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x1E69E4C40], 0);

  v5.receiver = self;
  v5.super_class = _UIPencilPreferences;
  [(_UIPencilPreferences *)&v5 dealloc];
}

- (void)_prefersPencilOnlyDrawingDidChange
{
  if (val)
  {
    objc_initWeak(&location, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58___UIPencilPreferences__prefersPencilOnlyDrawingDidChange__block_invoke;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    v1 = _Block_copy(aBlock);
    if (pthread_main_np() == 1)
    {
      v1[2](v1);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58___UIPencilPreferences__prefersPencilOnlyDrawingDidChange__block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v3 = v1;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_hasUsedPassivePencilDidChange
{
  if (self)
  {
    v2 = _UIKitUserDefaults();
    if ([v2 BOOLForKey:@"UIPencilHasUsedPassivePencilKey"])
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *(self + 24) = *(self + 24) & 0xF7 | v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIPencilHasUsedPassivePencilChangedNotification" object:self];
  }
}

- (void)_preferredTapActionDidChange
{
  if (val)
  {
    objc_initWeak(&location, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52___UIPencilPreferences__preferredTapActionDidChange__block_invoke;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    v1 = _Block_copy(aBlock);
    if (pthread_main_np() == 1)
    {
      v1[2](v1);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52___UIPencilPreferences__preferredTapActionDidChange__block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v3 = v1;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_preferredSqueezeActionDidChange
{
  if (val)
  {
    objc_initWeak(&location, val);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56___UIPencilPreferences__preferredSqueezeActionDidChange__block_invoke;
    aBlock[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    v1 = _Block_copy(aBlock);
    if (pthread_main_np() == 1)
    {
      v1[2](v1);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __56___UIPencilPreferences__preferredSqueezeActionDidChange__block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v3 = v1;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v20[1] = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilPreferences", &observeValueForKeyPath_ofObject_change_context____s_category);
  if (*CategoryCachedImpl)
  {
    v13 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(aBlock) = 138412290;
      *(&aBlock + 4) = path;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "KVO callback received for key: %@", &aBlock, 0xCu);
    }
  }

  if (objc_msgSend_isEqualToString_(path))
  {
    [(_UIPencilPreferences *)self _preferredTapActionDidChange];
  }

  else if (objc_msgSend_isEqualToString_(path))
  {
    [(_UIPencilPreferences *)self _preferredSqueezeActionDidChange];
  }

  else if (objc_msgSend_isEqualToString_(path))
  {
    [(_UIPencilPreferences *)self _prefersPencilOnlyDrawingDidChange];
  }

  else if (objc_msgSend_isEqualToString_(path))
  {
    if (self)
    {
      objc_initWeak(&location, self);
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 3221225472;
      v18 = __57___UIPencilPreferences__prefersHoverToolPreviewDidChange__block_invoke;
      v19 = &unk_1E70F5A28;
      objc_copyWeak(v20, &location);
      v9 = _Block_copy(&aBlock);
      if (pthread_main_np() == 1)
      {
        v9[2](v9);
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __57___UIPencilPreferences__prefersHoverToolPreviewDidChange__block_invoke_2;
        v14[3] = &unk_1E70F0F78;
        v15 = v9;
        dispatch_sync(MEMORY[0x1E69E96A0], v14);
      }

      objc_destroyWeak(v20);
      objc_destroyWeak(&location);
    }
  }

  else if (objc_msgSend_isEqualToString_(path))
  {
    if (self)
    {
      v10 = _UIKitUserDefaults();
      if ([v10 BOOLForKey:@"PKHasEverShownEduUI"])
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }

      *&self->_preferenceFlags = *&self->_preferenceFlags & 0xFB | v11;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIPencilHasSeenPencilPairingUIChangedNotification" object:self];
    }
  }

  else if (objc_msgSend_isEqualToString_(path))
  {
    [(_UIPencilPreferences *)self _hasUsedPassivePencilDidChange];
  }
}

@end
@interface FigCaptureDisplayLayoutMonitor
+ (id)sharedContinuityDisplayLayoutMonitor;
+ (id)sharedDisplayLayoutMonitor;
+ (id)sharedExternalDisplayLayoutMonitor;
+ (void)initialize;
- (BOOL)isOnHomeScreen;
- (BOOL)isOnLockScreen;
- (FigCaptureDisplayLayout)currentLayout;
- (FigCaptureDisplayLayoutMonitor)initWithFBSDisplayLayoutMonitorCreateFunction:(void *)function displayType:(int64_t)type;
- (NSString)debugDescription;
- (NSString)description;
- (id)osStatePropertyList;
- (uint64_t)_displayIdentityForDisplayInfo:(uint64_t)info;
- (uint64_t)_isFBSDisplayLayoutOnHomeScreen:(uint64_t)result;
- (uint64_t)_stopMonitoringDisplayWithIdentity:(uint64_t)result;
- (void)_addLayoutObserver:(int)observer withImmediateCallback:;
- (void)_isFBSDisplayLayoutOnLockScreen:(void *)result;
- (void)_parseFBSDisplayLayout:(uint64_t)layout;
- (void)_startMonitoringDisplayWithIdentity:(uint64_t)identity;
- (void)_updateObserversWithLayout:(uint64_t)layout;
- (void)dealloc;
- (void)externalDisplayDidConnect:(id)connect;
- (void)externalDisplayWillDisconnect:(id)disconnect;
- (void)removeLayoutObserver:(id)observer;
@end

@implementation FigCaptureDisplayLayoutMonitor

- (NSString)debugDescription
{
  displayType = self->_displayType;
  if (displayType > 2)
  {
    return 0;
  }

  else
  {
    return &off_1E7999778[displayType]->isa;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureDisplayLayoutMonitor debugDescription](self, "debugDescription")];
}

+ (id)sharedDisplayLayoutMonitor
{
  if ((os_variant_is_darwinos() & 1) == 0 && qword_1ED844F68 != -1)
  {
    dispatch_once(&qword_1ED844F68, &__block_literal_global_84);
  }

  return _MergedGlobals_8;
}

+ (id)sharedContinuityDisplayLayoutMonitor
{
  if ((os_variant_is_darwinos() & 1) == 0 && qword_1ED844F88 != -1)
  {
    dispatch_once(&qword_1ED844F88, &__block_literal_global_19);
  }

  return qword_1ED844F80;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

FigCaptureDisplayLayoutMonitor *__60__FigCaptureDisplayLayoutMonitor_sharedDisplayLayoutMonitor__block_invoke()
{
  result = [[FigCaptureDisplayLayoutMonitor alloc] initWithFBSDisplayLayoutMonitorCreateFunction:fcdlm_createLayoutMonitorForMainDisplay displayType:0];
  _MergedGlobals_8 = result;
  return result;
}

FigCaptureDisplayLayoutMonitor *__68__FigCaptureDisplayLayoutMonitor_sharedExternalDisplayLayoutMonitor__block_invoke()
{
  result = [[FigCaptureDisplayLayoutMonitor alloc] initWithFBSDisplayLayoutMonitorCreateFunction:fcdlm_createLayoutMonitorForExternalDisplay displayType:1];
  qword_1ED844F70 = result;
  return result;
}

FigCaptureDisplayLayoutMonitor *__70__FigCaptureDisplayLayoutMonitor_sharedContinuityDisplayLayoutMonitor__block_invoke()
{
  result = [[FigCaptureDisplayLayoutMonitor alloc] initWithFBSDisplayLayoutMonitorCreateFunction:fcdlm_createLayoutMonitorForContinuityDisplay displayType:2];
  qword_1ED844F80 = result;
  return result;
}

- (FigCaptureDisplayLayoutMonitor)initWithFBSDisplayLayoutMonitorCreateFunction:(void *)function displayType:(int64_t)type
{
  v19.receiver = self;
  v19.super_class = FigCaptureDisplayLayoutMonitor;
  v6 = [(FigCaptureDisplayLayoutMonitor *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_displayType = type;
    v6->_layoutObserversLock = FigSimpleMutexCreate();
    v7->_layoutObservers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_layoutLock = FigSimpleMutexCreate();
    v7->_layout = [[FigCaptureDisplayLayout alloc] _init];
    -[FigCaptureDisplayLayout setTimestamp:](v7->_layout, "setTimestamp:", [MEMORY[0x1E695DF00] date]);
    [(FigCaptureDisplayLayout *)v7->_layout setDisplayType:v7->_displayType];
    if (dword_1ED8440F0)
    {
      v18 = 0;
      v17 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    objc_initWeak(location, v7);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __92__FigCaptureDisplayLayoutMonitor_initWithFBSDisplayLayoutMonitorCreateFunction_displayType___block_invoke;
    v14[3] = &unk_1E7999730;
    objc_copyWeak(&v15, location);
    v7->_displayConnected = v7->_displayType == 0;
    v7->_layoutMonitor = (function)(v14);
    displayType = v7->_displayType;
    if (displayType == 1)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69D4218]);
      v7->_externalDisplayService = v10;
      [(SBSExternalDisplayService *)v10 addObserver:v7];
      displayType = v7->_displayType;
    }

    if (displayType > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_1E7999778[displayType];
    }

    v7->_osStateHandle = -[FigCaptureOSStateHandle initWithTitle:queue:dataProvider:]([FigCaptureOSStateHandle alloc], "initWithTitle:queue:dataProvider:", [MEMORY[0x1E696AEC0] stringWithFormat:@"LayoutMonitor - %@", v11, v13], 0, v7);
    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  return v7;
}

void __92__FigCaptureDisplayLayoutMonitor_initWithFBSDisplayLayoutMonitorCreateFunction_displayType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  Weak = objc_loadWeak((a1 + 32));

  [(FigCaptureDisplayLayoutMonitor *)Weak _parseFBSDisplayLayout:a3];
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];

  FigSimpleMutexDestroy();
  FigSimpleMutexDestroy();

  v3.receiver = self;
  v3.super_class = FigCaptureDisplayLayoutMonitor;
  [(FigCaptureDisplayLayoutMonitor *)&v3 dealloc];
}

- (void)removeLayoutObserver:(id)observer
{
  FigSimpleMutexLock();
  FigSimpleMutexLock();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layoutObservers = self->_layoutObservers;
  v6 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(layoutObservers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        referencedObject = [v10 referencedObject];

        objc_autoreleasePoolPop(v11);
        if (referencedObject == observer)
        {
          if (v10)
          {
            [(NSMutableArray *)self->_layoutObservers removeObject:v10];
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
  FigSimpleMutexUnlock();
  FigSimpleMutexUnlock();
}

- (FigCaptureDisplayLayout)currentLayout
{
  FigSimpleMutexLock();
  v3 = self->_layout;
  FigSimpleMutexUnlock();
  return v3;
}

- (BOOL)isOnHomeScreen
{
  currentLayout = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];

  return [(FigCaptureDisplayLayoutMonitor *)self _isFBSDisplayLayoutOnHomeScreen:currentLayout];
}

- (BOOL)isOnLockScreen
{
  currentLayout = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];

  return [(FigCaptureDisplayLayoutMonitor *)self _isFBSDisplayLayoutOnLockScreen:currentLayout];
}

- (void)_startMonitoringDisplayWithIdentity:(uint64_t)identity
{
  if (identity)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3052000000;
    v14[3] = __Block_byref_object_copy__30;
    v14[4] = __Block_byref_object_dispose__30;
    v14[5] = identity;
    v4 = *(identity + 8);
    if (v4 == 1)
    {
      isExternal = [a2 isExternal];
    }

    else
    {
      if (v4)
      {
LABEL_12:
        _Block_object_dispose(v14, 8);
        return;
      }

      isExternal = [a2 isMainDisplay];
    }

    if (isExternal)
    {
      if ([a2 isExternal])
      {
        v6 = SBSCreateLayoutServiceEndpointForExternalDisplay();
        if (v6)
        {
          if (dword_1ED8440F0)
          {
            v13 = 0;
            v12 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __70__FigCaptureDisplayLayoutMonitor__startMonitoringDisplayWithIdentity___block_invoke;
          v11[3] = &unk_1E7999758;
          v11[4] = v14;
          v8 = [MEMORY[0x1E699FAF8] configurationWithEndpoint:{v6, v9, v10}];
          [v8 setNeedsUserInteractivePriority:1];
          [v8 setTransitionHandler:v11];
          FigSimpleMutexLock();
          *(identity + 40) = 1;
          [*(identity + 64) invalidate];

          *(identity + 64) = [MEMORY[0x1E699FAE0] monitorWithConfiguration:v8];
          FigSimpleMutexUnlock();
        }
      }
    }

    goto LABEL_12;
  }
}

- (id)osStatePropertyList
{
  array = [MEMORY[0x1E695DF70] array];
  FigSimpleMutexLock();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  layoutObservers = self->_layoutObservers;
  v5 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(layoutObservers);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        referencedObject = [v9 referencedObject];
        [array addObject:{objc_msgSend(referencedObject, "description")}];

        objc_autoreleasePoolPop(v10);
      }

      v6 = [(NSMutableArray *)layoutObservers countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v6);
  }

  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  displayConnected = self->_displayConnected;
  v13 = [(FigCaptureDisplayLayout *)self->_layout description];
  if ([(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout])
  {
    v14 = [objc_msgSend(-[FBSDisplayLayoutMonitor currentLayout](self->_layoutMonitor "currentLayout")];
  }

  else
  {
    v14 = @"nil";
  }

  FigSimpleMutexUnlock();
  v17[0] = [MEMORY[0x1E696AD98] numberWithBool:{displayConnected, @"connected"}];
  v17[1] = array;
  v16[1] = @"observers";
  v16[2] = @"layout";
  v16[3] = @"FBSDisplayLayout";
  v17[2] = v13;
  v17[3] = v14;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
}

+ (id)sharedExternalDisplayLayoutMonitor
{
  if ((os_variant_is_darwinos() & 1) == 0 && qword_1ED844F78 != -1)
  {
    dispatch_once(&qword_1ED844F78, &__block_literal_global_17_0);
  }

  return qword_1ED844F70;
}

- (void)_parseFBSDisplayLayout:(uint64_t)layout
{
  if (!layout)
  {
    return;
  }

  layoutCopy = layout;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  if (dword_1ED8440F0)
  {
    v71[0] = 0;
    v70 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    v5 = *(layoutCopy + 8);
    if (!v5)
    {
      if ([objc_msgSend(a2 "displayConfiguration")])
      {
        goto LABEL_13;
      }

      v5 = *(layoutCopy + 8);
    }

    if (v5 == 1)
    {
      if ([objc_msgSend(a2 "displayConfiguration")])
      {
        goto LABEL_13;
      }

      v5 = *(layoutCopy + 8);
    }

    if (v5 != 2 || ![objc_msgSend(a2 "displayConfiguration")])
    {
      return;
    }
  }

LABEL_13:
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  elements = [a2 elements];
  v7 = [elements countByEnumeratingWithState:&v66 objects:v65 count:16];
  v58 = layoutCopy;
  if (!v7)
  {
    level3 = 0;
LABEL_25:
    FigSimpleMutexLock();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    elements2 = [a2 elements];
    v15 = [elements2 countByEnumeratingWithState:&v61 objects:v60 count:16];
    if (!v15)
    {
      OUTLINED_FUNCTION_7_51();
      goto LABEL_64;
    }

    v16 = v15;
    OUTLINED_FUNCTION_7_51();
    v17 = *v62;
    v53 = *MEMORY[0x1E699F8B0];
    v51 = *MEMORY[0x1E699F8A8];
    v50 = *MEMORY[0x1E699F8A0];
    v49 = *MEMORY[0x1E699F898];
    v48 = *MEMORY[0x1E69D43B8];
    v47 = *MEMORY[0x1E69D4408];
    v46 = *MEMORY[0x1E69D4418];
    while (1)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(elements2);
        }

        v19 = *(*(&v61 + 1) + 8 * i);
        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [a2 bounds];
        v73.origin.x = v28;
        v73.origin.y = v29;
        v73.size.width = v30;
        v73.size.height = v31;
        v72.origin.x = v21;
        v72.origin.y = v23;
        v72.size.width = v25;
        v72.size.height = v27;
        v32 = CGRectEqualToRect(v72, v73);
        if ([v19 isUIApplicationElement])
        {
          if ([v19 level] < level3)
          {
            bundleIdentifier = [v19 bundleIdentifier];
            v34 = array3;
LABEL_34:
            [v34 addObject:bundleIdentifier];
            continue;
          }

          if ([v19 layoutRole] == 5)
          {
            if (([v19 sb_isStashedPIP] & 1) == 0)
            {
              bundleIdentifier = [v19 bundleIdentifier];
              v34 = array5;
              goto LABEL_34;
            }
          }

          else
          {
            if (([array containsObject:{objc_msgSend(v19, "bundleIdentifier")}] & 1) == 0 && (objc_msgSend(array2, "containsObject:", objc_msgSend(v19, "bundleIdentifier")) & 1) == 0)
            {
              bundleIdentifier2 = [v19 bundleIdentifier];
              if (v32)
              {
                v37 = array;
              }

              else
              {
                v37 = array2;
              }

              [v37 addObject:bundleIdentifier2];
            }

            if ([v19 level] > level)
            {
              level = [v19 level];
            }

            if ([v19 sb_isTransitioning])
            {
              bundleIdentifier = [v19 bundleIdentifier];
              v34 = array4;
              goto LABEL_34;
            }
          }
        }

        else
        {
          bundleIdentifier3 = [v19 bundleIdentifier];
          if ([bundleIdentifier3 length])
          {
            if (!v32)
            {
              continue;
            }
          }

          else
          {
            bundleIdentifier3 = [v19 identifier];
            if (!v32)
            {
              continue;
            }
          }

          if (!*(v58 + 56))
          {
            v59[0] = v53;
            v59[1] = v51;
            v59[2] = v50;
            v59[3] = v49;
            v59[4] = @"com.apple.CMViewSrvc";
            v59[5] = v48;
            v59[6] = v47;
            v59[7] = v46;
            v59[8] = @"SBControlCenterModuleTransientOverlayViewController";
            v59[9] = 0x1F2185450;
            v59[10] = 0x1F2185470;
            *(v58 + 56) = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:11];
          }

          if ([bundleIdentifier3 hasPrefix:@"SUIS-ProximityReaderSceneUI-ProximityReader:"])
          {
            v54 = 1;
          }

          else if ([bundleIdentifier3 hasPrefix:@"SUIS-ProximityReaderSceneUI-ProximityReaderIDVerifier:"])
          {
            v43 = 1;
          }

          else if ([*(v58 + 56) containsObject:bundleIdentifier3])
          {
            v42 |= objc_msgSend_isEqualToString_(bundleIdentifier3);
          }

          else if ([v19 level] >= level2)
          {
            v40 = bundleIdentifier3;
            level2 = [v19 level];
          }
        }
      }

      v16 = [elements2 countByEnumeratingWithState:&v61 objects:v60 count:16];
      layoutCopy = v58;
      if (!v16)
      {
LABEL_64:
        if (level2 > level || (v54 & 1) != 0 || (v43 & 1) != 0)
        {
          [array3 addObjectsFromArray:array];
          [array3 addObjectsFromArray:array2];
          [array3 addObjectsFromArray:array5];
          [array removeAllObjects];
          [array2 removeAllObjects];
          [array5 removeAllObjects];
          if (!((v40 == 0) | (v54 | v43) & 1))
          {
            [array addObject:v40];
          }
        }

        [array count];
        [array2 count];

        *(layoutCopy + 48) = [[FigCaptureDisplayLayout alloc] _init];
        objc_msgSend_timestamp(a2);
        [OUTLINED_FUNCTION_6_53() setTimestamp:?];
        [*(layoutCopy + 48) setDisplayType:*(layoutCopy + 8)];
        [array arrayByAddingObjectsFromArray:array2];
        [OUTLINED_FUNCTION_6_53() setForegroundApps:?];
        [MEMORY[0x1E695DEC8] arrayWithArray:array3];
        [OUTLINED_FUNCTION_6_53() setObscuredApps:?];
        [MEMORY[0x1E695DEC8] arrayWithArray:array4];
        [OUTLINED_FUNCTION_6_53() setTransitioningApps:?];
        [MEMORY[0x1E695DEC8] arrayWithArray:array5];
        [OUTLINED_FUNCTION_6_53() setPipApps:?];
        [*(layoutCopy + 48) setOnHomeScreen:{-[FigCaptureDisplayLayoutMonitor _isFBSDisplayLayoutOnHomeScreen:](layoutCopy, a2)}];
        [*(layoutCopy + 48) setOnLockScreen:{-[FigCaptureDisplayLayoutMonitor _isFBSDisplayLayoutOnLockScreen:](layoutCopy, a2)}];
        [*(layoutCopy + 48) setSiriVisible:v42 & 1];
        [*(layoutCopy + 48) setPaymentServiceVisible:v54 & 1];
        [*(layoutCopy + 48) setPaymentServiceIDVerifierVisible:v43 & 1];
        if (*(layoutCopy + 8) == 2)
        {
          *(layoutCopy + 40) = a2 != 0;
        }

        [(FigCaptureDisplayLayoutMonitor *)layoutCopy _updateObserversWithLayout:?];
        FigSimpleMutexUnlock();
        return;
      }
    }
  }

  v8 = v7;
  level3 = 0;
  v10 = 0;
  v11 = *v67;
  do
  {
    for (j = 0; j != v8; ++j)
    {
      if (*v67 != v11)
      {
        objc_enumerationMutation(elements);
      }

      v13 = *(*(&v66 + 1) + 8 * j);
      if (objc_msgSend_isEqualToString_([v13 identifier]))
      {
        v10 = 1;
      }

      else if (objc_msgSend_isEqualToString_([v13 identifier]))
      {
        level3 = [v13 level];
      }
    }

    v8 = [elements countByEnumeratingWithState:&v66 objects:v65 count:16];
  }

  while (v8);
  layoutCopy = v58;
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }
}

- (void)_addLayoutObserver:(int)observer withImmediateCallback:
{
  if (self)
  {
    v6 = [[FigWeakReference alloc] initWithReferencedObject:a2];
    FigSimpleMutexLock();
    [*(self + 24) addObject:v6];
    FigSimpleMutexUnlock();

    if (observer)
    {
      FigSimpleMutexLock();
      [a2 layoutMonitor:self didUpdateLayout:*(self + 48)];

      FigSimpleMutexUnlock();
    }
  }
}

- (uint64_t)_isFBSDisplayLayoutOnHomeScreen:(uint64_t)result
{
  if (result)
  {
    if ([objc_msgSend(a2 "elements")] == 1 || objc_msgSend(objc_msgSend(a2, "elements"), "count") == 2)
    {
      v3 = OUTLINED_FUNCTION_10_37();
      OUTLINED_FUNCTION_43();
      v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
LABEL_6:
        v8 = 0;
        while (1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(v10 + 8 * v8);
          if ((objc_msgSend_isEqualToString_([v9 identifier]) & 1) == 0)
          {
            result = objc_msgSend_isEqualToString_([v9 identifier]);
            if (!result)
            {
              break;
            }
          }

          if (v6 == ++v8)
          {
            OUTLINED_FUNCTION_43();
            v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
            if (v6)
            {
              goto LABEL_6;
            }

            return 1;
          }
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_isFBSDisplayLayoutOnLockScreen:(void *)result
{
  if (result)
  {
    result = [a2 displayBacklightLevel];
    if (result)
    {
      v2 = OUTLINED_FUNCTION_10_37();
      OUTLINED_FUNCTION_43();
      v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (v4)
      {
        v5 = v4;
        v6 = *v14;
        v7 = 0x8000000000000000;
        level2 = 0x8000000000000000;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v14 != v6)
            {
              objc_enumerationMutation(v2);
            }

            v10 = *(v13 + 8 * i);
            isEqualToString = objc_msgSend_isEqualToString_([v10 identifier]);
            level = [v10 level];
            if (isEqualToString)
            {
              v7 = level;
            }

            else if (level > level2)
            {
              level2 = [v10 level];
            }
          }

          OUTLINED_FUNCTION_43();
          v5 = [v2 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v5);
      }

      else
      {
        v7 = 0x8000000000000000;
        level2 = 0x8000000000000000;
      }

      return (v7 > level2);
    }
  }

  return result;
}

- (uint64_t)_stopMonitoringDisplayWithIdentity:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 8);
    if (v3 == 1)
    {
      result = [a2 isExternal];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v3)
      {
        return result;
      }

      result = [a2 isMainDisplay];
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    if (dword_1ED8440F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    *(v2 + 40) = 0;
    [*(v2 + 64) invalidate];

    *(v2 + 64) = 0;
    *(v2 + 48) = [[FigCaptureDisplayLayout alloc] _init];
    [*(v2 + 48) setTimestamp:{objc_msgSend(MEMORY[0x1E695DF00], "date")}];
    [*(v2 + 48) setDisplayType:*(v2 + 8)];
    [(FigCaptureDisplayLayoutMonitor *)v2 _updateObserversWithLayout:?];
    return FigSimpleMutexUnlock();
  }

  return result;
}

- (void)_updateObserversWithLayout:(uint64_t)layout
{
  if (layout)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    if (dword_1ED8440F0)
    {
      v76 = 0;
      v75[128] = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v6 = OUTLINED_FUNCTION_5_24(v5);
      if (v6)
      {
        v69 = 136315650;
        v70 = "[FigCaptureDisplayLayoutMonitor _updateObserversWithLayout:]";
        v71 = 2114;
        layoutCopy = layout;
        v73 = 2114;
        v74 = a2;
        LODWORD(v35) = 32;
        v33 = &v69;
        OUTLINED_FUNCTION_5_0(v6, v7, v75, v8, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    v9 = [*(layout + 24) copy];
    v10 = FigSimpleMutexUnlock();
    v18 = OUTLINED_FUNCTION_17_0(v10, v11, v12, v13, v14, v15, v16, v17, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67);
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(8 * i);
          v23 = objc_autoreleasePoolPush();
          referencedObject = [v22 referencedObject];
          [referencedObject layoutMonitor:layout didUpdateLayout:a2];

          objc_autoreleasePoolPop(v23);
        }

        v19 = OUTLINED_FUNCTION_17_0(v25, v26, v27, v28, v29, v30, v31, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68);
      }

      while (v19);
    }
  }
}

- (uint64_t)_displayIdentityForDisplayInfo:(uint64_t)info
{
  if (!info)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E699FB10]);
  connectedIdentities = [v4 connectedIdentities];
  OUTLINED_FUNCTION_43();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(connectedIdentities);
        }

        v11 = *(8 * i);
        v12 = *(info + 8);
        if (v12 == 1)
        {
          if (![*(8 * i) isExternal])
          {
            continue;
          }
        }

        else if (v12 || ([*(8 * i) isMainDisplay] & 1) == 0)
        {
          continue;
        }

        v13 = [v4 configurationForIdentity:v11];
        identifier = [a2 identifier];
        [v13 hardwareIdentifier];
        if (objc_msgSend_isEqualToString_(identifier))
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_43();
      v8 = [connectedIdentities countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v11 = 0;
LABEL_16:
  [v4 invalidate];

  return v11;
}

- (void)externalDisplayDidConnect:(id)connect
{
  if (dword_1ED8440F0)
  {
    v4 = OUTLINED_FUNCTION_4_62();
    v5 = OUTLINED_FUNCTION_36_0(v4);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      OUTLINED_FUNCTION_2_78();
      OUTLINED_FUNCTION_5_0(v6, v7, v15, v8, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = OUTLINED_FUNCTION_3_19();
  v11 = [(FigCaptureDisplayLayoutMonitor *)v9 _displayIdentityForDisplayInfo:v10];
  if (self)
  {
    displayType = self->_displayType;
    if (displayType == 1)
    {
      if (![v11 isExternal])
      {
        return;
      }

      goto LABEL_9;
    }

    if (!displayType && ([v11 isMainDisplay] & 1) != 0)
    {
LABEL_9:
      v13 = OUTLINED_FUNCTION_3_19();
      [(FigCaptureDisplayLayoutMonitor *)v13 _startMonitoringDisplayWithIdentity:v14];
    }
  }
}

- (void)externalDisplayWillDisconnect:(id)disconnect
{
  if (dword_1ED8440F0)
  {
    v4 = OUTLINED_FUNCTION_4_62();
    v5 = OUTLINED_FUNCTION_36_0(v4);
    if (OUTLINED_FUNCTION_5_24(v5))
    {
      OUTLINED_FUNCTION_2_78();
      OUTLINED_FUNCTION_5_0(v6, v7, v15, v8, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = OUTLINED_FUNCTION_3_19();
  v11 = [(FigCaptureDisplayLayoutMonitor *)v9 _displayIdentityForDisplayInfo:v10];
  if (self)
  {
    displayType = self->_displayType;
    if (displayType == 1)
    {
      if (![v11 isExternal])
      {
        return;
      }
    }

    else if (displayType || ([v11 isMainDisplay] & 1) == 0)
    {
      return;
    }

    v13 = OUTLINED_FUNCTION_3_19();
    [(FigCaptureDisplayLayoutMonitor *)v13 _stopMonitoringDisplayWithIdentity:v14];
  }
}

@end
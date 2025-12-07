@interface UIKeyboardArbiter
@end

@implementation UIKeyboardArbiter

void __49___UIKeyboardArbiter_updateKeyboardSceneSettings__block_invoke(uint64_t a1)
{
  if (!*(a1 + 32) || ([getFBSceneManagerClass() sharedInstance], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "sceneFromIdentityToken:", *(a1 + 32)), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3) || (objc_msgSend(v3, "settings"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "displayConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), v4, v3, !v5))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v6 = getFBDisplayManagerClass_softClass;
    v30 = getFBDisplayManagerClass_softClass;
    if (!getFBDisplayManagerClass_softClass)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __getFBDisplayManagerClass_block_invoke;
      v26[3] = &unk_2797F4CF8;
      v26[4] = &v27;
      __getFBDisplayManagerClass_block_invoke(v26);
      v6 = v28[3];
    }

    v7 = v6;
    _Block_object_dispose(&v27, 8);
    v5 = [v6 mainConfiguration];
  }

  v8 = [getFBSceneManagerClass() keyboardScene];
  [v5 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v8 settings];
  v18 = [v17 displayConfiguration];
  [v18 bounds];
  v32.origin.x = v19;
  v32.origin.y = v20;
  v32.size.width = v21;
  v32.size.height = v22;
  v31.origin.x = v10;
  v31.origin.y = v12;
  v31.size.width = v14;
  v31.size.height = v16;
  v23 = CGRectEqualToRect(v31, v32);

  if (!v23)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49___UIKeyboardArbiter_updateKeyboardSceneSettings__block_invoke_2;
    v24[3] = &unk_2797F4990;
    v25 = v5;
    [v8 updateSettingsWithBlock:v24];
  }
}

uint64_t __35___UIKeyboardArbiter_initWithLink___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneLink];
  [v2 connectWithQueue:*(*(a1 + 32) + 8)];

  v3 = *(a1 + 32);

  return [v3 attemptConnection];
}

void __35___UIKeyboardArbiter_initWithLink___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setValues:5];
  v8[0] = *MEMORY[0x277D0AC90];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 setEndowmentNamespaces:v5];

  [v3 setStateDescriptor:v4];
  [v3 setServiceClass:33];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35___UIKeyboardArbiter_initWithLink___block_invoke_3;
  v6[3] = &unk_2797F4658;
  objc_copyWeak(&v7, (a1 + 32));
  [v3 setUpdateHandler:v6];
  objc_destroyWeak(&v7);
}

void __35___UIKeyboardArbiter_initWithLink___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 state];
  v9 = [v8 endowmentNamespaces];
  v10 = [v9 containsObject:*MEMORY[0x277D0AC90]];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [v7 pid];

  v12 = [v6 state];
  LODWORD(v9) = [v12 taskState] == 4;
  v13 = [v6 state];

  [WeakRetained processWithPID:v11 foreground:v9 & v10 suspended:{objc_msgSend(v13, "taskState") == 3}];
}

void __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2)
  {
    a2 = &unk_286795790;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke_77(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2)
  {
    a2 = &unk_2867957A8;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = v2;
  dispatch_group_leave(*(a1 + 32));
}

void __61___UIKeyboardArbiter_retrieveDebugInformationWithCompletion___block_invoke_2(uint64_t a1)
{
  v6 = [*(*(*(a1 + 48) + 8) + 40) arrayByAddingObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
  v2 = [*(a1 + 32) blankKeyboardLogs];

  if (v2)
  {
    v3 = [*(a1 + 32) blankKeyboardLogs];
    v4 = [v6 arrayByAddingObjectsFromArray:v3];

    [*(a1 + 32) setBlankKeyboardLogs:0];
    [*(a1 + 32) setBlankKeyboardRecordTime:0.0];
    v5 = v4;
  }

  else
  {
    v5 = v6;
  }

  v7 = v5;
  (*(*(a1 + 40) + 16))();
}

void __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _descriptionWithScene:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_2;
  v7[3] = &unk_2797F4720;
  v8 = v4;
  v9 = v3;
  v5 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = @"Description";
  v5 = v3;
  if (!v3)
  {
    v5 = [*(a1 + 40) _descriptionWithScene:0];
  }

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 addObject:v6];

  if (!v3)
  {
  }
}

void __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 16);
  v14 = v6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_5;
  v15[3] = &unk_2797F4748;
  v16 = v5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_7;
  v11[3] = &unk_2797F47C0;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  AsyncTaskWithTimeout(v7, v8, v15, v11);
}

void __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_6;
  v6[3] = &unk_2797F4798;
  v7 = v3;
  v5 = v3;
  [v4 queue_getDebugInfoWithCompletion:v6];
}

uint64_t __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = &unk_286795768;
  }

  return (*(v2 + 16))(v2, a2);
}

void __67___UIKeyboardArbiter_retrieveClientDebugInformationWithCompletion___block_invoke_7(uint64_t a1, void *a2)
{
  v4 = a2;
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 32);
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  else
  {
    [v3 setObject:@"Timed out/hung" forKey:@"Process"];
  }

  [*(a1 + 40) addObject:*(a1 + 32)];
}

void __39___UIKeyboardArbiter_attemptConnection__block_invoke(uint64_t a1, char a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    memset(v13, 0, sizeof(v13));
    v3 = _UIArbiterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v12[0] = 0;
    v5 = _os_log_send_and_compose_impl(v4, 0, v13, 512, &dword_2557BA000, v3, 16, "Failed to connect - scheduling retry", v12, 2);

    v6 = +[_UIKeyboardArbiterDebug sharedInstance];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v13];
    [v6 errorWithMessage:v7];

    if (v5 != v13)
    {
      free(v5);
    }

    v8 = dispatch_time(0, 1000000000);
    v9 = *(a1 + 32);
    v10 = *(v9 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39___UIKeyboardArbiter_attemptConnection__block_invoke_122;
    block[3] = &unk_2797F4630;
    block[4] = v9;
    dispatch_after(v8, v10, block);
  }
}

void __59___UIKeyboardArbiter_runOperations_onHandler_fromFunction___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v3 = a2;
  v4 = _UIArbiterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = 136315650;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v3;
  v8 = _os_log_send_and_compose_impl(v5, 0, v18, 512, &dword_2557BA000, v4, 16, "runOperations: %s Failed to access %@ remote service: %@", &v12, 32);

  v9 = +[_UIKeyboardArbiterDebug sharedInstance];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);

  v11 = [v10 initWithUTF8String:v18];
  [v9 errorWithMessage:v11];

  if (v8 != v18)
  {
    free(v8);
  }
}

uint64_t __59___UIKeyboardArbiter_runOperations_onHandler_fromFunction___block_invoke_125(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v2 = *(a1 + 40);

  return [v2 releaseProcessAssertion];
}

void __43___UIKeyboardArbiter_scheduleWindowTimeout__block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 144) == *(a1 + 40))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = *(v1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        v7 = 0;
        do
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v23 + 1) + 8 * v7);
          if ([v8 active])
          {
            WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
            if (v8 == WeakRetained || ([v8 running] & 1) != 0 || objc_msgSend(v8, "hasHostedPids"))
            {
            }

            else
            {
              v10 = objc_loadWeakRetained((*(a1 + 32) + 48));

              if (v8 != v10)
              {
                memset(v31, 0, sizeof(v31));
                v11 = _UIArbiterLog();
                if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                {
                  v12 = 3;
                }

                else
                {
                  v12 = 2;
                }

                v13 = objc_opt_class();
                v27 = 138412546;
                v28 = v13;
                v29 = 2112;
                v30 = v8;
                v14 = v13;
                LODWORD(v22) = 22;
                v15 = _os_log_send_and_compose_impl(v12, 0, v31, 512, &dword_2557BA000, v11, 16, "[%@] Dropping %@", &v27, v22);

                v16 = +[_UIKeyboardArbiterDebug sharedInstance];
                v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v31];
                [v16 errorWithMessage:v17];

                if (v15 != v31)
                {
                  free(v15);
                }

                v18 = [v8 sceneLayer];
                v19 = [v18 contextID];
                v20 = [v8 remoteFocusContext];
                [v8 setWindowContextID:v19 focusContext:v20 windowState:0 withLevel:0.0];

                [*(a1 + 32) runOperations:&__block_literal_global_0 onHandler:v8 fromFunction:"-[_UIKeyboardArbiter scheduleWindowTimeout]_block_invoke_2"];
              }
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v21 = [v3 countByEnumeratingWithState:&v23 objects:v32 count:16];
        v5 = v21;
      }

      while (v21);
    }
  }
}

void __57___UIKeyboardArbiter_updateKeyboardUIStatus_fromHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57___UIKeyboardArbiter_updateKeyboardUIStatus_fromHandler___block_invoke_2;
  v8[3] = &unk_2797F47E8;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [v4 runOperations:v8 onHandler:v7 fromFunction:"-[_UIKeyboardArbiter updateKeyboardUIStatus:fromHandler:]_block_invoke"];
}

void __57___UIKeyboardArbiter_updateKeyboardUIStatus_fromHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 wantsFence];
  v9 = 48;
  if (v8)
  {
    v9 = 40;
  }

  v11 = [*(a1 + v9) copy];
  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 40));
  [v11 setIsLocal:WeakRetained == *(a1 + 32)];

  [v7 queue_keyboardUIDidChange:v11 onComplete:v6];
}

void __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 isViewService] || (objc_msgSend(v6, "sourceBundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.Spotlight"), v7, (v8 & 1) == 0))
  {
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke_2;
    v10[3] = &unk_2797F48D0;
    v11 = v6;
    v12 = v5;
    v13 = *(a1 + 40);
    [v9 runOperations:v10 onHandler:v12 fromFunction:"-[_UIKeyboardArbiter updateKeyboardStatus:fromHandler:fromFocus:]_block_invoke"];
  }
}

void __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke_2(id *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (![a1[4] resizing] || objc_msgSend(a1[5], "active"))
  {
    v6 = a1[5];
    if (v6 == a1[6] || ![v6 wantsFence])
    {
      v7 = [a1[4] copyWithoutFence];
      [v8 queue_keyboardChanged:v7 onComplete:v5];
    }

    else
    {
      [v8 queue_keyboardChanged:a1[4] onComplete:v5];
    }
  }
}

void __65___UIKeyboardArbiter_updateKeyboardStatus_fromHandler_fromFocus___block_invoke_2_154(void *a1)
{
  v2 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 40));

  if (v2 != WeakRetained)
  {
    v4 = *(a1[7] + 16);

    v4();
  }
}

void __42___UIKeyboardArbiter_notifyHeightUpdated___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = a1;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v3 isHandlerShowableWithHandler:v9])
        {
          v10 = *(v14 + 40);
          v11 = MEMORY[0x277CCABB0];
          [v9 iavHeight];
          v12 = [v11 numberWithDouble:?];
          v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "processIdentifier")}];
          [v10 setObject:v12 forKey:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

void __56___UIKeyboardArbiter_handleUnexpectedDeallocForHandler___block_invoke(uint64_t a1)
{
  v2 = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(v2);
  [*(a1 + 32) invalidate];
  [*(a1 + 32) clearAcquiringFocus];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v4 = *(a1 + 32);

  if (WeakRetained == v4)
  {
    objc_storeWeak((*(a1 + 40) + 40), 0);
    v5 = _UIArbiterEventsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2557BA000, v5, OS_LOG_TYPE_DEFAULT, "set activeInputDestination:(null) (unexpectedDeallocForHandler)", buf, 2u);
    }
  }

  v6 = objc_loadWeakRetained((*(a1 + 40) + 48));
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    objc_storeWeak((*(a1 + 40) + 48), 0);
  }

  v8 = objc_loadWeakRetained((*(a1 + 40) + 104));
  v9 = *(a1 + 32);

  if (v8 == v9)
  {
    objc_storeWeak((*(a1 + 40) + 104), 0);
  }

  v10 = objc_loadWeakRetained((*(a1 + 40) + 112));
  v11 = *(a1 + 32);

  if (v10 == v11)
  {
    objc_storeWeak((*(a1 + 40) + 112), 0);
    v12 = _UIArbiterEventsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 0;
      _os_log_impl(&dword_2557BA000, v12, OS_LOG_TYPE_DEFAULT, "set focusRequestedHandle:(null) (unexpectedDeallocForHandler)", v15, 2u);
    }
  }

  v13 = objc_loadWeakRetained((*(a1 + 40) + 248));
  v14 = *(a1 + 32);

  if (v13 == v14)
  {
    objc_storeWeak((*(a1 + 40) + 248), 0);
  }

  objc_sync_exit(v2);
}

void __49___UIKeyboardArbiter_updateKeyboardSceneSettings__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDisplayConfiguration:v3];
  [*(a1 + 32) bounds];
  [v4 setFrame:?];
}

void __58___UIKeyboardArbiter_processWithPID_foreground_suspended___block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) handlerForPID:*(a1 + 40)];
  v3 = [v2 running];
  [v2 setRunning:(*(a1 + 44) & 1) == 0];
  v4 = [v2 running];
  if (v3)
  {
    if (v4)
    {
      goto LABEL_40;
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    *buf = 0u;
    v61 = 0u;
    v5 = _UIArbiterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v58 = 138412290;
    v59 = v2;
    v7 = _os_log_send_and_compose_impl(v6, 0, buf, 512, &dword_2557BA000, v5, 2, "[%@] suspended", &v58, 12);

    v8 = +[_UIKeyboardArbiterDebug sharedInstance];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v8 debugWithMessage:v9];

    if (v7 != buf)
    {
      free(v7);
    }

    [v2 clearAcquiringFocus];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));

    v11 = WeakRetained == v2;
    if (WeakRetained == v2)
    {
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x277D76088] informationForKeyboardDown];
      [v12 updateKeyboardStatus:v13 fromHandler:v2];

      objc_storeWeak((*(a1 + 32) + 48), 0);
      if ([v2 isViewService])
      {
        [v2 activeProcessResign];
      }
    }

    v14 = objc_loadWeakRetained((*(a1 + 32) + 112));

    if (v2 == v14)
    {
      objc_storeWeak((*(a1 + 32) + 112), 0);
      v15 = _UIArbiterEventsLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2557BA000, v15, OS_LOG_TYPE_DEFAULT, "set focusRequestedHandle:(null) (processSuspended)", buf, 2u);
      }

      v11 = 1;
    }

    v16 = objc_loadWeakRetained((*(a1 + 32) + 104));

    if (v2 == v16)
    {
      objc_storeWeak((*(a1 + 32) + 104), 0);
      v11 = 1;
    }

    v17 = *(*(a1 + 32) + 120);
    v18 = [v2 remoteFocusContext];
    v19 = [v18 sceneIdentity];
    v20 = [v19 stringRepresentation];
    LODWORD(v17) = [v17 containsObject:v20];

    if (v17)
    {
      v21 = *(*(a1 + 32) + 120);
      v22 = [v2 remoteFocusContext];
      v23 = [v22 sceneIdentity];
      v24 = [v23 stringRepresentation];
      [v21 removeObject:v24];
    }

    else if (!v11)
    {
      goto LABEL_40;
    }

    [*(a1 + 32) reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:0];
  }

  else if (v4)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    *buf = 0u;
    v61 = 0u;
    v25 = _UIArbiterLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v58 = 138412290;
    v59 = v2;
    v27 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_2557BA000, v25, 2, "[%@] started running", &v58, 12);

    v28 = +[_UIKeyboardArbiterDebug sharedInstance];
    v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v28 debugWithMessage:v29];

    if (v27 != buf)
    {
      free(v27);
    }

    v30 = objc_loadWeakRetained((*(a1 + 32) + 40));

    if (v2 == v30)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      *buf = 0u;
      v61 = 0u;
      v34 = _UIArbiterLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      v58 = 138412290;
      v59 = v2;
      LODWORD(v54) = 12;
      v36 = _os_log_send_and_compose_impl(v35, 0, buf, 512, &dword_2557BA000, v34, 2, "[%@] abnormal state - resuming handle was already active", &v58, v54);

      v37 = +[_UIKeyboardArbiterDebug sharedInstance];
      v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v37 debugWithMessage:v38];

      if (v36 != buf)
      {
        free(v36);
      }
    }

    else
    {
      v31 = [*(a1 + 32) lastUpdate];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = [MEMORY[0x277D76088] informationForKeyboardDown];
      }

      v39 = v33;

      if (![v2 isViewService] || (objc_msgSend(v39, "sourceBundleIdentifier"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", @"com.apple.Spotlight"), v40, (v41 & 1) == 0))
      {
        v42 = *(a1 + 32);
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __58___UIKeyboardArbiter_processWithPID_foreground_suspended___block_invoke_177;
        v55[3] = &unk_2797F4A00;
        v56 = v2;
        v57 = v39;
        [v42 runOperations:v55 onHandler:v56 fromFunction:"-[_UIKeyboardArbiter processWithPID:foreground:suspended:]_block_invoke_2"];
      }
    }
  }

LABEL_40:
  v43 = objc_loadWeakRetained((*(a1 + 32) + 40));

  if (v43 == v2)
  {
    if (*(a1 + 45) == 1)
    {
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      *buf = 0uLL;
      v61 = 0uLL;
      v44 = _UIArbiterLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      v58 = 138412290;
      v59 = v2;
      LODWORD(v54) = 12;
      v46 = _os_log_send_and_compose_impl(v45, 0, buf, 512, &dword_2557BA000, v44, 2, "[%@] foregrounded", &v58, v54);

      v47 = +[_UIKeyboardArbiterDebug sharedInstance];
      v48 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v47 debugWithMessage:v48];

      if (v46 != buf)
      {
        free(v46);
      }

      [v2 uncacheWindowContext];
    }

    else
    {
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v86 = 0uLL;
      v87 = 0uLL;
      v84 = 0uLL;
      v85 = 0uLL;
      v82 = 0uLL;
      v83 = 0uLL;
      v80 = 0uLL;
      v81 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      *buf = 0uLL;
      v61 = 0uLL;
      v49 = _UIArbiterLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v58 = 138412290;
      v59 = v2;
      LODWORD(v54) = 12;
      v51 = _os_log_send_and_compose_impl(v50, 0, buf, 512, &dword_2557BA000, v49, 2, "[%@] no longer foreground", &v58, v54);

      v52 = +[_UIKeyboardArbiterDebug sharedInstance];
      v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v52 debugWithMessage:v53];

      if (v51 != buf)
      {
        free(v51);
      }

      [v2 cacheWindowContext];
    }
  }
}

void __58___UIKeyboardArbiter_processWithPID_foreground_suspended___block_invoke_177(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) wantsFence])
  {
    [v7 queue_keyboardChanged:*(a1 + 40) onComplete:v5];
  }

  else
  {
    v6 = [*(a1 + 40) copyWithoutFence];
    [v7 queue_keyboardChanged:v6 onComplete:v5];
  }
}

void __70___UIKeyboardArbiter_handlerRequestedForcedClientSceneIdentityUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 remoteFocusContext];
  v7 = [v8 sceneIdentity];
  [v6 queue_sceneBecameFocused:v7 withCompletion:v5];
}

void __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

void __86___UIKeyboardArbiter_setKeyboardTotalDisable_withFence_fromHandler_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D774C0] code:a2 userInfo:0];
  (*(v2 + 16))(v2, v3);
}

uint64_t __50___UIKeyboardArbiter__previouslyFocusedHostHandle__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 remoteFocusContext];
  v4 = [v3 sceneIdentity];
  v5 = [v4 stringRepresentation];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

void __55___UIKeyboardArbiter_applySceneFocusChange_forRequest___block_invoke(id *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = _UIArbiterEventsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v16 = a1[4];
    v17 = a1[5];
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    _os_log_debug_impl(&dword_2557BA000, v2, OS_LOG_TYPE_DEBUG, "applySceneFocusChange:%{public}@ forRequest:%{public}@", buf, 0x16u);
  }

  if (a1[5] && (v3 = a1[4]) != 0 && ([v3 _isFocusNothing] & 1) == 0 && (v4 = a1[6], objc_msgSend(a1[4], "sceneIdentity"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "_handleForSceneIdentity:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = a1[6];
    v18 = 0;
    v8 = [v7 _activeFocusedHostHandleForKeyboardFocusAndGetLeafHandle:&v18];
    v9 = v18;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    memset(buf, 0, sizeof(buf));
    v10 = _UIArbiterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v12 = [a1[4] sceneIdentity];
    v19 = 138543362;
    v20 = v12;
    v13 = _os_log_send_and_compose_impl(v11, 0, buf, 512, &dword_2557BA000, v10, 1, "Advisor: Scene focus change request: %{public}@", &v19, 12);

    v14 = +[_UIKeyboardArbiterDebug sharedInstance];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v14 infoWithMessage:v15];

    if (v13 != buf)
    {
      free(v13);
    }

    [a1[6] _focusSceneHandle:v6 previousHostFocusHandle:v8 previousLeafFocusHandle:v9 shouldStealKeyboardOnSuccess:{objc_msgSend(a1[5], "shouldStealKeyboardOnSuccess")}];
  }

  else
  {
    [a1[6] _invalidateFocus];
  }
}

void __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  memset(v23, 0, sizeof(v23));
  v3 = _UIArbiterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = objc_opt_class();
  v6 = *(a1 + 48);
  v19 = 138412546;
  v20 = v5;
  v21 = 2112;
  v22 = v6;
  v7 = v5;
  v8 = _os_log_send_and_compose_impl(v4, 0, v23, 512, &dword_2557BA000, v3, 2, "[%@] Lost connection [%@]", &v19, 22);

  v9 = +[_UIKeyboardArbiterDebug sharedInstance];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v23];
  [v9 debugWithMessage:v10];

  if (v8 != v23)
  {
    free(v8);
  }

  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke_210;
  block[3] = &unk_2797F4B68;
  v13 = *(a1 + 48);
  v16 = v2;
  v17 = v13;
  block[4] = v11;
  v18 = *(a1 + 56);
  v14 = v2;
  dispatch_async(v12, block);
}

void __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke_210(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 bundleIdentifier];
    v24 = 138543618;
    v25 = v4;
    v26 = 1024;
    v27 = [v2 processIdentifier];
    _os_log_impl(&dword_2557BA000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@(%d) lostConnection (invalidation)", &v24, 0x12u);
  }

  if ([v2 prevActiveIdentifier])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
    v6 = [WeakRetained prevActiveIdentifier];

    if (v6)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 40));
      [v7 prevActiveIdentifier];
      v8 = [MEMORY[0x277CBEB18] array];
      if ([v7 prevActiveIdentifier])
      {
        while (([v8 containsObject:v7] & 1) == 0)
        {
          v9 = [*(a1 + 32) handlerForPID:{objc_msgSend(v7, "prevActiveIdentifier")}];
          if (v9 == v2)
          {
            [v7 setPrevActiveIdentifier:{objc_msgSend(v2, "prevActiveIdentifier")}];

            break;
          }

          [v8 addObject:v7];

          v7 = v9;
          if (![v9 prevActiveIdentifier])
          {
            goto LABEL_12;
          }
        }
      }

      v9 = v7;
LABEL_12:
    }
  }

  [*(*(a1 + 32) + 32) removeObject:v2];
  [*(a1 + 32) updateInterestedBundleIDs];
  if (([v2 inputUIHost] & 1) == 0)
  {
    [v2 clearAcquiringFocus];
  }

  v10 = objc_loadWeakRetained((*(a1 + 32) + 40));

  if (v2 == v10)
  {
    v11 = [MEMORY[0x277D76088] informationForKeyboardDown];
    v12 = [v2 bundleIdentifier];
    [v11 setSourceBundleIdentifier:v12];

    [*(a1 + 32) updateKeyboardStatus:v11 fromHandler:v2];
    v13 = [MEMORY[0x277D75688] sharedInputModeController];
    if ([v13 deviceStateIsLocked])
    {
      v14 = [v2 bundleIdentifier];
      v15 = [v14 isEqualToString:@"com.apple.Spotlight"];

      if ((v15 & 1) == 0)
      {
        v16 = [v2 processIdentifier];
LABEL_21:
        *(*(a1 + 32) + 208) = v16;
        objc_storeWeak((*(a1 + 32) + 48), 0);

        goto LABEL_22;
      }
    }

    else
    {
    }

    v16 = 0;
    goto LABEL_21;
  }

LABEL_22:
  v17 = objc_loadWeakRetained((*(a1 + 32) + 104));

  if (v2 == v17)
  {
    objc_storeWeak((*(a1 + 32) + 104), 0);
  }

  v18 = objc_loadWeakRetained((*(a1 + 32) + 112));

  if (v2 == v18)
  {
    objc_storeWeak((*(a1 + 32) + 112), 0);
    v19 = _UIArbiterEventsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_2557BA000, v19, OS_LOG_TYPE_DEFAULT, "set focusRequestedHandle:(null) (connectionInvalidated)", &v24, 2u);
    }
  }

  v20 = objc_loadWeakRetained((*(a1 + 32) + 248));

  if (v2 == v20)
  {
    objc_storeWeak((*(a1 + 32) + 248), 0);
    v21 = *(a1 + 32);
    v22 = *(v21 + 184);
    *(v21 + 184) = 0;
  }

  [*(a1 + 32) reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:0];
  [*(a1 + 40) setExportedObject:0];
  [v2 invalidate];
  if (*(a1 + 56) == 1)
  {
    v23 = +[_UIKeyboardArbiterDebug sharedInstance];
    [v23 setPause:0];
  }
}

void __57___UIKeyboardArbiter_listener_shouldAcceptNewConnection___block_invoke_328(id *a1)
{
  obj = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(obj);
  [*(a1[4] + 4) addObject:a1[5]];
  [a1[4] updateInterestedBundleIDs];
  [a1[6] resume];
  v2 = *(a1[4] + 24);
  v3 = [a1[5] bundleIdentifier];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    (*(*(a1[4] + 25) + 16))();
    v4 = a1[4];
    v5 = v4[24];
    v4[24] = 0;

    v6 = a1[4];
    v7 = v6[25];
    v6[25] = 0;
  }

  objc_sync_exit(obj);
}

void __41___UIKeyboardArbiter_unitTestEnvironment__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _MergedGlobals_2 = [v0 isEqualToString:@"com.ios.uikit.TestingHarness"];
}

@end
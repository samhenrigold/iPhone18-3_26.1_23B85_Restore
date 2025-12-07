@interface MXMediaEndowmentManager
+ (id)sharedInstance;
- (MXMediaEndowmentManager)init;
- (id)getHostProcessAttributions:(int)attributions;
- (int)grantMediaEndowment:(int)endowment environmentID:(id)d endowmentPayload:(id)payload;
- (int)revokeMediaEndowment:(int)endowment environmentID:(id)d;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)handleEndowmentTreeUpdate;
- (void)iterateEndowmentTree:(id)tree rootPID:(id)d environment:(id)environment endowmentLinks:(id)links;
- (void)loadMediaEndowments;
- (void)processStateUpdateHandler:(id)handler process:(id)process update:(id)update;
- (void)refreshAssertions;
- (void)refreshDomainAssertions:(id)assertions currentlyActivePIDs:(id)ds;
- (void)refreshEndowmentTrees;
- (void)storeMediaEndowments;
@end

@implementation MXMediaEndowmentManager

uint64_t __31__MXMediaEndowmentManager_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = +[MXMediaEndowmentManager sharedInstance];

  return [(MXMediaEndowmentManager *)v7 processStateUpdateHandler:a2 process:a3 update:a4];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MXMediaEndowmentManager sharedInstance];
  }

  return sharedInstance_sSharedInstance_2;
}

uint64_t __44__MXMediaEndowmentManager_refreshAssertions__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695DFA8] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v17 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v17)
  {
    v16 = *v33;
    do
    {
      v2 = 0;
      do
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v2;
        v3 = *(*(&v32 + 1) + 8 * v2);
        if ([v3 isPlaying])
        {
          v4 = [objc_msgSend(v3 "clientPID")];
          if (v4)
          {
            v5 = v4;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v19 = *(*(a1 + 32) + 40);
            v22 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
            if (v22)
            {
              v20 = *v29;
              do
              {
                v6 = 0;
                do
                {
                  if (*v29 != v20)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = v6;
                  v7 = *(*(&v28 + 1) + 8 * v6);
                  v8 = [*(*(a1 + 32) + 40) objectForKey:v7];
                  v24 = 0u;
                  v25 = 0u;
                  v26 = 0u;
                  v27 = 0u;
                  v9 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
                  if (v9)
                  {
                    v10 = v9;
                    v11 = *v25;
                    do
                    {
                      for (i = 0; i != v10; ++i)
                      {
                        if (*v25 != v11)
                        {
                          objc_enumerationMutation(v8);
                        }

                        v13 = [v8 objectForKey:*(*(&v24 + 1) + 8 * i)];
                        if ([v13 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v5)}] && objc_msgSend(v3, "isPlaying"))
                        {
                          [v1 addObject:v7];
                          [v1 addObjectsFromArray:{objc_msgSend(v13, "allObjects")}];
                        }
                      }

                      v10 = [v8 countByEnumeratingWithState:&v24 objects:v36 count:16];
                    }

                    while (v10);
                  }

                  v6 = v23 + 1;
                }

                while (v23 + 1 != v22);
                v22 = [v19 countByEnumeratingWithState:&v28 objects:v37 count:16];
              }

              while (v22);
            }
          }
        }

        v2 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v17);
  }

  return [*(a1 + 32) refreshDomainAssertions:@"MediaPlayback" currentlyActivePIDs:v1];
}

- (void)refreshAssertions
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MXMediaEndowmentManager_refreshAssertions__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchAsync("[MXMediaEndowmentManager refreshAssertions]", "MX_MediaEndowmentManager.m", 658, 0, 0, mSerialQueue, v3);
}

MXMediaEndowmentManager *__41__MXMediaEndowmentManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXMediaEndowmentManager);
  sharedInstance_sSharedInstance_2 = result;
  return result;
}

- (MXMediaEndowmentManager)init
{
  v7.receiver = self;
  v7.super_class = MXMediaEndowmentManager;
  v2 = [(MXMediaEndowmentManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->mSerialQueue = dispatch_queue_create("com.apple.mediaexperience.MediaEndowmentManager", v3);
    v2->mEndowments = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->mEndowmentPayloads = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->mEndowmentTrees = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->mMediaPlaybackAssertions = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E69C75F8] monitorWithConfiguration:&__block_literal_global_6];
    v2->mProcessMonitor = v4;
    v5 = v4;
  }

  return v2;
}

uint64_t __31__MXMediaEndowmentManager_init__block_invoke(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69C7630] descriptor];
  [v3 setEndowmentNamespaces:&unk_1F28AF590];
  [v3 setValues:32];
  [a2 setStateDescriptor:v3];
  v4 = NSClassFromString(&cfstr_Rbsprocessever.isa);
  v6[0] = [(objc_class *)v4 performSelector:NSSelectorFromString(&cfstr_Everythingpred.isa)];
  [a2 setPredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 1)}];
  return [a2 setUpdateHandler:&__block_literal_global_18];
}

- (void)dealloc
{
  v35 = *MEMORY[0x1E69E9840];
  mSerialQueue = self->mSerialQueue;
  if (mSerialQueue)
  {
    dispatch_release(mSerialQueue);
    self->mSerialQueue = 0;
  }

  [(RBSProcessMonitor *)self->mProcessMonitor invalidate];

  self->mProcessMonitor = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  mEndowments = self->mEndowments;
  v5 = [(NSMutableDictionary *)mEndowments countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(mEndowments);
        }

        v9 = [(NSMutableDictionary *)self->mEndowments objectForKey:*(*(&v28 + 1) + 8 * i)];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [objc_msgSend(v9 objectForKey:{*(*(&v24 + 1) + 8 * j)), "invalidate"}];
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v11);
        }
      }

      v6 = [(NSMutableDictionary *)mEndowments countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  self->mEndowments = 0;
  self->mEndowmentPayloads = 0;

  self->mEndowmentTrees = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mMediaPlaybackAssertions = self->mMediaPlaybackAssertions;
  v15 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(mMediaPlaybackAssertions);
        }

        [-[NSMutableDictionary objectForKey:](self->mMediaPlaybackAssertions objectForKey:{*(*(&v20 + 1) + 8 * k)), "invalidate"}];
      }

      v16 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  self->mMediaPlaybackAssertions = 0;
  v19.receiver = self;
  v19.super_class = MXMediaEndowmentManager;
  [(MXMediaEndowmentManager *)&v19 dealloc];
}

- (void)iterateEndowmentTree:(id)tree rootPID:(id)d environment:(id)environment endowmentLinks:(id)links
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [links countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(links);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = [-[NSMutableDictionary objectForKey:](self->mEndowmentTrees objectForKey:{d), "objectForKey:", environment}];
        [v15 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v14, "targetPid"))}];
        -[MXMediaEndowmentManager iterateEndowmentTree:rootPID:environment:endowmentLinks:](self, "iterateEndowmentTree:rootPID:environment:endowmentLinks:", tree, d, environment, [tree childrenLinks:v14]);
        ++v13;
      }

      while (v11 != v13);
      v11 = [links countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)refreshEndowmentTrees
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__MXMediaEndowmentManager_refreshEndowmentTrees__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchAsync("[MXMediaEndowmentManager refreshEndowmentTrees]", "MX_MediaEndowmentManager.m", 279, 0, 0, mSerialQueue, v3);
}

uint64_t __48__MXMediaEndowmentManager_refreshEndowmentTrees__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C7580] endowmentTreeForNamespace:@"com.apple.mediaexperience.session-Media"];
  [*(*(a1 + 32) + 40) removeAllObjects];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v2 rootLinks];
  v3 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "targetPid")}];
        if (![*(*(a1 + 32) + 40) objectForKey:v8])
        {
          [*(*(a1 + 32) + 40) setObject:objc_msgSend(MEMORY[0x1E695DF90] forKey:{"dictionary"), v8}];
        }

        v9 = [*(*(a1 + 32) + 40) objectForKey:v8];
        [v9 setObject:objc_msgSend(MEMORY[0x1E695DFA8] forKey:{"set"), objc_msgSend(v7, "targetEnvironment")}];
        [*(a1 + 32) iterateEndowmentTree:v2 rootPID:v8 environment:objc_msgSend(v7 endowmentLinks:{"targetEnvironment"), objc_msgSend(v2, "childrenLinks:", v7)}];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v4);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [*(*(a1 + 32) + 24) allKeys];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * j);
        if (![*(*(a1 + 32) + 40) objectForKey:v15])
        {
          v16 = [*(*(a1 + 32) + 24) objectForKey:v15];
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v25;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v25 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [objc_msgSend(v16 objectForKey:{*(*(&v24 + 1) + 8 * k)), "invalidate"}];
              }

              v18 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
            }

            while (v18);
          }

          if (dword_1EB75DE60)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [*(*(a1 + 32) + 24) removeObjectForKey:v15];
          [*(*(a1 + 32) + 32) removeObjectForKey:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v12);
  }

  return [*(a1 + 32) storeMediaEndowments];
}

- (void)handleEndowmentTreeUpdate
{
  [(MXMediaEndowmentManager *)self refreshEndowmentTrees];

  [(MXMediaEndowmentManager *)self refreshAssertions];
}

- (void)processStateUpdateHandler:(id)handler process:(id)process update:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  previousState = [objc_msgSend(objc_msgSend(update previousState];
  v7 = [objc_msgSend(objc_msgSend(update "state")];
  if (previousState)
  {
    if (v7)
    {
      return;
    }

    if (!dword_1EB75DE60)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!v7)
  {
    return;
  }

  if (dword_1EB75DE60)
  {
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_8:
  [+[MXMediaEndowmentManager sharedInstance](MXMediaEndowmentManager handleEndowmentTreeUpdate];
}

- (int)grantMediaEndowment:(int)endowment environmentID:(id)d endowmentPayload:(id)payload
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = [payload objectForKey:@"AuditToken"];
  v10 = [payload objectForKey:@"BundleID"];
  if (endowment && d && (v9 ? (v11 = v10 == 0) : (v11 = 1), !v11))
  {
    mSerialQueue = self->mSerialQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__MXMediaEndowmentManager_grantMediaEndowment_environmentID_endowmentPayload___block_invoke;
    v16[3] = &unk_1E7AE7D08;
    endowmentCopy = endowment;
    v16[4] = self;
    v16[5] = d;
    v16[7] = v10;
    v16[8] = &v20;
    v16[6] = payload;
    MXDispatchSync("[MXMediaEndowmentManager grantMediaEndowment:environmentID:endowmentPayload:]", "MX_MediaEndowmentManager.m", 368, 0, 0, mSerialQueue, v16);
    v13 = *(v21 + 6);
  }

  else
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = -15681;
  }

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __78__MXMediaEndowmentManager_grantMediaEndowment_environmentID_endowmentPayload___block_invoke(uint64_t a1)
{
  v18[18] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 72)];
  if ([objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "objectForKey:", *(a1 + 40)}])
  {
    if (dword_1EB75DE60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "objectForKey:", *(a1 + 40)), "invalidate"}];
    [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "removeObjectForKey:", *(a1 + 40)}];
    [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v2), "removeObjectForKey:", *(a1 + 40)}];
  }

  v4 = [MEMORY[0x1E69C7640] targetWithPid:*(a1 + 72) environmentIdentifier:*(a1 + 40)];
  if (v4 && (v5 = v4, (v6 = [MEMORY[0x1E69C7578] grantWithNamespace:@"com.apple.mediaexperience.session-Media" endowment:*(a1 + 48)]) != 0) && (v7 = v6, (v8 = objc_msgSend(MEMORY[0x1E69C7530], "attributeWithCompletionPolicy:", 1)) != 0) && (v9 = v8, v10 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"{originator:com.apple.mediaexperience, bundleID:%@ clientPID:%d, environmentID:%@}", *(a1 + 56), *(a1 + 72), *(a1 + 40)), v11 = objc_alloc(MEMORY[0x1E69C7548]), v18[0] = v7, v18[1] = v9, (v12 = objc_msgSend(v11, "initWithExplanation:target:attributes:", v10, v5, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 2))) != 0))
  {
    v13 = v12;
    if (([v12 acquireWithError:&v17] & 1) == 0)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *(*(*(a1 + 64) + 8) + 24) = -15687;
    }

    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      if (dword_1EB75DE60)
      {
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (![*(*(a1 + 32) + 24) objectForKey:v2])
      {
        [*(*(a1 + 32) + 24) setObject:objc_msgSend(MEMORY[0x1E695DF90] forKey:{"dictionary"), v2}];
        [*(*(a1 + 32) + 32) setObject:objc_msgSend(MEMORY[0x1E695DF90] forKey:{"dictionary"), v2}];
      }

      [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "setObject:forKey:", v13, *(a1 + 40)}];
      [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v2), "setObject:forKey:", *(a1 + 48), *(a1 + 40)}];
      [*(a1 + 32) refreshEndowmentTrees];
    }
  }

  else
  {
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 64) + 8) + 24) = -15687;
  }
}

- (int)revokeMediaEndowment:(int)endowment environmentID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (endowment && d)
  {
    mSerialQueue = self->mSerialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__MXMediaEndowmentManager_revokeMediaEndowment_environmentID___block_invoke;
    v8[3] = &unk_1E7AE7D30;
    endowmentCopy = endowment;
    v8[4] = self;
    v8[5] = d;
    v8[6] = &v12;
    MXDispatchSync("[MXMediaEndowmentManager revokeMediaEndowment:environmentID:]", "MX_MediaEndowmentManager.m", 462, 0, 0, mSerialQueue, v8);
    v5 = *(v13 + 6);
  }

  else
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = -15681;
  }

  _Block_object_dispose(&v12, 8);
  return v5;
}

void *__62__MXMediaEndowmentManager_revokeMediaEndowment_environmentID___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v3 = [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "objectForKey:", *(a1 + 40)}];
  if (v3)
  {
    [v3 invalidate];
    if (dword_1EB75DE60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "removeObjectForKey:", *(a1 + 40)}];
    [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v2), "removeObjectForKey:", *(a1 + 40)}];
    if (![objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v2), "count"}])
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:v2];
      [*(*(a1 + 32) + 32) removeObjectForKey:v2];
    }

    return [*(a1 + 32) refreshEndowmentTrees];
  }

  else
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    *(*(*(a1 + 48) + 8) + 24) = -15685;
  }

  return result;
}

- (id)getHostProcessAttributions:(int)attributions
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mSerialQueue = self->mSerialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__MXMediaEndowmentManager_getHostProcessAttributions___block_invoke;
  v8[3] = &unk_1E7AE7D58;
  attributionsCopy = attributions;
  v8[4] = self;
  v8[5] = v5;
  MXDispatchSync("[MXMediaEndowmentManager getHostProcessAttributions:]", "MX_MediaEndowmentManager.m", 497, 0, 0, mSerialQueue, v8);
  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

void *__54__MXMediaEndowmentManager_getHostProcessAttributions___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(*(a1 + 32) + 40);
  result = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  v15 = result;
  if (result)
  {
    v14 = *v21;
    do
    {
      v3 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v20 + 1) + 8 * v3);
        v5 = [*(*(a1 + 32) + 40) objectForKey:v4];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v16 + 1) + 8 * i);
              v11 = [v5 objectForKey:v10];
              if ([v11 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *(a1 + 48))}])
              {
                v12 = [objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{v4), "objectForKey:", v10}];
                if (v12)
                {
                  [*(a1 + 40) addObject:v12];
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v7);
        }

        v3 = v3 + 1;
      }

      while (v3 != v15);
      result = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      v15 = result;
    }

    while (result);
  }

  return result;
}

- (void)storeMediaEndowments
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->mEndowments;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v14 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [(NSMutableDictionary *)self->mEndowments objectForKey:v6];
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [v7 setObject:objc_msgSend(-[NSMutableDictionary objectForKey:](self->mEndowmentPayloads forKey:{"objectForKey:", v6), "objectForKey:", *(*(&v16 + 1) + 8 * j)), *(*(&v16 + 1) + 8 * j)}];
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }

        [v15 setObject:v7 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@", v6)}];
      }

      v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  MXCFPreferencesSetAndSynchronizeUserPreference(@"mediaEndowments", v15);
}

- (void)loadMediaEndowments
{
  v50 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if (v2 <= 45.0)
  {
    MXCFPreferencesSetAndSynchronizeUserPreference(@"mediaEndowments", 0);
    if (dword_1EB75DE60)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v3 = MXCFPreferencesCopyPreference(@"mediaEndowments");
    v27 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v27 setNumberStyle:1];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v3;
    v24 = [v3 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v24)
    {
      v23 = *v34;
      do
      {
        v4 = 0;
        do
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v4;
          v5 = *(*(&v33 + 1) + 8 * v4);
          v6 = [obj objectForKey:v5];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v29 objects:v47 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v30;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v30 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v29 + 1) + 8 * i);
                v12 = [v6 objectForKey:v11];
                if (-[MXMediaEndowmentManager grantMediaEndowment:environmentID:endowmentPayload:](self, "grantMediaEndowment:environmentID:endowmentPayload:", [objc_msgSend(v27 numberFromString:{v5), "unsignedIntValue"}], v11, v12))
                {
                  v38 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v14 = v38;
                  v15 = type;
                  if (os_log_type_enabled(v13, type))
                  {
                    v16 = v14;
                  }

                  else
                  {
                    v16 = v14 & 0xFFFFFFFE;
                  }

                  if (v16)
                  {
                    v39 = 136315906;
                    v40 = "[MXMediaEndowmentManager loadMediaEndowments]";
                    v41 = 2114;
                    v42 = v5;
                    v43 = 2114;
                    v44 = v11;
                    v45 = 2114;
                    v46 = v12;
                    LODWORD(v22) = 42;
                    _os_log_send_and_compose_impl(v16, 0, v49, 128, &dword_1B17A2000, v13, v15, "-MXMediaEndowmentManager- %s: Endowment was not recovered! clientPID='%{public}@', environmentID='%{public}@', endowmentPayload='%{public}@'", &v39, v22);
                  }
                }

                else
                {
                  v38 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v18 = v38;
                  v19 = type;
                  if (os_log_type_enabled(v17, type))
                  {
                    v20 = v18;
                  }

                  else
                  {
                    v20 = v18 & 0xFFFFFFFE;
                  }

                  if (v20)
                  {
                    v39 = 136315906;
                    v40 = "[MXMediaEndowmentManager loadMediaEndowments]";
                    v41 = 2114;
                    v42 = v5;
                    v43 = 2114;
                    v44 = v11;
                    v45 = 2114;
                    v46 = v12;
                    LODWORD(v22) = 42;
                    _os_log_send_and_compose_impl(v20, 0, v49, 128, &dword_1B17A2000, v17, v19, "-MXMediaEndowmentManager- %s: Endowment was recovered successfully! clientPID='%{public}@', environmentID='%{public}@', endowmentPayload='%{public}@'", &v39, v22);
                  }
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v8 = [v6 countByEnumeratingWithState:&v29 objects:v47 count:16];
            }

            while (v8);
          }

          v4 = v26 + 1;
        }

        while (v26 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v33 objects:v48 count:16];
      }

      while (v24);
    }

    [(MXMediaEndowmentManager *)self refreshEndowmentTrees];
  }
}

- (void)refreshDomainAssertions:(id)assertions currentlyActivePIDs:(id)ds
{
  v63 = *MEMORY[0x1E69E9840];
  obj = [MEMORY[0x1E695DFA8] set];
  if ([assertions isEqualToString:@"MediaPlayback"])
  {
    mMediaPlaybackAssertions = self->mMediaPlaybackAssertions;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = [ds countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v49;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(ds);
          }

          v11 = *(*(&v48 + 1) + 8 * i);
          if (![(NSMutableDictionary *)mMediaPlaybackAssertions objectForKey:v11])
          {
            v47 = 0;
            assertions = [MEMORY[0x1E696AEC0] stringWithFormat:@"{originator:com.apple.mediaexperience, clientPID:%@ DomainName:%@}", v11, assertions];
            v13 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.mediaexperience" name:assertions];
            v14 = objc_alloc(MEMORY[0x1E69C7548]);
            v15 = [MEMORY[0x1E69C7640] targetWithPid:{objc_msgSend(v11, "unsignedIntValue")}];
            v60 = v13;
            v16 = [v14 initWithExplanation:assertions target:v15 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v60, 1)}];
            if ([v16 acquireWithError:&v47])
            {
              if (dword_1EB75DE60)
              {
                *v46 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              [(NSMutableDictionary *)mMediaPlaybackAssertions setObject:v16 forKey:v11];
            }

            else
            {
              *v46 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }

        v8 = [ds countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v8);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(mMediaPlaybackAssertions);
          }

          v23 = *(*(&v41 + 1) + 8 * j);
          if (([ds containsObject:v23] & 1) == 0)
          {
            [obj addObject:v23];
          }
        }

        v20 = [(NSMutableDictionary *)mMediaPlaybackAssertions countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v20);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = [obj countByEnumeratingWithState:&v37 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v37 + 1) + 8 * k);
          [-[NSMutableDictionary objectForKey:](mMediaPlaybackAssertions objectForKey:{v28), "invalidate"}];
          if (dword_1EB75DE60)
          {
            LODWORD(v47) = 0;
            v46[0] = OS_LOG_TYPE_DEFAULT;
            v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v30 = v47;
            v31 = v46[0];
            if (os_log_type_enabled(v29, v46[0]))
            {
              v32 = v30;
            }

            else
            {
              v32 = v30 & 0xFFFFFFFE;
            }

            if (v32)
            {
              v54 = 136315650;
              v55 = "[MXMediaEndowmentManager refreshDomainAssertions:currentlyActivePIDs:]";
              v56 = 2114;
              assertionsCopy = assertions;
              v58 = 2114;
              v59 = v28;
              LODWORD(v34) = 32;
              _os_log_send_and_compose_impl(v32, 0, v62, 128, &dword_1B17A2000, v29, v31, "-MXMediaEndowmentManager- %s: %{public}@ assertion has been invalidated! clientPID='%{public}@'", &v54, v34);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(NSMutableDictionary *)mMediaPlaybackAssertions removeObjectForKey:v28];
        }

        v25 = [obj countByEnumeratingWithState:&v37 objects:v52 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)dumpDebugInfo
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MXMediaEndowmentManager_dumpDebugInfo__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchSync("[MXMediaEndowmentManager dumpDebugInfo]", "MX_MediaEndowmentManager.m", 720, 0, 0, mSerialQueue, v3);
}

void *__40__MXMediaEndowmentManager_dumpDebugInfo__block_invoke(uint64_t a1)
{
  v187 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE60)
  {
    v171 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v171 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  obj = *(*(a1 + 32) + 24);
  v132 = [obj countByEnumeratingWithState:&v166 objects:v185 count:16];
  if (v132)
  {
    v129 = *v167;
    do
    {
      v3 = 0;
      do
      {
        if (*v167 != v129)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v166 + 1) + 8 * v3);
        v5 = [*(*(a1 + 32) + 24) objectForKey:v4];
        if (dword_1EB75DE60)
        {
          v171 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = v171;
          v8 = type;
          if (os_log_type_enabled(v6, type))
          {
            v9 = v7;
          }

          else
          {
            v9 = v7 & 0xFFFFFFFE;
          }

          if (v9)
          {
            v178 = 136315394;
            v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v180 = 2114;
            v181 = v4;
            LODWORD(v120) = 22;
            _os_log_send_and_compose_impl(v9, 0, v186, 128, &dword_1B17A2000, v6, v8, "-MXMediaEndowmentManager- %s: \t\t %{public}@ = {", &v178, v120);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v135 = v3;
        v164 = 0u;
        v165 = 0u;
        v162 = 0u;
        v163 = 0u;
        v10 = [v5 countByEnumeratingWithState:&v162 objects:v184 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v163;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v163 != v12)
              {
                objc_enumerationMutation(v5);
              }

              if (dword_1EB75DE60)
              {
                v14 = *(*(&v162 + 1) + 8 * i);
                v171 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v16 = v171;
                v17 = type;
                if (os_log_type_enabled(v15, type))
                {
                  v18 = v16;
                }

                else
                {
                  v18 = v16 & 0xFFFFFFFE;
                }

                if (v18)
                {
                  v19 = [objc_msgSend(v5 objectForKey:{v14), "explanation"}];
                  v178 = 136315650;
                  v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  v180 = 2114;
                  v181 = v14;
                  v182 = 2114;
                  v183 = v19;
                  LODWORD(v120) = 32;
                  _os_log_send_and_compose_impl(v18, 0, v186, 128, &dword_1B17A2000, v15, v17, "-MXMediaEndowmentManager- %s: \t\t\t %{public}@: '%{public}@',", &v178, v120);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v11 = [v5 countByEnumeratingWithState:&v162 objects:v184 count:16];
          }

          while (v11);
        }

        if (dword_1EB75DE60)
        {
          v171 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v21 = v171;
          v22 = type;
          if (os_log_type_enabled(v20, type))
          {
            v23 = v21;
          }

          else
          {
            v23 = v21 & 0xFFFFFFFE;
          }

          if (v23)
          {
            v178 = 136315138;
            v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            _os_log_send_and_compose_impl(v23, 0, v186, 128, &dword_1B17A2000, v20, v22, "-MXMediaEndowmentManager- %s: \t\t }", &v178);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v3 = v135 + 1;
      }

      while ((v135 + 1) != v132);
      v132 = [obj countByEnumeratingWithState:&v166 objects:v185 count:16];
    }

    while (v132);
  }

  if (dword_1EB75DE60)
  {
    v171 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v171;
    v26 = type;
    if (os_log_type_enabled(v24, type))
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v178 = 136315138;
      v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v27, 0, v186, 128, &dword_1B17A2000, v24, v26, "-MXMediaEndowmentManager- %s: \t }", &v178);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v171 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = v171;
      v30 = type;
      if (os_log_type_enabled(v28, type))
      {
        v31 = v29;
      }

      else
      {
        v31 = v29 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v178 = 136315138;
        v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl(v31, 0, v186, 128, &dword_1B17A2000, v28, v30, "-MXMediaEndowmentManager- %s: \t mEndowmentPayloads = {", &v178);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v121 = *(*(a1 + 32) + 32);
  v123 = [v121 countByEnumeratingWithState:&v158 objects:v177 count:16];
  if (v123)
  {
    v122 = *v159;
    do
    {
      v32 = 0;
      do
      {
        if (*v159 != v122)
        {
          v33 = v32;
          objc_enumerationMutation(v121);
          v32 = v33;
        }

        v124 = v32;
        v34 = *(*(&v158 + 1) + 8 * v32);
        v133 = [*(*(a1 + 32) + 32) objectForKey:v34];
        if (dword_1EB75DE60)
        {
          v171 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v36 = v171;
          v37 = type;
          if (os_log_type_enabled(v35, type))
          {
            v38 = v36;
          }

          else
          {
            v38 = v36 & 0xFFFFFFFE;
          }

          if (v38)
          {
            v178 = 136315394;
            v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v180 = 2114;
            v181 = v34;
            LODWORD(v120) = 22;
            _os_log_send_and_compose_impl(v38, 0, v186, 128, &dword_1B17A2000, v35, v37, "-MXMediaEndowmentManager- %s: \t\t %{public}@ = {", &v178, v120);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        v130 = [v133 countByEnumeratingWithState:&v154 objects:v176 count:16];
        if (v130)
        {
          obja = *v155;
          do
          {
            v39 = 0;
            do
            {
              if (*v155 != obja)
              {
                objc_enumerationMutation(v133);
              }

              v136 = v39;
              v40 = *(*(&v154 + 1) + 8 * v39);
              if (dword_1EB75DE60)
              {
                v171 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v42 = v171;
                v43 = type;
                if (os_log_type_enabled(v41, type))
                {
                  v44 = v42;
                }

                else
                {
                  v44 = v42 & 0xFFFFFFFE;
                }

                if (v44)
                {
                  v178 = 136315394;
                  v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  v180 = 2114;
                  v181 = v40;
                  LODWORD(v120) = 22;
                  _os_log_send_and_compose_impl(v44, 0, v186, 128, &dword_1B17A2000, v41, v43, "-MXMediaEndowmentManager- %s: \t\t\t %{public}@ = {", &v178, v120);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v45 = [v133 objectForKey:v40];
              v150 = 0u;
              v151 = 0u;
              v152 = 0u;
              v153 = 0u;
              v46 = [v45 countByEnumeratingWithState:&v150 objects:v175 count:16];
              if (v46)
              {
                v47 = v46;
                v48 = *v151;
                do
                {
                  for (j = 0; j != v47; ++j)
                  {
                    if (*v151 != v48)
                    {
                      objc_enumerationMutation(v45);
                    }

                    if (dword_1EB75DE60)
                    {
                      v50 = *(*(&v150 + 1) + 8 * j);
                      v171 = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v52 = v171;
                      v53 = type;
                      if (os_log_type_enabled(v51, type))
                      {
                        v54 = v52;
                      }

                      else
                      {
                        v54 = v52 & 0xFFFFFFFE;
                      }

                      if (v54)
                      {
                        v55 = [v45 objectForKey:v50];
                        v178 = 136315650;
                        v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                        v180 = 2114;
                        v181 = v50;
                        v182 = 2114;
                        v183 = v55;
                        LODWORD(v120) = 32;
                        _os_log_send_and_compose_impl(v54, 0, v186, 128, &dword_1B17A2000, v51, v53, "-MXMediaEndowmentManager- %s: \t\t\t\t %{public}@: '%{public}@',", &v178, v120);
                      }

                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }
                  }

                  v47 = [v45 countByEnumeratingWithState:&v150 objects:v175 count:16];
                }

                while (v47);
              }

              if (dword_1EB75DE60)
              {
                v171 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v57 = v171;
                v58 = type;
                if (os_log_type_enabled(v56, type))
                {
                  v59 = v57;
                }

                else
                {
                  v59 = v57 & 0xFFFFFFFE;
                }

                if (v59)
                {
                  v178 = 136315138;
                  v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  _os_log_send_and_compose_impl(v59, 0, v186, 128, &dword_1B17A2000, v56, v58, "-MXMediaEndowmentManager- %s: \t\t\t }", &v178);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v39 = v136 + 1;
            }

            while (v136 + 1 != v130);
            v130 = [v133 countByEnumeratingWithState:&v154 objects:v176 count:16];
          }

          while (v130);
        }

        if (dword_1EB75DE60)
        {
          v171 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v61 = v171;
          v62 = type;
          if (os_log_type_enabled(v60, type))
          {
            v63 = v61;
          }

          else
          {
            v63 = v61 & 0xFFFFFFFE;
          }

          if (v63)
          {
            v178 = 136315138;
            v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            _os_log_send_and_compose_impl(v63, 0, v186, 128, &dword_1B17A2000, v60, v62, "-MXMediaEndowmentManager- %s: \t\t }", &v178);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v32 = v124 + 1;
      }

      while (v124 + 1 != v123);
      v123 = [v121 countByEnumeratingWithState:&v158 objects:v177 count:16];
    }

    while (v123);
  }

  if (dword_1EB75DE60)
  {
    v171 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v65 = v171;
    v66 = type;
    if (os_log_type_enabled(v64, type))
    {
      v67 = v65;
    }

    else
    {
      v67 = v65 & 0xFFFFFFFE;
    }

    if (v67)
    {
      v178 = 136315138;
      v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v67, 0, v186, 128, &dword_1B17A2000, v64, v66, "-MXMediaEndowmentManager- %s: \t }", &v178);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v171 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v68 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v69 = v171;
      v70 = type;
      if (os_log_type_enabled(v68, type))
      {
        v71 = v69;
      }

      else
      {
        v71 = v69 & 0xFFFFFFFE;
      }

      if (v71)
      {
        v178 = 136315138;
        v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl(v71, 0, v186, 128, &dword_1B17A2000, v68, v70, "-MXMediaEndowmentManager- %s: \t mEndowmentTrees = {", &v178);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  objb = *(*(a1 + 32) + 40);
  v134 = [objb countByEnumeratingWithState:&v146 objects:v174 count:16];
  if (v134)
  {
    v131 = *v147;
    do
    {
      v72 = 0;
      do
      {
        if (*v147 != v131)
        {
          objc_enumerationMutation(objb);
        }

        v73 = *(*(&v146 + 1) + 8 * v72);
        v74 = [*(*(a1 + 32) + 40) objectForKey:v73];
        if (dword_1EB75DE60)
        {
          v171 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v75 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v76 = v171;
          v77 = type;
          if (os_log_type_enabled(v75, type))
          {
            v78 = v76;
          }

          else
          {
            v78 = v76 & 0xFFFFFFFE;
          }

          if (v78)
          {
            v178 = 136315394;
            v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v180 = 2114;
            v181 = v73;
            LODWORD(v120) = 22;
            _os_log_send_and_compose_impl(v78, 0, v186, 128, &dword_1B17A2000, v75, v77, "-MXMediaEndowmentManager- %s: \t\t %{public}@ = {", &v178, v120);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v137 = v72;
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v79 = [v74 countByEnumeratingWithState:&v142 objects:v173 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v143;
          do
          {
            for (k = 0; k != v80; ++k)
            {
              if (*v143 != v81)
              {
                objc_enumerationMutation(v74);
              }

              if (dword_1EB75DE60)
              {
                v83 = *(*(&v142 + 1) + 8 * k);
                v171 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v84 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v85 = v171;
                v86 = type;
                if (os_log_type_enabled(v84, type))
                {
                  v87 = v85;
                }

                else
                {
                  v87 = v85 & 0xFFFFFFFE;
                }

                if (v87)
                {
                  v88 = [objc_msgSend(objc_msgSend(v74 objectForKey:{v83), "allObjects"), "componentsJoinedByString:", @", "}];
                  v178 = 136315650;
                  v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
                  v180 = 2114;
                  v181 = v83;
                  v182 = 2114;
                  v183 = v88;
                  LODWORD(v120) = 32;
                  _os_log_send_and_compose_impl(v87, 0, v186, 128, &dword_1B17A2000, v84, v86, "-MXMediaEndowmentManager- %s: \t\t\t %{public}@: ['%{public}@'],", &v178, v120);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v80 = [v74 countByEnumeratingWithState:&v142 objects:v173 count:16];
          }

          while (v80);
        }

        if (dword_1EB75DE60)
        {
          v171 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v89 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v90 = v171;
          v91 = type;
          if (os_log_type_enabled(v89, type))
          {
            v92 = v90;
          }

          else
          {
            v92 = v90 & 0xFFFFFFFE;
          }

          if (v92)
          {
            v178 = 136315138;
            v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            _os_log_send_and_compose_impl(v92, 0, v186, 128, &dword_1B17A2000, v89, v91, "-MXMediaEndowmentManager- %s: \t\t }", &v178);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v72 = v137 + 1;
      }

      while ((v137 + 1) != v134);
      v134 = [objb countByEnumeratingWithState:&v146 objects:v174 count:16];
    }

    while (v134);
  }

  if (dword_1EB75DE60)
  {
    v171 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v94 = v171;
    v95 = type;
    if (os_log_type_enabled(v93, type))
    {
      v96 = v94;
    }

    else
    {
      v96 = v94 & 0xFFFFFFFE;
    }

    if (v96)
    {
      v178 = 136315138;
      v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v96, 0, v186, 128, &dword_1B17A2000, v93, v95, "-MXMediaEndowmentManager- %s: \t }", &v178);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v171 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v97 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v98 = v171;
      v99 = type;
      if (os_log_type_enabled(v97, type))
      {
        v100 = v98;
      }

      else
      {
        v100 = v98 & 0xFFFFFFFE;
      }

      if (v100)
      {
        v178 = 136315138;
        v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl(v100, 0, v186, 128, &dword_1B17A2000, v97, v99, "-MXMediaEndowmentManager- %s: \t mMediaPlaybackAssertions = {", &v178);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v101 = *(*(a1 + 32) + 48);
  result = [v101 countByEnumeratingWithState:&v138 objects:v172 count:16];
  if (result)
  {
    v103 = result;
    v104 = *v139;
    do
    {
      v105 = 0;
      do
      {
        if (*v139 != v104)
        {
          objc_enumerationMutation(v101);
        }

        if (dword_1EB75DE60)
        {
          v106 = *(*(&v138 + 1) + 8 * v105);
          v171 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v107 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v108 = v171;
          v109 = type;
          if (os_log_type_enabled(v107, type))
          {
            v110 = v108;
          }

          else
          {
            v110 = v108 & 0xFFFFFFFE;
          }

          if (v110)
          {
            v111 = [objc_msgSend(*(*(a1 + 32) + 48) objectForKey:{v106), "explanation"}];
            v178 = 136315650;
            v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
            v180 = 2114;
            v181 = v106;
            v182 = 2114;
            v183 = v111;
            LODWORD(v120) = 32;
            _os_log_send_and_compose_impl(v110, 0, v186, 128, &dword_1B17A2000, v107, v109, "-MXMediaEndowmentManager- %s: \t\t %{public}@: '%{public}@'", &v178, v120);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v105 = v105 + 1;
      }

      while (v103 != v105);
      result = [v101 countByEnumeratingWithState:&v138 objects:v172 count:16];
      v103 = result;
    }

    while (result);
  }

  if (dword_1EB75DE60)
  {
    v171 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v113 = v171;
    v114 = type;
    if (os_log_type_enabled(v112, type))
    {
      v115 = v113;
    }

    else
    {
      v115 = v113 & 0xFFFFFFFE;
    }

    if (v115)
    {
      v178 = 136315138;
      v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v115, 0, v186, 128, &dword_1B17A2000, v112, v114, "-MXMediaEndowmentManager- %s: \t }", &v178);
    }

    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE60)
    {
      v171 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v116 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v117 = v171;
      v118 = type;
      if (os_log_type_enabled(v116, type))
      {
        v119 = v117;
      }

      else
      {
        v119 = v117 & 0xFFFFFFFE;
      }

      if (v119)
      {
        v178 = 136315138;
        v179 = "[MXMediaEndowmentManager dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl(v119, 0, v186, 128, &dword_1B17A2000, v116, v118, "-MXMediaEndowmentManager- %s: \t =======================================================================================================================================", &v178);
      }

      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

@end
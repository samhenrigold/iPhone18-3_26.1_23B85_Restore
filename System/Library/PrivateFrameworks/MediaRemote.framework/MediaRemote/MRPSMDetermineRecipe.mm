@interface MRPSMDetermineRecipe
@end

@implementation MRPSMDetermineRecipe

void ___MRPSMDetermineRecipe_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 isResolved])
  {
    v6 = *(a1 + 40);
    v7 = [v5 description];
    [v6 addEventOutput:v7 withKey:@"playerPath" toEventID:*(a1 + 72)];

    [*(a1 + 40) endEventWithID:*(a1 + 72)];
    v8 = [*(a1 + 40) startEvent:@"ResolveDestination" role:1];
    v9 = [v5 playerPathByRedirectingToOrigin:*(a1 + 48)];
    v10 = *(a1 + 40);
    v11 = [v9 description];
    [v10 addEventInput:v11 withKey:@"playerPath" toEventID:v8];

    v12 = *(a1 + 56);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___MRPSMDetermineRecipe_block_invoke_2;
    v16[3] = &unk_1E769DD10;
    v17 = *(a1 + 40);
    v22 = v8;
    v21 = *(a1 + 64);
    v18 = v9;
    v19 = v5;
    v20 = *(a1 + 56);
    v13 = v9;
    MRMediaRemoteNowPlayingResolvePlayerPath(v13, v12, v16);
  }

  else
  {
    v14 = a3;
    if (!v14)
    {
      v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:156 format:{@"Failed to resolve player path, but did not receive an error: sourcePlayerPath=%@", *(a1 + 32)}];
    }

    [*(a1 + 40) endEventWithID:*(a1 + 72) error:v14];
    v15 = [_MRPSMRecipe notPossibleWithError:v14];
    (*(*(a1 + 64) + 16))();
  }
}

void ___MRPSMDetermineRecipe_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = a2;
    v7 = [v6 origin];

    if (v7)
    {
      v8 = [v6 client];
      v9 = [v8 bundleIdentifier];

      if (v9)
      {
        v10 = *(a1 + 32);
        v11 = [v6 description];
        [v10 addEventOutput:v11 withKey:@"playerPath" toEventID:*(a1 + 72)];

        [*(a1 + 32) endEventWithID:*(a1 + 72)];
        v12 = dispatch_group_create();
        dispatch_group_enter(v12);
        v56[0] = 0;
        v56[1] = v56;
        v56[2] = 0x3032000000;
        v56[3] = __Block_byref_object_copy__12;
        v56[4] = __Block_byref_object_dispose__12;
        v57 = 0;
        v54[0] = 0;
        v54[1] = v54;
        v54[2] = 0x3032000000;
        v54[3] = __Block_byref_object_copy__12;
        v54[4] = __Block_byref_object_dispose__12;
        v55 = 0;
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = ___MRPSMDetermineRecipe_block_invoke_3;
        v50[3] = &unk_1E769DC98;
        v52 = v56;
        v53 = v54;
        v15 = v12;
        v51 = v15;
        MRMediaRemoteGetSupportedCommandsForPlayer(v13, v14, v50);
        dispatch_group_enter(v15);
        v48[0] = 0;
        v48[1] = v48;
        v48[2] = 0x3032000000;
        v48[3] = __Block_byref_object_copy__12;
        v48[4] = __Block_byref_object_dispose__12;
        v49 = 0;
        v46[0] = 0;
        v46[1] = v46;
        v46[2] = 0x3032000000;
        v46[3] = __Block_byref_object_copy__12;
        v46[4] = __Block_byref_object_dispose__12;
        v47 = 0;
        v16 = *(a1 + 56);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = ___MRPSMDetermineRecipe_block_invoke_4;
        v42[3] = &unk_1E769DC98;
        v44 = v48;
        v45 = v46;
        v17 = v15;
        v43 = v17;
        MRMediaRemoteGetSupportedCommandsForPlayer(v6, v16, v42);
        dispatch_group_enter(v17);
        v40[0] = 0;
        v40[1] = v40;
        v40[2] = 0x3032000000;
        v40[3] = __Block_byref_object_copy__12;
        v40[4] = __Block_byref_object_dispose__12;
        v41 = 0;
        v38[0] = 0;
        v38[1] = v38;
        v38[2] = 0x3032000000;
        v38[3] = __Block_byref_object_copy__12;
        v38[4] = __Block_byref_object_dispose__12;
        v39 = 0;
        v18 = [*(a1 + 48) origin];
        v19 = *(a1 + 56);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = ___MRPSMDetermineRecipe_block_invoke_5;
        v34[3] = &unk_1E769DCC0;
        v36 = v40;
        v37 = v38;
        v20 = v17;
        v35 = v20;
        [MRDeviceInfoRequest deviceInfoForOrigin:v18 queue:v19 completion:v34];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___MRPSMDetermineRecipe_block_invoke_6;
        block[3] = &unk_1E769DCE8;
        v28 = v54;
        v21 = *(a1 + 56);
        v27 = *(a1 + 64);
        v29 = v46;
        v30 = v38;
        v31 = v40;
        v25 = *(a1 + 48);
        v32 = v56;
        v33 = v48;
        v26 = v6;
        dispatch_group_notify(v20, v21, block);

        _Block_object_dispose(v38, 8);
        _Block_object_dispose(v40, 8);

        _Block_object_dispose(v46, 8);
        _Block_object_dispose(v48, 8);

        _Block_object_dispose(v54, 8);
        _Block_object_dispose(v56, 8);

LABEL_9:
        goto LABEL_10;
      }

      v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:157 format:{@"Partially resolved player path missing bundleID: destinationPlayerPath=%@", *(a1 + 40)}];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:157 format:{@"Partially resolved player path missing origin: destinationPlayerPath=%@", *(a1 + 40)}];
    }

    v20 = v22;
    v23 = [_MRPSMRecipe notPossibleWithError:v22];
    [*(a1 + 32) endEventWithID:*(a1 + 72) error:v20];
    (*(*(a1 + 64) + 16))();

    goto LABEL_9;
  }

  [*(a1 + 32) endEventWithID:*(a1 + 72) error:v5];
  v6 = [_MRPSMRecipe notPossibleWithError:v5];
  (*(*(a1 + 64) + 16))();
LABEL_10:
}

void ___MRPSMDetermineRecipe_block_invoke_3(void *a1, void *a2, void *a3)
{
  v5 = [a2 copy];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [a3 copy];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = a1[4];

  dispatch_group_leave(v11);
}

void ___MRPSMDetermineRecipe_block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = [a2 copy];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [a3 copy];
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = a1[4];

  dispatch_group_leave(v11);
}

void ___MRPSMDetermineRecipe_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v10 = a2;
  v6 = a3;
  v7 = [v6 copy];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_group_leave(*(a1 + 32));
}

void ___MRPSMDetermineRecipe_block_invoke_6(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = *MEMORY[0x1E696AA08];
    v83[0] = *MEMORY[0x1E696A278];
    v83[1] = v3;
    v4 = *(*(*(a1 + 56) + 8) + 40);
    v84[0] = @"failed to get supported commands for source";
    v84[1] = v4;
    v5 = MEMORY[0x1E695DF20];
    v6 = v84;
    v7 = v83;
LABEL_3:
    v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:2];
    v9 = v2;
    v10 = 152;
LABEL_6:
    v14 = [v9 initWithMRError:v10 userInfo:v8];

    v15 = [_MRPSMRecipe notPossibleWithError:v14];
    (*(*(a1 + 48) + 16))();

    return;
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = *MEMORY[0x1E696AA08];
    v81[0] = *MEMORY[0x1E696A278];
    v81[1] = v12;
    v13 = *(*(*(a1 + 64) + 8) + 40);
    v82[0] = @"failed to get supported commands for destination";
    v82[1] = v13;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
    v9 = v11;
    v10 = 153;
    goto LABEL_6;
  }

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E696AA08];
    v79[0] = *MEMORY[0x1E696A278];
    v79[1] = v16;
    v17 = *(*(*(a1 + 72) + 8) + 40);
    v80[0] = @"failed to get device info for source";
    v80[1] = v17;
    v5 = MEMORY[0x1E695DF20];
    v6 = v80;
    v7 = v79;
    goto LABEL_3;
  }

  v18 = [*(*(*(a1 + 80) + 8) + 40) airPlayReceivers];
  v19 = [*(a1 + 32) client];
  v20 = [v19 bundleIdentifier];
  v21 = [v18 containsObject:v20];

  if (v21)
  {
    v63 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:155 format:{@"resolvedSourcePlayerPath %@ is an airplay destination", *(a1 + 32)}];
    v22 = [_MRPSMRecipe notPossibleWithError:?];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v23 = *(*(*(a1 + 88) + 8) + 40);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v74;
      while (2)
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v74 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v73 + 1) + 8 * i);
          if ([v29 command] == 133)
          {
            v30 = v29;
            goto LABEL_24;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0;
LABEL_24:

    v31 = *(*(*(a1 + 96) + 8) + 40);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v32 = v31;
    v33 = [v32 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v74;
      while (2)
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v74 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v73 + 1) + 8 * j);
          if ([v37 command] == 133)
          {
            v38 = v37;
            goto LABEL_34;
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v38 = 0;
LABEL_34:

    if (_os_feature_enabled_impl() && ([v30 options], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "objectForKeyedSubscript:", @"kMRMediaRemoteCommandInfoPlaybackSessionRequirements"), v40 = objc_claimAutoreleasedReturnValue(), v40, v39, objc_msgSend(v38, "options"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "objectForKeyedSubscript:", @"kMRMediaRemoteCommandInfoPlaybackSessionRequirements"), v42 = objc_claimAutoreleasedReturnValue(), v42, v41, v40) && v42)
    {
      v43 = [_MRPSMRecipe oneShotSetPlaybackSessionWithCommandInfo:v38];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v44 = [v38 options];
      v43 = [v44 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoSupportedPlaybackSessionTypes"];

      if ([v43 count])
      {
        v45 = [v30 options];
        v46 = [v45 objectForKeyedSubscript:@"kMRMediaRemoteCommandInfoCurrentPlaybackSessionTypes"];

        if ([v46 count])
        {
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v47 = v46;
          v62 = [v47 countByEnumeratingWithState:&v69 objects:v78 count:16];
          if (v62)
          {
            v48 = *v70;
            v64 = v30;
            v60 = *v70;
            v61 = v38;
            do
            {
              for (k = 0; k != v62; ++k)
              {
                if (*v70 != v48)
                {
                  objc_enumerationMutation(v47);
                }

                v50 = *(*(&v69 + 1) + 8 * k);
                v65 = 0u;
                v66 = 0u;
                v67 = 0u;
                v68 = 0u;
                v51 = v43;
                v52 = [v51 countByEnumeratingWithState:&v65 objects:v77 count:16];
                if (v52)
                {
                  v53 = v52;
                  v54 = *v66;
                  while (2)
                  {
                    for (m = 0; m != v53; ++m)
                    {
                      if (*v66 != v54)
                      {
                        objc_enumerationMutation(v51);
                      }

                      if (objc_msgSend_isEqualToString_(v50))
                      {
                        v59 = [_MRPSMRecipe legacySetPlaybackSessionWithSessionType:v50];
                        (*(*(a1 + 48) + 16))();

                        v30 = v64;
                        v38 = v61;
                        goto LABEL_60;
                      }
                    }

                    v53 = [v51 countByEnumeratingWithState:&v65 objects:v77 count:16];
                    if (v53)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v30 = v64;
                v48 = v60;
              }

              v38 = v61;
              v62 = [v47 countByEnumeratingWithState:&v69 objects:v78 count:16];
            }

            while (v62);
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = [v47 msv_compactDescription];
          v58 = [v43 msv_compactDescription];
          v47 = [v56 initWithMRError:154 format:{@"CurrentTypes.insersect(SupportedTypes) is empty currentTypes=%@ supportedTypes=%@", v57, v58}];
        }

        else
        {
          v47 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:152 format:@"Source.setPlaybackSession.options[currentTypes] is empty"];
        }

        v51 = [_MRPSMRecipe notPossibleWithError:v47];
        (*(*(a1 + 48) + 16))();
LABEL_60:
      }

      else
      {
        v46 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:153 format:@"Destination.setPlaybackSession.options[supportedTypes] is empty"];
        v47 = [_MRPSMRecipe notPossibleWithError:v46];
        (*(*(a1 + 48) + 16))();
      }
    }
  }
}

@end
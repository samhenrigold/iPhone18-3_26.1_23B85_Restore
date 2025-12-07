@interface EKVirtualConferenceRoomType
+ (void)virtualConferenceRoomTypesWithCompletion:(id)completion queue:(id)queue;
- (BOOL)isEqual:(id)equal;
- (EKVirtualConferenceRoomType)initWithTitle:(id)title identifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier;
@end

@implementation EKVirtualConferenceRoomType

- (EKVirtualConferenceRoomType)initWithTitle:(id)title identifier:(id)identifier extensionBundleIdentifier:(id)bundleIdentifier
{
  titleCopy = title;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v15.receiver = self;
  v15.super_class = EKVirtualConferenceRoomType;
  v12 = [(EKVirtualConferenceRoomType *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v13->_extensionBundleIdentifier, bundleIdentifier);
  }

  return v13;
}

+ (void)virtualConferenceRoomTypesWithCompletion:(id)completion queue:(id)queue
{
  v22[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  queueCopy = queue;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__21;
  v19[4] = __Block_byref_object_dispose__21;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = dispatch_group_create();
  v8 = *MEMORY[0x1E696A2F8];
  v21[0] = @"LS:ExtensionPlatforms";
  v21[1] = v8;
  v22[0] = &unk_1F1B6B218;
  v22[1] = @"com.apple.calendar.virtualconference";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v10 = MEMORY[0x1E696ABD0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke;
  v14[3] = &unk_1E78000D0;
  v18 = v19;
  v11 = v7;
  v15 = v11;
  v12 = queueCopy;
  v16 = v12;
  v13 = completionCopy;
  v17 = v13;
  [v10 extensionsWithMatchingAttributes:v9 completion:v14];

  _Block_object_dispose(v19, 8);
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_cold_1();
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v19 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [v10 identifier];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_101;
          v28[3] = &unk_1E7800010;
          v12 = *(a1 + 56);
          v29 = v11;
          v31 = v12;
          v30 = *(a1 + 32);
          v13 = v11;
          [v10 setRequestCompletionBlock:v28];
          [v10 setRequestCancellationBlock:&__block_literal_global_67];
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_108;
          v26[3] = &unk_1E7800058;
          v27 = 0;
          [v10 setRequestInterruptionBlock:v26];
          v14 = objc_alloc_init(MEMORY[0x1E696ABE0]);
          v37 = @"_EKVirtualConferenceRequestTypeKey";
          v38 = @"_EKVirtualConferenceRequestTypeRoomTypes";
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          [v14 setUserInfo:v15];

          dispatch_group_enter(*(a1 + 32));
          v36 = v14;
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_110;
          v25[3] = &unk_1E7800080;
          v25[4] = v10;
          [v10 beginExtensionRequestWithOptions:1 inputItems:v16 completion:v25];
        }

        v8 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v8);
    }

    v17 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_111;
    block[3] = &unk_1E78000A8;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v20 = *(a1 + 48);
    v18 = v20;
    v24 = v20;
    dispatch_async(v17, block);

    v6 = 0;
  }
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v5)
  {
    v25 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 userInfo];
        v9 = [v8 objectForKey:@"_EKVirtualConferenceRoomTypeTitleKey"];

        v10 = [v7 userInfo];
        v11 = [v10 objectForKey:@"_EKVirtualConferenceRoomTypeIdentifierKey"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v11;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = v15;
        if (v13)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = EKLogHandle;
          if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
          {
            v19 = @"(nil)";
            if (v16)
            {
              v20 = v16;
            }

            else
            {
              v20 = @"(nil)";
            }

            *buf = 138412802;
            v31 = v7;
            if (v13)
            {
              v19 = v13;
            }

            v32 = 2112;
            v33 = v20;
            v34 = 2112;
            v35 = v19;
            _os_log_error_impl(&dword_1A805E000, v18, OS_LOG_TYPE_ERROR, "Skipping extension room type %@ because it has insufficient information. Identifier = %@ title = %@", buf, 0x20u);
          }
        }

        else
        {
          v21 = [[EKVirtualConferenceRoomType alloc] initWithTitle:v13 identifier:v15 extensionBundleIdentifier:*(a1 + 32)];
          v22 = *(*(*(a1 + 48) + 8) + 40);
          objc_sync_enter(v22);
          [*(*(*(a1 + 48) + 8) + 40) addObject:v21];
          objc_sync_exit(v22);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_106_cold_1();
  }
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_108(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_108_cold_1();
  }
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_110(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_error_impl(&dword_1A805E000, v7, OS_LOG_TYPE_ERROR, "Request for virtual conference room types failed, extension = %@ request = %@ error = %@", &v9, 0x20u);
    }
  }
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_111(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_111_cold_1(v4);
    }
  }

  v5 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_112;
  block[3] = &unk_1E77FFFE8;
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  dispatch_async(v5, block);
}

uint64_t __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_112(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) count];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = [(EKVirtualConferenceRoomType *)v5 title];
      title2 = [(EKVirtualConferenceRoomType *)self title];
      if (CalEqualStrings())
      {
        identifier = [(EKVirtualConferenceRoomType *)v5 identifier];
        identifier2 = [(EKVirtualConferenceRoomType *)self identifier];
        if (CalEqualStrings())
        {
          extensionBundleIdentifier = [(EKVirtualConferenceRoomType *)v5 extensionBundleIdentifier];
          extensionBundleIdentifier2 = [(EKVirtualConferenceRoomType *)self extensionBundleIdentifier];
          v12 = CalEqualStrings();
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

void __78__EKVirtualConferenceRoomType_virtualConferenceRoomTypesWithCompletion_queue___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v0, OS_LOG_TYPE_ERROR, "Failed to find virtual conference extensions. Error = %@", v1, 0xCu);
}

@end
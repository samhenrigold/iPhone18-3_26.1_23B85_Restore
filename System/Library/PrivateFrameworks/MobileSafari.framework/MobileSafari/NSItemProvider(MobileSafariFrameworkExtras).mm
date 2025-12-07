@interface NSItemProvider(MobileSafariFrameworkExtras)
+ (void)safari_loadObjectsFromItemProviders:()MobileSafariFrameworkExtras usingLoader:completionHandler:;
- (void)safari_loadObjectOfClasses:()MobileSafariFrameworkExtras completionHandler:;
- (void)safari_registerFileRepresentationForQuickLookDocument:()MobileSafariFrameworkExtras;
@end

@implementation NSItemProvider(MobileSafariFrameworkExtras)

+ (void)safari_loadObjectsFromItemProviders:()MobileSafariFrameworkExtras usingLoader:completionHandler:
{
  v7 = a5;
  v8 = a3;
  v9 = dispatch_group_create();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke;
  aBlock[3] = &unk_1E721ED98;
  v11 = dictionary;
  v28 = v11;
  v12 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_2;
  v23[3] = &unk_1E721EDE8;
  v13 = v9;
  v25 = v12;
  v26 = a4;
  v24 = v13;
  v14 = v12;
  [v8 enumerateObjectsUsingBlock:v23];

  v15 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_4;
  block[3] = &unk_1E721B5D8;
  v20 = v13;
  v21 = v11;
  v22 = v7;
  v16 = v7;
  v17 = v11;
  v18 = v13;
  dispatch_async(v15, block);
}

- (void)safari_loadObjectOfClasses:()MobileSafariFrameworkExtras completionHandler:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([self canLoadObjectOfClass:v13])
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __92__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectOfClasses_completionHandler___block_invoke;
          v20[3] = &unk_1E721EE10;
          v21 = v7;
          v19 = [self loadObjectOfClass:v13 completionHandler:v20];

          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = WBS_LOG_CHANNEL_PREFIXItemProvider(v14, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v27 = v18;
    _os_log_impl(&dword_18B7AC000, v17, OS_LOG_TYPE_INFO, "Did not find object matching allowed classes: %{public}@", buf, 0xCu);
  }

  (*(v7 + 2))(v7, 0, 0);
LABEL_13:
}

- (void)safari_registerFileRepresentationForQuickLookDocument:()MobileSafariFrameworkExtras
{
  v4 = a3;
  fileName = [v4 fileName];
  [self setSuggestedName:fileName];

  inferredUTI = [v4 inferredUTI];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__NSItemProvider_MobileSafariFrameworkExtras__safari_registerFileRepresentationForQuickLookDocument___block_invoke;
  v8[3] = &unk_1E721EE60;
  v9 = v4;
  v7 = v4;
  [self registerFileRepresentationForTypeIdentifier:inferredUTI fileOptions:0 visibility:0 loadHandler:v8];
}

@end
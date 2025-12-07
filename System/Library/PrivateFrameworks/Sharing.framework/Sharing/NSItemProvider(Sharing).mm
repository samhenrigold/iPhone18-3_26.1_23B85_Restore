@interface NSItemProvider(Sharing)
- (id)preferredContentTypeForSavingWithCanOpenInPlace:()Sharing;
- (uint64_t)supportsMessagesSendCopyRepresentation;
- (uint64_t)supportsShareSheetSendCopyRepresentation;
- (void)loadFileURLRequiringOpenInPlace:()Sharing completionHandler:;
- (void)loadURLClassWithPreviousError:()Sharing completionHandler:;
- (void)sf_loadSecurityContextWithCompletionHandler:()Sharing;
@end

@implementation NSItemProvider(Sharing)

- (uint64_t)supportsShareSheetSendCopyRepresentation
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  registeredTypeIdentifiers = [self registeredTypeIdentifiers];
  v2 = [registeredTypeIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    v5 = *MEMORY[0x1E6982E48];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(registeredTypeIdentifiers);
        }

        v7 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v11 + 1) + 8 * v6)];
        v8 = [v7 conformsToType:v5];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v3 != v6);
      v3 = [registeredTypeIdentifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (uint64_t)supportsMessagesSendCopyRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  registeredTypeIdentifiers = [self registeredTypeIdentifiers];
  v2 = [registeredTypeIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = *MEMORY[0x1E6982E48];
    v6 = *MEMORY[0x1E6982F40];
    v7 = *MEMORY[0x1E6983030];
    v8 = *MEMORY[0x1E6982DB8];
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(registeredTypeIdentifiers);
        }

        v10 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v13 + 1) + 8 * v9)];
        if ([v10 conformsToType:v5] && (objc_msgSend(v10, "conformsToType:", v6) & 1) == 0 && (!objc_msgSend(v10, "conformsToType:", v7) || objc_msgSend(v10, "conformsToType:", v8)))
        {

          v11 = 1;
          goto LABEL_14;
        }

        ++v9;
      }

      while (v3 != v9);
      v3 = [registeredTypeIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)preferredContentTypeForSavingWithCanOpenInPlace:()Sharing
{
  v38 = *MEMORY[0x1E69E9840];
  registeredContentTypesForOpenInPlace = [self registeredContentTypesForOpenInPlace];
  v6 = +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = registeredContentTypesForOpenInPlace;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v27 = a3;
    v10 = 0;
    v11 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        identifier = [v13 identifier];
        v15 = [identifier isEqualToString:v6];

        if ((v15 & 1) == 0)
        {
          v16 = v13;

          v10 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);

    a3 = v27;
    if (v10)
    {
      v17 = 1;
      if (!v27)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else
  {
  }

  [self registeredContentTypes];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v31 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    v22 = *MEMORY[0x1E6982E48];
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v28 + 1) + 8 * j);
        if ([v24 conformsToType:v22])
        {
          v10 = v24;
          goto LABEL_24;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_24:

  v17 = 0;
  if (a3)
  {
LABEL_25:
    *a3 = v17;
  }

LABEL_26:
  v25 = v10;

  return v10;
}

- (void)loadURLClassWithPreviousError:()Sharing completionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([self canLoadObjectOfClass:objc_opt_class()])
  {
    v8 = objc_opt_class();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__NSItemProvider_Sharing__loadURLClassWithPreviousError_completionHandler___block_invoke;
    v10[3] = &unk_1E788E5E8;
    v11 = v7;
    v9 = [self loadObjectOfClass:v8 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, v6);
  }
}

- (void)loadFileURLRequiringOpenInPlace:()Sharing completionHandler:
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v17 = 0;
  v7 = [self preferredContentTypeForSavingWithCanOpenInPlace:&v17];
  v8 = v7;
  if (v7 && ((a3 ^ 1 | v17) & 1) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__NSItemProvider_Sharing__loadFileURLRequiringOpenInPlace_completionHandler___block_invoke;
    v12[3] = &unk_1E788FE10;
    v16 = a3;
    v15 = v6;
    v13 = v8;
    selfCopy = self;
    v9 = [self loadFileRepresentationForContentType:v13 openInPlace:a3 completionHandler:v12];
  }

  else
  {
    if (!((v7 == 0) | (a3 ^ 1 | v17) & 1))
    {
      v10 = framework_log(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [v8 identifier];
        *buf = 138412290;
        v19 = identifier;
        _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Not loading file representation for content type %@ because it can't be opened in place", buf, 0xCu);
      }
    }

    [self loadURLClassWithPreviousError:0 completionHandler:v6];
  }
}

- (void)sf_loadSecurityContextWithCompletionHandler:()Sharing
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__NSItemProvider_Sharing__sf_loadSecurityContextWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E788FE38;
  v7 = v4;
  v5 = v4;
  [self loadItemForTypeIdentifier:@"com.apple.ShareUI.airdrop.supplementalSecurityContext" options:0 completionHandler:v6];
}

@end
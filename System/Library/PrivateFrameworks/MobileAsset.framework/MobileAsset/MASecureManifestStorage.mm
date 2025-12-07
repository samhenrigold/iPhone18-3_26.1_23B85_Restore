@interface MASecureManifestStorage
- (BOOL)_storeManifest:(id)manifest manifestType:(unint64_t)type infoPlist:(id)plist stage:(BOOL)stage error:(id *)error;
- (BOOL)commitStagedManifestsForSelectors:(id)selectors error:(id *)error;
- (BOOL)invalidateManifestForAssetType:(id)type specifier:(id)specifier error:(id *)error;
- (id)_errorWithCode:(unint64_t)code underlyingError:(id)error;
- (id)_manifestPathForAssetType:(id)type specifier:(id)specifier stage:(BOOL)stage;
- (id)_serviceConnectionWithError:(id *)error;
@end

@implementation MASecureManifestStorage

- (BOOL)_storeManifest:(id)manifest manifestType:(unint64_t)type infoPlist:(id)plist stage:(BOOL)stage error:(id *)error
{
  stageCopy = stage;
  manifestCopy = manifest;
  plistCopy = plist;
  v14 = [(MASecureManifestStorage *)self _serviceConnectionWithError:error];
  v15 = v14;
  if (v14)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__MASecureManifestStorage__storeManifest_manifestType_infoPlist_stage_error___block_invoke;
    v20[3] = &unk_1E74CA9F0;
    v20[4] = self;
    v20[5] = &v21;
    v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__MASecureManifestStorage__storeManifest_manifestType_infoPlist_stage_error___block_invoke_2;
    v19[3] = &unk_1E74CAA18;
    v19[4] = &v21;
    [v16 storeManifest:manifestCopy manifestType:type infoPlist:plistCopy stage:stageCopy completion:v19];

    if (error)
    {
      *error = v22[5];
    }

    [v15 invalidate];
    v17 = v22[5] == 0;
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __77__MASecureManifestStorage__storeManifest_manifestType_infoPlist_stage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _errorWithCode:1 underlyingError:a2];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)commitStagedManifestsForSelectors:(id)selectors error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  selectorsCopy = selectors;
  selfCopy = self;
  v21 = [(MASecureManifestStorage *)self _serviceConnectionWithError:error];
  if (v21)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(selectorsCopy, "count")}];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = selectorsCopy;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v7)
    {
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = MEMORY[0x1E696AEC0];
          assetType = [v10 assetType];
          assetSpecifier = [v10 assetSpecifier];
          v14 = [v11 stringWithFormat:@"%@:%@", assetType, assetSpecifier];

          [v5 addObject:v14];
        }

        v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v7);
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__4;
    v28 = __Block_byref_object_dispose__4;
    v29 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__MASecureManifestStorage_commitStagedManifestsForSelectors_error___block_invoke;
    v23[3] = &unk_1E74CA9F0;
    v23[4] = selfCopy;
    v23[5] = &v24;
    v15 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v23];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__MASecureManifestStorage_commitStagedManifestsForSelectors_error___block_invoke_2;
    v22[3] = &unk_1E74CAA18;
    v22[4] = &v24;
    [v15 commitStagedManifestsForSelectors:v5 completion:v22];

    if (error)
    {
      *error = v25[5];
    }

    [v21 invalidate];
    v16 = v25[5] == 0;
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __67__MASecureManifestStorage_commitStagedManifestsForSelectors_error___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _errorWithCode:1 underlyingError:a2];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)invalidateManifestForAssetType:(id)type specifier:(id)specifier error:(id *)error
{
  typeCopy = type;
  specifierCopy = specifier;
  v10 = [(MASecureManifestStorage *)self _serviceConnectionWithError:error];
  v11 = v10;
  if (v10)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__4;
    v21 = __Block_byref_object_dispose__4;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__MASecureManifestStorage_invalidateManifestForAssetType_specifier_error___block_invoke;
    v16[3] = &unk_1E74CA9F0;
    v16[4] = self;
    v16[5] = &v17;
    v12 = [v10 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__MASecureManifestStorage_invalidateManifestForAssetType_specifier_error___block_invoke_2;
    v15[3] = &unk_1E74CAA18;
    v15[4] = &v17;
    [v12 invalidateManifestForAssetType:typeCopy specifier:specifierCopy completion:v15];

    if (error)
    {
      *error = v18[5];
    }

    [v11 invalidate];
    v13 = v18[5] == 0;
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __74__MASecureManifestStorage_invalidateManifestForAssetType_specifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _errorWithCode:1 underlyingError:a2];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_manifestPathForAssetType:(id)type specifier:(id)specifier stage:(BOOL)stage
{
  stageCopy = stage;
  typeCopy = type;
  specifierCopy = specifier;
  v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v10 = [v9 stringByAppendingPathComponent:@"manifests"];

  if (stageCopy)
  {
    v11 = [v10 stringByAppendingPathComponent:@"staged"];

    v10 = v11;
  }

  v12 = normalizedAssetType(typeCopy);
  v13 = [v10 stringByAppendingPathComponent:v12];

  v14 = normalizedAssetType(specifierCopy);

  v15 = [v13 stringByAppendingPathComponent:v14];

  v16 = [v15 stringByAppendingPathComponent:@"SecureMobileAssetCryptex1Ticket.img4"];

  return v16;
}

- (id)_serviceConnectionWithError:(id *)error
{
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MobileAsset.ManifestStorageService"];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0C49540];
  [v5 setRemoteObjectInterface:v6];
  [v5 resume];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = _MAClientLog(@"Manifest");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_197AD5000, v8, OS_LOG_TYPE_ERROR, "Failed to connect to service", v10, 2u);
    }

    if (error)
    {
      *error = [(MASecureManifestStorage *)self _errorWithCode:1 underlyingError:0];
    }
  }

  return v5;
}

- (id)_errorWithCode:(unint64_t)code underlyingError:(id)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ManifestStorageServiceErrorDomain" code:code userInfo:v7];

  return v8;
}

@end
@interface LSDModifyClient
@end

@implementation LSDModifyClient

uint64_t __58___LSDModifyClient_setDatabaseIsSeeded_completionHandler___block_invoke(uint64_t a1)
{
  _LSServer_SetDatabaseIsSeeded(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1[4] + 8) + 40) + 16) & 2) == 0)
  {
    v2 = _LSServer_URLIsOnTrustedCryptex(*(*(a1[5] + 8) + 40));
    if (v2)
    {
      v3 = _LSInstallLog(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(*(a1[5] + 8) + 40);
        v16 = 138412290;
        v17 = v4;
        _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "%@ is on a trusted cryptex, setting kLSRegisterTrusted", &v16, 0xCu);
      }

      v5 = *(*(a1[4] + 8) + 40);
      *(v5 + 16) |= 2u;
    }
  }

  v6 = *(*(a1[4] + 8) + 40);
  v7 = *(*(a1[5] + 8) + 40);
  v8 = *(*(a1[7] + 8) + 40);
  v9 = *(a1[8] + 8);
  v12 = *(v9 + 48);
  v11 = (v9 + 48);
  v10 = v12;
  *v11 = 0;
  if (v12)
  {
    CFRelease(v10);
  }

  v13 = _LSCreateRegistrationData(0, v6, v7, v8, v11);
  v14 = *(a1[6] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke_168(void *a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = *(*(a1[5] + 8) + 40);
  v7 = *(*(a1[6] + 8) + 40);
  v8 = *(*(a1[7] + 8) + 40);
  v9 = *(*(a1[8] + 8) + 40);
  v10 = *(a1[9] + 8);
  v11 = *(a1[10] + 8);
  v12 = *(a1[11] + 8);
  v13 = *(a1[12] + 8);
  v16 = *(v13 + 48);
  v15 = (v13 + 48);
  v14 = v16;
  *v15 = 0;
  if (v16)
  {
    CFRelease(v14);
  }

  *(*(a1[4] + 8) + 24) = _LSServer_RegisterItemInfo(v6, v7, v8, v9, (v10 + 24), v11 + 24, (v12 + 24), v15);
  if (*(*(a1[12] + 8) + 48))
  {
    v17 = +[_LSCanOpenURLManager sharedManager];
    [v17 resetSchemeQueryLimitForApplicationWithIdentifier:*(*(a1[12] + 8) + 48)];
  }

  if (!*(*(a1[4] + 8) + 24))
  {
    _LSArmSaveTimer(5);
  }
}

void __67___LSDModifyClient_unregisterBundleUnit_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
  _LSDatabaseSentinelDecrement();
}

void __67___LSDModifyClient_unregisterBundleUnit_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v17, v7, 0);

  if (!v8)
  {
    v12 = *(a1 + 32);
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&v17, v13, 0);

    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = v20;
    }

    (*(v12 + 16))(v12, 0, v11);
    goto LABEL_9;
  }

  v9 = _LSUnregisterBundle(v8, *(a1 + 40), *(a1 + 44));
  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[_LSDModifyClient unregisterBundleUnit:options:completionHandler:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 618);
    (*(v10 + 16))(v10, 0, v11);
LABEL_9:

    goto LABEL_10;
  }

  (*(v10 + 16))(v10, 1, 0);
LABEL_10:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v15 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v16 = v20;
  v20 = 0;
}

void __59___LSDModifyClient_registerContainerURL_completionHandler___block_invoke(uint64_t a1)
{
  v5 = 0;
  v2 = FSNodeCreateWithURL(*(a1 + 32), 1, &v5);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v2, 0, "[_LSDModifyClient registerContainerURL:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 651);
    (*(v3 + 16))(v3, 0, v4);
  }

  else
  {
    _LSContainerAddWithNode(0, v5, 0, *(a1 + 40));
  }
}

void __58___LSDModifyClient_updateContainerUnit_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v18, v7, 0);

  if (v8)
  {
    v9 = _LSUpdateContainerState(*v8, *(a1 + 40), v17);
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[_LSDModifyClient updateContainerUnit:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 686);
      (*(v10 + 16))(v10, 0, v11);
    }

    else
    {
      v11 = [MEMORY[0x1E695DEF0] dataWithBytes:v17 length:20];
      (*(v10 + 16))(v10, v11, 0);
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&v18, v13, 0);

    if (v14)
    {
      v11 = 0;
    }

    else
    {
      v11 = v21;
    }

    (*(v12 + 16))(v12, 0, v11);
  }

  if (v18 && v20 == 1)
  {
    _LSContextDestroy(v18);
  }

  v15 = v19;
  v18 = 0;
  v19 = 0;

  v20 = 0;
  v16 = v21;
  v21 = 0;
}

void __92___LSDModifyClient_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _LSRegisterExtensionPoint(0, 0, *(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 56);
  if (v2)
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v2, 0, "[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 723);
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    v4 = *(v3 + 16);

    v4(v3, 1, 0);
  }
}

void __101___LSDModifyClient_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _LSUnregisterExtensionPoint(0, *(a1 + 32), *(a1 + 56), *(a1 + 60), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v2)
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v2, 0, "[_LSDModifyClient unregisterExtensionPoint:platform:withVersion:parentBundleUnit:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 742);
    (*(v3 + 16))(v3, 0);
  }

  else
  {
    v4 = *(v3 + 16);

    v4(v3, 1, 0);
  }
}

void __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke_2;
  v10[3] = &unk_1E6A1C268;
  v11 = *(a1 + 32);
  v5 = *(a1 + 48);
  v15 = *(a1 + 68);
  v16 = *(a1 + 84);
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 64);
  _LSIfCanModifyDefaultHandler(0, v2, &v9, v4, v10);

  v7 = *(a1 + 56);
  if (v9)
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v9, 0, "[_LSDModifyClient setHandler:version:roles:forContentType:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 813);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 1, 0);
  }
}

uint64_t __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  DefaultAppCategoryForTypeIdentifier = getDefaultAppCategoryForTypeIdentifier(*(a1 + 32));
  if ((v3 & 1) != 0 && (v4 = DefaultAppCategoryForTypeIdentifier, _os_feature_enabled_impl()))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 76);
    *buf = *(a1 + 60);
    *&buf[16] = v6;
    v7 = _LSServer_LSSetDefaultAppByTypeIdentifier(v4, v5, buf);
    v8 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 48) XPCConnection];
      v10 = [v9 processIdentifier];
      v11 = *(a1 + 32);
      *buf = 134218754;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      *&buf[24] = v4;
      v26 = 2048;
      v27 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for content type %{public}@ set default app category %lu -> %ld", buf, 0x2Au);
    }
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 76);
    *buf = *(a1 + 60);
    *&buf[16] = v15;
    v7 = _LSServer_SetContentTypeHandler(v13, v12, v14, buf);
    v8 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 48) XPCConnection];
      v17 = [v16 processIdentifier];
      v18 = *(a1 + 56);
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = *(a1 + 76);
      v24[0] = *(a1 + 60);
      v24[1] = v21;
      v22 = _LSVersionNumberGetStringRepresentation(v24);
      *buf = 134219266;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v20;
      *&buf[22] = 2048;
      *&buf[24] = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v22;
      v30 = 2048;
      v31 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for content type %{public}@ roles %lx to %@ v %@ -> %ld", buf, 0x3Eu);
    }
  }

  return v7;
}

void __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke(uint64_t a1)
{
  v13 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke_2;
  v9[3] = &unk_1E6A1C2B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 56);
  _LSIfCanModifyDefaultHandler(0, v2, &v13, v4, v9);

  v7 = *(a1 + 48);
  if (v13)
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v13, 0, "[_LSDModifyClient removeHandlerForContentType:roles:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 849);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(*(a1 + 48), 1, 0);
  }
}

uint64_t __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  DefaultAppCategoryForTypeIdentifier = getDefaultAppCategoryForTypeIdentifier(*(a1 + 32));
  if ((v3 & 1) != 0 && (v4 = DefaultAppCategoryForTypeIdentifier, _os_feature_enabled_impl()))
  {
    v6 = _LSServer_LSRemoveDefaultApp(v4, v5);
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) XPCConnection];
      v14 = 134218496;
      v15 = [v8 processIdentifier];
      v16 = 2048;
      v17 = v4;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %ld removing default app for category %lu -> %ld", &v14, 0x20u);
    }
  }

  else
  {
    v6 = _LSServer_RemoveContentTypeHandler(*(a1 + 32), *(a1 + 48));
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) XPCConnection];
      v10 = [v9 processIdentifier];
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v14 = 134218754;
      v15 = v10;
      v16 = 2114;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %ld removing content type handler for %{public}@ roles %lx -> %ld", &v14, 0x2Au);
    }
  }

  return v6;
}

void __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke_2;
  v11[3] = &unk_1E6A1C308;
  v12 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = v6;
  v7 = *(a1 + 40);
  v13 = v5;
  v14 = v7;
  _LSIfCanModifyDefaultHandler(v2, 0, &v10, v4, v11);

  v8 = *(a1 + 56);
  if (v10)
  {
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v10, 0, "[_LSDModifyClient setHandler:version:forURLScheme:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 886);
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 1, 0);
  }
}

uint64_t __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  InfoForSubordinateClaim = LSDefaultAppCategoryGetInfoForSubordinateClaim(0, *(a1 + 32));
  if (InfoForSubordinateClaim && (v3 = *InfoForSubordinateClaim, _os_feature_enabled_impl()))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 72);
    *buf = *(a1 + 56);
    *&buf[16] = v5;
    v6 = _LSServer_LSSetDefaultAppByTypeIdentifier(v3, v4, buf);
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) XPCConnection];
      v9 = [v8 processIdentifier];
      v10 = *(a1 + 32);
      *buf = 134218754;
      *&buf[4] = v9;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2048;
      *&buf[24] = v3;
      v23 = 2048;
      v24 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for scheme %{public}@ set default app category %lu -> %ld ", buf, 0x2Au);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 72);
    *buf = *(a1 + 56);
    *&buf[16] = v13;
    v6 = _LSServer_SetSchemeHandler(v11, v12, buf);
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 48) XPCConnection];
      v15 = [v14 processIdentifier];
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      v18 = *(a1 + 72);
      v21[0] = *(a1 + 56);
      v21[1] = v18;
      v19 = _LSVersionNumberGetStringRepresentation(v21);
      *buf = 134219010;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      *&buf[24] = v16;
      v23 = 2112;
      v24 = v19;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "pid %ld setting handler for scheme %{public}@ to %@ v %@: %ld", buf, 0x34u);
    }
  }

  return v6;
}

void __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke(uint64_t a1)
{
  v12 = -10822;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v4 = [v3 _xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke_2;
  v9[3] = &unk_1E6A1C358;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  _LSIfCanModifyDefaultHandler(v2, 0, &v12, v4, v9);

  v7 = *(a1 + 48);
  if (v12)
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "[_LSDModifyClient removeHandlerForURLScheme:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 913);
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(*(a1 + 48), 1, 0);
  }
}

uint64_t __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _LSServer_RemoveSchemeHandler(*(a1 + 32));
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) XPCConnection];
    v5 = [v4 processIdentifier];
    v6 = *(a1 + 32);
    v8 = 134218498;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2048;
    v13 = v2;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "pid %ld removing handler for scheme %{public}@: %ld", &v8, 0x20u);
  }

  return v2;
}

void __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
  v13 = 0;
  v7 = -10822;
  v2 = [*(a1 + 32) XPCConnection];
  v3 = [v2 _xpcConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E6A1C380;
  v6[5] = &v14;
  v6[6] = &v8;
  v6[4] = *(a1 + 32);
  _LSIfCanModifyDefaultHandler(@"*", @"*", &v7, v3, v6);

  if ((v15[3] & 1) == 0 && !v9[5])
  {
    v4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v7, 0, "[_LSDModifyClient removeAllHandlersWithCompletionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 940);
    v5 = v9[5];
    v9[5] = v4;
  }

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
}

uint64_t __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 8);
  obj = *(v2 + 40);
  v3 = _LSServer_RemoveAllHandlers(&obj);
  objc_storeStrong((v2 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = 0;
  }

  else
  {
    v4 = _LSGetOSStatusFromNSError(*(*(*(a1 + 48) + 8) + 40));
    v5 = v4;
  }

  v6 = _LSDefaultLog(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) XPCConnection];
    v8 = [v7 processIdentifier];
    *buf = 134218240;
    v12 = v8;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "pid %ld removing ALL handlers: %ld", buf, 0x16u);
  }

  return v5;
}

void __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  v2 = [LSApplicationRecord alloc];
  v3 = *(a1 + 32);
  v4 = (v11 + 5);
  obj = v11[5];
  v5 = [(LSApplicationRecord *)v2 initWithBundleIdentifier:v3 allowPlaceholder:0 error:&obj];
  objc_storeStrong(v4, obj);
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_2;
    v7[3] = &unk_1E6A1C3A8;
    v8 = *(a1 + 48);
    v7[4] = v16;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_3;
    v6[3] = &unk_1E6A1C3D0;
    v6[4] = &v10;
    [(LSRecord *)v5 _ifAttached:v7 else:v6];
  }

  (*(*(a1 + 40) + 16))();
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(v16, 8);
}

void __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_2(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  _LSBundleSetLegacySpecialApplicationTypes(*a2, a4, *(a1 + 40), 1);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  _LSDatabaseCommit(*a2, v6);

  _LSArmSaveTimer(1);
}

void __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke_3(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E696A278];
  v7[0] = @"Unable to access the specified record in the LS database for an unknown reason. Please file a bug report.";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v2, "[_LSDModifyClient relaxApplicationTypeRequirements:forBundleIdentifier:completionHandler:]_block_invoke_3", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 992);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __58___LSDModifyClient_resetServerStoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) XPCConnection];
  v2 = [v8 _xpcConnection];
  v3 = _LSCheckEntitlementForXPCConnection(v2, @"com.apple.private.coreservices.canresetserverstore");

  if (v3)
  {
    _LSResetServer(v4, v5);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }

  else
  {
    v7 = *(a1 + 40);
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient resetServerStoreWithCompletionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1019);
    (*(v7 + 16))(v7, 0);
  }
}

void __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__24;
  v26 = __Block_byref_object_dispose__24;
  v27 = 0;
  updated = _LSServer_UpdateDatabaseWithInfo(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0, a6, a7, a8);
  if (updated)
  {
    v10 = *(a1 + 72);
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], updated, 0, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1096);
    (*(v10 + 16))(v10, 0, 0, v11);
  }

  else
  {
    if (*(a1 + 84) == 1)
    {
      v12 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(a1 + 64)];
      v13 = v23[5];
      v23[5] = v12;

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke_2;
      v19[3] = &unk_1E6A1C420;
      v20 = *(a1 + 32);
      v21 = &v22;
      v14 = MEMORY[0x1865D71B0](v19);
    }

    else
    {
      v14 = 0;
    }

    _LSArmSaveTimerWithObserver(5, v14);
    if (*(a1 + 80))
    {
      v15 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:1];
      if (v15)
      {
        v16 = +[_LSInstallProgressService sharedInstance];
        v17 = *(a1 + 80);
        v28[0] = v15;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
        [v16 sendNotification:v17 forAppProxies:v18 Plugins:0 completion:0];
      }
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), 1, v23[5], 0);
  }

  _Block_object_dispose(&v22, 8);
}

void __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke_2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412802;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after update app record for bundle %@ attempted: %d save error: %@", &v12, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1065);

    v10 = v11;
  }

  [*(*(*(a1 + 40) + 8) + 40) saveDidHappen:v10 == 0 error:v10];
}

uint64_t __53___LSDModifyClient_synchronizeWithMobileInstallation__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = [*(a1 + 32) XPCConnection];
    v5[0] = 67109120;
    v5[1] = [v4 processIdentifier];
    _os_log_error_impl(&dword_18162D000, v2, OS_LOG_TYPE_ERROR, "Request to synchronize with MobileInstallation made by pid %d", v5, 8u);
  }

  _LSServer_SyncWithMobileInstallation(0);
  return MEMORY[0x1865D7C50]();
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v44 = a2;
  v45 = a3;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__24;
  v75 = __Block_byref_object_dispose__24;
  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (*(a1 + 32))
  {
    v5 = 0;
  }

  else
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1218);
  }

  v70 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v6 = +[_LSDServiceDomain defaultServiceDomain];
  v48 = a1;
  v47 = LaunchServices::Database::Context::_get(&v67, v6, 0);

  v7 = a1;
  if (!*(a1 + 32) || !v47)
  {
    goto LABEL_28;
  }

  v66 = 0;
  v8 = [FSNode alloc];
  v9 = *(a1 + 32);
  v65 = v5;
  v46 = [(FSNode *)v8 initWithURL:v9 flags:8 error:&v65];
  v42 = v65;

  if (!v46)
  {
    v19 = +[_LSDServiceDomain defaultServiceDomain];
    v20 = LaunchServices::Database::Context::_get(&v67, v19, 0);

    if (v20)
    {
      v5 = 0;
    }

    else
    {
      v5 = v70;
    }

    v18 = v42;
    goto LABEL_23;
  }

  v64 = v42;
  _LSContainerFindOrRegisterWithNode(v47, v46, 0, &v66, 0, 0, &v64);
  v10 = v64;

  v43 = v10;
  if (v10)
  {
    v12 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) absoluteString];
      objc_claimAutoreleasedReturnValue();
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_1();
    }
  }

  v13 = +[FSNode rootVolumeNode];
  if ([(FSNode *)v46 isEqual:v13])
  {
    goto LABEL_16;
  }

  v14 = +[FSNode systemDataVolumeNode];
  if ([(FSNode *)v46 isEqual:v14])
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  v15 = +[FSNode prebootVolumeNode];
  if ([(FSNode *)v46 isEqual:v15])
  {

    goto LABEL_15;
  }

  v28 = +[FSNode userDataVolumeNode];
  v29 = [(FSNode *)v46 isEqual:v28];

  if (v29)
  {
LABEL_17:
    v82 = *MEMORY[0x1E696A278];
    v83 = @"Mount point was root/nil";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -46, v16, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1237);

    v18 = _LSDefaultLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) absoluteString];
      objc_claimAutoreleasedReturnValue();
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_3();
    }

    goto LABEL_23;
  }

  if (v66)
  {
    [(_LSDatabase *)*v47 store];
    [(_LSDatabase *)*v47 schema];
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_249;
    v60 = &unk_1E6A1C470;
    v63 = v66;
    v61 = &v71;
    v62 = v47;
    _CSStoreEnumerateUnits();
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v72[5];
    v30 = [obj countByEnumeratingWithState:&v53 objects:v81 count:16];
    if (v30)
    {
      v31 = *v54;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v53 + 1) + 8 * i);
          v34 = +[_LSInstallProgressService sharedInstance];
          v35 = [v33 appState];
          v36 = [v35 isPlaceholder];
          v80 = v33;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
          if (v36)
          {
            v38 = 9;
          }

          else
          {
            v38 = 8;
          }

          [v34 sendNotification:v38 forAppProxies:v37 Plugins:0 completion:0];
        }

        v30 = [obj countByEnumeratingWithState:&v53 objects:v81 count:16];
      }

      while (v30);
    }

    v39 = _LSContainerRemove(v47, v66);
    if (!v43)
    {
      v5 = 0;
      p_super = &v46->super;
LABEL_26:

      goto LABEL_27;
    }

    v40 = _LSDefaultLog(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [*(v48 + 32) absoluteString];
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_2(v41, v43, buf, v40);
    }

    v5 = v43;
LABEL_24:
    p_super = _LSDefaultLog(v21);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      [*(v48 + 32) absoluteString];
      objc_claimAutoreleasedReturnValue();
      __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_4();
    }

    goto LABEL_26;
  }

  v77 = *MEMORY[0x1E696A278];
  v78 = @"Container could not be resolved";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, v18, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1260);

LABEL_23:
  if (v5)
  {
    goto LABEL_24;
  }

LABEL_27:
  v7 = v48;
LABEL_28:
  if (v5)
  {
    v23 = 0;
  }

  else
  {
    v24 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(v7 + 40)];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_254;
    v50[3] = &unk_1E6A1C498;
    v51 = *(v7 + 32);
    v23 = v24;
    v52 = v23;
    v25 = MEMORY[0x1865D71B0](v50);
    _LSArmSaveTimerWithObserver(1, v25);

    v7 = v48;
  }

  _LSDatabaseSentinelDecrement();
  if (!v23)
  {
    _LSDatabaseSentinelFlush();
  }

  (*(*(v7 + 56) + 16))();

  if (v67 && v69 == 1)
  {
    _LSContextDestroy(v67);
  }

  v26 = v68;
  v67 = 0;
  v68 = 0;

  v69 = 0;
  v27 = v70;
  v70 = 0;

  _Block_object_dispose(&v71, 8);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_249(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 4) == *(a1 + 48))
  {
    v4 = [LSApplicationProxy applicationProxyWithBundleUnitID:a2 withContext:*(a1 + 40)];
    [*(*(*(a1 + 32) + 8) + 40) addObject:?];
  }
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_254(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) absoluteString];
    v12 = 138412802;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after unregistering mount point: %@ attempted: %d error: %@", &v12, 0x1Cu);
  }

  v9 = v6;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[_LSDModifyClient unregisterApplicationsAtMountPoint:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1282);

    v10 = v11;
  }

  [*(a1 + 40) saveDidHappen:v10 == 0 error:v10];
}

void __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _LSDatabaseGetInstallingGroup(a1, a2);
  dispatch_group_enter(v3);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke_2;
  v7[3] = &unk_1E6A1C4E8;
  v9 = *(a1 + 40);
  v8 = *(a1 + 32);
  v4 = MEMORY[0x1865D71B0](v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v4, v5, v6);
}

void __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v7 = _LSDatabaseGetInstallingGroup(v5, v6);
  dispatch_group_leave(v7);

  (*(*(a1 + 40) + 16))();
}

void __67___LSDModifyClient_unregisterApplicationAtURL_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [LSByURLBundleUnregistrant alloc];
  v5 = objc_alloc_init(LSRegistrantServerStrategy);
  v6 = [(LSByURLBundleUnregistrant *)v4 initWithStrategy:v5 operationUUID:*(a1 + 32) URL:*(a1 + 40)];

  v8 = _LSInstallLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 48) XPCConnection];
    v10 = [v9 processIdentifier];
    v11 = *(a1 + 40);
    v12[0] = 67109378;
    v12[1] = v10;
    v13 = 2112;
    v14 = v11;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly unregister url: %@", v12, 0x12u);
  }

  [(LSByURLBundleUnregistrant *)v6 runWithCompletion:v3];
}

void __62___LSDModifyClient_unregisterPluginAtURL_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [LSByURLPluginUnregistrant alloc];
  v5 = objc_alloc_init(LSRegistrantServerStrategy);
  v6 = [(LSByURLPluginUnregistrant *)v4 initWithStrategy:v5 operationUUID:*(a1 + 32) URL:*(a1 + 40)];

  v8 = _LSInstallLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 48) XPCConnection];
    v10 = [v9 processIdentifier];
    v11 = *(a1 + 40);
    v12[0] = 67109378;
    v12[1] = v10;
    v13 = 2112;
    v14 = v11;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly unregister url: %@", v12, 0x12u);
  }

  [(LSByURLPluginUnregistrant *)v6 runWithCompletion:v3];
}

void __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSGetCollapsedMIDictionaryForAppAndContentsDictionaries(*(a1 + 32));
  v5 = [v4 count];
  if (v5 == 1)
  {
    v6 = [v4 allValues];
    v7 = [v6 firstObject];

    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    v9 = _LSInstallLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) XPCConnection];
      *buf = 67109378;
      v19 = [v10 processIdentifier];
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly register %@", buf, 0x12u);
    }

    v11 = [LSBuiltinApplicationRegistrant alloc];
    v12 = objc_alloc_init(LSRegistrantServerStrategy);
    v13 = [(LSBuiltinApplicationRegistrant *)v11 initWithStrategy:v12 operationUUID:*(a1 + 48) itemInfoDict:v7 personas:*(a1 + 56)];

    [(LSBuiltinApplicationRegistrant *)v13 runWithCompletion:v3];
  }

  else
  {
    v14 = _LSInstallLog(v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke_cold_1();
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu items were provided to be registered exactly 1 must be specified", objc_msgSend(v4, "count")];;
    v15 = *(a1 + 64);
    v16 = *MEMORY[0x1E696A278];
    v17 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v8, "[_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1389);
    (*(v15 + 16))(v15, 0, v13);
  }
}

void __61___LSDModifyClient_registerBuiltinAppex_operationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSInstallLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) XPCConnection];
    v6 = [v5 processIdentifier];
    v7 = [*(a1 + 40) objectForKey:@"Path"];
    v11[0] = 67109378;
    v11[1] = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "pid %d asks to directly register plugin %@", v11, 0x12u);
  }

  v8 = [LSBuiltinPluginRegistrant alloc];
  v9 = objc_alloc_init(LSRegistrantServerStrategy);
  v10 = [(LSBuiltinPluginRegistrant *)v8 initWithStrategy:v9 operationUUID:*(a1 + 48) itemInfoDict:*(a1 + 40)];

  [(LSBuiltinPluginRegistrant *)v10 runWithCompletion:v3];
}

void __66___LSDModifyClient_refreshExtensionPointsWithOperationUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _LSInstallLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) XPCConnection];
    v9[0] = 67109120;
    v9[1] = [v5 processIdentifier];
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "pid %d asks to refresh unbundled extension points", v9, 8u);
  }

  v6 = [LSSystemExtensionPointRefreshRegistrant alloc];
  v7 = objc_alloc_init(LSRegistrantServerStrategy);
  v8 = [(LSSystemExtensionPointRefreshRegistrant *)v6 initWithStrategy:v7 operationUUID:*(a1 + 40)];

  [(LSSystemExtensionPointRefreshRegistrant *)v8 runWithCompletion:v3];
}

void __57___LSDModifyClient_refreshContentInFrameworkAtURL_reply___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) XPCConnection];
  v3 = [v2 _xpcConnection];
  v4 = _LSCheckEntitlementForXPCConnection(v3, @"com.apple.lsapplicationworkspace.rebuildappdatabases");

  if (v4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57___LSDModifyClient_refreshContentInFrameworkAtURL_reply___block_invoke_2;
    v14[3] = &unk_1E6A19090;
    v6 = *(a1 + 40);
    v15 = *(a1 + 48);
    _LSServer_RefreshContentInFrameworkAtURL(v6, v14);
    v7 = v15;
  }

  else
  {
    v8 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) XPCConnection];
      *buf = 138412546;
      v19 = v12;
      v20 = 1024;
      v21 = [v13 processIdentifier];
      _os_log_error_impl(&dword_18162D000, v8, OS_LOG_TYPE_ERROR, "Unentitled request to refresh plugins in framework %@ by pid %d", buf, 0x12u);
    }

    v9 = *(a1 + 48);
    if (@"com.apple.lsapplicationworkspace.rebuildappdatabases")
    {
      v10 = @"com.apple.lsapplicationworkspace.rebuildappdatabases";
    }

    else
    {
      v10 = @"unknown entitlement";
    }

    v16 = *MEMORY[0x1E696A278];
    v17 = v10;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v7, "[_LSDModifyClient refreshContentInFrameworkAtURL:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1448);
    (*(v9 + 16))(v9, v11);
  }
}

void __64___LSDModifyClient_garbageCollectDatabaseWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v15, v7, 0);

  if (v8)
  {
    [(_LSDatabase *)*v8 store];
    if (_CSStoreGarbageCollect())
    {
      _LSArmSaveTimer(1);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = +[_LSDServiceDomain defaultServiceDomain];
    v11 = LaunchServices::Database::Context::_get(&v15, v10, 0);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v18;
    }

    (*(v9 + 16))(v9, 0, v12);
  }

  if (v15 && v17 == 1)
  {
    _LSContextDestroy(v15);
  }

  v13 = v16;
  v15 = 0;
  v16 = 0;

  v17 = 0;
  v14 = v18;
  v18 = 0;
}

void __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v17, v7, 0);

  if (v8)
  {
    v10 = [*(a1 + 32) bundleIdentifierWithContext:v8 error:0];
  }

  else
  {
    v11 = _LSDefaultLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = +[_LSDServiceDomain defaultServiceDomain];
      v15 = LaunchServices::Database::Context::_get(&v17, v14, 0);

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v20;
      }

      *buf = 138543362;
      v22 = v16;
      _os_log_error_impl(&dword_18162D000, v11, OS_LOG_TYPE_ERROR, "Unexpected error talking to LS database while setting preference value: %{public}@", buf, 0xCu);
    }
  }

  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v12 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v13 = v20;
  v20 = 0;
}

void __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke_289(LaunchServices::PrefsStorage *a1)
{
  Shared = LaunchServices::PrefsStorage::GetShared(a1);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(*(a1 + 8) + 8);
  obj = *(v6 + 40);
  v7 = LaunchServices::PrefsStorage::setValueForNode(Shared, v3, v4, v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 7) + 8) + 24) = v7;
}

void __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v7 = +[_LSDServiceDomain defaultServiceDomain];
  v8 = LaunchServices::Database::Context::_get(&v30, v7, 0);

  if (!v8)
  {
    v16 = +[_LSDServiceDomain defaultServiceDomain];
    v17 = LaunchServices::Database::Context::_get(&v30, v16, 0);

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v18 = v33;
      v19 = v18;
    }

    v24 = _LSDefaultLog(v18);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke_cold_2();
    }

    v25 = *(*(a1 + 64) + 8);
    v23 = *(v25 + 40);
    *(v25 + 40) = v19;
    goto LABEL_13;
  }

  v29 = 0;
  v9 = _LSBundleFindWithNode(v8, *(a1 + 32), &v29, 0);
  if (!v29)
  {
    v20 = _LSDefaultLog(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke_cold_1();
    }

    v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -600, 0, "[_LSDModifyClient setPreferenceValueForCallingApplication:forKey:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1585);
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
LABEL_13:

    goto LABEL_14;
  }

  Shared = LaunchServices::PrefsStorage::GetShared(v9);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(*(a1 + 64) + 8);
  obj = *(v14 + 40);
  v15 = LaunchServices::PrefsStorage::setValueForNode(Shared, v11, v12, v13, &obj);
  objc_storeStrong((v14 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v15;
LABEL_14:
  if (v30 && v32 == 1)
  {
    _LSContextDestroy(v30);
  }

  v26 = v31;
  v30 = 0;
  v31 = 0;

  v32 = 0;
  v27 = v33;
  v33 = 0;
}

void __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = _LSGetCollapsedMIDictionaryForAppAndContentsDictionaries(*(a1 + 32));
  v3 = [v2 count];
  if (v3 == 1)
  {
    v5 = _LSDatabaseGetInstallingGroup(1, v4);
    dispatch_group_enter(v5);

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke_2;
    v22[3] = &unk_1E6A1C600;
    v23 = *(a1 + 64);
    v6 = MEMORY[0x1865D71B0](v22);
    v7 = [v2 allValues];
    v8 = [v7 firstObject];

    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    v10 = _LSInstallLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = [*(a1 + 48) XPCConnection];
      v13 = [v12 processIdentifier];
      *buf = 138412802;
      v27 = v9;
      v28 = 2112;
      v29 = v11;
      v30 = 1024;
      v31 = v13;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Post installation registration: request to register %@, operation %@, from pid %d", buf, 0x1Cu);
    }

    v14 = [LSMIResultRegistrant alloc];
    v15 = objc_alloc_init(LSRegistrantServerStrategy);
    v16 = [(LSMIResultRegistrant *)v14 initWithContext:v15 operationUUID:*(a1 + 40) itemInfoDict:v8 personas:*(a1 + 56)];

    [(LSMIResultRegistrant *)v16 runWithCompletion:v6];
    v17 = v23;
  }

  else
  {
    v18 = _LSInstallLog(v3);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke_cold_1();
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zu items were provided to be registered exactly 1 must be specified", objc_msgSend(v2, "count")];;
    v19 = *(a1 + 64);
    v24 = *MEMORY[0x1E696A278];
    v25 = v17;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "[_LSDModifyClient performPostInstallationRegistration:personaUniqueStrings:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1649);
    (*(v19 + 16))(v19, 0, 0, v21);
  }
}

void __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v10 = _LSDatabaseGetInstallingGroup(v8, v9);
  dispatch_group_leave(v10);

  (*(*(a1 + 32) + 16))();
}

void __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = _LSDatabaseGetInstallingGroup(a1, a2);
  dispatch_group_enter(v3);

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke_2;
  v15[3] = &unk_1E6A1C650;
  v16 = *(a1 + 64);
  v4 = MEMORY[0x1865D71B0](v15);
  v5 = [LSMIResultUnregistrant alloc];
  v6 = objc_alloc_init(LSRegistrantServerStrategy);
  v7 = [(LSMIResultUnregistrant *)v5 initWithContext:v6 operationUUID:*(a1 + 32) bundleIdentifier:*(a1 + 40) precondition:*(a1 + 48) type:*(a1 + 72)];

  v9 = _LSInstallLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 72);
    v13 = [*(a1 + 56) XPCConnection];
    v14 = [v13 processIdentifier];
    *buf = 138413058;
    v18 = v11;
    v19 = 2112;
    v20 = v10;
    v21 = 2048;
    v22 = v12;
    v23 = 1024;
    v24 = v14;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Post uninstallation unregistration: request to unregister %@, operation %@, type %lx from pid %d", buf, 0x26u);
  }

  [(LSMIResultUnregistrant *)v7 runWithCompletion:v4];
}

void __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v7 = _LSDatabaseGetInstallingGroup(v5, v6);
  dispatch_group_leave(v7);

  (*(*(a1 + 32) + 16))();
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v129 = *MEMORY[0x1E69E9840];
  v82 = a2;
  v83 = a3;
  v4 = _LSInstallLog(v83);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) XPCConnection];
    *buf = 138413058;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    v124 = v7;
    LOWORD(v125) = 2048;
    *(&v125 + 2) = [v8 processIdentifier];
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "operation %@ attempting to set personas %@ for bundleIDs %@ from pid %ld", buf, 0x2Au);
  }

  v110 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v9 = +[_LSDServiceDomain defaultServiceDomain];
  v93 = LaunchServices::Database::Context::_get(&v107, v9, 0);

  if (!v93)
  {
    v23 = +[_LSDServiceDomain defaultServiceDomain];
    v24 = LaunchServices::Database::Context::_get(&v107, v23, 0);

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v110;
    }

    v47 = *(*(a1 + 64) + 8);
    v48 = *(v47 + 40);
    *(v47 + 40) = v25;

    v50 = _LSInstallLog(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_2();
    }

    goto LABEL_75;
  }

  v10 = [*(a1 + 48) objectEnumerator];
  v85 = a1 + 64;
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  v13 = v10;
  v104 = 0;
  v105 = 0;
  v103 = 0;
  v106 = 1;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v114 objects:buf count:16];
  location = (v11 + 40);
  v89 = v12;
  if (!v14)
  {
LABEL_16:
    v22 = obj;
    goto LABEL_23;
  }

  v15 = *v115;
LABEL_6:
  v16 = 0;
  while (1)
  {
    if (*v115 != v15)
    {
      objc_enumerationMutation(obj);
    }

    v17 = *(*(&v114 + 1) + 8 * v16);
    LODWORD(v100) = 0;
    *__p = kLSVersionNumberNull;
    v121 = unk_1817E90C0;
    v113 = 0;
    v18 = _LSBundleFindWithInfoAndNo_IOFilter(v93, 0, v17, 0, __p, 2, 128, 0, 0, &v100, 0, &v113);
    v19 = v113;
    if (v18)
    {
      __p[0] = v17;
      LODWORD(__p[1]) = v100;
      std::vector<std::tuple<NSString * {__strong},unsigned int>>::push_back[abi:nn200100](&v103, __p);
    }

    v112 = 0;
    *__p = kLSVersionNumberNull;
    v121 = unk_1817E90C0;
    v111 = v19;
    v20 = _LSBundleFindWithInfoAndNo_IOFilter(v93, 0, v17, 0, __p, 2, 1152, 0, 0, &v112, 0, &v111);
    v21 = v111;

    if (!v20)
    {
      break;
    }

    __p[0] = v17;
    LODWORD(__p[1]) = v112;
    std::vector<std::tuple<NSString * {__strong},unsigned int>>::push_back[abi:nn200100](&v103, __p);

LABEL_14:
    if (v14 == ++v16)
    {
      v14 = [obj countByEnumeratingWithState:&v114 objects:buf count:16];
      if (v14)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  if (v18)
  {
    goto LABEL_14;
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No known bundle for %@", v17];
  v118 = *MEMORY[0x1E696A278];
  v119 = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, v27, "getAffectedBundleInfoForIdentifiers", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1740);

  if (!v22)
  {
    goto LABEL_24;
  }

  if (v106 == 1)
  {
    __p[0] = &v103;
    std::vector<std::tuple<NSString * {__strong},unsigned int>>::__destroy_vector::operator()[abi:nn200100](__p);
    v106 = 0;
  }

  v28 = v22;
  v89 = v22;
LABEL_23:

LABEL_24:
  objc_storeStrong(location, v89);

  if (v106 == 1)
  {
    v84 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v100 = 0;
    __dst = 0;
    v102 = 0;
    v30 = v103;
    if (v103 == v104)
    {
      v86 = 1;
    }

    else
    {
      v31 = v104;
      v86 = 1;
      do
      {
        v32 = *v30;
        v33 = *(v30 + 8);
        v34 = objc_autoreleasePoolPush();
        v35 = _LSBundleGet(v93->db, v33);
        if (v35)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x4812000000;
          v124 = __Block_byref_object_copy__388;
          *&v125 = __Block_byref_object_dispose__389;
          *(&v125 + 1) = &unk_1818533FF;
          v127 = 0;
          v128 = 0;
          v126 = 0;
          [(_LSDatabase *)v93->db store];
          *&v114 = MEMORY[0x1E69E9820];
          *(&v114 + 1) = 3221225472;
          *&v115 = ___ZL23pluginsUnitIDsForBundleP9LSContextPK12LSBundleData_block_invoke;
          *(&v115 + 1) = &unk_1E6A1C740;
          *&v116 = buf;
          _CSArrayEnumerateAllValues();
          std::vector<LSBundleClass>::vector[abi:nn200100](__p, (*&buf[8] + 48));
          _Block_object_dispose(buf, 8);
          if (v126)
          {
            v127 = v126;
            operator delete(v126);
          }

          std::vector<unsigned int>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v100, __dst, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
          v36 = [LSApplicationExtensionRecord appexRecordsForUnitIDsWithContext:v93 unitIDs:__p];
          v37 = +[_LSInstallProgressService sharedInstance];
          [v37 detachAndSendNotification:@"com.apple.LaunchServices.pluginswillberemoved" forApplicationExtensionRecords:v36];

          v38 = [[LSBundleRecordUpdater alloc] initWithDatabase:v93->db bundleUnit:v33 bundleData:v35];
          v39 = *(a1 + 40);
          v40 = *(*(a1 + 64) + 8);
          v99 = *(v40 + 40);
          LODWORD(v37) = [(LSBundleRecordUpdater *)v38 parsePersonas:v39 error:&v99];
          objc_storeStrong((v40 + 40), v99);
          if (v37 && (v42 = *(*v85 + 8), v98 = *(v42 + 40), v43 = [(LSBundleRecordUpdater *)v38 updateBundleRecord:&v98], objc_storeStrong((v42 + 40), v98), v43))
          {
            [v84 addObject:v32];
            v44 = +[_LSInstallProgressService sharedInstance];
            [v44 detachAndSendNotification:@"com.apple.LaunchServices.pluginsunregistered" forApplicationExtensionRecords:v36];
          }

          else
          {
            v44 = _LSInstallLog(v41);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v46 = *(*(*v85 + 8) + 40);
              *buf = 138412802;
              *&buf[4] = v32;
              *&buf[12] = 2048;
              *&buf[14] = v33;
              *&buf[22] = 2112;
              v124 = v46;
              _os_log_error_impl(&dword_18162D000, v44, OS_LOG_TYPE_ERROR, "could not update personas for %@ (bundle unit %llx): %@", buf, 0x20u);
            }

            v86 = 0;
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        else
        {
          v45 = _LSRegistrationLog(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            *&buf[4] = v33;
            _os_log_fault_impl(&dword_18162D000, v45, OS_LOG_TYPE_FAULT, "Bundle unit %llx went missing after we just enumerated it!", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v34);

        v30 += 16;
      }

      while (v30 != v31);
    }

    v51 = [v84 allObjects];
    obja = [v51 mutableCopy];

    v52 = obja;
    while ([v52 count])
    {
      v90 = objc_autoreleasePoolPush();
      v53 = [obja count];
      if (v53 >= 0xA)
      {
        v54 = 10;
      }

      else
      {
        v54 = v53;
      }

      v55 = [obja subarrayWithRange:{0, v54}];
      __p[0] = MEMORY[0x1E69E9820];
      __p[1] = 3221225472;
      *&v121 = ___ZL45sendPersonaChangedNotificationsForIdentifiersP9LSContextP5NSSetIP8NSStringE_block_invoke;
      *(&v121 + 1) = &__block_descriptor_40_e38___LSApplicationProxy_16__0__NSString_8l;
      v122 = v93;
      v56 = v55;
      v57 = __p;
      v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v56, "count")}];
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v59 = v56;
      v60 = [v59 countByEnumeratingWithState:&v114 objects:buf count:16];
      if (v60)
      {
        v61 = *v115;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v115 != v61)
            {
              objc_enumerationMutation(v59);
            }

            v63 = (v121)(v57, *(*(&v114 + 1) + 8 * i));
            [v58 addObject:v63];
          }

          v60 = [v59 countByEnumeratingWithState:&v114 objects:buf count:16];
        }

        while (v60);
      }

      v64 = +[_LSInstallProgressService sharedInstance];
      [v64 sendNotification:14 forAppProxies:v58 Plugins:1 completion:0];

      [obja removeObjectsInRange:{0, v54}];
      v52 = obja;
      objc_autoreleasePoolPop(v90);
    }

    v65 = objc_autoreleasePoolPush();
    v66 = [LSApplicationExtensionRecord appexRecordsForUnitIDsWithContext:v93 unitIDs:&v100];
    v67 = +[_LSInstallProgressService sharedInstance];
    [v67 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v66];

    objc_autoreleasePoolPop(v65);
    if (v86)
    {
      v69 = _LSInstallLog(v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v70;
        _os_log_impl(&dword_18162D000, v69, OS_LOG_TYPE_DEFAULT, "operation %@: persona-update succeeded", buf, 0xCu);
      }

      v71 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(a1 + 32)];
      v72 = *(*(a1 + 72) + 8);
      v73 = *(v72 + 40);
      *(v72 + 40) = v71;

      v94[0] = MEMORY[0x1E69E9820];
      v94[1] = 3221225472;
      v94[2] = __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_308;
      v94[3] = &unk_1E6A1C6A0;
      v95 = *(a1 + 32);
      v74 = *(a1 + 48);
      v75 = *(a1 + 72);
      v96 = v74;
      v97 = v75;
      _LSArmSaveTimerWithObserver(1, v94);
    }

    else
    {
      v76 = [v84 count];
      if (v76)
      {
        v77 = _LSInstallLog(v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          v78 = *(a1 + 32);
          v79 = [v84 count];
          *buf = 138412546;
          *&buf[4] = v78;
          *&buf[12] = 2048;
          *&buf[14] = v79;
          _os_log_impl(&dword_18162D000, v77, OS_LOG_TYPE_DEFAULT, "operation %@: Not all persona updates were successful, but %zu were, so arming save timer", buf, 0x16u);
        }

        _LSArmSaveTimer(1);
      }
    }

    if (v100)
    {
      __dst = v100;
      operator delete(v100);
    }
  }

  else
  {
    v84 = _LSInstallLog(v29);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_1();
    }
  }

  if (v106 == 1)
  {
    *buf = &v103;
    std::vector<std::tuple<NSString * {__strong},unsigned int>>::__destroy_vector::operator()[abi:nn200100](buf);
  }

LABEL_75:
  if (v107 && v109 == 1)
  {
    _LSContextDestroy(v107);
  }

  v80 = v108;
  v107 = 0;
  v108 = 0;

  v109 = 0;
  v81 = v110;
  v110 = 0;
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_308(void *a1, int a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v13 = 138413058;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "operation %@: Save after update personas for bundles %@ attempted: %d save error: %@", &v13, 0x26u);
  }

  v10 = v6;
  v11 = v10;
  if ((a2 & 1) == 0)
  {
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[_LSDModifyClient performUpdateOfPersonasOfBundleIDs:toPersonaUniqueStrings:operationUUID:reply:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1856);

    v11 = v12;
  }

  [*(*(a1[6] + 8) + 40) saveDidHappen:v11 == 0 error:v11];
}

uint64_t __54___LSDModifyClient_forceSaveForTestingWithCompletion___block_invoke(uint64_t a1)
{
  _LSSaveImmediately(3);
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Arming LS save timer completed, attempted=%{BOOL}d error=%{public}@", v8, 0x12u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6 == 0, v6);
  dispatch_semaphore_signal(*(a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_311);
}

void __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke_309(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67240448;
    v12[1] = getpid();
    v13 = 1026;
    v14 = geteuid();
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_INFO, "Stopping lsd %{public}d uid %{public}d on request; letting databases complete in-flight operations.", v12, 0xEu);
  }

  v2 = MEMORY[0x1865D7C40]();
  v4 = _LSDatabaseGetSeedingGroup(v2, v3);
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  v7 = _LSDatabaseGetInstallingGroup(v5, v6);
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  v10 = _LSDatabaseGetMobileInstallSyncupGroup(v8, v9);
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

  v11 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v11 syncWrite:?];
}

void __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke_312(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  _LSSaveImmediately(1);
  v6 = MEMORY[0x1865D7C50]();
  v7 = _LSDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "LaunchServices: Exiting after request to stop lsd and flushing databases.", v8, 2u);
  }

  exit(0);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Failed to deregister applications at mount point: %@ error: %@", buf, 0x16u);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end
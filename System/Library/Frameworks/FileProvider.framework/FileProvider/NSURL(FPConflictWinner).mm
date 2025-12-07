@interface NSURL(FPConflictWinner)
- (id)fp_addTestConflictLoserFromItemAtURL:()FPConflictWinner lastEditorDeviceName:lastEditorUserName:error:;
- (id)fp_lastEditorDeviceName;
- (id)fp_lastEditorNameComponents;
@end

@implementation NSURL(FPConflictWinner)

- (id)fp_lastEditorDeviceName
{
  FPPrecheckTCCReadAccess();
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  v2 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__NSURL_FPConflictWinner__fp_lastEditorDeviceName__block_invoke;
  v5[3] = &unk_1E793D688;
  v5[4] = &v6;
  [v2 itemForURL:self options:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)fp_lastEditorNameComponents
{
  FPPrecheckTCCReadAccess();
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20;
  v10 = __Block_byref_object_dispose__20;
  v11 = 0;
  v2 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__NSURL_FPConflictWinner__fp_lastEditorNameComponents__block_invoke;
  v5[3] = &unk_1E793D688;
  v5[4] = &v6;
  [v2 itemForURL:self options:0 completionHandler:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)fp_addTestConflictLoserFromItemAtURL:()FPConflictWinner lastEditorDeviceName:lastEditorUserName:error:
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v33 = a4;
  v34 = a5;
  manager = [MEMORY[0x1E69A07C0] manager];
  v12 = [manager permanentStorageForItemAtURL:self allocateIfNone:1 error:a6];

  v13 = objc_alloc(MEMORY[0x1E696ADF0]);
  v14 = [NSFileProviderItemVersion alloc];
  data = [MEMORY[0x1E695DEF0] data];
  data2 = [MEMORY[0x1E695DEF0] data];
  v36 = [(NSFileProviderItemVersion *)v14 initWithContentVersion:data metadataVersion:data2];

  v17 = [MEMORY[0x1E695DF00] now];
  v18 = [FPConflictLoser alloc];
  lastPathComponent = [v10 lastPathComponent];
  v32 = [(FPFileVersion *)v18 initWithVersion:v36 displayName:lastPathComponent originalURL:v10 physicalURL:0 identifier:0 modificationDate:v17 lastEditorNameComponents:v13 size:0];

  v20 = MEMORY[0x1E695E118];
  v56 = v17;
  v57[0] = @"isFPFS";
  v57[1] = @"NSDocumentInfo";
  v58[0] = MEMORY[0x1E695E118];
  v55 = @"modificationDate";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v58[1] = v21;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];

  v53[0] = *MEMORY[0x1E69A0768];
  lastPathComponent2 = [v10 lastPathComponent];
  v23 = *MEMORY[0x1E69A0760];
  v54[0] = lastPathComponent2;
  v54[1] = v20;
  v24 = *MEMORY[0x1E69A0790];
  v53[1] = v23;
  v53[2] = v24;
  v53[3] = *MEMORY[0x1E69A0770];
  v25 = *MEMORY[0x1E69A07A8];
  v54[2] = v35;
  v54[3] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:4];

  v27 = dispatch_group_create();
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__20;
  v51 = __Block_byref_object_dispose__20;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__20;
  v45 = __Block_byref_object_dispose__20;
  v46 = 0;
  v28 = [v12 prepareAdditionCreationWithItemAtURL:v10 byMoving:1 creationInfo:v26 error:a6];
  dispatch_group_enter(v27);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __110__NSURL_FPConflictWinner__fp_addTestConflictLoserFromItemAtURL_lastEditorDeviceName_lastEditorUserName_error___block_invoke;
  v37[3] = &unk_1E793D6B0;
  v39 = &v41;
  v40 = &v47;
  v29 = v27;
  v38 = v29;
  [v12 createAdditionStagedAtURL:v28 creationInfo:v26 completionHandler:v37];
  dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
  if (a6)
  {
    *a6 = v42[5];
  }

  v30 = v48[5];

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v30;
}

@end
@interface WFTrimVideoAction
- (void)runWithRemoteUserInterface:(id)interface input:(id)input;
@end

@implementation WFTrimVideoAction

- (void)runWithRemoteUserInterface:(id)interface input:(id)input
{
  interfaceCopy = interface;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke;
  v8[3] = &unk_278C20998;
  v8[4] = self;
  v9 = interfaceCopy;
  v7 = interfaceCopy;
  [input getFileRepresentation:v8 forType:0];
}

void __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v7 = getUIVideoEditorControllerClass_softClass;
    v26 = getUIVideoEditorControllerClass_softClass;
    if (!getUIVideoEditorControllerClass_softClass)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __getUIVideoEditorControllerClass_block_invoke;
      v22[3] = &unk_278C222B8;
      v22[4] = &v23;
      __getUIVideoEditorControllerClass_block_invoke(v22);
      v7 = v24[3];
    }

    v8 = v7;
    _Block_object_dispose(&v23, 8);
    v9 = [v5 fileURL];
    v10 = [v9 path];
    v11 = [v7 canEditVideoAtPath:v10];

    if (v11)
    {
      v12 = *(a1 + 40);
      v13 = objc_alloc(MEMORY[0x277CCAC90]);
      v14 = [v5 fileURL];
      v15 = [v13 initWithURL:v14];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke_2;
      v20[3] = &unk_278C1A4D8;
      v20[4] = *(a1 + 32);
      v21 = v5;
      [v12 showWithVideo:v15 completionHandler:v20];
    }

    else
    {
      v16 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v17 = WFLocalizedString(@"The input was not a video that can be edited.");
      v28[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v19 = [v16 errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:v18];

      [*(a1 + 32) finishRunningWithError:v19];
    }
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:v6];
  }
}

void __54__WFTrimVideoAction_runWithRemoteUserInterface_input___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (a2)
  {
    v5 = MEMORY[0x277CFC3C8];
    v6 = [a2 url];
    v7 = [v5 fileWithURL:v6 options:13];

    v8 = [*(a1 + 32) output];
    [v8 addFile:v7];
  }

  [*(a1 + 32) finishRunningWithError:v9];
}

@end
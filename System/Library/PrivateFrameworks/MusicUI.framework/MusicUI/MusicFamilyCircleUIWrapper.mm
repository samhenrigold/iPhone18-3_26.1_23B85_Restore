@interface MusicFamilyCircleUIWrapper
+ (void)presentFamilyCircleSheet:(id)sheet withParameters:(id)parameters completionHandler:(id)handler;
@end

@implementation MusicFamilyCircleUIWrapper

+ (void)presentFamilyCircleSheet:(id)sheet withParameters:(id)parameters completionHandler:(id)handler
{
  sheetCopy = sheet;
  parametersCopy = parameters;
  handlerCopy = handler;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v10 = getFACircleStateControllerClass_softClass;
  v42 = getFACircleStateControllerClass_softClass;
  if (!getFACircleStateControllerClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getFACircleStateControllerClass_block_invoke;
    v37 = &unk_278225A08;
    v38 = &v39;
    __getFACircleStateControllerClass_block_invoke(&v34);
    v10 = v40[3];
  }

  v11 = v10;
  _Block_object_dispose(&v39, 8);
  v33 = [[v10 alloc] initWithPresenter:sheetCopy];
  [v29[5] setPresentationType:2];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v12 = getFACircleContextClass_softClass;
  v42 = getFACircleContextClass_softClass;
  if (!getFACircleContextClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getFACircleContextClass_block_invoke;
    v37 = &unk_278225A08;
    v38 = &v39;
    __getFACircleContextClass_block_invoke(&v34);
    v12 = v40[3];
  }

  v13 = v12;
  _Block_object_dispose(&v39, 8);
  v14 = [v12 alloc];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v15 = getFACircleEventTypeInitiateSymbolLoc_ptr;
  v42 = getFACircleEventTypeInitiateSymbolLoc_ptr;
  if (!getFACircleEventTypeInitiateSymbolLoc_ptr)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __getFACircleEventTypeInitiateSymbolLoc_block_invoke;
    v37 = &unk_278225A08;
    v38 = &v39;
    v16 = FamilyCircleUILibrary();
    v17 = dlsym(v16, "FACircleEventTypeInitiate");
    *(v38[1] + 24) = v17;
    getFACircleEventTypeInitiateSymbolLoc_ptr = *(v38[1] + 24);
    v15 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (v15)
  {
    v18 = *v15;
    v19 = [v14 initWithEventType:v18];

    [v19 setClientName:@"AppleMusic"];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [v19 setClientBundleID:bundleIdentifier];

    [v19 setAdditionalParameters:parametersCopy];
    [v19 setActivityIndicatorStyle:0];
    v22 = v29[5];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke;
    v25[3] = &unk_2782259E0;
    v23 = handlerCopy;
    v26 = v23;
    v27 = &v28;
    [v22 performWithContext:v19 completion:v25];

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v24 = dlerror();
    abort_report_np("%s", v24);
    __break(1u);
  }
}

void __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke_2;
  v4[3] = &unk_2782259B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __88__MusicFamilyCircleUIWrapper_presentFamilyCircleSheet_withParameters_completionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

@end
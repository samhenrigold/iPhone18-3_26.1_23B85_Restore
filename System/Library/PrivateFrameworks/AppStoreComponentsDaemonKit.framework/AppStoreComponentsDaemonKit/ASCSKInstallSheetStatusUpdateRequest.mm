@interface ASCSKInstallSheetStatusUpdateRequest
- (ASCSKInstallSheetStatusUpdateRequest)initWithAppBundleId:(id)id isInstallSheetOpen:(BOOL)open completionHandler:(id)handler;
@end

@implementation ASCSKInstallSheetStatusUpdateRequest

- (ASCSKInstallSheetStatusUpdateRequest)initWithAppBundleId:(id)id isInstallSheetOpen:(BOOL)open completionHandler:(id)handler
{
  openCopy = open;
  idCopy = id;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = ASCSKInstallSheetStatusUpdateRequest;
  v10 = [(ASCSKInstallSheetStatusUpdateRequest *)&v16 init];
  if (v10)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v11 = getSKInstallSheetStatusUpdateRequestClass_softClass;
    v21 = getSKInstallSheetStatusUpdateRequestClass_softClass;
    if (!getSKInstallSheetStatusUpdateRequestClass_softClass)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __getSKInstallSheetStatusUpdateRequestClass_block_invoke;
      v17[3] = &unk_2784B1970;
      v17[4] = &v18;
      __getSKInstallSheetStatusUpdateRequestClass_block_invoke(v17);
      v11 = v19[3];
    }

    v12 = v11;
    _Block_object_dispose(&v18, 8);
    v13 = [[v11 alloc] initWithAppBundleId:idCopy isInstallSheetOpen:openCopy completionHandler:handlerCopy];
    installSheetStatusUpdateRequest = v10->_installSheetStatusUpdateRequest;
    v10->_installSheetStatusUpdateRequest = v13;
  }

  return v10;
}

@end
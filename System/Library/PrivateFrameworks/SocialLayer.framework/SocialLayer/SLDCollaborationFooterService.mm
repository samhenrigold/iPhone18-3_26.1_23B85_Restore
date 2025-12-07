@interface SLDCollaborationFooterService
+ (id)sharedService;
+ (void)slotForModel:(id)model maxWidth:(double)width completion:(id)completion;
+ (void)slotForModelNeedingNameAndEmail:(id)email maxWidth:(double)width completion:(id)completion;
- (UISSlotMachine)footerViewSlotMachine;
- (id)slotMachineForViewIdentifier:(id)identifier;
- (void)footerViewForModel:(id)model style:(id)style maxWidth:(double)width layerContextID:(unint64_t)d reply:(id)reply;
@end

@implementation SLDCollaborationFooterService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[SLDCollaborationFooterService sharedService];
  }

  v3 = sharedService_sService;

  return v3;
}

uint64_t __46__SLDCollaborationFooterService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationFooterService);
  v1 = sharedService_sService;
  sharedService_sService = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (UISSlotMachine)footerViewSlotMachine
{
  footerViewSlotMachine = self->_footerViewSlotMachine;
  if (!footerViewSlotMachine)
  {
    v4 = objc_alloc(MEMORY[0x277D777D0]);
    v5 = objc_alloc_init(SLDCollaborationFooterSlotDrawer);
    v6 = [v4 initWithSlotDrawer:v5 options:0];
    v7 = self->_footerViewSlotMachine;
    self->_footerViewSlotMachine = v6;

    footerViewSlotMachine = self->_footerViewSlotMachine;
  }

  return footerViewSlotMachine;
}

- (id)slotMachineForViewIdentifier:(id)identifier
{
  v4 = [identifier tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    footerViewSlotMachine = [(SLDCollaborationFooterService *)self footerViewSlotMachine];
  }

  else
  {
    footerViewSlotMachine = 0;
  }

  return footerViewSlotMachine;
}

- (void)footerViewForModel:(id)model style:(id)style maxWidth:(double)width layerContextID:(unint64_t)d reply:(id)reply
{
  modelCopy = model;
  styleCopy = style;
  replyCopy = reply;
  v15 = replyCopy;
  if (width <= 0.0)
  {
    v19 = SLDaemonLogHandle(replyCopy);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationFooterService footerViewForModel:v19 style:? maxWidth:? layerContextID:? reply:?];
    }

    v15[2](v15, 0);
  }

  else
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v17 = objc_opt_class();
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__SLDCollaborationFooterService_footerViewForModel_style_maxWidth_layerContextID_reply___block_invoke;
    v20[3] = &unk_278925ED0;
    v21 = styleCopy;
    selfCopy = self;
    v23 = currentConnection;
    dCopy = d;
    v24 = v15;
    v18 = currentConnection;
    [v17 slotForModel:modelCopy maxWidth:v20 completion:width];
  }
}

void __88__SLDCollaborationFooterService_footerViewForModel_style_maxWidth_layerContextID_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v4 resolvedStyleForStyle:v3];
  v5 = [*(a1 + 40) _viewIDForStyle:v7 tag:v4];

  [*(a1 + 40) _connection:*(a1 + 48) onlyNeedsViewWithIdentifier:v5];
  v6 = [*(a1 + 40) _remoteContentForViewIdentifier:v5 layerContextID:*(a1 + 64) connection:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) _connectionTouchedView:v5];
}

+ (void)slotForModel:(id)model maxWidth:(double)width completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  type = [modelCopy type];
  if ((type - 1) < 2)
  {
    [self slotForModelNeedingNameAndEmail:modelCopy maxWidth:completionCopy completion:width];
  }

  else
  {
    if (type == 3)
    {
      optionsSummary = [modelCopy optionsSummary];
      metadata = [modelCopy metadata];
      initiatorNameComponents = [metadata initiatorNameComponents];

      if (initiatorNameComponents)
      {
        v18 = objc_opt_class();
        metadata2 = [modelCopy metadata];
        initiatorNameComponents2 = [metadata2 initiatorNameComponents];
        v13 = [v18 nameFromNameComponents:initiatorNameComponents2];
      }

      else
      {
        v21 = SLDaemonLogHandle(v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          metadata3 = [modelCopy metadata];
          *buf = 138412290;
          v30 = metadata3;
          _os_log_impl(&dword_231772000, v21, OS_LOG_TYPE_DEFAULT, "Metadata has no initiator name components: %@", buf, 0xCu);
        }

        v13 = 0;
      }

      metadata4 = [modelCopy metadata];
      initiatorHandle = [metadata4 initiatorHandle];

      subtitle = 0;
      if (v13 && initiatorHandle)
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = SLFrameworkBundle(v24);
        v27 = [v26 localizedStringForKey:@"SHARE_AS" value:&stru_28468DAB8 table:@"SocialLayer"];
        subtitle = [v25 stringWithFormat:v27, v13, initiatorHandle];
      }
    }

    else if (type)
    {
      v13 = 0;
      initiatorHandle = 0;
      optionsSummary = 0;
      subtitle = 0;
    }

    else
    {
      optionsSummary = [modelCopy title];
      subtitle = [modelCopy subtitle];
      v13 = 0;
      initiatorHandle = 0;
    }

    v28 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:optionsSummary subtitle:subtitle maxWidth:width];
    completionCopy[2](completionCopy, v28);
  }
}

+ (void)slotForModelNeedingNameAndEmail:(id)email maxWidth:(double)width completion:(id)completion
{
  emailCopy = email;
  completionCopy = completion;
  v9 = SLDaemonLogHandle(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v9, OS_LOG_TYPE_DEFAULT, "Beginning fetch of name and email", buf, 2u);
  }

  getCloudSharingClass();
  v10 = objc_opt_respondsToSelector();
  if (v10)
  {
    CloudSharingClass = getCloudSharingClass();
    fileURL = [emailCopy fileURL];
    containerSetupInfo = [emailCopy containerSetupInfo];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke;
    v17[3] = &unk_278925EF8;
    v18 = emailCopy;
    widthCopy = width;
    v19 = completionCopy;
    [CloudSharingClass userNameAndEmail:fileURL containerSetupInfo:containerSetupInfo completionHandler:v17];

    optionsSummary = v18;
  }

  else
  {
    v15 = SLDaemonLogHandle(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationFooterService slotForModelNeedingNameAndEmail:v15 maxWidth:? completion:?];
    }

    optionsSummary = [emailCopy optionsSummary];
    v16 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:optionsSummary subtitle:&stru_28468DAB8 maxWidth:width];
    (*(completionCopy + 2))(completionCopy, v16);
  }
}

void __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) optionsSummary];
  v11 = v10;
  if (v8 && v7 && !v9)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = SLFrameworkBundle(v10);
    v14 = [v13 localizedStringForKey:@"SHARE_AS" value:&stru_28468DAB8 table:@"SocialLayer"];
    v15 = [v12 stringWithFormat:v14, v7, v8];
  }

  else
  {
    v16 = SLDaemonLogHandle(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke_cold_1(v9, v16);
    }

    v15 = 0;
  }

  v17 = [[SLDCollaborationFooterSlotTag alloc] initWithTitle:v11 subtitle:v15 maxWidth:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

- (void)footerViewForModel:(uint64_t)a1 style:(NSObject *)a2 maxWidth:layerContextID:reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDCollaborationFooterService: %p] 0.0 was provided for the max width of the requested view. This is undefined behavior and should be sanitized before invoking this xpc interface!", &v2, 0xCu);
}

void __85__SLDCollaborationFooterService_slotForModelNeedingNameAndEmail_maxWidth_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch name and email: %@", &v2, 0xCu);
}

@end
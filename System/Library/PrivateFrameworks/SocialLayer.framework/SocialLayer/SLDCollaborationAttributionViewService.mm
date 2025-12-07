@interface SLDCollaborationAttributionViewService
+ (id)sharedService;
+ (void)setupInterface:(id)interface;
- (UISSlotMachine)slotMachine;
- (id)_applicationIdentifierForConnection:(id)connection;
- (id)_attributionsFromIDs:(id)ds appID:(id)d;
- (id)slotMachineForViewIdentifier:(id)identifier;
- (void)accessibilityLabelForAttributionIdentifiers:(id)identifiers reply:(id)reply;
- (void)collaborationAttributionViewForTitle:(id)title attributionIdentifiers:(id)identifiers style:(id)style placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant layerContextID:(unint64_t)d reply:(id)self0;
@end

@implementation SLDCollaborationAttributionViewService

+ (id)sharedService
{
  if (sharedService_onceToken_10 != -1)
  {
    +[SLDCollaborationAttributionViewService sharedService];
  }

  v3 = sharedService_sService_10;

  return v3;
}

uint64_t __55__SLDCollaborationAttributionViewService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDCollaborationAttributionViewService);
  v1 = sharedService_sService_10;
  sharedService_sService_10 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (void)setupInterface:(id)interface
{
  interfaceCopy = interface;
  [interfaceCopy setClass:objc_opt_class() forSelector:sel_collaborationAttributionViewForTitle_attributionIdentifiers_style_placeholderGlyphConfiguration_maxWidth_variant_layerContextID_reply_ argumentIndex:4 ofReply:0];
}

- (void)collaborationAttributionViewForTitle:(id)title attributionIdentifiers:(id)identifiers style:(id)style placeholderGlyphConfiguration:(id)configuration maxWidth:(double)width variant:(int64_t)variant layerContextID:(unint64_t)d reply:(id)self0
{
  titleCopy = title;
  identifiersCopy = identifiers;
  styleCopy = style;
  configurationCopy = configuration;
  replyCopy = reply;
  v22 = replyCopy;
  if (width <= 0.0)
  {
    v31 = SLDaemonLogHandle(replyCopy);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
    }

    v22[2](v22, 0);
  }

  else
  {
    v38 = titleCopy;
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v24 = [(SLDCollaborationAttributionViewService *)self _applicationIdentifierForConnection:currentConnection];
    if (v24)
    {
      v25 = [(SLDCollaborationAttributionViewService *)self _attributionsFromIDs:identifiersCopy appID:v24];
      v26 = [v25 count];
      if (currentConnection && v26)
      {
        v27 = [SLDCollaborationAttributionViewSlotTag tagForTitle:v38 attributions:v25 placeholderGlyphConfiguration:configurationCopy maxWidth:variant variant:width];
        v36 = [SLDCollaborationAttributionViewSlotDrawer resolvedStyleForStyle:styleCopy tag:v27];
        [(SLDRemoteRenderingService *)self _viewIDForStyle:v36 tag:v27];
        v28 = v37 = v25;
        [(SLDRemoteRenderingService *)self _connection:currentConnection onlyNeedsViewWithIdentifier:v28];
        v29 = [(SLDRemoteRenderingService *)self _remoteContentForViewIdentifier:v28 layerContextID:d connection:currentConnection];
        (v22)[2](v22, v29);
        [(SLDRemoteRenderingService *)self _connectionTouchedView:v28];

        v30 = v37;
      }

      else
      {
        v30 = v25;
        v33 = [identifiersCopy count];
        v34 = SLDaemonLogHandle(v33);
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          if (v35)
          {
            [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
          }
        }

        else if (v35)
        {
          [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
        }

        v22[2](v22, 0);
      }
    }

    else
    {
      v32 = SLDaemonLogHandle(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [SLDCollaborationAttributionViewService collaborationAttributionViewForTitle:attributionIdentifiers:style:placeholderGlyphConfiguration:maxWidth:variant:layerContextID:reply:];
      }

      v22[2](v22, 0);
    }

    titleCopy = v38;
  }
}

- (void)accessibilityLabelForAttributionIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  IsEntitledForAccessibility = SLDConnectionIsEntitledForAccessibility(currentConnection);
  if (IsEntitledForAccessibility)
  {
    v10 = [(SLDCollaborationAttributionViewService *)self _attributionsFromIDs:identifiersCopy appID:@"accessibility"];
    v11 = [v10 count];
    if (currentConnection)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = [identifiersCopy count];
      v14 = SLDaemonLogHandle(v13);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v15)
        {
          [SLDCollaborationAttributionViewService accessibilityLabelForAttributionIdentifiers:reply:];
        }
      }

      else if (v15)
      {
        [SLDCollaborationAttributionViewService accessibilityLabelForAttributionIdentifiers:reply:];
      }

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      v17 = [SLDImageSymbolConfiguration configurationWithName:@"person.crop.circle.badge.checkmark" coreUISize:0 weight:0 pointSize:12.0];
      v18 = [SLDCollaborationAttributionViewSlotTag tagForTitle:&stru_28468DAB8 attributions:v10 placeholderGlyphConfiguration:v17 maxWidth:0 variant:1000.0];
      v19 = [SLDCollaborationAttributionViewRenderer accessibilityLabelForTag:v18];
      (replyCopy)[2](replyCopy, v19);
    }
  }

  else
  {
    v16 = SLDaemonLogHandle(IsEntitledForAccessibility);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SLDCollaborationAttributionViewService accessibilityLabelForAttributionIdentifiers:reply:];
    }

    replyCopy[2](replyCopy, 0);
    [currentConnection invalidate];
  }
}

- (UISSlotMachine)slotMachine
{
  slotMachine = self->_slotMachine;
  if (!slotMachine)
  {
    v4 = objc_alloc(MEMORY[0x277D777D0]);
    v5 = objc_alloc_init(SLDCollaborationAttributionViewSlotDrawer);
    v6 = [v4 initWithSlotDrawer:v5 options:0];
    v7 = self->_slotMachine;
    self->_slotMachine = v6;

    slotMachine = self->_slotMachine;
  }

  return slotMachine;
}

- (id)slotMachineForViewIdentifier:(id)identifier
{
  v4 = [identifier tag];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    slotMachine = [(SLDCollaborationAttributionViewService *)self slotMachine];
  }

  else
  {
    slotMachine = 0;
  }

  return slotMachine;
}

- (id)_applicationIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = MEMORY[0x277CC1E90];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = 0;
  v7 = [v6 bundleRecordForAuditToken:v15 error:&v14];
  v8 = v14;
  applicationIdentifier = [v7 applicationIdentifier];

  if (!applicationIdentifier)
  {
    v11 = SLDaemonLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SLDPillService *)self _applicationIdentifierForConnection:v8, v11];
    }
  }

  applicationIdentifier2 = [v7 applicationIdentifier];

  return applicationIdentifier2;
}

- (id)_attributionsFromIDs:(id)ds appID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  array = [MEMORY[0x277CBEB18] array];
  v8 = [[SLHighlightCenter alloc] initWithAppIdentifier:dCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(SLHighlightCenter *)v8 fetchAttributionForAttributionIdentifier:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [array copy];

  return v15;
}

@end
@interface CKMenuBarManager
+ (id)sharedInstance;
- (NSArray)filterCommands;
- (id)_keyCommandForInboxCellData:(id)data input:(id)input shouldShowIcon:(BOOL)icon;
- (id)allKeyboardShortcutKeyCommands;
- (id)generateFilterMenuHideSettings:(BOOL)settings;
- (id)keyForInboxCellDataFilterMode:(unint64_t)mode;
- (id)menuPhoneCall;
- (void)_buildConversationMenuWithBuilder:(id)builder;
- (void)_buildDebugMenuWithBuilder:(id)builder;
- (void)_buildEditMenuWithBuilder:(id)builder;
- (void)_buildFileMenuWithBuilder:(id)builder;
- (void)_buildFormatMenuWithBuilder:(id)builder;
- (void)_buildViewMenuWithBuilder:(id)builder;
- (void)_buildWindowMenuWithBuilder:(id)builder;
- (void)buildMenuWithBuilder:(id)builder;
- (void)deferredImageSetupForFilterCommands;
- (void)deferredSetupForTextStyleCommands;
@end

@implementation CKMenuBarManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CKMenuBarManager sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

void __34__CKMenuBarManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKMenuBarManager);
  v1 = sharedInstance_sInstance;
  sharedInstance_sInstance = v0;
}

- (id)allKeyboardShortcutKeyCommands
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:NSSelectorFromString(&cfstr_Escbuttonpress.isa)];
  [array addObject:v4];

  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"]" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandnext.isa)];
  [array addObject:v5];

  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"[" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandprev.isa)];
  [array addObject:v6];

  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"}" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandnext.isa)];
  [array addObject:v7];

  v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"{" modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandprev.isa)];
  [array addObject:v8];

  v9 = +[CKUIBehavior sharedBehaviors];
  maximumNumberOfPinnedConversations = [v9 maximumNumberOfPinnedConversations];

  if (maximumNumberOfPinnedConversations)
  {
    if (maximumNumberOfPinnedConversations >= 9)
    {
      v11 = 9;
    }

    else
    {
      v11 = maximumNumberOfPinnedConversations;
    }

    v12 = 1;
    do
    {
      v13 = MEMORY[0x1E69DCBA0];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      stringValue = [v14 stringValue];
      v16 = [v13 keyCommandWithInput:stringValue modifierFlags:0x100000 action:NSSelectorFromString(&cfstr_Keycommandsele.isa)];
      [array addObject:v16];

      ++v12;
      --v11;
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"1" modifierFlags:1179648 action:NSSelectorFromString(&cfstr_Keycommandsele_0.isa)];
  [array addObject:v17];

  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  if (isInternalInstall)
  {
    v21 = [MEMORY[0x1E69DCBA0] ck_debugMenuWithAction:NSSelectorFromString(&cfstr_Showdebugmenu.isa)];
    if (v21)
    {
      [array addObject:v21];
    }
  }

  if ((_CKUIEnhancedMainMenuEnabled(v20) & 1) == 0)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

    if ((isModernFilteringEnabled & 1) == 0)
    {
      filterCommands = [(CKMenuBarManager *)self filterCommands];
      [array addObjectsFromArray:filterCommands];
    }

    v25 = MEMORY[0x1E69DCBA0];
    v26 = NSSelectorFromString(&cfstr_Keycommandcomp.isa);
    v27 = CKFrameworkBundle(v26);
    v28 = [v27 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v29 = [v25 keyCommandWithInput:@"N" modifierFlags:0x100000 action:v26 upAction:0 discoverabilityTitle:v28];
    [array addObject:v29];

    mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedInstance];
    LODWORD(v26) = [mEMORY[0x1E69A8070]2 isExpressiveTextEnabled];

    if (v26)
    {
      v31 = 1572864;
    }

    else
    {
      v31 = 0x100000;
    }

    v32 = MEMORY[0x1E69DCBA0];
    v33 = NSSelectorFromString(&cfstr_Keycommandtogg.isa);
    v34 = CKFrameworkBundle(v33);
    v35 = [v34 localizedStringForKey:@"SHOW_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
    v36 = [v32 keyCommandWithInput:@"I" modifierFlags:v31 action:v33 upAction:0 discoverabilityTitle:v35];
    [array addObject:v36];

    v37 = MEMORY[0x1E69DCBA0];
    v38 = NSSelectorFromString(&cfstr_Keycommandfind.isa);
    v39 = CKFrameworkBundle(v38);
    v40 = [v39 localizedStringForKey:@"FIND_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
    v41 = [v37 keyCommandWithInput:@"F" modifierFlags:0x100000 action:v38 upAction:0 discoverabilityTitle:v40];
    [array addObject:v41];

    v42 = MEMORY[0x1E69DCBA0];
    v43 = NSSelectorFromString(&cfstr_Keycommandnext.isa);
    v44 = CKFrameworkBundle(v43);
    v45 = [v44 localizedStringForKey:@"NEXT_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v46 = [v42 keyCommandWithInput:@"\t" modifierFlags:0x40000 action:v43 upAction:0 discoverabilityTitle:v45];

    [v46 setWantsPriorityOverSystemBehavior:1];
    [array addObject:v46];
    v47 = MEMORY[0x1E69DCBA0];
    v48 = NSSelectorFromString(&cfstr_Keycommandprev.isa);
    v49 = CKFrameworkBundle(v48);
    v50 = [v49 localizedStringForKey:@"PREVIOUS_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
    v51 = [v47 keyCommandWithInput:@"\t" modifierFlags:393216 action:v48 upAction:0 discoverabilityTitle:v50];

    [v51 setWantsPriorityOverSystemBehavior:1];
    [array addObject:v51];
    mEMORY[0x1E69A8070]3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    LODWORD(v47) = [mEMORY[0x1E69A8070]3 isExpressiveTextEnabled];

    if (v47)
    {
      v53 = [CKTextEffectsMenuFactory effectKeyCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl.isa)];
      [array addObjectsFromArray:v53];
      v54 = [CKTextEffectsMenuFactory textStyleKeyCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl_0.isa) configureImages:0 configureAttributedTitles:0 activeTextStyles:0 selectedText:&stru_1F04268F8];
      [array addObjectsFromArray:v54];
    }
  }

  return array;
}

- (void)deferredImageSetupForFilterCommands
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isModernFilteringEnabled = [mEMORY[0x1E69A8070] isModernFilteringEnabled];

  if (isModernFilteringEnabled)
  {
    [(CKMenuBarManager *)self setShouldGenerateFilters:1];
    mainSystem = [MEMORY[0x1E69DCC88] mainSystem];
    [mainSystem setNeedsRebuild];
  }

  else
  {
    filterImagesByFilterMode = [(CKMenuBarManager *)self filterImagesByFilterMode];

    if (filterImagesByFilterMode)
    {
      return;
    }

    mainSystem = objc_opt_new();
    v6 = +[CKInboxCellData allMessagesCellData];
    v7 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v6 filterMode]);

    v8 = +[CKInboxCellData allMessagesCellData];
    image = [v8 image];
    [mainSystem setObject:image forKey:v7];

    v10 = +[CKInboxCellData knownSendersCellData];
    v11 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v10 filterMode]);

    v12 = +[CKInboxCellData knownSendersCellData];
    image2 = [v12 image];
    [mainSystem setObject:image2 forKey:v11];

    v14 = +[CKInboxCellData unknownSendersCellData];
    v15 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v14 filterMode]);

    v16 = +[CKInboxCellData unknownSendersCellData];
    image3 = [v16 image];
    [mainSystem setObject:image3 forKey:v15];

    v18 = +[CKInboxCellData unreadMessagesCellData];
    v19 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v18 filterMode]);

    v20 = +[CKInboxCellData unreadMessagesCellData];
    image4 = [v20 image];
    [mainSystem setObject:image4 forKey:v19];

    v22 = +[CKInboxCellData oscarCellData];
    v23 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v22 filterMode]);

    v24 = +[CKInboxCellData oscarCellData];
    image5 = [v24 image];
    [mainSystem setObject:image5 forKey:v23];

    v26 = +[CKInboxCellData recentlyDeletedCellData];
    v27 = -[CKMenuBarManager keyForInboxCellDataFilterMode:](self, "keyForInboxCellDataFilterMode:", [v26 filterMode]);

    v28 = +[CKInboxCellData recentlyDeletedCellData];
    image6 = [v28 image];
    [mainSystem setObject:image6 forKey:v27];

    [(CKMenuBarManager *)self setFilterImagesByFilterMode:mainSystem];
    self->_shouldForceFilterImageReload = 1;
    mainSystem2 = [MEMORY[0x1E69DCC88] mainSystem];
    [mainSystem2 setNeedsRebuild];
  }
}

- (void)deferredSetupForTextStyleCommands
{
  self->_shouldConfigureAttributedTextStyleTitles = 1;
  mainSystem = [MEMORY[0x1E69DCC88] mainSystem];
  [mainSystem setNeedsRebuild];
}

- (void)_buildFileMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE158]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE178]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE0F0]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE160]];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE168]];
  v5 = *MEMORY[0x1E69DE0D8];
  v6 = [builderCopy menuForIdentifier:*MEMORY[0x1E69DE0D8]];
  if (v6)
  {
    v7 = v6;
    children = [v6 children];
    v9 = [children mutableCopy];

    v10 = MEMORY[0x1E69DC8B0];
    v12 = CKFrameworkBundle(v11);
    v13 = [v12 localizedStringForKey:@"OPEN_CONVERSATION_IN_NEW_WINDOW" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.badge.plus"];
    v15 = [v10 commandWithTitle:v13 image:v14 action:NSSelectorFromString(&cfstr_Keycommandopen.isa) propertyList:0];
    [v9 addObject:v15];

    v16 = [v7 menuByReplacingChildren:v9];

    [builderCopy replaceMenuForIdentifier:v5 withMenu:v16];
  }

  v17 = *MEMORY[0x1E69DE100];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __46__CKMenuBarManager__buildFileMenuWithBuilder___block_invoke;
  v18[3] = &unk_1E72ECD60;
  v18[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:v17 fromChildrenBlock:v18];
}

id __46__CKMenuBarManager__buildFileMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 mutableCopy];
  v4 = MEMORY[0x1E69DCBA0];
  v5 = CKFrameworkBundle(v3);
  v6 = [v5 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.pencil"];
  v8 = [v4 commandWithTitle:v6 image:v7 action:NSSelectorFromString(&cfstr_Keycommandcomp.isa) input:@"N" modifierFlags:0x100000 propertyList:0];

  v9 = [v3 insertObject:v8 atIndex:0];
  v10 = *(a1 + 32);
  v11 = MEMORY[0x1E69DCBA0];
  v12 = CKFrameworkBundle(v9);
  v13 = [v12 localizedStringForKey:@"PRINT" value:&stru_1F04268F8 table:@"ChatKit"];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"printer"];
  v15 = [v11 commandWithTitle:v13 image:v14 action:NSSelectorFromString(&cfstr_Keycommandprin.isa) input:@"P" modifierFlags:0x100000 propertyList:0];
  v19[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v17 = [v10 _inlineMenuWithChildren:v16];
  [v3 addObject:v17];

  return v3;
}

- (void)_buildEditMenuWithBuilder:(id)builder
{
  v4 = *MEMORY[0x1E69DE220];
  builderCopy = builder;
  [builderCopy removeMenuForIdentifier:v4];
  [builderCopy replaceChildrenOfMenuForIdentifier:*MEMORY[0x1E69DE108] fromChildrenBlock:&__block_literal_global_324_0];
  v6 = *MEMORY[0x1E69DE0F8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CKMenuBarManager__buildEditMenuWithBuilder___block_invoke_2;
  v7[3] = &unk_1E72ECD60;
  v7[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:v6 fromChildrenBlock:v7];
}

id __46__CKMenuBarManager__buildEditMenuWithBuilder___block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCBA0];
  v14 = CKFrameworkBundle(a1);
  v2 = [v14 localizedStringForKey:@"FIND_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v3 = [v1 commandWithTitle:v2 image:0 action:NSSelectorFromString(&cfstr_Find.isa) input:@"F" modifierFlags:0x100000 propertyList:0];
  v15[0] = v3;
  v4 = MEMORY[0x1E69DCBA0];
  v5 = CKFrameworkBundle(v3);
  v6 = [v5 localizedStringForKey:@"FIND_NEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v7 = [v4 commandWithTitle:v6 image:0 action:NSSelectorFromString(&cfstr_Findnext.isa) input:@"G" modifierFlags:0x100000 propertyList:0];
  v15[1] = v7;
  v8 = MEMORY[0x1E69DCBA0];
  v9 = CKFrameworkBundle(v7);
  v10 = [v9 localizedStringForKey:@"FIND_PREVIOUS" value:&stru_1F04268F8 table:@"ChatKit"];
  v11 = [v8 commandWithTitle:v10 image:0 action:NSSelectorFromString(&cfstr_Findprevious.isa) input:@"G" modifierFlags:1179648 propertyList:0];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  return v12;
}

id __46__CKMenuBarManager__buildEditMenuWithBuilder___block_invoke_2(uint64_t a1, void *a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v36 = [a2 mutableCopy];
  v2 = MEMORY[0x1E69DCBA0];
  v3 = CKFrameworkBundle(v36);
  v4 = [v3 localizedStringForKey:@"SEND_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.circle.fill"];
  v35 = [v2 commandWithTitle:v4 image:v5 action:NSSelectorFromString(&cfstr_Keycommandsend.isa) input:@"\r" modifierFlags:0x100000 propertyList:0];

  v6 = MEMORY[0x1E69DC8B8];
  v8 = CKFrameworkBundle(v7);
  v9 = [v8 localizedStringForKey:@"REPLY_TO_REPLY" value:&stru_1F04268F8 table:@"ChatKit"];
  v34 = [v6 alternateWithTitle:v9 action:NSSelectorFromString(&cfstr_Keycommandrepl.isa) modifierFlags:0x20000];

  v10 = MEMORY[0x1E69DCBA0];
  v12 = CKFrameworkBundle(v11);
  v13 = [v12 localizedStringForKey:@"REPLY_TO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrowshape.turn.up.left"];
  v15 = NSSelectorFromString(&cfstr_Keycommandrepl_0.isa);
  v39[0] = v34;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v17 = [v10 commandWithTitle:v13 image:v14 action:v15 input:@"R" modifierFlags:0x100000 propertyList:0 alternates:v16];

  v18 = MEMORY[0x1E69DCBA0];
  v20 = CKFrameworkBundle(v19);
  v21 = [v20 localizedStringForKey:@"TAPBACK_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v22 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"plus.bubble.tapback"];
  v23 = [v18 commandWithTitle:v21 image:v22 action:NSSelectorFromString(&cfstr_Keycommandtapb.isa) input:@"T" modifierFlags:0x100000 propertyList:0];

  v24 = MEMORY[0x1E69DCBA0];
  v26 = CKFrameworkBundle(v25);
  v27 = [v26 localizedStringForKey:@"EDIT_LAST_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
  v28 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pencil"];
  v29 = [v24 commandWithTitle:v27 image:v28 action:NSSelectorFromString(&cfstr_Keycommandedit.isa) input:@"E" modifierFlags:0x100000 propertyList:0];

  v30 = *(a1 + 32);
  v38[0] = v35;
  v38[1] = v17;
  v38[2] = v23;
  v38[3] = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  v32 = [v30 _inlineMenuWithChildren:v31];
  [v36 addObject:v32];

  return v36;
}

- (void)_buildWindowMenuWithBuilder:(id)builder
{
  v4 = *MEMORY[0x1E69DE238];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CKMenuBarManager__buildWindowMenuWithBuilder___block_invoke;
  v5[3] = &unk_1E72ECD60;
  v5[4] = self;
  [builder replaceChildrenOfMenuForIdentifier:v4 fromChildrenBlock:v5];
}

id __48__CKMenuBarManager__buildWindowMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v27 = [a2 mutableCopy];
  v3 = MEMORY[0x1E69DCBA0];
  v4 = CKFrameworkBundle(v27);
  v5 = [v4 localizedStringForKey:@"NEXT_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward"];
  v7 = [v3 commandWithTitle:v5 image:v6 action:NSSelectorFromString(&cfstr_Keycommandnext.isa) input:@"\t" modifierFlags:0x40000 propertyList:0];

  v8 = [v7 setWantsPriorityOverSystemBehavior:1];
  v9 = MEMORY[0x1E69DCBA0];
  v10 = CKFrameworkBundle(v8);
  v11 = [v10 localizedStringForKey:@"PREVIOUS_CONVERSATION" value:&stru_1F04268F8 table:@"ChatKit"];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.backward"];
  v13 = [v9 commandWithTitle:v11 image:v12 action:NSSelectorFromString(&cfstr_Keycommandprev.isa) input:@"\t" modifierFlags:393216 propertyList:0];

  [v13 setWantsPriorityOverSystemBehavior:1];
  v14 = *(a1 + 32);
  v29[0] = v7;
  v29[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v16 = [v14 _inlineMenuWithChildren:v15];
  [v27 addObject:v16];

  v17 = *(a1 + 32);
  v18 = MEMORY[0x1E69DCBA0];
  v20 = CKFrameworkBundle(v19);
  v21 = [v20 localizedStringForKey:@"MESSAGES_WINDOW" value:&stru_1F04268F8 table:@"ChatKit"];
  v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
  v23 = [v18 commandWithTitle:v21 image:v22 action:NSSelectorFromString(&cfstr_Showmainmessag.isa) input:@"0" modifierFlags:0x100000 propertyList:0];
  v28 = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v25 = [v17 _inlineMenuWithChildren:v24];
  [v27 addObject:v25];

  return v27;
}

- (void)_buildViewMenuWithBuilder:(id)builder
{
  v4 = *MEMORY[0x1E69DE218];
  builderCopy = builder;
  [builderCopy removeMenuForIdentifier:v4];
  [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE1A8]];
  v6 = *MEMORY[0x1E69DE230];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CKMenuBarManager__buildViewMenuWithBuilder___block_invoke;
  v7[3] = &unk_1E72ECD60;
  v7[4] = self;
  [builderCopy replaceChildrenOfMenuForIdentifier:v6 fromChildrenBlock:v7];
}

id __46__CKMenuBarManager__buildViewMenuWithBuilder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [MEMORY[0x1E69DC8B0] ck_toggleTimeStampWithAction:NSSelectorFromString(&cfstr_Keycommandtogg_0.isa)];
  [v3 insertObject:v4 atIndex:1];
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  v7 = *(a1 + 32);
  if (v6)
  {
    if ([*(a1 + 32) shouldGenerateFilters])
    {
      v8 = [*(a1 + 32) generateFilterMenuHideSettings:1];
      v9 = [v8 children];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __46__CKMenuBarManager__buildViewMenuWithBuilder___block_invoke_2;
      v13[3] = &unk_1E72ECDA8;
      v14 = v3;
      v15 = 2;
      [v9 enumerateObjectsUsingBlock:v13];
    }
  }

  else
  {
    v10 = [*(a1 + 32) filterCommands];
    v11 = [v7 _inlineMenuWithChildren:v10];

    [v3 insertObject:v11 atIndex:2];
  }

  return v3;
}

- (NSArray)filterCommands
{
  v24[4] = *MEMORY[0x1E69E9840];
  if (self->_shouldForceFilterImageReload || (v3 = self->_filterCommands) == 0)
  {
    filterImagesByFilterMode = [(CKMenuBarManager *)self filterImagesByFilterMode];
    v5 = [filterImagesByFilterMode count];
    v6 = v5 != 0;

    v7 = +[CKInboxCellData allMessagesCellData];
    v8 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v7 input:@"1" shouldShowIcon:v6];

    v9 = +[CKInboxCellData knownSendersCellData];
    v10 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v9 input:@"2" shouldShowIcon:v6];

    v11 = +[CKInboxCellData unknownSendersCellData];
    v12 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v11 input:@"3" shouldShowIcon:v6];

    v13 = +[CKInboxCellData unreadMessagesCellData];
    v14 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v13 input:@"4" shouldShowIcon:v6];

    v24[0] = v8;
    v24[1] = v10;
    v24[2] = v12;
    v24[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    v16 = [v15 mutableCopy];

    if (IMIsOscarEnabled())
    {
      v17 = +[CKInboxCellData oscarCellData];
      v18 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v17 input:@"5" shouldShowIcon:v5 != 0];

      [(NSArray *)v16 addObject:v18];
      v19 = @"6";
    }

    else
    {
      v19 = @"5";
    }

    v20 = +[CKInboxCellData recentlyDeletedCellData];
    v21 = [(CKMenuBarManager *)self _keyCommandForInboxCellData:v20 input:v19 shouldShowIcon:v5 != 0];

    [(NSArray *)v16 addObject:v21];
    filterCommands = self->_filterCommands;
    self->_filterCommands = v16;

    self->_shouldForceFilterImageReload = 0;
    v3 = self->_filterCommands;
  }

  return v3;
}

- (id)_keyCommandForInboxCellData:(id)data input:(id)input shouldShowIcon:(BOOL)icon
{
  iconCopy = icon;
  dataCopy = data;
  inputCopy = input;
  if (iconCopy)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "filterMode")}];
    v12 = [v10 stringWithFormat:@"%@", v11];

    filterImagesByFilterMode = [(CKMenuBarManager *)self filterImagesByFilterMode];
    v14 = [filterImagesByFilterMode objectForKey:v12];
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x1E69DCBA0];
  title = [dataCopy title];
  v17 = NSSelectorFromString(&cfstr_Legacydidselec.isa);
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "filterMode")}];
  v19 = [v15 commandWithTitle:title image:v14 action:v17 input:inputCopy modifierFlags:1310720 propertyList:v18];

  return v19;
}

- (id)keyForInboxCellDataFilterMode:(unint64_t)mode
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
  v5 = [v3 stringWithFormat:@"%@", v4];

  return v5;
}

- (void)_buildDebugMenuWithBuilder:(id)builder
{
  v27[4] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if (([mEMORY[0x1E69A60F0] isInternalInstall] & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"showDebugMenu"];

  if (v6)
  {
    v7 = IMGetDomainBoolForKey();
    v8 = @"Hide Sensitive UI";
    if (v7)
    {
      v8 = @"Show Sensitive UI";
    }

    v9 = MEMORY[0x1E69DC8B0];
    v10 = v8;
    mEMORY[0x1E69A60F0] = [v9 commandWithTitle:v10 image:0 action:NSSelectorFromString(&cfstr_Togglesensitiv.isa) propertyList:0];

    v11 = MEMORY[0x1E69DCBA0];
    v13 = CKFrameworkBundle(v12);
    v14 = [v13 localizedStringForKey:@"Show responder chain" value:&stru_1F04268F8 table:@"ChatKit"];
    v15 = [v11 commandWithTitle:v14 image:0 action:NSSelectorFromString(&cfstr_Showresponderc.isa) input:@"r" modifierFlags:393216 propertyList:0];
    v27[0] = v15;
    v16 = MEMORY[0x1E69DC8B0];
    v17 = CKFrameworkBundle(v15);
    v18 = [v17 localizedStringForKey:@"Purge attachment files for current chat" value:&stru_1F04268F8 table:@"ChatKit"];
    v19 = [v16 commandWithTitle:v18 image:0 action:NSSelectorFromString(&cfstr_Purgeattachmen.isa) propertyList:0];
    v27[1] = v19;
    v20 = [MEMORY[0x1E69DCBA0] ck_debugMenuWithAction:NSSelectorFromString(&cfstr_Showdebugmenu.isa)];
    v27[2] = v20;
    v27[3] = mEMORY[0x1E69A60F0];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];

    v22 = MEMORY[0x1E69DCC60];
    v24 = CKFrameworkBundle(v23);
    v25 = [v24 localizedStringForKey:@"Debug" value:&stru_1F04268F8 table:@"ChatKit"];
    v26 = [v22 menuWithTitle:v25 children:v21];

    [builderCopy insertSiblingMenu:v26 afterMenuForIdentifier:*MEMORY[0x1E69DE128]];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_buildConversationMenuWithBuilder:(id)builder
{
  v97[5] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69A8070];
  builderCopy = builder;
  sharedInstance = [v4 sharedInstance];
  isExpressiveTextEnabled = [sharedInstance isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v8 = 1572864;
  }

  else
  {
    v8 = 0x100000;
  }

  v9 = MEMORY[0x1E69DCBA0];
  v87 = CKFrameworkBundle(v7);
  v86 = [v87 localizedStringForKey:@"SHOW_DETAILS" value:&stru_1F04268F8 table:@"ChatKit"];
  v85 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
  v84 = [v9 commandWithTitle:v86 image:v85 action:NSSelectorFromString(&cfstr_Toggledetailsf.isa) input:@"I" modifierFlags:v8 propertyList:0];
  v96[0] = v84;
  v10 = MEMORY[0x1E69DCBA0];
  v83 = CKFrameworkBundle(v84);
  v82 = [v83 localizedStringForKey:@"SHOW_CONTACT_CARD" value:&stru_1F04268F8 table:@"ChatKit"];
  v81 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  v80 = [v10 commandWithTitle:v82 image:v81 action:NSSelectorFromString(&cfstr_Showcontactcar.isa) input:@"B" modifierFlags:1572864 propertyList:0];
  v96[1] = v80;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
  v78 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v79];
  v97[0] = v78;
  v11 = MEMORY[0x1E69DCBA0];
  v77 = CKFrameworkBundle(v78);
  v76 = [v77 localizedStringForKey:@"MARK_AS_UNREAD" value:&stru_1F04268F8 table:@"ChatKit"];
  v75 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message.badge"];
  v74 = [v11 commandWithTitle:v76 image:v75 action:NSSelectorFromString(&cfstr_Toggleunreadst.isa) input:@"U" modifierFlags:1179648 propertyList:0];
  v95[0] = v74;
  v12 = MEMORY[0x1E69DCBA0];
  v73 = CKFrameworkBundle(v74);
  v72 = [v73 localizedStringForKey:@"MENU_BAR_HIDE_ALERTS_TOGGLE_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  v71 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bell.slash"];
  v70 = [v12 commandWithTitle:v72 image:v71 action:NSSelectorFromString(&cfstr_Togglehidealer.isa) input:@"M" modifierFlags:1572864 propertyList:0];
  v95[1] = v70;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
  v68 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v69];
  v97[1] = v68;
  v13 = MEMORY[0x1E69DC8B0];
  v67 = CKFrameworkBundle(v68);
  v66 = [v67 localizedStringForKey:@"BLOCK_PERSON_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v65 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"nosign"];
  v64 = [v13 commandWithTitle:v66 image:v65 action:NSSelectorFromString(&cfstr_Blockuserfromb.isa) propertyList:0];
  v94[0] = v64;
  v14 = MEMORY[0x1E69DC8B0];
  v63 = CKFrameworkBundle(v64);
  v62 = [v63 localizedStringForKey:@"DELETE_CONVERSATION_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v61 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  v60 = [v14 commandWithTitle:v62 image:v61 action:NSSelectorFromString(&cfstr_Keycommanddele.isa) propertyList:0];
  v94[1] = v60;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
  v58 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v59];
  v97[2] = v58;
  v15 = MEMORY[0x1E69DCBA0];
  v57 = CKFrameworkBundle(v58);
  v56 = [v57 localizedStringForKey:@"SEND_EMAIL_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v55 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
  v54 = [v15 commandWithTitle:v56 image:v55 action:NSSelectorFromString(&cfstr_Sendemailfromb.isa) input:@"E" modifierFlags:1572864 propertyList:0];
  v93[0] = v54;
  v16 = MEMORY[0x1E69DC8B0];
  v53 = CKFrameworkBundle(v54);
  v52 = [v53 localizedStringForKey:@"SEND_FILE_ELLIPSIS" value:&stru_1F04268F8 table:@"ChatKit"];
  v51 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"document"];
  v50 = [v16 commandWithTitle:v52 image:v51 action:NSSelectorFromString(&cfstr_Sendfilefrombu.isa) propertyList:0];
  v93[1] = v50;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v48 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v49];
  v97[3] = v48;
  v17 = MEMORY[0x1E69DC8B0];
  v18 = CKFrameworkBundle(v48);
  v19 = [v18 localizedStringForKey:@"INVITE_TO_SHARE_MY_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
  v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"inset.filled.rectangle.and.person.filled"];
  v21 = [v17 commandWithTitle:v19 image:v20 action:NSSelectorFromString(&cfstr_Invitetoshares.isa) propertyList:0];
  v92[0] = v21;
  v22 = MEMORY[0x1E69DC8B0];
  v23 = CKFrameworkBundle(v21);
  v24 = [v23 localizedStringForKey:@"ASK_TO_SHARE_THEIR_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
  v25 = [v22 commandWithTitle:v24 image:0 action:NSSelectorFromString(&cfstr_Asktosharescre.isa) propertyList:0];
  v92[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  selfCopy = self;
  v27 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v26];
  v97[4] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:5];
  v89 = [v28 mutableCopy];

  if ((IMDeviceIsGreenTea() & 1) == 0)
  {
    iMDeviceIsChinaRegion = [MEMORY[0x1E69A8020] IMDeviceIsChinaRegion];
    if ((iMDeviceIsChinaRegion & 1) == 0)
    {
      v30 = MEMORY[0x1E69DC8B0];
      v31 = CKFrameworkBundle(iMDeviceIsChinaRegion);
      v32 = [v31 localizedStringForKey:@"FACETIME_VIDEO" value:&stru_1F04268F8 table:@"ChatKit"];
      v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"video"];
      v34 = [v30 commandWithTitle:v32 image:v33 action:NSSelectorFromString(&cfstr_Facetimevideof.isa) propertyList:0];
      v91[0] = v34;
      v35 = MEMORY[0x1E69DC8B0];
      v36 = CKFrameworkBundle(v34);
      v37 = [v36 localizedStringForKey:@"FACETIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];
      v38 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
      v39 = [v35 commandWithTitle:v37 image:v38 action:NSSelectorFromString(&cfstr_Facetimeaudiof.isa) propertyList:0];
      v91[1] = v39;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
      v41 = [(CKMenuBarManager *)selfCopy _inlineMenuWithChildren:v40];

      [v89 addObject:v41];
    }
  }

  menuPhoneCall = [(CKMenuBarManager *)selfCopy menuPhoneCall];
  v43 = menuPhoneCall;
  if (menuPhoneCall)
  {
    menuPhoneCall = [v89 addObject:menuPhoneCall];
  }

  v44 = MEMORY[0x1E69DCC60];
  v45 = CKFrameworkBundle(menuPhoneCall);
  v46 = [v45 localizedStringForKey:@"CONVERSATIONS_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
  v47 = [v44 menuWithTitle:v46 image:0 identifier:@"com.messages.conversationsmenu" options:0 children:v89];

  [builderCopy insertSiblingMenu:v47 afterMenuForIdentifier:*MEMORY[0x1E69DE230]];
}

- (void)_buildFormatMenuWithBuilder:(id)builder
{
  v18[2] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    v7 = [CKTextEffectsMenuFactory effectMenuCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl.isa)];
    v8 = +[CKUIBehavior sharedBehaviors];
    v9 = [v8 __ck_localizedString:@"TEXT_EFFECTS_MENU_TITLE"];

    v10 = [(CKMenuBarManager *)self _inlineMenuWithTitle:v9 children:v7];
    v11 = [CKTextEffectsMenuFactory textStyleCommandsWithAction:NSSelectorFromString(&cfstr_Keycommandappl_0.isa) configureImages:0 configureAttributedTitles:self->_shouldConfigureAttributedTextStyleTitles selectedText:&stru_1F04268F8];
    v12 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v11];
    v18[0] = v12;
    v18[1] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v14 = MEMORY[0x1E69DCC60];
    v15 = CKFrameworkBundle(v13);
    v16 = [v15 localizedStringForKey:@"FORMAT_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
    v17 = [v14 menuWithTitle:v16 image:0 identifier:@"com.messages.formatmenu" options:0 children:v13];

    [builderCopy insertSiblingMenu:v17 afterMenuForIdentifier:@"com.messages.conversationsmenu"];
  }
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = CKIsRunningInMacCatalyst();
  if (v5 || _CKUIEnhancedMainMenuEnabled(v5))
  {
    [builderCopy removeMenuForIdentifier:*MEMORY[0x1E69DE118]];
    [(CKMenuBarManager *)self _buildAppMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildFileMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildEditMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildViewMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildConversationMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildFormatMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildWindowMenuWithBuilder:builderCopy];
    [(CKMenuBarManager *)self _buildDebugMenuWithBuilder:builderCopy];
  }
}

- (id)menuPhoneCall
{
  v29 = *MEMORY[0x1E69E9840];
  labelByPhoneNumber = [(CKMenuBarManager *)self labelByPhoneNumber];
  v4 = [labelByPhoneNumber count];

  if (v4)
  {
    v5 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    labelByPhoneNumber2 = [(CKMenuBarManager *)self labelByPhoneNumber];
    allKeys = [labelByPhoneNumber2 allKeys];

    obj = allKeys;
    v8 = [allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      v11 = 1;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if (v11)
          {
            v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"phone"];
          }

          else
          {
            v14 = 0;
          }

          v15 = MEMORY[0x1E69D8A40];
          formatForDisplayIfPhoneNumber = [v13 formatForDisplayIfPhoneNumber];
          v17 = [v15 supplementalDialTelephonyCallStringForDestination:formatForDisplayIfPhoneNumber isPhoneNumber:1];

          v18 = [MEMORY[0x1E69DC8B0] commandWithTitle:v17 image:v14 action:NSSelectorFromString(&cfstr_Relayphonecall.isa) propertyList:v13];
          labelByPhoneNumber3 = [(CKMenuBarManager *)self labelByPhoneNumber];
          v20 = [labelByPhoneNumber3 objectForKeyedSubscript:v13];

          if ([v20 length])
          {
            [v18 setSubtitle:v20];
          }

          [v5 addObject:v18];

          v11 = 0;
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        v11 = 0;
      }

      while (v9);
    }

    v21 = [(CKMenuBarManager *)self _inlineMenuWithChildren:v5];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)generateFilterMenuHideSettings:(BOOL)settings
{
  selfCopy = self;
  CKMenuBarManager.generateFilterMenu(hideSettings:)(v5, settings);
  v7 = v6;

  return v7;
}

@end
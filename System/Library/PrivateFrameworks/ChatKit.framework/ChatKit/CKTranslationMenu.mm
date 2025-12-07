@interface CKTranslationMenu
+ (id)translateActionForChatItem:(id)item forController:(id)controller;
+ (id)translateOrbActionForChatItem:(id)item forController:(id)controller;
+ (void)actionTranslateIsTappedForChatItem:(id)item forController:(id)controller;
@end

@implementation CKTranslationMenu

+ (id)translateActionForChatItem:(id)item forController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  inited = objc_initWeak(&location, controllerCopy);
  v8 = MEMORY[0x1E69DCB08];
  v9 = CKFrameworkBundle(inited);
  v10 = [v9 localizedStringForKey:@"TRANSLATE_ORB_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CKTranslationMenu_translateActionForChatItem_forController___block_invoke;
  v14[3] = &unk_1E72EE058;
  v11 = itemCopy;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = [v8 actionWithTitle:v10 type:0 handler:v14];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);

  return v12;
}

void __62__CKTranslationMenu_translateActionForChatItem_forController___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [CKTranslationMenu actionTranslateIsTappedForChatItem:v4 forController:WeakRetained];

  *a3 = 1;
}

+ (id)translateOrbActionForChatItem:(id)item forController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  objc_initWeak(location, controllerCopy);
  shouldOfferTranslateConversationInTranslateMenu = [controllerCopy shouldOfferTranslateConversationInTranslateMenu];
  if (shouldOfferTranslateConversationInTranslateMenu)
  {
    collectionViewController = [controllerCopy collectionViewController];
    v9 = [collectionViewController balloonViewForChatItem:itemCopy];

    v10 = MEMORY[0x1E69DC650];
    v12 = CKFrameworkBundle(v11);
    v13 = [v12 localizedStringForKey:@"TRANSLATE_THIS_MENU_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v14 = [v10 alertControllerWithTitle:&stru_1F04268F8 message:v13 preferredStyle:0];

    popoverPresentationController = [v14 popoverPresentationController];
    [popoverPresentationController setSourceView:v9];

    popoverPresentationController2 = [v14 popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:1];

    v17 = MEMORY[0x1E69DC648];
    v19 = CKFrameworkBundle(v18);
    v20 = [v19 localizedStringForKey:@"TRANSLATE_THIS_MESSAGE_MENU_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke;
    v47[3] = &unk_1E72F4F30;
    v21 = itemCopy;
    v48 = v21;
    objc_copyWeak(&v49, location);
    v22 = [v17 actionWithTitle:v20 style:0 handler:v47];
    [v14 addAction:v22];

    v23 = MEMORY[0x1E69DC648];
    v25 = CKFrameworkBundle(v24);
    v26 = [v25 localizedStringForKey:@"TRANSLATE_THIS_CONVERSATION_MENU_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_2;
    v44[3] = &unk_1E72F2E08;
    objc_copyWeak(&v46, location);
    v45 = v21;
    v27 = [v23 actionWithTitle:v26 style:0 handler:v44];
    [v14 addAction:v27];

    v28 = MEMORY[0x1E69DC628];
    v30 = CKFrameworkBundle(v29);
    v31 = [v30 localizedStringForKey:@"TRANSLATE_ORB_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
    v32 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_3;
    v41[3] = &unk_1E72EBF48;
    objc_copyWeak(&v43, location);
    v33 = v14;
    v42 = v33;
    v34 = [v28 actionWithTitle:v31 image:v32 identifier:0 handler:v41];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v49);
    v35 = v48;
  }

  else
  {
    v36 = MEMORY[0x1E69DC628];
    v9 = CKFrameworkBundle(shouldOfferTranslateConversationInTranslateMenu);
    v33 = [v9 localizedStringForKey:@"TRANSLATE_ORB_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
    v35 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_5;
    v38[3] = &unk_1E72F4F58;
    v39 = itemCopy;
    objc_copyWeak(&v40, location);
    v34 = [v36 actionWithTitle:v33 image:v35 identifier:0 handler:v38];
    objc_destroyWeak(&v40);
  }

  objc_destroyWeak(location);

  return v34;
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [CKTranslationMenu actionTranslateIsTappedForChatItem:v2 forController:WeakRetained];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 chat];
  [v4 setHasOfferedAutomaticTranslationInTranslateMenu:1];
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained translateConversationForChatItem:*(a1 + 32)];
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:&__block_literal_global_182];
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [CKTranslationMenu actionTranslateIsTappedForChatItem:v1 forController:WeakRetained];
}

+ (void)actionTranslateIsTappedForChatItem:(id)item forController:(id)controller
{
  v23[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  controllerCopy = controller;
  if (!controllerCopy)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [itemCopy text];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E696AAB0];
      v9 = itemCopy;
      v10 = [v8 alloc];
      audioTranscriptionText = [v9 audioTranscriptionText];

      v12 = [v10 initWithString:audioTranscriptionText];
      goto LABEL_8;
    }

    text = [itemCopy transcriptText];
  }

  v12 = text;
LABEL_8:
  v13 = [objc_alloc(MEMORY[0x1E69DB4D8]) initWithNibName:0 bundle:0];
  [v13 setIsSourceEditable:0];
  [v13 setText:v12];
  [v13 setModalPresentationStyle:7];
  v23[0] = *MEMORY[0x1E69A70F8];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v13 setIgnoredAttributes:v14];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    collectionViewController = [controllerCopy collectionViewController];
    v18 = [collectionViewController balloonViewForChatItem:itemCopy];

    presentationController = [v13 presentationController];
    [presentationController setSourceView:v18];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__CKTranslationMenu_actionTranslateIsTappedForChatItem_forController___block_invoke;
  v21[3] = &unk_1E72EBA18;
  v20 = controllerCopy;
  v22 = v20;
  [v13 setDismissCompletionHandler:v21];
  [v20 presentViewController:v13 animated:1 completion:0];

LABEL_12:
}

uint64_t __70__CKTranslationMenu_actionTranslateIsTappedForChatItem_forController___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) entryViewWasActiveOnContextMenuPresentation])
  {
    [*(a1 + 32) showKeyboard];
  }

  v2 = *(a1 + 32);

  return [v2 reloadInputViews];
}

@end
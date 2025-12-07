@interface BCSActionPickerViewAssistant
- (BOOL)showActionPickerWithItems:(id)items fromViewController:(id)controller presentingRect:(CGRect)rect;
@end

@implementation BCSActionPickerViewAssistant

- (BOOL)showActionPickerWithItems:(id)items fromViewController:(id)controller presentingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v70 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  controllerCopy = controller;
  v12 = controllerCopy;
  if (controllerCopy)
  {
    v55 = controllerCopy;
    presentedViewController = [controllerCopy presentedViewController];

    if (presentedViewController)
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        [(BCSActionPickerViewAssistant *)v14 showActionPickerWithItems:v15 fromViewController:v16 presentingRect:v17, v18, v19, v20, v21];
      }
    }

    else
    {
      if (![(BCSActionPickerViewAssistant *)self isShowingPicker])
      {
        v40 = objc_alloc_init(getUIAlertControllerClass());
        alertController = self->_alertController;
        self->_alertController = v40;

        objc_initWeak(&location, self);
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = itemsCopy;
        v42 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
        if (v42)
        {
          v43 = *v65;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v65 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v64 + 1) + 8 * i);
              [v45 setActionPickerItemDelegate:self];
              shouldDismissAlertWhenActionIsTaken = [v45 shouldDismissAlertWhenActionIsTaken];
              v47 = self->_alertController;
              label = [v45 label];
              v61[0] = MEMORY[0x277D85DD0];
              v61[1] = 3221225472;
              v61[2] = __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke;
              v61[3] = &unk_278CFE8D0;
              v61[4] = v45;
              v63 = shouldDismissAlertWhenActionIsTaken;
              objc_copyWeak(&v62, &location);
              v60[0] = MEMORY[0x277D85DD0];
              v60[1] = 3221225472;
              v60[2] = __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke_2;
              v60[3] = &unk_278CFE8F8;
              v60[4] = v45;
              [(UIAlertController *)v47 _addActionWithTitle:label style:0 handler:v61 shouldDismissHandler:v60];

              objc_destroyWeak(&v62);
            }

            v42 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
          }

          while (v42);
        }

        v49 = self->_alertController;
        UIAlertActionClass = getUIAlertActionClass();
        v51 = _BCSLocalizedString(@"Cancel", &_BCSLocalizableStringsBundleOnceToken, &_BCSLocalizableStringsBundle);
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke_3;
        v58[3] = &unk_278CFE920;
        objc_copyWeak(&v59, &location);
        v52 = [UIAlertActionClass actionWithTitle:v51 style:1 handler:v58];
        [(UIAlertController *)v49 addAction:v52];

        popoverPresentationController = [(UIAlertController *)self->_alertController popoverPresentationController];
        view = [v55 view];
        [popoverPresentationController setSourceView:view];

        [popoverPresentationController setSourceRect:{x, y, width, height}];
        [v55 presentViewController:self->_alertController animated:1 completion:0];

        objc_destroyWeak(&v59);
        objc_destroyWeak(&location);
        v30 = 1;
        goto LABEL_12;
      }

      v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v31)
      {
        [(BCSActionPickerViewAssistant *)v31 showActionPickerWithItems:v32 fromViewController:v33 presentingRect:v34, v35, v36, v37, v38];
      }
    }

    v30 = 0;
LABEL_12:
    v12 = v55;
    goto LABEL_13;
  }

  v22 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v22)
  {
    [(BCSActionPickerViewAssistant *)v22 showActionPickerWithItems:v23 fromViewController:v24 presentingRect:v25, v26, v27, v28, v29];
  }

  v30 = 0;
LABEL_13:

  return v30;
}

void __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) performAction];
  if (*(a1 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _cleanUpAlertController];
  }
}

void __92__BCSActionPickerViewAssistant_showActionPickerWithItems_fromViewController_presentingRect___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanUpAlertController];
}

@end
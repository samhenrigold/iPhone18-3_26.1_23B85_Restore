@interface FLAlertControllerHelper
+ (void)presentAlertWithTitle:(id)title message:(id)message actions:(id)actions presentingController:(id)controller;
@end

@implementation FLAlertControllerHelper

+ (void)presentAlertWithTitle:(id)title message:(id)message actions:(id)actions presentingController:(id)controller
{
  v41 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  messageCopy = message;
  actionsCopy = actions;
  controllerCopy = controller;
  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = actionsCopy;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = MEMORY[0x277D750F8];
        title = [v15 title];
        style = [v15 style];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __86__FLAlertControllerHelper_presentAlertWithTitle_message_actions_presentingController___block_invoke;
        v34[3] = &unk_278E35A60;
        v34[4] = v15;
        v19 = [v16 actionWithTitle:title style:style handler:v34];
        [v10 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  v20 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [v20 addAction:{*(*(&v30 + 1) + 8 * j), controllerCopy}];
      }

      v23 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v23);
  }

  [controllerCopy presentViewController:v20 animated:1 completion:0];
}

void __86__FLAlertControllerHelper_presentAlertWithTitle_message_actions_presentingController___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) handler];

  if (v3)
  {
    v4 = [*(a1 + 32) handler];
    (v4)[2](v4, v5);
  }
}

@end
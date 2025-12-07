@interface SKUIMoreListController
- (SKUIMoreListController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SKUIMoreListController

- (SKUIMoreListController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIMoreListController *)v8 initWithNibName:v9 bundle:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIMoreListController;
  v16 = [(SKUIMoreListController *)&v20 initWithNibName:nameCopy bundle:bundleCopy];
  v17 = v16;
  if (v16)
  {
    navigationItem = [(SKUIMoreListController *)v16 navigationItem];
    [navigationItem setBackButtonTitle:&stru_2827FFAC8];
  }

  return v17;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([MEMORY[0x277D75738] instancesRespondToSelector:a2])
  {
    v11.receiver = self;
    v11.super_class = SKUIMoreListController;
    [(UIMoreListController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  navigationController = [(SKUIMoreListController *)self navigationController];
  storeKitDelegate = [navigationController storeKitDelegate];
  if (objc_opt_respondsToSelector())
  {
    [storeKitDelegate moreNavigationController:navigationController didSelectItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone(v4, v5))
  {
    return 26;
  }

  return 2;
}

- (void)initWithNibName:(uint64_t)a3 bundle:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIMoreListController initWithNibName:bundle:]";
}

@end
@interface AEAnnotationGroupPrintActivityItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)supportedActivityTypes;
- (void)populateHTMLGenerator:(id)generator;
@end

@implementation AEAnnotationGroupPrintActivityItemProvider

- (id)supportedActivityTypes
{
  v4 = UIActivityTypePrint;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  controllerCopy = controller;
  typeCopy = type;
  supportedActivityTypes = [(AEAnnotationGroupPrintActivityItemProvider *)self supportedActivityTypes];
  v9 = [supportedActivityTypes containsObject:typeCopy];

  if (v9)
  {
    v16.receiver = self;
    v16.super_class = AEAnnotationGroupPrintActivityItemProvider;
    v11 = [(AEAnnotationGroupHTMLActivityItemProvider *)&v16 activityViewController:controllerCopy itemForActivityType:typeCopy];
    v12 = [[UIMarkupTextPrintFormatter alloc] initWithMarkupText:v11];
  }

  else
  {
    v11 = AESharingLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412546;
      v18 = v14;
      v19 = 2112;
      v20 = typeCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = [[UIMarkupTextPrintFormatter alloc] initWithMarkupText:&stru_2D2930];

  return v3;
}

- (void)populateHTMLGenerator:(id)generator
{
  v4.receiver = self;
  v4.super_class = AEAnnotationGroupPrintActivityItemProvider;
  generatorCopy = generator;
  [(AEAnnotationHTMLActivityItemProvider *)&v4 populateHTMLGenerator:generatorCopy];
  [generatorCopy setCitationsAllowed:{0, v4.receiver, v4.super_class}];
  [generatorCopy setForPrint:1];
}

@end
@interface AEAnnotationAirDropTextActivityItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)supportedActivityTypes;
@end

@implementation AEAnnotationAirDropTextActivityItemProvider

- (id)supportedActivityTypes
{
  v4 = UIActivityTypeAirDrop;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  v6 = [(AEAssetActivityItemProviderSource *)self supportsActivityType:typeCopy];
  if (v6)
  {
    v18.receiver = self;
    v18.super_class = AEAnnotationAirDropTextActivityItemProvider;
    v7 = [(AEAnnotationTextActivityItemProvider *)&v18 textForActivityType:typeCopy];
    v8 = NSTemporaryDirectory();
    v9 = IMCommonCoreBundle(v8);
    v10 = [v9 localizedStringForKey:@"AirDrop" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v11 = [v8 stringByAppendingPathComponent:v10];
    v12 = [v11 stringByAppendingPathExtension:@"txt"];

    v17 = 0;
    [v7 writeToFile:v12 atomically:0 encoding:4 error:&v17];
    v13 = 0;
    if (!v17)
    {
      v13 = [NSURL fileURLWithPath:v12];
    }
  }

  else
  {
    v7 = AESharingLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = typeCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

@end
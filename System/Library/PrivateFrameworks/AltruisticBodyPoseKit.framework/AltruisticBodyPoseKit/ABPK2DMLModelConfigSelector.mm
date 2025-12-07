@interface ABPK2DMLModelConfigSelector
+ (CGSize)inputDimensionsForModelWithABPKNetworkConfig:(id)config;
+ (CGSize)inputDimensionsForModelWithNetworkConfig:(id)config;
+ (id)getModelWithNetworkConfig:(id)config;
@end

@implementation ABPK2DMLModelConfigSelector

+ (id)getModelWithNetworkConfig:(id)config
{
  configCopy = config;
  if ([configCopy algMode] == 4 || objc_msgSend(configCopy, "algMode") == 1)
  {
    if ([configCopy deviceANEVersionPriorOrEqualToH12])
    {
      v4 = ABPKMLModelConfiguration2DStandard;
LABEL_10:
      v6 = objc_alloc_init(v4);
      goto LABEL_11;
    }

LABEL_8:
    v4 = ABPKMLModelConfiguration2DStandardFull;
    goto LABEL_10;
  }

  if ([configCopy algMode] == 2 || !objc_msgSend(configCopy, "algMode"))
  {
    v4 = ABPKMLModelConfiguration2DBreakthrough;
    goto LABEL_10;
  }

  algMode = [configCopy algMode];
  if (algMode == 10)
  {
    goto LABEL_8;
  }

  v8 = __ABPKLogSharedInstance(algMode);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_ERROR, " Invalid algorithm mode specified ", v9, 2u);
  }

  v6 = 0;
LABEL_11:

  return v6;
}

+ (CGSize)inputDimensionsForModelWithNetworkConfig:(id)config
{
  configCopy = config;
  v4 = [ABPK2DMLModelConfigSelector getModelWithNetworkConfig:configCopy];
  abpkDeviceOrientation = [configCopy abpkDeviceOrientation];

  [v4 inputDimensionsForABPKDeviceOrientation:abpkDeviceOrientation];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

+ (CGSize)inputDimensionsForModelWithABPKNetworkConfig:(id)config
{
  configCopy = config;
  v4 = [ABPK2DMLModelConfigSelector getModelWithNetworkConfig:configCopy];
  abpkDeviceOrientation = [configCopy abpkDeviceOrientation];

  [v4 inputDimensionsForABPKDeviceOrientation:abpkDeviceOrientation];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end
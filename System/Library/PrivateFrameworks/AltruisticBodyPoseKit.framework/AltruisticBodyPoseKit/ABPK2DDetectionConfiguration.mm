@interface ABPK2DDetectionConfiguration
- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)mode;
- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)mode abpkDeviceOrientation:(int64_t)orientation;
@end

@implementation ABPK2DDetectionConfiguration

- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)mode
{
  self->_abpkDeviceOrientation = 3;
  v14.receiver = self;
  v14.super_class = ABPK2DDetectionConfiguration;
  v4 = [(ABPK2DDetectionConfiguration *)&v14 init];
  v6 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v4->_algMode = mode;
  v7 = determineDeviceANEVersionPriorOrEqualToH12(v4, v5);
  v6->_deviceANEVersionPriorOrEqualToH12 = v7;
  algMode = v6->_algMode;
  if (((algMode == 2) & v7) == 1)
  {
    v9 = __ABPKLogSharedInstance(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 0;
      v10 = " Breakthrough Gesture mode not supported on this device ";
LABEL_8:
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, v10, v13, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (((algMode == 0) & v7) != 1)
  {
LABEL_10:
    v11 = v6;
    goto LABEL_11;
  }

  v9 = __ABPKLogSharedInstance(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13[0] = 0;
    v10 = " Gesture Detection mode not supported on this device ";
    goto LABEL_8;
  }

LABEL_9:

  v11 = 0;
LABEL_11:

  return v11;
}

- (ABPK2DDetectionConfiguration)initWithAlgorithmMode:(int64_t)mode abpkDeviceOrientation:(int64_t)orientation
{
  result = [(ABPK2DDetectionConfiguration *)self initWithAlgorithmMode:mode];
  if (result)
  {
    result->_abpkDeviceOrientation = orientation;
  }

  return result;
}

@end
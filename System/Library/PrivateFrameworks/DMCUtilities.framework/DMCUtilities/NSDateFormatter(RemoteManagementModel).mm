@interface NSDateFormatter(RemoteManagementModel)
+ (id)rmmodel_sharedRFC3339DateFormatter;
@end

@implementation NSDateFormatter(RemoteManagementModel)

+ (id)rmmodel_sharedRFC3339DateFormatter
{
  if (rmmodel_sharedRFC3339DateFormatter_onceToken != -1)
  {
    +[NSDateFormatter(RemoteManagementModel) rmmodel_sharedRFC3339DateFormatter];
  }

  v2 = rmmodel_sharedRFC3339DateFormatter_rfcFormatter;

  return v2;
}

@end
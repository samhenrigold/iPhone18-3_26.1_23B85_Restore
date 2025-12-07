@interface CLPedestrianFenceService
+ (BOOL)isAvailable;
- (void)toggleSession;
@end

@implementation CLPedestrianFenceService

+ (BOOL)isAvailable
{
  v2 = sub_10001A3E8(self, a2);
  v4 = sub_1000247B0(v2, v3);
  if (v4)
  {
    return 1;
  }

  v6 = sub_10001A3E8(v4, v5);
  if (sub_10071AAF8(v6, v7))
  {
    return 1;
  }

  if (qword_1025D4500 != -1)
  {
    sub_101B6C5F0();
  }

  v9 = qword_1025D4508;
  if (os_log_type_enabled(qword_1025D4508, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Pedestrian fence not supported", v11, 2u);
  }

  v10 = sub_10000A100(121, 0);
  result = 0;
  if (v10)
  {
    sub_101B6C604();
    return 0;
  }

  return result;
}

- (void)toggleSession
{
  v3 = [(NSMutableSet *)[(CLPedestrianFenceService *)self clientsInSession] count]!= 0;

  [(CLPedestrianFenceService *)self toggleSession:v3];
}

@end
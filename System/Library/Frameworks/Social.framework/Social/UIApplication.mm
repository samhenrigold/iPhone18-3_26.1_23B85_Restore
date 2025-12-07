@interface UIApplication
@end

@implementation UIApplication

void __97__UIApplication_SLUIApplicationAdditions__shouldShowNetworkActivityIndicatorInRemoteApplication___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (__activityRequestCounter == 1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_8;
    }

    v10 = &SLHideNetworkActivityIndicatorNotification;
  }

  else
  {
    if (__activityRequestCounter || (*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    v10 = &SLShowNetworkActivityIndicatorNotification;
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = [MEMORY[0x1E696AD80] notificationWithName:*v10 object:0];
  [v11 postNotification:v12];

LABEL_8:
  if (*(a1 + 32))
  {
    v13 = (__activityRequestCounter + 1);
  }

  else
  {
    v13 = (__activityRequestCounter - 1);
  }

  __activityRequestCounter = v13;
  _SLLog(v8, 6, @"activityRequestCounter=%i", a4, a5, a6, a7, a8, v13);
}

@end
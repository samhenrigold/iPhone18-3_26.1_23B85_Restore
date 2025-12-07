@interface FBTransaction
- (FBTransaction)init;
@end

@implementation FBTransaction

- (FBTransaction)init
{
  v6.receiver = self;
  v6.super_class = FBTransaction;
  v2 = [(FBTransaction *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = FBLogTransaction(v2);
    [(FBTransaction *)v3 _addDebugLogCategory:v4];
  }

  return v3;
}

@end
@interface SBTransaction
- (SBTransaction)init;
@end

@implementation SBTransaction

- (SBTransaction)init
{
  v6.receiver = self;
  v6.super_class = SBTransaction;
  v2 = [(SBTransaction *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = SBLogTransaction(v2);
    [(SBTransaction *)v3 _addDebugLogCategory:v4];

    [(SBTransaction *)v3 setAuditHistoryEnabled:1];
  }

  return v3;
}

@end
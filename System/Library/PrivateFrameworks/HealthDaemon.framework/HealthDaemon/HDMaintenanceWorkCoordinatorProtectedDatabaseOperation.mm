@interface HDMaintenanceWorkCoordinatorProtectedDatabaseOperation
@end

@implementation HDMaintenanceWorkCoordinatorProtectedDatabaseOperation

void __63___HDMaintenanceWorkCoordinatorProtectedDatabaseOperation_main__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 112) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;

  [*(*(a1 + 32) + 120) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  *(v4 + 120) = 0;

  v6 = *(a1 + 32);

  [(HDMaintenanceOperation *)v6 finish];
}

@end
@interface MAPreferencesSync
@end

@implementation MAPreferencesSync

BOOL ___MAPreferencesSync_block_invoke(void *a1)
{
  result = syncPreferences(a1[4], a1[5]);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

@end
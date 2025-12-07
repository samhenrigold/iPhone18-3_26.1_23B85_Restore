@interface CKRecord
@end

@implementation CKRecord

void *__48__CKRecord_HealthDaemon__hd_setValuesIfChanged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) hd_setValue:a3 ifChangedForKey:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void *__57__CKRecord_HealthDaemon__hd_setEncryptedValuesIfChanged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) hd_setEncryptedValue:a3 ifChangedForKey:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

@end
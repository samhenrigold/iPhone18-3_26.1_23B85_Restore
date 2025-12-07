@interface CSStoreEnumerateTables
@end

@implementation CSStoreEnumerateTables

void ___CSStoreEnumerateTables_block_invoke(uint64_t a1, CSStore2::Table *this, _BYTE *a3)
{
  v5 = CSStore2::Table::copyCFName(this);
  if (v5)
  {
    v6 = v5;
    (*(*(a1 + 32) + 16))();
    *a3 = 0;
    CFRelease(v6);
  }
}

@end
@interface LSCurrentProcessMayMapDatabase
@end

@implementation LSCurrentProcessMayMapDatabase

unint64_t ___LSCurrentProcessMayMapDatabase_block_invoke(uint64_t a1, uint64_t a2)
{
  if ([__LSDefaultsGetSharedInstance(a1 a2)])
  {
    result = 1;
  }

  else
  {
    if (_LSGetAuditTokenForSelf::once != -1)
    {
      _LSGetAuditTokenForSelf_cold_1();
    }

    result = _LSAuditTokenMayMapDatabase(_LSGetAuditTokenForSelf::result);
  }

  atomic_store(result, mayMapDatabase);
  return result;
}

@end
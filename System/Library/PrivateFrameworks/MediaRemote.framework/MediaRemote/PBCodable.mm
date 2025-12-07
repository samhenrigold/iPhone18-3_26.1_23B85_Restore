@interface PBCodable
@end

@implementation PBCodable

id __61__PBCodable_MRAdditions__mr_valueForPotentiallyUndefinedKey___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  NSSelectorFromString(*(a1 + 40));
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) valueForKey:*(a1 + 40)];
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Encountered unknown protobuf key (%@) while converting to a dictionary; skipping.", &v6, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

@end
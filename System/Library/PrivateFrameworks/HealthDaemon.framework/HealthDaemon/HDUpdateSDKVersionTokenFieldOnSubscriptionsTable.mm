@interface HDUpdateSDKVersionTokenFieldOnSubscriptionsTable
@end

@implementation HDUpdateSDKVersionTokenFieldOnSubscriptionsTable

uint64_t ___HDUpdateSDKVersionTokenFieldOnSubscriptionsTable_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = HDSQLiteColumnAsInt64();
  HDSQLiteColumnAsInt64();
  HKBitPatternCastSignedToUnsignedInt64();
  v6 = HKBitPatternCastUnsignedToSignedInt64();
  v7 = [*(a1 + 32) unprotectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDUpdateSDKVersionTokenFieldOnSubscriptionsTable_block_invoke_2;
  v10[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
  v10[4] = v6;
  v10[5] = v5;
  v8 = [v7 executeSQL:@"UPDATE subscription_app_launch SET sdk_version = ? WHERE ROWID = ?" error:a3 bindingHandler:v10 enumerationHandler:0];

  return v8;
}

uint64_t ___HDUpdateSDKVersionTokenFieldOnSubscriptionsTable_block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

@end
@interface CalDatabaseEnumerateUnconsumedObjectChangesForClient
@end

@implementation CalDatabaseEnumerateUnconsumedObjectChangesForClient

void ___CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, int a6)
{
  v11 = a5;
  v12 = 40;
  if (a4)
  {
    v12 = 32;
  }

  v13 = *(a1 + v12);
  if (a3 != 6)
  {
    v15 = (a1 + 72);
    v16 = *(a1 + 72);
    if (a3 == 26 && v16)
    {
      goto LABEL_29;
    }

    if (v16)
    {
      goto LABEL_9;
    }

LABEL_11:
    v18 = MEMORY[0x1E12C7520](v11);
    goto LABEL_12;
  }

  v14 = *(a1 + 48);

  v15 = (a1 + 72);
  if (!*(a1 + 72))
  {
    v13 = v14;
    goto LABEL_11;
  }

  v13 = v14;
LABEL_9:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke_2;
  v27[3] = &unk_1E8694A90;
  v28 = v11;
  v17 = *v15;
  v29 = a6;
  v30 = v17;
  v18 = MEMORY[0x1E12C7520](v27);

LABEL_12:
  v25 = 0;
  v26 = 0;
  cf = 0;
  v24 = 0;
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 64));
  v20 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithBindBlockAndProperties(v20, a2, &v25, &v24, &cf, &v26, v13, v18, 0);
  if (v25)
  {
    (*(*(a1 + 56) + 16))();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v26)
  {
    CFRelease(v26);
  }

LABEL_29:
}

uint64_t ___CalDatabaseEnumerateUnconsumedObjectChangesForClient_block_invoke_2(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 32) + 16))();
  v4 = *(a2 + 8);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);

  return sqlite3_bind_int(v4, v5, v6);
}

@end
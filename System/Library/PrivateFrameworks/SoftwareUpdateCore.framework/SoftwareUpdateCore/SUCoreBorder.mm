@interface SUCoreBorder
@end

@implementation SUCoreBorder

void __SUCoreBorder_MAPurgeAll_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = _SUCoreBorder_MAFunctionAtEnd(@"MAPurgeAll", &obj);
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = *(*(a1 + 40) + 8);
    v10 = *(v6 + 40);
    _SUCoreBorder_MASimulate(v5, &v10);
    objc_storeStrong((v6 + 40), v10);
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 16);
LABEL_6:
      v8();
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v8 = *(v9 + 16);
      goto LABEL_6;
    }
  }
}

@end
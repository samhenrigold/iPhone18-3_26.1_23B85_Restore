@interface CPLGetAccountDSID
@end

@implementation CPLGetAccountDSID

void ___CPLGetAccountDSID_block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2938;
  v32 = __Block_byref_object_dispose__2939;
  v33 = 0;
  v3 = objc_opt_class();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___CPLGetAccountDSID_block_invoke_2;
  v27[3] = &unk_1E861B528;
  v27[4] = &v28;
  [CPLCallObserver observeSyncCallOn:v3 selector:&sel_new block:v27];
  v4 = v29[5];
  if (v4)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__2938;
    v25 = __Block_byref_object_dispose__2939;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___CPLGetAccountDSID_block_invoke_122;
    v20[3] = &unk_1E861EC08;
    v20[4] = &v21;
    v20[5] = &v28;
    [CPLCallObserver observeSyncCallOn:v4 selector:sel_aa_primaryAppleAccount block:v20];
    v5 = v22[5];
    if (v5)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__2938;
      v18 = __Block_byref_object_dispose__2939;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___CPLGetAccountDSID_block_invoke_2_128;
      v13[3] = &unk_1E861EC08;
      v13[4] = &v14;
      v13[5] = &v21;
      [CPLCallObserver observeSyncCallOn:v5 selector:sel_aa_personID block:v13];
      v6 = v15[5];
      v7 = *(a1 + 32);
      if (v6)
      {
        (*(v7 + 16))(v7, v6, 0);
      }

      else
      {
        v12 = [CPLErrors cplErrorWithCode:150 description:@"No DSID attached to primary Apple Account"];
        (*(v7 + 16))(v7, 0, v12);
      }

      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = [CPLErrors cplErrorWithCode:28 description:@"Could not find primary Apple Account"];
      (*(v10 + 16))(v10, 0, v11);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [CPLErrors cplErrorWithCode:150 description:@"Failed to get Account Store"];
    (*(v8 + 16))(v8, 0, v9);
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t ___CPLGetAccountDSID_block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t ___CPLGetAccountDSID_block_invoke_122(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) aa_primaryAppleAccount];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t ___CPLGetAccountDSID_block_invoke_2_128(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) aa_personID];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

@end
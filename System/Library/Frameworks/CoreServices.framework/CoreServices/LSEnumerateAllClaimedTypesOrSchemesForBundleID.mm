@interface LSEnumerateAllClaimedTypesOrSchemesForBundleID
@end

@implementation LSEnumerateAllClaimedTypesOrSchemesForBundleID

void ___LSEnumerateAllClaimedTypesOrSchemesForBundleID_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _LSClaimGet(**(a1 + 40), a3);
  if (v4)
  {
    v5 = v4;
    if ((*(a1 + 48) & *(v4 + 14)) != 0)
    {
      if (*(v4 + 68))
      {
        if (*(a1 + 52) != 1 || (v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = ___LSEnumerateAllClaimedTypesOrSchemesForBundleID_block_invoke_2, v11[3] = &unk_1E6A1B1D8, v6 = *(a1 + 40), v12 = *(a1 + 32), v13 = v5, _LSEnumerateClaimedTypes(v6, v5, v11), v12, (*(a1 + 52) & 1) == 0))
        {
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = ___LSEnumerateAllClaimedTypesOrSchemesForBundleID_block_invoke_3;
          v8[3] = &unk_1E6A1B1D8;
          v7 = *(a1 + 40);
          v9 = *(a1 + 32);
          v10 = v5;
          _LSEnumerateClaimedSchemes(v7, v5, v8);
        }
      }
    }
  }
}

@end
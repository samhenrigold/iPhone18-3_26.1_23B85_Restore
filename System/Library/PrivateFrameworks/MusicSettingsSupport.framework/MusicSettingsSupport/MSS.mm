@interface MSS
@end

@implementation MSS

void ___MSS_resolvedSpecifiers_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  v13 = v5;
  if (objc_opt_isKindOfClass())
  {
    v29[0] = v5;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = ___MSS_resolvedSpecifiers_block_invoke_3;
        v14[3] = &unk_2799262E0;
        v15 = *(a1 + 32);
        v16 = *(a1 + 40);
        v17 = &v22;
        [v10 enumerateKeysAndObjectsUsingBlock:v14];
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = v23[5];
  if (v11)
  {
    _MSS_setValue_forSpecifier_key(*(a1 + 32), v11, *(a1 + 40), v12);
  }

  _Block_object_dispose(&v22, 8);
}

void ___MSS_resolvedSpecifiers_block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a3;
  hasMusicRequiredCapabilities_specifier = _MSS_hasMusicRequiredCapabilities_specifier(v8, v10, v9);
  v12 = [v10 objectForKey:*MEMORY[0x277D400A0]];

  if (!v12)
  {
    if (!hasMusicRequiredCapabilities_specifier)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (hasMusicRequiredCapabilities_specifier && (SystemHasCapabilities() & 1) != 0)
  {
LABEL_6:
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }

LABEL_7:
}

void ___MSS__hasMusicRequiredCapabilities_specifier_block_invoke(void *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = _MSS_valueForRequirementKey_specifier(a1[4], a2, a1[5]);
  v6 = v5;
  v7 = *(a1[6] + 8);
  if (*(v7 + 24) == 1)
  {
    v8 = [v5 isEqual:v9];
    v7 = *(a1[6] + 8);
  }

  else
  {
    v8 = 0;
  }

  *(v7 + 24) = v8;
}

@end
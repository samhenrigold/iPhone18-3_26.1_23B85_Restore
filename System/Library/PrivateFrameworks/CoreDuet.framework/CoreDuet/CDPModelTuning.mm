@interface CDPModelTuning
@end

@implementation CDPModelTuning

unint64_t __43___CDPModelTuning__testModelWithThreshold___block_invoke_2(uint64_t a1, float a2)
{
  v2 = vcvtms_s32_f32((a2 - *(a1 + 40)) / *(a1 + 44));
  if (*(a1 + 32) - 1 >= v2)
  {
    return v2;
  }

  else
  {
    return *(a1 + 32) - 1;
  }
}

void __43___CDPModelTuning__testModelWithThreshold___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v22 = 0;
  [*(*(a1 + 32) + 40) getEmail:&v22 emailLength:&v21 atIndex:a2];
  v4 = objc_opt_class();
  v6 = v21;
  v5 = v22;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43___CDPModelTuning__testModelWithThreshold___block_invoke_4;
  v11[3] = &unk_1E73685A0;
  v7 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v14 = a2;
  v15 = v21;
  v8 = *(a1 + 56);
  v16 = v22;
  v17 = v8;
  v9 = v7;
  v18 = *(a1 + 64);
  v20 = *(a1 + 88);
  v19 = *(a1 + 80);
  v10 = *(a1 + 48);
  v12 = v9;
  v13 = v10;
  [v4 _enumerateSubsetsOfSet:v5 setLength:v6 withSize:2 callback:v11];
}

void __43___CDPModelTuning__testModelWithThreshold___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(*(a1 + 32) + 40) _newPredictionResultWithSeed:a2 seedLength:a3 realSeedLength:a3 maxTrainingEmailID:(*(a1 + 56) - 1)];
  v7 = *(a1 + 64) - a3;
  v8 = [objc_opt_class() _newSetDifference:*(a1 + 72) setLength:*(a1 + 64) subset:a2 subsetLength:a3];
  v9 = malloc_type_calloc(*(a1 + 80), 4uLL, 0x100004052888210uLL);
  if (v7 >= 1)
  {
    v10 = v8;
    do
    {
      v11 = *v10++;
      v12 = (*(*(a1 + 40) + 16))(v6[4 * v11 + 1]);
      v9[v12] = v9[v12] + 1.0;
    }

    while (v10 < &v8[v7]);
  }

  [objc_opt_class() _cumulativeSumOfArray:v9 size:*(a1 + 80) reverse:1];
  [objc_opt_class() _addArray:v9 size:*(a1 + 80) inArray:*(a1 + 88)];
  free(v9);
  free(v8);
  v13 = malloc_type_calloc(*(a1 + 80), 4uLL, 0x100004052888210uLL);
  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = 0;
    v16 = v6 + 1;
    do
    {
      if (*v16 >= 0.0)
      {
        if (*v16 >= *(a1 + 112))
        {
          v17 = (*(*(a1 + 40) + 16))();
          v13[v17] = v13[v17] + 1.0;
          v14 = *(a1 + 96);
        }

        else
        {
          *v13 = *v13 + 1.0;
        }
      }

      ++v15;
      v16 += 4;
    }

    while (v14 > v15);
  }

  [objc_opt_class() _cumulativeSumOfArray:v13 size:*(a1 + 80) reverse:1];
  [objc_opt_class() _addArray:v13 size:*(a1 + 80) inArray:*(a1 + 104)];
  free(v13);
  free(v6);
  *(*(*(a1 + 48) + 8) + 24) += v7;
}

@end
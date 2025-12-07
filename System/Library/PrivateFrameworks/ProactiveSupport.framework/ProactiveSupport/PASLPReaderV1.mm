@interface PASLPReaderV1
@end

@implementation PASLPReaderV1

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a2];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_2(uint64_t a1, int a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:a2];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a2];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_4(uint64_t a1, float a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v5 = a2;
  *(*(*(a1 + 32) + 8) + 40) = [v4 initWithFloat:v5];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_5(uint64_t a1, double a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a2];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_6(uint64_t a1, double a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a2];

  return MEMORY[0x1EEE66BB8]();
}

void __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E695DEF0]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_8;
  v11[3] = &unk_1E77F1700;
  v12 = *(a1 + 32);
  v7 = [v6 initWithBytesNoCopy:a2 length:a3 deallocator:v11];
  v8 = [v7 _pas_dataWithNonnullBytes];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_9(void *a1, char *a2)
{
  v3 = [(_PASLPReaderV1 *)a1[4] _stringForMappedUTF8CString:a2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = @"String table contains non-UTF-8 content";
  }
}

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_10(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = [[_PASLPDictionary alloc] initWithLazyPlistReader:*(a1 + 32) context:[[_PASLPDictionaryContext alloc] initWithStorage:a2 count:a3]];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_opt_new();
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __41___PASLPReaderV1__objectForValue_errMsg___block_invoke_11(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = [[_PASLPArray alloc] initWithLazyPlistReader:*(a1 + 32) context:[[_PASLPArrayContext alloc] initWithStorage:a2 count:a3]];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_opt_new();
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52___PASLPReaderV1_keyAtIndex_usingDictionaryContext___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

uint64_t __64___PASLPReaderV1__decodeDictionaryKeyValue_errMsg_handleString___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *(*(*(result + 40) + 8) + 24) = a3;
  }

  else
  {
    **(result + 48) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Dictionary key 0x%lx at ofs 0x%lx points to byte offset outside of string table", *(result + 56), *(result + 60)];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

int64x2_t __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = a3;
  result = vaddq_s64(v3[4], v4);
  v3[4] = result;
  return result;
}

void __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_9(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v3 = *(a1 + 64);
  v4 = a3;
  v5.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v5.i64[1] = a3;
  v3[6] = vaddq_s64(v3[6], v5);
  v3[3].i64[1] += a3;
  if (a3)
  {
    v7 = 0;
    v8 = a2 << 32;
    v31 = a3;
    v9 = a2;
    do
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *v9++;
      v12 = *(a1 + 32);
      v13 = v8 - (*(v12 + 16) << 32);
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v14 = *(*(a1 + 48) + 8);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_10;
      v32[3] = &unk_1E77F1598;
      v32[4] = &v33;
      if (([(_PASLPReaderV1 *)v12 _decodeDictionaryKeyValue:(v14 + 40) errMsg:v32 handleString:?]& 1) == 0)
      {
        goto LABEL_12;
      }

      v15 = v34[3];
      if (!v15)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"_PASLPReaderV1.m" lineNumber:716 description:{@"Invalid parameter not satisfying: %@", @"next"}];

        v15 = v34[3];
      }

      if (v15 <= v7)
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          v18 = (a2 - *(v17 + 16));
        }

        else
        {
          v18 = 0;
        }

        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"dictionary keys in [0x%lx, 0x%lx are non-sorted or contain duplicates"], v18, v18 + 4 * v31);
        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

LABEL_12:
        *(*(*(a1 + 56) + 8) + 24) = 0;
        _Block_object_dispose(&v33, 8);
        objc_autoreleasePoolPop(v10);
        return;
      }

      _Block_object_dispose(&v33, 8);
      objc_autoreleasePoolPop(v10);
      v8 += 0x400000000;
      v7 = v15;
      --v4;
    }

    while (v4);
    v22 = &a2[v31];
    v23 = v31 - 1;
    v24 = (v31 << 34) + (a2 << 32);
    do
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *v22++;
      *(*(*(a1 + 56) + 8) + 24) = [(_PASLPReaderV1 *)*(a1 + 32) _validateObjectGraphWithFilename:v24 - (*(*(a1 + 32) + 16) << 32) + v26 rootValue:*(a1 + 80) + 1 recursionDepth:*(a1 + 64) stats:*(a1 + 88) error:?];
      v27 = *(*(*(a1 + 56) + 8) + 24);
      objc_autoreleasePoolPop(v25);
      v29 = v23-- != 0;
      if (v27 != 1)
      {
        break;
      }

      v24 += 0x400000000;
    }

    while (v29);
  }
}

uint64_t __88___PASLPReaderV1__validateObjectGraphWithFilename_rootValue_recursionDepth_stats_error___block_invoke_11(uint64_t result, unsigned int *a2, unsigned int a3)
{
  v3.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v3.i64[1] = a3;
  *(*(result + 56) + 80) = vaddq_s64(*(*(result + 56) + 80), v3);
  if (a3)
  {
    v4 = a2;
    v5 = result;
    v6 = a3 - 1;
    v7 = a2 << 32;
    do
    {
      v8 = *v4++;
      result = [(_PASLPReaderV1 *)*(v5 + 32) _validateObjectGraphWithFilename:v7 - (*(*(v5 + 32) + 16) << 32) + v8 rootValue:*(v5 + 64) + 1 recursionDepth:*(v5 + 56) stats:*(v5 + 72) error:?];
      *(*(*(v5 + 48) + 8) + 24) = result;
      v10 = v6-- != 0;
      if (*(*(*(v5 + 48) + 8) + 24) != 1)
      {
        break;
      }

      v7 += 0x400000000;
    }

    while (v10);
  }

  return result;
}

@end
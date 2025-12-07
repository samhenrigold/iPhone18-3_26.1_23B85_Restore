void sub_260D6A258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AWDProactiveModelFittingEvaluationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_49;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_49:
          *(a1 + 8) = v21;
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingModelInfo);
          objc_storeStrong((a1 + 32), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingModelInfoReadFrom(v14, a2))
          {
LABEL_52:

            return 0;
          }

          goto LABEL_34;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(AWDProactiveModelFittingMinibatchStats);
            objc_storeStrong((a1 + 24), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingMinibatchStatsReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

            goto LABEL_34;
          case 4:
            v14 = objc_alloc_init(AWDProactiveModelFittingEvalMetrics);
            objc_storeStrong((a1 + 16), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingEvalMetricsReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

            goto LABEL_34;
          case 5:
            v14 = objc_alloc_init(AWDProactiveModelFittingPrecisionAtKPair);
            [a1 addPrecisionAtK:v14];
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingPrecisionAtKPairReadFrom(v14, a2))
            {
              goto LABEL_52;
            }

LABEL_34:
            PBReaderRecallMark();

            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingLogRegWeightsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(AWDProactiveModelFittingSparseFloatVector);
            objc_storeStrong((a1 + 48), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingSparseFloatVectorReadFrom(v14, a2))
            {
LABEL_75:

              return 0;
            }

            goto LABEL_58;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(AWDProactiveModelFittingMinibatchStats);
            objc_storeStrong((a1 + 32), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingMinibatchStatsReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            goto LABEL_58;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              LOBYTE(v32) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v32 & 0x7F) << v15;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_67;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_67:
            *(a1 + 8) = v21;
            goto LABEL_73;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(AWDProactiveModelFittingModelInfo);
            objc_storeStrong((a1 + 40), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingModelInfoReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

            goto LABEL_58;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingEvalMetrics);
          objc_storeStrong((a1 + 24), v14);
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingEvalMetricsReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          goto LABEL_58;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingQuantizedSparseVector);
          objc_storeStrong((a1 + 56), v14);
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingQuantizedSparseVectorReadFrom(v14, a2))
          {
            goto LABEL_75;
          }

          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            *(a1 + 72) |= 4u;
            LODWORD(v32) = 0;
            v22 = [a2 position] + 4;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v27 = v32;
            v28 = 68;
            goto LABEL_72;
          case 8:
            *(a1 + 72) |= 2u;
            LODWORD(v32) = 0;
            v24 = [a2 position] + 4;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v27 = v32;
            v28 = 64;
LABEL_72:
            *(a1 + v28) = v27;
            goto LABEL_73;
          case 9:
            v14 = objc_alloc_init(AWDProactiveModelFittingQuantizedDenseVector);
            objc_storeStrong((a1 + 16), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingQuantizedDenseVectorReadFrom(v14, a2))
            {
              goto LABEL_75;
            }

LABEL_58:
            PBReaderRecallMark();

            goto LABEL_73;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_260D6F1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__297(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AWDProactiveModelFittingLinRegObjectiveFeaturesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v32) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v32 & 0x7F) << v17;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_58;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_58:
            *(a1 + 8) = v23;
            goto LABEL_64;
          case 2:
            v14 = objc_alloc_init(AWDProactiveModelFittingModelInfo);
            objc_storeStrong((a1 + 32), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingModelInfoReadFrom(v14, a2))
            {
LABEL_66:

              return 0;
            }

            goto LABEL_54;
          case 3:
            v14 = objc_alloc_init(AWDProactiveModelFittingSparseFloatVector);
            objc_storeStrong((a1 + 40), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingSparseFloatVectorReadFrom(v14, a2))
            {
              goto LABEL_66;
            }

            goto LABEL_54;
        }
      }

      else if (v13 > 6)
      {
        if (v13 == 7)
        {
          *(a1 + 56) |= 4u;
          LODWORD(v32) = 0;
          v24 = [a2 position] + 4;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v27 = v32;
          v28 = 20;
          goto LABEL_63;
        }

        if (v13 == 8)
        {
          *(a1 + 56) |= 2u;
          LODWORD(v32) = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v27 = v32;
          v28 = 16;
LABEL_63:
          *(a1 + v28) = v27;
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingMinibatchStats);
          objc_storeStrong((a1 + 24), v14);
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingMinibatchStatsReadFrom(v14, a2))
          {
            goto LABEL_66;
          }

          goto LABEL_54;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingQuantizedSparseVector);
          objc_storeStrong((a1 + 48), v14);
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingQuantizedSparseVectorReadFrom(v14, a2))
          {
            goto LABEL_66;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingQuantizedSparseVectorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v58) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          if (v13 != 2)
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v58 & 0x7F) << v41;
              if ((v58 & 0x80) == 0)
              {
                goto LABEL_93;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                goto LABEL_94;
              }
            }
          }

          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v34 = [a2 position];
            if (v34 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_70;
            }

            v35 = 0;
            v36 = 0;
            v37 = 0;
            while (1)
            {
              v60 = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v60 & 0x7F) << v35;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                goto LABEL_67;
              }
            }

            [a2 hasError];
LABEL_67:
            PBRepeatedUInt32Add();
          }
        }

        if (v14 == 2)
        {
          if (v13 != 2)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            while (1)
            {
              LOBYTE(v58) = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v58 & 0x7F) << v47;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                goto LABEL_94;
              }
            }

LABEL_93:
            [a2 hasError];
LABEL_94:
            PBRepeatedUInt32Add();
            goto LABEL_100;
          }

          v58 = 0;
          v59 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v18 = [a2 position];
            if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v19 = 0;
            v20 = 0;
            v21 = 0;
            while (1)
            {
              v60 = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v60 & 0x7F) << v19;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                goto LABEL_40;
              }
            }

            [a2 hasError];
LABEL_40:
            PBRepeatedUInt32Add();
          }

LABEL_70:
          PBReaderRecallMark();
          goto LABEL_100;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v58) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v58 & 0x7F) << v25;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v31 = 0;
                goto LABEL_74;
              }
            }

            if ([a2 hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_74:
            *(a1 + 60) = v31;
            goto LABEL_100;
          case 4:
            *(a1 + 68) |= 4u;
            LODWORD(v58) = 0;
            v32 = [a2 position] + 4;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 4, v33 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v58 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v54 = v58;
            v55 = 64;
            goto LABEL_99;
          case 5:
            *(a1 + 68) |= 1u;
            LODWORD(v58) = 0;
            v15 = [a2 position] + 4;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
            {
              v56 = [a2 data];
              [v56 getBytes:&v58 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v54 = v58;
            v55 = 56;
LABEL_99:
            *(a1 + v55) = v54;
            goto LABEL_100;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_100:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingModelInfoStatsPairReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(AWDProactiveModelFittingModelInfo);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !AWDProactiveModelFittingModelInfoReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(AWDProactiveModelFittingMinibatchStats);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !AWDProactiveModelFittingMinibatchStatsReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_260D74438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__697(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t AWDProactiveModelFittingLinRegFeatureMatrixReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v32) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v32) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v32 & 0x7F) << v17;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_58;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_58:
            *(a1 + 8) = v23;
            goto LABEL_64;
          case 2:
            v14 = objc_alloc_init(AWDProactiveModelFittingModelInfo);
            objc_storeStrong((a1 + 32), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingModelInfoReadFrom(v14, a2))
            {
LABEL_66:

              return 0;
            }

            goto LABEL_54;
          case 3:
            v14 = objc_alloc_init(AWDProactiveModelFittingSparseFloatMatrix);
            objc_storeStrong((a1 + 40), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingSparseFloatMatrixReadFrom(v14, a2))
            {
              goto LABEL_66;
            }

            goto LABEL_54;
        }
      }

      else if (v13 > 7)
      {
        if (v13 == 8)
        {
          *(a1 + 56) |= 4u;
          LODWORD(v32) = 0;
          v24 = [a2 position] + 4;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v27 = v32;
          v28 = 20;
          goto LABEL_63;
        }

        if (v13 == 9)
        {
          *(a1 + 56) |= 2u;
          LODWORD(v32) = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v27 = v32;
          v28 = 16;
LABEL_63:
          *(a1 + v28) = v27;
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingMinibatchStats);
          objc_storeStrong((a1 + 24), v14);
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingMinibatchStatsReadFrom(v14, a2))
          {
            goto LABEL_66;
          }

          goto LABEL_54;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingQuantizedSparseMatrix);
          objc_storeStrong((a1 + 48), v14);
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingQuantizedSparseMatrixReadFrom(v14, a2))
          {
            goto LABEL_66;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingSparseFloatVectorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v44) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v44 & 0x7F) << v27;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_59:
        *(a1 + 56) = v33;
        goto LABEL_76;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        if (v13 != 2)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            LOBYTE(v44) = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v44 & 0x7F) << v36;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              goto LABEL_73;
            }
          }

          [a2 hasError];
LABEL_73:
          PBRepeatedUInt64Add();
          goto LABEL_76;
        }

        v44 = 0;
        v45 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v16 = [a2 position];
          if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v46) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v46 & 0x7F) << v17;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              goto LABEL_34;
            }
          }

          [a2 hasError];
LABEL_34:
          PBRepeatedUInt64Add();
        }

LABEL_55:
        PBReaderRecallMark();
        goto LABEL_76;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_76:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 != 2)
    {
      LODWORD(v44) = 0;
      v34 = [a2 position] + 4;
      if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
      {
        v42 = [a2 data];
        [v42 getBytes:&v44 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      PBRepeatedFloatAdd();
      goto LABEL_76;
    }

    v44 = 0;
    v45 = 0;
    result = PBReaderPlaceMark();
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v23 = [a2 position];
      if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        break;
      }

      v46 = 0;
      v24 = [a2 position] + 4;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 4, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v46 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      PBRepeatedFloatAdd();
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

void sub_260D77E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D7832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1041(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260D78CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D79080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D79B08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_260D79CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D7BCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D7C60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_260D7CB6C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_260D7D43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_260D7DDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D7E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D7EE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D7F228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveModelFittingSparseFloatMatrixReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v64 & 0x7F) << v5;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          if (v13 != 2)
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            while (1)
            {
              LOBYTE(v64) = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                v59 = [a2 data];
                [v59 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v64 & 0x7F) << v54;
              if ((v64 & 0x80) == 0)
              {
                goto LABEL_110;
              }

              v54 += 7;
              v11 = v55++ >= 9;
              if (v11)
              {
                goto LABEL_111;
              }
            }
          }

          v64 = 0;
          v65 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v40 = [a2 position];
            if (v40 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_80;
            }

            v41 = 0;
            v42 = 0;
            v43 = 0;
            while (1)
            {
              LOBYTE(v66) = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v66 & 0x7F) << v41;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                goto LABEL_79;
              }
            }

            [a2 hasError];
LABEL_79:
            PBRepeatedUInt64Add();
          }
        }

        if (v14 == 2)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 96) |= 1u;
          while (1)
          {
            LOBYTE(v64) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v64 & 0x7F) << v20;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_90:
          v47 = 80;
          goto LABEL_91;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            if (v13 != 2)
            {
              v48 = 0;
              v49 = 0;
              v50 = 0;
              while (1)
              {
                LOBYTE(v64) = 0;
                v51 = [a2 position] + 1;
                if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
                {
                  v53 = [a2 data];
                  [v53 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v50 |= (v64 & 0x7F) << v48;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v48 += 7;
                v11 = v49++ >= 9;
                if (v11)
                {
                  goto LABEL_111;
                }
              }

LABEL_110:
              [a2 hasError];
LABEL_111:
              PBRepeatedUInt64Add();
              goto LABEL_117;
            }

            v64 = 0;
            v65 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v27 = [a2 position];
              if (v27 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v28 = 0;
              v29 = 0;
              v30 = 0;
              while (1)
              {
                LOBYTE(v66) = 0;
                v31 = [a2 position] + 1;
                if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
                {
                  v33 = [a2 data];
                  [v33 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v30 |= (v66 & 0x7F) << v28;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v28 += 7;
                v11 = v29++ >= 9;
                if (v11)
                {
                  goto LABEL_55;
                }
              }

              [a2 hasError];
LABEL_55:
              PBRepeatedUInt64Add();
            }

LABEL_80:
            PBReaderRecallMark();
            goto LABEL_117;
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v64 & 0x7F) << v34;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v26 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v36;
            }

LABEL_86:
            v47 = 88;
LABEL_91:
            *(a1 + v47) = v26;
            goto LABEL_117;
          case 5:
            if (v13 != 2)
            {
              LODWORD(v64) = 0;
              v60 = [a2 position] + 4;
              if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
              {
                v62 = [a2 data];
                [v62 getBytes:&v64 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
              goto LABEL_117;
            }

            v64 = 0;
            v65 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v16 = [a2 position];
              if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v66 = 0;
              v17 = [a2 position] + 4;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v66 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
            }

            goto LABEL_80;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_117:
      v63 = [a2 position];
    }

    while (v63 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingQuantizedSparseMatrixReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v78) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v78 & 0x7F) << v5;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v14)
        {
          case 1:
            if (v13 != 2)
            {
              v55 = 0;
              v56 = 0;
              v57 = 0;
              while (1)
              {
                LOBYTE(v78) = 0;
                v58 = [a2 position] + 1;
                if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
                {
                  v60 = [a2 data];
                  [v60 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v57 |= (v78 & 0x7F) << v55;
                if ((v78 & 0x80) == 0)
                {
                  goto LABEL_134;
                }

                v55 += 7;
                v11 = v56++ >= 9;
                if (v11)
                {
                  goto LABEL_135;
                }
              }
            }

            v78 = 0;
            v79 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v32 = [a2 position];
              if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v33 = 0;
              v34 = 0;
              v35 = 0;
              while (1)
              {
                v80 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v80 & 0x7F) << v33;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  goto LABEL_73;
                }
              }

              [a2 hasError];
LABEL_73:
              PBRepeatedUInt32Add();
            }

LABEL_74:
            PBReaderRecallMark();
            goto LABEL_141;
          case 2:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              LOBYTE(v78) = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v78 & 0x7F) << v48;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v45 = 0;
                goto LABEL_105;
              }
            }

            if ([a2 hasError])
            {
              v45 = 0;
            }

            else
            {
              v45 = v50;
            }

LABEL_105:
            v54 = 84;
            goto LABEL_106;
          case 3:
            if (v13 != 2)
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              while (1)
              {
                LOBYTE(v78) = 0;
                v70 = [a2 position] + 1;
                if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
                {
                  v72 = [a2 data];
                  [v72 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v69 |= (v78 & 0x7F) << v67;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                v11 = v68++ >= 9;
                if (v11)
                {
                  goto LABEL_135;
                }
              }

LABEL_134:
              [a2 hasError];
LABEL_135:
              PBRepeatedUInt32Add();
              goto LABEL_141;
            }

            v78 = 0;
            v79 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v23 = [a2 position];
              if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_74;
              }

              v24 = 0;
              v25 = 0;
              v26 = 0;
              while (1)
              {
                v80 = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v80 & 0x7F) << v24;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  goto LABEL_53;
                }
              }

              [a2 hasError];
LABEL_53:
              PBRepeatedUInt32Add();
            }
        }
      }

      else if (v14 > 5)
      {
        if (v14 == 6)
        {
          *(a1 + 96) |= 4u;
          LODWORD(v78) = 0;
          v46 = [a2 position] + 4;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 4, v47 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v78 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v74 = v78;
          v75 = 88;
          goto LABEL_140;
        }

        if (v14 == 7)
        {
          *(a1 + 96) |= 1u;
          LODWORD(v78) = 0;
          v30 = [a2 position] + 4;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
          {
            v76 = [a2 data];
            [v76 getBytes:&v78 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v74 = v78;
          v75 = 80;
LABEL_140:
          *(a1 + v75) = v74;
          goto LABEL_141;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 96) |= 8u;
          while (1)
          {
            LOBYTE(v78) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v78 & 0x7F) << v39;
            if ((v78 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v45 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v45 = 0;
          }

          else
          {
            v45 = v41;
          }

LABEL_101:
          v54 = 92;
LABEL_106:
          *(a1 + v54) = v45;
          goto LABEL_141;
        }

        if (v14 == 5)
        {
          if (v13 != 2)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            while (1)
            {
              LOBYTE(v78) = 0;
              v64 = [a2 position] + 1;
              if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
              {
                v66 = [a2 data];
                [v66 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v63 |= (v78 & 0x7F) << v61;
              if ((v78 & 0x80) == 0)
              {
                goto LABEL_134;
              }

              v61 += 7;
              v11 = v62++ >= 9;
              if (v11)
              {
                goto LABEL_135;
              }
            }
          }

          v78 = 0;
          v79 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_74;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              v80 = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v80 & 0x7F) << v17;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                goto LABEL_35;
              }
            }

            [a2 hasError];
LABEL_35:
            PBRepeatedUInt32Add();
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_141:
      v77 = [a2 position];
    }

    while (v77 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t internChunk(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 count];
  [v3 addObject:v4];

  v6 = MEMORY[0x277CCABB0];

  return [v6 numberWithUnsignedInteger:v5];
}

id arrayFromFloats(int *a1, unsigned int a2)
{
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
  if (a2 >= 1)
  {
    v6 = a2;
    do
    {
      v7 = *a1++;
      LODWORD(v5) = v7;
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
      [v4 addObject:v8];

      --v6;
    }

    while (v6);
  }

  return v4;
}

id PMLBuildChunkFile(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 toPlistWithChunks:v2];

  if (v3)
  {
    v4 = [PMLDataChunkPlist chunkWithPlist:v3];
    if (v4)
    {
      [v2 addObject:v4];
    }
  }

  v5 = [PMLDataChunk serializeChunks:v2];

  return v5;
}

void PMLWriteChunkFile(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = PMLBuildChunkFile(v6);
  [v5 writeToFile:v3 atomically:1];

  objc_autoreleasePoolPop(v4);
}

id PMLReadChunkFile(uint64_t a1, objc_class *a2, void *a3)
{
  v5 = a3;
  v6 = [PMLDataChunk chunksFromFileAtPath:a1];
  v7 = loadChunkFileChunks(v6, a2, v5);

  return v7;
}

id loadChunkFileChunks(void *a1, objc_class *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 lastObject];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 plist];
    if (v8)
    {
      v9 = [[a2 alloc] initWithPlist:v8 chunks:v5 context:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id PMLReadChunkData(uint64_t a1, objc_class *a2, void *a3)
{
  v5 = a3;
  v6 = [PMLDataChunk chunksFromData:a1];
  v7 = loadChunkFileChunks(v6, a2, v5);

  return v7;
}

void sub_260D86A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ixvalCompareIndex(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

char *appendIxval(unint64_t *a1, uint64_t a2, float a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1 >= v7)
  {
    v9 = v7 + (v7 >> 1);
    if (v9 <= 8)
    {
      v9 = 8;
    }

    a1[1] = v9;
    result = reallocf(a1[2], 16 * v9);
    a1[2] = result;
    v6 = *a1;
  }

  else
  {
    result = a1[2];
  }

  *a1 = v6 + 1;
  v10 = &result[16 * v6];
  *v10 = a2;
  *(v10 + 2) = a3;
  return result;
}

void sub_260D86EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveModelFittingModelInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_279AC01D0[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void migrateSessionsToFloats(uint64_t a1, void *a2)
{
  v2 = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __migrateSessionsToFloats_block_invoke;
  v4[3] = &unk_279AC0280;
  v5 = v2;
  v3 = v2;
  [v3 prepAndRunQuery:@"SELECT id onPrep:covariatesValues FROM sessions" onRow:0 onError:{v4, &__block_literal_global_404}];
}

uint64_t __migrateSessionsToFloats_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = [v3 getInt64ForColumn:0];
  v4 = [v3 getNSDataForColumn:1];
  v5 = [v4 bytes];
  v6 = [v4 length];
  v7 = v6 >> 3;
  v8 = malloc_type_malloc(4 * (v6 >> 3), 0x100004052888210uLL);
  if (v6 >= 8)
  {
    v9 = v8;
    do
    {
      v10 = *v5++;
      v11 = v10;
      *v9++ = v11;
      --v7;
    }

    while (v7);
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__2082;
  v16[4] = __Block_byref_object_dispose__2083;
  v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:4 * (v6 >> 3) freeWhenDone:1];
  v12 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __migrateSessionsToFloats_block_invoke_395;
  v15[3] = &unk_279AC0218;
  v15[4] = v16;
  v15[5] = v18;
  [v12 prepAndRunQuery:@"UPDATE sessions SET covariatesValues = :data WHERE id = :rowId" onPrep:v15 onRow:&__block_literal_global_2084 onError:&__block_literal_global_402];
  v13 = MEMORY[0x277D42690];
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
  return *v13;
}

void sub_260D894A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2082(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __migrateSessionsToFloats_block_invoke_395(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v4 bindNamedParam:":data" toNSData:v3];
  [v4 bindNamedParam:":rowId" toInt64:*(*(*(a1 + 40) + 8) + 24)];
}

void sub_260D899A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveModelFittingEvalMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v65) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v65 & 0x7F) << v5;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v14 > 2)
        {
          if (v14 == 3)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 100) |= 8u;
            while (1)
            {
              LOBYTE(v65) = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v65 & 0x7F) << v34;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v25 = 0;
                goto LABEL_106;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v36;
            }

LABEL_106:
            v55 = 80;
            goto LABEL_111;
          }

          if (v14 == 4)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              LOBYTE(v65) = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v65 & 0x7F) << v19;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                v25 = 0;
                goto LABEL_98;
              }
            }

            if ([a2 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_98:
            v55 = 72;
            goto LABEL_111;
          }
        }

        else
        {
          if (v14 == 1)
          {
            *(a1 + 100) |= 0x20u;
            LODWORD(v65) = 0;
            v32 = [a2 position] + 4;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 4, v33 <= objc_msgSend(a2, "length")))
            {
              v61 = [a2 data];
              [v61 getBytes:&v65 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v59 = v65;
            v60 = 92;
            goto LABEL_121;
          }

          if (v14 == 2)
          {
            *(a1 + 100) |= 0x10u;
            LODWORD(v65) = 0;
            v17 = [a2 position] + 4;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v65 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v59 = v65;
            v60 = 88;
            goto LABEL_121;
          }
        }
      }

      else if (v14 <= 6)
      {
        if (v14 == 5)
        {
          v45 = 0;
          v46 = 0;
          v47 = 0;
          *(a1 + 100) |= 2u;
          while (1)
          {
            LOBYTE(v65) = 0;
            v48 = [a2 position] + 1;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v47 |= (v65 & 0x7F) << v45;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v45 += 7;
            v11 = v46++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_110;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v47;
          }

LABEL_110:
          v55 = 64;
          goto LABEL_111;
        }

        if (v14 == 6)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 100) |= 1u;
          while (1)
          {
            LOBYTE(v65) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v65 & 0x7F) << v26;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_102;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v28;
          }

LABEL_102:
          v55 = 56;
LABEL_111:
          *(a1 + v55) = v25;
          goto LABEL_124;
        }
      }

      else
      {
        switch(v14)
        {
          case 7:
            if (v13 != 2)
            {
              goto LABEL_112;
            }

            v65 = 0;
            v66 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v41 = [a2 position];
              if (v41 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v67 = 0;
              v42 = [a2 position] + 4;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 4, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v67 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
            }

LABEL_94:
            PBReaderRecallMark();
            goto LABEL_124;
          case 8:
            if (v13 != 2)
            {
LABEL_112:
              LODWORD(v65) = 0;
              v56 = [a2 position] + 4;
              if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 4, v57 <= objc_msgSend(a2, "length")))
              {
                v63 = [a2 data];
                [v63 getBytes:&v65 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
              goto LABEL_124;
            }

            v65 = 0;
            v66 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v51 = [a2 position];
              if (v51 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v67 = 0;
              v52 = [a2 position] + 4;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 4, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v67 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
            }

            goto LABEL_94;
          case 9:
            *(a1 + 100) |= 0x40u;
            LODWORD(v65) = 0;
            v15 = [a2 position] + 4;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
            {
              v62 = [a2 data];
              [v62 getBytes:&v65 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v59 = v65;
            v60 = 96;
LABEL_121:
            *(a1 + v60) = v59;
            goto LABEL_124;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_124:
      v64 = [a2 position];
    }

    while (v64 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_260D8CCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPFLPrivatizeSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PrivateFederatedLearningLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PrivateFederatedLearningLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279AC0328;
    v7 = 0;
    PrivateFederatedLearningLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PrivateFederatedLearningLibraryCore_frameworkLibrary;
  if (!PrivateFederatedLearningLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PrivateFederatedLearningLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"PMLSeparatedDPNoiseStrategy.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PFLPrivatize");
  *(*(a1[4] + 8) + 24) = result;
  getPFLPrivatizeSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __PrivateFederatedLearningLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PrivateFederatedLearningLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_260D8D3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D8D4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260D8FB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 160), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2913(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260D9121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_260D9168C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveModelFittingSessionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v29 = objc_alloc_init(AWDProactiveModelFittingSparseFloatVector);
            objc_storeStrong((a1 + 48), v29);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingSparseFloatVectorReadFrom(v29, a2))
            {
LABEL_79:

              return 0;
            }

            goto LABEL_52;
          case 5:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v40 & 0x7F) << v30;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v32;
            }

LABEL_73:
            v36 = 16;
            goto LABEL_74;
          case 6:
            *(a1 + 56) |= 8u;
            LODWORD(v40) = 0;
            v21 = [a2 position] + 4;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v40 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 32) = v40;
            goto LABEL_77;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 4u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v40 & 0x7F) << v23;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_65;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_65:
            v36 = 24;
            goto LABEL_74;
          case 2:
            v29 = objc_alloc_init(AWDProactiveModelFittingModelInfo);
            objc_storeStrong((a1 + 40), v29);
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingModelInfoReadFrom(v29, a2))
            {
              goto LABEL_79;
            }

LABEL_52:
            PBReaderRecallMark();

            goto LABEL_77;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v40 & 0x7F) << v14;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_69:
            v36 = 8;
LABEL_74:
            *(a1 + v36) = v20;
            goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingLabelSupportPairReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v25 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DescribeTensorDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Printing tensor information for %s", a1];
  [v4 addObject:v5];

  v108 = 0;
  if (e5rt_tensor_desc_dtype_get_num_components())
  {
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v104 objects:v117 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v105;
      do
      {
        v10 = 0;
        do
        {
          if (*v105 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v104 + 1) + 8 * v10);
          v12 = PML_LogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v116 = v11;
            _os_log_fault_impl(&dword_260D68000, v12, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v104 objects:v117 count:16];
      }

      while (v8);
    }

    last_error_message = e5rt_get_last_error_message();
    v14 = PML_LogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v116 = last_error_message;
LABEL_61:
    _os_log_fault_impl(&dword_260D68000, v14, OS_LOG_TYPE_FAULT, "E5RT operation failed with message = %s", buf, 0xCu);
LABEL_62:

    v50 = 0xFFFFFFFFLL;
    goto LABEL_63;
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Num components per element = %u", v108];
  [v4 addObject:v15];

  v103 = 0;
  if (e5rt_tensor_desc_dtype_get_component_dtype())
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v99 objects:v114 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v100;
      do
      {
        v20 = 0;
        do
        {
          if (*v100 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v99 + 1) + 8 * v20);
          v22 = PML_LogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v116 = v21;
            _os_log_fault_impl(&dword_260D68000, v22, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v99 objects:v114 count:16];
      }

      while (v18);
    }

    v23 = e5rt_get_last_error_message();
    v14 = PML_LogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v116 = v23;
    goto LABEL_61;
  }

  [v4 addObject:@"Component data type is UINT"];
  v98 = 0;
  if (e5rt_tensor_desc_dtype_get_component_size())
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v24 = v4;
    v25 = [v24 countByEnumeratingWithState:&v94 objects:v113 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v95;
      do
      {
        v28 = 0;
        do
        {
          if (*v95 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v94 + 1) + 8 * v28);
          v30 = PML_LogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v116 = v29;
            _os_log_fault_impl(&dword_260D68000, v30, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
          }

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v94 objects:v113 count:16];
      }

      while (v26);
    }

    v31 = e5rt_get_last_error_message();
    v14 = PML_LogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v116 = v31;
    goto LABEL_61;
  }

  v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Component size is %zu bytes", v98];
  [v4 addObject:v32];

  v93 = 0;
  if (e5rt_tensor_desc_dtype_get_element_size())
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v33 = v4;
    v34 = [v33 countByEnumeratingWithState:&v89 objects:v112 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v90;
      do
      {
        v37 = 0;
        do
        {
          if (*v90 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v89 + 1) + 8 * v37);
          v39 = PML_LogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v116 = v38;
            _os_log_fault_impl(&dword_260D68000, v39, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
          }

          ++v37;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v89 objects:v112 count:16];
      }

      while (v35);
    }

    v40 = e5rt_get_last_error_message();
    v14 = PML_LogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v116 = v40;
    goto LABEL_61;
  }

  v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Element size is %zu bytes", v93];
  [v4 addObject:v41];

  v88 = 0;
  if (e5rt_tensor_desc_get_rank())
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v42 = v4;
    v43 = [v42 countByEnumeratingWithState:&v84 objects:v111 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v85;
      do
      {
        v46 = 0;
        do
        {
          if (*v85 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v84 + 1) + 8 * v46);
          v48 = PML_LogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v116 = v47;
            _os_log_fault_impl(&dword_260D68000, v48, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
          }

          ++v46;
        }

        while (v44 != v46);
        v44 = [v42 countByEnumeratingWithState:&v84 objects:v111 count:16];
      }

      while (v44);
    }

    v49 = e5rt_get_last_error_message();
    v14 = PML_LogHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_62;
    }

    *buf = 136315138;
    v116 = v49;
    goto LABEL_61;
  }

  v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Tensor rank is %zu", v88];
  [v4 addObject:v52];

  v83 = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v53 = v4;
    v54 = [v53 countByEnumeratingWithState:&v79 objects:v110 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v80;
      do
      {
        v57 = 0;
        do
        {
          if (*v80 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v79 + 1) + 8 * v57);
          v59 = PML_LogHandle();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v116 = v58;
            _os_log_fault_impl(&dword_260D68000, v59, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
          }

          ++v57;
        }

        while (v55 != v57);
        v55 = [v53 countByEnumeratingWithState:&v79 objects:v110 count:16];
      }

      while (v55);
    }

    v60 = e5rt_get_last_error_message();
    v61 = PML_LogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v116 = v60;
      _os_log_fault_impl(&dword_260D68000, v61, OS_LOG_TYPE_FAULT, "E5RT operation failed with message = %s", buf, 0xCu);
    }

    v50 = 0xFFFFFFFFLL;
  }

  else
  {
    v61 = objc_opt_new();
    [v61 appendString:@"Tensor shape is { "];
    v50 = 0;
    [v61 appendString:@"}"];
    [v4 addObject:v61];
    v78 = 0;
    if (e5rt_tensor_desc_get_strides())
    {
      v73 = v61;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v62 = v4;
      v63 = [v62 countByEnumeratingWithState:&v74 objects:v109 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v75;
        do
        {
          v66 = 0;
          do
          {
            if (*v75 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v67 = *(*(&v74 + 1) + 8 * v66);
            v68 = PML_LogHandle();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v116 = v67;
              _os_log_fault_impl(&dword_260D68000, v68, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
            }

            ++v66;
          }

          while (v64 != v66);
          v64 = [v62 countByEnumeratingWithState:&v74 objects:v109 count:16];
        }

        while (v64);
      }

      v69 = e5rt_get_last_error_message();
      v70 = PML_LogHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v116 = v69;
        _os_log_fault_impl(&dword_260D68000, v70, OS_LOG_TYPE_FAULT, "E5RT operation failed with message = %s", buf, 0xCu);
      }

      v50 = 0xFFFFFFFFLL;
      v61 = v73;
    }

    else
    {
      v70 = objc_opt_new();
      [v70 appendString:@"Tensor strides is { "];
      [v70 appendString:@"} \n\n"];
      [v4 addObject:v70];
      v71 = PML_LogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v72 = [v4 componentsJoinedByString:@" "];;
        *buf = 138412290;
        v116 = v72;
        _os_log_debug_impl(&dword_260D68000, v71, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

LABEL_63:
  return v50;
}

void hashingVectorizeTokens(void *a1, void *a2, int a3, int a4, int a5, void *a6, int a7, int a8, char a9, char a10)
{
  v70 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v18 = a6;
  if (!a4 || a5 == a4)
  {
LABEL_45:

    return;
  }

  v53 = a2;
  v54 = v18;
  v68 = 0;
  v69 = 0;
  v49 = (4 * (a5 - 1)) | 3;
  LODWORD(v51) = a8;
  v48 = a7;
  if (v49 > 0x200)
  {
    v44 = malloc_type_posix_memalign(&v68, 8uLL, 4 * (a5 - 1), 0xC9F8D85AuLL);
    LOBYTE(v69) = 0;
    if (v44)
    {
      v45 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v45);
    }

    v19 = a3;
    v20 = v17;
    v22 = v68;
  }

  else
  {
    v19 = a3;
    v20 = v17;
    MEMORY[0x28223BE20]();
    v22 = &v46 - ((v21 + 15) & 0x7FFFFFFF0);
    bzero(v22, v21);
  }

  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v62 = 0;
  bzero(v22, 4 * (a5 - 1));
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __hashingVectorizeTokens_block_invoke;
  v55[3] = &unk_279AC0588;
  v50 = v22;
  v55[4] = v61;
  v55[5] = v22;
  v56 = a5;
  v57 = a4;
  v59 = a10;
  v55[6] = v53;
  v58 = v19;
  v60 = a9;
  v17 = v20;
  v23 = v20;
  v52 = v54;
  v53 = v55;
  objc_opt_class();
  v24 = v51;
  if (objc_opt_isKindOfClass())
  {
    v25 = v53;
    v72.length = CFStringGetLength(v23);
    v72.location = 0;
    v26 = CFStringTokenizerCreate(0, v23, v72, 4 * (v52 != 0), v52);
    if (v26)
    {
      bzero(&v68, 0x3E8uLL);
      v47 = *MEMORY[0x277CBED00];
      MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, &v68, 0, 500, v47);
      if (v52)
      {
        if (v48)
        {
          v28 = kCFCharacterSetWhitespace;
        }

        else
        {
          v28 = kCFCharacterSetWhitespaceAndNewline;
        }

        Predefined = CFCharacterSetGetPredefined(v28);
        InvertedSet = CFCharacterSetCreateInvertedSet(0, Predefined);
      }

      else
      {
        InvertedSet = 0;
      }

      while (CFStringTokenizerAdvanceToNextToken(v26))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v26);
        if (CurrentTokenRange.length <= 500 && (!InvertedSet || CFStringFindCharacterFromSet(v23, InvertedSet, CurrentTokenRange, 0, 0)))
        {
          CFStringGetCharacters(v23, CurrentTokenRange, &v68);
          CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, &v68, CurrentTokenRange.length, 500);
          if (v24)
          {
            CFStringFold(MutableWithExternalCharactersNoCopy, 0x181uLL, 0);
            CFStringNormalize(MutableWithExternalCharactersNoCopy, kCFStringNormalizationFormKC);
          }

          if (CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy) == &v68)
          {
            Length = CFStringGetLength(MutableWithExternalCharactersNoCopy);
            if (Length >= 0x1F4)
            {
              v42 = 500;
            }

            else
            {
              v42 = Length;
            }

            getHashOfUTF16(&v68, v42, v25);
          }

          else
          {
            CFRelease(MutableWithExternalCharactersNoCopy);
            MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, &v68, 0, 500, v47);
          }
        }
      }

      if (InvertedSet)
      {
        CFRelease(InvertedSet);
      }

      CFRelease(MutableWithExternalCharactersNoCopy);
      CFRelease(v26);
    }

    v39 = v50;
LABEL_42:
    v43 = v49 < 0x201;

    if (!v43)
    {
      free(v39);
    }

    _Block_object_dispose(v61, 8);
    v18 = v54;
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v23;
    v32 = v53;
    bzero(&v68, 0x3E8uLL);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v33 = [(__CFString *)v31 countByEnumeratingWithState:&v63 objects:v67 count:16];
    v51 = v17;
    if (v33)
    {
      v34 = *v64;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v64 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v63 + 1) + 8 * i);
          v37 = [(__CFString *)v36 length];
          if (v37 <= 500)
          {
            CharactersPtr = CFStringGetCharactersPtr(v36);
            if (!CharactersPtr)
            {
              v71.length = v37;
              CharactersPtr = &v68;
              v71.location = 0;
              CFStringGetCharacters(v36, v71, &v68);
            }

            getHashOfUTF16(CharactersPtr, v37, v32);
          }
        }

        v33 = [(__CFString *)v31 countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v33);
    }

    v39 = v50;
    v17 = v51;

    goto LABEL_42;
  }

  __break(1u);
}

void hashingVectorizeCharacters(void *a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, int a6, char a7, char a8)
{
  v15 = a1;
  if (a4)
  {
    if (a5 != a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (a6)
        {
          v16 = [(__CFString *)v15 mutableCopy];
          CFStringFold(v16, 0x181uLL, 0);
          CFStringNormalize(v16, kCFStringNormalizationFormKC);

          v15 = v16;
        }

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __hashingVectorizeCharacters_block_invoke;
        v36[3] = &__block_descriptor_46_e8_v12__0I8l;
        v38 = a8;
        v36[4] = a2;
        v37 = a3;
        v39 = a7;
        v15 = v15;
        v17 = [(__CFString *)v15 length];
        if (v17)
        {
          v18 = v15;
          v19 = [(__CFString *)v18 length];
          v20 = 2 * v19;
          CharactersPtr = CFStringGetCharactersPtr(v18);
          v35 = v15;
          if (CharactersPtr)
          {
            v22 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:CharactersPtr length:v20 freeWhenDone:0];
          }

          else
          {
            v22 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v20];
            -[__CFString getCharacters:range:](v18, "getCharacters:range:", [v22 mutableBytes], 0, v19);
          }

          v34 = v22;
          v23 = [v22 bytes];
          v24 = 0;
          do
          {
            v25 = 0;
            v26 = v24;
            do
            {
              if ((*(v23 + 2 * v26) & 0xFC00) == 0xD800)
              {
                v27 = 2;
              }

              else
              {
                v27 = 1;
              }

              v28 = v27 + v26;
              if (v28 >= v17)
              {
                v26 = v17;
              }

              else
              {
                v26 = v28;
              }

              ++v25;
            }

            while (v25 < a4 && v28 < v17);
            if (v25 != a4)
            {
              break;
            }

            if (a5 > a4)
            {
              v29 = a5 - a4;
              do
              {
                getHashOfUTF16(v23 + 2 * v24, v26 - v24, v36);
                if (v26 >= v17)
                {
                  break;
                }

                v30 = (*(v23 + 2 * v26) & 0xFC00) == 0xD800 ? 2 : 1;
                v31 = v30 + v26;
                v26 = v31 >= v17 ? v17 : v31;
                --v29;
              }

              while (v29);
            }

            v32 = (*(v23 + 2 * v24) & 0xFC00) == 0xD800 ? 2 : 1;
            v33 = v32 + v24;
            v24 = v33 >= v17 ? v17 : v33;
          }

          while (v33 < v17);

          v15 = v35;
        }
      }
    }
  }
}

char *__hashingVectorizeCharacters_block_invoke(uint64_t a1, char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(a1 + 44))
  {
    return appendHashToVector(a2, v3, v4);
  }

  else
  {
    return applyHashToVector(a2, v3, v4, *(a1 + 45));
  }
}

void getHashOfUTF16(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v3 = _PASMurmur3_x86_32();
  v4[2](v4, v3);
}

char *applyHashToVector(char *result, unsigned int *a2, unsigned int a3, unsigned __int8 a4)
{
  if ((((result & 1) == 0) & a4) != 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  v6 = (result >> 1) % a3;
  v7 = *a2;
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 1);
    while (1)
    {
      v10 = *v9;
      v9 += 2;
      if (v10 == v6)
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_8;
      }
    }

    *(*(a2 + 1) + 8 * v8 + 4) += v5;
  }

  else
  {
LABEL_8:
    v11 = a2[1];
    if (v7 >= v11)
    {
      v12 = 2 * v11;
      if (2 * v11 <= 8)
      {
        v12 = 8;
      }

      a2[1] = v12;
      result = reallocf(*(a2 + 1), 8 * v12);
      *(a2 + 1) = result;
      LODWORD(v7) = *a2;
    }

    else
    {
      result = *(a2 + 1);
    }

    *a2 = v7 + 1;
    v13 = &result[8 * v7];
    *v13 = v6;
    *(v13 + 1) = v5;
  }

  return result;
}

char *appendHashToVector(unsigned int a1, unsigned int *a2, unsigned int a3)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 >= v7)
  {
    v9 = 2 * v7;
    if (2 * v7 <= 8)
    {
      v9 = 8;
    }

    a2[1] = v9;
    result = reallocf(*(a2 + 1), 8 * v9);
    *(a2 + 1) = result;
    v6 = *a2;
  }

  else
  {
    result = *(a2 + 1);
  }

  *a2 = v6 + 1;
  v10 = &result[8 * v6];
  *v10 = (a1 >> 1) % a3;
  *(v10 + 1) = 1;
  return result;
}

uint64_t __hashingVectorizeTokens_block_invoke(uint64_t result, int a2)
{
  v2 = *(result + 40);
  v3 = (*(result + 56) - 2);
  if (*(result + 56) != 2)
  {
    v4 = &v2[v3];
    v5 = v4;
    do
    {
      v6 = *--v5;
      LODWORD(v7) = a2 ^ __ROR4__(v6, 9);
      HIDWORD(v7) = v7;
      *v4 = (v7 >> 5) + a2;
      v4 = v5;
      --v3;
    }

    while (v3);
  }

  *v2 = a2;
  ++*(*(*(result + 32) + 8) + 24);
  v9 = *(result + 56);
  v8 = *(result + 60);
  v10 = *(*(*(result + 32) + 8) + 24);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = __hashingVectorizeTokens_block_invoke_2;
  v18 = &__block_descriptor_46_e8_v12__0I8l;
  v21 = *(result + 68);
  v19 = *(result + 48);
  v20 = *(result + 64);
  v22 = *(result + 69);
  v11 = v8 - 1;
  v12 = v9 - 1;
  if (v12 >= v10)
  {
    v12 = v10;
  }

  if (v11 < v12)
  {
    v13 = v12 - v8 + 1;
    v14 = &v2[v11];
    do
    {
      v15 = *v14++;
      result = v17(v16, v15);
      --v13;
    }

    while (v13);
  }

  return result;
}

char *__hashingVectorizeTokens_block_invoke_2(uint64_t a1, char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(a1 + 44))
  {
    return appendHashToVector(a2, v3, v4);
  }

  else
  {
    return applyHashToVector(a2, v3, v4, *(a1 + 45));
  }
}

id PML_LogHandle()
{
  if (PML_LogHandle__pasOnceToken0 != -1)
  {
    dispatch_once(&PML_LogHandle__pasOnceToken0, &__block_literal_global_4145);
  }

  v1 = PML_LogHandle__pasExprOnceResult;

  return v1;
}

void sub_260D9CFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveModelFittingQuantizedDenseVectorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &OBJC_IVAR___PMLMockPlan__returnValue;
    v6 = &OBJC_IVAR___PMLMockPlan__returnValue;
    v7 = &OBJC_IVAR___PMLMockPlan__returnValue;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position] && (v12 = objc_msgSend(a2, "position") + 1, v12 <= objc_msgSend(a2, "length")))
        {
          v13 = [a2 data];
          [v13 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v10 |= (v42[0] & 0x7F) << v8;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [a2 hasError] ? 0 : v10;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        break;
      }

      if (v16 == 2)
      {
        *(a1 + v5[5]) |= 2u;
        LODWORD(v42[0]) = 0;
        v25 = [a2 position] + 4;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
        {
          v37 = [a2 data];
          [v37 getBytes:v42 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v38 = v42[0];
        v39 = v7[6];
LABEL_60:
        *(a1 + v39) = v38;
        goto LABEL_61;
      }

      if (v16 == 1)
      {
        if ((v15 & 7) == 2)
        {
          v42[0] = 0;
          v42[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v18 = [a2 position];
            if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v19 = 0;
            v20 = 0;
            v21 = 0;
            while (1)
            {
              v43 = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v43 & 0x7F) << v19;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v14 = v20++ >= 9;
              if (v14)
              {
                goto LABEL_35;
              }
            }

            [a2 hasError];
LABEL_35:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v29 = v7;
          v30 = v6;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42[0] & 0x7F) << v31;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v14 = v32++ >= 9;
            if (v14)
            {
              goto LABEL_55;
            }
          }

          [a2 hasError];
LABEL_55:
          PBRepeatedUInt32Add();
          v6 = v30;
          v7 = v29;
          v5 = &OBJC_IVAR___PMLMockPlan__returnValue;
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v41 = [a2 position];
      if (v41 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + v5[5]) |= 1u;
    LODWORD(v42[0]) = 0;
    v27 = [a2 position] + 4;
    if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
    {
      v40 = [a2 data];
      [v40 getBytes:v42 range:{objc_msgSend(a2, "position"), 4}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
    }

    else
    {
      [a2 _setError];
    }

    v38 = v42[0];
    v39 = v6[7];
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

void sub_260DA2430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t AWDProactiveModelFittingMinibatchStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(AWDProactiveModelFittingLabelSupportPair);
        [a1 addPerLabelSupport:v23];
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !AWDProactiveModelFittingLabelSupportPairReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v27[0] & 0x7F) << v16;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_40:
        *(a1 + 8) = v22;
      }

      else if (v13 == 1)
      {
        *(a1 + 28) |= 2u;
        LODWORD(v27[0]) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 24) = v27[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingParsecFeedbackEnvelopeReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingEvaluation);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingEvaluationReadFrom(v14, a2))
          {
LABEL_43:

            return 0;
          }

          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingLogRegWeights);
          objc_storeStrong(a1 + 5, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingLogRegWeightsReadFrom(v14, a2))
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(AWDProactiveModelFittingLogRegGradient);
            objc_storeStrong(a1 + 4, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingLogRegGradientReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 4:
            v14 = objc_alloc_init(AWDProactiveModelFittingLinRegFeatureMatrix);
            objc_storeStrong(a1 + 2, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingLinRegFeatureMatrixReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 5:
            v14 = objc_alloc_init(AWDProactiveModelFittingLinRegObjectiveFeatures);
            objc_storeStrong(a1 + 3, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingLinRegObjectiveFeaturesReadFrom(v14, a2))
            {
              goto LABEL_43;
            }

LABEL_37:
            PBReaderRecallMark();

            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_260DA5AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260DA6020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_260DA6598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_260DA6FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5896(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_260DA860C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void collectPerLabelCounts(void *a1, unint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = a2;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "label")}];
        v14 = [v6 objectForKeyedSubscript:v13];
        v15 = [v14 unsignedIntegerValue];

        [v12 support];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15 + vcvtas_u32_f32(v16 * v10)];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "label")}];
        [v6 setObject:v17 forKeyedSubscript:v18];
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }
}

uint64_t AWDProactiveModelFittingPrecisionAtKPairReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v25 = 0;
        v20 = [a2 position] + 4;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDProactiveModelFittingLogRegGradientReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v39) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v39 & 0x7F) << v22;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_81;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_81:
            v32 = 8;
            goto LABEL_82;
          }

          if (v13 == 7)
          {
            v14 = objc_alloc_init(AWDProactiveModelFittingQuantizedSparseVector);
            objc_storeStrong((a1 + 72), v14);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingQuantizedSparseVectorReadFrom(v14, a2))
            {
LABEL_90:

              return 0;
            }

            goto LABEL_68;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              *(a1 + 80) |= 8u;
              LODWORD(v39) = 0;
              v28 = [a2 position] + 4;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              v34 = v39;
              v35 = 44;
              goto LABEL_87;
            case 9:
              *(a1 + 80) |= 4u;
              LODWORD(v39) = 0;
              v30 = [a2 position] + 4;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 4, v31 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              v34 = v39;
              v35 = 40;
LABEL_87:
              *(a1 + v35) = v34;
              goto LABEL_88;
            case 0xA:
              v14 = objc_alloc_init(AWDProactiveModelFittingQuantizedDenseVector);
              objc_storeStrong((a1 + 24), v14);
              v39 = 0;
              v40 = 0;
              if (!PBReaderPlaceMark() || !AWDProactiveModelFittingQuantizedDenseVectorReadFrom(v14, a2))
              {
                goto LABEL_90;
              }

              goto LABEL_68;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            LOBYTE(v39) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v39 & 0x7F) << v15;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_77:
          v32 = 16;
LABEL_82:
          *(a1 + v32) = v21;
          goto LABEL_88;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(AWDProactiveModelFittingModelInfo);
          objc_storeStrong((a1 + 56), v14);
          v39 = 0;
          v40 = 0;
          if (!PBReaderPlaceMark() || !AWDProactiveModelFittingModelInfoReadFrom(v14, a2))
          {
            goto LABEL_90;
          }

          goto LABEL_68;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(AWDProactiveModelFittingSparseFloatVector);
            objc_storeStrong((a1 + 64), v14);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingSparseFloatVectorReadFrom(v14, a2))
            {
              goto LABEL_90;
            }

            goto LABEL_68;
          case 4:
            v14 = objc_alloc_init(AWDProactiveModelFittingMinibatchStats);
            objc_storeStrong((a1 + 48), v14);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingMinibatchStatsReadFrom(v14, a2))
            {
              goto LABEL_90;
            }

            goto LABEL_68;
          case 5:
            v14 = objc_alloc_init(AWDProactiveModelFittingEvalMetrics);
            objc_storeStrong((a1 + 32), v14);
            v39 = 0;
            v40 = 0;
            if (!PBReaderPlaceMark() || !AWDProactiveModelFittingEvalMetricsReadFrom(v14, a2))
            {
              goto LABEL_90;
            }

LABEL_68:
            PBReaderRecallMark();

            goto LABEL_88;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_88:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}
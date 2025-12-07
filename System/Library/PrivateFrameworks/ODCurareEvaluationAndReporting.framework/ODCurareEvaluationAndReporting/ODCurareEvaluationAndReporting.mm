uint64_t sub_25C7D3800()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C7D3838()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t ODCurareReportFillerModelEvaluationReadFrom(uint64_t a1, void *a2)
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
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            v38 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v38 & 0x7F) << v26;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v28;
          }

LABEL_53:
          v32 = 28;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_57;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v37 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v37 & 0x7F) << v16;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_49;
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

LABEL_49:
          v32 = 24;
        }

        *(a1 + v32) = v22;
      }

      else if (v13 == 1)
      {
        v24 = PBReaderReadString();
        v25 = *(a1 + 16);
        *(a1 + 16) = v24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v35 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v35;
      }

LABEL_57:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerMetadataReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___ODCurareReportFillerMetadata__selectedModelName;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ODCurareReportFillerMetadata__date;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerDataSetStatsReadFrom(uint64_t a1, void *a2)
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
      if (v13 >= 0xA)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_2799B9B18[v13];
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

uint64_t ODCurareReportFillerReportReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(ODCurareReportFillerModelEvaluationSummary);
            [a1 addPersonalizationEvaluationSummaries:v14];
LABEL_38:
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerModelEvaluationSummaryReadFrom(&v14->super.super.isa, a2))
            {
              goto LABEL_51;
            }

LABEL_45:
            PBReaderRecallMark();

            goto LABEL_49;
          case 6:
            v22 = PBReaderReadString();
            v23 = *(a1 + 8);
            *(a1 + 8) = v22;

            goto LABEL_49;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            while (1)
            {
              LOBYTE(v26) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v26 & 0x7F) << v15;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_48;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_48:
            *(a1 + 48) = v21;
            goto LABEL_49;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(ODCurareReportFillerModelInformation);
            [a1 addModelInformationList:v14];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerModelInformationReadFrom(v14, a2))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_45;
          case 2:
            v14 = objc_alloc_init(ODCurareReportFillerMetadata);
            [a1 addMetadataList:v14];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerMetadataReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_45;
          case 3:
            v14 = objc_alloc_init(ODCurareReportFillerModelEvaluationSummary);
            [a1 addModelEvaluationSummaries:v14];
            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerDataSetSizeReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSamples;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSamples;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    while (1)
    {
      v31 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v31 & 0x7F) << v22;
      if ((v31 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSessions;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___ODCurareReportFillerDataSetSize__numberOfUserSessions;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerModelInformationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
          v21 = PBReaderReadString();
          v22 = 32;
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 16;
LABEL_40:
          v24 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_45;
        }
      }

      else
      {
        switch(v13)
        {
          case 5:
            v23 = objc_alloc_init(ODCurareReportFillerModelHyperparameters);
            objc_storeStrong((a1 + 24), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerModelHyperparametersReadFrom(v23, a2))
            {
LABEL_47:

              return 0;
            }

            goto LABEL_38;
          case 4:
            v23 = objc_alloc_init(ODCurareReportFillerDataSet);
            objc_storeStrong((a1 + 8), v23);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetReadFrom(&v23->super.super.isa, a2))
            {
              goto LABEL_47;
            }

LABEL_38:
            PBReaderRecallMark();

            goto LABEL_45;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              LOBYTE(v27) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_44;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
            *(a1 + 40) = v20;
            goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerDataSetReadFrom(id *a1, void *a2)
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
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v15 = PBReaderReadString();
          v16 = 2;
LABEL_32:
          v14 = a1[v16];
          a1[v16] = v15;
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 1;
          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(ODCurareReportFillerDataSetSize);
          objc_storeStrong(a1 + 3, v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetSizeReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ODCurareReportFillerDataSetStats);
          [a1 addStats:v14];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetStatsReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

LABEL_30:
          PBReaderRecallMark();
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerModelEvaluationSummaryReadFrom(id *a1, void *a2)
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
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v16 = objc_alloc_init(ODCurareReportFillerModelEvaluation);
          [a1 addModelEvaluationResults:v16];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerModelEvaluationReadFrom(v16, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(ODCurareReportFillerDataSet);
          objc_storeStrong(a1 + 1, v16);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !ODCurareReportFillerDataSetReadFrom(&v16->super.super.isa, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 4;
          goto LABEL_29;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 2;
LABEL_29:
          v16 = a1[v15];
          a1[v15] = v14;
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ODCurareReportFillerModelHyperparametersReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if (v14 == 2)
      {
        if (v13 != 2)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          while (1)
          {
            LOBYTE(v44) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v44 & 0x7F) << v34;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              goto LABEL_73;
            }
          }

          [a2 hasError];
LABEL_73:
          PBRepeatedUInt32Add();
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

          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            LOBYTE(v46) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v46 & 0x7F) << v24;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              goto LABEL_43;
            }
          }

          [a2 hasError];
LABEL_43:
          PBRepeatedUInt32Add();
        }

LABEL_55:
        PBReaderRecallMark();
        goto LABEL_76;
      }

      if (v14 == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v44 & 0x7F) << v15;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_59;
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

LABEL_59:
        *(a1 + 56) = v21;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
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
      v40 = [a2 position] + 4;
      if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 4, v41 <= objc_msgSend(a2, "length")))
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
      v30 = [a2 position];
      if (v30 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
      {
        break;
      }

      v46 = 0;
      v31 = [a2 position] + 4;
      if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 4, v32 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v46 range:{objc_msgSend(a2, "position"), 4}];

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

uint64_t sub_25C7DE944()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25C7DE9D0(uint64_t a1, id *a2)
{
  result = sub_25C82E08C();
  *a2 = 0;
  return result;
}

uint64_t sub_25C7DEA48(uint64_t a1, id *a2)
{
  v3 = sub_25C82E09C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25C7DEAC8@<X0>(uint64_t *a1@<X8>)
{
  sub_25C82E0AC();
  v2 = sub_25C82E07C();

  *a1 = v2;
  return result;
}

BOOL sub_25C7DEB28(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_25C7DEB80()
{
  v0 = sub_25C82E0AC();
  v1 = MEMORY[0x25F88F490](v0);

  return v1;
}

uint64_t sub_25C7DEBBC(uint64_t a1)
{
  sub_25C82E0AC();
  sub_25C82E10C();
}

uint64_t sub_25C7DEC10(uint64_t a1)
{
  sub_25C82E0AC();
  sub_25C82E57C();
  sub_25C82E10C();
  v1 = sub_25C82E59C();

  return v1;
}

uint64_t sub_25C7DEC90(void *a1, uint64_t *a2)
{
  v2 = sub_25C82E0AC();
  v4 = v3;
  if (v2 == sub_25C82E0AC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25C82E4EC();
  }

  return v7 & 1;
}

uint64_t sub_25C7DED18@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25C82E07C();

  *a2 = v3;
  return result;
}

uint64_t sub_25C7DED60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C82E0AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C7DED8C(uint64_t a1)
{
  v2 = sub_25C7DEF10(&qword_27FC16030, &unk_25C8303C8);
  v3 = sub_25C7DEF10(&qword_27FC16038, &unk_25C830368);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27FC16010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FC16010);
    }
  }
}

uint64_t sub_25C7DEF10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ODCurareInterfaceModule.init(bundleIdentifier:evaluationInstance:personalizationInstance:pruningPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v115 = a3;
  v116 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  MEMORY[0x28223BE20](v8 - 8);
  v108 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v105 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v104 = &v91 - v13;
  v14 = sub_25C82DFBC();
  v92 = *(v14 - 8);
  v15 = v92;
  MEMORY[0x28223BE20](v14);
  v102 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_25C82DEAC();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v96 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ODCurareFileSystemModelStore();
  swift_initStackObject();
  v18 = a5;

  v113 = sub_25C81D74C(a5, a1, a2);
  v118 = a1;
  v119 = a2;
  v19 = v18;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xEF61746164617465);
  v20 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v21 = sub_25C82E07C();

  v112 = [v20 init_];

  v107 = type metadata accessor for ODCurareFileSystemModelEvaluationSummaryStore();
  swift_initStackObject();
  v111 = v19;

  v110 = sub_25C812BD0(a5, a1, a2);
  v109 = type metadata accessor for ODCurareInterfaceModule(0);
  v22 = objc_allocWithZone(v109);
  v23 = *(v15 + 56);
  v95 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
  v91 = v14;
  v23(&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate], 1, 1, v14);
  v23(&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_lastPersonalizationSampleDate], 1, 1, v14);
  v99 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkEvaluationDate;
  v114 = v23;
  v23(&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkEvaluationDate], 1, 1, v14);
  *&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_defaultModelEvaluationSummary] = 0;
  v98 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata;
  *&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata] = 0;
  v24 = v93;
  v25 = *(v93 + 56);
  v103 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
  v26 = v94;
  v101 = v93 + 56;
  v100 = v25;
  v25(&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL], 1, 1, v94);
  v27 = &v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier];
  *v27 = a1;
  v27[1] = a2;
  v28 = v116;
  *&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_evaluationInstance] = v115;
  *&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationInstance] = v28;
  v97 = OBJC_IVAR___ODCurareInterfaceModuleInternal_pruningPolicy;
  *&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_pruningPolicy] = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = NSTemporaryDirectory();
  sub_25C82E0AC();

  v30 = v26;
  v31 = v96;
  v32 = v91;
  sub_25C82DDFC();
  v33 = v104;

  (*(v24 + 32))(&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_temporaryDirectory], v31, v26);
  v34 = v102;
  sub_25C82DFAC();
  (*(v92 + 32))(&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate], v34, v32);
  v35 = *v27;
  v36 = v27[1];

  sub_25C82B87C(v35, v36);
  v38 = v37;

  v39 = 1;
  if (v38 != 0.0)
  {
    sub_25C82DF2C();
    v39 = 0;
  }

  v40 = 1;
  v114(v33, v39, 1, v32);
  v41 = v95;
  swift_beginAccess();
  sub_25C7E6CC0(v33, &v22[v41], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v43 = *v27;
  v42 = v27[1];

  sub_25C82BDBC(v43, v42);
  v45 = v44;

  v46 = v105;
  if (v45 != 0.0)
  {
    sub_25C82DF2C();
    v40 = 0;
  }

  v114(v46, v40, 1, v32);
  v47 = v99;
  swift_beginAccess();
  sub_25C7E6CC0(v46, &v22[v47], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v48 = *&v22[v98];
  *&v22[v98] = 0;

  v49 = v108;
  v100(v108, 1, 1, v30);
  v50 = v103;
  swift_beginAccess();
  sub_25C7E6CC0(v49, &v22[v50], &qword_27FC16040, &unk_25C830480);
  swift_endAccess();
  v51 = MEMORY[0x277D84F90];
  *&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationModelEvaluationResults] = MEMORY[0x277D84F90];
  *&v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_historicalModelEvaluationResults] = v51;
  v52 = v97;
  v53 = *&v22[v97];
  v54 = *v27;
  v55 = v27[1];
  v56 = v106;
  swift_allocObject();
  v57 = v53;

  v58 = sub_25C81D74C(v53, v54, v55);
  v59 = &v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore];
  v59[3] = v56;
  v59[4] = &off_286E6AEB8;
  *v59 = v58;
  v60 = *&v22[v52];
  v62 = *v27;
  v61 = v27[1];
  v63 = type metadata accessor for ODCurareFileSystemMetadataStore();
  v64 = swift_allocObject();
  v118 = v62;
  v119 = v61;
  v65 = v60;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xEF61746164617465);
  v66 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v67 = sub_25C82E07C();

  v68 = [v66 init_];

  *(v64 + 16) = v68;
  *(v64 + 24) = v60;
  v69 = &v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore];
  v69[3] = v63;
  v69[4] = &off_286E6AE78;
  *v69 = v64;
  v70 = *&v22[v52];
  v71 = *v27;
  v72 = v27[1];
  v73 = v107;
  swift_allocObject();
  v74 = v70;

  v75 = sub_25C812BD0(v70, v71, v72);
  v76 = &v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore];
  v76[3] = v73;
  v76[4] = &off_286E6AEA0;
  *v76 = v75;
  v78 = *v27;
  v77 = v27[1];

  sub_25C829324(v78, v77);

  v80 = *v27;
  v79 = v27[1];

  v81 = sub_25C82950C(v80, v79);

  v22[OBJC_IVAR___ODCurareInterfaceModuleInternal_shouldReportFailure] = v81 > 99;
  if (v81 >= 100)
  {
    v83 = *v27;
    v82 = v27[1];

    v84 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v85 = qword_281559838;
    sub_25C82E00C(v84, &dword_25C7D2000, v85, "Resetting currentExecutionCount to 0.", 37, 2, MEMORY[0x277D84F90]);

    v118 = v83;
    v119 = v82;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

    v86 = [objc_opt_self() standardUserDefaults];
    v87 = sub_25C82E22C();
    v88 = sub_25C82E07C();

    [v86 setValue:v87 forKey:v88];
  }

  v117.receiver = v22;
  v117.super_class = v109;
  v89 = objc_msgSendSuper2(&v117, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v89;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *sub_25C7DFC38(unint64_t a1, void *a2)
{
  v195 = a2;
  v3 = sub_25C82DEAC();
  v179 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v181 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_25C82DFBC();
  v194 = *(v197 - 8);
  v5 = MEMORY[0x28223BE20](v197);
  v180 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v183 = &v158 - v8;
  MEMORY[0x28223BE20](v7);
  v187 = (&v158 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v185 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v184 = (&v158 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v190 = (&v158 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v191 = &v158 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v158 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v158 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v192 = &v158 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v158 - v27;
  LOBYTE(v29) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_83;
  }

  while (1)
  {
    v30 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v29))
    {
      v31 = v21;
      v32 = v30;

      v33 = swift_slowAlloc();
      *v33 = 134217984;
      if (a1 >> 62)
      {
        v34 = sub_25C82E43C();
      }

      else
      {
        v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v33 + 4) = v34;

      _os_log_impl(&dword_25C7D2000, v32, v29, "Start personalization, has %ld number of candidate models", v33, 0xCu);
      MEMORY[0x25F890110](v33, -1, -1);

      v21 = v31;
    }

    v35 = *&v203[OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationInstance];
    if (!v35)
    {
      v48 = sub_25C82E27C();
      v49 = qword_281559838;
      sub_25C82E00C(v48, &dword_25C7D2000, v49, "personalizeModels was called, but interface is missing an personalization instance", 82, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      swift_allocError();
      v51 = 24;
LABEL_87:
      *v50 = v51;
      swift_willThrow();
      return v49;
    }

    v178 = *&v203[OBJC_IVAR___ODCurareInterfaceModuleInternal_evaluationInstance];
    if (!v178)
    {
      v52 = sub_25C82E27C();
      v49 = qword_281559838;
      sub_25C82E00C(v52, &dword_25C7D2000, v49, "personalizeModels was called, but interface is missing an evaluation instance", 77, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      swift_allocError();
      v51 = 22;
      goto LABEL_87;
    }

    v166 = v3;
    if (a1 >> 62)
    {
      if (!sub_25C82E43C())
      {
LABEL_86:
        v157 = sub_25C82E27C();
        v49 = qword_281559838;
        sub_25C82E00C(v157, &dword_25C7D2000, v49, "personalizeModels was called, but with an empty array!", 54, 2, MEMORY[0x277D84F90]);

        sub_25C7E7DEC();
        swift_allocError();
        v51 = 25;
        goto LABEL_87;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    v200 = (a1 >> 62);
    v171 = v35;
    v172 = v21;
    v36 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
    v37 = v203;
    swift_beginAccess();
    v29 = &qword_27FC16048;
    sub_25C7E92DC(&v37[v36], v28, &qword_27FC16048, qword_25C8309D0);
    v38 = v194;
    v39 = *(v194 + 48);
    v40 = v197;
    v189 = v194 + 48;
    v188 = v39;
    v21 = v39(v28, 1, v197);
    sub_25C7E97F4(v28, &qword_27FC16048, qword_25C8309D0);
    v201 = v36;
    if (v21 == 1)
    {
      v41 = sub_25C82E25C();
      v42 = qword_281559838;
      sub_25C82E00C(v41, &dword_25C7D2000, v42, "frameworkPersonalizationDate was nil, fetching default date.", 60, 2, MEMORY[0x277D84F90]);

      v43 = v192;
      sub_25C82DF2C();
      v29 = *(v38 + 56);
      v44 = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      (v29)(v43, 0, 1, v40);
      v45 = v203;
      swift_beginAccess();
      sub_25C7E6CC0(v43, &v45[v36], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
      v46 = v44;
      v47 = v29;
    }

    else
    {
      v47 = *(v38 + 56);
      v46 = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    }

    v28 = v200;
    v168 = v47;
    v167 = v46;
    (v47)(v24, 1, 1, v40);
    v53 = v196;
    if (v28)
    {
      v54 = sub_25C82E43C();
    }

    else
    {
      v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v201;
    v173 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
    v186 = OBJC_IVAR___ODCurareInterfaceModuleInternal_personalizationModelEvaluationResults;
    v182 = v24;
    swift_beginAccess();
    if (!v54)
    {
LABEL_58:
      v112 = v53;
      v113 = v182;
      swift_beginAccess();
      v114 = v185;
      sub_25C7E92DC(v113, v185, &qword_27FC16048, qword_25C8309D0);
      v115 = v197;
      v116 = v188(v114, 1, v197);
      sub_25C7E97F4(v114, &qword_27FC16048, qword_25C8309D0);
      if (v116 == 1)
      {
        v117 = v192;
        sub_25C7E92DC(v201 + v203, v192, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E6CC0(v117, v113, &qword_27FC16048, qword_25C8309D0);
      }

      v49 = v203;
      sub_25C8296F4(v113, *&v203[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier], *&v203[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier + 8]);
      v118 = v186;
      swift_beginAccess();
      v119 = *&v49[v118];
      v120 = v194;
      if (*(v119 + 16))
      {

        v121 = v112;
        sub_25C81A8E4(v195, v119);
        v123 = v122;
        v125 = v124;
        v127 = v126;

        if (v121)
        {
LABEL_62:
          v128 = v113;
LABEL_69:
          sub_25C7E97F4(v128, &qword_27FC16048, qword_25C8309D0);
          return v49;
        }

        if (!v123)
        {
          v135 = sub_25C82E27C();
          v136 = qword_281559838;
          if (os_log_type_enabled(qword_281559838, v135))
          {
            v137 = v136;
            v49 = v203;
            v138 = v203;
            v139 = swift_slowAlloc();
            *v139 = 134217984;
            *(v139 + 4) = *(*&v49[v186] + 16);

            _os_log_impl(&dword_25C7D2000, v137, v135, "Unable to identify the best model even though there were %ld entries in self.newModelEvaluationResults.", v139, 0xCu);
            MEMORY[0x25F890110](v139, -1, -1);
          }

          sub_25C7E7DEC();
          swift_allocError();
          *v140 = 20;
          swift_willThrow();
          goto LABEL_62;
        }

        v129 = v203;
        sub_25C7E9180(&v203[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore], v202);
        v201 = __swift_project_boxed_opaque_existential_1(v202, v202[3]);
        v130 = [v125 modelURL];
        sub_25C82DE7C();

        (*(v120 + 16))(v180, &v129[v173], v115);
        v203 = [v125 modelInformation];
        v200 = [v123 modelConfiguration];
        v131 = [v123 CDModelDataStreamIdentifier];
        if (v131)
        {
          v132 = v131;
          v133 = sub_25C82E0AC();
          *&v198 = v134;
        }

        else
        {
          v133 = 0;
          *&v198 = 0;
        }

        v141 = [v123 BMModelDataStreamIdentifier];
        v199 = v125;
        if (v141)
        {
          v142 = v141;
          v143 = sub_25C82E0AC();
          v145 = v144;

          v146 = v143;
        }

        else
        {
          v146 = 0;
          v145 = 0;
        }

        v147 = v200;
        v148 = v181;
        v149 = v180;
        v150 = v203;
        sub_25C81D89C(v181, v180, v203, v200, v133, v198, v146, v145);

        (*(v194 + 8))(v149, v197);
        (*(v179 + 8))(v148, v166);
        __swift_destroy_boxed_opaque_existential_0Tm(v202);
        v113 = v182;
      }

      v151 = sub_25C82E25C();
      v152 = qword_281559838;
      sub_25C82E00C(v151, &dword_25C7D2000, v152, "End personalization", 19, 2, MEMORY[0x277D84F90]);

      sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
      v49 = sub_25C82E29C();
      sub_25C7E97F4(v113, &qword_27FC16048, qword_25C8309D0);
      return v49;
    }

    v24 = 0;
    v199 = (a1 & 0xFFFFFFFFFFFFFF8);
    v200 = (a1 & 0xC000000000000001);
    v170 = (v194 + 8);
    v165 = (v194 + 16);
    v163 = (v194 + 32);
    *&v55 = 134217984;
    v198 = v55;
    *&v55 = 136315138;
    v164 = v55;
    v169 = a1;
    v193 = v54;
LABEL_23:
    if (v200)
    {
      v57 = MEMORY[0x25F88F6D0](v24, a1);
    }

    else
    {
      if (v24 >= *(v199 + 2))
      {
        goto LABEL_82;
      }

      v57 = *(a1 + 8 * v24 + 32);
    }

    v58 = v57;
    v28 = (v24 + 1);
    if (!__OFADD__(v24, 1))
    {
      break;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
  }

  v59 = sub_25C82E25C();
  v60 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v59))
  {
    v61 = v60;
    v62 = swift_slowAlloc();
    *v62 = v198;
    *(v62 + 4) = v24;
    _os_log_impl(&dword_25C7D2000, v61, v59, "Begin processing model at index %ld.", v62, 0xCu);
    v63 = v62;
    v3 = v201;
    MEMORY[0x25F890110](v63, -1, -1);
  }

  if ([v58 isDefaultModel])
  {
    LOBYTE(v29) = sub_25C82E25C();
    v21 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v29))
    {
      goto LABEL_21;
    }

    v21 = v21;
    v64 = swift_slowAlloc();
    *v64 = v198;
    *(v64 + 4) = v24;
    v65 = v29;
    v66 = v21;
    v67 = "Model at index %ld is the default model. This should not happen! Skipping.";
LABEL_20:
    _os_log_impl(&dword_25C7D2000, v66, v65, v67, v64, 0xCu);
    v56 = v64;
    v3 = v201;
    MEMORY[0x25F890110](v56, -1, -1);

LABEL_21:
LABEL_22:
    ++v24;
    if (v28 == v54)
    {
      goto LABEL_58;
    }

    goto LABEL_23;
  }

  if (([v58 isPersonalizableModel] & 1) == 0)
  {
    LOBYTE(v29) = sub_25C82E25C();
    v21 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v29))
    {
      goto LABEL_21;
    }

    v21 = v21;
    v64 = swift_slowAlloc();
    *v64 = v198;
    *(v64 + 4) = v24;
    v65 = v29;
    v66 = v21;
    v67 = "Model at index %ld is not personalizable. Skipping.";
    goto LABEL_20;
  }

  v49 = v203;
  swift_beginAccess();
  v68 = sub_25C8187FC(v58, v195, &v49[v3]);
  if (v53)
  {
    swift_endAccess();

LABEL_68:
    v128 = v182;
    goto LABEL_69;
  }

  v69 = v68;
  swift_endAccess();
  v54 = v193;
  if ((v69 & 1) == 0)
  {
    LOBYTE(v29) = sub_25C82E25C();
    v21 = qword_281559838;
    if (!os_log_type_enabled(qword_281559838, v29))
    {
      goto LABEL_21;
    }

    v21 = v21;
    v64 = swift_slowAlloc();
    *v64 = v198;
    *(v64 + 4) = v24;
    v65 = v29;
    v66 = v21;
    v67 = "Not enough data to personalize model at index %ld.";
    goto LABEL_20;
  }

  v70 = &v203[v3];
  v71 = v172;
  sub_25C7E92DC(v70, v172, &qword_27FC16048, qword_25C8309D0);
  v72 = v197;
  v73 = v188(v71, 1, v197);
  v174 = (v24 + 1);
  if (v73 == 1)
  {
    v74 = 0;
  }

  else
  {
    v74 = sub_25C82DF4C();
    (*v170)(v71, v72);
  }

  v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v58 setStreamFilter:0 fromInclusive:0 toDate:v74 toInclusive:v75];

  v76 = v203;
  v77 = v191;
  sub_25C7E92DC(v201 + v203, v191, &qword_27FC16048, qword_25C8309D0);
  v78 = sub_25C819EA4(v58, v171, v178, &v76[v173], v77);
  v80 = v79;
  sub_25C7E97F4(v77, &qword_27FC16048, qword_25C8309D0);
  v81 = v203;
  v82 = v186;
  swift_beginAccess();
  v83 = *&v81[v82];
  v175 = v58;
  v177 = v78;
  v176 = v80;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v82] = v83;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v83 = sub_25C7E715C(0, v83[2] + 1, 1, v83);
    *&v203[v186] = v83;
  }

  v3 = v201;
  v28 = v174;
  v86 = v83[2];
  v85 = v83[3];
  v196 = 0;
  if (v86 >= v85 >> 1)
  {
    v83 = sub_25C7E715C((v85 > 1), v86 + 1, 1, v83);
  }

  v83[2] = v86 + 1;
  v87 = &v83[3 * v86];
  v88 = v175;
  v89 = v177;
  v87[4] = v175;
  v87[5] = v89;
  v90 = v176;
  v87[6] = v176;
  *&v203[v186] = v83;
  swift_endAccess();
  v29 = v190;
  v21 = qword_25C8309D0;
  sub_25C7E92DC(v182, v190, &qword_27FC16048, qword_25C8309D0);
  if (v188(v29, 1, v197) != 1)
  {

    sub_25C7E97F4(v29, &qword_27FC16048, qword_25C8309D0);
    v53 = v196;
    a1 = v169;
    v54 = v193;
    goto LABEL_22;
  }

  sub_25C7E97F4(v29, &qword_27FC16048, qword_25C8309D0);
  v91 = [v88 getDatesOfEventsForStream];
  v92 = v88;
  if (!v91)
  {
    v153 = sub_25C82E27C();
    v49 = qword_281559838;
    sub_25C82E00C(v153, &dword_25C7D2000, v49, "Failed to fetch dates from model for evaluation for setting newPersonalizationDate", 82, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    *v154 = 20;
    swift_willThrow();

    goto LABEL_68;
  }

  v93 = v91;
  v94 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = sub_25C7E916C(v94);
  }

  v95 = v196;
  v54 = v193;
  v96 = v94[2];
  v97 = v94 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
  v202[0] = v97;
  v202[1] = v96;
  sub_25C7E7E40(v202);
  if (!v94[2])
  {

    v155 = sub_25C82E27C();
    v49 = qword_281559838;
    sub_25C82E00C(v155, &dword_25C7D2000, v49, "Failed to get first date for setting newPersonalizationDate", 59, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    *v156 = 20;
    swift_willThrow();

    goto LABEL_68;
  }

  v196 = v95;
  v98 = *v165;
  v29 = v187;
  v99 = v197;
  (*v165)(v187, v97, v197);

  v100 = v192;
  v98(v192, v29, v99);
  v101 = v99;
  (v168)(v100, 0, 1, v99);
  v21 = v182;
  sub_25C7E6CC0(v100, v182, &qword_27FC16048, qword_25C8309D0);
  v102 = sub_25C82E27C();
  v103 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v102))
  {

    (*v170)(v29, v101);
    a1 = v169;
    v3 = v201;
    goto LABEL_56;
  }

  v162 = v102;
  v160 = v103;
  v104 = swift_slowAlloc();
  v161 = swift_slowAlloc();
  v202[0] = v161;
  *v104 = v164;
  v29 = v184;
  sub_25C7E92DC(v21, v184, &qword_27FC16048, qword_25C8309D0);
  result = v188(v29, 1, v101);
  a1 = v169;
  if (result != 1)
  {
    v106 = v183;
    (*v163)(v183, v29, v101);
    sub_25C7E97AC(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v107 = sub_25C82E4DC();
    v21 = v108;
    LOBYTE(v29) = v170;
    v159 = *v170;
    v159(v106, v101);
    v109 = sub_25C7E77E4(v107, v21, v202);

    *(v104 + 4) = v109;
    v110 = v160;
    _os_log_impl(&dword_25C7D2000, v160, v162, "Setting newPersonalizationDate to %s", v104, 0xCu);
    v111 = v161;
    __swift_destroy_boxed_opaque_existential_0Tm(v161);
    MEMORY[0x25F890110](v111, -1, -1);
    MEMORY[0x25F890110](v104, -1, -1);

    v159(v187, v101);
    v3 = v201;
    v54 = v193;
LABEL_56:
    v53 = v196;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_25C7E159C(unint64_t a1)
{
  v216 = sub_25C82DEAC();
  v198 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v215 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_25C82DFBC();
  v208 = *(v221 - 8);
  v4 = MEMORY[0x28223BE20](v221);
  v194 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v196 = &v193 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v203 = &v193 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v206 = &v193 - v11;
  MEMORY[0x28223BE20](v10);
  v204 = (&v193 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v195 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v197 = &v193 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v199 = &v193 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v200 = &v193 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v202 = &v193 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v213 = &v193 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v193 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v193 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v193 = &v193 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v201 = &v193 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v193 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v207 = (&v193 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v205 = (&v193 - v42);
  MEMORY[0x28223BE20](v41);
  v44 = &v193 - v43;
  LOBYTE(v45) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
LABEL_94:
    swift_once();
  }

  p_info = ODCurareEvaluationAndReportingModule.info;
  v47 = qword_281559838;
  v48 = os_log_type_enabled(qword_281559838, v45);
  v212 = a1 >> 62;
  v218 = v31;
  v222 = v1;
  if (v48)
  {
    v49 = v47;

    v50 = swift_slowAlloc();
    *v50 = 134217984;
    if (v212)
    {
      v51 = sub_25C82E43C();
    }

    else
    {
      v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v50 + 4) = v51;

    _os_log_impl(&dword_25C7D2000, v49, v45, "Start evaluation, has %ld number of evaluation models", v50, 0xCu);
    MEMORY[0x25F890110](v50, -1, -1);

    v1 = v222;
    p_info = ODCurareEvaluationAndReportingModule.info;
  }

  v52 = *&v1[OBJC_IVAR___ODCurareInterfaceModuleInternal_evaluationInstance];
  if (!v52)
  {
    v67 = sub_25C82E27C();
    v68 = qword_281559838;
    sub_25C82E00C(v67, &dword_25C7D2000, v68, "evaluateModels was called, but interface is missing an evaluation instance", 74, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    v70 = 21;
LABEL_98:
    *v69 = v70;
    swift_willThrow();
    return;
  }

  if (v212)
  {
    goto LABEL_96;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_97:
    v179 = sub_25C82E27C();
    v180 = p_info[263];
    sub_25C82E00C(v179, &dword_25C7D2000, v180, "evaluateModels was called, but with an empty array!", 51, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    v70 = 23;
    goto LABEL_98;
  }

  while (1)
  {
    v209 = v28;
    v210 = a1;
    v211 = v52;
    v53 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkEvaluationDate;
    swift_beginAccess();
    v214 = v53;
    sub_25C7E92DC(&v1[v53], v44, &qword_27FC16048, qword_25C8309D0);
    a1 = &v208[6];
    isa = v208[6].isa;
    v52 = v221;
    v55 = isa(v44, 1, v221);
    sub_25C7E97F4(v44, &qword_27FC16048, qword_25C8309D0);
    v219 = isa;
    v220 = a1;
    if (v55 == 1)
    {
      v56 = sub_25C82E25C();
      v57 = qword_281559838;
      sub_25C82E00C(v56, &dword_25C7D2000, v57, "Framework evaluation date was nil", 33, 2, MEMORY[0x277D84F90]);

      v58 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
      swift_beginAccess();
      v59 = v205;
      sub_25C7E92DC(&v1[v58], v205, &qword_27FC16048, qword_25C8309D0);
      v60 = isa(v59, 1, v52);
      p_info = v218;
      if (v60 == 1)
      {
        a1 = v1;
        sub_25C7E97F4(v59, &qword_27FC16048, qword_25C8309D0);
        v61 = sub_25C82E25C();
        v62 = qword_281559838;
        sub_25C82E00C(v61, &dword_25C7D2000, v62, "Unable to get last personalization date, setting to default.", 60, 2, MEMORY[0x277D84F90]);

        v45 = v221;
        v63 = v207;
        sub_25C82DF2C();
        v64 = v208;
        (v208[7].isa)(v63, 0, 1, v45);
        v52 = v214;
        swift_beginAccess();
        v65 = v52 + v1;
        v66 = v63;
      }

      else
      {
        v45 = v52;
        v72 = v208;
        a1 = v208[4].isa;
        v73 = v204;
        (a1)(v204, v59, v45);
        v74 = sub_25C82E25C();
        v75 = qword_281559838;
        (v72[2].isa)(v206, v73, v45);
        if (os_log_type_enabled(v75, v74))
        {
          v205 = v75;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v223[0] = v77;
          *v76 = 136315138;
          sub_25C7E97AC(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v78 = v206;
          v79 = sub_25C82E4DC();
          v80 = a1;
          v82 = v81;
          (v72[1].isa)(v78, v221);
          v83 = v79;
          p_info = v218;
          v84 = sub_25C7E77E4(v83, v82, v223);
          a1 = v80;

          *(v76 + 4) = v84;
          v73 = v204;
          v85 = v205;
          _os_log_impl(&dword_25C7D2000, v205, v74, "Got last personalization date: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          MEMORY[0x25F890110](v77, -1, -1);
          v86 = v76;
          v45 = v221;
          MEMORY[0x25F890110](v86, -1, -1);
        }

        else
        {
          (v72[1].isa)(v206, v45);
        }

        v64 = v72;
        v52 = v207;
        (a1)(v207, v73, v45);
        (v64[7].isa)(v52, 0, 1, v45);
        v98 = v222;
        v99 = v214;
        swift_beginAccess();
        v65 = &v98[v99];
        v66 = v52;
      }

      sub_25C7E6CC0(v66, v65, &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
      goto LABEL_24;
    }

    v71 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkPersonalizationDate;
    swift_beginAccess();
    sub_25C7E92DC(&v1[v71], v38, &qword_27FC16048, qword_25C8309D0);
    v45 = v52;
    if (isa(v38, 1, v52) == 1)
    {
      sub_25C7E97F4(v38, &qword_27FC16048, qword_25C8309D0);
LABEL_20:
      p_info = v218;
      v64 = v208;
      goto LABEL_24;
    }

    v87 = v203;
    v88 = v38;
    v89 = v208 + 4;
    v206 = v208[4].isa;
    (v206)(v203, v88, v52);
    v90 = sub_25C82E25C();
    v52 = ODCurareEvaluationAndReportingModule.info;
    v91 = v1;
    v92 = qword_281559838;
    sub_25C82E00C(v90, &dword_25C7D2000, v92, "Checking to see if frameworkEvaluationDate needs to be bumped", 61, 2, MEMORY[0x277D84F90]);

    v93 = v201;
    sub_25C7E92DC(&v91[v214], v201, &qword_27FC16048, qword_25C8309D0);
    if (isa(v93, 1, v45) == 1)
    {
      __break(1u);
LABEL_110:
      __break(1u);
      return;
    }

    v94 = sub_25C82DF9C();
    a1 = v208[1].isa;
    (a1)(v93, v45);
    v95 = sub_25C82E25C();
    v96 = qword_281559838;
    if (v94 != -1)
    {
      v97 = qword_281559838;
      sub_25C82E00C(v95, &dword_25C7D2000, v97, "frameworkEvaluationDate does not need to be bumped because it is greater than or equal to personalizationDate", 109, 2, MEMORY[0x277D84F90]);

      (a1)(v87, v45);
      goto LABEL_20;
    }

    v64 = v208;
    v152 = v196;
    (v208[2].isa)(v196, v87, v45);
    if (os_log_type_enabled(v96, v95))
    {
      v205 = v89;
      v204 = v96;
      v153 = v222;
      v154 = v222;
      v155 = swift_slowAlloc();
      v201 = swift_slowAlloc();
      v223[0] = v201;
      *v155 = 136315394;
      v156 = v193;
      sub_25C7E92DC(&v153[v214], v193, &qword_27FC16048, qword_25C8309D0);
      v157 = v219(v156, 1, v45);

      if (v157 == 1)
      {
        goto LABEL_110;
      }

      v158 = v194;
      (v206)(v194, v156, v45);
      sub_25C7E97AC(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v159 = sub_25C82E4DC();
      v161 = v160;
      (a1)(v158, v221);
      v162 = sub_25C7E77E4(v159, v161, v223);
      v45 = v221;

      *(v155 + 4) = v162;
      *(v155 + 12) = 2080;
      v163 = v196;
      v164 = sub_25C82E4DC();
      v166 = v165;
      (a1)(v163, v45);
      v167 = sub_25C7E77E4(v164, v166, v223);

      *(v155 + 14) = v167;
      v168 = v95;
      v169 = v204;
      _os_log_impl(&dword_25C7D2000, v204, v168, "frameworkEvaluationDate is being updated from %s to %s", v155, 0x16u);
      v170 = v201;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v170, -1, -1);
      MEMORY[0x25F890110](v155, -1, -1);

      v171 = v206;
      v64 = v208;
      v87 = v203;
    }

    else
    {
      (a1)(v152, v45);
      v171 = v206;
    }

    v52 = v207;
    (v171)(v207, v87, v45);
    (v64[7].isa)(v52, 0, 1, v45);
    v175 = v222;
    v176 = v214;
    swift_beginAccess();
    sub_25C7E6CC0(v52, &v175[v176], &qword_27FC16048, qword_25C8309D0);
    swift_endAccess();
    p_info = v218;
LABEL_24:
    v28 = v210;
    v223[0] = MEMORY[0x277D84F90];
    v225 = MEMORY[0x277D84F90];
    (v64[7].isa)(p_info, 1, 1, v45);
    if (!v212)
    {
      v1 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        break;
      }

      goto LABEL_26;
    }

    v1 = sub_25C82E43C();
    if (!v1)
    {
      break;
    }

LABEL_26:
    v38 = 0;
    v206 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
    v212 = v28 & 0xC000000000000001;
    v194 = (v28 & 0xFFFFFFFFFFFFFF8);
    v196 = &v64[1];
    v205 = "evaluateWithModel:]";
    v204 = v198 + 1;
    v44 = 0x2799B9000;
    v201 = MEMORY[0x277D84F90];
    v207 = MEMORY[0x277D84F90];
    v203 = v1;
    while (1)
    {
      if (v212)
      {
        v102 = MEMORY[0x25F88F6D0](v38, v28);
        goto LABEL_35;
      }

      if (v38 >= *(v194 + 2))
      {
        break;
      }

      v102 = *(v28 + 8 * v38 + 32);
LABEL_35:
      a1 = v102;
      v31 = (v38 + 1);
      v28 = v209;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_94;
      }

      sub_25C7E92DC(&v222[v214], v209, &qword_27FC16048, qword_25C8309D0);
      if (v219(v28, 1, v45) == 1)
      {
        v103 = 0;
      }

      else
      {
        v103 = sub_25C82DF4C();
        (*v196)(v28, v45);
      }

      v104 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [a1 setStreamFilter:v103 fromInclusive:v104 toDate:0 toInclusive:0];

      if (![a1 hasStreamFilter])
      {
        v150 = sub_25C82E27C();
        v125 = qword_281559838;
        sub_25C82E00C(v150, &dword_25C7D2000, v125, "model does not have stream set.", 31, 2, MEMORY[0x277D84F90]);
        v126 = 29;
        goto LABEL_82;
      }

      v105 = v211;
      if (([v211 respondsToSelector_] & 1) == 0 || (v106 = objc_msgSend(v105, *(v44 + 3464), a1)) == 0)
      {
        v124 = sub_25C82E27C();
        v125 = qword_281559838;
        sub_25C82E00C(v124, &dword_25C7D2000, v125, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:]", 83, 2, MEMORY[0x277D84F90]);
        v126 = 30;
LABEL_82:

        sub_25C7E7DEC();
        swift_allocError();
        *v151 = v126;
        swift_willThrow();
        sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);

        return;
      }

      v107 = v106;
      v108 = a1;
      a1 = v38 + 1;
      v52 = p_info;
      v109 = v213;
      sub_25C7E92DC(p_info, v213, &qword_27FC16048, qword_25C8309D0);
      v110 = v219(v109, 1, v221);
      sub_25C7E97F4(v109, &qword_27FC16048, qword_25C8309D0);
      if (v110 == 1)
      {
        v111 = v202;
        v112 = v217;
        sub_25C829A28(v108, v202);
        v217 = v112;
        if (v112)
        {
          sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);

          return;
        }

        sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E9274(v111, p_info, &qword_27FC16048, qword_25C8309D0);
      }

      v113 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v114 = sub_25C82E07C();
      [v113 setDateFormat_];

      v115 = sub_25C82DF4C();
      v116 = [v113 stringFromDate_];

      v44 = 0x2799B9000uLL;
      if (!v116)
      {
        sub_25C82E0AC();
        v116 = sub_25C82E07C();
      }

      [v107 setEvaluationDate_];
      v117 = [v108 modelURL];
      v118 = v215;
      sub_25C82DE7C();

      sub_25C82DE1C();
      (v204->isa)(v118, v216);
      v119 = sub_25C82E07C();

      [v107 setModelName_];

      LODWORD(v119) = [v108 isDefaultModel];
      v120 = v107;
      if (v119)
      {
        MEMORY[0x25F88F4D0]();
        p_info = v218;
        v28 = v210;
        if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
          p_info = v218;
        }

        sub_25C82E20C();

        v100 = v225;
        v101 = &v226;
      }

      else
      {
        MEMORY[0x25F88F4D0]();
        p_info = v218;
        v28 = v210;
        if (*((v223[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v223[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
          p_info = v218;
        }

        sub_25C82E20C();

        v100 = v223[0];
        v101 = &v224;
      }

      *(v101 - 32) = v100;
      ++v38;
      v1 = v203;
      v45 = v221;
      if (a1 == v203)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_96:
    if (!sub_25C82E43C())
    {
      goto LABEL_97;
    }
  }

  v201 = MEMORY[0x277D84F90];
  v207 = MEMORY[0x277D84F90];
LABEL_53:
  v121 = v217;
  v122 = sub_25C829D9C(&v222[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore], &v222[OBJC_IVAR___ODCurareInterfaceModuleInternal_temporaryDirectory]);
  v123 = v121;
  if (v121)
  {
    sub_25C7E97F4(p_info, &qword_27FC16048, qword_25C8309D0);

LABEL_55:

    return;
  }

  v127 = v122;
  if (v122 >> 62)
  {
    goto LABEL_102;
  }

  v128 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v217 = 0;
  if (v128)
  {
LABEL_59:
    v129 = 0;
    v210 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
    v213 = v127 & 0xC000000000000001;
    v205 = (v127 & 0xFFFFFFFFFFFFFF8);
    v206 = &v208[1];
    v209 = "evaluateWithModel:]";
    v208 = v198 + 1;
    v212 = v127;
    do
    {
      if (v213)
      {
        v130 = MEMORY[0x25F88F6D0](v129, v127);
        v123 = v200;
        v131 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v123 = v200;
        if (v129 >= v205[2].isa)
        {
          goto LABEL_101;
        }

        v130 = *(v127 + 8 * v129 + 32);
        v131 = v129 + 1;
        if (__OFADD__(v129, 1))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          v128 = sub_25C82E43C();
          v217 = v123;
          if (!v128)
          {
            break;
          }

          goto LABEL_59;
        }
      }

      sub_25C7E92DC(&v222[v214], v123, &qword_27FC16048, qword_25C8309D0);
      if (v219(v123, 1, v45) == 1)
      {
        v132 = 0;
      }

      else
      {
        v132 = sub_25C82DF4C();
        (*v206)(v123, v45);
      }

      v133 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v130 setStreamFilter:v132 fromInclusive:v133 toDate:0 toInclusive:0];

      if (![v130 hasStreamFilter])
      {
        v177 = sub_25C82E27C();
        v173 = qword_281559838;
        sub_25C82E00C(v177, &dword_25C7D2000, v173, "model does not have stream set.", 31, 2, MEMORY[0x277D84F90]);
        v174 = 29;
        goto LABEL_91;
      }

      v134 = v211;
      if (([v211 respondsToSelector_] & 1) == 0 || (v135 = objc_msgSend(v134, sel_evaluateWithModel_, v130)) == 0)
      {
        v172 = sub_25C82E27C();
        v173 = qword_281559838;
        sub_25C82E00C(v172, &dword_25C7D2000, v173, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:]", 83, 2, MEMORY[0x277D84F90]);
        v174 = 30;
LABEL_91:

        sub_25C7E7DEC();
        swift_allocError();
        *v178 = v174;
        swift_willThrow();
        sub_25C7E97F4(v218, &qword_27FC16048, qword_25C8309D0);

        return;
      }

      v136 = v135;
      v137 = v199;
      sub_25C7E92DC(v218, v199, &qword_27FC16048, qword_25C8309D0);
      v138 = v219(v137, 1, v221);
      sub_25C7E97F4(v137, &qword_27FC16048, qword_25C8309D0);
      if (v138 == 1)
      {
        v139 = v197;
        v140 = v217;
        sub_25C829A28(v130, v197);
        v217 = v140;
        if (v140)
        {
          sub_25C7E97F4(v218, &qword_27FC16048, qword_25C8309D0);

          return;
        }

        v141 = v218;
        sub_25C7E97F4(v218, &qword_27FC16048, qword_25C8309D0);
        sub_25C7E9274(v139, v141, &qword_27FC16048, qword_25C8309D0);
      }

      v142 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v143 = sub_25C82E07C();
      [v142 setDateFormat_];

      v144 = sub_25C82DF4C();
      v145 = [v142 stringFromDate_];

      if (!v145)
      {
        sub_25C82E0AC();
        v145 = sub_25C82E07C();
      }

      [v136 setEvaluationDate_];
      v146 = [v130 modelURL];
      v147 = v215;
      sub_25C82DE7C();

      sub_25C82DE1C();
      (v208->isa)(v147, v216);
      v148 = sub_25C82E07C();

      [v136 setModelName_];

      v149 = v136;
      MEMORY[0x25F88F4D0]();
      if (*((v225 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25C82E1EC();
      }

      sub_25C82E20C();

      v207 = v225;
      v129 = (v129 + 1);
      v45 = v221;
      v127 = v212;
    }

    while (v131 != v128);
  }

  v181 = v45;
  v182 = v218;
  v183 = v195;
  sub_25C7E92DC(v218, v195, &qword_27FC16048, qword_25C8309D0);
  LODWORD(v181) = v219(v183, 1, v181);
  sub_25C7E97F4(v183, &qword_27FC16048, qword_25C8309D0);
  v184 = sub_25C82E25C();
  v185 = qword_281559838;
  if (v181 == 1)
  {
    sub_25C82E00C(v184, &dword_25C7D2000, v185, "Not updating last evaluation date", 33, 2, MEMORY[0x277D84F90]);

    v186 = v217;
    v187 = v222;
  }

  else
  {
    sub_25C82E00C(v184, &dword_25C7D2000, v185, "Updating last evaluation date", 29, 2, MEMORY[0x277D84F90]);

    v187 = v222;
    sub_25C82B334(v182, *&v222[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier], *&v222[OBJC_IVAR___ODCurareInterfaceModuleInternal_clientBundleIdentifier + 8]);
    v186 = v217;
  }

  v188 = v207;
  v189 = &v187[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore];
  __swift_project_boxed_opaque_existential_1(&v187[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore], *&v187[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore + 24]);
  v190 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate;
  sub_25C812D1C(&v187[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionDate], v188, 1);
  if (v186)
  {
    sub_25C7E97F4(v182, &qword_27FC16048, qword_25C8309D0);

    goto LABEL_55;
  }

  __swift_project_boxed_opaque_existential_1(v189, *(v189 + 3));
  sub_25C812D1C(&v187[v190], v201, 0);

  v191 = sub_25C82E25C();
  v192 = qword_281559838;
  sub_25C82E00C(v191, &dword_25C7D2000, v192, "End evaluation", 14, 2, MEMORY[0x277D84F90]);

  sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
  sub_25C82E29C();
  sub_25C7E97F4(v182, &qword_27FC16048, qword_25C8309D0);
}

void sub_25C7E35E8(void *a1, void *a2)
{
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v5 = MEMORY[0x28223BE20](v235);
  v225 = &v220[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v226 = &v220[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v227 = &v220[-v10];
  MEMORY[0x28223BE20](v9);
  v232 = &v220[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v228 = &v220[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v220[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v220[-v18];
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  isa = v236[-1].isa;
  v20 = MEMORY[0x28223BE20](v236);
  v230 = &v220[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v220[-v23];
  MEMORY[0x28223BE20](v22);
  v234 = &v220[-v25];
  v243 = sub_25C82DEAC();
  v245 = *(v243 - 8);
  v26 = MEMORY[0x28223BE20](v243);
  v231 = &v220[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v238 = &v220[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v242 = &v220[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v240 = &v220[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v237 = &v220[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v229 = &v220[-v37];
  MEMORY[0x28223BE20](v36);
  v241 = &v220[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v239 = &v220[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v220[-v43];
  MEMORY[0x28223BE20](v42);
  v247 = &v220[-v45];
  v46 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v47 = qword_281559838;
  sub_25C82E00C(v46, &dword_25C7D2000, v47, "Starting getSelectedModel", 25, 2, MEMORY[0x277D84F90]);

  if (a1 && a2)
  {
    v48 = a1;
    v49 = a2;
    v50 = sub_25C82E25C();
    v51 = qword_281559838;
    sub_25C82E00C(v50, &dword_25C7D2000, v51, "Calling selectModel because necessary paramters were provided", 61, 2, MEMORY[0x277D84F90]);

    v52 = v244;
    sub_25C7E53C0(v48, v49);
    v53 = v2;

    if (v2)
    {
      return;
    }
  }

  else
  {
    v53 = v2;
    v52 = v244;
  }

  v224 = v16;
  v54 = v245;
  v55 = v243;
  v223 = *(v245 + 56);
  v223(v247, 1, 1, v243);
  v56 = *(v52 + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
  if (v56)
  {
    v57 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    v58 = v52 + v57;
    v54 = v245;
    sub_25C7E92DC(v58, v44, &qword_27FC16040, &unk_25C830480);
    if ((*(v54 + 48))(v44, 1, v55) == 1)
    {
      sub_25C7E97F4(v44, &qword_27FC16040, &unk_25C830480);
      v52 = v244;
      goto LABEL_11;
    }

    v63 = *(v54 + 32);
    v64 = v241;
    v236 = (v54 + 32);
    v234 = v63;
    (v63)(v241, v44, v55);
    v65 = v56;
    v66 = sub_25C82E25C();
    v67 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v66))
    {
      isa = v53;
      v68 = v65;
      v69 = v67;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v246[0] = v71;
      *v70 = 136315138;
      v72 = [v68 0x2799B9363];

      if (!v72)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v73 = sub_25C82E0AC();
      v75 = v74;

      v76 = sub_25C7E77E4(v73, v75, v246);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_25C7D2000, v69, v66, "Found selected model from current metadata: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x25F890110](v71, -1, -1);
      MEMORY[0x25F890110](v70, -1, -1);

      v53 = isa;
      v55 = v243;
      v54 = v245;
      v64 = v241;
    }

    v77 = [v65 selectedModelName];
    if (v77)
    {
      v78 = v77;
      v79 = sub_25C82E0AC();
      v81 = v80;

      v82 = sub_25C82E0AC();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {

LABEL_40:
          v136 = sub_25C82E25C();
          v137 = qword_281559838;
          sub_25C82E00C(v136, &dword_25C7D2000, v137, "Metadata selected model URL was nil. Returning failure case.", 60, 2, MEMORY[0x277D84F90]);

          p_info = ODCurareEvaluationAndReportingModule.info;
          (*(v54 + 8))(v64, v55);
LABEL_41:
          v115 = 1;
          v105 = v247;
LABEL_44:
          v89 = v239;
          goto LABEL_45;
        }

        v135 = sub_25C82E4EC();

        if (v135)
        {
          goto LABEL_40;
        }

LABEL_26:
        v106 = sub_25C82DE1C();
        v108 = v107;
        v109 = [v65 selectedModelName];
        if (v109)
        {
          v110 = v109;
          v111 = sub_25C82E0AC();
          v113 = v112;

          if (v106 == v111 && v108 == v113)
          {

            v54 = v245;
            v89 = v239;
            v64 = v241;
LABEL_33:
            v105 = v247;
            sub_25C7E97F4(v247, &qword_27FC16040, &unk_25C830480);
            (v234)(v105, v64, v55);
            v223(v105, 0, 1, v55);
            v115 = 0;
            p_info = (ODCurareEvaluationAndReportingModule + 32);
            goto LABEL_45;
          }

          v114 = sub_25C82E4EC();

          v54 = v245;
          v64 = v241;
          if (v114)
          {

            v89 = v239;
            goto LABEL_33;
          }
        }

        else
        {
        }

        v116 = sub_25C82E25C();
        v117 = qword_281559838;
        v118 = v229;
        (*(v54 + 16))(v229, v64, v55);
        if (os_log_type_enabled(v117, v116))
        {
          isa = v53;
          v119 = v65;
          v236 = v117;
          v120 = swift_slowAlloc();
          v121 = v54;
          v122 = swift_slowAlloc();
          v246[0] = v122;
          *v120 = 136315394;
          v123 = sub_25C82DE1C();
          v124 = v118;
          v125 = v55;
          v127 = v126;
          v234 = *(v121 + 8);
          (v234)(v124, v125);
          v128 = sub_25C7E77E4(v123, v127, v246);

          *(v120 + 4) = v128;
          *(v120 + 12) = 2080;
          v129 = [v119 selectedModelName];

          if (!v129)
          {
LABEL_68:
            __break(1u);
            return;
          }

          v130 = sub_25C82E0AC();
          v132 = v131;

          v133 = sub_25C7E77E4(v130, v132, v246);

          *(v120 + 14) = v133;
          v134 = v236;
          _os_log_impl(&dword_25C7D2000, v236, v116, "Mismatch in state, selectedModelURL does not match metadata.selectedModelName. %s vs %s", v120, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x25F890110](v122, -1, -1);
          MEMORY[0x25F890110](v120, -1, -1);

          (v234)(v241, v125);
          v115 = 1;
          v53 = isa;
          v55 = v125;
          v54 = v245;
        }

        else
        {

          v138 = *(v54 + 8);
          v138(v118, v55);
          v138(v64, v55);
          v115 = 1;
        }

        v105 = v247;
        p_info = ODCurareEvaluationAndReportingModule.info;
        goto LABEL_44;
      }
    }

    else
    {
      sub_25C82E0AC();
    }

    goto LABEL_26;
  }

LABEL_11:
  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore), *(v52 + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore + 24));
  sub_25C8081D4(v19);
  if (!v53)
  {
    v59 = v236;
    if ((*(isa + 6))(v19, 1, v236) != 1)
    {
      isa = 0;
      v84 = v19;
      v85 = v234;
      sub_25C7E9274(v84, v234, &qword_27FC16090, qword_25C8304A0);
      v86 = sub_25C82E25C();
      v87 = qword_281559838;
      sub_25C7E92DC(v85, v24, &qword_27FC16090, qword_25C8304A0);
      v88 = os_log_type_enabled(v87, v86);
      v89 = v239;
      if (v88)
      {
        v241 = v87;
        v90 = swift_slowAlloc();
        v222 = v90;
        v229 = swift_slowAlloc();
        v246[0] = v229;
        *v90 = 136315138;
        v91 = v230;
        sub_25C7E92DC(v24, v230, &qword_27FC16090, qword_25C8304A0);

        v92 = v245;
        v93 = v237;
        v55 = v243;
        (*(v245 + 32))(v237, v91, v243);
        sub_25C7E97AC(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v94 = sub_25C82E4DC();
        v221 = v86;
        v95 = v94;
        v97 = v96;
        (*(v92 + 8))(v93, v55);
        sub_25C7E97F4(v24, &qword_27FC16090, qword_25C8304A0);
        v98 = v95;
        v99 = v236;
        v100 = v91;
        v101 = sub_25C7E77E4(v98, v97, v246);

        v102 = v222;
        *(v222 + 1) = v101;
        v103 = v241;
        _os_log_impl(&dword_25C7D2000, v241, v221, "Loaded selected model from previous metadata: %s", v102, 0xCu);
        v104 = v229;
        __swift_destroy_boxed_opaque_existential_0Tm(v229);
        MEMORY[0x25F890110](v104, -1, -1);
        MEMORY[0x25F890110](v102, -1, -1);

        v105 = v247;
        sub_25C7E97F4(v247, &qword_27FC16040, &unk_25C830480);
      }

      else
      {
        sub_25C7E97F4(v24, &qword_27FC16090, qword_25C8304A0);
        v105 = v247;
        sub_25C7E97F4(v247, &qword_27FC16040, &unk_25C830480);
        v55 = v243;
        v99 = v59;
        v92 = v245;
        v100 = v230;
      }

      sub_25C7E9274(v234, v100, &qword_27FC16090, qword_25C8304A0);

      (*(v92 + 32))(v105, v100, v55);
      v223(v105, 0, 1, v55);
      v115 = 0;
      v53 = isa;
      v54 = v92;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
LABEL_45:
      sub_25C7E92DC(v105, v89, &qword_27FC16040, &unk_25C830480);
      if ((*(v54 + 48))(v89, 1, v55) == 1)
      {
        sub_25C7E97F4(v89, &qword_27FC16040, &unk_25C830480);
        v139 = sub_25C82E25C();
        v140 = p_info[263];
        sub_25C82E00C(v139, &dword_25C7D2000, v140, "Failed to get latest model.", 27, 2, MEMORY[0x277D84F90]);

        v141 = 0;
LABEL_47:
        v142 = sub_25C82E25C();
        v143 = p_info[263];
        sub_25C82E00C(v142, &dword_25C7D2000, v143, "Failed to load any model. Returning failure state.", 50, 2, MEMORY[0x277D84F90]);

        sub_25C82E0AC();
        v144 = v237;
        sub_25C82DE0C();

        v145 = objc_allocWithZone(ODCurareCandidateModel);
        v146 = sub_25C82DE2C();
        v147 = sub_25C82E07C();
        v148 = [v145 initWithModelURL:v146 withBiomeStreamIdentifier:v147 andMetadata:0];

        v244 = *(v54 + 8);
        (v244)(v144, v55);
LABEL_48:
        v149 = sub_25C82E25C();
        v150 = p_info[263];
        if (os_log_type_enabled(v150, v149))
        {
          v151 = v150;
          v152 = v148;
          v153 = swift_slowAlloc();
          v154 = swift_slowAlloc();
          v246[0] = v154;
          *v153 = 136315138;
          if (v152)
          {
            v155 = v154;

            v156 = [v152 modelURL];
            v157 = v231;
            sub_25C82DE7C();

            sub_25C7E97AC(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v158 = sub_25C82E4DC();
            v159 = v55;
            v161 = v160;
            (v244)(v157, v159);
            v162 = sub_25C7E77E4(v158, v161, v246);

            *(v153 + 4) = v162;
            _os_log_impl(&dword_25C7D2000, v151, v149, "Returning candidate model with URL: %s", v153, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v155);
            MEMORY[0x25F890110](v155, -1, -1);
            MEMORY[0x25F890110](v153, -1, -1);

            goto LABEL_56;
          }

          __break(1u);
        }

        else if (v148)
        {
          goto LABEL_56;
        }

        __break(1u);
        goto LABEL_67;
      }

      LODWORD(v239) = v115;
      v163 = v240;
      (*(v54 + 32))(v240, v89, v55);
      v164 = v244;
      sub_25C82DE5C();
      v165 = (v164 + OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore);
      __swift_project_boxed_opaque_existential_1((v164 + OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore), *(v164 + OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore + 24));
      v166 = sub_25C82DFBC();
      v167 = v55;
      v168 = v166[-1].isa;
      v169 = v168[7].isa;
      v170 = v224;
      v241 = v166;
      v244 = v169;
      v169(v224, 1, 1);
      v171 = v163;
      v172 = v242;
      sub_25C822E90(v171, v170, v242, v238);
      if (v53)
      {
        sub_25C7E97F4(v170, &qword_27FC16048, qword_25C8309D0);
        v173 = *(v54 + 8);
        v173(v172, v167);
        v173(v240, v167);
        goto LABEL_56;
      }

      v236 = v168;
      sub_25C7E97F4(v170, &qword_27FC16048, qword_25C8309D0);
      __swift_project_boxed_opaque_existential_1(v165, v165[3]);
      v174 = v235;
      v175 = v235[12];
      v176 = v228;
      (v244)(v228, 1, 1, v241);
      v177 = v232;
      sub_25C820990(v246, v232, &v232[v175], v240, v176);
      isa = 0;
      v244 = v246[0];
      v234 = v246[1];
      v178 = v246[2];
      v179 = v246[3];
      v180 = v246[4];
      v181 = v246[5];
      v182 = v174[16];
      v183 = v176;
      v184 = v235[20];
      v185 = &v177[v235[24]];
      v186 = &v177[v235[28]];
      sub_25C7E97F4(v183, &qword_27FC16048, qword_25C8309D0);
      *&v177[v182] = v244;
      *&v177[v184] = v234;
      v187 = v235;
      *v185 = v178;
      v185[1] = v179;
      *v186 = v180;
      v186[1] = v181;
      v188 = v227;
      sub_25C7E92DC(v177, v227, &qword_27FC16080, &qword_25C830490);
      v189 = v187[12];

      if (*&v188[v187[28] + 8])
      {
        v190 = *(v245 + 8);
        v191 = v243;
        v190(&v188[v189], v243);
        v192 = v236[1].isa;
        ++v236;
        v234 = v192;
        (v192)(v188, v241);
        v193 = v226;
        sub_25C7E92DC(v232, v226, &qword_27FC16080, &qword_25C830490);
        v244 = v187[12];

        v230 = *&v193[v187[20]];

        v194 = objc_allocWithZone(ODCurareCandidateModel);
        v195 = v238;
        v196 = sub_25C82DE2C();
        v197 = sub_25C82E07C();

        v198 = v194;
        v199 = v230;
        v141 = [v198 initWithModelURL:v196 withCoreDuetStreamIdentifier:v197 andMetadata:v230];

        v54 = v245;
        sub_25C7E97F4(v232, &qword_27FC16080, &qword_25C830490);
        v190(v195, v191);
        v190(v242, v191);
        v190(v240, v191);
        v200 = &v193[v244];
        v244 = v190;
        v190(v200, v191);
        v55 = v191;
        (v234)(v193, v241);
        v148 = v141;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
      }

      else
      {
        v201 = *(v245 + 8);
        v202 = v243;
        v201(&v188[v189], v243);
        v203 = v236[1].isa;
        v204 = v241;
        ++v236;
        v234 = v203;
        (v203)(v188);
        v205 = v225;
        sub_25C7E92DC(v232, v225, &qword_27FC16080, &qword_25C830490);
        v206 = v187[12];

        v207 = &v205[v187[24]];
        v208 = v207[1];
        v244 = *v207;

        p_info = ODCurareEvaluationAndReportingModule.info;
        v209 = &v205[v206];
        if (!v208)
        {
          v201(v209, v202);
          (v234)(v205, v204);
          v217 = v201;
          v218 = sub_25C82E27C();
          v219 = qword_281559838;
          sub_25C82E00C(v218, &dword_25C7D2000, v219, "Extracted model did not have model information. Returning failure case.", 71, 2, MEMORY[0x277D84F90]);

          sub_25C7E97F4(v232, &qword_27FC16080, &qword_25C830490);
          v217(v238, v202);
          v217(v242, v202);
          v217(v240, v202);
          v141 = 0;
          v55 = v202;
          v54 = v245;
          goto LABEL_47;
        }

        v201(v209, v202);
        (v234)(v205, v204);
        v210 = v187;
        v211 = v226;
        sub_25C7E92DC(v232, v226, &qword_27FC16080, &qword_25C830490);
        v230 = v210[12];

        v229 = *&v211[v210[20]];

        v212 = objc_allocWithZone(ODCurareCandidateModel);
        v213 = sub_25C82DE2C();
        v214 = sub_25C82E07C();

        v215 = v212;
        v216 = v229;
        v141 = [v215 initWithModelURL:v213 withBiomeStreamIdentifier:v214 andMetadata:v229];

        sub_25C7E97F4(v232, &qword_27FC16080, &qword_25C830490);
        v201(v238, v202);
        v201(v242, v202);
        v201(v240, v202);
        v244 = v201;
        v201(&v211[v230], v202);
        (v234)(v211, v241);
        v148 = v141;
        v55 = v202;
        v54 = v245;
      }

      if ((v239 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    sub_25C7E97F4(v19, &qword_27FC16088, &qword_25C830498);
    v60 = sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    v62 = qword_281559838;
    sub_25C82E00C(v60, &dword_25C7D2000, v62, "No metadata, current or saved. Returning failure case.", 54, 2, MEMORY[0x277D84F90]);

    goto LABEL_41;
  }

LABEL_56:
  sub_25C7E97F4(v247, &qword_27FC16040, &unk_25C830480);
}

void sub_25C7E53C0(__objc2_class_ro **a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v188 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  MEMORY[0x28223BE20](v7 - 8);
  v181 = v162 - v8;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v179 = *(v180 - 8);
  v9 = MEMORY[0x28223BE20](v180);
  v178 = v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v177 = v162 - v11;
  v12 = sub_25C82DEAC();
  v184 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v182 = v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v183 = v162 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v17 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16);
  v187 = v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v200 = v162 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v202 = v162 - v23;
  MEMORY[0x28223BE20](v22);
  v199 = v162 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  MEMORY[0x28223BE20](v25 - 8);
  v185 = v162 - v26;
  v27 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  p_info = ODCurareEvaluationAndReportingModule.info;
  v29 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v27))
  {
    v30 = v29;
    v201 = v3;
    v31 = v16;
    v32 = v30;
    v33 = swift_slowAlloc();
    v34 = v12;
    v35 = v17;
    v36 = a1;
    v37 = v5;
    v38 = swift_slowAlloc();
    *v33 = 138412290;
    v39 = v188;
    *(v33 + 4) = v188;
    *v38 = v39;
    v40 = v39;
    _os_log_impl(&dword_25C7D2000, v32, v27, "Start selectModel with selectionPolicy: %@", v33, 0xCu);
    sub_25C7E97F4(v38, &qword_27FC16100, &qword_25C8305B8);
    v41 = v38;
    v5 = v37;
    a1 = v36;
    v17 = v35;
    v12 = v34;
    p_info = ODCurareEvaluationAndReportingModule.info;
    MEMORY[0x25F890110](v41, -1, -1);
    MEMORY[0x25F890110](v33, -1, -1);

    v16 = v31;
    v4 = v201;
  }

  if (([a1 isDefaultModel] & 1) == 0)
  {
    v44 = sub_25C82E27C();
    v45 = qword_281559838;
    sub_25C82E00C(v44, &dword_25C7D2000, v45, "selectModel was called with a model that is not the default model.", 66, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    *v46 = 26;
    swift_willThrow();
    return;
  }

  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore], *&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelEvaluationSummaryStore + 24]);
  v42 = sub_25C8131CC(1);
  if (v4)
  {
    return;
  }

  if (!(v42 >> 62))
  {
    v43 = v42;
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_36:
    v85 = sub_25C82E25C();
    v86 = p_info[263];
    sub_25C82E00C(v85, &dword_25C7D2000, v86, "modelEvaluations was empty, so skipping all other selection processes and returning nil after setting selected model to nil.", 124, 2, MEMORY[0x277D84F90]);

    v87 = *&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata];
    if (v87)
    {
      v88 = v87;

      [v88 setSelectedModelName_];

      sub_25C82E0AC();
      v89 = v185;
      sub_25C82DE9C();

      v90 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
      swift_beginAccess();
      sub_25C7E6CC0(v89, &v5[v90], &qword_27FC16040, &unk_25C830480);
      swift_endAccess();
      return;
    }

    goto LABEL_71;
  }

LABEL_35:
  v43 = v42;
  if (!sub_25C82E43C())
  {
    goto LABEL_36;
  }

LABEL_9:
  v204 = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore], *&v5[OBJC_IVAR___ODCurareInterfaceModuleInternal_modelStore + 24]);
  v42 = sub_25C81EF2C();
  if (v4)
  {

    return;
  }

  v175 = v43;
  v176 = v12;
  v164 = 0;
  v162[0] = v5;
  v47 = *(v42 + 16);
  v163 = a1;
  v162[1] = v42;
  if (v47)
  {
    v174 = v16[12];
    v173 = v16[16];
    v172 = v16[20];
    v171 = &v199[v16[24]];
    v170 = &v199[v16[28]];
    v42 += (*(v17 + 80) + 32) & ~*(v17 + 80);
    v169 = *(v17 + 72);
    v168 = v200 + 8;
    v165 = v187 + 8;
    v167 = (v184 + 32);
    v48 = MEMORY[0x277D84F90];
    v49 = &qword_25C830490;
    v166 = (v184 + 8);
    do
    {
      v197 = v42;
      v198 = v47;
      v186 = v48;
      v54 = v199;
      sub_25C7E92DC(v42, v199, &qword_27FC16080, v49);
      v195 = *&v54[v173];
      v194 = *&v54[v172];
      v55 = *v171;
      v192 = *(v171 + 1);
      v193 = v55;
      v56 = *v170;
      v190 = *(v170 + 1);
      v191 = v56;
      v57 = v16[12];
      v189 = v16[16];
      v58 = v202;
      v59 = (v202 + v16[24]);
      v60 = (v202 + v16[28]);
      v61 = v16[20];
      v62 = sub_25C82DFBC();
      v196 = *(v62 - 1);
      v63 = *(v196 + 32);
      v201 = v62;
      v63(v58, v54);
      v64 = v58 + v57;
      v65 = &v54[v174];
      v12 = v49;
      a1 = v176;
      (*v167)(v64, v65, v176);
      v66 = v194;
      *(v58 + v189) = v195;
      *(v58 + v61) = v66;
      v67 = v192;
      *v59 = v193;
      v59[1] = v67;
      v68 = v190;
      *v60 = v191;
      v60[1] = v68;
      v69 = v200;
      sub_25C7E92DC(v58, v200, &qword_27FC16080, v12);
      v70 = v16[12];
      v71 = *&v69[v16[16]];

      v5 = v168;

      if (v71)
      {
        v195 = *v166;
        v195(&v69[v70], a1);
        v196 = *(v196 + 8);
        (v196)(v69, v201);
        v72 = v187;
        sub_25C7E92DC(v58, v187, &qword_27FC16080, v12);
        v12 = v16[12];
        v73 = *(v72 + v16[16]);
        v5 = v71;

        v74 = objc_allocWithZone(ODCurareModelInformation);
        v75 = sub_25C82DE2C();
        v76 = [v74 initWithModelInformation:v5 modelURL:v75];

        v195((v72 + v12), a1);
        (v196)(v72, v201);
        v77 = v76;
        MEMORY[0x25F88F4D0]();
        if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v49 = &qword_25C830490;
        sub_25C7E97F4(v202, &qword_27FC16080, &qword_25C830490);
        v48 = v204;
        v52 = v197;
        v53 = v198;
      }

      else
      {
        (*v166)(&v69[v70], a1);
        (*(v196 + 8))(v69, v201);
        v50 = sub_25C82E25C();
        v51 = qword_281559838;
        sub_25C82E00C(v50, &dword_25C7D2000, v51, "Loaded model metadata did not contain modelInformation...skipping", 65, 2, MEMORY[0x277D84F90]);

        sub_25C7E97F4(v58, &qword_27FC16080, v12);
        v48 = v186;
        v52 = v197;
        v53 = v198;
        v49 = v12;
      }

      v42 = v52 + v169;
      v47 = v53 - 1;
    }

    while (v47);
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  if (v48 >> 62)
  {
    v42 = sub_25C82E43C();
    p_info = v42;
    if (v42)
    {
LABEL_24:
      v4 = 0;
      v201 = (v48 & 0xC000000000000001);
      v17 = v48 & 0xFFFFFFFFFFFFFF8;
      v202 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v201)
        {
          v42 = MEMORY[0x25F88F6D0](v4, v48);
        }

        else
        {
          if (v4 >= *(v17 + 16))
          {
            goto LABEL_34;
          }

          v42 = *(v48 + 8 * v4 + 32);
        }

        v5 = v42;
        a1 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v78 = v48;
        v79 = [v42 modelInformation];
        v80 = [v79 modelName];

        if (!v80)
        {
          break;
        }

        v81 = sub_25C82E0AC();
        v16 = v82;

        v12 = sub_25C80BF18(v175, v81, v16);

        v83 = v202;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = v83;
        sub_25C7FC9EC(v12, v5, isUniquelyReferenced_nonNull_native);

        v202 = v203;
        ++v4;
        v48 = v78;
        if (a1 == p_info)
        {
          goto LABEL_40;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }
  }

  else
  {
    p_info = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (p_info)
    {
      goto LABEL_24;
    }
  }

  v202 = MEMORY[0x277D84F98];
LABEL_40:
  v91 = [objc_allocWithZone(ODCurareReportFillerModelInformation) init];
  if (!v91)
  {
    goto LABEL_72;
  }

  v92 = v91;
  v186 = v48;
  v93 = v163;
  v94 = [v163 modelURL];
  v95 = v183;
  sub_25C82DE7C();

  sub_25C82DE1C();
  v96 = v184 + 8;
  v97 = *(v184 + 8);
  v98 = v176;
  v97(v95, v176);
  v99 = sub_25C82E07C();

  [v92 setModelName_];

  [v92 setIsDefaultModel_];
  v100 = v92;
  v101 = [v93 modelURL];
  sub_25C82DE7C();

  v102 = objc_allocWithZone(ODCurareModelInformation);
  v103 = sub_25C82DE2C();
  v104 = [v102 initWithModelInformation:v100 modelURL:v103];

  v197 = v97;
  v198 = v96;
  v97(v95, v98);
  v200 = v100;
  v105 = [v100 modelName];
  if (!v105)
  {
    goto LABEL_73;
  }

  v106 = v105;
  v107 = sub_25C82E0AC();
  v109 = v108;

  v110 = sub_25C80BF18(v175, v107, v109);

  v111 = v202;
  v112 = v202 + 64;
  v113 = 1 << *(v202 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v202 + 64);
  v116 = (v113 + 63) >> 6;
  v117 = v104;

  v118 = 0;
  v119 = v110;
  v199 = v117;
  v201 = v117;
  if (v115)
  {
LABEL_51:
    while (1)
    {
      v121 = (v118 << 9) | (8 * __clz(__rbit64(v115)));
      v122 = *(*(v111 + 56) + v121);
      v123 = *(*(v111 + 48) + v121);

      v125 = v164;
      v126 = sub_25C80EEBC(v124, v110, v188, 1);
      v164 = v125;
      if (v125)
      {
        break;
      }

      v115 &= v115 - 1;
      if (v126 & 1) != 0 && (v127 = v164, v128 = sub_25C80EEBC(v122, v119, v188, 0), v164 = v127, (v128))
      {

        v119 = v122;
        v201 = v123;
        if (!v115)
        {
          goto LABEL_47;
        }
      }

      else
      {

        if (!v115)
        {
          goto LABEL_47;
        }
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_47:
      v120 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        __break(1u);
        goto LABEL_70;
      }

      if (v120 >= v116)
      {
        break;
      }

      v115 = *(v112 + 8 * v120);
      ++v118;
      if (v115)
      {
        v118 = v120;
        goto LABEL_51;
      }
    }

    v129 = [v201 modelURL];
    sub_25C82DE7C();

    v130 = [v163 modelURL];
    v131 = v183;
    sub_25C82DE7C();

    sub_25C7E97AC(&qword_281559830, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v132 = v176;
    LOBYTE(v130) = sub_25C82E06C();
    v133 = v197;
    v197(v131, v132);
    if (v130)
    {
      v134 = v162[0];
      __swift_project_boxed_opaque_existential_1((v162[0] + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore), *(v162[0] + OBJC_IVAR___ODCurareInterfaceModuleInternal_metadataStore + 24));
      v135 = v181;
      v136 = v164;
      sub_25C8081D4(v181);
      v164 = v136;
      if (v136)
      {

        v133(v182, v132);

        return;
      }

      if ((*(v179 + 48))(v135, 1, v180) == 1)
      {
        sub_25C7E97F4(v135, &qword_27FC16088, &qword_25C830498);
        v145 = *(v134 + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
        if (!v145)
        {
          goto LABEL_75;
        }

        v146 = v145;

        [v146 setSelectedModelName_];

        sub_25C82E0AC();
        v147 = v185;
        sub_25C82DE9C();

        v148 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
      }

      else
      {
        v149 = v177;
        sub_25C7E9274(v135, v177, &qword_27FC16090, qword_25C8304A0);
        v150 = *(v134 + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
        if (!v150)
        {
          goto LABEL_76;
        }

        v151 = v150;

        v152 = v178;
        sub_25C7E92DC(v149, v178, &qword_27FC16090, qword_25C8304A0);
        v153 = v180;
        v154 = *(v152 + *(v180 + 48));
        v155 = [v154 selectedModelName];

        [v151 setSelectedModelName_];
        v156 = v197;
        v197(v152, v132);
        sub_25C7E9274(v149, v152, &qword_27FC16090, qword_25C8304A0);

        v157 = v184;
        v147 = v185;
        v158 = v152;
        v133 = v156;
        (*(v184 + 32))(v185, v158, v132);
        (*(v157 + 56))(v147, 0, 1, v132);
        v148 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
        v134 = v162[0];
      }

      swift_beginAccess();
      sub_25C7E6CC0(v147, v134 + v148, &qword_27FC16040, &unk_25C830480);
      swift_endAccess();
      v140 = v182;
    }

    else
    {
      v137 = v162[0];
      v138 = *(v162[0] + OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionMetadata);
      if (!v138)
      {
        goto LABEL_74;
      }

      v139 = v138;

      v140 = v182;
      sub_25C82DE1C();
      v141 = sub_25C82E07C();

      [v139 setSelectedModelName_];

      v142 = v184;
      v143 = v185;
      (*(v184 + 16))(v185, v140, v132);
      (*(v142 + 56))(v143, 0, 1, v132);
      v144 = OBJC_IVAR___ODCurareInterfaceModuleInternal_frameworkExecutionSelectedModelURL;
      swift_beginAccess();
      sub_25C7E6CC0(v143, v137 + v144, &qword_27FC16040, &unk_25C830480);
      swift_endAccess();
    }

    v159 = v199;
    v160 = sub_25C82E25C();
    v161 = qword_281559838;
    sub_25C82E00C(v160, &dword_25C7D2000, v161, "End selectModel", 15, 2, MEMORY[0x277D84F90]);

    v133(v140, v132);
  }
}

id ODCurareInterfaceModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ODCurareInterfaceModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODCurareInterfaceModule(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ODCurareInterfaceModule(uint64_t a1)
{
  result = qword_27FC160A0;
  if (!qword_27FC160A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C7E6CC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7E6D28(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_25C7E6D74(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B8, &qword_25C830570);
  v10 = *(sub_25C82DFBC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25C82DFBC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25C7E6F4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160B0, &unk_25C8308E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25C7E7050(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160E0, &qword_25C830598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7E715C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16110, &qword_25C8305C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16118, &unk_25C8305D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7E7310(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_25C7E7444(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160D0, &qword_25C830588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7E7578(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_25C7E7788(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25C7E77E4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25C7E77E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C7E78B0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25C7E9854(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_25C7E78B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25C7E79BC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25C82E3CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25C7E79BC(uint64_t a1, unint64_t a2)
{
  v3 = sub_25C7E7A08(a1, a2);
  sub_25C7E7B38(&unk_286E6AE28);
  return v3;
}

void *sub_25C7E7A08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25C7E7C24(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25C82E3CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25C82E15C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25C7E7C24(v10, 0);
        result = sub_25C82E39C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25C7E7B38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25C7E7C98(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25C7E7C24(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16108, &qword_25C8305C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25C7E7C98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16108, &qword_25C8305C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_25C7E7D8C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_25C7E7D9C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25C7E7DBC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_25C7E7DEC()
{
  result = qword_27FC16070;
  if (!qword_27FC16070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16070);
  }

  return result;
}

uint64_t sub_25C7E7E40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C7E81F0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C7E7F6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C7E7F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_25C82DF5C();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C7E81F0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v117 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v117 - v16;
  result = MEMORY[0x28223BE20](v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_25C807028(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_25C7E8BDC(*v10 + a3[9] * v114, (*v10 + a3[9] * *(result + 16 * (a4 - 1) + 32)), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_25C807028(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[16 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_25C806F9C(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_25C82DF5C();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_25C82DF5C() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_25C7E6F4C((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_25C7E8BDC(*a3 + v10[9] * v95, (*a3 + v10[9] * *&v21[16 * v56 + 32]), *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_25C807028(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_25C806F9C(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_25C82DF5C();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_25C7E8BDC(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v57 = sub_25C82DFBC();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = &a2[-a1] / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || &a2[v18] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = &a4[v18];
    if (v18 < 1)
    {
      v33 = &a4[v18];
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = &a4[v18];
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = &a2[v30];
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = &v31[v30];
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_25C82DF5C();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = &a4[v17];
    v58 = &a4[v17];
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = (v8 + 16);
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_25C82DF5C();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = &v49[v23];
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = &v49[a4];
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 = &v27[a4];
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_25C80703C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_25C7E9180(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_25C7E9274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7E92DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_25C7E934C(uint64_t a1)
{
  sub_25C82DEAC();
  if (v1 <= 0x3F)
  {
    sub_25C82DFBC();
    if (v2 <= 0x3F)
    {
      sub_25C7E9660(319, &qword_281559820, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_25C7E9660(319, &qword_281559828, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_25C7E9660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25C82E2FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25C7E96B8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25C7E9748(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25C82E43C();
  }

  return sub_25C82E3BC();
}

uint64_t sub_25C7E97AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25C7E97F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C7E9854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C7E98B4()
{

  return swift_deallocClassInstance();
}

void sub_25C7E9918(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_25C7E98B0();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_25C7FD560(v4);
  *a1 = v2;
}

uint64_t sub_25C7E9990()
{
  sub_25C7E96B8(0, &qword_281559478, 0x277D86200);
  result = sub_25C82E2DC();
  qword_281559838 = result;
  return result;
}

id ODCurareEvaluationAndReportingModule.init(bundleIdentifier:dataProviderInstance:evaluationInstance:personalizationInstance:pruningPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v101 = a5;
  v100 = a4;
  v102 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v92 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v78 - v14;
  v97 = sub_25C82DFBC();
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v90 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_25C82DEAC();
  v85 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v89 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ODCurareFileSystemModelStore();
  swift_allocObject();
  v17 = a6;

  v91 = sub_25C81D74C(a6, a1, a2);
  type metadata accessor for ODCurareDataBoundaryStore();
  v18 = swift_allocObject();
  v108 = a1;
  v109 = a2;
  v19 = v17;

  MEMORY[0x25F88F460](0xD000000000000018, 0x800000025C8329D0);
  v20 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v21 = sub_25C82E07C();

  v22 = [v20 init_];

  *(v18 + 16) = v22;
  *(v18 + 24) = a6;
  v95 = v18;
  v23 = type metadata accessor for ODCurareFileSystemModelEvaluationSummaryStore();
  swift_allocObject();
  v24 = v19;

  v79 = a1;
  v25 = sub_25C812BD0(a6, a1, a2);
  v26 = type metadata accessor for ODCurareFileSystemMetadataStore();
  v27 = swift_allocObject();
  v108 = a1;
  v109 = a2;
  v80 = v24;

  MEMORY[0x25F88F460](0x4D5F524543444F2DLL, 0xEF61746164617465);
  v28 = objc_allocWithZone(ODCurareCoreDuetStorage);
  v29 = sub_25C82E07C();

  v30 = [v28 init_];

  *(v27 + 16) = v30;
  *(v27 + 24) = a6;
  v31 = a6;
  v110 = v93;
  v111 = &off_286E6AEB8;
  v108 = v91;
  v107[3] = v23;
  v107[4] = &off_286E6AEA0;
  v107[0] = v25;
  v106[3] = v26;
  v106[4] = &off_286E6AE78;
  v106[0] = v27;
  v93 = type metadata accessor for ODCurareEvaluationAndReportingModule(0);
  v32 = objc_allocWithZone(v93);
  v33 = *(v98 + 56);
  v81 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  v34 = v97;
  v33(&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate], 1, 1, v97);
  v33(&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_lastPersonalizationSampleDate], 1, 1, v34);
  v84 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkEvaluationDate;
  v82 = v33;
  v33(&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkEvaluationDate], 1, 1, v34);
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary] = 0;
  v83 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata] = 0;
  v35 = v85;
  v36 = v85 + 56;
  v37 = *(v85 + 56);
  v88 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
  v38 = v99;
  v37(&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL], 1, 1, v99);
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allUserDataDictionaryAdapted] = 0;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allUserDataDictionaryDefault] = 0;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary] = 0;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResult] = 0;
  v87 = v36;
  v86 = v37;
  v37(&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizedModelPath], 1, 1, v38);
  v39 = &v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier];
  *v39 = v79;
  v39[1] = a2;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance] = v100;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationInstance] = v101;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_dataProviderInstance] = v102;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_pruningPolicy] = v31;
  v91 = v80;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v40 = NSTemporaryDirectory();
  sub_25C82E0AC();

  v41 = v89;
  sub_25C82DDFC();

  (*(v35 + 32))(&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory], v41, v38);
  v42 = MEMORY[0x277D84F98];
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults] = MEMORY[0x277D84F98];
  v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_skipAdaptation] = 0;
  v43 = v90;
  sub_25C82DFAC();
  v44 = v97;
  (*(v98 + 32))(&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate], v43);
  v45 = *v39;
  v46 = v39[1];

  sub_25C82B87C(v45, v46);
  v48 = v47;

  v49 = 1;
  if (v48 != 0.0)
  {
    sub_25C82DF2C();
    v49 = 0;
  }

  v50 = 1;
  v51 = v96;
  v52 = v82;
  v82(v96, v49, 1, v44);
  v53 = v81;
  swift_beginAccess();
  sub_25C7E6CC0(v51, &v32[v53], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v55 = *v39;
  v54 = v39[1];

  sub_25C82BDBC(v55, v54);
  v57 = v56;

  v58 = v92;
  if (v57 != 0.0)
  {
    sub_25C82DF2C();
    v50 = 0;
  }

  v52(v58, v50, 1, v44);
  v59 = v84;
  swift_beginAccess();
  sub_25C7E6CC0(v58, &v32[v59], &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v60 = *&v32[v83];
  *&v32[v83] = 0;

  v61 = v94;
  v86(v94, 1, 1, v99);
  v62 = v88;
  swift_beginAccess();
  sub_25C7E6CC0(v61, &v32[v62], &qword_27FC16040, &unk_25C830480);
  swift_endAccess();
  sub_25C7E9180(&v108, &v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore]);
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_boundaryList] = v95;
  sub_25C7E9180(v107, &v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore]);
  sub_25C7E9180(v106, &v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore]);
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary] = v42;
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResults] = v42;
  v63 = MEMORY[0x277D84F90];
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults] = MEMORY[0x277D84F90];
  *&v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_historicalModelEvaluationResults] = v63;
  v65 = *v39;
  v64 = v39[1];

  sub_25C829324(v65, v64);

  v67 = *v39;
  v66 = v39[1];

  v68 = sub_25C82950C(v67, v66);

  v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure] = v68 > 99;
  if (v68 >= 100)
  {
    v70 = *v39;
    v69 = v39[1];

    v71 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v72 = qword_281559838;
    sub_25C82E00C(v71, &dword_25C7D2000, v72, "Resetting currentExecutionCount to 0.", 37, 2, MEMORY[0x277D84F90]);

    v104 = v70;
    v105 = v69;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

    v73 = [objc_opt_self() standardUserDefaults];
    v74 = sub_25C82E22C();
    v75 = sub_25C82E07C();

    [v73 setValue:v74 forKey:v75];
  }

  v32[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport] = 0;
  v103.receiver = v32;
  v103.super_class = v93;
  v76 = objc_msgSendSuper2(&v103, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v106);
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  __swift_destroy_boxed_opaque_existential_0Tm(&v108);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v76;
}

void sub_25C7EA7A0()
{
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v1 = MEMORY[0x28223BE20](v263);
  v251 = &v248 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v252 = &v248 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v253 = &v248 - v6;
  MEMORY[0x28223BE20](v5);
  v257 = &v248 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v254 = (&v248 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v264 = (&v248 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v248 - v13;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  isa = v265[-1].isa;
  v15 = MEMORY[0x28223BE20](v265);
  v256 = (&v248 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v259 = (&v248 - v18);
  MEMORY[0x28223BE20](v17);
  v262 = (&v248 - v19);
  v20 = sub_25C82DEAC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v258 = &v248 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v267 = &v248 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v271 = (&v248 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v270 = (&v248 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v266 = &v248 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v255 = &v248 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v248 - v35;
  MEMORY[0x28223BE20](v34);
  v272 = (&v248 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v269 = (&v248 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v248 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v248 - v44;
  v46 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v47 = qword_281559838;
  sub_25C82E00C(v46, &dword_25C7D2000, v47, "Starting getSelectedModel", 25, 2, MEMORY[0x277D84F90]);

  v274 = v21;
  v275 = v45;
  v48 = *(v21 + 56);
  v273 = v20;
  v260 = v48;
  v48(v45, 1, 1, v20);
  v49 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
  v50 = v0;
  if (!v49)
  {
    goto LABEL_6;
  }

  v51 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
  swift_beginAccess();
  v268 = v0;
  sub_25C7E92DC(v0 + v51, v43, &qword_27FC16040, &unk_25C830480);
  v52 = v273;
  v53 = v274;
  if ((*(v274 + 48))(v43, 1, v273) == 1)
  {
    sub_25C7E97F4(v43, &qword_27FC16040, &unk_25C830480);
    v50 = v268;
LABEL_6:
    __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore), *(v50 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore + 24));
    v54 = v277;
    sub_25C8081D4(v14);
    v55 = v54;
    if (v54)
    {
      goto LABEL_51;
    }

    v56 = v265;
    v57 = (*(isa + 6))(v14, 1, v265);
    v268 = v50;
    if (v57 != 1)
    {
      v99 = v262;
      sub_25C7E9274(v14, v262, &qword_27FC16090, qword_25C8304A0);
      v100 = sub_25C82E25C();
      v101 = qword_281559838;
      v102 = v99;
      v103 = v259;
      sub_25C7E92DC(v102, v259, &qword_27FC16090, qword_25C8304A0);
      if (os_log_type_enabled(v101, v100))
      {
        v272 = v101;
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v277 = 0;
        isa = v105;
        v276[0] = v105;
        *v104 = 136315138;
        v106 = v256;
        sub_25C7E92DC(v103, v256, &qword_27FC16090, qword_25C8304A0);

        v108 = v273;
        v107 = v274;
        v109 = v266;
        (*(v274 + 32))(v266, v106, v273);
        sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v110 = sub_25C82E4DC();
        v112 = v111;
        (*(v107 + 8))(v109, v108);
        sub_25C7E97F4(v259, &qword_27FC16090, qword_25C8304A0);
        v113 = sub_25C7E77E4(v110, v112, v276);
        v114 = v106;

        *(v104 + 4) = v113;
        v115 = v272;
        _os_log_impl(&dword_25C7D2000, v272, v100, "Loaded selected model from previous metadata: %s", v104, 0xCu);
        v116 = isa;
        __swift_destroy_boxed_opaque_existential_0Tm(isa);
        v55 = v277;
        MEMORY[0x25F890110](v116, -1, -1);
        MEMORY[0x25F890110](v104, -1, -1);

        v117 = v265;
        v118 = v275;
        sub_25C7E97F4(v275, &qword_27FC16040, &unk_25C830480);
        v119 = v271;
        v120 = v269;
      }

      else
      {
        sub_25C7E97F4(v103, &qword_27FC16090, qword_25C8304A0);
        v118 = v275;
        sub_25C7E97F4(v275, &qword_27FC16040, &unk_25C830480);
        v117 = v56;
        v108 = v273;
        v107 = v274;
        v119 = v271;
        v120 = v269;
        v114 = v256;
      }

      sub_25C7E9274(v262, v114, &qword_27FC16090, qword_25C8304A0);

      (*(v107 + 32))(v118, v114, v108);
      v260(v118, 0, 1, v108);
      v61 = 0;
      v157 = v108;
      v63 = v107;
      v62 = v157;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
LABEL_42:
      sub_25C7E92DC(v118, v120, &qword_27FC16040, &unk_25C830480);
      v162 = (v63[6])(v120, 1, v62);
      v277 = v55;
      if (v162 == 1)
      {
        sub_25C7E97F4(v120, &qword_27FC16040, &unk_25C830480);
        v163 = sub_25C82E25C();
        v164 = p_info[263];
        sub_25C82E00C(v163, &dword_25C7D2000, v164, "Failed to get latest model.", 27, 2, MEMORY[0x277D84F90]);

        v165 = 0;
LABEL_44:
        v166 = sub_25C82E25C();
        v167 = p_info[263];
        sub_25C82E00C(v166, &dword_25C7D2000, v167, "Failed to load any model. Returning failure state.", 50, 2, MEMORY[0x277D84F90]);

        sub_25C82E0AC();
        v168 = v266;
        sub_25C82DE0C();

        v169 = objc_allocWithZone(ODCurareCandidateModel);
        v170 = sub_25C82DE2C();
        v171 = sub_25C82E07C();
        v172 = [v169 initWithModelURL:v170 withBiomeStreamIdentifier:v171 andMetadata:0];

        v173 = v63[1];
        v173(v168, v62);
LABEL_45:
        v174 = sub_25C82E25C();
        v175 = p_info[263];
        if (os_log_type_enabled(v175, v174))
        {
          v269 = v173;
          v176 = v175;
          v177 = v172;
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v276[0] = v179;
          *v178 = 136315138;
          if (v177)
          {
            v180 = v179;

            v181 = [v177 modelURL];
            v182 = v258;
            sub_25C82DE7C();

            sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v183 = sub_25C82E4DC();
            v184 = v62;
            v186 = v185;
            v269(v182, v184);
            v187 = sub_25C7E77E4(v183, v186, v276);

            *(v178 + 4) = v187;
            _os_log_impl(&dword_25C7D2000, v176, v174, "Returning candidate model with URL: %s", v178, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v180);
            MEMORY[0x25F890110](v180, -1, -1);
            MEMORY[0x25F890110](v178, -1, -1);

LABEL_51:
            sub_25C7E97F4(v275, &qword_27FC16040, &unk_25C830480);
            return;
          }

          __break(1u);
        }

        else if (v172)
        {
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_63;
      }

      LODWORD(v265) = v61;
      v188 = v270;
      (v63[4])(v270, v120, v62);
      v189 = v268;
      sub_25C82DE5C();
      v190 = (v189 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore);
      __swift_project_boxed_opaque_existential_1((v189 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v189 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
      v191 = sub_25C82DFBC();
      v192 = v191[-1].isa;
      v193 = *(v192 + 7);
      v194 = v264;
      v272 = v191;
      v269 = v193;
      (v193)(v264, 1, 1);
      v195 = v277;
      sub_25C822E90(v188, v194, v119, v267);
      if (v195)
      {
        sub_25C7E97F4(v194, &qword_27FC16048, qword_25C8309D0);
        v196 = v63[1];
        v196(v119, v62);
        v196(v270, v62);
        goto LABEL_51;
      }

      v268 = v192;
      sub_25C7E97F4(v194, &qword_27FC16048, qword_25C8309D0);
      __swift_project_boxed_opaque_existential_1(v190, v190[3]);
      v197 = v263;
      v198 = v263[12];
      v199 = v254;
      (v269)(v254, 1, 1, v272);
      v200 = v257 + v198;
      v201 = v257;
      sub_25C820990(v276, v257, v200, v270, v199);
      v277 = 0;
      v269 = v276[0];
      v264 = v276[1];
      v202 = v199;
      v203 = v276[2];
      v204 = v276[3];
      v205 = v276[4];
      v206 = v276[5];
      v207 = v197[16];
      v208 = v263[20];
      v209 = (v201 + v263[24]);
      v210 = v201;
      v211 = (v201 + v263[28]);
      sub_25C7E97F4(v202, &qword_27FC16048, qword_25C8309D0);
      *(v210 + v207) = v269;
      *(v210 + v208) = v264;
      v212 = v263;
      *v209 = v203;
      v209[1] = v204;
      *v211 = v205;
      v211[1] = v206;
      v213 = v210;
      v214 = v253;
      sub_25C7E92DC(v210, v253, &qword_27FC16080, &qword_25C830490);
      v215 = v212[12];

      if (*(v214 + v212[28] + 8))
      {
        v216 = *(v274 + 8);
        v216(v214 + v215, v273);
        v269 = *(v268 + 1);
        v269(v214, v272);
        v217 = v252;
        sub_25C7E92DC(v213, v252, &qword_27FC16080, &qword_25C830490);
        v268 = v212[12];

        v264 = *(v217 + v212[20]);

        v218 = objc_allocWithZone(ODCurareCandidateModel);
        v219 = v267;
        v220 = sub_25C82DE2C();
        v221 = sub_25C82E07C();

        v222 = v218;
        v223 = v264;
        v165 = [v222 initWithModelURL:v220 withCoreDuetStreamIdentifier:v221 andMetadata:v264];

        sub_25C7E97F4(v257, &qword_27FC16080, &qword_25C830490);
        v224 = v219;
        v62 = v273;
        v63 = v274;
        v216(v224, v273);
        v216(v271, v62);
        v216(v270, v62);
        v216(v268 + v217, v62);
        v173 = v216;
        v269(v217, v272);
        v172 = v165;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
      }

      else
      {
        v225 = v273;
        v226 = *(v274 + 8);
        v226(v214 + v215, v273);
        v227 = *(v268 + 1);
        v268 = (v268 + 8);
        v264 = v227;
        (v227)(v214, v272);
        v228 = v251;
        sub_25C7E92DC(v213, v251, &qword_27FC16080, &qword_25C830490);
        v229 = v212[12];

        v230 = v228 + v212[24];
        v231 = *(v230 + 8);
        v262 = *v230;

        v232 = v212;
        v233 = v267;
        v234 = v228 + v229;
        if (!v231)
        {
          v245 = v226;
          v226(v234, v225);
          (v264)(v228, v272);
          v246 = sub_25C82E27C();
          p_info = ODCurareEvaluationAndReportingModule.info;
          v247 = qword_281559838;
          sub_25C82E00C(v246, &dword_25C7D2000, v247, "Extracted model did not have model information. Returning failure case.", 71, 2, MEMORY[0x277D84F90]);

          sub_25C7E97F4(v213, &qword_27FC16080, &qword_25C830490);
          v245(v233, v225);
          v245(v271, v225);
          v245(v270, v225);
          v165 = 0;
          v63 = v274;
          v62 = v225;
          goto LABEL_44;
        }

        v269 = v226;
        v226(v234, v225);
        (v264)(v228, v272);
        v235 = v252;
        sub_25C7E92DC(v213, v252, &qword_27FC16080, &qword_25C830490);
        isa = v232[12];

        v260 = *(v235 + v232[20]);

        v236 = objc_allocWithZone(ODCurareCandidateModel);
        v237 = sub_25C82DE2C();
        v238 = sub_25C82E07C();

        v239 = v236;
        v240 = v273;
        v241 = v260;
        v165 = [v239 initWithModelURL:v237 withBiomeStreamIdentifier:v238 andMetadata:v260];

        sub_25C7E97F4(v213, &qword_27FC16080, &qword_25C830490);
        v242 = v233;
        v62 = v240;
        v243 = v240;
        v244 = v269;
        v269(v242, v243);
        v244(v271, v62);
        v244(v270, v62);
        v244((isa + v235), v62);
        v173 = v244;
        (v264)(v235, v272);
        v172 = v165;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        v63 = v274;
      }

      if ((v265 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }

    sub_25C7E97F4(v14, &qword_27FC16088, &qword_25C830498);
    v58 = sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    v60 = qword_281559838;
    sub_25C82E00C(v58, &dword_25C7D2000, v60, "No metadata, current or saved. Returning failure case.", 54, 2, MEMORY[0x277D84F90]);

    v61 = 1;
    v62 = v273;
    v63 = v274;
    goto LABEL_39;
  }

  v64 = v53[4];
  v65 = v272;
  v256 = v53 + 4;
  v250 = v64;
  v64(v272, v43, v52);
  v66 = v49;
  v67 = sub_25C82E25C();
  p_info = ODCurareEvaluationAndReportingModule.info;
  v68 = qword_281559838;
  v69 = v53[2];
  isa = (v53 + 2);
  v259 = v69;
  (v69)(v36, v65, v52);
  LODWORD(v262) = v67;
  v70 = os_log_type_enabled(v68, v67);
  v265 = v66;
  if (v70)
  {
    v71 = v66;
    v249 = v68;
    v72 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    v276[0] = v248;
    *v72 = 136315394;
    v73 = [v71 selectedModelName];

    if (!v73)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v74 = sub_25C82E0AC();
    v76 = v75;

    v77 = sub_25C7E77E4(v74, v76, v276);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    v78 = sub_25C82DDDC();
    v80 = v79;
    v82 = v273;
    v81 = v274;
    v83 = v36;
    v84 = *(v274 + 8);
    v84(v83, v273);
    v85 = sub_25C7E77E4(v78, v80, v276);

    *(v72 + 14) = v85;
    v86 = v249;
    _os_log_impl(&dword_25C7D2000, v249, v262, "Found selected model from current metadata: %s, frameworkExecutionSelectedModelURL: %s", v72, 0x16u);
    v87 = v248;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v87, -1, -1);
    v88 = v72;
    v62 = v82;
    v63 = v81;
    MEMORY[0x25F890110](v88, -1, -1);

    p_info = (ODCurareEvaluationAndReportingModule + 32);
  }

  else
  {
    v89 = v52;
    v63 = v53;
    v90 = v36;
    v84 = v53[1];
    v84(v90, v89);
    v62 = v89;
  }

  v262 = v84;
  v91 = [v265 selectedModelName];
  v92 = v272;
  if (!v91)
  {
    sub_25C82E0AC();
    goto LABEL_21;
  }

  v93 = v91;
  v94 = sub_25C82E0AC();
  v96 = v95;

  v97 = sub_25C82E0AC();
  if (!v96)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v94 == v97 && v96 == v98)
  {

LABEL_36:
    v159 = sub_25C82E25C();
    v160 = p_info[263];
    sub_25C82E00C(v159, &dword_25C7D2000, v160, "Metadata selected model URL was nil. Returning failure case.", 60, 2, MEMORY[0x277D84F90]);

    v262(v92, v62);
LABEL_38:
    v61 = 1;
    v55 = v277;
LABEL_39:
    v118 = v275;
    goto LABEL_40;
  }

  v158 = sub_25C82E4EC();

  if (v158)
  {
    goto LABEL_36;
  }

LABEL_22:
  v121 = sub_25C82DE1C();
  v123 = v122;
  v124 = 0x2799B9000uLL;
  v125 = v265;
  v126 = [v265 selectedModelName];
  if (v126)
  {
    v127 = v62;
    v128 = v125;
    v129 = v126;
    v130 = sub_25C82E0AC();
    v132 = v131;

    if (v121 == v130 && v123 == v132)
    {

      v118 = v275;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      v119 = v271;
      v62 = v127;
LABEL_29:
      sub_25C7E97F4(v118, &qword_27FC16040, &unk_25C830480);
      v250(v118, v272, v62);
      v260(v118, 0, 1, v62);
      v61 = 0;
      v55 = v277;
LABEL_41:
      v120 = v269;
      goto LABEL_42;
    }

    v133 = sub_25C82E4EC();

    p_info = (ODCurareEvaluationAndReportingModule + 32);
    v125 = v128;
    v62 = v127;
    v124 = 0x1FD6EB000;
    if (v133)
    {

      v118 = v275;
      v119 = v271;
      goto LABEL_29;
    }
  }

  else
  {
  }

  v134 = sub_25C82E25C();
  v135 = p_info[263];
  v136 = v255;
  v137 = v272;
  (v259)(v255, v272, v62);
  if (!os_log_type_enabled(v135, v134))
  {

    v161 = v262;
    v262(v136, v62);
    v161(v137, v62);
    goto LABEL_38;
  }

  LODWORD(isa) = v134;
  v138 = v125;
  v265 = v135;
  v139 = v63;
  v140 = v62;
  v141 = swift_slowAlloc();
  v142 = swift_slowAlloc();
  v276[0] = v142;
  *v141 = 136315394;
  v143 = v124;
  v144 = sub_25C82DE1C();
  v146 = v145;
  v147 = v136;
  v148 = v262;
  v260 = (v139 + 1);
  v262(v147, v140);
  v149 = sub_25C7E77E4(v144, v146, v276);

  *(v141 + 4) = v149;
  *(v141 + 12) = 2080;
  v150 = [v138 (v143 + 867)];

  if (v150)
  {
    v151 = v140;
    v152 = sub_25C82E0AC();
    v154 = v153;

    v155 = sub_25C7E77E4(v152, v154, v276);

    *(v141 + 14) = v155;
    v156 = v265;
    _os_log_impl(&dword_25C7D2000, v265, isa, "Mismatch in state, selectedModelURL does not match metadata.selectedModelName. %s vs %s", v141, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v142, -1, -1);
    MEMORY[0x25F890110](v141, -1, -1);

    v148(v272, v151);
    v61 = 1;
    v55 = v277;
    v62 = v151;
    v63 = v274;
    v118 = v275;
    p_info = (ODCurareEvaluationAndReportingModule + 32);
LABEL_40:
    v119 = v271;
    goto LABEL_41;
  }

LABEL_64:
  __break(1u);
}

void sub_25C7EC4B4(unint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  v61 = a2;
  v8 = sub_25C82DFBC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  if (*(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    sub_25C82E29C();
    return;
  }

  v56 = v14;
  v57 = v11;
  v58 = v9;
  v59 = v8;
  v17 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v18 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v17))
  {

    v19 = v18;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 134218498;
    if (a1 >> 62)
    {
      v22 = sub_25C82E43C();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v22;

    *(v20 + 12) = 2112;
    v23 = v61;
    *(v20 + 14) = v61;
    *(v20 + 22) = 2112;
    *(v20 + 24) = a3;
    *v21 = v23;
    v21[1] = a3;
    v24 = v23;
    v25 = a3;
    _os_log_impl(&dword_25C7D2000, v19, v17, "Start trainAndEvaluateModels with %ld number of candidate models, personalizationPolicy %@, modelSelectionPolicy %@", v20, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16100, &qword_25C8305B8);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v21, -1, -1);
    MEMORY[0x25F890110](v20, -1, -1);
  }

  v60 = a3;
  v26 = [objc_allocWithZone(ODCurareReportFillerMetadata) init];
  v27 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata;
  v28 = *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
  *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata) = v26;
  v29 = v26;

  if (!v29)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
  v31 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v32 = sub_25C82E07C();
  [v31 setDateFormat_];

  v55 = v30;
  v33 = sub_25C82DF4C();
  v34 = [v31 stringFromDate_];

  if (!v34)
  {
    sub_25C82E0AC();
    v34 = sub_25C82E07C();
  }

  [v29 setDate_];
  v35 = *(v5 + v27);
  if (!v35)
  {
    goto LABEL_25;
  }

  [v35 setSelectedModelName_];
  sub_25C82E0AC();
  sub_25C82DE9C();

  v36 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
  swift_beginAccess();
  sub_25C7E6CC0(v16, v5 + v36, &qword_27FC16040, &unk_25C830480);
  swift_endAccess();
  v63 = a1;

  sub_25C800EB4(&v63);
  if (v4)
  {

    return;
  }

  v39 = v37;
  v40 = v38;
  v41 = sub_25C82E25C();
  v42 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v41))
  {
    v43 = v42;

    v44 = swift_slowAlloc();
    *v44 = 134217984;
    if (v40 >> 62)
    {
      v45 = sub_25C82E43C();
    }

    else
    {
      v45 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v44 + 4) = v45;

    _os_log_impl(&dword_25C7D2000, v43, v41, "Fetched default model and %ld number of models for shadow evaluation.", v44, 0xCu);
    MEMORY[0x25F890110](v44, -1, -1);
  }

  sub_25C7F67E4(v46, v61);

  sub_25C7F1764(v39, v40);
  sub_25C7F0118(v39, v60);
  v61 = v39;
  sub_25C7E9180(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore, v62);
  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  (*(v58 + 16))(v57, v5 + v55, v59);
  v47 = v5 + v36;
  v48 = v56;
  sub_25C7E92DC(v47, v56, &qword_27FC16040, &unk_25C830480);
  v49 = sub_25C82DEAC();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    goto LABEL_26;
  }

  v51 = *(v5 + v27);
  if (v51)
  {
    v52 = v51;

    v54 = v56;
    v53 = v57;
    sub_25C8078B4(v57, v56, v52);

    (*(v58 + 8))(v53, v59);
    (*(v50 + 8))(v54, v49);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    sub_25C7EF3D0();
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    sub_25C82E29C();

    return;
  }

LABEL_27:
  __break(1u);
}

id sub_25C7ECD40(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    return sub_25C82E29C();
  }

  v5 = v2;
  v8 = *(v2 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_dataProviderInstance);
  if (([v8 respondsToSelector_] & 1) == 0 || (v9 = objc_msgSend(v8, sel_allUserDataDefault)) == 0)
  {
    v20 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v21 = qword_281559838;
    sub_25C82E00C(v20, &dword_25C7D2000, v21, "dataProviderInstance did not impelment [ODCurareDataProviderProtocol allUserDataDefault:]", 89, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    *v22 = 20;
    swift_willThrow();
    return v21;
  }

  v10 = v9;
  v11 = [v9 metadata];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
    v13 = sub_25C82E02C();

    v14 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v5 + v14);
    *(v5 + v14) = 0x8000000000000000;
    sub_25C7FD034(v13, 0xD000000000000022, 0x800000025C832AF0, isUniquelyReferenced_nonNull_native);
    *(v5 + v14) = v25;
    swift_endAccess();
  }

  sub_25C7F82F4(v10);
  if (!*(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {
    v23 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v24 = qword_281559838;
    sub_25C82E00C(v23, &dword_25C7D2000, v24, "Not evaluating default model because there was no new data provided.", 68, 2, MEMORY[0x277D84F90]);

    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    goto LABEL_16;
  }

  v16 = sub_25C7F845C(a1, a2, v10, 1);
  if (!v3)
  {
    v17 = v16;
    v18 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults;
    swift_beginAccess();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v5 + v18);
    *(v5 + v18) = 0x8000000000000000;
    sub_25C7FCE68(v17, a1, v19);
    *(v5 + v18) = v26;
    swift_endAccess();
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
LABEL_16:
    v21 = sub_25C82E29C();

    return v21;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_25C7ED28C(uint64_t a1, void *a2)
{
  v4 = sub_25C82DFBC();
  v266 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v225 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v225 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v269 = *(v10 - 8);
  v270 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v262 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v261 = &v225 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v267 = &v225 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v263 = &v225 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v265 = &v225 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v264 = &v225 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v274 = (&v225 - v24);
  MEMORY[0x28223BE20](v23);
  v268 = &v225 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v225 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v225 - v30;
  v271 = sub_25C82DEAC();
  v32 = *(v271 - 8);
  v33 = MEMORY[0x28223BE20](v271);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v225 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = (&v225 - v40);
  MEMORY[0x28223BE20](v39);
  v272 = v2;
  if (*(v2 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    sub_25C82E29C();
    return;
  }

  v258 = (&v225 - v42);
  v260 = v32;
  v251 = v45;
  v259 = v44;
  v249 = v43;
  v250 = v9;
  v248 = v6;
  v246 = a2;
  v46 = *(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_dataProviderInstance);
  if (([v46 respondsToSelector_] & 1) == 0 || (v47 = objc_msgSend(v46, sel_allUserDataAdapted)) == 0)
  {
    v62 = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
LABEL_74:
      swift_once();
    }

    v158 = qword_281559838;
    sub_25C82E00C(v62, &dword_25C7D2000, v158, "dataProviderInstance did not impelment [ODCurareDataProviderProtocol allUserDataAdapted:]", 89, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    *v159 = 20;
    swift_willThrow();
    return;
  }

  v245 = v47;
  v48 = [v47 metadata];
  if (v48)
  {
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
    v257 = sub_25C82E02C();

    v50 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
    v51 = v272;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v276 = *(v51 + v50);
    *(v51 + v50) = 0x8000000000000000;
    sub_25C7FD034(v257, 0xD000000000000022, 0x800000025C832CB0, isUniquelyReferenced_nonNull_native);
    *(v51 + v50) = v276;
    swift_endAccess();
  }

  v53 = v272;
  sub_25C7F82F4(v245);
  if (!*(v53 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {
    v160 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v161 = qword_281559838;
    sub_25C82E00C(v160, &dword_25C7D2000, v161, "Not training or evaluating personalized models because there was no new data provided.", 86, 2, MEMORY[0x277D84F90]);

    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
    goto LABEL_52;
  }

  if (*(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_skipAdaptation))
  {
    v54 = sub_25C82E25C();
    v55 = v4;
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v56 = qword_281559838;
    sub_25C82E00C(v54, &dword_25C7D2000, v56, "This should never happen, but self.skipAdaptation was set to false.", 67, 2, MEMORY[0x277D84F90]);
    v57 = v270;
  }

  else
  {
    v257 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary;
    v162 = *(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationInstance);
    if (([v162 respondsToSelector_] & 1) == 0 || (v55 = v4, (v163 = objc_msgSend(v162, sel_personalize)) == 0))
    {
      v171 = sub_25C82E27C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v172 = qword_281559838;
      sub_25C82E00C(v171, &dword_25C7D2000, v172, "personalizatonInstance did not impelment [ODCurarePersonalizationProtocol personalize]", 86, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      swift_allocError();
      *v173 = 20;
      swift_willThrow();
      goto LABEL_50;
    }

    v164 = *(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResult);
    *(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResult) = v163;
    v56 = v163;

    if ([v56 saveNewPersonalizedModel])
    {
      v165 = [v56 personalizedModelPath];
      sub_25C82DE7C();

      v166 = [v56 personalizedModelIdentifier];
      if (v166)
      {
        v167 = v166;
        v168 = sub_25C82E0AC();
        v170 = v169;
      }

      else
      {
        v168 = 0;
        v170 = 0;
      }

      v180 = v273;
      sub_25C7F9228(v41, v168, v170, v31);
      if (v180)
      {

        v181 = v260;
        v182 = v271;
        (v260[1].isa)(v41, v271);
        (v181[7].isa)(v31, 1, 1, v182);
        sub_25C7E97F4(v31, &qword_27FC16040, &unk_25C830480);
        v273 = 0;
        v57 = v270;
      }

      else
      {
        v273 = 0;
        v254 = v56;
        v183 = v260;
        isa = v260[1].isa;
        v185 = v271;
        v256 = v260 + 1;
        v255 = isa;
        isa(v41, v271);

        v186 = v183[7].isa;
        v186(v31, 0, 1, v185);
        v187 = v258;
        (v183[4].isa)(v258, v31, v185);
        v188 = v183;
        v56 = v254;
        v252 = v188[2].isa;
        (v252)(v29, v187, v185);
        v186(v29, 0, 1, v185);
        v189 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizedModelPath;
        v190 = v272;
        swift_beginAccess();
        sub_25C7E6CC0(v29, v190 + v189, &qword_27FC16040, &unk_25C830480);
        swift_endAccess();
        v191 = *(&v257->isa + v190);
        if (v191)
        {

          v192 = [v56 metadata];
          if (v192)
          {
            v193 = v192;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
            v194 = sub_25C82E02C();
          }

          else
          {
            v194 = 0;
          }

          *(v191 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = v194;

          v195 = sub_25C82DE1C();
          v196 = (v191 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
          *v196 = v195;
          v196[1] = v197;

          v198 = [v56 newPersonalizedModelIsSelected];
          *(v191 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = v198;
          v199 = [v56 currentlyUsedModelPath];
          v200 = v251;
          sub_25C82DE7C();

          v201 = sub_25C82DE1C();
          v203 = v202;
          v255(v200, v271);
          v204 = (v191 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
          *v204 = v201;
          v204[1] = v203;

          sub_25C8038B8(v191);
        }

        v205 = sub_25C82E25C();
        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v206 = qword_281559838;
        v207 = v271;
        (v252)(v37, v258, v271);
        if (os_log_type_enabled(v206, v205))
        {
          v257 = v206;
          v208 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          v275 = v209;
          *v208 = 136315138;
          v210 = sub_25C82DE8C();
          LODWORD(v252) = v205;
          v212 = v211;
          v213 = v255;
          v255(v37, v207);
          v214 = sub_25C7E77E4(v210, v212, &v275);

          *(v208 + 4) = v214;
          v215 = v257;
          _os_log_impl(&dword_25C7D2000, v257, v252, "save personalized model in %s.", v208, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v209);
          MEMORY[0x25F890110](v209, -1, -1);
          MEMORY[0x25F890110](v208, -1, -1);
        }

        else
        {
          v213 = v255;
          v255(v37, v207);
        }

        v57 = v270;
        v216 = v272;
        __swift_project_boxed_opaque_existential_1((v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
        v217 = v216 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
        v218 = v258;
        sub_25C81D89C(v258, v217, 0, 0, 0, 0, 0, 0);
        v213(v218, v207);
      }
    }

    else
    {
      v174 = sub_25C82E25C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v175 = qword_281559838;
      v176 = os_log_type_enabled(qword_281559838, v174);
      v57 = v270;
      if (v176)
      {
        v177 = v175;
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v275 = v179;
        *v178 = 136315138;
        *(v178 + 4) = sub_25C7E77E4(*(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier), *(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8), &v275);
        _os_log_impl(&dword_25C7D2000, v177, v174, "Client %s specified to not save model.", v178, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v179);
        MEMORY[0x25F890110](v179, -1, -1);
        MEMORY[0x25F890110](v178, -1, -1);
      }
    }

    v219 = [v56 metadata];
    if (v219)
    {
      v220 = v219;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16148, &qword_25C830668);
      v221 = sub_25C82E02C();

      v222 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
      v223 = v272;
      swift_beginAccess();
      v224 = swift_isUniquelyReferenced_nonNull_native();
      v276 = *(v223 + v222);
      *(v223 + v222) = 0x8000000000000000;
      sub_25C7FD034(v221, 0xD00000000000001ELL, 0x800000025C832C40, v224);
      *(v223 + v222) = v276;
      swift_endAccess();
    }
  }

  v58 = (v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore);
  __swift_project_boxed_opaque_existential_1((v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v272 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
  v59 = v273;
  v60 = sub_25C81EF2C();
  if (v59)
  {
LABEL_50:

    return;
  }

  v273 = 0;
  v244 = *(v60 + 16);
  if (!v244)
  {
LABEL_51:

    sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
LABEL_52:
    sub_25C82E29C();

    return;
  }

  v61 = 0;
  v242 = v268 + v57[24];
  v241 = (v268 + v57[28]);
  v240 = v60 + ((*(v269 + 80) + 32) & ~*(v269 + 80));
  v239 = v57[12];
  v235 = v265 + 8;
  v233 = v264 + 8;
  v238 = v57[16];
  v255 = (v266 + 32);
  v237 = v260 + 4;
  v236 = v57[20];
  v252 = v260 + 1;
  v234 = (v266 + 8);
  v232 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory;
  v231 = (v266 + 56);
  v225 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults;
  v62 = &qword_27FC16080;
  *(&v63 + 1) = 2;
  v230 = xmmword_25C830640;
  *&v63 = 136315394;
  v227 = v63;
  v253 = v55;
  v247 = v58;
  v243 = v60;
  while (1)
  {
    if (v61 >= *(v60 + 16))
    {
      __break(1u);
      goto LABEL_74;
    }

    v64 = v268;
    sub_25C7E92DC(v240 + *(v269 + 72) * v61, v268, &qword_27FC16080, &qword_25C830490);
    v258 = *(v64 + v238);
    v257 = *(v64 + v236);
    v65 = *(v242 + 8);
    v256 = *v242;
    v266 = v61;
    v66 = *v241;
    v67 = v241[1];
    v68 = v57[12];
    v69 = v55;
    v70 = v57[16];
    v71 = v57[20];
    v72 = v57;
    v73 = (&v274->isa + v57[24]);
    v74 = (&v274->isa + v72[28]);
    v254 = *v255;
    v254(v274, v64, v69);
    v75 = v237->isa;
    v260 = v68;
    v76 = v64 + v239;
    v77 = v271;
    v75(v68 + v274, v76, v271);
    v78 = v257;
    *(&v274->isa + v70) = v258;
    *(&v274->isa + v71) = v78;
    v79 = v274;
    *v73 = v256;
    v73[1] = v65;
    *v74 = v66;
    v74[1] = v67;
    v80 = v266;
    if (v266 > 9)
    {
      break;
    }

    v81 = v251;
    sub_25C82DE5C();
    sub_25C82DE8C();
    v258 = v252->isa;
    v258(v81, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
    v82 = swift_allocObject();
    *(v82 + 16) = v230;
    *(v82 + 56) = MEMORY[0x277D83B88];
    *(v82 + 64) = MEMORY[0x277D83C10];
    *(v82 + 32) = v80;
    sub_25C82E0CC();

    v83 = v259;
    sub_25C82DE0C();

    __swift_project_boxed_opaque_existential_1(v247, v247[3]);
    v84 = v264;
    sub_25C7E92DC(v79, v264, &qword_27FC16080, &qword_25C830490);
    v57 = v270;
    v85 = v84 + v270[12];

    v86 = v250;
    v87 = v84;
    v88 = v253;
    v254(v250, v87, v253);
    (*v231)(v86, 0, 1, v88);
    v89 = v249;
    v90 = v273;
    sub_25C822E90((v260 + v79), v86, v83, v249);
    v91 = v271;
    if (v90)
    {
      v257 = v90;
      sub_25C7E97F4(v86, &qword_27FC16048, qword_25C8309D0);
      v273 = 0;
      v258(v85, v91);
      v125 = sub_25C82E27C();
      v126 = v261;
      v127 = v262;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v128 = qword_281559838;
      v62 = &qword_27FC16080;
      sub_25C7E92DC(v79, v126, &qword_27FC16080, &qword_25C830490);
      sub_25C7E92DC(v79, v127, &qword_27FC16080, &qword_25C830490);
      if (os_log_type_enabled(v128, v125))
      {
        v256 = v128;
        v129 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        v275 = v229;
        *v129 = v227;
        v130 = v265;
        sub_25C7E92DC(v126, v265, &qword_27FC16080, &qword_25C830490);
        LODWORD(v228) = v125;
        v131 = v57[12];

        v132 = sub_25C82DE8C();
        v133 = v126;
        v135 = v134;
        sub_25C7E97F4(v133, &qword_27FC16080, &qword_25C830490);
        v258(v130 + v131, v271);
        v226 = *v234;
        v136 = v253;
        v226(v130, v253);
        v137 = sub_25C7E77E4(v132, v135, &v275);

        *(v129 + 4) = v137;
        *(v129 + 12) = 2080;
        sub_25C7E92DC(v127, v130, &qword_27FC16080, &qword_25C830490);
        v138 = v57[12];

        v139 = v248;
        v254(v248, v130, v136);
        v140 = v130 + v138;
        v79 = v274;
        v258(v140, v271);
        sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v141 = sub_25C82E4DC();
        v143 = v142;
        v144 = v139;
        v57 = v270;
        v145 = v136;
        v62 = &qword_27FC16080;
        v226(v144, v145);
        sub_25C7E97F4(v127, &qword_27FC16080, &qword_25C830490);
        v146 = sub_25C7E77E4(v141, v143, &v275);

        *(v129 + 14) = v146;
        v147 = v256;
        _os_log_impl(&dword_25C7D2000, v256, v228, "invalid model in %s. %s", v129, 0x16u);
        v148 = v229;
        swift_arrayDestroy();
        MEMORY[0x25F890110](v148, -1, -1);
        MEMORY[0x25F890110](v129, -1, -1);
      }

      else
      {
        sub_25C7E97F4(v127, &qword_27FC16080, &qword_25C830490);
        sub_25C7E97F4(v126, &qword_27FC16080, &qword_25C830490);
      }

      v80 = v266;
      __swift_project_boxed_opaque_existential_1(v247, v247[3]);
      v149 = v273;
      sub_25C826030(v260 + v79, v79);
      v273 = v149;
      if (v149)
      {
        goto LABEL_76;
      }

      v258(v259, v271);
      sub_25C7E97F4(v79, &qword_27FC16080, &qword_25C830490);
      v55 = v253;
      goto LABEL_34;
    }

    sub_25C7E97F4(v86, &qword_27FC16048, qword_25C8309D0);
    v258(v85, v91);
    v124 = sub_25C7F845C(v89, v246, v245, 0);
    v273 = 0;
    v260 = v124;
    v150 = v265;
    sub_25C7E92DC(v79, v265, &qword_27FC16080, &qword_25C830490);
    v151 = v57[12];

    v152 = v272;
    v153 = v225;
    swift_beginAccess();
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v276 = *(v152 + v153);
    *(v152 + v153) = 0x8000000000000000;
    sub_25C7FCE68(v260, v150 + v151, v154);
    v155 = v150 + v151;
    v156 = v258;
    v258(v155, v91);
    *(v152 + v153) = v276;
    swift_endAccess();
    v156(v89, v91);
    v157 = v91;
    v62 = &qword_27FC16080;
    v156(v259, v157);
    sub_25C7E97F4(v79, &qword_27FC16080, &qword_25C830490);
    v55 = v253;
    (*v234)(v150, v253);
    v60 = v243;
    v80 = v266;
LABEL_35:
    v61 = v80 + 1;
    if (v244 == v61)
    {
      goto LABEL_51;
    }
  }

  v92 = v253;
  v93 = sub_25C82E25C();
  v94 = v263;
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v95 = qword_281559838;
  sub_25C7E92DC(v79, v94, &qword_27FC16080, &qword_25C830490);
  v96 = v79;
  v97 = v267;
  sub_25C7E92DC(v96, v267, &qword_27FC16080, &qword_25C830490);
  v98 = os_log_type_enabled(v95, v93);
  v99 = v93;
  v100 = v92;
  v57 = v270;
  if (v98)
  {
    LODWORD(v257) = v99;
    v256 = v95;
    v101 = swift_slowAlloc();
    v258 = v101;
    v229 = swift_slowAlloc();
    v275 = v229;
    *v101 = v227;
    v102 = v265;
    sub_25C7E92DC(v94, v265, &qword_27FC16080, &qword_25C830490);
    v103 = v57[12];

    v104 = sub_25C82DE8C();
    v106 = v105;
    sub_25C7E97F4(v94, &qword_27FC16080, &qword_25C830490);
    v107 = v252->isa;
    (v252->isa)(v102 + v103, v271);
    v228 = *v234;
    v228(v102, v100);
    v108 = sub_25C7E77E4(v104, v106, &v275);

    v109 = v258;
    *(v258 + 4) = v108;
    *(v109 + 12) = 2080;
    sub_25C7E92DC(v267, v102, &qword_27FC16080, &qword_25C830490);
    v110 = v57[12];

    v111 = v248;
    v254(v248, v102, v100);
    v107(v102 + v110, v271);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v112 = sub_25C82E4DC();
    v114 = v113;
    v115 = v111;
    v57 = v270;
    v92 = v100;
    v228(v115, v100);
    sub_25C7E97F4(v267, &qword_27FC16080, &qword_25C830490);
    v116 = sub_25C7E77E4(v112, v114, &v275);
    v80 = v266;

    v117 = v258;
    *(v258 + 14) = v116;
    v118 = v256;
    _os_log_impl(&dword_25C7D2000, v256, v257, "delete older model in %s. %s", v117, 0x16u);
    v119 = v229;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v119, -1, -1);
    MEMORY[0x25F890110](v117, -1, -1);
  }

  else
  {
    sub_25C7E97F4(v97, &qword_27FC16080, &qword_25C830490);
    sub_25C7E97F4(v94, &qword_27FC16080, &qword_25C830490);
  }

  v120 = v260;
  __swift_project_boxed_opaque_existential_1(v247, v247[3]);
  v122 = v273;
  v121 = v274;
  sub_25C826030(v120 + v274, v274);
  v273 = v122;
  if (!v122)
  {
    v123 = v121;
    v62 = &qword_27FC16080;
    sub_25C7E97F4(v123, &qword_27FC16080, &qword_25C830490);
    v55 = v92;
LABEL_34:
    v60 = v243;
    goto LABEL_35;
  }

  swift_unexpectedError();
  __break(1u);
LABEL_76:
  swift_unexpectedError();
  __break(1u);
}

void sub_25C7EF3D0()
{
  if (*(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport) == 1)
  {
    v1 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure);
    v2 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
    v3 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = *(v4 + 16);
    if (v5)
    {
      v12 = v0;

      v6 = (v4 + 48);
      do
      {
        v7 = *(v6 - 2);
        v8 = *(v6 - 1);
        v9 = *v6;
        v10 = v7;
        v11 = v8;
        MEMORY[0x25F88F4D0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v6 += 3;
        --v5;
      }

      while (v5);
      v2 = v13;

      v0 = v12;
    }

    sub_25C815754(*(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier), *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8), v2, (v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), (v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore), (v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore), v1);
  }
}

unint64_t sub_25C7EF5EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23[-v2];
  if (*(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldReportFailure) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    *(inited + 32) = 0xD00000000000001ELL;
    v5 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x800000025C830660;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000025C832CE0;
    v6 = sub_25C801A1C(inited);
    swift_setDeallocating();
    sub_25C7E97F4(v5, &qword_27FC16160, &unk_25C8306A0);
  }

  else
  {
    v7 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_allEvaluationResults;
    swift_beginAccess();
    v8 = *(v0 + v7);
    v9 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_resultMetadataDictionary;
    swift_beginAccess();
    v10 = *(v0 + v9);
    v11 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
    v12 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizedModelPath;
    swift_beginAccess();
    sub_25C7E92DC(v0 + v12, v3, &qword_27FC16040, &unk_25C830480);
    v13 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_boundaryList);
    v14 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_pruningPolicy);
    v16 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier);
    v15 = *(v0 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8);

    v6 = sub_25C8163D8(v8, v10, v0 + v11, v3, v13, v14, v16, v15);

    sub_25C7E97F4(v3, &qword_27FC16040, &unk_25C830480);
    v17 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v18 = qword_281559838;
    sub_25C82E00C(v17, &dword_25C7D2000, v18, "Resetting currentExecutionCount to 0.", 37, 2, MEMORY[0x277D84F90]);

    v24 = v16;
    v25 = v15;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

    v19 = [objc_opt_self() standardUserDefaults];
    v20 = sub_25C82E22C();
    v21 = sub_25C82E07C();

    [v19 setValue:v20 forKey:v21];
  }

  return v6;
}

id ODCurareEvaluationAndReportingModule.__deallocating_deinit()
{
  v1 = v0;
  v3 = *&v0[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier];
  v2 = *&v0[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8];

  v4 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v5 = qword_281559838;
  sub_25C82E00C(v4, &dword_25C7D2000, v5, "Resetting currentExecutionCount to 0.", 37, 2, MEMORY[0x277D84F90]);

  v11 = v3;
  v12 = v2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD00000000000002CLL, 0x800000025C831F10);

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_25C82E22C();
  v8 = sub_25C82E07C();

  [v6 setValue:v7 forKey:v8];

  v10.receiver = v1;
  v10.super_class = type metadata accessor for ODCurareEvaluationAndReportingModule(0);
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_25C7EFE54(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_25C7E98B0();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_25C7EFEE4(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *a1;
  v11 = *a2;
  v12 = [v10 evaluationDate];
  if (v12)
  {
    v13 = v12;
    sub_25C82E0AC();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  sub_25C82B668(v15, v9);

  v16 = sub_25C82DFBC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  result = v18(v9, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = [v11 evaluationDate];
    if (v20)
    {
      v21 = v20;
      sub_25C82E0AC();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    sub_25C82B668(v23, v7);

    result = v18(v7, 1, v16);
    if (result != 1)
    {
      v24 = sub_25C82DF6C();
      v25 = *(v17 + 8);
      v25(v7, v16);
      v25(v9, v16);
      return v24 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25C7F0118(void *a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v179 = a2;
  v168 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16088, &qword_25C830498);
  MEMORY[0x28223BE20](v6 - 8);
  v165 = &v156 - v7;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16090, qword_25C8304A0);
  v163 = *(v164 - 8);
  v8 = MEMORY[0x28223BE20](v164);
  v161 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v162 = &v156 - v10;
  v192 = sub_25C82DEAC();
  v169 = *(v192 - 8);
  v11 = MEMORY[0x28223BE20](v192);
  v13 = (&v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v167 = &v156 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  isUniquelyReferenced_nonNull_native = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v180 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v182 = &v156 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v156 - v22;
  MEMORY[0x28223BE20](v21);
  v181 = &v156 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16040, &unk_25C830480);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = (&v156 - v26);
  LOBYTE(v2) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v28 = qword_281559838;
    v29 = os_log_type_enabled(qword_281559838, v2);
    i = v15;
    if (v29)
    {
      v30 = v28;
      v31 = swift_slowAlloc();
      v194 = isUniquelyReferenced_nonNull_native;
      v32 = v4;
      v33 = v23;
      v34 = v27;
      v35 = v31;
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v179;
      *(v35 + 4) = v179;
      *v36 = v37;
      v38 = v37;
      _os_log_impl(&dword_25C7D2000, v30, v2, "Start selectModel with selectionPolicy: %@", v35, 0xCu);
      sub_25C7E97F4(v36, &qword_27FC16100, &qword_25C8305B8);
      v39 = v36;
      v15 = i;
      MEMORY[0x25F890110](v39, -1, -1);
      v40 = v35;
      v27 = v34;
      v23 = v33;
      v4 = v32;
      isUniquelyReferenced_nonNull_native = v194;
      MEMORY[0x25F890110](v40, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore), *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore + 24));
    result = sub_25C8131CC(1);
    if (v4)
    {
      return result;
    }

    v4 = 0;
    if (result >> 62)
    {
LABEL_76:
      v42 = result;
      if (!sub_25C82E43C())
      {
LABEL_77:
        v149 = sub_25C82E25C();
        v150 = qword_281559838;
        sub_25C82E00C(v149, &dword_25C7D2000, v150, "modelEvaluations was empty, so skipping all other selection processes and returning nil after setting selected model to nil.", 124, 2, MEMORY[0x277D84F90]);

        v151 = *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
        if (v151)
        {
          v152 = v151;

          [v152 setSelectedModelName_];

          sub_25C82E0AC();
          sub_25C82DE9C();

          v153 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
          swift_beginAccess();
          sub_25C7E6CC0(v27, v5 + v153, &qword_27FC16040, &unk_25C830480);
          return swift_endAccess();
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    else
    {
      v42 = result;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }
    }

    v197 = MEMORY[0x277D84F90];
    v2 = *__swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore), *(v5 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24));
    v43 = sub_25C81EF2C();
    if (v4)
    {
    }

    v178 = v42;
    v156 = v27;
    v157 = v13;
    v158 = v5;
    v160 = 0;
    v44 = *(v43 + 16);
    v159 = v43;
    if (v44)
    {
      v177 = v15[12];
      v176 = v15[16];
      v175 = v15[20];
      v174 = (v181 + v15[24]);
      v173 = (v181 + v15[28]);
      v45 = (v43 + ((*(isUniquelyReferenced_nonNull_native + 80) + 32) & ~*(isUniquelyReferenced_nonNull_native + 80)));
      v172 = *(isUniquelyReferenced_nonNull_native + 72);
      v171 = v182 + 8;
      v166 = v180 + 8;
      v170 = (v169 + 32);
      v46 = MEMORY[0x277D84F90];
      v183 = (v169 + 8);
      do
      {
        v190 = v45;
        v191 = v44;
        v193 = v46;
        v48 = v181;
        sub_25C7E92DC(v45, v181, &qword_27FC16080, &qword_25C830490);
        v188 = *(v48 + v176);
        v187 = *(v48 + v175);
        v49 = v174[1];
        v186 = *v174;
        v50 = *v173;
        v184 = v173[1];
        v185 = v50;
        v51 = v15[12];
        v52 = i[16];
        v53 = (v23 + i[24]);
        v54 = (v23 + i[28]);
        v55 = i[20];
        v56 = sub_25C82DFBC();
        v189 = *(v56 - 8);
        v57 = *(v189 + 32);
        v194 = v56;
        v57(v23, v48);
        v58 = v23 + v51;
        v59 = v192;
        (*v170)(v58, v48 + v177, v192);
        v60 = v187;
        *(v23 + v52) = v188;
        v15 = i;
        *(v23 + v55) = v60;
        v61 = v185;
        *v53 = v186;
        v53[1] = v49;
        v27 = &qword_27FC16080;
        v62 = v184;
        *v54 = v61;
        v54[1] = v62;
        v63 = v182;
        sub_25C7E92DC(v23, v182, &qword_27FC16080, &qword_25C830490);
        v64 = v15[12];
        v65 = *(v63 + v15[16]);

        if (v65)
        {
          v188 = *v183;
          v188(v63 + v64, v59);
          v189 = *(v189 + 8);
          (v189)(v63, v194);
          v66 = v180;
          sub_25C7E92DC(v23, v180, &qword_27FC16080, &qword_25C830490);
          v67 = v15[12];
          v68 = *(v66 + v15[16]);
          v69 = v65;

          v70 = objc_allocWithZone(ODCurareModelInformation);
          v71 = sub_25C82DE2C();
          v72 = [v70 initWithModelInformation:v69 modelURL:v71];
          v193 = v69;

          v188(v66 + v67, v192);
          (v189)(v66, v194);
          v73 = v72;
          v2 = &v197;
          MEMORY[0x25F88F4D0]();
          if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25C82E1EC();
          }

          sub_25C82E20C();

          sub_25C7E97F4(v23, &qword_27FC16080, &qword_25C830490);
          v46 = v197;
          v15 = i;
          v27 = &qword_27FC16080;
        }

        else
        {
          (*v183)(v63 + v64, v59);
          (*(v189 + 8))(v63, v194);
          v2 = sub_25C82E25C();
          v47 = qword_281559838;
          sub_25C82E00C(v2, &dword_25C7D2000, v47, "Loaded model metadata did not contain modelInformation...skipping", 65, 2, MEMORY[0x277D84F90]);

          sub_25C7E97F4(v23, &qword_27FC16080, &qword_25C830490);
          v46 = v193;
        }

        v45 = &v190[v172];
        v44 = v191 - 1;
      }

      while (v191 != 1);
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

    if (v46 >> 62)
    {
      v154 = v46;
      v155 = sub_25C82E43C();
      v46 = v154;
      v13 = v155;
    }

    else
    {
      v13 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    isUniquelyReferenced_nonNull_native = v178;
    v193 = v46;
    if (v13)
    {
      v4 = 0;
      v194 = v46 & 0xFFFFFFFFFFFFFF8;
      i = (v46 & 0xC000000000000001);
      v5 = MEMORY[0x277D84F98];
      while (1)
      {
        if (i)
        {
          v75 = MEMORY[0x25F88F6D0](v4);
        }

        else
        {
          if (v4 >= *(v194 + 16))
          {
            goto LABEL_72;
          }

          v75 = *(v46 + 8 * v4 + 32);
        }

        v76 = v75;
        v15 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_71;
        }

        v77 = [v75 modelInformation];
        v2 = [v77 modelName];

        if (!v2)
        {
          break;
        }

        v78 = sub_25C82E0AC();
        v23 = v79;

        v27 = sub_25C80136C(isUniquelyReferenced_nonNull_native, v78, v23);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = v5;
        LOBYTE(v2) = v5;
        result = sub_25C813A34(v76);
        v81 = v5[2];
        v82 = (v80 & 1) == 0;
        v83 = __OFADD__(v81, v82);
        v84 = v81 + v82;
        if (v83)
        {
          goto LABEL_73;
        }

        v23 = v80;
        if (v5[3] >= v84)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v2 = &v196;
            v88 = result;
            sub_25C80470C();
            result = v88;
          }
        }

        else
        {
          sub_25C7FB3B8(v84, isUniquelyReferenced_nonNull_native);
          LOBYTE(v2) = v196;
          result = sub_25C813A34(v76);
          if ((v23 & 1) != (v85 & 1))
          {
            goto LABEL_87;
          }
        }

        isUniquelyReferenced_nonNull_native = v178;
        v5 = v196;
        if (v23)
        {
          v74 = v196[7];
          v2 = v74[result];
          v74[result] = v27;
        }

        else
        {
          v196[(result >> 6) + 8] = (v196[(result >> 6) + 8] | (1 << result));
          *(v5[6] + result) = v76;
          *(v5[7] + result) = v27;
          v86 = v5[2];
          v83 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v83)
          {
            __break(1u);
            goto LABEL_76;
          }

          v5[2] = v87;
        }

        ++v4;
        v46 = v193;
        if (v15 == v13)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_81;
    }

    v5 = MEMORY[0x277D84F98];
LABEL_40:
    v89 = [objc_allocWithZone(ODCurareReportFillerModelInformation) init];
    if (!v89)
    {
      goto LABEL_82;
    }

    v90 = v89;
    v91 = v168;
    v92 = [v168 modelURL];
    v93 = v167;
    sub_25C82DE7C();

    sub_25C82DE1C();
    v95 = v169 + 8;
    v94 = *(v169 + 8);
    v94(v93, v192);
    v96 = sub_25C82E07C();

    [v90 setModelName_];

    [v90 setIsDefaultModel_];
    v97 = v90;
    v98 = [v91 modelURL];
    sub_25C82DE7C();

    v99 = objc_allocWithZone(ODCurareModelInformation);
    v100 = sub_25C82DE2C();
    v101 = [v99 initWithModelInformation:v97 modelURL:v100];

    v189 = v95;
    v194 = v94;
    v94(v93, v192);
    v191 = v97;
    v102 = [v97 modelName];
    if (!v102)
    {
      goto LABEL_83;
    }

    v2 = v102;
    v4 = sub_25C82E0AC();
    v104 = v103;

    v27 = sub_25C80136C(isUniquelyReferenced_nonNull_native, v4, v104);

    v105 = 1 << *(v5 + 32);
    v106 = -1;
    if (v105 < 64)
    {
      v106 = ~(-1 << v105);
    }

    isUniquelyReferenced_nonNull_native = v106 & v5[8];
    v15 = ((v105 + 63) >> 6);
    v107 = v101;

    v23 = 0;
    v13 = v27;
    v190 = v107;
    for (i = v107; isUniquelyReferenced_nonNull_native; i = v2)
    {
      while (1)
      {
LABEL_52:
        v109 = (v23 << 9) | (8 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)));
        v4 = *(v5[7] + v109);
        v2 = *(v5[6] + v109);

        v111 = v160;
        v112 = sub_25C80EEBC(v110, v27, v179, 1);
        if (v111)
        {
        }

        isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
        if (v112)
        {
          break;
        }

        v160 = 0;
LABEL_47:

        if (!isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_48;
        }
      }

      v113 = sub_25C80EEBC(v4, v13, v179, 0);
      v160 = 0;
      if ((v113 & 1) == 0)
      {
        goto LABEL_47;
      }

      v13 = v4;
    }

LABEL_48:
    v108 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  if (v108 < v15)
  {
    isUniquelyReferenced_nonNull_native = v5[v108 + 8];
    ++v23;
    if (isUniquelyReferenced_nonNull_native)
    {
      v23 = v108;
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  v114 = [i modelURL];
  v115 = v157;
  sub_25C82DE7C();

  v116 = [v168 modelURL];
  v117 = v167;
  sub_25C82DE7C();

  sub_25C801324(&qword_281559830, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v118 = v192;
  LOBYTE(v116) = sub_25C82E06C();
  (v194)(v117, v118);
  if ((v116 & 1) == 0)
  {
    v122 = v158;
    v123 = *(v158 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
    if (!v123)
    {
      goto LABEL_84;
    }

    v124 = v123;

    sub_25C82DE1C();
    v125 = sub_25C82E07C();

    [v124 setSelectedModelName_];

    v126 = v169;
    v127 = v156;
    v128 = v192;
    (*(v169 + 16))(v156, v115, v192);
    (*(v126 + 56))(v127, 0, 1, v128);
    v129 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    v130 = v122 + v129;
    goto LABEL_62;
  }

  v119 = v158;
  __swift_project_boxed_opaque_existential_1((v158 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore), *(v158 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_metadataStore + 24));
  v120 = v165;
  v121 = v160;
  sub_25C8081D4(v165);
  v160 = v121;
  if (v121)
  {

    (v194)(v115, v192);
  }

  if ((*(v163 + 48))(v120, 1, v164) != 1)
  {
    v139 = v162;
    sub_25C7E9274(v120, v162, &qword_27FC16090, qword_25C8304A0);
    v140 = *(v119 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
    if (!v140)
    {
      goto LABEL_86;
    }

    v141 = v140;

    v142 = v161;
    sub_25C7E92DC(v139, v161, &qword_27FC16090, qword_25C8304A0);
    v143 = v164;
    v144 = v139;
    v145 = *(v142 + *(v164 + 48));
    v146 = [v145 selectedModelName];

    [v141 setSelectedModelName_];
    v128 = v192;
    (v194)(v142, v192);
    sub_25C7E9274(v144, v142, &qword_27FC16090, qword_25C8304A0);

    v147 = v169;
    v127 = v156;
    (*(v169 + 32))(v156, v142, v128);
    (*(v147 + 56))(v127, 0, 1, v128);
    v148 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    v130 = v119 + v148;
LABEL_62:
    sub_25C7E6CC0(v127, v130, &qword_27FC16040, &unk_25C830480);
    swift_endAccess();
LABEL_63:
    v132 = v190;
    v131 = v191;
    v133 = sub_25C82E25C();
    v134 = qword_281559838;
    sub_25C82E00C(v133, &dword_25C7D2000, v134, "End selectModel", 15, 2, MEMORY[0x277D84F90]);

    return (v194)(v115, v128);
  }

  sub_25C7E97F4(v120, &qword_27FC16088, &qword_25C830498);
  v135 = *(v119 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionMetadata);
  if (v135)
  {
    v136 = v135;

    [v136 setSelectedModelName_];

    sub_25C82E0AC();
    v137 = v156;
    sub_25C82DE9C();

    v138 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionSelectedModelURL;
    swift_beginAccess();
    sub_25C7E6CC0(v137, v119 + v138, &qword_27FC16040, &unk_25C830480);
    swift_endAccess();
    v128 = v192;
    goto LABEL_63;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  sub_25C7E96B8(0, &qword_27FC16200, off_2799B9798);
  result = sub_25C82E51C();
  __break(1u);
  return result;
}

void sub_25C7F1764(void *a1, unint64_t a2)
{
  v396 = a2;
  v431 = a1;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v414 = *(v430 - 1);
  v3 = MEMORY[0x28223BE20](v430);
  v426 = v363 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v410 = v363 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v390 = v363 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v391 = v363 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v402 = v363 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v393 = v363 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v400 = v363 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v419 = (v363 - v18);
  MEMORY[0x28223BE20](v17);
  v413 = v363 - v19;
  v434 = sub_25C82DEAC();
  v408 = *(v434 - 8);
  v20 = MEMORY[0x28223BE20](v434);
  v415 = v363 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v427 = (v363 - v23);
  MEMORY[0x28223BE20](v22);
  v420 = v363 - v24;
  v25 = sub_25C82DFBC();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v397 = v363 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v416 = v363 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v403 = v363 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v405 = v363 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v407 = v363 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v412 = (v363 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v411 = (v363 - v40);
  MEMORY[0x28223BE20](v39);
  v424 = v363 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v395 = (v363 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x28223BE20](v43);
  v392 = v363 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v399 = (v363 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v429 = v363 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v406 = (v363 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v409 = v363 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = v363 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v401 = v363 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v421 = v363 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = v363 - v62;
  v64 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v65 = qword_281559838;
  sub_25C82E00C(v64, &dword_25C7D2000, v65, "Start evaluation", 16, 2, MEMORY[0x277D84F90]);

  v66 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkEvaluationDate;
  swift_beginAccess();
  v425 = v66;
  sub_25C7E92DC(&v2[v66], v63, &qword_27FC16048, qword_25C8309D0);
  v422 = v26;
  v67 = *(v26 + 48);
  v68 = v67(v63, 1, v25);
  sub_25C7E97F4(v63, &qword_27FC16048, qword_25C8309D0);
  v432 = v25;
  v423 = v2;
  v417 = v67;
  v69 = v2;
  v418 = v26 + 48;
  if (v68 == 1)
  {
    v70 = sub_25C82E25C();
    p_info = ODCurareEvaluationAndReportingModule.info;
    v72 = qword_281559838;
    sub_25C82E00C(v70, &dword_25C7D2000, v72, "Framework evaluation date was nil", 33, 2, MEMORY[0x277D84F90]);

    v73 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
    swift_beginAccess();
    v74 = v421;
    sub_25C7E92DC(&v69[v73], v421, &qword_27FC16048, qword_25C8309D0);
    v75 = v25;
    if (v67(v74, 1, v25) == 1)
    {
      sub_25C7E97F4(v74, &qword_27FC16048, qword_25C8309D0);
      v76 = sub_25C82E25C();
      v77 = qword_281559838;
      sub_25C82E00C(v76, &dword_25C7D2000, v77, "Unable to get last personalization date, setting to default.", 60, 2, MEMORY[0x277D84F90]);

      v78 = v401;
      sub_25C82DF2C();
      v79 = v422;
      (*(v422 + 56))(v78, 0, 1, v75);
      v80 = v425;
      swift_beginAccess();
      sub_25C7E6CC0(v78, &v69[v80], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
    }

    else
    {
      v79 = v422;
      v83 = v424;
      v421 = *(v422 + 32);
      (v421)(v424, v74, v25);
      v84 = sub_25C82E25C();
      v85 = qword_281559838;
      v86 = v411;
      (v79[2])(v411, v83, v75);
      if (os_log_type_enabled(v85, v84))
      {
        v87 = v85;
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v433[0] = v89;
        *v88 = 136315138;
        sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v90 = sub_25C82E4DC();
        v92 = v91;
        (v79[1])(v86, v432);
        v93 = sub_25C7E77E4(v90, v92, v433);
        p_info = (ODCurareEvaluationAndReportingModule + 32);

        *(v88 + 4) = v93;
        _os_log_impl(&dword_25C7D2000, v87, v84, "Got last personalization date: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v89);
        MEMORY[0x25F890110](v89, -1, -1);
        v94 = v88;
        v75 = v432;
        MEMORY[0x25F890110](v94, -1, -1);
      }

      else
      {
        (v79[1])(v86, v75);
      }

      v80 = v425;
      v108 = v401;
      (v421)(v401, v424, v75);
      (v79[7])(v108, 0, 1, v75);
      v69 = v423;
      swift_beginAccess();
      sub_25C7E6CC0(v108, &v69[v80], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
    }

    goto LABEL_20;
  }

  v81 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  swift_beginAccess();
  sub_25C7E92DC(&v2[v81], v57, &qword_27FC16048, qword_25C8309D0);
  v75 = v25;
  v82 = v67;
  if (v67(v57, 1, v25) == 1)
  {
    sub_25C7E97F4(v57, &qword_27FC16048, qword_25C8309D0);
    v79 = v422;
    p_info = (ODCurareEvaluationAndReportingModule + 32);
    v80 = v425;
    goto LABEL_21;
  }

  v95 = v422;
  v96 = *(v422 + 32);
  v97 = v412;
  v424 = (v422 + 32);
  v421 = v96;
  (v96)(v412, v57, v25);
  v98 = v67;
  v99 = sub_25C82E25C();
  v100 = qword_281559838;
  sub_25C82E00C(v99, &dword_25C7D2000, v100, "Checking to see if frameworkEvaluationDate needs to be bumped", 61, 2, MEMORY[0x277D84F90]);

  v101 = v409;
  sub_25C7E92DC(&v2[v425], v409, &qword_27FC16048, qword_25C8309D0);
  if (v98(v101, 1, v75) == 1)
  {
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v102 = sub_25C82DF9C();
  v103 = v95;
  v104 = *(v95 + 8);
  v104(v101, v75);
  v105 = sub_25C82E25C();
  v106 = qword_281559838;
  if (v102 == -1)
  {
    v109 = v407;
    (*(v103 + 16))(v407, v97, v75);
    if (!os_log_type_enabled(v106, v105))
    {
      v104(v109, v75);
      v116 = v421;
      goto LABEL_19;
    }

    v411 = v106;
    v110 = v423;
    v111 = v423;
    v112 = swift_slowAlloc();
    v409 = swift_slowAlloc();
    v433[0] = v409;
    *v112 = 136315394;
    v113 = v406;
    sub_25C7E92DC(v110 + v425, v406, &qword_27FC16048, qword_25C8309D0);
    LODWORD(v110) = v417(v113, 1, v75);

    if (v110 != 1)
    {
      v114 = v405;
      v115 = v113;
      v116 = v421;
      (v421)(v405, v115, v75);
      sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v117 = sub_25C82E4DC();
      v119 = v118;
      v104(v114, v432);
      v120 = sub_25C7E77E4(v117, v119, v433);
      v75 = v432;

      *(v112 + 4) = v120;
      *(v112 + 12) = 2080;
      v121 = v407;
      v122 = sub_25C82E4DC();
      v124 = v123;
      v104(v121, v75);
      v125 = sub_25C7E77E4(v122, v124, v433);

      *(v112 + 14) = v125;
      v126 = v411;
      _os_log_impl(&dword_25C7D2000, v411, v105, "frameworkEvaluationDate is being updated from %s to %s", v112, 0x16u);
      v127 = v409;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v127, -1, -1);
      MEMORY[0x25F890110](v112, -1, -1);

      v97 = v412;
LABEL_19:
      v128 = v401;
      v116(v401, v97, v75);
      v79 = v422;
      (*(v422 + 56))(v128, 0, 1, v75);
      v69 = v423;
      v80 = v425;
      swift_beginAccess();
      sub_25C7E6CC0(v128, &v69[v80], &qword_27FC16048, qword_25C8309D0);
      swift_endAccess();
      p_info = ODCurareEvaluationAndReportingModule.info;
      goto LABEL_20;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v107 = qword_281559838;
  sub_25C82E00C(v105, &dword_25C7D2000, v107, "frameworkEvaluationDate does not need to be bumped because it is greater than or equal to personalizationDate", 109, 2, MEMORY[0x277D84F90]);

  v104(v97, v75);
  v69 = v423;
  v79 = v103;
  p_info = (ODCurareEvaluationAndReportingModule + 32);
  v80 = v425;
LABEL_20:
  v82 = v417;
LABEL_21:
  v129 = v429;
  sub_25C7E92DC(&v69[v80], v429, &qword_27FC16048, qword_25C8309D0);
  if (v82(v129, 1, v75) == 1)
  {
    v130 = 0;
  }

  else
  {
    v130 = sub_25C82DF4C();
    (v79[1])(v129, v75);
  }

  v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v132 = v431;
  [v431 setStreamFilter:v130 fromInclusive:v131 toDate:0 toInclusive:0];

  v133 = [v132 getDatesOfEventsForStream];
  if (!v133)
  {
    v174 = sub_25C82E27C();
    v175 = p_info[263];
    sub_25C82E00C(v174, &dword_25C7D2000, v175, "Failed to fetch dates from model for evaluation for setting newEvaluationDate", 77, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    *v176 = 20;
    swift_willThrow();
    return;
  }

  v134 = v133;
  v135 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_113;
  }

LABEL_26:
  v136 = v428;
  v137 = v135[2];
  v138 = v135 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  v433[0] = v138;
  v433[1] = v137;
  sub_25C7FD434(v433);
  v428 = v136;
  v139 = v135;
  v140 = sub_25C82E25C();
  v141 = p_info[263];
  if (os_log_type_enabled(v141, v140))
  {
    v142 = v141;
    v143 = swift_slowAlloc();
    *v143 = 134217984;
    *(v143 + 4) = v139[2];
    _os_log_impl(&dword_25C7D2000, v142, v140, "TIGER: got this many dates: %ld", v143, 0xCu);
    MEMORY[0x25F890110](v143, -1, -1);
  }

  v394 = v139;
  if (!v139[2])
  {
    goto LABEL_111;
  }

  v144 = v79[2];
  v145 = v403;
  v144(v403, v138, v75);
  v144(v416, v145, v75);
  v146 = *&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance];
  if (([v146 respondsToSelector_] & 1) == 0 || (v147 = objc_msgSend(v146, sel_evaluateWithModel_, v431)) == 0)
  {
    v177 = sub_25C82E27C();
    v178 = p_info[263];
    sub_25C82E00C(v177, &dword_25C7D2000, v178, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:]", 83, 2, MEMORY[0x277D84F90]);

    sub_25C7E7DEC();
    swift_allocError();
    *v179 = 20;
    swift_willThrow();
    goto LABEL_40;
  }

  v373 = v146;
  v367 = v144;
  v368 = v79 + 2;
  v148 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary;
  v149 = *&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary];
  *&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_defaultModelEvaluationSummary] = v147;
  v150 = v147;

  v151 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
  v152 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v371 = "evaluateWithModel:]";
  v153 = sub_25C82E07C();
  [v152 setDateFormat_];

  v374 = v151;
  v154 = sub_25C82DF4C();
  v155 = [v152 stringFromDate_];

  if (!v155)
  {
    sub_25C82E0AC();
    v155 = sub_25C82E07C();
  }

  [v150 setEvaluationDate_];
  v370 = v150;

  v156 = *&v69[v148];
  if (!v156)
  {
    goto LABEL_119;
  }

  v157 = v156;
  v158 = [v431 modelURL];
  v159 = v420;
  sub_25C82DE7C();

  sub_25C82DE1C();
  v160 = v159;
  v161 = v408 + 8;
  v431 = *(v408 + 8);
  (v431)(v160, v434);
  v162 = sub_25C82E07C();

  [v157 setModelName_];

  v163 = *&v69[v148];
  if (!v163)
  {
    goto LABEL_120;
  }

  v164 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_historicalModelEvaluationResults;
  swift_beginAccess();
  v165 = v163;
  MEMORY[0x25F88F4D0]();
  v166 = v164;
  v167 = *((*&v69[v164] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v168 = *((*&v69[v164] & 0xFFFFFFFFFFFFFF8) + 0x18);
  v169 = v370;
  if (v167 >= v168 >> 1)
  {
LABEL_115:
    v362 = v166;
    sub_25C82E1EC();
    v166 = v362;
    v169 = v370;
  }

  v170 = v166;
  sub_25C82E20C();
  swift_endAccess();
  v171 = &v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore];
  __swift_project_boxed_opaque_existential_1(&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore], *&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore + 24]);
  v172 = v428;
  v173 = sub_25C81EF2C();
  v135 = v172;
  if (v172)
  {

    goto LABEL_40;
  }

  v398 = v171;
  v364 = v170;
  v181 = *(v173 + 16);
  v429 = v161;
  v388 = v181;
  if (v181)
  {
    v182 = 0;
    v387 = v413 + v430[12];
    v386 = v413 + v430[24];
    v385 = (v413 + v430[28]);
    v384 = &v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory];
    v383 = v173 + ((*(v414 + 80) + 32) & ~*(v414 + 80));
    v376 = v400 + 8;
    v369 = v393 + 8;
    v377 = v402 + 8;
    v382 = v430[16];
    v365 = v391 + 8;
    v363[1] = v390 + 8;
    v381 = v430[20];
    v183 = (v79 + 4);
    v380 = (v408 + 32);
    v375 = (v79 + 7);
    v389 = (v79 + 1);
    v79 = &qword_25C830490;
    *(&v184 + 1) = 2;
    v379 = xmmword_25C830640;
    *&v184 = 136315394;
    v372 = v184;
    *&v184 = 136315138;
    v366 = v184;
    v185 = v419;
    v412 = v183;
    v378 = v173;
    while (1)
    {
      if (v182 >= *(v173 + 16))
      {
        __break(1u);
LABEL_113:
        v135 = sub_25C7E916C(v135);
        goto LABEL_26;
      }

      v428 = v135;
      v186 = v413;
      sub_25C7E92DC(v383 + *(v414 + 72) * v182, v413, &qword_27FC16080, &qword_25C830490);
      v409 = *(v186 + v382);
      v187 = v409;
      v408 = *(v186 + v381);
      v188 = *(v386 + 8);
      v406 = *v386;
      v405 = v188;
      v189 = v75;
      v190 = v385[1];
      v407 = *v385;
      v404 = v190;
      v191 = v430[12];
      v192 = v430[16];
      v193 = v430[20];
      v194 = v185;
      v195 = (&v185->isa + v430[24]);
      v196 = v430[28];
      v424 = v182;
      v197 = (v194 + v196);
      v411 = *v183;
      (v411)(v194, v186, v189);
      v198 = *v380;
      v421 = v191;
      v199 = v434;
      v198(&v191[v194], v387, v434);
      *(&v194->isa + v192) = v187;
      *(&v194->isa + v193) = v408;
      v200 = v405;
      *v195 = v406;
      v195[1] = v200;
      v201 = v404;
      *v197 = v407;
      v197[1] = v201;
      v202 = v431;
      v203 = v420;
      sub_25C82DE5C();
      sub_25C82DE8C();
      v202(v203, v199);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
      v204 = swift_allocObject();
      *(v204 + 16) = v379;
      *(v204 + 56) = MEMORY[0x277D83B88];
      *(v204 + 64) = MEMORY[0x277D83C10];
      *(v204 + 32) = v424;
      sub_25C82E0CC();
      v206 = v205;

      v207 = v427;
      sub_25C82DDFC();
      if (!v409)
      {

        v215 = sub_25C82E27C();
        p_info = ODCurareEvaluationAndReportingModule.info;
        v216 = qword_281559838;
        sub_25C82E00C(v215, &dword_25C7D2000, v216, "Loaded model metadata did not contain modelInformation...pruning", 64, 2, MEMORY[0x277D84F90]);

        sub_25C7E7DEC();
        v217 = swift_allocError();
        *v218 = 20;
        v428 = v217;
        swift_willThrow();
        v409 = 0;
        goto LABEL_76;
      }

      __swift_project_boxed_opaque_existential_1(v398, v398[3]);
      v208 = v400;
      sub_25C7E92DC(v194, v400, &qword_27FC16080, &qword_25C830490);
      v209 = v430;
      v210 = v430[12];

      v211 = v399;
      v212 = v432;
      (v411)(v399, v208, v432);
      (*v375)(v211, 0, 1, v212);
      v213 = v428;
      sub_25C822E90(&v421[v194], v211, v207, v415);
      p_info = ODCurareEvaluationAndReportingModule.info;
      if (v213)
      {
        break;
      }

      v428 = 0;
      sub_25C7E97F4(v211, &qword_27FC16048, qword_25C8309D0);
      v219 = v208 + v210;
      v202 = v431;
      (v431)(v219, v199);
      v220 = v393;
      sub_25C7E92DC(v194, v393, &qword_27FC16080, &qword_25C830490);
      v221 = v430;
      v222 = v430[12];

      v223 = v220;
      v224 = (v220 + v221[28]);
      v225 = v224[1];
      v408 = v206;
      if (v225)
      {
        v226 = v202;
        v227 = *v224;
        v228 = v223 + v222;
        v229 = v223;
        v226(v228, v199);
        v409 = *v389;
        (v409)(v229, v432);
        v230 = sub_25C82E25C();
        v231 = qword_281559838;
        if (os_log_type_enabled(qword_281559838, v230))
        {
          v232 = v231;
          v233 = swift_slowAlloc();
          v234 = swift_slowAlloc();
          v433[0] = v234;
          *v233 = v366;
          *(v233 + 4) = sub_25C7E77E4(v227, v225, v433);
          _os_log_impl(&dword_25C7D2000, v232, v230, "Setting candidate model with coreduet stream %s", v233, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v234);
          MEMORY[0x25F890110](v234, -1, -1);
          MEMORY[0x25F890110](v233, -1, -1);
        }

        v235 = v402;
        sub_25C7E92DC(v419, v402, &qword_27FC16080, &qword_25C830490);
        v236 = v430;
        v237 = v430[12];

        v238 = *(v235 + v236[20]);

        v239 = objc_allocWithZone(ODCurareCandidateModel);
        v240 = sub_25C82DE2C();
        v241 = sub_25C82E07C();

        v242 = [v239 initWithModelURL:v240 withCoreDuetStreamIdentifier:v241 andMetadata:v238];

        v202 = v431;
        (v431)(v235 + v237, v199);
        v243 = v432;
        v244 = v409;
        (v409)(v235, v432);
        v69 = v423;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        if (!v242)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v245 = v223;
        v202((v223 + v222), v199);
        v246 = v432;
        v409 = *v389;
        (v409)(v245, v432);
        v247 = v391;
        sub_25C7E92DC(v194, v391, &qword_27FC16080, &qword_25C830490);
        v248 = v430;
        v249 = v430[12];

        v250 = v247 + v248[24];
        v251 = *(v250 + 8);
        v406 = *v250;

        v407 = v251;
        v252 = (v247 + v249);
        if (!v251)
        {
          v202(v252, v199);
          (v409)(v247, v246);
LABEL_74:

          v296 = sub_25C82E27C();
          v297 = p_info[263];
          sub_25C82E00C(v296, &dword_25C7D2000, v297, "Candidate model was nil, this should not happen!", 48, 2, MEMORY[0x277D84F90]);

          sub_25C7E7DEC();
          v298 = swift_allocError();
          *v299 = 20;
          v428 = v298;
          swift_willThrow();
LABEL_75:
          v202(v415, v434);
          v409 = 0;
          v194 = v419;
LABEL_76:
          v300 = sub_25C82E27C();
          v301 = p_info[263];
          v302 = v410;
          v79 = &qword_25C830490;
          sub_25C7E92DC(v194, v410, &qword_27FC16080, &qword_25C830490);
          v303 = v426;
          sub_25C7E92DC(v194, v426, &qword_27FC16080, &qword_25C830490);
          LODWORD(v408) = v300;
          if (os_log_type_enabled(v301, v300))
          {
            v406 = v301;
            v304 = swift_slowAlloc();
            v407 = v304;
            v405 = swift_slowAlloc();
            v433[0] = v405;
            *v304 = v372;
            v305 = v402;
            sub_25C7E92DC(v302, v402, &qword_27FC16080, &qword_25C830490);
            v306 = v302;
            v307 = v430;
            v308 = v430[12];

            v309 = sub_25C82DE8C();
            v310 = v432;
            v312 = v311;
            sub_25C7E97F4(v306, &qword_27FC16080, &qword_25C830490);
            (v431)(v305 + v308, v434);
            v404 = *v389;
            (v404)(v305, v310);
            v313 = sub_25C7E77E4(v309, v312, v433);

            v314 = v407;
            *(v407 + 4) = v313;
            *(v314 + 6) = 2080;
            sub_25C7E92DC(v426, v305, &qword_27FC16080, &qword_25C830490);
            v315 = v307[12];

            v316 = v397;
            (v411)(v397, v305, v310);
            (v431)(v305 + v315, v434);
            v202 = v431;
            sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v317 = sub_25C82E4DC();
            v319 = v318;
            (v404)(v316, v310);
            p_info = (ODCurareEvaluationAndReportingModule + 32);
            v79 = &qword_25C830490;
            sub_25C7E97F4(v426, &qword_27FC16080, &qword_25C830490);
            v320 = sub_25C7E77E4(v317, v319, v433);

            v321 = v407;
            *(v407 + 14) = v320;
            v322 = v406;
            _os_log_impl(&dword_25C7D2000, v406, v408, "Pruning invalid model at: %s date: %s.", v321, 0x16u);
            v323 = v405;
            swift_arrayDestroy();
            MEMORY[0x25F890110](v323, -1, -1);
            v69 = v423;
            MEMORY[0x25F890110](v321, -1, -1);

            v324 = v398;
            v325 = v421;
          }

          else
          {
            sub_25C7E97F4(v303, &qword_27FC16080, &qword_25C830490);
            sub_25C7E97F4(v302, &qword_27FC16080, &qword_25C830490);
            v324 = v398;
            v325 = v421;
            v69 = v423;
          }

          __swift_project_boxed_opaque_existential_1(v324, v324[3]);
          v185 = v419;
          v326 = v409;
          sub_25C826030(v325 + v419, v419);
          v135 = v326;
          if (v326)
          {
            goto LABEL_123;
          }

          v202(v427, v434);

          v75 = v432;
          goto LABEL_81;
        }

        v202(v252, v199);
        (v409)(v247, v246);
        v253 = v402;
        sub_25C7E92DC(v194, v402, &qword_27FC16080, &qword_25C830490);
        v254 = v430;
        v405 = v430[12];

        v255 = *(v253 + v254[20]);

        v256 = objc_allocWithZone(ODCurareCandidateModel);
        v257 = sub_25C82DE2C();
        v258 = sub_25C82E07C();

        v242 = [v256 initWithModelURL:v257 withBiomeStreamIdentifier:v258 andMetadata:v255];

        v243 = v432;
        v202 = v431;
        (v431)(v253 + v405, v199);
        v244 = v409;
        (v409)(v253, v243);
        v69 = v423;
        p_info = ODCurareEvaluationAndReportingModule.info;
        if (!v242)
        {
          goto LABEL_74;
        }
      }

      v409 = v244;
      v259 = [v242 CDModelDataStreamIdentifier];
      if (v259)
      {
        v260 = v259;
        v261 = sub_25C82E0AC();
        v263 = v262;

        v264 = sub_25C82E25C();
        v265 = p_info[263];
        if (os_log_type_enabled(v265, v264))
        {
          v266 = v265;
          v267 = swift_slowAlloc();
          v268 = swift_slowAlloc();
          v433[0] = v268;
          *v267 = v366;
          v269 = sub_25C7E77E4(v261, v263, v433);

          *(v267 + 4) = v269;
          _os_log_impl(&dword_25C7D2000, v266, v264, "Candiate model has stream %s", v267, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v268);
          MEMORY[0x25F890110](v268, -1, -1);
          MEMORY[0x25F890110](v267, -1, -1);
        }

        else
        {
        }

        v202 = v431;
        v243 = v432;
      }

      v407 = v242;
      [v242 setIsPersonalizableModel_];
      v270 = v392;
      sub_25C7E92DC(&v69[v425], v392, &qword_27FC16048, qword_25C8309D0);
      if (v417(v270, 1, v243) == 1)
      {
        v271 = 0;
      }

      else
      {
        v271 = sub_25C82DF4C();
        (v409)(v270, v243);
      }

      v272 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v273 = v407;
      [v407 setStreamFilter:v271 fromInclusive:v272 toDate:0 toInclusive:0];

      v274 = v373;
      if (([v373 respondsToSelector_] & 1) == 0 || (v275 = objc_msgSend(v274, sel_evaluateWithModel_, v273)) == 0)
      {

        v292 = sub_25C82E27C();
        v293 = p_info[263];
        sub_25C82E00C(v292, &dword_25C7D2000, v293, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:]", 83, 2, MEMORY[0x277D84F90]);

        sub_25C7E7DEC();
        v294 = swift_allocError();
        *v295 = 20;
        v428 = v294;
        swift_willThrow();

        goto LABEL_75;
      }

      v276 = v275;
      v277 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v278 = sub_25C82E07C();
      [v277 setDateFormat_];

      v279 = sub_25C82DF4C();
      v280 = [v277 stringFromDate_];

      if (!v280)
      {
        sub_25C82E0AC();
        v280 = sub_25C82E07C();
      }

      [v276 setEvaluationDate_];
      v281 = v390;
      sub_25C7E92DC(v419, v390, &qword_27FC16080, &qword_25C830490);
      v282 = v430;
      v283 = *(v281 + v430[16]);

      if (!v283)
      {
        goto LABEL_122;
      }

      v284 = v282[12];
      v285 = [v283 modelName];

      [v276 setModelName_];
      v286 = v281 + v284;
      v287 = v434;
      v288 = v431;
      (v431)(v286, v434);
      v289 = v281;
      v75 = v432;
      (v409)(v289, v432);
      v290 = v364;
      v291 = swift_beginAccess();
      MEMORY[0x25F88F4D0](v291);
      if (*((*&v69[v290] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v69[v290] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25C82E1EC();
      }

      sub_25C82E20C();
      swift_endAccess();

      v288(v415, v287);
      v288(v427, v287);
      v185 = v419;
      v135 = v428;
      v79 = &qword_25C830490;
LABEL_81:
      v182 = (v424 + 1);
      sub_25C7E97F4(v185, &qword_27FC16080, &qword_25C830490);
      v173 = v378;
      v183 = v412;
      if (v388 == v182)
      {
        goto LABEL_82;
      }
    }

    sub_25C7E97F4(v211, &qword_27FC16048, qword_25C8309D0);

    v214 = v208 + v210;
    v202 = v431;
    (v431)(v214, v199);
    v409 = 0;
    v428 = v213;
    goto LABEL_76;
  }

LABEL_82:

  v433[0] = MEMORY[0x277D84F90];
  v327 = v396;
  if (v396 >> 62)
  {
    goto LABEL_117;
  }

  v328 = *((v396 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_84:
  v161 = v416;
  v79 = v422;
  if (v328)
  {
    v75 = 0;
    v430 = (v327 & 0xC000000000000001);
    v426 = v327 & 0xFFFFFFFFFFFFFF8;
    v427 = (v422 + 8);
    v428 = v328;
    while (1)
    {
      if (v430)
      {
        v329 = MEMORY[0x25F88F6D0](v75);
        v79 = v395;
        p_info = (v75 + 1);
        if (__OFADD__(v75, 1))
        {
          goto LABEL_114;
        }
      }

      else
      {
        v79 = v395;
        if (v75 >= *(v426 + 16))
        {
          __break(1u);
LABEL_117:
          v328 = sub_25C82E43C();
          v327 = v396;
          goto LABEL_84;
        }

        v329 = *(v327 + 8 * v75 + 32);
        p_info = (v75 + 1);
        if (__OFADD__(v75, 1))
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }
      }

      v330 = v135;
      sub_25C7E92DC(&v69[v425], v79, &qword_27FC16048, qword_25C8309D0);
      v331 = v432;
      if (v417(v79, 1, v432) == 1)
      {
        v332 = 0;
      }

      else
      {
        v332 = sub_25C82DF4C();
        (v427->isa)(v79, v331);
      }

      v333 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      [v329 setStreamFilter:v332 fromInclusive:v333 toDate:0 toInclusive:0];

      v334 = v373;
      if (([v373 respondsToSelector_] & 1) == 0 || (v335 = objc_msgSend(v334, sel_evaluateWithModel_, v329)) == 0)
      {

        v347 = sub_25C82E27C();
        v348 = qword_281559838;
        sub_25C82E00C(v347, &dword_25C7D2000, v348, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:]", 83, 2, MEMORY[0x277D84F90]);

        sub_25C7E7DEC();
        swift_allocError();
        *v349 = 20;
        swift_willThrow();

        isa = v427->isa;
        v351 = v432;
        (v427->isa)(v416, v432);
        isa(v403, v351);
        goto LABEL_41;
      }

      v336 = v335;
      v337 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v338 = sub_25C82E07C();
      [v337 setDateFormat_];

      v339 = sub_25C82DF4C();
      v340 = [v337 stringFromDate_];

      if (!v340)
      {
        sub_25C82E0AC();
        v340 = sub_25C82E07C();
      }

      [v336 setEvaluationDate_];
      v341 = [v329 modelURL];
      v342 = v420;
      sub_25C82DE7C();

      sub_25C82DE1C();
      (v431)(v342, v434);
      v343 = sub_25C82E07C();

      [v336 setModelName_];

      v344 = v336;
      MEMORY[0x25F88F4D0]();
      if (*((v433[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v433[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25C82E1EC();
      }

      sub_25C82E20C();

      v345 = v433[0];
      ++v75;
      v346 = p_info == v428;
      v161 = v416;
      v79 = v422;
      v327 = v396;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
      v135 = v330;
      if (v346)
      {
        goto LABEL_106;
      }
    }
  }

  v345 = MEMORY[0x277D84F90];
LABEL_106:
  v428 = v135;
  v352 = v401;
  v75 = v432;
  v367(v401, v161, v432);
  (v79[7])(v352, 0, 1, v75);
  sub_25C82B334(v352, *&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier], *&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8]);
  sub_25C7E97F4(v352, &qword_27FC16048, qword_25C8309D0);
  v353 = &v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore];
  __swift_project_boxed_opaque_existential_1(&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore], *&v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelEvaluationSummaryStore + 24]);
  v354 = *&v69[v364];

  v355 = v374;
  v356 = v428;
  sub_25C812D1C(&v69[v374], v354, 1);
  v428 = v356;
  if (v356)
  {

    v357 = v79[1];
    v357(v416, v75);
    v357(v403, v75);

    return;
  }

  __swift_project_boxed_opaque_existential_1(v353, v353[3]);
  v358 = v428;
  sub_25C812D1C(&v69[v355], v345, 0);
  if (!v358)
  {
    v428 = 0;

    v359 = v79[1];
    v359(v416, v75);
    v359(v403, v75);
    v69[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport] = 1;
LABEL_111:
    v360 = sub_25C82E25C();
    v361 = p_info[263];
    sub_25C82E00C(v360, &dword_25C7D2000, v361, "End evaluation", 14, 2, MEMORY[0x277D84F90]);

    return;
  }

LABEL_40:
  v180 = v79[1];
  v180(v416, v75);
  v180(v403, v75);
LABEL_41:
}
uint64_t SiriLinkFlowProvisionalLinkActionReadFrom(void *a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 == 3)
      {
        v21 = objc_alloc_init(SiriLinkFlowProvisionalLinkActionParameter);
        v24[0] = 0;
        v24[1] = 0;
        if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionParameterReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v21)
        {
          [a1 addParameters:v21];
        }

        goto LABEL_34;
      }

      if (v13 == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24[0] & 0x7F) << v14;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        [a1 setPresentationStyle:v20];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = PBReaderReadString();
    [a1 setIdentifier:v21];
LABEL_34:

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalLinkActionParameterReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      [a1 setName:v14];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalLinkActionCompletionReadFrom(void *a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          [a1 setErrorDescription:v14];
          goto LABEL_38;
        }

        if (v13 == 3)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_40;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_40:
          [a1 setIsSuccess:v21];
          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          [a1 setTargetBundle:v14];
LABEL_38:

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SiriLinkFlowProvisionalLinkAction);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setAction:v14];
          goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalLinkActionConversionReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v23 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v23 & 0x7F) << v6;
      if ((v23 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = PBReaderReadString();
      [a1 setOutcome:v21];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v24 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v24 & 0x7F) << v14;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_33:
      [a1 setIsSuccess:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SiriLinkFlowProvisionalSiriLinkFlowClientEventReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 102)
      {
        v14 = objc_alloc_init(SiriLinkFlowProvisionalLinkActionConversion);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionConversionReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setLinkActionConversion:v14];
        goto LABEL_29;
      }

      if (v13 == 101)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(FLOWSchemaFLOWEventMetadata);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !FLOWSchemaFLOWEventMetadataReadFrom())
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SiriLinkFlowProvisionalLinkActionCompletion);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SiriLinkFlowProvisionalLinkActionCompletionReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setLinkActionCompletion:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfoReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) == 3)
    {
      v15 = PBReaderReadString();
      [a1 setWfRunnerEventName:v15];
      goto LABEL_26;
    }

    if (v14 == 2)
    {
      v21 = 0;
      v16 = [a2 position] + 4;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v21 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      LODWORD(v18) = v21;
      [a1 setClockSeconds:v18];
    }

    else
    {
      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        [a1 setShortcutName:v15];
LABEL_26:

        continue;
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfoReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextReadFrom(void *a1, void *a2)
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
      if ((v12 >> 3) == 101)
      {
        v14 = objc_alloc_init(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfo);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestRemovalInfoReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setEnded:v14];
        goto LABEL_29;
      }

      if (v13 == 100)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SISchemaUUID);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom())
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setContextId:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfo);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !VoiceCmdsSchemaProvisionalVoiceCmdsWaitForRequestContextInfoReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setStartedOrChanged:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NSError.isPreflightError.getter()
{
  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  v6 = v6 && v0 == v5;
  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1(v4);
    OUTLINED_FUNCTION_19();

    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ([v1 code] == &stru_658.reserved3)
  {
    return 1;
  }

LABEL_9:
  v7 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  if (v6 && v0 == v9)
  {

LABEL_16:
    if ([v1 code] != "ib")
    {
      goto LABEL_17;
    }

    return 1;
  }

  OUTLINED_FUNCTION_1(v8);
  OUTLINED_FUNCTION_19();

  if (v2)
  {
    goto LABEL_16;
  }

LABEL_17:
  v11 = [v1 userInfo];
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(v12, &v29, v13, v14);

  if (v30)
  {
    if (swift_dynamicCast())
    {
      v29 = v28;
      v15 = lazy protocol witness table accessor for type String and conformance String();
      v21 = OUTLINED_FUNCTION_24(v15, &type metadata for String, v16, v15, v17, v18, v19, v20, 0xD000000000000031);

      if (v21)
      {
        if (one-time initialization token for voiceCommands != -1)
        {
          OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.voiceCommands);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v23, v24))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_25(&dword_0, v25, v26, "Error description indicates it is a preflight error");
          OUTLINED_FUNCTION_17();
        }

        return 1;
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v29, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4), (v6 & 1) != 0))
  {
    v7 = OUTLINED_FUNCTION_12(v5);

    outlined init with copy of Any(v7, v8);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
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

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_12(v4);

    outlined init with copy of Any(v6, v7);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_12(v4);

    outlined init with copy of Any(v6, v7);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a3, a4), (v5 & 1) != 0))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_7();
    outlined init with copy of DeviceState?();
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v7 = OUTLINED_FUNCTION_8();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

{
  if (*(a3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v3)
    {
    }
  }

  return OUTLINED_FUNCTION_22();
}

{
  if (*(a3 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v3)
    {
    }
  }

  return OUTLINED_FUNCTION_22();
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t NSError.isUnsupportedInCarPlayError.getter()
{
  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  v6 = v6 && v0 == v5;
  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1(v4);
    OUTLINED_FUNCTION_19();

    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if ([v1 code] == stru_6F8.segname)
  {
    return 1;
  }

LABEL_9:
  v7 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  if (v6 && v0 == v9)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1(v8);
    OUTLINED_FUNCTION_19();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = [v1 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = lazy protocol witness table accessor for type String and conformance String();
  LOBYTE(v11) = OUTLINED_FUNCTION_24(v12, &type metadata for String, v13, v12, v14, v15, v16, v17, 0xD000000000000029);

  if (v11)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.voiceCommands);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25(&dword_0, v21, v22, "Error description indicates it is an UnsupportedInCarPlay error");
      OUTLINED_FUNCTION_17();
    }

    return 1;
  }

  return 0;
}

BOOL NSError.isLinkUserCancelledError.getter()
{
  v3 = [v1 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_20();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_13();
  v6 = v6 && v0 == v5;
  if (v6)
  {

    return [v1 code] == &stru_798.nreloc + 3;
  }

  OUTLINED_FUNCTION_1(v4);
  OUTLINED_FUNCTION_19();

  result = 0;
  if (v2)
  {
    return [v1 code] == &stru_798.nreloc + 3;
  }

  return result;
}

uint64_t NSError.filteredLocalizedDescription.getter()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v5 = 136315650;
    v6 = [v2 domain];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v26);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2048;
    v11 = [v2 code];

    *(v5 + 14) = v11;
    *(v5 + 22) = 2080;
    v12 = [v2 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = Dictionary.description.getter();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v26);

    *(v5 + 24) = v16;
    _os_log_impl(&dword_0, v3, v4, "#NSError:\n Domain:%s\n Code-%ld\n Underlying userInfo: %s", v5, 0x20u);
    swift_arrayDestroy();

    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  v17 = &off_291A78;
  v18 = 4;
  while (--v18)
  {
    v19 = v17 + 2;

    v20 = [v2 domain];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v26[0] = v21;
    v26[1] = v23;
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v20) = BidirectionalCollection<>.starts<A>(with:)();

    v17 = v19;
    if (v20)
    {
      return OUTLINED_FUNCTION_22();
    }
  }

  v24 = [v2 localizedDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  return OUTLINED_FUNCTION_22();
}

id default argument 6 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)()
{
  v0 = objc_allocWithZone(AFPreferences);

  return [v0 init];
}

void *default argument 5 of AutoShortcutFirstRunFlow.init(autoShortcutInvocation:aceServiceInvoker:voiceShortcutsClient:outputPublisher:deviceState:userDefaults:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for UserDefaultsWrapper();
  swift_allocObject();
  result = UserDefaultsWrapper.init()();
  v0[3] = v1;
  v0[4] = &protocol witness table for UserDefaultsWrapper;
  *v0 = result;
  return result;
}

void *default argument 1 of static VoiceShortcutClientWrapper.getVoiceShortcutName(voiceCommandId:voiceShortcutById:)()
{
  v0 = [objc_opt_self() standardClient];
  OUTLINED_FUNCTION_21();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = &_s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TATu;
  *(v2 + 24) = v1;
  return &_sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATu;
}

void *default argument 0 of static WFChooseFromListFlow.submitHandoffToCompanionDialog(templating:outputPublisher:deviceState:)()
{
  v0 = type metadata accessor for CATOption();
  v1 = OUTLINED_FUNCTION_14(v0);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  static Device.current.getter();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6(&one-time initialization token for shared);
  }

  v2 = static WFDialogState.shared;
  type metadata accessor for WorkflowRunnerCATs(0);

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_10();
  v3 = CATWrapper.__allocating_init(options:globals:)();
  v4 = type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_15(v4);
  OUTLINED_FUNCTION_10();
  v5 = CATWrapperSimple.__allocating_init(options:globals:)();
  v6 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_10();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  v8 = type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_10();
  v9 = CATWrapperSimple.__allocating_init(options:globals:)();
  v10 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_10();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  v12 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_15(v12);
  OUTLINED_FUNCTION_10();
  v13 = CATWrapperSimple.__allocating_init(options:globals:)();
  v14 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15(v14);
  OUTLINED_FUNCTION_10();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  return WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(v17, v2, v3, v5, v7, v9, v11, v13, v15);
}

uint64_t default argument 1 of CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_6(&one-time initialization token for shared);
  }
}

uint64_t default argument 0 of static TemplatingResult.getBehaviorAfterSpeaking(behavior:)@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for BehaviorAfterSpeaking.defaultBehavior(_:);
  type metadata accessor for BehaviorAfterSpeaking();
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t variable initialization expression of VoiceCommandsAppPolicyHandler.appQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = OUTLINED_FUNCTION_14(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  v7 = type metadata accessor for DispatchQoS();
  v8 = OUTLINED_FUNCTION_14(v7);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3();
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of CustomIntentExecutionFlow.input()
{
  OUTLINED_FUNCTION_9();
  type metadata accessor for Input();
  v0 = OUTLINED_FUNCTION_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t default argument 7 of WFExecuteCustomIntentFlow.init(intent:workflowName:runner:deviceState:aceServiceInvoker:outputPublisher:preferences:appPolicyHandler:guardFlowProvider:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static VoiceCommandsAppPolicyHandler.instance;
  a1[3] = type metadata accessor for VoiceCommandsAppPolicyHandler();
  a1[4] = &protocol witness table for VoiceCommandsAppPolicyHandler;
  *a1 = v2;
}

uint64_t variable initialization expression of LinkActivityManager.storage()
{
  type metadata accessor for LinkActivityManager.AtomicSessionResult();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  return v0;
}

id default argument 4 of AutoShortcutFlow.init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for LinkMetadataProvider();
  OUTLINED_FUNCTION_21();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(LNMetadataProvider) init];
  *(v2 + 16) = result;
  v0[3] = v1;
  v0[4] = &protocol witness table for LinkMetadataProvider;
  *v0 = v2;
  return result;
}

uint64_t variable initialization expression of ShortcutsHandoffFlow.state()
{
  OUTLINED_FUNCTION_9();
  type metadata accessor for Input();
  v0 = OUTLINED_FUNCTION_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, 2, v2);
}

id variable initialization expression of LinkMetadataProvider.wrappedProvider()
{
  v0 = objc_allocWithZone(LNMetadataProvider);

  return [v0 init];
}

uint64_t default argument 7 of CustomIntentResponseGenerator.init(voiceCommandName:siriEnvironment:deviceState:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:continueInAppCATWrapperSimple:responseFactory:)()
{
  type metadata accessor for ContinueInAppCATWrapperSimple(0);
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  swift_allocObject();
  outlined init with copy of DeviceState?();
  v0 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v2);
  outlined destroy of Any?(v3, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  return v0;
}

uint64_t default argument 3 of LNValueType.getLNValue(nlIntent:parameterMetadata:contactResolver:locale:)(uint64_t a1)
{
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of AutoShortcutsSetEnablementFlow.contextProvider()
{
  type metadata accessor for WorkflowNLContextProvider();

  return swift_allocObject();
}

uint64_t default argument 5 of LinkActionDialogTemplating.init(deviceState:runLinkActionCatWrapper:runLinkActionCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:linkActionPatterns:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14(v1);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_3();
  v3 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  result = CATWrapper.__allocating_init(options:globals:)();
  v0[3] = v3;
  v0[4] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  *v0 = result;
  return result;
}

uint64_t default argument 7 of CustomIntentsDialogTemplating.init(deviceState:dialogState:originDevice:catWrapper:catWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:appNameResolving:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

id default argument 1 of AutoShortcutInvocation.init(directInvocationData:provider:preferences:)()
{
  OUTLINED_FUNCTION_9();
  v1 = type metadata accessor for AutoShortcutProvider();
  OUTLINED_FUNCTION_21();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(LNAutoShortcutsProvider) init];
  *(v2 + 16) = result;
  v0[3] = v1;
  v0[4] = &protocol witness table for AutoShortcutProvider;
  *v0 = v2;
  return result;
}

id default argument 8 of AutoShortcutsSetEnablementFlow.init(deviceState:outputPublisher:linkActionPatterns:autoShortcutCATs:autoShortcutCATsSimple:voiceShortcutsClient:provider:appNameResolver:preferences:userDefaults:)()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

uint64_t default argument 2 of CustomIntentRCHFlowStrategy.init(deviceState:intent:catWrapper:catWrapperSimple:)()
{
  OUTLINED_FUNCTION_23();
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_14(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v1(0);
  static CATOption.defaultMode.getter();
  return v0(v6, 0);
}

uint64_t default argument 2 of CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t variable initialization expression of RunLinkActionContinueInAppParameters.customDialog()
{
  OUTLINED_FUNCTION_9();
  type metadata accessor for SpeakableString();
  v0 = OUTLINED_FUNCTION_8();

  return __swift_storeEnumTagSinglePayload(v0, v1, 1, v2);
}

uint64_t default argument 11 of WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)@<X0>(uint64_t *a1@<X8>)
{
  static AceService.currentAsync.getter();
  v2 = type metadata accessor for LocationProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 0x3FA999999999999ALL;
  result = outlined init with take of AceServiceInvokerAsync(v5, v3 + 24);
  a1[3] = v2;
  a1[4] = &protocol witness table for LocationProvider;
  *a1 = v3;
  return result;
}

uint64_t default argument 13 of WorkflowRunnerFlow.init(workflowRunnerInput:workflowRunner:dialogState:aceServiceInvoker:deviceState:outputPublisher:runCustomCatWrapper:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:locationGuardFlowProvider:locationProvider:tccTemplatesCATWrapper:dateTimeResolver:linkHandlingFlowFactory:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a1(0);
  a4[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a4);
  return a3();
}

SiriLinkFlowPlugin::CustomIntentDisambiguationItemContainer protocol witness for RawRepresentable.rawValue.getter in conformance _INIntentType()
{
  v1 = OUTLINED_FUNCTION_5();
  result.items._rawValue = CustomIntentDisambiguationItemContainer.init(items:)(v1).items._rawValue;
  v0->items._rawValue = result.items._rawValue;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

NSString _sSo32WFContentItemListThumbnailOptionas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromF1Cyx01_F5CTypeQzSgFZTW_0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm(a2);
  *a1 = result;
  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance LNMeasurementUnitType(uint64_t a2@<X8>)
{
  LNMeasurementUnitType.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WFSmartPromptButtonIdentifier()
{
  v1 = OUTLINED_FUNCTION_5();
  result = WFTextFieldKeyboardType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance LNActionModes@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance WFContentItemListThumbnailOption(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFContentItemListThumbnailOption and conformance WFContentItemListThumbnailOption, type metadata accessor for WFContentItemListThumbnailOption, &protocol conformance descriptor for WFContentItemListThumbnailOption);
  v3 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFContentItemListThumbnailOption and conformance WFContentItemListThumbnailOption, type metadata accessor for WFContentItemListThumbnailOption, &protocol conformance descriptor for WFContentItemListThumbnailOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance WFSmartPromptButtonIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier, type metadata accessor for WFSmartPromptButtonIdentifier, &protocol conformance descriptor for WFSmartPromptButtonIdentifier);
  v3 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier, type metadata accessor for WFSmartPromptButtonIdentifier, &protocol conformance descriptor for WFSmartPromptButtonIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WFSmartPromptButtonIdentifier@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNValueTypeSpecificMetadataKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey, type metadata accessor for LNValueTypeSpecificMetadataKey, &protocol conformance descriptor for LNValueTypeSpecificMetadataKey);
  v3 = lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(&lazy protocol witness table cache variable for type LNValueTypeSpecificMetadataKey and conformance LNValueTypeSpecificMetadataKey, type metadata accessor for LNValueTypeSpecificMetadataKey, &protocol conformance descriptor for LNValueTypeSpecificMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(uint64_t (*a1)(void))
{
  return a1();
}

{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
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

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined init with take of AceServiceInvokerAsync(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_AAFC()
{
  OUTLINED_FUNCTION_21();

  return _swift_deallocObject(v1);
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TATQ0_;

  return _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_();
}

uint64_t _s18SiriLinkFlowPlugin26VoiceShortcutClientWrapperC03geteF4Name14voiceCommandId0kf2ByM0SSSgSS_So07VCVoiceF0CSSYaKXEtYaFZfA0_AISSYaKYCcSo0ofG0Ccfu_AISSYaKYCcfu0_TATQ0_(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_ACF0()
{

  return _swift_deallocObject(v0);
}

uint64_t _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTA(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TRTATQ0_;

  return _sScA_pSgSSSo15VCVoiceShortcutCs5Error_pIegHgILgozo_SSACsAD_pIegHgozo_TR();
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type WFSmartPromptButtonIdentifier and conformance WFSmartPromptButtonIdentifier(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v10 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_50_2();
    v10 = OUTLINED_FUNCTION_7_20(v7, v8, v9);
  }

  return v10 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, WorkflowRunnerCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunVoiceCommandCATsSimple.IntentConfirmationPromptDialogIds.rawValue.getter);
}

{
  if (a1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v3)
    {
      v7 = 28526;
    }

    else
    {
      v7 = 7562617;
    }

    if (v3)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44_7(a1, a2, 0x6C65636E6163);
  }

  if (v4)
  {
    OUTLINED_FUNCTION_46_8();
    if (v8)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 7562617;
    }

    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
    }
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v7 == v5 && v2 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_7_20(v7, v4, v5);
  }

  return v12 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunVoiceCommandCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunCustomIntentCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunCustomIntentCATsSimple.IntentConfirmationPromptWithTemplateDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunCustomIntentCATsSimple.IntentHandledResponseDialogIds.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, InstallShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, WorkflowRunnerCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, ListShortcutsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AutoShortcutCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandCurrencyUnit.rawValue.getter);
}

{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v3)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_46_8();
    if (v7)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_20(v5, a2, v2);
  }

  return v11 & 1;
}

{
  return specialized == infix<A>(_:_:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandReference.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, VoiceCommandsNLIntent.VoiceCommandUnit.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, SuggestionsCATsSimple.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, AutoShortcutCATs.Properties.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunLinkActionCATPatternsIdentifiers.rawValue.getter);
}

{
  return specialized == infix<A>(_:_:)(a1, a2, RunLinkActionCATsSimple.Properties.rawValue.getter);
}

{
  v2 = 0x6D7269666E6F63;
  if (a1)
  {
    OUTLINED_FUNCTION_28_8();
    if (v3)
    {
      v5 = 0x6D6F74737563;
    }

    else
    {
      v5 = 0x62726556736168;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x6D7269666E6F63;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_28_8();
    if (v7)
    {
      v2 = 0x6D6F74737563;
    }

    else
    {
      v2 = 0x62726556736168;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_20(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_23();

  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm()
{
  OUTLINED_FUNCTION_23();

  v2 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *v0 = 0;
  return v2 & 1;
}

NSString _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo29WFSmartPromptButtonIdentifiera_Tt1gq5Tm(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of DeviceState?()
{
  OUTLINED_FUNCTION_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

void type metadata accessor for LNInteractionMode(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_17()
{
}

uint64_t OUTLINED_FUNCTION_19()
{
}

void OUTLINED_FUNCTION_20()
{
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return StringProtocol.contains<A>(_:)();
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t CustomIntentRCHFlowStrategy.__allocating_init(intent:deviceState:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14(v5);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_3();
  outlined init with copy of DeviceState(a2, v11);
  type metadata accessor for RunCustomIntentCATs(0);
  static CATOption.defaultMode.getter();
  v7 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunCustomIntentCATsSimple(0);
  static CATOption.defaultMode.getter();
  v8 = CATWrapperSimple.__allocating_init(options:globals:)();
  v9 = (*(v2 + 104))(v11, a1, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

uint64_t outlined init with copy of DeviceState(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_21_2();
  (*v3)(a2);
  return a2;
}

uint64_t CustomIntentRCHFlowStrategy.__allocating_init(deviceState:intent:catWrapper:catWrapperSimple:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  CustomIntentRCHFlowStrategy.init(deviceState:intent:catWrapper:catWrapperSimple:)(a1, a2, a3, a4);
  return v8;
}

uint64_t CustomIntentRCHFlowStrategy.init(deviceState:intent:catWrapper:catWrapperSimple:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for CATOption();
  v11 = OUTLINED_FUNCTION_14(v10);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  outlined init with copy of DeviceState(a1, v5 + 16);
  *(v5 + 56) = a2;
  outlined init with copy of DeviceState(a1, v21);
  v12 = one-time initialization token for shared;
  v13 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = static WFDialogState.shared;
  type metadata accessor for RunVoiceCommandCATs(0);

  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  v16 = CATWrapperSimple.__allocating_init(options:globals:)();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v17 = type metadata accessor for AppNameResolver();
  v18 = swift_allocObject();
  type metadata accessor for CustomIntentsDialogTemplating();
  v19 = swift_allocObject();
  *(v19 + 136) = v17;
  *(v19 + 144) = &protocol witness table for AppNameResolver;
  *(v19 + 112) = v18;
  *(v19 + 56) = v14;
  outlined init with take of AceServiceInvokerAsync(v21, v19 + 16);
  *(v19 + 64) = 0;
  *(v19 + 72) = 1;
  *(v19 + 80) = a3;
  *(v19 + 88) = a4;
  *(v19 + 96) = v15;
  *(v19 + 104) = v16;
  *(v5 + 64) = v19;
  return v5;
}

uint64_t CustomIntentRCHFlowStrategy.actionForInput(input:)()
{
  v0 = type metadata accessor for Parse();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  Input.parse.getter();
  if ((*(v1 + 88))(v4, v0) == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v1 + 96))(v4, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, &_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMR);
    v5 = Parse.ServerConversion.siriKitIntent.getter();
    v6 = [v5 _type];

    if (v6 == &dword_0 + 2)
    {
      static ActionForInput.handle()();
    }

    else
    {
      static ActionForInput.ignore()();
    }

    type metadata accessor for NLIntent();
    OUTLINED_FUNCTION_23_0();
    return (*(v12 + 8))(v4);
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.voiceCommands);
    v8 = static os_log_type_t.debug.getter();
    v9 = Logger.logObject.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v9, v8, "Parse type not yet supported.", v10, 2u);
      OUTLINED_FUNCTION_11_0();
    }

    static ActionForInput.ignore()();
    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t CustomIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = OUTLINED_FUNCTION_4();
  return _swift_task_switch(v3);
}

uint64_t CustomIntentRCHFlowStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  OUTLINED_FUNCTION_12_0();
  if (static FlowStrategyUtils.makeIntentFromParse(parse:currentIntent:)(*(v0 + 16)))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    lazy protocol witness table accessor for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_6_0();

    return v4();
  }
}

uint64_t CustomIntentRCHFlowStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[34] = v2;
  v1[35] = v0;
  v1[33] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  OUTLINED_FUNCTION_14(v4);
  v1[36] = OUTLINED_FUNCTION_27();
  v1[37] = swift_task_alloc();
  v5 = type metadata accessor for DialogPhase();
  v1[38] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[39] = v6;
  v1[40] = OUTLINED_FUNCTION_27();
  v1[41] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v1[42] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[43] = v8;
  v1[44] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v1[45] = OUTLINED_FUNCTION_27();
  v1[46] = swift_task_alloc();
  v10 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v10);
  v1[47] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v11);
}

{
  OUTLINED_FUNCTION_14_0();
  *(v0 + 224) = *(v0 + 272);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CommandFailure();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v24 = *(v0 + 360);
    type metadata accessor for RunLinkActionCATsSimple(0);
    static CATOption.defaultMode.getter();
    v25 = CATWrapperSimple.__allocating_init(options:globals:)();
    *(v0 + 496) = v25;
    v26 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
    v31 = (*(*v25 + class metadata base offset for RunLinkActionCATsSimple + 80) + **(*v25 + class metadata base offset for RunLinkActionCATsSimple + 80));
    v27 = swift_task_alloc();
    *(v0 + 504) = v27;
    *v27 = v0;
    v27[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:);
    v15 = *(v0 + 360);
    v14 = 0;
    v16 = v31;

    return v16(v15, v14);
  }

  *(v0 + 384) = *(v0 + 232);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 392) = __swift_project_value_buffer(v1, static Logger.voiceCommands);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = CommandFailure.errorCode.getter();

    _os_log_impl(&dword_0, v2, v3, "voice command error code: %ld", v4, 0xCu);
    OUTLINED_FUNCTION_15_0(v4);
  }

  else
  {
  }

  if (CommandFailure.errorCode.getter() == 1307)
  {
    v5 = *(v0 + 368);
    v6 = *(v0 + 280);
    type metadata accessor for RunCustomIntentCATsSimple(0);
    static CATOption.defaultMode.getter();
    v7 = CATWrapperSimple.__allocating_init(options:globals:)();
    *(v0 + 400) = v7;
    v8 = *(v6 + 40);
    v9 = *(v6 + 48);
    __swift_project_boxed_opaque_existential_1((v6 + 16), v8);
    v10 = DeviceState.asSiriKitDeviceState()(v8, v9);
    *(v0 + 408) = v10;
    v11 = [*(v6 + 56) _title];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    SpeakableString.init(print:speak:)();
    v12 = type metadata accessor for SpeakableString();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
    v30 = (*(*v7 + class metadata base offset for RunCustomIntentCATsSimple + 144) + **(*v7 + class metadata base offset for RunCustomIntentCATsSimple + 144));
    v13 = swift_task_alloc();
    *(v0 + 416) = v13;
    *v13 = v0;
    v13[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:);
    v14 = *(v0 + 368);
    v15 = v10;
    v16 = v30;

    return v16(v15, v14);
  }

  if ((CustomIntentRCHFlowStrategy.isPreflightError(commandFailure:)() & 1) == 0)
  {

    goto LABEL_15;
  }

  v18 = *(v0 + 280);
  outlined init with copy of DeviceState(v18 + 16, v0 + 72);
  type metadata accessor for WorkflowSnippetProvider();
  inited = swift_initStackObject();
  *(v0 + 464) = inited;
  outlined init with take of AceServiceInvokerAsync((v0 + 72), inited + 16);
  v20 = [*(v18 + 56) launchId];
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v18 + 16), *(*(v0 + 280) + 40));
    if (dispatch thunk of DeviceState.isWatch.getter())
    {
      v23 = 0x800000000022F8D0;
    }

    else
    {
      v23 = 0x800000000022F740;
    }
  }

  *(v0 + 472) = v23;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 480) = v28;
  *v28 = v29;
  v28[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:);

  return WorkflowSnippetProvider.buildSnippetForPreflightError(appBundleId:)();
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v8 + 424) = v7;
  *(v8 + 432) = v0;

  outlined destroy of SpeakableString?(*(v2 + 368), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v0;

  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v8 + 512) = v7;
  *(v8 + 520) = v0;

  outlined destroy of SpeakableString?(*(v2 + 360), &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_18_0();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  v17 = v0;

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.voiceCommands);
  _StringGuts.grow(_:)(56);
  v5._object = 0x800000000022F800;
  v5._countAndFlagsBits = 0xD000000000000036;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v6);

  v7 = *(v3 - 8);
  (*(v7 + 16))(v2, v4, v3);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  outlined init with copy of Logger?(v2, v1);
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v1, 1, v3);

  if (v1 == 1)
  {
    outlined destroy of SpeakableString?(*(v0 + 288), &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v10 = 136315650;
      v11 = StaticString.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2048;
      *(v10 + 14) = 116;
      *(v10 + 22) = 2080;
      *(v10 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v16);
      _os_log_impl(&dword_0, v8, v9, "FatalError at %s:%lu - %s", v10, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_0(v15);
      OUTLINED_FUNCTION_11_0();
    }

    (*(v7 + 8))(*(v0 + 288), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v12);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_25_0(&dword_0, v8, v9, "Unable to generate default error dialog due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0(v3);
  }

  lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError();
  swift_allocError();
  swift_willThrow();

  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_6_0();

  return v10();
}

{
  v14 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v13);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_25_0(&dword_0, v8, v9, "Unable to generate default error dialog due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_15_0(v3);
  }

  v10 = *(v0 + 464);
  lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError();
  swift_allocError();
  swift_willThrow();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_6_0();

  return v11();
}

uint64_t CustomIntentRCHFlowStrategy.makeErrorResponse(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    OUTLINED_FUNCTION_26(&dword_0, v14, v15, "Generated failure dialog runCustomIntent#extensionTimedOut");
    OUTLINED_FUNCTION_15_0(v13);
  }

  v16 = v10[53];
  v17 = v10[41];
  v18 = v10[38];
  v19 = v10[39];

  static DialogPhase.error.getter();
  v20 = OUTLINED_FUNCTION_7_0();
  v21(v20);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v19 + 8))(v17, v18);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v10[55] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  v10[56] = v22;
  *(v22 + 16) = xmmword_216010;
  *(v22 + 32) = v16;
  OUTLINED_FUNCTION_16_0(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v23 = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v10[57] = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_13_0(v24);
  OUTLINED_FUNCTION_21_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[53];
  v13 = v10[43];
  v12 = v10[44];
  v14 = v10[42];

  (*(v13 + 8))(v12, v14);
  OUTLINED_FUNCTION_10_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = *(v10 + 464);
  v12 = *(v10 + 264);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));

  outlined init with take of AceServiceInvokerAsync((v10 + 112), v12);
  OUTLINED_FUNCTION_10_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.voiceCommands);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    OUTLINED_FUNCTION_26(&dword_0, v15, v16, "Generated generic failure dialog");
    OUTLINED_FUNCTION_15_0(v14);
  }

  v17 = v10[64];
  v18 = v10[41];
  v19 = v10[38];
  v20 = v10[39];

  static DialogPhase.error.getter();
  v21 = OUTLINED_FUNCTION_7_0();
  v22(v21);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v20 + 8))(v18, v19);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v10[66] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  v10[67] = v23;
  *(v23 + 16) = xmmword_216010;
  *(v23 + 32) = v17;
  OUTLINED_FUNCTION_16_0(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v24 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v10[68] = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_13_0(v25);
  OUTLINED_FUNCTION_21_0();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  v11 = v10[64];
  v13 = v10[43];
  v12 = v10[44];
  v14 = v10[42];

  (*(v13 + 8))(v12, v14);
  OUTLINED_FUNCTION_10_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 128) + **(*v2 + 128));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v3 + 16) = v6;
  *v6 = v7;
  v6[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v9(a1, a2);
}

uint64_t CustomIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for DialogPhase();
  v1[7] = v6;
  OUTLINED_FUNCTION_5_0(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_27();
  v1[10] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[11] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[12] = v9;
  v1[13] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  v6 = (*(**(v0[6] + 64) + 352) + **(**(v0[6] + 64) + 352));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return v6(v4, v2, v3);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v9();
  }

  else
  {
    *(v5 + 120) = v3;
    v11 = OUTLINED_FUNCTION_4();

    return _swift_task_switch(v11);
  }
}

{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  static DialogPhase.error.getter();
  v5 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = OUTLINED_FUNCTION_7_0();
  v7(v6);
  OUTLINED_FUNCTION_1_0();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  (*(v4 + 8))(v2, v3);
  type metadata accessor for ResponseFactory();
  swift_allocObject();
  v0[16] = ResponseFactory.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  v0[17] = v8;
  *(v8 + 16) = xmmword_216010;
  *(v8 + 32) = v1;
  OUTLINED_FUNCTION_16_0(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[18] = v10;
  *v10 = v11;
  v10[1] = CustomIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v12 = v0[13];
  v13 = v0[2];

  return v15(v13, v8, v12);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t CustomIntentRCHFlowStrategy.isPreflightError(commandFailure:)()
{
  if (CommandFailure.errorCode.getter() == 3006)
  {
    return 1;
  }

  result = CommandFailure.underlyingError.getter();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v1 = [v9 domain];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    v8 = [v9 code];

    return v8 == &stru_BA0.segname[14];
  }

  return result;
}

Swift::Int CustomIntentsDialogTemplatingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError(uint64_t a1)
{
  Hasher.init(_seed:)();
  CustomIntentsDialogTemplatingError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CustomIntentRCHFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t CustomIntentRCHFlowStrategy.__deallocating_deinit()
{
  CustomIntentRCHFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy;

  return v8(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance CustomIntentRCHFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CustomIntentRCHFlowStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 128) + **(**v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v8(a1, a2);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 136) + **(**v4 + 136));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 144) + **(**v4 + 144));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CustomIntentRCHFlowStrategy();
  *v8 = v4;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v3 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t lazy protocol witness table accessor for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors()
{
  result = lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors;
  if (!lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors;
  if (!lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentFlowErrors and conformance CustomIntentFlowErrors);
  }

  return result;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_0();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError()
{
  result = lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError;
  if (!lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError;
  if (!lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomIntentRCHFlowStrategy.CustomIntentRCHError and conformance CustomIntentRCHFlowStrategy.CustomIntentRCHError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CustomIntentRCHFlowStrategy and conformance CustomIntentRCHFlowStrategy(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomIntentRCHFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustomIntentRCHFlowStrategy.CustomIntentRCHError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CustomIntentRCHFlowStrategy.CustomIntentRCHError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0xF438);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_0()
{
}

uint64_t OUTLINED_FUNCTION_11_0()
{
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_24_0()
{
}

void OUTLINED_FUNCTION_25_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_task_alloc();
}

void AutoShortcutFlow.state.didset()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.voiceCommands);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_0, oslog, v1, "#AutoShortcutFlow transitioned to state=%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
  }
}

id closure #1 in variable initialization expression of static AutoShortcutFlow.defaultRunner(const void *a1)
{
  v72 = a1;
  v69 = type metadata accessor for WorkflowRunnerFlow.State(0);
  OUTLINED_FUNCTION_7();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_3();
  v70 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMd, &_sScSy18SiriLinkFlowPlugin0A19WorkflowRunnerEventOGMR);
  OUTLINED_FUNCTION_13_1();
  v65 = v5;
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v56 - v6;
  v7 = type metadata accessor for DateTimeResolver();
  OUTLINED_FUNCTION_13_1();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = type metadata accessor for CATOption();
  v15 = OUTLINED_FUNCTION_14(v14);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_3();
  v89 = 0;
  memset(v88, 0, sizeof(v88));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static WFDialogState.shared;
  static AceService.currentAsync.getter();
  static Device.current.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v17 = type metadata accessor for RunCustomIntentCATs(0);
  OUTLINED_FUNCTION_34(v17);
  OUTLINED_FUNCTION_8_1();
  v63 = CATWrapper.__allocating_init(options:globals:)();
  v58 = type metadata accessor for RunVoiceCommandCATs(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v62 = CATWrapper.__allocating_init(options:globals:)();
  v57 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v18 = CATWrapperSimple.__allocating_init(options:globals:)();
  v19 = type metadata accessor for WorkflowRunnerCATPatternsExecutor(0);
  OUTLINED_FUNCTION_34(v19);
  OUTLINED_FUNCTION_8_1();
  v61 = CATWrapper.__allocating_init(options:globals:)();
  static AceService.currentAsync.getter();
  v20 = type metadata accessor for LocationProvider();
  v21 = swift_allocObject();
  *(v21 + 16) = 0x3FA999999999999ALL;
  outlined init with take of AceServiceInvokerAsync(&v76, v21 + 24);
  DateTimeResolver.init()();
  v59 = type metadata accessor for WorkflowRunnerFlow(0);
  v22 = objc_allocWithZone(v59);
  v84[3] = v20;
  v84[4] = &protocol witness table for LocationProvider;
  v83[3] = &type metadata for DefaultTCCTemplatesCATWrapper;
  v83[4] = &protocol witness table for DefaultTCCTemplatesCATWrapper;
  v84[0] = v21;
  v82[3] = v7;
  v82[4] = &protocol witness table for DateTimeResolver;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  v67 = v13;
  v68 = v9;
  v24 = *(v9 + 16);
  v71 = v7;
  v24(boxed_opaque_existential_1, v13, v7);
  v81[3] = &type metadata for DefaultLinkHandlingFlowFactory;
  v81[4] = &protocol witness table for DefaultLinkHandlingFlowFactory;
  v25 = v72;
  memcpy(&v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunnerInput], v72, 0x41uLL);
  outlined init with copy of DeviceState(v87, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_aceServiceInvoker]);
  outlined init with copy of DeviceState(v86, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_deviceState]);
  *&v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogState] = v16;
  outlined init with copy of DeviceState(v85, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_outputPublisher]);
  outlined init with copy of DeviceState(v84, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationProvider]);
  outlined init with copy of DeviceState(v82, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dateTimeResolver]);
  outlined init with copy of DeviceState(v81, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkHandlingFlowFactory]);
  *&v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_runVoiceCommandsCatWrapperSimple] = v18;
  v26 = &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_locationGuardFlowProvider];
  *v26 = closure #1 in variable initialization expression of static SLFLocationAccessGuardProvider.makeGuardFlow;
  v26[1] = 0;
  outlined init with copy of DeviceState(v83, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_tccTemplatesCATWrapper]);
  outlined init with copy of DeviceState(v86, &v79);
  type metadata accessor for RunLinkActionCATs(0);
  outlined init with copy of SiriWorkflowRunnerInput(v25, &v76);
  v60 = v16;

  v73 = v18;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v27 = CATWrapper.__allocating_init(options:globals:)();
  v28 = type metadata accessor for RunLinkActionCATsSimple(0);
  OUTLINED_FUNCTION_34(v28);
  OUTLINED_FUNCTION_8_1();
  v29 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v30 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v31 = v57;
  v32 = CATWrapperSimple.__allocating_init(options:globals:)();
  v33 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_34(v33);
  OUTLINED_FUNCTION_8_1();
  v34 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  v35 = swift_allocObject();
  v35[14] = v31;
  v35[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  v35[11] = v34;
  outlined init with take of AceServiceInvokerAsync(&v79, (v35 + 2));
  v35[7] = v27;
  v35[8] = v29;
  v35[9] = v30;
  v35[10] = v32;
  *&v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_linkActionDialogTemplate] = v35;
  outlined init with copy of UUID?(v88, &v79, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  if (v80)
  {
    outlined init with take of AceServiceInvokerAsync(&v79, &v76);
    outlined init with take of AceServiceInvokerAsync(&v76, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner]);
  }

  else
  {
    outlined destroy of Any?(&v79, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
    outlined init with copy of DeviceState(v86, &v79);
    outlined init with copy of DeviceState(v87, v75);
    v36 = type metadata accessor for SiriWorkflowRunner();
    swift_allocObject();
    v37 = v72;
    outlined init with copy of SiriWorkflowRunnerInput(v72, &v76);
    v38 = SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(v37, &v79, v75);
    v39 = &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner];
    *(v39 + 3) = v36;
    *(v39 + 4) = &protocol witness table for SiriWorkflowRunner;
    *v39 = v38;
  }

  outlined init with copy of DeviceState(v86, &v76);
  type metadata accessor for WorkflowRunnerCATs(0);
  v40 = v60;

  v41 = v63;

  v42 = v62;

  v43 = v61;

  static CATOption.defaultMode.getter();
  OUTLINED_FUNCTION_8_1();
  v44 = CATWrapper.__allocating_init(options:globals:)();
  v45 = type metadata accessor for WorkflowRunnerCATsSimple(0);
  OUTLINED_FUNCTION_34(v45);
  OUTLINED_FUNCTION_8_1();
  v46 = CATWrapperSimple.__allocating_init(options:globals:)();
  v47 = type metadata accessor for RunCustomIntentCATsSimple(0);
  OUTLINED_FUNCTION_34(v47);
  OUTLINED_FUNCTION_8_1();
  v48 = CATWrapperSimple.__allocating_init(options:globals:)();
  type metadata accessor for WorkflowDialogTemplating();
  swift_allocObject();
  *&v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_dialogTemplating] = WorkflowDialogTemplating.init(deviceState:dialogState:workflowCatWrapper:workflowCatWrapperSimple:runCustomCatWrapper:runCustomCatWrapperSimple:runVoiceCommandsCatWrapper:runVoiceCommandsCatWrapperSimple:catPatternsExecutor:)(&v76, v40, v44, v46, v41, v48, v42, v73, v43);
  outlined init with copy of DeviceState(&v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_workflowRunner], &v76);
  v49 = v77;
  v50 = v78;
  __swift_project_boxed_opaque_existential_1(&v76, v77);
  v51 = v64;
  (*(v50 + 8))(v49, v50);
  __swift_destroy_boxed_opaque_existential_1Tm(&v76);
  v52 = v70;
  v53 = v66;
  AsyncStream.makeAsyncIterator()();
  (*(v65 + 8))(v51, v53);
  swift_storeEnumTagMultiPayload();
  outlined init with take of AutoShortcutInvocation(v52, &v22[OBJC_IVAR____TtC18SiriLinkFlowPlugin18WorkflowRunnerFlow_state], type metadata accessor for WorkflowRunnerFlow.State);
  v74.receiver = v22;
  v74.super_class = v59;
  v54 = objc_msgSendSuper2(&v74, "init");

  (*(v68 + 8))(v67, v71);
  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v86);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  outlined destroy of Any?(v88, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMd, &_s18SiriLinkFlowPlugin0A15WorkflowRunning_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  return v54;
}

Swift::Int VoiceCommandsParityError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutFlow.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  VoiceCommandsParityError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t AutoShortcutFlow.__allocating_init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = a1[3];
  v15 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = a10(v20, a2, a3, a4, a5, a6, a7, a8, a9, v10, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

BOOL AutoShortcutFlow.on(input:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Input();
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  v9 = __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v14 = *(v3 + 272);
  if (*(v3 + 272))
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.voiceCommands);
    (*(v7 + 16))(v11, a1, v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_48();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      OUTLINED_FUNCTION_9_1();
      lazy protocol witness table accessor for type Input and conformance Input(v20, 255, v21, &protocol conformance descriptor for Input);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v7 + 8))(v11, v5);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v39);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_0, v16, v17, "#AutoShortcutFlow onInput - ignoring unexpected input=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_15_0(v19);
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      (*(v7 + 8))(v11, v5);
    }
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.voiceCommands);
    (*(v7 + 16))(v13, a1, v5);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_48();
      v38 = OUTLINED_FUNCTION_33();
      v39 = v38;
      *v2 = 136315138;
      OUTLINED_FUNCTION_9_1();
      lazy protocol witness table accessor for type Input and conformance Input(v29, 255, v30, &protocol conformance descriptor for Input);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v14;
      v34 = v33;
      (*(v7 + 8))(v13, v5);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, &v39);
      v14 = v32;

      *(v2 + 4) = v35;
      _os_log_impl(&dword_0, v27, v28, "#AutoShortcutFlow onInput - initial input=%s", v2, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_15_0(v36);
      OUTLINED_FUNCTION_15_0(v2);
    }

    else
    {

      (*(v7 + 8))(v13, v5);
    }

    *(v3 + 272) = 1;
    AutoShortcutFlow.state.didset();
  }

  return v14 == 0;
}

uint64_t AutoShortcutFlow.executeAppShortcut(invocation:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for UUID();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(AutoShortcutFlow.executeAppShortcut(invocation:));
}

uint64_t AutoShortcutFlow.executeAppShortcut(invocation:)()
{
  v1 = v0[13];
  v2 = v0[14];
  v0[22] = *(v1 + 32);
  v0[23] = *(v1 + 40);
  static InstrumentationUtils.emitAutoShortcutUsedInstrumentation(autoShortcutTemplate:)();
  OUTLINED_FUNCTION_47((v2 + 16));
  OUTLINED_FUNCTION_16_1();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_38(v4);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;
  *(v3 + 208) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_6_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = v3;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  if (specialized Array.count.getter(*(v0 + 232)))
  {
    v1 = *(v0 + 232) & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (v1)
    {
      goto LABEL_39;
    }

    v2 = *(*(v0 + 232) + 32);
LABEL_4:

    v3 = [v2 orderedPhrases];

    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNAutoShortcutLocalizedPhrase, LNAutoShortcutLocalizedPhrase_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v62 = specialized Array.count.getter(v4);
    if (v62)
    {
      v5 = 0;
      v6 = *(v0 + 128);
      v60 = v4;
      v61 = v4 & 0xC000000000000001;
      v54 = (v6 + 32);
      v58 = v4 & 0xFFFFFFFFFFFFFF8;
      v59 = *(v0 + 144);
      v57 = (v6 + 8);
      do
      {
        if (v61)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v58 + 16))
          {
            goto LABEL_38;
          }

          v7 = *(v4 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_4;
        }

        v11 = *(v0 + 176);
        v10 = *(v0 + 184);
        v12 = [v7 basePhraseTemplate];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (v13 == v11 && v15 == v10)
        {
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v17 & 1) == 0)
          {

            goto LABEL_29;
          }
        }

        v18 = [v8 parameterIdentifier];
        if (v18)
        {
          v19 = v18;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v20 = 0;
        }

        else
        {
          v20 = 1;
        }

        v21 = *(v0 + 168);
        v22 = *(v0 + 152);
        v23 = *(v0 + 120);
        v24 = *(v0 + 104);
        __swift_storeEnumTagSinglePayload(v21, v20, 1, v23);
        v25 = *(type metadata accessor for AutoShortcutInvocation(0) + 28);
        v26 = *(v59 + 48);
        outlined init with copy of UUID?(v21, v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with copy of UUID?(v24 + v25, v22 + v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
        {
          v27 = *(v0 + 120);
          outlined destroy of Any?(*(v0 + 168), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v4 = v60;
          if (__swift_getEnumTagSinglePayload(v22 + v26, 1, v27) == 1)
          {
            v51 = *(v0 + 152);

            outlined destroy of Any?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_36:
            v52 = [v8 localizedPhrase];
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v53;

            goto LABEL_31;
          }

          goto LABEL_26;
        }

        v28 = *(v0 + 120);
        outlined init with copy of UUID?(*(v0 + 152), *(v0 + 160), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22 + v26, 1, v28);
        v30 = *(v0 + 160);
        v31 = *(v0 + 168);
        if (EnumTagSinglePayload == 1)
        {
          v32 = *(v0 + 120);

          outlined destroy of Any?(v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*v57)(v30, v32);
          v4 = v60;
LABEL_26:
          outlined destroy of Any?(*(v0 + 152), &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
          goto LABEL_29;
        }

        v56 = *(v0 + 152);
        v33 = *(v0 + 136);
        v34 = *(v0 + 120);
        (*v54)(v33, v22 + v26, v34);
        lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v57;
        (*v57)(v33, v34);
        outlined destroy of Any?(v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v35(v30, v34);
        outlined destroy of Any?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v55)
        {

          goto LABEL_36;
        }

        v4 = v60;
LABEL_29:
        ++v5;
      }

      while (v9 != v62);
    }
  }

  v36 = 0;
  v37 = 0;
LABEL_31:
  v38 = *(v0 + 216);
  v39 = *(v0 + 200);
  v40 = *(v0 + 104);
  v41 = v40[3];
  v42 = *v40;
  v43 = v40[1];
  *(v0 + 16) = v40[2];
  v44 = *(v0 + 112);
  *(v0 + 24) = v41;
  *(v0 + 32) = v42;
  *(v0 + 40) = v43;
  *(v0 + 48) = v39;
  *(v0 + 56) = v38;
  *(v0 + 64) = v36;
  *(v0 + 72) = v37;
  *(v0 + 80) = 1;
  v45 = *(v44 + 256);

  v46 = v45(v0 + 16);
  *(v0 + 88) = v46;
  type metadata accessor for WorkflowRunnerFlow(0);
  OUTLINED_FUNCTION_10_1();
  lazy protocol witness table accessor for type Input and conformance Input(v47, 255, v48, &protocol conformance descriptor for WorkflowRunnerFlow);
  OUTLINED_FUNCTION_20_1();
  static ExecuteResponse.complete<A>(next:)();

  OUTLINED_FUNCTION_6_0();

  return v49();
}

uint64_t AutoShortcutFlow.executeAppShortcut(invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = v14[25];
  v15 = v14[26];
  v17 = v14[14];
  v18 = v17[30];
  v19 = v17[31];
  __swift_project_boxed_opaque_existential_1(v17 + 27, v18);
  v20 = v17[5];
  v21 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v20);
  OUTLINED_FUNCTION_37();
  v23 = v22(v20, v21);
  v25 = v24;
  v26 = [v16 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v14[27] = (*(v19 + 8))(v23, v25, v27, v29, v18, v19);
  if (v15)
  {
    v30 = v14[25];

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_1();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v40 = v14[14];

    v41 = *(v40 + 48);
    OUTLINED_FUNCTION_47((v40 + 16));
    OUTLINED_FUNCTION_16_1();
    v52 = v42 + *v42;
    v43 = swift_task_alloc();
    v14[28] = v43;
    *v43 = v14;
    OUTLINED_FUNCTION_38(v43);
    OUTLINED_FUNCTION_6_1();

    return v46(v44, v45, v46, v47, v48, v49, v50, v51, v41 + 16, v52, a11, a12, a13, a14);
  }
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:));
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v15 = v14[13];
  v16 = v15[11];
  OUTLINED_FUNCTION_47(v15 + 7);
  v14[15] = v15[5];
  v14[16] = v15[6];
  v14[17] = v15[1];
  v14[18] = v15[2];
  v14[19] = v15[3];
  v14[20] = v15[4];
  OUTLINED_FUNCTION_16_1();
  v30 = v17 + *v17;
  v18 = swift_task_alloc();
  v14[21] = v18;
  *v18 = v14;
  v18[1] = AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:);
  OUTLINED_FUNCTION_6_1();

  return v27(v19, v20, v21, v22, v23, v24, v25, v26, a9, v16 + 32, v30, a12, a13, a14);
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }
}

uint64_t AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30();
  v16 = *(v14 + 176);
  v15 = *(v14 + 184);
  v17 = *(v14 + 112);
  v18 = v17[30];
  v19 = v17[31];
  __swift_project_boxed_opaque_existential_1(v17 + 27, v18);
  v20 = v17[5];
  v21 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v20);
  OUTLINED_FUNCTION_37();
  v23 = v22(v20, v21);
  v25 = v24;
  v26 = [v16 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = (*(v19 + 8))(v23, v25, v27, v29, v18, v19);
  v31 = *(v14 + 176);
  if (v15)
  {

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v32 = *(v14 + 160);
    v33 = *(v14 + 144);
    a9 = *(v14 + 136);
    v54 = *(v14 + 152);
    v34 = *(v14 + 120);
    v35 = *(v14 + 128);
    v36 = *(v14 + 112);
    v37 = v30;

    *(v14 + 16) = v34;
    *(v14 + 24) = v35;
    *(v14 + 32) = a9;
    *(v14 + 40) = v33;
    *(v14 + 48) = v54;
    *(v14 + 56) = v32;
    a10 = v37;
    *(v14 + 64) = v37;
    *(v14 + 72) = v31;
    *(v14 + 80) = 2;
    v38 = *(v36 + 256);

    v39 = v38(v14 + 16);
    v40 = [objc_allocWithZone(FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed) init];
    if (v40)
    {
      v41 = v40;
      outlined bridged method (mbgnn) of @objc FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsed.appShortcutId.setter(*(v14 + 136), *(v14 + 144), v40);
      _s18SiriLinkFlowPlugin20InstrumentationUtilsO04emitbcE033_4B7DCD361232BDB55F45721261AF31265event0g7RequestB0yx_SbtSo08SISchemaE7MessageCRbzlFZSo57FLOWLINKSchemaFLOWLINKAppShortcutGeneralizedExecutionUsedC_Tt1g5(v41, 0);
    }

    v42 = *(v14 + 176);
    *(v14 + 88) = v39;
    type metadata accessor for WorkflowRunnerFlow(0);
    OUTLINED_FUNCTION_10_1();
    lazy protocol witness table accessor for type Input and conformance Input(v43, 255, v44, &protocol conformance descriptor for WorkflowRunnerFlow);
    static ExecuteResponse.complete<A>(next:)();

    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_6_1();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t AutoShortcutFlow.execute()()
{
  OUTLINED_FUNCTION_8_0();
  v1[125] = v0;
  v1[124] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v3);
  v1[126] = OUTLINED_FUNCTION_28();
  v1[127] = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_16_1();
  v1[128] = v4;
  v1[129] = OUTLINED_FUNCTION_28();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v5);
  v1[130] = OUTLINED_FUNCTION_28();
  v1[131] = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_16_1();
  v1[132] = v6;
  v1[133] = OUTLINED_FUNCTION_28();
  v1[134] = type metadata accessor for FlowUnhandledReason();
  OUTLINED_FUNCTION_16_1();
  v1[135] = v7;
  v1[136] = OUTLINED_FUNCTION_28();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
  OUTLINED_FUNCTION_14(v8);
  v1[137] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for AutoShortcutInvocation(0);
  v1[138] = v9;
  OUTLINED_FUNCTION_14(v9);
  v1[139] = OUTLINED_FUNCTION_28();
  v10 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v10);
  v1[140] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v11);
}

{
  v1 = *(v0 + 1000);
  switch(*(v1 + 272))
  {
    case 1:
      goto LABEL_3;
    case 2:
      outlined init with copy of DeviceState(v1 + 16, v0 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin19AppShortcutInvoking_pMd, &_s18SiriLinkFlowPlugin19AppShortcutInvoking_pMR);
      if (swift_dynamicCast())
      {
        v10 = *(v0 + 1112);
        v11 = *(v0 + 1096);
        __swift_storeEnumTagSinglePayload(v11, 0, 1, *(v0 + 1104));
        outlined init with take of AutoShortcutInvocation(v11, v10, type metadata accessor for AutoShortcutInvocation);
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        *(v0 + 1128) = v12;
        *v12 = v13;
        v12[1] = AutoShortcutFlow.execute();
        OUTLINED_FUNCTION_27_0();

        return AutoShortcutFlow.executeAppShortcut(invocation:)(v14, v15);
      }

      else
      {
        v20 = *(v0 + 1096);
        v21 = OUTLINED_FUNCTION_29();
        __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
        outlined destroy of Any?(v20, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMd, &_s18SiriLinkFlowPlugin22AutoShortcutInvocationVSgMR);
        outlined init with copy of DeviceState(v1 + 16, v0 + 248);
        if (!swift_dynamicCast())
        {
          *(v0 + 80) = 0u;
          *(v0 + 96) = 0u;
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          outlined destroy of Any?(v0 + 16, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMd, &_s18SiriLinkFlowPlugin32AppShortcutGeneralizedInvocationVSgMR);
          if (one-time initialization token for voiceCommands != -1)
          {
            OUTLINED_FUNCTION_0(&one-time initialization token for voiceCommands);
          }

          v29 = type metadata accessor for Logger();
          __swift_project_value_buffer(v29, static Logger.voiceCommands);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_0, v30, v31, "Unsupported invocation type", v32, 2u);
            OUTLINED_FUNCTION_15_0(v32);
          }

          v33 = *(v0 + 1088);
          v34 = *(v0 + 1080);
          v35 = *(v0 + 1072);

          (*(v34 + 104))(v33, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v35);
          static ExecuteResponse.unhandled(reason:isComplete:)();
          (*(v34 + 8))(v33, v35);
LABEL_9:
          OUTLINED_FUNCTION_0_0();

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_27_0();

          __asm { BRAA            X1, X16 }
        }

        memcpy((v0 + 112), (v0 + 16), 0x60uLL);
        swift_task_alloc();
        OUTLINED_FUNCTION_20_0();
        *(v0 + 1144) = v24;
        *v24 = v25;
        v24[1] = AutoShortcutFlow.execute();
        OUTLINED_FUNCTION_27_0();

        return AutoShortcutFlow.executeGeneralizedAppShortcut(invocation:)(v26, v27);
      }

    case 3:
      static ExecuteResponse.complete()();
      goto LABEL_9;
    default:
      *(v1 + 272) = 1;
      AutoShortcutFlow.state.didset();
      v1 = *(v0 + 1000);
LABEL_3:
      outlined init with copy of DeviceState(v1 + 16, v0 + 648);
      outlined init with copy of DeviceState(v1 + 56, v0 + 688);
      outlined init with copy of DeviceState(v1 + 176, v0 + 728);
      outlined init with copy of DeviceState(v1 + 136, v0 + 768);
      outlined init with copy of DeviceState(v1 + 96, v0 + 808);
      v2 = type metadata accessor for UserDefaultsWrapper();
      OUTLINED_FUNCTION_32();
      swift_allocObject();
      v3 = UserDefaultsWrapper.init()();
      type metadata accessor for AutoShortcutFirstRunFlow();
      v4 = swift_allocObject();
      *(v0 + 872) = v2;
      *(v0 + 880) = &protocol witness table for UserDefaultsWrapper;
      *(v0 + 848) = v3;
      outlined init with copy of DeviceState(v0 + 648, v4 + 16);
      outlined init with copy of DeviceState(v0 + 688, v4 + 56);
      outlined init with copy of DeviceState(v0 + 728, v4 + 232);
      outlined init with copy of DeviceState(v0 + 808, v4 + 96);
      outlined init with copy of DeviceState(v0 + 768, v4 + 136);
      type metadata accessor for WorkflowNLContextProvider();
      *(v4 + 184) = swift_allocObject();
      outlined init with copy of DeviceState(v0 + 808, v0 + 888);
      type metadata accessor for AutoShortcutCATs(0);

      static CATOption.defaultMode.getter();
      v5 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for AutoShortcutCATsSimple(0);
      static CATOption.defaultMode.getter();
      v6 = CATWrapperSimple.__allocating_init(options:globals:)();
      v7 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
      static CATOption.defaultMode.getter();
      v8 = CATWrapper.__allocating_init(options:globals:)();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 768));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 728));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
      type metadata accessor for AutoShortcutDialogTemplating();
      v9 = swift_allocObject();
      *(v0 + 952) = v7;
      *(v0 + 960) = &protocol witness table for RunLinkActionCATPatternsExecutor;

      *(v0 + 928) = v8;
      outlined init with take of AceServiceInvokerAsync((v0 + 888), v9 + 16);
      *(v9 + 56) = v5;
      *(v9 + 64) = v6;
      outlined init with take of AceServiceInvokerAsync((v0 + 928), v9 + 72);
      *(v4 + 176) = v9;
      outlined init with take of AceServiceInvokerAsync((v0 + 848), v4 + 192);
      *(v4 + 272) = 0x80;
      *(v0 + 984) = v4;
      lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type AutoShortcutFirstRunFlow and conformance AutoShortcutFirstRunFlow, 255, type metadata accessor for AutoShortcutFirstRunFlow, &protocol conformance descriptor for AutoShortcutFirstRunFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_9;
  }
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 1136) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 1152) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  outlined init with take of AceServiceInvokerAsync((v0 + 568), v0 + 528);
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  OUTLINED_FUNCTION_47((v0 + 608));
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v0 + 1192) = v3;
  *v3 = v4;
  v3[1] = AutoShortcutFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 528, v1, v2);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  v5 = *(v4 + 1040);
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  *(v8 + 1224) = v0;

  outlined destroy of Any?(v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 448));
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_22_1();

  v4 = OUTLINED_FUNCTION_20_1();
  v5(v4);
  (*(v3 + 8))(v1, v0);

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  return _swift_unexpectedError(*(v0 + 1224), "SiriLinkFlowPlugin/AutoShortcutFlow.swift", 41, 1, 157);
}

{
  OUTLINED_FUNCTION_14_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 448));
  OUTLINED_FUNCTION_22_1();

  v5 = OUTLINED_FUNCTION_20_1();
  v6(v5);
  (*(v4 + 8))(v1, v0);

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();

  return v7();
}

uint64_t AutoShortcutFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  outlined destroy of AutoShortcutInvocation(*(v10 + 1112));
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  outlined destroy of AppShortcutGeneralizedInvocation(v10 + 112);
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  *(v10 + 600) = 0;
  *(v10 + 568) = 0u;
  *(v10 + 584) = 0u;
  outlined destroy of Any?(v10 + 568, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  v11 = *(v10 + 1168);
  v12 = *(v10 + 1160);
  static ExecuteResponse.complete()();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
  OUTLINED_FUNCTION_32();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_14_0();
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 66);
  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 76);
  v11 = v10[146];
  v12 = v10[145];
  static ExecuteResponse.complete()();

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v11 + 16));
  OUTLINED_FUNCTION_32();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_21_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t AutoShortcutFlow.execute()(uint64_t a1)
{
  v2 = *(v1 + 1032);
  v3 = *(v1 + 1024);
  v4 = *(v1 + 1016);
  v5 = *(v1 + 1008);
  static Device.current.getter();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1((v1 + 328), *(v1 + 352));
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  *(v1 + 400) = 0;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v1 + 368, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Any?(v5, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 288));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 328));
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  __swift_project_boxed_opaque_existential_1((v1 + 408), *(v1 + 432));
  *(v1 + 472) = v4;
  *(v1 + 480) = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 448));
  (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  *(v1 + 1232) = v8;
  *v8 = v9;
  v8[1] = AutoShortcutFlow.execute();
  OUTLINED_FUNCTION_27_0();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v10, v11, v12);
}

void closure #1 in AutoShortcutFlow.execute()(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  *(a2 + 272) = v2;
  AutoShortcutFlow.state.didset();
}

void *AutoShortcutFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);

  return v0;
}

uint64_t AutoShortcutFlow.__deallocating_deinit()
{
  AutoShortcutFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AutoShortcutFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CustomIntentRCHFlowStrategy;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute() in conformance AutoShortcutFlow()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return AutoShortcutFlow.execute()();
}

uint64_t specialized AutoShortcutFlow.__allocating_init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a8;
  v24 = a7;
  v22 = a5;
  v23 = a6;
  v16 = *(a11 - 8);
  __chkstk_darwin(a10);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a1, a11);
  v20 = specialized AutoShortcutFlow.init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(v18, a2, a3, a4, v22, v23, v24, v25, a9, v19, a11, a12);
  (*(v16 + 8))(a1, a11);
  return v20;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t specialized AutoShortcutFlow.init(appShortcutInvocation:aceServiceInvoker:outputPublisher:voiceShortcutsClient:linkMetadataProvider:deviceState:state:workflowRunnerFlowMaker:)(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a10 + 40) = a11;
  *(a10 + 48) = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a10 + 16));
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a1, a11);
  outlined init with take of AceServiceInvokerAsync(a2, a10 + 56);
  outlined init with take of AceServiceInvokerAsync(a3, a10 + 136);
  outlined init with take of AceServiceInvokerAsync(a4, a10 + 176);
  outlined init with take of AceServiceInvokerAsync(a5, a10 + 216);
  outlined init with take of AceServiceInvokerAsync(a6, a10 + 96);
  *(a10 + 272) = a7;
  *(a10 + 256) = a8;
  *(a10 + 264) = a9;
  return a10;
}

uint64_t outlined destroy of AutoShortcutInvocation(uint64_t a1)
{
  v2 = type metadata accessor for AutoShortcutInvocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State()
{
  result = lazy protocol witness table cache variable for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State;
  if (!lazy protocol witness table cache variable for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutFlow.State and conformance AutoShortcutFlow.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x14128);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for NSError(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t outlined init with take of AutoShortcutInvocation(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_0()
{
}

uint64_t OUTLINED_FUNCTION_19_0()
{
}

uint64_t OUTLINED_FUNCTION_22_1()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 408));

  return static ExecuteResponse.complete()();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{
  *(v1 + 1200) = a1;
  v3 = v2[15];
  v4 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v3);

  return DeviceState.asSiriKitDeviceState()(v3, v4);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1)
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_39()
{
}

void OUTLINED_FUNCTION_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_41()
{
}

uint64_t OUTLINED_FUNCTION_43()
{

  return type metadata accessor for RunVoiceCommandCATs(0);
}

uint64_t OUTLINED_FUNCTION_44()
{
}

void OUTLINED_FUNCTION_46(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_48()
{

  return swift_slowAlloc();
}

BOOL EncoreConstants.IntentIdentifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EncoreConstants.IntentIdentifier.init(rawValue:), v2);

  return v3 != 0;
}

unint64_t lazy protocol witness table accessor for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier()
{
  result = lazy protocol witness table cache variable for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier;
  if (!lazy protocol witness table cache variable for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EncoreConstants.IntentIdentifier and conformance EncoreConstants.IntentIdentifier);
  }

  return result;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance EncoreConstants.IntentIdentifier@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = EncoreConstants.IntentIdentifier.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EncoreConstants.IntentIdentifier(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x148A8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.__allocating_init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v14 = swift_allocObject();
  ShortcutsLinkPromptForMultiChoiceFlowStrategy.init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

void *ShortcutsLinkPromptForMultiChoiceFlowStrategy.init(request:appBundleId:actionMetadata:deviceState:serviceInvoker:outputPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[15] = a4;
  outlined init with take of AceServiceInvokerAsync(a5, (v7 + 5));
  outlined init with take of AceServiceInvokerAsync(a6, (v7 + 10));
  outlined init with take of AceServiceInvokerAsync(a7, (v7 + 16));
  return v7;
}

void ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0();
  v2 = type metadata accessor for Parse.DirectInvocation();
  OUTLINED_FUNCTION_7_1();
  v29 = v3;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = type metadata accessor for Parse();
  OUTLINED_FUNCTION_7_1();
  v10 = v9;
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_14(v15);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  v19 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0);

  Input.parse.getter();
  v21 = (*(v10 + 88))(v14, v8);
  if (v21 == enum case for Parse.NLv3IntentOnly(_:))
  {
    static ActionForInput.handle()();
    v22 = *(v10 + 8);
LABEL_17:
    v22(v14, v8);
    goto LABEL_18;
  }

  if (v21 != enum case for Parse.directInvocation(_:))
  {
    v27 = (v10 + 8);
    if (v21 == enum case for Parse.uso(_:))
    {
      static ActionForInput.handle()();
    }

    else
    {
      static ActionForInput.ignore()();
    }

    v22 = *v27;
    goto LABEL_17;
  }

  (*(v10 + 96))(v14, v8);
  v23 = v29;
  (*(v29 + 32))(v7, v14, v2);
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000040 && 0x800000000022FA70 == v24)
  {

    goto LABEL_13;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_13:
    static ActionForInput.handle()();
    goto LABEL_14;
  }

  static ActionForInput.ignore()();
LABEL_14:
  (*(v23 + 8))(v7, v2);
LABEL_18:
  OUTLINED_FUNCTION_42();
}

uint64_t closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_6_2();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy submitting empty output to clear screen and prevent double-taps");
    OUTLINED_FUNCTION_15_1();
  }

  v7 = v0[12];

  outlined init with copy of DeviceState(v7 + 128, (v0 + 2));
  v8 = v0[5];
  v9 = v0[6];
  OUTLINED_FUNCTION_47(v0 + 2);
  static OutputUtils.makeTemporaryOutput()(v0 + 7);
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[14] = v10;
  *v10 = v11;
  v10[1] = closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 56));
  if (v0)
  {
    v7 = closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:);
  }

  else
  {
    v7 = closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:);
  }

  return _swift_task_switch(v7);
}

{
  OUTLINED_FUNCTION_8_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_18_1();
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy failed to submit empty output to clear screen", v3, 2u);
    OUTLINED_FUNCTION_15_1();
  }

  OUTLINED_FUNCTION_6_0();

  return v4();
}

uint64_t sub_15138()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t partial apply for closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_2(v6);
  *v7 = v8;
  v7[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return closure #1 in ShortcutsLinkPromptForMultiChoiceFlowStrategy.actionForInput(_:)(v2, v3, v4, v5);
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_14(v11);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_28_0(v13, v20);
  v14 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_21_2();
    (*(v16 + 8))(v2, v14);
  }

  v17 = *(v4 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_26_1();
    v19 = swift_allocObject();
    *(v19 + 16) = v6;
    *(v19 + 24) = v4;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_26_1();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;

  swift_task_create();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_42();
}

void _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_14(v11);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_28_0(v13, v20);
  v14 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_21_2();
    (*(v16 + 8))(v2, v14);
  }

  v17 = *(v4 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_26_1();
    v19 = swift_allocObject();
    *(v19 + 16) = v6;
    *(v19 + 24) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  OUTLINED_FUNCTION_26_1();
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  swift_task_create();

  outlined destroy of Siri_Nlu_External_UserDialogAct?(v8, &_sScPSgMd, &_sScPSgMR);

LABEL_9:
  OUTLINED_FUNCTION_42();
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for USOParse();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_28();
  v5 = type metadata accessor for Parse.DirectInvocation();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_28();
  v7 = type metadata accessor for NLIntent();
  v1[10] = v7;
  OUTLINED_FUNCTION_5_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_28();
  v9 = type metadata accessor for Parse();
  v1[13] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for Input();
  v1[16] = v11;
  OUTLINED_FUNCTION_5_0(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_28();
  v13 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v3);
}

{
  OUTLINED_FUNCTION_24_1();
  v2 = v0 + 15;
  v1 = v0[15];
  v3 = v0[14];
  v4 = v0[13];
  Input.parse.getter();
  v5 = (*(v3 + 88))(v1, v4);
  if (v5 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v2 = v0 + 12;
    v6 = v0[12];
    v7 = v0[15];
    OUTLINED_FUNCTION_32_0();
    (*(v8 + 96))(v7);
    v9 = OUTLINED_FUNCTION_30_0();
    v10(v9);
    v11 = ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(nlIntent:)(v6);
LABEL_5:
    v17 = v11;
LABEL_6:
    (*(v0[14] + 8))(*v2, v0[13]);
    goto LABEL_7;
  }

  if (v5 == enum case for Parse.directInvocation(_:))
  {
    v2 = v0 + 9;
    v12 = v0[9];
    v13 = v0[15];
    OUTLINED_FUNCTION_32_0();
    (*(v14 + 96))(v13);
    v15 = OUTLINED_FUNCTION_30_0();
    v16(v15);
    v11 = ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(directInvocation:)(v12);
    goto LABEL_5;
  }

  if (v5 != enum case for Parse.uso(_:))
  {
    v24 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v25 = OUTLINED_FUNCTION_6_2();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_18_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v27, v28, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy unexpected input type");
      OUTLINED_FUNCTION_15_1();
    }

    v17 = 0;
    goto LABEL_6;
  }

  v20 = v0[15];
  v22 = v0[5];
  v21 = v0[6];
  v23 = v0[4];
  (*(v0[14] + 96))(v20, v0[13]);
  (*(v22 + 32))(v21, v20, v23);
  v17 = ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(parse:)(v21);
  (*(v22 + 8))(v21, v23);
LABEL_7:

  v18 = v0[1];

  return v18(v17);
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_24_1();
  a18 = v20;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v24 = v20[17];
  v23 = v20[18];
  v25 = v20[16];
  v26 = v20[2];
  v27 = type metadata accessor for Logger();
  v20[19] = __swift_project_value_buffer(v27, static Logger.voiceCommands);
  (*(v24 + 16))(v23, v26, v25);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v20[17];
  v31 = v20[18];
  v33 = v20[16];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a9 = v35;
    *v34 = 136315138;
    v36 = Input.description.getter();
    v38 = v37;
    (*(v32 + 8))(v31, v33);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &a9);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v28, v29, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy: received %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  v40 = [*(v20[3] + 120) systemProtocols];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v20[20] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v20[21] = v41;
  *v41 = v42;
  v41[1] = ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:);
  OUTLINED_FUNCTION_27_0();

  return static SharedAudioStartingIntentSetup.setup(deviceState:aceServiceInvoker:systemProtocols:)(v43, v44, v45);
}

id *ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(nlIntent:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VoiceCommandsNLIntent(0);
  __chkstk_darwin(v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NLIntent();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = static InputUtils.getText(from:)();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v36 = v6;
    v2 = [v2[2] options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = specialized Array.count.getter(v12);
    v14 = 0;
    v37 = v12 & 0xFFFFFFFFFFFFFF8;
    v38 = v12 & 0xC000000000000001;
    for (i = &off_2B4000; ; i = v6)
    {
      if (v13 == v14)
      {

        v29 = v36;
LABEL_40:
        outlined destroy of VoiceCommandsNLIntent(v29);
        return 0;
      }

      if (v38)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_44;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v2 = v16;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v16 i[307]]);
      if (v18)
      {
        if (v17 == v10 && v18 == v11)
        {
LABEL_25:

LABEL_27:

          outlined destroy of VoiceCommandsNLIntent(v36);
          return v2;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_26;
        }
      }

      v6 = i;
      v21 = [v2 i[307]];
      v22 = [v21 key];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v23 == v10 && v11 == v25)
      {
        goto LABEL_25;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
LABEL_26:

        goto LABEL_27;
      }

      ++v14;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (one-time initialization token for voiceCommandConfirmationNode != -1)
  {
LABEL_47:
    swift_once();
  }

  lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(&lazy protocol witness table cache variable for type VoiceCommandsNLIntent and conformance VoiceCommandsNLIntent, type metadata accessor for VoiceCommandsNLIntent, &protocol conformance descriptor for VoiceCommandsNLIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  switch(v39)
  {
    case 2:

      goto LABEL_30;
    case 3:
      goto LABEL_24;
    default:
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
LABEL_24:
        v29 = v6;
        goto LABEL_40;
      }

LABEL_30:
      v30 = v6;
      v2 = [v2[2] options];
      type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
      v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = specialized Array.count.getter(v31);
      v33 = 0;
      v6 = (v31 & 0xC000000000000001);
      break;
  }

  while (1)
  {
    if (v32 == v33)
    {

      v29 = v30;
      goto LABEL_40;
    }

    if (v6)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }

      v34 = *(v31 + 8 * v33 + 32);
    }

    v2 = v34;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_45;
    }

    if ([v34 style] == &dword_0 + 1)
    {
      break;
    }

    ++v33;
  }

  outlined destroy of VoiceCommandsNLIntent(v30);

  return v2;
}

void *ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(directInvocation:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Parse.DirectInvocation.userData.getter();
  if (!v11)
  {
    v38 = 0u;
    v39 = 0u;
    goto LABEL_18;
  }

  specialized Dictionary.subscript.getter(v11, &v38, 0x65756C6176, 0xE500000000000000);

  if (!*(&v39 + 1))
  {
LABEL_18:
    outlined destroy of Siri_Nlu_External_UserDialogAct?(&v38, &_sypSgMd, &_sypSgMR);
    goto LABEL_19;
  }

  if (swift_dynamicCast())
  {
    v7 = v36;
    v4 = v37;
    a1 = [*(v2 + 16) options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = specialized Array.count.getter(v12);
    v14 = 0;
    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v34 = v12 & 0xC000000000000001;
    v15 = (v8 + 8);
    while (1)
    {
      if (v13 == v14)
      {

        return 0;
      }

      if (v34)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v33 + 16))
        {
          goto LABEL_32;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = [v16 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = UUID.uuidString.getter();
      a1 = v20;
      (*v15)(v10, v35);
      if (v19 == v7 && a1 == v4)
      {

LABEL_30:

        return v17;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5)
      {

        goto LABEL_30;
      }

      ++v14;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_19:
  if (one-time initialization token for voiceCommands != -1)
  {
LABEL_33:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.voiceCommands);
  (*(v5 + 16))(v7, a1, v4);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v38 = v26;
    *v25 = 136315138;
    if (!Parse.DirectInvocation.userData.getter())
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v27 = Dictionary.description.getter();
    v29 = v28;

    (*(v5 + 8))(v7, v4);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v38);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy could not get value from direct invocation. %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return 0;
}

void *ShortcutsLinkPromptForMultiChoiceFlowStrategy.getChoice(parse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v2);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v3);
  v5 = &v72 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UserParse();
  OUTLINED_FUNCTION_7_1();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  OUTLINED_FUNCTION_7_1();
  v78 = v16;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v20 = (v19 - v18);
  v76 = a1;
  USOParse.userParse.getter();
  v21 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v22 = *(v8 + 8);
  v22(v14, v6);
  specialized Collection.first.getter(v21, &type metadata accessor for Siri_Nlu_External_UserDialogAct, v5);

  v23 = &unk_2B7000;
  if (__swift_getEnumTagSinglePayload(v5, 1, v15) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v5, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for voiceCommands == -1)
    {
LABEL_3:
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.voiceCommands);
      v25 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      v26 = OUTLINED_FUNCTION_6_2();
      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_18_1();
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v25, v23, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy: missing UDA", v28, 2u);
        OUTLINED_FUNCTION_15_1();
      }

      return 0;
    }

LABEL_57:
    OUTLINED_FUNCTION_0_1();
    swift_once();
    goto LABEL_3;
  }

  v30 = *(v78 + 32);
  v74 = v20;
  v72 = v15;
  v30(v20, v5, v15);
  USOParse.userParse.getter();
  v31 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v22(v12, v6);
  v32 = *(v31 + 16);

  if (v32 >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.voiceCommands);
    v35 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v36 = OUTLINED_FUNCTION_6_2();
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_18_1();
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v35, v31, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy: more than one task found in UDA", v38, 2u);
      OUTLINED_FUNCTION_15_1();
    }
  }

  v29 = v74;
  v39 = v77;
  v40 = Siri_Nlu_External_UserDialogAct.stringValue.getter(v33);
  if (v39)
  {
    OUTLINED_FUNCTION_34_0();
    v42(v29, v72);
    return v29;
  }

  v44 = v41;
  if (v41)
  {
    v45 = v40;
    v77 = 0;
    v23 = [*(v75 + 16) options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = specialized Array.count.getter(v46);
    v48 = 0;
    v75 = v46 & 0xC000000000000001;
    v76 = v47;
    v73 = v46 & 0xFFFFFFFFFFFFFF8;
    for (i = &off_2B4000; ; i = v55)
    {
      if (v76 == v48)
      {

        v29 = 0;
        goto LABEL_50;
      }

      if (v75)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *(v73 + 16))
        {
          goto LABEL_54;
        }

        v50 = *(v46 + 8 * v48 + 32);
      }

      v29 = v50;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v51 = outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v50 i[307]]);
      if (v52)
      {
        if (v51 == v45 && v52 == v44)
        {
LABEL_45:

          goto LABEL_47;
        }

        v54 = OUTLINED_FUNCTION_39_0(v51);

        if (v54)
        {
          goto LABEL_46;
        }
      }

      v55 = i;
      v56 = [v29 i[307]];
      v57 = [v56 key];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v59;

      if (v58 == v45 && v44 == v23)
      {
        goto LABEL_45;
      }

      v61 = OUTLINED_FUNCTION_39_0(v58);

      if (v61)
      {
LABEL_46:

LABEL_47:

LABEL_50:
        OUTLINED_FUNCTION_34_0();
        v70(v74, v72);
        return v29;
      }

      ++v48;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
  {
    v62 = [*(v75 + 16) options];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
    v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = specialized Array.count.getter(v63);
    v65 = 0;
    v23 = (v63 & 0xC000000000000001);
    v66 = v72;
    while (1)
    {
      v67 = v78;
      if (v64 == v65)
      {

        (*(v67 + 8))(v74, v66);
        return 0;
      }

      if (v23)
      {
        v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v65 >= *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_56;
        }

        v68 = *(v63 + 8 * v65 + 32);
      }

      v29 = v68;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_55;
      }

      if ([v68 style] == &dword_0 + 1)
      {
        break;
      }

      ++v65;
    }

    OUTLINED_FUNCTION_34_0();
    v71(v74, v66);
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    v69(v29, v72);
    return 0;
  }

  return v29;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Collection.first.getter(a1, &type metadata accessor for Siri_Nlu_External_UserDialogAct, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for Location, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for ContactHandle, a2);
}

{
  v3 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA7ContactVGMd, &_s13SiriInference14RecommendationOyAA7ContactVGMR);
  if (v3)
  {
    OUTLINED_FUNCTION_21_2();
    v5 = OUTLINED_FUNCTION_25_1();
    v6(v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v4);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for Contact, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for TemplatingSection, a2);
}

{
  return specialized Collection.first.getter(a1, &type metadata accessor for UsoIdentifier, a2);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a2(0);
  if (v4)
  {
    OUTLINED_FUNCTION_21_2();
    v6 = OUTLINED_FUNCTION_25_1();
    v7(v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v5);
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of CustomIntentDisambiguationItem(a1 + 32, a2);
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of Any(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue()()
{
  OUTLINED_FUNCTION_8_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[9] = *v0;
  v3 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v3);
  v1[10] = OUTLINED_FUNCTION_28();
  v4 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v4);
}

{
  OUTLINED_FUNCTION_24_1();
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = [v2 options];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNChoiceOption, LNChoiceOption_ptr);
  v0[11] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  outlined init with copy of DeviceState(v1 + 40, (v0 + 2));
  v0[12] = [v2 dialog];
  v4 = [v2 viewSnippet];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewData];

    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  v0[13] = v7;
  v0[14] = v9;
  type metadata accessor for RunLinkActionCATsSimple(0);
  static CATOption.defaultMode.getter();
  v0[15] = CATWrapperSimple.__allocating_init(options:globals:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[16] = v10;
  *v10 = v11;
  v10[1] = ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue();
  OUTLINED_FUNCTION_27_0();

  return static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)();
}

{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  *(v3 + 136) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

  outlined consume of Data?(v7, v6);

  if (v0)
  {

    return _swift_task_switch(ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue());
  }

  else
  {

    v11 = *(v9 + 8);

    return v11();
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[38] = v20;
  v1[39] = v0;
  v1[36] = v2;
  v1[37] = v3;
  v1[34] = v4;
  v1[35] = v5;
  v1[32] = v6;
  v1[33] = v7;
  v1[30] = v8;
  v1[31] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_14(v10);
  v1[40] = OUTLINED_FUNCTION_28();
  v11 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_14(v11);
  v1[41] = OUTLINED_FUNCTION_28();
  v12 = type metadata accessor for OutputGenerationManifest();
  v1[42] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[43] = v13;
  v1[44] = OUTLINED_FUNCTION_28();
  v14 = type metadata accessor for SpeakableString();
  v1[45] = v14;
  OUTLINED_FUNCTION_5_0(v14);
  v1[46] = v15;
  v1[47] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14(v16);
  v1[48] = OUTLINED_FUNCTION_28();
  v17 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v17);
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 416) = v0;

  if (v0)
  {
    v9 = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);
  }

  else
  {

    *(v5 + 424) = v3;
    v9 = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);
  }

  return _swift_task_switch(v9);
}

{
  v1 = v0[53];
  v2 = v0[40];
  v3 = v0[31];
  type metadata accessor for ShortcutsLinkNLContextProvider();
  v0[54] = swift_initStackObject();
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  ShortcutsLinkNLContextProvider.makeContextForMakeChoice(options:)(v3);
  v4 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  OutputGenerationManifest.nlContextUpdate.setter();
  v5 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  v0[55] = v6;
  *(v6 + 16) = xmmword_216010;
  *(v6 + 32) = v1;
  v7 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v8 = v1;
  v9 = ResponseFactory.init()();
  v0[26] = v7;
  v0[27] = &protocol witness table for ResponseFactory;
  v0[23] = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[56] = v10;
  *v10 = v11;
  v10[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);
  v12 = v0[44];
  v13 = v0[36];
  v14 = v0[33];
  v15 = v0[34];
  v17 = v0[31];
  v16 = v0[32];
  v18 = v0[30];

  return static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)(v18, v6, v16, v12, v14, v15, v17, v13);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 184));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{

  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

void static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = OUTLINED_FUNCTION_6_2();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_18_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_26(&dword_0, v5, v6, "#ShortcutsLinkPromptForMultiChoiceFlowStrategy make prompt for multi choice item");
    OUTLINED_FUNCTION_15_1();
  }

  v7 = *(v0 + 304);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);

  outlined init with copy of DeviceState(v9, v0 + 144);
  v10 = type metadata accessor for RunLinkActionCATs(0);
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_10();
  v11 = CATWrapper.__allocating_init(options:globals:)();
  v12 = type metadata accessor for RunVoiceCommandCATs(0);
  OUTLINED_FUNCTION_15(v12);
  OUTLINED_FUNCTION_10();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  v14 = type metadata accessor for RunVoiceCommandCATsSimple(0);
  OUTLINED_FUNCTION_15(v14);
  OUTLINED_FUNCTION_10();
  v15 = CATWrapperSimple.__allocating_init(options:globals:)();
  v16 = type metadata accessor for RunLinkActionCATPatternsExecutor(0);
  OUTLINED_FUNCTION_15(v16);
  OUTLINED_FUNCTION_10();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for LinkActionDialogTemplating();
  inited = swift_initStackObject();
  *(v0 + 392) = inited;
  inited[14] = v2;
  inited[15] = &protocol witness table for RunLinkActionCATPatternsExecutor;
  inited[11] = v17;
  outlined init with take of AceServiceInvokerAsync((v0 + 144), (inited + 2));
  inited[7] = v11;
  inited[8] = v7;
  inited[9] = v13;
  inited[10] = v15;
  v19 = specialized Array.count.getter(v8);
  if (v19)
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return;
    }

    v40 = v0;
    v20 = 0;
    v21 = *(v0 + 368);
    v22 = *(v0 + 248);
    v23 = v22 & 0xC000000000000001;
    v41 = v22 + 32;
    v24 = v21 + 32;
    v25 = &off_2B4000;
    do
    {
      if (v23)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v41 + 8 * v20);
      }

      v27 = v26;
      outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter([v26 v25[307]]);
      if (!v28)
      {
        v29 = [v27 v25[307]];
        v30 = v21;
        v31 = v24;
        v32 = v23;
        v33 = v19;
        v34 = [v29 key];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v33;
        v23 = v32;
        v24 = v31;
        v21 = v30;
        v0 = v40;
      }

      SpeakableString.init(print:speak:)();

      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 > 1, v36 + 1, 1);
      }

      v37 = *(v0 + 376);
      v38 = *(v0 + 360);
      ++v20;
      _swiftEmptyArrayStorage[2] = v36 + 1;
      (*(v21 + 32))(_swiftEmptyArrayStorage + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v36, v37, v38);
      v25 = &off_2B4000;
    }

    while (v19 != v20);
  }

  else
  {
  }

  *(v0 + 400) = _swiftEmptyArrayStorage;
  v39 = swift_task_alloc();
  *(v0 + 408) = v39;
  *v39 = v0;
  v39[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:);

  LinkActionDialogTemplating.makeNeedsDisambiguationTitle(customPrompt:items:)();
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(options:deviceState:appBundleId:dialog:viewData:catsProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  v13 = v12[53];
  v15 = v12[43];
  v14 = v12[44];
  v16 = v12[42];
  swift_setDeallocating();
  LinkActionDialogTemplating.deinit();
  swift_deallocClassInstance();

  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = v10;
  v8[58] = v11;
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[51] = a3;
  v8[52] = a4;
  v8[49] = a1;
  v8[50] = a2;
  return _swift_task_switch(static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:));
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_47(*(v12 + 408));
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    OUTLINED_FUNCTION_47(*(v12 + 464));
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 480) = v13;
    *v13 = v14;
    v13[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:);
    OUTLINED_FUNCTION_27_0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = *(v12 + 400);
    v23 = *(v12 + 408);
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v25 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(v23, 2);
    v27 = v26;

    if (specialized Array.count.getter(v24))
    {
      v28 = *(v12 + 400) & 0xC000000000000001;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (v28)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(*(v12 + 400) + 32);
      }

      v30 = v29;
      v31 = DialogExecutionResult.firstDialogFullPrint()();
      countAndFlagsBits = v31.value._countAndFlagsBits;
      object = v31.value._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v34 = 0xE000000000000000;
    if (v27)
    {
      v34 = v27;
      v35 = v25;
    }

    else
    {
      v35 = 0;
    }

    v37 = *(v12 + 456);
    v36 = *(v12 + 464);
    v38 = *(v12 + 440);
    v39 = *(v12 + 448);
    v40 = *(v12 + 432);
    *(v12 + 192) = *(v12 + 424);
    *(v12 + 200) = v40;
    *(v12 + 208) = v35;
    *(v12 + 216) = v34;
    *(v12 + 224) = countAndFlagsBits;
    *(v12 + 232) = object;
    *(v12 + 240) = v39;
    *(v12 + 256) = 0;
    *(v12 + 264) = 0;
    *(v12 + 248) = v37;
    memcpy((v12 + 16), (v12 + 192), 0x50uLL);
    *(v12 + 96) = v38;
    v53 = v36[4];
    OUTLINED_FUNCTION_47(v36);
    *(v12 + 376) = type metadata accessor for WorkflowDataModels(0);
    *(v12 + 384) = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(&lazy protocol witness table cache variable for type WorkflowDataModels and conformance WorkflowDataModels, type metadata accessor for WorkflowDataModels, &protocol conformance descriptor for WorkflowDataModels);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 352));
    memcpy(boxed_opaque_existential_1, (v12 + 16), 0x58uLL);
    swift_storeEnumTagMultiPayload();

    outlined copy of Data?(v39, v37);
    outlined init with copy of WorkflowDataModels.LinkActionModel(v12 + 192, v12 + 272);

    outlined init with copy of WorkflowDataModels.LinkMultiChoiceModel(v12 + 16, v12 + 104);
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 472) = v42;
    *v42 = v43;
    v42[1] = static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:);
    OUTLINED_FUNCTION_27_0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v44, v45, v46, v47, v48, v49, v50, v51, v53, a10, a11, a12);
  }
}

uint64_t static ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForMultiChoiceValue(dialogResult:deviceState:manifest:appBundleId:options:viewData:responseFactory:)()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 352));
  v6 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v6);
}

{
  OUTLINED_FUNCTION_8_0();
  outlined destroy of WorkflowDataModels.LinkMultiChoiceModel(v0 + 16);
  outlined destroy of WorkflowDataModels.LinkActionModel(v0 + 192);
  OUTLINED_FUNCTION_6_0();

  return v1();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  return v0;
}

uint64_t ShortcutsLinkPromptForMultiChoiceFlowStrategy.__deallocating_deinit()
{
  ShortcutsLinkPromptForMultiChoiceFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy;

  return ShortcutsLinkPromptForMultiChoiceFlowStrategy.parseValueResponse(input:)();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return ShortcutsLinkPromptForMultiChoiceFlowStrategy.makePromptForValue()();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence()(a1, v7, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return PromptForValueFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance ShortcutsLinkPromptForMultiChoiceFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return PromptForValueFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = v4;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, a4 + 32, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Sd5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_Sd5valuetGMR);
      v12 = OUTLINED_FUNCTION_43_0(v11);
      v13 = _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_35_0(v13);
      if (a1)
      {
LABEL_12:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v12 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Sd5valuetMd, &_sSS3key_Sd5valuetMR);
    OUTLINED_FUNCTION_38_0(v14);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin26DisambiguationItemProtocol_pGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin26DisambiguationItemProtocol_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin26DisambiguationItemProtocol_pMd, &_s18SiriLinkFlowPlugin26DisambiguationItemProtocol_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMd, &_ss23_ContiguousArrayStorageCySDys11AnyHashableVypGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVGGMd, &_ss23_ContiguousArrayStorageCySay11SiriKitFlow11DisplayHintVGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow11DisplayHintVGMd, &_sSay11SiriKitFlow11DisplayHintVGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_33_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 16);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_41_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_33_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 56);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_41_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v13)
  {
    OUTLINED_FUNCTION_11_2();
    if (v15 != v16)
    {
      OUTLINED_FUNCTION_27_1();
      if (v15)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_2();
    }
  }

  else
  {
    v14 = v2;
  }

  v17 = *(v10 + 16);
  if (v14 <= v17)
  {
    v18 = *(v10 + 16);
  }

  else
  {
    v18 = v14;
  }

  if (!v18)
  {
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v19 = v8(0);
  OUTLINED_FUNCTION_5_0(v19);
  v21 = *(v20 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v25 = _swift_stdlib_malloc_size(v24);
  if (!v21)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v25 - v23 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_23;
  }

  v24[2] = v17;
  v24[3] = 2 * ((v25 - v23) / v21);
LABEL_18:
  v27 = *(v8(0) - 8);
  if (v12)
  {
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v6(v10 + v28, v17, v24 + v28);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_42();
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVGMd, &_ss23_ContiguousArrayStorageCy18SiriLinkFlowPlugin30CustomIntentDisambiguationItemVGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 88);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_SS5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_SS5valuetGMR);
      v12 = OUTLINED_FUNCTION_43_0(v11);
      v13 = _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_35_0(v13);
      if (v5)
      {
LABEL_12:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v9, v12 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_SS5valuetMd, &_sSi3key_SS5valuetMR);
    OUTLINED_FUNCTION_38_0(v14);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_10_2();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t outlined bridged method (ob) of @objc LNStaticDeferredLocalizedString.defaultValue.getter(void *a1)
{
  v2 = [a1 defaultValue];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_6_0();

  return v8();
}

uint64_t sub_1A2FC()
{

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v0);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_17()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of VoiceCommandsNLIntent(uint64_t a1)
{
  v2 = type metadata accessor for VoiceCommandsNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Siri_Nlu_External_UserDialogAct?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_36_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_1(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_28_0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return outlined init with copy of TaskPriority?(v2, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t AppInfoResolver.getLocalizedAppDisplayName(from:deviceState:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppInformationResolver();
  swift_allocObject();

  AppInformationResolver.init(app:)();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v7 = dispatch thunk of AppInformationResolver.getLocalizedAppDisplayName(inLocale:)();

  (*(v4 + 8))(v6, v3);
  return v7;
}

void *CustomIntentTCCFlowStrategy.__allocating_init(deviceState:labelsProvider:responseFactory:)(__int128 *a1, void *a2, void *a3)
{
  v8 = swift_allocObject();
  v10 = a2[3];
  v9 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v10);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_17_0(v12);
  v14(v13);
  v15 = a3[3];
  v16 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_3();
  v19 = OUTLINED_FUNCTION_12_1(v18);
  v20(v19);
  v21 = specialized CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(a1, v3, v4, v8, v10, v15, v9, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v21;
}

void *CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(__int128 *a1, void *a2, void *a3)
{
  v6 = v3;
  v11 = a2[3];
  v10 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_3();
  v14 = OUTLINED_FUNCTION_17_0(v13);
  v15(v14);
  v16 = a3[3];
  v17 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  OUTLINED_FUNCTION_13_1();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_12_1(v19);
  v21(v20);
  v22 = specialized CustomIntentTCCFlowStrategy.init(deviceState:labelsProvider:responseFactory:)(a1, v4, v5, v6, v11, v16, v10, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v22;
}

uint64_t CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v1[15] = *v0;
  v4 = type metadata accessor for DialogPhase();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  OUTLINED_FUNCTION_14(v6);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_14(v7);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v8);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[14];
  v5 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  v0[5] = &type metadata for AppInfoResolver;
  v0[6] = &protocol witness table for AppInfoResolver;
  App.toAppDisplayInfo(_:appInfoResolving:isFirstParty:)(v4 + 16, v0 + 2, 2, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined init with copy of AppDisplayInfo?(v2, v3, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  v6 = type metadata accessor for AppDisplayInfo();
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[23], &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  }

  else
  {
    v8 = v0[25];
    v7 = v0[26];
    v9 = v0[23];
    AppDisplayInfo.displayName.getter();
    OUTLINED_FUNCTION_21_2();
    (*(v10 + 8))(v9, v6);
    SpeakableString.init(print:speak:)();
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v7, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v5);
    outlined init with take of SpeakableString?(v8, v7);
  }

  v11 = v0[14];
  type metadata accessor for EnableTCCCATWrapperSimple(0);
  outlined init with copy of DeviceState(v4 + 16, (v0 + 7));
  v0[27] = EnableTCCCATWrapperSimple.__allocating_init(deviceState:)((v0 + 7));
  v12 = *(v11 + 40);
  v13 = *(v11 + 48);
  __swift_project_boxed_opaque_existential_1((v4 + 16), v12);
  v0[28] = DeviceState.asSiriKitDeviceState()(v12, v13);
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:);
  OUTLINED_FUNCTION_25_2();

  return EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:)(v15, v16);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v5 + 240) = v4;
  *(v5 + 248) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6);
}

{
  v1 = v0[30];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[14];
  static DialogPhase.confirmation.getter();
  v7 = [v1 catId];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 16))(v3, v2, v4);
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  v8 = OUTLINED_FUNCTION_9_3();
  v9(v8);
  OUTLINED_FUNCTION_47((v6 + 16));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    v10 = swift_task_alloc();
    v0[32] = v10;
    *v10 = v0;
    v10[1] = CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:);
    OUTLINED_FUNCTION_27_0();

    return EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:)(v11);
  }

  else
  {
    OutputGenerationManifest.listenAfterSpeaking.setter();
    v0[35] = DialogExecutionResult.firstDialogFullPrint()().value._object;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    v0[36] = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_4_2(v14);
    OUTLINED_FUNCTION_27_0();

    return static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  *(v5 + 264) = v0;

  if (!v0)
  {
    *(v5 + 272) = v3;
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9);
}

{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[34];
  v2 = DialogExecutionResult.firstDialogFullPrint()();

  v3 = v0[14];
  v0[35] = v2.value._object;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[36] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(v6, v3 + 16, v7, v8, v3 + 96, v3 + 56, v2.value._countAndFlagsBits, v2.value._object);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *(v4 + 296) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v5);
}

void CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  (*(v5 + 8))(v3, v4);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v2, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_27_0();

  __asm { BRAA            X1, X16 }
}

uint64_t CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_8_2();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v11, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_22_2();

  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_8_2();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v11 + 8, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_22_2();

  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_8_2();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v11 + 8, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(v10, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_2();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t EnableTCCCATWrapperSimple.__allocating_init(deviceState:)(uint64_t a1)
{
  swift_allocObject();
  outlined init with copy of AppDisplayInfo?(a1, v4, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  v2 = SiriKitFlowCATWrapperSimple.init(deviceState:)(v4);
  outlined destroy of Siri_Nlu_External_UserDialogAct?(a1, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  return v2;
}

uint64_t static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  OUTLINED_FUNCTION_11_1();
  return _swift_task_switch(v9);
}

uint64_t static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_47(*(v12 + 64));
  OUTLINED_FUNCTION_9_3();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v13 = *(v12 + 88);
    v14 = *(v12 + 72);
    v15 = v13[3];
    v16 = v13[4];
    OUTLINED_FUNCTION_47(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v12 + 176) = v17;
    *(v17 + 16) = xmmword_216010;
    *(v17 + 32) = v14;
    v18 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_20_0();
    *(v12 + 184) = v22;
    *v22 = v23;
    v22[1] = static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:);
    v24 = *(v12 + 80);
    v25 = *(v12 + 56);

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v25, v17, v24, v15, v16, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    v26 = *(v12 + 96);
    v27 = v26[4];
    OUTLINED_FUNCTION_47(v26);
    v31 = (*(v27 + 8) + **(v27 + 8));
    v28 = swift_task_alloc();
    *(v12 + 120) = v28;
    *v28 = v12;
    v28[1] = static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:);
    v29 = OUTLINED_FUNCTION_9_3();

    return v31(v29);
  }
}

uint64_t static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:)()
{
  OUTLINED_FUNCTION_14_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  OUTLINED_FUNCTION_4_1();
  *v12 = v11;
  v13 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v14 = v13;

  if (v0)
  {
    v15 = *(v13 + 8);

    return v15();
  }

  else
  {
    v11[16] = v3;
    v11[17] = v5;
    v11[18] = v7;
    v11[19] = v9;
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v17);
  }
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[9];
  v9 = v7[3];
  v18 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  v0[5] = type metadata accessor for WorkflowDataModels(0);
  v0[6] = lazy protocol witness table accessor for type WorkflowDataModels and conformance WorkflowDataModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  *boxed_opaque_existential_1 = v1;
  boxed_opaque_existential_1[1] = v2;
  boxed_opaque_existential_1[2] = v4;
  boxed_opaque_existential_1[3] = v3;
  boxed_opaque_existential_1[4] = v5;
  boxed_opaque_existential_1[5] = v6;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v0[20] = v11;
  *(v11 + 16) = xmmword_216010;
  *(v11 + 32) = v8;

  v12 = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_20_0();
  v0[21] = v13;
  *v13 = v14;
  v13[1] = static CustomIntentTCCFlowStrategy.makePromptForTCCAcceptance(deviceState:dialogExeResult:manifest:responseFactory:labelsProvider:displayPrompt:);
  v15 = v0[10];
  v16 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v16, v0 + 2, v11, v15, v9, v18);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  OUTLINED_FUNCTION_6_0();

  return v6();
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_6_0();

  return v3();
}

void *CustomIntentTCCFlowStrategy.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  return v0;
}

uint64_t CustomIntentTCCFlowStrategy.__deallocating_deinit()
{
  CustomIntentTCCFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForTCCAcceptance(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(**v3 + 112) + **(**v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance CustomIntentRCHFlowStrategy;

  return v10(a1, a2, a3);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t protocol witness for RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:) in conformance CustomIntentTCCFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CustomIntentTCCFlowStrategy();
  *v10 = v5;
  v10[1] = CustomIntentRCHFlowStrategy.makeErrorResponse(error:app:intent:);

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t SiriKitFlowCATWrapperSimple.init(deviceState:)(uint64_t a1)
{
  v2 = type metadata accessor for CATOption();
  v3 = OUTLINED_FUNCTION_14(v2);
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = OUTLINED_FUNCTION_14(v4);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for URL();
  OUTLINED_FUNCTION_13_1();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v17 = AFSystemRootDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:)();
  outlined init with copy of AppDisplayInfo?(a1, &v22, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  if (v23)
  {
    outlined init with take of Output(&v22, v24);
    type metadata accessor for CATGlobals();
    outlined init with copy of DeviceState(v24, &v22);
    CATGlobals.__allocating_init(device:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(&v22, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  }

  (*(v10 + 16))(v7, v14, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  static CATOption.defaultMode.getter();
  v18 = CATWrapperSimple.init(templateDir:options:globals:)();
  outlined destroy of Siri_Nlu_External_UserDialogAct?(a1, &_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  v19 = *(v10 + 8);
  v19(v14, v8);
  v19(v16, v8);
  return v18;
}

uint64_t ContinueInAppCATWrapperSimple.__deallocating_deinit()
{
  CATWrapperSimple.deinit();

  return swift_deallocClassInstance();
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v3[5] = swift_task_alloc();

  return _swift_task_switch(EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:));
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:)()
{
  OUTLINED_FUNCTION_15_2();
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[6] = v3;
  *(v3 + 16) = xmmword_216840;
  *(v3 + 32) = 0x656369766564;
  *(v3 + 40) = 0xE600000000000000;
  v4 = 0;
  if (v2)
  {
    v4 = type metadata accessor for SirikitDeviceState();
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v5 = v1[5];
  v6 = v1[3];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x656D614E707061;
  *(v3 + 88) = 0xE700000000000000;
  outlined init with copy of AppDisplayInfo?(v6, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = type metadata accessor for SpeakableString();
  v8 = OUTLINED_FUNCTION_24_2(v7);
  v9 = v1[5];
  if (v8 == 1)
  {

    outlined destroy of Siri_Nlu_External_UserDialogAct?(v9, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v0;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_21_2();
    (*(v10 + 32))();
  }

  v14 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = swift_task_alloc();
  v1[7] = v11;
  *v11 = v1;
  v11[1] = EnableTCCCATWrapperSimple.promptToEnableApp(device:appName:);
  v12 = OUTLINED_FUNCTION_19_1();

  return v14(v12);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:));
}

uint64_t EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:)()
{
  OUTLINED_FUNCTION_15_2();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_216850;
  *(v2 + 32) = 0x656D614E707061;
  *(v2 + 40) = 0xE700000000000000;
  v3 = OUTLINED_FUNCTION_9_3();
  outlined init with copy of AppDisplayInfo?(v3, v4, v5, v6);
  v7 = type metadata accessor for SpeakableString();
  if (OUTLINED_FUNCTION_24_2(v7) == 1)
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(v0[4], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 48));
    OUTLINED_FUNCTION_21_2();
    (*(v8 + 32))();
  }

  v12 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = EnableTCCCATWrapperSimple.promptToEnableAppSnippetTitle(appName:);
  v10 = OUTLINED_FUNCTION_19_1();

  return v12(v10);
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_18_2();

    return v9(v8);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}

uint64_t EnableTCCLabelsProvider.getYesNoLabels()()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = EnableTCCLabelsProvider.getYesNoLabels();

  return static LabelTemplates.yes()();
}

{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_4_1();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v8 = v7;
  v3[7] = v9;

  if (v0)
  {
    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v3[8] = v12;
    *v12 = v7;
    v12[1] = EnableTCCLabelsProvider.getYesNoLabels();

    return static LabelTemplates.no()();
  }
}

{
  OUTLINED_FUNCTION_15_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v10 = v9;
  v7[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11_1();

    return _swift_task_switch(v11);
  }

  else
  {
    v12 = v7[3];
    v13 = *(v9 + 8);
    v14 = v7[7];

    return v13(v12, v14, v5, v3);
  }
}

{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_6_0();

  return v0();
}
void capability_response(void *a1)
{
  v2 = capability_array(a1);
  [objc_msgSend(a1 "response")];
}

void id_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([a1 match:"(")]
  {
    while (([a1 match:"]") & 1) == 0)
    {
      v2 = [a1 copyNilOrString];
      [a1 parseSpace];
      v3 = [a1 copyNilOrString];
      [a1 parseSpace];
      if (v2 && v3)
      {
        [v4 mf_addObject:v3 forKey:v2];
      }
    }
  }

  else if (([a1 match:"NIL"] & 1) == 0)
  {
    [a1 emitWarning:@"Expected list or NIL"];
  }

  [objc_msgSend(a1 "response")];
}

void flags_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = flags_array(a1);
  [objc_msgSend(a1 "response")];
  [objc_msgSend(a1 "response")];
}

void status_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = mailbox(a1);
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v3 = [a1 copyArray];
  if (!v3)
  {
    v6 = [a1 end] - 1;
    do
    {
      v7 = v6;
      if (v6 <= [a1 start])
      {
        break;
      }

      v6 = (v7 - 1);
    }

    while (*v7 != 41);
      ;
    }

    if (i <= [a1 start] || (objc_msgSend(a1, "setStart:", i), (v3 = objc_msgSend(a1, "copyArray")) == 0))
    {
      theDict = 0;
      goto LABEL_34;
    }
  }

  v4 = v3;
  v5 = [v3 count];
  if (v5 <= 1)
  {
    theDict = [MEMORY[0x1E695DF20] dictionary];
    goto LABEL_33;
  }

  v9 = v5;
  v18 = v2;
  theDict = CFDictionaryCreateMutable(0, v5 >> 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (j = 1; j < v9; j += 2)
  {
    v11 = [v4 objectAtIndex:{j - 1, v18}];
    v12 = [v4 objectAtIndex:j];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_29;
    }

    v13 = 0;
    do
    {
      v14 = status_response_KnownStatusCodes[v13];
      v15 = *v14;
      if (*v14 && [(__CFString *)v11 caseInsensitiveCompare:*v14])
      {
        v15 = 0;
      }

      if (v13 > 4)
      {
        break;
      }

      ++v13;
    }

    while (!v15);
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v16 = theDict;
      v17 = v15;
    }

    else
    {
LABEL_29:
      v16 = theDict;
      v17 = v11;
    }

    CFDictionarySetValue(v16, v17, v12);
  }

  v2 = v18;
LABEL_33:

LABEL_34:
  [objc_msgSend(a1 "response")];
}

void search_response(void *a1)
{
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  [objc_msgSend(a1 "response")];
  if ([a1 parseSpace])
  {
    do
    {
      v2 = [a1 copyNumber];
      if (!v2)
      {
        break;
      }

      v3 = v2;
      CFArrayAppendValue(theArray, v2);
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  [objc_msgSend(a1 "response")];
}

void list_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = flags_array(a1);
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v3 = [a1 copyNilOrString];
  if (![v3 length])
  {

    v3 = 0;
  }

  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v11 = mailbox(a1);
  if (v2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(__CFArray *)v2 count];
    if (v5)
    {
      v6 = 0;
      do
      {
        while (1)
        {
          v7 = [(__CFArray *)v2 objectAtIndex:--v5];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

LABEL_18:
          if (!v5)
          {
            goto LABEL_21;
          }
        }

        v8 = 0;
        while ([(__CFString *)*(&IMAPMailboxAttributeEntries + v8) compare:v7 options:1])
        {
          v9 = v8 > 0x5F;
          v8 += 16;
          if (v9)
          {
            [v4 insertObject:v7 atIndex:0];
            goto LABEL_18;
          }
        }

        v6 |= *(&IMAPMailboxAttributeEntries + v8 + 8);
      }

      while (v5);
LABEL_21:
      v5 = v6;
    }

    v10 = v4;
  }

  else
  {
    v10 = 0;
    v5 = 0;
  }

  [objc_msgSend(a1 "response")];
}

void fetch_response(void *a1)
{
  v65 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  if (([a1 match:"(") & 1] == 0)
  {
    [a1 emitError:@"Invalid FETCH response"];
  }

  v2 = [a1 start];
  if (v2 < [a1 end])
  {
    v4 = 0;
    v59 = v63;
    v5 = 1;
    v6 = ")";
    v7 = 0x1E695D000uLL;
    *&v3 = 138412290;
    v58 = v3;
    while (1)
    {
      if ([a1 match:{v6, v58, v59}])
      {
        goto LABEL_156;
      }

      if (v4)
      {
        if (([a1 parseSpace] & 1) == 0 && v5)
        {
          [a1 emitWarning:@"Expected space"];
          goto LABEL_156;
        }
      }

      else
      {
        v4 = objc_alloc_init(*(v7 + 3952));
      }

      v8 = memchr([a1 start], 32, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
      if (!v8)
      {
LABEL_154:
        v57 = @"Couldn't parse FETCH: no space character in input";
        goto LABEL_155;
      }

      v9 = v8;
      if ([a1 match:"BODYSTRUCTURE" upToSpecial:v8] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "BODY", v9))
      {
        break;
      }

      if ([a1 match:"ENVELOPE" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
        goto LABEL_17;
      }

      if ([a1 match:"UID" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 8;
        goto LABEL_17;
      }

      if ([a1 match:"X-GM-MSGID" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 9;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.SIZE" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 3;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 7;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.HEADER" upToSpecial:v9] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "HEADER", v9))
      {
        v10 = 0;
        v11 = 0;
        v12 = 4;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.TEXT" upToSpecial:v9] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "TEXT", v9))
      {
        v10 = 0;
        v11 = 0;
        v12 = 5;
        goto LABEL_17;
      }

      if ([a1 match:"FLAGS" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 10;
        goto LABEL_17;
      }

      if ([a1 match:"MODSEQ" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 11;
        goto LABEL_17;
      }

      if ([a1 match:"INTERNALDATE" upToSpecial:v9])
      {
        v10 = 0;
        v11 = 0;
        v12 = 2;
        goto LABEL_17;
      }

      if ([a1 match:"BODY["])
      {
        v49 = [a1 start];
        if ([a1 match:"HEADER."])
        {
          [a1 setStart:v9 + 1];
          v50 = [a1 copyArray];
          if (v50)
          {
          }

          else
          {
            [a1 emitWarning:@"Unable to parse header keys array"];
          }

          v54 = memchr([a1 start], 32, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
          if (!v54)
          {
            goto LABEL_154;
          }

          v9 = v54;
LABEL_145:
          v11 = 0;
          v12 = 4;
        }

        else
        {
          if ([a1 match:"HEADER" upToSpecial:v9])
          {
            goto LABEL_145;
          }

          v52 = memchr([a1 start], 93, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
          if (!v52)
          {
            v57 = @"Couldn't parse FETCH: no square brace character in input";
            goto LABEL_155;
          }

          v53 = v52;
          v11 = [a1 copyStringFrom:v49 to:v52 withCaseOption:1];
          [a1 setStart:v53 + 1];
          v12 = 7;
        }

        if ([a1 match:"<"])
        {
          *buf = 0xAAAAAAAAAAAAAAAALL;
          if ([a1 getNumber:buf])
          {
            v10 = *buf;
            v55 = [a1 match:">"];
            v56 = @"Expected >";
            if (v55)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v10 = 0;
            v56 = @"Expected number";
          }

          [a1 emitWarning:v56];
        }

        else
        {
          v10 = 0;
        }

LABEL_17:
        [a1 isValid];
        goto LABEL_18;
      }

      v51 = [a1 match:"X-APPLE-REMOTE-LINKS" upToSpecial:v9];
      if (v51)
      {
        v12 = 12;
      }

      else
      {
        v12 = 0;
      }

      v11 = 0;
      v10 = 0;
      if ([a1 isValid] && !v51)
      {
        v57 = @"Unrecognized FETCH key";
LABEL_155:
        [a1 emitError:v57];
        goto LABEL_156;
      }

LABEL_18:
      [a1 setStart:v9];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      [a1 logReadChars];
      v13 = [[MFIMAPFetchResult alloc] initWithType:v12];
      v5 = 1;
      if (v12 > 6)
      {
        if (v12 > 9)
        {
          if (v12 == 10)
          {
            if ([a1 match:{"(") && (objc_msgSend(a1, "match:", v6) & 1) == 0}]
            {
              v60 = v4;
              v61 = 0;
              v23 = 0;
              v29 = 1;
              do
              {
                if ((v29 & 1) == 0)
                {
                  while (1)
                  {
                    v30 = [a1 start];
                    if (v30 >= [a1 end] || (objc_msgSend(a1, "parseSpace") & 1) != 0 || objc_msgSend(a1, "lookAhead") == 41)
                    {
                      break;
                    }

                    [a1 increment];
                  }

                  if ([a1 match:v6])
                  {
                    break;
                  }
                }

                if ([a1 lookAhead] == 92)
                {
                  v31 = [a1 start] + 1;
                  if (v31 < [a1 end] && *(objc_msgSend(a1, "start") + 1) == 42)
                  {
                    v32 = ([a1 start] + 2);
                  }

                  else
                  {
                    v35 = [a1 start] + 1;
                    do
                    {
                      v32 = v35;
                      if (v35 >= [a1 end])
                      {
                        break;
                      }

                      ++v35;
                    }

                    while (mf_isIMAPAtom(*v32));
                  }

                  if (&v32[-[a1 start]] < 2)
                  {
                    break;
                  }

                  v33 = v6;
                  v36 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{v32, 0}];
                  [a1 setStart:v32];
                }

                else
                {
                  v33 = v6;
                  if ([a1 lookAhead] == 34)
                  {
                    v34 = [a1 copyQuotedString];
                  }

                  else
                  {
                    v34 = [a1 copyAtom];
                  }

                  v36 = v34;
                }

                if (!v36)
                {
                  v6 = v33;
                  v4 = v60;
                  break;
                }

                v37 = v23;
                v38 = v7;
                v39 = [v36 dataUsingEncoding:1 allowLossyConversion:1];
                v40 = [v39 bytes];
                v41 = [v39 length];
                v42 = &IMAPMessageFlagsTable;
                v43 = 15;
                do
                {
                  v44 = *v42;
                  v42 += 3;
                  v45 = strncasecmp(v40, v44, v41);
                  if (v45)
                  {
                    v46 = v43 == 0;
                  }

                  else
                  {
                    v46 = 1;
                  }

                  --v43;
                }

                while (!v46);
                if (v45)
                {
                  v7 = v38;
                  v23 = v37;
                  if (!v37)
                  {
                    v23 = objc_alloc_init(*(v7 + 3952));
                  }

                  [v23 addObject:v36];
                  v6 = v33;
                }

                else
                {
                  v61 |= *(v42 - 2);
                  v6 = v33;
                  v7 = v38;
                  v23 = v37;
                }

                v4 = v60;

                v47 = [a1 match:v6];
                v29 = 0;
              }

              while (!v47);
            }

            else
            {
              v23 = 0;
              v61 = 0;
            }

            [(MFIMAPFetchResult *)v13 setMessageFlags:v61];
            [(MFIMAPFetchResult *)v13 setCustomFlagsArray:v23];

            goto LABEL_112;
          }

          if (v12 == 11)
          {
            if (![a1 match:"(")]
            {
              goto LABEL_112;
            }

            v26 = [a1 copyNumber];
            -[MFIMAPFetchResult setModSequenceNumber:](v13, "setModSequenceNumber:", [v26 unsignedLongLongValue]);

            if ([a1 match:v6])
            {
              goto LABEL_112;
            }

            v27 = a1;
            v28 = @"Expected a right paren";
          }

          else
          {
            v17 = [a1 copyArray];
            if (v17 || ([a1 match:"NIL"] & 1) != 0)
            {
              v62[0] = MEMORY[0x1E69E9820];
              v62[1] = 3221225472;
              v63[0] = __fetch_response_block_invoke;
              v63[1] = &unk_1E7AA5CE0;
              v63[2] = a1;
              v18 = [v17 ef_compactMap:v62];

              [(MFIMAPFetchResult *)v13 setAppleRemoteLinks:v18];
              goto LABEL_112;
            }

            v27 = a1;
            v28 = @"Couldn't parse FETCH: X-APPLE-REMOTE-LINKS has invalid format";
          }

          [v27 emitError:v28];
          goto LABEL_112;
        }

        if (v12 != 7)
        {
          v14 = [a1 copyNumber];
          if (v12 == 8)
          {
            -[MFIMAPFetchResult setUid:](v13, "setUid:", [v14 unsignedIntValue]);
          }

          else
          {
            -[MFIMAPFetchResult setUniqueRemoteId:](v13, "setUniqueRemoteId:", [v14 unsignedLongLongValue]);
          }

          goto LABEL_61;
        }

        v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
        [v19 appendString:@"BODY.PEEK["];
        if (v11)
        {
          [v19 appendString:v11];
        }

        [v19 appendString:@"]"];
        v20 = body_data(a1, v11);
        if (v11)
        {
          [(MFIMAPFetchResult *)v13 setSection:v11];
        }

        if (v10)
        {
          [(MFIMAPFetchResult *)v13 setStartOffset:v10];
        }

LABEL_65:
        if (v20)
        {
          [(MFIMAPFetchResult *)v13 setFetchData:v20];
        }

        goto LABEL_112;
      }

      if (v12 > 3)
      {
        if (v12 == 4)
        {
          v21 = a1;
          v22 = @"HEADER";
        }

        else
        {
          if (v12 != 5)
          {
            v15 = [a1 copyArrayAllowingNulls:1];
            if (v15)
            {
              TypeID = CFArrayGetTypeID();
              if (TypeID != CFGetTypeID(v15))
              {

                v15 = 0;
              }
            }

            v5 = v15 != 0;
            [(MFIMAPFetchResult *)v13 setBodyStructure:v15];

            goto LABEL_113;
          }

          v21 = a1;
          v22 = @"TEXT";
        }

        v20 = body_data(v21, v22);
        if (v10)
        {
          [(MFIMAPFetchResult *)v13 setStartOffset:v10];
        }

        goto LABEL_65;
      }

      switch(v12)
      {
        case 1:
          v14 = [a1 copyArray];
          [(MFIMAPFetchResult *)v13 setEnvelope:v14];
          goto LABEL_61;
        case 2:
          v14 = [a1 copyDateTime];
          [(MFIMAPFetchResult *)v13 setInternalDate:v14];
          v24 = MFLogGeneral();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v14 description];
            *buf = v58;
            *&buf[4] = v25;
            _os_log_impl(&dword_1B0389000, v24, OS_LOG_TYPE_INFO, "#Power [Server Fetch Time] InternalDate=%@", buf, 0xCu);
          }

LABEL_61:

LABEL_112:
          v5 = 1;
          break;
        case 3:
          v14 = [a1 copyNumber];
          -[MFIMAPFetchResult setMessageSize:](v13, "setMessageSize:", [v14 unsignedIntValue]);
          goto LABEL_61;
      }

LABEL_113:
      [v4 addObject:v13];

      v48 = [a1 start];
      if (v48 >= [a1 end])
      {
        goto LABEL_156;
      }
    }

    v10 = 0;
    v11 = 0;
    v12 = 6;
    goto LABEL_17;
  }

  v4 = 0;
LABEL_156:
  [objc_msgSend(a1 "response")];
  if (v4)
  {
  }
}

void quotaroot_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if ([a1 parseSpace])
  {
    v2 = [a1 copyAString];
    if (v2 && [a1 parseSpace])
    {
      allocator = 0;
      v3 = MEMORY[0x1E695E9C0];
      do
      {
        v4 = [a1 copyAString];
        if (!v4)
        {
          break;
        }

        v5 = v4;
        Mutable = allocator;
        if (!allocator)
        {
          Mutable = CFArrayCreateMutable(0, 0, v3);
        }

        allocator = Mutable;
        [(__CFArray *)Mutable addObject:v5];
      }

      while (([a1 parseSpace] & 1) != 0);
    }

    else
    {
      allocator = 0;
    }
  }

  else
  {
    allocator = 0;
    v2 = 0;
  }

  [objc_msgSend(a1 "response")];
}

void quota_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = [a1 copyAString];
  if (v2 && [a1 parseSpace] && objc_msgSend(a1, "match:", "("))
  {
    allocator = 0;
    v3 = MEMORY[0x1E695E528];
    v4 = MEMORY[0x1E695E9E8];
    do
    {
      v5 = [a1 copyAtom];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v7 = [a1 copyNumber];
      if (v5)
      {
        Mutable = CFDictionaryCreateMutable(0, 3, v3, v4);
        [(__CFDictionary *)Mutable setObject:v5 forKey:@"_IMAPNameQuotaKey"];
        if (v6)
        {
          [(__CFDictionary *)Mutable setObject:v6 forKey:@"_IMAPCurrentUsageQuotaKey"];
        }

        if (v7)
        {
          [(__CFDictionary *)Mutable setObject:v7 forKey:@"_IMAPMaxUsageQuotaKey"];
        }

        v9 = allocator;
        if (!allocator)
        {
          v9 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        }

        allocator = v9;
        [(__CFArray *)v9 addObject:Mutable];
      }
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  else
  {
    allocator = 0;
  }

  [objc_msgSend(a1 "response")];
}

uint64_t esearch_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  v2 = [a1 connection];

  return [v2 parseESearchResponseWithContext:a1];
}

void push_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [a1 copyNilOrString];
  [a1 parseSpace];
  v3 = [a1 copyNilOrString];
  v4 = v3;
  if (v2 && v3)
  {
    do
    {
      [v6 mf_addObject:v4 forKey:v2];

      [a1 parseSpace];
      v2 = [a1 copyNilOrString];
      [a1 parseSpace];
      v5 = [a1 copyNilOrString];
      v4 = v5;
    }

    while (v2 && v5);
  }

  [objc_msgSend(a1 "response")];
}

void namespace_response(void *a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __namespace_response_block_invoke;
  v8 = &unk_1E7AA5D08;
  v9 = a1;
  v2 = __namespace_response_block_invoke(v6);
  v3 = v7(v6);
  v4 = v7(v6);
  v5 = [a1 response];
  [v5 setResponseType:22];
  [v5 setPrivateNamespaces:v2];
  [v5 setPublicNamespaces:v3];
  [v5 setSharedNamespaces:v4];
}

void other_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  [a1 parseSpace];
  v2 = [a1 copyAtom];
  if ([a1 parseSpace])
  {
    v8 = 0;
    while (1)
    {
      v3 = [a1 start];
      if (v3 >= [a1 end])
      {
        goto LABEL_19;
      }

      v4 = [a1 lookAhead];
      switch(v4)
      {
        case '""':
          v5 = [a1 copyQuotedString];
          break;
        case '(':
          v5 = [a1 copyArray];
          break;
        case '{':
          v5 = [a1 copyLiteralString];
          break;
        default:
          v6 = [a1 copyNumber];
          v7 = v8;
          if (v6)
          {
            goto LABEL_13;
          }

          v5 = [a1 copyAtom];
          break;
      }

      v6 = v5;
      v7 = v8;
      if (v6)
      {
LABEL_13:
        if (!v7)
        {
          v7 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
        }

        v8 = v7;
        [v7 addObject:v6];
      }

      if (([a1 parseSpace] & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = 0;
LABEL_19:
  [objc_msgSend(a1 "response")];
}

__CFString *mailbox(void *a1)
{
  v1 = [a1 copyAString];
  if (!v1 || [@"INBOX" caseInsensitiveCompare:v1])
  {
    return v1;
  }

  return @"INBOX";
}

__CFArray *flags_array(void *a1)
{
  if (![a1 match:"(")]
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  if (([a1 match:"]") & 1) == 0)
  {
    while (1)
    {
      if ([a1 lookAhead] == 92)
      {
        v3 = [a1 start] + 1;
        if (v3 < [a1 end] && *(objc_msgSend(a1, "start") + 1) == 42)
        {
          v4 = ([a1 start] + 2);
        }

        else
        {
          v6 = [a1 start] + 1;
          do
          {
            v4 = v6;
            if (v6 >= [a1 end])
            {
              break;
            }

            ++v6;
          }

          while (mf_isIMAPAtom(*v4));
        }

        if (&v4[-[a1 start]] < 2)
        {
          return v2;
        }

        v7 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{v4, 0}];
        [a1 setStart:v4];
        if (!v7)
        {
          return v2;
        }
      }

      else
      {
        if ([a1 lookAhead] == 34)
        {
          v5 = [a1 copyQuotedString];
        }

        else
        {
          v5 = [a1 copyAtom];
        }

        v7 = v5;
        if (!v5)
        {
          return v2;
        }
      }

      CFArrayAppendValue(v2, v7);

      if (![a1 match:"]"))
      {
        while (1)
        {
          v8 = [a1 start];
          if (v8 >= [a1 end] || (objc_msgSend(a1, "parseSpace") & 1) != 0 || objc_msgSend(a1, "lookAhead") == 41)
          {
            break;
          }

          [a1 increment];
        }

        if (([a1 match:"]") & 1) == 0)
        {
          continue;
        }
      }

      return v2;
    }
  }

  return v2;
}

void *capability_array(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  if ([a1 parseSpace])
  {
    do
    {
        ;
      }

      if (i > [a1 start])
      {
        v4 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{i, 1}];
        [a1 setStart:i];
        [v2 addObject:v4];
      }
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  return v2;
}

void *body_data(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(a1 "response")];
  if (v4)
  {
    v5 = v4;
    if (([a1 literalWithResponseConsumer:v4 section:a2] & 1) == 0)
    {
      [v5 appendData:nilOrString(a1) forSection:a2];
    }

    return 0;
  }

  else
  {
    result = [a1 copyLiteral];
    if (!result)
    {

      return nilOrString(a1);
    }
  }

  return result;
}

uint64_t __fetch_response_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DFF8];

    return [v4 ef_urlWithString:a2];
  }

  else
  {
    [*(a1 + 32) emitWarning:@"X-APPLE-REMOTE-LINKS contains non-string value"];
    return 0;
  }
}

void *nilOrString(void *a1)
{
  result = [a1 copyNilOrString];
  if (result)
  {
    v2 = result;
    v3 = MFCreateDataWithString();

    v4 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithImmutableData:v3];
    return v4;
  }

  return result;
}

void *__namespace_response_block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) parseSpace] & 1) == 0)
  {
    [*(a1 + 32) emitWarning:@"Expected space"];
  }

  v2 = [*(a1 + 32) copyArrayAllowingNulls:1];
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
    if (Count >= 1)
    {
      v6 = 0;
      v23 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 == CFArrayGetTypeID())
          {
            v10 = CFArrayGetCount(v8);
            if (v10 >= 2)
            {
              v11 = v10;
              v12 = CFArrayGetValueAtIndex(v8, 0);
              v13 = CFArrayGetValueAtIndex(v8, 1);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                [*(a1 + 32) emitError:{@"couldn't parse namespace response: prefix and/or delimiter were not strings", v23}];

                v5 = 0;
              }

              v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
              [v14 setObject:v12 forKeyedSubscript:@"_IMAPNamespacePrefixKey"];
              if (v13)
              {
                [v14 setObject:v13 forKeyedSubscript:@"_IMAPNamespaceDelimiterKey"];
              }

              if (v11 == 2)
              {
                Count = v23;
              }

              else
              {
                if (v11)
                {
                  [*(a1 + 32) emitError:@"couldn't parse namespace response extensions: not enough values for keys"];
                  v20 = v5;
                  v5 = 0;
                }

                else
                {
                  v24 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:(v11 >> 1) - 1];
                  v15 = 2;
                  do
                  {
                    v16 = CFArrayGetValueAtIndex(v8, v15);
                    v17 = v15 + 1;
                    v18 = CFArrayGetValueAtIndex(v8, v15 + 1);
                    if (v16 && (v19 = v18) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      [v24 setObject:v19 forKeyedSubscript:v16];
                    }

                    else
                    {
                      [*(a1 + 32) emitError:{@"couldn't parse namespace response extensions: invalid key or value", v23}];

                      v5 = 0;
                    }

                    v15 = v17 + 1;
                  }

                  while (v17 + 1 < v11);
                  v20 = v24;
                  if ([v24 count])
                  {
                    [v14 setObject:v24 forKeyedSubscript:@"_IMAPNamespaceExtensionsKey"];
                  }
                }

                Count = v23;
              }

              [v5 addObject:{v14, v23}];
            }
          }
        }

        ++v6;
      }

      while (v6 != Count);
    }

    CFRelease(v3);
  }

  else
  {
    v21 = [*(a1 + 32) copyAtom];
    if ([v21 caseInsensitiveCompare:@"NIL"])
    {
      [*(a1 + 32) emitError:@"couldn't parse NAMESPACE: unexpected atom"];
    }

    return 0;
  }

  return v5;
}

void *response_without_tag(void *a1)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (![a1 getNumber:&v7])
  {
    if ([objc_msgSend(a1 "response")])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    result = matchResponseTableEntry(a1, v6);
    if (!result)
    {
      return result;
    }

    v5 = result[2];
    if (!v5)
    {
      return result;
    }

    return v5(a1);
  }

  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = v7;
  matched = matchResponseTableEntry(a1, 4);
  result = [objc_msgSend(a1 "response")];
  if (matched)
  {
    v5 = matched[2];
    if (v5)
    {
      return v5(a1);
    }
  }

  return result;
}

void *matchResponseTableEntry(void *a1, int a2)
{
  v4 = [a1 nextSeparator];
  v5 = 0;
  v6 = 0;
  v7 = v4 - [a1 start];
  while (1)
  {
    if ((ResponseTypeTable[v6 + 3] & a2) == 0)
    {
      goto LABEL_6;
    }

    v8 = LODWORD(ResponseTypeTable[v6]);
    if (!v8)
    {
      break;
    }

    if (v7 == v8)
    {
      v9 = ResponseTypeTable[v6 + 1];
      if (!strncasecmp(v9, [a1 start], v7))
      {
        goto LABEL_10;
      }
    }

LABEL_6:
    ++v5;
    v10 = v6 >= 96;
    v6 += 4;
    if (v10)
    {
      return 0;
    }
  }

  v9 = ResponseTypeTable[v6 + 1];
LABEL_10:
  [a1 match:v9];
  [objc_msgSend(a1 "response")];
  return &ResponseTypeTable[v6];
}

id MFMailCopyEventWithExternalIdentifierAndPersistentStoreID(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v21 = a2;
  MFMailCopySharedEventStore(v21);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v20 = v29 = 0u;
  v3 = [v20 sources];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = *v27;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 externalID];
        v9 = [v8 isEqualToString:v21];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v20 calendarItemsWithExternalIdentifier:v19];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v10 = v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = *v23;
    while (2)
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 calendar];
          v16 = [v15 source];
          v17 = [v16 isEqual:v4];

          if (v17)
          {
            v11 = v14;
            goto LABEL_22;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  return v11;
}

id MFMailCopySharedEventStore(uint64_t a1)
{
  if (MFMailCopySharedEventStore_onceToken != -1)
  {
    MFMailCopySharedEventStore_cold_1();
  }

  v2 = MFMailCopySharedEventStore_sEventStore;

  return v2;
}

uint64_t MFMailGetEventUIDForUniqueIdentifierAndPersistentStoreID(void *a1, void *a2)
{
  v2 = MFMailCopyEventWithExternalIdentifierAndPersistentStoreID(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 rowID];
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

void __MFMailCopySharedEventStore_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6966A18]);
  v1 = MFMailCopySharedEventStore_sEventStore;
  MFMailCopySharedEventStore_sEventStore = v0;
}

void sub_1B05FCFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = MFLegacyIMAPMailboxTaskManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B05FF6A0(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  os_unfair_lock_unlock(v21 + 3);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 144), 8);

  _Unwind_Resume(a1);
}

void compactMessagesToUID(void *a1, uint64_t a2, unint64_t a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v35[0] = @"uid";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v35[1] = @"limit";
  v36[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v36[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [MFPowerController powerlog:@"compactMessagesToUID" eventData:v8];

  if (a2)
  {
    v9 = [v5 account];
    v10 = [v5 mailbox];
    v11 = [v9 storeForMailboxUid:v10];

    v12 = [v11 serverMessagePersistence];
    v13 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{1, a2}];
    v14 = [v12 serverMessagesForIMAPUIDs:v13 limit:*MEMORY[0x1E699B3A8] returnLastEntries:0];

    if ([v14 count] <= a3)
    {
      v21 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v5[11];
        v28 = 138543874;
        v29 = v22;
        v30 = 1024;
        *v31 = [v14 count];
        *&v31[4] = 1024;
        *&v31[6] = a3;
        _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Not compacting messages. Found %u (<= %u).", &v28, 0x18u);
      }

      goto LABEL_14;
    }

    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v5[11];
        v28 = 138543874;
        v29 = v16;
        v30 = 1024;
        *v31 = [v14 count];
        *&v31[4] = 1024;
        *&v31[6] = a3;
        v17 = "%{public}@: Compacting all messages. Found %u (> %u).";
        v18 = v15;
        v19 = 24;
LABEL_12:
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, v17, &v28, v19);
      }
    }

    else
    {
      v15 = +[MFLegacyIMAPMailboxTaskManager log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v5[11];
        v28 = 138544130;
        v29 = v23;
        v30 = 2048;
        *v31 = a2;
        *&v31[8] = 1024;
        v32 = [v14 count];
        v33 = 1024;
        v34 = a3;
        v17 = "%{public}@: Compacting messages with UIDs <= %lu. Found %u (> %u).";
        v18 = v15;
        v19 = 34;
        goto LABEL_12;
      }
    }

    v21 = [v14 valueForKey:@"remoteID"];
    v24 = [v5 library];
    v25 = [v24 messageChangeManager];
    v26 = [v5 mailbox];
    v27 = [v26 URL];
    [v25 reflectDeletedMessagesWithRemoteIDs:v21 mailboxURL:v27];

LABEL_14:
    goto LABEL_15;
  }

  v11 = +[MFLegacyIMAPMailboxTaskManager log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v5[11];
    v28 = 138543362;
    v29 = v20;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: No messages to compact", &v28, 0xCu);
  }

LABEL_15:
}

void sub_1B0600E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id fetchArgumentsForCriterion(void *a1, int a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v81 = a1;
  v3 = needUTF8ForCriterion(v81);
  v80 = [v81 expression];
  if ((v3 & a2) == 1)
  {
    [MEMORY[0x1E695DF70] arrayWithObjects:{@"CHARSET", @"UTF-8", 0}];
  }

  else
  {
    [MEMORY[0x1E695DF70] array];
  }
  v87 = ;
  v4 = [v81 criterionType];
  if (v4 > 27)
  {
    if (v4 <= 39)
    {
      if (v4 == 28)
      {
        v31 = [v81 expression];
        v32 = [v31 integerValue];

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v114[0] = @"$MailFlagBit0";
        v114[1] = @"$MailFlagBit1";
        v114[2] = @"$MailFlagBit2";
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
        obj = v33;
        v34 = [v33 countByEnumeratingWithState:&v88 objects:v115 count:16];
        if (v34)
        {
          v35 = 0;
          v36 = *v89;
          v37 = ~v32;
          do
          {
            v38 = 0;
            v83 = v35 + v34;
            do
            {
              if (*v89 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(*(&v88 + 1) + 8 * v38);
              v40 = [MEMORY[0x1E696AD60] string];
              v41 = v40;
              if (((1 << v35) & v37) != 0)
              {
                v42 = @"UNKEYWORD ";
              }

              else
              {
                v42 = @"KEYWORD ";
              }

              [v40 appendString:v42];
              [v41 appendString:v39];
              [v87 addObject:v41];

              LOBYTE(v35) = v35 + 1;
              ++v38;
            }

            while (v34 != v38);
            v33 = obj;
            v34 = [obj countByEnumeratingWithState:&v88 objects:v115 count:16];
            v35 = v83;
          }

          while (v34);
        }

        goto LABEL_143;
      }

      if (v4 == 33)
      {
        goto LABEL_40;
      }

      if (v4 != 35)
      {
        goto LABEL_146;
      }

      v12 = @"FROM";
    }

    else
    {
      if (v4 > 45)
      {
        if (v4 != 46 && v4 != 49)
        {
          goto LABEL_146;
        }

LABEL_37:
        v15 = MFLogGeneral();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v121 = v81;
          _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "#Warning Ignoring criterion %@ IMAP search", buf, 0xCu);
        }

        goto LABEL_143;
      }

      if (v4 == 40)
      {
        v12 = @"TO";
      }

      else
      {
        if (v4 != 41)
        {
          goto LABEL_146;
        }

        v12 = @"CC";
      }
    }

    [v87 addObject:v12];
    addArgumentsForExpression(v80, v3, v87);
    goto LABEL_143;
  }

  if (v4 <= 10)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        if (v4 == 9)
        {
          objc_msgSend(v87, "addObject:", @"(OR TO");
          addArgumentsForExpression(v80, v3, v87);
          [v87 addObject:@"CC"];
          addArgumentsForExpression(v80, v3, v87);
          [v87 addObject:@""]);
          goto LABEL_143;
        }

        goto LABEL_146;
      }

LABEL_40:
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __fetchArgumentsForCriterion_block_invoke;
      v104[3] = &unk_1E7AA6108;
      v17 = v16;
      v105 = v17;
      [v81 tokenizeUsingTokenizationHandler:v104];
      v18 = v17;
      v19 = v87;
      v20 = [v18 count];
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = [v18 lastObject];
          [v19 addObjectsFromArray:v21];
        }

        else
        {
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v82 = v18;
          v43 = [v82 countByEnumeratingWithState:&v110 objects:buf count:16];
          if (v43)
          {
            v84 = *v111;
            v44 = 1;
            do
            {
              obja = v43;
              for (i = 0; i != obja; i = i + 1)
              {
                if (*v111 != v84)
                {
                  objc_enumerationMutation(v82);
                }

                v46 = *(*(&v110 + 1) + 8 * i);
                if (v44)
                {
                  v108 = 0u;
                  v109 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v47 = v46;
                  v48 = [v47 countByEnumeratingWithState:&v106 objects:v119 count:16];
                  v44 = v48 == 0;
                  if (v48)
                  {
                    v49 = *v107;
                    v50 = 1;
                    do
                    {
                      for (j = 0; j != v48; ++j)
                      {
                        if (*v107 != v49)
                        {
                          objc_enumerationMutation(v47);
                        }

                        if (v50)
                        {
                          v52 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@"), *(*(&v106 + 1) + 8 * j);
                          [v19 addObject:v52];
                        }

                        else
                        {
                          [v19 addObject:*(*(&v106 + 1) + 8 * j)];
                        }

                        v50 = 0;
                      }

                      v48 = [v47 countByEnumeratingWithState:&v106 objects:v119 count:16];
                      v50 = 0;
                    }

                    while (v48);
                  }
                }

                else
                {
                  [v19 addObjectsFromArray:v46];
                  v44 = 0;
                }
              }

              v43 = [v82 countByEnumeratingWithState:&v110 objects:buf count:16];
            }

            while (v43);
          }

          [v19 addObject:@""]);
        }
      }

      goto LABEL_143;
    }

    v29 = [v81 criterionIdentifier];
    if ([v29 isEqual:*MEMORY[0x1E699B178]])
    {
      v30 = @"SUBJECT";
    }

    else
    {
      if (![v29 isEqualToString:*MEMORY[0x1E699B130]])
      {
        v53 = MFLogGeneral();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v121 = v29;
          _os_log_impl(&dword_1B0389000, v53, OS_LOG_TYPE_DEFAULT, "#Warning unsupported header criterion type %@", buf, 0xCu);
        }

        goto LABEL_102;
      }

      [v87 addObject:@"HEADER"];
      if ([v81 qualifier] != 3)
      {
        __assert_rtn("fetchArgumentsForCriterion", "MFLegacyIMAPMailboxTaskManager.m", 955, "0 && Message ID header criterion must have a MessageRuleIsEqualTo qualifier");
      }

      v30 = @"Message-ID";
    }

    [v87 addObject:v30];
LABEL_102:
    addArgumentsForExpression(v80, v3, v87);

    goto LABEL_143;
  }

  if (v4 > 25)
  {
    if (v4 != 26)
    {
      v8 = [MEMORY[0x1E696AD60] string];
      if ([v81 qualifier] == 7)
      {
        [v8 appendString:@"NOT "];
      }

      if (fetchArgumentsForCriterion_onceToken != -1)
      {
        fetchArgumentsForCriterion_cold_1();
      }

      v13 = fetchArgumentsForCriterion_flagMap;
      v14 = [v81 expression];
      v10 = [v13 objectForKey:v14];

      if (!v10)
      {
        v77 = [MEMORY[0x1E696AAA8] currentHandler];
        v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSArray<id> *fetchArgumentsForCriterion(MFMessageCriterion *__strong, BOOL)"}];
        [v77 handleFailureInFunction:v78 file:@"MFLegacyIMAPMailboxTaskManager.m" lineNumber:1064 description:{@"could not map expression to flag: %@", v81}];
      }

      [v8 appendString:v10];
      [v87 addObject:v8];
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if ((v4 - 11) < 2)
  {
    if ([v81 qualifier] == 6)
    {
      v5 = @"SINCE";
    }

    else
    {
      v5 = @"BEFORE";
    }

    [v87 addObject:v5];
    v6 = MEMORY[0x1E695DF00];
    v7 = [v81 expression];
    [v7 doubleValue];
    v8 = [v6 dateWithTimeIntervalSince1970:?];

    v9 = MEMORY[0x1E696AEC0];
    v10 = MFIMAPDateSearchStringForDate(v8);
    v11 = [v9 stringWithFormat:@"%@", v10];
    [v87 addObject:v11];

LABEL_36:
    goto LABEL_143;
  }

  if (v4 != 25)
  {
LABEL_146:
    v79 = MFLogGeneral();
    fetchArgumentsForCriterion_cold_2(v79, v81);

    __assert_rtn("fetchArgumentsForCriterion", "MFLegacyIMAPMailboxTaskManager.m", 1112, "0 && Need to handle criterion for IMAP headers");
  }

  v22 = [MEMORY[0x1E695DF70] array];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v23 = [v81 criteria];
  v24 = [v23 countByEnumeratingWithState:&v100 objects:v118 count:16];
  if (v24)
  {
    v25 = *v101;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v101 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = fetchArgumentsForCriterion(*(*(&v100 + 1) + 8 * k), 0);
        if (v27)
        {
          [v22 addObject:v27];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v100 objects:v118 count:16];
    }

    while (v24);
  }

  v28 = [v22 count];
  if (v28 == 1)
  {
    v23 = [v22 objectAtIndex:0];
    if ([v23 count] == 1)
    {

      goto LABEL_108;
    }

    if ((a2 & 1) == 0)
    {

      goto LABEL_117;
    }
  }

  else if (!a2)
  {
    goto LABEL_117;
  }

  v54 = [v81 allCriteriaMustBeSatisfied];
  v55 = v54;
  if (v28 == 1)
  {

    if ((v55 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_108:
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v56 = v22;
    v57 = [v56 countByEnumeratingWithState:&v96 objects:v117 count:16];
    if (v57)
    {
      v58 = *v97;
      do
      {
        for (m = 0; m != v57; ++m)
        {
          if (*v97 != v58)
          {
            objc_enumerationMutation(v56);
          }

          [v87 addObjectsFromArray:*(*(&v96 + 1) + 8 * m)];
        }

        v57 = [v56 countByEnumeratingWithState:&v96 objects:v117 count:16];
      }

      while (v57);
    }

    goto LABEL_136;
  }

  if (v54)
  {
    goto LABEL_108;
  }

LABEL_117:
  if ([v81 allCriteriaMustBeSatisfied])
  {
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v60 = v22;
    v61 = [v60 countByEnumeratingWithState:&v92 objects:v116 count:16];
    if (!v61)
    {
LABEL_136:

      goto LABEL_142;
    }

    LOBYTE(v62) = 0;
    v63 = *v93;
LABEL_120:
    v64 = 0;
    while (1)
    {
      if (*v93 != v63)
      {
        objc_enumerationMutation(v60);
      }

      v65 = *(*(&v92 + 1) + 8 * v64);
      if (v62)
      {
        [v87 addObjectsFromArray:*(*(&v92 + 1) + 8 * v64)];
      }

      else
      {
        v66 = [*(*(&v92 + 1) + 8 * v64) count];
        if (!v66)
        {
          v62 = 0;
          goto LABEL_130;
        }

        v67 = [v65 objectAtIndex:0];
        v68 = objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(%@"), v67;
        [v87 addObject:v68];

        if (v66 != 1)
        {
          v69 = [v65 subarrayWithRange:{1, v66 - 1}];
          [v87 addObjectsFromArray:v69];
        }
      }

      v62 = 1;
LABEL_130:
      if (v61 == ++v64)
      {
        v70 = [v60 countByEnumeratingWithState:&v92 objects:v116 count:16];
        v61 = v70;
        if (!v70)
        {

          if (v62)
          {
            [v87 addObject:@""]);
          }

          goto LABEL_142;
        }

        goto LABEL_120;
      }
    }
  }

  v71 = [v22 count];
  v72 = v71 - 1;
  if (v71 != 1)
  {
    v73 = 0;
    do
    {
      objc_msgSend(v87, "addObject:", @"(OR");
      v74 = [v22 objectAtIndex:v73];
      [v87 addObjectsFromArray:v74];

      ++v73;
    }

    while (v72 != v73);
  }

  v75 = [v22 lastObject];
  [v87 addObjectsFromArray:v75];

  for (; v72; --v72)
  {
    [v87 addObject:@""]);
  }

LABEL_142:

LABEL_143:

  return v87;
}

void sub_1B060213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B060241C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B0602AFC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0602C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B060365C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  v27 = v26;

  os_unfair_lock_unlock(v25 + 3);
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1B06040C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  _Block_object_dispose((v16 - 120), 8);

  _Unwind_Resume(a1);
}

void _compactMessageIfNoData(void *a1, void *a2, void *a3)
{
  v11 = a1;
  v5 = a2;
  v6 = a3;
  if ([v5 isComplete])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = +[MFActivityMonitor currentMonitor];
      v8 = [v7 error];

      if (!v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
        v10 = [v11 library];
        [v10 compactMessages:v9 permanently:1 notifyPersistence:0];
      }
    }
  }
}

void sub_1B06045E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1B06047F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B0605130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B0605448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B06067AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B0606C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B06079CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

uint64_t needUTF8ForCriterion(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 criterionType] == 25)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = [v1 criteria];
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if (needUTF8ForCriterion(*(*(&v9 + 1) + 8 * i)))
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = [v1 expression];
    v7 = [v6 dataUsingEncoding:1];
    v3 = v7 == 0;
  }

  return v3;
}

void __fetchArgumentsForCriterion_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 dataUsingEncoding:1];

  v4 = [MEMORY[0x1E695DF70] array];
  objc_msgSend(v4, "addObject:", @"(OR FROM");
  addArgumentsForExpression(v5, v3 == 0, v4);
  objc_msgSend(v4, "addObject:", @"(OR SUBJECT");
  addArgumentsForExpression(v5, v3 == 0, v4);
  objc_msgSend(v4, "addObject:", @"(OR TO");
  addArgumentsForExpression(v5, v3 == 0, v4);
  objc_msgSend(v4, "addObject:", @"(OR CC");
  addArgumentsForExpression(v5, v3 == 0, v4);
  [v4 addObject:@"BODY"];
  addArgumentsForExpression(v5, v3 == 0, v4);
  [v4 addObject:@"]))"));

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void addArgumentsForExpression(void *a1, int a2, void *a3)
{
  v7 = a1;
  v5 = a3;
  if (a2)
  {
    [v7 dataUsingEncoding:4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v7];
  }
  v6 = ;
  [v5 addObject:v6];
}

void __fetchArgumentsForCriterion_block_invoke_491()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v3[0] = @"MessageIsFlagged";
  v3[1] = @"MessageIsDeleted";
  v4[0] = @"FLAGGED";
  v4[1] = @"DELETED";
  v3[2] = @"MessageIsRead";
  v3[3] = @"MessageWasRepliedTo";
  v4[2] = @"SEEN";
  v4[3] = @"ANSWERED";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = [v0 copy];
  v2 = fetchArgumentsForCriterion_flagMap;
  fetchArgumentsForCriterion_flagMap = v1;
}

void sub_1B06083B8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0608534(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B0609B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B060CAA4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B060CD70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B060D190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1B060D2E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1B060DBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_1B060DE44(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sanitizeStringForMarkup(void *a1)
{
  v1 = a1;
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"  " withString:@"&nbsp; " options:2 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"\n" withString:@"<BR>" options:2 range:{0, objc_msgSend(v1, "length")}];
}

void sub_1B060E990(_Unwind_Exception *a1)
{
  v4 = *(v3 - 160);

  _Unwind_Resume(a1);
}

void sub_1B060EB70(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFLockStateMonitor;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B060ED04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B060F01C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B060F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  v26 = v25;

  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B060F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B060FDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B061010C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B06101D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B06104F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B06107F0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0610D70(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0611168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, void *a11, void *a12, int a13, char a14, void *a15)
{
  if (a14)
  {
  }

  if (!v21)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B0611E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  objc_sync_exit(v31);

  objc_destroyWeak(&a24);
  objc_destroyWeak((v34 - 144));

  _Unwind_Resume(a1);
}

id downloadConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695AC80] backgroundSessionConfigurationWithIdentifier:a1];
  [v3 set_sourceApplicationBundleIdentifier:*MEMORY[0x1E69B17F0]];
  [v3 setTimeoutIntervalForRequest:30.0];
  [v3 setTimeoutIntervalForResource:1800.0];
  [v3 setAllowsCellularAccess:a2];

  return v3;
}

void sub_1B06125C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1B0613FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_1B0615530(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1B0615730(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1B06161B8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0618E00(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0618FB8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B06192A0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B0619400(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B06195D0(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B0619B08(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0619C7C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0619F3C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B061A6EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B061AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t performInsert(sqlite3_stmt *a1, void *a2)
{
  v4 = sqlite3_step(a1);
  sqlite3_reset(a1);
  if ((v4 - 100) < 2 || v4 == 0)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E696ABC0] ef_SQLiteErrorWithCode:v4];
  v8 = v7;
  result = 0;
  *a2 = v7;
  return result;
}

void sub_1B061B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void rawAddress(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v5 = sqlite3_value_text(*a3);
    if (v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:sqlite3_value_bytes(*a3) encoding:4 freeWhenDone:0];
      v6 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:? cacheResults:?];
      if ([v6 length])
      {
        sqlite3_result_text(a1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_result_null(a1);
      }
    }

    else
    {

      sqlite3_result_null(a1);
    }
  }

  else
  {
    v7 = a2;
    v8 = [MEMORY[0x1E699B600] log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      rawAddress_cold_1(v7, v8);
    }
  }
}

void displayName(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v5 = sqlite3_value_text(*a3);
    if (v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:sqlite3_value_bytes(*a3) encoding:4 freeWhenDone:0];
      v6 = [MEMORY[0x1E699AFD0] displayNameFromAddress:? cacheResults:?];
      if ([v6 length] && (objc_msgSend(v6, "isEqualToString:", v9) & 1) == 0)
      {
        sqlite3_result_text(a1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_result_text(a1, "", 0, 0);
      }
    }

    else
    {

      sqlite3_result_null(a1);
    }
  }

  else
  {
    v7 = a2;
    v8 = [MEMORY[0x1E699B600] log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      displayName_cold_1(v7, v8);
    }
  }
}

void sub_1B061C050(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B061D1A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B061D404(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v7 = objc_begin_catch(a1);
    v8 = EDLibraryLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__MFMailMessageLibraryLocalActionsTablesMigrationStep__offlineCacheOperations__block_invoke_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    objc_end_catch();
    JUMPOUT(0x1B061D3E8);
  }

  _Unwind_Resume(a1);
}

void sub_1B061D7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B061ED3C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B061F64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, id a59)
{
  _Block_object_dispose(&a30, 8);

  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);

  _Block_object_dispose(&a54, 8);
  _Block_object_dispose((v63 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_1B0620474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t _LibraryVersion(sqlite3 *a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(a1, "SELECT value FROM properties WHERE key = 'version'", -1, &ppStmt, 0))
  {
    return 0;
  }

  if (sqlite3_step(ppStmt) == 100)
  {
    v1 = sqlite3_column_int(ppStmt, 0);
  }

  else
  {
    v1 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v1;
}

void sub_1B06232D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t _InitializeSchema(sqlite3 *a1, void *a2)
{
  v3 = [a2 definitionWithDatabaseName:0];
  v4 = _ExecuteSQL(a1, v3, @"performing statements from schema definition");

  if (!v4)
  {
    return 0;
  }

  v7 = _SQLFromFile(v5, v6);
  if (v7)
  {
    v8 = _ExecuteSQL(a1, v7, @"performing statements from file triggers.sql");
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

BOOL _FixZeroedConversationHashes(sqlite3 *a1)
{
  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  v2 = sqlite3_prepare_v2(a1, "SELECT rowid FROM messages WHERE conversation_id = 0 or conversation_id is NULL", -1, &ppStmt, 0);
  v3 = v2 == 0;
  v4 = objc_alloc_init(MEMORY[0x1E699B810]);
  if (!v2 && ppStmt)
  {
    while (1)
    {
      v5 = sqlite3_step(ppStmt);
      if (v5 != 100)
      {
        break;
      }

      [v4 addIndex:{sqlite3_column_int64(ppStmt, 0)}];
    }

    _HandleSQLiteError(a1, @"gathering library ids of messages without conversation hashes");
    v3 = v5 == 101;
    sqlite3_finalize(ppStmt);
  }

  if (v3)
  {
    if ([v4 count])
    {
      v6 = [v4 firstIndex];
      v7 = sqlite3_prepare_v2(a1, "UPDATE messages SET conversation_id = ?, content_index_transaction_id = NULL WHERE rowid = ?", -1, &ppStmt, 0) == 0;
      while (v7 && v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = MFUniqueMessageIDHash();
        sqlite3_bind_int64(ppStmt, 1, v8);
        sqlite3_bind_int64(ppStmt, 2, v6);
        v9 = sqlite3_step(ppStmt);
        v7 = v9 == 101;
        if (v9 == 101)
        {
          sqlite3_reset(ppStmt);
        }

        v6 = [v4 indexGreaterThanIndex:v6];
      }

      _HandleSQLiteError(a1, @"updating messages with new conversation hashes");
      sqlite3_finalize(ppStmt);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL _DropMessageDeletedIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX message_deleted_index", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"dropping message deleted index");
  return v2;
}

BOOL _AddVIPSenderColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN sender_vip;", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding sender_vip column");
  return v2;
}

BOOL _AddUniqueRemoteIDColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN unique_id;", 0, 0, 0);
  _HandleSQLiteError(a1, @"adding unique_id column");
  return v2 == 0;
}

BOOL _AddContentTransactionIDColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN content_index_transaction_id INTEGER;", 0, 0, 0);
  _HandleSQLiteError(a1, @"adding content_index_transaction_id column");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "CREATE INDEX message_content_index_transaction_id_index ON messages(content_index_transaction_id);", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding content_index_transaction_id index");
  return v3;
}

BOOL _ImproveMessageConversationIndexes(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS message_conversation_id_index;\nCREATE INDEX message_conversation_id_index ON messages(conversation_id, mailbox, read, date_received);\nDROP INDEX IF EXISTS message_oldest_conversation_index;\nCREATE INDEX message_oldest_conversation_index on messages(mailbox, conversation_id, date_received);", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"replacing conversation indexes");
  return v2;
}

BOOL _AddSequenceIdentifierIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS message_sequence_identifier_index;\nCREATE INDEX message_sequence_identifier_index ON messages(mailbox, remote_id, sequence_identifier);", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding sequence identifier index");
  return v2;
}

uint64_t _AddFlaggedAndAttachmentColumnsAndTriggers(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE mailboxes ADD COLUMN flagged_count INTEGER DEFAULT 0; ALTER TABLE mailboxes ADD COLUMN attachment_count INTEGER DEFAULT 0;", 0, 0, 0);
  _HandleSQLiteError(a1, @"altering mailboxes table");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "update mailboxes set flagged_count = (select count(*) from messages where mailbox = mailboxes.rowid AND flags&16 > 0);", 0, 0, 0);
  _HandleSQLiteError(a1, @"updating flagged_count");
  if (v3)
  {
    return 0;
  }

  v4 = sqlite3_exec(a1, "update mailboxes set attachment_count = (select count(*) from messages where mailbox = mailboxes.rowid AND (((flags&(63<<10))>>10) BETWEEN 1 AND 62) AND flags&1 = 0);", 0, 0, 0);
  _HandleSQLiteError(a1, @"updating attachment_count");
  if (v4)
  {
    return 0;
  }

  v9 = _SQLFromFile(v5, v6);
  v7 = _ExecuteSQL(a1, v9, @"performing statements from file triggers.sql");

  return v7;
}

uint64_t _AddToCcCountColumnAndTriggers(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE mailboxes ADD COLUMN to_cc_count INTEGER DEFAULT 0;", 0, 0, 0);
  _HandleSQLiteError(a1, @"altering mailboxes table");
  if (v2)
  {
    return 0;
  }

  v3 = sqlite3_exec(a1, "INSERT OR REPLACE INTO properties (key, value) VALUES ('MaxRowIdForMigrationToVersion31', (SELECT MAX(rowid) FROM messages));", 0, 0, 0);
  _HandleSQLiteError(a1, @"adding maxrowid property");
  if (v3)
  {
    return 0;
  }

  v8 = _SQLFromFile(v4, v5);
  v6 = _ExecuteSQL(a1, v8, @"performing statements from file triggers.sql");

  return v6;
}

BOOL _AddServerOnlyUnreadCountColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE mailboxes ADD COLUMN server_unread_count INTEGER DEFAULT 0;", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"altering mailboxes table");
  return v2;
}

uint64_t _SochiFixFlaggedCount(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "UPDATE mailboxes SET flagged_count = (select count(*) FROM messages WHERE mailbox = mailboxes.rowid AND flags&16 > 0 AND flags&2 == 0);", 0, 0, 0);
  _HandleSQLiteError(a1, @"updating flagged_count");
  if (v2)
  {
    return 0;
  }

  v6 = _SQLFromFile(v3, v4);
  v5 = _ExecuteSQL(a1, v6, @"performing statements from file triggers.sql");

  return v5;
}

BOOL _AddConversationFlags(sqlite3 *a1)
{
  v2 = 0;
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = "CREATE TABLE conversations (conversation_id INTEGER PRIMARY KEY, flags INTEGER DEFAULT 0, sync_key TEXT);";
  v5[1] = "CREATE TABLE conversation_id_message_id (conversation_id INTEGER, message_id INTEGER, date_sent INTEGER DEFAULT 0, UNIQUE (conversation_id, message_id), FOREIGN KEY (conversation_id) REFERENCES conversations(conversation_id) ON DELETE CASCADE ON UPDATE CASCADE);";
  v5[2] = "CREATE INDEX conversation_id_message_id_index ON conversation_id_message_id(conversation_id, message_id); CREATE INDEX message_id_conversation_id_index ON conversation_id_message_id(message_id, conversation_id);";
  v5[3] = "INSERT INTO conversations (conversation_id) SELECT DISTINCT(conversation_id) FROM messages;";
  v5[4] = "INSERT OR IGNORE INTO conversation_id_message_id (conversation_id,message_id,date_sent) SELECT conversation_id, message_id, date_sent FROM messages;";
  v5[5] = "INSERT OR IGNORE INTO conversation_id_message_id (conversation_id,message_id) SELECT messages.conversation_id, threads.reference FROM messages, threads WHERE messages.rowid = threads.message_id;";
  do
  {
    v3 = sqlite3_exec(a1, v5[v2], 0, 0, 0);
    _HandleSQLiteError(a1, @"creating conversations and conversation_id_message_id tables");
    if (v2 > 4)
    {
      break;
    }

    ++v2;
  }

  while (!v3);
  return v3 == 0;
}

BOOL _AddJournaledColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE messages ADD COLUMN journaled DEFAULT '0';", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"adding journaled column");
  return v2;
}

BOOL _ResetStatusCountsForDrafts(sqlite3 *a1)
{
  ppStmt = 0xAAAAAAAAAAAAAAAALL;
  v2 = sqlite3_prepare_v2(a1, "SELECT DISTINCT mailbox FROM messages WHERE flags&64 = 64;", -1, &ppStmt, 0);
  v3 = v2 == 0;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v2)
  {
    v5 = ppStmt;
    if (ppStmt)
    {
      while (1)
      {
        v6 = sqlite3_step(v5);
        if (v6 != 100)
        {
          break;
        }

        v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(ppStmt, 0)}];
        [v4 addObject:v7];

        v5 = ppStmt;
      }

      _HandleSQLiteError(a1, @"finding mailbox IDs of draft mailboxes");
      v3 = v6 == 101;
      sqlite3_finalize(ppStmt);
    }
  }

  if (v3)
  {
    v8 = [v4 componentsJoinedByString:{@", "}];
    v9 = [v8 UTF8String];

    v10 = sqlite3_mprintf("UPDATE mailboxes SET last_sync_status_count = 0, most_recent_status_count = 0 WHERE url LIKE 'imap:%%' AND rowid IN (%s)", v9);
    LODWORD(v9) = sqlite3_exec(a1, v10, 0, 0, 0);
    sqlite3_free(v10);
    v11 = v9 == 0;
    _HandleSQLiteError(a1, @"updating count columns for non-draft mailboxes");
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL _AddProtectedDataIndexes(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "CREATE INDEX IF NOT EXISTS messages_subject_index ON messages(subject);\nCREATE INDEX IF NOT EXISTS messages_summary_index ON messages(summary);\nCREATE INDEX IF NOT EXISTS recipients_address_index ON recipients(address);\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Creating indexes to protected data");
  return v2;
}

void _HandleSQLiteError(sqlite3 *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sqlite3_errcode(a1);
  v5 = v4;
  if ((v4 - 100) >= 2 && v4)
  {
    v6 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109634;
      v7[1] = v5;
      v8 = 2114;
      v9 = v3;
      v10 = 2082;
      v11 = sqlite3_errmsg(a1);
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Error %d %{public}@: %{public}s", v7, 0x1Cu);
    }
  }
}

uint64_t _MigratePropertiesToEmailAppGroup()
{
  v0 = [MEMORY[0x1E699B5F0] run];
  v1 = [MEMORY[0x1E699B5F0] propertiesToMigrate];
  [MFUserDefaultMigrator migrateDefaults:v1];

  return v0;
}

BOOL _AddThreadsSendersAndRecipientsIndexes(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "CREATE INDEX IF NOT EXISTS thread_senders_address_thread_index ON thread_senders(address, thread);\nCREATE INDEX IF NOT EXISTS thread_senders_thread_priority_date_index ON thread_senders(thread, priority, date);\nCREATE INDEX IF NOT EXISTS thread_recipients_address_thread_index ON thread_recipients(address, thread);\nCREATE INDEX IF NOT EXISTS thread_recipients_thread_priority_date_index ON thread_recipients(thread, priority, date);\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Creating indexes for thread_senders and thread_recipients");
  return v2;
}

BOOL _AddThreadsJournaledColumn(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "ALTER TABLE threads ADD COLUMN journaled INTEGER NOT NULL DEFAULT 0;\nCREATE INDEX IF NOT EXISTS threads_journaled_scope_date_conversation_index ON threads(journaled, scope, date, conversation);\nCREATE INDEX IF NOT EXISTS threads_journaled_date_scope_conversation_index ON threads(journaled, date, scope, conversation) WHERE journaled = 1;\nDROP INDEX IF EXISTS threads_scope_read_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_flagged_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_red_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_orange_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_yellow_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_green_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_blue_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_purple_flag_date_conversation_index;\nDROP INDEX IF EXISTS threads_scope_has_gray_flag_date_conversation_index;\nCREATE INDEX IF NOT EXISTS messages_mailbox_conversation_id_flag_color_date_received_journaled_index ON messages(mailbox, conversation_id, flag_color, date_received, journaled);\nDROP INDEX IF EXISTS messages_mailbox_conversation_id_flag_color_date_received_index;\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Adding threads.journaled and tweaking some indexes");
  return v2;
}

BOOL _AddMessageIndexesForThreadQueries(sqlite3 *a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775238];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775250];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775268];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775280];
  v12[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  v7 = [v6 ef_map:&__block_literal_global_801];
  v8 = [v7 componentsJoinedByString:@"\n"];
  v9 = v8;
  v10 = [v8 UTF8String];

  LODWORD(v7) = sqlite3_exec(a1, v10, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating indexes for thread_senders and thread_recipients");

  return v7 == 0;
}

BOOL _AddMessageIDIndex(sqlite3 *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775298];
  v3 = [v2 definitionWithDatabaseName:0];
  v4 = [v3 UTF8String];

  LODWORD(v3) = sqlite3_exec(a1, v4, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_message_id_deleted_journaled_read_mailbox_index");

  return v3 == 0;
}

BOOL _AddSenderVIPUnreadCountQueryIndex(sqlite3 *a1)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699B8C8] column:@"sender_vip"];
  v3 = [v2 equalTo:&unk_1F2775A00];

  v4 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v5 = [v4 equalTo:&unk_1F2775A18];

  v6 = [MEMORY[0x1E699B8C8] column:@"deleted"];
  v7 = [v6 equalTo:&unk_1F2775A18];

  v8 = [MEMORY[0x1E699B8C8] column:@"read"];
  v9 = [v8 equalTo:&unk_1F2775A18];

  v10 = objc_alloc(MEMORY[0x1E699B898]);
  v18[0] = v3;
  v18[1] = v5;
  v18[2] = v7;
  v18[3] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  v12 = [v10 initWithExpressions:v11];

  v13 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27752B0 where:v12 unique:0];
  v14 = [v13 definitionWithDatabaseName:0];
  v15 = v14;
  v16 = [v14 UTF8String];

  LODWORD(v14) = sqlite3_exec(a1, v16, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_sender_vip_deleted_journaled_read_message_id_index");

  return v14 == 0;
}

BOOL _UpdateDeletedMailboxIndex(sqlite3 *a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27752C8];
  v9[0] = @"DROP INDEX IF EXISTS messages_deleted_mailbox_index;";
  v3 = [v2 definitionWithDatabaseName:0];
  v9[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v5 = [v4 componentsJoinedByString:@"\n"];
  v6 = v5;
  v7 = [v5 UTF8String];

  LODWORD(v3) = sqlite3_exec(a1, v7, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_deleted_mailbox_date_received_index");

  return v3 == 0;
}

BOOL _AddJournaledUndeletedIndex(sqlite3 *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v3 = [v2 equalTo:&unk_1F2775A00];

  v4 = [MEMORY[0x1E699B8C8] column:@"deleted"];
  v5 = [v4 equalTo:&unk_1F2775A18];

  v6 = objc_alloc(MEMORY[0x1E699B898]);
  v14[0] = v3;
  v14[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v6 initWithExpressions:v7];

  v9 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27752E0 where:v8 unique:0];
  v10 = [v9 definitionWithDatabaseName:0];
  v11 = v10;
  v12 = [v10 UTF8String];

  LODWORD(v10) = sqlite3_exec(a1, v12, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating messages_journaled_deleted_date_received_index");

  return v10 == 0;
}

uint64_t _ReplaceCachedMetadataTable(sqlite3 *a1)
{
  v2 = executeQuery(1, a1, "DROP TABLE IF EXISTS message_metadata;", @"Dropping table message_metadata.");
  v3 = executeQuery(v2, a1, "CREATE TABLE message_metadata (message_id INTEGER PRIMARY KEY, timestamp INTEGER NOT NULL, json_values TEXT COLLATE BINARY NOT NULL);", @"Creating message_metadata table.");

  return executeQuery(v3, a1, "CREATE INDEX message_metadata_timestamp_index ON message_metadata(timestamp);", @"Creating message_metadata index.");
}

BOOL _AddThreadJournaledDateIndex(sqlite3 *a1)
{
  v2 = objc_alloc(MEMORY[0x1E699B900]);
  v3 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v4 = [v3 equalTo:&unk_1F2775A00];
  v5 = [v2 initWithTableName:@"threads" columnNames:&unk_1F27752F8 where:v4 unique:0];

  v6 = [v5 definitionWithDatabaseName:0];
  v7 = [v6 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v7, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating threads_journaled_date_scope_conversation_index");

  return v6 == 0;
}

uint64_t _AddUnreadCountJournalIndexes(sqlite3 *a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"conversations" columnNames:&unk_1F2775310];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775328];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775340];
  v13[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v6 = [v5 ef_map:&__block_literal_global_897];
  v7 = [v6 componentsJoinedByString:@"\n"];
  v8 = v7;
  v9 = [v7 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v9, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating indexes for conversations and message unread counts");
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v12[0] = "CREATE INDEX IF NOT EXISTS\n   messages_mailbox_deleted_journaled_read_sender_vip_flags_conversation_id_date_sent_message_id_date_received_rowid_index\n   ON messages(\n       mailbox, deleted, journaled, read, sender_vip, flags, conversation_id,\n       date_sent, message_id, date_received DESC, ROWID DESC);\n";
    v12[1] = "DROP INDEX IF EXISTS\n   messages_mailbox_deleted_journaled_sender_vip_flags_conversation_id_date_sent_message_id_date_received_rowid_index;\n";
    v10 = _ExecuteQueries(a1, v12, 2u, @"Updating indexes for unread counts");
  }

  return v10;
}

BOOL _AddAppBadgeCountIndexes(sqlite3 *a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775358];
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:{&unk_1F2775370, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"thread_mailboxes" columnNames:&unk_1F2775388];
  v12[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v6 = [v5 ef_map:&__block_literal_global_925];
  v7 = [v6 arrayByAddingObjectsFromArray:&unk_1F27753A0];
  v8 = [v7 componentsJoinedByString:@"\n"];
  v9 = v8;
  v10 = [v8 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v10, 0, 0, 0);
  _HandleSQLiteError(a1, @"Creating indexes for app badge count");

  return v6 == 0;
}

uint64_t _protectedIndexHasBeenInitialized(void *a1)
{
  v1 = a1;
  if (([v1 protectedDatabaseAttached] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _protectedIndexHasBeenInitialized(EDPersistenceDatabaseConnection *__strong)"];
    [v4 handleFailureInFunction:v5 file:@"MFMailMessageLibraryMigrator.m" lineNumber:3194 description:@"Protected database must be attached"];
  }

  v2 = [v1 tableExists:@"addresses" inDatabase:@"protected"];

  return v2;
}

void sub_1B062EB78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL _ResetSummary(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "UPDATE messages SET summary = NULL WHERE summary in (select rowid from protected.summaries where summary = 'This message has no content');\nDELETE FROM protected.summaries where summary = 'This message has no content'\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Deleting all summaries = 'This message has no content' in protected data");
  return v2;
}

BOOL _AddSenderVIPAndConversationIndexes(sqlite3 *a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27753B8];
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:{&unk_1F27753D0, v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F27753E8];
  v11[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  v6 = [v5 ef_map:&__block_literal_global_943];
  v7 = [v6 componentsJoinedByString:@"\n"];
  v8 = v7;
  v9 = [v7 UTF8String];

  LODWORD(v6) = sqlite3_exec(a1, v9, 0, 0, 0);
  _HandleSQLiteError(a1, @"Adding sender_vip/conversation message indexes");

  return v6 == 0;
}

BOOL _AddDeletedToMessagesConversationIDIndexes(sqlite3 *a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775400];
  v3 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:{&unk_1F2775418, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775430];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775448];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"messages" columnNames:&unk_1F2775460];
  v14[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:5];

  v8 = [v7 ef_map:&__block_literal_global_981];
  v9 = [v8 arrayByAddingObjectsFromArray:&unk_1F2775478];
  v10 = [v9 componentsJoinedByString:@"\n"];
  v11 = v10;
  v12 = [v10 UTF8String];

  LODWORD(v8) = sqlite3_exec(a1, v12, 0, 0, 0);
  _HandleSQLiteError(a1, @"Adding deleted to conversation_id indexes");

  return v8 == 0;
}

BOOL _AddFilterIndexesAndRemoveTriggers(sqlite3 *a1)
{
  v36[4] = *MEMORY[0x1E69E9840];
  v26 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"mailbox"];
  v31 = [objc_alloc(MEMORY[0x1E699B908]) initWithColumnName:@"date_received"];
  v2 = [MEMORY[0x1E699B8C8] column:@"deleted"];
  v30 = [v2 equalTo:&unk_1F2775A18];

  v3 = [MEMORY[0x1E699B8C8] column:@"journaled"];
  v29 = [v3 equalTo:&unk_1F2775A18];

  v4 = [MEMORY[0x1E699B8C8] column:@"read"];
  v25 = a1;
  v28 = [v4 equalTo:&unk_1F2775A18];

  v5 = objc_alloc(MEMORY[0x1E699B900]);
  v35 = v31;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  v6 = objc_alloc(MEMORY[0x1E699B898]);
  v34[0] = v30;
  v34[1] = v29;
  v34[2] = v28;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  v7 = [v6 initWithExpressions:?];
  v8 = [v5 initWithName:@"messages_date_received_deleted0_journaled0_read0_index" tableName:@"messages" indexedColumns:v27 where:v7 unique:0];
  v36[0] = v8;
  v9 = objc_alloc(MEMORY[0x1E699B900]);
  v33[0] = v26;
  v33[1] = v31;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v11 = objc_alloc(MEMORY[0x1E699B898]);
  v32[0] = v30;
  v32[1] = v29;
  v32[2] = v28;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v13 = [v11 initWithExpressions:v12];
  v14 = [v9 initWithName:@"messages_mailbox_date_received_deleted0_journaled0_read0_index" tableName:@"messages" indexedColumns:v10 where:v13 unique:0];
  v36[1] = v14;
  v15 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"threads" columnNames:&unk_1F2775490];
  v36[2] = v15;
  v16 = [objc_alloc(MEMORY[0x1E699B900]) initWithTableName:@"threads" columnNames:&unk_1F27754A8];
  v36[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];

  v18 = [v17 ef_map:&__block_literal_global_1029];
  v19 = [v18 arrayByAddingObjectsFromArray:&unk_1F27754C0];
  v20 = [v19 componentsJoinedByString:@"\n"];
  v21 = v20;
  v22 = [v20 UTF8String];

  LODWORD(v18) = sqlite3_exec(v25, v22, 0, 0, 0);
  _HandleSQLiteError(v25, @"Creating indexes for unread filters and dropping triggers");

  return v18 == 0;
}

BOOL _ModifyMessagesSearchableMessageIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "DROP INDEX IF EXISTS messages_deleted_searchable_message_index;\nCREATE INDEX IF NOT EXISTS messages_searchable_message_deleted_index ON messages(searchable_message, deleted);\n", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Replacing messages_deleted_searchable_message_index with messages_searchable_message_deleted_index");
  return v2;
}

BOOL _AddMessagesMailboxDeletedDateReceivedIndex(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "CREATE INDEX IF NOT EXISTS messages_mailbox_deleted_date_received_index ON messages(mailbox, deleted, date_received) WHERE journaled = 0;", 0, 0, 0) == 0;
  _HandleSQLiteError(a1, @"Adding messages_mailbox_deleted_date_received_index");
  return v2;
}

uint64_t _UpdateGlobalIDIndex(void *a1)
{
  v1 = a1;
  v2 = [v1 executeStatementString:@"DROP INDEX IF EXISTS messages_global_message_id_index;" errorMessage:@"Unable to drop index messages_global_message_id_index"];
  v3 = objc_alloc(MEMORY[0x1E699B900]);
  v4 = [MEMORY[0x1E699B5C0] messagesTableName];
  v5 = [v3 initWithTableName:v4 columnNames:&unk_1F27754D8];

  v6 = [v5 definitionWithDatabaseName:0];
  if (v2)
  {
    v2 = [v1 executeStatementString:v6 errorMessage:@"Unable to add index messages_global_message_id_mailbox_index"];
  }

  return v2;
}

BOOL _AddDisplayDateColumn(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x1E699B420] runWithConnection:v1])
  {
    v2 = 0;
  }

  else
  {
    v2 = sqlite3_exec([v1 sqlDB], "CREATE INDEX IF NOT EXISTS messages_mailbox_deleted_display_date_index ON messages(mailbox, deleted, display_date) WHERE journaled = 0;CREATE INDEX IF NOT EXISTS messages_deleted_conversation_id_display_date_index ON messages(deleted, conversation_id, display_date);", 0, 0, 0) == 0;
  }

  return v2;
}

void _resetLocalAccountMboxCache()
{
  v0 = +[LocalAccount localAccount];
  v1 = [v0 mailboxCachePath];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v3 = [v2 removeItemAtPath:v1 error:&v9];
  v4 = v9;

  if (v3)
  {
    [v0 resetMailboxCache];
    v5 = [v0 sendLaterFolder];
    v6 = [v0 transientDraftsFolder];
    v7 = +[MailAccount outboxMailboxUid];
  }

  else
  {
    v8 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _resetLocalAccountMboxCache_cold_1();
    }
  }
}

uint64_t _AddFilterPredicateToInboxThreadScopes(void *a1, uint64_t a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = [v4 initWithResultColumn:*MEMORY[0x1E699B768] table:@"mailboxes"];
  v6 = [MEMORY[0x1E699B8C8] column:@"url"];
  v7 = [v6 endsWith:@"INBOX" caseSensitive:0];
  [v5 setWhere:v7];

  v8 = [objc_alloc(MEMORY[0x1E699B960]) initWithTable:@"thread_scopes" conflictResolution:4];
  v9 = [MEMORY[0x1E699B8C8] column:@"filter_predicate"];
  v10 = [MEMORY[0x1E699B8F8] ifNull:v9 second:&unk_1F2775A18];
  v11 = MEMORY[0x1E699B8B8];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v13 = [v11 or:v10 with:v12];
  [v8 setObject:v13 forKeyedSubscript:@"filter_predicate"];

  v14 = [MEMORY[0x1E699B8C8] column:@"mailbox_type"];
  v15 = [v14 equalTo:&unk_1F2775A30];

  v16 = [MEMORY[0x1E699B8C8] column:@"mailbox"];
  v17 = [v16 in:v5];

  v18 = MEMORY[0x1E699B928];
  v23[0] = v15;
  v23[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v20 = [v18 combined:v19];
  [v8 setWhereClause:v20];

  v21 = [v3 executeUpdateStatement:v8 error:0];
  return v21;
}

void sub_1B062FB34(_Unwind_Exception *a1)
{
  v10 = v6;

  _Unwind_Resume(a1);
}

BOOL _AddFollowUpWarningJsonStringForModelEvaluationForSuggestionsColumn(void *a1)
{
  v1 = a1;
  v2 = sqlite3_exec([v1 sqlDB], "ALTER TABLE message_global_data ADD COLUMN follow_up_jsonstringformodelevaluationforsuggestions TEXT COLLATE BINARY;CREATE INDEX IF NOT EXISTS message_global_data_follow_up_jsonstringformodelevaluationforsuggestions_index ON message_global_data(follow_up_jsonstringformodelevaluationforsuggestions);", 0, 0, 0) == 0;

  return v2;
}

BOOL _AddMessagesGlobalMessageIDUnreadUndeletedIndex(void *a1)
{
  v1 = a1;
  v2 = sqlite3_exec([v1 sqlDB], "CREATE INDEX IF NOT EXISTS messages_read_deleted_global_message_id_mailbox_read0_deleted0_index ON messages(read, deleted, global_message_id, mailbox) WHERE (read = 0 AND deleted = 0);", 0, 0, 0) == 0;

  return v2;
}

BOOL _addThreadNewestMessageColumn(void *a1)
{
  v1 = a1;
  v2 = sqlite3_exec([v1 sqlDB], "ALTER TABLE threads ADD COLUMN newest_message INTEGER REFERENCES messages(ROWID) ON DELETE SET NULL;CREATE INDEX IF NOT EXISTS threads_newest_message_index ON threads(newest_message);", 0, 0, 0) == 0;

  return v2;
}

void _removeUnsedIndices(void *a1)
{
  v1 = a1;
  sqlite3_exec([v1 sqlDB], "DROP INDEX IF EXISTS messages_message_id_mailbox_index;DROP INDEX IF EXISTS messages_date_last_viewed_index;DROP INDEX IF EXISTS messages_list_id_hash_index;DROP INDEX IF EXISTS messages_conversation_id_mailbox_sender_date_received_deleted_index;DROP INDEX IF EXISTS messages_mailbox_visible_date_received_rowid_index;DROP INDEX IF EXISTS messages_content_index_transaction_id_deleted_date_received_rowid_index;DROP INDEX IF EXISTS messages_mailbox_content_index_transaction_id_flags_date_received_index;DROP INDEX IF EXISTS messages_journaled_conversation_id_date_received_index;DROP INDEX IF EXISTS messages_deleted_sender_vip_date_received_index;DROP INDEX IF EXISTS messages_date_received_deleted0_journaled0_read0_index;DROP INDEX IF EXISTS messages_mailbox_date_received_deleted0_journaled0_read0_index;", 0, 0, 0);
}

void sub_1B06300BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0630370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_1B0630640(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t _ExecuteSQL(sqlite3 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && !sqlite3_exec(a1, [v5 UTF8String], 0, 0, 0))
  {
    v7 = 1;
  }

  else
  {
    _HandleSQLiteError(a1, v6);
    v7 = 0;
  }

  return v7;
}

id _SQLFromFile(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"triggers.sql" ofType:0];

  if (v3)
  {
    v9 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:v3 encoding:4 error:&v9];
    v5 = v9;
    if (!v4)
    {
      v6 = +[MFMailMessageLibraryMigrator log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 ef_publicDescription];
        *buf = 138412546;
        v11 = v3;
        v12 = 2114;
        v13 = v7;
        _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Error: failed to get contents of %@: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = +[MFMailMessageLibraryMigrator log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = @"triggers.sql";
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Error: failed to find %@", buf, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t _ExecuteQueries(sqlite3 *a1, const char **a2, unsigned int a3, void *a4)
{
  v7 = a4;
  if (a3 < 1)
  {
    v10 = 1;
  }

  else
  {
    v8 = a3;
    v9 = 1;
    do
    {
      v10 = executeQuery(1, a1, *a2, v7);
      v11 = v9 < v8;
      ++a2;
      ++v9;
    }

    while ((v11 & v10 & 1) != 0);
  }

  return v10;
}

uint64_t executeQuery(int a1, sqlite3 *a2, const char *a3, void *a4)
{
  LODWORD(v6) = a1;
  v7 = a4;
  LODWORD(a3) = sqlite3_exec(a2, a3, 0, 0, 0);
  _HandleSQLiteError(a2, v7);
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v6;
  }

  return v6;
}

void sub_1B0632880(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0632FAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0636F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B06386A0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void sub_1B06388C4(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 2);

  _Unwind_Resume(a1);
}

void sub_1B06393F8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0639A2C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B063A278(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B063ABF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B063ADF8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B063DC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);

  _Unwind_Resume(a1);
}

void sub_1B063F110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, _Unwind_Exception *exception_objecta, void *a35, void *a36)
{
  _Block_object_dispose(&STACK[0x2A0], 8);

  _Block_object_dispose(&STACK[0x2D0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B064029C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v10)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1B06417AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1B0642E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19)
{
  objc_destroyWeak((v22 + 88));

  objc_destroyWeak((v23 - 72));
  _Unwind_Resume(a1);
}

void sub_1B06431A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  objc_destroyWeak((v35 + 104));

  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_1B0643998(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B0643AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, os_activity_scope_state_s a9)
{
  os_activity_scope_leave(&a9);

  _Unwind_Resume(a1);
}

void sub_1B06446BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1B06457C4(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

__CFString *basicSearchExpressionFromCriterion(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 criterionType] == 25)
  {
    [v1 criteria];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v2 = v9 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = basicSearchExpressionFromCriterion(*(*(&v8 + 1) + 8 * v5));
        if (v6)
        {
          break;
        }

        if (v3 == ++v5)
        {
          v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          v6 = 0;
          break;
        }
      }
    }

    else
    {
      v6 = &stru_1F273A5E0;
    }
  }

  else
  {
    v6 = [v1 expression];
  }

  return v6;
}

void sub_1B0649398(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B064A444(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMessageLoadingContext;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B064AB34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _contentLoadedEmptyDocument(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 firstObject];
  if ([v3 count] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (a2)
    {
      v5 = [v4 isVisuallyEmpty];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1B064D790(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B064EFA0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B064F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t MFErrorCodeWithDataStatus(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return -1;
  }

  else
  {
    return qword_1B0E977B8[a1 - 1];
  }
}

void sub_1B0651DE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFNetworkController;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B0652C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v24 - 72));

  _Unwind_Resume(a1);
}

void sub_1B0653624(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0653AD8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFNWConnectionWrapper;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B065548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNNMKContentAttributedStringHTMLParserClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNNMKContentAttributedStringHTMLParserClass_softClass;
  v7 = getNNMKContentAttributedStringHTMLParserClass_softClass;
  if (!getNNMKContentAttributedStringHTMLParserClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNNMKContentAttributedStringHTMLParserClass_block_invoke;
    v3[3] = &unk_1E7AA65C8;
    v3[4] = &v4;
    __getNNMKContentAttributedStringHTMLParserClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B06598B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNNMKAttachmentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNNMKAttachmentClass_softClass;
  v7 = getNNMKAttachmentClass_softClass;
  if (!getNNMKAttachmentClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNNMKAttachmentClass_block_invoke;
    v3[3] = &unk_1E7AA65C8;
    v3[4] = &v4;
    __getNNMKAttachmentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B06599D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNNMKMessageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNNMKMessageClass_softClass;
  v7 = getNNMKMessageClass_softClass;
  if (!getNNMKMessageClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNNMKMessageClass_block_invoke;
    v3[3] = &unk_1E7AA65C8;
    v3[4] = &v4;
    __getNNMKMessageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B0659B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0659C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0659D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0659F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void __getNNMKContentAttributedStringHTMLParserClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKContentAttributedStringHTMLParser");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKContentAttributedStringHTMLParserClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKContentAttributedStringHTMLParserClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:25 description:{@"Unable to find class %s", "NNMKContentAttributedStringHTMLParser"}];

    __break(1u);
  }
}

void NanoMailKitServerLibrary()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NanoMailKitServerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/NanoMailKitServer.framework/NanoMailKitServer";
    NanoMailKitServerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoMailKitServerLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoMailKitServerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFParseMessageForWatch.m" lineNumber:23 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __NanoMailKitServerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoMailKitServerLibraryCore_frameworkLibrary = result;
  return result;
}

void __getNNMKAttachmentClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKAttachment");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKAttachmentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:28 description:{@"Unable to find class %s", "NNMKAttachment"}];

    __break(1u);
  }
}

void __getNNMKMessageClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKMessage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKMessageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:34 description:{@"Unable to find class %s", "NNMKMessage"}];

    __break(1u);
  }
}

void __getNNMKMessageContentClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKMessageContent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKMessageContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKMessageContentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:37 description:{@"Unable to find class %s", "NNMKMessageContent"}];

    __break(1u);
  }
}

void __getNNMKImageAttachmentClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKImageAttachment");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKImageAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKImageAttachmentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:31 description:{@"Unable to find class %s", "NNMKImageAttachment"}];

    __break(1u);
  }
}

void __getNNMKImageUtilityClass_block_invoke(uint64_t a1)
{
  NanoMailKitServerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NNMKImageUtility");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNNMKImageUtilityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNNMKImageUtilityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFParseMessageForWatch.m" lineNumber:40 description:{@"Unable to find class %s", "NNMKImageUtility"}];

    __break(1u);
  }
}

uint64_t __powerLogIdentifier_block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  powerLogIdentifier_identifier = result;
  return result;
}

void sub_1B065CB8C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1B065D21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B065D2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B065EE20(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1B065F004(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B065F980(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFPowerController;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B065FDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void MFUnregisterPowerObserver(void *a1)
{
  v1 = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __MFUnregisterPowerObserver_block_invoke;
  v4[3] = &unk_1E7AA25C0;
  v2 = v1;
  v5 = v2;
  v3 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v3 performBlock:v4];
}

void *__getPLShouldLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLShouldLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLShouldLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *PowerLogLibrary()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PowerLogLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog";
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PowerLogLibraryCore_frameworkLibrary;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PowerLogLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MFPowerController.m" lineNumber:38 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __PowerLogLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getPLLogRegisteredEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLogRegisteredEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B0662620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1B0662874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B066320C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B0663418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0663D9C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0664E84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B06656A8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1B066653C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1B0666CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B06682F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MFSecureMIMECompositionManager;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id checkCertificateExpiration(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  SecCertificateNotValidBefore();
  v6 = v5;
  SecCertificateNotValidAfter();
  if (Current >= v6)
  {
    v10 = v7;
    if (Current <= v7)
    {
      v12 = 0;
      v11 = 0;
      goto LABEL_11;
    }

    v8 = MFLookupLocalizedString(@"MF_SMIME_CERTIFICATE_EXPIRED_FORMAT", @"The certificate for the address “%@” expired on %@.", @"Delayed");
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v10];
  }

  else
  {
    v8 = MFLookupLocalizedString(@"MF_SMIME_CERTIFICATE_NOT_YET_VALID_FORMAT", @"The certificate for the address “%@” is not valid until %@.", @"Delayed");
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v6];
  }

  v11 = v9;
  v12 = v8;
  if (!v8)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  if (!v9)
  {
    __assert_rtn("checkCertificateExpiration", "MFSecureMIMECompositionManager.m", 856, "date");
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v13 setDateStyle:3];
  [v13 setTimeStyle:3];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [v13 stringFromDate:v11];
  v16 = [v14 stringWithFormat:v12, v3, v15];

  v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v16];
  v18 = MFLogGeneral();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v17 ef_publicDescription];
    *buf = 138412802;
    v22 = a1;
    v23 = 2112;
    v24 = v3;
    v25 = 2114;
    v26 = v19;
    _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "#SMIMEErrors Certificate %@ for address %@ is not currently valid: %{public}@", buf, 0x20u);
  }

LABEL_12:

  return v17;
}

uint64_t MFHasAccountsEntitlement(uint64_t a1, uint64_t a2)
{
  if (MFHasAccountsEntitlement_once != -1)
  {
    MFHasAccountsEntitlement_cold_1();
  }

  return MFHasAccountsEntitlement___hasAccountsEntitlement;
}

void __MFHasAccountsEntitlement_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValuesForEntitlements(v0, &unk_1F27756E8, 0);
    CFRelease(v1);
    MFHasAccountsEntitlement___hasAccountsEntitlement = [(__CFDictionary *)v2 count]!= 0;
  }
}

void sub_1B066AF58(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B066B9D8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B066D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose((v30 - 112), 8);

  _Unwind_Resume(a1);
}

id _createParameterStringFromBytes(const UInt8 **a1, const UInt8 *a2)
{
  v4 = *a1;
  v5 = MEMORY[0x1E69E9830];
  if (*a1 < a2)
  {
    while (1)
    {
      v6 = *v4;
      if ((v6 & 0x80000000) != 0)
      {
        if (!__maskrune(v6, 0x4000uLL))
        {
LABEL_8:
          v4 = *a1;
          break;
        }
      }

      else if ((*(v5 + 4 * v6 + 60) & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      *a1 = ++v4;
      if (v4 == a2)
      {
        v4 = a2;
        break;
      }
    }
  }

  v7 = (v4 + 1);
  if (v4 + 1 >= a2)
  {
    v8 = 0;
    v7 = a2;
  }

  else
  {
    v8 = 0;
    v9 = &a2[~v4];
    do
    {
      v10 = *v7;
      if ((v10 & 0x80000000) != 0)
      {
        if (__maskrune(*v7, 0x4000uLL))
        {
          goto LABEL_23;
        }
      }

      else if ((*(v5 + 4 * v10 + 60) & 0x4000) != 0)
      {
        goto LABEL_23;
      }

      if (v8)
      {
        v8 = 1;
      }

      else
      {
        if ((v10 & 0x80000000) != 0)
        {
          v11 = __maskrune(v10, 0x1000uLL);
        }

        else
        {
          v11 = *(v5 + 4 * v10 + 60) & 0x1000;
        }

        v8 = v11 != 0;
      }

      ++v7;
      --v9;
    }

    while (v9);
    v7 = a2;
LABEL_23:
    v4 = *a1;
  }

  if (v4 >= v7)
  {
    v13 = 0;
  }

  else
  {
    v12 = CFStringCreateWithBytes(0, v4, &v7[-v4], 0x600u, 0);
    v13 = v12;
    if (v12 != 0 && v8)
    {
      v14 = [(__CFString *)v12 uppercaseString];

      v13 = v14;
    }
  }

  if (v7 + 1 < a2)
  {
    v15 = v7 + 1;
  }

  else
  {
    v15 = a2;
  }

  *a1 = v15;

  return v13;
}

void sub_1B067151C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1B06718F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void probeMessageUpdate(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 >= 5)
  {
    v5 = sqlite3_context_db_handle(a1);
    v6 = sqlite3_value_int64(*a3);
    v7 = sqlite3_value_int64(a3[1]);
    v8 = sqlite3_value_int64(a3[2]);
    v9 = sqlite3_value_int64(a3[3]);
    v10 = sqlite3_value_int64(a3[4]);
    v23 = duplicateMessageIDs(v5, v9, v6, v10);
    v11 = unreadCountForMailbox(v5, v10);
    v12 = (v8 & 0x100080) == 0 && [v23 count] == 0;
    v13 = v11 + v12;
    if (v8)
    {
      v13 = v11;
    }

    v14 = v11 - v12;
    if ((v8 & 1) == 0)
    {
      v14 = v11;
    }

    if (v7)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v16 appendFormat:@"ROW: %lld; ", v6];
    [v16 appendFormat:@"Count: %ld -> %ld; ", v11, v15];
    objc_msgSend(v16, "appendFormat:", @"Flags: %llu -> %llu ("), v7, v8;
    v17 = NSStringFromBOOL();
    v18 = NSStringFromBOOL();
    [v16 appendFormat:@"R: %@ -> %@ | ", v17, v18];

    v19 = NSStringFromBOOL();
    v20 = NSStringFromBOOL();
    [v16 appendFormat:@"SR: %@ -> %@ | ", v19, v20];

    v21 = NSStringFromBOOL();
    v22 = NSStringFromBOOL();
    [v16 appendFormat:@"TSR: %@ -> %@; "], v21, v22);

    [v16 appendFormat:@"dup msgs: %lu;", objc_msgSend(v23, "count")];
    probUnreadLog(@"#Update", v16);
    sqlite3_result_null(a1);
  }
}

void probeMessageAdd(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 >= 4)
  {
    v5 = sqlite3_context_db_handle(a1);
    v6 = sqlite3_value_int64(*a3);
    v7 = sqlite3_value_int64(a3[1]);
    v8 = sqlite3_value_int64(a3[2]);
    v9 = sqlite3_value_int64(a3[3]);
    v16 = duplicateMessageIDs(v5, v8, v6, v9);
    v10 = unreadCountForMailbox(v5, v9);
    v11 = (v7 & 0x100081) == 0 && [v16 count] == 0;
    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v12 appendFormat:@"ROW: %lld; ", v6];
    [v12 appendFormat:@"Count: %ld -> %ld; ", v10, v11 + v10];
    objc_msgSend(v12, "appendFormat:", @"Flags: %llu ("), v7;
    v13 = NSStringFromBOOL();
    [v12 appendFormat:@"R: %@ | ", v13];

    v14 = NSStringFromBOOL();
    [v12 appendFormat:@"SR: %@ | ", v14];

    v15 = NSStringFromBOOL();
    [v12 appendFormat:@"TSR: %@; "], v15);

    [v12 appendFormat:@"dup msgs: %lu;", objc_msgSend(v16, "count")];
    probUnreadLog(@"#Add", v12);
    sqlite3_result_null(a1);
  }
}

void probeMessageDelete(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 >= 4)
  {
    v5 = sqlite3_context_db_handle(a1);
    v6 = sqlite3_value_int64(*a3);
    v7 = sqlite3_value_int64(a3[1]);
    v8 = sqlite3_value_int64(a3[2]);
    v9 = sqlite3_value_int64(a3[3]);
    v16 = duplicateMessageIDs(v5, v8, v6, v9);
    v10 = unreadCountForMailbox(v5, v9);
    if ((v7 & 0x100081) != 0)
    {
      v11 = 0;
    }

    else if ([v16 count])
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v12 appendFormat:@"ROW: %lld; ", v6];
    [v12 appendFormat:@"Count: %ld -> %ld; ", v10, v11 + v10];
    objc_msgSend(v12, "appendFormat:", @"Flags: %llu ("), v7;
    v13 = NSStringFromBOOL();
    [v12 appendFormat:@"R: %@ | ", v13];

    v14 = NSStringFromBOOL();
    [v12 appendFormat:@"SR: %@ | ", v14];

    v15 = NSStringFromBOOL();
    [v12 appendFormat:@"TSR: %@; "], v15);

    [v12 appendFormat:@"dup msgs: %lu;", objc_msgSend(v16, "count")];
    probUnreadLog(@"#Delete", v12);
    sqlite3_result_null(a1);
  }
}

id duplicateMessageIDs(sqlite3 *a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  ppStmt = 0;
  sqlite3_prepare_v2(a1, "SELECT message_id FROM messages WHERE message_id = ? AND rowid != ? AND flags&2 > 0 AND mailbox = ? AND (flags&1 = 0 AND flags&128 = 0 AND flags&1048576 = 0)", -1, &ppStmt, 0);
  if (ppStmt)
  {
    sqlite3_bind_int64(ppStmt, 1, a2);
    sqlite3_bind_int64(ppStmt, 2, a3);
    sqlite3_bind_int64(ppStmt, 3, a4);
    while (sqlite3_step(ppStmt) == 100)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(ppStmt, 0)}];
      [v8 addObject:v9];
    }

    sqlite3_finalize(ppStmt);
  }

  return v8;
}

uint64_t unreadCountForMailbox(sqlite3 *a1, sqlite3_int64 a2)
{
  ppStmt = 0;
  sqlite3_prepare_v2(a1, "SELECT unread_count FROM mailboxes WHERE ROWID = ?", -1, &ppStmt, 0);
  if (!ppStmt)
  {
    return 0;
  }

  sqlite3_bind_int64(ppStmt, 1, a2);
  if (sqlite3_step(ppStmt) == 100)
  {
    v3 = sqlite3_column_int(ppStmt, 0);
  }

  else
  {
    v3 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

void probUnreadLog(__CFString *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = &stru_1F273A5E0;
  if (a1)
  {
    v4 = a1;
  }

  v5 = v4;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = [v3 UTF8String];
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#UnreadCount [UnreadCount] %@ %s", &v7, 0x16u);
  }
}

void sub_1B0673558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void _removeDestructionHandler(void *a1, void *a2)
{
  object = a1;
  v3 = a2;
  v4 = objc_getAssociatedObject(object, v3);
  [v4 setCache:0];
  objc_setAssociatedObject(object, v3, 0, 1);
}

BOOL _releaseTopStackEntry(uint64_t a1)
{
  v2 = _peekCommandStackEntry(a1);
  v3 = v2;
  if (v2)
  {
    if ([**v2 isEqualToString:@"nofill"])
    {
      *(a1 + 208) = *(a1 + 208) & 0xC0000000 | (*(a1 + 208) - 1) & 0x3FFFFFFF;
    }

    v4 = *(a1 + 224);
    Count = CFArrayGetCount(v4);
    CFArrayRemoveValueAtIndex(v4, Count - 1);
    v6 = v3[1];
    if (v6)
    {
    }

    free(v3);
  }

  return v3 != 0;
}

CFIndex _currentAttributeOfType(uint64_t a1, int a2)
{
  result = CFArrayGetCount(*(a1 + 224));
  if (result)
  {
    v5 = result - 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 224), v5);
      if (((*(*ValueAtIndex + 8) >> 3) & 3) == a2)
      {
        result = ValueAtIndex[1];
      }

      else
      {
        result = 0;
      }

      v7 = v5-- != 0;
    }

    while (v7 && !result);
  }

  return result;
}

CFStringRef _copyNextToken(uint64_t a1, CFCharacterSetRef theSet)
{
  v4 = *(a1 + 192);
  if (v4 < *(a1 + 200))
  {
    if (v4 < 0)
    {
      if (CFCharacterSetIsCharacterMember(theSet, 0))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v5 = a1 + 8;
      v6 = *(a1 + 168);
      if (v6 <= v4)
      {
        v8 = 0;
      }

      else
      {
        v7 = *(a1 + 144);
        if (v7)
        {
          v8 = *(v7 + 2 * *(a1 + 160) + 2 * v4);
        }

        else
        {
          v28 = *(a1 + 152);
          if (v28)
          {
            v8 = *(v28 + *(a1 + 160) + v4);
          }

          else
          {
            if (*(a1 + 184) <= v4 || (v30 = *(a1 + 176), v30 > v4))
            {
              v31 = v4 - 4;
              if (v4 < 4)
              {
                v31 = 0;
              }

              if (v31 + 64 < v6)
              {
                v6 = v31 + 64;
              }

              *(a1 + 176) = v31;
              *(a1 + 184) = v6;
              v36.length = v6 - v31;
              v36.location = *(a1 + 160) + v31;
              CFStringGetCharacters(*(a1 + 136), v36, (a1 + 8));
              v30 = *(a1 + 176);
            }

            v8 = *(v5 + 2 * (v4 - v30));
          }
        }
      }

      if (CFCharacterSetIsCharacterMember(theSet, v8))
      {
        v9 = *(a1 + 168);
        if (v9 > v4)
        {
          v10 = *(a1 + 144);
          if (v10)
          {
            v11 = *(v10 + 2 * *(a1 + 160) + 2 * v4);
          }

          else
          {
            v29 = *(a1 + 152);
            if (v29)
            {
              v11 = *(v29 + *(a1 + 160) + v4);
            }

            else
            {
              if (*(a1 + 184) <= v4 || (v32 = *(a1 + 176), v32 > v4))
              {
                v33 = v4 - 4;
                if (v4 < 4)
                {
                  v33 = 0;
                }

                if (v33 + 64 < v9)
                {
                  v9 = v33 + 64;
                }

                *(a1 + 176) = v33;
                *(a1 + 184) = v9;
                v37.length = v9 - v33;
                v37.location = *(a1 + 160) + v33;
                CFStringGetCharacters(*(a1 + 136), v37, (a1 + 8));
                v32 = *(a1 + 176);
              }

              v11 = *(v5 + 2 * (v4 - v32));
            }
          }

          goto LABEL_41;
        }

LABEL_40:
        v11 = 0;
LABEL_41:
        ++v4;
        chars = v11;
        result = CFStringCreateWithCharacters(0, &chars, 1);
        goto LABEL_44;
      }
    }
  }

  if (v4 >= *(a1 + 200))
  {
    result = 0;
    goto LABEL_44;
  }

  v12 = -v4;
  v13 = v4 + 64;
  v14 = v4;
  do
  {
    if (v14 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v14;
    }

    if (v14 < 0 || (v16 = *(a1 + 168), v16 <= v14))
    {
      v19 = 0;
    }

    else
    {
      v17 = *(a1 + 144);
      if (v17)
      {
        v18 = v17 + 2 * *(a1 + 160);
      }

      else
      {
        v20 = *(a1 + 152);
        if (v20)
        {
          v19 = *(v20 + *(a1 + 160) + v14);
          goto LABEL_24;
        }

        if (*(a1 + 184) <= v14 || (v21 = *(a1 + 176), v21 > v14))
        {
          v22 = -v15;
          v23 = v15 + v12;
          v24 = v13 - v15;
          v25 = v14 + v22;
          v26 = v25 + 64;
          if (v25 + 64 >= v16)
          {
            v26 = *(a1 + 168);
          }

          *(a1 + 176) = v25;
          *(a1 + 184) = v26;
          if (v16 >= v24)
          {
            v16 = v24;
          }

          v35.location = v25 + *(a1 + 160);
          v35.length = v16 + v23;
          CFStringGetCharacters(*(a1 + 136), v35, (a1 + 8));
          v21 = *(a1 + 176);
        }

        v18 = a1 + 8 - 2 * v21;
      }

      v19 = *(v18 + 2 * v14);
    }

LABEL_24:
    if (CFCharacterSetIsCharacterMember(theSet, v19))
    {
      break;
    }

    ++v14;
    --v12;
    ++v13;
  }

  while (v14 < *(a1 + 200));
  if (v14 <= v4)
  {
    result = 0;
  }

  else
  {
    v38.location = v4;
    v38.length = v14 - v4;
    result = CFStringCreateWithSubstring(0, *(a1 + 136), v38);
  }

  v4 = v14;
LABEL_44:
  *(a1 + 192) = v4;
  return result;
}

const void *_peekCommandStackEntry(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 224));
  v3 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v4 = *(a1 + 224);

  return CFArrayGetValueAtIndex(v4, v3);
}

id MFMimeDataCreateStringFromHeaderBytes()
{
  v0 = _MFCreateStringFromHeaderBytes();

  return v0;
}

void sub_1B0676528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1B067662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t EFBreakIfInDebugger()
{
  v6 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[8] = 0;
  *v3 = 0xE00000001;
  v4 = 1;
  v5 = getpid();
  v1 = 648;
  result = sysctl(v3, 4u, __b, &v1, 0, 0);
  if (!result && (__b[8] & 0x800) != 0)
  {
    __debugbreak();
  }

  return result;
}

void sub_1B0678B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0678CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *MFCreateStringByCondensingWhitespace(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MFGetMappedAllocator();
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = [(__CFString *)a1 length];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33 = v5;
  v34 = v5;
  v31 = v5;
  v32 = v5;
  v29 = v5;
  v30 = v5;
  *buffer = v5;
  v28 = v5;
  v35 = a1;
  v38 = 0;
  v39 = v4;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v37 = CStringPtr;
  v40 = 0;
  v41 = 0;
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    for (i = 64; ; ++i)
    {
      if (v10 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v10;
      }

      if (v10 < 0 || (v13 = v39, v39 <= v10))
      {
        chars = 0;
        goto LABEL_15;
      }

      if (v36)
      {
        break;
      }

      if (!v37)
      {
        if (v41 <= v10 || (v19 = v40, v40 > v10))
        {
          v20 = -v12;
          v21 = v12 + v8;
          v22 = i - v12;
          v23 = v10 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v39)
          {
            v24 = v39;
          }

          v40 = v23;
          v41 = v24;
          if (v39 >= v22)
          {
            v13 = v22;
          }

          v42.location = v23 + v38;
          v42.length = v13 + v21;
          CFStringGetCharacters(v35, v42, buffer);
          v19 = v40;
        }

        v14 = &buffer[-v19];
        goto LABEL_13;
      }

      v15 = v37[v38 + v10];
LABEL_18:
      chars = v15;
      v16 = v15;
      v17 = (1 << v15) & 0x100002600;
      if (v16 <= 0x20 && v17 != 0)
      {
        if (!((v10 == 0) | v9 & 1))
        {
          CFStringAppend(Mutable, @" ");
        }

        v9 = 1;
        goto LABEL_25;
      }

LABEL_15:
      CFStringAppendCharacters(Mutable, &chars, 1);
      v9 = 0;
LABEL_25:
      ++v10;
      --v8;
      if (v4 == v10)
      {
        return Mutable;
      }
    }

    v14 = &v36[v38];
LABEL_13:
    v15 = v14[v10];
    goto LABEL_18;
  }

  return Mutable;
}

uint64_t MFCopyResponseDataForURLRequest(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = MFUserAgent();
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 sourceApplicationBundleIdentifier];
  }

  else
  {
    v5 = 0;
  }

  v6 = EFCopyResponseDataForURLRequest();

  return v6;
}

void sub_1B067DC6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _ExtractContentWithTag(uint64_t a1, int a2)
{
  v3 = SecCmsMessageContentLevelCount();
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    SecCmsMessageContentLevel();
    if (SecCmsContentInfoGetContentTypeTag() == a2)
    {
      result = SecCmsContentInfoGetContent();
      if (result)
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B0681F10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _MFSecCMSDecoder;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B0682B08(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_1B06843E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _MFSecCMSEncoder;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B0685664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

__CFString *MFMFSMTPFailureReasonString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"MFSMTPFailureReasonUnknown";
  }

  else
  {
    return off_1E7AA7D80[a1];
  }
}

void sub_1B06872D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B06875E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1B0687C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0688058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sqlite3_exec_printf(sqlite3 *a1, char *a2, int (__cdecl *a3)(void *, int, char **, char **), void *a4, char **a5, ...)
{
  va_start(va, a5);
  v9 = sqlite3_vmprintf(a2, va);
  v10 = sqlite3_exec(a1, v9, a3, a4, a5);
  sqlite3_free(v9);
  return v10;
}

void MFLogSQLiteError(sqlite3 *a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 10)
  {
    __errnum = 0;
    sqlite3_file_control(a1, 0, 4, &__errnum);
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = sqlite3_errmsg(a1);
      v9 = __errnum;
      v10 = strerror(__errnum);
      *buf = 67110402;
      v13 = a2;
      v14 = 2048;
      v15 = a1;
      v16 = 2114;
      v17 = v5;
      v18 = 2082;
      v19 = v8;
      v20 = 1024;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      _os_log_error_impl(&dword_1B0389000, v6, OS_LOG_TYPE_ERROR, "Error %d on connection %p %{public}@: %{public}s - I/O error %d (%s)", buf, 0x36u);
    }
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      v13 = a2;
      v14 = 2048;
      v15 = a1;
      v16 = 2114;
      v17 = v5;
      v18 = 2082;
      v19 = sqlite3_errmsg(a1);
      _os_log_error_impl(&dword_1B0389000, v7, OS_LOG_TYPE_ERROR, "Error %d on connection %p %{public}@: %{public}s", buf, 0x26u);
    }
  }
}

__CFString *MFNSStringFromColumnInStatement(sqlite3_stmt *a1, int a2)
{
  v2 = sqlite3_column_text(a1, a2);
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v2];
  }

  else
  {
    v3 = &stru_1F273A5E0;
  }

  return v3;
}

id MFDatabaseEncodedStringForAddressList(void *a1)
{
  v1 = [a1 componentsJoinedByString:@"\r\r\n"];

  return v1;
}

id MFAddressListFromDatabaseEncodedString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 componentsSeparatedByString:@"\r\r\n"];
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  if (v1)
  {
    v2 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_6:

  return v3;
}

UChar *_ICUSQLiteMatch(const char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  pErrorCode = U_ZERO_ERROR;
  v8 = *(a4 + 160);
  if (!strcmp(v8, a2) && *(a4 + 176))
  {
    goto LABEL_19;
  }

  pDestLength = 0;
  v9 = strlen(a2);
  if (v9)
  {
    v10 = v9;
    v11 = v9 + 1;
    if (v9 + 1 <= *(a4 + 168))
    {
      v11 = *(a4 + 168);
    }

    else
    {
      v12 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
      if (!v12)
      {
        return 0;
      }

      v8 = v12;
      v13 = *(a4 + 160);
      if (v13 != (a4 + 32))
      {
        free(v13);
      }

      *(a4 + 160) = v8;
      *(a4 + 168) = v11;
    }

    strlcpy(v8, a2, v11);
    u_strFromUTF8(*(a4 + 176), *(a4 + 184), &pDestLength, a2, v10, &pErrorCode);
    if (pErrorCode != U_BUFFER_OVERFLOW_ERROR && *(a4 + 176))
    {
      goto LABEL_17;
    }

    v14 = malloc_type_malloc(2 * pDestLength + 2, 0x1000040BDFB0063uLL);
    if (v14)
    {
      v15 = v14;
      v16 = *(a4 + 176);
      if (v16)
      {
        free(v16);
      }

      *(a4 + 176) = v15;
      v17 = pDestLength + 1;
      *(a4 + 184) = pDestLength + 1;
      pErrorCode = U_ZERO_ERROR;
      u_strFromUTF8(v15, v17, &pDestLength, a2, v10, &pErrorCode);
LABEL_17:
      usearch_setPattern();
      if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        **(a4 + 160) = 0;
        return 0;
      }

LABEL_19:
      v27 = 0;
      v18 = strlen(a1);
      if (v18 < 1)
      {
        return 0;
      }

      u_strFromUTF8(*(a4 + 192), *(a4 + 712), &v27, a1, v18, &pErrorCode);
      if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
      {
        result = malloc_type_malloc(2 * v27 + 2, 0x1000040BDFB0063uLL);
        if (!result)
        {
          return result;
        }

        v20 = result;
        v21 = *(a4 + 192);
        if (v21 != (a4 + 200))
        {
          free(v21);
        }

        *(a4 + 192) = v20;
        v22 = v27 + 1;
        *(a4 + 712) = v27 + 1;
        pErrorCode = U_ZERO_ERROR;
        u_strFromUTF8(v20, v22, &v27, a1, v18, &pErrorCode);
      }

      usearch_setText();
      if (a3 == 3)
      {
        v23 = usearch_last();
        if (v23 != -1)
        {
          v24 = usearch_getMatchedLength() + v23 == v27;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v25 = usearch_first();
      v26 = 0;
      if (a3 <= 1)
      {
        if (!a3)
        {
          v26 = v25 != -1;
          return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v26);
        }

        if (a3 == 1)
        {
          v24 = v25 == -1;
          goto LABEL_41;
        }

        return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v26);
      }

      if (a3 == 2)
      {
        v24 = v25 == 0;
      }

      else
      {
        if (a3 != 4)
        {
          return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v26);
        }

        if (v25)
        {
LABEL_37:
          v26 = 0;
          return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v26);
        }

        v24 = usearch_getMatchedLength() == v27;
      }

LABEL_41:
      v26 = v24;
      return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v26);
    }
  }

  return 0;
}

void ICUSearch(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v11 = v7;
      v12 = sqlite3_user_data(a1);
      v13 = _ICUSQLiteMatch(v5, v6, v11, v12);
      v14 = a1;
LABEL_13:

      sqlite3_result_int(v14, v13);
      return;
    }

    if (v6 && v7 == 1)
    {
      v14 = a1;
      v13 = 1;
      goto LABEL_13;
    }

    sqlite3_result_null(a1);
  }

  else
  {
    sqlite3_result_null(a1);
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15[0] = 67109120;
      v15[1] = a2;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "wrong number of arguments (%d) to icusearch", v15, 8u);
    }
  }
}

void CPSearch(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = sqlite3_value_text(a3[1]);
    v7 = sqlite3_value_int(a3[2]);
    v8 = v7;
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v14 = sqlite3_user_data(a1);
      if ([v14 lastSearchStringLength] && !strcmp(v6, objc_msgSend(v14, "lastSearchString")))
      {
        v15 = [v14 lastMatcher];
      }

      else
      {
        v15 = strlen(v6);
        if (v15)
        {
          if ([v14 lastSearchString])
          {
            free([v14 lastSearchString]);
          }

          [v14 setLastSearchString:strdup(v6)];
          [v14 setLastSearchStringLength:v15];
          v16 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:objc_msgSend(v14 length:"lastSearchString") freeWhenDone:{v15, 0}];
          v17 = [v14 matchers];
          v15 = [v17 objectForKeyedSubscript:v16];

          if (!v15)
          {
            v18 = objc_alloc(MEMORY[0x1E698B6A8]);
            v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
            v15 = [v18 initWithSearchString:v19 options:(*MEMORY[0x1E698B6E0] | *MEMORY[0x1E698B6D8]) | *MEMORY[0x1E698B6E8]];

            v20 = [v14 matchers];

            if (!v20)
            {
              v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
              [v14 setMatchers:v21];
            }

            v22 = [v14 matchers];
            v23 = [MEMORY[0x1E695DEF0] dataWithData:v16];
            [v22 setObject:v15 forKey:v23];
          }

          [v14 setLastMatcher:v15];
        }
      }

      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      v25 = [v15 matches:v24 matchType:v8];

      v10 = a1;
      v11 = v25;
      goto LABEL_28;
    }

    if (v6 && v7 == 1)
    {
      v10 = a1;
      v11 = 1;
LABEL_28:

      sqlite3_result_int(v10, v11);
      return;
    }

    sqlite3_result_null(a1);
  }

  else
  {
    sqlite3_result_null(a1);
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v26[0] = 67109120;
      v26[1] = a2;
      _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "wrong number of arguments (%d) to icusearch", v26, 8u);
    }
  }
}

void _MFMoveDatabase(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 lastPathComponent];
  v6 = [v4 stringByAppendingPathComponent:v5];

  v7 = EDLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v30 = v3;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "Renaming database %@ to %@", buf, 0x16u);
  }

  v8 = v3;
  v9 = [v3 fileSystemRepresentation];
  v10 = v6;
  v11 = [v6 fileSystemRepresentation];
  rename(v9, v11, v12);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [&unk_1F2775730 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(&unk_1F2775730);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v3 stringByAppendingString:v16];
        v18 = v17;
        v19 = [v17 fileSystemRepresentation];
        v20 = [v6 stringByAppendingString:v16];
        v21 = v20;
        v22 = [v20 fileSystemRepresentation];
        rename(v19, v22, v23);
      }

      v13 = [&unk_1F2775730 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }
}

uint64_t MFCreateURLForContentID(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(__CFString *)v1 rangeOfString:@"<"];
    v5 = v4;
    v6 = [(__CFString *)v2 rangeOfString:@">"];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL || v6 <= v3 + v5)
    {
      v7 = v2;
    }

    else
    {
      v14.location = v3 + v5;
      v14.length = v6 - (v3 + v5);
      v7 = CFStringCreateWithSubstring(0, v2, v14);
    }

    v8 = v7;
    v9 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
    v10 = [(__CFString *)v8 stringByAddingPercentEncodingWithAllowedCharacters:v9];

    if (v10)
    {
      v11 = [@"cid" stringByAppendingFormat:@":%@", v10];
      v12 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initWithString:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t _SortWebAttachmentSources(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = isKindOfClass ^ objc_opt_isKindOfClass();
  v7 = -1;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1B06896CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFWebAttachmentSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __RegisterYahooAuthSchemes_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E699B208];
  v3 = objc_opt_class();

  return [v2 registerSchemeClass:v3];
}

uint64_t sub_1B068B1CC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), void (*a5)(void), uint64_t a6)
{
  v180.rawValue._countAndFlagsBits = a1;
  v180.rawValue._object = a2;
  v162 = a3;
  v163 = a4;
  v164 = a5;
  v181 = a6;
  v133 = sub_1B06911A4;
  v134 = sub_1B039BBE8;
  v135 = sub_1B0394C30;
  v136 = sub_1B0394C24;
  v137 = sub_1B039BA2C;
  v138 = sub_1B039BA88;
  v139 = sub_1B039BB94;
  v140 = sub_1B0394C24;
  v141 = sub_1B039BBA0;
  v142 = sub_1B039BC08;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0399178;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v148 = sub_1B039BA94;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0398F5C;
  v151 = sub_1B0399178;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0398F5C;
  v154 = sub_1B03991EC;
  v197 = 0;
  v195 = 0;
  v196 = 0;
  v194 = 0;
  v192 = 0;
  v193 = 0;
  v191 = 0;
  v155 = 0;
  v183 = 0;
  v198 = a6;
  v165 = 0;
  v156 = sub_1B0E439A8();
  v157 = *(v156 - 8);
  v158 = v156 - 8;
  v159 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v160 = &v75 - v159;
  v161 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v179 = &v75 - v161;
  v166 = _s6LoggerVMa(v9);
  v167 = *(v166 - 8);
  v168 = v167;
  v174 = *(v167 + 64);
  v169 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v165);
  v170 = &v75 - v169;
  v171 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v172 = &v75 - v171;
  v173 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v175 = &v75 - v173;
  v176 = (v174 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v178 = &v75 - v176;
  v197 = &v75 - v176;
  v195 = v13;
  v196 = v14;
  v194 = v15;
  v192 = v16;
  v193 = v17;
  v191 = v6;
  type metadata accessor for SearchIndexerBackgroundTask();
  sub_1B0A27668(v179);
  EngineTracingID.invalid.unsafeMutableAddressor();
  EngineLoggerID.init(id:)();
  v177 = v18;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = String.init(_:)(v180);
  v20 = AccountLoggerID.init(accountIdentifier:)(v19._countAndFlagsBits, v19._object);
  v190 = EngineAndAccountLoggerID.init(engine:account:)(v177, v20);
  LOBYTE(v189) = v190;
  HIDWORD(v189) = HIDWORD(v190);
  sub_1B07B8A3C(v179, v189, v178);
  v182 = sub_1B0902D08(v180.rawValue._countAndFlagsBits, v180.rawValue._object, v181);
  if (v182)
  {
    v132 = v182;
    v131 = v182;
    v183 = v182;
    sub_1B0394784(v178, v175);

    v128 = (*(v168 + 80) + 16) & ~*(v168 + 80);
    v129 = (v128 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = swift_allocObject();
    sub_1B03F4FD0(v175, v130 + v128);
    v21 = v164;
    v22 = v162;
    v23 = v133;
    v24 = v130;
    v25 = v178;
    v26 = (v130 + v129);
    *v26 = v163;
    v26[1] = v21;
    sub_1B06E39F0(v25, v22, v23, v24);

    MEMORY[0x1E69E5920](v131);
    return sub_1B039480C(v178);
  }

  else
  {
    (*(v157 + 16))(v160, v178, v156);
    sub_1B0394784(v178, v175);
    sub_1B0394784(v175, v172);
    sub_1B03F4FD0(v175, v170);
    v28 = (v172 + *(v166 + 20));
    v97 = *v28;
    v98 = *(v28 + 1);
    sub_1B039480C(v172);
    v96 = 24;
    v108 = 7;
    v29 = swift_allocObject();
    v30 = v98;
    v101 = v29;
    *(v29 + 16) = v97;
    *(v29 + 20) = v30;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v31 = swift_allocObject();
    v32 = v98;
    v99 = v31;
    *(v31 + 16) = v97;
    *(v31 + 20) = v32;

    v107 = 32;
    v33 = swift_allocObject();
    v34 = v99;
    v109 = v33;
    *(v33 + 16) = v134;
    *(v33 + 24) = v34;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v170);
    v126 = sub_1B0E43988();
    v127 = sub_1B0E458E8();
    v105 = 17;
    v111 = swift_allocObject();
    v103 = 16;
    *(v111 + 16) = 16;
    v112 = swift_allocObject();
    v106 = 4;
    *(v112 + 16) = 4;
    v35 = swift_allocObject();
    v100 = v35;
    *(v35 + 16) = v135;
    *(v35 + 24) = 0;
    v36 = swift_allocObject();
    v37 = v100;
    v113 = v36;
    *(v36 + 16) = v136;
    *(v36 + 24) = v37;
    v114 = swift_allocObject();
    *(v114 + 16) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = 1;
    v38 = swift_allocObject();
    v39 = v101;
    v102 = v38;
    *(v38 + 16) = v137;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v102;
    v116 = v40;
    *(v40 + 16) = v138;
    *(v40 + 24) = v41;
    v117 = swift_allocObject();
    *(v117 + 16) = v103;
    v118 = swift_allocObject();
    *(v118 + 16) = v106;
    v42 = swift_allocObject();
    v104 = v42;
    *(v42 + 16) = v139;
    *(v42 + 24) = 0;
    v43 = swift_allocObject();
    v44 = v104;
    v119 = v43;
    *(v43 + 16) = v140;
    *(v43 + 24) = v44;
    v120 = swift_allocObject();
    *(v120 + 16) = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v106;
    v45 = swift_allocObject();
    v46 = v109;
    v110 = v45;
    *(v45 + 16) = v141;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v110;
    v123 = v47;
    *(v47 + 16) = v142;
    *(v47 + 24) = v48;
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v122 = sub_1B0E46A48();
    v124 = v49;

    v50 = v111;
    v51 = v124;
    *v124 = v143;
    v51[1] = v50;

    v52 = v112;
    v53 = v124;
    v124[2] = v144;
    v53[3] = v52;

    v54 = v113;
    v55 = v124;
    v124[4] = v145;
    v55[5] = v54;

    v56 = v114;
    v57 = v124;
    v124[6] = v146;
    v57[7] = v56;

    v58 = v115;
    v59 = v124;
    v124[8] = v147;
    v59[9] = v58;

    v60 = v116;
    v61 = v124;
    v124[10] = v148;
    v61[11] = v60;

    v62 = v117;
    v63 = v124;
    v124[12] = v149;
    v63[13] = v62;

    v64 = v118;
    v65 = v124;
    v124[14] = v150;
    v65[15] = v64;

    v66 = v119;
    v67 = v124;
    v124[16] = v151;
    v67[17] = v66;

    v68 = v120;
    v69 = v124;
    v124[18] = v152;
    v69[19] = v68;

    v70 = v121;
    v71 = v124;
    v124[20] = v153;
    v71[21] = v70;

    v72 = v123;
    v73 = v124;
    v124[22] = v154;
    v73[23] = v72;
    sub_1B0394964();

    if (os_log_type_enabled(v126, v127))
    {
      v74 = v155;
      v89 = sub_1B0E45D78();
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v88 = 0;
      v90 = sub_1B03949A8(0, v87, v87);
      v91 = sub_1B03949A8(v88, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v92 = &v188;
      v188 = v89;
      v93 = &v187;
      v187 = v90;
      v94 = &v186;
      v186 = v91;
      sub_1B0394A48(0, &v188);
      sub_1B0394A48(4, v92);
      v184 = v143;
      v185 = v111;
      sub_1B03949FC(&v184, v92, v93, v94);
      v95 = v74;
      if (v74)
      {

        __break(1u);
      }

      else
      {
        v184 = v144;
        v185 = v112;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v86 = 0;
        v184 = v145;
        v185 = v113;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v85 = 0;
        v184 = v146;
        v185 = v114;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v84 = 0;
        v184 = v147;
        v185 = v115;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v83 = 0;
        v184 = v148;
        v185 = v116;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v82 = 0;
        v184 = v149;
        v185 = v117;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v81 = 0;
        v184 = v150;
        v185 = v118;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v80 = 0;
        v184 = v151;
        v185 = v119;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v79 = 0;
        v184 = v152;
        v185 = v120;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v78 = 0;
        v184 = v153;
        v185 = v121;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        v77 = 0;
        v184 = v154;
        v185 = v123;
        sub_1B03949FC(&v184, &v188, &v187, &v186);
        _os_log_impl(&dword_1B0389000, v126, v127, "[%.*hhx-%.*X] Failed to get account and credentials.", v89, 0x17u);
        v76 = 0;
        sub_1B03998A8(v90, 0, v87);
        sub_1B03998A8(v91, v76, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v126);
    (*(v157 + 8))(v160, v156);

    v75 = sub_1B0E46A48();
    (v163)(v75);

    return sub_1B039480C(v178);
  }
}

uint64_t sub_1B068C804(uint64_t a1, int a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v100 = a1;
  v104 = a2;
  v107 = a3;
  v98 = a4;
  v99 = a5;
  v114 = sub_1B039BBE8;
  v117 = sub_1B0394C30;
  v118 = sub_1B0394C24;
  v121 = sub_1B039BA2C;
  v123 = sub_1B039BA88;
  v126 = sub_1B039BB94;
  v127 = sub_1B0394C24;
  v131 = sub_1B039BBA0;
  v135 = sub_1B039BC08;
  v137 = sub_1B0398F5C;
  v139 = sub_1B0398F5C;
  v141 = sub_1B0399178;
  v143 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v147 = sub_1B039BA94;
  v149 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v153 = sub_1B0399178;
  v155 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v160 = sub_1B03991EC;
  v92 = sub_1B068DB38;
  v177 = 0;
  v176 = 0;
  v175 = 0;
  v173 = 0;
  v174 = 0;
  v93 = 0;
  v171 = 0;
  v94 = 0;
  v109 = _s6LoggerVMa(0);
  v95 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v116 = &v65 - v95;
  v96 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v65 - v96;
  v97 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v65 - v97;
  v101 = sub_1B0E439A8();
  v105 = *(v101 - 8);
  v102 = v101 - 8;
  v103 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v100);
  v106 = &v65 - v103;
  v177 = v10;
  v120 = 1;
  v176 = v104 & 1;
  v175 = v11;
  v173 = v12;
  v174 = v13;
  (*(v105 + 16))(&v65 - v103, v9);
  sub_1B0394784(v107, v108);
  sub_1B0394784(v108, v110);
  sub_1B03F4FD0(v108, v116);
  v14 = (v110 + *(v109 + 20));
  v112 = *v14;
  v113 = *(v14 + 1);
  sub_1B039480C(v110);
  v111 = 24;
  v133 = 7;
  v15 = swift_allocObject();
  v16 = v113;
  v122 = v15;
  *(v15 + 16) = v112;
  *(v15 + 20) = v16;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v17 = swift_allocObject();
  v18 = v113;
  v115 = v17;
  *(v17 + 16) = v112;
  *(v17 + 20) = v18;

  v132 = 32;
  v19 = swift_allocObject();
  v20 = v115;
  v134 = v19;
  *(v19 + 16) = v114;
  *(v19 + 24) = v20;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v116);
  v164 = sub_1B0E43988();
  v165 = sub_1B0E458D8();
  v129 = 17;
  v138 = swift_allocObject();
  v125 = 16;
  *(v138 + 16) = 16;
  v140 = swift_allocObject();
  v130 = 4;
  *(v140 + 16) = 4;
  v21 = swift_allocObject();
  v119 = v21;
  *(v21 + 16) = v117;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v119;
  v142 = v22;
  *(v22 + 16) = v118;
  *(v22 + 24) = v23;
  v144 = swift_allocObject();
  *(v144 + 16) = 0;
  v146 = swift_allocObject();
  *(v146 + 16) = v120;
  v24 = swift_allocObject();
  v25 = v122;
  v124 = v24;
  *(v24 + 16) = v121;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v124;
  v148 = v26;
  *(v26 + 16) = v123;
  *(v26 + 24) = v27;
  v150 = swift_allocObject();
  *(v150 + 16) = v125;
  v152 = swift_allocObject();
  *(v152 + 16) = v130;
  v28 = swift_allocObject();
  v128 = v28;
  *(v28 + 16) = v126;
  *(v28 + 24) = 0;
  v29 = swift_allocObject();
  v30 = v128;
  v154 = v29;
  *(v29 + 16) = v127;
  *(v29 + 24) = v30;
  v156 = swift_allocObject();
  *(v156 + 16) = 0;
  v158 = swift_allocObject();
  *(v158 + 16) = v130;
  v31 = swift_allocObject();
  v32 = v134;
  v136 = v31;
  *(v31 + 16) = v131;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  v34 = v136;
  v161 = v33;
  *(v33 + 16) = v135;
  *(v33 + 24) = v34;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v159 = sub_1B0E46A48();
  v162 = v35;

  v36 = v138;
  v37 = v162;
  *v162 = v137;
  v37[1] = v36;

  v38 = v140;
  v39 = v162;
  v162[2] = v139;
  v39[3] = v38;

  v40 = v142;
  v41 = v162;
  v162[4] = v141;
  v41[5] = v40;

  v42 = v144;
  v43 = v162;
  v162[6] = v143;
  v43[7] = v42;

  v44 = v146;
  v45 = v162;
  v162[8] = v145;
  v45[9] = v44;

  v46 = v148;
  v47 = v162;
  v162[10] = v147;
  v47[11] = v46;

  v48 = v150;
  v49 = v162;
  v162[12] = v149;
  v49[13] = v48;

  v50 = v152;
  v51 = v162;
  v162[14] = v151;
  v51[15] = v50;

  v52 = v154;
  v53 = v162;
  v162[16] = v153;
  v53[17] = v52;

  v54 = v156;
  v55 = v162;
  v162[18] = v155;
  v55[19] = v54;

  v56 = v158;
  v57 = v162;
  v162[20] = v157;
  v57[21] = v56;

  v58 = v161;
  v59 = v162;
  v162[22] = v160;
  v59[23] = v58;
  sub_1B0394964();

  if (os_log_type_enabled(v164, v165))
  {
    v60 = v93;
    v85 = sub_1B0E45D78();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v84 = 0;
    v86 = sub_1B03949A8(0, v83, v83);
    v87 = sub_1B03949A8(v84, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v88 = &v170;
    v170 = v85;
    v89 = &v169;
    v169 = v86;
    v90 = &v168;
    v168 = v87;
    sub_1B0394A48(0, &v170);
    sub_1B0394A48(4, v88);
    v166 = v137;
    v167 = v138;
    sub_1B03949FC(&v166, v88, v89, v90);
    v91 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v166 = v139;
      v167 = v140;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v80 = 0;
      v166 = v141;
      v167 = v142;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v79 = 0;
      v166 = v143;
      v167 = v144;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v78 = 0;
      v166 = v145;
      v167 = v146;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v77 = 0;
      v166 = v147;
      v167 = v148;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v76 = 0;
      v166 = v149;
      v167 = v150;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v75 = 0;
      v166 = v151;
      v167 = v152;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v74 = 0;
      v166 = v153;
      v167 = v154;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v73 = 0;
      v166 = v155;
      v167 = v156;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v72 = 0;
      v166 = v157;
      v167 = v158;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v71 = 0;
      v166 = v160;
      v167 = v161;
      sub_1B03949FC(&v166, &v170, &v169, &v168);
      v70 = 0;
      _os_log_impl(&dword_1B0389000, v164, v165, "[%.*hhx-%.*X] Did generate credentials.", v85, 0x17u);
      v69 = 0;
      sub_1B03998A8(v86, 0, v83);
      sub_1B03998A8(v87, v69, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v81 = v70;
    }
  }

  else
  {
    v61 = v93;

    v81 = v61;
  }

  v62 = v81;
  MEMORY[0x1E69E5920](v164);
  (*(v105 + 8))(v106, v101);
  v172 = v100;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1440, &qword_1B0E99410);
  v63 = sub_1B0694F70();
  result = sub_1B039CA88(v92, 0, v67, &type metadata for Credentials, MEMORY[0x1E69E73E0], v63, MEMORY[0x1E69E7410], v82);
  v68 = result;
  if (v62)
  {
    __break(1u);
  }

  else
  {
    v66 = v68;
    v171 = v68;

    v98(v66);
  }

  return result;
}

void *sub_1B068DB38@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1B069506C(__dst, v4);
  Credentials.init(_:)(__dst, v5);
  return memcpy(a2, v5, 0x50uLL);
}

uint64_t sub_1B068DF44(uint64_t a1)
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E467C8();
}

uint64_t sub_1B068DF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E46798();
}

uint64_t sub_1B068DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068E01C(uint64_t a1, uint64_t a2)
{
  sub_1B06940F8();
  sub_1B0694D70();
  return sub_1B0E467B8();
}

uint64_t sub_1B068E068(uint64_t a1, uint64_t a2)
{
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46758();
}

uint64_t sub_1B068E0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46788();
}

uint64_t sub_1B068E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46768();
}

uint64_t sub_1B068E144(uint64_t a1)
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068E180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068E1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068E21C(uint64_t a1, uint64_t a2)
{
  sub_1B0694290();
  sub_1B0694800();
  return sub_1B0E467B8();
}

void sub_1B068E338(uint64_t a1@<X8>)
{
  sub_1B0391B00();
  *a1 = v1;
  *(a1 + 8) = v2 & 1;
}

uint64_t sub_1B068E3A4(uint64_t a1)
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E467C8();
}

uint64_t sub_1B068E3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E46798();
}

uint64_t sub_1B068E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068E47C(uint64_t a1, uint64_t a2)
{
  sub_1B0694B78();
  sub_1B0694BF8();
  return sub_1B0E467B8();
}

void sub_1B068E4C8(uint64_t a2@<X8>)
{
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *a2 = v2;
  *(a2 + 8) = 0;
}

uint64_t sub_1B068E5D0(uint64_t a1)
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068E7D4(uint64_t a1, uint64_t a2)
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068E818(uint64_t a1, uint64_t a2)
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068E85C(uint64_t a1, uint64_t a2)
{
  sub_1B0694310();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068E9C0(uint64_t a1)
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068EBC4(uint64_t a1, uint64_t a2)
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068EC08(uint64_t a1, uint64_t a2)
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068EC4C(uint64_t a1, uint64_t a2)
{
  sub_1B0694408();
  sub_1B0694488();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068EC90(uint64_t a1)
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068ED68(uint64_t a1, uint64_t a2)
{
  sub_1B0694978();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068EDB4(uint64_t a1)
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068EFB8(uint64_t a1, uint64_t a2)
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068EFFC(uint64_t a1, uint64_t a2)
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F040(uint64_t a1, uint64_t a2)
{
  sub_1B0694500();
  sub_1B0394874();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F0D0(uint64_t a1)
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068F2D4(uint64_t a1, uint64_t a2)
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068F318(uint64_t a1, uint64_t a2)
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F35C(uint64_t a1, uint64_t a2)
{
  sub_1B0694580();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F3A0(uint64_t a1)
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068F5A4(uint64_t a1, uint64_t a2)
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068F5E8(uint64_t a1, uint64_t a2)
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F62C(uint64_t a1, uint64_t a2)
{
  sub_1B0694600();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F670(uint64_t a1)
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B068F874(uint64_t a1, uint64_t a2)
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B068F8B8(uint64_t a1, uint64_t a2)
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B068F8FC(uint64_t a1, uint64_t a2)
{
  sub_1B0694680();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

uint64_t sub_1B068F940(uint64_t a1)
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068F97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068F9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068FA18(uint64_t a1, uint64_t a2)
{
  sub_1B0694700();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068FB80(uint64_t a1)
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068FC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068FC58(uint64_t a1, uint64_t a2)
{
  sub_1B0694780();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068FD74(uint64_t a1)
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E467C8();
}

uint64_t sub_1B068FDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E46798();
}

uint64_t sub_1B068FDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E467A8() & 1;
}

uint64_t sub_1B068FE4C(uint64_t a1, uint64_t a2)
{
  sub_1B0694E70();
  sub_1B0694800();
  return sub_1B0E467B8();
}

uint64_t sub_1B068FE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B06923E0();
  sub_1B0694DF0();
  return sub_1B0E46AE8() & 1;
}

uint64_t sub_1B0690090(uint64_t a1)
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FE8();
}

uint64_t sub_1B0690294(uint64_t a1, uint64_t a2)
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FD8();
}

uint64_t sub_1B06902D8(uint64_t a1, uint64_t a2)
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FB8();
}

uint64_t sub_1B069031C(uint64_t a1, uint64_t a2)
{
  sub_1B0694AF8();
  sub_1B0694390();
  return sub_1B0E46FC8();
}

void sub_1B0690478(uint64_t a2@<X8>)
{
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *a2 = v2;
  *(a2 + 4) = 0;
}

uint64_t sub_1B06906A8(uint64_t a1)
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FE8();
}

uint64_t sub_1B069086C(uint64_t a1, uint64_t a2)
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FD8();
}

uint64_t sub_1B06908B0(uint64_t a1, uint64_t a2)
{
  sub_1B03EFA1C();
  sub_1B0394BAC();
  return sub_1B0E46FC8();
}

uint64_t sub_1B06908F4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B03F150C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B069093C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0690974(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B0690974(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = sub_1B0E44AC8();
  MEMORY[0x1E69E5928](v3);

  MEMORY[0x1E69E5920](v3);
  return v3;
}

uint64_t sub_1B06909E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0690A14(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B0690A14(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1B0E44AD8();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B0690AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0690AF0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B0690AF0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  type metadata accessor for ProgressUserInfoKey(0);
  sub_1B0694E70();
  sub_1B0694800();
  v3 = sub_1B0E467C8();
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v3;
}

uint64_t sub_1B0690B9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0690BCC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1B0690BCC(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  type metadata accessor for ProgressUserInfoKey(0);
  sub_1B0694E70();
  sub_1B0694800();
  sub_1B0E467B8();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B0690C54(uint64_t a1)
{
  sub_1B0694EF0();
  sub_1B06940F8();
  sub_1B0694178();
  return sub_1B0E46778();
}

uint64_t sub_1B0690CF0(uint64_t a1)
{
  sub_1B0694CF0();
  sub_1B0694290();
  return sub_1B0E46778();
}

uint64_t sub_1B0690D3C(uint64_t a1)
{
  sub_1B0694C70();
  sub_1B0694B78();
  return sub_1B0E46778();
}

uint64_t sub_1B0690DDC(uint64_t a1)
{
  sub_1B06949F8();
  sub_1B0694978();
  return sub_1B0E46778();
}

uint64_t sub_1B0690E28(uint64_t a1)
{
  sub_1B0694A78();
  sub_1B0694700();
  return sub_1B0E46778();
}

uint64_t sub_1B0690EB4(uint64_t a1)
{
  sub_1B0694878();
  sub_1B0694780();
  return sub_1B0E46778();
}

uint64_t sub_1B0690F00(uint64_t a1)
{
  sub_1B0694178();
  sub_1B0694E70();
  return sub_1B0E46778();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_1B06911A4(uint64_t a1, char a2)
{
  v10 = *(_s6LoggerVMa(0) - 8);
  v3 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v4 = v2 + ((v3 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1B068C804(a1, a2 & 1, v2 + v3, v5, v6);
}

unint64_t type metadata accessor for Key(uint64_t a1)
{
  v5 = qword_1EB6E1260;
  if (!qword_1EB6E1260)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1260);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for IMAPCapability(uint64_t a1)
{
  v5 = qword_1EB6E1268;
  if (!qword_1EB6E1268)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1268);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ECMessageFlagColor(uint64_t a1)
{
  v5 = qword_1EB6E1270;
  if (!qword_1EB6E1270)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1270);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MessageRuleQualifier(uint64_t a1)
{
  v5 = qword_1EB6DAA18;
  if (!qword_1EB6DAA18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAA18);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ECMessageHeaderKey(uint64_t a1)
{
  v5 = qword_1EB6DAA80;
  if (!qword_1EB6DAA80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAA80);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CriterionType(uint64_t a1)
{
  v5 = qword_1EB6E1278;
  if (!qword_1EB6E1278)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1278);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B06915F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

unint64_t type metadata accessor for timeval(uint64_t a1)
{
  v5 = qword_1EB6DA5C0;
  if (!qword_1EB6DA5C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA5C0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for EMPersistenceStatisticsKey(uint64_t a1)
{
  v5 = qword_1EB6DA7F8;
  if (!qword_1EB6DA7F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA7F8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for WritingOptions(uint64_t a1)
{
  v5 = qword_1EB6DA990;
  if (!qword_1EB6DA990)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA990);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MutabilityOptions(uint64_t a1)
{
  v5 = qword_1EB6DA628;
  if (!qword_1EB6DA628)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA628);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ReadingOptions(uint64_t a1)
{
  v5 = qword_1EB6DA9D0;
  if (!qword_1EB6DA9D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA9D0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for FlowedTextConversionOptions(uint64_t a1)
{
  v5 = qword_1EB6DA778;
  if (!qword_1EB6DA778)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA778);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MFMessageFlags(uint64_t a1)
{
  v5 = qword_1EB6DABB0;
  if (!qword_1EB6DABB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DABB0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MailboxAttributes(uint64_t a1)
{
  v5 = qword_1EB6DAAA8;
  if (!qword_1EB6DAAA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAAA8);
      return v2;
    }
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for MailboxRowID(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MailboxRowID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 8) = 1;
    }
  }

  else if (a3)
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t type metadata accessor for EDMailboxRowID_s(uint64_t a1)
{
  v5 = qword_1EB6DAB50;
  if (!qword_1EB6DAB50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB50);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for SearchOptions(uint64_t a1)
{
  v5 = qword_1EB6E1288;
  if (!qword_1EB6E1288)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1288);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ECMailboxType(uint64_t a1)
{
  v5 = qword_1EB6DAC60;
  if (!qword_1EB6DAC60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAC60);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for ECTransferMessageActionType(uint64_t a1)
{
  v5 = qword_1EB6DA7C8;
  if (!qword_1EB6DA7C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DA7C8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for EFContentProtectionState(uint64_t a1)
{
  v5 = qword_1EB6E1290;
  if (!qword_1EB6E1290)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E1290);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for URLResourceKey(uint64_t a1)
{
  v5 = qword_1EB6DEDC8;
  if (!qword_1EB6DEDC8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DEDC8);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for MFAccountPasswordPromptResult(uint64_t a1)
{
  v5 = qword_1EB6E12A0;
  if (!qword_1EB6E12A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6E12A0);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for EMActivityUserInfoKey(uint64_t a1)
{
  v5 = qword_1EB6DED98;
  if (!qword_1EB6DED98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DED98);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for EMActivityFetchState(uint64_t a1)
{
  v5 = qword_1EB6DAA30;
  if (!qword_1EB6DAA30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAA30);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B06923E0()
{
  v2 = qword_1EB6DEDB8;
  if (!qword_1EB6DEDB8)
  {
    type metadata accessor for EMActivityUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692478()
{
  v2 = qword_1EB6DEDA0;
  if (!qword_1EB6DEDA0)
  {
    type metadata accessor for EMActivityUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692510()
{
  v2 = qword_1EB6DEDE8;
  if (!qword_1EB6DEDE8)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06925A8()
{
  v2 = qword_1EB6DEDD0;
  if (!qword_1EB6DEDD0)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692640()
{
  v2 = qword_1EB6DAC70;
  if (!qword_1EB6DAC70)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06926D8()
{
  v2 = qword_1EB6E12B0;
  if (!qword_1EB6E12B0)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692770()
{
  v2 = qword_1EB6E12B8;
  if (!qword_1EB6E12B8)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692808()
{
  v2 = qword_1EB6E12C0;
  if (!qword_1EB6E12C0)
  {
    type metadata accessor for SearchOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06928A0()
{
  v2 = qword_1EB6E12C8;
  if (!qword_1EB6E12C8)
  {
    type metadata accessor for SearchOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692938()
{
  v2 = qword_1EB6DAAE0;
  if (!qword_1EB6DAAE0)
  {
    type metadata accessor for MailboxAttributes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06929D0()
{
  v2 = qword_1EB6DAAC8;
  if (!qword_1EB6DAAC8)
  {
    type metadata accessor for MailboxAttributes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692A68()
{
  v2 = qword_1EB6DABD0;
  if (!qword_1EB6DABD0)
  {
    type metadata accessor for MFMessageFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692B00()
{
  v2 = qword_1EB6DABC8;
  if (!qword_1EB6DABC8)
  {
    type metadata accessor for MFMessageFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692B98()
{
  v2 = qword_1EB6DAA00;
  if (!qword_1EB6DAA00)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692C30()
{
  v2 = qword_1EB6DA9F8;
  if (!qword_1EB6DA9F8)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692CC8()
{
  v2 = qword_1EB6DA650;
  if (!qword_1EB6DA650)
  {
    type metadata accessor for MutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692D60()
{
  v2 = qword_1EB6DA648;
  if (!qword_1EB6DA648)
  {
    type metadata accessor for MutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692DF8()
{
  v2 = qword_1EB6DA9C0;
  if (!qword_1EB6DA9C0)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692E90()
{
  v2 = qword_1EB6DA9B8;
  if (!qword_1EB6DA9B8)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692F28()
{
  v2 = qword_1EB6DA820;
  if (!qword_1EB6DA820)
  {
    type metadata accessor for EMPersistenceStatisticsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0692FC0()
{
  v2 = qword_1EB6DA808;
  if (!qword_1EB6DA808)
  {
    type metadata accessor for EMPersistenceStatisticsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693058()
{
  v2 = qword_1EB6DAA90;
  if (!qword_1EB6DAA90)
  {
    type metadata accessor for ECMessageHeaderKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06930F0()
{
  v2 = qword_1EB6E12D8;
  if (!qword_1EB6E12D8)
  {
    type metadata accessor for ECMessageHeaderKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693188()
{
  v2 = qword_1EB6DAAA0;
  if (!qword_1EB6DAAA0)
  {
    type metadata accessor for ECMessageHeaderKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693238()
{
  v2 = qword_1EB6DAC20;
  if (!qword_1EB6DAC20)
  {
    type metadata accessor for EMFetchOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06932D0()
{
  v2 = qword_1EB6E12E8;
  if (!qword_1EB6E12E8)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693368()
{
  v2 = qword_1EB6E12F0;
  if (!qword_1EB6E12F0)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693400()
{
  v2 = qword_1EB6E12F8;
  if (!qword_1EB6E12F8)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E12F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06934B0()
{
  v2 = qword_1EB6DAC28;
  if (!qword_1EB6DAC28)
  {
    type metadata accessor for EMFetchOption(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693548()
{
  v2 = qword_1EB6DA830;
  if (!qword_1EB6DA830)
  {
    type metadata accessor for EMPersistenceStatisticsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06935E0()
{
  v2 = qword_1EB6DA9C8;
  if (!qword_1EB6DA9C8)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693678()
{
  v2 = qword_1EB6DA9B0;
  if (!qword_1EB6DA9B0)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693710()
{
  v2 = qword_1EB6DA658;
  if (!qword_1EB6DA658)
  {
    type metadata accessor for MutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06937A8()
{
  v2 = qword_1EB6DA640;
  if (!qword_1EB6DA640)
  {
    type metadata accessor for MutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693840()
{
  v2 = qword_1EB6DAA08;
  if (!qword_1EB6DAA08)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06938D8()
{
  v2 = qword_1EB6DA9F0;
  if (!qword_1EB6DA9F0)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693970()
{
  v2 = qword_1EB6DA7A8;
  if (!qword_1EB6DA7A8)
  {
    type metadata accessor for FlowedTextConversionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693A08()
{
  v2 = qword_1EB6DA7A0;
  if (!qword_1EB6DA7A0)
  {
    type metadata accessor for FlowedTextConversionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693AA0()
{
  v2 = qword_1EB6DA7B8;
  if (!qword_1EB6DA7B8)
  {
    type metadata accessor for FlowedTextConversionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA7B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693B38()
{
  v2 = qword_1EB6DA790;
  if (!qword_1EB6DA790)
  {
    type metadata accessor for FlowedTextConversionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693BD0()
{
  v2 = qword_1EB6DABD8;
  if (!qword_1EB6DABD8)
  {
    type metadata accessor for MFMessageFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693C68()
{
  v2 = qword_1EB6DABC0;
  if (!qword_1EB6DABC0)
  {
    type metadata accessor for MFMessageFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693D00()
{
  v2 = qword_1EB6DAAD8;
  if (!qword_1EB6DAAD8)
  {
    type metadata accessor for MailboxAttributes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693D98()
{
  v2 = qword_1EB6DAAD0;
  if (!qword_1EB6DAAD0)
  {
    type metadata accessor for MailboxAttributes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693E30()
{
  v2 = qword_1EB6E1308;
  if (!qword_1EB6E1308)
  {
    type metadata accessor for SearchOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693EC8()
{
  v2 = qword_1EB6E1310;
  if (!qword_1EB6E1310)
  {
    type metadata accessor for SearchOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693F60()
{
  v2 = qword_1EB6DEDF8;
  if (!qword_1EB6DEDF8)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0693FF8()
{
  v2 = qword_1EB6DA960;
  if (!qword_1EB6DA960)
  {
    type metadata accessor for EMActivityUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA960);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694078()
{
  v2 = qword_1EB6DAA38;
  if (!qword_1EB6DAA38)
  {
    type metadata accessor for EMActivityFetchState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06940F8()
{
  v2 = qword_1EB6DEDB0;
  if (!qword_1EB6DEDB0)
  {
    type metadata accessor for EMActivityUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694178()
{
  v2 = qword_1EB6DA958;
  if (!qword_1EB6DA958)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA958);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for ProgressUserInfoKey(uint64_t a1)
{
  v5 = qword_1EB6DEF08;
  if (!qword_1EB6DEF08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DEF08);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B0694290()
{
  v2 = qword_1EB6DEDE0;
  if (!qword_1EB6DEDE0)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEDE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694310()
{
  v2 = qword_1EB6E1318;
  if (!qword_1EB6E1318)
  {
    type metadata accessor for SearchOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694390()
{
  v2 = qword_1EB6DB860;
  if (!qword_1EB6DB860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694408()
{
  v2 = qword_1EB6DABB8;
  if (!qword_1EB6DABB8)
  {
    type metadata accessor for MFMessageFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DABB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694488()
{
  v2 = qword_1EB6DA310;
  if (!qword_1EB6DA310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694500()
{
  v2 = qword_1EB6DA788;
  if (!qword_1EB6DA788)
  {
    type metadata accessor for FlowedTextConversionOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694580()
{
  v2 = qword_1EB6DA9E0;
  if (!qword_1EB6DA9E0)
  {
    type metadata accessor for ReadingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694600()
{
  v2 = qword_1EB6DA638;
  if (!qword_1EB6DA638)
  {
    type metadata accessor for MutabilityOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA638);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694680()
{
  v2 = qword_1EB6DA9A0;
  if (!qword_1EB6DA9A0)
  {
    type metadata accessor for WritingOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694700()
{
  v2 = qword_1EB6DA818;
  if (!qword_1EB6DA818)
  {
    type metadata accessor for EMPersistenceStatisticsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA818);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694780()
{
  v2 = qword_1EB6E1328;
  if (!qword_1EB6E1328)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694800()
{
  v2 = qword_1EB6DEF40;
  if (!qword_1EB6DEF40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694878()
{
  v2 = qword_1EB6E1338;
  if (!qword_1EB6E1338)
  {
    type metadata accessor for Key(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06948F8()
{
  v2 = qword_1EB6E1340;
  if (!qword_1EB6E1340)
  {
    type metadata accessor for ECMessageFlagColor(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694978()
{
  v2 = qword_1EB6E1350;
  if (!qword_1EB6E1350)
  {
    type metadata accessor for ECMessageHeaderKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06949F8()
{
  v2 = qword_1EB6E1358;
  if (!qword_1EB6E1358)
  {
    type metadata accessor for ECMessageHeaderKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694A78()
{
  v2 = qword_1EB6DA840;
  if (!qword_1EB6DA840)
  {
    type metadata accessor for EMPersistenceStatisticsKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694AF8()
{
  v2 = qword_1EB6DAAB8;
  if (!qword_1EB6DAAB8)
  {
    type metadata accessor for MailboxAttributes(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694B78()
{
  v2 = qword_1EB6E1360;
  if (!qword_1EB6E1360)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694BF8()
{
  v2 = qword_1EB6E1368;
  if (!qword_1EB6E1368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694C70()
{
  v2 = qword_1EB6E1370;
  if (!qword_1EB6E1370)
  {
    type metadata accessor for ECMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E1370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694CF0()
{
  v2 = qword_1EB6DEE08;
  if (!qword_1EB6DEE08)
  {
    type metadata accessor for URLResourceKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694D70()
{
  v2 = qword_1EB6DED90;
  if (!qword_1EB6DED90)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694DF0()
{
  v2 = qword_1EB6DA948;
  if (!qword_1EB6DA948)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694E70()
{
  v2 = qword_1EB6DEF20;
  if (!qword_1EB6DEF20)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEF20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694EF0()
{
  v2 = qword_1EB6DA968;
  if (!qword_1EB6DA968)
  {
    type metadata accessor for EMActivityUserInfoKey(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0694F70()
{
  v2 = qword_1EB6DB438;
  if (!qword_1EB6DB438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1440, &qword_1B0E99410);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB438);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t *sub_1B069506C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  sub_1B0695144(*a1, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  result = a2;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  return result;
}

double sub_1B0695144(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = (a10 >> 59) & 6;
  if (((a8 & 0x2000000000000000) != 0) | v10)
  {
    switch((((a8 & 0x2000000000000000) != 0) | v10))
    {
      case 1u:
        sub_1B03B2000(a1, a2);
        sub_1B03B2000(a3, a4);
        sub_1B03B2000(a5, a6);
        sub_1B03B2000(a7, a8 & 0xDFFFFFFFFFFFFFFFLL);
        sub_1B03B2000(a9, a10 & 0xCFFFFFFFFFFFFFFFLL);
        break;
      case 2u:
        sub_1B03B2000(a1, a2);
        break;
      case 3u:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        break;
    }
  }

  else
  {
    sub_1B03B2000(a1, a2);
    sub_1B03B2000(a3, a4);
  }

  return result;
}

unint64_t type metadata accessor for ECJunkMailLevel(uint64_t a1)
{
  v5 = qword_1EB6DAB90;
  if (!qword_1EB6DAB90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB6DAB90);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1B0695334(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 24))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}
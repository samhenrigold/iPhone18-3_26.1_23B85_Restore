@interface SGSelfIdentification
+ (id)processConversation:(id)conversation options:(unint64_t)options;
+ (id)processConversation:(id)conversation threadLength:(unint64_t)length options:(unint64_t)options;
@end

@implementation SGSelfIdentification

+ (id)processConversation:(id)conversation options:(unint64_t)options
{
  v6 = sgMap();
  0x100 = [self processConversation:v6 threadLength:0 options:options | 0x100];

  return 0x100;
}

SGTextMessageItem *__52__SGSelfIdentification_processConversation_options___block_invoke(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v2;
  v5 = v4;
  v6 = v4;
  if (isKindOfClass)
  {
    v7 = [(SGTextMessageItem *)v4 hasPrefix:@"sent:"];
    v8 = [SGTextMessageItem alloc];
    v9 = [SGTextMessage alloc];
    v15[0] = @"isSent";
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v15[1] = @"body";
    v16[0] = v10;
    v11 = v5;
    if (v7)
    {
      v11 = [(SGTextMessageItem *)v5 substringFromIndex:5];
    }

    v16[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v13 = [(SGTextMessage *)v9 initWithMessageDictionary:v12];
    v6 = [(SGTextMessageItem *)v8 initWithTextMessage:v13];

    if (v7)
    {
    }
  }

  return v6;
}

+ (id)processConversation:(id)conversation threadLength:(unint64_t)length options:(unint64_t)options
{
  v62 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  if (!objc_msgSend_count(conversationCopy))
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSelfIdentification.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"conversation.count > 0"}];
  }

  lastObject = [conversationCopy lastObject];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__7526;
  v55 = __Block_byref_object_dispose__7527;
  v56 = 0;
  message = [lastObject message];
  isSent = [message isSent];

  if (isSent)
  {
    v12 = sgLogHandle();
    v44 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "Self-id: Skipping - outgoing message", &buf, 2u);
    }

    v13 = 0;
  }

  else
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke;
    v50[3] = &__block_descriptor_48_e67___NSString_36__0_SGMSIPatternType__Q_8__NSString_16__NSString_24B32l;
    v50[4] = options;
    v50[5] = length;
    v14 = MEMORY[0x2383809F0](v50);
    text = [lastObject text];
    v16 = _PASNormalizeUnicodeStringMinimally();

    v17 = sgLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "Self-id: looking for pattern match in: %@", &buf, 0xCu);
    }

    v42 = +[SGDetectedAttributeDissector patterns];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_27;
    v46[3] = &unk_27894C5C0;
    v44 = v14;
    v48 = v44;
    v49 = &v51;
    v47 = v16;
    v18 = v47;
    v19 = v46;
    v20 = +[SGDetectedAttributeDissector patterns];
    v21 = [v20 regex2ForKey:@"MyName/F"];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v58 = __enumerateMyNameInstances_block_invoke;
    v59 = &unk_27894C630;
    v60 = v18;
    v61 = v19;
    v22 = v18;
    v23 = v19;
    v43 = v22;
    [v21 enumerateMatchesInString:v22 ngroups:4 blockWithSubregexp:&buf];

    v24 = v52[5];
    if (!v24)
    {
      v25 = [v42 regex2ForKey:@"NameRequest/F"];
      for (i = objc_msgSend_count(conversationCopy) - 2; ; --i)
      {
        v27 = objc_msgSend_count(conversationCopy);
        v28 = v27 <= 3 ? 3 : v27;
        if (i < v28 - 3)
        {
          break;
        }

        v29 = [conversationCopy objectAtIndexedSubscript:i];
        message2 = [v29 message];
        if ([message2 isSent])
        {
          text2 = [v29 text];
          v32 = _PASNormalizeUnicodeString();
          v33 = [v25 existsInString:v32];

          if (v33)
          {
            hashId = [v33 hashId];
            v35 = (v44[2].isa)(v44, *MEMORY[0x277D023D8], hashId, v43, 0);

            if ([v35 length])
            {
              v36 = objc_opt_new();
              v37 = v52[5];
              v52[5] = v36;

              [v52[5] setName:v35];
              [v52[5] setContext:v43];
              v38 = [v43 length];
              [v52[5] setContextRange:{0, v38}];
              v39 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:2 modelVersion:0 confidence:0];
              [v52[5] setExtractionInfo:v39];
            }

            break;
          }
        }

        else
        {
        }
      }

      v24 = v52[5];
    }

    v13 = v24;
  }

  _Block_object_dispose(&v51, 8);

  return v13;
}

id __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v75 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = _PASCollapseWhitespaceAndStrip();
  if (![v11 length])
  {
    v13 = 0;
    goto LABEL_33;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (SGGuessNamingTradition(v11) != 1)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v32 = __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_2;
    v33 = &unk_27894C578;
    v35 = &v50;
    v36 = &v46;
    v37 = &v42;
    v34 = v10;
    v38 = &v58;
    v14 = *(a1 + 32);
    v39 = &v54;
    v40 = &v62;
    v41 = v14;
    v15 = v11;
    v16 = v31;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __enumerateNameComponents_block_invoke;
    v72 = &unk_27894C608;
    v74 = &v67;
    v17 = v16;
    v73 = v17;
    [SGTokenizer enumerateTokensInString:v15 block:buf];
    if (!v68[3])
    {
      v66 = 0;
      v18 = [v15 length];
      (v32)(v17, v15, 0, v18, &v66);
    }

    _Block_object_dispose(&v67, 8);
    v19 = v51[3];
    v20 = v59[3];
    if (v19 != v20)
    {
      if (v55[3] < v20)
      {
        v21 = 0;
        goto LABEL_12;
      }

      if (v43[3])
      {
        goto LABEL_13;
      }

      v29 = v19 == 0;
      v30 = a5 ^ 1;
      if (!v29)
      {
        v30 = 0;
      }

      if ((v30 & 1) != 0 || (*(a1 + 32) & 2) == 0)
      {
        goto LABEL_13;
      }
    }

    v21 = [v15 length];
LABEL_12:
    v63[3] = v21;
LABEL_13:

    goto LABEL_14;
  }

  if ([SGNames isSalientNameByChars:v11])
  {
    v12 = [v11 length];
    v63[3] = v12;
  }

LABEL_14:
  v22 = v63[3];
  if (!v22)
  {
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, "Self-id: Found NO name to extract from candidate %@", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_22;
  }

  if (v22 == [v11 length])
  {
    v13 = v11;
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      v24 = "Self-id: Extracted name %@ from candidate %@";
LABEL_43:
      _os_log_debug_impl(&dword_231E60000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0x16u);
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v13 = [v11 substringWithRange:{0, v63[3]}];
    objc_autoreleasePoolPop(v25);
    v23 = sgLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      v24 = "Self-id: Extracted partial name %@ from candidate %@";
      goto LABEL_43;
    }
  }

LABEL_22:

  if ((*(a1 + 33) & 1) == 0)
  {
    if ([v13 length])
    {
      v26 = MEMORY[0x277D023C0];
    }

    else if (v47[3])
    {
      v26 = MEMORY[0x277D023B8];
    }

    else
    {
      v26 = MEMORY[0x277D023C8];
    }

    if (v9)
    {
      v27 = v9;
    }

    else
    {
      v27 = @"NA";
    }

    [MEMORY[0x277D02078] recordSelfIdMatchWithPatternType:a2 patternHash:v27 nameTokenCount:v59[3] nameClassification:*v26 messageIndex:*(a1 + 40)];
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
LABEL_33:

  return v13;
}

void __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_27(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, _BYTE *a7)
{
  v13 = a1[5];
  v14 = a2;
  v15 = [a5 hashId];
  v20 = (*(v13 + 16))(v13, *MEMORY[0x277D023D0], v15, v14, a6);

  if ([v20 length])
  {
    v16 = objc_opt_new();
    v17 = *(a1[6] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(*(a1[6] + 8) + 40) setName:v20];
    [*(*(a1[6] + 8) + 40) setContext:a1[4]];
    [*(*(a1[6] + 8) + 40) setContextRange:{a3, a4}];
    v19 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:2 modelVersion:0 confidence:0];
    [*(*(a1[6] + 8) + 40) setExtractionInfo:v19];

    *a7 = 1;
  }
}

void __65__SGSelfIdentification_processConversation_threadLength_options___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [SGNames attributesForNameWord:v7];
  v9 = v8;
  if ((v8 & 4) != 0)
  {
    v11 = a1[5];
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      ++*(*(a1[7] + 8) + 24);
      v10 = sgLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v35 = a1[4];
        *buffer = 138412546;
        *&buffer[2] = v7;
        buffer[6] = 2112;
        *&buffer[7] = v35;
        _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "Self-id: Not-a-known-name %@ word in candidate %@", buffer, 0x16u);
      }

      goto LABEL_9;
    }

    v11 = a1[6];
  }

  ++*(*(v11 + 8) + 24);
LABEL_9:
  ++*(*(a1[8] + 8) + 24);
  v12 = v7;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  v14 = v12;
  v15 = objc_opt_self();

  if (!v15)
  {
    goto LABEL_44;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  memset(buffer, 0, sizeof(buffer));
  Length = CFStringGetLength(v14);
  theString = v14;
  v48 = 0;
  v49 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v14);
  CStringPtr = 0;
  v46 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v14, 0x600u);
  }

  v50 = 0;
  v51 = 0;
  v47 = CStringPtr;
  if (Length <= 0)
  {
LABEL_44:

    goto LABEL_45;
  }

  v36 = v9;
  v37 = a4;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 64;
  do
  {
    if (v20 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v20;
    }

    v25 = v49;
    if (v49 <= v20)
    {
      v27 = 0;
    }

    else
    {
      if (v46)
      {
        v26 = &v46[v48];
LABEL_20:
        v27 = v26[v20];
        goto LABEL_22;
      }

      if (!v47)
      {
        v29 = v50;
        if (v51 <= v20 || v50 > v20)
        {
          v31 = v24 + v19;
          v32 = v23 - v24;
          v33 = v20 - v24;
          v34 = v33 + 64;
          if (v33 + 64 >= v49)
          {
            v34 = v49;
          }

          v50 = v33;
          v51 = v34;
          if (v49 >= v32)
          {
            v25 = v32;
          }

          v53.location = v33 + v48;
          v53.length = v25 + v31;
          CFStringGetCharacters(theString, v53, buffer);
          v29 = v50;
        }

        v26 = &buffer[-v29];
        goto LABEL_20;
      }

      v27 = v47[v48 + v20];
    }

LABEL_22:
    IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v27);
    if (v21)
    {
      if (!IsCharacterMember)
      {
        ++v22;
      }
    }

    else if (!IsCharacterMember)
    {
      a4 = v37;
      v9 = v36;
      goto LABEL_44;
    }

    ++v20;
    --v19;
    ++v23;
    v21 = 1;
  }

  while (Length != v20);

  a4 = v37;
  v9 = v36;
  if (v22 >= 1)
  {
    ++*(*(a1[9] + 8) + 24);
  }

LABEL_45:
  if ((v9 & 4) != 0 && (a1[11] & 1) != 0 && *(*(a1[5] + 8) + 24) == *(*(a1[8] + 8) + 24))
  {
    *(*(a1[10] + 8) + 24) = a3 + a4;
  }
}

@end
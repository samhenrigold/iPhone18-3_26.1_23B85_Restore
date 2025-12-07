void sub_1A82D4BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, ...)
{
  va_start(va, a47);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v47 - 160), 8);
  _Block_object_dispose((v47 - 216), 8);
  _Unwind_Resume(a1);
}

id sub_1A82D4C80(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = _IMDDResultAttributeName(v5);
  v7 = [v5 attribute:v6 existsInRange:{a2, a3}];

  if (v7)
  {
    [v5 dd_attributedSubstringFromRange:{a2, a3}];
  }

  else
  {
    [v5 attributedSubstringFromRange:{a2, a3}];
  }
  v8 = ;

  return v8;
}

void sub_1A82D4D24(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v72 = a2;
  v11 = a3 == *(a1 + 112) && a4 == *(a1 + 120);
  *(*(*(a1 + 72) + 8) + 24) = v11;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), a2);
    *a5 = 1;
    goto LABEL_41;
  }

  v12 = sub_1A82D4C80(*(a1 + 32), a3, a4);
  v13 = *(a1 + 32);
  v14 = _IMDDResultAttributeName(v12);
  LOBYTE(v13) = [v13 attribute:v14 existsInRange:{a3, a4}];

  if ((v13 & 1) == 0)
  {
    v15 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
    v16 = [v15 trimmedString];

    v17 = [v16 string];
    if (!v72 && [v17 characterAtIndex:0] == 46)
    {
      if ([v17 length] < 2)
      {
        v19 = 0;
      }

      else
      {
        v18 = [v16 attributedSubstringFromRange:{1, objc_msgSend(v16, "length") - 1}];
        v19 = [v18 trimmedString];

        v16 = v18;
      }

      v16 = v19;
    }

    v12 = v16;
  }

  v20 = [v12 string];
  v21 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v22 = [v20 stringByTrimmingCharactersInSet:v21];
  v23 = [v22 length];

  if (v23)
  {
    v24 = *(a1 + 128);
    v25 = [*(a1 + 40) sender];
    if ([v24 _supportsRichLinkURL:v72 forSender:v25 isAllowlistedRichLinkSender:*(a1 + 144)])
    {
      v26 = *(a1 + 48);
      v27 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
      v28 = [v26 member:v27];
      if (v28)
      {
        v29 = v28;
        if (![*(a1 + 40) _isSenderUnknown] || *(a1 + 145) == 1)
        {

          goto LABEL_23;
        }

        v61 = *(a1 + 146);

        if (v61 == 1)
        {
LABEL_23:
          v30 = [*(a1 + 128) _guidForMessage:*(a1 + 40) url:v72];
          v31 = objc_alloc_init(IMPluginPayload);
          [(IMPluginPayload *)v31 setMessageGUID:v30];
          [(IMPluginPayload *)v31 setPluginBundleID:*MEMORY[0x1E69A6A18]];
          [(IMPluginPayload *)v31 setUrl:v72];
          v32 = [*(a1 + 40) fileTransferGUIDs];
          [(IMPluginPayload *)v31 addAttachmentsFromFileTransferGUIDs:v32];

          v33 = [IMTranscriptPluginChatItem alloc];
          if (*(a1 + 147) & 1) != 0 || (*(a1 + 145))
          {
            v34 = 1;
          }

          else
          {
            v34 = *(a1 + 146);
          }

          v43 = [(IMTranscriptPluginChatItem *)v33 _initWithItem:*(a1 + 40) initialPayload:v31 index:*(a1 + 136) messagePartRange:a3 parentChatHasKnownParticipants:a4, v34 & 1];
          [v43 setAllowlistedRichLinkSender:*(a1 + 144)];

          v62 = *(a1 + 96);
          if (!*(*(v62 + 8) + 40))
          {
            v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v64 = *(*(a1 + 96) + 8);
            v65 = *(v64 + 40);
            *(v64 + 40) = v63;

            v62 = *(a1 + 96);
          }

          if (*(*(*(a1 + 80) + 8) + 40))
          {
            [*(*(v62 + 8) + 40) addObject:?];
            v66 = *(*(a1 + 88) + 8);
            *(v66 + 32) = 0;
            *(v66 + 40) = 0;
            v67 = *(*(a1 + 80) + 8);
            v68 = *(v67 + 40);
            *(v67 + 40) = 0;

            v62 = *(a1 + 96);
          }

          [*(*(v62 + 8) + 40) addObject:v43];
          goto LABEL_39;
        }

LABEL_28:
        v35 = [*(a1 + 40) guid];
        v36 = [IMMessagePartChatItem chatItemGUIDForMessageGUID:v35 partIndex:*(a1 + 136)];

        v37 = [*(a1 + 56) showingEditHistoryForChatItemGUIDs];
        LOBYTE(v35) = [v37 containsObject:v36];

        v38 = [IMTextMessagePartChatItem alloc];
        v39 = *(a1 + 40);
        v40 = *(a1 + 136);
        v71 = v12;
        v41 = *(a1 + 148);
        v42 = *(a1 + 64);
        BYTE2(v69) = [*(a1 + 56) showTranslationAlternateText];
        BYTE1(v69) = v35;
        LOBYTE(v69) = v41;
        v12 = v71;
        v43 = [(IMTextMessagePartChatItem *)v38 _initWithItem:v39 text:v71 translationSecondaryText:v42 index:v40 messagePartRange:a3 subject:a4 shouldDisplayLink:0 isShowingEditHistory:v69 showTranslationAlternateText:?];
        [v43 setChipListFromText:*(a1 + 32)];

        v44 = *(*(a1 + 88) + 8);
        if (*(*(*(a1 + 80) + 8) + 40))
        {
          v74.location = a3;
          v74.length = a4;
          *(*(*(a1 + 88) + 8) + 32) = NSUnionRange(v44[2], v74);
          v45 = sub_1A82D4C80(*(a1 + 32), *(*(*(a1 + 88) + 8) + 32), *(*(*(a1 + 88) + 8) + 40));
          v46 = [*(a1 + 40) guid];
          v47 = [IMMessagePartChatItem chatItemGUIDForMessageGUID:v46 partIndex:*(a1 + 136)];

          v48 = [*(a1 + 56) showingEditHistoryForChatItemGUIDs];
          v49 = [v48 containsObject:v47];

          v50 = [IMTextMessagePartChatItem alloc];
          v51 = *(a1 + 40);
          v52 = *(a1 + 136);
          v53 = *(*(a1 + 88) + 8);
          v54 = *(a1 + 64);
          v55 = [*(a1 + 56) showTranslationAlternateText];
          v56 = *(v53 + 32);
          v57 = *(v53 + 40);
          v12 = v71;
          BYTE1(v70) = v55;
          LOBYTE(v70) = v49;
          v58 = [(IMTextMessagePartChatItem *)v50 _initWithItem:v51 text:v45 translationSecondaryText:v54 index:v52 messagePartRange:v56 subject:v57 isShowingEditHistory:0 showTranslationAlternateText:v70];
          v59 = *(*(a1 + 80) + 8);
          v60 = *(v59 + 40);
          *(v59 + 40) = v58;

          [*(*(*(a1 + 80) + 8) + 40) setChipListFromText:*(a1 + 32)];
        }

        else
        {
          v44[2].location = a3;
          v44[2].length = a4;
          objc_storeStrong((*(*(a1 + 80) + 8) + 40), v43);
        }

LABEL_39:

        goto LABEL_40;
      }
    }

    goto LABEL_28;
  }

LABEL_40:

LABEL_41:
}

void sub_1A82D5530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A82D5554(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v20;
    v7 = [v6 suggestedActionsList];
    v8 = [v7 count];

    if (v8)
    {
      v9 = a3 + 1;
      if (([v6 supportsSuggestedActionsMenu] & 1) == 0)
      {
        if (v9 >= [*(a1 + 32) count] || (objc_msgSend(*(a1 + 32), "objectAtIndex:", v9), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v11 = objc_opt_isKindOfClass(), v10, (v11 & 1) == 0))
        {
          v12 = [IMSuggestedActionsMessagePartChatItem alloc];
          v13 = [v6 messageItem];
          v14 = [v6 suggestedActionsList];
          v15 = [(IMSuggestedActionsMessagePartChatItem *)v12 initWithItem:v13 suggestedActionsList:v14];

          [*(a1 + 40) addObject:v15];
          [*(a1 + 48) addIndex:*(*(*(a1 + 56) + 8) + 24) + v9];
          ++*(*(*(a1 + 56) + 8) + 24);
        }
      }

      v16 = [IMRichActionFooterChatItem alloc];
      v17 = [v6 messageItem];
      v18 = [(IMRichActionFooterChatItem *)v16 _initWithItem:v17];

      [*(a1 + 40) addObject:v18];
      [*(a1 + 48) addIndex:*(*(*(a1 + 56) + 8) + 24) + v9];
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A82D5BA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[IMRichLinkCardMessagePartChatItem initWithItem:richCards:selectedIndex:]([IMRichLinkCardMessagePartChatItem alloc], "initWithItem:richCards:selectedIndex:", *(a1 + 32), v3, [*(a1 + 32) selectedRichCardIndex]);

  [*(a1 + 40) addObject:v4];
}

void sub_1A82D64B8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _senderHandle];
  v5 = -[IMMessageRetractionChatItem _initWithItem:partIndex:isFailedRetraction:retractionUnsupportedByHandles:sender:isFromMe:]([IMMessageRetractionChatItem alloc], "_initWithItem:partIndex:isFailedRetraction:retractionUnsupportedByHandles:sender:isFromMe:", *(a1 + 32), a2, [*(a1 + 40) containsIndex:a2], *(a1 + 48), v4, objc_msgSend(*(a1 + 32), "isFromMe"));
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82D65F8;
  v7[3] = &unk_1E78118C8;
  v7[4] = &v8;
  v7[5] = a2;
  [v6 enumerateObjectsUsingBlock:v7];
  [*(a1 + 64) insertObject:v5 atIndex:v9[3]];
  _Block_object_dispose(&v8, 8);
}

void sub_1A82D65E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82D65F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v6 index];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = [v6 partIndex];
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 < *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3 + 1;
  }

LABEL_8:
}

id sub_1A82D69E4(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v23;
    v9 = -1;
    v10 = -1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 transferGUID];
        if (v13)
        {
          [v3 addObject:v13];
        }

        location = [v12 messagePartRange];
        v16.location = location;
        v16.length = length;
        if (v9 != -1)
        {
          v29.location = v9;
          v29.length = v10;
          v17 = NSUnionRange(v29, v16);
          length = v17.length;
          location = v17.location;
        }

        v9 = location;
        v10 = length;
        v18 = [v12 index];
        if (v18 > v7)
        {
          v7 = v18;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v9 = -1;
    v10 = -1;
  }

  v19 = [[IMAggregateAttachmentMessagePartChatItem alloc] _initWithItem:a1[4] text:0 index:v7 messagePartRange:v9 transferGUIDs:v10 chatContext:v3, a1[5]];
  [v19 setChipListFromText:a1[6]];
  [v19 setAggregateAttachmentParts:v4];

  return v19;
}

void sub_1A82D6BF8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 56) + 8) + 40) count];
  if (v2 <= +[IMMessagePartChatItem _attachmentStackAggregationThreshold])
  {
    if ([*(*(*(a1 + 56) + 8) + 40) count] < 2)
    {
      [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 56) + 8) + 40)];
      goto LABEL_14;
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(*(*(a1 + 56) + 8) + 40);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          v10 = [IMOrganicAttachmentMessagePartChatItem alloc];
          v11 = [(IMOrganicAttachmentMessagePartChatItem *)v10 _initWithAttachmentMessagePartChatItem:v9, v14];
          [*(a1 + 32) addObject:v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v3 = [*(a1 + 32) lastObject];
    [v3 setChipListFromText:*(a1 + 40)];
  }

  else
  {
    v3 = (*(*(a1 + 48) + 16))();
    [*(a1 + 32) addObject:v3];
  }

LABEL_14:
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_1A82D6DD4(uint64_t a1, void *a2)
{
  v24 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v24;
    v4 = +[IMFileTransferCenter sharedInstance];
    v5 = [v3 transferGUID];
    v6 = [v4 transferForGUID:v5];

    LODWORD(v5) = [v6 existsAtLocalPath];
    v7 = [v6 commSafetySensitive];
    v8 = 1;
    if (v5 && !v7)
    {
      v9 = [v6 type];
      IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage();

      if (IsSupportedAnimatedImage)
      {
        v11 = [v6 localURL];
        v8 = IMFileURLIsActuallyAnimated();
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (v8)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) addObject:v24];
    goto LABEL_21;
  }

  v12 = v24;
  v13 = +[IMFileTransferCenter sharedInstance];
  v14 = [v12 transferGUID];
  v15 = [v13 transferForGUID:v14];

  v16 = [v15 filename];
  v17 = IMUTITypeForFilename();

  if ([v15 isFromMomentShare])
  {
    IMUTITypeIsSupportedByPhotos();
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((IMUTITypeIsSupportedByPhotos() & 1) == 0 && (isKindOfClass & 1) == 0)
    {
      v22 = (a1 + 32);
      goto LABEL_19;
    }
  }

  v18 = *(*(*(a1 + 48) + 8) + 40);
  if (!v18)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    v22 = (*(*(a1 + 48) + 8) + 40);
LABEL_19:
    v18 = *v22;
  }

  [v18 addObject:v12];

LABEL_21:
}

uint64_t (*sub_1A82D72BC())(void, void)
{
  result = MEMORY[0x1AC56C560]("UTTypeConformsTo", @"CoreServices");
  off_1EB2EA200 = result;
  return result;
}

void sub_1A82D72EC()
{
  v0 = MEMORY[0x1AC56C560]("kUTTypeImage", @"CoreServices");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB2EA218, v1);
}

id sub_1A82D76B8(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v24 = a5;
  v23 = a3;
  v8 = a2;
  v9 = [v8 account];
  v10 = _IMBestAccountForIMItem(v8, 0, v9, 0, 0);

  v25 = v10;
  IMMessageFromIMItem = _CreateIMMessageFromIMItem(v8, v10, 1);

  v12 = [IMMessage alloc];
  v13 = [IMMessageFromIMItem sender];
  v14 = [IMMessageFromIMItem time];
  v26 = a4;
  if (a4)
  {
    v27 = 0;
  }

  else
  {
    v27 = [IMMessageFromIMItem messageSubject];
  }

  v15 = [IMMessageFromIMItem flags];
  v16 = [IMMessageFromIMItem error];
  v17 = [IMMessageFromIMItem guid];
  v18 = [IMMessageFromIMItem subject];
  v19 = [IMMessageFromIMItem threadIdentifier];
  v20 = [(IMMessage *)v12 initWithSender:v13 time:v14 text:v23 messageSubject:v27 fileTransferGUIDs:v24 flags:v15 error:v16 guid:v17 subject:v18 threadIdentifier:v19];

  if ((v26 & 1) == 0)
  {
  }

  v21 = [(IMMessage *)v20 _imMessageItem];

  return v21;
}

void sub_1A82D7DF8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A7FA0];
  v4 = a2;
  v6 = [[v3 alloc] initWithDictionary:v4];

  v5 = [v6 suggestedActions];
  [*(a1 + 32) setSuggestedActionsList:v5];
}

void sub_1A82D86C4(uint64_t a1, uint64_t a2)
{
  if (IMIsRunningInUnitTesting())
  {
    byte_1EB2EA220 = 1;
  }

  else
  {
    v2 = [MEMORY[0x1AC56C550](@"AFPreferences" @"AssistantServices")];
    byte_1EB2EA220 = [v2 assistantIsEnabled];
  }
}

id IMCreateThreadIdentifierForMessagePartChatItem(void *a1)
{
  v1 = a1;
  v2 = [v1 message];
  v3 = [v2 guid];

  v4 = [v1 index];
  v5 = [v1 originalMessagePartRange];
  v7 = v6;

  v8 = IMCreateThreadIdentifier(v3, v4, v5, v7);

  return v8;
}

id IMCreateThreadIdentifier(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a1;
  v9 = [[v7 alloc] initWithFormat:@"r:%lu:%lu:%lu:%@", a2, a3, a4, v8];

  return v9;
}

id IMCreateThreadIdentifierForRetractedMessagePartChatItem(void *a1)
{
  v1 = a1;
  v2 = [v1 messageGUID];
  v3 = [v1 partIndex];

  v4 = IMCreateThreadIdentifier(v2, v3, 0x7FFFFFFFFFFFFFFFLL, 0);

  return v4;
}

uint64_t sub_1A82D91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1A82D9218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

id sub_1A82E1994(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82E1A6C;
  v11[3] = &unk_1E7811A20;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [a1 enumerateObjectsWithOptions:2 usingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void sub_1A82E1A6C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v9 message];
    v8 = *(a1 + 32);

    if (v7 == v8)
    {
      [*(a1 + 40) addIndex:a3];
    }
  }

  else if ([*(a1 + 40) count])
  {
    *a4 = 1;
  }
}

id sub_1A82E1B20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82E1BF8;
  v11[3] = &unk_1E7811A20;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [a1 enumerateObjectsWithOptions:2 usingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void sub_1A82E1BF8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 _item];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) addIndex:a3];
    }
  }

  else if ([*(a1 + 40) count])
  {
    *a4 = 1;
  }
}

void sub_1A82E3AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82E3B08(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (IMMessagePartDescriptionGetMessagePartIndex() == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

uint64_t sub_1A82E4A6C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  if ([v9 checkResourceIsReachableAndReturnError:a5] && !objc_msgSend(a1, "removeItemAtURL:error:", v9, a5))
  {
    v11 = 0;
  }

  else
  {
    v10 = MEMORY[0x1AC56C700](v8);
    if (v10)
    {
      [v8 startAccessingSecurityScopedResource];
      v11 = [a1 copyItemAtURL:v8 toURL:v9 error:a5];
      [v8 stopAccessingSecurityScopedResource];
    }

    else
    {
      v11 = [a1 copyItemAtURL:v8 toURL:v9 error:a5];
    }
  }

  return v11;
}

void sub_1A82E544C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82E5344);
  }

  _Unwind_Resume(a1);
}

void sub_1A82E6C80(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "clearing in memory salt cache due to dispatch notification", v5, 2u);
    }
  }

  v3 = [*(a1 + 32) model];
  v4 = [MEMORY[0x1E695DF20] dictionary];
  [v3 setPluginIDToMetadataCache:v4];
}

uint64_t sub_1A82E89E8(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = [v10 extension];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 extensionPointIdentifier];
      v8 = [v7 isEqualToString:*(a1 + 32)];

      if ((v8 & 1) == 0)
      {
        [*(a1 + 40) addObject:v6];
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A82E9008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A82E902C(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopTimingForKey:*(a1 + 40)];
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 48);
        *buf = 138412546;
        v21 = v8;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "IMBalloonPluginManager encountered error discovering extensions (%@): %@", buf, 0x16u);
      }
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v10 = [objc_opt_class() precacheBalloonAppExtensionsForExtensions:v5];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A82E9224;
    v13[3] = &unk_1E7811BB8;
    v14 = *(a1 + 48);
    v15 = v5;
    v16 = *(a1 + 32);
    objc_copyWeak(&v19, (a1 + 64));
    v11 = *(a1 + 56);
    v17 = v10;
    v18 = v11;
    v12 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v13);

    objc_destroyWeak(&v19);
  }
}

void sub_1A82E9224(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = [*(a1 + 40) count];
      *buf = 138412546;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Matching extensions (%@): %lu", buf, 0x16u);
    }
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"loadAppExtensionForProxies_%@", *(a1 + 32)];
  [*(a1 + 48) startTimingForKey:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _updatePluginsForExtensions:*(a1 + 40) extensionPoint:*(a1 + 32) precachedBalloonAppExtensions:*(a1 + 56)];

  [*(a1 + 48) stopTimingForKey:v5];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"__kIMBalloonPluginExtensionsLoaded" object:*(a1 + 64)];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 48);
      *buf = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "3rd party app discovery time: %@", buf, 0xCu);
    }
  }
}

void sub_1A82E9B70(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 bundleIdentifier];
  if (!v4)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_24;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 bundlePath];
      v21 = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Skipping bundle with missing identifier at path:%@", &v21, 0xCu);
    }

    goto LABEL_6;
  }

  if ([*(a1 + 32) _shouldSkipUpdatingPluginBundleIdentifier:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v3 bundlePath];
        v21 = 138412546;
        v22 = v4;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Skipping bundle with identifier:%@ at path:%@", &v21, 0x16u);
      }

LABEL_6:
    }
  }

  else
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v4];
    v8 = [*(*(*(a1 + 64) + 8) + 40) containsObject:v4];
    if ([*(a1 + 40) containsObject:v4] && !v8)
    {
      goto LABEL_18;
    }

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      v9 = [objc_opt_class() balloonProviderBundlePathURL];
      v10 = *(*(a1 + 72) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:*(*(*(a1 + 72) + 8) + 40)];
      v13 = *(*(a1 + 80) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = [*(a1 + 32) _insertPluginForAppBundle:v3 balloonProviderBundle:*(*(*(a1 + 80) + 8) + 40)];
    if (v8)
    {
      [*(*(*(a1 + 64) + 8) + 40) removeObject:v4];
    }

    if (!v15)
    {
LABEL_18:
      v16 = [*(a1 + 32) model];
      v17 = [v16 pluginsMap];
      v18 = *(a1 + 48);
      v19 = [v3 bundleIdentifier];
      v20 = [v18 objectForKeyedSubscript:v19];
      v15 = [v17 pluginForIdentifier:v20];
    }

    if ([v15 isEnabled])
    {
      ++*(*(*(a1 + 88) + 8) + 24);
    }

    if ([v15 isStickerPackOnly])
    {
      ++*(*(*(a1 + 96) + 8) + 24);
    }
  }

LABEL_24:
}

void sub_1A82E9E94(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82E9E54);
  }

  _Unwind_Resume(a1);
}

void sub_1A82EA5D4(uint64_t a1, void *a2)
{
  v21 = a2;
  v3 = [v21 identifier];
  [*(*(*(a1 + 64) + 8) + 40) addObject:v3];
  v4 = [*(*(*(a1 + 72) + 8) + 40) containsObject:v3];
  if ([*(a1 + 32) containsObject:v3])
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    goto LABEL_12;
  }

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v6 = objc_alloc_init(MEMORY[0x1E69A6170]);
    v7 = *(*(a1 + 80) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v9 = [objc_opt_class() balloonProviderBundlePathURL];
    v10 = *(*(a1 + 88) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:*(*(*(a1 + 88) + 8) + 40)];
    v13 = *(*(a1 + 96) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = [*(a1 + 40) _insertPluginForExtension:v21 balloonProviderBundle:*(*(*(a1 + 96) + 8) + 40) precachedBalloonAppExtensions:*(a1 + 48) timingCollection:*(*(*(a1 + 80) + 8) + 40)];
  if (v4)
  {
    [*(*(*(a1 + 72) + 8) + 40) removeObject:v3];
  }

  if (!v15)
  {
LABEL_12:
    v16 = [*(a1 + 40) model];
    v17 = [v16 pluginsMap];
    v18 = *(a1 + 56);
    v19 = [v21 identifier];
    v20 = [v18 objectForKeyedSubscript:v19];
    v15 = [v17 pluginForIdentifier:v20];
  }

  if ([v15 isEnabled])
  {
    ++*(*(*(a1 + 104) + 8) + 24);
  }

  if ([v15 isStickerPackOnly])
  {
    ++*(*(*(a1 + 112) + 8) + 24);
  }
}

void sub_1A82EB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82EB418(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if ([v4 length])
  {
    v5 = [*(a1 + 40) model];
    v6 = [v5 pluginsMap];
    v7 = [v6 pluginForIdentifier:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v4];
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = v7;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Removing plugin: %@", &v9, 0xCu);
        }
      }
    }
  }
}

uint64_t sub_1A82EC06C(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Couldn't enumerate %@: %@", &v8, 0x16u);
    }
  }

  return 1;
}

void sub_1A82ED2EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0070(v3, v5);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Presenting satellite connection banner", v6, 2u);
    }

    v5 = [MEMORY[0x1E695E000] messagesAppDomain];
    [v5 setInteger:*(a1 + 32) + 1 forKey:*MEMORY[0x1E69A7D20]];
  }
}

uint64_t sub_1A82ED978()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  qword_1EB2EA250 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMSPISimulateMessagesWithConfiguration(void *a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = a2;
  v6 = +[IMDaemonController sharedController];
  v7 = [v6 multiplexedConnectionWithLabel:@"IMCoreSPI_HasActiveAlias" capabilities:8708 context:0];

  [v7 waitForSetup];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69A8298]);
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1A8259B60;
  v30 = sub_1A825AEDC;
  v31 = 0;
  while (v9 < [v4 count])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v5 clientBatchSize];
    v12 = v11 >= [v4 count] - v9 ? objc_msgSend(v4, "count") - v9 : objc_msgSend(v5, "clientBatchSize");
    v13 = [v4 subarrayWithRange:{v9, v12}];
    v14 = [v13 arrayByApplyingSelector:sel__createSimulatedMessage];
    v15 = [v7 synchronousRemoteProxy];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1A82EE8E8;
    v22[3] = &unk_1E7811D08;
    v25 = &v26;
    v23 = v8;
    v16 = v14;
    v24 = v16;
    [v15 simulateMessages:v16 configuration:v5 completion:v22];

    v17 = v27[5];
    objc_autoreleasePoolPop(v10);
    if (v17)
    {
      break;
    }

    v9 += [v5 clientBatchSize];
  }

  [v7 invalidate];
  if (a3)
  {
    v18 = v27[5];
    if (v18)
    {
      *a3 = v18;
    }
  }

  v19 = v8;
  _Block_object_dispose(&v26, 8);

  return v19;
}

void sub_1A82EE8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82EE8E8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) arrayByApplyingSelector:sel_guid];
  [v5 addObjectsFromArray:v6];
}

unint64_t FZPersonStatusFromIMPersonStatus(unint64_t result)
{
  if (result >= 6)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"IMServiceImpl: Unknown IMPersonStatus %d", result}];
    return 0;
  }

  return result;
}

uint64_t IMPersonStatusFromFZPersonStatus(uint64_t result)
{
  if (result < 6)
  {
    return result;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"IMServiceImpl: Unknown FZPersonStatus %d", result}];
  return 0;
}

void sub_1A82EEA8C()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C350];
  v4[0] = *MEMORY[0x1E695C348];
  v4[1] = v0;
  v1 = *MEMORY[0x1E695C358];
  v4[2] = *MEMORY[0x1E695C340];
  v4[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v3 = qword_1EB2E90D0;
  qword_1EB2E90D0 = v2;
}

void sub_1A82EFFA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, __int16 a11, __int16 a12, uint64_t a13, __int128 a14)
{
  if (a2 == 1)
  {
    v14 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v14 name];
        v17 = [v14 reason];
        v18 = [v14 userInfo];
        LODWORD(a9) = 138413314;
        *(&a9 + 4) = v14;
        WORD6(a9) = 2112;
        *(&a9 + 14) = v16;
        a12 = 2112;
        a13 = v17;
        LOWORD(a14) = 2112;
        *(&a14 + 2) = v18;
        WORD5(a14) = 2080;
        *(&a14 + 12) = "[IMHandle _postNotification:]";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &a9, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A82EFF64);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A82F16D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A82F1710(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && [v3 length])
  {
    [WeakRetained setSuggestedName:v3];
    v5 = *(a1 + 32);
    v9 = *MEMORY[0x1E69A6868];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:*MEMORY[0x1E69A6870] object:*(a1 + 40) userInfo:v6];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:*MEMORY[0x1E69A6838] object:*(a1 + 40) userInfo:v6];
  }
}

void sub_1A82F1B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82F1B8C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 rangeOfString:@" "];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v10;
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v4 = [v10 substringToIndex:v3];
    v5 = [v10 substringFromIndex:v6 + 1];
  }

  v7 = [objc_alloc(MEMORY[0x1E69A8190]) initWithFirstName:v4 lastName:v5 avatar:0 pronouns:0];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1A82F34FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCachedDisplayNameWithAbbreviation:0];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 isBusiness];

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = v5;
  if (v4)
  {
    v7 = MEMORY[0x1E69A7F28];
    v8 = [*(a1 + 32) ID];
    v9 = [v7 placeholderNameForBrandURI:v8];
    [v6 setCachedName:v9];
  }

  else
  {
    [v5 setCachedName:0];
  }

  v11 = +[IMHandleRegistrar sharedInstance];
  v10 = objc_loadWeakRetained((a1 + 48));
  [v11 addHandleToCNIDMap:v10 CNContact:*(a1 + 40)];
}

void sub_1A82F6684(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = IMHandleLogHandle();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0174(v9, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) ID];
    v13 = *(a1 + 40);
    v14 = 138413314;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 1024;
    v23 = a4;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Completed request to share off grid mode with handle %@ from handle %@. didAttemptInvitation: %{BOOL}d wasAlreadyInvited: %{BOOL}d didShareHandle: %{BOOL}d", &v14, 0x28u);
  }
}

void sub_1A82F6B38(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = IMHandleLogHandle();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E01EC(v11, v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) ID];
    v15 = *(a1 + 40);
    v16 = 138413570;
    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = a4;
    v26 = 2048;
    v27 = a5;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Completed request to share availbaility with handle %@ from handle %@. didAttemptInvitation: %ld wasAlreadyInvited: %ld canShareHandle: %ld didShareHandle: %ld", &v16, 0x3Eu);
  }
}

void sub_1A82F85B8(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Error getting brand for business with brandURI: %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 32);
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEBUG, "Successfully fetched business info for business with brandURI: %@", &v13, 0xCu);
      }
    }

    [WeakRetained _fetchedBrand:v5 withBrandURI:*(a1 + 32) simID:*(a1 + 40)];
  }
}

void sub_1A82F8868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = +[IMChorosMonitor sharedInstance];
    v3 = [v5 ID];
    v4 = [v2 roadsideBusinessIDForChatIdentifier:v3];

    if (v4)
    {
      [v5 _fetchBrandInfoForBrandWithURI:v4 forType:1 simID:0];
    }

    WeakRetained = v5;
  }
}

void sub_1A82F8C80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 136));
  _Unwind_Resume(a1);
}

void sub_1A82F8CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82F8DE0;
  v9[3] = &unk_1E7811ED0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void sub_1A82F8DE0(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v3 = +[IMChatRegistry sharedRegistry];
    v4 = [*(a1 + 40) __im_stripSip];
    v5 = [v3 brandLogoDataFromChatIdentifier:v4];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = [v5 length];
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v14 = 134218498;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Square logo data from cache: %lu for %@. We failed to get it from business with error: %@", &v14, 0x20u);
      }
    }

    if (v5)
    {
      [WeakRetained setBrandSquareLogoImageData:v5];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 40);
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Successfully fetched logo image data for brandURI: %@", &v14, 0xCu);
      }
    }

    [WeakRetained setBrandSquareLogoImageData:*(a1 + 48)];
    v5 = +[IMChatRegistry sharedRegistry];
    v12 = *(a1 + 48);
    v13 = [*(a1 + 40) __im_stripSip];
    [v5 updateBrandLogo:v12 transferGuid:0 chatIdentifier:v13];
  }

  [WeakRetained _postOnScreenChangedNotificationForBrandProperty:*MEMORY[0x1E69A6848]];
}

void sub_1A82F9030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82F911C;
  v9[3] = &unk_1E7811ED0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void sub_1A82F911C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 40);
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Error getting square logo data for business with brandURI: %@", &v7, 0xCu);
      }
    }
  }

  else
  {
    v5 = IMHandleLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched square logo image data for business with brandURI: %@", &v7, 0xCu);
    }

    [WeakRetained setBrandSquareLogoImageData:*(a1 + 48)];
  }

  [WeakRetained _postOnScreenChangedNotificationForBrandProperty:*MEMORY[0x1E69A6848]];
}

void sub_1A82F9284(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82F9370;
  v9[3] = &unk_1E7811ED0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void sub_1A82F9370(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 40);
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Error getting wide logo image data for business with brandURI: %@", &v7, 0xCu);
      }
    }
  }

  else
  {
    v5 = IMHandleLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "Successfully fetched wide logo image data for business with brandURI: %@", &v7, 0xCu);
    }

    [WeakRetained setBrandWideLogoImageData:*(a1 + 48)];
  }

  [WeakRetained _postOnScreenChangedNotificationForBrandProperty:*MEMORY[0x1E69A6850]];
}

void sub_1A82F96D0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82F95C8);
  }

  _Unwind_Resume(a1);
}

void sub_1A82FA9C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v4 = a2;
  v5 = [v3 errorWithDomain:@"com.apple.Messages.IMDaemonQueryErrorDomain" code:1 userInfo:0];
  [v2 failQuery:v4 error:v5];
}

void sub_1A82FC590(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A82FC550);
  }

  objc_sync_exit(v2);
  _Unwind_Resume(exc_buf);
}

void sub_1A82FE26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82FE28C(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")}];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
    v16 = 136316162;
    v17 = "[IMChatItemFilterController insertHistoricalMessages:queryID:hasMessagesBefore:hasMessagesAfter:isReplacingItems:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "%s Updating/acting on queryID: %@  insertHistoricalMessages: %@, hasMessagesBefore: %@ hasMessagesAfter: %@", &v16, 0x34u);
  }

  if (*(a1 + 58) == 1)
  {
    [*(a1 + 40) _removeAllItems];
  }

  v7 = [*(a1 + 40) itemsToPrepend];
  if ([v7 count])
  {
    v8 = *(*(a1 + 48) + 8);
    if (*(v8 + 40))
    {
      v9 = [v7 mutableCopy];
      [v9 addObjectsFromArray:*(*(*(a1 + 48) + 8) + 40)];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = v7;
      v11 = *(v8 + 40);
      *(v8 + 40) = v12;
    }
  }

  v13 = [*(a1 + 40) _appendArchivedItemsToItemsArray:*(*(*(a1 + 48) + 8) + 40)];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  [*(a1 + 40) _replaceAndSortItemsWithUnsortedItems:*(*(*(a1 + 48) + 8) + 40)];
}

id sub_1A82FFDAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) itemMatchesFilter:v3])
  {
    v4 = *(a1 + 40);
    v5 = [v3 guid];
    [v4 addObject:v5];

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1A83000CC()
{
  if (IMIsRunningInMessagesUIProcess())
  {
    v0 = objc_alloc_init(IMPhotoLibraryPersistenceManager);
    qword_1ED767860 = v0;

    MEMORY[0x1EEE66BB8](v0);
  }

  else if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Not allowing IMPhotoLibraryPersistenceManager to be created.", v2, 2u);
    }
  }
}

void sub_1A83002D4()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.IMPhotoLibraryPersistenceManager", v2);
  v1 = qword_1EB2E9170;
  qword_1EB2E9170 = v0;
}

void sub_1A8300384()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.IMPhotoLibraryPersistenceManagerInternalQueue", v2);
  v1 = qword_1EB2E9120;
  qword_1EB2E9120 = v0;
}

void sub_1A83005FC(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isLQMHQEnabled];

  if (v5)
  {
    v6 = +[IMFileTransferCenter sharedInstance];
    v7 = [v6 transferForGUID:v3];

    v8 = [v7 userInfo];
    v9 = [v8 objectForKey:@"isHQTransfer"];
    v10 = [v9 stringValue];
    v11 = [v10 isEqualToString:@"YES"];
  }

  else
  {
    v11 = 0;
  }

  v12 = v3;
  v13 = v12;
  if (IMFileTransferGUIDIsTemporary())
  {
    [*(a1 + 32) messageParts];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v28 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [v19 transferGUID];
          if ([v20 isEqualToString:v12])
          {
            [v19 messagePartIndex];

            goto LABEL_15;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v21 = [*(a1 + 32) guid];
    v13 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
  }

  v22 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v23 = [v22 isLQMHQEnabled];

  if ((v23 & v11) == 1)
  {
    v24 = [v13 stringByAppendingString:@"hq"];

    v13 = v24;
  }

  [*(a1 + 40) addObject:v13];
}

void sub_1A8301008(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8300F60);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A83013E4(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) count];
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Finished fetching identifiers that weren't cached. Notifying listeners. identifiersNeedingFetch count: %lu", &v7, 0xCu);
    }
  }

  [*(a1 + 40) _notifyListeners];
}

void sub_1A83019D8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8301794);
  }

  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(exc_buf);
}

id sub_1A8301A70()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB2E90E8;
  v7 = qword_1EB2E90E8;
  if (!qword_1EB2E90E8)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A8302F90;
    v3[3] = &unk_1E7811770;
    v3[4] = &v4;
    sub_1A8302F90(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8301B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8301B50(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    v2 = (a1 + 32);
    v3 = [objc_opt_class() _photoLibraryInternalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8301E94;
    block[3] = &unk_1E780FCB0;
    block[4] = *v2;
    dispatch_sync(v3, block);
  }

  v23 = *(*(a1 + 32) + 64);
  v22 = [v23 librarySpecificFetchOptions];
  [v22 setIncludeTrashedAssets:0];
  [v22 setIncludeHiddenAssets:1];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        if (v23)
        {
          v8 = sub_1A8301A70();
          v29 = v7;
          v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
          v10 = [v8 fetchAssetsWithSyndicationIdentifiers:v9 options:v22 includeRejected:1];

          v11 = [v10 count];
          if (v11)
          {
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          v12 = [v10 firstObject];
          v13 = [v12 uuid];

          v14 = *(*(a1 + 64) + 8);
          v16 = *(v14 + 40);
          v15 = (v14 + 40);
          if (!v16 && v13)
          {
            objc_storeStrong(v15, v13);
          }

          v17 = v11 != 0;
          v18 = *(a1 + 32);
          objc_sync_enter(v18);
          v19 = *(*(a1 + 32) + 16);
          v20 = [MEMORY[0x1E696AD98] numberWithBool:v17];
          [v19 setObject:v20 forKey:v7];

          [*(*(a1 + 32) + 24) setObject:v10 forKey:v7];
          [*(*(a1 + 32) + 48) removeObject:v7];
          if (v13)
          {
            [*(*(a1 + 32) + 32) setObject:v13 forKey:v7];
          }

          objc_sync_exit(v18);
        }

        else
        {
          [*(*(a1 + 32) + 48) removeObject:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 48));
}

void *sub_1A8301E9C(void *result)
{
  *(*(result[5] + 8) + 24) += *(*(result[6] + 8) + 24);
  v1 = result[4];
  if (v1)
  {
    return (*(v1 + 16))(result[4], *(*(result[5] + 8) + 24), *(*(result[7] + 8) + 40));
  }

  return result;
}

uint64_t sub_1A8302874(uint64_t a1)
{
  [*(a1 + 32) _openPhotoLibraryIfNecessary];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Registering IMPhotoLibraryPersistenceManager as a system photo library change observer", v4, 2u);
    }
  }

  return [*(*(a1 + 32) + 64) registerChangeObserver:?];
}

void *sub_1A83029BC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Received photoLibraryDidChange: notification", v4, 2u);
    }
  }

  result = [*(a1 + 32) _invalidateCacheDueToChanges:*(a1 + 40)];
  if (result)
  {
    return [*(a1 + 32) _notifyListeners];
  }

  return result;
}

id sub_1A8302D8C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB2E9D30;
  v7 = qword_1EB2E9D30;
  if (!qword_1EB2E9D30)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A8303150;
    v3[3] = &unk_1E7811770;
    v3[4] = &v4;
    sub_1A8303150(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8302E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A8302F90(uint64_t a1)
{
  sub_1A8302FE8();
  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E04D0();
  }

  qword_1EB2E90E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8302FE8()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!qword_1EB2E9D90)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = sub_1A83030DC;
    v0[4] = &unk_1E78102B8;
    v0[5] = v0;
    v1 = xmmword_1E78120B0;
    v2 = 0;
    qword_1EB2E9D90 = _sl_dlopen();
  }

  if (!qword_1EB2E9D90)
  {
    sub_1A84E054C(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_1A83030DC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB2E9D90 = result;
  return result;
}

Class sub_1A8303150(uint64_t a1)
{
  sub_1A8302FE8();
  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E05CC();
  }

  qword_1EB2E9D30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A83031A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_1A8303208()
{
  v0 = objc_alloc_init(IMLocationManagerUtils);
  qword_1ED7678D0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8303554(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Authorized to send out location.", v5, 2u);
    }
  }

  [*(a1 + 32) setCurrentLocationGUID:*(a1 + 40)];
  v3 = [IMMessage locatingMessageWithGuid:*(a1 + 40) error:0];
  if ([*(a1 + 48) length])
  {
    [v3 setSourceApplicationID:*(a1 + 48)];
  }

  sub_1A8303660(*(a1 + 32), v3);
  [*(a1 + 32) _sendMessage:v3 adjustingSender:1 shouldQueue:1];
  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_1A8303660(void *a1, void *a2)
{
  v19 = a1;
  v3 = a2;
  v4 = [v19 inlineReplyController];
  if (v4)
  {
    v5 = v4;
    v6 = [v19 inlineReplyController];
    v7 = [v6 threadIdentifier];

    if (v7)
    {
      v8 = [v19 inlineReplyController];
      v9 = [v8 threadIdentifier];
      [v3 setThreadIdentifier:v9];
    }
  }

  v10 = [v19 inlineReplyController];
  if (v10)
  {
    v11 = v10;
    v12 = [v19 inlineReplyController];
    v13 = [v12 threadOriginator];

    if (v13)
    {
      v14 = [v19 inlineReplyController];
      v15 = [v14 threadOriginator];

      v16 = [v15 account];
      v17 = _IMBestAccountForIMItem(v15, 0, v16, 0, 0);

      IMMessageFromIMItem = _CreateIMMessageFromIMItem(v15, v17, 1);
      [v3 setThreadOriginator:IMMessageFromIMItem];
    }
  }
}

void sub_1A83037E8(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v26 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Update current location complete with error: %@", buf, 0xCu);
    }
  }

  if (!v26)
  {
    v9 = [*(a1 + 32) account];
    v10 = [v9 service];
    v11 = +[IMServiceImpl iMessageService];

    v12 = [*(a1 + 32) lastAddressedHandleID];
    v13 = [*(a1 + 32) lastAddressedSIMID];
    v14 = [IMServiceImpl mmsEnabledforPhoneNumber:v12 simID:v13];

    if (v10 == v11 || v14)
    {
      if (v10 == v11)
      {
        v15 = 1;
      }

      else
      {
        v15 = 3;
      }

      v5 = [IMMessage messageWithLocation:v25 flags:5 error:0 guid:*(a1 + 40)];
    }

    else
    {
      v5 = [IMMessage textMessageWithLocation:v25 flags:5 error:0 guid:*(a1 + 40)];
      v15 = 2;
    }

    v33 = *MEMORY[0x1E69A7420];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    v34 = v16;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v17 = [MEMORY[0x1E69A8168] sharedInstance];
    [v17 trackEvent:*MEMORY[0x1E69A7418] withDictionary:v8];

    if ([*(a1 + 48) length])
    {
      [v5 setSourceApplicationID:*(a1 + 48)];
    }

    v18 = [*(a1 + 32) account];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = [v5 fileTransferGUIDs];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v20)
    {
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v28 + 1) + 8 * i);
          v24 = +[IMFileTransferCenter sharedInstance];
          [v24 assignTransfer:v23 toMessage:v5 account:v18];
        }

        v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v20);
    }

    sub_1A8303660(*(a1 + 32), v5);
    [*(a1 + 32) _sendMessage:v5 adjustingSender:1 shouldQueue:1];

    goto LABEL_24;
  }

  if ([v26 code] != 42)
  {
    v5 = [IMMessage locatingMessageWithGuid:*(a1 + 40) error:v26];
    v6 = [*(a1 + 32) account];
    v7 = [v6 loginIMHandle];
    [v5 _updateSender:v7];

    v8 = [v5 _imMessageItem];
    [*(a1 + 32) _handleIncomingItem:v8];
LABEL_24:
  }

  [*(a1 + 32) setCurrentLocationGUID:0];
}

void sub_1A8303F50(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"guid"];
  v5 = [v3 objectForKeyedSubscript:@"size"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [*(a1 + 32) existingChatWithGUID:v4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 chatIdentifier];
    v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
    v11 = v10;
    v12 = MEMORY[0x1E696AD98];
    if (v10)
    {
      v6 += [v10 unsignedLongLongValue];
    }

    v13 = [v12 numberWithUnsignedLongLong:v6];
    [*(a1 + 40) setObject:v13 forKeyedSubscript:v9];
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Did not find chat for guid: %@", &v15, 0xCu);
    }
  }
}

void sub_1A8304114(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) existingChatWithChatIdentifier:v7];
  v5 = [*(a1 + 40) objectForKeyedSubscript:v7];
  v6 = v5;
  if (v5)
  {
    [v5 unsignedLongLongValue];
  }

  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1A8306910()
{
  v0 = objc_opt_new();
  qword_1EB2EA298 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83069EC(uint64_t a1)
{
  v2 = +[IMDaemonController sharedController];
  v3 = [v2 hasListenerForID:@"__k_IMSPIListenerID"];

  if (a1)
  {
    v4 = +[IMDaemonController sharedController];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 capabilitiesForListenerID:@"__k_IMSPIListenerID"];

      v7 = v6 | a1;
      if (v6 == v7)
      {
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Capability exists, no need to reset.", buf, 2u);
        }

LABEL_16:

        goto LABEL_17;
      }

      v10 = +[IMDaemonController sharedController];
      v11 = [v10 setCapabilities:v7 forListenerID:@"__k_IMSPIListenerID"];

      if ((v11 & 1) == 0)
      {
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E0730(v8);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v9 = [v4 addListenerID:@"__k_IMSPIListenerID" capabilities:a1];

      if ((v9 & 1) == 0)
      {
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E06EC(v8);
        }

        goto LABEL_16;
      }
    }

LABEL_17:
    v12 = +[IMDaemonController sharedController];
    [v12 blockUntilConnected];

    return;
  }

  if (v3)
  {
    v13 = +[IMDaemonController sharedController];
    [v13 removeListenerID:@"__k_IMSPIListenerID"];
  }
}

void sub_1A8306DAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_1A8306EA0;
  v11 = &unk_1E7810140;
  v5 = v4;
  v12 = v5;
  v6 = v3;
  v13 = v6;
  v7 = _Block_copy(&v8);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t sub_1A8306EA0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Cancel last clear command before adding new caps for: %@", &v5, 0xCu);
  }

  return [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 40) selector:sel_clearChatCap object:0];
}

void sub_1A8306F6C()
{
  v0 = +[_IMSPIConnectionController sharedController];
  sub_1A8306DAC(v0, @"_IMSetChatCapTimer");
  [v0 setChatCap];
}

void sub_1A8306FC4()
{
  v0 = +[_IMSPIConnectionController sharedController];
  sub_1A8306DAC(v0, @"_IMSetChatSendCapTimer");
  [v0 setChatSendCap];
}

void sub_1A830701C()
{
  v0 = +[_IMSPIConnectionController sharedController];
  sub_1A8306DAC(v0, @"_IMSetChatSendCapTimerWithAttachments");
  [v0 setChatSendCapWithAttachments];
}

void sub_1A8307074()
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    sub_1A83070D0();
  }

  else
  {
    v0 = MEMORY[0x1E69E96A0];

    dispatch_async(v0, &unk_1F1B6E680);
  }
}

void sub_1A83070D0()
{
  v0 = +[_IMSPIConnectionController sharedController];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v0 selector:sel_clearChatCap object:0];
  [v0 performSelector:sel_clearChatCap withObject:0 afterDelay:10.0];
}

void sub_1A8307428(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _bestSendingHandle];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 40);
        v5 = *(a1 + 48);
        *buf = 138412802;
        v17 = v4;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v2;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Sending notice %@ to %@ from %@", buf, 0x20u);
      }
    }

    v6 = [*(a1 + 32) daemonConnection];
    v7 = [v6 remoteProxy];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A8307658;
    v11[3] = &unk_1E78121B0;
    v12 = v8;
    v13 = *(a1 + 48);
    v14 = v2;
    v15 = *(a1 + 56);
    [v7 sendNotice:v12 toHandles:v9 fromHandle:v14 reply:v11];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0774();
    }

    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_1A8307658(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Completed sending notice %@ to %@ from %@", &v7, 0x20u);
    }
  }

  return (*(a1[7] + 16))();
}

void sub_1A8307910(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _bestSendingHandle];
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 40);
        v5 = *(a1 + 48);
        *buf = 138412802;
        v17 = v4;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v2;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Finished connecting. Sending clear notice %@ to %@ from %@", buf, 0x20u);
      }
    }

    v6 = [*(a1 + 32) daemonConnection];
    v7 = [v6 remoteProxy];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A8307B38;
    v11[3] = &unk_1E78121B0;
    v12 = v8;
    v13 = *(a1 + 48);
    v14 = v2;
    v15 = *(a1 + 56);
    [v7 sendClearNotice:v12 toHandles:v9 reply:v11];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E07EC();
    }

    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_1A8307B38(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];
      v7 = 138412802;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Completed sending clear notice %@ to %@ from %@", &v7, 0x20u);
    }
  }

  return (*(a1[7] + 16))();
}

void sub_1A8308120(uint64_t a1)
{
  [*(a1 + 32) setMonitorStarted:1];
  if (([*(a1 + 32) isSatelliteConnectionActive] & 1) == 0 && !*(a1 + 40) && *(a1 + 48) == 1 && (objc_msgSend(*(a1 + 32), "isStewieActive") & 1) == 0)
  {
    [*(a1 + 32) presentSatelliteConnectionBannerIfNecessaryWithChat:0 withReason:@"AppOpen" ignoreTimerLimit:0];
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 __mainThreadPostNotificationName:@"IMChorosMonitorStewieStatusChangedNotification" object:0];
}

void sub_1A83081D0(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48) - 1;
      if (v3 > 2)
      {
        v4 = @"AppLaunch";
      }

      else
      {
        v4 = off_1E7812278[v3];
      }

      v5 = @"NO";
      v6 = *(a1 + 57);
      if (*(a1 + 56))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *buf = 138412802;
      if (v6)
      {
        v5 = @"YES";
      }

      v16 = v4;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Starting monitor for reason: %@ and show offer: %@ in background: %@", buf, 0x20u);
    }
  }

  v8 = [*(*(a1 + 32) + 24) start];
  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 56))
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Loaded monitor and show offer: %@", buf, 0xCu);
      }
    }

    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8308498;
      block[3] = &unk_1E780FE90;
      v14 = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (v9)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Failed to start the monitor", buf, 2u);
    }
  }
}

void sub_1A8308B08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Completed request to open Stewie SOS application", v7, 2u);
    }
  }

  if (v3)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E09FC(v3, v5);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void sub_1A8308EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0B64();
    }

    v5 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v5 = *(v6 + 16);
LABEL_7:
    v5();
  }
}

void sub_1A8309888(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1A83098F4()
{
  v8[13] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69A7D58];
  v8[0] = *MEMORY[0x1E69A7D48];
  v8[1] = v0;
  v1 = *MEMORY[0x1E69A7D68];
  v8[2] = *MEMORY[0x1E69A7D80];
  v8[3] = v1;
  v2 = *MEMORY[0x1E69A7D50];
  v8[4] = *MEMORY[0x1E69A7D98];
  v8[5] = v2;
  v3 = *MEMORY[0x1E69A7D60];
  v8[6] = *MEMORY[0x1E69A7D90];
  v8[7] = v3;
  v4 = *MEMORY[0x1E69A7DA0];
  v8[8] = *MEMORY[0x1E69A7DA8];
  v8[9] = v4;
  v5 = *MEMORY[0x1E69A7D70];
  v8[10] = *MEMORY[0x1E69A7D88];
  v8[11] = v5;
  v8[12] = *MEMORY[0x1E69A7D78];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:13];
  v7 = qword_1EB2EA2A0;
  qword_1EB2EA2A0 = v6;
}

void sub_1A8309B88(uint64_t a1)
{
  v56[13] = *MEMORY[0x1E69E9840];
  v55[0] = *MEMORY[0x1E69A7D48];
  v54 = sub_1A8361964();
  v1 = [v54 localizedStringForKey:@"Balloons" value:@"Balloons" table:@"IMCoreLocalizable"];
  v53 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"Balloons";
  }

  v56[0] = v2;
  v55[1] = *MEMORY[0x1E69A7D58];
  v52 = sub_1A8361964();
  v3 = [v52 localizedStringForKey:@"Confetti" value:@"Confetti" table:@"IMCoreLocalizable"];
  v51 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Confetti";
  }

  v56[1] = v4;
  v55[2] = *MEMORY[0x1E69A7D80];
  v50 = sub_1A8361964();
  v5 = [v50 localizedStringForKey:@"Lasers" value:@"Lasers" table:@"IMCoreLocalizable"];
  v49 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Lasers";
  }

  v56[2] = v6;
  v55[3] = *MEMORY[0x1E69A7D68];
  v48 = sub_1A8361964();
  v7 = [v48 localizedStringForKey:@"Fireworks" value:@"Fireworks" table:@"IMCoreLocalizable"];
  v47 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Fireworks";
  }

  v56[3] = v8;
  v55[4] = *MEMORY[0x1E69A7D98];
  v46 = sub_1A8361964();
  v9 = [v46 localizedStringForKey:@"Fireworks" value:@"Fireworks" table:@"IMCoreLocalizable"];
  v45 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Fireworks";
  }

  v56[4] = v10;
  v55[5] = *MEMORY[0x1E69A7D50];
  v44 = sub_1A8361964();
  v11 = [v44 localizedStringForKey:@"Celebration" value:@"Celebration" table:@"IMCoreLocalizable"];
  v43 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"Celebration";
  }

  v56[5] = v12;
  v55[6] = *MEMORY[0x1E69A7D90];
  v42 = sub_1A8361964();
  v13 = [v42 localizedStringForKey:@"Sent With Love" value:@"Sent With Love" table:@"IMCoreLocalizable"];
  v41 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"Sent With Love";
  }

  v56[6] = v14;
  v55[7] = *MEMORY[0x1E69A7D60];
  v40 = sub_1A8361964();
  v15 = [v40 localizedStringForKey:@"Echo" value:@"Echo" table:@"IMCoreLocalizable"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"Echo";
  }

  v56[7] = v17;
  v55[8] = *MEMORY[0x1E69A7DA8];
  v39 = sub_1A8361964();
  v18 = [v39 localizedStringForKey:@"Spotlight" value:@"Spotlight" table:@"IMCoreLocalizable"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"Spotlight";
  }

  v56[8] = v20;
  v55[9] = *MEMORY[0x1E69A7DA0];
  v38 = sub_1A8361964();
  v21 = [v38 localizedStringForKey:@"Slam Effect" value:@"Slam Effect" table:@"IMCoreLocalizable"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"Slam Effect";
  }

  v56[9] = v23;
  v55[10] = *MEMORY[0x1E69A7D88];
  v24 = sub_1A8361964();
  v25 = [v24 localizedStringForKey:@"Loud Effect" value:@"Loud Effect" table:@"IMCoreLocalizable"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"Loud Effect";
  }

  v56[10] = v27;
  v55[11] = *MEMORY[0x1E69A7D70];
  v28 = sub_1A8361964();
  v29 = [v28 localizedStringForKey:@"Gentle Effect" value:@"Gentle Effect" table:@"IMCoreLocalizable"];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = @"Gentle Effect";
  }

  v56[11] = v31;
  v55[12] = *MEMORY[0x1E69A7D78];
  v32 = sub_1A8361964();
  v33 = [v32 localizedStringForKey:@"Invisible Ink" value:@"Invisible Ink" table:@"IMCoreLocalizable"];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = @"Invisible Ink";
  }

  v56[12] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:13];
  v37 = qword_1EB2EA2B0;
  qword_1EB2EA2B0 = v36;
}

void sub_1A830A0BC(uint64_t a1)
{
  v52[12] = *MEMORY[0x1E69E9840];
  v51[0] = *MEMORY[0x1E69A7D48];
  v50 = sub_1A8361964();
  v1 = [v50 localizedStringForKey:@"Replay Balloons" value:@"Replay Balloons" table:@"IMCoreLocalizable"];
  v49 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"Replay Balloons";
  }

  v52[0] = v2;
  v51[1] = *MEMORY[0x1E69A7D58];
  v48 = sub_1A8361964();
  v3 = [v48 localizedStringForKey:@"Replay Confetti" value:@"Replay Confetti" table:@"IMCoreLocalizable"];
  v47 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"Replay Confetti";
  }

  v52[1] = v4;
  v51[2] = *MEMORY[0x1E69A7D80];
  v46 = sub_1A8361964();
  v5 = [v46 localizedStringForKey:@"Replay Lasers" value:@"Replay Lasers" table:@"IMCoreLocalizable"];
  v45 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Replay Lasers";
  }

  v52[2] = v6;
  v51[3] = *MEMORY[0x1E69A7D68];
  v44 = sub_1A8361964();
  v7 = [v44 localizedStringForKey:@"Replay Fireworks" value:@"Replay Fireworks" table:@"IMCoreLocalizable"];
  v43 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Replay Fireworks";
  }

  v52[3] = v8;
  v51[4] = *MEMORY[0x1E69A7D98];
  v42 = sub_1A8361964();
  v9 = [v42 localizedStringForKey:@"Replay Shooting Star" value:@"Replay Shooting Star" table:@"IMCoreLocalizable"];
  v41 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"Replay Shooting Star";
  }

  v52[4] = v10;
  v51[5] = *MEMORY[0x1E69A7D50];
  v40 = sub_1A8361964();
  v11 = [v40 localizedStringForKey:@"Replay Celebration" value:@"Replay Celebration" table:@"IMCoreLocalizable"];
  v39 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"Replay Celebration";
  }

  v52[5] = v12;
  v51[6] = *MEMORY[0x1E69A7D90];
  v38 = sub_1A8361964();
  v13 = [v38 localizedStringForKey:@"Replay Sent With Love" value:@"Replay Sent With Love" table:@"IMCoreLocalizable"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"Replay Sent With Love";
  }

  v52[6] = v15;
  v51[7] = *MEMORY[0x1E69A7D60];
  v37 = sub_1A8361964();
  v16 = [v37 localizedStringForKey:@"Replay Echo" value:@"Replay Echo" table:@"IMCoreLocalizable"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"Replay Echo";
  }

  v52[7] = v18;
  v51[8] = *MEMORY[0x1E69A7DA8];
  v36 = sub_1A8361964();
  v19 = [v36 localizedStringForKey:@"Replay Spotlight" value:@"Replay Spotlight" table:@"IMCoreLocalizable"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"Replay Spotlight";
  }

  v52[8] = v21;
  v51[9] = *MEMORY[0x1E69A7DA0];
  v22 = sub_1A8361964();
  v23 = [v22 localizedStringForKey:@"Replay Slam Effect" value:@"Replay Slam Effect" table:@"IMCoreLocalizable"];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"Replay Slam Effect";
  }

  v52[9] = v25;
  v51[10] = *MEMORY[0x1E69A7D88];
  v26 = sub_1A8361964();
  v27 = [v26 localizedStringForKey:@"Replay Loud Effect" value:@"Replay Loud Effect" table:@"IMCoreLocalizable"];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"Replay Loud Effect";
  }

  v52[10] = v29;
  v51[11] = *MEMORY[0x1E69A7D70];
  v30 = sub_1A8361964();
  v31 = [v30 localizedStringForKey:@"Replay Gentle Effect" value:@"Replay Gentle Effect" table:@"IMCoreLocalizable"];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = @"Replay Gentle Effect";
  }

  v52[11] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:12];
  v35 = qword_1EB2EA2C0;
  qword_1EB2EA2C0 = v34;
}

void sub_1A830A5A0(uint64_t a1)
{
  v56[13] = *MEMORY[0x1E69E9840];
  v55[0] = *MEMORY[0x1E69A7D48];
  v54 = sub_1A8361964();
  v1 = [v54 localizedStringForKey:@"SEND WITH BALLOONS" value:@"SEND WITH BALLOONS" table:@"IMCoreLocalizable"];
  v53 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"SEND WITH BALLOONS";
  }

  v56[0] = v2;
  v55[1] = *MEMORY[0x1E69A7D58];
  v52 = sub_1A8361964();
  v3 = [v52 localizedStringForKey:@"SEND WITH CONFETTI" value:@"SEND WITH CONFETTI" table:@"IMCoreLocalizable"];
  v51 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"SEND WITH CONFETTI";
  }

  v56[1] = v4;
  v55[2] = *MEMORY[0x1E69A7D80];
  v50 = sub_1A8361964();
  v5 = [v50 localizedStringForKey:@"SEND WITH LASERS" value:@"SEND WITH LASERS" table:@"IMCoreLocalizable"];
  v49 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"SEND WITH LASERS";
  }

  v56[2] = v6;
  v55[3] = *MEMORY[0x1E69A7D68];
  v48 = sub_1A8361964();
  v7 = [v48 localizedStringForKey:@"SEND WITH FIREWORKS" value:@"SEND WITH FIREWORKS" table:@"IMCoreLocalizable"];
  v47 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"SEND WITH FIREWORKS";
  }

  v56[3] = v8;
  v55[4] = *MEMORY[0x1E69A7D98];
  v46 = sub_1A8361964();
  v9 = [v46 localizedStringForKey:@"SEND WITH SHOOTING STAR" value:@"SEND WITH SHOOTING STAR" table:@"IMCoreLocalizable"];
  v45 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"SEND WITH SHOOTING STAR";
  }

  v56[4] = v10;
  v55[5] = *MEMORY[0x1E69A7D50];
  v44 = sub_1A8361964();
  v11 = [v44 localizedStringForKey:@"SEND WITH CELEBRATION" value:@"SEND WITH CELEBRATION" table:@"IMCoreLocalizable"];
  v43 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"SEND WITH CELEBRATION";
  }

  v56[5] = v12;
  v55[6] = *MEMORY[0x1E69A7D90];
  v42 = sub_1A8361964();
  v13 = [v42 localizedStringForKey:@"SEND WITH LOVE" value:@"SEND WITH LOVE" table:@"IMCoreLocalizable"];
  v41 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"SEND WITH LOVE";
  }

  v56[6] = v14;
  v55[7] = *MEMORY[0x1E69A7D60];
  v40 = sub_1A8361964();
  v15 = [v40 localizedStringForKey:@"SEND WITH ECHO" value:@"SEND WITH ECHO" table:@"IMCoreLocalizable"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"SEND WITH ECHO";
  }

  v56[7] = v17;
  v55[8] = *MEMORY[0x1E69A7DA8];
  v39 = sub_1A8361964();
  v18 = [v39 localizedStringForKey:@"SEND WITH SPOTLIGHT" value:@"SEND WITH SPOTLIGHT" table:@"IMCoreLocalizable"];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"SEND WITH SPOTLIGHT";
  }

  v56[8] = v20;
  v55[9] = *MEMORY[0x1E69A7DA0];
  v38 = sub_1A8361964();
  v21 = [v38 localizedStringForKey:@"SLAM" value:@"SLAM" table:@"IMCoreLocalizable"];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"SLAM";
  }

  v56[9] = v23;
  v55[10] = *MEMORY[0x1E69A7D88];
  v24 = sub_1A8361964();
  v25 = [v24 localizedStringForKey:@"LOUD" value:@"LOUD" table:@"IMCoreLocalizable"];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = @"LOUD";
  }

  v56[10] = v27;
  v55[11] = *MEMORY[0x1E69A7D70];
  v28 = sub_1A8361964();
  v29 = [v28 localizedStringForKey:@"GENTLE" value:@"GENTLE" table:@"IMCoreLocalizable"];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = @"GENTLE";
  }

  v56[11] = v31;
  v55[12] = *MEMORY[0x1E69A7D78];
  v32 = sub_1A8361964();
  v33 = [v32 localizedStringForKey:@"INVISIBLE INK" value:@"INVISIBLE INK" table:@"IMCoreLocalizable"];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = @"INVISIBLE INK";
  }

  v56[12] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:13];
  v37 = qword_1EB2EA2D0;
  qword_1EB2EA2D0 = v36;
}

uint64_t sub_1A830C088()
{
  v0 = objc_alloc_init(IMSimulatedDaemonController);
  qword_1ED767850 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A830C150(uint64_t a1)
{
  v98[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69A7AF0];
  v3 = [IMServiceImpl serviceWithInternalName:*MEMORY[0x1E69A7AF0]];
  v4 = [(IMAccount *)[IMSimulatedAccount alloc] initWithService:v3];
  v5 = [(IMAccount *)v4 imHandleWithID:@"+15557654321" alreadyCanonical:0];
  [(IMSimulatedAccount *)v4 setLoginHandle:v5];

  v6 = +[IMAccountController sharedInstance];
  v98[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:1];
  [v6 setSimulatedAccounts:v7 forServiceNamed:*v2];

  v8 = *MEMORY[0x1E69A5E70];
  v96[0] = *MEMORY[0x1E69A5E68];
  v96[1] = v8;
  v97[0] = &unk_1F1BA1710;
  v97[1] = MEMORY[0x1E695E118];
  v96[2] = *MEMORY[0x1E69A7B00];
  v9 = *MEMORY[0x1E69A79C0];
  v94[0] = *MEMORY[0x1E69A7968];
  v94[1] = v9;
  v95[0] = MEMORY[0x1E695E118];
  v95[1] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v97[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:3];
  v68 = v3;
  [v3 setServiceProperties:v11];

  v12 = MEMORY[0x1E69A7AE0];
  v67 = [IMServiceImpl serviceWithInternalName:*MEMORY[0x1E69A7AE0]];
  v13 = [(IMAccount *)[IMSimulatedAccount alloc] initWithService:v67];
  v14 = [(IMAccount *)v13 imHandleWithID:@"+15557654321" alreadyCanonical:0];
  [(IMSimulatedAccount *)v13 setLoginHandle:v14];

  v93 = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v93 count:1];
  [v6 setSimulatedAccounts:v15 forServiceNamed:*v12];

  v16 = [IMSimulatedChat alloc];
  v92 = @"+15555648583";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
  v73 = [(IMSimulatedChat *)v16 initWithIncomingIDs:v17 messageIDOffset:100000 account:v4];

  v18 = [IMSimulatedChat alloc];
  v91 = @"+18885551212";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  v74 = [(IMSimulatedChat *)v18 initWithIncomingIDs:v19 messageIDOffset:1 account:v4];

  v20 = [IMSimulatedChat alloc];
  v90 = @"john-appleseed@mac.com";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
  v72 = [(IMSimulatedChat *)v20 initWithIncomingIDs:v21 messageIDOffset:300000 account:v4];

  v22 = [IMSimulatedChat alloc];
  v89 = @"kate-bell@mac.com";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
  v69 = [(IMSimulatedChat *)v22 initWithIncomingIDs:v23 messageIDOffset:200001 account:v4];

  v24 = [IMSimulatedChat alloc];
  v88 = @"+18885551213";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v71 = [(IMSimulatedChat *)v24 initWithIncomingIDs:v25 messageIDOffset:400001 account:v13];

  v26 = [IMSimulatedChat alloc];
  v87 = @"+18885551214";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v70 = [(IMSimulatedChat *)v26 initWithIncomingIDs:v27 messageIDOffset:500001 account:v13];

  v28 = [IMSimulatedChat alloc];
  v86[0] = @"john-appleseed@mac.com";
  v86[1] = @"kate-bell@mac.com";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
  v62 = [(IMSimulatedChat *)v28 initWithIncomingIDs:v29 messageIDOffset:500000 account:v4];

  v30 = [IMSimulatedChat alloc];
  v85[0] = @"+15555648583";
  v85[1] = @"kate-bell@mac.com";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
  v65 = v4;
  v32 = [(IMSimulatedChat *)v30 initWithIncomingIDs:v31 messageIDOffset:400001 account:v4];

  v33 = [IMSimulatedChat alloc];
  v84[0] = @"+15555648583";
  v84[1] = @"+18885551212";
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v35 = [(IMSimulatedChat *)v33 initWithIncomingIDs:v34 messageIDOffset:700000 account:v13];

  v36 = [IMSimulatedChat alloc];
  v83[0] = @"+18885551212";
  v83[1] = @"+18885551213";
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v66 = v13;
  v38 = [(IMSimulatedChat *)v36 initWithIncomingIDs:v37 messageIDOffset:600001 account:v13];

  [(IMSimulatedChat *)v73 setDelegate:v74];
  [(IMSimulatedChat *)v74 setDelegate:v73];
  [(IMSimulatedChat *)v72 setDelegate:v69];
  [(IMSimulatedChat *)v69 setDelegate:v72];
  [(IMSimulatedChat *)v71 setDelegate:v70];
  [(IMSimulatedChat *)v70 setDelegate:v71];
  v39 = v62;
  [(IMSimulatedChat *)v62 setDelegate:v32];
  [(IMSimulatedChat *)v32 setDelegate:v62];
  [(IMSimulatedChat *)v35 setDelegate:v38];
  [(IMSimulatedChat *)v38 setDelegate:v35];
  v82[0] = v73;
  v82[1] = v74;
  v82[2] = v72;
  v82[3] = v69;
  v82[4] = v71;
  v82[5] = v70;
  v82[6] = v62;
  v82[7] = v32;
  v63 = v35;
  v64 = v32;
  v82[8] = v35;
  v82[9] = v38;
  v40 = v38;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:10];
  v42 = +[IMChatRegistry sharedRegistry];
  [v42 _setSimulatedChats:v41];

  v43 = objc_opt_class();
  ClassMethod = class_getClassMethod(v43, sel_sharedInstance);
  v45 = objc_opt_class();
  v46 = class_getClassMethod(v45, sel_sharedInstance);
  method_exchangeImplementations(ClassMethod, v46);
  v47 = objc_opt_class();
  v48 = class_getClassMethod(v47, sel_sharedController);
  v49 = objc_opt_class();
  v50 = class_getClassMethod(v49, sel_sharedController);
  method_exchangeImplementations(v48, v50);
  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v41, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v52 = v41;
  v53 = [v52 countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v76;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v76 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [*(a1 + 32) dictionaryForChat:{*(*(&v75 + 1) + 8 * i), v62}];
        [v51 addObject:v57];
      }

      v54 = [v52 countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v54);
  }

  v58 = +[IMDaemonController sharedController];
  v59 = [v58 listener];
  v79 = @"chats";
  v80 = v51;
  v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  [v59 setupComplete:1 info:v60];

  v61 = +[IMDaemonController sharedController];
  [v61 setListeners:v52];
}

void sub_1A830CFA4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init([objc_opt_class() contextClass]);
  [v8 setSenderHandle:v7];

  [v8 setOtherHandle:v6];
  [a1 setContext:v8];
}

void sub_1A830D050(void *a1)
{
  v2 = [a1 service];
  v3 = [a1 _serviceWithInternalName:v2];

  v4 = [a1 _accountController];
  v5 = [a1 account];
  v6 = [a1 accountID];
  v7 = [v4 bestAccountForService:v3 login:v5 guid:v6];

  if (v7)
  {
    if ([a1 isFromMe])
    {
      v17 = [v7 loginIMHandle];
      v8 = [a1 handle];
      if ([v8 length])
      {
        v9 = [a1 handle];
        v10 = [v7 imHandleWithID:v9 alreadyCanonical:1];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v12 = [a1 sender];
      if ([v12 length])
      {
        v13 = [a1 sender];
        v17 = [v7 imHandleWithID:v13 alreadyCanonical:1];
      }

      else
      {
        v17 = 0;
      }

      v10 = [v7 loginIMHandle];
    }

    v11 = v17;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v18 = v11;
  v14 = [v11 service];
  v15 = [v14 internalName];
  v16 = [a1 service];
  [v15 isEqualToString:v16];

  [a1 _updateContextWithSenderHandle:v18 otherHandle:v10];
}

id sub_1A830D264(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 service];
  v6 = [a1 _serviceWithInternalName:v5];

  v7 = [a1 _accountController];
  v8 = [a1 account];
  v9 = [a1 accountID];
  v10 = [v7 bestAccountForService:v6 login:v8 guid:v9];

  v11 = [v10 imHandleWithID:v4 alreadyCanonical:1];

  return v11;
}

id sub_1A830D354(void *a1)
{
  v1 = [a1 context];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 otherHandle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1A830D3BC(void *a1)
{
  v1 = [a1 message];
  v2 = [v1 isSenderUnknown];

  return v2;
}

void *sub_1A830D3F4(void *a1)
{
  v2 = [a1 messageID];
  v3 = [a1 copy];
  [v3 _setMessageID:v2];
  return v3;
}

void sub_1A830E02C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  v5 = [v3 guid];
  if (v5)
  {
    CFDictionarySetValue(v4, @"messageGUID", v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0D74();
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "sortID")}];
  if (v6)
  {
    CFDictionarySetValue(v4, @"sortID", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0DFC();
  }

  v7 = MEMORY[0x1E696AD98];
  v8 = [v3 time];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [v7 numberWithDouble:?];

  if (v9)
  {
    CFDictionarySetValue(v4, @"date", v9);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0E84();
  }

  v10 = [v3 replyToGUID];
  if (v10)
  {
    CFDictionarySetValue(v4, @"replyToGUID", v10);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v3 body];
    v12 = [v11 string];

    if (v12)
    {
      CFDictionarySetValue(v4, @"messageText", v12);
    }

    v13 = [v3 fileTransferGUIDs];
    if (v13)
    {
      CFDictionarySetValue(v4, @"transferGUIDS", v13);
    }
  }

  [*(a1 + 32) addObject:v4];
}

void sub_1A830E2D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1A830EF44(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "IMCoreAutomationPerformOperationWithDictionary method call not on main queue, calling dispatch_sync", v6, 2u);
    }
  }

  v3 = [*(a1 + 32) callIMCoreMethodWithDictionary:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1A8310330(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transferForGUID:a2];
  v3 = [v2 isAdaptiveImageGlyph];

  return v3;
}

BOOL sub_1A8310370(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) transferForGUID:a2];
  v3 = [v2 commSafetySensitive] == 1;

  return v3;
}

id sub_1A8310BAC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
  }

  if (v3)
  {
    v5 = [v3 __im_associatedMessageSummary];
    if ([v5 length] >= 0x33)
    {
      v6 = [v5 substringToIndex:{objc_msgSend(v5, "rangeOfComposedCharacterSequenceAtIndex:", 50)}];
      v7 = [v6 stringByAppendingString:@"…"];

      [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69A7260]];
      v5 = v7;
    }

    v8 = *MEMORY[0x1E69A7218];
    v9 = [v3 __imami_attributedStringForKey:*MEMORY[0x1E69A7218]];
    v10 = [v9 im_trimmedSummaryIfNeededForTapback];

    [v4 __imami_setAttributedString:v10 forKey:v8];
  }

  return v4;
}

void sub_1A8310F40()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [IMServiceImpl serviceWithInternalName:*MEMORY[0x1E69A7AF0]];
  v2 = *MEMORY[0x1E69A5E68];
  v3[0] = &unk_1F1BA1728;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 setServiceProperties:v1];
}

id sub_1A8311880(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v9 = a1;
  v78 = a4;
  v77 = a5;
  v10 = [v9 guid];
  v11 = v10;
  if (a6)
  {
    v12 = sub_1A83130CC(v10);

    v11 = v12;
  }

  objc_opt_class();
  v79 = v11;
  if (objc_opt_isKindOfClass())
  {
    v94 = [v9 associatedMessageGUID];
    if (a6)
    {
      v13 = sub_1A83130CC(v94);

      v94 = v13;
    }

    v60 = objc_alloc(MEMORY[0x1E69A7EF0]);
    v83 = [v9 senderInfo];
    v68 = [MEMORY[0x1E695DF00] date];
    v66 = [MEMORY[0x1E695DF00] date];
    v64 = [v9 subject];
    v93 = [v9 body];
    v87 = [v9 bodyData];
    v92 = [v9 fileTransferGUIDs];
    v91 = [v9 account];
    v90 = [v9 accountID];
    v89 = [v9 service];
    v88 = [v9 handle];
    v62 = [v9 roomName];
    v86 = [v9 unformattedID];
    v85 = [v9 countryCode];
    v58 = [v9 expireState];
    v84 = [v9 balloonBundleID];
    v14 = [v9 payloadData];
    v15 = [v9 expressiveSendStyleID];
    v16 = [v9 timeExpressiveSendPlayed];
    v81 = [v9 associatedMessageType];
    v17 = [v9 associatedMessageRange];
    v19 = v18;
    v20 = [v9 biaReferenceID];
    v21 = [v9 messageSummaryInfo];
    v22 = [v9 partCount];
    v23 = [v9 threadIdentifier];
    [v9 dateRecovered];
    v53 = v22;
    v55 = v23;
    v70 = v23;
    v24 = v71 = v21;
    v52 = v21;
    v72 = v20;
    v50 = v20;
    v47 = v17;
    v44 = v81;
    v26 = v66;
    v25 = v68;
    LODWORD(v43) = 0;
    v73 = v16;
    v80 = v15;
    v42 = v15;
    v82 = v14;
    v27 = v62;
    v28 = v79;
    v29 = v64;
    v30 = [v60 initWithSenderInfo:v83 time:v68 timeRead:0 timeDelivered:v66 timePlayed:0 subject:v93 body:v87 bodyData:0 attributes:v92 fileTransferGUIDs:a2 flags:v79 guid:a3 messageID:v91 account:v90 accountID:v89 service:v88 handle:v62 roomName:v86 unformattedID:v85 countryCode:v58 expireState:v84 balloonBundleID:v14 payloadData:v42 expressiveSendStyleID:v16 timeExpressiveSendPlayed:v43 errorType:v94 associatedMessageGUID:v44 associatedMessageType:v47 associatedMessageRange:v19 bizIntent:0 locale:0 biaReferenceID:v50 messageSummaryInfo:v52 partCount:v53 threadIdentifier:v55 dateRecovered:v24];
  }

  else
  {
    v61 = objc_alloc(MEMORY[0x1E69A8138]);
    v94 = [v9 senderInfo];
    v83 = [MEMORY[0x1E695DF00] date];
    v69 = [MEMORY[0x1E695DF00] date];
    v67 = [v9 subject];
    v65 = [v9 body];
    v93 = [v9 bodyData];
    v87 = [v9 fileTransferGUIDs];
    v92 = [v9 account];
    v91 = [v9 accountID];
    v90 = [v9 service];
    v89 = [v9 handle];
    v88 = [v9 roomName];
    v63 = [v9 unformattedID];
    v86 = [v9 countryCode];
    v59 = [v9 expireState];
    v85 = [v9 balloonBundleID];
    v84 = [v9 payloadData];
    v82 = [v9 expressiveSendStyleID];
    v80 = [v9 timeExpressiveSendPlayed];
    v31 = [v9 biaReferenceID];
    v32 = [v9 threadIdentifier];
    v33 = [v9 syndicationRanges];
    v34 = [v9 syncedSyndicationRanges];
    v74 = [v9 partCount];
    v35 = [v9 dateEdited];
    v36 = [v9 dateRecovered];
    v37 = [v9 scheduleType];
    v38 = [v9 scheduleState];
    v39 = [v9 cloudKitChatID];
    v57 = v38;
    v54 = v36;
    v56 = v37;
    v40 = v36;
    v51 = v74;
    v28 = v79;
    v70 = v34;
    v71 = v33;
    v48 = v33;
    v49 = v34;
    v72 = v32;
    LODWORD(v46) = 0;
    v73 = v31;
    v45 = v31;
    v27 = v63;
    v26 = v67;
    v29 = v65;
    v25 = v69;
    v30 = [v61 initWithSenderInfo:v94 time:v83 timeRead:0 timeDelivered:v69 timePlayed:0 subject:v67 body:v65 bodyData:v93 attributes:0 fileTransferGUIDs:v87 flags:a2 guid:v79 messageID:a3 account:v92 accountID:v91 service:v90 handle:v89 roomName:v88 unformattedID:v63 countryCode:v86 expireState:v59 balloonBundleID:v85 payloadData:v84 expressiveSendStyleID:v82 timeExpressiveSendPlayed:v80 bizIntent:0 locale:0 biaReferenceID:v45 errorType:v46 threadIdentifier:v32 syndicationRanges:v48 syncedSyndicationRanges:v49 partCount:v51 dateEdited:v35 dateRecovered:v54 scheduleType:v56 scheduleState:v57 cloudKitChatID:v39];

    v24 = v35;
  }

  [v30 _updateContextWithSenderHandle:v78 otherHandle:v77];

  return v30;
}

void sub_1A8311FA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) guid];
  [v1 simulateMessageDeliveryForGUID:v2];
}

id sub_1A83130CC(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@":"];
  v4 = v3;
  v5 = [v1 rangeOfString:@"/"];
  if (v4)
  {
    v7 = v2;
  }

  else
  {
    v7 = -1;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = -1;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v1 substringToIndex:v9 + 1];
  v11 = v10;
  v12 = [v1 substringFromIndex:v9 + 1];

  v13 = v10;
  if (qword_1EB2EA300 != -1)
  {
    sub_1A84E108C();
  }

  v14 = [qword_1EB2EA2F0 objectForKeyedSubscript:v12];

  if (v14)
  {
    v15 = qword_1EB2EA2F0;
LABEL_16:
    v17 = [v15 objectForKeyedSubscript:v12];
    goto LABEL_17;
  }

  v16 = [qword_1EB2EA2F8 objectForKeyedSubscript:v12];

  if (v16)
  {
    v15 = qword_1EB2EA2F8;
    goto LABEL_16;
  }

  v19 = [MEMORY[0x1E696AEC0] stringGUID];
  [qword_1EB2EA2F0 setObject:v19 forKeyedSubscript:v12];
  [qword_1EB2EA2F8 setObject:v12 forKeyedSubscript:v19];
  v17 = [v13 stringByAppendingString:v19];

LABEL_17:

  return v17;
}

uint64_t sub_1A8313254()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1EB2EA2F0;
  qword_1EB2EA2F0 = v0;

  v2 = [MEMORY[0x1E695DF90] dictionary];
  qword_1EB2EA2F8 = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A831356C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A831359C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Connection Invalidated", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

void sub_1A8313644(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Connection Interrupted", v4, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

void sub_1A83138CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8313970;
  v4[3] = &unk_1E7812258;
  v5 = *(a1 + 48);
  v3 = [v2 _backgroundMessagingAPIServiceWithErrorHandler:v4];
  [v3 requestBackgroundMessagingAuthorizationForRecipients:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_1A8313970(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Connection error", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void sub_1A8313B68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8313C0C;
  v4[3] = &unk_1E7812258;
  v5 = *(a1 + 48);
  v3 = [v2 _backgroundMessagingAPIServiceWithErrorHandler:v4];
  [v3 checkAuthorizationStatusForRecipients:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_1A8313C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Connection error", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void sub_1A8313E2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8313ED4;
  v4[3] = &unk_1E7812258;
  v5 = *(a1 + 56);
  v3 = [v2 _backgroundMessagingAPIServiceWithErrorHandler:v4];
  [v3 sendBackgroundMessage:*(a1 + 40) toRecipient:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_1A8313ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Connection error", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

id sub_1A831484C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 guid], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsString:", *(*(a1 + 32) + 48)), v4, v5))
  {
    v6 = v3;
    if ([v6 originalMessagePartRange] == *(*(a1 + 32) + 56) && v7 == *(*(a1 + 32) + 64))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

uint64_t (*sub_1A8314B08())(void)
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyAllChats", @"IMDPersistence");
  off_1EB2EA308 = result;
  return result;
}

uint64_t (*sub_1A8314ED8())(void, void)
{
  result = MEMORY[0x1AC56C560]("IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices", @"IMDPersistence");
  off_1EB2EA318 = result;
  return result;
}

uint64_t (*sub_1A8314F08())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("_IMDAttachmentRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA328 = result;
  return result;
}

uint64_t sub_1A8316274(uint64_t a1)
{
  v2 = [*(a1 + 32) progressCount];
  if (v2 >= [*(a1 + 32) maxProgressCount])
  {
    v4 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v4, sel_finishTest);
  }

  else
  {
    [*(a1 + 32) setProgressCount:{objc_msgSend(*(a1 + 32), "progressCount") + 1}];
    v3 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v3, sel_sendSyncStateChangedEvent);
  }
}

void sub_1A83173D4()
{
  v0 = qword_1ED7679B8;
  qword_1ED7679B8 = &unk_1F1BA17A0;
}

void sub_1A83173EC()
{
  v0 = [MEMORY[0x1E69A8018] sharedInstance];
  byte_1EB2EA338 = [v0 getBoolFromDomain:*MEMORY[0x1E69A7858] forKey:*MEMORY[0x1E69A7860]];
}

void sub_1A8318C88(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 65);
      *buf = 138413314;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 1024;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      v20 = 1024;
      v21 = v7;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "updating/acting on query ID: %@  insertHistoricalMessages: %@, limit = %d hasMoreMessagesBefore: %d hasMoreMessagesAfter: %d", buf, 0x28u);
    }
  }

  v8 = *(a1 + 48);
  v9 = *(v8 + 424);
  if (v9)
  {
    v10 = [v9 isEqualToString:*(a1 + 32)];
    v8 = *(a1 + 48);
    if (v10)
    {
      v11 = *(v8 + 424);
      *(v8 + 424) = 0;

      [*(a1 + 48) _removeAllItems];
      v8 = *(a1 + 48);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v17) = *(v8 + 80);
  v12 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A8318EF0;
  v15[3] = &unk_1E78117B0;
  v15[4] = v8;
  v15[5] = buf;
  [v12 enumerateObjectsWithOptions:2 usingBlock:v15];
  v13 = [*(a1 + 48) _archivedItemsToReplace:*(a1 + 40) isReplacingItems:*(a1 + 66)];
  [*(a1 + 48) _replaceAndSortItemsWithUnsortedItems:v13];
  v14 = [*(a1 + 48) _items];
  [v14 im_logGUIDsForReason:@"DidInsertHistoricalMessages"];

  _Block_object_dispose(buf, 8);
}

void sub_1A8318EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8318D70);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8318EF0(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 type];
  if (v4 == 4)
  {
    [*(a1 + 32) _configureLocationShareItem:v3];
  }

  v5 = [v3 message];
  v6 = IMCoreMomentShareURLForMessage(v5);
  if (v6)
  {
    v7 = [*(a1 + 32) momentSharePresentationCache];
    [v7 registerMomentShareItemForMessage:v5];
  }

  v8 = [v3 service];
  v9 = +[IMServiceImpl iMessageService];
  v10 = [v9 internalName];
  v11 = [v8 isEqualToIgnoringCase:v10];

  if (v11)
  {
    v12 = [*(a1 + 32) chatRegistry];
    [v12 _setChatHasCommunicatedOveriMessage:*(a1 + 32)];
  }

  if ([v3 isBreadcrumb])
  {
    v13 = [v3 consumedSessionPayloads];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [[IMPluginPayload alloc] initWithMessageItem:v3];
      v16 = +[IMBalloonPluginManager sharedInstance];
      v17 = [v16 dataSourceForPluginPayload:v15];
    }
  }

  if (!v4 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && ![v3 errorCode])
  {
    if ([*(a1 + 32) chatStyle] == 45)
    {
      v18 = [v3 _senderHandle];
      if ([v3 isFromMe])
      {
        v19 = [v3 _otherHandle];

        v18 = v19;
      }

      if (!v18)
      {
        goto LABEL_29;
      }

      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [*(a1 + 32) recipient];
          v26 = 138412546;
          v27 = v21;
          v28 = 2112;
          v29 = v18;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Fixing recipient based on last message old recipient: (%@), messageAccount: (%@)", &v26, 0x16u);
        }
      }

      [*(a1 + 32) setRecipient:v18];
      [*(a1 + 32) fetchBrandInfoIfNecessary];
    }

    else
    {
      v22 = +[IMAccountController sharedInstance];
      v23 = [v3 accountID];
      v18 = [v22 accountForUniqueID:v23];

      if (!v18)
      {
LABEL_29:

        goto LABEL_30;
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = *(*(a1 + 32) + 128);
          v26 = 138412546;
          v27 = v25;
          v28 = 2112;
          v29 = v18;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "fixing up chat account based on last message: oldAccount: (%@), messageAccount: (%@)", &v26, 0x16u);
        }
      }

      [*(a1 + 32) _setAccount:v18];
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_29;
  }

LABEL_30:
}

uint64_t sub_1A8319750(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFromMe])
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v5 = [*(a1 + 32) account];
    v6 = [v3 sender];
    v7 = [v5 imHandleWithID:v6 alreadyCanonical:1];

    v4 = [v7 isContact];
  }

  return v4 & 1;
}

uint64_t sub_1A83197F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _parentItem];
  if ([v3 type] || !objc_msgSend(v2, "canReply"))
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 message];
    v5 = [v4 isFromMe] ^ 1;
  }

  return v5;
}

uint64_t sub_1A83198E0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _item];
    v4 = [v3 isFromMe] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1A831A084(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_clearHistory:*(a1 + 32) beforeGUID:0 afterGUID:0 queryID:v4];
}

void sub_1A831A2D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_markAsSpam:*(a1 + 32) queryID:v4 isJunkReportedToCarrier:*(a1 + 40)];
}

void sub_1A831A838(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A831A7A4);
  }

  _Unwind_Resume(a1);
}

void sub_1A831B1E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A831B1A8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A831BB88()
{
  v0 = dispatch_queue_create("com.apple.MobileSMS.particiants_queue", 0);
  qword_1EB2EA340 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A831C70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A831C724(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 isFiltered];
  *(*(*(a1 + 40) + 8) + 24) |= v4 > 0;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [v5 addObject:v6];
}

void sub_1A831C918(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _items];
  v3 = [v2 copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [v10 message];
          v12 = [v11 hasDataDetectorResults];

          if (v12)
          {
            v13 = [v10 _copy];

            [*(a1 + 32) _handleItem:v13];
            v10 = v13;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void sub_1A831D578(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_markAsSpam:*(a1 + 32) queryID:v4 autoReport:0 isJunkReportedToCarrier:0 reportReason:*(a1 + 40)];
}

void sub_1A831E448()
{
  v0 = [MEMORY[0x1E69A8048] sharedInstance];
  [v0 notifyListChanged];
}

void sub_1A831F4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, uint64_t a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A831F36CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_1A831F69C())(void)
{
  result = MEMORY[0x1AC56C560]("PKPeerPaymentMessageTypeFromDataURL", @"PassKitCore");
  off_1EB2EA350 = result;
  return result;
}

void sub_1A8321C9C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1A8321D08(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1A83232EC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD40];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 displayNameForChat:*(a1 + 32)];
  v7 = [v4 blockedStatus];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:*(a1 + 40)];
    [v5 appendAttributedString:v8];
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    [v5 appendAttributedString:v9];
  }

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
  [v5 appendAttributedString:v10];

  return v5;
}

void sub_1A8324D68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_loadUncachedAttachmentsCount:*(a1 + 32) queryID:v4 loadImmediately:1];
}

void sub_1A8324F4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_loadAttachments:*(a1 + 32) queryID:v4 loadImmediately:1];
}

void sub_1A83252F4(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v7[0] = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v2 _updateRepliesIfNecessaryWithRemovedItems:v3 threadIdentifiersOfRemovedParts:0];

  [*(a1 + 32) _removeItem:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) guid];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 48)];
  [v4 cancelScheduledMessageWithGUID:v5 destinations:v6 cancelType:*(a1 + 56)];
}

void sub_1A832574C(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) _copy];
        [*(a1 + 40) editScheduledMessageItem:v7 scheduleType:*(a1 + 56) deliveryTime:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1A8325D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8325D48(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v14;
    if ([v8 scheduleType] == 2)
    {
      v9 = [MEMORY[0x1E695DEE8] currentCalendar];
      v10 = [*(a1 + 32) time];
      v11 = [v8 time];
      v12 = [v9 compareDate:v10 toDate:v11 toUnitGranularity:128];

      if (v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    *a4 = 1;
    goto LABEL_6;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A8326E94(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8326E40);
  }

  _Unwind_Resume(a1);
}

void sub_1A8327404(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A832738CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8329228(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) _copy];
        [v7 setSatelliteMessageRetry:1];
        [v7 setIsPendingSatelliteSend:0];
        [v7 _refreshContextWithAccountHandles];
        [a1[5] _handleItem:v7];
        [a1[6] addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1A83297A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83296E8);
  }

  _Unwind_Resume(a1);
}

double sub_1A8329F64()
{
  v0 = IMGetCachedDomainIntForKey();
  v1 = 30;
  if (v0)
  {
    v1 = v0;
  }

  result = v1;
  *&qword_1EB2EA360 = v1;
  return result;
}

void sub_1A832A608(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _shouldSendCancelTypingIndicator];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = v4[39];
      [v4 latestTypingIndicatorTimeInterval];
      v7 = @"NO";
      *buf = 138412802;
      v19 = v5;
      if (v2)
      {
        v7 = @"YES";
      }

      v20 = 2048;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "In cancel typing indicator block. _typingGUID %@ _latestTypingIndicatorInterval %f, shouldSendCancelTypingIndicator %@", buf, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  if (((v8[39] != 0) & v2) == 1)
  {
    if ([v8 _chatStyleSupportsTypingAndCancelTypingIndicators])
    {
      v9 = -[IMMessage initWithSender:time:text:messageSubject:fileTransferGUIDs:flags:error:guid:subject:threadIdentifier:]([IMMessage alloc], "initWithSender:time:text:messageSubject:fileTransferGUIDs:flags:error:guid:subject:threadIdentifier:", 0, 0, 0, 0, 0, [*(a1 + 32) _flagsForCancelTypingIndicatorMessage], 0, *(*(a1 + 32) + 312), 0, 0);
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v9;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, " => Sending cancel typing message: %@", buf, 0xCu);
        }
      }

      [*(a1 + 32) _sendMessage:v9 adjustingSender:1 shouldQueue:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, " => Not sending cancel typing message, the chat style does not support it", buf, 2u);
      }
    }

    v15 = *(a1 + 32);
    v14 = a1 + 32;
    v16 = *(v15 + 312);
    *(v15 + 312) = 0;

    v17 = *(*v14 + 264);
    *(*v14 + 264) = 0;
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (v2)
      {
        v12 = @"YES";
      }

      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "*** We tried to send a cancel typing indicator, but already had no guid set. shouldSendCancelTypingIndicator set to %@", buf, 0xCu);
    }
  }
}

void sub_1A832B4A0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [v7 _copyWithFlags:{objc_msgSend(v7, "flags", v9) | 0x2000}];

        [*(a1 + 40) _handleItem:v8];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void (**sub_1A832BF14(uint64_t a1))(void)
{
  result = *(a1 + 40);
  if (result)
  {
    result[2]();
    v3 = *(a1 + 32);

    return [v3 setCurrentlyMarkingAsKnown:0];
  }

  return result;
}

void sub_1A832C0B0(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A7FD0];
  v4 = a2;
  v5 = [v3 sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A832C174;
  v7[3] = &unk_1E7812868;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v5 recordAcceptedIntroductions:v4 completion:v7];
}

void sub_1A832C174(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1554();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v5 count];
        v11 = *(a1 + 32);
        v13 = 134218242;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Recorded %lu marked as known contacts for chat: %@", &v13, 0x16u);
      }
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 1, 0);
    }
  }
}

void sub_1A832C628(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69A80C8] introductionWithHandle:*(a1 + 32) suggestedName:a2];
  [*(a1 + 40) addObject:v3];
  dispatch_group_leave(*(a1 + 48));
}

void sub_1A832D3A8()
{
  v18[57] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v18[0] = @"ignoreAlertsFlag";
  v18[1] = @"com.apple.iChat.LastArchivedMessageDate";
  v18[2] = @"com.apple.iChat.LastArchivedMessageID";
  v18[3] = @"CKChatConversationKeyboardKey";
  v18[4] = @"CKChatWatermarkMessageID";
  v18[5] = @"CKChatWatermarkTime";
  v18[6] = @"IMChatWatermarkMessageID";
  v18[7] = @"IMChatWatermarkDate";
  v18[8] = @"CKChatLastCanceledMessageTime";
  v18[9] = @"CKChatConsecutiveCanceledMessageCount";
  v18[10] = @"CKChatConsecutiveManuallyCanceledMessageCount";
  v18[11] = @"CKChatPreviousAccountsDictionaryKey";
  v1 = *MEMORY[0x1E69A6B68];
  v18[12] = @"CKChatUnmuteTime";
  v18[13] = v1;
  v18[14] = *MEMORY[0x1E69A6C78];
  v18[15] = @"hasBeenAutoSpamReported";
  v18[16] = @"wasAutoDetectedForSpam";
  v18[17] = @"wasDetectedAsSMSSpam";
  v18[18] = @"SMSCategory";
  v18[19] = @"SMSSubCategory";
  v18[20] = @"wasDetectedAsiMessageSpam";
  v18[21] = @"smsSpamExtensionName";
  v18[22] = @"numberOfTimesRespondedtoThread";
  v18[23] = @"hasViewedPotentialSpamChat";
  v18[24] = @"lastTUConversationCreatedDate";
  v18[25] = @"lastScheduledMessageCreatedDate";
  v2 = *MEMORY[0x1E69A6C20];
  v18[26] = @"shouldForceToSMS";
  v18[27] = v2;
  v18[28] = @"smsHandshakeState";
  v18[29] = @"messageHandshakeState";
  v18[30] = @"lastBlackholeReceiptPromptDate";
  v18[31] = @"restoredFromBlackhole";
  v3 = *MEMORY[0x1E69A6C28];
  v18[32] = *MEMORY[0x1E69A6B00];
  v18[33] = v3;
  v4 = *MEMORY[0x1E69A6AF8];
  v18[34] = *MEMORY[0x1E69A6BB8];
  v18[35] = v4;
  v5 = *MEMORY[0x1E69A6B58];
  v18[36] = @"emergencyTranscriptSharingState";
  v18[37] = v5;
  v6 = *MEMORY[0x1E69A6BE8];
  v18[38] = @"showAudioButtonInEntryView";
  v18[39] = v6;
  v7 = *MEMORY[0x1E69A6B28];
  v18[40] = *MEMORY[0x1E69A6C00];
  v18[41] = v7;
  v8 = *MEMORY[0x1E69A6CC0];
  v18[42] = *MEMORY[0x1E69A6CC8];
  v18[43] = v8;
  v9 = *MEMORY[0x1E69A6BC8];
  v18[44] = @"RCSGroupURI";
  v18[45] = v9;
  v10 = *MEMORY[0x1E69A6B08];
  v18[46] = *MEMORY[0x1E69A6B10];
  v18[47] = v10;
  v11 = *MEMORY[0x1E69A6B60];
  v18[48] = *MEMORY[0x1E69A6CE0];
  v18[49] = v11;
  v12 = *MEMORY[0x1E69A6C30];
  v18[50] = *MEMORY[0x1E69A6CA0];
  v18[51] = v12;
  v13 = *MEMORY[0x1E69A6A60];
  v18[52] = *MEMORY[0x1E69A6B98];
  v18[53] = v13;
  v14 = *MEMORY[0x1E69A6CB0];
  v18[54] = *MEMORY[0x1E69A7870];
  v18[55] = v14;
  v18[56] = *MEMORY[0x1E69A6AE8];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:57];
  v16 = [v0 setWithArray:v15];
  v17 = qword_1ED7679D0;
  qword_1ED7679D0 = v16;
}

void sub_1A8330E70(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) participants];
  v5 = [v4 containsObject:v3];

  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "  * No need to invite: %@   - already in chat", &v9, 0xCu);
      }
    }
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "  * Need to invite: %@", &v9, 0xCu);
      }
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

void sub_1A8331444(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A833139CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83326F4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83326C0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8332A74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A8332A90(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (([WeakRetained containsMessageFromContactOrMe]& 1) != 0)
    {
      v3 = [WeakRetained lastAddressedHandleID];
      if ([v3 length])
      {
        v4 = [WeakRetained recipient];
        [v4 autoInviteToViewAvailabilityIfNeededFromHandleID:v3];
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_15;
        }

        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *v5 = 0;
          _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Not sharing availability in chat with no lastAddressedHandleID", v5, 2u);
        }
      }

LABEL_15:
      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Not sharing availability in chat with non contact that I have not participated in", v6, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    WeakRetained = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, WeakRetained, OS_LOG_TYPE_INFO, "Not auto inviting, chat is not eligible for sharing focus status", buf, 2u);
    }
  }

LABEL_16:
}

void sub_1A8332E58(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A8332EEC;
  v3[3] = &unk_1E7812930;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t sub_1A8332F04(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Not able to share focus status from this device because the Focus setting Share Across Devices is disabled for this device.", v5, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A83333A8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A833338CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83350DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8334FFCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8335318()
{
  v0 = [MEMORY[0x1E69A60F0] sharedInstance];
  v1 = [v0 isInternalInstall];

  if (v1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    byte_1EB2EA370 = [v2 BOOLForKey:@"CanAlwaysInlineReply"];
  }

  else
  {
    byte_1EB2EA370 = 0;
  }
}

void sub_1A8335A38(uint64_t a1)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A8335B8C;
  v11[3] = &unk_1E7812980;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v12 = v8;
  v13 = v7;
  v14 = *(a1 + 72);
  [v2 enumerateObjectsUsingBlock:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A8335D78;
  v10[3] = &unk_1E78129A8;
  v9 = *(a1 + 72);
  v10[4] = *(a1 + 80);
  [v9 enumerateObjectsUsingBlock:v10];
}

void sub_1A8335B8C(uint64_t a1, void *a2)
{
  v19 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v19;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4 && v4 != *(a1 + 32))
  {
    v6 = [v4 guid];
    v7 = [v5 threadOriginator];
    v8 = [v7 guid];
    v9 = [v7 replyCountsByPart];
    v10 = [v9 isEqual:*(a1 + 40)];

    v11 = [v7 retractedPartIndexes];
    v12 = [*(a1 + 48) retractedPartIndexes];
    v13 = [v11 isEqual:v12];

    v14 = [v7 body];
    v15 = [*(a1 + 48) body];
    v16 = [v14 isEqual:v15];

    if (v10 && v13 && (v16 & 1) != 0)
    {
      goto LABEL_18;
    }

    if ([v8 isEqualToString:*(a1 + 56)])
    {
      v17 = [v5 _copy];
      [v17 setThreadOriginator:*(a1 + 48)];
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (![v6 isEqualToString:*(a1 + 56)] || v5 == *(a1 + 48))
      {
        goto LABEL_18;
      }

      v17 = [v5 _copy];
      [v17 setReplyCountsByPart:*(a1 + 40)];
      if (!v17)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    v18 = *(a1 + 64);
    if (v18)
    {
      CFArrayAppendValue(v18, v17);
    }

    goto LABEL_17;
  }

LABEL_19:
}

void sub_1A8335D78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _handleItem:v3 forChatStyle:objc_msgSend(v2 updateReplyCounts:{"chatStyle"), 0}];
}

void sub_1A83362AC(id *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = [a1[4] _items];
  v3 = [v2 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    theArray = 0;
    v5 = *v39;
    v31 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = [v7 guid];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([a1[5] containsObject:v8] & 1) == 0 && (objc_msgSend(a1[6], "containsObject:", v8) & 1) == 0)
        {
          v9 = v7;
          v10 = [v9 threadOriginator];
          v11 = [v9 threadIdentifier];
          v12 = [v10 guid];
          v13 = v12;
          v32 = v11;
          if (v11 && v12)
          {
            v14 = [a1[7] objectForKey:v12];
            if (v14)
            {
              v15 = [v9 _copy];
              v16 = v10;
              v17 = v15;
              v30 = v16;
              v18 = [v16 _copy];
              [v18 setReplyCountsByPart:v14];
              [v17 setThreadOriginator:v18];
              v19 = theArray;
              if (!theArray)
              {
                v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              theArray = v19;
              if (v19 && v17)
              {
                CFArrayAppendValue(v19, v17);
              }

              v10 = v30;
            }

            if (([a1[8] containsObject:v32] & 1) != 0 || objc_msgSend(a1[6], "containsObject:", v13))
            {
              v20 = [v9 _copy];
              [v20 setThreadOriginator:0];
              v21 = theArray;
              if (!theArray)
              {
                v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              theArray = v21;
              if (v20 && v21)
              {
                CFArrayAppendValue(v21, v20);
              }
            }
          }

          v22 = [a1[7] objectForKey:v8];
          if (v22)
          {
            v23 = [v9 _copy];
            [v23 setReplyCountsByPart:v22];
            v24 = theArray;
            if (!theArray)
            {
              v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            theArray = v24;
            if (v23 && v24)
            {
              CFArrayAppendValue(v24, v23);
            }
          }

          v2 = v31;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v4);
  }

  else
  {
    theArray = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = theArray;
  v26 = [(__CFArray *)v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [a1[4] _handleItem:*(*(&v34 + 1) + 8 * j)];
      }

      v27 = [(__CFArray *)v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v27);
  }
}

void sub_1A8336A24()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.IMChatKeyTransparency", v2);
  v1 = qword_1EB2E9138;
  qword_1EB2E9138 = v0;
}

void sub_1A8336CC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = 0;
  [v2 markFailureSeenForResults:v3 error:&v10];
  v4 = v10;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8336D9C;
  v6[3] = &unk_1E7810D08;
  v7 = v4;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void sub_1A8336D9C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v1 = (a1 + 40);
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = *v1;
    v2 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v2)
    {
      v24 = *v28;
      do
      {
        v3 = 0;
        do
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v27 + 1) + 8 * v3);
          v5 = +[IMKeyTransparencyController sharedController];
          v6 = [v4 ID];
          v7 = [v6 _stripFZIDPrefix];
          v8 = [v5 idsIDInfoResultForHandleID:v7];

          v9 = [v8 uri];
          v10 = MEMORY[0x1E69DB500];
          v11 = [*(a1 + 48) applicationIdentifier];
          v12 = [v10 addApplicationPrefixForIdentifier:v11 uri:v9];

          v13 = +[IMKeyTransparencyController sharedController];
          v14 = [v4 ID];
          v15 = [v14 _stripFZIDPrefix];
          v16 = [v13 ktVerifierResultForHandleID:v15];

          v17 = MEMORY[0x1E696AEC0];
          v18 = [v4 name];
          v19 = [v17 stringWithFormat:@"(name:%@, uri:%@, uiStatus:%lu)", v18, v12, objc_msgSend(v16, "uiStatus")];

          [v26 addObject:v19];
          ++v3;
        }

        while (v2 != v3);
        v2 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v2);
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v26 componentsJoinedByString:@" "];;
        v22 = *(a1 + 32);
        *buf = 138412546;
        v32 = v21;
        v33 = 2112;
        v34 = v22;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "IMChat_KT There was an error marking KT failure as seen for participants [%@] with error: %@", buf, 0x16u);
      }
    }
  }
}

void sub_1A8339988(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 chatRegistry];
  LOBYTE(v5) = *(a1 + 64);
  [v6 _chat_loadHistory:*(a1 + 32) limit:*(a1 + 56) beforeGUID:*(a1 + 40) afterGUID:0 threadIdentifier:0 queryID:v4 synchronous:v5 completion:*(a1 + 48)];
}

void sub_1A8339D40(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8339CE0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8339D74(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      *buf = 138413058;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Completing queryID: %@, loadMessagesBeforeAndAfterGUID: %@ numberOfMessagesBeforeGUID: %lu numberOfMessagesAfterGUID: %lu", buf, 0x2Au);
    }
  }

  v8 = [*(a1 + 40) chatRegistry];
  LOBYTE(v9) = *(a1 + 80);
  [v8 _chat_loadPagedHistory:*(a1 + 40) numberOfMessagesBefore:*(a1 + 64) numberOfMessagesAfter:*(a1 + 72) messageGUID:*(a1 + 32) threadIdentifier:*(a1 + 48) queryID:v3 synchronous:v9 completion:*(a1 + 56)];
}

void sub_1A8339EB8(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109378;
      v6[1] = a2;
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "loadMessagesBeforeAndAfterGUID completion with success: %d error: %@", v6, 0x12u);
    }
  }
}

void sub_1A833A1E8(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412802;
      v16 = v3;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Executing queryID: %@, fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@", buf, 0x20u);
    }
  }

  v7 = [*(a1 + 48) chatRegistry];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A833A3B0;
  v11[3] = &unk_1E7812AB0;
  v12 = v9;
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  [v7 _chat_fetchHistorySummary:v8 dateInterval:v12 synchronous:v10 queryID:v3 completion:v11];
}

void sub_1A833A3B0(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished queryID: %@, fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@", &v10, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

void sub_1A833A4D0(void *a1, char a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a1[4];
        v8 = a1[5];
        v10 = 138412802;
        v11 = v7;
        v12 = 2112;
        v13 = v8;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Query completed for fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@, error: %@", &v10, 0x20u);
      }
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1704();
    }

    (*(a1[6] + 16))();
  }
}

void sub_1A833A814(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Executing queryID: %@, fetchOldestMessageDate chatGUID: %@", buf, 0x16u);
    }
  }

  v6 = [*(a1 + 40) chatRegistry];
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A833A9C4;
  v10[3] = &unk_1E7812B28;
  v11 = v3;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v9 = v3;
  [v6 _chat_fetchOldestMessageDateForChat:v7 synchronous:v8 queryID:v9 completion:v10];
}

void sub_1A833A9C4(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished queryID: %@, fetchOldestMessageDate chatGUID: %@", &v10, 0x16u);
    }
  }

  (*(a1[6] + 16))();
}

void sub_1A833AADC(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Query completed for fetchOldestMessageDate chatGUID: %@, error: %@", &v9, 0x16u);
      }
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E178C();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1A833ADA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_loadFrequentReplies:*(a1 + 32) limit:*(a1 + 40) queryID:v4 loadImmediately:*(a1 + 48)];
}

void sub_1A833AFCC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 424), a2);
  v4 = a2;
  v5 = [*(a1 + 32) chatRegistry];
  [v5 _chat_loadUnreadMessages:*(a1 + 32) limit:*(a1 + 48) fallbackGUID:*(a1 + 40) queryID:v4 loadImmediately:*(a1 + 56)];
}

void sub_1A833B288(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_loadAttachments:*(a1 + 32) queryID:v4 loadImmediately:0];
}

void sub_1A833B2FC(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  v5 = *(*(a1 + 32) + 360);
  [*(a1 + 32) _setAttachments:0];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = v11;
    if (a2)
    {
      v8 = 1;
      v9 = v5;
      v7 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    (*(v6 + 16))(v6, v8, v9, v7);
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 __mainThreadPostNotificationName:@"__kIMChatDidFetchAttachmentsNotification" object:*(a1 + 32) userInfo:0];
}

void sub_1A833B46C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_isDownloadingPurgedAssetsForChat:*(a1 + 32) queryID:v4 loadImmediately:1];
}

void sub_1A833B5CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 chatRegistry];
  [v5 _chat_isDownloadingPurgedAssetsForChat:*(a1 + 32) queryID:v4 loadImmediately:0];
}

void sub_1A833BC48(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 transferGUID];
  if ([*(a1 + 32) containsObject:v3])
  {
    [*(a1 + 32) removeObject:v3];
    [*(a1 + 40) addObject:v7];
  }

  else if (IMFileTransferGUIDIsTemporary())
  {
    v4 = [v7 messageItem];
    v5 = [v4 guid];

    [v7 index];
    v6 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
    if ([*(a1 + 32) containsObject:v6])
    {
      [*(a1 + 32) removeObject:v6];
      [*(a1 + 40) addObject:v7];
    }
  }
}

id _IMStringFromIMChatParticipantState(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"Not Yet Invited"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ([v3 length])
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:@"Invite Failed"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  if ([v3 length])
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:@"Deciding"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  if ([v3 length])
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:@"Declined"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  if ([v3 length])
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:@"Joined"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_24:
  if ([v3 length])
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:@"Left"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_27:
  if ([v3 length])
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:@"Kicked"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_30:
  if ([v3 length])
  {
    [v3 appendString:{@", "}];
  }

  [v3 appendString:@"Banned"];
  if ((a1 & 0x100) != 0)
  {
LABEL_33:
    if ([v3 length])
    {
      [v3 appendString:{@", "}];
    }

    [v3 appendString:@"Removing"];
  }

LABEL_36:

  return v3;
}

__CFString *_IMStringFromIMChatJoinState(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7812D48[a1];
  }
}

void sub_1A833E66C(uint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = a1 + 32;
  v61 = [*(a1 + 32) _getDeleteChatItemMap:*(a1 + 40)];
  v60 = [*v1 _getMessageChatItemMap:*(v1 + 8) withDeleteMap:v61 andAllChatItems:*(a1 + 48)];
  v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = [v61 allKeys];
  v62 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (v62)
  {
    v54 = v73;
    v59 = *v85;
    do
    {
      v2 = 0;
      do
      {
        if (*v85 != v59)
        {
          v3 = v2;
          objc_enumerationMutation(obj);
          v2 = v3;
        }

        v64 = v2;
        v4 = *(*(&v84 + 1) + 8 * v2);
        v65 = [v61 objectsForKey:{v4, v54}];
        v5 = [v65 lastObject];
        v67 = [v5 _parentItem];

        v66 = [v60 objectsForKey:v4];
        if ([v66 count] == 1)
        {
          v6 = [v66 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = v6;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v8 = v65;
            v9 = [v8 countByEnumeratingWithState:&v80 objects:v91 count:16];
            if (v9)
            {
              v10 = *v81;
              while (2)
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v81 != v10)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v12 = *(*(&v80 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v13 = v12;
                    v14 = [v7 aggregateAttachmentParts];
                    v15 = [v14 containsObject:v13];

                    if (v15)
                    {
                      continue;
                    }
                  }

                  v17 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    sub_1A84E19B8(&v78, v79, v17);
                  }

                  v16 = 0;
                  goto LABEL_24;
                }

                v9 = [v8 countByEnumeratingWithState:&v80 objects:v91 count:16];
                v16 = 1;
                if (v9)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v16 = 1;
            }

LABEL_24:
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v19 = [v66 count];
        if ((v19 == [v65 count]) & ~v16 | isKindOfClass & 1)
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v90 = v4;
              _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Request to delete entire chatItem for message (guid: %@). Adding messageGUID for deletion.", buf, 0xCu);
            }
          }

          v21 = [v67 guid];
          [v57 addObject:v21];

          [v56 addObject:v67];
        }

        else
        {
          v22 = [MEMORY[0x1E69A8018] sharedInstance];
          v23 = [v22 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"SuppressDeleteParts" defaultValue:0];

          if ((v23 & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Request to delete subset of chatItems from message. Update message.", buf, 2u);
              }
            }

            v25 = *(a1 + 40);
            v26 = *(*(a1 + 32) + 392);
            v76 = 0;
            v77 = 0;
            v27 = [v26 _itemWithChatItemsDeleted:v25 fromItem:v67 indexesOfItemsDeleted:&v77 indexToRangeMapOfItemsDeleted:&v76];
            v28 = v77;
            v29 = v76;
            if (IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v90 = v27;
                _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "New item after removing parts: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v31 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v90 = v29;
                _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "DELETING PARTS index:range map: %@", buf, 0xCu);
              }
            }

            v32 = [v27 message];
            v33 = *(a1 + 32);
            v34 = [MEMORY[0x1E695DF00] now];
            [v33 updateMessage:v32 withIndexesOfDeletedItems:v28 withIndexToRangeMapOfDeletedItems:v29 deleteDate:v34];

            [*(a1 + 32) _handleItem:v27];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = v67;
              v36 = [v35 replyCountsByPart];
              v37 = [v36 count] == 0;

              if (!v37)
              {
                v72[0] = MEMORY[0x1E69E9820];
                v72[1] = 3221225472;
                v73[0] = sub_1A833F060;
                v73[1] = &unk_1E7812C18;
                v74 = v35;
                v75 = v55;
                [v29 enumerateKeysAndObjectsUsingBlock:v72];
              }
            }
          }
        }

        v2 = v64 + 1;
      }

      while (v64 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v84 objects:v92 count:16];
    }

    while (v62);
  }

  [*(a1 + 32) _updateRepliesIfNecessaryWithRemovedItems:v56 threadIdentifiersOfRemovedParts:v55];
  if ([v57 count])
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v57 count];
        *buf = 134217984;
        v90 = v39;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Recently Deleted | Will move %lu messageGUIDs to recently deleted", buf, 0xCu);
      }
    }

    v40 = +[IMChatRegistry sharedRegistry];
    v41 = [MEMORY[0x1E695DF00] now];
    [v40 moveMessagesWithGUIDsToRecentlyDeleted:v57 deleteDate:v41 synchronously:0 completionHandler:&unk_1F1B6ED60];

    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v43 = v56;
    v44 = [v43 countByEnumeratingWithState:&v68 objects:v88 count:16];
    if (v44)
    {
      v45 = *v69;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v69 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = *(*(&v68 + 1) + 8 * j);
          v48 = [v47 balloonBundleID];
          v49 = IMBalloonExtensionIDWithSuffix();
          v50 = [v48 isEqualToString:v49];

          if (v50)
          {
            [v42 addObject:v47];
          }

          [*(a1 + 32) _removeItem:v47];
        }

        v44 = [v43 countByEnumeratingWithState:&v68 objects:v88 count:16];
      }

      while (v44);
    }

    v51 = [MEMORY[0x1E69A8218] sharedCoordinator];
    v52 = [v42 copy];
    [v51 informOfDeletedMessagesWithMessages:v52];
  }

  v53 = [*(a1 + 32) loadMessagesBeforeDate:0 limit:objc_msgSend(*(a1 + 32) loadImmediately:{"numberOfMessagesToKeepLoaded"), 0}];
}

void sub_1A833F060(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [*(a1 + 32) guid];
        [v5 integerValue];
        [v11 rangeValue];
        ThreadIdentifierWithOriginatorGUID = IMMessageCreateThreadIdentifierWithOriginatorGUID();

        if (ThreadIdentifierWithOriginatorGUID)
        {
          [*(a1 + 40) addObject:ThreadIdentifierWithOriginatorGUID];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

void sub_1A833F1BC()
{
  v0 = +[IMChatRegistry sharedRegistry];
  [v0 updateRecoverableMessagesMetadataSynchronously:0 completionHandler:0];
}

id sub_1A833F358(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _updateRepliesIfNecessaryWithRemovedItems:*(a1 + 40) threadIdentifiersOfRemovedParts:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v2)
  {
    v3 = *v15;
    do
    {
      v4 = 0;
      do
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * v4);
        if (IMOSLoggingEnabled())
        {
          v6 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Request to delete message item for message.", buf, 2u);
          }
        }

        v7 = [*(a1 + 32) remoteDaemon];
        v8 = [v5 guid];
        v18 = v8;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        v10 = [MEMORY[0x1E696AEC0] stringGUID];
        [v7 deleteMessageWithGUIDs:v9 queryID:v10];

        [*(a1 + 32) _removeItem:v5];
        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v2);
  }

  return [*(a1 + 32) loadMessagesBeforeDate:0 limit:objc_msgSend(*(a1 + 32) loadImmediately:{"numberOfMessagesToKeepLoaded"), 0}];
}

void sub_1A833F880(uint64_t a1)
{
  v2 = [*(a1 + 32) _copy];
  [v2 setExpireState:3];
  [*(a1 + 40) _handleItem:v2];
}

void sub_1A833FA70(uint64_t a1)
{
  v2 = [*(a1 + 32) _copy];
  [v2 setFlags:{objc_msgSend(v2, "flags") | 0x800000000}];
  [*(a1 + 40) _handleItem:v2];
}

void sub_1A833FB80(uint64_t a1)
{
  v2 = [*(a1 + 32) copyWithFlags:{objc_msgSend(*(a1 + 32), "flags")}];
  [v2 _setMessageID:{objc_msgSend(*(a1 + 32), "messageID")}];
  [v2 setSelectedRichCardIndex:*(a1 + 48)];
  [*(a1 + 40) _handleItem:v2 keepExistingIndex:1];
}

void sub_1A833FDFC(uint64_t a1)
{
  v4 = [*(a1 + 32) _copyWithFlags:{objc_msgSend(*(a1 + 32), "flags") | 0x400000}];
  v2 = [MEMORY[0x1E695DF00] date];
  [v4 setTimePlayed:v2];

  if ([*(a1 + 32) isExpirable])
  {
    if (IMMessageItemShouldAutomaticallySave())
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    [v4 setExpireState:v3];
  }

  [*(a1 + 40) _handleItem:v4];
}

void sub_1A8340058(uint64_t a1)
{
  v4 = [*(a1 + 32) _copyWithFlags:{objc_msgSend(*(a1 + 32), "flags")}];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DF00] date];
  [v2 setTimeExpressiveSendPlayed:v3];

  [*(a1 + 40) _handleItem:v4];
}

void sub_1A8340E18(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v5;
      v4 = +[IMFileTransferCenter sharedInstance];
      [v4 setCommSafetySensitiveForTransfer:v3 value:*(a1 + 32)];
    }
  }
}

void sub_1A8340EBC(id *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 _item];
        v9 = [v7 _item];
        v10 = [v8 _copyWithFlags:{objc_msgSend(v9, "flags")}];

        if (objc_opt_respondsToSelector())
        {
          [v10 setNeedsReloadForTransferStatusChangeWithType:0];
        }

        [a1[5] _handleItem:v10];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = a1[6];
  if (v11)
  {
    v12 = [v11 _item];
    v13 = [a1[6] _item];
    v14 = [v12 _copyWithFlags:{objc_msgSend(v13, "flags")}];

    if (objc_opt_respondsToSelector())
    {
      [v14 setNeedsReloadForTransferStatusChangeWithType:0];
    }

    [a1[5] _handleItem:{v14, v15}];
  }
}

void sub_1A8341AA4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _items];
  v3 = [v2 copy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 actionable])
          {
            v11 = [v10 copy];
            [v11 setActionable:0];
            [*(a1 + 32) _handleItem:v11];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_1A8342020(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 context];
  [v4 setInvitation:a3];
}

uint64_t sub_1A8342070(void *a1)
{
  v2 = [a1 flags];

  return [a1 _copyWithFlags:v2];
}

void *sub_1A83420AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 messageID];
  v6 = [a1 copyWithFlags:a3];
  [v6 _setMessageID:v5];
  return v6;
}

void sub_1A83421F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = +[IMDaemonController sharedController];
  v4 = [v5 synchronousRemoteDaemon];
  [v4 _automation_markMessagesAsRead:*(a1 + 48) messageGUID:*(a1 + 32) forChatGUID:*(a1 + 40) fromMe:*(a1 + 49) queryID:v3];
}

uint64_t sub_1A834232C()
{
  v0 = objc_alloc(MEMORY[0x1E69A82B8]);
  v1 = [v0 initWithTitle:@"IMChat-RecentlyUpdated" maximumNumberOfTrackedObjects:3 queue:MEMORY[0x1E69E96A0]];
  qword_1ED7676B0 = v1;

  return MEMORY[0x1EEE66BB8](v1);
}

void sub_1A83427A0(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 _item];
  v4 = [v3 guid];

  if (v4 && ([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"c:%@: %@", v8, v4];
    [v5 addObject:v9];
  }

  if ([*(a1 + 48) count] <= 0x63)
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"c:%@: %@", v13, v4];
    [v10 addObject:v14];
  }
}

void sub_1A8342B7C(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v10 = [v6 lastAddressedLocalHandle];
  v8 = [v6 lastAddressedSIMID];

  v9 = [v5 stringWithFormat:@"%@-%@", v10, v8];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void sub_1A8342E08(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8342E94;
  block[3] = &unk_1E7812D00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = a2;
  block[4] = v2;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A8342E94(uint64_t a1)
{
  if (*(a1 + 48) == 2)
  {
    [*(a1 + 32) setIsFiltered:2];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1A8342F10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_1A83431F0(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259BD0;
  v8 = sub_1A825AF14;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A83432F4;
  v3[3] = &unk_1E7812D78;
  v3[4] = &v4;
  [a1 __enumerateItemsWithOptions:0 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A83432DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83432F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if (![v8 type])
  {
    v5 = [v8 message];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

id sub_1A834336C(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259BD0;
  v8 = sub_1A825AF14;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A8343470;
  v3[3] = &unk_1E7812D78;
  v3[4] = &v4;
  [a1 __enumerateItemsWithOptions:2 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8343458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8343470(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if (![v8 type])
  {
    v5 = [v8 message];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

id sub_1A83434E8(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259BD0;
  v8 = sub_1A825AF14;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A83435EC;
  v3[3] = &unk_1E7812D78;
  v3[4] = &v4;
  [a1 __enumerateItemsWithOptions:2 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A83435D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83435EC(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 type];
  if (!v5)
  {
    v6 = [v8 message];
    if (([v6 isTypingMessage] & 1) == 0 && (objc_msgSend(v6, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(v6, "isRCSEncryptionTest") & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
      *a3 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v5);
}

id sub_1A8343698(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259BD0;
  v8 = sub_1A825AF14;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A834379C;
  v3[3] = &unk_1E7812D78;
  v3[4] = &v4;
  [a1 __enumerateItemsWithOptions:2 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8343784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A834379C(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 type];
  if (!v5)
  {
    v6 = [v8 message];
    if (([v6 isFromMe] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
      *a3 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v5);
}

id sub_1A8343830(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259BD0;
  v8 = sub_1A825AF14;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A8343934;
  v3[3] = &unk_1E7812D78;
  v3[4] = &v4;
  [a1 __enumerateItemsWithOptions:2 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A834391C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8343934(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 type];
  if (!v5)
  {
    v6 = [v8 message];
    if (([v6 isFromMe] & 1) == 0 && (objc_msgSend(v6, "isTypingMessage") & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
      *a3 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v5);
}

void sub_1A83439D4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8343A78;
  v8[3] = &unk_1E7812DA0;
  v9 = v6;
  v7 = v6;
  [a1 __enumerateItemsWithOptions:a3 usingBlock:v8];
}

void sub_1A8343A78(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (![v7 type])
  {
    v5 = *(a1 + 32);
    v6 = [v7 message];
    (*(v5 + 16))(v5, v6, a3);
  }
}

id sub_1A8343B00(void *a1)
{
  v1 = [a1 __imItems];
  v2 = [v1 __imArrayByApplyingBlock:&unk_1F1B6EDA0];

  return v2;
}

id sub_1A8343B54(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

id sub_1A8343BA8(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1A8259BD0;
  v8 = sub_1A825AF14;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A8343CAC;
  v3[3] = &unk_1E7812D78;
  v3[4] = &v4;
  [a1 __enumerateItemsWithOptions:2 usingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A8343C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8343CAC(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (![v6 type])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1A8343D24(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1A8259BD0;
  v11[4] = sub_1A825AF14;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8343E34;
  v8[3] = &unk_1E7812DC8;
  v10 = v11;
  v7 = v6;
  v9 = v7;
  [a1 enumerateObjectsWithOptions:a3 & 0xFFFFFFFFFFFFFFFELL usingBlock:v8];

  _Block_object_dispose(v11, 8);
}

void sub_1A8343E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8343E34(uint64_t a1, void *a2)
{
  v3 = [a2 _parentItem];
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (v3 != v6)
  {
    objc_storeStrong(v5, v3);
    v5 = (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x1EEE66BB8](v5);
}

id sub_1A8343EB8(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) _parentItem];
        v10 = v9;
        if (v9)
        {
          v11 = v9 == v6;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          [v2 addObject:v9];
          v12 = v10;

          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v2;
}

id IMEmotePrefixes()
{
  v0 = qword_1EB2EA380;
  if (!qword_1EB2EA380)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"/me", @"/emote", @"/em", 0}];
    v2 = qword_1EB2EA380;
    qword_1EB2EA380 = v1;

    v0 = qword_1EB2EA380;
  }

  return v0;
}

uint64_t sub_1A8345540(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(result + 32) + 72) |= 0x20000000uLL;
    *a5 = 1;
  }

  return result;
}

uint64_t IMMessageCompare(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    Class = object_getClass(v5);
    if (Class == object_getClass(v6))
    {
      if (a3 == 2)
      {
        v12 = v6[8];
        v13 = v5[8];
        v14 = v12 == v13;
        v15 = v12 < v13;
        v16 = -1;
        if (!v15)
        {
          v16 = 1;
        }

        if (v14)
        {
          v8 = 0;
        }

        else
        {
          v8 = v16;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v9 = v5[7];
          v10 = v6[7];
          v18.length = [(__CFString *)v9 length];
          v18.location = 0;
          v11 = CFStringCompareWithOptionsAndLocale(v9, v10, v18, 1uLL, 0);
        }

        else
        {
          v11 = [v5[5] compare:v6[5]];
        }

        v8 = v11;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  return v8;
}

void sub_1A8348850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A83483ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8348904(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v67 = a2;
  v68 = a1;
  v7 = [*(*(*(a1 + 40) + 8) + 40) attributedSubstringFromRange:{a3, a4}];
  v65 = [v7 trimmedString];

  v66 = [*(*(*(v68 + 48) + 8) + 40) attributedSubstringFromRange:{a3, a4}];
  v70 = [v66 trimmedString];
  if (!v67)
  {
LABEL_17:
    v63 = 0;
    v64 = 0;
    goto LABEL_18;
  }

  v8 = +[IMBalloonPluginManager sharedInstance];
  v9 = *MEMORY[0x1E69A6A18];
  v10 = [v8 dataSourceClassForBundleID:*MEMORY[0x1E69A6A18]];

  LODWORD(v8) = [v10 supportsURL:v67];
  v11 = IMOSLoggingEnabled();
  if (!v8)
  {
    if (v11)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "%@ did not support URL", &buf, 0xCu);
      }
    }

    goto LABEL_17;
  }

  if (v11)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Initializing rich link", &buf, 2u);
    }
  }

  v13 = objc_alloc_init(IMPluginPayload);
  [(IMPluginPayload *)v13 setMessageGUID:*(*(*(v68 + 56) + 8) + 40)];
  [(IMPluginPayload *)v13 setPluginBundleID:v9];
  [(IMPluginPayload *)v13 setUrl:v67];
  if ([*(*(*(v68 + 48) + 8) + 40) length] == a4)
  {
    v14 = [*(v68 + 32) payloadData];
    v81[5] = 0;
    v15 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
    v16 = 0;
    [(IMPluginPayload *)v13 setData:v15];

    [(IMPluginPayload *)v13 setAttachments:v16];
  }

  v17 = +[IMBalloonPluginManager sharedInstance];
  v18 = [v17 dataSourceForPluginPayload:v13];

  [v18 payloadWillEnterShelf];
  [v18 payloadWillSendFromShelf];
  v63 = [v18 messagePayloadDataForSending];
  v64 = v9;
  [v18 setPayloadInShelf:0];
  if (*(*(*(v68 + 64) + 8) + 24) == 1)
  {
    v19 = [*(v68 + 32) messageSubject];
    v20 = [v19 length] == 0;

    if (!v20)
    {
      *(*(*(v68 + 72) + 8) + 24) = 1;
      v21 = [MEMORY[0x1E696AEC0] stringGUID];
      v22 = *(*(v68 + 56) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }

LABEL_18:
  *&buf = 0;
  *(&buf + 1) = &buf;
  v84 = 0x3032000000;
  v85 = sub_1A8259BE0;
  v86 = sub_1A825AF1C;
  v87 = 0;
  v25 = [v65 length];
  v26 = *MEMORY[0x1E69A5F68];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = sub_1A834928C;
  v81[3] = &unk_1E7812E20;
  v81[4] = &buf;
  [v65 enumerateAttribute:v26 inRange:0 options:v25 usingBlock:{0, v81}];
  if ([v70 length])
  {
    v27 = [v66 string];
    v28 = [v70 string];
    v29 = [v27 rangeOfString:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 + a3;
  if (v29 + a3 < 1)
  {
    v69 = v70;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v80 = 0;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Shifting DD attributed results by a non-zero offset.", v80, 2u);
      }
    }

    v69 = [v70 mutableCopy];
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v32 = +[IMDDController allSupportedDDAttributesKeys];
    v33 = [v32 countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v33)
    {
      v34 = *v77;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v77 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v76 + 1) + 8 * i);
          v37 = [v70 length];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = sub_1A834931C;
          v72[3] = &unk_1E7812E48;
          v75 = v30;
          v73 = v69;
          v74 = v36;
          [v70 enumerateAttribute:v36 inRange:0 options:v37 usingBlock:{0, v72}];
        }

        v33 = [v32 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v33);
    }
  }

  v62 = [IMMessage alloc];
  v71 = [*(v68 + 32) sender];
  v38 = [*(v68 + 32) time];
  if (*(*(*(v68 + 64) + 8) + 24) == 1 && (*(*(*(v68 + 72) + 8) + 24) & 1) == 0)
  {
    v39 = [*(v68 + 32) messageSubject];
    v61 = 1;
  }

  else
  {
    v61 = 0;
    v39 = 0;
  }

  v40 = *(*(&buf + 1) + 40);
  v41 = [*(v68 + 32) flags];
  v42 = *(*(*(v68 + 56) + 8) + 40);
  v43 = [*(v68 + 32) subject];
  v44 = [*(v68 + 32) expressiveSendStyleID];
  v45 = [*(v68 + 32) threadIdentifier];
  v46 = -[IMMessage initWithSender:time:text:messageSubject:fileTransferGUIDs:flags:error:guid:subject:balloonBundleID:payloadData:expressiveSendStyleID:threadIdentifier:scheduleType:scheduleState:](v62, "initWithSender:time:text:messageSubject:fileTransferGUIDs:flags:error:guid:subject:balloonBundleID:payloadData:expressiveSendStyleID:threadIdentifier:scheduleType:scheduleState:", v71, v38, v69, v39, v40, v41, 0, v42, v43, v64, v63, v44, v45, [*(v68 + 32) scheduleType], objc_msgSend(*(v68 + 32), "scheduleState"));

  if (v61)
  {
  }

  v47 = [*(v68 + 32) associatedBalloonBundleID];
  [(IMMessage *)v46 setAssociatedBalloonBundleID:v47];

  v48 = [*(v68 + 32) sourceApplicationID];
  [(IMMessage *)v46 setSourceApplicationID:v48];

  -[IMMessage setShouldNotifyOnSend:](v46, "setShouldNotifyOnSend:", [*(v68 + 32) shouldNotifyOnSend]);
  v49 = [*(v68 + 32) collaborationInitiationRequestInfo];
  [(IMMessage *)v46 setCollaborationInitiationRequestInfo:v49];

  v50 = v68;
  -[IMMessage setSentViaRemoteIntent:](v46, "setSentViaRemoteIntent:", [*(v68 + 32) sentViaRemoteIntent]);
  if ([(IMMessage *)v46 isReply])
  {
    v51 = [*(v68 + 32) threadOriginator];
    [(IMMessage *)v46 setThreadOriginator:v51];

    v50 = v68;
  }

  v52 = [*(v50 + 32) messageSummaryInfo];
  [(IMMessage *)v46 _messageSummaryInfo:v52];

  v53 = [MEMORY[0x1E696AEC0] stringGUID];
  v54 = *(*(v68 + 56) + 8);
  v55 = *(v54 + 40);
  *(v54 + 40) = v53;

  v56 = v68;
  v57 = *(*(*(v68 + 80) + 8) + 40);
  if (!v57)
  {
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = *(*(v68 + 80) + 8);
    v60 = *(v59 + 40);
    *(v59 + 40) = v58;

    v57 = *(*(*(v68 + 80) + 8) + 40);
    v56 = v68;
  }

  [v57 addObject:v46];
  *(*(*(v56 + 64) + 8) + 24) = 0;

  _Block_object_dispose(&buf, 8);
}

uint64_t sub_1A834928C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v10 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = [v5 addObject:v10];
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A834931C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = v7;
    v9 = IMOffsetSerializedDDScannerResult(v7, -*(a1 + 48));

    [*(a1 + 32) removeAttribute:*(a1 + 40) range:{a3, a4}];
    [*(a1 + 32) addAttribute:*(a1 + 40) value:v9 range:{a3, a4}];
  }
}

void *sub_1A834A57C()
{
  result = MEMORY[0x1AC56C560]("MarcoLoggingStringForMessageData", @"Marco");
  off_1EB2E9FE0 = result;
  return result;
}

__CFString *_NSStringFromIMMessageError(unint64_t a1)
{
  if (a1 > 0x2B)
  {
    return @"Undefined Error";
  }

  else
  {
    return *(&off_1E7812EB8 + a1);
  }
}

void sub_1A834B62C()
{
  v0 = objc_alloc(MEMORY[0x1E696AD40]);
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObject:&unk_1F1BA17D0 forKey:*MEMORY[0x1E69A5FD8]];
  v4 = [v0 initWithString:@" " attributes:v1];

  v2 = [v4 attributesAtIndex:0 effectiveRange:0];
  v3 = qword_1EB2EA388;
  qword_1EB2EA388 = v2;
}

void sub_1A834BEC0(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A834BF50;
  block[3] = &unk_1E780FDC8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void sub_1A834BF50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fetchScreenTimeAppPolicy];
}

void sub_1A834C094(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) policyCache];
  v3 = [v2 chatForConversationContext:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 40) allowedByScreenTime];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = @"NO";
        if (v4)
        {
          v6 = @"YES";
        }

        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Updating chat %@ because Comm Limit policy changed to allowed = %@", &v9, 0x16u);
      }
    }

    [v3 updateCachedAllowedByScreenTime:v4];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) allowedByContactsHandle];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Could not find chat for conversation context with allowed by contacts handle: %@. unregistering for Communication Limit tracking for that chat identifier.", &v9, 0xCu);
    }
  }
}

void sub_1A834C7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A834C7D4(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v44 = xmmword_1E78130E8;
  v45 = *off_1E78130F8;
  v46 = 446;
  v8 = MEMORY[0x1E696AEC0];
  v9 = IMFileLocationTrimFileName();
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
  v11 = [v8 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"emergencyNumbers", "-[IMDowntimeController _allowedToShowConversationWithHandleIDs:sync:context:participantIDsHash:trackingChat:]_block_invoke", v9, 446, v10];

  v12 = IMGetAssertionFailureHandler();
  if (v12)
  {
    v12(v11);
  }

  else
  {
    v13 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1AB0();
    }
  }

  if (!v7)
  {
LABEL_10:
    v44 = xmmword_1E7813110;
    v45 = *off_1E7813120;
    v46 = 447;
    v14 = MEMORY[0x1E696AEC0];
    v15 = IMFileLocationTrimFileName();
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F1B76F98];
    v17 = [v14 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"conversation", "-[IMDowntimeController _allowedToShowConversationWithHandleIDs:sync:context:participantIDsHash:trackingChat:]_block_invoke", v15, 447, v16];

    v18 = IMGetAssertionFailureHandler();
    if (v18)
    {
      v18(v17);
    }

    else
    {
      v19 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }
  }

LABEL_16:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v20 = *(a1 + 32);
  v21 = [v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v41;
LABEL_18:
    v24 = 0;
    while (1)
    {
      if (*v41 != v23)
      {
        objc_enumerationMutation(v20);
      }

      if (v5 && ([v5 containsObject:*(*(&v40 + 1) + 8 * v24)] & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v22 == ++v24)
      {
        v22 = [v20 countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v22)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  if (*(a1 + 40))
  {
    v25 = [*(a1 + 48) policyCache];
    v20 = [v25 contextForParticipantIDsHash:*(a1 + 40)];

    if (!v20 || ([MEMORY[0x1E695DFB0] null], v26 = objc_claimAutoreleasedReturnValue(), v26, v20 == v26))
    {
      v28 = *(a1 + 48);
      if (v28[12] == 1)
      {
        [v28 _doRegisterForScreenTimeNotifications];
      }

      if (*(a1 + 80) != 1)
      {
        v30 = [*(a1 + 48) policyCache];
        [v30 addSentinelContextForParticipantIDsHash:*(a1 + 40)];

        v31 = [*(a1 + 48) screenTimeDispatchQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A834CC94;
        block[3] = &unk_1E78129F8;
        v36 = v7;
        v37 = *(a1 + 32);
        v34 = *(a1 + 40);
        v32 = v34.i64[0];
        v38 = vextq_s8(v34, v34, 8uLL);
        v39 = *(a1 + 56);
        dispatch_async(v31, block);

LABEL_35:
        v27 = 1;
        goto LABEL_36;
      }

      v29 = [v7 allowableByContactsHandles:*(a1 + 32)];

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v29);
      [*(a1 + 48) initializeContext:v29 participantIDsHash:*(a1 + 40) trackingChat:*(a1 + 56)];
      v27 = [v29 allowedByScreenTime];
      v20 = v29;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v20);
      v27 = [v20 allowedByScreenTime];
    }

LABEL_36:

    goto LABEL_37;
  }

  v27 = 1;
LABEL_37:

  return v27;
}

void sub_1A834CC94(uint64_t a1)
{
  v2 = [*(a1 + 32) allowableByContactsHandles:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A834CD64;
  v5[3] = &unk_1E78101E0;
  v3 = *(a1 + 56);
  v5[4] = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = *(a1 + 64);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void sub_1A834CD78(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A834CE0C;
  v3[3] = &unk_1E7810230;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void sub_1A834CE0C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) emergencyNumbers];
  v3 = [*(a1 + 32) STConversation];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_1A834D434()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.messages.IMDowntimeStateChangedNotification" object:0 userInfo:0];
}

void sub_1A834D640(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A834D720;
  v11[3] = &unk_1E78101E0;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void sub_1A834D720(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 32);
        v3 = *(a1 + 40);
        v9 = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v4;
        _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "error retrieving application policy for bundle identifier:%@ - %@", &v9, 0x16u);
      }
    }
  }

  else
  {
    v5 = [*(a1 + 48) bundleIDPolicyMap];
    [v5 addEntriesFromDictionary:*(a1 + 56)];

    v6 = [*(a1 + 56) allKeys];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Successfully fetched App Downtime Polcies for app bundles with  identifiers: %@", &v9, 0xCu);
      }
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"com.apple.messages.IMDowntimeStateChangedForBundleID" object:0 userInfo:0];
  }
}

id IMChatRegistryLogHandle(uint64_t a1)
{
  if (qword_1EB2EA3A0 != -1)
  {
    sub_1A84E1B80();
  }

  v2 = qword_1EB2EA398;

  return v2;
}

uint64_t sub_1A834DC34()
{
  v0 = os_log_create("com.apple.Messages", "IMChatRegistry");
  qword_1EB2EA398 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A834DCBC()
{
  v0 = os_log_create("com.apple.Messages", "chatregistry.performance");
  qword_1EB2E90D8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A834E3BC(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A7FD0] sharedInstance];
  *(*(a1 + 32) + 80) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A834EB20(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A834E9D8);
  }

  _Unwind_Resume(a1);
}

void sub_1A834F85C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, __int128 buf, int a60, __int16 a61, __int16 a62, uint64_t a63)
{
  if (a2 == 1)
  {
    v68 = objc_begin_catch(a1);
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v65 = [v68 name];
        v66 = [v68 reason];
        v67 = [v68 userInfo];
        LODWORD(buf) = 138413314;
        *(&buf + 4) = v68;
        WORD6(buf) = 2112;
        *(&buf + 14) = v65;
        a62 = 2112;
        a63 = v66;
        LOWORD(a64) = 2112;
        *(&a64 + 2) = v67;
        WORD5(a64) = 2080;
        *(&a64 + 12) = "[IMChatRegistry _registerChatDictionary:forChat:isIncoming:newGUID:shouldPostNotification:]";
        _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A834F764);
  }

  _Unwind_Resume(a1);
}

void sub_1A834FEE8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exc_buf);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 name];
        v7 = [v4 reason];
        v8 = [v4 userInfo];
        *(v3 - 176) = 138413314;
        *(v2 + 4) = v4;
        *(v3 - 164) = 2112;
        *(v2 + 14) = v6;
        *(v3 - 154) = 2112;
        *(v3 - 152) = v7;
        *(v3 - 144) = 2112;
        *(v2 + 34) = v8;
        *(v3 - 134) = 2080;
        *(v2 + 44) = "[IMChatRegistry _unregisterChat:deleted:didClearUnreadCount:]";
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", (v3 - 176), 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A834FC50);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A8350008(void *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A834FFECLL);
  }

  objc_end_catch();
  JUMPOUT(0x1A8350034);
}

BOOL sub_1A83503E8(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) existingChatWithChatIdentifier:a2];
  v3 = v2 != 0;

  return v3;
}

void sub_1A835073C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = v4;
    if (v4)
    {
      v6 = *(*(a1 + 32) + 208);
      v7 = [v4 guid];
      CFDictionarySetValue(v6, v7, v5);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1D60();
    }
  }
}

void sub_1A83545B8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "EXTENSION INTERRUPTION BLOCK CALLED extensionIdentifier: %@, requestIdentifier: %@", buf, 0x16u);
    }
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *(a1 + 32);
  v9 = *MEMORY[0x1E69A6F20];
  v10 = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v6 __mainThreadPostNotificationName:*MEMORY[0x1E69A6F28] object:0 userInfo:v8];
}

void sub_1A8354858()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = IMBalloonExtensionIDWithSuffix();
  v3 = v0;
  v4[0] = &unk_1F1BA1800;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v2 = qword_1EB2EA3A8;
  qword_1EB2EA3A8 = v1;
}

void sub_1A8354BB8()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69A6980];
  v3[0] = *MEMORY[0x1E69A6A00];
  v3[1] = v0;
  v4[0] = &unk_1F1BA18D8;
  v4[1] = &unk_1F1BA18E8;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_1EB2EA3B8;
  qword_1EB2EA3B8 = v1;
}

void sub_1A8354CA0()
{
  v0 = IMSharedHelperStickerAppsTemporarilyDisplayedInSendMenu();
  v1 = qword_1EB2EA3C8;
  qword_1EB2EA3C8 = v0;

  if (!qword_1EB2EA3C8)
  {
    qword_1EB2EA3C8 = &unk_1F1BA1758;
  }
}

void sub_1A8354D48()
{
  v0 = qword_1EB2EA3D8;
  qword_1EB2EA3D8 = &unk_1F1BA1770;
}

void sub_1A83555F0(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v2 startTimingForKey:@"loadAppBundle"];
  v3 = *(a1 + 32);
  v4 = [v3 appBundle];
  [v3 setPluginLoaded:{objc_msgSend(v4, "load")}];

  [v2 stopTimingForKey:@"loadAppBundle"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) appBundle];
      v7 = [v6 bundleIdentifier];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Loaded %@, %@", &v8, 0x16u);
    }
  }
}

void sub_1A8355CD0(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v2 startTimingForKey:@"loadPlugin"];
  v3 = *(a1 + 32);
  v4 = [v3 pluginBundle];
  [v3 setPluginLoaded:{objc_msgSend(v4, "load")}];

  v5 = [*(a1 + 32) pluginBundle];
  v6 = [v5 principalClass];

  [*(a1 + 32) setBubbleClass:v6];
  v7 = [*(a1 + 32) pluginBundle];
  v8 = [v7 infoDictionary];

  v9 = [v8 objectForKey:@"CKBrowserClass"];
  if ([(NSString *)v9 length])
  {
    [*(a1 + 32) setBrowserClass:NSClassFromString(v9)];
  }

  v10 = [v8 objectForKey:@"CKDatasourceClass"];
  if ([(NSString *)v10 length])
  {
    [*(a1 + 32) setDataSourceClass:NSClassFromString(v10)];
  }

  v11 = [v8 objectForKey:@"IMCustomTypingIndicatorClass"];
  if ([(NSString *)v11 length])
  {
    [*(a1 + 32) setCustomTypingIndicatorLayerClass:NSClassFromString(v11)];
  }

  v12 = [v8 objectForKey:@"CKEntryClass"];
  if ([(NSString *)v12 length])
  {
    [*(a1 + 32) setEntryClass:NSClassFromString(v12)];
  }

  [v2 stopTimingForKey:@"loadPlugin"];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 32) pluginBundle];
      v15 = [v14 bundleIdentifier];
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v2;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Loaded %@, %@", &v16, 0x16u);
    }
  }
}

uint64_t sub_1A8356578()
{
  result = MEMORY[0x1AC56C550](@"LSPlugInKitProxy", @"CoreServices");
  qword_1ED767690 = result;
  return result;
}

void sub_1A8356954(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A578];
  v8[0] = @"Observer was not invalidated before dealloc for a handle";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"IMHandleStatusObserverErrorDomain" code:0 userInfo:v3];

  v5 = [MEMORY[0x1E69A8168] sharedInstance];
  [v5 forceAutoBugCaptureWithSubType:@"IMHandleStatusObserver oversubscribed" errorPayload:v4];

  v6 = +[IMHandleStatusManager sharedInstance];
  [v6 invalidateObserver:*(a1 + 32)];
}

uint64_t sub_1A8356B68()
{
  v0 = objc_alloc_init(IMHandleStatusManager);
  qword_1ED767868 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A835775C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 subscriptionIdentifier];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Retaining transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A83578D4;
  v8[3] = &unk_1E7813450;
  v9 = v4;
  v10 = *(a1 + 32);
  v7 = v4;
  [v3 retainTransientSubscriptionAssertionWithCompletion:v8];
}

void sub_1A83578D4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1E70();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully retained transient subscription assertion for subscription: %@ and handle: %@", &v8, 0x16u);
    }
  }
}
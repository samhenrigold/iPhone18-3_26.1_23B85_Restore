@interface SPUISMessageResultBuilder
- (SPUISMessageResultBuilder)initWithResult:(id)result;
- (id)buildAttachmentSummary;
- (id)buildAttachmentThumbnail;
- (id)buildCompactCardSection;
- (id)buildDescriptions;
- (id)buildInlineCardSection;
- (id)buildThumbnail;
- (id)buildTitle;
@end

@implementation SPUISMessageResultBuilder

- (SPUISMessageResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v38.receiver = self;
  v38.super_class = SPUISMessageResultBuilder;
  v5 = [(SPUISResultBuilder *)&v38 initWithResult:resultCopy];
  v6 = v5;
  if (v5)
  {
    v36 = v5;
    v7 = [resultCopy valueForAttribute:*MEMORY[0x277CC2490] withType:objc_opt_class()];
    v37 = [resultCopy valueForAttribute:*MEMORY[0x277CC2498] withType:objc_opt_class()];
    v8 = [resultCopy valueForAttribute:*MEMORY[0x277CC24A0] withType:objc_opt_class()];
    v33 = [resultCopy valueForAttribute:*MEMORY[0x277CC24E0] withType:objc_opt_class()];
    v34 = [resultCopy valueForAttribute:*MEMORY[0x277CC24C8] withType:objc_opt_class()];
    v32 = [resultCopy valueForAttribute:*MEMORY[0x277CC3028] withType:objc_opt_class()];
    v35 = [resultCopy valueForAttribute:*MEMORY[0x277CC24C0] withType:objc_opt_class()];
    v6 = v36;
    v9 = [resultCopy valueForAttribute:*MEMORY[0x277CC3018] withType:objc_opt_class()];
    firstObject = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    [(SPUISMessageResultBuilder *)v36 setAttachmentNames:v11];

    firstObject2 = [v37 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v37;
    }

    else
    {
      v13 = 0;
    }

    [(SPUISMessageResultBuilder *)v36 setAttachmentPaths:v13];

    firstObject3 = [v8 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    [(SPUISMessageResultBuilder *)v36 setAttachmentTypes:v15];

    v16 = [resultCopy valueForAttribute:*MEMORY[0x277CC2760] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setGroupDisplayName:v16];

    v17 = [resultCopy valueForAttribute:*MEMORY[0x277CC2B78] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setGroupPhotoPath:v17];

    v18 = [resultCopy valueForAttribute:*MEMORY[0x277CC3118] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setMessage:v18];

    v19 = +[SPUISUtilities isMacOS];
    v20 = MEMORY[0x277CC2A80];
    if (!v19)
    {
      v20 = MEMORY[0x277CC3208];
    }

    v21 = [resultCopy valueForAttribute:*v20 withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setMessageId:v21];

    firstObject4 = [v33 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v33;
    }

    else
    {
      v23 = v34;
    }

    [(SPUISMessageResultBuilder *)v36 setSenders:v23];

    firstObject5 = [v32 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v32;
    }

    else
    {
      v25 = 0;
    }

    [(SPUISMessageResultBuilder *)v36 setRecipients:v25];

    v26 = [resultCopy valueForAttribute:*MEMORY[0x277CC2640] withType:objc_opt_class()];
    [(SPUISMessageResultBuilder *)v36 setSendDate:v26];

    firstObject6 = [v35 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v35;
    }

    else
    {
      v28 = 0;
    }

    [(SPUISMessageResultBuilder *)v36 setSenderContactIds:v28];

    firstObject7 = [v9 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v9;
    }

    else
    {
      v30 = 0;
    }

    [(SPUISMessageResultBuilder *)v36 setRecipientContactIds:v30];
  }

  return v6;
}

- (id)buildInlineCardSection
{
  v10.receiver = self;
  v10.super_class = SPUISMessageResultBuilder;
  buildInlineCardSection = [(SPUISResultBuilder *)&v10 buildInlineCardSection];
  v4 = MEMORY[0x277D4C3A0];
  sendDate = [(SPUISMessageResultBuilder *)self sendDate];
  v6 = [SPUISDateFormatManager dynamicCompactStringFromDate:sendDate];
  v7 = [v4 textWithString:v6];
  [buildInlineCardSection setSecondaryTitle:v7];

  [buildInlineCardSection setIsSecondaryTitleDetached:1];
  buildAttachmentThumbnail = [(SPUISMessageResultBuilder *)self buildAttachmentThumbnail];
  [buildInlineCardSection setTrailingThumbnail:buildAttachmentThumbnail];

  return buildInlineCardSection;
}

- (id)buildDescriptions
{
  v32[1] = *MEMORY[0x277D85DE8];
  coreSpotlightId = [(SPUISResultBuilder *)self coreSpotlightId];
  v4 = isMessagesAttachmentCoreSpotlightId();

  if (v4)
  {
    attachmentPaths = [(SPUISMessageResultBuilder *)self attachmentPaths];
    firstObject = [attachmentPaths firstObject];
    lastPathComponent = [firstObject lastPathComponent];

    v8 = lastPathComponent;
    if (v8)
    {
      message = v8;
      v10 = 0;
      goto LABEL_12;
    }
  }

  message = [(SPUISMessageResultBuilder *)self message];
  if (!message)
  {
    goto LABEL_11;
  }

  message2 = [(SPUISMessageResultBuilder *)self message];
  matchedStrings = [(SPUISResultBuilder *)self matchedStrings];
  firstObject2 = [matchedStrings firstObject];
  v14 = [message2 isEqual:firstObject2];

  if (!v14)
  {
LABEL_10:
    message = 0;
LABEL_11:
    v10 = 1;
LABEL_12:
    result = [(SPUISResultBuilder *)self result];
    formattedSnippet = [result formattedSnippet];
    if (formattedSnippet)
    {
      v21 = formattedSnippet;
      result2 = [(SPUISResultBuilder *)self result];
      formattedSnippet2 = [result2 formattedSnippet];
      formattedTextPieces = [formattedSnippet2 formattedTextPieces];
      v25 = objc_msgSend_count(formattedTextPieces);

      if (v25)
      {
        result3 = [(SPUISResultBuilder *)self result];
        formattedSnippet3 = [result3 formattedSnippet];
        v31 = formattedSnippet3;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];

        message3 = message;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
    }

    message3 = message;
    if (v10)
    {
      message3 = [(SPUISMessageResultBuilder *)self message];
    }

    if (!message3)
    {
      message3 = [(SPUISMessageResultBuilder *)self buildAttachmentSummary];
      if (!message3)
      {
        v17 = 0;
        goto LABEL_22;
      }
    }

    result3 = [MEMORY[0x277D4C598] textWithString:message3];
    v30 = result3;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
    goto LABEL_21;
  }

  v15 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:1];
  formattedTextPieces2 = [v15 formattedTextPieces];

  if (!formattedTextPieces2)
  {

    goto LABEL_10;
  }

  v32[0] = v15;
  v10 = 1;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];

  message = 0;
  if (!v17)
  {
    goto LABEL_12;
  }

  message3 = 0;
LABEL_22:
  v28 = v17;

  return v17;
}

- (id)buildAttachmentSummary
{
  v69 = *MEMORY[0x277D85DE8];
  v58 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  attachmentTypes = [(SPUISMessageResultBuilder *)self attachmentTypes];
  v4 = [attachmentTypes countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v64;
    v7 = *MEMORY[0x277CE1DB0];
    v57 = *MEMORY[0x277CE1E00];
    v55 = *MEMORY[0x277CE1F20];
    v56 = *MEMORY[0x277CE1F18];
    v53 = *MEMORY[0x277CE1F08];
    v54 = *MEMORY[0x277CE1F28];
    v50 = *MEMORY[0x277CE1D00];
    v44 = *MEMORY[0x277CE1D38];
    v41 = *MEMORY[0x277D1AD58];
    v42 = *MEMORY[0x277CE1D20];
    v40 = *MEMORY[0x277D1AD48];
    v43 = *MEMORY[0x277D1AD50];
    v48 = *MEMORY[0x277D1ADA8];
    v49 = *MEMORY[0x277D1AD40];
    v8 = *MEMORY[0x277D1ADA0];
    v9 = *MEMORY[0x277D1AD98];
    v10 = *MEMORY[0x277D1AD90];
    do
    {
      v11 = 0;
      do
      {
        if (*v64 != v6)
        {
          objc_enumerationMutation(attachmentTypes);
        }

        v12 = [MEMORY[0x277CE1CB8] typeWithIdentifier:*(*(&v63 + 1) + 8 * v11)];
        v13 = [v12 conformsToType:v7];
        v14 = v10;
        if ((v13 & 1) == 0)
        {
          v15 = [v12 conformsToType:v57];
          v14 = v9;
          if ((v15 & 1) == 0)
          {
            v16 = [v12 conformsToType:v56];
            v14 = v8;
            if ((v16 & 1) == 0)
            {
              v17 = [v12 conformsToType:v55];
              v14 = v8;
              if ((v17 & 1) == 0)
              {
                v18 = [v12 conformsToType:v54];
                v14 = v8;
                if ((v18 & 1) == 0)
                {
                  if ([v12 conformsToType:v53])
                  {
                    attachmentTypes2 = [(SPUISMessageResultBuilder *)selfCopy attachmentTypes];
                    if (objc_msgSend_count(attachmentTypes2) == 1)
                    {
                      senders = [(SPUISMessageResultBuilder *)selfCopy senders];
                      firstObject = [senders firstObject];
                      v46 = [firstObject length];

                      v14 = v48;
                      if (v46)
                      {
                        v34 = MEMORY[0x277CCACA8];
                        v35 = [SPUISUtilities localizedStringForKey:@"SHARED_WATCHFACE_NOTIFICATION"];
                        senders2 = [(SPUISMessageResultBuilder *)selfCopy senders];
                        firstObject2 = [senders2 firstObject];
                        v38 = [v34 localizedStringWithFormat:v35, firstObject2];

                        goto LABEL_36;
                      }
                    }

                    else
                    {

                      v14 = v48;
                    }
                  }

                  else
                  {
                    v19 = [v12 conformsToType:v50];
                    v14 = v49;
                    if ((v19 & 1) == 0)
                    {
                      v20 = [v12 conformsToType:v44];
                      v14 = v43;
                      if ((v20 & 1) == 0)
                      {
                        if ([v12 conformsToType:v42])
                        {
                          v14 = v40;
                        }

                        else
                        {
                          v14 = v41;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        [v58 addObject:v14];

        ++v11;
      }

      while (v5 != v11);
      v21 = [attachmentTypes countByEnumeratingWithState:&v63 objects:v68 count:16];
      v5 = v21;
    }

    while (v21);
  }

  v22 = v58;
  if (objc_msgSend_count(v58))
  {
    v38 = objc_opt_new();
    v23 = MEMORY[0x277CCACA8];
    v24 = [SPUISUtilities localizedStringForKey:@"%lu Attachments: "];
    v25 = [v23 localizedStringWithFormat:v24, objc_msgSend_count(v58)];
    [v38 appendString:v25];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    attachmentTypes = v58;
    v26 = [attachmentTypes countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v60;
      v29 = 1;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v60 != v28)
          {
            objc_enumerationMutation(attachmentTypes);
          }

          v31 = *(*(&v59 + 1) + 8 * i);
          v32 = [attachmentTypes countForObject:v31];
          if ((v29 & 1) == 0)
          {
            [v38 appendString:{@", "}];
          }

          v33 = [SPUISUtilities localizedStringForKey:v31];
          [v38 appendFormat:v33, v32];

          v29 = 0;
        }

        v27 = [attachmentTypes countByEnumeratingWithState:&v59 objects:v67 count:16];
        v29 = 0;
      }

      while (v27);
LABEL_36:
      v22 = v58;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)buildThumbnail
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  senderContactIds = [(SPUISMessageResultBuilder *)self senderContactIds];
  v5 = [v3 initWithArray:senderContactIds];

  recipientContactIds = [(SPUISMessageResultBuilder *)self recipientContactIds];
  v7 = objc_msgSend_count(recipientContactIds);

  if (v7 >= 2)
  {
    recipientContactIds2 = [(SPUISMessageResultBuilder *)self recipientContactIds];
    [v5 addObjectsFromArray:recipientContactIds2];
  }

  groupPhotoPath = [(SPUISMessageResultBuilder *)self groupPhotoPath];

  if (groupPhotoPath)
  {
    v10 = objc_opt_new();
    [v10 setCornerRoundingStyle:4];
    v11 = MEMORY[0x277CBEBC0];
    groupPhotoPath2 = [(SPUISMessageResultBuilder *)self groupPhotoPath];
    v13 = [v11 fileURLWithPath:groupPhotoPath2 isDirectory:0];
    [v10 setUrlValue:v13];
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setContactIdentifiers:v5];
    [v10 setThreeDTouchEnabled:1];
  }

  return v10;
}

- (id)buildAttachmentThumbnail
{
  attachmentTypes = [(SPUISMessageResultBuilder *)self attachmentTypes];
  if (objc_msgSend_count(attachmentTypes))
  {
    v4 = 0;
    v5 = *MEMORY[0x277CE1D08];
    v6 = *MEMORY[0x277CE1DB0];
    while (1)
    {
      attachmentNames = [(SPUISMessageResultBuilder *)self attachmentNames];
      v8 = objc_msgSend_count(attachmentNames);

      if (v4 >= v8)
      {
        break;
      }

      attachmentTypes2 = [(SPUISMessageResultBuilder *)self attachmentTypes];
      attachmentTypes = [attachmentTypes2 objectAtIndexedSubscript:v4];

      v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:attachmentTypes];
      if (([v10 conformsToType:v5] & 1) != 0 || objc_msgSend(v10, "conformsToType:", v6))
      {
        attachmentNames2 = [(SPUISMessageResultBuilder *)self attachmentNames];
        v11 = [attachmentNames2 objectAtIndexedSubscript:v4];

        goto LABEL_9;
      }

      ++v4;
      attachmentTypes = [(SPUISMessageResultBuilder *)self attachmentTypes];
      if (v4 >= objc_msgSend_count(attachmentTypes))
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
  }

  else
  {
LABEL_7:
    v11 = 0;
LABEL_9:
  }

  if ([v11 length])
  {
    v13 = objc_opt_new();
    [v13 setPhotoIdentifier:v11];
    [v13 setIsSyndicated:1];
    [v13 setSize:{32.0, 32.0}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)buildCompactCardSection
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4C598];
  sendDate = [(SPUISMessageResultBuilder *)self sendDate];
  v5 = [SPUISDateFormatManager dynamicCompactStringFromDate:sendDate];
  v6 = [v3 textWithString:v5];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v12.receiver = self;
  v12.super_class = SPUISMessageResultBuilder;
  buildCompactCardSection = [(SPUISResultBuilder *)&v12 buildCompactCardSection];
  descriptions = [buildCompactCardSection descriptions];
  v10 = [v7 arrayByAddingObjectsFromArray:descriptions];
  [buildCompactCardSection setDescriptions:v10];

  return buildCompactCardSection;
}

- (id)buildTitle
{
  groupDisplayName = [(SPUISMessageResultBuilder *)self groupDisplayName];
  if (groupDisplayName)
  {
    firstObject = groupDisplayName;
  }

  else
  {
    senders = [(SPUISMessageResultBuilder *)self senders];
    if (!senders || (v6 = senders, -[SPUISMessageResultBuilder senders](self, "senders"), v7 = objc_claimAutoreleasedReturnValue(), [v7 firstObject], firstObject = objc_claimAutoreleasedReturnValue(), v7, v6, !firstObject))
    {
      recipients = [(SPUISMessageResultBuilder *)self recipients];
      if (recipients)
      {
        recipients2 = [(SPUISMessageResultBuilder *)self recipients];
        firstObject = [recipients2 firstObject];
      }

      else
      {
        firstObject = 0;
      }
    }
  }

  if (MEMORY[0x26D683D30](firstObject))
  {
    v10 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:firstObject];
    formattedStringValue = [v10 formattedStringValue];

    firstObject = formattedStringValue;
  }

  v12 = [MEMORY[0x277D4C598] textWithString:firstObject];

  return v12;
}

@end
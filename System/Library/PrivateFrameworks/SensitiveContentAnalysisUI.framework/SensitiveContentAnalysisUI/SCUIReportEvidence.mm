@interface SCUIReportEvidence
- (SCUIReportEvidence)initWithVictim:(id)victim suspects:(id)suspects application:(int64_t)application;
- (SCUIReportEvidence)initWithVictimHandle:(id)handle media:(id)media selectedMediaObject:(id)object chat:(id)chat;
@end

@implementation SCUIReportEvidence

- (SCUIReportEvidence)initWithVictimHandle:(id)handle media:(id)media selectedMediaObject:(id)object chat:(id)chat
{
  v226 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  mediaCopy = media;
  objectCopy = object;
  chatCopy = chat;
  v190 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v188 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  obj = mediaCopy;
  v10 = [obj countByEnumeratingWithState:&v207 objects:v221 count:16];
  if (v10)
  {
    v183 = *v208;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v208 != v183)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v207 + 1) + 8 * i);
        fileURL = [v12 fileURL];
        v14 = fileURL == 0;

        if (v14)
        {
          clientUI = [MEMORY[0x1E697B660] clientUI];
          if (os_log_type_enabled(clientUI, OS_LOG_TYPE_DEFAULT))
          {
            transferGUID = [v12 transferGUID];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = transferGUID;
            _os_log_impl(&dword_1BC630000, clientUI, OS_LOG_TYPE_DEFAULT, "Media object %@ has no fileURL, skipping...", &buf, 0xCu);
          }
        }

        else
        {
          senderHandle = [v12 senderHandle];
          v16 = [senderHandle ID];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = [handleCopy ID];
          }

          clientUI = v18;

          v21 = [v190 objectForKeyedSubscript:clientUI];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v190 setObject:v23 forKeyedSubscript:clientUI];
          }

          v24 = [v188 objectForKeyedSubscript:clientUI];
          v25 = v24 == 0;

          if (v25)
          {
            senderHandle2 = [v12 senderHandle];
            v27 = senderHandle2;
            if (senderHandle2)
            {
              v28 = senderHandle2;
            }

            else
            {
              v28 = handleCopy;
            }

            [v188 setObject:v28 forKeyedSubscript:clientUI];
          }

          date = [MEMORY[0x1E695DF00] date];
          [(SCUIReportEvidence *)self setIncidentReportDate:date];

          transferGUID2 = [objectCopy transferGUID];
          transferGUID3 = [v12 transferGUID];
          v32 = [transferGUID2 isEqual:transferGUID3];

          commSafetySensitive = [v12 commSafetySensitive];
          v34 = MEMORY[0x1E695E118];
          if (commSafetySensitive != 1)
          {
            commSafetySensitive2 = [v12 commSafetySensitive];
            v34 = MEMORY[0x1E695E118];
            if (commSafetySensitive2 != 2)
            {
              v34 = MEMORY[0x1E695E110];
            }
          }

          v36 = v34;
          v37 = [SCUIReportSensitiveMedia alloc];
          fileURL2 = [v12 fileURL];
          uTIType = [v12 UTIType];
          transferGUID4 = [v12 transferGUID];
          time = [v12 time];
          v42 = [(SCUIReportSensitiveMedia *)v37 initWithURL:fileURL2 UTIType:uTIType identifier:transferGUID4 dateReceived:time isSensitive:v36 wasImpetusOfReport:v32];

          v43 = [v190 objectForKeyedSubscript:clientUI];
          [v43 addObject:v42];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v207 objects:v221 count:16];
    }

    while (v10);
  }

  v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  allKeys = [v190 allKeys];
  v44 = [allKeys countByEnumeratingWithState:&v203 objects:v220 count:16];
  if (v44)
  {
    v45 = *v204;
    v179 = *MEMORY[0x1E695C360];
    v175 = *MEMORY[0x1E695C330];
    v170 = *MEMORY[0x1E695C240];
    v167 = *MEMORY[0x1E695C230];
    v164 = *MEMORY[0x1E695C208];
    v161 = *MEMORY[0x1E695C2F0];
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v204 != v45)
        {
          objc_enumerationMutation(allKeys);
        }

        v47 = *(*(&v203 + 1) + 8 * j);
        v48 = [handleCopy ID];
        v49 = [v47 isEqual:v48];

        if ((v49 & 1) == 0)
        {
          v50 = [v188 objectForKeyedSubscript:v47];
          if (v50)
          {
            v219[0] = v179;
            v219[1] = v175;
            v219[2] = v170;
            v219[3] = v167;
            v219[4] = v164;
            v219[5] = v161;
            v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v219 count:6];
            v52 = [v50 cnContactWithKeys:v51];

            v53 = [v50 displayNameForChat:chatCopy];
            v54 = [SCUIReportSuspect alloc];
            v55 = [v50 ID];
            v56 = [v190 objectForKeyedSubscript:v47];
            v57 = [(SCUIReportSuspect *)v54 initWithDisplayName:v53 accountID:v55 sensitiveMediaFiles:v56];

            emailAddresses = [v52 emailAddresses];
            firstObject = [emailAddresses firstObject];
            value = [firstObject value];
            [(SCUIReportSuspect *)v57 setEmailAddress:value];

            v61 = [MEMORY[0x1E695CD80] stringFromContact:v52 style:0];
            [(SCUIReportSuspect *)v57 setFullName:v61];

            phoneNumbers = [v52 phoneNumbers];
            firstObject2 = [phoneNumbers firstObject];
            value2 = [firstObject2 value];

            if (value2)
            {
              formattedInternationalStringValue = [value2 formattedInternationalStringValue];
              [(SCUIReportSuspect *)v57 setPhoneNumber:formattedInternationalStringValue];
            }

            [v173 addObject:v57];
          }
        }
      }

      v44 = [allKeys countByEnumeratingWithState:&v203 objects:v220 count:16];
    }

    while (v44);
  }

  v158 = objc_opt_new();
  v157 = objc_opt_new();
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  chatItems = [chatCopy chatItems];
  reverseObjectEnumerator = [chatItems reverseObjectEnumerator];

  v165 = [reverseObjectEnumerator countByEnumeratingWithState:&v199 objects:v218 count:16];
  if (v165)
  {
    v160 = *v200;
    do
    {
      for (k = 0; k != v165; ++k)
      {
        if (*v200 != v160)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v67 = *(*(&v199 + 1) + 8 * k);
        v211 = 0;
        v212 = &v211;
        v213 = 0x2050000000;
        v68 = getIMMessagePartChatItemClass_softClass;
        v214 = getIMMessagePartChatItemClass_softClass;
        if (!getIMMessagePartChatItemClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v223 = __getIMMessagePartChatItemClass_block_invoke;
          v224 = &unk_1E7FF2370;
          v225 = &v211;
          __getIMMessagePartChatItemClass_block_invoke(&buf);
          v68 = v212[3];
        }

        v69 = v68;
        _Block_object_dispose(&v211, 8);
        if (objc_opt_isKindOfClass())
        {
          v162 = v67;
          message = [v162 message];
          guid = [message guid];
          if (guid)
          {
            guid2 = [message guid];
            v72 = [v158 containsObject:guid2];

            if ((v72 & 1) == 0)
            {
              guid3 = [message guid];
              [v158 addObject:guid3];

              v74 = MEMORY[0x1E695DF70];
              fileTransferGUIDs = [message fileTransferGUIDs];
              v76 = fileTransferGUIDs;
              if (fileTransferGUIDs)
              {
                v77 = fileTransferGUIDs;
              }

              else
              {
                v77 = MEMORY[0x1E695E0F0];
              }

              v78 = [v74 arrayWithArray:v77];

              v197 = 0u;
              v198 = 0u;
              v195 = 0u;
              v196 = 0u;
              visibleAssociatedMessageChatItems = [v162 visibleAssociatedMessageChatItems];
              v79 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v195 objects:v217 count:16];
              if (v79)
              {
                v185 = *v196;
                do
                {
                  for (m = 0; m != v79; ++m)
                  {
                    if (*v196 != v185)
                    {
                      objc_enumerationMutation(visibleAssociatedMessageChatItems);
                    }

                    v81 = *(*(&v195 + 1) + 8 * m);
                    v211 = 0;
                    v212 = &v211;
                    v213 = 0x2050000000;
                    v82 = getIMAssociatedStickerChatItemClass_softClass;
                    v214 = getIMAssociatedStickerChatItemClass_softClass;
                    if (!getIMAssociatedStickerChatItemClass_softClass)
                    {
                      *&buf = MEMORY[0x1E69E9820];
                      *(&buf + 1) = 3221225472;
                      v223 = __getIMAssociatedStickerChatItemClass_block_invoke;
                      v224 = &unk_1E7FF2370;
                      v225 = &v211;
                      __getIMAssociatedStickerChatItemClass_block_invoke(&buf);
                      v82 = v212[3];
                    }

                    v83 = v82;
                    _Block_object_dispose(&v211, 8);
                    if (objc_opt_isKindOfClass())
                    {
                      v84 = v81;
                      transferGUID5 = [v84 transferGUID];
                      v86 = transferGUID5 == 0;

                      if (!v86)
                      {
                        transferGUID6 = [v84 transferGUID];
                        [v78 addObject:transferGUID6];
                      }
                    }

                    v211 = 0;
                    v212 = &v211;
                    v213 = 0x2050000000;
                    v88 = getIMAggregateAcknowledgmentChatItemClass_softClass;
                    v214 = getIMAggregateAcknowledgmentChatItemClass_softClass;
                    if (!getIMAggregateAcknowledgmentChatItemClass_softClass)
                    {
                      *&buf = MEMORY[0x1E69E9820];
                      *(&buf + 1) = 3221225472;
                      v223 = __getIMAggregateAcknowledgmentChatItemClass_block_invoke;
                      v224 = &unk_1E7FF2370;
                      v225 = &v211;
                      __getIMAggregateAcknowledgmentChatItemClass_block_invoke(&buf);
                      v88 = v212[3];
                    }

                    v89 = v88;
                    _Block_object_dispose(&v211, 8);
                    if (objc_opt_isKindOfClass())
                    {
                      v90 = v81;
                      v191 = 0u;
                      v192 = 0u;
                      v193 = 0u;
                      v194 = 0u;
                      acknowledgments = [v90 acknowledgments];
                      v92 = [acknowledgments countByEnumeratingWithState:&v191 objects:v216 count:16];
                      if (v92)
                      {
                        v93 = *v192;
                        do
                        {
                          for (n = 0; n != v92; ++n)
                          {
                            if (*v192 != v93)
                            {
                              objc_enumerationMutation(acknowledgments);
                            }

                            v95 = *(*(&v191 + 1) + 8 * n);
                            fileTransferGUIDs2 = [v95 fileTransferGUIDs];
                            v97 = fileTransferGUIDs2 == 0;

                            if (!v97)
                            {
                              fileTransferGUIDs3 = [v95 fileTransferGUIDs];
                              [v78 addObjectsFromArray:fileTransferGUIDs3];
                            }
                          }

                          v92 = [acknowledgments countByEnumeratingWithState:&v191 objects:v216 count:16];
                        }

                        while (v92);
                      }
                    }
                  }

                  v79 = [visibleAssociatedMessageChatItems countByEnumeratingWithState:&v195 objects:v217 count:16];
                }

                while (v79);
              }

              v186 = [SCUIReportMessage alloc];
              time2 = [message time];
              v100 = time2;
              if (!time2)
              {
                distantPast = [MEMORY[0x1E695DF00] distantPast];
                v100 = distantPast;
              }

              sender = [message sender];
              v102 = [sender ID];
              v103 = v102;
              if (v102)
              {
                v104 = v102;
              }

              else
              {
                v104 = @"?";
              }

              sender2 = [message sender];
              v106 = [sender2 displayNameForChat:chatCopy];
              v107 = v106;
              if (v106)
              {
                v108 = v106;
              }

              else
              {
                v108 = @"?";
              }

              v109 = [message descriptionForPurpose:2];
              v110 = v109;
              if (v109)
              {
                v111 = v109;
              }

              else
              {
                v111 = &stru_1F3B30210;
              }

              v112 = [(SCUIReportMessage *)v186 initWithDate:v100 senderAccountID:v104 senderDisplayName:v108 body:v111 attachmentIdentifiers:v78];

              if (!time2)
              {
              }

              [v157 addObject:v112];
            }
          }
        }
      }

      v165 = [reverseObjectEnumerator countByEnumeratingWithState:&v199 objects:v218 count:16];
    }

    while (v165);
  }

  v113 = +[SCUIAccountHelper bestiMessageServiceHandle];
  v172 = v113;
  v114 = handleCopy;
  if (v113)
  {
    v114 = v113;
  }

  v115 = *MEMORY[0x1E695C330];
  v215[0] = *MEMORY[0x1E695C360];
  v215[1] = v115;
  v116 = *MEMORY[0x1E695C230];
  v215[2] = *MEMORY[0x1E695C240];
  v215[3] = v116;
  v117 = *MEMORY[0x1E695C2F0];
  v215[4] = *MEMORY[0x1E695C208];
  v215[5] = v117;
  v215[6] = *MEMORY[0x1E695C1D0];
  v118 = MEMORY[0x1E695DEC8];
  v119 = v114;
  v120 = [v118 arrayWithObjects:v215 count:7];
  v180 = [v119 cnContactWithKeys:v120];

  v169 = [v119 displayNameForChat:chatCopy];
  v121 = [handleCopy ID];
  v122 = [v190 objectForKeyedSubscript:v121];
  v123 = v122;
  v124 = MEMORY[0x1E695E0F0];
  if (v122)
  {
    v124 = v122;
  }

  v125 = v124;

  v126 = [SCUIAccountHelper bestHandleID:v119];

  v127 = [SCUIReportVictim alloc];
  scui_prependingAccountIDPrefix = [v126 scui_prependingAccountIDPrefix];
  v187 = [(SCUIReportVictim *)v127 initWithDisplayName:v169 accountID:scui_prependingAccountIDPrefix mediaFiles:v125];

  v129 = [MEMORY[0x1E695CD80] stringFromContact:v180 style:0];
  [(SCUIReportVictim *)v187 setFullName:v129];

  emailAddresses2 = [v180 emailAddresses];
  firstObject3 = [emailAddresses2 firstObject];
  value3 = [firstObject3 value];
  [(SCUIReportVictim *)v187 setEmailAddress:value3];

  birthday = [v180 birthday];
  date2 = [birthday date];
  [(SCUIReportVictim *)v187 setDateOfBirth:date2];

  postalAddresses = [v180 postalAddresses];
  firstObject4 = [postalAddresses firstObject];

  v136 = [SCUIReportAddress alloc];
  value4 = [firstObject4 value];
  street = [value4 street];
  value5 = [firstObject4 value];
  city = [value5 city];
  value6 = [firstObject4 value];
  state = [value6 state];
  value7 = [firstObject4 value];
  country = [value7 country];
  value8 = [firstObject4 value];
  postalCode = [value8 postalCode];
  v145 = [(SCUIReportAddress *)v136 initWithAddress:street city:city state:state country:country postCode:postalCode];
  [(SCUIReportVictim *)v187 setAddress:v145];

  phoneNumbers2 = [v180 phoneNumbers];
  firstObject5 = [phoneNumbers2 firstObject];
  value9 = [firstObject5 value];

  if (value9)
  {
    formattedInternationalStringValue2 = [value9 formattedInternationalStringValue];
    [(SCUIReportVictim *)v187 setPhoneNumber:formattedInternationalStringValue2];
  }

  v150 = [(SCUIReportEvidence *)self initWithVictim:v187 suspects:v173 application:0];
  [(SCUIReportEvidence *)v150 setUnsortedChatTranscript:v157];
  if ([chatCopy isSMS])
  {
    [(SCUIReportEvidence *)v150 setFlags:[(SCUIReportEvidence *)v150 flags]| 1];
  }

  chatStyle = [chatCopy chatStyle];
  if (chatStyle == 43)
  {
    v154 = 2;
    goto LABEL_106;
  }

  if (chatStyle == 35)
  {
    roomName = [chatCopy roomName];
    v153 = [roomName copy];
    [(SCUIReportEvidence *)v150 setChatRoomName:v153];

    v154 = 4;
LABEL_106:
    [(SCUIReportEvidence *)v150 setFlags:[(SCUIReportEvidence *)v150 flags]| v154];
  }

  return v150;
}

- (SCUIReportEvidence)initWithVictim:(id)victim suspects:(id)suspects application:(int64_t)application
{
  victimCopy = victim;
  suspectsCopy = suspects;
  v21.receiver = self;
  v21.super_class = SCUIReportEvidence;
  v11 = [(SCUIReportEvidence *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_victim, victim);
    v13 = [suspectsCopy copy];
    suspects = v12->_suspects;
    v12->_suspects = v13;

    v12->_reportingApplication = application;
    date = [MEMORY[0x1E695DF00] date];
    reportCreationDate = v12->_reportCreationDate;
    v12->_reportCreationDate = date;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    localeIdentifier = v12->_localeIdentifier;
    v12->_localeIdentifier = localeIdentifier;
  }

  return v12;
}

@end
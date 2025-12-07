@interface SGDetectedAttributeDissector
- (id)detailTypeFromPrefix:(id)prefix detectedLabelPointer:(_NSRange *)pointer;
- (id)getLineContaining:(_NSRange)containing inText:(id)text;
- (void)_dissectMessage:(id)message entity:(id)entity;
@end

@implementation SGDetectedAttributeDissector

- (id)detailTypeFromPrefix:(id)prefix detectedLabelPointer:(_NSRange *)pointer
{
  prefixCopy = prefix;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__25000;
  v26 = __Block_byref_object_dispose__25001;
  v27 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3010000000;
  v20 = "";
  v21 = xmmword_232106CE0;
  v6 = +[SGDetectedAttributeDissector patterns];
  v7 = [v6 rawValueForKey:@"DetailTypes"];

  v8 = regex2ForKey(@"DetailType");
  v9 = objc_msgSend_count(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SGDetectedAttributeDissector_detailTypeFromPrefix_detectedLabelPointer___block_invoke;
  v13[3] = &unk_27894FDD0;
  v10 = v7;
  v14 = v10;
  v15 = &v22;
  v16 = &v17;
  [v8 enumerateMatchesInString:prefixCopy ngroups:v9 block:v13];

  if (pointer)
  {
    *pointer = v18[2];
  }

  v11 = v23[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

uint64_t __74__SGDetectedAttributeDissector_detailTypeFromPrefix_detectedLabelPointer___block_invoke(uint64_t a1, const char *a2)
{
  v5 = -1;
  v6 = 24;
  while (objc_msgSend_count(*(a1 + 32)) > ++v5)
  {
    v7 = *&a2[v6];
    v6 += 24;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *(*(*(a1 + 48) + 8) + 32) = *a2;
      return 0;
    }
  }

  return 0;
}

- (id)getLineContaining:(_NSRange)containing inText:(id)text
{
  length = containing.length;
  location = containing.location;
  textCopy = text;
  v7 = [textCopy rangeOfString:@"\n" options:6 range:{0, location}];
  v9 = v8;
  v10 = [textCopy rangeOfString:@"\n" options:2 range:{location + length, objc_msgSend(textCopy, "length") - (location + length)}];
  if (!v11)
  {
    v10 = [textCopy length];
  }

  v12 = v10;
  if (v9)
  {
    v13 = v7 + 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = [textCopy substringWithRange:{v13, v12 - v13}];
  objc_autoreleasePoolPop(v14);

  return v15;
}

- (void)_dissectMessage:(id)message entity:(id)entity
{
  v230 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  v197 = messageCopy;
  textContent = [messageCopy textContent];
  if (!textContent)
  {
    goto LABEL_200;
  }

  author = [messageCopy author];

  if (!author)
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v17 = "Skipping DetectedAttribute dissection: No author.";
      goto LABEL_76;
    }

LABEL_12:

    goto LABEL_200;
  }

  plainTextSigRange = [entityCopy plainTextSigRange];
  v195 = v9;
  v196 = plainTextSigRange;
  detectedDataSignatureRange = [messageCopy detectedDataSignatureRange];
  tags = [entityCopy tags];
  if (tags)
  {
    v11 = tags;
    isInhuman = [entityCopy isInhuman];

    if (isInhuman)
    {
      v13 = sgLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEBUG, "Skipping DetectedAttribute dissection: Inhuman sender.", &buf, 2u);
      }

      [SGDetectedAttributeMetrics recordExtractionOutcome:*MEMORY[0x277D02248] forDetectionsInMessage:v197 signatureRange:v196 isDDSignature:v195, detectedDataSignatureRange != 0x7FFFFFFFFFFFFFFFLL];
      goto LABEL_200;
    }
  }

  source = [v197 source];
  v15 = [source isEqual:@"warmUpSuggestions"];

  if (v15)
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v17 = "Skipping DetectedAttribute dissection: warm up message.";
LABEL_76:
      _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, v17, &buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v197;
    v19 = v18;
    if (v18)
    {
      conversationIdentifier = [v18 conversationIdentifier];
      v21 = [conversationIdentifier length];

      if (v21)
      {
        v22 = objc_autoreleasePoolPush();
        v23 = +[SGTextMessageConversationTracker instance];
        v24 = [SGTextMessageItem alloc];
        plainTextDetectedData = [v19 plainTextDetectedData];
        v26 = [(SGTextMessageItem *)v24 initWithTextMessage:v19 detectedData:plainTextDetectedData];
        v175 = [v23 addTextMessageItem:v26];

        objc_autoreleasePoolPop(v22);
        v174 = 0;
        v27 = 0;
      }

      else
      {
        v174 = 0;
        v27 = 0;
        v175 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = 0;
LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

  v27 = v197;
  v19 = 0;
LABEL_21:
  v175 = 0;
  v174 = 1;
LABEL_22:
  if (([MEMORY[0x277D02098] detectContacts] & 1) == 0)
  {
    log = sgLogHandle();
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_231E60000, log, OS_LOG_TYPE_DEBUG, "Skipping DetectedAttribute dissector: detectContacts is OFF", &buf, 2u);
    }

    goto LABEL_198;
  }

  author2 = [v197 author];
  v29 = [SGIdentityKey keyForPersonHandle:author2];

  log = v29;
  if (!v29)
  {

    goto LABEL_199;
  }

  plainTextDetectedData2 = [v197 plainTextDetectedData];
  if (v27)
  {
    quotedRegions = [v27 quotedRegions];
  }

  else
  {
    quotedRegions = objc_opt_new();
  }

  v182 = quotedRegions;

  [entityCopy releaseDissectorLock];
  v32 = sgLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = plainTextDetectedData2;
    _os_log_debug_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEBUG, "Detections: %@", &buf, 0xCu);
  }

  v163 = v27;
  v188 = entityCopy;

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v33 = plainTextDetectedData2;
  v34 = [v33 countByEnumeratingWithState:&v216 objects:v229 count:16];
  obj = v33;
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v198 = 0;
    v199 = 0;
    v37 = 0;
    v38 = *v217;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v217 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v216 + 1) + 8 * i);
        v231.location = [v40 range];
        v233.length = v195;
        v233.location = v196;
        length = NSIntersectionRange(v231, v233).length;
        matchType = [v40 matchType];
        v43 = matchType == 0;
        if (matchType)
        {
          v44 = v199;
        }

        else
        {
          v44 = v199 + 1;
        }

        v199 = v44;
        matchType2 = [v40 matchType];
        v46 = matchType2 == 1;
        if (matchType2 == 1)
        {
          ++v37;
        }

        if (length)
        {
          v47 = v43;
        }

        else
        {
          v47 = 0;
        }

        LODWORD(v198) = v198 + v47;
        if (!length)
        {
          v46 = 0;
        }

        HIDWORD(v198) += v46;
        if ([v40 matchType] == 2)
        {
          ++v36;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v216 objects:v229 count:16];
    }

    while (v35);

    if (v199 >= 6)
    {
      v48 = sgLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v199;
        WORD4(buf) = 1024;
        *(&buf + 10) = 5;
        _os_log_debug_impl(&dword_231E60000, v48, OS_LOG_TYPE_DEBUG, "Skipping DetectedAttribute dissection: too many phone numbers (%i, limit %i)", &buf, 0xEu);
      }

      entityCopy = v188;
      [v188 acquireDissectorLock];
      goto LABEL_197;
    }
  }

  else
  {

    v37 = 0;
    v198 = 0;
    v199 = 0;
    v36 = 0;
  }

  if ((v174 & 1) == 0)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = sgSignpostHandle();
    ptr = 7;
    v51 = os_signpost_id_make_with_pointer(v50, &ptr);

    if (!v199 && !v37 && !v36)
    {
      if ([MEMORY[0x277D02098] useMLModelForContactSharing])
      {
        [MEMORY[0x277D02098] contactSharingNegativeSamplingRate];
        if (vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL) < v52)
        {
          v53 = sgSignpostHandle();
          v54 = v53;
          if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_231E60000, v54, OS_SIGNPOST_INTERVAL_BEGIN, v51, "ContactSharingNegativeExample", "Start", &buf, 2u);
          }

          ml = self->_ml;
          likelyLanguage = [v175 likelyLanguage];
          [(SGDetectedAttributeML *)ml handleTextMessageContactSharingWithNegativeSample:v19 andLanguage:likelyLanguage];

          v57 = sgSignpostHandle();
          v58 = v57;
          if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
          {
            LOWORD(buf) = 0;
            _os_signpost_emit_with_name_impl(&dword_231E60000, v58, OS_SIGNPOST_INTERVAL_END, v51, "ContactSharingNegativeExample", "Completed", &buf, 2u);
          }
        }
      }
    }

    objc_autoreleasePoolPop(v49);
  }

  v59 = [MEMORY[0x277D02548] detectLanguageFromText:textContent];
  v172 = v59;
  if (v59)
  {
    v60 = &OBJC_IVAR___SGDetectedAttributeDissector__hmmTrustedLanguages;
    if (detectedDataSignatureRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      v60 = &OBJC_IVAR___SGDetectedAttributeDissector__ddTrustedLanguages;
    }

    v170 = [*(&self->super.super.isa + *v60) containsObject:v59];
  }

  else
  {
    v170 = 0;
  }

  v61 = v188;
  v168 = v19;
  v167 = objc_opt_new();
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = xmmword_232106CE0;
  reverseObjectEnumerator = [obj reverseObjectEnumerator];
  v187 = [reverseObjectEnumerator countByEnumeratingWithState:&v210 objects:v228 count:16];
  if (!v187)
  {
    v173 = 0;
    goto LABEL_172;
  }

  v173 = 0;
  v185 = *v211;
  v169 = *MEMORY[0x277D02228];
  v164 = *MEMORY[0x277D02250];
  v165 = *MEMORY[0x277D02220];
  v166 = *MEMORY[0x277D02238];
  v176 = *MEMORY[0x277D02240];
  v171 = v37;
  do
  {
    v62 = 0;
    do
    {
      if (*v211 != v185)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v63 = *(*(&v210 + 1) + 8 * v62);
      v64 = objc_autoreleasePoolPush();
      if ([v63 matchType] == 1 || !objc_msgSend(v63, "matchType") || objc_msgSend(v63, "matchType") == 2 || objc_msgSend(v63, "matchType") == 3)
      {
        if (![v63 matchType])
        {
          range = [v63 range];
          if (SGIsPhoneNumberWithRangeBlocked(textContent, range, v66))
          {
            v67 = sgLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf) = 0;
              _os_log_debug_impl(&dword_231E60000, v67, OS_LOG_TYPE_DEBUG, "Ignoring DataDetector match: Blocked phone number.", &buf, 2u);
            }

            goto LABEL_160;
          }
        }

        v193 = v64;
        v232.location = [v63 range];
        v234.length = v195;
        v234.location = v196;
        v68 = NSIntersectionRange(v232, v234).length;
        range2 = [v63 range];
        if ([v182 intersectsIndexesInRange:{range2, v70}])
        {
          v71 = objc_autoreleasePoolPush();
          v72 = sgLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_debug_impl(&dword_231E60000, v72, OS_LOG_TYPE_DEBUG, "Ignoring DataDetector match: Quoted region.", &buf, 2u);
          }

          LOBYTE(v160) = 0;
          [SGDetectedAttributeMetrics recordExtractionOutcome:v176 fromMessage:v197 foundInSignature:v68 != 0 isDDSignature:detectedDataSignatureRange != 0x7FFFFFFFFFFFFFFFLL match:v63 modelVersion:&unk_284749B48 isUnlikelyPhone:v160];
          objc_autoreleasePoolPop(v71);
LABEL_96:
          v64 = v193;
          goto LABEL_160;
        }

        if ([v63 matchType])
        {
          v73 = 0;
        }

        else
        {
          valueString = [v63 valueString];
          v73 = [valueString containsString:{@", "}];
        }

        if (self->_filterWithAddressBook && ![v63 matchType])
        {
          contactsHelper = self->_contactsHelper;
          valueString2 = [v63 valueString];
          v75 = ![(SGContactPipelineHelper *)contactsHelper numberMatchesContactsForm:valueString2];
        }

        else
        {
          v75 = 0;
        }

        v76 = v73 | v75;
        if (v76)
        {
          v77 = vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL);
          unlikelyPhoneSamplingRate = self->_unlikelyPhoneSamplingRate;
          v79 = sgLogHandle();
          v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG);
          if (v77 >= unlikelyPhoneSamplingRate)
          {
            if (v80)
            {
              LOWORD(buf) = 0;
              _os_log_debug_impl(&dword_231E60000, v79, OS_LOG_TYPE_DEBUG, "Ignoring DataDetector match: Low quality phone number match.", &buf, 2u);
            }

            goto LABEL_96;
          }

          if (v80)
          {
            LOWORD(buf) = 0;
            _os_log_debug_impl(&dword_231E60000, v79, OS_LOG_TYPE_DEBUG, "Processing low quality phone number match for ML supervision and metrics; detections to be discarded.", &buf, 2u);
          }
        }

        *&buf = 261887;
        HIDWORD(buf) = v198;
        v225 = v199;
        v226 = HIDWORD(v198);
        v227 = v37;
        BYTE4(buf) = [v63 matchType] == 0;
        BYTE5(buf) = [v63 matchType] == 1;
        range3 = [v63 range];
        v82 = range3 / [textContent length];
        *(&buf + 2) = v82;
        v83 = [[SGContactDetailSupervision alloc] initWithMessage:v197 ddMatch:v63 isUnlikelyPhone:v76 & 1];
        v84 = objc_autoreleasePoolPush();
        v180 = v76;
        if (v68)
        {
          v85 = v197;
          v86 = [SGDetectedAttributeDissector detectionFromSignatureDDMatch:"detectionFromSignatureDDMatch:message:detectedLabelRange:lastClaimedLabelRange:isUnlikelyPhone:" message:v63 detectedLabelRange:? lastClaimedLabelRange:? isUnlikelyPhone:?];
          if (v86)
          {
            v87 = v86;
            v88 = sgLogHandle();
            v189 = v87;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              extraction = [v87 extraction];
              *v222 = 138412290;
              v223 = extraction;
@end
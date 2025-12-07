@interface VoiceDialResultHandler
- (id)_nameSource;
- (id)_phoneticNames:(id)names fromDictionary:(id)dictionary;
- (id)actionForRecognitionResults:(id)results;
- (void)_addressBook;
@end

@implementation VoiceDialResultHandler

- (id)_nameSource
{
  nameSource = self->_nameSource;
  if (!nameSource)
  {
    v4 = VSPreferencesCopySpokenLanguageIdentifier();
    v5 = [VoiceDialNameDataSource nameDataSourceForLanguageIdentifier:v4];
    v6 = self->_nameSource;
    self->_nameSource = v5;

    nameSource = self->_nameSource;
  }

  return nameSource;
}

- (void)_addressBook
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_295FD5000, a2, OS_LOG_TYPE_ERROR, "Could not create address book: %@", &v3, 0xCu);
}

- (id)_phoneticNames:(id)names fromDictionary:(id)dictionary
{
  v21 = *MEMORY[0x29EDCA608];
  namesCopy = names;
  dictionaryCopy = dictionary;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [namesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    v11 = 0;
    v9 = 0;
LABEL_16:

    v11 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v17;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(namesCopy);
      }

      v14 = [dictionaryCopy objectForKey:*(*(&v16 + 1) + 8 * i)];

      if (v14)
      {
        v9 = v14;
      }

      else
      {
        v9 = &stru_2A1D19580;
      }

      if (!v11)
      {
        v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
      }

      v10 |= v14 != 0;
      [v11 addObject:v9];
    }

    v8 = [namesCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v11;
}

- (id)actionForRecognitionResults:(id)results
{
  v335 = *MEMORY[0x29EDCA608];
  resultsCopy = results;
  v5 = [resultsCopy objectAtIndex:0];
  recognitionAction = [v5 recognitionAction];
  v7 = objc_alloc_init(VoiceDialResultHandlerContext);
  VoiceDialConfigureSpokenLocalizedLabel(1);
  v8 = VoiceDialCopyErrorActionForResult(v5);
  v254 = resultsCopy;
  v267 = v5;
  v264 = recognitionAction;
  v288 = v7;
  if (v8 || ([v5 valueOfFirstElementWithClassIdentifier:@"voicemail"], v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && (v8 = objc_alloc_init(VoiceDialVoicemailRecognitionAction)) != 0)
  {
    v9 = v8;
    v300 = 0;
    v301 = 0;
    v260 = 0;
    v262 = 0;
    v269 = 0;
    v271 = 0;
    allObjects4 = 0;
    v251 = 0;
    v253 = 0;
    v257 = 0;
    v259 = 0;
    v291 = 0;
    obj = 0;
    v135 = 0;
    v266 = 0;
    v244 = 0;
    v246 = 0;
    v280 = 0;
    v284 = 0;
    v249 = 0;
    v10 = 0;
    v273 = 0;
    v276 = 0;
    v268 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v256 = 0;
    goto LABEL_239;
  }

  v316 = 0;
  v315 = 0;
  v314 = 0;
  VoiceDialCopyNamesLabelAndTypeFromRecognitionResults(resultsCopy, &v316, &v315, &v314);
  v20 = v316;
  v21 = v315;
  v22 = v314;
  v23 = [v5 valueOfFirstElementWithClassIdentifier:?];
  if (v23)
  {
    v24 = @"labeltype-phone";

    v250 = 1;
    v22 = v24;
  }

  else
  {
    v250 = v22 == 0;
  }

  v300 = v22;
  v301 = v21;
  v268 = v20;
  v243 = v23;
  selfCopy = self;
  if (v20 && (v25 = [(VoiceDialResultHandler *)self _addressBook]) != 0)
  {
    v26 = v25;
    _nameSource = [(VoiceDialResultHandler *)self _nameSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v29 = isKindOfClass;
    if (isKindOfClass)
    {
      v285 = isKindOfClass;
      v292 = [recognitionAction knownValueForClassIdentifier:@"nickname"];
      if (v292)
      {
        v312 = 0u;
        v313 = 0u;
        v310 = 0u;
        v311 = 0u;
        obja = v20;
        v30 = [obja countByEnumeratingWithState:&v310 objects:v331 count:16];
        v31 = v288;
        if (v30)
        {
          v32 = v30;
          v33 = 0;
          v34 = *v311;
          do
          {
            v35 = 0;
            v36 = v33;
            do
            {
              if (*v311 != v34)
              {
                objc_enumerationMutation(obja);
              }

              v33 = *(*(&v310 + 1) + 8 * v35);

              [(VoiceDialResultHandlerContext *)v288 setNameToMatch:v33];
              VoiceDialSendNameAndExtendedLabelMatches(v26, _nameSource, 0, 1, v292, v301, v22, _ResultHandlerAddressBookCallback, v288);
              ++v35;
              v36 = v33;
            }

            while (v32 != v35);
            v32 = [obja countByEnumeratingWithState:&v310 objects:v331 count:16];
          }

          while (v32);

          v5 = v267;
          v20 = v268;
          v31 = v288;
        }

        compositeNames = [(VoiceDialResultHandlerContext *)v31 compositeNames];
        v38 = [compositeNames count];

        if (!v38)
        {
          v39 = objc_alloc_init(VoiceDialResultHandlerContext);

          v288 = v39;
        }

        recognitionAction = v264;
      }

      if (!-[VoiceDialResultHandlerContext resultStatus](v288, "resultStatus") && (([recognitionAction knownValuesForClassIdentifier:@"firstname"], (v43 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(recognitionAction, "knownValuesForClassIdentifier:", @"lastname"), (v43 = objc_claimAutoreleasedReturnValue()) != 0)))
      {
        v284 = v43;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        v44 = v20;
        v45 = [v44 countByEnumeratingWithState:&v306 objects:v330 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = 0;
          v48 = *v307;
          do
          {
            v49 = 0;
            v50 = v47;
            do
            {
              if (*v307 != v48)
              {
                objc_enumerationMutation(v44);
              }

              v47 = *(*(&v306 + 1) + 8 * v49);

              if ([v284 containsObject:v47])
              {
                [(VoiceDialResultHandlerContext *)v288 setRequiredNameMatchType:2];
                VoiceDialSendNameAndExtendedLabelMatches(v26, _nameSource, 0, 0, v47, v301, v22, _ResultHandlerAddressBookCallback, v288);
                [(VoiceDialResultHandlerContext *)v288 setRequiredNameMatchType:0xFFFFFFFFLL];
              }

              ++v49;
              v50 = v47;
            }

            while (v46 != v49);
            v46 = [v44 countByEnumeratingWithState:&v306 objects:v330 count:16];
          }

          while (v46);

          v5 = v267;
        }

        v41 = v288;
        compositeNames2 = [(VoiceDialResultHandlerContext *)v288 compositeNames];
        v52 = [compositeNames2 count];

        if (!v52)
        {
          v53 = objc_alloc_init(VoiceDialResultHandlerContext);

          v41 = v53;
        }

        v40 = v292;
      }

      else
      {
        v284 = 0;
        v41 = v288;
        v40 = v292;
      }

      v29 = v285;
    }

    else
    {
      v40 = 0;
      v284 = 0;
      v41 = v288;
    }

    objb = v29 ^ 1;
    v54 = v29;
    if ([(VoiceDialResultHandlerContext *)v41 resultStatus])
    {
      v42 = 0;
    }

    else
    {
      v304 = 0u;
      v305 = 0u;
      v302 = 0u;
      v303 = 0u;
      v289 = v268;
      v55 = [v289 countByEnumeratingWithState:&v302 objects:v329 count:16];
      if (v55)
      {
        v56 = v55;
        v293 = v40;
        v57 = v41;
        v58 = _nameSource;
        v59 = v57;
        v60 = 0;
        v286 = 0;
        v61 = *v303;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            v63 = v60;
            if (*v303 != v61)
            {
              objc_enumerationMutation(v289);
            }

            v60 = *(*(&v302 + 1) + 8 * i);

            nicknameMatchCount = [(VoiceDialResultHandlerContext *)v59 nicknameMatchCount];
            VoiceDialSendNameAndExtendedLabelMatches(v26, v58, 0, objb & 1, v60, v301, v22, _ResultHandlerAddressBookCallback, v59);
            if ((v54 & 1) == 0 && [(VoiceDialResultHandlerContext *)v59 nicknameMatchCount]> nicknameMatchCount)
            {
              v65 = v60;

              v286 = v65;
            }
          }

          v56 = [v289 countByEnumeratingWithState:&v302 objects:v329 count:16];
        }

        while (v56);

        v5 = v267;
        v66 = v59;
        _nameSource = v58;
        v41 = v66;
        v40 = v293;
        v23 = v243;
        v42 = v286;
      }

      else
      {
        v42 = 0;
      }
    }
  }

  else
  {
    v40 = 0;
    v284 = 0;
    v42 = 0;
    _nameSource = 0;
    objb = 1;
    v41 = v288;
  }

  v287 = v42;
  v256 = _nameSource;
  if (v23)
  {
    v242 = 0;
  }

  else
  {
    v67 = objc_alloc(MEMORY[0x29EDB8E20]);
    localizedPhoneLabels = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
    v69 = [v67 initWithSet:localizedPhoneLabels];

    localizedEmailLabels = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
    [v69 intersectSet:localizedEmailLabels];

    localizedPhoneLabels2 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
    [localizedPhoneLabels2 minusSet:v69];

    localizedEmailLabels2 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
    v242 = v69;
    [localizedEmailLabels2 minusSet:v69];
  }

  compositeNames3 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
  v74 = [compositeNames3 count];

  localizedPhoneLabels3 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
  v76 = [localizedPhoneLabels3 count];

  localizedEmailLabels3 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
  v78 = [localizedEmailLabels3 count];

  v79 = [v242 count];
  v291 = v40;
  if ([(VoiceDialResultHandlerContext *)v41 resultStatus]!= 1)
  {
    v259 = 0;
    v260 = 0;
    v80 = 0;
    allObjects4 = 0;
    v251 = 0;
    v253 = 0;
    v257 = 0;
    v135 = 0;
    v266 = 0;
    v177 = 0;
    objc = 0;
    v281 = 0;
    v235 = 0;
    v236 = 0;
    v82 = 0;
    v83 = 0;
    v237 = 0;
    v238 = 0;
    v84 = 0;
    goto LABEL_87;
  }

  v274 = v78;
  if (v74 == 1)
  {
    if (v78 + v76 > 1 || v79)
    {
      if (!v243)
      {
        v103 = objc_alloc_init(VoiceDialResultHandlerContext);
        _addressBook = [(VoiceDialResultHandler *)selfCopy _addressBook];
        compositeNames4 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
        anyObject = [compositeNames4 anyObject];
        VoiceDialSendNameAndExtendedLabelMatches(_addressBook, v256, 0, objb & 1, anyObject, v301, v300, _ResultHandlerAddressBookCallback, v103);

        if ([(VoiceDialResultHandlerContext *)v103 resultStatus])
        {
          v107 = v103;

          v41 = v107;
        }

        v84 = 0;
        v5 = v267;
        goto LABEL_71;
      }
    }

    else if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
    {
      [(VoiceDialResultHandlerContext *)v41 setResultStatus:2];
      if (v76 <= 0)
      {
        [(VoiceDialResultHandlerContext *)v41 unlocalizedEmailLabels];
      }

      else
      {
        [(VoiceDialResultHandlerContext *)v41 unlocalizedPhoneLabels];
      }
      v84 = ;

      [(VoiceDialResultHandlerContext *)v41 setMatchedLabelType:v76 > 0];
      v137 = ABAddressBookCopyLocalizedLabel([v84 anyObject]);
      if (v137)
      {
        v138 = v137;
        v139 = v84;
        resultPerson = [(VoiceDialResultHandlerContext *)v41 resultPerson];
        if (v243)
        {
          MostLikelyFacetimeContactWithPersonAndLabel = VoiceDialCopyMostLikelyNumberWithPersonAndLabel(resultPerson, v138);
        }

        else
        {
          MostLikelyFacetimeContactWithPersonAndLabel = VoiceDialGetMostLikelyFacetimeContactWithPersonAndLabel(resultPerson, v138);
        }

        v142 = MostLikelyFacetimeContactWithPersonAndLabel;
        if (MostLikelyFacetimeContactWithPersonAndLabel)
        {
          if ([(VoiceDialResultHandlerContext *)v41 contactInfo])
          {
            CFRelease([(VoiceDialResultHandlerContext *)v41 contactInfo]);
          }

          [(VoiceDialResultHandlerContext *)v41 setContactInfo:CFRetain(v142)];
        }

        CFRelease(v138);
        v84 = v139;
      }

      goto LABEL_71;
    }
  }

  v84 = 0;
LABEL_71:
  if ([(VoiceDialResultHandlerContext *)v41 resultStatus]== 1)
  {
    v85 = [objc_alloc(MEMORY[0x29EDC82E0]) initWithModelIdentifier:@"com.apple.voicedial"];
    v86 = v85;
    if (v243)
    {
      v87 = @"namelabel";
    }

    else
    {
      v87 = @"namelonglabel";
    }

    if (v243)
    {
      v88 = @"command";
    }

    else
    {
      v88 = @"facetime";
    }

    [v85 setSequenceTag:v87];
    v240 = v88;
    [v5 valueOfFirstElementWithClassIdentifier:v240];
    v266 = v270 = v86;
    [v86 setKnownValue:? phoneticValue:? forClassIdentifier:?];
    v290 = v41;
    v247 = v84;
    v263 = v79;
    if (v74 == 1)
    {
      compositeNames5 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
      anyObject2 = [compositeNames5 anyObject];

      spokenCompositeNames = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
      v92 = [spokenCompositeNames count];

      if (v92)
      {
        spokenCompositeNames2 = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
        anyObject3 = [spokenCompositeNames2 anyObject];

        if (!anyObject3 || ![(__CFString *)anyObject3 isEqualToString:anyObject2])
        {
LABEL_84:
          [v86 setKnownValue:anyObject2 phoneticValue:anyObject3 forClassIdentifier:@"name"];
          lastNamesByFirstNames = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
          v96 = [lastNamesByFirstNames count];

          v259 = anyObject3;
          if (v96)
          {
            lastNamesByFirstNames2 = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
            v98 = kVoiceDialFirstNameClassIdentifier;
          }

          else
          {
            firstNamesByLastNames = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
            v109 = [firstNamesByLastNames count];

            if (!v109)
            {
LABEL_99:
              v237 = 0;
              v238 = 0;
              v135 = 0;
              allObjects4 = 0;
              goto LABEL_100;
            }

            lastNamesByFirstNames2 = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
            v98 = kVoiceDialLastNameClassIdentifier;
          }

          allKeys = [lastNamesByFirstNames2 allKeys];
          [v86 setKnownValues:allKeys phoneticValues:0 forClassIdentifier:*v98];

          goto LABEL_99;
        }
      }

      anyObject3 = 0;
      goto LABEL_84;
    }

    if (v74 < 2)
    {
      v237 = 0;
      v238 = 0;
      v135 = 0;
      v259 = 0;
      anyObject2 = 0;
      allObjects4 = 0;
LABEL_100:
      allObjects = 0;
      goto LABEL_101;
    }

    lastNamesByFirstNames3 = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
    if ([lastNamesByFirstNames3 count] == 1)
    {

LABEL_91:
      lastNamesByFirstNames4 = [(VoiceDialResultHandlerContext *)v41 lastNamesByFirstNames];
      v102 = kVoiceDialFirstNameClassIdentifier;
      goto LABEL_117;
    }

    if ([(VoiceDialResultHandlerContext *)v41 allNamesMatchedType]&& ![(VoiceDialResultHandlerContext *)v41 lastNameMatchType])
    {
      v233 = [v268 count];

      if (v233 > 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
    }

    firstNamesByLastNames2 = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
    if ([firstNamesByLastNames2 count] == 1)
    {

LABEL_116:
      lastNamesByFirstNames4 = [(VoiceDialResultHandlerContext *)v41 firstNamesByLastNames];
      v102 = kVoiceDialLastNameClassIdentifier;
LABEL_117:
      v125 = *v102;
      v238 = v125;
      if (lastNamesByFirstNames4)
      {
        v126 = v125;
        allKeys2 = [lastNamesByFirstNames4 allKeys];
        v237 = lastNamesByFirstNames4;
        mergeSetValuesIntoArray = [lastNamesByFirstNames4 mergeSetValuesIntoArray];
        objd = allKeys2;
        [v270 setKnownValues:allKeys2 phoneticValues:0 forClassIdentifier:v126];
        compositeNames6 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
        allObjects = [compositeNames6 allObjects];

        spokenCompositeNames3 = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
        allObjects2 = [spokenCompositeNames3 allObjects];

        allObjects4 = allObjects2;
        if ([allObjects2 count] < 6)
        {
          v135 = 0;
          allObjects3 = mergeSetValuesIntoArray;
          spokenCompositeNames4 = objd;
        }

        else
        {
          v131 = objc_alloc(MEMORY[0x29EDBA0F8]);
          VoiceDialSpokenLocalizedString(@"MANY_AMBIGUOUS_NAMES_SPOKEN_FORMAT_QUESTION_%@");
          v133 = v132 = allObjects;
          spokenCompositeNames4 = objd;
          lastObject = [objd lastObject];
          v135 = [v131 initWithFormat:v133, lastObject];

          allObjects = v132;
          v41 = v290;
          allObjects3 = mergeSetValuesIntoArray;
        }

        goto LABEL_140;
      }

LABEL_139:
      topLevelNonNickNames = [(VoiceDialResultHandlerContext *)v41 topLevelNonNickNames];
      allObjects3 = [topLevelNonNickNames allObjects];

      compositeNames7 = [(VoiceDialResultHandlerContext *)v41 compositeNames];
      allObjects = [compositeNames7 allObjects];

      spokenCompositeNames4 = [(VoiceDialResultHandlerContext *)v41 spokenCompositeNames];
      allObjects4 = [spokenCompositeNames4 allObjects];
      v237 = 0;
      v135 = 0;
LABEL_140:

      if ([(VoiceDialResultHandlerContext *)v41 nicknameMatchCount]>= 1 && [(VoiceDialResultHandlerContext *)v41 nicknameMatchCount]< v74 && v287)
      {
        [v270 setKnownValue:v287 phoneticValue:0 forClassIdentifier:@"nickname"];
      }

      if (allObjects3)
      {
        v272 = allObjects;
        phoneticNamesByName = [(VoiceDialResultHandlerContext *)v41 phoneticNamesByName];
        v147 = [(VoiceDialResultHandler *)selfCopy _phoneticNames:allObjects3 fromDictionary:phoneticNamesByName];
        v260 = allObjects3;
        [v270 setAmbiguousValues:allObjects3 phoneticValues:v147 forClassIdentifier:@"name"];

        v245 = 0;
        v236 = 0;
        v253 = 0;
        anyObject2 = 0;
        v259 = 0;
        v278 = 0;
        v115 = 0x29EDB8000uLL;
        goto LABEL_146;
      }

      v259 = 0;
      anyObject2 = 0;
LABEL_101:
      v112 = v274 + v76;
      v272 = allObjects;
      if (v274 + v76 == 1 && !v263)
      {
        localizedPhoneLabels4 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
        anyObject4 = [localizedPhoneLabels4 anyObject];

        v115 = 0x29EDB8000;
        if (!anyObject4)
        {
          localizedEmailLabels4 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
          anyObject4 = [localizedEmailLabels4 anyObject];
        }

        v236 = anyObject4;
        [v270 setKnownValue:anyObject4 phoneticValue:0 forClassIdentifier:@"label"];
        v245 = 0;
        goto LABEL_110;
      }

      v115 = 0x29EDB8000uLL;
      if (v263 + v112 < 1)
      {
        v245 = 0;
        v236 = 0;
LABEL_110:
        v253 = 0;
        v260 = 0;
        v278 = 1;
        goto LABEL_146;
      }

      v282 = anyObject2;
      v117 = MEMORY[0x29EDB8DE8];
      localizedPhoneLabels5 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
      allObjects5 = [localizedPhoneLabels5 allObjects];
      v120 = [v117 arrayWithArray:allObjects5];

      localizedEmailLabels5 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
      allObjects6 = [localizedEmailLabels5 allObjects];
      [v120 addObjectsFromArray:allObjects6];

      allObjects7 = [v242 allObjects];
      [v120 addObjectsFromArray:allObjects7];

      if (v120)
      {
        v253 = v120;
        [v270 setAmbiguousValues:v120 phoneticValues:0 forClassIdentifier:@"label"];
        v236 = 0;
        v260 = 0;
        v245 = 1;
      }

      else
      {
        v245 = 0;
        v236 = 0;
        v253 = 0;
        v260 = 0;
      }

      v278 = 1;
      anyObject2 = v282;
LABEL_146:
      v275 = objc_alloc_init(*(v115 + 3560));
      localizedPhoneLabels6 = [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
      localizedEmailLabels6 = [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
      v150 = localizedPhoneLabels6;
      v151 = localizedEmailLabels6;
      v152 = v242;
      v153 = [MEMORY[0x29EDB8E20] set];
      v325 = 0u;
      v326 = 0u;
      v327 = 0u;
      v328 = 0u;
      v154 = v150;
      v155 = [v154 countByEnumeratingWithState:&v325 objects:v334 count:16];
      if (v155)
      {
        v156 = v155;
        v157 = *v326;
        do
        {
          for (j = 0; j != v156; ++j)
          {
            if (*v326 != v157)
            {
              objc_enumerationMutation(v154);
            }

            [v153 addObject:*(*(&v325 + 1) + 8 * j)];
          }

          v156 = [v154 countByEnumeratingWithState:&v325 objects:v334 count:16];
        }

        while (v156);
      }

      v323 = 0u;
      v324 = 0u;
      v321 = 0u;
      v322 = 0u;
      v159 = v151;
      v160 = [v159 countByEnumeratingWithState:&v321 objects:v333 count:16];
      if (v160)
      {
        v161 = v160;
        v162 = *v322;
        do
        {
          for (k = 0; k != v161; ++k)
          {
            if (*v322 != v162)
            {
              objc_enumerationMutation(v159);
            }

            [v153 addObject:*(*(&v321 + 1) + 8 * k)];
          }

          v161 = [v159 countByEnumeratingWithState:&v321 objects:v333 count:16];
        }

        while (v161);
      }

      v258 = v154;
      v281 = anyObject2;
      v252 = v159;

      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      obje = v152;
      v164 = [obje countByEnumeratingWithState:&v317 objects:v332 count:16];
      if (v164)
      {
        v165 = v164;
        v166 = *v318;
        do
        {
          for (m = 0; m != v165; ++m)
          {
            if (*v318 != v166)
            {
              objc_enumerationMutation(obje);
            }

            v168 = *(*(&v317 + 1) + 8 * m);
            v169 = MEMORY[0x29EDBA0F8];
            v170 = VoiceDialSpokenLocalizedString(@"SPOKEN_LABEL_WITH_PHONE");
            v168 = [v169 stringWithFormat:v170, v168];
            [v153 addObject:v168];

            v172 = MEMORY[0x29EDBA0F8];
            v173 = VoiceDialSpokenLocalizedString(@"SPOKEN_LABEL_WITH_%@_EMAIL");
            v1682 = [v172 stringWithFormat:v173, v168];
            [v153 addObject:v1682];
          }

          v165 = [obje countByEnumeratingWithState:&v317 objects:v332 count:16];
        }

        while (v165);
      }

      allObjects8 = [v153 allObjects];

      v82 = v275;
      if (v266)
      {
        [v275 addObject:?];
      }

      v83 = v240;
      v80 = v272;
      v84 = v247;
      if (v272)
      {
        [v275 addObjectsFromArray:v272];
      }

      if ([v272 count] <= 1 && allObjects8)
      {
        [v275 addObjectsFromArray:allObjects8];
      }

      v257 = allObjects8;
      [v270 setKeywords:v275];
      v99 = v270;
      v41 = v290;
      if (v278)
      {
        v176 = v245;
        if (v263 > 0)
        {
          v176 = 1;
        }

        if (v176 == 1)
        {
          v177 = _CommaSeparatedStringFromArray(v257);
          objc = VoiceDialSpokenLocalizedString(@"AMBIGUOUS_LABEL_STATUS_STRING");
          v178 = objc_alloc(MEMORY[0x29EDBA0F8]);
          VoiceDialSpokenLocalizedString(@"AMBIGUOUS_LABELS_SPOKEN_FORMAT");
          v179 = v279 = v99;
          v180 = v259;
          if (!v259)
          {
            v180 = v281;
          }

          v251 = v177;
          v181 = v178;
          v82 = v275;
          v177 = [v181 initWithFormat:v179, v180, v177];

          v99 = v279;
          goto LABEL_185;
        }

        v177 = 0;
        objc = 0;
      }

      else
      {
        objc = VoiceDialSpokenLocalizedString(@"AMBIGUOUS_NAMES_STATUS_STRING");
        if (!v135)
        {
          if (allObjects4)
          {
            v226 = allObjects4;
          }

          else
          {
            v226 = v272;
          }

          v227 = _CommaSeparatedStringFromArray(v226);
          v228 = v99;
          v229 = objc_alloc(MEMORY[0x29EDBA0F8]);
          v230 = VoiceDialSpokenLocalizedString(@"AMBIGUOUS_NAMES_SPOKEN_FORMAT_QUESTION_%@");
          v231 = v229;
          v99 = v228;
          v177 = [v231 initWithFormat:v230, v227];

          v84 = v247;
          v232 = v227;
          v82 = v275;
          v182 = v232;
          v251 = 0;
          goto LABEL_186;
        }

        v177 = v135;
      }

      v251 = 0;
LABEL_185:
      v182 = 0;
LABEL_186:
      v235 = v182;
      [(VoiceDialVoicemailRecognitionAction *)v99 setRepeatedSpokenFeedbackString:v182];
      goto LABEL_187;
    }

    if ([(VoiceDialResultHandlerContext *)v41 allNamesMatchedType]&& [(VoiceDialResultHandlerContext *)v41 lastNameMatchType]== 1)
    {
      v143 = [v268 count];

      if (v143 > 1)
      {
        goto LABEL_116;
      }
    }

    else
    {
    }

    v238 = 0;
    goto LABEL_139;
  }

  v259 = 0;
  v260 = 0;
  v80 = 0;
  allObjects4 = 0;
  v251 = 0;
  v253 = 0;
  v257 = 0;
  v135 = 0;
  v266 = 0;
  v177 = 0;
  objc = 0;
  v281 = 0;
  v235 = 0;
  v236 = 0;
  v82 = 0;
  v83 = 0;
  v237 = 0;
  v238 = 0;
LABEL_87:
  v99 = 0;
LABEL_187:
  v273 = v82;
  v276 = v99;
  v288 = v41;
  v241 = v83;
  v271 = v80;
  if ([(VoiceDialResultHandlerContext *)v41 resultStatus]== 2)
  {
    if (v243)
    {
      v183 = [VoiceDialRecognitionAction alloc];
      contactInfo = [(VoiceDialResultHandlerContext *)v41 contactInfo];
      if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
      {
        RecordID = ABRecordGetRecordID([(VoiceDialResultHandlerContext *)v41 resultPerson]);
      }

      else
      {
        RecordID = 0xFFFFFFFFLL;
      }

      v191 = [(VoiceDialRecognitionAction *)v183 initWithPhoneNumber:contactInfo uid:RecordID];
    }

    else
    {
      v188 = [VoiceDialFacetimeRecognitionAction alloc];
      contactInfo2 = [(VoiceDialResultHandlerContext *)v41 contactInfo];
      if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
      {
        v190 = ABRecordGetRecordID([(VoiceDialResultHandlerContext *)v41 resultPerson]);
      }

      else
      {
        v190 = 0xFFFFFFFFLL;
      }

      v191 = [(VoiceDialFacetimeRecognitionAction *)v188 initWithContactInfo:contactInfo2 uid:v190];
    }

    v99 = v191;

    if ([(VoiceDialResultHandlerContext *)v41 resultPerson])
    {
      v192 = ABRecordCopyCompositeName([(VoiceDialResultHandlerContext *)v41 resultPerson]);
      v269 = VoiceDialPersonCopyCompositeName([(VoiceDialResultHandlerContext *)v41 resultPerson], 3);
    }

    else
    {
      v192 = 0;
      v269 = 0;
    }

    if ([(VoiceDialResultHandlerContext *)v41 matchedLabelType]== 1)
    {
      [(VoiceDialResultHandlerContext *)v41 localizedPhoneLabels];
    }

    else
    {
      [(VoiceDialResultHandlerContext *)v41 localizedEmailLabels];
    }
    v239 = ;

    if ([(VoiceDialResultHandlerContext *)v41 matchedLabelType]== 1)
    {
      [(VoiceDialResultHandlerContext *)v41 unlocalizedPhoneLabels];
    }

    else
    {
      [(VoiceDialResultHandlerContext *)v41 unlocalizedEmailLabels];
    }
    v193 = ;

    v234 = v193;
    if (v239)
    {
      anyObject5 = [v239 anyObject];
      anyObject6 = [v193 anyObject];
      v196 = ABAddressBookCopyLocalizedLabel(anyObject6);

      v197 = v196;
    }

    else
    {
      anyObject5 = 0;
      v197 = 0;
    }

    v262 = v197;
    if ([(__CFString *)v192 length])
    {
      v248 = v192;

      if ([anyObject5 length] && -[__CFString length](v197, "length"))
      {
        if (v243)
        {
          v198 = @"CONFIRMED_SPOKEN_NAME_LABEL_FORMAT_CALLING_%@_%@";
        }

        else
        {
          v198 = @"CONFIRMED_FACETIME_SPOKEN_NAME_LABEL_FORMAT_STARTING_FACETIME_WITH_%@_%@";
        }

        if (v243)
        {
          v199 = @"CONFIRMED_DISPLAY_NAME_LABEL_FORMAT_CALLING_%@";
        }

        else
        {
          v199 = @"CONFIRMED_FACETIME_DISPLAY_NAME_LABEL_FORMAT_FACETIME_%@";
        }

        if (!v250)
        {
          matchedLabelType = [(VoiceDialResultHandlerContext *)v41 matchedLabelType];
          v201 = MEMORY[0x29EDBA0F8];
          if (matchedLabelType == 1)
          {
            v202 = @"SPOKEN_LABEL_WITH_PHONE";
          }

          else
          {
            v202 = @"SPOKEN_LABEL_WITH_%@_EMAIL";
          }

          v203 = VoiceDialSpokenLocalizedString(v202);
          v194 = [v201 stringWithFormat:v203, anyObject5];

          v199 = @"CONFIRMED_FACETIME_DISPLAY_NAME_LABEL_FORMAT_FACETIME_%@";
          anyObject5 = v194;
          v198 = @"CONFIRMED_FACETIME_SPOKEN_NAME_LABEL_FORMAT_STARTING_FACETIME_WITH_%@_%@";
        }

        v205 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v206 = VoiceDialBundle();
        v207 = [v206 localizedStringForKey:v199 value:&stru_2A1D19580 table:@"Feedback"];
        v262 = [v205 initWithFormat:v207, v262];

        v209 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v210 = VoiceDialSpokenLocalizedString(v198);
        v1942 = [v209 initWithFormat:v210, v269, anyObject5];

        v177 = v210;
        v187 = v262;
      }

      else
      {
        v212 = anyObject5;
        v213 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v214 = VoiceDialBundle();
        v215 = v214;
        if (v243)
        {
          v216 = [v214 localizedStringForKey:@"CONFIRMED_DISPLAY_STRING" value:&stru_2A1D19580 table:@"Feedback"];
          v283 = [v213 initWithString:v216];
          v217 = @"CONFIRMED_SPOKEN_NAME_FORMAT";
        }

        else
        {
          v216 = [v214 localizedStringForKey:@"CONFIRMED_FACETIME_DISPLAY_STRING" value:&stru_2A1D19580 table:@"Feedback"];
          v283 = [v213 initWithFormat:v216];
          v217 = @"CONFIRMED_FACETIME_SPOKEN_NAME_FORMAT_STARTING_FACETIME_WITH_%@";
        }

        v222 = objc_alloc(MEMORY[0x29EDBA0F8]);
        v223 = VoiceDialSpokenLocalizedString(v217);
        v1942 = [v222 initWithFormat:v223, v269];

        v177 = v223;
        v187 = v283;
        anyObject5 = v212;
      }

      v186 = v248;
    }

    else
    {
      v218 = VoiceDialBundle();
      v219 = v218;
      if (v243)
      {
        v220 = @"CONFIRMED_DISPLAY_STRING";
      }

      else
      {
        v220 = @"CONFIRMED_FACETIME_DISPLAY_STRING";
      }

      if (v243)
      {
        v221 = @"CONFIRMED_SPOKEN_STRING";
      }

      else
      {
        v221 = @"CONFIRMED_FACETIME_SPOKEN_STRING";
      }

      v187 = [v218 localizedStringForKey:v220 value:&stru_2A1D19580 table:@"Feedback"];

      v1942 = VoiceDialSpokenLocalizedString(v221);
      v186 = v281;
    }

    v246 = anyObject5;
    v249 = v192;

    v177 = v1942;
  }

  else
  {
    v246 = 0;
    v249 = 0;
    v269 = 0;
    v262 = 0;
    v239 = 0;
    v234 = v84;
    v186 = v281;
    v187 = objc;
  }

  v280 = v186;
  obj = v187;
  v244 = v177;
  [(VSRecognitionAction *)v99 setStatusDisplayString:v187];
  [(VSRecognitionAction *)v99 setSpokenFeedbackString:v177];
  v9 = v99;
  [(VSRecognitionAction *)v99 setResultDisplayString:v186];

  v12 = v243;
  v11 = v287;
  v17 = v239;
  v13 = v241;
  v14 = v237;
  v15 = v238;
  v10 = v235;
  v16 = v236;
  v18 = v234;
LABEL_239:
  VoiceDialConfigureSpokenLocalizedLabel(0);
  v224 = v9;

  return v9;
}

@end
@interface SKGProcessor(Keyphraser)
- (id)availableLanguages;
- (id)loadedLocales;
- (uint64_t)generateKeyphrasesForRecord:()Keyphraser processedItem:processorFlags:cancelBlock:;
- (uint64_t)loadKeyphraser;
@end

@implementation SKGProcessor(Keyphraser)

- (uint64_t)loadKeyphraser
{
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  currentPreferredLocaleIdentifiers = [mEMORY[0x277D657A8] currentPreferredLocaleIdentifiers];
  loadLanguageModels(currentPreferredLocaleIdentifiers);

  mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
  if ([mEMORY[0x277D657A0] enableExtractions])
  {

LABEL_4:
    forceEntityExtraction = [self forceEntityExtraction];
    v7 = +[SKGDataDetector sharedDetector];
    [v7 setForceDataDetection:forceEntityExtraction];

    v8 = +[SKGDataDetector sharedDetector];
    [v8 loadDetector];

    goto LABEL_5;
  }

  forceEntityExtraction2 = [self forceEntityExtraction];

  if (forceEntityExtraction2)
  {
    goto LABEL_4;
  }

LABEL_5:

  return 1;
}

- (id)availableLanguages
{
  mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
  currentPreferredLanguages = [mEMORY[0x277D657A8] currentPreferredLanguages];

  return currentPreferredLanguages;
}

- (uint64_t)generateKeyphrasesForRecord:()Keyphraser processedItem:processorFlags:cancelBlock:
{
  v211[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v149 = a4;
  v127 = a6;
  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 1;
  context = objc_autoreleasePoolPush();
  textContentLanguage = [v149 textContentLanguage];

  if ([self recordContainsValue:v9 key:@"kMDItemTextContent"] & 1) != 0 || (objc_msgSend(self, "recordContainsValue:key:", v9, @"_kMDItemSnippet"))
  {
    bOOLValue = 1;
  }

  else
  {
    v11 = [self copyNumberValueFromRecord:v9 key:@"_kMDItemTextContentIndexExists"];
    bOOLValue = [v11 BOOLValue];
  }

  if (textContentLanguage)
  {
    v12 = MEMORY[0x277CBEAF8];
    textContentLanguage2 = [v149 textContentLanguage];
    currentLocale = [v12 localeWithLocaleIdentifier:textContentLanguage2];
  }

  else
  {
    currentLocale = 0;
  }

  if (!((currentLocale != 0) | bOOLValue & 1))
  {
    mEMORY[0x277D657A8] = [MEMORY[0x277D657A8] sharedProcessorListener];
    currentLocale = [mEMORY[0x277D657A8] currentLocale];
  }

  if (!currentLocale)
  {
    v124 = 0;
    goto LABEL_174;
  }

  LanguageID = SILanguagesGetLanguageID();
  Language = SILanguagesGetLanguage();
  v124 = LanguageID - 2 < 0x39;
  v145 = currentLocale;
  if (LanguageID - 2 >= 0x39)
  {
    mEMORY[0x277D657A0] = [MEMORY[0x277D657A0] sharedContext];
    [v149 setDidProcessKeyphrases:{objc_msgSend(mEMORY[0x277D657A0], "enableKeyphrases")}];
    goto LABEL_173;
  }

  v17 = Language;
  availableLanguages = [self availableLanguages];
  v19 = [availableLanguages containsObject:v17];

  mEMORY[0x277D657A0] = [self referenceDateForRecord:v9];
  if (mEMORY[0x277D657A0])
  {
    mEMORY[0x277D657A8]2 = [MEMORY[0x277D657A8] sharedProcessorListener];
    currentTimezone = [mEMORY[0x277D657A8]2 currentTimezone];
  }

  else
  {
    currentTimezone = 0;
  }

  if ((v19 & (textContentLanguage != 0)) != 0)
  {
    v211[0] = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v211 count:1];
    loadLanguageModels(v21);
  }

  if (([self recordContainsValue:v9 key:@"_kMDItemTextContentIsTranscribed"] & 1) != 0 || (objc_msgSend(v149, "bundleIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"com.apple.mobilephone"), v22, v23))
  {
    [v149 setIsTranscribedText:1];
  }

  mEMORY[0x277D657A0]2 = [MEMORY[0x277D657A0] sharedContext];
  keyphraseExcludeBundles = [mEMORY[0x277D657A0]2 keyphraseExcludeBundles];
  bundleIdentifier = [v149 bundleIdentifier];
  v27 = [keyphraseExcludeBundles containsObject:bundleIdentifier];

  bundleIdentifier2 = [v149 bundleIdentifier];
  if (bundleIdentifier2)
  {
    mEMORY[0x277D657A0]3 = [MEMORY[0x277D657A0] sharedContext];
    keyphraseIncludeBundles = [mEMORY[0x277D657A0]3 keyphraseIncludeBundles];
    bundleIdentifier3 = [v149 bundleIdentifier];
    if ([keyphraseIncludeBundles containsObject:bundleIdentifier3])
    {
      v32 = 0;
    }

    else
    {
      bundleIdentifier4 = [v149 bundleIdentifier];
      v32 = [bundleIdentifier4 hasPrefix:@"com.apple."];
    }
  }

  else
  {
    v32 = 0;
  }

  mEMORY[0x277D657A0]4 = [MEMORY[0x277D657A0] sharedContext];
  if (v27 & 1 | (([mEMORY[0x277D657A0]4 enableKeyphrases] & 1) == 0) | v32 & 1)
  {
    v138 = 0;
  }

  else
  {
    v138 = [v149 isTranscribedText] ^ 1;
  }

  mEMORY[0x277D657A0]5 = [MEMORY[0x277D657A0] sharedContext];
  enableExtractions = [mEMORY[0x277D657A0]5 enableExtractions];

  v37 = enableExtractions & (v27 ^ 1);
  if (!(v37 & 1 | ((v138 & 1) == 0)))
  {
    protectionClass = [v149 protectionClass];
    if (protectionClass)
    {
      protectionClass2 = [v149 protectionClass];
      if ([protectionClass2 isEqualToString:*MEMORY[0x277CCA190]])
      {
        v138 = 0;
      }

      else
      {
        protectionClass3 = [v149 protectionClass];
        v41 = [protectionClass3 isEqualToString:*MEMORY[0x277CCA198]];

        v138 &= v41 ^ 1;
      }
    }
  }

  forceEntityExtraction = [self forceEntityExtraction];
  v121 = [self copyTextContentFromRecord:v9];
  v116 = v121;
  if (!v121)
  {
    v121 = [self copySnippetFromRecord:v9];
  }

  bundleIdentifier5 = [v149 bundleIdentifier];
  v126 = [bundleIdentifier5 isEqualToString:@"com.apple.mobilecal"];

  v179 = 0u;
  v180 = 0u;
  v178 = 0u;
  v140 = (a5 >> 9) & 1 & (forceEntityExtraction | v37);
  if (v140)
  {
    if ([self recordContainsValue:v9 key:@"kMDItemLatitude"] && objc_msgSend(self, "recordContainsValue:key:", v9, @"kMDItemLongitude"))
    {
      v43 = [self copyDoubleValueFromRecord:v9 key:@"kMDItemLatitude"];
      v44 = [self copyDoubleValueFromRecord:v9 key:@"kMDItemLongitude"];
      [v43 doubleValue];
      *&v178 = v45;
      [v44 doubleValue];
      *(&v179 + 1) = v46;
    }

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    mEMORY[0x277D657A0]6 = [MEMORY[0x277D657A0] sharedContext];
    keyphraseOptionalExtractionAttributes = [mEMORY[0x277D657A0]6 keyphraseOptionalExtractionAttributes];

    v49 = 0;
    v50 = [keyphraseOptionalExtractionAttributes countByEnumeratingWithState:&v174 objects:v210 count:16];
    if (v50)
    {
      v51 = *v175;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v175 != v51)
          {
            objc_enumerationMutation(keyphraseOptionalExtractionAttributes);
          }

          v53 = *(*(&v174 + 1) + 8 * i);
          mEMORY[0x277D65798] = [MEMORY[0x277D65798] sharedProcessor];
          v55 = [mEMORY[0x277D65798] recordContainsValue:v9 key:v53];

          if (v55)
          {
            mEMORY[0x277D65798]2 = [MEMORY[0x277D65798] sharedProcessor];
            v57 = [mEMORY[0x277D65798]2 copyStringValueFromRecord:v9 key:v53];

            if (v57)
            {
              if (!v49)
              {
                v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
              }

              [v49 addObject:v57];
            }
          }
        }

        v50 = [keyphraseOptionalExtractionAttributes countByEnumeratingWithState:&v174 objects:v210 count:16];
      }

      while (v50);
    }
  }

  else
  {
    v49 = 0;
  }

  if (![v121 length] && !objc_msgSend(v49, "count"))
  {
    goto LABEL_170;
  }

  v168 = 0;
  v169 = &v168;
  v170 = 0x3032000000;
  v171 = __Block_byref_object_copy__21;
  v172 = __Block_byref_object_dispose__21;
  v173 = objc_alloc_init(SKGEntityRanker);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke;
  aBlock[3] = &unk_27893EEC8;
  v167 = &v181;
  v135 = v127;
  v166 = v135;
  v132 = _Block_copy(aBlock);
  if (v140)
  {
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_2;
    v164[3] = &unk_27893EEF0;
    v164[4] = &v168;
    v141 = _Block_copy(v164);
  }

  else
  {
    v141 = 0;
  }

  if ((forceEntityExtraction | v138) & bOOLValue)
  {
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_37;
    v158[3] = &unk_27893EF18;
    v159 = v145;
    v160 = v149;
    v162 = &v168;
    v163 = &v181;
    v161 = v135;
    v118 = _Block_copy(v158);
  }

  else
  {
    v118 = 0;
  }

  v58 = *(v182 + 24);
  if (v58 == 1 && v141 && v121)
  {
    v59 = enumerateEntityInfo(mEMORY[0x277D657A0], currentTimezone, v145, v121, 0, &v178, v141, v132);
    if ((v126 & 1) != 0 || (v60 = v59, [self forceEntityExtraction]))
    {
      v60 = enumerateAirportCodes(v121, v141);
    }

    v61 = v182;
    v62 = *(v182 + 24);
    if (v135 && (v62 & 1) != 0)
    {
      v58 = (*(v135 + 2))(v135, @"processTextContentFromRecord:keyphraser:entities") ^ 1;
      v61 = v182;
    }

    else
    {
      v58 = v62 != 0;
    }

    if (!v60)
    {
      v58 = 0;
    }

    *(v61 + 24) = v58;
  }

  if (!v58 || !v118 || !v121)
  {
    goto LABEL_131;
  }

  v63 = [v121 componentsSeparatedByString:@"\n"];
  v122 = [v63 count];
  lock = (&sLMLock_0 + 4 * LanguageID);
  os_unfair_lock_lock(lock);
  v64 = SILanguageModelRetain();
  if (!v64)
  {
    goto LABEL_130;
  }

  v120 = v64;
  if (!v122)
  {
    goto LABEL_129;
  }

  v65 = 0;
  v119 = v132 + 2;
  v114 = xmmword_231C220E0;
  do
  {
    v143 = v65;
    v133 = [v63 objectAtIndexedSubscript:v114];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v148 = [v133 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    v144 = v143 + 1;
    if (![v148 length])
    {
      goto LABEL_126;
    }

    if (v116)
    {
      v67 = 0;
    }

    else
    {
      v67 = v144 == v122;
    }

    v68 = v67;
    v128 = v68;
    v130 = v118;
    v131 = v141;
    v69 = v132;
    v204 = 0;
    v205 = &v204;
    v206 = 0x2020000000;
    v207 = 1;
    v137 = [v148 length];
    v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v123 = +[SKGDataDetector sharedDetector];
    v201[0] = MEMORY[0x277D85DD0];
    v201[1] = 3221225472;
    v201[2] = __enumerateKeyphraseInfo_block_invoke_0;
    v201[3] = &unk_27893EF90;
    v139 = v70;
    v202 = v139;
    v134 = v69;
    v203 = v134;
    if (([v123 enumerateDetectedDataInString:v148 locale:v145 referenceDate:mEMORY[0x277D657A0] referenceTimezone:currentTimezone entityBlock:0 rangeBlock:v201] & 1) == 0)
    {
      *(v205 + 24) = 0;
    }

    if (!*(v205 + 24) || (*v119)(v134))
    {
      v71 = 1;
      goto LABEL_121;
    }

    firstObject = [v139 firstObject];
    v73 = 0;
    v199[0] = 0;
    v199[1] = v199;
    v199[2] = 0x3010000000;
    v199[3] = &unk_231C4157F;
    v200 = v114;
    while (firstObject)
    {
      rangeValue = [firstObject rangeValue];
      v76 = v75;
      if (rangeValue != v73)
      {
        goto LABEL_104;
      }

      [v139 removeObjectAtIndex:0];
      if ([v139 count])
      {
        v77 = [v139 objectAtIndexedSubscript:0];
      }

      else
      {
        v77 = 0;
      }

      v73 += v76;
      firstObject = v77;
LABEL_115:
      if (v73 >= v137)
      {
        goto LABEL_120;
      }
    }

    v76 = 0;
    rangeValue = v137;
    if (v137 != v73)
    {
LABEL_104:
      v78 = [v148 substringWithRange:{v73, rangeValue - v73}];
      v185 = MEMORY[0x277D85DD0];
      v186 = 3221225472;
      v187 = __enumerateKeyphraseInfo_block_invoke_2_0;
      v188 = &unk_27893EFE0;
      v194 = v199;
      v190 = 0;
      v189 = 0;
      v191 = v130;
      v195 = &v204;
      v196 = v120;
      v197 = v145;
      v198 = v128;
      v192 = v131;
      v79 = v134;
      v193 = v79;
      v80 = SITextTokenizerEnumerateTokensInString();
      v81 = v205;
      *(v205 + 24) = v80;
      if (v80)
      {
        if (!(*v119)(v79))
        {
          if (firstObject)
          {
            [v139 removeObjectAtIndex:0];
            v73 = v76 + rangeValue;
            if ([v139 count])
            {
              v83 = [v139 objectAtIndexedSubscript:0];

              v82 = 1;
              firstObject = v83;
            }

            else
            {

              firstObject = 0;
              v82 = 1;
            }
          }

          else
          {
            v82 = 1;
            v73 = rangeValue;
          }

LABEL_108:

          if ((v82 & 1) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_115;
        }

        v81 = v205;
      }

      v82 = 0;
      *(v81 + 24) = 0;
      goto LABEL_108;
    }

    firstObject = 0;
LABEL_120:
    v84 = *(v205 + 24);
    _Block_object_dispose(v199, 8);

    v71 = v84 == 0;
LABEL_121:

    _Block_object_dispose(&v204, 8);
    v85 = v182;
    v86 = *(v182 + 24);
    if (v135 && (v86 & 1) != 0)
    {
      v86 = (*(v135 + 2))(v135, @"processTextContentFromRecord:keyphraser:text") ^ 1;
      v85 = v182;
    }

    else
    {
      LOBYTE(v86) = v86 != 0;
    }

    *(v85 + 24) = v86 & 1;
    if (v71 || (v86 & 1) == 0)
    {
      [v149 clearKeyphrases];

      break;
    }

LABEL_126:

    v65 = v144;
  }

  while (v144 != v122);
LABEL_129:
  SILanguageModelRelease();
LABEL_130:
  os_unfair_lock_unlock(lock);

  LOBYTE(v58) = *(v182 + 24);
LABEL_131:
  if ((v58 & 1) != 0 && v141 && [v49 count])
  {
    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v87 = v49;
    v88 = [v87 countByEnumeratingWithState:&v154 objects:v209 count:16];
    if (v88)
    {
      v89 = *v155;
LABEL_136:
      v90 = 0;
      while (1)
      {
        if (*v155 != v89)
        {
          objc_enumerationMutation(v87);
        }

        v91 = *(*(&v154 + 1) + 8 * v90);
        v92 = enumerateEntityInfo(0, 0, v145, v91, 1, &v178, v141, v132);
        if ((v126 & 1) != 0 || (v93 = v92, [self forceEntityExtraction]))
        {
          v93 = enumerateAirportCodes(v91, v141);
        }

        v94 = v182;
        v95 = *(v182 + 24);
        if (v135 && (v95 & 1) != 0)
        {
          v96 = (*(v135 + 2))(v135, @"processTextContentFromRecord:keyphraser:optionalText") ^ 1;
          v94 = v182;
        }

        else
        {
          v96 = v95 != 0;
        }

        *(v94 + 24) = v96;
        if (!v93 || v96 == 0)
        {
          break;
        }

        if (v88 == ++v90)
        {
          v88 = [v87 countByEnumeratingWithState:&v154 objects:v209 count:16];
          if (v88)
          {
            goto LABEL_136;
          }

          break;
        }
      }
    }
  }

  if (*(v182 + 24) == 1)
  {
    v98 = [self copyStringValueFromRecord:v9 key:@"_SKGTestLocation"];
    v99 = v98;
    if (v98)
    {
      v100 = [v98 componentsSeparatedByString:{@", "}];
      if ([v100 count] == 3)
      {
        v101 = [(SKGEntity *)[SKGAddress alloc] initWithScore:1.0];
        [(SKGAddress *)v101 setAddress:v99];
        v102 = [v100 objectAtIndexedSubscript:0];
        [(SKGAddress *)v101 setCity:v102];

        v103 = [v100 objectAtIndexedSubscript:1];
        [(SKGAddress *)v101 setArea:v103];

        v104 = [v100 objectAtIndexedSubscript:2];
        [(SKGAddress *)v101 setCountry:v104];

        v105 = +[SKGDataDetector sharedDetector];
        v106 = [v105 locationFromAddress:v101 locale:v145];

        if (v106)
        {
          [v169[5] addEntity:v106];
        }
      }
    }

    if (v182[3])
    {
      [v169[5] keyphrases];
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v107 = v151 = 0u;
      v108 = [v107 countByEnumeratingWithState:&v150 objects:v208 count:16];
      if (v108)
      {
        v109 = *v151;
        do
        {
          for (j = 0; j != v108; ++j)
          {
            if (*v151 != v109)
            {
              objc_enumerationMutation(v107);
            }

            [v149 addKeyphrase:*(*(&v150 + 1) + 8 * j)];
          }

          v108 = [v107 countByEnumeratingWithState:&v150 objects:v208 count:16];
        }

        while (v108);
      }

      [v169[5] updateWithEntities:v149];
    }
  }

  _Block_object_dispose(&v168, 8);
LABEL_170:
  if (*(v182 + 24) == 1)
  {
    mEMORY[0x277D657A0]7 = [MEMORY[0x277D657A0] sharedContext];
    [v149 setDidProcessKeyphrases:{objc_msgSend(mEMORY[0x277D657A0]7, "enableKeyphrases")}];
  }

LABEL_173:
  currentLocale = v145;
LABEL_174:

  objc_autoreleasePoolPop(context);
  if (v124)
  {
    v112 = *(v182 + 24);
  }

  else
  {
    v112 = 1;
  }

  _Block_object_dispose(&v181, 8);

  return v112 & 1;
}

- (id)loadedLocales
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = 0;
  v2 = &sLMLock_0;
  do
  {
    os_unfair_lock_lock(v2);
    if (sLanguageModels_0[v1])
    {
      v3 = SILanguagesGetLanguage();
      v4 = SILanguagesGetRegion();
      v5 = MEMORY[0x277CBEAF8];
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = @"US";
      }

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v3, v6];
      v8 = [v5 localeWithLocaleIdentifier:v7];

      [v0 addObject:v8];
    }

    os_unfair_lock_unlock(v2);
    ++v1;
    ++v2;
  }

  while (v1 != 59);

  return v0;
}

@end
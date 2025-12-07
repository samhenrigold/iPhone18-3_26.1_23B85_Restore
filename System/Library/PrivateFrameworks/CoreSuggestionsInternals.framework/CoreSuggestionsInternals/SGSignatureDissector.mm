@interface SGSignatureDissector
+ (id)singleLineSignatureLeadingCharacterSet;
- (BOOL)_paragraphWithContent:(id)content range:(_NSRange)range exceedsLineLimit:(unint64_t)limit orCharacterLimit:(unint64_t)characterLimit;
- (BOOL)shouldIgnoreSignature:(id)signature signatureRange:(_NSRange *)range isInhuman:(BOOL *)inhuman;
- (_NSRange)findSignaturePrefix:(id)prefix;
- (_NSRange)findValediction:(id)valediction;
- (_NSRange)hmmPlausibleSignatureRange:(id)range;
- (_NSRange)hmmSignatureRange:(id)range;
- (_NSRange)hmmSignatureRangeWithContent:(id)content detectedData:(id)data quotedRegions:(id)regions authorName:(id)name;
- (_NSRange)miniSignatureRange:(id)range;
- (_NSRange)rangeOfSenderName:(id)name inRange:(_NSRange)range restrictLength:(BOOL)length forMessage:(id)message;
- (_NSRange)rangeOfSenderNameComponents:(id)components withFullname:(id)fullname inSubstring:(id)substring;
- (_NSRange)signatureRange:(id)range;
- (_NSRange)trailingSenderNameLineRange:(id)range;
- (id)authorFirstname:(id)firstname;
- (id)authorName:(id)name;
- (id)findRejectSig:(id)sig;
- (id)findSignaturePrefixesInMessage:(id)message withSignaturePrefixes:(id)prefixes;
- (id)findValedictionCommencedSignatureRanges:(id)ranges;
- (id)initIgnoringDataDetectors;
- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGSignatureDissector

+ (id)singleLineSignatureLeadingCharacterSet
{
  if (singleLineSignatureLeadingCharacterSet_onceToken != -1)
  {
    dispatch_once(&singleLineSignatureLeadingCharacterSet_onceToken, &__block_literal_global_120_23073);
  }

  v3 = singleLineSignatureLeadingCharacterSet_charset;

  return v3;
}

void __62__SGSignatureDissector_singleLineSignatureLeadingCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCA900] symbolCharacterSet];
  v5 = [v0 mutableCopy];

  v1 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v5 formUnionWithCharacterSet:v1];

  v2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v5 formUnionWithCharacterSet:v2];

  v3 = [v5 copy];
  v4 = singleLineSignatureLeadingCharacterSet_charset;
  singleLineSignatureLeadingCharacterSet_charset = v3;
}

- (BOOL)shouldIgnoreSignature:(id)signature signatureRange:(_NSRange *)range isInhuman:(BOOL *)inhuman
{
  v244 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  context = objc_autoreleasePoolPush();
  rangeCopy = range;
  length = range->length;
  location = range->location;
  *inhuman = 0;
  v197 = signatureCopy;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    inhumanCopy = inhuman;
    textContent = [signatureCopy textContent];
    v10 = [textContent length];

    if (location > v10)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Can't meaningfully call shouldIgnoreSignature with a signature that starts after the content.", buf, 2u);
      }

      goto LABEL_12;
    }

    textContent2 = [signatureCopy textContent];
    v12 = [textContent2 length];

    if (length + location > v12)
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Can't meaningfully call shouldIgnoreSignature on an entity with no detected signature.", buf, 2u);
      }

      goto LABEL_12;
    }

    v15 = objc_opt_new();
    *buf = 0;
    v236 = buf;
    v237 = 0x2020000000;
    v238 = 0;
    quotedRegions = [signatureCopy quotedRegions];
    v231[0] = MEMORY[0x277D85DD0];
    v231[1] = 3221225472;
    v231[2] = __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke;
    v231[3] = &unk_27894F658;
    v234 = buf;
    v17 = v15;
    v232 = v17;
    v191 = signatureCopy;
    v233 = v191;
    [quotedRegions enumerateRangesUsingBlock:v231];

    v18 = *(v236 + 3);
    textContent3 = [v191 textContent];
    LODWORD(v18) = v18 < [textContent3 length];

    if (v18)
    {
      textContent4 = [v191 textContent];
      v21 = [textContent4 substringFromIndex:*(v236 + 3)];
      [v17 addObject:v21];

      textContent5 = [v191 textContent];
      v23 = [textContent5 length];
      *(v236 + 3) = v23;
    }

    v183 = [MEMORY[0x277CCACA8] _pas_proxyStringByConcatenatingStrings:v17];

    v24 = objc_autoreleasePoolPush();
    v25 = [v183 substringWithRange:{rangeCopy->location, rangeCopy->length}];
    v26 = patterns_23118();
    v27 = [v26 regex2ForKey:@"InhumanSig"];
    v28 = [v27 existsInString:v25];

    if (v28)
    {
      v29 = sgLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *v204 = 0;
        _os_log_debug_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEBUG, "Tagging as inhuman: Signature pattern", v204, 2u);
      }

      v30 = sgLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *v204 = 0;
        _os_log_debug_impl(&dword_231E60000, v30, OS_LOG_TYPE_DEBUG, "Ignoring signature: Inhuman pattern.", v204, 2u);
      }

      *inhumanCopy = 1;
    }

    objc_autoreleasePoolPop(v24);
    if (v28)
    {
      v13 = 1;
LABEL_200:

      _Block_object_dispose(buf, 8);
      goto LABEL_13;
    }

    v31 = [(SGSignatureDissector *)self findSignaturePrefix:v191];
    if (v32)
    {
      v33 = rangeCopy->location - v31;
      if (rangeCopy->location < v31)
      {
        v34 = rangeCopy->length;
        if (v31 + v32 < v34 + rangeCopy->location)
        {
          rangeCopy->location = v31;
          rangeCopy->length = v33 + v34;
        }
      }
    }

    v35 = [(SGSignatureDissector *)self findValediction:v191];
    if (v36 && rangeCopy->length + rangeCopy->location <= v35)
    {
      v59 = sgLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *v204 = 0;
        _os_log_debug_impl(&dword_231E60000, v59, OS_LOG_TYPE_DEBUG, "Ignoring signature: Valediction after signature.", v204, 2u);
      }

      v13 = 1;
      goto LABEL_199;
    }

    v37 = +[SGContactStoreFactory contactStore];
    v185 = [SGCuratedContactMatcher fetchMeContactFromContactStore:v37];

    v39 = rangeCopy->location;
    v38 = rangeCopy->length;
    obj = [v185 givenName];
    if (!obj)
    {
LABEL_44:
      phoneNumbers = [v185 phoneNumbers];
      if (objc_msgSend_count(phoneNumbers))
      {

LABEL_50:
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        plainTextDetectedData = [v191 plainTextDetectedData];
        v63 = [plainTextDetectedData countByEnumeratingWithState:&v227 objects:v243 count:16];
        obj = plainTextDetectedData;
        if (!v63)
        {
          goto LABEL_90;
        }

        v187 = *v228;
        while (1)
        {
          v64 = 0;
          v189 = v63;
          do
          {
            if (*v228 != v187)
            {
              objc_enumerationMutation(obj);
            }

            v65 = *(*(&v227 + 1) + 8 * v64);
            v66 = objc_autoreleasePoolPush();
            v245.location = [v65 range];
            if (NSIntersectionRange(v245, *rangeCopy).length)
            {
              if ([v65 matchType])
              {
                if ([v65 matchType] == 1)
                {
                  textContent6 = [v191 textContent];
                  valueRange = [v65 valueRange];
                  v70 = [textContent6 substringWithRange:{valueRange, v69}];

                  v225 = 0u;
                  v226 = 0u;
                  v223 = 0u;
                  v224 = 0u;
                  postalAddresses = [v185 postalAddresses];
                  v72 = [postalAddresses countByEnumeratingWithState:&v223 objects:v242 count:16];
                  if (v72)
                  {
                    v73 = *v224;
LABEL_60:
                    v74 = 0;
                    while (1)
                    {
                      if (*v224 != v73)
                      {
                        objc_enumerationMutation(postalAddresses);
                      }

                      v75 = *(*(&v223 + 1) + 8 * v74);
                      v76 = objc_autoreleasePoolPush();
                      v77 = SGPostalAddressesMatchWithParsed(v75, v70, 0, 0, 0, 0, 1);
                      v78 = v77;
                      if (v77)
                      {
                        v79 = sgLogHandle();
                        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
                        {
                          *v204 = 0;
                          _os_log_debug_impl(&dword_231E60000, v79, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's postal.", v204, 2u);
                        }
                      }

                      objc_autoreleasePoolPop(v76);
                      if (v78)
                      {
                        break;
                      }

                      if (v72 == ++v74)
                      {
                        v72 = [postalAddresses countByEnumeratingWithState:&v223 objects:v242 count:16];
                        if (v72)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_70;
                      }
                    }

LABEL_78:
                    v80 = 1;
                  }

                  else
                  {
LABEL_70:
                    v80 = 0;
                  }

LABEL_81:
                  goto LABEL_82;
                }

                if ([v65 matchType] != 2)
                {
                  v80 = 0;
                  goto LABEL_82;
                }

                textContent7 = [v191 textContent];
                valueRange2 = [v65 valueRange];
                v70 = [textContent7 substringWithRange:{valueRange2, v91}];

                emailAddresses = [v185 emailAddresses];
                v93 = SGNormalizeEmailAddress();
                v94 = [emailAddresses containsObject:v93];

                if (v94)
                {
                  postalAddresses = sgLogHandle();
                  if (!os_log_type_enabled(postalAddresses, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_78;
                  }

                  *v204 = 0;
                  v87 = postalAddresses;
                  v88 = "Ignoring signature: Recipient's email.";
                  goto LABEL_88;
                }
              }

              else
              {
                textContent8 = [v191 textContent];
                valueRange3 = [v65 valueRange];
                v70 = [textContent8 substringWithRange:{valueRange3, v83}];

                phoneNumbers2 = [v185 phoneNumbers];
                v85 = SGNormalizePhoneNumber();
                v86 = [phoneNumbers2 containsObject:v85];

                if (v86)
                {
                  postalAddresses = sgLogHandle();
                  if (!os_log_type_enabled(postalAddresses, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_78;
                  }

                  *v204 = 0;
                  v87 = postalAddresses;
                  v88 = "Ignoring signature: Recipient's phone.";
LABEL_88:
                  _os_log_debug_impl(&dword_231E60000, v87, OS_LOG_TYPE_DEBUG, v88, v204, 2u);
                  goto LABEL_78;
                }
              }

              v80 = 0;
              goto LABEL_81;
            }

            v80 = 3;
LABEL_82:
            objc_autoreleasePoolPop(v66);
            if (v80 != 3 && v80)
            {
              goto LABEL_150;
            }

            ++v64;
          }

          while (v64 != v189);
          v63 = [obj countByEnumeratingWithState:&v227 objects:v243 count:16];
          if (!v63)
          {
LABEL_90:

            goto LABEL_91;
          }
        }
      }

      postalAddresses2 = [v185 postalAddresses];
      v61 = objc_msgSend_count(postalAddresses2) == 0;

      if (!v61)
      {
        goto LABEL_50;
      }

LABEL_91:
      obj = [(SGSignatureDissector *)self authorName:v191];
      if (!obj || (nontokenCharset(), v95 = objc_claimAutoreleasedReturnValue(), -[NSObject stringByTrimmingCharactersInSet:](obj, "stringByTrimmingCharactersInSet:", v95), v96 = objc_claimAutoreleasedReturnValue(), v97 = [v96 length] == 0, v96, v95, v97))
      {
        v99 = sgLogHandle();
        if (os_log_type_enabled(&v99->super, OS_LOG_TYPE_DEBUG))
        {
          *v204 = 0;
          _os_log_debug_impl(&dword_231E60000, &v99->super, OS_LOG_TYPE_DEBUG, "Ignoring signature: Sender's name unavailable.", v204, 2u);
        }
      }

      else
      {
        v98 = rangeCopy->location;
        v99 = [[SGPlainTextContentCursor alloc] initWithMailMessage:v191];
        [(SGPlainTextContentCursor *)v99 setPos:rangeCopy->location];
        if ([(SGPlainTextContentCursor *)v99 pos])
        {
          textContent9 = [v191 textContent];
          v101 = [textContent9 characterAtIndex:{-[SGPlainTextContentCursor pos](v99, "pos")}] == 10;

          if (!v101)
          {
            [(SGPlainTextContentCursor *)v99 backwardWhile:&__block_literal_global_105];
            v98 = [(SGPlainTextContentCursor *)v99 pos];
          }
        }

        v102 = [(SGPlainTextContentCursor *)v99 pos];
        [(SGPlainTextContentCursor *)v99 backwardWhile:&__block_literal_global_107_23134];
        if ([(SGPlainTextContentCursor *)v99 pos])
        {
          v103 = [(SGPlainTextContentCursor *)v99 pos]+ 1;
        }

        else
        {
          v103 = 1;
        }

        textContent10 = [v191 textContent];
        v106 = [textContent10 length];

        if (v103 >= v106)
        {
          v103 = v106;
        }

        [(SGPlainTextContentCursor *)v99 setPos:v102];
        [(SGPlainTextContentCursor *)v99 backwardToString:@"\n\n" consume:1];
        textContent11 = [v191 textContent];
        v108 = [(SGSignatureDissector *)self _paragraphWithContent:textContent11 range:[(SGPlainTextContentCursor *)v99 pos] exceedsLineLimit:v102 - [(SGPlainTextContentCursor *)v99 pos] orCharacterLimit:4, 125];

        if (v108)
        {
          [(SGPlainTextContentCursor *)v99 setPos:v102];
        }

        if ([(SGPlainTextContentCursor *)v99 pos]== v98)
        {
          if (!v108)
          {
            v98 = 0;
          }
        }

        else
        {
          [(SGPlainTextContentCursor *)v99 backwardWhile:&__block_literal_global_109];
          v98 = [(SGPlainTextContentCursor *)v99 pos];
          [(SGPlainTextContentCursor *)v99 backwardToString:@"\n\n" consume:0];
          textContent12 = [v191 textContent];
          v110 = [(SGSignatureDissector *)self _paragraphWithContent:textContent12 range:[(SGPlainTextContentCursor *)v99 pos] exceedsLineLimit:v98 - [(SGPlainTextContentCursor *)v99 pos] orCharacterLimit:2, 75];

          if (!v110)
          {
            v98 = [(SGPlainTextContentCursor *)v99 pos];
          }
        }

        if (v98 <= v103)
        {
          v98 = v103;
        }

        [(SGPlainTextContentCursor *)v99 setPos:v98];
        [(SGPlainTextContentCursor *)v99 forwardWhile:&__block_literal_global_111];
        v111 = [(SGPlainTextContentCursor *)v99 pos];
        v112 = rangeCopy->length;
        if (v111 - v98 >= rangeCopy->location - v98 + v112)
        {
          v113 = rangeCopy->location - v98 + v112;
        }

        else
        {
          v113 = v111 - v98;
        }

        v191 = [(SGSignatureDissector *)self rangeOfSenderName:obj inRange:v98 restrictLength:v113 forMessage:0, v191];
        if (v191 == 0x7FFFFFFFFFFFFFFFLL)
        {
          author = [v191 author];
          sg_emailAddress = [author sg_emailAddress];
          v118 = sg_emailAddress == 0;

          if (v118 || ([v191 textContent], v119 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v191, "author"), v120 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v120, "sg_emailAddress"), v121 = objc_claimAutoreleasedReturnValue(), v122 = objc_msgSend(v119, "rangeOfString:options:range:", v121, 1, v98, v113) == 0x7FFFFFFFFFFFFFFFLL, v121, v120, v119, v122))
          {
            plainTextDetectedData3 = sgLogHandle();
            if (os_log_type_enabled(plainTextDetectedData3, OS_LOG_TYPE_DEBUG))
            {
              *v204 = 0;
              _os_log_debug_impl(&dword_231E60000, plainTextDetectedData3, OS_LOG_TYPE_DEBUG, "Ignoring signature: No sender's name or email.", v204, 2u);
            }

            goto LABEL_127;
          }
        }

        else
        {
          v124 = v114;
          v188 = objc_autoreleasePoolPush();
          v190 = v191 + v98;
          [(SGPlainTextContentCursor *)v99 setPos:?];
          v221 = 0u;
          v222 = 0u;
          v219 = 0u;
          v220 = 0u;
          plainTextDetectedData2 = [v191 plainTextDetectedData];
          v126 = [plainTextDetectedData2 countByEnumeratingWithState:&v219 objects:v241 count:16];
          if (v126)
          {
            v127 = *v220;
            do
            {
              for (i = 0; i != v126; ++i)
              {
                if (*v220 != v127)
                {
                  objc_enumerationMutation(plainTextDetectedData2);
                }

                v129 = *(*(&v219 + 1) + 8 * i);
                range = [v129 range];
                if (range > [(SGPlainTextContentCursor *)v99 pos])
                {
                  range2 = [v129 range];
                  if (range2 >= rangeCopy->location && range2 - rangeCopy->location < rangeCopy->length)
                  {
                    v133 = 1;
                    goto LABEL_142;
                  }
                }
              }

              v126 = [plainTextDetectedData2 countByEnumeratingWithState:&v219 objects:v241 count:16];
            }

            while (v126);
          }

          v133 = 0;
LABEL_142:

          textContent13 = [v191 textContent];
          v135 = v190 + v124;
          if (v190 + v124 == [textContent13 length])
          {
            v136 = 1;
          }

          else
          {
            v137 = [obj length];
            textContent14 = [v191 textContent];
            if (v137 + v190 >= [textContent14 length])
            {
              v136 = 1;
            }

            else
            {
              textContent15 = [v191 textContent];
              if ([textContent15 characterAtIndex:v135] == 10)
              {
                v136 = 1;
              }

              else
              {
                textContent16 = [v191 textContent];
                v142 = [obj stringByAppendingString:@"\n"];
                textContent17 = [v191 textContent];
                v182 = textContent15;
                v144 = textContent16;
                v136 = [textContent16 rangeOfString:v142 options:1 range:{v190, objc_msgSend(textContent17, "length") - v190}] == v190;

                textContent15 = v182;
              }
            }
          }

          v145 = [(SGPlainTextContentCursor *)v99 pos];
          [(SGPlainTextContentCursor *)v99 forwardWhile:&__block_literal_global_114];
          if (((v133 | v136) & 1) != 0 && [(SGPlainTextContentCursor *)v99 pos]> v98)
          {
            v146 = [(SGPlainTextContentCursor *)v99 pos];
            v147 = v113 + v98 - v145;
            if (v147 >= v146 - v145)
            {
              v147 = v146 - v145;
            }

            rangeCopy->location = v145;
            rangeCopy->length = v147;
          }

          objc_autoreleasePoolPop(v188);
        }

        if (rangeCopy->location == location && rangeCopy->length == length)
        {
          goto LABEL_170;
        }

        v148 = objc_autoreleasePoolPush();
        v149 = rangeCopy->location;
        v150 = rangeCopy->length;
        v151 = objc_autoreleasePoolPush();
        v152 = patterns_23118();
        v153 = [v152 regex2ForKey:@"InhumanSig"];
        v154 = [v183 substringWithRange:{v149, v150}];
        v155 = [v153 existsInString:v154];

        objc_autoreleasePoolPop(v151);
        v156 = v155;

        if (v156)
        {
          v157 = sgLogHandle();
          if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
          {
            *v204 = 0;
            _os_log_debug_impl(&dword_231E60000, v157, OS_LOG_TYPE_DEBUG, "Tagging as inhuman after adjusting range: Signature pattern", v204, 2u);
          }

          v158 = sgLogHandle();
          if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
          {
            *v204 = 0;
            _os_log_debug_impl(&dword_231E60000, v158, OS_LOG_TYPE_DEBUG, "Ignoring signature after adjusting range: Inhuman pattern.", v204, 2u);
          }

          *inhumanCopy = 1;
        }

        objc_autoreleasePoolPop(v148);
        if (!v156)
        {
LABEL_170:
          v217 = 0u;
          v218 = 0u;
          v215 = 0u;
          v216 = 0u;
          plainTextDetectedData3 = [v191 plainTextDetectedData];
          v159 = [plainTextDetectedData3 countByEnumeratingWithState:&v215 objects:v240 count:16];
          if (!v159)
          {
LABEL_179:

            v163 = [(SGSignatureDissector *)self findRejectSig:v191];
            v213 = 0u;
            v214 = 0u;
            v211 = 0u;
            v212 = 0u;
            plainTextDetectedData3 = v163;
            v164 = [plainTextDetectedData3 countByEnumeratingWithState:&v211 objects:v239 count:16];
            if (v164)
            {
              v165 = *v212;
              while (2)
              {
                for (j = 0; j != v164; ++j)
                {
                  if (*v212 != v165)
                  {
                    objc_enumerationMutation(plainTextDetectedData3);
                  }

                  v246.location = [*(*(&v211 + 1) + 8 * j) rangeValue];
                  if (NSIntersectionRange(v246, *rangeCopy).length)
                  {
                    v175 = sgLogHandle();
                    if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
                    {
                      *v204 = 0;
                      _os_log_debug_impl(&dword_231E60000, v175, OS_LOG_TYPE_DEBUG, "Ignoring signature: Anti pattern.", v204, 2u);
                    }

                    v13 = 1;
                    v180 = plainTextDetectedData3;
                    goto LABEL_195;
                  }
                }

                v164 = [plainTextDetectedData3 countByEnumeratingWithState:&v211 objects:v239 count:16];
                if (v164)
                {
                  continue;
                }

                break;
              }
            }

            v167 = [SGIdentityName nameWithString:obj];
            v168 = objc_opt_new();
            v169 = rangeCopy->location;
            v170 = rangeCopy->length;
            textContent18 = [v191 textContent];
            v172 = [textContent18 length];
            v173 = rangeCopy->location;
            v174 = rangeCopy->length;

            v175 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{v170 + v169, v172 - (v173 + v174)}];
            quotedRegions2 = [v191 quotedRegions];
            [v175 removeIndexes:quotedRegions2];

            v208[0] = MEMORY[0x277D85DD0];
            v208[1] = 3221225472;
            v208[2] = __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_115;
            v208[3] = &unk_278955CB0;
            v177 = v168;
            v209 = v177;
            v210 = v191;
            [v175 enumerateRangesUsingBlock:v208];
            v178 = [MEMORY[0x277CCACA8] _pas_proxyStringByConcatenatingStrings:v177];

            *v204 = 0;
            v205 = v204;
            v206 = 0x2020000000;
            v207 = 0;
            v179 = [v178 length];
            v199[0] = MEMORY[0x277D85DD0];
            v199[1] = 3221225472;
            v199[2] = __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_2_116;
            v199[3] = &unk_27894F680;
            v200 = obj;
            selfCopy = self;
            v180 = v167;
            v202 = v180;
            v203 = v204;
            [v178 enumerateSubstringsInRange:0 options:v179 usingBlock:{256, v199}];
            v13 = v205[24];
            if ((v13 & 1) == 0)
            {
              v181 = sgLogHandle();
              if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
              {
                *v198 = 0;
                _os_log_debug_impl(&dword_231E60000, v181, OS_LOG_TYPE_DEBUG, "Not ignoring signature.", v198, 2u);
              }
            }

            _Block_object_dispose(v204, 8);
LABEL_195:

            goto LABEL_196;
          }

          v160 = 0;
          v161 = *v216;
LABEL_172:
          v162 = 0;
          while (1)
          {
            if (*v216 != v161)
            {
              objc_enumerationMutation(plainTextDetectedData3);
            }

            if ([*(*(&v215 + 1) + 8 * v162) matchType] == 2 && ++v160 > 3)
            {
              break;
            }

            if (v159 == ++v162)
            {
              v159 = [plainTextDetectedData3 countByEnumeratingWithState:&v215 objects:v240 count:16];
              if (v159)
              {
                goto LABEL_172;
              }

              goto LABEL_179;
            }
          }

LABEL_127:
          v13 = 1;
LABEL_196:

          goto LABEL_197;
        }
      }

      v13 = 1;
LABEL_197:

      goto LABEL_198;
    }

    familyName = [v185 familyName];
    if (familyName)
    {
      formattedName = [v185 formattedName];
      v42 = formattedName == 0;

      if (v42)
      {
        goto LABEL_44;
      }

      if (v39 >= 0x14)
      {
        v43 = 20;
      }

      else
      {
        v43 = v39;
      }

      if (v39 >= 0x14)
      {
        v44 = v39 - 20;
      }

      else
      {
        v44 = 0;
      }

      textContent19 = [v191 textContent];
      formattedName2 = [v185 formattedName];
      v47 = [textContent19 rangeOfString:formattedName2 options:0 range:{v44, v38 + v43}] == 0x7FFFFFFFFFFFFFFFLL;

      if (v47)
      {
        v48 = objc_alloc(MEMORY[0x277CCACA8]);
        givenName = [v185 givenName];
        familyName2 = [v185 familyName];
        obj = [v48 initWithFormat:@"%@ %@", givenName, familyName2];

        textContent20 = [v191 textContent];
        LOBYTE(v48) = [textContent20 rangeOfString:obj options:0 range:{v44, v38 + v43}] == 0x7FFFFFFFFFFFFFFFLL;

        if (v48)
        {
          v52 = objc_alloc(MEMORY[0x277CCACA8]);
          familyName3 = [v185 familyName];
          givenName2 = [v185 givenName];
          v55 = [v52 initWithFormat:@"%@ %@", familyName3, givenName2];

          textContent21 = [v191 textContent];
          v57 = [textContent21 rangeOfString:v55 options:0 range:{v44, v38 + v43}] == 0x7FFFFFFFFFFFFFFFLL;

          if (v57)
          {

            goto LABEL_43;
          }

          v140 = sgLogHandle();
          if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
          {
            *v204 = 0;
            _os_log_debug_impl(&dword_231E60000, v140, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's name (last first).", v204, 2u);
          }
        }

        else
        {
          v104 = sgLogHandle();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
          {
            *v204 = 0;
            _os_log_debug_impl(&dword_231E60000, v104, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's name (first last).", v204, 2u);
          }
        }
      }

      else
      {
        obj = sgLogHandle();
        if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
        {
          *v204 = 0;
          _os_log_debug_impl(&dword_231E60000, obj, OS_LOG_TYPE_DEBUG, "Ignoring signature: Recipient's name (composite).", v204, 2u);
        }
      }

LABEL_150:
      v13 = 1;
LABEL_198:

      v59 = v185;
LABEL_199:

      goto LABEL_200;
    }

LABEL_43:

    goto LABEL_44;
  }

  v8 = sgLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v8, OS_LOG_TYPE_DEFAULT, "Can't meaningfully call shouldIgnoreSignature on an entity with no detected signature.", buf, 2u);
  }

LABEL_12:

  v13 = 1;
LABEL_13:
  objc_autoreleasePoolPop(context);

  return v13;
}

void __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke(uint64_t a1, unint64_t a2, size_t size)
{
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = a2 - v5;
  if (a2 > v5)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) textContent];
    v9 = [v8 substringWithRange:{*(*(*(a1 + 48) + 8) + 24), v6}];
    [v7 addObject:v9];

    *(*(*(a1 + 48) + 8) + 24) += v6;
  }

  v10 = malloc_type_calloc(1uLL, size, 0x7C0865A5uLL);
  if (!v10)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v12);
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v10 length:size encoding:1 freeWhenDone:1];
  if (!v11)
  {
    __assert_rtn("[SGSignatureDissector shouldIgnoreSignature:signatureRange:isInhuman:]_block_invoke", "SGSignatureDissector.m", 989, "sub != nil");
  }

  v13 = v11;
  [*(a1 + 32) addObject:v11];
  *(*(*(a1 + 48) + 8) + 24) += [v13 length];
}

void __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_115(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 40) textContent];
  v9 = [v8 substringWithRange:{a2, a3}];

  objc_autoreleasePoolPop(v7);
  [v6 addObject:v9];
}

void __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_2_116(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = a2;
  if (a4 && a4 <= 2 * [*(a1 + 32) length])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [objc_opt_class() singleLineSignatureLeadingCharacterSet];
    v13 = [v10 stringByTrimmingCharactersInSet:v12];

    v14 = [*(a1 + 48) firstname];
    if ([v13 caseInsensitiveCompare:v14])
    {
      v15 = [*(a1 + 48) surname];
      if ([v13 caseInsensitiveCompare:v15])
      {
        v16 = [SGNames unnormalizedNamesApproximatelyMatch:*(a1 + 32) and:v13];

        if (!v16)
        {
LABEL_12:

          objc_autoreleasePoolPop(v11);
          goto LABEL_13;
        }

LABEL_9:
        v17 = sgLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *v18 = 0;
          _os_log_debug_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEBUG, "Ignoring signature: Sender's name after sig.", v18, 2u);
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;
        *a7 = 1;
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

LABEL_13:
}

uint64_t __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_3(uint64_t a1, int a2, int a3)
{
  if (a2 == 10)
  {
    return a3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t __71__SGSignatureDissector_shouldIgnoreSignature_signatureRange_isInhuman___block_invoke_103(uint64_t a1, int a2, int a3)
{
  if (a2 == 10)
  {
    return 0;
  }

  else
  {
    return a3 ^ 1u;
  }
}

- (BOOL)_paragraphWithContent:(id)content range:(_NSRange)range exceedsLineLimit:(unint64_t)limit orCharacterLimit:(unint64_t)characterLimit
{
  length = range.length;
  location = range.location;
  contentCopy = content;
  if (length <= characterLimit)
  {
    if (!length)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }

    v12 = 0;
    while ([contentCopy characterAtIndex:location] != 10 || ++v12 <= limit)
    {
      ++location;
      if (!--length)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = 1;
LABEL_9:

  return v11;
}

- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  v11 = objc_autoreleasePoolPush();
  textContent = [messageCopy textContent];
  v13 = [textContent length];

  if (!v13)
  {
    goto LABEL_27;
  }

  if (([MEMORY[0x277D02098] detectContacts] & 1) == 0)
  {
    v19 = sgLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
LABEL_26:

      goto LABEL_27;
    }

    *buf = 0;
    v20 = "Skipping signature dissector: detectContacts is OFF";
LABEL_29:
    _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, v20, buf, 2u);
    goto LABEL_26;
  }

  v33 = 0uLL;
  [entityCopy releaseDissectorLock];
  if (-[NSNumber BOOLValue](self->_ignoreDataDetectorsForTesting, "BOOLValue") || [messageCopy detectedDataSignatureRange] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [(SGSignatureDissector *)self signatureRange:messageCopy];
    *&v33 = v14;
    *(&v33 + 1) = v15;
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v14;
      v17 = v15;
      v18 = sgLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_231E60000, v18, OS_LOG_TYPE_DEBUG, "Signature found by alternative algorithms.", buf, 2u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    v21 = sgLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v21, OS_LOG_TYPE_DEBUG, "Signature found by DataDetectors.", buf, 2u);
    }

    detectedDataSignatureRange = [messageCopy detectedDataSignatureRange];
    *&v33 = detectedDataSignatureRange;
    *(&v33 + 1) = v23;
    if (detectedDataSignatureRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = detectedDataSignatureRange;
      v17 = v23;
LABEL_18:
      v25 = objc_autoreleasePoolPush();
      v26 = sgLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v31 = v17 + v16;
        textContent2 = [messageCopy textContent];
        v30 = [textContent2 substringWithRange:{v16, v17}];
        *buf = 134218498;
        v35 = v16;
        v36 = 2048;
        v37 = v31;
        v38 = 2112;
        v39 = v30;
        _os_log_debug_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEBUG, "Sig range %lu-%lu (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v32 = 0;
      if ([(SGSignatureDissector *)self shouldIgnoreSignature:messageCopy signatureRange:&v33 isInhuman:&v32])
      {
        v33 = xmmword_232106CE0;
      }

      goto LABEL_22;
    }
  }

  v24 = sgLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEBUG, "No signature found", buf, 2u);
  }

  v32 = 0;
LABEL_22:
  [entityCopy acquireDissectorLock];
  [entityCopy setPlainTextSigRange:v33];
  if (v32 == 1)
  {
    v27 = sgLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v27, OS_LOG_TYPE_DEBUG, "Tagging as inhuman after adjusting range: Signature pattern", buf, 2u);
    }

    inhuman = [MEMORY[0x277D01FA0] inhuman];
    [entityCopy addTag:inhuman];

    v19 = sgLogHandle();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v20 = "Ignoring signature after adjusting range: Inhuman pattern.";
    goto LABEL_29;
  }

LABEL_27:
  objc_autoreleasePoolPop(v11);
}

- (_NSRange)rangeOfSenderNameComponents:(id)components withFullname:(id)fullname inSubstring:(id)substring
{
  v30 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  substringCopy = substring;
  v25 = 0u;
  v26 = 0u;
  if ([SGNames isProbablyShortCJKName:fullname])
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  v27 = 0uLL;
  v28 = 0uLL;
  v10 = componentsCopy;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    v24 = v9;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v25 + 1) + 8 * v14);
      if ([v15 length] >= v9)
      {
        v16 = [substringCopy rangeOfString:v15 options:1];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v16;
          v19 = v17;
          if (v16 < 4)
          {
            break;
          }

          v20 = 0;
          v21 = v16 - 1;
          do
          {
            if (!v21)
            {
              break;
            }

            if ([substringCopy characterAtIndex:v21] == 10)
            {
              goto LABEL_21;
            }

            --v21;
            ++v20;
          }

          while (v20 < 3);
          v9 = v24;
          if ([substringCopy characterAtIndex:v18 - 1] == 32)
          {
            break;
          }
        }
      }

      if (++v14 == v12)
      {
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v19 = 0;
        v18 = 0x7FFFFFFFFFFFFFFFLL;
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v19 = 0;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_21:

  v22 = v18;
  v23 = v19;
  result.length = v23;
  result.location = v22;
  return result;
}

- (_NSRange)rangeOfSenderName:(id)name inRange:(_NSRange)range restrictLength:(BOOL)length forMessage:(id)message
{
  lengthCopy = length;
  length = range.length;
  location = range.location;
  nameCopy = name;
  messageCopy = message;
  v13 = objc_autoreleasePoolPush();
  textContent = [messageCopy textContent];
  v15 = [textContent substringWithRange:{location, length}];

  objc_autoreleasePoolPop(v13);
  if (lengthCopy && (v16 = objc_autoreleasePoolPush(), [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-_ "], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "stringByTrimmingCharactersInSet:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, objc_autoreleasePoolPop(v16), v19 = objc_msgSend(v18, "length"), v18, v19 > 0x96))
  {
    v20 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v22 = [SGNames stripHonorifics:nameCopy];
    v23 = [SGIdentityName nameWithString:v22];
    v24 = objc_opt_new();
    firstname = [v23 firstname];

    if (firstname)
    {
      v26 = objc_autoreleasePoolPush();
      firstname2 = [v23 firstname];
      v28 = [firstname2 componentsSeparatedByString:@" "];

      objc_autoreleasePoolPop(v26);
      [v24 addObjectsFromArray:v28];
    }

    surname = [v23 surname];

    if (surname)
    {
      v30 = objc_autoreleasePoolPush();
      surname2 = [v23 surname];
      v32 = [surname2 componentsSeparatedByString:@" "];

      objc_autoreleasePoolPop(v30);
      [v24 addObjectsFromArray:v32];
    }

    middlename = [v23 middlename];

    if (middlename)
    {
      v34 = objc_autoreleasePoolPush();
      middlename2 = [v23 middlename];
      v36 = [middlename2 componentsSeparatedByString:@" "];

      objc_autoreleasePoolPop(v34);
      [v24 addObjectsFromArray:v36];
    }

    v37 = [(SGSignatureDissector *)self rangeOfSenderNameComponents:v24 withFullname:v22 inSubstring:v15];
    v20 = v38;
    if (v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      firstname3 = [v23 firstname];

      if (firstname3)
      {
        firstname4 = [v23 firstname];
        v41 = [SGNicknames nicknamesForName:firstname4];

        allObjects = [v41 allObjects];
        selfCopy = self;
        v44 = allObjects;
        v21 = [(SGSignatureDissector *)selfCopy rangeOfSenderNameComponents:allObjects withFullname:v22 inSubstring:v15];
        v20 = v45;
      }

      else
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v21 = v37;
    }
  }

  v46 = v21;
  v47 = v20;
  result.length = v47;
  result.location = v46;
  return result;
}

- (id)authorFirstname:(id)firstname
{
  v3 = [(SGSignatureDissector *)self authorName:firstname];
  if (v3)
  {
    v4 = [SGIdentityName nameWithString:v3];
    firstname = [v4 firstname];
    if ([firstname length])
    {
      firstname2 = [v4 firstname];
    }

    else
    {
      firstname2 = v3;
    }

    v7 = firstname2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)authorName:(id)name
{
  author = [name author];
  displayName = [author displayName];

  return displayName;
}

- (_NSRange)trailingSenderNameLineRange:(id)range
{
  v46[1] = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  selfCopy = self;
  v40 = [(SGSignatureDissector *)self authorName:rangeCopy];
  if (![v40 length])
  {
    goto LABEL_10;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [[SGPlainTextContentCursor alloc] initWithMailMessage:rangeCopy];
  [(SGPlainTextContentCursor *)v6 seekToEnd];
  [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_73_23190];
  v7 = [(SGPlainTextContentCursor *)v6 pos];
  [(SGPlainTextContentCursor *)v6 backwardToString:@"\n\n" consume:0];
  if ([(SGPlainTextContentCursor *)v6 pos]== v7)
  {
    [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_78];
  }

  if ([(SGPlainTextContentCursor *)v6 pos]== v7)
  {
    goto LABEL_9;
  }

  v8 = [(SGPlainTextContentCursor *)v6 pos];
  textContent = [rangeCopy textContent];
  v10 = [textContent characterAtIndex:v7];

  if (v10 == 65306 || v10 == 58)
  {
    [(SGPlainTextContentCursor *)v6 backward];
    [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_80];
    v7 = [(SGPlainTextContentCursor *)v6 pos];
    [(SGPlainTextContentCursor *)v6 backwardToString:@"\n\n" consume:0];
    v8 = [(SGPlainTextContentCursor *)v6 pos];
  }

  v11 = v7 - v8;
  if (v7 == v8)
  {
LABEL_9:

    objc_autoreleasePoolPop(v5);
LABEL_10:
    v12 = 0;
    rangeValue = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  [(SGPlainTextContentCursor *)v6 backward];
  [(SGPlainTextContentCursor *)v6 backwardWhile:&__block_literal_global_82];
  v16 = [(SGPlainTextContentCursor *)v6 pos];
  [(SGPlainTextContentCursor *)v6 backwardToString:@"\n" consume:0];
  v17 = [(SGPlainTextContentCursor *)v6 pos];
  context = v5;
  v38 = rangeCopy;
  if ([(SGPlainTextContentCursor *)v6 pos]< 2)
  {
    goto LABEL_17;
  }

  textContent2 = [rangeCopy textContent];
  if ([textContent2 characterAtIndex:{-[SGPlainTextContentCursor pos](v6, "pos") - 1}] != 10)
  {

    goto LABEL_17;
  }

  textContent3 = [rangeCopy textContent];
  v20 = [textContent3 characterAtIndex:{-[SGPlainTextContentCursor pos](v6, "pos") - 2}];

  if (v20 != 10)
  {
LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v21 = v16 - v17 + 1;
LABEL_18:
  v22 = [MEMORY[0x277CCAE60] valueWithRange:{v8, v11 + 1, context}];
  v46[0] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v24 = [v23 mutableCopy];

  if (v21)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = [MEMORY[0x277CCAE60] valueWithRange:{v17, v21}];
    [v24 addObject:v26];

    objc_autoreleasePoolPop(v25);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v27 = v24;
  v28 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v42;
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v41 + 1) + 8 * i);
        v33 = objc_autoreleasePoolPush();
        rangeValue = [v32 rangeValue];
        v12 = v34;
        v35 = [(SGSignatureDissector *)selfCopy rangeOfSenderName:v40 inRange:rangeValue restrictLength:v34 forMessage:1, v38];
        objc_autoreleasePoolPop(v33);
        if (v35 != 0x7FFFFFFFFFFFFFFFLL)
        {

          objc_autoreleasePoolPop(contexta);
          goto LABEL_30;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(contexta);
  v12 = 0;
  rangeValue = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
  rangeCopy = v38;
LABEL_11:

  v14 = rangeValue;
  v15 = v12;
  result.length = v15;
  result.location = v14;
  return result;
}

uint64_t __52__SGSignatureDissector_trailingSenderNameLineRange___block_invoke(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 == 10)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (_NSRange)miniSignatureRange:(id)range
{
  v28 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  v5 = [(SGSignatureDissector *)self trailingSenderNameLineRange:rangeCopy];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    plainTextDetectedData = [rangeCopy plainTextDetectedData];
    v10 = [plainTextDetectedData countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(plainTextDetectedData);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          range = [v14 range];
          if (range >= v7 && range - v7 < v8)
          {
            matchType = [v14 matchType];
            if (matchType <= 5 && matchType != 4)
            {
              v19 = v7;
              v20 = v8;
              goto LABEL_21;
            }
          }
        }

        v11 = [plainTextDetectedData countByEnumeratingWithState:&v23 objects:v27 count:16];
        v20 = 0;
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      while (v11);
    }

    else
    {
      v20 = 0;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_21:
  }

  else
  {
    v20 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v19;
  v22 = v20;
  result.length = v22;
  result.location = v21;
  return result;
}

- (_NSRange)hmmSignatureRangeWithContent:(id)content detectedData:(id)data quotedRegions:(id)regions authorName:(id)name
{
  v132 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  dataCopy = data;
  regionsCopy = regions;
  nameCopy = name;
  if (!contentCopy)
  {
    v55 = 0;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_107;
  }

  v106 = contentCopy;
  v107 = regionsCopy;
  v109 = _PASTrimTrailingWhitespace();
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v105 = dataCopy;
  v14 = dataCopy;
  v15 = [v14 countByEnumeratingWithState:&v125 objects:v131 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v126;
    do
    {
      v18 = 0;
      do
      {
        if (*v126 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v125 + 1) + 8 * v18);
        matchType = [v19 matchType];
        if (matchType <= 3)
        {
          v21 = 4;
          if (matchType != 3)
          {
            v21 = 0;
          }

          if (matchType == 1)
          {
            v21 = 1;
          }

          if (matchType)
          {
            v22 = v21;
          }

          else
          {
            v22 = 2;
          }

          goto LABEL_15;
        }

        if ((matchType - 6) >= 4 && matchType != 4)
        {
          if (matchType == 5)
          {
            v22 = 3;
          }

          else
          {
            v22 = 0;
          }

LABEL_15:
          range = [v19 range];
          v6 = v22 | v6 & 0xFFFFFFFF00000000;
          v25 = [SGSlice sliceWithType:v6 range:range, v24];
          [v13 addObject:v25];
        }

        ++v18;
      }

      while (v16 != v18);
      v27 = [v14 countByEnumeratingWithState:&v125 objects:v131 count:16];
      v16 = v27;
    }

    while (v27);
  }

  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __91__SGSignatureDissector_hmmSignatureRangeWithContent_detectedData_quotedRegions_authorName___block_invoke;
  v123[3] = &unk_278954840;
  v28 = v13;
  v124 = v28;
  [v107 enumerateRangesUsingBlock:v123];
  v29 = objc_opt_new();
  v110 = v28;
  v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:objc_msgSend_count(v28)];
  v31 = 0;
  do
  {
    v111 = v31;
    v32 = slicePrecedence[v31];
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v33 = v110;
    v34 = [v33 countByEnumeratingWithState:&v119 objects:v130 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v120;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v120 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v119 + 1) + 8 * i);
          if (v32 == [v38 type])
          {
            range2 = [v38 range];
            v41 = v40;
            if (([v29 intersectsIndexesInRange:{range2, v40}] & 1) == 0)
            {
              [v29 addIndexesInRange:{range2, v41}];
              [v30 addObject:v38];
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v119 objects:v130 count:16];
      }

      while (v35);
    }

    v31 = v111 + 1;
  }

  while (v111 != 5);
  v42 = v30;

  [v42 sortUsingSelector:sel_compare_];
  v117[0] = 0;
  *v118 = 0u;
  v117[1] = 256;
  v43 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
  if (!v43)
  {
    goto LABEL_112;
  }

  v118[0] = v43;
  v44 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
  if (!v44)
  {
    goto LABEL_112;
  }

  v118[1] = v44;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v45 = v42;
  v46 = [v45 countByEnumeratingWithState:&v113 objects:v129 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v114;
LABEL_43:
    v50 = 0;
    while (1)
    {
      if (*v114 != v49)
      {
        objc_enumerationMutation(v45);
      }

      v51 = *(*(&v113 + 1) + 8 * v50);
      start = [v51 start];
      if (start >= [v109 length])
      {
        break;
      }

      if ([v51 start] > v48)
      {
        tokenize(v109, v117, v48, [v51 start] - v48, nameCopy);
      }

      type = [v51 type];
      if (type >= 6u)
      {
        v54 = 7;
      }

      else
      {
        v54 = type + 12;
      }

      emitToken(v117, v54, [v51 start]);
      v48 = [v51 end];
      if (v47 == ++v50)
      {
        v47 = [v45 countByEnumeratingWithState:&v113 objects:v129 count:16];
        if (v47)
        {
          goto LABEL_43;
        }

        break;
      }
    }
  }

  else
  {
    v48 = 0;
  }

  v57 = v109;
  if (v48 < [v109 length])
  {
    tokenize(v109, v117, v48, [v109 length] - v48, nameCopy);
  }

  v58 = v118[0];
  v59 = v117[0];
  if (viterbi_hmmOnceToken != -1)
  {
    dispatch_once(&viterbi_hmmOnceToken, &__block_literal_global_246_23195);
  }

  v60 = 0;
  v61 = atomic_load(viterbi_hmmLoaded);
  if (!v59 || (v61 & 1) == 0)
  {
    goto LABEL_79;
  }

  v62 = malloc_type_malloc(8 * v59, 0x100004000313F17uLL);
  v63 = malloc_type_malloc(8 * v59, 0x100004000313F17uLL);
  v64 = malloc_type_calloc(v59, 1uLL, 0x100004077774924uLL);
  if (!v64)
  {
LABEL_112:
    v104 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v104);
  }

  v65 = v64;
  v60 = 0;
  if (v62 && v63)
  {
    *v62 = *&qword_280D94290 + hmm[*v58];
    *v63 = *&qword_280D94298 + hmm[*v58 + 18];
    *v64 = 2;
    if (v59 >= 2)
    {
      v66 = *&qword_280D94270;
      v67 = *algn_280D94278;
      v68 = v59 - 1;
      v69 = *&qword_280D94280;
      v70 = unk_280D94288;
      v71 = v64 + 1;
      v72 = v58 + 1;
      v73 = v62;
      v74 = v63;
      do
      {
        v76 = *v72++;
        v75 = v76;
        if (v76 >= 0x13uLL)
        {
          __assert_rtn("viterbi", "SGSignatureDissector.m", 1413, "obs <= NUM_TOKEN_TYPES");
        }

        v77 = *v73;
        v78 = hmm[v75];
        v79 = v66 + *v73 + v78;
        v80 = v78 + v69 + *v74;
        if (v80 > v79)
        {
          *v71 |= 1u;
          v77 = *v73;
          v79 = v80;
        }

        v73[1] = v79;
        v81 = hmm[v75 + 18];
        v82 = v67 + v77 + v81;
        v83 = v81 + v70 + *v74;
        if (v83 > v82)
        {
          *v71 |= 2u;
          v82 = v83;
        }

        v74[1] = v82;
        ++v74;
        ++v71;
        ++v73;
        --v68;
      }

      while (v68);
    }

    v84 = malloc_type_malloc(v59, 0x100004077774924uLL);
    v60 = v84;
    if (v84 && v59 >= 1)
    {
      LOBYTE(v85) = v63[v59 - 1] > v62[v59 - 1];
      v86 = (v59 & 0x7FFFFFFF) - 1;
      do
      {
        v84[v86] = v85 & 1;
        v85 = (v65[v86] >> (v85 & 1)) & 1;
        v87 = v86-- + 1;
      }

      while (v87 > 1);
    }
  }

  free(v62);
  free(v63);
  free(v65);
  v57 = v109;
LABEL_79:
  v88 = v117[0];
  if (!v117[0])
  {
    v55 = 0;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    dataCopy = v105;
    contentCopy = v106;
    regionsCopy = v107;
    goto LABEL_106;
  }

  v89 = 0;
  dataCopy = v105;
  contentCopy = v106;
  regionsCopy = v107;
  while (1)
  {
    v90 = (v89 + 1);
    if (v60[v89])
    {
      break;
    }

    ++v89;
    if (v117[0] == v90)
    {
      goto LABEL_105;
    }
  }

  if (LODWORD(v117[0]) - v89 > 39)
  {
    v91 = sgLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v91, OS_LOG_TYPE_DEBUG, "HMM confused, too many tokens in signature", buf, 2u);
    }

    goto LABEL_105;
  }

  if (v117[0] <= (v89 + 1))
  {
LABEL_98:
    v56 = *(v118[1] + v89);
    v57 = v109;
    v96 = [v109 rangeOfString:@"\n" options:6 range:{0, v56}];
    if (v97)
    {
      if ((v56 - v96) >= 5)
      {
        v98 = [v109 rangeOfString:@"\n" options:2 range:{v56, objc_msgSend(v109, "length") - v56}];
        if (v99)
        {
          v56 = v98 + 1;
        }
      }

      v100 = [v109 length];
      v55 = v100 - v56;
      if (v100 == v56)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_106;
    }

LABEL_105:
    v55 = 0;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_106;
  }

  v92 = 0;
  while (*(v118[0] + v90) != 17)
  {
LABEL_97:
    if (v88 <= ++v90)
    {
      goto LABEL_98;
    }
  }

  v93 = *(v118[1] + v90);
  v94 = (v90 + 1);
  if (v88 <= v94)
  {
    v95 = [v109 length];
  }

  else
  {
    v95 = *(v118[1] + v94);
  }

  v92 += v95 - v93;
  if (v92 <= 0x100)
  {
    v88 = v117[0];
    goto LABEL_97;
  }

  v103 = sgLogHandle();
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_231E60000, v103, OS_LOG_TYPE_DEBUG, "HMM confused, too much quoting in signature", buf, 2u);
  }

  v55 = 0;
  v56 = 0x7FFFFFFFFFFFFFFFLL;
  v57 = v109;
LABEL_106:
  free(v60);
  free(v118[0]);
  free(v118[1]);

LABEL_107:
  v101 = v56;
  v102 = v55;
  result.length = v102;
  result.location = v101;
  return result;
}

void __91__SGSignatureDissector_hmmSignatureRangeWithContent_detectedData_quotedRegions_authorName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [SGSlice sliceWithType:5 range:a2, a3];
  [v3 addObject:v4];
}

- (_NSRange)hmmSignatureRange:(id)range
{
  rangeCopy = range;
  textContent = [rangeCopy textContent];
  plainTextDetectedData = [rangeCopy plainTextDetectedData];
  quotedRegions = [rangeCopy quotedRegions];
  v8 = [(SGSignatureDissector *)self authorFirstname:rangeCopy];

  v9 = [(SGSignatureDissector *)self hmmSignatureRangeWithContent:textContent detectedData:plainTextDetectedData quotedRegions:quotedRegions authorName:v8];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)hmmPlausibleSignatureRange:(id)range
{
  v37 = *MEMORY[0x277D85DE8];
  rangeCopy = range;
  v5 = [(SGSignatureDissector *)self findValedictionCommencedSignatureRanges:rangeCopy];
  firstObject = [v5 firstObject];
  rangeValue = [firstObject rangeValue];
  v9 = v8;

  if (v9)
  {
    context = objc_autoreleasePoolPush();
    textContent = [rangeCopy textContent];
    v11 = [textContent substringToIndex:rangeValue + v9];

    quotedRegions = [rangeCopy quotedRegions];
    v30 = [quotedRegions indexesInRange:0 options:objc_msgSend(v11 passingTest:{"length"), 0, &__block_literal_global_23237}];

    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    plainTextDetectedData = [rangeCopy plainTextDetectedData];
    v15 = [v13 initWithCapacity:objc_msgSend_count(plainTextDetectedData)];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    plainTextDetectedData2 = [rangeCopy plainTextDetectedData];
    v17 = [plainTextDetectedData2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(plainTextDetectedData2);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          range = [v21 range];
          [v21 range];
          if (v23 + range <= [v11 length])
          {
            [v15 addObject:v21];
          }
        }

        v18 = [plainTextDetectedData2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }

    v24 = [(SGSignatureDissector *)self authorFirstname:rangeCopy];
    v25 = [(SGSignatureDissector *)self hmmSignatureRangeWithContent:v11 detectedData:v15 quotedRegions:v30 authorName:v24];
    v27 = v26;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v27 = 0;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v28 = v25;
  v29 = v27;
  result.length = v29;
  result.location = v28;
  return result;
}

- (_NSRange)findSignaturePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [(SGSignatureDissector *)self findValediction:prefixCopy];
  if (v6)
  {
    rangeValue = v5;
    v8 = v6;
  }

  else
  {
    v9 = patterns_23118();
    v10 = [v9 regex2ForKey:@"SymbolicSig"];
    v11 = [(SGSignatureDissector *)self findSignaturePrefixesInMessage:prefixCopy withSignaturePrefixes:v10];
    firstObject = [v11 firstObject];
    rangeValue = [firstObject rangeValue];
    v8 = v13;
  }

  v14 = rangeValue;
  v15 = v8;
  result.length = v15;
  result.location = v14;
  return result;
}

- (id)findRejectSig:(id)sig
{
  sigCopy = sig;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__23243;
  v20 = __Block_byref_object_dispose__23244;
  v21 = objc_opt_new();
  quotedRegions = [sigCopy quotedRegions];
  textContent = [sigCopy textContent];
  if ([textContent length])
  {
    v6 = patterns_23118();
    v7 = [v6 regex2ForKey:@"RejetedSig/F"];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __38__SGSignatureDissector_findRejectSig___block_invoke;
    v13 = &unk_27894F5F0;
    v14 = quotedRegions;
    v15 = &v16;
    [v7 enumerateMatchesInString:textContent ngroups:0 block:&v10];
  }

  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

uint64_t __38__SGSignatureDissector_findRejectSig___block_invoke(uint64_t a1, void *a2)
{
  if (([*(a1 + 32) intersectsIndexesInRange:{*a2, a2[1]}] & 1) == 0)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [MEMORY[0x277CCAE60] valueWithRange:{*a2, a2[1]}];
    [v4 addObject:v5];
  }

  return 1;
}

- (_NSRange)findValediction:(id)valediction
{
  valedictionCopy = valediction;
  v5 = patterns_23118();
  v6 = [v5 regex2ForKey:@"ValedictionSig/F"];
  v7 = [(SGSignatureDissector *)self findSignaturePrefixesInMessage:valedictionCopy withSignaturePrefixes:v6];

  firstObject = [v7 firstObject];
  rangeValue = [firstObject rangeValue];
  v11 = v10;

  v12 = rangeValue;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)findSignaturePrefixesInMessage:(id)message withSignaturePrefixes:(id)prefixes
{
  messageCopy = message;
  prefixesCopy = prefixes;
  textContent = [messageCopy textContent];
  if (textContent)
  {
    v8 = objc_opt_new();
    quotedRegions = [messageCopy quotedRegions];
    v13 = textContent;
    v14 = prefixesCopy;
    v15 = quotedRegions;
    v16 = v8;
    v10 = quotedRegions;
    _PASEnumerateSimpleLinesInString();
    v11 = v16;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

uint64_t __77__SGSignatureDissector_findSignaturePrefixesInMessage_withSignaturePrefixes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__SGSignatureDissector_findSignaturePrefixesInMessage_withSignaturePrefixes___block_invoke_2;
  v9[3] = &unk_27894F5A0;
  v12 = a2;
  v13 = a3;
  v7 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v7 enumerateMatchesInString:v6 ngroups:0 block:v9];

  return 1;
}

uint64_t __77__SGSignatureDissector_findSignaturePrefixesInMessage_withSignaturePrefixes___block_invoke_2(uint64_t a1, void *a2)
{
  if (([*(a1 + 32) intersectsIndexesInRange:{*a2 + *(a1 + 48), a2[1] + 1}] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCAE60] valueWithRange:{*a2 + *(a1 + 48), a2[1]}];
    [v4 addObject:v5];
  }

  return 1;
}

- (id)findValedictionCommencedSignatureRanges:(id)ranges
{
  rangesCopy = ranges;
  textContent = [rangesCopy textContent];
  if (textContent)
  {
    v5 = objc_opt_new();
    quotedRegions = [rangesCopy quotedRegions];
    v10 = textContent;
    v11 = quotedRegions;
    v12 = v5;
    v7 = quotedRegions;
    _PASEnumerateSimpleLinesInString();
    v8 = v12;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

uint64_t __64__SGSignatureDissector_findValedictionCommencedSignatureRanges___block_invoke(id *a1, NSRange range1)
{
  length = v2;
  if (v5)
  {
    v20.location = v6 - 1;
    v19.location = v6;
    v19.length = length;
    v20.length = 1;
    v7 = NSUnionRange(v19, v20);
    location = v7.location;
    length = v7.length;
  }

  else
  {
    location = 0;
  }

  v9 = [a1[4] substringWithRange:{location, length}];
  v10 = patterns_23118();
  v11 = [v10 regex2ForKey:@"RelaxedSig/F"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SGSignatureDissector_findValedictionCommencedSignatureRanges___block_invoke_2;
  v13[3] = &unk_27894F550;
  v17 = location;
  v18 = length;
  v14 = a1[5];
  v15 = a1[4];
  v16 = a1[6];
  [v11 enumerateMatchesInString:v9 ngroups:0 block:v13];

  return 1;
}

uint64_t __64__SGSignatureDissector_findValedictionCommencedSignatureRanges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = *(a1 + 56) + *a2;
  if ([*(a1 + 32) intersectsIndexesInRange:{v4, v3}])
  {
    return 1;
  }

  v5 = [*(a1 + 40) substringFromIndex:v4 + v3];
  if ([v5 length] < 4)
  {
    goto LABEL_53;
  }

  v6 = v5;
  v7 = objc_opt_self();

  if (!v7)
  {
    goto LABEL_39;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *buffer = 0u;
  v32 = 0u;
  Length = CFStringGetLength(v6);
  theString = v6;
  v42 = 0;
  v43 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  CStringPtr = 0;
  v40 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  }

  v44 = 0;
  v45 = 0;
  v41 = CStringPtr;
  if (Length < 1)
  {
LABEL_39:

    goto LABEL_52;
  }

  v29 = v5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (2)
  {
    v30 = v13;
    v14 = 0;
    v15 = -v12;
    v16 = v12 + 64;
    v28 = v12;
    while (1)
    {
      if (v12 >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v12;
      }

      v18 = v43;
      if (v43 <= v12)
      {
        goto LABEL_20;
      }

      if (v40)
      {
        v19 = &v40[v42];
LABEL_15:
        v20 = v19[v12];
        goto LABEL_18;
      }

      if (!v41)
      {
        if (v45 <= v12 || v11 > v12)
        {
          v22 = v17 + v15;
          v23 = v16 - v17;
          v24 = v12 - v17;
          v25 = v24 + 64;
          if (v24 + 64 >= v43)
          {
            v25 = v43;
          }

          v44 = v24;
          v45 = v25;
          if (v43 >= v23)
          {
            v18 = v23;
          }

          v46.location = v24 + v42;
          v46.length = v18 + v22;
          CFStringGetCharacters(theString, v46, buffer);
          v11 = v44;
        }

        v19 = &buffer[-v11];
        goto LABEL_15;
      }

      v20 = v41[v42 + v12];
LABEL_18:
      if (v20 != 13)
      {
        break;
      }

LABEL_21:
      ++v12;
      --v15;
      ++v16;
      if (Length == v12)
      {

        v13 = v30;
        if (v14 >= 1)
        {
          goto LABEL_41;
        }

LABEL_47:
        v12 = Length;
        goto LABEL_48;
      }
    }

    if (v20 != 10)
    {
LABEL_20:
      ++v14;
      goto LABEL_21;
    }

    v13 = v30;
    if (!v14 && v30)
    {
      goto LABEL_57;
    }

    if (v14 > 150)
    {

      Length = v28;
LABEL_41:
      if (v14 >= 0x97)
      {
        v12 = v28;
      }

      else
      {
        v12 = Length;
      }

      if (v14 < 0x97)
      {
        ++v13;
      }
    }

    else
    {
      if (v30 != 4)
      {
        v13 = v30 + 1;
        if (++v12 != Length)
        {
          continue;
        }

        goto LABEL_47;
      }

      v13 = 5;
LABEL_57:
    }

    break;
  }

LABEL_48:
  v5 = v29;
  if (v13 <= 1)
  {
LABEL_52:
  }

  else
  {

    if (v12 && ([*(a1 + 32) intersectsIndexesInRange:{v4, v12 + v3}] & 1) == 0)
    {
      v26 = *(a1 + 48);
      v6 = [MEMORY[0x277CCAE60] valueWithRange:{v4, v12 + v3}];
      [v26 addObject:v6];
      goto LABEL_52;
    }
  }

LABEL_53:

  return 1;
}

- (_NSRange)signatureRange:(id)range
{
  rangeCopy = range;
  htmlParser = [rangeCopy htmlParser];
  signatureRegions = [htmlParser signatureRegions];
  if (objc_msgSend_count(signatureRegions))
  {
    firstIndex = [signatureRegions firstIndex];
    lastIndex = [signatureRegions lastIndex];
    if (lastIndex >= firstIndex)
    {
      v9 = firstIndex;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (lastIndex >= firstIndex)
    {
      v10 = lastIndex - firstIndex + 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(SGSignatureDissector *)self miniSignatureRange:rangeCopy];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(SGSignatureDissector *)self hmmPlausibleSignatureRange:rangeCopy];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [(SGSignatureDissector *)self hmmSignatureRange:rangeCopy];
      }
    }

    v9 = v11;
    v10 = v12;
  }

  v13 = v9;
  v14 = v10;
  result.length = v14;
  result.location = v13;
  return result;
}

- (id)initIgnoringDataDetectors
{
  v2 = [(SGSignatureDissector *)self init];
  v3 = v2;
  if (v2)
  {
    ignoreDataDetectorsForTesting = v2->_ignoreDataDetectorsForTesting;
    v2->_ignoreDataDetectorsForTesting = MEMORY[0x277CBEC38];
  }

  return v3;
}

@end
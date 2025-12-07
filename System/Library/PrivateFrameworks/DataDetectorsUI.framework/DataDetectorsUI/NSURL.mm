@interface NSURL
- (__CFString)dd_phoneNumberFromTelSchemeAndExtractBody:(__CFString *)body serviceID:(uint64_t)d suggestions:;
- (id)dd_emailFromValidSchemes:(id)schemes;
- (id)dd_formattedPhoneNumber;
- (id)dd_phoneNumberFromValidSchemes:(id)schemes;
- (id)dd_rdarLinkFromTelScheme;
- (uint64_t)dd_isAppleBooks;
- (uint64_t)dd_isAppleMusic;
- (uint64_t)dd_isApplePodcasts;
- (uint64_t)dd_isAppleStore;
- (uint64_t)dd_isAppleTV;
- (uint64_t)dd_isMaps:(unsigned __int8 *)maps isDirections:;
- (void)dd_isAppleApps;
@end

@implementation NSURL

- (__CFString)dd_phoneNumberFromTelSchemeAndExtractBody:(__CFString *)body serviceID:(uint64_t)d suggestions:
{
  selfCopy = self;
  v117[1] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_116;
  }

  if (!dd_isAnySimpleTelephonyScheme(self))
  {
    selfCopy = 0;
    goto LABEL_116;
  }

  resourceSpecifier = [(__CFString *)selfCopy resourceSpecifier];
  if ([resourceSpecifier hasPrefix:@"//"])
  {
    if ([resourceSpecifier length] < 3)
    {
LABEL_45:
      selfCopy = 0;
      goto LABEL_115;
    }

    v7 = [resourceSpecifier substringFromIndex:2];

    resourceSpecifier = v7;
  }

  if (![resourceSpecifier length])
  {
    goto LABEL_45;
  }

  scheme = [(__CFString *)selfCopy scheme];
  lowercaseString = [scheme lowercaseString];

  v10 = [lowercaseString isEqualToString:@"sms"];
  v11 = [lowercaseString isEqualToString:@"messages"];
  v12 = [lowercaseString isEqualToString:@"sip"];
  HIDWORD(v100) = v10;
  v13 = v10 | v11;
  bodyCopy = body;
  if ((v10 | v11))
  {
    LODWORD(v93) = v10 | v11;
    v14 = @";";
    v15 = [resourceSpecifier rangeOfString:@"?"];
    v16 = [resourceSpecifier rangeOfString:@"&"];
    v17 = [resourceSpecifier rangeOfString:@";"];
    if (v16 >= v15)
    {
      v18 = @"?";
    }

    else
    {
      v18 = @"&";
    }

    if (v16 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }

    if (v17 >= v19)
    {
      v14 = v18;
    }

    v20 = [resourceSpecifier componentsSeparatedByString:v14];
    if ([v20 count])
    {
      firstObject = [v20 firstObject];
      v117[0] = firstObject;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:1];

      if ([v20 count] < 2)
      {
        v36 = 0;
      }

      else
      {
        HIDWORD(v93) = v12;
        v94 = lowercaseString;
        v96 = resourceSpecifier;
        v23 = [v20 subarrayWithRange:{1, objc_msgSend(v20, "count") - 1}];
        v24 = [v23 componentsJoinedByString:v14];

        v25 = [v24 componentsSeparatedByString:@"&"];
        v33 = v25;
        v97 = v22;
        v91 = v24;
        v92 = v20;
        if ((a2 || body || d) && (v114 = 0u, v115 = 0u, v112 = 0u, v113 = 0u, (v34 = OUTLINED_FUNCTION_4_2(v25, v26, v27, v28, v29, v30, v31, v32, v87, v89, v24, v20, v93, lowercaseString, resourceSpecifier, v22, body, v100, d, a2, v108, *(&v108 + 1), v109, *(&v109 + 1), v110, *(&v110 + 1), v111, *(&v111 + 1))) != 0))
        {
          v35 = v34;
          v36 = 0;
          v37 = *v113;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v113 != v37)
              {
                objc_enumerationMutation(v33);
              }

              v39 = *(*(&v112 + 1) + 8 * i);
              v40 = [v39 componentsSeparatedByString:@"="];
              if ([v40 count] >= 2)
              {
                firstObject2 = [v40 firstObject];
                lowercaseString2 = [firstObject2 lowercaseString];

                v43 = [v39 substringFromIndex:{objc_msgSend(lowercaseString2, "length") + 1}];
                if (v106 && [lowercaseString2 isEqualToString:@"body"])
                {
                  *v106 = [v43 stringByRemovingPercentEncoding];
                }

                else if ([lowercaseString2 isEqualToString:@"service_id"])
                {
                  stringByRemovingPercentEncoding = [v43 stringByRemovingPercentEncoding];

                  if ((v101 & 0x100000000) != 0 || dd_handleIsChatBot(stringByRemovingPercentEncoding))
                  {
                    if (bodyCopy)
                    {
                      v45 = stringByRemovingPercentEncoding;
                      *bodyCopy = stringByRemovingPercentEncoding;
                    }

                    v36 = stringByRemovingPercentEncoding;
                  }

                  else
                  {

                    v36 = 0;
                  }
                }

                else if (v103 && [lowercaseString2 isEqualToString:@"suggestions"])
                {
                  v46 = v43;
                  *v103 = v43;
                }
              }
            }

            v35 = OUTLINED_FUNCTION_4_2(v47, v48, v49, v50, v51, v52, v53, v54, v88, v90, v91, v92, v93, v94, v96, v97, bodyCopy, v101, v103, v106, v108, *(&v108 + 1), v109, *(&v109 + 1), v110, *(&v110 + 1), v111, *(&v111 + 1));
          }

          while (v35);
        }

        else
        {
          v36 = 0;
        }

        v22 = [v97 arrayByAddingObjectsFromArray:v33];

        lowercaseString = v94;
        resourceSpecifier = v96;
        body = bodyCopy;
        v12 = HIDWORD(v93);
        v20 = v92;
      }
    }

    else
    {
      v36 = 0;
      v22 = 0;
    }

    v13 = v93;
  }

  else
  {
    v22 = [resourceSpecifier componentsSeparatedByString:@""];;
    v36 = 0;
  }

  firstObject3 = [v22 firstObject];
  v56 = [firstObject3 length];

  if (!v56)
  {
    selfCopy = 0;
    goto LABEL_114;
  }

  firstObject4 = [v22 firstObject];
  stringByRemovingPercentEncoding2 = [firstObject4 stringByRemovingPercentEncoding];

  v107 = v36;
  if ((v13 & 1) == 0)
  {
    firstObject5 = [(__CFString *)stringByRemovingPercentEncoding2 stringByReplacingOccurrencesOfString:@":" withString:@""];;
    goto LABEL_58;
  }

  firstObject5 = stringByRemovingPercentEncoding2;
  if ([(__CFString *)stringByRemovingPercentEncoding2 isEqualToString:@"/open"])
  {
    firstObject5 = @"open";
LABEL_58:
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v98 = v22;
  v60 = v22;
  v61 = [v60 countByEnumeratingWithState:&v108 objects:v116 count:16];
  if (!v61)
  {
    goto LABEL_103;
  }

  v62 = v61;
  v104 = firstObject5;
  v95 = lowercaseString;
  v63 = 0;
  v64 = 1;
  while (1)
  {
    OUTLINED_FUNCTION_1_2();
    if (!v65)
    {
      objc_enumerationMutation(v60);
    }

    if ((v64 & 1) == 0)
    {
      v66 = **(&v108 + 1);
      v67 = [**(&v108 + 1) componentsSeparatedByString:@"="];
      v68 = v67;
      if ((v63 & 1) != 0 && [v67 count] == 1)
      {
        if ([v66 length])
        {
          v69 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890#*"];
          invertedSet = [v69 invertedSet];

          if ([OUTLINED_FUNCTION_2_2() rangeOfCharacterFromSet:?] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_119;
          }

LABEL_73:
        }
      }

      else if ([v68 count] == 2)
      {
        invertedSet = [v68 objectAtIndexedSubscript:0];
        if ([invertedSet isEqualToString:@"ext"])
        {
          v71 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
          v72 = [v71 length];

          if (v72)
          {
            goto LABEL_101;
          }

          goto LABEL_74;
        }

        goto LABEL_73;
      }

LABEL_74:
    }

    if (v62 >= 2)
    {
      break;
    }

LABEL_99:
    v63 = v64;
    v62 = [v60 countByEnumeratingWithState:&v108 objects:v116 count:16];
    v64 = 0;
    if (!v62)
    {
      lowercaseString = v95;
      v22 = v98;
      body = bodyCopy;
      firstObject5 = v104;
      goto LABEL_103;
    }
  }

  OUTLINED_FUNCTION_1_2();
  if (!v65)
  {
    objc_enumerationMutation(v60);
  }

  v66 = *(*(&v108 + 1) + 8);
  v73 = [v66 componentsSeparatedByString:@"="];
  v68 = v73;
  if ((v64 & 1) == 0 || [v73 count] != 1)
  {
    if ([v68 count] == 2)
    {
      invertedSet = [v68 objectAtIndexedSubscript:0];
      if ([invertedSet isEqualToString:@"ext"])
      {
        v75 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
        v76 = [v75 length];

        if (v76)
        {
LABEL_101:
          v81 = MEMORY[0x277CCACA8];
          invertedSet = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
          stringByRemovingPercentEncoding3 = [invertedSet stringByRemovingPercentEncoding];
          firstObject5 = [v81 stringWithFormat:@"%@%@", v104, stringByRemovingPercentEncoding3];;

          v83 = stringByRemovingPercentEncoding3;
          goto LABEL_102;
        }

        goto LABEL_88;
      }

      goto LABEL_87;
    }

LABEL_88:

    if (v62 != 2)
    {
      for (j = 2; j != v62; ++j)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v65)
        {
          objc_enumerationMutation(v60);
        }

        v68 = [*(*(&v108 + 1) + 8 * j) componentsSeparatedByString:@"="];
        if ([v68 count] == 2)
        {
          v78 = [v68 objectAtIndexedSubscript:0];
          if ([v78 isEqualToString:@"ext"])
          {
            v79 = [OUTLINED_FUNCTION_3_2() objectAtIndexedSubscript:?];
            v80 = [v79 length];

            if (v80)
            {
              goto LABEL_101;
            }
          }

          else
          {
          }
        }
      }
    }

    v64 = 0;
    goto LABEL_99;
  }

  if (![v66 length])
  {
    goto LABEL_88;
  }

  v74 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890#*"];
  invertedSet = [v74 invertedSet];

  if ([OUTLINED_FUNCTION_2_2() rangeOfCharacterFromSet:?] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_87:

    goto LABEL_88;
  }

LABEL_119:
  v83 = v104;
  firstObject5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v104, v66];;
LABEL_102:
  lowercaseString = v95;
  v22 = v98;
  body = bodyCopy;

LABEL_103:
  if (dd_handleIsChatBot(firstObject5))
  {
    if (body && !*body)
    {
      v84 = firstObject5;
      *body = firstObject5;
    }

    v36 = firstObject5;

    v85 = [(__CFString *)v36 componentsSeparatedByString:@"@"];

    firstObject5 = [v85 firstObject];

    if (!v12)
    {
LABEL_111:
      selfCopy = firstObject5;
      goto LABEL_113;
    }
  }

  else
  {
    v36 = v107;
    if (!v12)
    {
      goto LABEL_111;
    }
  }

  if (dd_handleIsChatBot(v36))
  {
    goto LABEL_111;
  }

  selfCopy = 0;
LABEL_113:

LABEL_114:
LABEL_115:

LABEL_116:

  return selfCopy;
}

- (uint64_t)dd_isMaps:(unsigned __int8 *)maps isDirections:
{
  if (!self)
  {
    v10 = 0;
    return v10 & 1;
  }

  scheme = [self scheme];
  lowercaseString = [scheme lowercaseString];

  if (([lowercaseString isEqualToString:@"maps"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"geo") || objc_msgSend(lowercaseString, "isEqualToString:", @"geo-navigation"))
  {
    absoluteString = [self absoluteString];
    path2 = [absoluteString componentsSeparatedByString:@":"];
    v10 = [path2 count] > 1;
LABEL_6:

    goto LABEL_7;
  }

  query = [self query];

  if (query)
  {
    host = [self host];
    absoluteString = [host lowercaseString];

    v16 = [absoluteString isEqualToString:@"maps.apple.com"];
    v10 = a2 | v16;
    if (!a2 || (v16 & 1) != 0)
    {
LABEL_7:

      if (maps && (v10 & 1) != 0)
      {
        resourceSpecifier = [self resourceSpecifier];
        if ([resourceSpecifier containsString:@"?daddr="] & 1) != 0 || (objc_msgSend(resourceSpecifier, "containsString:", @"&daddr=") & 1) != 0 || (objc_msgSend(resourceSpecifier, "containsString:", @"?destination="))
        {
          v12 = 1;
        }

        else
        {
          v12 = [resourceSpecifier containsString:@"&destination="];
        }

        *maps = v12;

        v10 = 1;
      }

      goto LABEL_14;
    }

    if ([absoluteString isEqualToString:@"maps.google.com"] & 1) != 0 || (objc_msgSend(absoluteString, "isEqualToString:", @"maps.bing.com"))
    {
      v10 = 1;
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  if (a2)
  {
    path = [self path];

    if (path)
    {
      host2 = [self host];
      absoluteString = [host2 lowercaseString];

LABEL_26:
      path2 = [self path];
      lowercaseString2 = [path2 lowercaseString];
      if ([lowercaseString2 hasPrefix:@"/maps"])
      {
        if ([absoluteString isEqualToString:@"www.google.com"] & 1) != 0 || (objc_msgSend(absoluteString, "isEqualToString:", @"www.bing.com"))
        {
          v10 = 1;
        }

        else
        {
          v10 = [absoluteString isEqualToString:@"goo.gl"];
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_14:

  return v10 & 1;
}

- (void)dd_isAppleApps
{
  if (result)
  {
    host = [result host];
    lowercaseString = [host lowercaseString];
    v3 = [&unk_282C2BE78 containsObject:lowercaseString];

    return v3;
  }

  return result;
}

- (uint64_t)dd_isAppleBooks
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([@"books.apple.com" isEqualToString:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"books"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isAppleMusic
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([&unk_282C2BE90 containsObject:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"music"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isApplePodcasts
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([@"podcasts.apple.com" isEqualToString:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"podcast"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isAppleTV
{
  selfCopy = self;
  if (self)
  {
    host = [self host];
    lowercaseString = [host lowercaseString];
    if ([@"tv.apple.com" isEqualToString:lowercaseString])
    {
      selfCopy = 1;
    }

    else
    {
      selfCopy = [selfCopy dd_hasHosts:&unk_282C2BE48 filterKey:@"app" filterValue:@"tv"];
    }
  }

  return selfCopy;
}

- (uint64_t)dd_isAppleStore
{
  if (!self)
  {
    return 0;
  }

  host = [self host];
  lowercaseString = [host lowercaseString];

  if ([&unk_282C2BE48 containsObject:lowercaseString])
  {
    v3 = 1;
  }

  else
  {
    v3 = [&unk_282C2BE60 containsObject:lowercaseString];
  }

  return v3;
}

- (id)dd_rdarLinkFromTelScheme
{
  if (self)
  {
    scheme = [self scheme];
    lowercaseString = [scheme lowercaseString];

    if ([lowercaseString isEqualToString:@"rdar"])
    {
      selfCopy = self;
    }

    else if ([lowercaseString isEqualToString:@"tel"])
    {
      v6 = objc_alloc(MEMORY[0x277CBEBC0]);
      v7 = MEMORY[0x277CCACA8];
      OUTLINED_FUNCTION_0_2();
      v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
      v13 = 0;
      if (([v12 containsString:@"@"] & 1) == 0)
      {
        v13 = v12;
      }

      v14 = [v7 stringWithFormat:@"rdar://problem/%@", v13];
      selfCopy = [v6 initWithString:v14];
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dd_phoneNumberFromValidSchemes:(id)schemes
{
  schemesCopy = schemes;
  if (schemes)
  {
    v3 = a2;
    scheme = [schemesCopy scheme];
    lowercaseString = [scheme lowercaseString];

    LODWORD(scheme) = [OUTLINED_FUNCTION_2_2() containsObject:?];
    if (!scheme)
    {
      goto LABEL_6;
    }

    if ([&unk_282C2BEC0 containsObject:lowercaseString])
    {
      OUTLINED_FUNCTION_0_2();
      v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
      schemesCopy = 0;
      if (([v12 containsString:@"@"] & 1) == 0)
      {
        schemesCopy = v12;
      }

      goto LABEL_7;
    }

    if ([&unk_282C2BED8 containsObject:lowercaseString] && (objc_msgSend(schemesCopy, "dd_emailFromFacetimeScheme"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      schemesCopy = [schemesCopy dd_phoneNumberFromFacetimeScheme];
    }

    else
    {
LABEL_6:
      schemesCopy = 0;
    }

LABEL_7:
  }

  return schemesCopy;
}

- (id)dd_emailFromValidSchemes:(id)schemes
{
  schemesCopy = schemes;
  if (schemes)
  {
    v3 = a2;
    scheme = [schemesCopy scheme];
    lowercaseString = [scheme lowercaseString];

    LODWORD(scheme) = [OUTLINED_FUNCTION_2_2() containsObject:?];
    if (scheme)
    {
      if ([lowercaseString isEqualToString:@"mailto"])
      {
        dd_emailFromFacetimeScheme = dd_emailFromMailtoScheme(schemesCopy);
LABEL_9:
        schemesCopy = dd_emailFromFacetimeScheme;
LABEL_11:

        goto LABEL_12;
      }

      if (([lowercaseString isEqualToString:@"sms"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"sip"))
      {
        OUTLINED_FUNCTION_0_2();
        v12 = [(NSURL *)v8 dd_phoneNumberFromTelSchemeAndExtractBody:v9 serviceID:v10 suggestions:v11];
        schemesCopy = 0;
        if ([v12 containsString:@"@"])
        {
          schemesCopy = v12;
        }

        goto LABEL_11;
      }

      if ([&unk_282C2BEF0 containsObject:lowercaseString])
      {
        dd_emailFromFacetimeScheme = [schemesCopy dd_emailFromFacetimeScheme];
        goto LABEL_9;
      }
    }

    schemesCopy = 0;
    goto LABEL_11;
  }

LABEL_12:

  return schemesCopy;
}

- (id)dd_formattedPhoneNumber
{
  if (self)
  {
    self = [self formattedPhoneNumber];
    v1 = vars8;
  }

  return self;
}

@end
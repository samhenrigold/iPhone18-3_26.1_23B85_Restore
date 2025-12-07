@interface EAEmailAddressLists
+ (id)addressDisplayStringWithMaxNumberOfAddresses:(unint64_t)addresses fromAddressList:(id)list;
+ (id)addressListFromAddressString:(id)string;
+ (id)addressListFromHeaderValue:(id)value;
+ (id)addressStringFromAddressList:(id)list;
+ (id)componentsSeparatedByCharactersRespectingQuotesAndParens:(id)parens forString:(id)string;
+ (id)componentsSeparatedByCommaRespectingQuotesAndParensForString:(id)string;
+ (id)displayNameFromAddressList:(id)list;
+ (id)rawAddressListFromFullAddressList:(id)list;
@end

@implementation EAEmailAddressLists

+ (id)addressListFromHeaderValue:(id)value
{
  v105 = *MEMORY[0x277D85DE8];
  theString = value;
  v3 = [(__CFString *)theString length];
  if (v3 >= 1)
  {
    array = [MEMORY[0x277CBEB18] array];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    *buffer = 0u;
    v90 = 0u;
    v97 = theString;
    v100 = 0;
    v101 = v3;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v6 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v7 = 0;
    v102 = 0;
    v103 = 0;
    v99 = CStringPtr;
    v79 = &buffer[1];
    while (1)
    {
      v8 = v84;
      v9 = v101;
      if (v101 <= v7)
      {
        v10 = 0;
      }

      else if (CharactersPtr)
      {
        v10 = CharactersPtr[v100 + v7];
      }

      else if (v99)
      {
        v10 = v99[v100 + v7];
      }

      else
      {
        v47 = v102;
        if (v103 <= v7 || v102 > v7)
        {
          v49 = v7 - 4;
          if (v7 < 4)
          {
            v49 = 0;
          }

          if (v49 + 64 < v101)
          {
            v9 = v49 + 64;
          }

          v102 = v49;
          v103 = v9;
          v108.length = v9 - v49;
          v108.location = v100 + v49;
          CFStringGetCharacters(v97, v108, buffer);
          v47 = v102;
        }

        v10 = buffer[v7 - v47];
      }

      v11 = v10;
      v84 = v10;
      if (((1 << v10) & 0x100000600) != 0)
      {
        v12 = v6 + 1;
      }

      else
      {
        v12 = v6;
      }

      if (v11 > 0x20)
      {
        v12 = v6;
      }

      if (v7 == v6)
      {
        v6 = v12;
      }

      if (v11 <= 40)
      {
        v18 = v83;
        v19 = v82;
        v20 = v82 ^ (v83 == 0);
        v21 = v83 + ((v82 & 1) == 0);
        if (v11 != 40)
        {
          v21 = v83;
        }

        v22 = v11 == 34;
        v17 = 0;
        if (!v22)
        {
          v18 = v21;
        }

        v83 = v18;
        if (v22)
        {
          v19 = v20;
        }

        v82 = v19;
      }

      else
      {
        switch(v11)
        {
          case ')':
            v17 = 0;
            v23 = v83 - 1;
            if (!v83)
            {
              v23 = 0;
            }

            v83 = v23;
            break;
          case ',':
            v17 = (v83 == 0) & ~v82;
            break;
          case '\\':
            v13 = v83;
            v14 = v82;
            if (v7 + 1 >= v3)
            {
              v15 = v7;
            }

            else
            {
              v15 = v7 + 1;
            }

            v16 = (v82 & 1 | (v83 != 0)) == 0;
            v17 = 0;
            if (v82 & 1 | (v83 != 0))
            {
              v7 = v15;
            }

            else
            {
              v13 = 0;
            }

            v83 = v13;
            if (v16)
            {
              v14 = 0;
            }

            v82 = v14;
            break;
          default:
            v17 = 0;
            break;
        }
      }

      v24 = v7 + 1;
      if ((v17 & 1) != 0 || v24 == v3)
      {
        v26 = v3;
        if (v17)
        {
          v26 = v7;
          if (v8 != 62)
          {
            v27 = v7 + 1;
            if (v24 < v3)
            {
              v27 = v7 + 1;
              if (v7 >= -1)
              {
                v28 = ~v7;
                v29 = v7 + 65;
                v30 = v7;
                v27 = v7 + 1;
                while (1)
                {
                  v31 = v30 + 1;
                  v32 = v27 >= 4 ? 4 : v27;
                  v33 = v101;
                  if (v101 <= v31)
                  {
                    break;
                  }

                  if (CharactersPtr)
                  {
                    v34 = CharactersPtr[v100 + 1 + v30];
                  }

                  else if (v99)
                  {
                    v34 = v99[v100 + 1 + v30];
                  }

                  else
                  {
                    v35 = v102;
                    v36 = v103 > v31 && v102 <= v31;
                    if (!v36)
                    {
                      v37 = -v32;
                      v38 = v32 + v28;
                      v39 = v29 - v32;
                      v40 = v30 + v37;
                      v41 = v40 + 1;
                      v42 = v40 + 65;
                      if (v42 >= v101)
                      {
                        v42 = v101;
                      }

                      v102 = v41;
                      v103 = v42;
                      if (v101 >= v39)
                      {
                        v33 = v39;
                      }

                      v107.location = v41 + v100;
                      v107.length = v33 + v38;
                      CFStringGetCharacters(v97, v107, buffer);
                      v35 = v102;
                    }

                    v34 = v79[v30 - v35];
                  }

                  v36 = v34 > 0x20u;
                  v43 = (1 << v34) & 0x100000600;
                  if (v36 || v43 == 0)
                  {
                    v27 = v30 + 1;
                    break;
                  }

                  ++v27;
                  v45 = v30 + 1;
                  v46 = v30 + 2;
                  --v28;
                  ++v29;
                  ++v30;
                  if (v46 >= v3)
                  {
                    v27 = v45 + 1;
                    break;
                  }
                }
              }
            }

            if (addressListFromHeaderValue__onceToken != -1)
            {
              +[EAEmailAddressLists addressListFromHeaderValue:];
            }

            if (v3 - v27 >= 6)
            {
              v50 = 6;
            }

            else
            {
              v50 = v3 - v27;
            }

            v51 = [(__CFString *)theString substringWithRange:v27, v50, v79];
            lowercaseString = [v51 lowercaseString];

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v53 = addressListFromHeaderValue__nameExtensions;
            v54 = [v53 countByEnumeratingWithState:&v85 objects:v104 count:16];
            if (v54)
            {
              v55 = *v86;
LABEL_98:
              v56 = 0;
              while (1)
              {
                if (*v86 != v55)
                {
                  objc_enumerationMutation(v53);
                }

                v57 = *(*(&v85 + 1) + 8 * v56);
                if ([lowercaseString hasPrefix:v57])
                {
                  v25 = [v57 length] + v27;
                  if (v25 < v3)
                  {
                    v58 = v101;
                    if (v101 > v25)
                    {
                      if (CharactersPtr)
                      {
                        v59 = CharactersPtr[v100 + v25];
                      }

                      else if (v99)
                      {
                        v59 = v99[v100 + v25];
                      }

                      else
                      {
                        v60 = v102;
                        if (v103 <= v25 || v102 > v25)
                        {
                          v62 = v25 - 4;
                          if (v25 < 4)
                          {
                            v62 = 0;
                          }

                          if (v62 + 64 < v101)
                          {
                            v58 = v62 + 64;
                          }

                          v102 = v62;
                          v103 = v58;
                          v109.length = v58 - v62;
                          v109.location = v100 + v62;
                          CFStringGetCharacters(v97, v109, buffer);
                          v60 = v102;
                        }

                        v59 = buffer[v25 - v60];
                      }

                      v36 = v59 > 0x2Cu;
                      v63 = (1 << v59) & 0x100100000600;
                      if (!v36 && v63 != 0)
                      {
                        goto LABEL_152;
                      }
                    }
                  }
                }

                if (v54 == ++v56)
                {
                  v54 = [v53 countByEnumeratingWithState:&v85 objects:v104 count:16];
                  if (v54)
                  {
                    goto LABEL_98;
                  }

                  break;
                }
              }
            }

            v24 = v7 + 1;
            v26 = v7;
          }
        }

        if (v6 < v26)
        {
          v65 = -v26;
          v66 = v26 + 64;
          while (1)
          {
            v67 = v26 - 1;
            v68 = v26 >= 5 ? 5 : v26;
            if (v67 < 0)
            {
              break;
            }

            v69 = v101;
            if (v101 <= v67)
            {
              break;
            }

            if (CharactersPtr)
            {
              v70 = CharactersPtr[v100 - 1 + v26];
            }

            else if (v99)
            {
              v70 = v99[v100 - 1 + v26];
            }

            else
            {
              if (v103 <= v67 || (v71 = v102, v102 > v67))
              {
                v72 = -v68;
                v73 = v68 + v65;
                v74 = v66 - v68;
                v75 = v26 + v72;
                v76 = v75 + 64;
                if (v75 + 64 >= v101)
                {
                  v76 = v101;
                }

                v102 = v75;
                v103 = v76;
                if (v101 >= v74)
                {
                  v69 = v74;
                }

                v110.location = v75 + v100;
                v110.length = v69 + v73;
                CFStringGetCharacters(v97, v110, buffer);
                v71 = v102;
              }

              v70 = buffer[v26 - 1 - v71];
            }

            v36 = v70 > 0x20u;
            v77 = (1 << v70) & 0x100000600;
            if (v36 || v77 == 0)
            {
              break;
            }

            ++v65;
            --v66;
            --v26;
            if (v6 >= v67)
            {
              goto LABEL_150;
            }
          }

          lowercaseString = [(__CFString *)theString substringWithRange:v6, v26 - v6, v79];
          v53 = [EAEmailAddressParser idnaDecodedAddressForAddress:lowercaseString];
          [array addObject:v53];
          v25 = v7;
          v6 = v24;
LABEL_152:

          goto LABEL_153;
        }

LABEL_150:
        v25 = v7;
        v6 = v24;
      }

      else
      {
        v25 = v7;
      }

LABEL_153:
      v7 = v25 + 1;
      if (v25 + 1 >= v3)
      {
        goto LABEL_5;
      }
    }
  }

  array = MEMORY[0x277CBEBF8];
LABEL_5:

  return array;
}

void __50__EAEmailAddressLists_addressListFromHeaderValue___block_invoke()
{
  v0 = addressListFromHeaderValue__nameExtensions;
  addressListFromHeaderValue__nameExtensions = &unk_285D22B58;
}

+ (id)componentsSeparatedByCommaRespectingQuotesAndParensForString:(id)string
{
  stringCopy = string;
  if (!componentsSeparatedByCommaRespectingQuotesAndParensForString__addressCharacterSet)
  {
    65532 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@", %C%C%C", 10, 13, 65532];
    v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:65532];
    v7 = componentsSeparatedByCommaRespectingQuotesAndParensForString__addressCharacterSet;
    componentsSeparatedByCommaRespectingQuotesAndParensForString__addressCharacterSet = v6;
  }

  v8 = [self componentsSeparatedByCharactersRespectingQuotesAndParens:? forString:?];

  return v8;
}

+ (id)componentsSeparatedByCharactersRespectingQuotesAndParens:(id)parens forString:(id)string
{
  parensCopy = parens;
  stringCopy = string;
  array = [MEMORY[0x277CBEB18] array];
  v7 = NSZoneMalloc(0, 2 * [stringCopy length]);
  [stringCopy getCharacters:v7];
  v8 = [stringCopy length];
  v9 = &v7[v8];
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v7;
    v14 = v7;
    while (1)
    {
      v15 = *v13;
      if (v15 > 0x28)
      {
        if (v15 == 41)
        {
          if (v11)
          {
            --v11;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_21;
        }

        if (v15 == 92)
        {
          v16 = 2;
          if (!(v10 & 1 | (v11 != 0)))
          {
            v16 = 0;
          }

          v13 = (v13 + v16);
          goto LABEL_21;
        }
      }

      else
      {
        if (v15 == 34)
        {
          v10 ^= v11 == 0;
          goto LABEL_21;
        }

        if (v15 == 40)
        {
          v11 += (v10 & 1) == 0;
          goto LABEL_21;
        }
      }

      if (!(v10 & 1 | (([parensCopy characterIsMember:?] & 1) == 0)) && !v11)
      {
        v17 = [stringCopy substringWithRange:{v14 - v7, v13 - v14}];

        if ([v17 length])
        {
          [array addObject:v17];
        }

        v11 = 0;
        v10 = 0;
        v14 = v13 + 1;
        goto LABEL_22;
      }

LABEL_21:
      v17 = v12;
LABEL_22:
      ++v13;
      v12 = v17;
      if (v13 >= v9)
      {
        goto LABEL_25;
      }
    }
  }

  v17 = 0;
  v14 = v7;
LABEL_25:
  if (v14 < v9)
  {
    v18 = [stringCopy substringWithRange:{v14 - v7, v9 - v14}];

    v17 = v18;
    if ([v18 length])
    {
      [array addObject:v18];
    }
  }

  NSZoneFree(0, v7);

  return array;
}

+ (id)addressListFromAddressString:(id)string
{
  v3 = [string componentsSeparatedByString:{@", "}];

  return v3;
}

+ (id)addressStringFromAddressList:(id)list
{
  v43 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = listCopy;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v4)
  {
    v5 = *v39;
    v24 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = [EAEmailAddressParser displayNameFromAddress:v7];
        if (([v8 isEqualToString:v7] & 1) == 0 && objc_msgSend(v8, "rangeOfString:", @",") != 0x7FFFFFFFFFFFFFFFLL)
        {
          Length = CFStringGetLength(v7);
          v35 = 0u;
          v33 = 0u;
          theString[1] = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          *buffer = 0u;
          theString[0] = v7;
          v37 = 0;
          v36 = Length;
          theString[1] = CFStringGetCharactersPtr(v7);
          if (theString[1])
          {
            CStringPtr = 0;
          }

          else
          {
            CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
          }

          *&v35 = CStringPtr;
          *(&v36 + 1) = 0;
          v37 = 0;
          if (Length < 1)
          {
            v14 = v7;
          }

          else
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = v7;
            do
            {
              if ((v11 & 0x8000000000000000) == 0)
              {
                v15 = v36;
                if (v36 > v11)
                {
                  if (theString[1])
                  {
                    v16 = *(&theString[1]->isa + *(&v35 + 1) + v11);
                  }

                  else if (v35)
                  {
                    v16 = *(v35 + *(&v35 + 1) + v11);
                  }

                  else
                  {
                    if (v37 <= v11 || (v17 = *(&v36 + 1), *(&v36 + 1) > v11))
                    {
                      v18 = v11 - 4;
                      if (v11 < 4)
                      {
                        v18 = 0;
                      }

                      if (v18 + 64 < v36)
                      {
                        v15 = v18 + 64;
                      }

                      *(&v36 + 1) = v18;
                      v37 = v15;
                      v45.length = v15 - v18;
                      v45.location = *(&v35 + 1) + v18;
                      CFStringGetCharacters(theString[0], v45, buffer);
                      v17 = *(&v36 + 1);
                    }

                    v16 = buffer[v11 - v17];
                  }

                  if (v16 <= 0x28u)
                  {
                    if (v16 == 34)
                    {
                      v13 ^= v12 == 0;
                    }

                    else if (v16 == 40)
                    {
                      v12 += (v13 & 1) == 0;
                    }
                  }

                  else
                  {
                    switch(v16)
                    {
                      case ')':
                        if (v12)
                        {
                          --v12;
                        }

                        else
                        {
                          v12 = 0;
                        }

                        break;
                      case ',':
                        if (!(v13 & 1 | (v12 != 0)))
                        {
                          v19 = [EAEmailAddressParser rawAddressFromFullAddress:v7];
                          if (!v19)
                          {
                            v19 = v7;
                          }

                          v20 = [EAEmailAddressGenerator formattedAddressWithName:v8 email:v19 useQuotes:1];

                          v13 = 0;
                          v12 = 0;
                          v14 = v20;
                          v11 = Length;
                        }

                        break;
                      case '\\':
                        v11 += v13 & 1u | (v12 != 0);
                        break;
                    }
                  }
                }
              }

              ++v11;
            }

            while (v11 < Length);
          }

          v7 = v14;
          v3 = v24;
        }

        [v3 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v4);
  }

  v21 = [v3 componentsJoinedByString:{@", "}];

  return v21;
}

+ (id)rawAddressListFromFullAddressList:(id)list
{
  v18 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = [listCopy count];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = listCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [EAEmailAddressParser rawAddressFromFullAddress:v10, v13];
          if (v11)
          {
            [v5 addObject:v11];
          }

          else
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)displayNameFromAddressList:(id)list
{
  v17 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(listCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = listCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [EAEmailAddressParser displayNameFromAddress:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v4 componentsJoinedByString:{@", "}];

  return v10;
}

+ (id)addressDisplayStringWithMaxNumberOfAddresses:(unint64_t)addresses fromAddressList:(id)list
{
  listCopy = list;
  v6 = [listCopy count];
  v7 = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = [listCopy objectAtIndexedSubscript:0];
    }

    else
    {
      string = [MEMORY[0x277CCAB68] string];
      if (v7 >= addresses)
      {
        v10 = v7 - addresses;
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_alloc(MEMORY[0x277CCAA78]);
      if (v7 <= addresses)
      {
        addressesCopy = v7 - 1;
      }

      else
      {
        addressesCopy = addresses;
      }

      v13 = [v11 initWithIndexesInRange:{0, addressesCopy}];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __84__EAEmailAddressLists_addressDisplayStringWithMaxNumberOfAddresses_fromAddressList___block_invoke;
      v21 = &unk_278FC0060;
      v8 = string;
      v22 = v8;
      [listCopy enumerateObjectsAtIndexes:v13 options:0 usingBlock:&v18];
      if (v7 <= addresses)
      {
        v15 = _EFLocalizedString();
        v16 = [listCopy objectAtIndexedSubscript:v7 - 1];
        [(__CFString *)v8 appendFormat:v15, v16, v18, v19, v20, v21];
      }

      else
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = _EFLocalizedString();
        v16 = [v14 localizedStringWithFormat:v15, v10, v18, v19, v20, v21];
        [(__CFString *)v8 appendString:v16];
      }
    }
  }

  else
  {
    v8 = &stru_285D21E38;
  }

  return v8;
}

@end
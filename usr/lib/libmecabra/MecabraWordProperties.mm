@interface MecabraWordProperties
+ (__IDXIndex)characterInformationDictionary;
+ (__IDXIndex)codeLookupInformationDictionary;
+ (__IDXIndex)informationDictionaryAtPath:(__CFURL *)path;
+ (id)searchResultsForString:(id)string dictionary:(__IDXIndex *)dictionary;
+ (id)sortedRadicalList;
- (MecabraWordProperties)initWithString:(id)string language:(int)language;
- (NSArray)characterInformation;
- (NSArray)codeLookupInformation;
- (id)bihuaCodes;
- (id)cangjieCodes;
- (id)initialsForStrings:(id)strings;
- (id)isIncludedInCurrentLanguage;
- (id)pinyinInformationForString:(id)string;
- (id)radicalInformationForString:(id)string;
- (id)separatedInputCodesForString:(id)string;
- (id)strokeInformationForString:(id)string;
- (id)tonesForString:(id)string;
- (id)valueForKey:(int)key;
- (id)wubixingCodes;
- (id)wubixingCodesForStandard:(int)standard;
- (id)zhuyinInformationForString:(id)string;
- (void)dealloc;
@end

@implementation MecabraWordProperties

+ (__IDXIndex)informationDictionaryAtPath:(__CFURL *)path
{
  if (!path)
  {
    return 0;
  }

  v3 = sub_2992432B4(0, path, 0);
  v4 = v3;
  if (v3)
  {
    sub_299243598(v3, &unk_2A1F83748);
  }

  return v4;
}

+ (__IDXIndex)characterInformationDictionary
{
  if (qword_2A1460C68 != -1)
  {
    dispatch_once(&qword_2A1460C68, &unk_2A1F6E6F8);
  }

  return qword_2A1460C60;
}

+ (__IDXIndex)codeLookupInformationDictionary
{
  if (qword_2A1460C78 != -1)
  {
    dispatch_once(&qword_2A1460C78, &unk_2A1F6E718);
  }

  return qword_2A1460C70;
}

+ (id)searchResultsForString:(id)string dictionary:(__IDXIndex *)dictionary
{
  v15[1] = *MEMORY[0x29EDCA608];
  if (!dictionary)
  {
    return 0;
  }

  if (sub_299243500(dictionary, string, @"IDXExactMatch") && (v15[0] = 0, v12[0] = 0, v12[1] = 0, v13 = 0, (*(**(dictionary + 2) + 72))(*(dictionary + 2), *(dictionary + 5), 1, v15, &v14) >= 1))
  {
    sub_29924388C(dictionary, v15[0], v14, v12, v11);
    v7 = objc_alloc(MEMORY[0x29EDBA0F8]);
    v9 = objc_msgSend_initWithBytes_length_encoding_(v7, v8, v13, v11[2], 4);
  }

  else
  {
    v9 = 0;
  }

  return objc_msgSend_componentsSeparatedByString_(v9, v5, @";", v6);
}

+ (id)sortedRadicalList
{
  if (qword_2A1460C88 != -1)
  {
    dispatch_once(&qword_2A1460C88, &unk_2A1F6E738);
  }

  return qword_2A1460C80;
}

- (NSArray)characterInformation
{
  result = self->_characterInformation;
  if (!result)
  {
    v6 = objc_msgSend_analysisString(self, a2, v2, v3);
    Character = objc_msgSend_firstCharacter(v6, v7, v8, v9);
    v14 = objc_msgSend_characterInformationDictionary(MecabraWordProperties, v11, v12, v13);
    result = objc_msgSend_searchResultsForString_dictionary_(MecabraWordProperties, v15, Character, v14);
    self->_characterInformation = result;
  }

  return result;
}

- (NSArray)codeLookupInformation
{
  result = self->_codeLookupInformation;
  if (!result)
  {
    v6 = objc_msgSend_analysisString(self, a2, v2, v3);
    v10 = objc_msgSend_codeLookupInformationDictionary(MecabraWordProperties, v7, v8, v9);
    result = objc_msgSend_searchResultsForString_dictionary_(MecabraWordProperties, v11, v6, v10);
    self->_codeLookupInformation = result;
  }

  return result;
}

- (id)radicalInformationForString:(id)string
{
  v5 = objc_msgSend_language(self, a2, string, v3);
  v8 = objc_msgSend_componentsByLanguage_(string, v6, v5, v7);

  return objc_msgSend_firstObject(v8, v9, v10, v11);
}

- (id)strokeInformationForString:(id)string
{
  v5 = MEMORY[0x29EDBA070];
  v6 = objc_msgSend_language(self, a2, string, v3);
  v9 = objc_msgSend_componentsByLanguage_(string, v7, v6, v8);
  Object = objc_msgSend_firstObject(v9, v10, v11, v12);
  v18 = objc_msgSend_integerValue(Object, v14, v15, v16);

  return objc_msgSend_numberWithInteger_(v5, v17, v18, v19);
}

- (id)pinyinInformationForString:(id)string
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_language(self, a2, string, v3);
  v8 = objc_msgSend_componentsByLanguage_(string, v6, v5, v7);
  v12 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v9, v10, v11);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, &v25, v29, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v8);
        }

        v21 = objc_msgSend_pinyinStringFromPinyinWithToneNumber(*(*(&v25 + 1) + 8 * v20), v15, v16, v17);
        objc_msgSend_addObject_(v12, v22, v21, v23);
        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v25, v29, 16);
    }

    while (v18);
  }

  return v12;
}

- (id)zhuyinInformationForString:(id)string
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_language(self, a2, string, v3);
  v8 = objc_msgSend_componentsByLanguage_(string, v6, v5, v7);
  v12 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v9, v10, v11);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v13, &v23, v27, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v8);
        }

        v21 = objc_msgSend_zhuyinSyllableFromPinyinSyllable(*(*(&v23 + 1) + 8 * v20), v15, v16, v17);
        if (v21)
        {
          objc_msgSend_addObject_(v12, v15, v21, v17);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v23, v27, 16);
    }

    while (v18);
  }

  return v12;
}

- (id)initialsForStrings:(id)strings
{
  v36 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDB8E20];
  v6 = objc_msgSend_count(strings, a2, strings, v3);
  v9 = objc_msgSend_setWithCapacity_(v5, v7, v6, v8);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(strings, v10, &v31, v35, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(strings);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_length(v18, v12, v13, v14))
        {
          v19 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v18, v12, 0, v14);
          v21 = objc_msgSend_substringWithRange_(v18, v20, v19, v20);
          v25 = objc_msgSend_stringByStrippingDiacritics(v21, v22, v23, v24);
          v29 = objc_msgSend_uppercaseString(v25, v26, v27, v28);
          if (v29)
          {
            objc_msgSend_addObject_(v9, v12, v29, v14);
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(strings, v12, &v31, v35, 16);
    }

    while (v15);
  }

  return objc_msgSend_allObjects(v9, v12, v13, v14);
}

- (id)tonesForString:(id)string
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_componentsSeparatedByString_(string, a2, @" ", v3);
  v7 = objc_msgSend_setWithCapacity_(MEMORY[0x29EDB8E20], v5, 5, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v8, &v18, v22, 16);
  if (v9)
  {
    v13 = v9;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = objc_msgSend_toneFromPinyinSyllableWithNumber(*(*(&v18 + 1) + 8 * v15), v10, v11, v12);
        if (v16)
        {
          objc_msgSend_addObject_(v7, v10, v16, v12);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, &v18, v22, 16);
    }

    while (v13);
  }

  return objc_msgSend_allObjects(v7, v10, v11, v12);
}

- (id)separatedInputCodesForString:(id)string
{
  v6 = objc_msgSend_language(self, a2, string, v3);

  return objc_msgSend_componentsByLanguage_(string, v5, v6, v7);
}

- (MecabraWordProperties)initWithString:(id)string language:(int)language
{
  v11.receiver = self;
  v11.super_class = MecabraWordProperties;
  v9 = [(MecabraWordProperties *)&v11 init];
  if (v9)
  {
    v9->_analysisString = objc_msgSend_copy(string, v6, v7, v8);
    v9->_language = language;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MecabraWordProperties;
  [(MecabraWordProperties *)&v3 dealloc];
}

- (id)wubixingCodes
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = objc_msgSend_wubixingCodesForStandard_(self, a2, 0, v2);
  v7 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v4, v5, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, &v18, v22, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v3);
        }

        InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString(0xAu, *(*(&v18 + 1) + 8 * v12));
        objc_msgSend_addObject_(v7, v14, InputKeyFromASCIIString, v15);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v16, &v18, v22, 16);
    }

    while (v10);
  }

  return v7;
}

- (id)bihuaCodes
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_codeLookupInformation(self, a2, v2, v3);
  v8 = objc_msgSend_objectAtIndex_(v5, v6, 1, v7);
  v11 = objc_msgSend_separatedInputCodesForString_(self, v9, v8, v10);
  v15 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v12, v13, v14);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v16, &v28, v32, 16);
  if (v17)
  {
    v21 = v17;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v11);
        }

        v24 = objc_msgSend_strokeStringFromNumberString(*(*(&v28 + 1) + 8 * v23), v18, v19, v20);
        objc_msgSend_addObject_(v15, v25, v24, v26);
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, &v28, v32, 16);
    }

    while (v21);
  }

  return v15;
}

- (id)cangjieCodes
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = objc_msgSend_codeLookupInformation(self, a2, v2, v3);
  v8 = objc_msgSend_objectAtIndex_(v5, v6, 2, v7);
  v11 = objc_msgSend_separatedInputCodesForString_(self, v9, v8, v10);
  v15 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v12, v13, v14);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v16, &v26, v30, 16);
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v11);
        }

        InputKeyFromASCIIString = MecabraInputKeyPropertiesCreateInputKeyFromASCIIString(9u, *(*(&v26 + 1) + 8 * v20));
        objc_msgSend_addObject_(v15, v22, InputKeyFromASCIIString, v23);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v24, &v26, v30, 16);
    }

    while (v18);
  }

  return v15;
}

- (id)isIncludedInCurrentLanguage
{
  v5 = objc_msgSend_language(self, a2, v2, v3);
  v9 = MEMORY[0x29EDB8EB0];
  if (v5 == 2)
  {
    v31 = objc_msgSend_characterInformation(self, v6, v7, v8);
    v34 = objc_msgSend_objectAtIndex_(v31, v32, 3, v33);
    v38 = objc_msgSend_BOOLValue(v34, v35, v36, v37);
    v42 = objc_msgSend_characterInformation(self, v39, v40, v41);
    v45 = objc_msgSend_objectAtIndex_(v42, v43, 4, v44);
    v49 = objc_msgSend_BOOLValue(v45, v46, v47, v48);
    v29 = MEMORY[0x29EDB8EA8];
    if (v49)
    {
      v29 = v9;
    }

    v30 = v38 == 0;
  }

  else
  {
    if (v5 != 1)
    {
      return v9;
    }

    v10 = objc_msgSend_characterInformation(self, v6, v7, v8);
    v13 = objc_msgSend_objectAtIndex_(v10, v11, 3, v12);
    v17 = objc_msgSend_BOOLValue(v13, v14, v15, v16);
    v21 = objc_msgSend_characterInformation(self, v18, v19, v20);
    v24 = objc_msgSend_objectAtIndex_(v21, v22, 4, v23);
    v28 = objc_msgSend_BOOLValue(v24, v25, v26, v27);
    v29 = MEMORY[0x29EDB8EA8];
    if (v17)
    {
      v29 = v9;
    }

    v30 = v28 == 0;
  }

  if (!v30)
  {
    return v29;
  }

  return v9;
}

- (id)valueForKey:(int)key
{
  switch(key)
  {
    case 0:
      v5 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v8 = objc_msgSend_objectAtIndex_(v5, v6, 0, v7);

      return MEMORY[0x2A1C70FE8](self, sel_radicalInformationForString_, v8, v9);
    case 1:
      v43 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v46 = objc_msgSend_objectAtIndex_(v43, v44, 1, v45);

      return MEMORY[0x2A1C70FE8](self, sel_strokeInformationForString_, v46, v47);
    case 2:
      v34 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v37 = objc_msgSend_objectAtIndex_(v34, v35, 2, v36);
      goto LABEL_38;
    case 3:
      v40 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v17 = objc_msgSend_objectAtIndex_(v40, v41, 2, v42);
      goto LABEL_21;
    case 4:
      v20 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v23 = objc_msgSend_objectAtIndex_(v20, v21, 2, v22);
      v26 = objc_msgSend_pinyinInformationForString_(self, v24, v23, v25);
      goto LABEL_34;
    case 5:
      v48 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v51 = objc_msgSend_objectAtIndex_(v48, v49, 2, v50);
      v26 = objc_msgSend_zhuyinInformationForString_(self, v52, v51, v53);
LABEL_34:

      return MEMORY[0x2A1C70FE8](self, sel_initialsForStrings_, v26, v27);
    case 6:
      v57 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v60 = objc_msgSend_objectAtIndex_(v57, v58, 2, v59);

      return MEMORY[0x2A1C70FE8](self, sel_tonesForString_, v60, v61);
    case 7:

      return (MEMORY[0x2A1C70FE8])(self, sel_wubixingCodes, *&key);
    case 8:

      return objc_msgSend_wubixingCodesForStandard_(self, a2, 0, v3);
    case 9:

      return (MEMORY[0x2A1C70FE8])(self, sel_bihuaCodes, *&key);
    case 10:
      v62 = objc_msgSend_codeLookupInformation(self, a2, *&key, v3);
      v31 = objc_msgSend_objectAtIndex_(v62, v63, 1, v64);
      goto LABEL_46;
    case 11:

      return (MEMORY[0x2A1C70FE8])(self, sel_cangjieCodes, *&key);
    case 12:
      v28 = objc_msgSend_codeLookupInformation(self, a2, *&key, v3);
      v31 = objc_msgSend_objectAtIndex_(v28, v29, 2, v30);
LABEL_46:

      return objc_msgSend_separatedInputCodesForString_(self, v32, v31, v33);
    case 13:
      v54 = objc_msgSend_codeLookupInformation(self, a2, *&key, v3);
      v37 = objc_msgSend_objectAtIndex_(v54, v55, 3, v56);
LABEL_38:

      return objc_msgSend_pinyinInformationForString_(self, v38, v37, v39);
    case 14:
      v14 = objc_msgSend_codeLookupInformation(self, a2, *&key, v3);
      v17 = objc_msgSend_objectAtIndex_(v14, v15, 3, v16);
LABEL_21:

      return objc_msgSend_zhuyinInformationForString_(self, v18, v17, v19);
    case 15:
      v10 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v13 = 3;
      goto LABEL_17;
    case 16:
      v10 = objc_msgSend_characterInformation(self, a2, *&key, v3);
      v13 = 4;
LABEL_17:

      result = objc_msgSend_objectAtIndex_(v10, v11, v13, v12);
      break;
    case 17:

      result = (MEMORY[0x2A1C70FE8])(self, sel_isIncludedInCurrentLanguage, *&key);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

- (id)wubixingCodesForStandard:(int)standard
{
  v5 = objc_msgSend_codeLookupInformation(self, a2, *&standard, v3);
  v8 = objc_msgSend_objectAtIndex_(v5, v6, 0, v7);
  if (!v8)
  {
    return 0;
  }

  v11 = objc_msgSend_componentsSeparatedByString_(v8, v9, @":", v10);
  if (objc_msgSend_count(v11, v12, v13, v14) != 1)
  {
    if (objc_msgSend_count(v11, v15, v16, v17) > standard)
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(v11, v21, standard, v22);
      goto LABEL_6;
    }

    return 0;
  }

  v18 = objc_msgSend_objectAtIndexedSubscript_(v11, v15, 0, v17);
LABEL_6:

  return objc_msgSend_componentsSeparatedByString_(v18, v19, @" ", v20);
}

@end
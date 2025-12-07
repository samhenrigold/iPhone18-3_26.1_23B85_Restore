@interface MecabraCandidate
+ (id)syntheticCandidateFromWords:(id)words withLexicon:(Lexicon *)lexicon language:(int)language;
- (BOOL)isEqual:(id)equal;
- (MecabraCandidate)initWithCandidate:(void *)candidate;
- (id)analysisString;
- (id)attributes;
- (id)category;
- (id)convertedAnalysisString;
- (id)convertedAnalysisStringForFirstSyllable;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryReading;
- (id)surface;
- (id)syllabifiedAnalysisString;
- (id)syllabifiedConvertedAnalysisString;
- (id)syllabifiedDictionaryReading;
- (id)syllablesInAnalysisString;
- (id)syllablesInConvertedAnalysisString;
- (id)syllablesInDictionaryReading;
- (id)syllablesInString:(id)string syllableLengths:(id)lengths;
- (id)wordIDs;
- (id)wordReadings;
- (id)words;
- (void)dealloc;
@end

@implementation MecabraCandidate

- (void)dealloc
{
  rawCandidate = self->_rawCandidate;
  if (rawCandidate)
  {
    (*(*rawCandidate + 16))(rawCandidate, a2);
    self->_rawCandidate = 0;
  }

  v4.receiver = self;
  v4.super_class = MecabraCandidate;
  [(MecabraCandidate *)&v4 dealloc];
}

- (id)surface
{
  result = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (result)
  {
    v5 = result;
    v6 = (*(*result + 40))(result);
    v7 = *v5;
    if (v6)
    {
      v8 = *(v7 + 40);
      v9 = v5;
    }

    else
    {
      v8 = *(v7 + 24);
      v9 = v5;
    }

    return v8(v9);
  }

  return result;
}

- (id)category
{
  v4 = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((*(*v4 + 72))(v4) != 1 && (*(*v5 + 72))(v5) != 7)
  {
    return 0;
  }

  v6 = (*(*v5 + 136))(v5);

  return MEMORY[0x2A1C70FE8](v6, sel_valueForKey_, @"category", v7);
}

- (id)analysisString
{
  v4 = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((*(*v4 + 72))(v4) != 1 && (*(*v5 + 72))(v5) != 7 && (*(*v5 + 72))(v5) != 6)
  {
    return 0;
  }

  v6 = *(*v5 + 56);

  return v6(v5);
}

- (id)convertedAnalysisString
{
  v4 = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (v4)
  {
    v5 = v4;
    if ((*(*v4 + 72))(v4) == 1 || (*(*v5 + 72))(v5) == 7)
    {
      v6 = *(*v5 + 224);
      v7 = v5;

      return v6(v7);
    }

    if ((*(*v5 + 72))(v5) == 6)
    {
      v6 = *(*v5 + 176);
      v7 = v5;

      return v6(v7);
    }
  }

  return 0;
}

- (id)dictionaryReading
{
  v4 = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (v4)
  {
    v5 = v4;
    if ((*(*v4 + 72))(v4) == 1 || (*(*v5 + 72))(v5) == 7)
    {
      v6 = *(*v5 + 232);
      v7 = v5;

      return v6(v7);
    }

    if ((*(*v5 + 72))(v5) == 6)
    {
      v6 = *(*v5 + 184);
      v7 = v5;

      return v6(v7);
    }
  }

  return 0;
}

- (id)attributes
{
  result = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (result)
  {
    v5 = *(*result + 136);

    return v5();
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_msgSend_rawCandidate(self, a2, zone, v3);
  if (result)
  {
    v10 = objc_msgSend_rawCandidate(self, v7, v8, v9);
    v11 = (**&v10[*(*v10 - 32)])(&v10[*(*v10 - 32)]);
    v14 = objc_msgSend_allocWithZone_(MecabraCandidate, v12, zone, v13);

    return objc_msgSend_initWithCandidate_(v14, v15, v11, v16);
  }

  return result;
}

- (MecabraCandidate)initWithCandidate:(void *)candidate
{
  v5.receiver = self;
  v5.super_class = MecabraCandidate;
  result = [(MecabraCandidate *)&v5 init];
  if (result)
  {
    result->_rawCandidate = candidate;
  }

  return result;
}

- (id)convertedAnalysisStringForFirstSyllable
{
  v5 = MecabraCandidateCopySyllableLengthArrayInAnalysisString(self, a2, v2, v3);
  if (objc_msgSend_count(v5, v6, v7, v8) && (v11 = objc_msgSend_objectAtIndex_(v5, v9, 0, v10), v15 = objc_msgSend_intValue(v11, v12, v13, v14), v19 = objc_msgSend_analysisString(self, v16, v17, v18), objc_msgSend_length(v19, v20, v21, v22) >= v15))
  {
    v27 = objc_msgSend_convertedAnalysisString(self, v23, v24, v25);
    v31 = objc_msgSend_intValue(v11, v28, v29, v30);
    v26 = objc_msgSend_substringToIndex_(v27, v32, v31, v33);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)description
{
  v5 = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (v5 && ((v9 = v5, (*(*v5 + 72))(v5) == 1) || (*(*v9 + 72))(v9) == 7))
  {
    v10 = objc_msgSend_rawCandidate(self, v6, v7, v8);
    v11 = (*(*v10 + 392))(v10);
    v12 = MEMORY[0x29EDBA0F8];
    Surface = MecabraCandidateGetSurface(self, v13, v14, v15);
    v20 = objc_msgSend_analysisString(self, v17, v18, v19);
    v24 = objc_msgSend_convertedAnalysisString(self, v21, v22, v23);
    v28 = objc_msgSend_dictionaryReading(self, v25, v26, v27);
    v32 = objc_msgSend_rawCandidate(self, v29, v30, v31);
    if (v32)
    {
      v32 = (*(*v32 + 112))(v32);
    }

    v35 = -1000.0;
    if (v11 != -1.79769313e308)
    {
      v35 = v11;
    }

    return objc_msgSend_stringWithFormat_(v12, v33, @"%@ (AS:%@ CAS:%@ DR:%@), %d, %f", v34, Surface, v20, v24, v28, v32, *&v35);
  }

  else
  {
    v37 = MEMORY[0x29EDBA0F8];
    v38 = MecabraCandidateGetSurface(self, v6, v7, v8);
    v42 = objc_msgSend_analysisString(self, v39, v40, v41);
    v46 = objc_msgSend_convertedAnalysisString(self, v43, v44, v45);
    v50 = objc_msgSend_dictionaryReading(self, v47, v48, v49);
    v54 = objc_msgSend_rawCandidate(self, v51, v52, v53);
    if (v54)
    {
      v54 = (*(*v54 + 112))(v54);
    }

    return objc_msgSend_stringWithFormat_(v37, v55, @"%@ (AS:%@ CAS:%@ DR:%@), %d", v56, v38, v42, v46, v50, v54);
  }
}

- (BOOL)isEqual:(id)equal
{
  Surface = MecabraCandidateGetSurface(self, a2, equal, v3);
  v10 = MecabraCandidateGetSurface(equal, v7, v8, v9);
  if (!(Surface | v10) || (isEqualToString = objc_msgSend_isEqualToString_(Surface, v11, v10, v13)) != 0)
  {
    v15 = objc_msgSend_analysisString(self, v11, v12, v13);
    v19 = objc_msgSend_analysisString(equal, v16, v17, v18);
    if (!(v15 | v19) || (isEqualToString = objc_msgSend_isEqualToString_(v15, v20, v19, v22)) != 0)
    {
      v23 = objc_msgSend_convertedAnalysisString(self, v20, v21, v22);
      v27 = objc_msgSend_convertedAnalysisString(equal, v24, v25, v26);
      if (!(v23 | v27) || (isEqualToString = objc_msgSend_isEqualToString_(v23, v28, v27, v30)) != 0)
      {
        v31 = objc_msgSend_dictionaryReading(self, v28, v29, v30);
        v35 = objc_msgSend_dictionaryReading(equal, v32, v33, v34);
        if (v31 | v35)
        {

          LOBYTE(isEqualToString) = objc_msgSend_isEqualToString_(v31, v36, v35, v37);
        }

        else
        {
          LOBYTE(isEqualToString) = 1;
        }
      }
    }
  }

  return isEqualToString;
}

- (id)syllabifiedAnalysisString
{
  v4 = objc_msgSend_syllablesInAnalysisString(self, a2, v2, v3);

  return objc_msgSend_componentsJoinedByString_(v4, v5, @"'", v6);
}

- (id)syllabifiedConvertedAnalysisString
{
  v4 = objc_msgSend_syllablesInConvertedAnalysisString(self, a2, v2, v3);

  return objc_msgSend_componentsJoinedByString_(v4, v5, @"'", v6);
}

- (id)syllabifiedDictionaryReading
{
  v4 = objc_msgSend_syllablesInDictionaryReading(self, a2, v2, v3);

  return objc_msgSend_componentsJoinedByString_(v4, v5, @"'", v6);
}

- (id)syllablesInString:(id)string syllableLengths:(id)lengths
{
  v47 = *MEMORY[0x29EDCA608];
  v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(lengths, v7, &v42, v46, 16);
  if (v8)
  {
    v12 = v8;
    v13 = 0;
    v14 = *v43;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(lengths);
        }

        v17 = objc_msgSend_unsignedIntegerValue(*(*(&v42 + 1) + 8 * v15), v9, v10, v11);
        v21 = objc_msgSend_length(string, v18, v19, v20);
        v13 = v17 + v16;
        if (v17 < 1 || v21 < v13)
        {
          v13 = v16;
          goto LABEL_13;
        }

        v23 = objc_msgSend_substringWithRange_(string, v9, v16, v17);
        objc_msgSend_addObject_(v6, v24, v23, v25);
        ++v15;
        v16 += v17;
      }

      while (v12 != v15);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(lengths, v9, &v42, v46, 16);
    }

    while (v12);
LABEL_13:
    if (v13 > objc_msgSend_length(string, v9, v10, v11))
    {
      objc_msgSend_addObject_(v6, v26, @"GARBAGE", v28);
    }
  }

  else
  {
    objc_msgSend_length(string, v9, v10, v11);
    v13 = 0;
  }

  if (v13 < objc_msgSend_length(string, v26, v27, v28))
  {
    v32 = MEMORY[0x29EDBA0F8];
    v33 = objc_msgSend_length(string, v29, v30, v31);
    v35 = objc_msgSend_substringWithRange_(string, v34, v13, v33 - v13);
    v38 = objc_msgSend_stringWithFormat_(v32, v36, @"(%@)", v37, v35);
    objc_msgSend_addObject_(v6, v39, v38, v40);
  }

  return v6;
}

- (id)syllablesInAnalysisString
{
  v5 = MecabraCandidateCopySyllableLengthArrayInAnalysisString(self, a2, v2, v3);
  v9 = objc_msgSend_analysisString(self, v6, v7, v8);
  v11 = objc_msgSend_syllablesInString_syllableLengths_(self, v10, v9, v5);

  return v11;
}

- (id)syllablesInConvertedAnalysisString
{
  v5 = MecabraCandidateCopySyllableLengthArrayInConvertedAnalysisString(self, a2, v2, v3);
  v9 = objc_msgSend_convertedAnalysisString(self, v6, v7, v8);
  v11 = objc_msgSend_syllablesInString_syllableLengths_(self, v10, v9, v5);

  return v11;
}

- (id)syllablesInDictionaryReading
{
  v5 = MecabraCandidateCopySyllableLengthArrayInDictionaryReading(self, a2, v2, v3);
  v9 = objc_msgSend_dictionaryReading(self, v6, v7, v8);
  v11 = objc_msgSend_syllablesInString_syllableLengths_(self, v10, v9, v5);

  return v11;
}

- (id)words
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v7 = objc_msgSend_rawCandidate(self, v4, v5, v6);
  if ((*(*v7 + 48))(v7))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      WordLengthAtIndex = MecabraCandidateGetWordLengthAtIndex(self, v11, v8, v9);
      Surface = MecabraCandidateGetSurface(self, v13, v14, v15);
      v18 = objc_msgSend_substringWithRange_(Surface, v17, v10, WordLengthAtIndex);
      if (objc_msgSend_length(v18, v19, v20, v21))
      {
        objc_msgSend_addObject_(v3, v22, v18, v24);
      }

      v10 += WordLengthAtIndex;
      ++v11;
      v25 = objc_msgSend_rawCandidate(self, v22, v23, v24);
    }

    while (v11 < (*(*v25 + 48))(v25));
  }

  return v3;
}

- (id)wordReadings
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v7 = objc_msgSend_rawCandidate(self, v4, v5, v6);
  if ((*(*v7 + 48))(v7))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      WordReadingLengthAtIndex = MecabraCandidateGetWordReadingLengthAtIndex(self, v11, v8, v9);
      v16 = objc_msgSend_analysisString(self, v13, v14, v15);
      v18 = objc_msgSend_substringWithRange_(v16, v17, v10, WordReadingLengthAtIndex);
      if (objc_msgSend_length(v18, v19, v20, v21))
      {
        objc_msgSend_addObject_(v3, v22, v18, v24);
      }

      v10 += WordReadingLengthAtIndex;
      ++v11;
      v25 = objc_msgSend_rawCandidate(self, v22, v23, v24);
    }

    while (v11 < (*(*v25 + 48))(v25));
  }

  return v3;
}

- (id)wordIDs
{
  v4 = objc_msgSend_rawCandidate(self, a2, v2, v3);
  if (!v4)
  {
    return 0;
  }

  v8 = v4;
  v9 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v5, v6, v7);
  if ((*(*v8 + 48))(v8))
  {
    v10 = 0;
    do
    {
      v11 = (*(*v8 + 120))(v8, v10);
      v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v12, *(v11 + 8), v13);
      objc_msgSend_addObject_(v9, v15, v14, v16);
      ++v10;
    }

    while (v10 < (*(*v8 + 48))(v8));
  }

  return v9;
}

+ (id)syntheticCandidateFromWords:(id)words withLexicon:(Lexicon *)lexicon language:(int)language
{
  v33 = *MEMORY[0x29EDCA608];
  __src = 0;
  v30 = 0;
  v31 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(words, a2, &v25, v32, 16);
  if (v7)
  {
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(words);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v24 = 0;
        if (lexicon)
        {
          sub_299322050(lexicon, v10, &v24);
        }

        v11 = v30;
        if (v30 >= v31)
        {
          v13 = __src;
          v14 = v30 - __src;
          v15 = (v30 - __src) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            sub_299212A8C();
          }

          v17 = v31 - __src;
          if ((v31 - __src) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
          v19 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v16;
          }

          if (v19)
          {
            sub_2992F86B0(&__src, v19);
          }

          v20 = (4 * v15);
          v21 = &v20[-((v30 - __src) >> 2)];
          *v20 = 0;
          v12 = (v20 + 1);
          memcpy(v21, v13, v14);
          v22 = __src;
          __src = v21;
          v30 = v12;
          v31 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v30 = 0;
          v12 = v11 + 4;
        }

        v30 = v12;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(words, v10, &v25, v32, 16);
    }

    while (v7);
  }

  operator new();
}

@end
@interface PRPinyinContext
- (BOOL)_addEnglishWordForRange:(_NSRange)range quickly:(BOOL)quickly;
- (BOOL)_addEnglishWordsEndingAtIndex:(unint64_t)index quickly:(BOOL)quickly;
- (PRPinyinContext)init;
- (id)completions;
- (id)correction;
- (id)guesses;
- (void)_addDeletions;
- (void)_addEnglishWordsQuickly:(BOOL)quickly;
- (void)_addInsertions;
- (void)_addPrefixes;
- (void)_addReplacements;
- (void)_addSpecialEnglishWords;
- (void)_addTranspositions;
- (void)_addValidSequenceReplacements;
- (void)_advanceIndexes;
- (void)_filterModifications;
- (void)_removeModificationsAndMoveStartingPoint;
- (void)_removePrefixes;
- (void)addInputCharacter:(unsigned __int16)character geometryModel:(void *)model geometryData:(id)data;
- (void)dealloc;
- (void)removeNumberOfInputCharacters:(unint64_t)characters;
- (void)reset;
@end

@implementation PRPinyinContext

- (PRPinyinContext)init
{
  if (!_sharedChecker)
  {
    _sharedChecker = objc_alloc_init(AppleSpell);
  }

  v5.receiver = self;
  v5.super_class = PRPinyinContext;
  v3 = [(PRPinyinContext *)&v5 init];
  v3->_modifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3->_addedModifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3->_removedModifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3->_addedRemovedModifications = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3->_prefixes = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3->_buffer = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  v3->_altBuffer = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  v3->_altBufferScores = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
  v3->_geometryDataArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3->_syllableLengthArray = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
  v3->_connection = [_sharedChecker databaseConnectionForLanguageObject:{+[PRLanguage languageObjectWithIdentifier:](PRLanguage, "languageObjectWithIdentifier:", @"en_CN"}];
  v3->_romanization = 0;
  v3->_validSequenceCorrectionThreshold = 0.0;
  [(PRPinyinContext *)v3 reset];
  return v3;
}

- (void)dealloc
{
  free(self->_buffer);
  free(self->_altBuffer);
  free(self->_altBufferScores);

  free(self->_syllableLengthArray);
  v3.receiver = self;
  v3.super_class = PRPinyinContext;
  [(PRPinyinContext *)&v3 dealloc];
}

- (void)_removeModificationsAndMoveStartingPoint
{
  v3 = [(NSMutableArray *)self->_modifications count];
  startingPoint = self->_startingPoint;
  v42 = 0;
  length = self->_length;
  v6 = &OBJC_IVAR___PRSentenceCorrection__range;
  v38 = length > startingPoint && findPinyin(&self->_buffer[startingPoint], length - startingPoint, self->_romanization, 0, 0, 0, 0, 0, &v42, 0, 0, 0, 0, 0, 0, 0, 0, 0) && v42 + self->_startingPoint == self->_length;
  v37 = startingPoint;
  if (v3)
  {
    v7 = 0;
    v8 = v3 - 1;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_modifications objectAtIndex:v8];
      modificationType = [v9 modificationType];
      syllableRange = [v9 syllableRange];
      v13 = syllableRange + v12;
      if (self->_startingPoint >= syllableRange + v12)
      {
        goto LABEL_41;
      }

      v14 = self->_length;
      if (v14 <= v13)
      {
        goto LABEL_41;
      }

      v15 = syllableRange;
      v41 = 0;
      v16 = v6[59];
      v17 = next_pinyin(*(&self->super.super.isa + v16) + v13, v14 - v13, self->_romanization, 0, &v41, 0);
      v40 = 0;
      v18 = v17 ? (v41 - v17) : 0;
      v39 = 0;
      if ([v9 producesPartialSyllable])
      {
        break;
      }

      if ([v9 isTemporary])
      {
        break;
      }

      if (v38 && self->_startingPoint <= v15 && modificationType != 5)
      {
        [v9 modificationScore];
        if (v19 > self->_validSequenceCorrectionThreshold)
        {
          break;
        }
      }

      if (v18)
      {
        if (v18 == 1 && self->_length - v13 > 1)
        {
          break;
        }
      }

      else
      {
        v20 = *(&self->super.super.isa + v16);
        v21 = *(v20 + v13);
        v24 = v21 <= 0xF7 && v21 - 216 >= 0x1F && v21 - 192 >= 0x17 && (v21 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (!v24 || ((v25 = v21 - 138, v26 = v25 > 0x15, v27 = (1 << v25) & 0x350015, !v26) ? (v28 = v27 == 0) : (v28 = 1), !v28))
        {
          if (!is_partial_pinyin((v20 + v13), self->_length - v13, self->_romanization, 0))
          {
            break;
          }
        }
      }

      if ([v9 _shouldAppendLetter:(*(&self->super.super.isa + v16))[v13] romanization:self->_romanization])
      {
        break;
      }

      if (v18 < 2 || !findPinyin(*(&self->super.super.isa + v16) + v13, self->_length - v13, self->_romanization, 0, 0, 0, 0, 0, &v40, 0, &v39, 0, 0, 0, 0, 0, 0, self->_syllableLengthArray))
      {
        goto LABEL_40;
      }

      v30 = self->_length;
      if (v40 + v13 >= v30)
      {
        if (v39 >= 3)
        {
          v34 = v30 - 1;
          if (self->_altBuffer[v34])
          {
            LOBYTE(v29) = self->_altBufferScores[v34];
            if (v29 / 100.0 <= self->_validSequenceCorrectionThreshold)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_40;
      }

      if (v39 > 1 || v30 - v13 >= 8 && v39 == 1)
      {
        goto LABEL_60;
      }

      v31 = *self->_syllableLengthArray;
      if (v31 != 3)
      {
        if (v31 == 2)
        {
          v32 = (*(&self->super.super.isa + v16) + v13);
          v33 = *v32;
          if ((v33 == 104 || v33 == 103 || v33 == 100) && v32[1] == 101)
          {
LABEL_60:
            v6 = &OBJC_IVAR___PRSentenceCorrection__range;
            if (v40 > v7 || v7 && v40 == v7 && v13 < v37)
            {
              v7 = v40;
              v37 = v13;
            }

            goto LABEL_41;
          }
        }

        goto LABEL_40;
      }

      v35 = (*(&self->super.super.isa + v16) + v13);
      v36 = *v35;
      if (v36 == 103)
      {
        if (v35[1] == 101 && v35[2] == 105)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      }

      v6 = &OBJC_IVAR___PRSentenceCorrection__range;
      if (v36 == 100 && v35[1] == 101 && v35[2] == 105)
      {
        goto LABEL_60;
      }

LABEL_41:
      if (--v8 == -1)
      {
        goto LABEL_73;
      }
    }

    [(NSMutableArray *)self->_removedModifications addObject:v9];
    [(NSMutableArray *)self->_modifications removeObjectAtIndex:v8];
LABEL_40:
    v6 = &OBJC_IVAR___PRSentenceCorrection__range;
    goto LABEL_41;
  }

LABEL_73:
  self->_startingPoint = v37;
}

- (void)_advanceIndexes
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  nextIndexes = self->_nextIndexes;
  v4 = self->_nextIndexes[0];
  lastIndexes = self->_lastIndexes;
  v6 = self->_lastIndexes[0];
  buffer = self->_buffer;
  startingPoint = self->_startingPoint;
  length = self->_length;
  v23 = 0;
  findPinyin(&buffer[startingPoint], length - startingPoint, self->_romanization, 1, &v29, &v28, &v27, &v26, &v25, &v24, 0, &v23, 0, 0, 0, 0, 0, 0);
  *lastIndexes = v26 + self->_startingPoint;
  v10 = v28;
  lastIndexes[1] = v27 + self->_startingPoint;
  lastIndexes[2] = v10 + self->_startingPoint;
  lastIndexes[3] = v29 + self->_startingPoint;
  v11 = v24;
  *nextIndexes = v25 + self->_startingPoint;
  nextIndexes[1] = v11 + self->_startingPoint;
  v12 = lastIndexes[2];
  v13 = lastIndexes[3];
  if (v12 == v13 && v4 < v13)
  {
    if (lastIndexes[1] == v12 && v6 < v4)
    {
      lastIndexes[2] = v4;
      v4 = v6;
    }

    lastIndexes[3] = v4;
  }

  v14 = *nextIndexes;
  self->_startIndex = *nextIndexes;
  v15 = nextIndexes[1];
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = nextIndexes[1];
  }

  if (v15 > self->_startingPoint)
  {
    v14 = v16;
  }

  self->_startIndex = v14;
  if (v14 > *lastIndexes)
  {
    self->_startIndex = v14 - 1;
  }

  v17 = *nextIndexes;
  v18 = *nextIndexes + 7;
  self->_endIndex = v18;
  v19 = self->_length;
  if (v18 < v19)
  {
    v20 = self->_buffer;
    if (v20[v18] == 39)
    {
      v21 = v17 + 8;
      do
      {
        v18 = v21;
        self->_endIndex = v21;
        v19 = self->_length;
        if (v21 >= v19)
        {
          break;
        }

        v22 = v20[v21++];
      }

      while (v22 == 39);
    }
  }

  if (v18 > v19)
  {
    self->_endIndex = v19;
    v19 = self->_length;
  }

  if ((isFullOrAbbreviatedPinyin(&self->_buffer[*lastIndexes], v19 - *lastIndexes, self->_romanization, &self->_abbreviatedSyllableCount) & 1) == 0)
  {
    self->_abbreviatedSyllableCount = 0;
  }

  self->_lastSyllableIsPartial = v23;
}

- (BOOL)_addEnglishWordForRange:(_NSRange)range quickly:(BOOL)quickly
{
  v40 = *MEMORY[0x1E69E9840];
  if (range.length - 2 > 0xC)
  {
LABEL_32:
    LOBYTE(v9) = 0;
    return v9;
  }

  length = range.length;
  location = range.location;
  if (quickly)
  {
    connection = 0;
  }

  else
  {
    connection = self->_connection;
  }

  v9 = [_sharedChecker englishStringsFromWordBuffer:&self->_buffer[range.location] length:range.length connection:connection];
  if (v9)
  {
    v10 = v9;
    v9 = [v9 count];
    if (v9)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      modifications = self->_modifications;
      v12 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v35;
LABEL_9:
        v15 = 0;
        while (1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(modifications);
          }

          v16 = *(*(&v34 + 1) + 8 * v15);
          if ([v16 modificationType] == 5 && location == objc_msgSend(v16, "range") && length == v17)
          {
            goto LABEL_32;
          }

          if (v13 == ++v15)
          {
            v13 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v13)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v9)
      {
        v19 = v9;
        obj = v10;
        quicklyCopy = quickly;
        v21 = *v31;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = self->_length;
            v24 = length;
            if (length + location < v23)
            {
              v25 = length + location;
              v24 = length;
              while (self->_buffer[v25] == 39)
              {
                ++v25;
                ++v24;
                if (v25 >= v23)
                {
                  v24 = v23 - location;
                  break;
                }
              }
            }

            LOBYTE(v28) = quicklyCopy;
            v26 = [[PRPinyinModification alloc] initWithRange:location replacementString:length modificationType:*(*(&v30 + 1) + 8 * i) syllableRange:5 modificationScore:location isTemporary:v24, 1.0, v28];
            [(NSMutableArray *)self->_modifications addObject:v26];
            [(NSMutableArray *)self->_addedModifications addObject:v26];
          }

          v19 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v19);
        LOBYTE(v9) = 1;
      }
    }
  }

  return v9;
}

- (BOOL)_addEnglishWordsEndingAtIndex:(unint64_t)index quickly:(BOOL)quickly
{
  quicklyCopy = quickly;
  v20 = 0;
  lastIndexes = self->_lastIndexes;
  v8 = self->_lastIndexes[2];
  v9 = self->_lastIndexes[3];
  if (v9 >= v8)
  {
    quickly = 0;
  }

  else
  {
    quickly = [(PRPinyinContext *)self _addEnglishWordForRange:self->_lastIndexes[3] quickly:index - v9, quickly];
    v8 = lastIndexes[2];
    v9 = lastIndexes[3];
  }

  if (v9 + 2 < v8)
  {
    v11 = next_pinyin(&self->_buffer[v9], v8 + ~v9, self->_romanization, 0, &v20, 0);
    v8 = lastIndexes[2];
    if (v11)
    {
      if (&self->_buffer[v8 - 1] == v20)
      {
        quickly |= [(PRPinyinContext *)self _addEnglishWordForRange:v8 - 1 quickly:index - v8 + 1, quicklyCopy];
        v8 = lastIndexes[2];
      }
    }
  }

  v12 = lastIndexes[1];
  if (v8 < v12)
  {
    quickly |= [(PRPinyinContext *)self _addEnglishWordForRange:v8 quickly:index - v8, quicklyCopy];
    v12 = lastIndexes[1];
    v8 = lastIndexes[2];
  }

  if (v8 + 2 < v12)
  {
    v13 = next_pinyin(&self->_buffer[v8], v12 + ~v8, self->_romanization, 0, &v20, 0);
    v12 = lastIndexes[1];
    if (v13)
    {
      if (&self->_buffer[v12 - 1] == v20)
      {
        quickly |= [(PRPinyinContext *)self _addEnglishWordForRange:v12 - 1 quickly:index - v12 + 1, quicklyCopy];
        v12 = lastIndexes[1];
      }
    }
  }

  v14 = *lastIndexes;
  if (v12 < *lastIndexes)
  {
    quickly |= [(PRPinyinContext *)self _addEnglishWordForRange:v12 quickly:index - v12, quicklyCopy];
    v14 = *lastIndexes;
    v12 = lastIndexes[1];
  }

  if (v12 + 2 < v14)
  {
    v15 = next_pinyin(&self->_buffer[v12], v14 + ~v12, self->_romanization, 0, &v20, 0);
    v14 = *lastIndexes;
    if (v15)
    {
      if (&self->_buffer[v14 - 1] == v20)
      {
        quickly |= [(PRPinyinContext *)self _addEnglishWordForRange:v14 - 1 quickly:index - v14 + 1, quicklyCopy];
        v14 = *lastIndexes;
      }
    }
  }

  v16 = [(PRPinyinContext *)self _addEnglishWordForRange:v14 quickly:index - v14, quicklyCopy]| quickly;
  v17 = self->_nextIndexes[0];
  if (v17 != *lastIndexes)
  {
    v16 |= [(PRPinyinContext *)self _addEnglishWordForRange:v17 quickly:index - v17, quicklyCopy];
    v17 = self->_nextIndexes[0];
  }

  v18 = self->_nextIndexes[1];
  if (v18 != v17 && v18 != *lastIndexes)
  {
    LOBYTE(v16) = [(PRPinyinContext *)self _addEnglishWordForRange:self->_nextIndexes[1] quickly:index - v18, quicklyCopy]| v16;
  }

  return v16 & 1;
}

- (void)_addEnglishWordsQuickly:(BOOL)quickly
{
  [(PRPinyinContext *)self _addEnglishWordsEndingAtIndex:self->_lengthBeforeApostrophes quickly:quickly];
  if (!quickly)
  {
    lengthBeforeApostrophes = self->_lengthBeforeApostrophes;
    if (lengthBeforeApostrophes)
    {
      if (self->_previouslyAnalyzedLength < lengthBeforeApostrophes - 1 && is_partial_pinyin(&self->_buffer[lengthBeforeApostrophes - 1], 1uLL, self->_romanization, 0))
      {
        v6 = self->_lengthBeforeApostrophes - 1;

        [(PRPinyinContext *)self _addEnglishWordsEndingAtIndex:v6 quickly:0];
      }
    }
  }
}

- (void)_addSpecialEnglishWords
{
  lengthBeforeApostrophes = self->_lengthBeforeApostrophes;
  if (lengthBeforeApostrophes >= 8)
  {
    v3 = lengthBeforeApostrophes - 8;
  }

  else
  {
    v3 = 0;
  }

  if (v3 + 3 >= lengthBeforeApostrophes)
  {
    return;
  }

  v5 = 8;
  if (lengthBeforeApostrophes < 8)
  {
    v5 = self->_lengthBeforeApostrophes;
  }

  v6 = -v5;
  v7 = &self->_buffer[-v5];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v9 = v7[lengthBeforeApostrophes];
    if (v9 == 105)
    {
      v10 = 0;
      v11 = v7[lengthBeforeApostrophes + 1];
      if (v11 > 0x6C)
      {
        if (v11 == 109)
        {
LABEL_31:
          if (v7[lengthBeforeApostrophes + 2] == 97 && v7[lengthBeforeApostrophes + 3] == 99)
          {
            goto LABEL_33;
          }

          goto LABEL_47;
        }

        if (v11 != 112)
        {
          goto LABEL_48;
        }

LABEL_22:
        v12 = v7[lengthBeforeApostrophes + 2];
        if (v12 != 111 && v12 != 97 || v7[lengthBeforeApostrophes + 3] != 100)
        {
          v10 = 0;
          if (lengthBeforeApostrophes + v6 + 5 >= lengthBeforeApostrophes || v12 != 104)
          {
            goto LABEL_48;
          }

          if (v7[lengthBeforeApostrophes + 3] == 111 && v7[lengthBeforeApostrophes + 4] == 110 && v7[lengthBeforeApostrophes + 5] == 101)
          {
            v10 = 6;
            goto LABEL_34;
          }

          goto LABEL_47;
        }

LABEL_33:
        v10 = 4;
LABEL_34:
        if (lengthBeforeApostrophes + v6 + v10 < lengthBeforeApostrophes && v7[lengthBeforeApostrophes + v10] == 115)
        {
          ++v10;
        }

        goto LABEL_37;
      }

      if (v11 == 77)
      {
        goto LABEL_31;
      }

      if (v11 == 80)
      {
        goto LABEL_22;
      }
    }

    else if ((v7[lengthBeforeApostrophes + 1] | 0x20) == 0x6D)
    {
      if (v7[lengthBeforeApostrophes + 2] != 97 || v7[lengthBeforeApostrophes + 3] != 99)
      {
        goto LABEL_47;
      }

      v8 = lengthBeforeApostrophes + v6 + 1;
      if (lengthBeforeApostrophes + v6 + 4 >= lengthBeforeApostrophes)
      {
        v10 = 3;
      }

      else
      {
        v10 = 3;
        if (v7[lengthBeforeApostrophes + 4] == 115)
        {
          v10 = 4;
        }
      }
    }

    else
    {
      if (lengthBeforeApostrophes + v6 + 7 >= lengthBeforeApostrophes || (v9 | 0x20) != 0x66)
      {
        goto LABEL_42;
      }

      if (strncmp(&v7[lengthBeforeApostrophes + 1], "acebook", 7uLL))
      {
        if (strncmp(&v7[lengthBeforeApostrophes + 1], "acetime", 7uLL))
        {
LABEL_42:
          if (lengthBeforeApostrophes + v6 + 5 < lengthBeforeApostrophes && (v9 | 0x20) == 0x72)
          {
            v13 = strncmp(&v7[lengthBeforeApostrophes + 1], "etina", 5uLL);
            v10 = 6;
            if (v13)
            {
              v10 = 0;
            }

            else
            {
              v8 = lengthBeforeApostrophes + v6;
            }

            goto LABEL_48;
          }

LABEL_47:
          v10 = 0;
          goto LABEL_48;
        }

        v10 = 8;
LABEL_37:
        v8 = v3;
        goto LABEL_48;
      }

      v10 = 8;
      v8 = v3;
    }

LABEL_48:
    if (v8 + v10 >= lengthBeforeApostrophes)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if (v8 + v10 < lengthBeforeApostrophes)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (lengthBeforeApostrophes + v6 + 4 >= lengthBeforeApostrophes)
    {
      break;
    }

    ++v3;
    ++v6;
    ++v7;
  }

  while (!v14);
  if (v14)
  {
    v15 = 0;
    v21 = 0;
    lastIndexes = self->_lastIndexes;
    while (1)
    {
      v17 = lastIndexes[v15];
      if (v8 == v17 || v15 <= 1 && v8 == self->_nextIndexes[v15])
      {
        break;
      }

      if (v8 > v17 + 1 && next_pinyin(&self->_buffer[v17], v8 - v17, self->_romanization, 0, &v21, 0) && &self->_buffer[v8] == v21)
      {
        break;
      }

      v18 = lastIndexes[v15];
      v19 = v18 > v8 + 1 && next_pinyin(&self->_buffer[v8], v18 - v8, self->_romanization, 0, &v21, 0) && &self->_buffer[lastIndexes[v15]] == v21;
      if (!v19 && v15++ < 3)
      {
        continue;
      }

      if (!v19)
      {
        return;
      }

      break;
    }

    [(PRPinyinContext *)self _addEnglishWordForRange:v8 quickly:v14, 0, 80];
  }
}

- (void)_addTranspositions
{
  v62 = *MEMORY[0x1E69E9840];
  lastIndexes = self->_lastIndexes;
  if (self->_lastIndexes[1] >= self->_startIndex)
  {
    startIndex = self->_startIndex;
  }

  else
  {
    startIndex = self->_lastIndexes[1];
  }

  v4 = startIndex + 1;
  endIndex = self->_endIndex;
  if (startIndex + 1 < endIndex)
  {
    selfCopy2 = self;
    v7 = &OBJC_IVAR___PRSentenceCorrection__range;
    v45 = self->_lastIndexes;
    while (1)
    {
      v8 = startIndex;
      startIndex = v4;
      buffer = selfCopy2->_buffer;
      v10 = buffer[v8];
      v11 = buffer[startIndex];
      v12 = (v10 - 65) >= 0x1A && (v11 - 65) >= 0x1A;
      if (!v12)
      {
        return;
      }

      v13 = v7[65];
      v14 = v10 == 97 && *(&selfCopy2->super.super.isa + v13) == 1;
      if ((!v14 || v11 != 105) && (v10 - 97) <= 0x19 && (v11 - 97) <= 0x19)
      {
        break;
      }

LABEL_79:
      v4 = startIndex + 1;
      if (startIndex + 1 >= endIndex)
      {
        return;
      }
    }

    v60 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v56[0] = v11;
    v56[1] = v10;
    buffer[v8] = v11;
    selfCopy2->_buffer[startIndex] = v10;
    if (v8 >= *lastIndexes)
    {
      if (findPinyin(&selfCopy2->_buffer[*lastIndexes], selfCopy2->_endIndex - *lastIndexes, *(&selfCopy2->super.super.isa + v13), 0, 0, 0, 0, &v60, &v59, 0, &v58, &v57, 0, 0, 0, 0, 0, selfCopy2->_syllableLengthArray))
      {
        v16 = *lastIndexes;
        if (v59 + *lastIndexes == selfCopy2->_endIndex && (v57 != 1 || v8 < v60 + v16))
        {
          if (v58)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = (selfCopy2->_syllableLengthArray + 1);
            v22 = 0x7FFFFFFFFFFFFFFFLL;
            v46 = v58;
            while (1)
            {
              v23 = *(v21 - 1);
              v24 = v23 + v16;
              if (v8 >= v16)
              {
                if (startIndex < v24)
                {
                  if (v57)
                  {
                    v19 |= v58 - 1 == v17;
                  }

                  v18 = *(v21 - 1);
                  v25 = v16;
                  goto LABEL_38;
                }

                if (v8 < v24)
                {
                  v18 = *v21;
                  if (v57)
                  {
                    v19 |= v58 - 2 == v17;
                  }

                  v20 = *(v21 - 1);
                  v22 = v16;
                  v25 = v23 + v16;
                  goto LABEL_38;
                }
              }

              v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_38:
              if (v25 == 0x7FFFFFFFFFFFFFFFLL)
              {
                ++v17;
                ++v21;
                v16 += v23;
                if (v17 < v58)
                {
                  continue;
                }
              }

              goto LABEL_61;
            }
          }

          goto LABEL_62;
        }
      }
    }

    v26 = lastIndexes[1];
    if (v8 < v26 || !findPinyin(&selfCopy2->_buffer[v26], selfCopy2->_endIndex - v26, *(&selfCopy2->super.super.isa + v13), 0, 0, 0, 0, &v60, &v59, 0, &v58, &v57, 0, 0, 0, 0, 0, selfCopy2->_syllableLengthArray) || (v27 = lastIndexes[1], v59 + v27 != selfCopy2->_length) || v57 == 1 && v8 >= v60 + v27)
    {
LABEL_62:
      v48 = 0;
      v49 = 0;
      v51 = 0;
      v46 = 0;
      goto LABEL_63;
    }

    if (!v58)
    {
      v48 = 0;
      v49 = 0;
      v51 = 0;
      v46 = -1;
LABEL_63:
      v47 = 0x7FFFFFFFFFFFFFFFLL;
      v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_64:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      modifications = selfCopy2->_modifications;
      v34 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v53;
LABEL_66:
        v37 = 0;
        while (1)
        {
          if (*v53 != v36)
          {
            objc_enumerationMutation(modifications);
          }

          v38 = *(*(&v52 + 1) + 8 * v37);
          if ([v38 modificationType] == 2 && v8 == objc_msgSend(v38, "range") && v39 == 2)
          {
            break;
          }

          if (v35 == ++v37)
          {
            v35 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v35)
            {
              goto LABEL_66;
            }

            goto LABEL_76;
          }
        }
      }

      else
      {
LABEL_76:
        if (v51)
        {
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v56 length:2];
          v42 = [PRPinyinModification alloc];
          BYTE1(v44) = self->_length == 3;
          LOBYTE(v44) = v49 & 1;
          v43 = [(PRPinyinModification *)v42 initWithRange:v8 replacementString:2 modificationType:v41 syllableRange:2 additionalSyllableRange:v25 modificationScore:v51 syllableCountScore:1.0 syllableLetters:v47 producesPartialSyllable:v48 isTemporary:v46, &self->_buffer[v25], v44];
          [(NSMutableArray *)self->_modifications addObject:v43];
          [(NSMutableArray *)self->_addedModifications addObject:v43];
        }
      }

      selfCopy2 = self;
      self->_buffer[v8] = v10;
      self->_buffer[startIndex] = v11;
      lastIndexes = v45;
      endIndex = self->_endIndex;
      v7 = &OBJC_IVAR___PRSentenceCorrection__range;
      goto LABEL_79;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v28 = (selfCopy2->_syllableLengthArray + 1);
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = 1;
    v30 = v58 - 1;
    v46 = v58 - 1;
    while (1)
    {
      v31 = *(v28 - 1);
      v32 = v31 + v27;
      if (v8 >= v27)
      {
        if (startIndex < v32)
        {
          if (v57)
          {
            v19 |= v30 == 0;
          }

          v18 = *(v28 - 1);
          v25 = v27;
          goto LABEL_58;
        }

        if (v8 < v32)
        {
          v18 = *v28;
          if (v57)
          {
            v19 |= v30 == 1;
          }

          v20 = *(v28 - 1);
          v22 = v27;
          v25 = v31 + v27;
          goto LABEL_58;
        }
      }

      v25 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_58:
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        ++v28;
        --v30;
        v27 += v31;
        v12 = v29++ >= v58;
        if (!v12)
        {
          continue;
        }
      }

LABEL_61:
      v47 = v22;
      v48 = v20;
      v51 = v18;
      v49 = v19;
      goto LABEL_64;
    }
  }
}

- (void)_addReplacements
{
  v45 = *MEMORY[0x1E69E9840];
  startIndex = self->_startIndex;
  endIndex = self->_endIndex;
  if (startIndex >= endIndex)
  {
    return;
  }

  do
  {
    v6 = self->_buffer[startIndex];
    if ((v6 - 65) < 0x1A)
    {
      return;
    }

    if ((v6 - 97) > 0x19)
    {
      goto LABEL_49;
    }

    v7 = 0;
    v33 = &adjacentMatchesChinese + 24 * (v6 - 97);
    v34 = self->_buffer[startIndex];
    do
    {
      if (v7 != 6)
      {
        v8 = v33[4 * v7];
        v9 = 1.0;
        if (!v33[4 * v7])
        {
          goto LABEL_47;
        }

LABEL_9:
        v42 = 0;
        v43 = 0;
        v41 = 0;
        v40 = 0;
        v39 = v8;
        self->_buffer[startIndex] = v8;
        if (findPinyin(&self->_buffer[self->_lastIndexes[0]], self->_endIndex - self->_lastIndexes[0], self->_romanization, 0, 0, 0, 0, &v43, &v42, 0, &v41, &v40, 0, 0, 0, 0, 0, self->_syllableLengthArray))
        {
          v10 = self->_lastIndexes[0];
          if (v42 + v10 == self->_endIndex && (v40 != 1 || startIndex < v43 + v10))
          {
            if (v41)
            {
              v11 = 0;
              v12 = 0;
              syllableLengthArray = self->_syllableLengthArray;
              v14 = 1;
              while (startIndex < v10)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
                if (v40)
                {
                  goto LABEL_24;
                }

LABEL_25:
                if (v15 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v17 = *syllableLengthArray++;
                  v10 += v17;
                  if (v14++ < v41)
                  {
                    continue;
                  }
                }

                goto LABEL_30;
              }

              v16 = *syllableLengthArray + v10;
              if (startIndex >= v16)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v10;
              }

              if (startIndex < v16)
              {
                v12 = *syllableLengthArray;
              }

              if (!v40)
              {
                goto LABEL_25;
              }

LABEL_24:
              v11 |= v41 == v14;
              goto LABEL_25;
            }

            v12 = 0;
            v11 = 0;
            v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_30:
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v32 = v12;
            modifications = self->_modifications;
            v20 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v35 objects:v44 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v36;
LABEL_32:
              v23 = 0;
              while (1)
              {
                if (*v36 != v22)
                {
                  objc_enumerationMutation(modifications);
                }

                v24 = *(*(&v35 + 1) + 8 * v23);
                if ([v24 modificationType] == 1 && startIndex == objc_msgSend(v24, "range") && v25 == 1)
                {
                  v27 = [objc_msgSend(v24 "replacementString")];
                  if (v27 == v39)
                  {
                    break;
                  }
                }

                if (v21 == ++v23)
                {
                  v21 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v35 objects:v44 count:16];
                  if (v21)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_44;
                }
              }
            }

            else
            {
LABEL_44:
              if (v32)
              {
                v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v39 length:1];
                v29 = [PRPinyinModification alloc];
                BYTE1(v31) = self->_length == 3;
                LOBYTE(v31) = v11 & 1;
                v30 = [(PRPinyinModification *)v29 initWithRange:startIndex replacementString:1 modificationType:v28 syllableRange:1 modificationScore:v15 syllableCountScore:v32 syllableLetters:v9 producesPartialSyllable:v41 isTemporary:&self->_buffer[v15], v31];
                [(NSMutableArray *)self->_modifications addObject:v30];
                [(NSMutableArray *)self->_addedModifications addObject:v30];
              }
            }
          }
        }

        self->_buffer[startIndex] = v34;
        goto LABEL_47;
      }

      v8 = self->_altBuffer[startIndex];
      LOBYTE(v2) = self->_altBufferScores[startIndex];
      v2 = *&v2;
      v9 = v2 / 100.0;
      if (self->_altBuffer[startIndex])
      {
        goto LABEL_9;
      }

LABEL_47:
      ++v7;
    }

    while (v7 != 7);
    endIndex = self->_endIndex;
LABEL_49:
    ++startIndex;
  }

  while (startIndex < endIndex);
}

- (void)_addValidSequenceReplacements
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = self->_lastIndexes[1];
  if (v3 >= self->_startIndex)
  {
    startIndex = self->_startIndex;
  }

  else
  {
    startIndex = self->_lastIndexes[1];
  }

  if (v3 >= self->_lastIndexes[0])
  {
    v5 = self->_lastIndexes[0];
  }

  else
  {
    v5 = self->_lastIndexes[1];
  }

  v39 = v5;
  endIndex = self->_endIndex;
  if (startIndex < endIndex)
  {
    v8 = &OBJC_IVAR___PRSentenceCorrection__range;
    do
    {
      buffer = self->_buffer;
      v10 = buffer[startIndex];
      if ((v10 - 65) < 0x1A)
      {
        return;
      }

      v11 = self->_altBuffer[startIndex];
      if ((v10 - 97) <= 0x19 && (v11 - 97) <= 0x19)
      {
        LOBYTE(v2) = self->_altBufferScores[startIndex];
        v13 = *&v2 / 100.0;
        v2 = *(&self->super.super.isa + v8[66]);
        if (v13 <= v2)
        {
          v47 = 0;
          v48 = 0;
          v46 = 0;
          v45 = 0;
          v44 = v11;
          buffer[startIndex] = v11;
          if (findPinyin(&self->_buffer[v39], self->_endIndex - v39, self->_romanization, 0, 0, 0, 0, &v48, &v47, 0, &v46, &v45, 0, 0, 0, 0, 0, self->_syllableLengthArray) && v47 + v39 == self->_endIndex && (v45 != 1 || startIndex < v48 + v39))
          {
            if (v46)
            {
              v14 = 0;
              v15 = 0;
              syllableLengthArray = self->_syllableLengthArray;
              v17 = 1;
              v18 = v39;
              while (startIndex < v18)
              {
                v19 = 0x7FFFFFFFFFFFFFFFLL;
                if (v45)
                {
                  goto LABEL_30;
                }

LABEL_31:
                if (v19 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v21 = *syllableLengthArray++;
                  v18 += v21;
                  if (v17++ < v46)
                  {
                    continue;
                  }
                }

                goto LABEL_36;
              }

              v20 = *syllableLengthArray + v18;
              if (startIndex >= v20)
              {
                v19 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v19 = v18;
              }

              if (startIndex < v20)
              {
                v15 = *syllableLengthArray;
              }

              if (!v45)
              {
                goto LABEL_31;
              }

LABEL_30:
              v14 |= v46 == v17;
              goto LABEL_31;
            }

            v15 = 0;
            v14 = 0;
            v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_36:
            v38 = v14;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            modifications = self->_modifications;
            v24 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v41;
LABEL_38:
              v27 = 0;
              while (1)
              {
                if (*v41 != v26)
                {
                  objc_enumerationMutation(modifications);
                }

                v28 = *(*(&v40 + 1) + 8 * v27);
                if ([v28 modificationType] == 1 && startIndex == objc_msgSend(v28, "range") && v29 == 1)
                {
                  v31 = [objc_msgSend(v28 "replacementString")];
                  if (v31 == v44 && v19 == [v28 syllableRange] && v15 == v32)
                  {
                    break;
                  }
                }

                if (v25 == ++v27)
                {
                  v25 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v40 objects:v49 count:16];
                  if (v25)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_54;
                }
              }
            }

            else
            {
LABEL_54:
              if (v15)
              {
                v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v44 length:1];
                v35 = [PRPinyinModification alloc];
                LOWORD(v37) = v38 & 1;
                v36 = [(PRPinyinModification *)v35 initWithRange:startIndex replacementString:1 modificationType:v34 syllableRange:1 modificationScore:v19 syllableCountScore:v15 syllableLetters:v13 producesPartialSyllable:v46 isTemporary:&self->_buffer[v19], v37];
                [(NSMutableArray *)self->_modifications addObject:v36];
                [(NSMutableArray *)self->_addedModifications addObject:v36];
              }
            }
          }

          self->_buffer[startIndex] = v10;
          endIndex = self->_endIndex;
          v8 = &OBJC_IVAR___PRSentenceCorrection__range;
        }
      }

      ++startIndex;
    }

    while (startIndex < endIndex);
  }
}

- (void)_addInsertions
{
  v47 = *MEMORY[0x1E69E9840];
  startIndex = self->_startIndex;
  if (startIndex >= self->_endIndex)
  {
    return;
  }

  do
  {
    v4 = self->_buffer[startIndex];
    if ((v4 - 65) < 0x1A)
    {
      return;
    }

    if ((v4 - 97) >= 0x1A)
    {
      v8 = startIndex + 1;
      goto LABEL_50;
    }

    length = self->_length;
    if (length + 1 > startIndex)
    {
      do
      {
        self->_buffer[length + 1] = self->_buffer[length];
      }

      while (length-- > startIndex);
    }

    v7 = 0;
    v34 = startIndex;
    v8 = startIndex + 1;
    v36 = &insertionFollowers + 24 * (v4 - 97);
    do
    {
      v9 = *&v36[4 * v7];
      if (v9)
      {
        v44 = 0;
        v45 = 0;
        v43 = 0;
        v42 = 0;
        v41 = v9;
        self->_buffer[v8] = v9;
        if (findPinyin(&self->_buffer[self->_lastIndexes[0]], self->_endIndex - self->_lastIndexes[0] + 1, self->_romanization, 0, 0, 0, 0, &v45, &v44, 0, &v43, &v42, 0, 0, 0, 0, 0, self->_syllableLengthArray))
        {
          v10 = self->_lastIndexes[0];
          if (v44 + v10 == self->_endIndex + 1 && (v42 != 1 || v8 < v45 + v10))
          {
            if (v43)
            {
              v11 = 0;
              v12 = 0;
              syllableLengthArray = self->_syllableLengthArray;
              v14 = 1;
              while (v8 < v10)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
                if (v42)
                {
                  goto LABEL_23;
                }

LABEL_24:
                if (v15 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v17 = *syllableLengthArray++;
                  v10 += v17;
                  if (v14++ < v43)
                  {
                    continue;
                  }
                }

                goto LABEL_29;
              }

              v16 = *syllableLengthArray + v10;
              if (v8 >= v16)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v10;
              }

              if (v8 < v16)
              {
                v12 = *syllableLengthArray - 1;
              }

              if (!v42)
              {
                goto LABEL_24;
              }

LABEL_23:
              v11 |= v43 == v14;
              goto LABEL_24;
            }

            v12 = 0;
            v11 = 0;
            v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_29:
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = v12;
            modifications = self->_modifications;
            v20 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v38;
LABEL_31:
              v23 = 0;
              while (1)
              {
                if (*v38 != v22)
                {
                  objc_enumerationMutation(modifications);
                }

                v24 = *(*(&v37 + 1) + 8 * v23);
                if ([v24 modificationType] == 3 && v8 == objc_msgSend(v24, "range") && v25 == 0)
                {
                  v27 = [objc_msgSend(v24 "replacementString")];
                  if (v27 == v41)
                  {
                    break;
                  }
                }

                if (v21 == ++v23)
                {
                  v21 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v37 objects:v46 count:16];
                  if (v21)
                  {
                    goto LABEL_31;
                  }

                  goto LABEL_43;
                }
              }
            }

            else
            {
LABEL_43:
              if (v35)
              {
                v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v41 length:1];
                v29 = [PRPinyinModification alloc];
                LOBYTE(v33) = v11 & 1;
                v30 = [(PRPinyinModification *)v29 initWithRange:v8 replacementString:0 modificationType:v28 syllableRange:3 modificationScore:v15 syllableCountScore:v35 syllableLetters:1.0 producesPartialSyllable:v43, &self->_buffer[v15], v33];
                [(NSMutableArray *)self->_modifications addObject:v30];
                [(NSMutableArray *)self->_addedModifications addObject:v30];
              }
            }
          }
        }
      }

      ++v7;
    }

    while (v7 != 6);
    v31 = v34;
    if (v34 < self->_length)
    {
      do
      {
        self->_buffer[v31 + 1] = self->_buffer[v31 + 2];
        v32 = v31 + 2;
        ++v31;
      }

      while (v32 <= self->_length);
    }

LABEL_50:
    startIndex = v8;
  }

  while (v8 < self->_endIndex);
}

- (void)_addDeletions
{
  v66 = *MEMORY[0x1E69E9840];
  startIndex = self->_startIndex;
  v3 = startIndex + 2;
  endIndex = self->_endIndex;
  if (startIndex + 2 < endIndex)
  {
    v6 = startIndex + 1;
    while (1)
    {
      v7 = v6;
      v6 = v3;
      buffer = self->_buffer;
      v9 = buffer[v7];
      if ((v9 - 65) < 0x1A)
      {
        return;
      }

      v10 = buffer[v7 - 1];
      if ((v10 - 65) < 0x1A)
      {
        return;
      }

      v11 = buffer[v6];
      if ((v11 - 65) < 0x1A)
      {
        return;
      }

      if ((v9 - 97) <= 0x19)
      {
        if (v9 == v10 || self->_abbreviatedSyllableCount == 0)
        {
          break;
        }

        v13 = (&adjacentMatchesChinese + 24 * (v9 - 97));
        v14 = *v13;
        if (*v13 == v10)
        {
          break;
        }

        v15 = v13[1];
        if (v15 == v10)
        {
          break;
        }

        v16 = v13[2];
        if (v16 == v10)
        {
          break;
        }

        v17 = v13[3];
        if (v17 == v10)
        {
          break;
        }

        v18 = v13[4];
        if (v18 == v10)
        {
          break;
        }

        v19 = v13[5];
        v20 = v19 == v10 || v9 == v11;
        v21 = v20 || v14 == v11;
        v22 = v21 || v15 == v11;
        v23 = v22 || v16 == v11;
        v24 = v23 || v17 == v11;
        v25 = v24 || v18 == v11;
        if (v25 || v19 == v11)
        {
          break;
        }
      }

LABEL_87:
      v3 = v6 + 1;
      ++startIndex;
      if (v6 + 1 >= endIndex)
      {
        return;
      }
    }

    v54 = v6;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v61 = 0;
    if (v7 < self->_length)
    {
      v27 = startIndex;
      do
      {
        self->_buffer[v27 + 1] = self->_buffer[v27 + 2];
        v28 = v27 + 2;
        ++v27;
      }

      while (v28 < self->_length);
      buffer = self->_buffer;
      endIndex = self->_endIndex;
    }

    v56 = v10;
    v53 = startIndex;
    if (findPinyin(&buffer[self->_lastIndexes[0]], endIndex + ~self->_lastIndexes[0], self->_romanization, 0, 0, 0, 0, &v64, &v63, 0, &v62, &v61, 0, 0, 0, 0, 0, self->_syllableLengthArray))
    {
      v29 = self->_lastIndexes[0];
      if (v63 + v29 == self->_endIndex - 1 && (v61 != 1 || v54 <= v64 + v29))
      {
        if (v62)
        {
          v30 = 0;
          v31 = 0;
          syllableLengthArray = self->_syllableLengthArray;
          v33 = 1;
          while (v7 < v29)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
            if (v61)
            {
              goto LABEL_58;
            }

LABEL_59:
            if (v34 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = *syllableLengthArray++;
              v29 += v36;
              if (v33++ < v62)
              {
                continue;
              }
            }

            goto LABEL_64;
          }

          v35 = *syllableLengthArray + v29;
          if (v7 >= v35)
          {
            v34 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v29;
          }

          if (v7 < v35)
          {
            v31 = *syllableLengthArray + 1;
          }

          if (!v61)
          {
            goto LABEL_59;
          }

LABEL_58:
          v30 |= v62 == v33;
          goto LABEL_59;
        }

        v31 = 0;
        v30 = 0;
        v34 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_64:
        v51 = v30;
        v52 = v31;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = self->_modifications;
        v38 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v58;
LABEL_66:
          v41 = 0;
          while (1)
          {
            if (*v58 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v57 + 1) + 8 * v41);
            if ([v42 modificationType] == 4)
            {
              range = [v42 range];
              if (v7 == range && v44 == 1)
              {
                break;
              }

              if (v9 == v56 && v44 == 1 && range + 1 == v7)
              {
                break;
              }
            }

            if (v39 == ++v41)
            {
              v39 = [(NSMutableArray *)obj countByEnumeratingWithState:&v57 objects:v65 count:16];
              if (v39)
              {
                goto LABEL_66;
              }

              goto LABEL_81;
            }
          }
        }

        else
        {
LABEL_81:
          if (v52 >= 3)
          {
            v47 = [PRPinyinModification alloc];
            LOBYTE(v50) = v51 & 1;
            v48 = [(PRPinyinModification *)v47 initWithRange:v7 replacementString:1 modificationType:&stru_1F4E0A7A0 syllableRange:4 modificationScore:v34 syllableCountScore:v52 syllableLetters:1.0 producesPartialSyllable:v62, &self->_buffer[v34], v50];
            [(NSMutableArray *)self->_modifications addObject:v48];
            [(NSMutableArray *)self->_addedModifications addObject:v48];
          }
        }
      }
    }

      ;
    }

    self->_buffer[v7] = v9;
    endIndex = self->_endIndex;
    startIndex = v53;
    v6 = v54;
    goto LABEL_87;
  }
}

- (void)_filterModifications
{
  selfCopy = self;
  v88 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_addedModifications count];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  addedModifications = selfCopy->_addedModifications;
  v5 = [(NSMutableArray *)addedModifications countByEnumeratingWithState:&v80 objects:v87 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v81;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v81 != v8)
        {
          objc_enumerationMutation(addedModifications);
        }

        v10 = *(*(&v80 + 1) + 8 * i);
        syllableCountScore = [v10 syllableCountScore];
        modificationType = [v10 modificationType];
        if (v7 - 1 >= syllableCountScore && modificationType != 5)
        {
          v7 = syllableCountScore;
        }
      }

      v6 = [(NSMutableArray *)addedModifications countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v6);
    if (v7)
    {
      v14 = v3 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = v3 - 1;
      do
      {
        v16 = [(NSMutableArray *)selfCopy->_addedModifications objectAtIndex:v15];
        syllableCountScore2 = [v16 syllableCountScore];
        if ([v16 modificationType] != 5 && syllableCountScore2 > v7)
        {
          [(NSMutableArray *)selfCopy->_modifications removeObjectIdenticalTo:v16];
          [(NSMutableArray *)selfCopy->_addedModifications removeObjectAtIndex:v15];
        }

        --v15;
      }

      while (v15 != -1);
    }
  }

  v19 = [(NSMutableArray *)selfCopy->_modifications count];
  if (v19)
  {
    v20 = v19;
    v60 = selfCopy;
    do
    {
      while (1)
      {
        v61 = v20 - 1;
        v21 = [(NSMutableArray *)selfCopy->_modifications objectAtIndex:v20 - 1];
        modificationType2 = [v21 modificationType];
        range = [v21 range];
        v62 = v23;
        combinedSyllableRange = [v21 combinedSyllableRange];
        v25 = v24;
        syllableCountScore3 = [v21 syllableCountScore];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        modifications = selfCopy->_modifications;
        v27 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v76 objects:v86 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v77;
          v63 = range + v62;
          v64 = combinedSyllableRange + v25;
          while (2)
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v77 != v29)
              {
                objc_enumerationMutation(modifications);
              }

              v31 = *(*(&v76 + 1) + 8 * j);
              if (v31 != v21)
              {
                modificationType3 = [*(*(&v76 + 1) + 8 * j) modificationType];
                combinedSyllableRange2 = [v31 combinedSyllableRange];
                v35 = v34;
                syllableCountScore4 = [v31 syllableCountScore];
                if (modificationType2 == 5 || (modificationType3 != 5 ? (v37 = syllableCountScore4 >= syllableCountScore3) : (v37 = 1), v37))
                {
                  if (modificationType2 != 5 && (modificationType3 == 5 ? (v39 = range >= combinedSyllableRange2) : (v39 = 0), v39))
                  {
                    if (v35 >= 3 && v63 <= combinedSyllableRange2 + v35)
                    {
LABEL_92:
                      selfCopy = v60;
                      v56 = [(NSMutableArray *)v60->_addedModifications indexOfObjectIdenticalTo:v21];
                      if (v56 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        [(NSMutableArray *)v60->_removedModifications addObject:v21];
                      }

                      else
                      {
                        [(NSMutableArray *)v60->_addedModifications removeObjectAtIndex:v56];
                      }

                      v20 = v61;
                      goto LABEL_102;
                    }
                  }

                  else if (modificationType2 == 5 && modificationType3 == 5 && range >= combinedSyllableRange2)
                  {
                    v42 = combinedSyllableRange2 + v35;
                    v43 = v62 >= 3 || v63 >= v42;
                    v44 = !v43;
                    if (range + v62 + 1 < v42 || v44)
                    {
                      goto LABEL_92;
                    }
                  }
                }

                else if (combinedSyllableRange < combinedSyllableRange2 + v35 && v64 > combinedSyllableRange2)
                {
                  goto LABEL_92;
                }
              }
            }

            v28 = [(NSMutableArray *)modifications countByEnumeratingWithState:&v76 objects:v86 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        selfCopy = v60;
        removedModifications = v60->_removedModifications;
        v47 = [(NSMutableArray *)removedModifications countByEnumeratingWithState:&v72 objects:v85 count:16];
        v20 = v61;
        if (v47)
        {
          v48 = v47;
          v49 = *v73;
          while (2)
          {
            for (k = 0; k != v48; ++k)
            {
              if (*v73 != v49)
              {
                objc_enumerationMutation(removedModifications);
              }

              if ([*(*(&v72 + 1) + 8 * k) isEqual:v21])
              {
                v57 = [(NSMutableArray *)v60->_addedModifications indexOfObjectIdenticalTo:v21];
                if (v57 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [(NSMutableArray *)v60->_addedModifications removeObjectAtIndex:v57];
                  addedRemovedModifications = v60->_addedRemovedModifications;
LABEL_100:
                  [(NSMutableArray *)addedRemovedModifications addObject:v21];
                }

                goto LABEL_102;
              }
            }

            v48 = [(NSMutableArray *)removedModifications countByEnumeratingWithState:&v72 objects:v85 count:16];
            if (v48)
            {
              continue;
            }

            break;
          }
        }

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v51 = v60->_addedRemovedModifications;
        v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v68 objects:v84 count:16];
        if (v52)
        {
          break;
        }

LABEL_90:
        if (!v61)
        {
          return;
        }
      }

      v53 = v52;
      v54 = *v69;
LABEL_84:
      v55 = 0;
      while (1)
      {
        if (*v69 != v54)
        {
          objc_enumerationMutation(v51);
        }

        if ([*(*(&v68 + 1) + 8 * v55) isEqual:v21])
        {
          break;
        }

        if (v53 == ++v55)
        {
          v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v68 objects:v84 count:16];
          if (v53)
          {
            goto LABEL_84;
          }

          goto LABEL_90;
        }
      }

      v59 = [(NSMutableArray *)v60->_addedModifications indexOfObjectIdenticalTo:v21];
      if (v59 == 0x7FFFFFFFFFFFFFFFLL)
      {
        addedRemovedModifications = v60->_removedModifications;
        goto LABEL_100;
      }

      [(NSMutableArray *)v60->_addedModifications removeObjectAtIndex:v59];
LABEL_102:
      [(NSMutableArray *)selfCopy->_modifications removeObjectAtIndex:v20];
    }

    while (v20);
  }
}

- (void)_addPrefixes
{
  v30 = *MEMORY[0x1E69E9840];
  length = self->_length;
  if (length - 3 <= 0xB)
  {
    v4 = [_sharedChecker englishStringsFromWordBuffer:self->_buffer length:? connection:?];
    if (v4)
    {
      v5 = v4;
      if ([v4 count])
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v26;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v26 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v25 + 1) + 8 * i);
              [v10 length];
              v11 = [[PRPinyinModification alloc] initWithRange:0 replacementString:self->_length modificationType:v10 syllableRange:5 modificationScore:0, self->_length, 1.0];
              [(NSMutableArray *)self->_prefixes addObject:v11];
            }

            v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v7);
        }
      }
    }

    length = self->_length;
  }

  if (length == 2)
  {
    v12 = 0;
    do
    {
      buffer = self->_buffer;
      if (additionalTwoLetterWords[v12] == *buffer && additionalTwoLetterWords[v12 + 1] == buffer[1])
      {
        v14 = -[PRPinyinModification initWithRange:replacementString:modificationType:syllableRange:modificationScore:]([PRPinyinModification alloc], "initWithRange:replacementString:modificationType:syllableRange:modificationScore:", 0, 2, [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:self->_buffer length:2 encoding:12], 5, 0, 2, 1.0);
        [(NSMutableArray *)self->_prefixes addObject:v14];
      }

      v15 = v12 >= 0x2E;
      v12 += 2;
    }

    while (!v15);
    v16 = 0;
    do
    {
      v17 = self->_buffer;
      if (additionalTwoLetterAcronyms[v16] == *v17 && additionalTwoLetterAcronyms[v16 + 1] == v17[1])
      {
        v18 = -[PRPinyinModification initWithRange:replacementString:modificationType:syllableRange:modificationScore:]([PRPinyinModification alloc], "initWithRange:replacementString:modificationType:syllableRange:modificationScore:", 0, 2, [objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:self->_buffer length:2 encoding:{12), "uppercaseString"}], 5, 0, 2, 1.0);
        [(NSMutableArray *)self->_prefixes addObject:v18];
      }

      v15 = v16 >= 8;
      v16 += 2;
    }

    while (!v15);
    length = self->_length;
  }

  if (length == 3)
  {
    v19 = 0;
    do
    {
      v20 = self->_buffer;
      if (additionalThreeLetterWords[v19] == *v20 && additionalThreeLetterWords[v19 + 1] == v20[1] && additionalThreeLetterWords[v19 + 2] == v20[2])
      {
        v21 = -[PRPinyinModification initWithRange:replacementString:modificationType:syllableRange:modificationScore:]([PRPinyinModification alloc], "initWithRange:replacementString:modificationType:syllableRange:modificationScore:", 0, 3, [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:self->_buffer length:3 encoding:12], 5, 0, 3, 1.0);
        [(NSMutableArray *)self->_prefixes addObject:v21];
      }

      v15 = v19 >= 0x12F;
      v19 += 3;
    }

    while (!v15);
    v22 = 0;
    do
    {
      v23 = self->_buffer;
      if (additionalThreeLetterAcronyms[v22] == *v23 && additionalThreeLetterAcronyms[v22 + 1] == v23[1] && additionalThreeLetterAcronyms[v22 + 2] == v23[2])
      {
        v24 = -[PRPinyinModification initWithRange:replacementString:modificationType:syllableRange:modificationScore:]([PRPinyinModification alloc], "initWithRange:replacementString:modificationType:syllableRange:modificationScore:", 0, 3, [objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:self->_buffer length:3 encoding:{12), "uppercaseString"}], 5, 0, 3, 1.0);
        [(NSMutableArray *)self->_prefixes addObject:v24];
      }

      v15 = v22 >= 0xC;
      v22 += 3;
    }

    while (!v15);
  }
}

- (void)_removePrefixes
{
  v3 = [(NSMutableArray *)self->_prefixes count];
  if (v3)
  {
    v4 = v3 - 1;
    do
    {
      v5 = [-[NSMutableArray objectAtIndex:](self->_prefixes objectAtIndex:{v4), "range"}];
      v7 = v5 + v6;
      length = self->_length;
      v9 = length >= v5 + v6;
      v10 = length - (v5 + v6);
      if (v10 != 0 && v9 && !next_pinyin(&self->_buffer[v7], v10, self->_romanization, 0, 0, 0) && !is_partial_pinyin(&self->_buffer[v7], self->_length - v7, self->_romanization, 0))
      {
        [(NSMutableArray *)self->_prefixes removeObjectAtIndex:v4];
      }

      --v4;
    }

    while (v4 != -1);
  }
}

- (void)addInputCharacter:(unsigned __int16)character geometryModel:(void *)model geometryData:(id)data
{
  characterCopy = character;
  [(NSMutableArray *)self->_addedModifications removeAllObjects:character];
  [(NSMutableArray *)self->_removedModifications removeAllObjects];
  length = self->_length;
  if (length <= 0xFE)
  {
    if (characterCopy >= 0x100)
    {
      v9 = 127;
    }

    else
    {
      v9 = characterCopy;
    }

    self->_buffer[length] = v9;
    if (data && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      bytes = [data bytes];
      v11 = [data length];
      [(NSMutableArray *)self->_geometryDataArray addObject:data];
      if (v11 >= 8)
      {
        v12 = 0;
        v13 = v11 >> 3;
        v14 = (bytes + 4);
        while (*(v14 - 2) != characterCopy)
        {
          ++v12;
          v14 += 2;
          if (v12 >= v13)
          {
            goto LABEL_13;
          }
        }

        v19 = 0;
        v20 = *v14;
        v21 = (bytes + 4);
        v22 = 0x7FFFFFFFFFFFFFFFLL;
        v23 = -100.0;
        do
        {
          v24 = *(v21 - 2);
          if (v24 != characterCopy && (v24 - 1) <= 0xFE && *v21 > v23)
          {
            v22 = v19;
            v23 = *v21;
          }

          ++v19;
          v21 += 2;
        }

        while (v13 != v19);
        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_altBuffer[self->_length] = *(bytes + 8 * v22);
          v25 = v20 - v23;
          if (v25 <= 0.0)
          {
            LOBYTE(v15) = 0;
            goto LABEL_15;
          }

          if (v25 <= 2.5)
          {
            v15 = (v25 * 100.0);
            goto LABEL_15;
          }

LABEL_14:
          LOBYTE(v15) = -1;
LABEL_15:
          self->_altBufferScores[self->_length] = v15;
          v16 = self->_length + 1;
          self->_length = v16;
          if (characterCopy != 39)
          {
            self->_lengthBeforeApostrophes = v16;
          }

          [(PRPinyinContext *)self _removeModificationsAndMoveStartingPoint];
          [(PRPinyinContext *)self _advanceIndexes];
          [(PRPinyinContext *)self _addSpecialEnglishWords];
          if (self->_nextIndexes[0] >= self->_length)
          {
            if (self->_lastSyllableIsPartial)
            {
              [(PRPinyinContext *)self _addEnglishWordsQuickly:1];
            }

            [(PRPinyinContext *)self _addValidSequenceReplacements];
            goto LABEL_34;
          }

          [(PRPinyinContext *)self _addEnglishWordsQuickly:0];
          v17 = self->_length;
          startingPoint = self->_startingPoint;
          if (v17 - startingPoint >= 3)
          {
            [(PRPinyinContext *)self _addTranspositions];
            v17 = self->_length;
            startingPoint = self->_startingPoint;
            if (v17 - startingPoint > 3)
            {
              goto LABEL_26;
            }
          }

          if (v17 != 3)
          {
            goto LABEL_27;
          }

          if (self->_abbreviatedSyllableCount)
          {
            v17 = 3;
          }

          else
          {
LABEL_26:
            [(PRPinyinContext *)self _addReplacements];
            v17 = self->_length;
            startingPoint = self->_startingPoint;
          }

LABEL_27:
          if (self->_romanization != 1 && v17 + 1 <= 0xFE && v17 - startingPoint >= 4)
          {
            [(PRPinyinContext *)self _addInsertions];
            v17 = self->_length;
            startingPoint = self->_startingPoint;
          }

          if (v17 - startingPoint >= 5)
          {
            [(PRPinyinContext *)self _addDeletions];
          }

          [(PRPinyinContext *)self _filterModifications];
          self->_previouslyAnalyzedLength = self->_lengthBeforeApostrophes;
LABEL_34:
          [(PRPinyinContext *)self _removePrefixes];
          [(PRPinyinContext *)self _addPrefixes];

          self->_guesses = 0;
          self->_completions = 0;

          self->_corrections = 0;
          return;
        }
      }
    }

    else
    {
      -[NSMutableArray addObject:](self->_geometryDataArray, "addObject:", [MEMORY[0x1E695DFB0] null]);
    }

LABEL_13:
    self->_altBuffer[self->_length] = 0;
    goto LABEL_14;
  }
}

- (void)removeNumberOfInputCharacters:(unint64_t)characters
{
  length = self->_length;
  if (length >= characters)
  {
    v4 = length - characters;
  }

  else
  {
    v4 = 0;
  }

  if (characters && length)
  {
    v7 = malloc_type_calloc(0x100uLL, 1uLL, 0x662B4491uLL);
    v8 = v7;
    if (length > characters)
    {
      v9 = 0;
      do
      {
        v7[v9] = self->_buffer[v9];
        ++v9;
      }

      while (v9 < v4);
    }

    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_geometryDataArray];
    v10 = [v14 count];
    [(PRPinyinContext *)self reset];
    if (length > characters)
    {
      v11 = 0;
      do
      {
        if (v11 >= v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = [v14 objectAtIndex:v11];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        [(PRPinyinContext *)self addInputCharacter:v8[v11++] geometryModel:0 geometryData:v13];
      }

      while (v11 < v4);
    }

    free(v8);
  }
}

- (void)reset
{
  buffer = self->_buffer;
  *buffer = 0u;
  *(buffer + 1) = 0u;
  *(buffer + 2) = 0u;
  *(buffer + 3) = 0u;
  *(buffer + 4) = 0u;
  *(buffer + 5) = 0u;
  *(buffer + 6) = 0u;
  *(buffer + 7) = 0u;
  *(buffer + 8) = 0u;
  *(buffer + 9) = 0u;
  *(buffer + 10) = 0u;
  *(buffer + 11) = 0u;
  *(buffer + 12) = 0u;
  *(buffer + 13) = 0u;
  *(buffer + 14) = 0u;
  *(buffer + 15) = 0u;
  altBuffer = self->_altBuffer;
  *altBuffer = 0u;
  *(altBuffer + 1) = 0u;
  *(altBuffer + 2) = 0u;
  *(altBuffer + 3) = 0u;
  *(altBuffer + 4) = 0u;
  *(altBuffer + 5) = 0u;
  *(altBuffer + 6) = 0u;
  *(altBuffer + 7) = 0u;
  *(altBuffer + 8) = 0u;
  *(altBuffer + 9) = 0u;
  *(altBuffer + 10) = 0u;
  *(altBuffer + 11) = 0u;
  *(altBuffer + 12) = 0u;
  *(altBuffer + 13) = 0u;
  *(altBuffer + 14) = 0u;
  *(altBuffer + 15) = 0u;
  altBufferScores = self->_altBufferScores;
  *altBufferScores = 0u;
  *(altBufferScores + 1) = 0u;
  *(altBufferScores + 2) = 0u;
  *(altBufferScores + 3) = 0u;
  *(altBufferScores + 4) = 0u;
  *(altBufferScores + 5) = 0u;
  *(altBufferScores + 6) = 0u;
  *(altBufferScores + 7) = 0u;
  *(altBufferScores + 8) = 0u;
  *(altBufferScores + 9) = 0u;
  *(altBufferScores + 10) = 0u;
  *(altBufferScores + 11) = 0u;
  *(altBufferScores + 12) = 0u;
  *(altBufferScores + 13) = 0u;
  *(altBufferScores + 14) = 0u;
  *(altBufferScores + 15) = 0u;
  [(NSMutableArray *)self->_addedModifications removeAllObjects];
  [(NSMutableArray *)self->_removedModifications removeAllObjects];
  [(NSMutableArray *)self->_removedModifications addObjectsFromArray:self->_modifications];
  [(NSMutableArray *)self->_modifications removeAllObjects];
  [(NSMutableArray *)self->_prefixes removeAllObjects];

  self->_guesses = 0;
  self->_completions = 0;

  self->_corrections = 0;
  [(NSMutableArray *)self->_geometryDataArray removeAllObjects];
  self->_previouslyAnalyzedLength = 0;
  self->_abbreviatedSyllableCount = 0;
  self->_endIndex = 0;
  self->_startIndex = 0;
  self->_nextIndexes[0] = 0;
  self->_nextIndexes[1] = 0;
  *self->_lastIndexes = 0u;
  *&self->_lastIndexes[2] = 0u;
  self->_startingPoint = 0;
  self->_lengthBeforeApostrophes = 0;
  self->_length = 0;
  self->_lastSyllableIsPartial = 0;
}

- (id)guesses
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_guesses)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:self->_buffer length:self->_length encoding:12];
    v4 = [_sharedChecker spellServer:0 suggestGuessesForWordRange:0 inString:objc_msgSend(v3 language:"length") options:{v3, @"en_CN", 0}];
    length = self->_length;
    self->_guesses = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [[PRPinyinModification alloc] initWithRange:0 replacementString:length modificationType:*(*(&v12 + 1) + 8 * i) syllableRange:5 modificationScore:0, length, 1.0];
          [(NSMutableArray *)self->_guesses addObject:v10];
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return self->_guesses;
}

- (id)completions
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_completions)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:self->_buffer length:self->_length encoding:12];
    v4 = [_sharedChecker languageModelCompletionsForPartialWord:v3 languageObject:+[PRLanguage languageObjectWithIdentifier:](PRLanguage sender:"languageObjectWithIdentifier:" appIdentifier:{@"en_CN", 0, 0}];
    length = self->_length;
    self->_completions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [[PRPinyinModification alloc] initWithRange:0 replacementString:length modificationType:*(*(&v12 + 1) + 8 * i) syllableRange:5 modificationScore:0, length, 1.0];
          [(NSMutableArray *)self->_completions addObject:v10];
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return self->_completions;
}

- (id)correction
{
  corrections = self->_corrections;
  if (!corrections)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:self->_buffer length:self->_length encoding:12];
    v12 = 0;
    v5 = [_sharedChecker spellServer:0 findMisspelledWordInString:v4 language:@"en_CN" wordCount:0 countOnly:0 correction:&v12];
    v7 = v6;
    length = self->_length;
    self->_corrections = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v12 && !v5 && v7 == [v4 length])
    {
      v9 = [PRPinyinModification alloc];
      v10 = [(PRPinyinModification *)v9 initWithRange:0 replacementString:length modificationType:v12 syllableRange:5 modificationScore:0, length, 1.0];
      [(NSMutableArray *)self->_corrections addObject:v10];
    }

    corrections = self->_corrections;
  }

  return [(NSMutableArray *)corrections firstObject];
}

@end
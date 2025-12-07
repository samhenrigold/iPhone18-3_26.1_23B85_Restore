@interface TSCEQuotedRefPathComponent
- (id)trimmedStringStartingAtWord:(unint64_t)word withPreserveFlags:(BOOL)flags;
- (id)wordAtIndex:(unint64_t)index;
- (void)addRefPathWord:(id)word;
- (void)removeRefPathWordAtIndex:(unint64_t)index;
@end

@implementation TSCEQuotedRefPathComponent

- (void)addRefPathWord:(id)word
{
  wordCopy = word;
  if (wordCopy)
  {
    refPathWords = self->_refPathWords;
    if (!refPathWords)
    {
      v7 = objc_opt_new();
      v8 = self->_refPathWords;
      self->_refPathWords = v7;

      refPathWords = self->_refPathWords;
    }

    objc_msgSend_addObject_(refPathWords, v4, wordCopy, v5);
  }
}

- (void)removeRefPathWordAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_refPathWords, a2, index, v3) > index)
  {
    refPathWords = self->_refPathWords;

    objc_msgSend_removeObjectAtIndex_(refPathWords, v6, index, v7);
  }
}

- (id)wordAtIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_refPathWords, a2, index, v3) <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(self->_refPathWords, v6, index, v7);
  }

  return v8;
}

- (id)trimmedStringStartingAtWord:(unint64_t)word withPreserveFlags:(BOOL)flags
{
  flagsCopy = flags;
  v30 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_refPathWords, a2, word, flags) <= word)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = self->_refPathWords;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16);
    if (v13)
    {
      v14 = 0;
      v15 = *v26;
      do
      {
        v16 = 0;
        v24 = v14 + v13;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v8);
          }

          if (v14 >= word)
          {
            v17 = *(*(&v25 + 1) + 8 * v16);
            if (objc_msgSend_length(v7, v10, v11, v12))
            {
              objc_msgSend_appendString_(v7, v18, @" ", v19);
            }

            v20 = objc_msgSend_trimmedStringWithPreserveFlag_(v17, v18, flagsCopy, v19);
            objc_msgSend_appendString_(v7, v21, v20, v22);
          }

          ++v14;
          ++v16;
        }

        while (v13 != v16);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v25, v29, 16);
        v14 = v24;
      }

      while (v13);
    }
  }

  return v7;
}

@end
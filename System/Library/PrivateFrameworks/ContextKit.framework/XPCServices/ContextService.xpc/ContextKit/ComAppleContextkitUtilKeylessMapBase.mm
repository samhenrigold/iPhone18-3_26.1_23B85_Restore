@interface ComAppleContextkitUtilKeylessMapBase
- (id)getWithHashesWithIntArray:(id)array;
- (id)valueConverterForCodeWithInt:(int)int;
- (id)valueForEmbeddedWithInt:(int)int;
- (id)valueForIndexWithInt:(int)int;
- (void)close;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilKeylessMapBase

- (id)valueConverterForCodeWithInt:(int)int
{
  keyValueMarshalling = self->keyValueMarshalling_;
  if (!keyValueMarshalling)
  {
    JreThrowNullPointerException();
  }

  return [(ComAppleContextkitUtilValueMarshalling *)keyValueMarshalling getValueConverterWithInt:*&int];
}

- (void)close
{
  input = self->input_;
  if (!input)
  {
    goto LABEL_8;
  }

  [(OrgApacheLuceneStoreIndexInput *)input close];
  if (!self->closeDir_)
  {
    return;
  }

  dir = self->dir_;
  if (!dir)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)dir close];
}

- (id)getWithHashesWithIntArray:(id)array
{
  if (!array)
  {
    goto LABEL_71;
  }

  v5 = *(array + 2);
  if (v5 != self->numHashFunctions_)
  {
    v58 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Array is of wrong size");
    objc_exception_throw(v58);
  }

  if (v5 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 0);
  }

  v59 = *(array + 3);
  v6 = v5 - 1;
  if (qword_100554168 != -1)
  {
    sub_100076D98();
  }

  v8 = [IOSObjectArray arrayWithLength:v6 type:qword_100554160];
  numHashFunctions = self->numHashFunctions_;
  if (numHashFunctions < 2)
  {
LABEL_14:
    JavaUtilArrays_sortWithNSObjectArray_(v8, v7);
    v20 = 0;
    p_elementType = &v8->elementType_;
    v22 = &(&v8->elementType_)[v8->super.size_];
    while (p_elementType < v22)
    {
      v24 = *p_elementType++;
      v23 = v24;
      v25 = sub_100076A3C(self, v24);
      v26 = v25;
      if (v20)
      {
        if (!v25)
        {
          goto LABEL_71;
        }

        entrySet = [(JavaUtilHashMap *)v25 entrySet];
        if (!entrySet)
        {
          goto LABEL_71;
        }

        iterator = [entrySet iterator];
        if (!iterator)
        {
          goto LABEL_71;
        }

        v29 = iterator;
        if ([iterator hasNext])
        {
          do
          {
            next = [v29 next];
            if (!next)
            {
              goto LABEL_71;
            }

            v31 = next;
            if (-[JavaUtilHashMap containsKeyWithId:](v20, "containsKeyWithId:", [next getKey]))
            {
              getValue = [v31 getValue];
              if (!getValue)
              {
                goto LABEL_71;
              }

              v33 = getValue + 12;
              while (v33 < &getValue[4 * *(getValue + 2) + 12])
              {
                if (!v23)
                {
                  goto LABEL_71;
                }

                v34 = *v33;
                v33 += 4;
                if (v34 == *(v23 + 16))
                {
                  goto LABEL_30;
                }
              }
            }

            [v29 remove];
LABEL_30:
            ;
          }

          while (([v29 hasNext] & 1) != 0);
        }
      }

      else
      {
        if (!v25)
        {
          goto LABEL_71;
        }

        entrySet2 = [(JavaUtilHashMap *)v25 entrySet];
        if (!entrySet2)
        {
          goto LABEL_71;
        }

        iterator2 = [entrySet2 iterator];
        if (!iterator2)
        {
          goto LABEL_71;
        }

        v37 = iterator2;
        if ([iterator2 hasNext])
        {
          while (1)
          {
            next2 = [v37 next];
            if (!next2)
            {
              break;
            }

            getValue2 = [next2 getValue];
            if (!getValue2)
            {
              break;
            }

            v40 = getValue2 + 12;
            while (v40 < &getValue2[4 * *(getValue2 + 2) + 12])
            {
              if (!v23)
              {
                goto LABEL_71;
              }

              v41 = *v40;
              v40 += 4;
              if (v41 == *(v23 + 16))
              {
                goto LABEL_44;
              }
            }

            [v37 remove];
LABEL_44:
            if (([v37 hasNext] & 1) == 0)
            {
              goto LABEL_45;
            }
          }

LABEL_71:
          JreThrowNullPointerException();
        }

LABEL_45:
        v20 = v26;
      }

      if ([(JavaUtilHashMap *)v20 isEmpty])
      {
        return 0;
      }
    }

    if (!v20)
    {
      goto LABEL_71;
    }

    v42 = new_JavaUtilArrayList_initWithInt_([(JavaUtilHashMap *)v20 size]);
    if (self->embeddedValues_)
    {
      v66 = 0uLL;
      v67 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      keySet = [(JavaUtilHashMap *)v20 keySet];
      if (!keySet)
      {
        goto LABEL_71;
      }

      v45 = keySet;
      v46 = [keySet countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v65;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v65 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v64 + 1) + 8 * i);
            if (!v50)
            {
              goto LABEL_71;
            }

            -[JavaUtilArrayList addWithId:](v42, "addWithId:", -[ComAppleContextkitUtilKeylessMapBase valueForEmbeddedWithInt:](self, "valueForEmbeddedWithInt:", [v50 intValue]));
          }

          v47 = [v45 countByEnumeratingWithState:&v64 objects:v69 count:16];
        }

        while (v47);
      }
    }

    else
    {
      v62 = 0uLL;
      v63 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      keySet2 = [(JavaUtilHashMap *)v20 keySet];
      if (!keySet2)
      {
        goto LABEL_71;
      }

      v52 = keySet2;
      v53 = [keySet2 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v61;
        do
        {
          for (j = 0; j != v54; j = j + 1)
          {
            if (*v61 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v60 + 1) + 8 * j);
            if (!v57)
            {
              goto LABEL_71;
            }

            -[JavaUtilArrayList addWithId:](v42, "addWithId:", -[ComAppleContextkitUtilKeylessMapBase valueForIndexWithInt:](self, "valueForIndexWithInt:", [v57 intValue]));
          }

          v54 = [v52 countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v54);
      }
    }
  }

  else
  {
    v10 = 1;
    while (1)
    {
      v11 = *(array + 2);
      if (v10 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v10);
      }

      v12 = *(array + v10 + 3);
      numBuckets = self->numBuckets_;
      v14 = JavaLangMath_absWithInt_(v12);
      input = self->input_;
      if (!input)
      {
        goto LABEL_71;
      }

      [(OrgApacheLuceneStoreIndexInput *)input seekWithLong:self->bucketsOffset_ + 4 * (v14 % numBuckets)];
      readInt = [(OrgApacheLuceneStoreDataInput *)self->input_ readInt];
      readInt2 = [(OrgApacheLuceneStoreDataInput *)self->input_ readInt];
      if (readInt2 == readInt)
      {
        return 0;
      }

      v18 = readInt2;
      v19 = [ComAppleContextkitUtilKeylessMapBase_BucketOffset alloc];
      v19->start_ = readInt;
      v19->end_ = v18;
      v19->valueGroup_ = v12 + v59;
      IOSObjectArray_SetAndConsume(v8, v10++ - 1, v19);
      if (v10 == numHashFunctions)
      {
        goto LABEL_14;
      }
    }
  }

  return v42;
}

- (id)valueForIndexWithInt:(int)int
{
  input = self->input_;
  if (!input || ([(OrgApacheLuceneStoreIndexInput *)input seekWithLong:self->valuesIndexOffset_ + 4 * int], [(OrgApacheLuceneStoreIndexInput *)self->input_ seekWithLong:[(OrgApacheLuceneStoreDataInput *)self->input_ readInt]], (valueConverter = self->valueConverter_) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = self->input_;

  return [(ComAppleContextkitUtilValueMarshalling_ValueConverter *)valueConverter readValueWithOrgApacheLuceneStoreIndexInput:v6];
}

- (id)valueForEmbeddedWithInt:(int)int
{
  valueConverter = self->valueConverter_;
  if (!valueConverter)
  {
    JreThrowNullPointerException();
  }

  v4 = JavaLangInteger_valueOfWithInt_(int);

  return [(ComAppleContextkitUtilValueMarshalling_ValueConverter *)valueConverter fromEmbeddedValueWithJavaLangInteger:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilKeylessMapBase;
  [(ComAppleContextkitUtilKeylessMapBase *)&v3 dealloc];
}

@end
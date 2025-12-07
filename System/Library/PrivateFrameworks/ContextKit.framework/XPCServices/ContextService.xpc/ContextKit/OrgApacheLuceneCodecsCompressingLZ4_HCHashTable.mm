@interface OrgApacheLuceneCodecsCompressingLZ4_HCHashTable
- (BOOL)insertAndFindBestMatchWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withOrgApacheLuceneCodecsCompressingLZ4_Match:(id)match;
- (BOOL)insertAndFindWiderMatchWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6 withInt:(int)a7 withOrgApacheLuceneCodecsCompressingLZ4_Match:(id)match;
- (void)dealloc;
- (void)insertWithInt:(int)int withByteArray:(id)array;
- (void)resetWithInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsCompressingLZ4_HCHashTable

- (void)resetWithInt:(int)int
{
  self->nextToUpdate_ = int;
  self->base_ = int;
  JavaUtilArrays_fillWithIntArray_withInt_(self->hashTable_, -1);
  chainTable = self->chainTable_;

  JavaUtilArrays_fillWithShortArray_withShort_(chainTable, 0);
}

- (void)insertWithInt:(int)int withByteArray:(id)array
{
  for (i = self->nextToUpdate_; i < int; self->nextToUpdate_ = i)
  {
    sub_10007EE74(self, array, i);
    i = (self->nextToUpdate_ + 1);
  }
}

- (BOOL)insertAndFindBestMatchWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withOrgApacheLuceneCodecsCompressingLZ4_Match:(id)match
{
  if (!match)
  {
    goto LABEL_44;
  }

  matchCopy = match;
  v7 = *&int;
  *(match + 2) = int;
  *(match + 4) = 0;
  [(OrgApacheLuceneCodecsCompressingLZ4_HCHashTable *)self insertWithInt:*&int withByteArray:array];
  v10 = sub_10007ED6C(self, array, v7);
  v11 = v10;
  if (v10 < v7 - 4 || v7 < v10)
  {
    v33 = 0;
    v36 = 0;
  }

  else if (v10 >= self->base_)
  {
    v36 = v7 - v10;
    v12 = sub_10007E80C(array, v10);
    if (v12 == sub_10007E80C(array, v7))
    {
      v33 = sub_10007E934(array, v11 + 4, v7 + 4, withInt) + 4;
      matchCopy[3] = v11;
      matchCopy[4] = v33;
    }

    else
    {
      v33 = 0;
      v36 = 0;
    }

    v11 = sub_10007EDF4(self, v11);
  }

  else
  {
    v33 = 0;
    v36 = 0;
  }

  v13 = 256;
  do
  {
    v14 = JavaLangMath_maxWithInt_withInt_(self->base_, v7 - 0xFFFF);
    if (v11 > v7 || v11 < v14)
    {
      break;
    }

    if (!array)
    {
      goto LABEL_44;
    }

    v15 = matchCopy[4];
    v16 = *(array + 2);
    v17 = v15 + v11;
    v18 = v15 + v11;
    if (v15 + v11 < 0 || v17 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v17);
    }

    v19 = v15 + v7;
    if (v19 < 0 || v19 >= v16)
    {
      IOSArray_throwOutOfBoundsWithMsg(v16, v19);
    }

    if (*(array + v18 + 12) == *(array + v19 + 12))
    {
      v20 = sub_10007E80C(array, v11);
      if (v20 == sub_10007E80C(array, v7))
      {
        v21 = sub_10007E934(array, v11 + 4, v7 + 4, withInt) + 4;
        if (v21 > matchCopy[4])
        {
          matchCopy[3] = v11;
          matchCopy[4] = v21;
        }
      }
    }

    v11 = sub_10007EDF4(self, v11);
    --v13;
  }

  while (v13);
  if (v33)
  {
    v35 = matchCopy;
    v22 = v7 + v33 - 3;
    v23 = v36;
    if (v22 - v36 > v7)
    {
      v24 = v33 - v36 - 3;
      while (1)
      {
        chainTable = self->chainTable_;
        if (!chainTable)
        {
          break;
        }

        size = chainTable->super.size_;
        if (v7 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v7);
        }

        *(&chainTable->super.size_ + v7 + 2) = v36;
        LOWORD(v7) = v7 + 1;
        if (!--v24)
        {
          v7 = (v22 - v36);
          goto LABEL_35;
        }
      }

LABEL_44:
      JreThrowNullPointerException();
    }

    do
    {
LABEL_35:
      v27 = self->chainTable_;
      if (!v27)
      {
        goto LABEL_44;
      }

      v28 = v27->super.size_;
      if (v7 >= v28)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v7);
      }

      *(&v27->super.size_ + v7 + 2) = v23;
      hashTable = self->hashTable_;
      if (!hashTable)
      {
        goto LABEL_44;
      }

      v30 = (-1640531535 * sub_10007E80C(array, v7)) >> 17;
      v31 = hashTable->super.size_;
      if (v30 >= v31)
      {
        IOSArray_throwOutOfBoundsWithMsg(v31, v30);
      }

      *(&hashTable->super.size_ + v30 + 1) = v7;
      v7 = (v7 + 1);
      v23 = v36;
    }

    while (v7 < v22);
    self->nextToUpdate_ = v22;
    matchCopy = v35;
  }

  return matchCopy[4] != 0;
}

- (BOOL)insertAndFindWiderMatchWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6 withInt:(int)a7 withOrgApacheLuceneCodecsCompressingLZ4_Match:(id)match
{
  if (!match)
  {
LABEL_32:
    JreThrowNullPointerException();
  }

  matchCopy = match;
  v10 = *&int;
  selfCopy = self;
  *(match + 4) = a7;
  [(OrgApacheLuceneCodecsCompressingLZ4_HCHashTable *)self insertWithInt:*&int withByteArray:array];
  v13 = withInt - v10;
  v14 = sub_10007ED6C(selfCopy, array, v10);
  v15 = 0;
  withIntCopy = withInt;
  v34 = v10;
  v30 = v10 - 1;
  v32 = array + v10 - 1;
  withIntCopy2 = withInt;
  v39 = matchCopy;
  v36 = selfCopy;
  v37 = v10;
  v35 = withInt - v10;
  do
  {
    v16 = JavaLangMath_maxWithInt_withInt_(selfCopy->base_, v10 - 0xFFFF);
    if (v14 > v10 || v14 < v16)
    {
      break;
    }

    if (!array)
    {
      goto LABEL_32;
    }

    v17 = matchCopy[4];
    v18 = *(array + 2);
    v19 = v13 + v14 + v17;
    if (v19 < 0 || v19 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v19);
    }

    v20 = v17 + withInt;
    if (v20 < 0 || v20 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v20);
    }

    if (*(array + v19 + 12) == *(array + v20 + 12))
    {
      v21 = sub_10007E80C(array, v14);
      if (v21 == sub_10007E80C(array, v10))
      {
        v22 = sub_10007E934(array, v14 + 4, v10 + 4, a6);
        v23 = 0;
        if (withInt < v10)
        {
          base = selfCopy->base_;
          if (v14 > base)
          {
            v25 = 0;
            v23 = 0;
            do
            {
              v26 = *(array + 2);
              v27 = v14 + v25 - 1;
              if (v14 + v25 < 1 || v14 + v25 > v26)
              {
                IOSArray_throwOutOfBoundsWithMsg(v26, (v14 - 1 + v25));
              }

              if (v34 + v25 < 1 || v34 + v25 > v26)
              {
                IOSArray_throwOutOfBoundsWithMsg(v26, (v30 + v25));
              }

              if (*(array + v14 + v25 + 11) != v32[v25 + 12])
              {
                break;
              }

              ++v23;
              if (v34 + v25 - 1 <= withIntCopy)
              {
                break;
              }

              --v25;
            }

            while (v27 > base);
          }
        }

        v28 = v22 + 4 + v23;
        withInt = withIntCopy2;
        matchCopy = v39;
        selfCopy = v36;
        v10 = v37;
        v13 = v35;
        if (v28 > v39[4])
        {
          v39[4] = v28;
          v39[2] = v37 - v23;
          v39[3] = v14 - v23;
        }
      }
    }

    v14 = sub_10007EDF4(selfCopy, v14);
    ++v15;
  }

  while (v15 != 256);
  return matchCopy[4] > a7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingLZ4_HCHashTable;
  [(OrgApacheLuceneCodecsCompressingLZ4_HCHashTable *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneUtilLSBRadixSorter
- (void)dealloc;
- (void)sortWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilLSBRadixSorter

- (void)sortWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  v8 = *&int;
  v49 = *&int;
  if (withInt > 29)
  {
    selfCopy = self;
    withIntCopy = withInt;
    p_buffer = &self->buffer_;
    v21 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(self->buffer_, withInt, array, *&int, *&withInt, v5, v6, v7);
    JreStrongAssign(p_buffer, v21);
    v22 = 0;
    v23 = 0;
    v24 = *p_buffer;
    arrayCopy = array;
    v26 = v8;
    v50 = selfCopy;
    do
    {
      v53 = v23;
      histogram = selfCopy->histogram_;
      JavaUtilArrays_fillWithIntArray_withInt_(histogram, 0);
      if (!arrayCopy)
      {
LABEL_65:
        JreThrowNullPointerException();
      }

      v28 = 0;
      v29 = v26;
      do
      {
        v30 = v26 + v28;
        v31 = arrayCopy[2];
        if (v26 + v28 < 0 || v30 >= v31)
        {
          IOSArray_throwOutOfBoundsWithMsg(v31, v26 + v28);
        }

        if (!histogram)
        {
          goto LABEL_65;
        }

        v32 = (arrayCopy[v30 + 3] >> v22);
        v33 = *(histogram + 8);
        if (v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, v32);
        }

        ++*(histogram + 12 + 4 * v32);
        ++v28;
      }

      while (withIntCopy != v28);
      v34 = *(histogram + 8);
      if (v34 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v34, 0);
      }

      if (*(histogram + 12) == withIntCopy)
      {
        v35 = v24;
        selfCopy = v50;
        v23 = v53;
      }

      else
      {
        v36 = 0;
        v37 = 0;
        do
        {
          v38 = *(histogram + 8);
          if (v36 >= v38)
          {
            IOSArray_throwOutOfBoundsWithMsg(v38, v36);
          }

          v39 = *(histogram + 12 + 4 * v36);
          *(histogram + 12 + 4 * v36) = v37;
          v37 += v39;
          ++v36;
        }

        while (v36 != 256);
        v40 = withIntCopy;
        do
        {
          v41 = arrayCopy[2];
          if ((v26 & 0x80000000) != 0 || v26 >= v41)
          {
            IOSArray_throwOutOfBoundsWithMsg(v41, v26);
          }

          if (!v24)
          {
            goto LABEL_65;
          }

          v42 = arrayCopy[v26 + 3];
          v43 = *(histogram + 8);
          if ((v42 >> v22) >= v43)
          {
            IOSArray_throwOutOfBoundsWithMsg(v43, (v42 >> v22));
          }

          v44 = *(histogram + 12 + 4 * (v42 >> v22));
          *(histogram + 12 + 4 * (v42 >> v22)) = v44 + 1;
          size = v24->super.size_;
          v46 = v44 + v53;
          if ((v44 + v53) < 0 || v46 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, v46);
          }

          *(&v24->super.size_ + v46 + 1) = v42;
          LODWORD(v26) = v26 + 1;
          --v40;
        }

        while (v40);
        v35 = arrayCopy;
        v26 = v53;
        arrayCopy = v24;
        v24 = v35;
        v23 = v29;
        selfCopy = v50;
      }

      v47 = v22 >= 0x11;
      v22 += 8;
    }

    while (!v47);
    if (v35 == array)
    {

      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(arrayCopy, v26, array, v49, withInt);
    }
  }

  else
  {
    v9 = int + 1;
    if (int + 1 < withInt + int)
    {
      v10 = 0;
      v11 = int + 1;
      v12 = array + 4 * v9;
      do
      {
        if (v11 > int)
        {
          if (!array)
          {
            goto LABEL_65;
          }

          v13 = v10;
          do
          {
            v14 = v9 + v13;
            v15 = *(array + 2);
            if (v14 < 1 || v14 > v15)
            {
              IOSArray_throwOutOfBoundsWithMsg(v15, (int + v13));
            }

            if (v14 < 0 || v14 >= v15)
            {
              IOSArray_throwOutOfBoundsWithMsg(v15, (int + v13 + 1));
            }

            if (*&v12[4 * v13 + 8] <= *&v12[4 * v13 + 12])
            {
              break;
            }

            v16 = *(array + 2);
            if (v14 < 1 || v14 > v16)
            {
              IOSArray_throwOutOfBoundsWithMsg(v16, (int + v13));
            }

            v17 = *&v12[4 * v13 + 8];
            if (v14 < 0 || v14 >= v16)
            {
              IOSArray_throwOutOfBoundsWithMsg(v16, (int + v13 + 1));
            }

            if (v14 > v16)
            {
              IOSArray_throwOutOfBoundsWithMsg(v16, (int + v13));
            }

            *&v12[4 * v13 + 8] = *&v12[4 * v13 + 12];
            v18 = *(array + 2);
            if (v14 < 0 || v14 >= v18)
            {
              IOSArray_throwOutOfBoundsWithMsg(v18, (int + v13 + 1));
            }

            *&v12[4 * v13-- + 12] = v17;
          }

          while (v9 + v13 > int);
        }

        ++v11;
        ++v10;
      }

      while (withInt + int != v11);
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilLSBRadixSorter;
  [(OrgApacheLuceneUtilLSBRadixSorter *)&v3 dealloc];
}

@end
@interface OrgApacheLuceneUtilPackedBulkOperationPacked12
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked12

- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = a7;
      v8 = *&withInt;
      while (1)
      {
        intCopy = int;
        v11 = *(array + 2);
        if (int < 0 || int >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, int);
        }

        if (!intArray)
        {
          break;
        }

        v12 = *(array + int + 2);
        v13 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v8);
        }

        v14 = v8 + 1;
        *(intArray + v8 + 3) = v12 >> 52;
        v15 = *(intArray + 2);
        if (v8 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v8 + 1));
        }

        v16 = v8 + 2;
        *(intArray + v14 + 3) = (v12 >> 40) & 0xFFF;
        v17 = *(intArray + 2);
        if (v8 + 2 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v8 + 2));
        }

        v18 = v8 + 3;
        *(intArray + v16 + 3) = (v12 >> 28) & 0xFFF;
        v19 = *(intArray + 2);
        if (v8 + 3 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 3));
        }

        v20 = v8 + 4;
        *(intArray + v18 + 3) = WORD1(v12) & 0xFFF;
        v21 = *(intArray + 2);
        if (v8 + 4 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v8 + 4));
        }

        v22 = (int + 1);
        *(intArray + v20 + 3) = v12 >> 4;
        v23 = *(array + 2);
        if ((v22 & 0x80000000) != 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v22);
        }

        v24 = v8 + 5;
        v25 = *(array + v22 + 2);
        v26 = *(intArray + 2);
        if (v8 + 5 < 0 || v24 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (v8 + 5));
        }

        v27 = v8 + 6;
        *(intArray + v24 + 3) = HIBYTE(v25) | ((v12 & 0xF) << 8);
        v28 = *(intArray + 2);
        if (v8 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v8 + 6));
        }

        v29 = v8 + 7;
        *(intArray + v27 + 3) = (v25 >> 44) & 0xFFF;
        v30 = *(intArray + 2);
        if (v8 + 7 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v8 + 7));
        }

        v31 = v8 + 8;
        *(intArray + v29 + 3) = WORD2(v25) & 0xFFF;
        v32 = *(intArray + 2);
        if (v8 + 8 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v8 + 8));
        }

        v33 = v8 + 9;
        *(intArray + v31 + 3) = v25 >> 20;
        v34 = *(intArray + 2);
        if (v8 + 9 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v8 + 9));
        }

        v35 = intCopy + 2;
        *(intArray + v33 + 3) = (v25 >> 8) & 0xFFF;
        v36 = *(array + 2);
        if (intCopy + 2 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 2));
        }

        v37 = v8 + 10;
        v38 = *(array + v35 + 2);
        v39 = *(intArray + 2);
        if (v8 + 10 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v8 + 10));
        }

        v40 = v8 + 11;
        *(intArray + v37 + 3) = (v38 >> 60) & 0xF | (16 * v25);
        v41 = *(intArray + 2);
        if (v8 + 11 < 0 || v40 >= v41)
        {
          IOSArray_throwOutOfBoundsWithMsg(v41, (v8 + 11));
        }

        v42 = v8 + 12;
        *(intArray + v40 + 3) = HIWORD(v38) & 0xFFF;
        v43 = *(intArray + 2);
        if (v8 + 12 < 0 || v42 >= v43)
        {
          IOSArray_throwOutOfBoundsWithMsg(v43, (v8 + 12));
        }

        v44 = v8 + 13;
        *(intArray + v42 + 3) = (v38 >> 36) & 0xFFF;
        v45 = *(intArray + 2);
        if (v8 + 13 < 0 || v44 >= v45)
        {
          IOSArray_throwOutOfBoundsWithMsg(v45, (v8 + 13));
        }

        v46 = v8 + 14;
        *(intArray + v44 + 3) = (v38 >> 24) & 0xFFF;
        v47 = *(intArray + 2);
        if (v8 + 14 < 0 || v46 >= v47)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, (v8 + 14));
        }

        v48 = v8 + 15;
        *(intArray + v46 + 3) = (v38 >> 12) & 0xFFF;
        v49 = *(intArray + 2);
        if (v8 + 15 < 0 || v48 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, (v8 + 15));
        }

        *(intArray + v48 + 3) = v38 & 0xFFF;
        int = intCopy + 3;
        v8 = (v8 + 16);
        if (!--v7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = a7;
      v8 = *&withInt;
      while (1)
      {
        intCopy = int;
        v11 = *(array + 2);
        if (int < 0 || int >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, int);
        }

        v12 = (int + 1);
        if ((v12 & 0x80000000) != 0 || v12 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v12);
        }

        if (!intArray)
        {
          break;
        }

        v13 = *(array + v12 + 12);
        v14 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v8);
        }

        v15 = intCopy + 2;
        *(intArray + v8 + 3) = (v13 >> 4) | (16 * *(array + intCopy + 12));
        v16 = *(array + 2);
        if (intCopy + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (intCopy + 2));
        }

        v17 = v8 + 1;
        v18 = *(array + v15 + 12);
        v19 = *(intArray + 2);
        if (v8 + 1 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 1));
        }

        *(intArray + v17 + 3) = v18 & 0xFFFFF0FF | ((v13 & 0xF) << 8);
        int = intCopy + 3;
        v8 = (v8 + 2);
        if (!--v7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = *&withInt;
      while (1)
      {
        intCopy = int;
        v10 = *(array + 2);
        if (int < 0 || int >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, int);
        }

        if (!longArray)
        {
          break;
        }

        v11 = *(array + int + 2);
        v12 = *(longArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v7);
        }

        v13 = v7 + 1;
        *(longArray + v7 + 2) = v11 >> 52;
        v14 = *(longArray + 2);
        if (v7 + 1 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, (v7 + 1));
        }

        v15 = v7 + 2;
        *(longArray + v13 + 2) = (v11 >> 40) & 0xFFF;
        v16 = *(longArray + 2);
        if (v7 + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (v7 + 2));
        }

        v17 = v7 + 3;
        *(longArray + v15 + 2) = (v11 >> 28) & 0xFFF;
        v18 = *(longArray + 2);
        if (v7 + 3 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, (v7 + 3));
        }

        v19 = v7 + 4;
        *(longArray + v17 + 2) = (v11 >> 16) & 0xFFF;
        v20 = *(longArray + 2);
        if (v7 + 4 < 0 || v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v7 + 4));
        }

        v21 = (int + 1);
        *(longArray + v19 + 2) = v11 >> 4;
        v22 = *(array + 2);
        if ((v21 & 0x80000000) != 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v21);
        }

        v23 = v7 + 5;
        v24 = *(array + v21 + 2);
        v25 = *(longArray + 2);
        if (v7 + 5 < 0 || v23 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v7 + 5));
        }

        *(&v26 + 1) = v11;
        *&v26 = *(array + v21 + 2);
        v27 = v7 + 6;
        *(longArray + v23 + 2) = (v26 >> 56) & 0xFFF;
        v28 = *(longArray + 2);
        if (v7 + 6 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, (v7 + 6));
        }

        v29 = v7 + 7;
        *(longArray + v27 + 2) = (v24 >> 44) & 0xFFF;
        v30 = *(longArray + 2);
        if (v7 + 7 < 0 || v29 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v7 + 7));
        }

        v31 = v7 + 8;
        *(longArray + v29 + 2) = HIDWORD(v24) & 0xFFF;
        v32 = *(longArray + 2);
        if (v7 + 8 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v7 + 8));
        }

        v33 = v7 + 9;
        *(longArray + v31 + 2) = v24 >> 20;
        v34 = *(longArray + 2);
        if (v7 + 9 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v7 + 9));
        }

        v35 = intCopy + 2;
        *(longArray + v33 + 2) = (v24 >> 8) & 0xFFF;
        v36 = *(array + 2);
        if (intCopy + 2 < 0 || v35 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, (intCopy + 2));
        }

        v37 = v7 + 10;
        v38 = *(array + v35 + 2);
        v39 = *(longArray + 2);
        if (v7 + 10 < 0 || v37 >= v39)
        {
          IOSArray_throwOutOfBoundsWithMsg(v39, (v7 + 10));
        }

        *(&v40 + 1) = v24;
        *&v40 = *(array + v35 + 2);
        v41 = v7 + 11;
        *(longArray + v37 + 2) = (v40 >> 60) & 0xFFF;
        v42 = *(longArray + 2);
        if (v7 + 11 < 0 || v41 >= v42)
        {
          IOSArray_throwOutOfBoundsWithMsg(v42, (v7 + 11));
        }

        v43 = v7 + 12;
        *(longArray + v41 + 2) = HIWORD(v38) & 0xFFF;
        v44 = *(longArray + 2);
        if (v7 + 12 < 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, (v7 + 12));
        }

        v45 = v7 + 13;
        *(longArray + v43 + 2) = (v38 >> 36) & 0xFFF;
        v46 = *(longArray + 2);
        if (v7 + 13 < 0 || v45 >= v46)
        {
          IOSArray_throwOutOfBoundsWithMsg(v46, (v7 + 13));
        }

        v47 = v7 + 14;
        *(longArray + v45 + 2) = (v38 >> 24) & 0xFFF;
        v48 = *(longArray + 2);
        if (v7 + 14 < 0 || v47 >= v48)
        {
          IOSArray_throwOutOfBoundsWithMsg(v48, (v7 + 14));
        }

        v49 = v7 + 15;
        *(longArray + v47 + 2) = (v38 >> 12) & 0xFFF;
        v50 = *(longArray + 2);
        if (v7 + 15 < 0 || v49 >= v50)
        {
          IOSArray_throwOutOfBoundsWithMsg(v50, (v7 + 15));
        }

        *(longArray + v49 + 2) = v38 & 0xFFF;
        int = intCopy + 3;
        v7 = (v7 + 16);
        if (!--a7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v7 = a7;
      v8 = *&withInt;
      while (1)
      {
        intCopy = int;
        v11 = *(array + 2);
        if (int < 0 || int >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, int);
        }

        v12 = (int + 1);
        if ((v12 & 0x80000000) != 0 || v12 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v12);
        }

        if (!longArray)
        {
          break;
        }

        v13 = *(array + v12 + 12);
        v14 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v8);
        }

        v15 = intCopy + 2;
        *(longArray + v8 + 2) = (v13 >> 4) | (16 * *(array + intCopy + 12));
        v16 = *(array + 2);
        if (intCopy + 2 < 0 || v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, (intCopy + 2));
        }

        v17 = v8 + 1;
        v18 = *(array + v15 + 12);
        v19 = *(longArray + 2);
        if (v8 + 1 < 0 || v17 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 1));
        }

        *(longArray + v17 + 2) = v18 & 0xFFFFFFFFFFFFF0FFLL | ((v13 & 0xF) << 8);
        int = intCopy + 3;
        v8 = (v8 + 2);
        if (!--v7)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

@end
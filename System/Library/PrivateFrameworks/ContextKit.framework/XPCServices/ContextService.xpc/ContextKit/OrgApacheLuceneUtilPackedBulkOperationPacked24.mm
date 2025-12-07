@interface OrgApacheLuceneUtilPackedBulkOperationPacked24
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked24

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
        *(intArray + v8 + 3) = v12 >> 40;
        v15 = *(intArray + 2);
        if (v8 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v8 + 1));
        }

        v16 = (int + 1);
        *(intArray + v14 + 3) = (v12 >> 16) & 0xFFFFFF;
        v17 = *(array + 2);
        if ((v16 & 0x80000000) != 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        v18 = v8 + 2;
        v19 = *(array + v16 + 2);
        v20 = *(intArray + 2);
        if (v8 + 2 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v8 + 2));
        }

        v21 = v8 + 3;
        *(intArray + v18 + 3) = HIBYTE(v19) | (v12 << 8);
        v22 = *(intArray + 2);
        if (v8 + 3 < 0 || v21 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, (v8 + 3));
        }

        v23 = v8 + 4;
        *(intArray + v21 + 3) = HIDWORD(v19) & 0xFFFFFF;
        v24 = *(intArray + 2);
        if (v8 + 4 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, (v8 + 4));
        }

        v25 = intCopy + 2;
        *(intArray + v23 + 3) = v19 >> 8;
        v26 = *(array + 2);
        if (intCopy + 2 < 0 || v25 >= v26)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, (intCopy + 2));
        }

        v27 = v8 + 5;
        v28 = *(array + v25 + 2);
        v29 = *(intArray + 2);
        if (v8 + 5 < 0 || v27 >= v29)
        {
          IOSArray_throwOutOfBoundsWithMsg(v29, (v8 + 5));
        }

        v30 = HIWORD(v28) | (v19 << 16);
        v31 = v8 + 6;
        *(intArray + v27 + 3) = v30;
        v32 = *(intArray + 2);
        if (v8 + 6 < 0 || v31 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, (v8 + 6));
        }

        v33 = v8 + 7;
        *(intArray + v31 + 3) = (v28 >> 24) & 0xFFFFFF;
        v34 = *(intArray + 2);
        if (v8 + 7 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, (v8 + 7));
        }

        *(intArray + v33 + 3) = v28 & 0xFFFFFF;
        int = intCopy + 3;
        v8 = (v8 + 8);
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

        v13 = intCopy + 2;
        v14 = *(array + v12 + 12);
        if (intCopy + 2 < 0 || v13 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, (intCopy + 2));
        }

        if (!intArray)
        {
          break;
        }

        v15 = *(array + v13 + 12);
        v16 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v8);
        }

        *(intArray + v8 + 3) = (*(array + intCopy + 12) << 16) | (v14 << 8) | v15;
        int = intCopy + 3;
        v8 = (v8 + 1);
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

        if (!longArray)
        {
          break;
        }

        v12 = *(array + int + 2);
        v13 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v8);
        }

        v14 = v8 + 1;
        *(longArray + v8 + 2) = v12 >> 40;
        v15 = *(longArray + 2);
        if (v8 + 1 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v8 + 1));
        }

        v16 = (int + 1);
        *(longArray + v14 + 2) = (v12 >> 16) & 0xFFFFFF;
        v17 = *(array + 2);
        if ((v16 & 0x80000000) != 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v16);
        }

        v18 = v8 + 2;
        v19 = *(array + v16 + 2);
        v20 = *(longArray + 2);
        if (v8 + 2 < 0 || v18 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v8 + 2));
        }

        *(&v21 + 1) = v12;
        *&v21 = *(array + v16 + 2);
        v22 = v8 + 3;
        *(longArray + v18 + 2) = (v21 >> 56) & 0xFFFFFF;
        v23 = *(longArray + 2);
        if (v8 + 3 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 3));
        }

        v24 = v8 + 4;
        *(longArray + v22 + 2) = HIDWORD(v19) & 0xFFFFFF;
        v25 = *(longArray + 2);
        if (v8 + 4 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v8 + 4));
        }

        v26 = intCopy + 2;
        *(longArray + v24 + 2) = v19 >> 8;
        v27 = *(array + 2);
        if (intCopy + 2 < 0 || v26 >= v27)
        {
          IOSArray_throwOutOfBoundsWithMsg(v27, (intCopy + 2));
        }

        v28 = v8 + 5;
        v29 = *(array + v26 + 2);
        v30 = *(longArray + 2);
        if (v8 + 5 < 0 || v28 >= v30)
        {
          IOSArray_throwOutOfBoundsWithMsg(v30, (v8 + 5));
        }

        *(&v31 + 1) = v19;
        *&v31 = *(array + v26 + 2);
        v32 = v8 + 6;
        *(longArray + v28 + 2) = (v31 >> 48) & 0xFFFFFF;
        v33 = *(longArray + 2);
        if (v8 + 6 < 0 || v32 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v8 + 6));
        }

        v34 = v8 + 7;
        *(longArray + v32 + 2) = (v29 >> 24) & 0xFFFFFF;
        v35 = *(longArray + 2);
        if (v8 + 7 < 0 || v34 >= v35)
        {
          IOSArray_throwOutOfBoundsWithMsg(v35, (v8 + 7));
        }

        *(longArray + v34 + 2) = v29 & 0xFFFFFF;
        int = intCopy + 3;
        v8 = (v8 + 8);
        if (!--v7)
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

        v13 = intCopy + 2;
        v14 = *(array + v12 + 12);
        if (intCopy + 2 < 0 || v13 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, (intCopy + 2));
        }

        if (!longArray)
        {
          break;
        }

        v15 = *(array + v13 + 12);
        v16 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v8);
        }

        *(longArray + v8 + 2) = (*(array + intCopy + 12) << 16) | (v14 << 8) | v15;
        int = intCopy + 3;
        v8 = (v8 + 1);
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
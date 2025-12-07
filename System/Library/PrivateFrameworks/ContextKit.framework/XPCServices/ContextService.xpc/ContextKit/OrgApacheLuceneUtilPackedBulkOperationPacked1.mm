@interface OrgApacheLuceneUtilPackedBulkOperationPacked1
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked1

- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v9 = 0;
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

        ++int;
        v12 = *(array + intCopy + 2);
        for (i = 63; i != -1; --i)
        {
          v14 = *(intArray + 2);
          if (withInt < 0 || withInt >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, withInt);
          }

          *(intArray + withInt++ + 3) = (v12 >> i) & 1;
        }

        if (++v9 == a7)
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
        v9 = *(array + 2);
        if (int < 0 || int >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, int);
        }

        if (!intArray)
        {
          break;
        }

        v10 = *(array + int + 12);
        v11 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v8);
        }

        v12 = v8 + 1;
        *(intArray + v8 + 3) = v10 >> 7;
        v13 = *(intArray + 2);
        if (v8 + 1 < 0 || v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, (v8 + 1));
        }

        v14 = v8 + 2;
        *(intArray + v12 + 3) = (v10 >> 6) & 1;
        v15 = *(intArray + 2);
        if (v8 + 2 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v8 + 2));
        }

        v16 = v8 + 3;
        *(intArray + v14 + 3) = (v10 >> 5) & 1;
        v17 = *(intArray + 2);
        if (v8 + 3 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v8 + 3));
        }

        v18 = v8 + 4;
        *(intArray + v16 + 3) = (v10 >> 4) & 1;
        v19 = *(intArray + 2);
        if (v8 + 4 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 4));
        }

        v20 = v8 + 5;
        *(intArray + v18 + 3) = (v10 >> 3) & 1;
        v21 = *(intArray + 2);
        if (v8 + 5 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v8 + 5));
        }

        v22 = v8 + 6;
        *(intArray + v20 + 3) = (v10 >> 2) & 1;
        v23 = *(intArray + 2);
        if (v8 + 6 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 6));
        }

        v24 = v8 + 7;
        *(intArray + v22 + 3) = (v10 >> 1) & 1;
        v25 = *(intArray + 2);
        if (v8 + 7 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v8 + 7));
        }

        *(intArray + v24 + 3) = v10 & 1;
        ++int;
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

- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (array)
    {
      v9 = 0;
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

        ++int;
        v12 = *(array + intCopy + 2);
        for (i = 63; i != -1; --i)
        {
          v14 = *(longArray + 2);
          if (withInt < 0 || withInt >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, withInt);
          }

          *(longArray + withInt++ + 2) = (v12 >> i) & 1;
        }

        if (++v9 == a7)
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
        v9 = *(array + 2);
        if (int < 0 || int >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, int);
        }

        if (!longArray)
        {
          break;
        }

        v10 = *(array + int + 12);
        v11 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v8);
        }

        v12 = v8 + 1;
        *(longArray + v8 + 2) = v10 >> 7;
        v13 = *(longArray + 2);
        if (v8 + 1 < 0 || v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, (v8 + 1));
        }

        v14 = v8 + 2;
        *(longArray + v12 + 2) = (v10 >> 6) & 1;
        v15 = *(longArray + 2);
        if (v8 + 2 < 0 || v14 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, (v8 + 2));
        }

        v16 = v8 + 3;
        *(longArray + v14 + 2) = (v10 >> 5) & 1;
        v17 = *(longArray + 2);
        if (v8 + 3 < 0 || v16 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, (v8 + 3));
        }

        v18 = v8 + 4;
        *(longArray + v16 + 2) = (v10 >> 4) & 1;
        v19 = *(longArray + 2);
        if (v8 + 4 < 0 || v18 >= v19)
        {
          IOSArray_throwOutOfBoundsWithMsg(v19, (v8 + 4));
        }

        v20 = v8 + 5;
        *(longArray + v18 + 2) = (v10 >> 3) & 1;
        v21 = *(longArray + 2);
        if (v8 + 5 < 0 || v20 >= v21)
        {
          IOSArray_throwOutOfBoundsWithMsg(v21, (v8 + 5));
        }

        v22 = v8 + 6;
        *(longArray + v20 + 2) = (v10 >> 2) & 1;
        v23 = *(longArray + 2);
        if (v8 + 6 < 0 || v22 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v8 + 6));
        }

        v24 = v8 + 7;
        *(longArray + v22 + 2) = (v10 >> 1) & 1;
        v25 = *(longArray + 2);
        if (v8 + 7 < 0 || v24 >= v25)
        {
          IOSArray_throwOutOfBoundsWithMsg(v25, (v8 + 7));
        }

        *(longArray + v24 + 2) = v10 & 1;
        ++int;
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

@end
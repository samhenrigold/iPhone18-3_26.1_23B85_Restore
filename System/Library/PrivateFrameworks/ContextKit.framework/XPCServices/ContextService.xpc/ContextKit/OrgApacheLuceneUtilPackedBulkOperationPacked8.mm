@interface OrgApacheLuceneUtilPackedBulkOperationPacked8
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked8

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
        for (i = 56; i != -8; i -= 8)
        {
          v14 = *(intArray + 2);
          if (withInt < 0 || withInt >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, withInt);
          }

          *(intArray + withInt++ + 3) = (v12 >> (i & 0x38));
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

        v10 = *(intArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v8);
        }

        *(intArray + v8 + 3) = *(array + int++ + 12);
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
        for (i = 56; i != -8; i -= 8)
        {
          v14 = *(longArray + 2);
          if (withInt < 0 || withInt >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, withInt);
          }

          *(longArray + withInt++ + 2) = (v12 >> (i & 0x38));
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

        v10 = *(longArray + 2);
        if ((v8 & 0x80000000) != 0 || v8 >= v10)
        {
          IOSArray_throwOutOfBoundsWithMsg(v10, v8);
        }

        *(longArray + v8 + 2) = *(array + int++ + 12);
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
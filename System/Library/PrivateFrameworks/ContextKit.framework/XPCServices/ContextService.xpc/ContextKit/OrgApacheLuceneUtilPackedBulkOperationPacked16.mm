@interface OrgApacheLuceneUtilPackedBulkOperationPacked16
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked16

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
        for (i = 48; i != -16; i -= 16)
        {
          v14 = *(intArray + 2);
          if (withInt < 0 || withInt >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, withInt);
          }

          *(intArray + withInt++ + 3) = (v12 >> (i & 0x30));
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

        *(intArray + v8 + 3) = (*(array + intCopy + 12) << 8) | v13;
        int = intCopy + 2;
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
        for (i = 48; i != -16; i -= 16)
        {
          v14 = *(longArray + 2);
          if (withInt < 0 || withInt >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, withInt);
          }

          *(longArray + withInt++ + 2) = (v12 >> (i & 0x30));
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

        *(longArray + v8 + 2) = (*(array + intCopy + 12) << 8) | v13;
        int = intCopy + 2;
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
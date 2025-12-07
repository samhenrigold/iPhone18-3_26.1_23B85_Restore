@interface OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock
- (OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)initWithInt:(int)int;
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithIntArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithIntArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithLongArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock

- (OrgApacheLuceneUtilPackedBulkOperationPackedSingleBlock)initWithInt:(int)int
{
  OrgApacheLuceneUtilPackedBulkOperation_init();
  self->bitsPerValue_ = int;
  self->valueCount_ = 64 / int;
  self->mask_ = ~(-1 << int);
  return self;
}

- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    if (!array)
    {
      JreThrowNullPointerException();
    }

    v8 = a7;
    v9 = *&withInt;
    do
    {
      intCopy = int;
      v13 = *(array + 2);
      if (int < 0 || int >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, int);
      }

      v9 = sub_100140FB8(self, *(array + int + 2), longArray, v9);
      int = intCopy + 1;
      --v8;
    }

    while (v8);
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    v7 = a7;
    v8 = *&withInt;
    v10 = *&int;
    do
    {
      v13 = sub_1001415C0(array, v10);
      v10 = (v10 + 8);
      v8 = sub_100140FB8(self, v13, longArray, v8);
      --v7;
    }

    while (v7);
  }
}

- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (self->bitsPerValue_ > 32)
  {
    v15 = JreStrcat("$I$", a2, array, *&int, intArray, *&withInt, *&a7, v7, @"Cannot decode ");
    v16 = new_JavaLangUnsupportedOperationException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  v8 = a7;
  if (a7 >= 1)
  {
    if (!array)
    {
      JreThrowNullPointerException();
    }

    v10 = *&withInt;
    do
    {
      intCopy = int;
      v14 = *(array + 2);
      if (int < 0 || int >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, int);
      }

      v10 = sub_100141108(self, *(array + int + 2), intArray, v10);
      int = intCopy + 1;
      --v8;
    }

    while (v8);
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (self->bitsPerValue_ > 32)
  {
    v15 = JreStrcat("$I$", a2, array, *&int, intArray, *&withInt, *&a7, v7, @"Cannot decode ");
    v16 = new_JavaLangUnsupportedOperationException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  v8 = a7;
  if (a7 >= 1)
  {
    v9 = *&withInt;
    v11 = *&int;
    do
    {
      v14 = sub_1001415C0(array, v11);
      v11 = (v11 + 8);
      v9 = sub_100141108(self, v14, intArray, v9);
      --v8;
    }

    while (v8);
  }
}

- (void)encodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    v7 = a7;
    v8 = *&withInt;
    v10 = *&int;
    do
    {
      v13 = sub_100141258(self, array, v10);
      if (!longArray)
      {
        JreThrowNullPointerException();
      }

      v14 = v13;
      v15 = *(longArray + 2);
      if ((v8 & 0x80000000) != 0 || v8 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v8);
      }

      *(longArray + v8 + 2) = v14;
      v10 = (self->valueCount_ + v10);
      v8 = (v8 + 1);
      --v7;
    }

    while (v7);
  }
}

- (void)encodeWithIntArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    v7 = a7;
    v8 = *&withInt;
    v10 = *&int;
    do
    {
      v13 = sub_100141374(self, array, v10);
      if (!longArray)
      {
        JreThrowNullPointerException();
      }

      v14 = v13;
      v15 = *(longArray + 2);
      if ((v8 & 0x80000000) != 0 || v8 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v8);
      }

      *(longArray + v8 + 2) = v14;
      v10 = (self->valueCount_ + v10);
      v8 = (v8 + 1);
      --v7;
    }

    while (v7);
  }
}

- (void)encodeWithLongArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    v7 = a7;
    v8 = *&withInt;
    v10 = *&int;
    do
    {
      v13 = sub_100141258(self, array, v10);
      v10 = (self->valueCount_ + v10);
      v8 = [(OrgApacheLuceneUtilPackedBulkOperation *)self writeLongWithLong:v13 withByteArray:byteArray withInt:v8];
      --v7;
    }

    while (v7);
  }
}

- (void)encodeWithIntArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7
{
  if (a7 >= 1)
  {
    v7 = a7;
    v8 = *&withInt;
    v10 = *&int;
    do
    {
      v13 = sub_100141374(self, array, v10);
      v10 = (self->valueCount_ + v10);
      v8 = [(OrgApacheLuceneUtilPackedBulkOperation *)self writeLongWithLong:v13 withByteArray:byteArray withInt:v8];
      --v7;
    }

    while (v7);
  }
}

@end
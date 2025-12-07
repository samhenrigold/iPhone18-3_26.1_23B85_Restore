@interface OrgApacheLuceneUtilPackedBulkOperationPacked
- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7;
- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithIntArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithIntArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithLongArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7;
- (void)encodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7;
@end

@implementation OrgApacheLuceneUtilPackedBulkOperationPacked

- (void)decodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (self->longValueCount_ * a7 >= 1)
  {
    v7 = *&int;
    v9 = 0;
    v10 = 64;
    do
    {
      v11 = withInt + v9;
      bitsPerValue = self->bitsPerValue_;
      v10 -= bitsPerValue;
      if (v10 < 0)
      {
        if (!array)
        {
          goto LABEL_26;
        }

        v17 = *(array + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v7);
        }

        v18 = (v7 + 1);
        v19 = *(array + v7 + 2);
        if ((v18 & 0x80000000) != 0 || v18 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v18);
        }

        if (!longArray)
        {
LABEL_26:
          JreThrowNullPointerException();
        }

        v14 = (*(array + v18 + 2) >> v10) | ((v19 & ~(-1 << (bitsPerValue + v10))) << -v10);
        v10 += 64;
        v15 = v11;
        v16 = *(longArray + 2);
        if (v11 < 0)
        {
          goto LABEL_24;
        }

        v7 = v18;
      }

      else
      {
        if (!array)
        {
          goto LABEL_26;
        }

        v13 = *(array + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, v7);
        }

        if (!longArray)
        {
          goto LABEL_26;
        }

        v14 = self->mask_ & (*(array + v7 + 2) >> v10);
        v15 = v11;
        v16 = *(longArray + 2);
        if (v11 < 0)
        {
          goto LABEL_24;
        }
      }

      if (v11 >= v16)
      {
LABEL_24:
        IOSArray_throwOutOfBoundsWithMsg(v16, (withInt + v9));
      }

      *(longArray + v15 + 2) = v14;
      ++v9;
    }

    while (v9 < self->longValueCount_ * a7);
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (self->byteBlockCount_ * a7 >= 1)
  {
    if (!array)
    {
LABEL_25:
      JreThrowNullPointerException();
    }

    v7 = *&withInt;
    v10 = 0;
    v11 = 0;
    bitsPerValue = self->bitsPerValue_;
    do
    {
      v13 = *(array + 2);
      if (int < 0 || int >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, int);
      }

      v14 = *(array + int + 12);
      if (bitsPerValue < 9)
      {
        if (!longArray)
        {
          goto LABEL_25;
        }

        v15 = *(longArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v7);
        }

        v16 = 8 - bitsPerValue;
        *(longArray + v7 + 2) = (v14 >> (8 - bitsPerValue)) | v11;
        v17 = (v7 + 1);
        v18 = self->bitsPerValue_;
        if (v16 >= v18)
        {
          v20 = v16;
          do
          {
            v21 = *(longArray + 2);
            if ((v17 & 0x80000000) != 0 || v17 >= v21)
            {
              IOSArray_throwOutOfBoundsWithMsg(v21, v17);
            }

            v20 -= v18;
            *(longArray + v17 + 2) = self->mask_ & (v14 >> v20);
            v17 = (v17 + 1);
          }

          while (v20 >= v18);
          v19 = v20 & 0x3F;
          v16 = v20;
        }

        else
        {
          v19 = v16 & 0x3F;
        }

        bitsPerValue = v18 - v16;
        v11 = (((1 << v19) - 1) & v14) << bitsPerValue;
        v7 = v17;
      }

      else
      {
        bitsPerValue -= 8;
        v11 |= v14 << bitsPerValue;
      }

      ++int;
      ++v10;
    }

    while (v10 < self->byteBlockCount_ * a7);
  }
}

- (void)decodeWithLongArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (self->bitsPerValue_ > 32)
  {
    v21 = JreStrcat("$I$", a2, array, *&int, intArray, *&withInt, *&a7, v7, @"Cannot decode ");
    v22 = new_JavaLangUnsupportedOperationException_initWithNSString_(v21);
    objc_exception_throw(v22);
  }

  if (self->longValueCount_ * a7 >= 1)
  {
    v9 = *&int;
    v10 = 0;
    v11 = 64;
    do
    {
      v12 = withInt + v10;
      bitsPerValue = self->bitsPerValue_;
      v11 -= bitsPerValue;
      if (v11 < 0)
      {
        if (!array)
        {
          goto LABEL_27;
        }

        v18 = *(array + 2);
        if ((v9 & 0x80000000) != 0 || v9 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v9);
        }

        v19 = (v9 + 1);
        v20 = *(array + v9 + 2);
        if ((v19 & 0x80000000) != 0 || v19 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v19);
        }

        if (!intArray)
        {
LABEL_27:
          JreThrowNullPointerException();
        }

        v15 = (*(array + v19 + 2) >> v11) | ((v20 & ~(-1 << (bitsPerValue + v11))) << -v11);
        v11 += 64;
        v16 = v12;
        v17 = *(intArray + 2);
        if (v12 < 0)
        {
          goto LABEL_25;
        }

        v9 = v19;
      }

      else
      {
        if (!array)
        {
          goto LABEL_27;
        }

        v14 = *(array + 2);
        if ((v9 & 0x80000000) != 0 || v9 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v9);
        }

        if (!intArray)
        {
          goto LABEL_27;
        }

        v15 = LODWORD(self->mask_) & (*(array + v9 + 2) >> v11);
        v16 = v12;
        v17 = *(intArray + 2);
        if (v12 < 0)
        {
          goto LABEL_25;
        }
      }

      if (v12 >= v17)
      {
LABEL_25:
        IOSArray_throwOutOfBoundsWithMsg(v17, (withInt + v10));
      }

      *(intArray + v16 + 3) = v15;
      ++v10;
    }

    while (v10 < self->longValueCount_ * a7);
  }
}

- (void)decodeWithByteArray:(id)array withInt:(int)int withIntArray:(id)intArray withInt:(int)withInt withInt:(int)a7
{
  if (self->byteBlockCount_ * a7 >= 1)
  {
    if (!array)
    {
LABEL_23:
      JreThrowNullPointerException();
    }

    v7 = *&withInt;
    v10 = 0;
    v11 = 0;
    bitsPerValue = self->bitsPerValue_;
    do
    {
      v13 = *(array + 2);
      if (int < 0 || int >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, int);
      }

      v14 = *(array + int + 12);
      if (bitsPerValue < 9)
      {
        if (!intArray)
        {
          goto LABEL_23;
        }

        v15 = *(intArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v7);
        }

        v16 = 8 - bitsPerValue;
        *(intArray + v7 + 3) = (v14 >> v16) | v11;
        v17 = (v7 + 1);
        for (i = self->bitsPerValue_; v16 >= i; i = self->bitsPerValue_)
        {
          v20 = *(intArray + 2);
          if ((v17 & 0x80000000) != 0 || v17 >= v20)
          {
            IOSArray_throwOutOfBoundsWithMsg(v20, v17);
          }

          v16 -= i;
          *(intArray + v17 + 3) = self->intMask_ & (v14 >> v16);
          v17 = (v17 + 1);
        }

        v19 = v16 & 0x1F;
        bitsPerValue = i - v16;
        v11 = (((1 << v19) - 1) & v14) << bitsPerValue;
        v7 = v17;
      }

      else
      {
        bitsPerValue -= 8;
        v11 |= v14 << bitsPerValue;
      }

      ++int;
      ++v10;
    }

    while (v10 < self->byteBlockCount_ * a7);
  }
}

- (void)encodeWithLongArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (self->longValueCount_ * a7 >= 1)
  {
    v7 = *&withInt;
    v9 = 0;
    v10 = 0;
    v11 = 64;
    do
    {
      v12 = int + v9;
      v11 -= self->bitsPerValue_;
      if (v11 < 1)
      {
        if (v11)
        {
          if (!array)
          {
            goto LABEL_34;
          }

          v14 = *(array + 2);
          if (v12 < 0 || v12 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, (int + v9));
          }

          if (!longArray)
          {
            goto LABEL_34;
          }

          v15 = *(longArray + 2);
          if ((v7 & 0x80000000) != 0 || v7 >= v15)
          {
            IOSArray_throwOutOfBoundsWithMsg(v15, v7);
          }

          *(longArray + v7 + 2) = (*(array + v12 + 2) >> -v11) | v10;
          v16 = *(array + 2);
          if (v12 < 0 || v12 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, (int + v9));
          }

          v7 = (v7 + 1);
          v10 = (*(array + v12 + 2) & ~(-1 << (-v11 & 0x3F))) << v11;
          v11 += 64;
        }

        else
        {
          if (!array)
          {
            goto LABEL_34;
          }

          v17 = *(array + 2);
          if (v12 < 0 || v12 >= v17)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, (int + v9));
          }

          if (!longArray)
          {
LABEL_34:
            JreThrowNullPointerException();
          }

          v18 = *(longArray + 2);
          if ((v7 & 0x80000000) != 0 || v7 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v7);
          }

          *(longArray + v7 + 2) = *(array + v12 + 2) | v10;
          v11 = 64;
          v7 = (v7 + 1);
          v10 = 0;
        }
      }

      else
      {
        if (!array)
        {
          goto LABEL_34;
        }

        v13 = *(array + 2);
        if (v12 < 0 || v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, (int + v9));
        }

        v10 |= *(array + v12 + 2) << v11;
      }

      ++v9;
    }

    while (v9 < self->longValueCount_ * a7);
  }
}

- (void)encodeWithIntArray:(id)array withInt:(int)int withLongArray:(id)longArray withInt:(int)withInt withInt:(int)a7
{
  if (self->longValueCount_ * a7 >= 1)
  {
    v7 = *&withInt;
    v9 = 0;
    v10 = 0;
    v11 = 64;
    do
    {
      v12 = int + v9;
      v11 -= self->bitsPerValue_;
      if (v11 < 1)
      {
        if (v11)
        {
          if (!array)
          {
            goto LABEL_34;
          }

          v14 = *(array + 2);
          if (v12 < 0 || v12 >= v14)
          {
            IOSArray_throwOutOfBoundsWithMsg(v14, (int + v9));
          }

          if (!longArray)
          {
            goto LABEL_34;
          }

          v15 = *(longArray + 2);
          if ((v7 & 0x80000000) != 0 || v7 >= v15)
          {
            IOSArray_throwOutOfBoundsWithMsg(v15, v7);
          }

          *(longArray + v7 + 2) = (*(array + v12 + 3) >> -v11) | v10;
          v16 = *(array + 2);
          if (v12 < 0 || v12 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, (int + v9));
          }

          v7 = (v7 + 1);
          v10 = (*(array + v12 + 3) & ~(-1 << (-v11 & 0x3F))) << v11;
          v11 += 64;
        }

        else
        {
          if (!array)
          {
            goto LABEL_34;
          }

          v17 = *(array + 2);
          if (v12 < 0 || v12 >= v17)
          {
            IOSArray_throwOutOfBoundsWithMsg(v17, (int + v9));
          }

          if (!longArray)
          {
LABEL_34:
            JreThrowNullPointerException();
          }

          v18 = *(longArray + 2);
          if ((v7 & 0x80000000) != 0 || v7 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v7);
          }

          *(longArray + v7 + 2) = v10 | *(array + v12 + 3);
          v11 = 64;
          v7 = (v7 + 1);
          v10 = 0;
        }
      }

      else
      {
        if (!array)
        {
          goto LABEL_34;
        }

        v13 = *(array + 2);
        if (v12 < 0 || v12 >= v13)
        {
          IOSArray_throwOutOfBoundsWithMsg(v13, (int + v9));
        }

        v10 |= *(array + v12 + 3) << v11;
      }

      ++v9;
    }

    while (v9 < self->longValueCount_ * a7);
  }
}

- (void)encodeWithLongArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7
{
  if (self->byteValueCount_ * a7 >= 1)
  {
    if (!array)
    {
LABEL_24:
      JreThrowNullPointerException();
    }

    v7 = *&withInt;
    v10 = 0;
    v11 = 0;
    v12 = 8;
    do
    {
      v13 = *(array + 2);
      if (int < 0 || int >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, int);
      }

      v14 = *(array + int + 2);
      bitsPerValue = self->bitsPerValue_;
      v16 = bitsPerValue - v12;
      if (bitsPerValue >= v12)
      {
        if (!byteArray)
        {
          goto LABEL_24;
        }

        v17 = *(byteArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v7);
        }

        *(byteArray + v7 + 12) = (v14 >> v16) | v11;
        v18 = (v7 + 1);
        if (v16 < 8)
        {
          v20 = v16 & 0x3F;
        }

        else
        {
          do
          {
            v19 = *(byteArray + 2);
            if ((v18 & 0x80000000) != 0 || v18 >= v19)
            {
              IOSArray_throwOutOfBoundsWithMsg(v19, v18);
            }

            v16 -= 8;
            *(byteArray + v18 + 12) = v14 >> v16;
            v18 = (v18 + 1);
          }

          while ((v16 + 8) > 0xF);
          v20 = v16 & 0x3F;
        }

        v12 = 8 - v16;
        v11 = (v14 & ~(-1 << v20)) << (8 - v16);
        v7 = v18;
      }

      else
      {
        v12 -= bitsPerValue;
        v11 |= v14 << v12;
      }

      ++int;
      ++v10;
    }

    while (v10 < self->byteValueCount_ * a7);
  }
}

- (void)encodeWithIntArray:(id)array withInt:(int)int withByteArray:(id)byteArray withInt:(int)withInt withInt:(int)a7
{
  if (self->byteValueCount_ * a7 >= 1)
  {
    if (!array)
    {
LABEL_23:
      JreThrowNullPointerException();
    }

    v7 = *&withInt;
    v10 = 0;
    v11 = 0;
    v12 = 8;
    do
    {
      v13 = *(array + 2);
      if (int < 0 || int >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, int);
      }

      v14 = *(array + int + 3);
      bitsPerValue = self->bitsPerValue_;
      v16 = bitsPerValue - v12;
      if (bitsPerValue >= v12)
      {
        if (!byteArray)
        {
          goto LABEL_23;
        }

        v17 = *(byteArray + 2);
        if ((v7 & 0x80000000) != 0 || v7 >= v17)
        {
          IOSArray_throwOutOfBoundsWithMsg(v17, v7);
        }

        *(byteArray + v7 + 12) = (v14 >> v16) | v11;
        v18 = (v7 + 1);
        if (v16 >= 8)
        {
          do
          {
            v19 = *(byteArray + 2);
            if ((v18 & 0x80000000) != 0 || v18 >= v19)
            {
              IOSArray_throwOutOfBoundsWithMsg(v19, v18);
            }

            v16 -= 8;
            *(byteArray + v18 + 12) = v14 >> v16;
            v18 = (v18 + 1);
          }

          while ((v16 + 8) > 0xF);
        }

        v12 = 8 - v16;
        v11 = (v14 & ~(-1 << (v16 & 0x1F))) << (8 - v16);
        v7 = v18;
      }

      else
      {
        v12 -= bitsPerValue;
        v11 |= v14 << v12;
      }

      ++int;
      ++v10;
    }

    while (v10 < self->byteValueCount_ * a7);
  }
}

@end
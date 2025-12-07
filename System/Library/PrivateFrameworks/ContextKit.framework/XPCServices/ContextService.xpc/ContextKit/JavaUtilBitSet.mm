@interface JavaUtilBitSet
+ (int)sizeOfLong;
+ (void)initialize;
- (BOOL)getWithInt:(int)int;
- (BOOL)intersectsWithJavaUtilBitSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (JavaUtilBitSet)setWithInt:(int)int;
- (JavaUtilBitSet)setWithInt:(int)int withBoolean:(BOOL)boolean;
- (JavaUtilBitSet)setWithInt:(int)int withInt:(int)withInt;
- (JavaUtilBitSet)setWithInt:(int)int withInt:(int)withInt withBoolean:(BOOL)boolean;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getWithInt:(int)int withInt:(int)withInt;
- (id)toByteArray;
- (int)cardinality;
- (int)length;
- (int)nextClearBitWithInt:(int)int;
- (int)nextSetBitWithInt:(int)int;
- (int)previousClearBitWithInt:(int)int;
- (int)previousSetBitWithInt:(int)int;
- (int)size;
- (unint64_t)hash;
- (void)andNotWithJavaUtilBitSet:(id)set;
- (void)and__WithJavaUtilBitSet:(id)set;
- (void)clearWithInt:(int)int;
- (void)clearWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)flipWithInt:(int)int;
- (void)flipWithInt:(int)int withInt:(int)withInt;
- (void)or__WithJavaUtilBitSet:(id)set;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)xor__WithJavaUtilBitSet:(id)set;
@end

@implementation JavaUtilBitSet

+ (int)sizeOfLong
{
  if ((atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100182988();
  }

  return 8;
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = JavaUtilBitSet;
  clone = [(JavaUtilBitSet *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_5;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  bits = self->bits_;
  if (!bits)
  {
LABEL_5:
    JreThrowNullPointerException();
  }

  JreStrongAssign(clone + 1, [(IOSArray *)bits clone]);
  sub_100180000(clone);
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if (!equal)
    {
      goto LABEL_19;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    longCount = self->longCount_;
    if (longCount != *(equal + 4))
    {
      return 0;
    }

    if (longCount >= 1)
    {
      v6 = 0;
      while (1)
      {
        bits = self->bits_;
        if (!bits)
        {
          break;
        }

        size = bits->super.size_;
        if (v6 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v6);
        }

        v9 = bits->buffer_[v6];
        v10 = *(equal + 1);
        v11 = *(v10 + 8);
        if (v6 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v6);
        }

        v12 = *(v10 + 16 + 8 * v6);
        result = v9 == v12;
        if (v9 == v12 && ++v6 < self->longCount_)
        {
          continue;
        }

        return result;
      }

LABEL_19:
      JreThrowNullPointerException();
    }
  }

  return 1;
}

- (unint64_t)hash
{
  longCount = self->longCount_;
  if (longCount < 1)
  {
    v5 = 1234;
  }

  else
  {
    v4 = 0;
    v5 = 1234;
    do
    {
      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      size = bits->super.size_;
      if (v4 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v4);
      }

      v8 = bits->buffer_[v4++];
      v5 ^= v8 * v4;
    }

    while (v4 < longCount);
  }

  return (v5 ^ (v5 << 32)) >> 32;
}

- (BOOL)getWithInt:(int)int
{
  if (int < 0)
  {
    sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
  }

  v10 = (int / 64);
  if (v10 >= self->longCount_)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    size = bits->super.size_;
    if (int < -63 || v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v10);
    }

    return (bits->buffer_[v10] >> int) & 1;
  }

  return v13;
}

- (JavaUtilBitSet)setWithInt:(int)int
{
  if (int < 0)
  {
    sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
  }

  intCopy = int + 63;
  if (int >= 0)
  {
    intCopy = int;
  }

  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v12 = (intCopy >> 6);
  size = bits->super.size_;
  if (v12 >= size)
  {
    sub_100180478(self, (v12 + 1));
    bits = self->bits_;
    size = bits->super.size_;
  }

  if (int < -63 || v12 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v12);
  }

  bits->buffer_[v12] |= 1 << int;
  result = JavaLangMath_maxWithInt_withInt_(self->longCount_, v12 + 1);
  self->longCount_ = result;
  return result;
}

- (void)clearWithInt:(int)int
{
  if (int < 0)
  {
    sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
  }

  v10 = (int / 64);
  if (v10 < self->longCount_)
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    size = bits->super.size_;
    if (int < -63 || v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v10);
    }

    bits->buffer_[v10] &= ~(1 << int);

    sub_100180000(self);
  }
}

- (void)flipWithInt:(int)int
{
  if (int < 0)
  {
    sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
  }

  intCopy = int + 63;
  if (int >= 0)
  {
    intCopy = int;
  }

  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v12 = (intCopy >> 6);
  size = bits->super.size_;
  if (v12 >= size)
  {
    sub_100180478(self, (v12 + 1));
    bits = self->bits_;
    size = bits->super.size_;
  }

  if (int < -63 || v12 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v12);
  }

  bits->buffer_[v12] ^= 1 << int;
  self->longCount_ = JavaLangMath_maxWithInt_withInt_(self->longCount_, v12 + 1);

  sub_100180000(self);
}

- (id)getWithInt:(int)int withInt:(int)withInt
{
  sub_100180990(*&int, *&withInt, *&int, *&withInt, v4, v5, v6, v7);
  if (int != withInt)
  {
    withIntCopy = self->longCount_ << 6;
    if (withIntCopy > int)
    {
      if (withIntCopy >= withInt)
      {
        withIntCopy = withInt;
      }

      intCopy = int + 63;
      if (int >= 0)
      {
        intCopy = int;
      }

      v13 = (intCopy >> 6);
      v14 = withIntCopy - 1;
      v15 = withIntCopy + 62;
      if (withIntCopy - 1 >= 0)
      {
        v15 = withIntCopy - 1;
      }

      v16 = (v15 >> 6);
      v17 = -1 << int;
      v18 = 0xFFFFFFFFFFFFFFFFLL >> -withIntCopy;
      if (v16 == intCopy >> 6)
      {
        bits = self->bits_;
        if (bits)
        {
          v20 = int & 0x3F;
          size = bits->super.size_;
          if (int < -63 || v13 >= size)
          {
            IOSArray_throwOutOfBoundsWithMsg(size, (intCopy >> 6));
          }

          if ((v17 & v18 & bits->buffer_[v13]) >> v20)
          {
            v49 = (v17 & v18 & bits->buffer_[v13]) >> v20;
            v22 = [IOSLongArray arrayWithLongs:&v49 count:1];
            v23 = [JavaUtilBitSet alloc];
            sub_1001801A0(v23, v22);
            return v23;
          }

          v25 = [JavaUtilBitSet alloc];
          if (atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire))
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else
      {
        v27 = (v16 - v13);
        v28 = [IOSLongArray arrayWithLength:v27 + 1];
        v29 = self->bits_;
        if (v29)
        {
          v30 = v28;
          v31 = v29->super.size_;
          if (int < -63 || v13 >= v31)
          {
            IOSArray_throwOutOfBoundsWithMsg(v31, v13);
          }

          v32 = v29->buffer_[v13] & v17;
          v33 = v30->super.size_;
          if (v33 <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v33, 0);
          }

          v30->buffer_[0] = v32;
          v34 = self->bits_;
          v35 = v34->super.size_;
          if (v14 < -63 || v16 >= v35)
          {
            IOSArray_throwOutOfBoundsWithMsg(v35, v16);
          }

          v36 = v34->buffer_[v16] & v18;
          v37 = v30->super.size_;
          if (v37 < 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v37, v37 - 1);
          }

          *(&v30->super.size_ + v37) = v36;
          if (v27 > 1)
          {
            v38 = v13 + 1;
            p_size = &v30->super.size_;
            for (i = 1; i != v27; ++i)
            {
              v41 = self->bits_;
              v42 = v41->super.size_;
              if (v38 < 0 || v38 >= v42)
              {
                IOSArray_throwOutOfBoundsWithMsg(v42, v38);
              }

              v43 = v41->buffer_[v38];
              v44 = v30->super.size_;
              if (i >= v44)
              {
                IOSArray_throwOutOfBoundsWithMsg(v44, i);
              }

              *(p_size + 2) = v43;
              ++v38;
              p_size += 2;
            }
          }

          v45 = int - (v13 << 6);
          if (int != v13 << 6)
          {
            v46 = v30->super.size_;
            if (v46 >= 1)
            {
              v47 = 0;
              do
              {
                if (v47 >= v46)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v46, v47);
                }

                v30->buffer_[v47] = v30->buffer_[v47] >> (v45 & 0x3F);
                v46 = v30->super.size_;
                if (v47 != v46 - 1)
                {
                  if (v47 + 1 >= v46)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v46, (v47 + 1));
                  }

                  if (v47 >= v46)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v46, v47);
                  }

                  v30->buffer_[v47] |= v30->buffer_[v47 + 1] << (-v45 & 0x3F);
                  v46 = v30->super.size_;
                }

                if (v47 >= v46)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v46, v47);
                }

                ++v47;
              }

              while (v47 < v46);
            }
          }

          v48 = [JavaUtilBitSet alloc];
          sub_1001801A0(v48, v30);
          v26 = v48;
          goto LABEL_50;
        }
      }

      JreThrowNullPointerException();
    }
  }

  v25 = [JavaUtilBitSet alloc];
  if ((atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire) & 1) == 0)
  {
LABEL_16:
    sub_100182988();
  }

LABEL_17:
  JreStrongAssign(&v25->bits_, [IOSLongArray arrayWithLength:0]);
  v25->longCount_ = 0;
  v26 = v25;
LABEL_50:

  return v26;
}

- (JavaUtilBitSet)setWithInt:(int)int withBoolean:(BOOL)boolean
{
  if (boolean)
  {
    return [(JavaUtilBitSet *)self setWithInt:*&int];
  }

  else
  {
    return [(JavaUtilBitSet *)self clearWithInt:*&int];
  }
}

- (JavaUtilBitSet)setWithInt:(int)int withInt:(int)withInt withBoolean:(BOOL)boolean
{
  if (boolean)
  {
    return [(JavaUtilBitSet *)self setWithInt:*&int withInt:*&withInt];
  }

  else
  {
    return [(JavaUtilBitSet *)self clearWithInt:*&int withInt:*&withInt];
  }
}

- (JavaUtilBitSet)setWithInt:(int)int withInt:(int)withInt
{
  result = sub_100180990(*&int, *&withInt, *&int, *&withInt, v4, v5, v6, v7);
  if (int != withInt)
  {
    intCopy = int + 63;
    if (int >= 0)
    {
      intCopy = int;
    }

    v13 = withInt + 62;
    if (withInt - 1 >= 0)
    {
      v13 = withInt - 1;
    }

    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    v15 = (intCopy >> 6);
    v16 = (v13 >> 6);
    if (v16 >= bits->super.size_)
    {
      sub_100180478(self, (v16 + 1));
    }

    v17 = -1 << int;
    v18 = 0xFFFFFFFFFFFFFFFFLL >> -withInt;
    if (v15 == v16)
    {
      v18 &= v17;
      v19 = self->bits_;
      v20 = v15;
      size = v19->super.size_;
      if (int < -63 || v15 >= size)
      {
        v22 = v15;
        goto LABEL_29;
      }
    }

    else
    {
      v23 = self->bits_;
      v24 = v23->super.size_;
      if (int < -63 || v15 >= v24)
      {
        IOSArray_throwOutOfBoundsWithMsg(v24, v15);
      }

      v23->buffer_[v15] |= v17;
      v22 = (v15 + 1);
      if (v22 >= v16)
      {
        v20 = v22;
      }

      else
      {
        v25 = v15 + 1;
        v20 = v16;
        do
        {
          v26 = self->bits_;
          v27 = v26->super.size_;
          if (v15 < -1 || v25 >= v27)
          {
            IOSArray_throwOutOfBoundsWithMsg(v27, v25);
          }

          v26->buffer_[v25++] = -1;
          LODWORD(v15) = v15 + 1;
        }

        while (v16 != v25);
        LODWORD(v15) = v16 - 1;
        v22 = v16;
      }

      v19 = self->bits_;
      size = v19->super.size_;
      if (v15 < -1 || v22 >= size)
      {
LABEL_29:
        IOSArray_throwOutOfBoundsWithMsg(size, v22);
      }
    }

    v19->buffer_[v20] |= v18;
    result = JavaLangMath_maxWithInt_withInt_(self->longCount_, v16 + 1);
    self->longCount_ = result;
  }

  return result;
}

- (void)clearWithInt:(int)int withInt:(int)withInt
{
  sub_100180990(*&int, *&withInt, *&int, *&withInt, v4, v5, v6, v7);
  if (int != withInt)
  {
    longCount = self->longCount_;
    v12 = longCount == 0;
    withIntCopy = longCount << 6;
    if (!v12 && withIntCopy > int)
    {
      if (withIntCopy >= withInt)
      {
        withIntCopy = withInt;
      }

      v15 = (int / 64);
      v16 = withIntCopy + 62;
      if (withIntCopy - 1 >= 0)
      {
        v16 = withIntCopy - 1;
      }

      v17 = -1 << int;
      v18 = 0xFFFFFFFFFFFFFFFFLL >> -withIntCopy;
      bits = self->bits_;
      if (v15 == v16 >> 6)
      {
        if (bits)
        {
          v18 &= v17;
          v20 = v15;
          size = bits->super.size_;
          if (int < -63 || v15 >= size)
          {
            v22 = (int / 64);
            goto LABEL_36;
          }

LABEL_30:
          bits->buffer_[v20] &= ~v18;

          sub_100180000(self);
          return;
        }
      }

      else if (bits)
      {
        v23 = (v16 >> 6);
        v24 = bits->super.size_;
        if (int < -63 || v15 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v15);
        }

        bits->buffer_[v15] &= ~v17;
        if (v15 + 1 >= v23)
        {
          v20 = v15 + 1;
          v23 = (v15 + 1);
        }

        else
        {
          v25 = v15 + 1;
          v20 = v23;
          do
          {
            v26 = self->bits_;
            v27 = v26->super.size_;
            if (v15 < -1 || v25 >= v27)
            {
              IOSArray_throwOutOfBoundsWithMsg(v27, v25);
            }

            v26->buffer_[v25++] = 0;
            LODWORD(v15) = v15 + 1;
          }

          while (v23 != v25);
          LODWORD(v15) = v23 - 1;
        }

        bits = self->bits_;
        size = bits->super.size_;
        if (v15 < -1 || v23 >= size)
        {
          v22 = v23;
LABEL_36:
          IOSArray_throwOutOfBoundsWithMsg(size, v22);
        }

        goto LABEL_30;
      }

      JreThrowNullPointerException();
    }
  }
}

- (void)flipWithInt:(int)int withInt:(int)withInt
{
  sub_100180990(*&int, *&withInt, *&int, *&withInt, v4, v5, v6, v7);
  if (int != withInt)
  {
    intCopy = int + 63;
    if (int >= 0)
    {
      intCopy = int;
    }

    v12 = withInt + 62;
    if (withInt - 1 >= 0)
    {
      v12 = withInt - 1;
    }

    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    v14 = (intCopy >> 6);
    v15 = (v12 >> 6);
    if (v15 >= bits->super.size_)
    {
      sub_100180478(self, (v15 + 1));
    }

    v16 = -1 << int;
    v17 = 0xFFFFFFFFFFFFFFFFLL >> -withInt;
    if (v14 == v15)
    {
      v17 &= v16;
      v18 = self->bits_;
      v19 = v14;
      size = v18->super.size_;
      if (int < -63 || v14 >= size)
      {
        v21 = v14;
        goto LABEL_30;
      }
    }

    else
    {
      v22 = self->bits_;
      v23 = v22->super.size_;
      if (int < -63 || v14 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v14);
      }

      v22->buffer_[v14] ^= v16;
      v21 = (v14 + 1);
      if (v21 >= v15)
      {
        v19 = v21;
      }

      else
      {
        v24 = v14 + 1;
        v19 = v15;
        do
        {
          v25 = self->bits_;
          v26 = v25->super.size_;
          if (v14 < -1 || v24 >= v26)
          {
            IOSArray_throwOutOfBoundsWithMsg(v26, v24);
          }

          v25->buffer_[v24] = ~v25->buffer_[v24];
          ++v24;
          LODWORD(v14) = v14 + 1;
        }

        while (v15 != v24);
        LODWORD(v14) = v15 - 1;
        v21 = v15;
      }

      v18 = self->bits_;
      size = v18->super.size_;
      if (v14 < -1 || v21 >= size)
      {
LABEL_30:
        IOSArray_throwOutOfBoundsWithMsg(size, v21);
      }
    }

    v18->buffer_[v19] ^= v17;
    self->longCount_ = JavaLangMath_maxWithInt_withInt_(self->longCount_, v15 + 1);

    sub_100180000(self);
  }
}

- (BOOL)intersectsWithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_15;
  }

  v4 = *(set + 1);
  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
    v9 = v4;
    v10 = v5;
    while (1)
    {
      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      size = bits->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      if (!v4)
      {
        break;
      }

      v13 = bits->buffer_[v7];
      v14 = *(v4 + 8);
      if (v7 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v7);
      }

      if ((*(v9 + 16) & v13) == 0)
      {
        v8 = ++v7 < v6;
        v9 += 8;
        if (v10 != v7)
        {
          continue;
        }
      }

      return v8;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return 0;
}

- (void)and__WithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_14;
  }

  v9 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(set + 1);
      v12 = *(v11 + 8);
      if (v10 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v10);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v14 = *(v11 + 16 + 8 * v10);
      size = bits->super.size_;
      if (v10 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v10);
      }

      bits->buffer_[v10++] &= v14;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:
  JavaUtilArrays_fillWithLongArray_withInt_withInt_withLong_(self->bits_, v9, self->longCount_, 0, v5, v6, v7, v8);

  sub_100180000(self);
}

- (void)andNotWithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_14;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5;
    while (1)
    {
      v8 = *(set + 1);
      v9 = *(v8 + 8);
      if (v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v11 = *(v8 + 16 + 8 * v6);
      size = bits->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      bits->buffer_[v6++] &= ~v11;
      if (v7 == v6)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:

  sub_100180000(self);
}

- (void)or__WithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_14;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  v6 = JavaLangMath_maxWithInt_withInt_(self->longCount_, *(set + 4));
  v7 = v6;
  sub_100180478(self, v6);
  if (v5 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(set + 1);
      v10 = *(v9 + 8);
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v12 = *(v9 + 16 + 8 * v8);
      size = bits->super.size_;
      if (v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      bits->buffer_[v8++] |= v12;
      if (v5 == v8)
      {
        goto LABEL_11;
      }
    }

LABEL_14:
    JreThrowNullPointerException();
  }

LABEL_11:
  if (*(set + 4) > v5)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(set + 1), v5, self->bits_, v5, (v7 - v5));
  }

  self->longCount_ = v7;
}

- (void)xor__WithJavaUtilBitSet:(id)set
{
  if (!set)
  {
    goto LABEL_16;
  }

  v5 = JavaLangMath_minWithInt_withInt_(self->longCount_, *(set + 4));
  v6 = JavaLangMath_maxWithInt_withInt_(self->longCount_, *(set + 4));
  v7 = v6;
  sub_100180478(self, v6);
  if (v5 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(set + 1);
      v10 = *(v9 + 8);
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      bits = self->bits_;
      if (!bits)
      {
        break;
      }

      v12 = *(v9 + 16 + 8 * v8);
      size = bits->super.size_;
      if (v8 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v8);
      }

      bits->buffer_[v8++] ^= v12;
      if (v5 == v8)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    JreThrowNullPointerException();
  }

LABEL_11:
  if (*(set + 4) > v5)
  {
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(set + 1), v5, self->bits_, v5, (v7 - v5));
  }

  self->longCount_ = v7;

  sub_100180000(self);
}

- (int)size
{
  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  return bits->super.size_ << 6;
}

- (int)length
{
  longCount = self->longCount_;
  if (!longCount)
  {
    return 0;
  }

  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v4 = longCount << 6;
  size = bits->super.size_;
  v6 = longCount - 1;
  if (v6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  return v4 - JavaLangLong_numberOfLeadingZerosWithLong_(bits->buffer_[v6], a2);
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_((self->longCount_ / 2));
  [(JavaLangStringBuilder *)v3 appendWithChar:123];
  if (self->longCount_ >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      size = bits->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      if (bits->buffer_[v5])
      {
        for (i = 0; i != 64; ++i)
        {
          v10 = self->bits_;
          v11 = v10->super.size_;
          if (v5 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v5);
          }

          if ((v10->buffer_[v5] >> i))
          {
            if (v6)
            {
              [(JavaLangStringBuilder *)v3 appendWithNSString:@", "];
            }

            [(JavaLangStringBuilder *)v3 appendWithInt:(v4 + i)];
            v6 = 1;
          }
        }
      }

      ++v5;
      v4 += 64;
    }

    while (v5 < self->longCount_);
  }

  [(JavaLangStringBuilder *)v3 appendWithChar:125];

  return [(JavaLangStringBuilder *)v3 description];
}

- (int)nextSetBitWithInt:(int)int
{
  sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
  v11 = (int / 64);
  if (v11 >= self->longCount_)
  {
    return -1;
  }

  bits = self->bits_;
  if (!bits)
  {
    JreThrowNullPointerException();
  }

  v13 = -1 << int;
  size = bits->super.size_;
  if (int < -63 || v11 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v11);
  }

  if ((bits->buffer_[v11] & v13) == 0)
  {
    v18 = v11 + 1;
    v19 = &_mh_execute_header + (v11 << 32);
    while (1)
    {
      v11 = v18;
      v20 = v19;
      v21 = v18 - 1;
      longCount = self->longCount_;
      if (v11 >= longCount)
      {
        break;
      }

      v23 = self->bits_;
      v24 = v23->super.size_;
      if (v21 < -1 || v11 >= v24)
      {
        IOSArray_throwOutOfBoundsWithMsg(v24, v11);
      }

      v18 = v11 + 1;
      v19 = &_mh_execute_header + v19;
      if (v23->buffer_[v11])
      {
        LODWORD(longCount) = self->longCount_;
        break;
      }
    }

    if (longCount != v11)
    {
      v26 = self->bits_;
      v27 = v20 >> 32;
      v28 = v26->super.size_;
      if (v21 < -1 || v28 <= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v28, v11);
      }

      v17 = v26->buffer_[v27];
      return JavaLangLong_numberOfTrailingZerosWithLong_(v17, v10) + (v11 << 6);
    }

    return -1;
  }

  v15 = self->bits_;
  v16 = v15->super.size_;
  if (v11 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v11);
  }

  v17 = v15->buffer_[v11] & v13;
  return JavaLangLong_numberOfTrailingZerosWithLong_(v17, v10) + (v11 << 6);
}

- (int)nextClearBitWithInt:(int)int
{
  intCopy = int;
  sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
  v11 = (intCopy / 64);
  if (v11 < self->longCount_)
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    v13 = -1 << intCopy;
    size = bits->super.size_;
    if (intCopy < -63 || v11 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v11);
    }

    if ((v13 & ~bits->buffer_[v11]) != 0)
    {
      v15 = self->bits_;
      v16 = v15->super.size_;
      if (v11 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v11);
      }

      v17 = v13 & ~v15->buffer_[v11];
      intCopy = v11 << 6;
LABEL_19:
      intCopy += JavaLangLong_numberOfTrailingZerosWithLong_(v17, v10);
      return intCopy;
    }

    v18 = v11 + 1;
    v19 = &_mh_execute_header + (v11 << 32);
    v20 = (v11 << 6) + 64;
    while (1)
    {
      v21 = v18;
      v22 = v19;
      intCopy = v20;
      v23 = v18 - 1;
      longCount = self->longCount_;
      if (v21 >= longCount)
      {
        break;
      }

      v25 = self->bits_;
      v26 = v25->super.size_;
      if (v23 < -1 || v21 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v21);
      }

      v18 = v21 + 1;
      v19 = &_mh_execute_header + v19;
      v20 += 64;
      if (v25->buffer_[v21] != -1)
      {
        LODWORD(longCount) = self->longCount_;
        break;
      }
    }

    if (longCount != v21)
    {
      v27 = self->bits_;
      v28 = v22 >> 32;
      v29 = v27->super.size_;
      if (v23 < -1 || v29 <= v21)
      {
        IOSArray_throwOutOfBoundsWithMsg(v29, v21);
      }

      v17 = ~v27->buffer_[v28];
      goto LABEL_19;
    }
  }

  return intCopy;
}

- (int)previousSetBitWithInt:(int)int
{
  v8 = *&int;
  if (int != -1)
  {
    sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_6:
      LODWORD(v8) = -1;
    }

    else
    {
      while (![(JavaUtilBitSet *)self getWithInt:v8])
      {
        v10 = v8 <= 0;
        v8 = (v8 - 1);
        if (v10)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return v8;
}

- (int)previousClearBitWithInt:(int)int
{
  v8 = *&int;
  if (int != -1)
  {
    sub_100180690(*&int, a2, *&int, v3, v4, v5, v6, v7);
    if ((v8 & 0x80000000) != 0)
    {
LABEL_6:
      LODWORD(v8) = -1;
    }

    else
    {
      while ([(JavaUtilBitSet *)self getWithInt:v8])
      {
        v10 = v8 <= 0;
        v8 = (v8 - 1);
        if (v10)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return v8;
}

- (int)cardinality
{
  if (self->longCount_ < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    bits = self->bits_;
    if (!bits)
    {
      JreThrowNullPointerException();
    }

    size = bits->super.size_;
    if (v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3);
    }

    v4 += JavaLangLong_bitCountWithLong_(bits->buffer_[v3++], a2);
  }

  while (v3 < self->longCount_);
  return v4;
}

- (id)toByteArray
{
  v3 = [(JavaUtilBitSet *)self length];
  v4 = v3 + 7;
  if ((v3 + 7) < 0)
  {
    v4 = v3 + 14;
  }

  v5 = [IOSByteArray arrayWithLength:v4 >> 3];
  v6 = v5;
  if (v5->super.size_ >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = v7 + 63;
      if (v7 >= 0)
      {
        v10 = v7;
      }

      bits = self->bits_;
      if (!bits)
      {
        JreThrowNullPointerException();
      }

      v12 = v10 >> 6;
      size = bits->super.size_;
      if (v7 < -63 || v12 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, (v10 >> 6));
      }

      v14 = bits->buffer_[v12];
      v15 = v6[2];
      if (v8 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v8);
      }

      *(&v9->super.size_ + 4) = v14 >> (v7 & 0x38);
      ++v8;
      v9 = (v9 + 1);
      v7 += 8;
    }

    while (v8 < v6[2]);
  }

  return v6;
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || ([stream defaultReadObject], (bits = self->bits_) == 0))
  {
    JreThrowNullPointerException();
  }

  self->longCount_ = bits->super.size_;

  sub_100180000(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilBitSet;
  [(JavaUtilBitSet *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilBitSet *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    if ((atomic_load_explicit(JavaUtilBitSet__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100182988();
    }

    dword_100554B58 = 8;
    atomic_store(1u, JavaUtilBitSet__initialized);
  }
}

@end
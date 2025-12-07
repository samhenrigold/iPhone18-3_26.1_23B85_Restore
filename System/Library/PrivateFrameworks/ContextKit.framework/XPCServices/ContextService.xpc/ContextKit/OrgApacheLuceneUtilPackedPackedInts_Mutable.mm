@interface OrgApacheLuceneUtilPackedPackedInts_Mutable
- (id)getFormat;
- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
- (void)clear;
- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long;
- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_Mutable

- (int)setWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_(*&a6, [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size]- int);
  v11 = v10;
  if (v10 + v8 > v8)
  {
    v12 = v10;
    do
    {
      v13 = *(array + 2);
      if (withInt < 0 || withInt >= v13)
      {
        IOSArray_throwOutOfBoundsWithMsg(v13, withInt);
      }

      [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self setWithInt:v8 withLong:*(array + withInt + 2)];
      v8 = (v8 + 1);
      ++withInt;
      --v12;
    }

    while (v12);
  }

  return v11;
}

- (void)fillWithInt:(int)int withInt:(int)withInt withLong:(int64_t)long
{
  if (int < withInt)
  {
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v9;
    v20 = v10;
    v13 = *&int;
    do
    {
      [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self setWithInt:v13 withLong:long, v15, v16, v17, v18, v19, v20];
      v13 = (v13 + 1);
    }

    while (withInt != v13);
  }
}

- (void)clear
{
  v3 = [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size];

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self fillWithInt:0 withInt:v3 withLong:0];
}

- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output
{
  v4 = new_OrgApacheLuceneUtilPackedPackedWriter_initWithOrgApacheLuceneUtilPackedPackedInts_FormatEnum_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_([(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self getFormat], output, [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size], [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self getBitsPerValue], 1024);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  [(OrgApacheLuceneUtilPackedPackedInts_Writer *)v4 writeHeader];
  if ([(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size]>= 1)
  {
    v6 = 0;
    do
    {
      [(OrgApacheLuceneUtilPackedPackedWriter *)v5 addWithLong:[(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self getWithInt:v6]];
      v6 = (v6 + 1);
    }

    while (v6 < [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)self size]);
  }

  [(OrgApacheLuceneUtilPackedPackedWriter *)v5 finish];
}

- (id)getFormat
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100003648();
  }

  return OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0];
}

@end
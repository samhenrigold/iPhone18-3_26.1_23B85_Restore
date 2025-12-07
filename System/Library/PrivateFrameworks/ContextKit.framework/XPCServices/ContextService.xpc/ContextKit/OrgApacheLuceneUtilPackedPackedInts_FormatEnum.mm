@interface OrgApacheLuceneUtilPackedPackedInts_FormatEnum
+ (void)initialize;
- (OrgApacheLuceneUtilPackedPackedInts_FormatEnum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt;
- (int)longCountWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_FormatEnum

- (OrgApacheLuceneUtilPackedPackedInts_FormatEnum)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt
{
  JavaLangEnum_initWithNSString_withInt_(self, string, withInt);
  *(&self->super.ordinal_ + 1) = int;
  return self;
}

- (int)longCountWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = [(OrgApacheLuceneUtilPackedPackedInts_FormatEnum *)self byteCountWithInt:*&int withInt:*&withInt withInt:*&a5];
  if ((v5 & 7) != 0)
  {
    return v5 / 8 + 1;
  }

  else
  {
    return v5 >> 3;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneUtilPackedPackedInts_Format__1Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"PACKED", 0);
    *(&v2->super.super.ordinal_ + 1) = 0;
    OrgApacheLuceneUtilPackedPackedInts_FormatEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneUtilPackedPackedInts_Format__2Enum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"PACKED_SINGLE_BLOCK", 1);
    *(&v3->super.super.ordinal_ + 1) = 1;
    qword_100557918 = v3;
    atomic_store(1u, OrgApacheLuceneUtilPackedPackedInts_FormatEnum__initialized);
  }
}

@end
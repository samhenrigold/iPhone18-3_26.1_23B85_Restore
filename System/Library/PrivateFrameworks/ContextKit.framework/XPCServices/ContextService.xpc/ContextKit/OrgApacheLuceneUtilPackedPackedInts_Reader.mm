@interface OrgApacheLuceneUtilPackedPackedInts_Reader
- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_Reader

- (int)getWithInt:(int)int withLongArray:(id)array withInt:(int)withInt withInt:(int)a6
{
  v8 = *&int;
  v10 = JavaLangMath_minWithInt_withInt_([(OrgApacheLuceneUtilPackedPackedInts_Reader *)self size]- int, a6);
  v11 = v10;
  if (v10 + v8 > v8)
  {
    v12 = v10;
    do
    {
      v13 = [(OrgApacheLuceneUtilPackedPackedInts_Reader *)self getWithInt:v8];
      v14 = *(array + 2);
      if (withInt < 0 || withInt >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, withInt);
      }

      *(array + withInt + 2) = v13;
      v8 = (v8 + 1);
      ++withInt;
      --v12;
    }

    while (v12);
  }

  return v11;
}

@end
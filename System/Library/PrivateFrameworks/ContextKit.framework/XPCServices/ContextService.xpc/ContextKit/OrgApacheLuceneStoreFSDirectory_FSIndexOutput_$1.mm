@interface OrgApacheLuceneStoreFSDirectory_FSIndexOutput_$1
- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneStoreFSDirectory_FSIndexOutput_$1

- (void)writeWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (withInt >= 1)
  {
    v5 = *&withInt;
    v6 = *&int;
    do
    {
      v9 = JavaLangMath_minWithInt_withInt_(v5, 0x2000);
      out = self->super.out_;
      if (!out)
      {
        JreThrowNullPointerException();
      }

      [(JavaIoOutputStream *)out writeWithByteArray:array withInt:v6 withInt:v9];
      v5 = (v5 - v9);
      v6 = (v9 + v6);
    }

    while (v5 > 0);
  }
}

@end
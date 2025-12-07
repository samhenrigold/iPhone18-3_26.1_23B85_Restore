@interface OrgApacheLuceneCodecsCodecUtil
+ (int)checkIndexHeaderWithOrgApacheLuceneStoreDataInput:(id)input withNSString:(id)string withInt:(int)int withInt:(int)withInt withByteArray:(id)array withNSString:(id)sString;
+ (int)headerLengthWithNSString:(id)string;
+ (int)indexHeaderLengthWithNSString:(id)string withNSString:(id)sString;
@end

@implementation OrgApacheLuceneCodecsCodecUtil

+ (int)headerLengthWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  return [string length] + 9;
}

+ (int)indexHeaderLengthWithNSString:(id)string withNSString:(id)sString
{
  if (!string || (v5 = [string length], !sString))
  {
    JreThrowNullPointerException();
  }

  return v5 + [sString length] + 26;
}

+ (int)checkIndexHeaderWithOrgApacheLuceneStoreDataInput:(id)input withNSString:(id)string withInt:(int)int withInt:(int)withInt withByteArray:(id)array withNSString:(id)sString
{
  v11 = OrgApacheLuceneCodecsCodecUtil_checkHeaderWithOrgApacheLuceneStoreDataInput_withNSString_withInt_withInt_(input, string, *&int, *&withInt);
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderIDWithOrgApacheLuceneStoreDataInput_withByteArray_(input, array);
  OrgApacheLuceneCodecsCodecUtil_checkIndexHeaderSuffixWithOrgApacheLuceneStoreDataInput_withNSString_(input, sString);
  return v11;
}

@end
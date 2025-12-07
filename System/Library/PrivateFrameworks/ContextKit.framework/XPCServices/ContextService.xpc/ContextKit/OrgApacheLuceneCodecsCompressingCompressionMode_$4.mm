@interface OrgApacheLuceneCodecsCompressingCompressionMode_$4
- (void)decompressWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6 withOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$4

- (void)decompressWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6 withOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref || (v10 = *(ref + 1)) == 0)
  {
    JreThrowNullPointerException();
  }

  if (v10[2] < int + 7)
  {
    v14 = [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(int + 7, 1, v10, *&int, *&withInt, *&a6, ref, v7)];
    JreStrongAssignAndConsume(ref + 1, v14);
    v10 = *(ref + 1);
  }

  if (OrgApacheLuceneCodecsCompressingLZ4_decompressWithOrgApacheLuceneStoreDataInput_withInt_withByteArray_withInt_(input, a6 + withInt, v10, 0) > int)
  {
    v22 = JreStrcat("$I$I", v15, v16, v17, v18, v19, v20, v21, @"Corrupted: lengths mismatch: ");
    v23 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v22, input);
    objc_exception_throw(v23);
  }

  *(ref + 4) = withInt;
  *(ref + 5) = a6;
}

@end
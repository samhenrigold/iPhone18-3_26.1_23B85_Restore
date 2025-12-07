@interface OrgApacheLuceneCodecsCompressingCompressionMode_$3
- (id)newCompressor;
- (id)newDecompressor;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_$3

- (id)newCompressor
{
  v2 = [OrgApacheLuceneCodecsCompressingCompressionMode_LZ4HighCompressor alloc];
  OrgApacheLuceneCodecsCompressingCompressor_init();
  v3 = new_OrgApacheLuceneCodecsCompressingLZ4_HCHashTable_init();
  JreStrongAssignAndConsume(&v2->ht_, v3);

  return v2;
}

- (id)newDecompressor
{
  if ((atomic_load_explicit(OrgApacheLuceneCodecsCompressingCompressionMode__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10005CD10();
  }

  return qword_100554290;
}

@end
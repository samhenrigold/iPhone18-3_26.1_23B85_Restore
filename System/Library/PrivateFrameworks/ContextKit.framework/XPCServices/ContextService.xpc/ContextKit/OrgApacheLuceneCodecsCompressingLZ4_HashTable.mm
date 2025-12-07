@interface OrgApacheLuceneCodecsCompressingLZ4_HashTable
- (void)dealloc;
- (void)resetWithInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsCompressingLZ4_HashTable

- (void)resetWithInt:(int)int
{
  v9 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(int - 5, a2, *&int, v3, v4, v5, v6, v7);
  hashLog = JavaLangInteger_numberOfLeadingZerosWithInt_(v9 - 1) - 15;
  p_hashTable = &self->hashTable_;
  hashTable = self->hashTable_;
  self->hashLog_ = hashLog;
  if (!hashTable || (v13 = [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)hashTable size], hashLog = self->hashLog_, v13 < 1 << hashLog))
  {
LABEL_5:
    MutableWithInt_withInt_withFloat = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_((1 << hashLog), v9, 0.25);

    JreStrongAssign(&self->hashTable_, MutableWithInt_withInt_withFloat);
    return;
  }

  if ([(OrgApacheLuceneUtilPackedPackedInts_Mutable *)*p_hashTable getBitsPerValue]< v9)
  {
    hashLog = self->hashLog_;
    goto LABEL_5;
  }

  v15 = *p_hashTable;

  [(OrgApacheLuceneUtilPackedPackedInts_Mutable *)v15 clear];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingLZ4_HashTable;
  [(OrgApacheLuceneCodecsCompressingLZ4_HashTable *)&v3 dealloc];
}

@end
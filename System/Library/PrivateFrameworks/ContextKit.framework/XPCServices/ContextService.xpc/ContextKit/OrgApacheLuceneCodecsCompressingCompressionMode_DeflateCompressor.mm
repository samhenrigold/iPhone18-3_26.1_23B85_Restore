@interface OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor
- (void)compressWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withOrgApacheLuceneStoreDataOutput:(id)output;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor

- (void)compressWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withOrgApacheLuceneStoreDataOutput:(id)output
{
  compressor = self->compressor_;
  if (!compressor)
  {
    goto LABEL_11;
  }

  v9 = *&withInt;
  v10 = *&int;
  [(JavaUtilZipDeflater *)compressor reset];
  [(JavaUtilZipDeflater *)self->compressor_ setInputWithByteArray:array withInt:v10 withInt:v9];
  [(JavaUtilZipDeflater *)self->compressor_ finish];
  if ([(JavaUtilZipDeflater *)self->compressor_ needsInput])
  {
    if (output)
    {

      [output writeVIntWithInt:0];
      return;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  if (!self->compressed_)
  {
    goto LABEL_11;
  }

  LODWORD(v12) = 0;
  while (1)
  {
    v12 = [JavaUtilZipDeflater deflateWithByteArray:"deflateWithByteArray:withInt:withInt:" withInt:? withInt:?]+ v12;
    if ([(JavaUtilZipDeflater *)self->compressor_ finished])
    {
      break;
    }

    v20 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_(self->compressed_, v13, v14, v15, v16, v17, v18, v19);
    JreStrongAssign(&self->compressed_, v20);
    if (!self->compressed_)
    {
      goto LABEL_11;
    }
  }

  if (!output)
  {
    goto LABEL_11;
  }

  [output writeVIntWithInt:v12];
  compressed = self->compressed_;

  [output writeBytesWithByteArray:compressed withInt:v12];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor;
  [(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateCompressor *)&v3 dealloc];
}

@end
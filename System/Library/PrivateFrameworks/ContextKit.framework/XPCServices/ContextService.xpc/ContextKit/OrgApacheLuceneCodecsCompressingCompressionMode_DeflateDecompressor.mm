@interface OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor
- (id)clone;
- (void)dealloc;
- (void)decompressWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6 withOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor

- (void)decompressWithOrgApacheLuceneStoreDataInput:(id)input withInt:(int)int withInt:(int)withInt withInt:(int)a6 withOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!a6)
  {
    if (ref)
    {
      v9 = 0;
      goto LABEL_12;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!input)
  {
    goto LABEL_13;
  }

  v9 = a6;
  v11 = *&int;
  readVInt = [input readVInt];
  v20 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(self->compressed_, readVInt + 1, v14, v15, v16, v17, v18, v19);
  JreStrongAssign(&self->compressed_, v20);
  [input readBytesWithByteArray:self->compressed_ withInt:0 withInt:readVInt];
  compressed = self->compressed_;
  if (!compressed)
  {
    goto LABEL_13;
  }

  size = compressed->super.size_;
  if ((readVInt & 0x80000000) != 0 || readVInt >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, readVInt);
  }

  *(&compressed->super.size_ + readVInt + 4) = 0;
  decompressor = self->decompressor_;
  if (!decompressor)
  {
    goto LABEL_13;
  }

  [(JavaUtilZipInflater *)decompressor reset];
  [(JavaUtilZipInflater *)self->decompressor_ setInputWithByteArray:self->compressed_ withInt:0 withInt:(readVInt + 1)];
  *(ref + 5) = 0;
  *(ref + 4) = 0;
  v30 = OrgApacheLuceneUtilArrayUtil_growWithByteArray_withInt_(*(ref + 1), v11, v24, v25, v26, v27, v28, v29);
  JreStrongAssign(ref + 1, v30);
  *(ref + 5) = [(JavaUtilZipInflater *)self->decompressor_ inflateWithByteArray:*(ref + 1) withInt:*(ref + 5) withInt:v11];
  if (![(JavaUtilZipInflater *)self->decompressor_ finished])
  {
    [(JavaUtilZipInflater *)self->decompressor_ needsInput];
    [(JavaUtilZipInflater *)self->decompressor_ needsDictionary];
    v45 = JreStrcat("$Z$Z", v38, v39, v40, v41, v42, v43, v44, @"Invalid decoder state: needsInput=");
    goto LABEL_17;
  }

  if (*(ref + 5) != v11)
  {
    v45 = JreStrcat("$I$I", v31, v32, v33, v34, v35, v36, v37, @"Lengths mismatch: ");
LABEL_17:
    v46 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v45, input);
    objc_exception_throw(v46);
  }

  *(ref + 4) = withInt;
LABEL_12:
  *(ref + 5) = v9;
}

- (id)clone
{
  v2 = [OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor alloc];
  sub_10009BD7C(v2);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor;
  [(OrgApacheLuceneCodecsCompressingCompressionMode_DeflateDecompressor *)&v3 dealloc];
}

@end
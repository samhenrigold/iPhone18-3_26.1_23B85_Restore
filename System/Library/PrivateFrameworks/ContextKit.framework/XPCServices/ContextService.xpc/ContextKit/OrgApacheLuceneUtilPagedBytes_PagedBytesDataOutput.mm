@interface OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput
- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)initWithOrgApacheLuceneUtilPagedBytes:(id)bytes;
- (void)dealloc;
- (void)writeByteWithByte:(char)byte;
- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput

- (void)writeByteWithByte:(char)byte
{
  v9 = self->this$0_;
  upto = v9->upto_;
  if (upto == v9->blockSize_)
  {
    currentBlock = v9->currentBlock_;
    if (currentBlock)
    {
      sub_100131BE0(self->this$0_, currentBlock, byte, v3, v4, v5, v6, v7);
      v9 = self->this$0_;
      upto = v9->blockSize_;
    }

    JreStrongAssignAndConsume(&v9->currentBlock_, [IOSByteArray newArrayWithLength:upto]);
    self->this$0_->upto_ = 0;
    v9 = self->this$0_;
  }

  v13 = v9->currentBlock_;
  if (!v13)
  {
    JreThrowNullPointerException();
  }

  v14 = v9->upto_;
  v9->upto_ = v14 + 1;
  size = v13->super.size_;
  if (v14 < 0 || v14 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v14);
  }

  *(&v13->super.size_ + v14 + 4) = byte;
}

- (void)writeBytesWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (withInt)
  {
    v8 = *&withInt;
    v9 = *&int;
    v12 = self->this$0_;
    upto = v12->upto_;
    blockSize = v12->blockSize_;
    if (upto == blockSize)
    {
      currentBlock = v12->currentBlock_;
      if (currentBlock)
      {
        sub_100131BE0(self->this$0_, currentBlock, array, upto, *&withInt, v5, v6, v7);
        v12 = self->this$0_;
        LODWORD(upto) = v12->blockSize_;
      }

      JreStrongAssignAndConsume(&v12->currentBlock_, [IOSByteArray newArrayWithLength:upto]);
      self->this$0_->upto_ = 0;
      v12 = self->this$0_;
      blockSize = v12->blockSize_;
      upto = v12->upto_;
    }

    v16 = (blockSize - upto);
    if (v16 < v8)
    {
      v17 = v8 + v9;
      do
      {
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v9, v12->currentBlock_, upto, v16);
        sub_100131BE0(self->this$0_, self->this$0_->currentBlock_, v18, v19, v20, v21, v22, v23);
        JreStrongAssignAndConsume(&self->this$0_->currentBlock_, [IOSByteArray newArrayWithLength:self->this$0_->blockSize_]);
        self->this$0_->upto_ = 0;
        v9 = (v16 + v9);
        v8 = (v17 - v9);
        v12 = self->this$0_;
        upto = v12->upto_;
        v16 = (v12->blockSize_ - upto);
      }

      while (v16 < v8);
    }

    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(array, v9, v12->currentBlock_, upto, v8);
    self->this$0_->upto_ += v8;
  }
}

- (OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput)initWithOrgApacheLuceneUtilPagedBytes:(id)bytes
{
  JreStrongAssign(&self->this$0_, bytes);
  OrgApacheLuceneStoreDataOutput_init();
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilPagedBytes_PagedBytesDataOutput;
  [(OrgApacheLuceneStoreDataOutput *)&v3 dealloc];
}

@end
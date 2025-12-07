@interface OrgApacheLuceneUtilFstFST
+ (BOOL)targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc:(id)arc;
+ (void)initialize;
- (BOOL)assertRootCachedArcWithInt:(int)int withOrgApacheLuceneUtilFstFST_Arc:(id)arc;
- (BOOL)isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (BOOL)shouldExpandWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node;
- (id)getBytesReader;
- (id)getChildResources;
- (id)getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc;
- (id)packWithOrgApacheLuceneUtilFstBuilder:(id)builder withInt:(int)int withInt:(int)withInt withFloat:(float)float;
- (id)readFirstRealTargetArcWithLong:(int64_t)long withOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readLastTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readNextArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (id)readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (int)readLabelWithOrgApacheLuceneStoreDataInput:(id)input;
- (int)readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (int64_t)addNodeWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node;
- (int64_t)getNodeAddressWithLong:(int64_t)long;
- (int64_t)ramBytesUsed;
- (int64_t)readUnpackedNodeTargetWithOrgApacheLuceneUtilFstFST_BytesReader:(id)reader;
- (uint64_t)cacheRootArcs;
- (void)dealloc;
- (void)finishWithLong:(int64_t)long;
- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output;
- (void)saveWithOrgLukhnosPortmobileFilePath:(id)path;
- (void)setEmptyOutputWithId:(id)id;
@end

@implementation OrgApacheLuceneUtilFstFST

- (int64_t)ramBytesUsed
{
  v3 = qword_100554750;
  bytesArray = self->bytesArray_;
  if (bytesArray)
  {
    size = bytesArray->super.size_;
  }

  else
  {
    bytes = self->bytes_;
    if (!bytes)
    {
      goto LABEL_12;
    }

    size = [(OrgApacheLuceneUtilFstBytesStore *)bytes ramBytesUsed];
  }

  v7 = (size + v3);
  if (!self->packed_)
  {
    nodeAddress = self->nodeAddress_;
    if (!nodeAddress)
    {
      return &v7[self->cachedArcsBytesUsed_];
    }

    ramBytesUsed = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress ramBytesUsed];
    inCounts = self->inCounts_;
    if (inCounts)
    {
      v7 = &v7[ramBytesUsed + [(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts ramBytesUsed]];
      return &v7[self->cachedArcsBytesUsed_];
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  nodeRefToAddress = self->nodeRefToAddress_;
  if (!nodeRefToAddress)
  {
    goto LABEL_12;
  }

  v7 = &v7[[(OrgApacheLuceneUtilPackedPackedInts_Reader *)nodeRefToAddress ramBytesUsed]];
  return &v7[self->cachedArcsBytesUsed_];
}

- (id)getChildResources
{
  v9 = new_JavaUtilArrayList_init();
  if (self->packed_)
  {
    v10 = @"node ref to address";
    v11 = 64;
LABEL_5:
    [(JavaUtilArrayList *)v9 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(v10, *(&self->super.isa + v11), v3, v4, v5, v6, v7, v8)];
    return v9;
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    [(JavaUtilArrayList *)v9 addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"node addresses", nodeAddress, v3, v4, v5, v6, v7, v8)];
    v10 = @"in counts";
    v11 = 88;
    goto LABEL_5;
  }

  return v9;
}

- (void)finishWithLong:(int64_t)long
{
  if (self->startNode_ != -1)
  {
    v4 = new_JavaLangIllegalStateException_initWithNSString_(@"already finished");
    objc_exception_throw(v4);
  }

  if (long == -1)
  {
    if (self->emptyOutput_)
    {
      long = 0;
    }

    else
    {
      long = -1;
    }
  }

  self->startNode_ = long;
  [(OrgApacheLuceneUtilFstBytesStore *)self->bytes_ finish];

  [OrgApacheLuceneUtilFstFST cacheRootArcs]_0(&self->super.isa);
}

- (uint64_t)cacheRootArcs
{
  v2 = [OrgApacheLuceneUtilFstFST_Arc alloc];
  result = [self getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:v2];
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  result = sub_100122538();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2->target_ >= 1)
  {
    getBytesReader = [self getBytesReader];
    if (qword_100554788 != -1)
    {
      sub_100122544();
    }

    v5 = [IOSObjectArray arrayWithLength:128 type:qword_100554780];
    objc_opt_class();
    if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [self readFirstRealTargetArcWithLong:v2->target_ withOrgApacheLuceneUtilFstFST_Arc:v2 withOrgApacheLuceneUtilFstFST_BytesReader:getBytesReader];
    label = v2->label_;
    if (label >= v5->super.size_)
    {

      return sub_10011EC60(self, v5);
    }

    else
    {
      v7 = 0;
      do
      {
        IOSObjectArray_Set(v5, label, [[OrgApacheLuceneUtilFstFST_Arc alloc] copyFromWithOrgApacheLuceneUtilFstFST_Arc:v2]);
        if ([(OrgApacheLuceneUtilFstFST_Arc *)v2 isLast])
        {
          break;
        }

        [self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:v2 withOrgApacheLuceneUtilFstFST_BytesReader:getBytesReader];
        ++v7;
        label = v2->label_;
      }

      while (label < v5->super.size_);
      result = sub_10011EC60(self, v5);
      if (v7 >= 5)
      {
        v8 = result;
        result = [self ramBytesUsed];
        if (result / 5 > v8)
        {
          result = JreStrongAssign(self + 9, v5);
          *(self + 25) = v8;
        }
      }
    }
  }

  return result;
}

- (int64_t)getNodeAddressWithLong:(int64_t)long
{
  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    return [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:long];
  }

  else
  {
    return long;
  }
}

- (void)setEmptyOutputWithId:(id)id
{
  p_emptyOutput = &self->emptyOutput_;
  if (self->emptyOutput_)
  {
    outputs = self->outputs_;
    if (!outputs)
    {
      JreThrowNullPointerException();
    }

    id = [OrgApacheLuceneUtilFstOutputs mergeWithId:"mergeWithId:withId:" withId:?];
  }

  JreStrongAssign(p_emptyOutput, id);
}

- (void)saveWithOrgApacheLuceneStoreDataOutput:(id)output
{
  if (self->startNode_ == -1)
  {
    v25 = @"call finish first";
    goto LABEL_55;
  }

  if (self->nodeAddress_)
  {
    v25 = @"cannot save an FST pre-packed FST; it must first be packed";
    goto LABEL_55;
  }

  if (self->packed_)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = @"cannot save a FST which has been loaded from disk ";
LABEL_55:
      v26 = new_JavaLangIllegalStateException_initWithNSString_(v25);
      objc_exception_throw(v26);
    }
  }

  OrgApacheLuceneCodecsCodecUtil_writeHeaderWithOrgApacheLuceneStoreDataOutput_withNSString_withInt_(output, @"FST", 5);
  if (self->packed_)
  {
    if (!output)
    {
      goto LABEL_50;
    }

    v5 = 1;
  }

  else
  {
    if (!output)
    {
      goto LABEL_50;
    }

    v5 = 0;
  }

  [output writeByteWithByte:v5];
  if (self->emptyOutput_)
  {
    [output writeByteWithByte:1];
    v6 = new_OrgApacheLuceneStoreRAMOutputStream_init();
    outputs = self->outputs_;
    if (!outputs)
    {
      goto LABEL_50;
    }

    [(OrgApacheLuceneUtilFstOutputs *)outputs writeFinalOutputWithId:self->emptyOutput_ withOrgApacheLuceneStoreDataOutput:v6];
    v8 = [IOSByteArray arrayWithLength:[(OrgApacheLuceneStoreRAMOutputStream *)v6 getFilePointer]];
    [(OrgApacheLuceneStoreRAMOutputStream *)v6 writeToWithByteArray:v8 withInt:0];
    if (!self->packed_)
    {
      size = v8->super.size_;
      if (size >= 2)
      {
        v10 = 0;
        v11 = size >> 1;
        v12 = -1;
        do
        {
          v13 = v8->super.size_;
          if (v10 >= v13)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, v10);
          }

          v14 = *(&v8->super.size_ + v10 + 4);
          v15 = v13 + v12;
          if (v13 + v12 < 0 || v15 >= v13)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, v15);
          }

          if (v10 >= v13)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, v10);
          }

          *(&v8->super.size_ + v10 + 4) = *(&v8->super.size_ + v13 + v12 + 4);
          v16 = v8->super.size_;
          v17 = v12 + v16;
          if (v12 + v16 < 0 || v17 >= v16)
          {
            IOSArray_throwOutOfBoundsWithMsg(v16, v17);
          }

          *(&v8->super.size_ + v17 + 4) = v14;
          ++v10;
          --v12;
        }

        while (v11 != v10);
      }
    }

    [output writeVIntWithInt:v8->super.size_];
    [output writeBytesWithByteArray:v8 withInt:0 withInt:v8->super.size_];
  }

  else
  {
    [output writeByteWithByte:0];
  }

  inputType = self->inputType_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (inputType == OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_[0])
  {
    v20 = 0;
  }

  else
  {
    v19 = self->inputType_;
    if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100122558();
    }

    if (v19 == qword_100557B78)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }
  }

  [output writeByteWithByte:v20];
  if (self->packed_)
  {
    nodeRefToAddress = self->nodeRefToAddress_;
    objc_opt_class();
    if (!nodeRefToAddress)
    {
      goto LABEL_50;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    [(OrgApacheLuceneUtilPackedPackedInts_Reader *)nodeRefToAddress saveWithOrgApacheLuceneStoreDataOutput:output];
  }

  [output writeVLongWithLong:self->startNode_];
  bytes = self->bytes_;
  if (bytes)
  {
    [output writeVLongWithLong:{-[OrgApacheLuceneUtilFstBytesStore getPosition](bytes, "getPosition")}];
    v23 = self->bytes_;

    [(OrgApacheLuceneUtilFstBytesStore *)v23 writeToWithOrgApacheLuceneStoreDataOutput:output];
    return;
  }

  bytesArray = self->bytesArray_;
  if (!bytesArray)
  {
LABEL_50:
    JreThrowNullPointerException();
  }

  [output writeVLongWithLong:bytesArray->super.size_];

  [output writeBytesWithByteArray:? withInt:? withInt:?];
}

- (void)saveWithOrgLukhnosPortmobileFilePath:(id)path
{
  v4 = OrgLukhnosPortmobileFileFiles_newOutputStreamWithOrgLukhnosPortmobileFilePath_(path);
  v5 = new_JavaIoBufferedOutputStream_initWithJavaIoOutputStream_(v4);
  [(OrgApacheLuceneUtilFstFST *)self saveWithOrgApacheLuceneStoreDataOutput:new_OrgApacheLuceneStoreOutputStreamDataOutput_initWithJavaIoOutputStream_(v5)];
  if (v5)
  {
    [(JavaIoBufferedOutputStream *)v5 close];
  }
}

- (int)readLabelWithOrgApacheLuceneStoreDataInput:(id)input
{
  inputType = self->inputType_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (inputType == OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_[0])
  {
    if (input)
    {
      return [input readByte];
    }

    goto LABEL_15;
  }

  v6 = self->inputType_;
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122558();
  }

  if (v6 == qword_100557B78)
  {
    if (input)
    {
      return [input readShort];
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  if (!input)
  {
    goto LABEL_15;
  }

  return [input readVInt];
}

+ (BOOL)targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc:(id)arc
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100122538();
    if (arc)
    {
      return *(arc + 4) > 0;
    }

LABEL_5:
    JreThrowNullPointerException();
  }

  if (!arc)
  {
    goto LABEL_5;
  }

  return *(arc + 4) > 0;
}

- (int64_t)addNodeWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node
{
  selfCopy = self;
  outputs = self->outputs_;
  if (!outputs)
  {
    goto LABEL_86;
  }

  getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  if (!node)
  {
    goto LABEL_86;
  }

  if (!*(node + 4))
  {
    return -*(node + 40);
  }

  if (!builder)
  {
    goto LABEL_86;
  }

  v8 = *(builder + 7);
  if (!v8)
  {
    goto LABEL_86;
  }

  getPosition = [v8 getPosition];
  v81 = selfCopy;
  if (*(builder + 48) != 1)
  {
    goto LABEL_9;
  }

  v15 = *(node + 4);
  if (*(node + 14) > 3)
  {
    if (v15 < 10)
    {
      goto LABEL_9;
    }

LABEL_82:
    v77 = *(builder + 3);
    if (!v77)
    {
      goto LABEL_86;
    }

    v87 = 1;
    if (*(v77 + 8) < v15)
    {
      v78 = [IOSIntArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v15, 1, v9, v10, v11, v12, v13, v14)];
      JreStrongAssignAndConsume(builder + 3, v78);
    }

    goto LABEL_10;
  }

  if (v15 > 4)
  {
    goto LABEL_82;
  }

LABEL_9:
  v87 = 0;
LABEL_10:
  *(builder + 4) += *(node + 4);
  v16 = *(node + 4);
  getPosition2 = [*(builder + 7) getPosition];
  if (*(node + 4) >= 1)
  {
    getPosition4 = getPosition2;
    v18 = 0;
    v86 = 0;
    v83 = v16 - 1;
    builderCopy = builder;
    nodeCopy = node;
    while (1)
    {
      v19 = *(node + 3);
      if (!v19)
      {
        goto LABEL_86;
      }

      v20 = *(v19 + 8);
      if (v18 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v18);
      }

      v21 = *(v19 + 24 + 8 * v18);
      if (!v21)
      {
        goto LABEL_86;
      }

      Weak = objc_loadWeak((v21 + 16));
      objc_opt_class();
      if (!Weak)
      {
        goto LABEL_86;
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v23 = Weak[1];
      if (v87)
      {
        v24 = 2 * (v83 == v18);
      }

      else
      {
        v24 = (2 * (v83 == v18)) | 4;
      }

      if (*(builder + 2) == v23)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2 * (v83 == v18);
      }

      if (*(v21 + 24) == 1)
      {
        if (*(v21 + 40) == getNoOutput)
        {
          v26 = 1;
        }

        else
        {
          v26 = 33;
        }

        v25 |= v26;
      }

      if (v23 <= 0)
      {
        v25 += 8;
        v28 = selfCopy;
      }

      else
      {
        inCounts = selfCopy->inCounts_;
        if (inCounts)
        {
          [(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts setWithInt:v23 withLong:[(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts getWithInt:Weak[1]]+ 1];
        }

        v28 = v81;
      }

      if (*(v21 + 32) != getNoOutput)
      {
        v25 += 16;
      }

      builder = builderCopy;
      [builderCopy[7] writeByteWithByte:v25];
      sub_10011F82C(v28, builderCopy[7], *(v21 + 8));
      selfCopy = v28;
      if (*(v21 + 32) != getNoOutput)
      {
        [*(v28 + 40) writeWithId:? withOrgApacheLuceneStoreDataOutput:?];
      }

      v29 = *(v21 + 40);
      if (v29 != getNoOutput)
      {
        [*(v28 + 40) writeFinalOutputWithId:v29 withOrgApacheLuceneStoreDataOutput:builderCopy[7]];
      }

      v30 = v23 >= 1 && (v25 & 4) == 0;
      node = nodeCopy;
      if (v30)
      {
        [builderCopy[7] writeVLongWithLong:Weak[1]];
      }

      if (v87)
      {
        getPosition3 = [builderCopy[7] getPosition];
        v32 = builderCopy[3];
        if (!v32)
        {
          goto LABEL_86;
        }

        v33 = getPosition3;
        v34 = v32[2];
        if (v18 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, v18);
        }

        v32[v18 + 3] = v33 - getPosition4;
        getPosition4 = [builderCopy[7] getPosition];
        v35 = builderCopy[3];
        v36 = v35[2];
        if (v18 >= v36)
        {
          IOSArray_throwOutOfBoundsWithMsg(v36, v18);
        }

        v86 = JavaLangMath_maxWithInt_withInt_(v86, v35[v18 + 3]);
      }

      if (++v18 >= nodeCopy[4])
      {
        goto LABEL_57;
      }
    }
  }

  v86 = 0;
LABEL_57:
  if (v87)
  {
    v88 = [IOSByteArray arrayWithLength:11];
    v38 = new_OrgApacheLuceneStoreByteArrayDataOutput_initWithByteArray_(v88);
    [(OrgApacheLuceneStoreByteArrayDataOutput *)v38 writeByteWithByte:32];
    [(OrgApacheLuceneStoreDataOutput *)v38 writeVIntWithInt:*(node + 4)];
    [(OrgApacheLuceneStoreDataOutput *)v38 writeVIntWithInt:v86];
    getPosition5 = [(OrgApacheLuceneStoreByteArrayDataOutput *)v38 getPosition];
    getPosition6 = [*(builder + 7) getPosition];
    v40 = *(node + 4) * v86;
    v41 = &getPosition[getPosition5 + v40];
    if (v41 > getPosition6)
    {
      v42 = getPosition6;
      [*(builder + 7) skipBytesWithInt:(v41 - getPosition6)];
      v43 = *(node + 4);
      v44 = (v43 - 1);
      if (v43 - 1 >= 0)
      {
        v45 = &getPosition[getPosition5 + v40 - v86];
        do
        {
          v46 = *(builder + 3);
          if (!v46)
          {
            goto LABEL_86;
          }

          v47 = *(v46 + 8);
          if (v44 >= v47)
          {
            IOSArray_throwOutOfBoundsWithMsg(v47, v44);
          }

          v42 -= *(v46 + 12 + 4 * v44);
          if (v45 != v42)
          {
            v48 = *(builder + 3);
            v49 = *(v48 + 8);
            if (v44 >= v49)
            {
              IOSArray_throwOutOfBoundsWithMsg(v49, v44);
            }

            [*(builder + 7) copyBytesWithLong:v42 withLong:v45 withInt:*(v48 + 12 + 4 * v44)];
          }

          v45 -= v86;
        }

        while (v44-- > 0);
      }
    }

    [*(builder + 7) writeBytesWithLong:getPosition withByteArray:v88 withInt:0 withInt:getPosition5];
    selfCopy = v81;
  }

  v37 = [*(builder + 7) getPosition] - 1;
  [*(builder + 7) reverseWithLong:getPosition withLong:v37];
  nodeAddress = selfCopy->nodeAddress_;
  p_nodeAddress = &selfCopy->nodeAddress_;
  v53 = *(builder + 5);
  if (nodeAddress && v53 == 0x7FFFFFFF)
  {
    v79 = new_JavaLangIllegalStateException_initWithNSString_(@"cannot create a packed FST with more than 2.1 billion nodes");
    objc_exception_throw(v79);
  }

  *(builder + 5) = v53 + 1;
  if (*p_nodeAddress)
  {
    v54 = *(builder + 10);
    if ([*p_nodeAddress size] == v54)
    {
      v55 = v81->nodeAddress_;
      v56 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v55 size];
      getBitsPerValue = [(OrgApacheLuceneUtilPackedGrowableWriter *)v81->nodeAddress_ getBitsPerValue];
      v64 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v55 resizeWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v56 + 1, getBitsPerValue, v58, v59, v60, v61, v62, v63)];
      JreStrongAssign(p_nodeAddress, v64);
      p_inCounts = &v81->inCounts_;
      v66 = v81->inCounts_;
      if (!v66)
      {
        goto LABEL_86;
      }

      v67 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v66 size];
      getBitsPerValue2 = [*p_inCounts getBitsPerValue];
      v75 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v66 resizeWithInt:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v67 + 1, getBitsPerValue2, v69, v70, v71, v72, v73, v74)];
      JreStrongAssign(p_inCounts, v75);
    }

    if (!*p_nodeAddress)
    {
LABEL_86:
      JreThrowNullPointerException();
    }

    [*p_nodeAddress setWithInt:*(builder + 10) withLong:v37];
    return *(builder + 5);
  }

  return v37;
}

- (id)getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc
{
  outputs = self->outputs_;
  if (!outputs)
  {
    goto LABEL_9;
  }

  getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  if (!self->emptyOutput_)
  {
    if (arc)
    {
      *(arc + 40) = 2;
      JreStrongAssign(arc + 6, getNoOutput);
      goto LABEL_8;
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!arc)
  {
    goto LABEL_9;
  }

  *(arc + 40) = 3;
  JreStrongAssign(arc + 6, self->emptyOutput_);
  if (self->emptyOutput_ != getNoOutput)
  {
    *(arc + 40) |= 0x20u;
  }

LABEL_8:
  JreStrongAssign(arc + 2, getNoOutput);
  *(arc + 4) = self->startNode_;
  return arc;
}

- (id)readLastTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (!arc)
    {
      goto LABEL_34;
    }
  }

  else
  {
    sub_100122538();
    if (!arc)
    {
      goto LABEL_34;
    }
  }

  v9 = *(arc + 4);
  if (v9 <= 0)
  {
    if (t_Arc)
    {
      *(t_Arc + 2) = -1;
      *(t_Arc + 4) = -1;
      JreStrongAssign(t_Arc + 2, *(arc + 6));
      *(t_Arc + 40) = 2;
      return t_Arc;
    }

LABEL_34:
    JreThrowNullPointerException();
  }

  if (!reader)
  {
    goto LABEL_34;
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    v9 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:?];
  }

  [reader setPositionWithLong:v9];
  if (!t_Arc)
  {
    goto LABEL_34;
  }

  *(t_Arc + 3) = *(arc + 4);
  readByte = [reader readByte];
  if (readByte == 32)
  {
    *(t_Arc + 20) = [reader readVInt];
    if (self->packed_ || self->version__ >= 4)
    {
      readVInt = [reader readVInt];
    }

    else
    {
      readVInt = [reader readInt];
    }

    *(t_Arc + 18) = readVInt;
    *(t_Arc + 8) = [reader getPosition];
    *(t_Arc + 19) = *(t_Arc + 20) - 2;
  }

  else
  {
    *(t_Arc + 40) = readByte;
    *(t_Arc + 18) = 0;
    if (([t_Arc isLast] & 1) == 0)
    {
      do
      {
        [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:reader];
        if ([t_Arc flagWithInt:16])
        {
          outputs = self->outputs_;
          if (!outputs)
          {
            goto LABEL_34;
          }

          [(OrgApacheLuceneUtilFstOutputs *)outputs skipOutputWithOrgApacheLuceneStoreDataInput:reader];
        }

        if ([t_Arc flagWithInt:32])
        {
          v14 = self->outputs_;
          if (!v14)
          {
            goto LABEL_34;
          }

          [(OrgApacheLuceneUtilFstOutputs *)v14 skipFinalOutputWithOrgApacheLuceneStoreDataInput:reader];
        }

        if (([t_Arc flagWithInt:8] & 1) == 0 && (objc_msgSend(t_Arc, "flagWithInt:", 4) & 1) == 0)
        {
          if (self->packed_ || self->version__ > 3)
          {
            [reader readVLong];
          }

          else
          {
            [reader readInt];
          }
        }

        *(t_Arc + 40) = [reader readByte];
      }

      while (![t_Arc isLast]);
    }

    [reader skipBytesWithLong:-1];
    *(t_Arc + 7) = [reader getPosition];
  }

  [(OrgApacheLuceneUtilFstFST *)self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:reader];
  return t_Arc;
}

- (int64_t)readUnpackedNodeTargetWithOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (self->version__ <= 3)
  {
    if (reader)
    {
      return [reader readInt];
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  if (!reader)
  {
    goto LABEL_8;
  }

  return [reader readVLong];
}

- (id)readFirstTargetArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_Arc:(id)t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (!arc)
  {
    goto LABEL_11;
  }

  if ([arc isFinal])
  {
    if (t_Arc)
    {
      *(t_Arc + 2) = -1;
      JreStrongAssign(t_Arc + 2, *(arc + 6));
      *(t_Arc + 40) = 1;
      v9 = *(arc + 4);
      if (v9 <= 0)
      {
        *(t_Arc + 40) = 3;
      }

      else
      {
        *(t_Arc + 3) = v9;
        *(t_Arc + 7) = *(arc + 4);
      }

      *(t_Arc + 4) = -1;
      return t_Arc;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  v10 = *(arc + 4);

  return [(OrgApacheLuceneUtilFstFST *)self readFirstRealTargetArcWithLong:v10 withOrgApacheLuceneUtilFstFST_Arc:t_Arc withOrgApacheLuceneUtilFstFST_BytesReader:reader];
}

- (id)readFirstRealTargetArcWithLong:(int64_t)long withOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  nodeAddress = self->nodeAddress_;
  longCopy = long;
  if (nodeAddress)
  {
    longCopy = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:long];
  }

  if (!reader || ([reader setPositionWithLong:longCopy], !arc))
  {
    JreThrowNullPointerException();
  }

  *(arc + 3) = long;
  if ([reader readByte] == 32)
  {
    *(arc + 20) = [reader readVInt];
    if (self->packed_ || self->version__ >= 4)
    {
      readVInt = [reader readVInt];
    }

    else
    {
      readVInt = [reader readInt];
    }

    *(arc + 18) = readVInt;
    *(arc + 19) = -1;
    getPosition = [reader getPosition];
    *(arc + 7) = getPosition;
    *(arc + 8) = getPosition;
  }

  else
  {
    *(arc + 7) = longCopy;
    *(arc + 18) = 0;
  }

  return [(OrgApacheLuceneUtilFstFST *)self readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:arc withOrgApacheLuceneUtilFstFST_BytesReader:reader];
}

- (BOOL)isExpandedTargetWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
  {
    if (!arc)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_100122538();
    if (!arc)
    {
      goto LABEL_10;
    }
  }

  v7 = *(arc + 4);
  if (v7 < 1)
  {
    return 0;
  }

  if (!reader)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  nodeAddress = self->nodeAddress_;
  if (nodeAddress)
  {
    v7 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:?];
  }

  [reader setPositionWithLong:v7];
  return [reader readByte] == 32;
}

- (id)readNextArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (!arc)
  {
    JreThrowNullPointerException();
  }

  if (*(arc + 2) == -1)
  {
    if (*(arc + 7) <= 0)
    {
      v5 = new_JavaLangIllegalArgumentException_initWithNSString_(@"cannot readNextArc when arc.isLast()=true");
      objc_exception_throw(v5);
    }

    return [OrgApacheLuceneUtilFstFST readFirstRealTargetArcWithLong:"readFirstRealTargetArcWithLong:withOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilFstFST_BytesReader:" withOrgApacheLuceneUtilFstFST_Arc:? withOrgApacheLuceneUtilFstFST_BytesReader:?];
  }

  else
  {

    return [OrgApacheLuceneUtilFstFST readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:"readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilFstFST_BytesReader:" withOrgApacheLuceneUtilFstFST_BytesReader:?];
  }
}

- (int)readNextArcLabelWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (*(arc + 2) == -1)
  {
    v7 = *(arc + 7);
    nodeAddress = self->nodeAddress_;
    if (nodeAddress)
    {
      v7 = [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:v7];
    }

    if (!reader)
    {
      goto LABEL_20;
    }

    [reader setPositionWithLong:v7];
    if ([reader readByte] == 32)
    {
      [reader readVInt];
      if (self->packed_ || self->version__ >= 4)
      {
        [reader readVInt];
      }

      else
      {
        [reader readInt];
      }

      goto LABEL_16;
    }

    readerCopy2 = reader;
    v9 = v7;
  }

  else
  {
    if (*(arc + 18))
    {
      if (reader)
      {
        [reader setPositionWithLong:*(arc + 8)];
        [reader skipBytesWithLong:*(arc + 18) + *(arc + 18) * *(arc + 19)];
        goto LABEL_16;
      }

LABEL_20:
      JreThrowNullPointerException();
    }

    if (!reader)
    {
      goto LABEL_20;
    }

    v9 = *(arc + 7);
    readerCopy2 = reader;
  }

  [readerCopy2 setPositionWithLong:v9];
LABEL_16:
  [reader readByte];

  return [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:reader];
}

- (id)readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilFstFST_BytesReader:(id)reader
{
  if (!arc)
  {
    goto LABEL_41;
  }

  if (*(arc + 18))
  {
    ++*(arc + 19);
    if (!reader)
    {
      goto LABEL_41;
    }

    [reader setPositionWithLong:*(arc + 8)];
    [reader skipBytesWithLong:*(arc + 18) * *(arc + 19)];
  }

  else
  {
    if (!reader)
    {
      goto LABEL_41;
    }

    [reader setPositionWithLong:*(arc + 7)];
  }

  *(arc + 40) = [reader readByte];
  *(arc + 2) = [(OrgApacheLuceneUtilFstFST *)self readLabelWithOrgApacheLuceneStoreDataInput:reader];
  v7 = [arc flagWithInt:16];
  outputs = self->outputs_;
  if (v7)
  {
    if (!outputs)
    {
      goto LABEL_41;
    }

    getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs readWithOrgApacheLuceneStoreDataInput:reader];
  }

  else
  {
    if (!outputs)
    {
      goto LABEL_41;
    }

    getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  }

  JreStrongAssign(arc + 2, getNoOutput);
  v10 = [arc flagWithInt:32];
  v11 = self->outputs_;
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    getNoOutput2 = [(OrgApacheLuceneUtilFstOutputs *)v11 readFinalOutputWithOrgApacheLuceneStoreDataInput:reader];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_41;
    }

    getNoOutput2 = [(OrgApacheLuceneUtilFstOutputs *)v11 getNoOutput];
  }

  JreStrongAssign(arc + 6, getNoOutput2);
  if ([arc flagWithInt:8])
  {
    *(arc + 4) = ([arc flagWithInt:1] << 63) >> 63;
LABEL_36:
    getPosition = [reader getPosition];
    v18 = 56;
    goto LABEL_40;
  }

  if (![arc flagWithInt:4])
  {
    if (!self->packed_)
    {
      if (self->version__ <= 3)
      {
        readInt = [reader readInt];
        goto LABEL_35;
      }

      readVLong = [reader readVLong];
LABEL_34:
      readInt = readVLong;
      goto LABEL_35;
    }

    getPosition2 = [reader getPosition];
    readInt = [reader readVLong];
    if ([arc flagWithInt:64])
    {
      readInt += getPosition2;
LABEL_35:
      *(arc + 4) = readInt;
      goto LABEL_36;
    }

    nodeRefToAddress = self->nodeRefToAddress_;
    if (nodeRefToAddress)
    {
      if (readInt >= [(OrgApacheLuceneUtilPackedPackedInts_Reader *)nodeRefToAddress size])
      {
        goto LABEL_35;
      }

      readVLong = [(OrgApacheLuceneUtilPackedPackedInts_Reader *)self->nodeRefToAddress_ getWithInt:readInt];
      goto LABEL_34;
    }

LABEL_41:
    JreThrowNullPointerException();
  }

  *(arc + 7) = [reader getPosition];
  if (self->nodeAddress_)
  {
    getPosition = (*(arc + 3) - 1);
  }

  else
  {
    if (([arc flagWithInt:2] & 1) == 0)
    {
      if (*(arc + 18))
      {
        [reader setPositionWithLong:*(arc + 8)];
        [reader skipBytesWithLong:*(arc + 20) * *(arc + 18)];
      }

      else
      {
        sub_100120BBC(self, reader);
      }
    }

    getPosition = [reader getPosition];
  }

  v18 = 32;
LABEL_40:
  *(arc + v18) = getPosition;
  return arc;
}

- (BOOL)assertRootCachedArcWithInt:(int)int withOrgApacheLuceneUtilFstFST_Arc:(id)arc
{
  v4 = *&int;
  v6 = [OrgApacheLuceneUtilFstFST_Arc alloc];
  [(OrgApacheLuceneUtilFstFST *)self getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:v6];
  sub_100120D64(self, v4, v6, v6, [(OrgApacheLuceneUtilFstFST *)self getBytesReader], 0);
  return 1;
}

- (BOOL)shouldExpandWithOrgApacheLuceneUtilFstBuilder:(id)builder withOrgApacheLuceneUtilFstBuilder_UnCompiledNode:(id)node
{
  if (!builder)
  {
    goto LABEL_10;
  }

  if (*(builder + 48) != 1)
  {
    return 0;
  }

  if (!node)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  v4 = *(node + 4);
  if (*(node + 14) < 4)
  {
    return v4 > 4;
  }

  return v4 > 9;
}

- (id)getBytesReader
{
  bytesArray = self->bytesArray_;
  if (self->packed_)
  {
    if (bytesArray)
    {
      v3 = new_OrgApacheLuceneUtilFstForwardBytesReader_initWithByteArray_(self->bytesArray_);
LABEL_6:

      return v3;
    }

    bytes = self->bytes_;
    if (bytes)
    {

      return [(OrgApacheLuceneUtilFstBytesStore *)bytes getForwardReader];
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  if (bytesArray)
  {
    v3 = new_OrgApacheLuceneUtilFstReverseBytesReader_initWithByteArray_(self->bytesArray_);
    goto LABEL_6;
  }

  v6 = self->bytes_;
  if (!v6)
  {
    goto LABEL_17;
  }

  return [(OrgApacheLuceneUtilFstBytesStore *)v6 getReverseReader];
}

- (id)packWithOrgApacheLuceneUtilFstBuilder:(id)builder withInt:(int)int withInt:(int)withInt withFloat:(float)float
{
  if (!self->nodeAddress_)
  {
    v117 = new_JavaLangIllegalArgumentException_initWithNSString_(@"this FST was not built with willPackFST=true");
    objc_exception_throw(v117);
  }

  outputs = self->outputs_;
  if (!outputs)
  {
    goto LABEL_127;
  }

  v9 = *&withInt;
  getNoOutput = [(OrgApacheLuceneUtilFstOutputs *)outputs getNoOutput];
  v13 = [OrgApacheLuceneUtilFstFST_Arc alloc];
  getBytesReader = [(OrgApacheLuceneUtilFstFST *)self getBytesReader];
  p_inCounts = &self->inCounts_;
  inCounts = self->inCounts_;
  if (!inCounts)
  {
    goto LABEL_127;
  }

  builderCopy = builder;
  v16 = JavaLangMath_minWithInt_withInt_(v9, [(OrgApacheLuceneUtilPackedGrowableWriter *)inCounts size]);
  v17 = [OrgApacheLuceneUtilFstFST_NodeQueue alloc];
  OrgApacheLuceneUtilPriorityQueue_initWithInt_withBoolean_(v17, v16, 0, v18, v19, v20, v21, v22);
  v23 = v17;
  selfCopy = self;
  if ([(OrgApacheLuceneUtilPackedGrowableWriter *)*p_inCounts size]>= 1)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      if ([(OrgApacheLuceneUtilPackedGrowableWriter *)*p_inCounts getWithInt:v25]>= int)
      {
        v26 = [(OrgApacheLuceneUtilPackedGrowableWriter *)*p_inCounts getWithInt:v25];
        v27 = v26;
        if (v24)
        {
          if (v26 > v24[3])
          {
            v28 = [(OrgApacheLuceneUtilPackedGrowableWriter *)*p_inCounts getWithInt:v25];
            v29 = [OrgApacheLuceneUtilFstFST_NodeAndInCount alloc];
            v29->node_ = v25;
            v29->count_ = v28;
            [(OrgApacheLuceneUtilPriorityQueue *)v23 insertWithOverflowWithId:v29];
          }
        }

        else
        {
          v30 = [OrgApacheLuceneUtilFstFST_NodeAndInCount alloc];
          v30->node_ = v25;
          v30->count_ = v27;
          [(OrgApacheLuceneUtilPriorityQueue *)v23 addWithId:v30];
          if ([(OrgApacheLuceneUtilPriorityQueue *)v23 size]== v16)
          {
            v24 = [(OrgApacheLuceneUtilPriorityQueue *)v23 top];
          }

          else
          {
            v24 = 0;
          }
        }
      }

      v25 = (v25 + 1);
    }

    while (v25 < [(OrgApacheLuceneUtilPackedGrowableWriter *)*p_inCounts size]);
  }

  JreStrongAssign(p_inCounts, 0);
  v126 = new_JavaUtilHashMap_init();
  v31 = [(OrgApacheLuceneUtilPriorityQueue *)v23 size];
  v32 = builderCopy;
  if ((v31 - 1) >= 0)
  {
    v33 = v31;
    while (1)
    {
      v34 = [(OrgApacheLuceneUtilPriorityQueue *)v23 pop];
      if (!v34)
      {
        break;
      }

      --v33;
      v35 = JavaLangInteger_valueOfWithInt_(v34[2]);
      [(JavaUtilHashMap *)v126 putWithId:v35 withId:JavaLangInteger_valueOfWithInt_(v33)];
      if (v33 <= 0)
      {
        goto LABEL_18;
      }
    }

LABEL_127:
    JreThrowNullPointerException();
  }

LABEL_18:
  if (!builderCopy)
  {
    goto LABEL_127;
  }

  v36 = builderCopy[7];
  if (!v36)
  {
    goto LABEL_127;
  }

  getPosition = [v36 getPosition];
  v45 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(getPosition, v38, v39, v40, v41, v42, v43, v44);
  v130 = new_OrgApacheLuceneUtilPackedGrowableWriter_initWithInt_withInt_withFloat_(v45, (*(builderCopy + 10) + 1), float);
  if (builderCopy[5] < 1)
  {
    goto LABEL_97;
  }

  v46 = 1;
  do
  {
    getPosition2 = [builderCopy[7] getPosition];
    nodeAddress = selfCopy->nodeAddress_;
    if (!nodeAddress)
    {
      goto LABEL_127;
    }

    [(OrgApacheLuceneUtilPackedGrowableWriter *)v130 setWithInt:v46 withLong:getPosition2 - [(OrgApacheLuceneUtilPackedGrowableWriter *)nodeAddress getWithInt:v46]+ 1];
    v46 = (v46 + 1);
  }

  while (builderCopy[5] >= v46);
LABEL_97:
  while (2)
  {
    inputType = selfCopy->inputType_;
    v79 = selfCopy->outputs_;
    getBlockBits = [v32[7] getBlockBits];
    v81 = [OrgApacheLuceneUtilFstFST alloc];
    sub_100121180(v81, inputType, v79, getBlockBits);
    v82 = v81;
    bytes = v82->bytes_;
    if (!bytes)
    {
      goto LABEL_127;
    }

    v72 = v82;
    [(OrgApacheLuceneUtilFstBytesStore *)v82->bytes_ writeByteWithByte:0];
    if (v32[5] < 1)
    {
      break;
    }

    v119 = 0;
    v123 = 0;
    v49 = v32[5] & 0x7FFFFFFF;
    p_isa = &selfCopy->super.isa;
    do
    {
      getPosition3 = [(OrgApacheLuceneUtilFstBytesStore *)bytes getPosition];
      if (getPosition3 != [(OrgApacheLuceneUtilPackedGrowableWriter *)v130 getWithInt:v49])
      {
        v123 = getPosition3 - [(OrgApacheLuceneUtilPackedGrowableWriter *)v130 getWithInt:v49];
        [(OrgApacheLuceneUtilPackedGrowableWriter *)v130 setWithInt:v49 withLong:?];
        v119 = 1;
      }

      LODWORD(v51) = 0;
      v122 = 0;
      v124 = v49 - 1;
      v52 = v49;
      v121 = v49;
      while (2)
      {
        [p_isa readFirstRealTargetArcWithLong:v52 withOrgApacheLuceneUtilFstFST_Arc:v13 withOrgApacheLuceneUtilFstFST_BytesReader:getBytesReader];
        bytesPerArc = v13->bytesPerArc_;
        if (bytesPerArc)
        {
          if (v51)
          {
            v51 = v51;
          }

          else
          {
            v51 = bytesPerArc;
          }

          [(OrgApacheLuceneUtilFstBytesStore *)bytes writeByteWithByte:32];
          [(OrgApacheLuceneStoreDataOutput *)bytes writeVIntWithInt:v13->numArcs_];
          [(OrgApacheLuceneStoreDataOutput *)bytes writeVIntWithInt:v51];
        }

        v55 = v121 != 1 && bytesPerArc == 0;
        v131 = v55;
        v127 = v51;
        v51 = 0;
        v125 = bytesPerArc;
        while (1)
        {
          getPosition4 = [(OrgApacheLuceneUtilFstBytesStore *)bytes getPosition];
          if ([(OrgApacheLuceneUtilFstFST_Arc *)v13 isLast])
          {
            v56 = 2;
          }

          else
          {
            v56 = 0;
          }

          if (v131 && v13->target_ == v124)
          {
            v56 |= 4u;
          }

          if ([(OrgApacheLuceneUtilFstFST_Arc *)v13 isFinal])
          {
            if (v13->nextFinalOutput_ == getNoOutput)
            {
              ++v56;
            }

            else
            {
              v56 += 33;
            }
          }

          if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100122538();
          }

          if (v13->target_ <= 0)
          {
            v58 = v56 + 8;
          }

          else
          {
            v58 = v56;
          }

          if (v13->output_ == getNoOutput)
          {
            v59 = v58;
          }

          else
          {
            v59 = v58 + 16;
          }

          if ((atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_100122538();
          }

          target = v13->target_;
          v62 = (v59 & 4) == 0 && target > 0;
          if (v62)
          {
            v63 = v51;
            v64 = getNoOutput;
            v65 = v72;
            v66 = [(JavaUtilHashMap *)v126 getWithId:JavaLangLong_valueOfWithLong_(target, v57)];
            if (v66)
            {
              intValue = [v66 intValue];
              v68 = v130;
            }

            else
            {
              v69 = [(JavaUtilHashMap *)v126 size];
              v68 = v130;
              intValue = [(OrgApacheLuceneUtilPackedGrowableWriter *)v130 getWithInt:LODWORD(v13->target_)]+ v123 + v69;
            }

            v70 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v68 getWithInt:LODWORD(v13->target_)];
            getPosition5 = [(OrgApacheLuceneUtilFstBytesStore *)bytes getPosition];
            if (((&v70[v123 - 2] - getPosition5) & ~((&v70[v123 - 2] - getPosition5) >> 63)) < intValue)
            {
              v59 |= 0x40u;
            }

            p_isa = &selfCopy->super.isa;
            v72 = v65;
            getNoOutput = v64;
            v51 = v63;
            bytesPerArc = v125;
          }

          else
          {
            intValue = 0;
          }

          [(OrgApacheLuceneUtilFstBytesStore *)bytes writeByteWithByte:v59];
          sub_10011F82C(v72, bytes, v13->label_);
          output = v13->output_;
          if (output != getNoOutput)
          {
            [p_isa[5] writeWithId:output withOrgApacheLuceneStoreDataOutput:bytes];
          }

          nextFinalOutput = v13->nextFinalOutput_;
          if (nextFinalOutput != getNoOutput)
          {
            [p_isa[5] writeFinalOutputWithId:nextFinalOutput withOrgApacheLuceneStoreDataOutput:bytes];
          }

          if (v62)
          {
            v75 = [(OrgApacheLuceneUtilPackedGrowableWriter *)v130 getWithInt:LODWORD(v13->target_)];
            getPosition6 = [(OrgApacheLuceneUtilFstBytesStore *)bytes getPosition];
            if (atomic_load_explicit(OrgApacheLuceneUtilFstFST__initialized, memory_order_acquire))
            {
              if ((v59 & 0x40) != 0)
              {
                goto LABEL_85;
              }
            }

            else
            {
              sub_100122538();
              if ((v59 & 0x40) != 0)
              {
LABEL_85:
                [(OrgApacheLuceneStoreDataOutput *)bytes writeVLongWithLong:(&v75[v123] - getPosition6) & ~((&v75[v123] - getPosition6) >> 63)];
                p_isa = &selfCopy->super.isa;
                goto LABEL_86;
              }
            }

            [(OrgApacheLuceneStoreDataOutput *)bytes writeVLongWithLong:intValue];
            p_isa = &selfCopy->super.isa;
            if ((v122 & 1) == 0)
            {
              [(JavaUtilHashMap *)v126 size];
            }
          }

LABEL_86:
          if (bytesPerArc)
          {
            v51 = JavaLangMath_maxWithInt_withInt_(v51, [(OrgApacheLuceneUtilFstBytesStore *)bytes getPosition]- getPosition4);
            [(OrgApacheLuceneUtilFstBytesStore *)bytes skipBytesWithInt:getPosition4 + v127 - [(OrgApacheLuceneUtilFstBytesStore *)bytes getPosition]];
          }

          if ([(OrgApacheLuceneUtilFstFST_Arc *)v13 isLast])
          {
            break;
          }

          [p_isa readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:v13 withOrgApacheLuceneUtilFstFST_BytesReader:getBytesReader];
        }

        v77 = v51 == v127;
        if (v122)
        {
          v77 = v51 <= v127;
        }

        if (bytesPerArc && !v77)
        {
          [(OrgApacheLuceneUtilFstBytesStore *)bytes truncateWithLong:getPosition3];
          v122 = 1;
          v52 = v121;
          continue;
        }

        break;
      }

      v49 = v124;
    }

    while (v121 > 1);
    v32 = builderCopy;
    if (v119)
    {
      continue;
    }

    break;
  }

  v84 = v72;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  keySet = [(JavaUtilHashMap *)v126 keySet];
  if (!keySet)
  {
    goto LABEL_127;
  }

  v86 = keySet;
  v87 = [keySet countByEnumeratingWithState:&v137 objects:v142 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = 0;
    v90 = *v138;
    v91 = v130;
    do
    {
      for (i = 0; i != v88; i = i + 1)
      {
        if (*v138 != v90)
        {
          objc_enumerationMutation(v86);
        }

        v93 = *(*(&v137 + 1) + 8 * i);
        if (!v93)
        {
          goto LABEL_127;
        }

        v89 = JavaLangMath_maxWithLong_withLong_(v89, -[OrgApacheLuceneUtilPackedGrowableWriter getWithInt:](v130, "getWithInt:", [v93 intValue]));
      }

      v88 = [v86 countByEnumeratingWithState:&v137 objects:v142 count:16];
    }

    while (v88);
  }

  else
  {
    v89 = 0;
    v91 = v130;
  }

  v94 = [(JavaUtilHashMap *)v126 size];
  v102 = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(v89, v95, v96, v97, v98, v99, v100, v101);
  MutableWithInt_withInt_withFloat = OrgApacheLuceneUtilPackedPackedInts_getMutableWithInt_withInt_withFloat_(v94, v102, float);
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  entrySet = [(JavaUtilHashMap *)v126 entrySet];
  if (!entrySet)
  {
    goto LABEL_127;
  }

  v105 = entrySet;
  v106 = [entrySet countByEnumeratingWithState:&v133 objects:v141 count:16];
  v107 = selfCopy;
  if (v106)
  {
    v108 = v106;
    v109 = *v134;
    do
    {
      for (j = 0; j != v108; j = j + 1)
      {
        if (*v134 != v109)
        {
          objc_enumerationMutation(v105);
        }

        if (!MutableWithInt_withInt_withFloat)
        {
          goto LABEL_127;
        }

        v111 = *(*(&v133 + 1) + 8 * j);
        if (!v111)
        {
          goto LABEL_127;
        }

        getValue = [*(*(&v133 + 1) + 8 * j) getValue];
        if (!getValue)
        {
          goto LABEL_127;
        }

        intValue2 = [getValue intValue];
        getKey = [v111 getKey];
        if (!getKey)
        {
          goto LABEL_127;
        }

        [MutableWithInt_withInt_withFloat setWithInt:intValue2 withLong:{-[OrgApacheLuceneUtilPackedGrowableWriter getWithInt:](v91, "getWithInt:", objc_msgSend(getKey, "intValue"))}];
        v107 = selfCopy;
      }

      v108 = [v105 countByEnumeratingWithState:&v133 objects:v141 count:16];
    }

    while (v108);
  }

  if (!v84)
  {
    goto LABEL_127;
  }

  JreStrongAssign((v84 + 64), MutableWithInt_withInt_withFloat);
  *(v84 + 48) = [(OrgApacheLuceneUtilPackedGrowableWriter *)v91 getWithInt:LODWORD(v107->startNode_)];
  if (v107->emptyOutput_)
  {
    [v84 setEmptyOutputWithId:?];
  }

  v115 = *(v84 + 24);
  if (!v115)
  {
    goto LABEL_127;
  }

  [v115 finish];
  [OrgApacheLuceneUtilFstFST cacheRootArcs]_0(v84);
  return v84;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstFST;
  [(OrgApacheLuceneUtilFstFST *)&v3 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v4 = OrgApacheLuceneUtilFstFST_class_(v3);
    qword_100554750 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(v4);
    if (qword_100554788 != -1)
    {
      sub_100122544();
    }

    qword_100554758 = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(qword_100554780);
    if ((atomic_load_explicit(OrgApacheLuceneUtilConstants__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100070498();
    }

    if (OrgApacheLuceneUtilConstants_JRE_IS_64BIT_)
    {
      v5 = 30;
    }

    else
    {
      v5 = 28;
    }

    OrgApacheLuceneUtilFstFST_DEFAULT_MAX_BLOCK_BITS_ = v5;
    atomic_store(1u, OrgApacheLuceneUtilFstFST__initialized);
  }
}

@end
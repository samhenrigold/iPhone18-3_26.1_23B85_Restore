@interface OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter
+ (void)initialize;
- (BOOL)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:(id)reader;
- (BOOL)triggerFlush;
- (id)flush;
- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)state;
- (void)addPositionWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)addProxWithInt:(int)int withOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneStoreDataInput:(id)dataInput;
- (void)close;
- (void)dealloc;
- (void)finishDocument;
- (void)finishWithOrgApacheLuceneIndexFieldInfos:(id)infos withInt:(int)int;
- (void)startDocumentWithInt:(int)int;
- (void)startFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withInt:(int)int withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a7;
- (void)startTermWithOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter

- (void)close
{
  indexWriter = self->indexWriter_;
  v5[0] = self->vectorsStream_;
  v5[1] = indexWriter;
  v4 = [IOSObjectArray arrayWithObjects:v5 count:2 type:JavaIoCloseable_class_(self, a2)];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v4);
  JreStrongAssign(&self->vectorsStream_, 0);
  JreStrongAssign(&self->indexWriter_, 0);
}

- (void)startDocumentWithInt:(int)int
{
  v4 = sub_1000055F0(&self->super.super.isa, *&int);

  JreStrongAssign(&self->curDoc_, v4);
}

- (void)finishDocument
{
  termSuffixes = self->termSuffixes_;
  if (!termSuffixes || (payloadBytes = self->payloadBytes_) == 0)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)termSuffixes writeBytesWithByteArray:payloadBytes->bytes_ withInt:payloadBytes->length_];
  self->payloadBytes_->length_ = 0;
  ++self->numDocs_;
  if ([OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter triggerFlush]_0(self))
  {
    [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter flush]_0(self);
  }

  JreStrongAssign(&self->curDoc_, 0);
}

- (BOOL)triggerFlush
{
  v1 = *(self + 144);
  if (!v1)
  {
    goto LABEL_7;
  }

  if (*(v1 + 24) < *(self + 48))
  {
    v2 = *(self + 80);
    if (v2)
    {
      return [v2 size] > 127;
    }

LABEL_7:
    JreThrowNullPointerException();
  }

  return 1;
}

- (id)flush
{
  v2 = *(self + 80);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [v2 size];
  v4 = *(self + 16);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v3;
  v6 = *(self + 24);
  if (!v6)
  {
    goto LABEL_10;
  }

  [v4 writeIndexWithInt:v5 withLong:{objc_msgSend(v6, "getFilePointer")}];
  [*(self + 24) writeVIntWithInt:(*(self + 72) - v5)];
  [*(self + 24) writeVIntWithInt:v5];
  v7 = sub_100006308(self, v5);
  if (v7 < 1)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_1000064AC(self);
  sub_1000068C0(self, v8, v9, v10, v11, v12, v13, v14);
  sub_100006AF8(self, v8, v9);
  sub_100006FCC(self, v8);
  sub_10000730C(self);
  sub_100007714(self);
  sub_100007964(self);
  sub_100007C4C(self, v9);
  sub_100008AC0(self);
  v15 = *(self + 40);
  if (!v15 || (v16 = *(self + 144)) == 0)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  [v15 compressWithByteArray:*(v16 + 16) withInt:0 withInt:*(v16 + 24) withOrgApacheLuceneStoreDataOutput:*(self + 24)];
LABEL_8:
  [*(self + 80) clear];
  JreStrongAssign((self + 88), 0);
  result = JreStrongAssign((self + 96), 0);
  v18 = *(self + 144);
  if (!v18)
  {
    goto LABEL_10;
  }

  *(v18 + 24) = 0;
  ++*(self + 56);
  return result;
}

- (void)startFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withInt:(int)int withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean withBoolean:(BOOL)a7
{
  curDoc = self->curDoc_;
  if (!curDoc || !info || (JreStrongAssign(&self->curField_, [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_DocData *)curDoc addFieldWithInt:*(info + 4) withInt:*&int withBoolean:boolean withBoolean:withBoolean withBoolean:a7]), (lastTerm = self->lastTerm_) == 0))
  {
    JreThrowNullPointerException();
  }

  lastTerm->length_ = 0;
}

- (void)startTermWithOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int
{
  v4 = *&int;
  v7 = OrgApacheLuceneUtilStringHelper_bytesDifferenceWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(self->lastTerm_, ref, ref);
  curField = self->curField_;
  if (!curField || !ref || ([(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData *)curField addTermWithInt:v4 withInt:v7 withInt:(*(ref + 5) - v7)], (termSuffixes = self->termSuffixes_) == 0) || ([(OrgApacheLuceneUtilGrowableByteArrayDataOutput *)termSuffixes writeBytesWithByteArray:*(ref + 1) withInt:(*(ref + 4) + v7) withInt:(*(ref + 5) - v7)], (lastTerm = self->lastTerm_) == 0) || (bytes = lastTerm->bytes_) == 0)
  {
    JreThrowNullPointerException();
  }

  v18 = *(ref + 5);
  if (bytes->super.size_ < v18)
  {
    v19 = [IOSByteArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v18, 1, v10, v11, v12, v13, v14, v15)];
    JreStrongAssignAndConsume(&lastTerm->bytes_, v19);
    lastTerm = self->lastTerm_;
  }

  lastTerm->offset_ = 0;
  self->lastTerm_->length_ = *(ref + 5);
  v20 = *(ref + 1);
  v21 = *(ref + 4);
  v22 = self->lastTerm_->bytes_;
  v23 = *(ref + 5);

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(v20, v21, v22, 0, v23);
}

- (void)addPositionWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withOrgApacheLuceneUtilBytesRef:(id)ref
{
  refCopy = ref;
  curField = self->curField_;
  v9 = (a5 - withInt);
  if (ref)
  {
    ref = *(ref + 5);
  }

  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FieldData *)curField addPositionWithInt:*&int withInt:*&withInt withInt:v9 withInt:ref];
  if (refCopy && self->curField_->hasPayloads_)
  {
    payloadBytes = self->payloadBytes_;
    if (!payloadBytes)
    {
      JreThrowNullPointerException();
    }

    v11 = refCopy[1];
    v12 = *(refCopy + 4);
    v13 = *(refCopy + 5);

    [(OrgApacheLuceneUtilGrowableByteArrayDataOutput *)payloadBytes writeBytesWithByteArray:v11 withInt:v12 withInt:v13];
  }
}

- (void)finishWithOrgApacheLuceneIndexFieldInfos:(id)infos withInt:(int)int
{
  pendingDocs = self->pendingDocs_;
  if (!pendingDocs)
  {
    goto LABEL_10;
  }

  v6 = *&int;
  if (([(JavaUtilDeque *)pendingDocs isEmpty]& 1) == 0)
  {
    [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter flush]_0(self);
    ++self->numDirtyChunks_;
  }

  if (self->numDocs_ != v6)
  {
    v17 = JreStrcat("$I$I", v7, v8, v9, v10, v11, v12, v13, @"Wrote ");
    v18 = new_JavaLangRuntimeException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  indexWriter = self->indexWriter_;
  if (!indexWriter || (vectorsStream = self->vectorsStream_) == 0)
  {
LABEL_10:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *)indexWriter finishWithInt:v6 withLong:[(OrgApacheLuceneStoreIndexOutput *)vectorsStream getFilePointer]];
  [(OrgApacheLuceneStoreDataOutput *)self->vectorsStream_ writeVLongWithLong:self->numChunks_];
  [(OrgApacheLuceneStoreDataOutput *)self->vectorsStream_ writeVLongWithLong:self->numDirtyChunks_];
  v16 = self->vectorsStream_;

  OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(v16);
}

- (void)addProxWithInt:(int)int withOrgApacheLuceneStoreDataInput:(id)input withOrgApacheLuceneStoreDataInput:(id)dataInput
{
  curField = self->curField_;
  if (curField->hasPositions_)
  {
    v10 = 112;
    positionsBuf = self->positionsBuf_;
    if (!positionsBuf)
    {
      goto LABEL_57;
    }

    inputCopy = input;
    posStart = curField->posStart_;
    totalPositions = curField->totalPositions_;
    v15 = totalPositions + posStart + int;
    if (v15 > positionsBuf[2])
    {
      v16 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(positionsBuf, v15, *&int, input, dataInput, v5, v6, v7);
      JreStrongAssign(&self->positionsBuf_, v16);
      curField = self->curField_;
    }

    if (curField->hasPayloads_)
    {
      payloadLengthsBuf = self->payloadLengthsBuf_;
      if (!payloadLengthsBuf)
      {
        goto LABEL_57;
      }

      payStart = curField->payStart_;
      v19 = curField->totalPositions_;
      v20 = v19 + payStart + int;
      if (v20 > payloadLengthsBuf[2])
      {
        v21 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(payloadLengthsBuf, v20, *&int, input, dataInput, v5, v6, v7);
        JreStrongAssign(&self->payloadLengthsBuf_, v21);
      }

      if (int >= 1)
      {
        if (!inputCopy)
        {
          goto LABEL_57;
        }

        v22 = 0;
        v23 = (v19 + payStart);
        v24 = (totalPositions + posStart);
        v25 = &OBJC_IVAR___IOSIntArray_buffer_;
        intCopy = int;
        v67 = inputCopy;
        do
        {
          readVInt = [inputCopy readVInt];
          if (readVInt)
          {
            v30 = inputCopy;
            v31 = v10;
            v32 = v25;
            readVInt2 = [v30 readVInt];
            v34 = self->payloadLengthsBuf_;
            if (!v34)
            {
              goto LABEL_57;
            }

            v35 = readVInt2;
            size = v34->super.size_;
            if ((v23 & 0x80000000) != 0 || v23 >= size)
            {
              IOSArray_throwOutOfBoundsWithMsg(size, v23);
            }

            *(&v34->super.super.isa + 4 * v23 + *v32) = v35;
            payloadBytes = self->payloadBytes_;
            if (!payloadBytes)
            {
              goto LABEL_57;
            }

            [(OrgApacheLuceneStoreDataOutput *)payloadBytes copyBytesWithOrgApacheLuceneStoreDataInput:v67 withLong:v35];
            v25 = v32;
            v10 = v31;
          }

          else
          {
            v28 = self->payloadLengthsBuf_;
            if (!v28)
            {
              goto LABEL_57;
            }

            v29 = v28->super.size_;
            if ((v23 & 0x80000000) != 0 || v23 >= v29)
            {
              IOSArray_throwOutOfBoundsWithMsg(v29, v23);
            }

            *(&v28->super.super.isa + 4 * v23 + *v25) = 0;
          }

          v38 = *(&self->super.super.isa + v10);
          if (!v38)
          {
            goto LABEL_57;
          }

          v39 = *(v38 + 8);
          if ((v24 & 0x80000000) != 0 || v24 >= v39)
          {
            IOSArray_throwOutOfBoundsWithMsg(v39, v24);
          }

          v22 += readVInt >> 1;
          *(v38 + *v25 + 4 * v24) = v22;
          v23 = (v23 + 1);
          v24 = (v24 + 1);
          --intCopy;
          inputCopy = v67;
        }

        while (intCopy);
      }
    }

    else if (int >= 1)
    {
      if (inputCopy)
      {
        v40 = 0;
        v41 = (totalPositions + posStart);
        intCopy2 = int;
        while (1)
        {
          readVInt3 = [inputCopy readVInt];
          v44 = self->positionsBuf_;
          if (!v44)
          {
            break;
          }

          v45 = readVInt3;
          v46 = v44->super.size_;
          if ((v41 & 0x80000000) != 0 || v41 >= v46)
          {
            IOSArray_throwOutOfBoundsWithMsg(v46, v41);
          }

          v40 += v45 >> 1;
          *(&v44->super.size_ + v41 + 1) = v40;
          v41 = (v41 + 1);
          if (!--intCopy2)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_57:
      JreThrowNullPointerException();
    }
  }

LABEL_39:
  v47 = self->curField_;
  if (v47->hasOffsets_)
  {
    startOffsetsBuf = self->startOffsetsBuf_;
    if (!startOffsetsBuf)
    {
      goto LABEL_57;
    }

    offStart = v47->offStart_;
    v50 = v47->totalPositions_;
    v51 = v50 + offStart + int;
    if (v51 > startOffsetsBuf->super.size_)
    {
      v52 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v51, 4, *&int, input, dataInput, v5, v6, v7);
      v53 = JavaUtilArrays_copyOfWithIntArray_withInt_(self->startOffsetsBuf_, v52);
      JreStrongAssign(&self->startOffsetsBuf_, v53);
      v54 = JavaUtilArrays_copyOfWithIntArray_withInt_(self->lengthsBuf_, v52);
      JreStrongAssign(&self->lengthsBuf_, v54);
    }

    if (int >= 1)
    {
      if (dataInput)
      {
        v55 = 0;
        v56 = (v50 + offStart);
        intCopy3 = int;
        while (1)
        {
          readVInt4 = [dataInput readVInt];
          readVInt5 = [dataInput readVInt];
          v60 = self->startOffsetsBuf_;
          if (!v60)
          {
            break;
          }

          v61 = readVInt5;
          v62 = v60->super.size_;
          if ((v56 & 0x80000000) != 0 || v56 >= v62)
          {
            IOSArray_throwOutOfBoundsWithMsg(v62, v56);
          }

          v63 = readVInt4 + v55;
          *(&v60->super.size_ + v56 + 1) = v63;
          lengthsBuf = self->lengthsBuf_;
          if (!lengthsBuf)
          {
            break;
          }

          v65 = lengthsBuf->super.size_;
          if ((v56 & 0x80000000) != 0 || v56 >= v65)
          {
            IOSArray_throwOutOfBoundsWithMsg(v65, v56);
          }

          v55 = v63 + v61;
          *(&lengthsBuf->super.size_ + v56 + 1) = v61;
          v56 = (v56 + 1);
          if (!--intCopy3)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_57;
    }
  }

LABEL_56:
  self->curField_->totalPositions_ += int;
}

- (int)mergeWithOrgApacheLuceneIndexMergeState:(id)state
{
  if (!state || (v4 = *(state + 12)) == 0)
  {
LABEL_64:
    JreThrowNullPointerException();
  }

  v61 = *(v4 + 8);
  v62 = new_OrgApacheLuceneCodecsCompressingMatchingReaders_initWithOrgApacheLuceneIndexMergeState_(state);
  if (v61 >= 1)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(state + 4);
      if (!v8)
      {
        goto LABEL_64;
      }

      v9 = *(v8 + 8);
      if (v6 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v6);
      }

      matchingReaders = v62->matchingReaders_;
      if (!matchingReaders)
      {
        goto LABEL_64;
      }

      v11 = *(v8 + 24 + 8 * v6);
      size = matchingReaders->super.size_;
      if (v6 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v6);
      }

      v13 = *(&matchingReaders->super.size_ + v6 + 4) != 1 || v11 == 0;
      if (v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v14 = 0;
      }

      else
      {
        objc_opt_class();
        v14 = v11;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }
      }

      v15 = *(state + 12);
      v16 = *(v15 + 8);
      if (v6 >= v16)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v6);
      }

      v17 = *(state + 8);
      if (!v17)
      {
        goto LABEL_64;
      }

      v18 = *(v15 + 12 + 4 * v6);
      v19 = *(v17 + 8);
      if (v6 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v6);
      }

      v20 = *(v17 + 24 + 8 * v6);
      if (v14 && [v14 getCompressionMode] == self->compressionMode_ && objc_msgSend(v14, "getChunkSize") == self->chunkSize_ && objc_msgSend(v14, "getVersion") == 1 && objc_msgSend(v14, "getPackedIntsVersion") == 2 && OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_ == 1 && !v20 && !-[OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:](self, "tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:", v14))
      {
        [v14 checkIntegrity];
        pendingDocs = self->pendingDocs_;
        if (!pendingDocs)
        {
          goto LABEL_64;
        }

        if (([(JavaUtilDeque *)pendingDocs isEmpty]& 1) == 0)
        {
          [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter flush]_0(self);
          ++self->numDirtyChunks_;
        }

        getVectorsStream = [v14 getVectorsStream];
        getIndexReader = [v14 getIndexReader];
        if (!getVectorsStream)
        {
          goto LABEL_64;
        }

        v26 = getIndexReader;
        if (!getIndexReader)
        {
          goto LABEL_64;
        }

        [getVectorsStream seekWithLong:{objc_msgSend(getIndexReader, "getStartPointerWithInt:", 0)}];
        if (v18 >= 1)
        {
          v59 = v26;
          v60 = getVectorsStream;
          v27 = 0;
          while ([getVectorsStream readVInt] == v27)
          {
            readVInt = [getVectorsStream readVInt];
            indexWriter = self->indexWriter_;
            if (!indexWriter)
            {
              goto LABEL_64;
            }

            v37 = readVInt;
            vectorsStream = self->vectorsStream_;
            if (!vectorsStream)
            {
              goto LABEL_64;
            }

            [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsIndexWriter *)indexWriter writeIndexWithInt:v37 withLong:[(OrgApacheLuceneStoreIndexOutput *)vectorsStream getFilePointer]];
            [(OrgApacheLuceneStoreDataOutput *)self->vectorsStream_ writeVIntWithInt:v7];
            [(OrgApacheLuceneStoreDataOutput *)self->vectorsStream_ writeVIntWithInt:v37];
            v27 += v37;
            self->numDocs_ += v37;
            if (v27 > v18)
            {
              v49 = JreStrcat("$I$I$I", v39, v40, v41, v42, v43, v44, v45, @"invalid state: base=");
              v50 = v60;
LABEL_68:
              v51 = new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withOrgApacheLuceneStoreDataInput_(v49, v50);
              objc_exception_throw(v51);
            }

            if (v27 == v18)
            {
              getMaxPointer = [v14 getMaxPointer];
            }

            else
            {
              getMaxPointer = [v59 getStartPointerWithInt:?];
            }

            v7 = (v37 + v7);
            getVectorsStream = v60;
            -[OrgApacheLuceneStoreDataOutput copyBytesWithOrgApacheLuceneStoreDataInput:withLong:](self->vectorsStream_, "copyBytesWithOrgApacheLuceneStoreDataInput:withLong:", v60, getMaxPointer - [v60 getFilePointer]);
            if (v27 >= v18)
            {
              goto LABEL_56;
            }
          }

          v49 = JreStrcat("$I$I", v28, v29, v30, v31, v32, v33, v34, @"invalid state: base=");
LABEL_66:
          v50 = getVectorsStream;
          goto LABEL_68;
        }

LABEL_56:
        getFilePointer = [getVectorsStream getFilePointer];
        if (getFilePointer != [v14 getMaxPointer])
        {
          [getVectorsStream getFilePointer];
          [v14 getMaxPointer];
          v49 = JreStrcat("$J$J", v52, v53, v54, v55, v56, v57, v58, @"invalid state: pos=");
          goto LABEL_66;
        }

        self->numChunks_ += [v14 getNumChunks];
        self->numDirtyChunks_ += [v14 getNumDirtyChunks];
      }

      else
      {
        if (v11)
        {
          [v11 checkIntegrity];
        }

        if (v18 >= 1)
        {
          v21 = 0;
          do
          {
            if (!v20 || [v20 getWithInt:v21])
            {
              if (v11)
              {
                v22 = [v11 getWithInt:v21];
              }

              else
              {
                v22 = 0;
              }

              [(OrgApacheLuceneCodecsTermVectorsWriter *)self addAllDocVectorsWithOrgApacheLuceneIndexFields:v22 withOrgApacheLuceneIndexMergeState:state];
              v7 = (v7 + 1);
            }

            v21 = (v21 + 1);
          }

          while (v18 != v21);
        }
      }

      if (++v6 == v61)
      {
        goto LABEL_63;
      }
    }
  }

  v7 = 0;
LABEL_63:
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *)self finishWithOrgApacheLuceneIndexFieldInfos:*(state + 2) withInt:v7];
  return v7;
}

- (BOOL)tooDirtyWithOrgApacheLuceneCodecsCompressingCompressingTermVectorsReader:(id)reader
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  if ([reader getNumDirtyChunks] > 1024)
  {
    return 1;
  }

  v5 = 100 * [reader getNumDirtyChunks];
  return v5 > [reader getNumChunks];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter;
  [(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_FLAGS_BITS_ = OrgApacheLuceneUtilPackedPackedInts_bitsRequiredWithLong_(7uLL, v2, v3, v4, v5, v6, v7, v8);
    getName = [OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_class_() getName];
    v17 = JreStrcat("$$", v10, v11, v12, v13, v14, v15, v16, getName);
    JreStrongAssign(&OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_SYSPROP_, v17);
    PropertyWithNSString_withNSString = JavaLangSystem_getPropertyWithNSString_withNSString_(OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_SYSPROP_, @"true");
    OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter_BULK_MERGE_ENABLED_ = JavaLangBoolean_parseBooleanWithNSString_(PropertyWithNSString_withNSString);
    atomic_store(1u, &OrgApacheLuceneCodecsCompressingCompressingTermVectorsWriter__initialized);
  }
}

@end
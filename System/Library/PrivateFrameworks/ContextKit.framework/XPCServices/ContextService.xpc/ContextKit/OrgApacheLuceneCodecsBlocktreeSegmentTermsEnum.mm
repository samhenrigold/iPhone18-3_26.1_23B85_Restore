@interface OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum
+ (void)initialize;
- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)computeBlockStats;
- (id)next;
- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int;
- (id)pushFrameWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withLong:(int64_t)long withInt:(int)int;
- (id)pushFrameWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int;
- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref;
- (id)term;
- (id)termState;
- (int)docFreq;
- (int64_t)totalTermFreq;
- (void)dealloc;
- (void)initIndexInput;
- (void)printSeekStateWithJavaIoPrintStream:(id)stream;
- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state;
@end

@implementation OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum

- (void)initIndexInput
{
  if (!self->in_)
  {
    fr = self->fr_;
    if (!fr || (Weak = objc_loadWeak(&fr->parent_)) == 0 || (v5 = Weak[1]) == 0)
    {
      JreThrowNullPointerException();
    }

    clone = [v5 clone];

    JreStrongAssign(&self->in_, clone);
  }
}

- (id)computeBlockStats
{
  fr = self->fr_;
  if (!fr)
  {
    goto LABEL_37;
  }

  Weak = objc_loadWeak(&fr->parent_);
  if (!Weak)
  {
    goto LABEL_37;
  }

  fieldInfo = self->fr_->fieldInfo_;
  if (!fieldInfo)
  {
    goto LABEL_37;
  }

  v6 = new_OrgApacheLuceneCodecsBlocktreeStats_initWithNSString_withNSString_(Weak[3], fieldInfo->name_);
  index = self->fr_->index_;
  if (index)
  {
    v6->indexNumBytes_ = [(OrgApacheLuceneUtilFstFST *)index ramBytesUsed];
  }

  JreStrongAssign(&self->currentFrame_, self->staticFrame_);
  v8 = self->fr_;
  v9 = v8->index_;
  if (v9)
  {
    arcs = self->arcs_;
    if (!arcs)
    {
      goto LABEL_37;
    }

    size = arcs->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    v12 = [(OrgApacheLuceneUtilFstFST *)v9 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
    v8 = self->fr_;
  }

  else
  {
    v12 = 0;
  }

  JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:v12 withOrgApacheLuceneUtilBytesRef:v8->rootCode_ withInt:0]);
  self->currentFrame_->fpOrig_ = self->currentFrame_->fp_;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
  self->validIndexPrefix_ = 0;
  [OrgApacheLuceneCodecsBlocktreeStats startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:v6 withBoolean:"startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:withBoolean:"];
  v13 = &OBJC_IVAR___OrgApacheLuceneCodecsDocValuesConsumer__6__1_docIDUpto_;
  while (1)
  {
    currentFrame = self->currentFrame_;
    if (currentFrame->nextEnt_ == currentFrame->entCount_)
    {
      break;
    }

LABEL_22:
    while (1)
    {
      next = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame next];
      v25 = *(&self->super.super.isa + v13[1018]);
      if (!next)
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_37;
      }

      JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withLong:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withLong:withInt:", 0, self->currentFrame_->lastSubFP_, [v25 length]));
      self->currentFrame_->fpOrig_ = self->currentFrame_->fp_;
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
      v21 = self->currentFrame_;
      v23 = !v21->isLastInFloor_;
      v22 = v6;
LABEL_25:
      [(OrgApacheLuceneCodecsBlocktreeStats *)v22 startBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:v21 withBoolean:v23];
      currentFrame = self->currentFrame_;
      if (!currentFrame)
      {
        goto LABEL_37;
      }
    }

    if (!v25)
    {
      goto LABEL_37;
    }

    -[OrgApacheLuceneCodecsBlocktreeStats termWithOrgApacheLuceneUtilBytesRef:](v6, "termWithOrgApacheLuceneUtilBytesRef:", [v25 get]);
  }

  while (1)
  {
    [(OrgApacheLuceneCodecsBlocktreeStats *)v6 endBlockWithOrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame:?];
    v15 = self->currentFrame_;
    if (!v15->isLastInFloor_)
    {
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v15 loadNextFloorBlock];
      v21 = self->currentFrame_;
      v22 = v6;
      v23 = 1;
      goto LABEL_25;
    }

    v16 = v13;
    ord = v15->ord_;
    if (!ord)
    {
      break;
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_37;
    }

    v19 = stack->super.size_;
    v20 = ord - 1;
    if (v20 < 0 || v20 >= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v19, v20);
    }

    JreStrongAssign(&self->currentFrame_, (&stack->elementType_)[v20]);
    currentFrame = self->currentFrame_;
    v13 = v16;
    if (currentFrame->nextEnt_ != currentFrame->entCount_)
    {
      goto LABEL_22;
    }
  }

  [(OrgApacheLuceneCodecsBlocktreeStats *)v6 finish];
  JreStrongAssign(&self->currentFrame_, self->staticFrame_);
  v26 = self->fr_;
  v27 = v26->index_;
  if (!v27)
  {
    v30 = 0;
    goto LABEL_34;
  }

  v28 = self->arcs_;
  if (!v28)
  {
    goto LABEL_37;
  }

  v29 = v28->super.size_;
  if (v29 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v29, 0);
  }

  v30 = [(OrgApacheLuceneUtilFstFST *)v27 getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:v28->elementType_];
  v26 = self->fr_;
LABEL_34:
  JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:v30 withOrgApacheLuceneUtilBytesRef:v26->rootCode_ withInt:0]);
  v31 = self->currentFrame_;
  if (!v31 || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v31 rewind], [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock], self->validIndexPrefix_ = 0, (v32 = *(&self->super.super.isa + v13[1018])) == 0))
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  [v32 clear];
  return v6;
}

- (id)pushFrameWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withOrgApacheLuceneUtilBytesRef:(id)ref withInt:(int)int
{
  scratchReader = self->scratchReader_;
  if (!scratchReader || !ref || (v8 = *&int, [(OrgApacheLuceneStoreByteArrayDataInput *)scratchReader resetWithByteArray:*(ref + 1) withInt:*(ref + 4) withInt:*(ref + 5)], v10 = [(OrgApacheLuceneStoreByteArrayDataInput *)self->scratchReader_ readVLong], (currentFrame = self->currentFrame_) == 0) || (v18 = v10, (v19 = sub_1000DD034(self, (currentFrame->ord_ + 1), v11, v12, v13, v14, v15, v16)) == 0))
  {
    JreThrowNullPointerException();
  }

  v20 = v19;
  v19[12] = (v18 & 2) != 0;
  v19[13] = v19[12];
  v19[14] = v18 & 1;
  if (v19[14] == 1)
  {
    [v19 setFloorDataWithOrgApacheLuceneStoreByteArrayDataInput:self->scratchReader_ withOrgApacheLuceneUtilBytesRef:ref];
  }

  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:arc withLong:v18 >> 2 withInt:v8];
  return v20;
}

- (id)pushFrameWithOrgApacheLuceneUtilFstFST_Arc:(id)arc withLong:(int64_t)long withInt:(int)int
{
  currentFrame = self->currentFrame_;
  if (!currentFrame)
  {
    goto LABEL_10;
  }

  v13 = sub_1000DD034(self, (currentFrame->ord_ + 1), arc, long, *&int, v5, v6, v7);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  JreStrongAssign((v13 + 16), arc);
  if (*(v14 + 40) != long || *(v14 + 112) == -1)
  {
    *(v14 + 112) = -1;
    *(v14 + 104) = int;
    v15 = *(v14 + 144);
    if (v15)
    {
      *(v15 + 32) = 0;
      *(v14 + 32) = long;
      *(v14 + 40) = long;
      *(v14 + 120) = -1;
      return v14;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (*(v14 + 8) > self->targetBeforeCurrentLength_)
  {
    [v14 rewind];
  }

  return v14;
}

- (BOOL)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  fr = self->fr_;
  if (!fr)
  {
    goto LABEL_95;
  }

  if (!fr->index_)
  {
    v65 = new_JavaLangIllegalStateException_initWithNSString_(@"terms index was not loaded");
    objc_exception_throw(v65);
  }

  term = self->term_;
  if (!term)
  {
    goto LABEL_95;
  }

  if (!ref)
  {
    goto LABEL_95;
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)term growWithInt:(*(ref + 5) + 1)];
  currentFrame = self->currentFrame_;
  if (!currentFrame)
  {
    goto LABEL_95;
  }

  self->targetBeforeCurrentLength_ = currentFrame->ord_;
  if (self->currentFrame_ == self->staticFrame_)
  {
    self->targetBeforeCurrentLength_ = -1;
    index = self->fr_->index_;
    if (!index)
    {
      goto LABEL_95;
    }

    arcs = self->arcs_;
    if (!arcs)
    {
      goto LABEL_95;
    }

    size = arcs->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    elementType = [(OrgApacheLuceneUtilFstFST *)index getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
    isa = elementType[2].super.isa;
    JreStrongAssign(&self->currentFrame_, self->staticFrame_);
    if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000DF878();
    }

    if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
    {
      goto LABEL_95;
    }

    JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], 0));
    v15 = 0;
  }

  else
  {
    v8 = self->arcs_;
    if (!v8)
    {
      goto LABEL_95;
    }

    v9 = v8->super.size_;
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_95;
    }

    elementType = v8->elementType_;
    isa = elementType[2].super.isa;
    v13 = stack->super.size_;
    if (v13 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, 0);
    }

    v66 = stack->elementType_;
    v14 = JavaLangMath_minWithInt_withInt_(*(ref + 5), self->validIndexPrefix_);
    if (v14 < 1)
    {
      v15 = 0;
LABEL_43:
      v41 = JavaLangMath_minWithInt_withInt_(*(ref + 5), [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]);
      if (v15 < v41)
      {
        v42 = v41;
        v43 = v15;
        do
        {
          v44 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v43];
          v45 = *(ref + 1);
          if (!v45)
          {
            goto LABEL_95;
          }

          v46 = v44;
          v47 = *(v45 + 8);
          v48 = v43 + *(ref + 4);
          if (v48 < 0 || v48 >= v47)
          {
            IOSArray_throwOutOfBoundsWithMsg(v47, v48);
          }

          v49 = *(v45 + 12 + v48);
          v30 = v46 - v49;
          if (v46 != v49)
          {
            goto LABEL_53;
          }

          v43 = (v43 + 1);
        }

        while (v42 != v43);
      }

      v30 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]- *(ref + 5);
LABEL_53:
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v15 = v14;
      v16 = 0;
      v17 = v14;
      while (1)
      {
        v18 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v16];
        v25 = *(ref + 1);
        if (!v25)
        {
          goto LABEL_95;
        }

        v26 = v18;
        v27 = v16 + *(ref + 4);
        v28 = *(v25 + 8);
        if (v27 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v16 + *(ref + 4));
        }

        v29 = *(v25 + 12 + v27);
        v30 = v26 - v29;
        if (v26 != v29)
        {
          break;
        }

        v31 = self->arcs_;
        v32 = v16 + 1;
        v33 = v31->super.size_;
        if (v16 + 1 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v16 + 1));
        }

        elementType = (&v31->elementType_)[v16 + 1];
        v34 = elementType[2].super.isa;
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (v34 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
        {
          if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000DF878();
          }

          if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
          {
            goto LABEL_95;
          }

          isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
        }

        if ([(IOSClass *)elementType isFinal])
        {
          if (!v66)
          {
            goto LABEL_95;
          }

          v35 = self->stack_;
          v36 = v35->super.size_;
          v37 = v66[2] + 1;
          if (v37 < 0 || v37 >= v36)
          {
            IOSArray_throwOutOfBoundsWithMsg(v36, v37);
          }

          v66 = (&v35->elementType_)[v37];
        }

        v16 = v32;
        if (v17 == v32)
        {
          goto LABEL_43;
        }
      }

      v15 = v16;
      if ((v30 & 0x80000000) != 0)
      {
LABEL_58:
        JreStrongAssign(&self->currentFrame_, v66);
        goto LABEL_61;
      }
    }

    if (v30)
    {
      if (!v66)
      {
        goto LABEL_95;
      }

      self->targetBeforeCurrentLength_ = v66[2];
      JreStrongAssign(&self->currentFrame_, v66);
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ rewind];
    }

    else if (self->termExists_)
    {
      return 1;
    }
  }

LABEL_61:
  if (v15 < *(ref + 5))
  {
    while (1)
    {
      v51 = *(ref + 1);
      if (!v51)
      {
        goto LABEL_95;
      }

      v52 = *(v51 + 8);
      v53 = v15 + *(ref + 4);
      if (v53 < 0 || v53 >= v52)
      {
        IOSArray_throwOutOfBoundsWithMsg(v52, v53);
      }

      v54 = self->fr_->index_;
      if (!v54)
      {
        goto LABEL_95;
      }

      v55 = *(v51 + 12 + v53);
      v56 = (v15 + 1);
      v57 = [(OrgApacheLuceneUtilFstFST *)v54 findTargetArcWithInt:v55 withOrgApacheLuceneUtilFstFST_Arc:elementType withOrgApacheLuceneUtilFstFST_Arc:sub_1000DD1A4(self withOrgApacheLuceneUtilFstFST_BytesReader:v56, v19, v20, v21, v22, v23, v24), self->fstReader_];
      if (!v57)
      {
        break;
      }

      elementType = v57;
      [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ setByteAtWithInt:v15 withByte:v55];
      v58 = elementType[2].super.isa;
      if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000DF878();
      }

      if (v58 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_95;
        }

        isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
      }

      if ([(IOSClass *)elementType isFinal])
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_95;
        }

        JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], v56));
      }

      v15 = v56;
      if (v56 >= *(ref + 5))
      {
        goto LABEL_83;
      }
    }

    v63 = self->currentFrame_;
    if (v63)
    {
      self->validIndexPrefix_ = v63->prefix_;
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:ref];
      v64 = self->currentFrame_;
      if (v64->hasTerms_)
      {
        [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v64 loadBlock];
        v61 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:ref withBoolean:1];
        if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
        {
LABEL_91:
          sub_1000169C0();
        }

        return v61 == qword_100557A48;
      }

      self->termExists_ = 0;
      [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ setByteAtWithInt:v15 withByte:v55];
      v62 = self->term_;
      goto LABEL_94;
    }

LABEL_95:
    JreThrowNullPointerException();
  }

  v56 = v15;
LABEL_83:
  v59 = self->currentFrame_;
  if (!v59)
  {
    goto LABEL_95;
  }

  self->validIndexPrefix_ = v59->prefix_;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:ref];
  v60 = self->currentFrame_;
  if (v60->hasTerms_)
  {
    [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v60 loadBlock];
    v61 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:ref withBoolean:1];
    if ((atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      goto LABEL_91;
    }

    return v61 == qword_100557A48;
  }

  self->termExists_ = 0;
  v62 = self->term_;
LABEL_94:
  [(OrgApacheLuceneUtilBytesRefBuilder *)v62 setLengthWithInt:v56];
  return 0;
}

- (id)seekCeilWithOrgApacheLuceneUtilBytesRef:(id)ref
{
  fr = self->fr_;
  if (!fr)
  {
    goto LABEL_96;
  }

  if (!fr->index_)
  {
    v66 = new_JavaLangIllegalStateException_initWithNSString_(@"terms index was not loaded");
    objc_exception_throw(v66);
  }

  term = self->term_;
  if (!term)
  {
    goto LABEL_96;
  }

  if (!ref)
  {
    goto LABEL_96;
  }

  [(OrgApacheLuceneUtilBytesRefBuilder *)term growWithInt:(*(ref + 5) + 1)];
  currentFrame = self->currentFrame_;
  if (!currentFrame)
  {
    goto LABEL_96;
  }

  self->targetBeforeCurrentLength_ = currentFrame->ord_;
  if (self->currentFrame_ == self->staticFrame_)
  {
    self->targetBeforeCurrentLength_ = -1;
    index = self->fr_->index_;
    if (!index)
    {
      goto LABEL_96;
    }

    arcs = self->arcs_;
    if (!arcs)
    {
      goto LABEL_96;
    }

    size = arcs->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    elementType = [(OrgApacheLuceneUtilFstFST *)index getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
    isa = elementType[2].super.isa;
    JreStrongAssign(&self->currentFrame_, self->staticFrame_);
    if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000DF878();
    }

    if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
    {
      goto LABEL_96;
    }

    JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], 0));
    v15 = 0;
  }

  else
  {
    v8 = self->arcs_;
    if (!v8)
    {
      goto LABEL_96;
    }

    v9 = v8->super.size_;
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_96;
    }

    elementType = v8->elementType_;
    isa = elementType[2].super.isa;
    v13 = stack->super.size_;
    if (v13 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, 0);
    }

    v67 = stack->elementType_;
    v14 = JavaLangMath_minWithInt_withInt_(*(ref + 5), self->validIndexPrefix_);
    if (v14 < 1)
    {
      v15 = 0;
LABEL_43:
      v41 = JavaLangMath_minWithInt_withInt_(*(ref + 5), [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]);
      if (v15 < v41)
      {
        v42 = v41;
        v43 = v15;
        do
        {
          v44 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v43];
          v45 = *(ref + 1);
          if (!v45)
          {
            goto LABEL_96;
          }

          v46 = v44;
          v47 = *(v45 + 8);
          v48 = v43 + *(ref + 4);
          if (v48 < 0 || v48 >= v47)
          {
            IOSArray_throwOutOfBoundsWithMsg(v47, v48);
          }

          v49 = *(v45 + 12 + v48);
          v30 = v46 - v49;
          if (v46 != v49)
          {
            goto LABEL_53;
          }

          v43 = (v43 + 1);
        }

        while (v42 != v43);
      }

      v30 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ length]- *(ref + 5);
LABEL_53:
      if ((v30 & 0x80000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v15 = v14;
      v16 = 0;
      v17 = v14;
      while (1)
      {
        v18 = [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ byteAtWithInt:v16];
        v25 = *(ref + 1);
        if (!v25)
        {
          goto LABEL_96;
        }

        v26 = v18;
        v27 = v16 + *(ref + 4);
        v28 = *(v25 + 8);
        if (v27 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v16 + *(ref + 4));
        }

        v29 = *(v25 + 12 + v27);
        v30 = v26 - v29;
        if (v26 != v29)
        {
          break;
        }

        v31 = self->arcs_;
        v32 = v16 + 1;
        v33 = v31->super.size_;
        if (v16 + 1 >= v33)
        {
          IOSArray_throwOutOfBoundsWithMsg(v33, (v16 + 1));
        }

        elementType = (&v31->elementType_)[v16 + 1];
        v34 = elementType[2].super.isa;
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (v34 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
        {
          if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_1000DF878();
          }

          if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
          {
            goto LABEL_96;
          }

          isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
        }

        if ([(IOSClass *)elementType isFinal])
        {
          if (!v67)
          {
            goto LABEL_96;
          }

          v35 = self->stack_;
          v36 = v35->super.size_;
          v37 = LODWORD(v67[1].super.isa) + 1;
          if (v37 < 0 || v37 >= v36)
          {
            IOSArray_throwOutOfBoundsWithMsg(v36, v37);
          }

          v67 = (&v35->elementType_)[v37];
        }

        v16 = v32;
        if (v17 == v32)
        {
          goto LABEL_43;
        }
      }

      v15 = v16;
      if ((v30 & 0x80000000) != 0)
      {
LABEL_58:
        JreStrongAssign(&self->currentFrame_, v67);
        goto LABEL_62;
      }
    }

    if (v30)
    {
      self->targetBeforeCurrentLength_ = 0;
      JreStrongAssign(&self->currentFrame_, v67);
      v50 = self->currentFrame_;
      if (!v50)
      {
        goto LABEL_96;
      }

      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v50 rewind];
    }

    else if (self->termExists_)
    {
      v51 = &qword_100557A48;
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        return *v51;
      }

LABEL_61:
      objc_opt_class();
      return *v51;
    }
  }

LABEL_62:
  if (v15 < *(ref + 5))
  {
    while (1)
    {
      v52 = *(ref + 1);
      if (!v52)
      {
        goto LABEL_96;
      }

      v53 = *(v52 + 8);
      v54 = v15 + *(ref + 4);
      if (v54 < 0 || v54 >= v53)
      {
        IOSArray_throwOutOfBoundsWithMsg(v53, v54);
      }

      v55 = self->fr_->index_;
      if (!v55)
      {
        goto LABEL_96;
      }

      v56 = *(v52 + 12 + v54);
      v57 = (v15 + 1);
      v58 = [(OrgApacheLuceneUtilFstFST *)v55 findTargetArcWithInt:v56 withOrgApacheLuceneUtilFstFST_Arc:elementType withOrgApacheLuceneUtilFstFST_Arc:sub_1000DD1A4(self withOrgApacheLuceneUtilFstFST_BytesReader:v57, v19, v20, v21, v22, v23, v24), self->fstReader_];
      if (!v58)
      {
        break;
      }

      elementType = v58;
      [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ setByteAtWithInt:v15 withByte:v56];
      v59 = elementType[2].super.isa;
      if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1000DF878();
      }

      if (v59 != OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_NO_OUTPUT_)
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_96;
        }

        isa = [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[2].super.isa];
      }

      if ([(IOSClass *)elementType isFinal])
      {
        if ((atomic_load_explicit(OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_1000DF878();
        }

        if (!OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_)
        {
          goto LABEL_96;
        }

        JreStrongAssign(&self->currentFrame_, -[OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:](self, "pushFrameWithOrgApacheLuceneUtilFstFST_Arc:withOrgApacheLuceneUtilBytesRef:withInt:", elementType, [OrgApacheLuceneCodecsBlocktreeBlockTreeTermsReader_FST_OUTPUTS_ addWithId:isa withId:elementType[6].super.isa], v57));
      }

      v15 = v57;
      if (v57 >= *(ref + 5))
      {
        goto LABEL_83;
      }
    }

    v62 = self->currentFrame_;
    if (v62)
    {
      self->validIndexPrefix_ = v62->prefix_;
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:ref];
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
      v61 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:ref withBoolean:0];
      if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
      {
        goto LABEL_89;
      }

      goto LABEL_88;
    }

LABEL_96:
    JreThrowNullPointerException();
  }

LABEL_83:
  v60 = self->currentFrame_;
  if (!v60)
  {
    goto LABEL_96;
  }

  self->validIndexPrefix_ = v60->prefix_;
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:ref];
  [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
  v61 = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToTermWithOrgApacheLuceneUtilBytesRef:ref withBoolean:0];
  if (atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire))
  {
    goto LABEL_89;
  }

LABEL_88:
  sub_1000169C0();
LABEL_89:
  if (v61 == OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[0])
  {
    [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ copyBytesWithOrgApacheLuceneUtilBytesRef:ref];
    self->termExists_ = 0;
    next = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self next];
    explicit = atomic_load_explicit(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum__initialized, memory_order_acquire);
    if (next)
    {
      v51 = &qword_100557A50;
    }

    else
    {
      v51 = OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_;
    }

    if (explicit)
    {
      return *v51;
    }

    goto LABEL_61;
  }

  return v61;
}

- (void)printSeekStateWithJavaIoPrintStream:(id)stream
{
  if (self->currentFrame_ != self->staticFrame_)
  {
    if (stream)
    {
      selfCopy = self;
      [stream printlnWithNSString:@"  prior seek state:"];
      v11 = sub_1000DD034(selfCopy, 0, v5, v6, v7, v8, v9, v10);
      v12 = *(selfCopy + 48);
      if (v12)
      {
        v13 = 1;
        v71 = selfCopy;
        LODWORD(selfCopy) = 0;
        do
        {
          v14 = [v12 get];
          if (!v14 || !v11)
          {
            break;
          }

          v72 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(v14[1], 0, *(v11 + 104));
          if (*(v11 + 112) == -1)
          {
            if (*(v11 + 14))
            {
              JreStrcat("$JC", v15, v16, v17, v18, v19, v20, v21, @" (fpOrig=");
              if (*(v11 + 112) != -1)
              {
                JreStrcat("$IC", v22, v23, v24, v25, v26, v27, v28, @" (of ");
              }
            }

            [v11 getTermBlockOrd];
            v29 = v72;
            v37 = JreStrcat("$$$I$J$$I$@$$Z$Z$J$Z$I$I", v38, v39, v40, v41, v42, v43, v44, @"    frame ");
          }

          else
          {
            if ((*(v11 + 14) & 1) == 0 || (JreStrcat("$JC", v15, v16, v17, v18, v19, v20, v21, @" (fpOrig="), *(v11 + 112) != -1))
            {
              JreStrcat("$IC", v15, v16, v17, v18, v19, v20, v21, @" (of ");
            }

            [v11 getTermBlockOrd];
            v29 = v72;
            v37 = JreStrcat("$$$I$J$$I$@$I$$Z$Z$J$J$Z$I$I", v30, v31, v32, v33, v34, v35, v36, @"    frame ");
          }

          [stream printlnWithNSString:v37];
          v51 = *(v71 + 40);
          if (!v51)
          {
            break;
          }

          v52 = *(v51 + 104);
          if (v52)
          {
            v53 = *(v11 + 104);
            if (((v53 > 0) & v13) == 1)
            {
              v54 = *(v11 + 16);
              if (!v54)
              {
                break;
              }

              v55 = selfCopy;
              v56 = *(v54 + 8);
              if (v56 != [*(v71 + 48) byteAtWithInt:(v53 - 1)])
              {
                [*(v71 + 48) byteAtWithInt:(*(v11 + 104) - 1)];
                v69 = JreStrcat("$C$C", v62, v63, v64, v65, v66, v67, v68, @"      broken seek state: arc.label=");
                goto LABEL_40;
              }

              v52 = *(*(v71 + 40) + 104);
              LODWORD(selfCopy) = v55;
            }

            v57 = OrgApacheLuceneUtilFstUtil_getWithOrgApacheLuceneUtilFstFST_withOrgApacheLuceneUtilBytesRef_(v52, v29);
            if (!v57)
            {
              v61 = @"      broken seek state: prefix is not final in index";
              goto LABEL_41;
            }

            if ((v13 & 1) != 0 && (*(v11 + 14) & 1) == 0)
            {
              v58 = [new_OrgApacheLuceneStoreByteArrayDataInput_initWithByteArray_withInt_withInt_(v57[1] readVLong:*(v57 + 5))];
              v60 = 2;
              if (!*(v11 + 12))
              {
                v60 = 0;
              }

              if (v58 != (v60 | (4 * *(v11 + 32)) | *(v11 + 14)))
              {
                v69 = JreStrcat("$J$J", v59, v45, v46, v47, v48, v49, v50, @"      broken seek state: output code=");
LABEL_40:
                v61 = v69;
LABEL_41:
                [stream printlnWithNSString:v61];
                v70 = new_JavaLangRuntimeException_initWithNSString_(@"seek state is broken");
                objc_exception_throw(v70);
              }
            }
          }

          if (v11 == *(v71 + 24))
          {
            return;
          }

          v13 &= *(v11 + 104) != *(v71 + 88);
          selfCopy = (selfCopy + 1);
          v11 = sub_1000DD034(v71, selfCopy, v45, v46, v47, v48, v49, v50);
          v12 = *(v71 + 48);
        }

        while (v12);
      }
    }

LABEL_31:
    JreThrowNullPointerException();
  }

  if (!stream)
  {
    goto LABEL_31;
  }

  [stream printlnWithNSString:@"  no prior seek"];
}

- (id)next
{
  if (!self->in_)
  {
    fr = self->fr_;
    if (!fr)
    {
      goto LABEL_41;
    }

    index = fr->index_;
    if (index)
    {
      arcs = self->arcs_;
      if (!arcs)
      {
        goto LABEL_41;
      }

      size = arcs->super.size_;
      if (size <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      v7 = [(OrgApacheLuceneUtilFstFST *)index getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:arcs->elementType_];
      fr = self->fr_;
    }

    else
    {
      v7 = 0;
    }

    JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:v7 withOrgApacheLuceneUtilBytesRef:fr->rootCode_ withInt:0]);
    currentFrame = self->currentFrame_;
    if (!currentFrame)
    {
LABEL_41:
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame loadBlock];
  }

  v9 = self->currentFrame_;
  if (!v9)
  {
    goto LABEL_41;
  }

  self->targetBeforeCurrentLength_ = v9->ord_;
  v10 = self->currentFrame_;
  if (v10 == self->staticFrame_)
  {
    term = self->term_;
    if (!term)
    {
      goto LABEL_41;
    }

    [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self seekExactWithOrgApacheLuceneUtilBytesRef:[(OrgApacheLuceneUtilBytesRefBuilder *)term get]];
    v10 = self->currentFrame_;
  }

  if (v10->nextEnt_ != v10->entCount_)
  {
    goto LABEL_33;
  }

  do
  {
    if (!v10->isLastInFloor_)
    {
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v10 loadNextFloorBlock];
      goto LABEL_32;
    }

    ord = v10->ord_;
    if (!ord)
    {
      v19 = self->term_;
      if (v19)
      {
        [(OrgApacheLuceneUtilBytesRefBuilder *)v19 clear];
        self->validIndexPrefix_ = 0;
        [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ rewind];
        self->termExists_ = 0;
        return 0;
      }

      goto LABEL_41;
    }

    stack = self->stack_;
    if (!stack)
    {
      goto LABEL_41;
    }

    fpOrig = v10->fpOrig_;
    v15 = stack->super.size_;
    v16 = ord - 1;
    if (v16 < 0 || v16 >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, v16);
    }

    JreStrongAssign(&self->currentFrame_, (&stack->elementType_)[v16]);
    v17 = self->currentFrame_;
    if (!v17)
    {
      goto LABEL_41;
    }

    if (v17->nextEnt_ == -1 || v17->lastSubFP_ != fpOrig)
    {
      v18 = self->term_;
      if (!v18)
      {
        goto LABEL_41;
      }

      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v17 scanToFloorFrameWithOrgApacheLuceneUtilBytesRef:[(OrgApacheLuceneUtilBytesRefBuilder *)v18 get]];
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ loadBlock];
      [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ scanToSubBlockWithLong:fpOrig];
      v17 = self->currentFrame_;
    }

    self->validIndexPrefix_ = JavaLangMath_minWithInt_withInt_(self->validIndexPrefix_, v17->prefix_);
    v10 = self->currentFrame_;
  }

  while (v10->nextEnt_ == v10->entCount_);
LABEL_33:
  while (1)
  {
    next = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v10 next];
    v22 = self->term_;
    if (!next)
    {
      break;
    }

    if (v22)
    {
      JreStrongAssign(&self->currentFrame_, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum *)self pushFrameWithOrgApacheLuceneUtilFstFST_Arc:0 withLong:self->currentFrame_->lastSubFP_ withInt:[(OrgApacheLuceneUtilBytesRefBuilder *)v22 length]]);
      v23 = self->currentFrame_;
      if (v23)
      {
        [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)v23 loadBlock];
LABEL_32:
        v10 = self->currentFrame_;
        if (v10)
        {
          continue;
        }
      }
    }

    goto LABEL_41;
  }

  if (!v22)
  {
    goto LABEL_41;
  }

  return [(OrgApacheLuceneUtilBytesRefBuilder *)v22 get];
}

- (id)term
{
  term = self->term_;
  if (!term)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneUtilBytesRefBuilder *)term get];
}

- (int)docFreq
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame decodeMetaData], (state = self->currentFrame_->state_) == 0))
  {
    JreThrowNullPointerException();
  }

  return state->docFreq_;
}

- (int64_t)totalTermFreq
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame decodeMetaData], (state = self->currentFrame_->state_) == 0))
  {
    JreThrowNullPointerException();
  }

  return state->totalTermFreq_;
}

- (id)postingsWithOrgApacheLuceneIndexPostingsEnum:(id)enum withInt:(int)int
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || (v6 = *&int, [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame decodeMetaData], (fr = self->fr_) == 0) || (Weak = objc_loadWeak(&fr->parent_)) == 0 || (v10 = Weak[2]) == 0)
  {
    JreThrowNullPointerException();
  }

  fieldInfo = self->fr_->fieldInfo_;
  state = self->currentFrame_->state_;

  return [v10 postingsWithOrgApacheLuceneIndexFieldInfo:fieldInfo withOrgApacheLuceneCodecsBlockTermState:state withOrgApacheLuceneIndexPostingsEnum:enum withInt:v6];
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(id)ref withOrgApacheLuceneIndexTermState:(id)state
{
  if (!ref)
  {
    goto LABEL_9;
  }

  term = self->term_;
  if (!term)
  {
    goto LABEL_9;
  }

  if ([ref compareToWithId:{-[OrgApacheLuceneUtilBytesRefBuilder get](term, "get")}] || !self->termExists_)
  {
    JreStrongAssign(&self->currentFrame_, self->staticFrame_);
    currentFrame = self->currentFrame_;
    if (currentFrame)
    {
      state = currentFrame->state_;
      if (state)
      {
        [(OrgApacheLuceneCodecsBlockTermState *)state copyFromWithOrgApacheLuceneIndexTermState:state];
        [(OrgApacheLuceneUtilBytesRefBuilder *)self->term_ copyBytesWithOrgApacheLuceneUtilBytesRef:ref];
        self->currentFrame_->metaDataUpto_ = [(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)self->currentFrame_ getTermBlockOrd];
        self->validIndexPrefix_ = 0;
        return;
      }
    }

LABEL_9:
    JreThrowNullPointerException();
  }
}

- (id)termState
{
  currentFrame = self->currentFrame_;
  if (!currentFrame || ([(OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame *)currentFrame decodeMetaData], (state = self->currentFrame_->state_) == 0))
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexTermState *)state clone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum;
  [(OrgApacheLuceneIndexTermsEnum *)&v3 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v5 = [IOSObjectArray newArrayWithLength:0 type:OrgApacheLuceneCodecsBlocktreeSegmentTermsEnumFrame_class_(v3, v4)];
    JreStrongAssignAndConsume(&qword_100554540, v5);
    atomic_store(1u, &OrgApacheLuceneCodecsBlocktreeSegmentTermsEnum__initialized);
  }
}

@end
@interface OrgApacheLuceneUtilFstBuilder_UnCompiledNode
- (id)getLastOutputWithInt:(int)int;
- (void)__javaClone;
- (void)addArcWithInt:(int)int withOrgApacheLuceneUtilFstBuilder_Node:(id)node;
- (void)clear;
- (void)dealloc;
- (void)prependOutputWithId:(id)id;
- (void)replaceLastWithInt:(int)int withOrgApacheLuceneUtilFstBuilder_Node:(id)node withId:(id)id withBoolean:(BOOL)boolean;
- (void)setLastOutputWithInt:(int)int withId:(id)id;
@end

@implementation OrgApacheLuceneUtilFstBuilder_UnCompiledNode

- (void)clear
{
  self->numArcs_ = 0;
  self->isFinal_ = 0;
  Weak = objc_loadWeak(&self->owner_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  JreStrongAssign(&self->output_, Weak[9]);
  self->inputCount_ = 0;
}

- (id)getLastOutputWithInt:(int)int
{
  arcs = self->arcs_;
  numArcs = self->numArcs_;
  size = arcs->super.size_;
  v6 = numArcs - 1;
  if (numArcs - 1 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v7 = (&arcs->elementType_)[v6];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  return v7[4].super.isa;
}

- (void)addArcWithInt:(int)int withOrgApacheLuceneUtilFstBuilder_Node:(id)node
{
  p_arcs = &self->arcs_;
  arcs = self->arcs_;
  numArcs = self->numArcs_;
  if (numArcs == arcs->super.size_)
  {
    if ((atomic_load_explicit(&OrgApacheLuceneUtilRamUsageEstimator__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000120A8();
    }

    v14 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(numArcs + 1, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF_, *&int, node, v4, v5, v6, v7);
    if (qword_100554848 != -1)
    {
      sub_100138564();
    }

    v15 = [IOSObjectArray arrayWithLength:v14 type:qword_100554840];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->arcs_, 0, v15, 0, self->arcs_->super.size_);
    v16 = self->numArcs_;
    if (v16 < v15->super.size_)
    {
      do
      {
        IOSObjectArray_SetAndConsume(v15, v16++, [OrgApacheLuceneUtilFstBuilder_Arc alloc]);
      }

      while (v16 < v15->super.size_);
    }

    JreStrongAssign(p_arcs, v15);
    arcs = self->arcs_;
    numArcs = self->numArcs_;
  }

  self->numArcs_ = numArcs + 1;
  size = arcs->super.size_;
  if (numArcs < 0 || numArcs >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, numArcs);
  }

  v18 = (&arcs->elementType_)[numArcs];
  if (!v18 || (LODWORD(v18[1].super.isa) = int, objc_storeWeak(&v18[2].super.isa, node), (Weak = objc_loadWeak(&self->owner_)) == 0))
  {
    JreThrowNullPointerException();
  }

  v20 = JreStrongAssign(&v18[5].super.isa, Weak[9]);
  JreStrongAssign(&v18[4].super.isa, v20);
  LOBYTE(v18[3].super.isa) = 0;
}

- (void)replaceLastWithInt:(int)int withOrgApacheLuceneUtilFstBuilder_Node:(id)node withId:(id)id withBoolean:(BOOL)boolean
{
  arcs = self->arcs_;
  if (!arcs)
  {
    JreThrowNullPointerException();
  }

  numArcs = self->numArcs_;
  size = arcs->super.size_;
  v11 = numArcs - 1;
  if (numArcs - 1 < 0 || v11 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (numArcs - 1));
  }

  v12 = (&arcs->elementType_)[v11];
  objc_storeWeak(&v12[2].super.isa, node);
  JreStrongAssign(&v12[5].super.isa, id);
  LOBYTE(v12[3].super.isa) = boolean;
}

- (void)setLastOutputWithInt:(int)int withId:(id)id
{
  arcs = self->arcs_;
  if (!arcs)
  {
    JreThrowNullPointerException();
  }

  numArcs = self->numArcs_;
  size = arcs->super.size_;
  v7 = numArcs - 1;
  if (numArcs - 1 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (numArcs - 1));
  }

  p_isa = &(&arcs->elementType_)[v7][4].super.isa;

  JreStrongAssign(p_isa, id);
}

- (void)prependOutputWithId:(id)id
{
  if (self->numArcs_ >= 1)
  {
    v5 = 0;
    while (1)
    {
      arcs = self->arcs_;
      if (!arcs)
      {
        break;
      }

      size = arcs->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v8 = (&arcs->elementType_)[v5];
      if (!v8)
      {
        break;
      }

      v9 = *(objc_loadWeak(&self->owner_) + 1);
      if (!v9)
      {
        break;
      }

      v10 = *(v9 + 40);
      if (!v10)
      {
        break;
      }

      v11 = self->arcs_;
      v12 = v11->super.size_;
      if (v5 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v5);
      }

      v13 = (&v11->elementType_)[v5];
      if (!v13)
      {
        break;
      }

      JreStrongAssign(&v8[4].super.isa, [v10 addWithId:id withId:v13[4].super.isa]);
      if (++v5 >= self->numArcs_)
      {
        goto LABEL_14;
      }
    }

LABEL_21:
    JreThrowNullPointerException();
  }

LABEL_14:
  if (self->isFinal_)
  {
    v14 = *(objc_loadWeak(&self->owner_) + 1);
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *(v14 + 40);
    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = [v15 addWithId:id withId:self->output_];

    JreStrongAssign(&self->output_, v16);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstBuilder_UnCompiledNode;
  [(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstBuilder_UnCompiledNode;
  [(OrgApacheLuceneUtilFstBuilder_UnCompiledNode *)&v3 __javaClone];
}

@end
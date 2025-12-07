@interface OrgApacheLuceneUtilAutomatonAutomaton_Builder
- (BOOL)isAcceptWithInt:(int)int;
- (id)finish;
- (int)createState;
- (void)addEpsilonWithInt:(int)int withInt:(int)withInt;
- (void)addTransitionWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6;
- (void)copyStatesWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton;
- (void)copy__WithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton;
- (void)dealloc;
- (void)setAcceptWithInt:(int)int withBoolean:(BOOL)boolean;
@end

@implementation OrgApacheLuceneUtilAutomatonAutomaton_Builder

- (void)addTransitionWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6
{
  p_transitions = &self->transitions_;
  transitions = self->transitions_;
  if (!transitions || (v15 = self->nextTransition_ + 4, transitions->super.size_ < v15) && (v16 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(self->transitions_, v15, *&int, *&withInt, *&a5, *&a6, v6, v7), JreStrongAssign(p_transitions, v16), (transitions = *p_transitions) == 0))
  {
    JreThrowNullPointerException();
  }

  nextTransition = self->nextTransition_;
  self->nextTransition_ = nextTransition + 1;
  size = transitions->super.size_;
  if (nextTransition < 0 || nextTransition >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, nextTransition);
  }

  *(&transitions->super.size_ + nextTransition + 1) = int;
  v19 = self->transitions_;
  v20 = self->nextTransition_;
  self->nextTransition_ = v20 + 1;
  v21 = v19->super.size_;
  if (v20 < 0 || v20 >= v21)
  {
    IOSArray_throwOutOfBoundsWithMsg(v21, v20);
  }

  *(&v19->super.size_ + v20 + 1) = withInt;
  v22 = self->transitions_;
  v23 = self->nextTransition_;
  self->nextTransition_ = v23 + 1;
  v24 = v22->super.size_;
  if (v23 < 0 || v23 >= v24)
  {
    IOSArray_throwOutOfBoundsWithMsg(v24, v23);
  }

  *(&v22->super.size_ + v23 + 1) = a5;
  v25 = self->transitions_;
  v26 = self->nextTransition_;
  self->nextTransition_ = v26 + 1;
  v27 = v25->super.size_;
  if (v26 < 0 || v26 >= v27)
  {
    IOSArray_throwOutOfBoundsWithMsg(v27, v26);
  }

  *(&v25->super.size_ + v26 + 1) = a6;
}

- (void)addEpsilonWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  if (self->nextTransition_ >= 1)
  {
    v7 = 0;
    do
    {
      transitions = self->transitions_;
      if (!transitions)
      {
        JreThrowNullPointerException();
      }

      size = transitions->super.size_;
      if ((v7 & 0x80000000) != 0 || v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      if (*(&transitions->super.size_ + v7 + 1) == v4)
      {
        v10 = self->transitions_;
        v11 = v7 + 1;
        v12 = v10->super.size_;
        if ((v7 & 0x80000000) != 0 || v11 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v11);
        }

        v13 = self->transitions_;
        v14 = *(&v10->super.size_ + v11 + 1);
        v15 = v7 + 2;
        if ((v7 & 0x80000000) != 0 || v15 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v15);
        }

        v16 = *(&v13->super.size_ + v15 + 1);
        v17 = v7 + 3;
        if ((v7 & 0x80000000) != 0 || v17 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v17);
        }

        [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self addTransitionWithInt:v5 withInt:v14 withInt:v16 withInt:*(&v13->super.size_ + v17 + 1)];
      }

      v7 = (v7 + 4);
    }

    while (v7 < self->nextTransition_);
  }

  if ([(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self isAcceptWithInt:v4])
  {

    [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self setAcceptWithInt:v5 withBoolean:1];
  }
}

- (id)finish
{
  nextState = self->nextState_;
  v4 = (self->nextTransition_ / 4);
  v5 = [OrgApacheLuceneUtilAutomatonAutomaton alloc];
  OrgApacheLuceneUtilAutomatonAutomaton_initWithInt_withInt_(v5, nextState, v4);
  v6 = v5;
  if (nextState >= 1)
  {
    v7 = 0;
    do
    {
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 createState];
      [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 setAcceptWithInt:v7 withBoolean:[(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self isAcceptWithInt:v7]];
      v7 = (v7 + 1);
    }

    while (nextState != v7);
  }

  sorter = self->sorter_;
  if (!sorter)
  {
    goto LABEL_23;
  }

  [(OrgApacheLuceneUtilSorter *)sorter sortWithInt:0 withInt:v4];
  if (self->nextTransition_ >= 1)
  {
    v9 = 0;
    while (1)
    {
      transitions = self->transitions_;
      if (!transitions)
      {
        break;
      }

      size = transitions->super.size_;
      if ((v9 & 0x80000000) != 0 || v9 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v9);
      }

      v13 = *(&transitions->super.size_ + v9 + 1);
      v14 = v9 + 1;
      if ((v9 & 0x80000000) != 0 || v14 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v14);
      }

      v12 = self->transitions_;
      v15 = *(&v12->super.size_ + v14 + 1);
      v16 = v9 + 2;
      if ((v9 & 0x80000000) != 0 || v16 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v16);
      }

      v17 = *(&v12->super.size_ + v16 + 1);
      v18 = v9 + 3;
      if ((v9 & 0x80000000) != 0 || v18 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v18);
      }

      [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 addTransitionWithInt:v13 withInt:v15 withInt:v17 withInt:*(&self->transitions_->super.size_ + v18 + 1)];
      v9 = (v9 + 4);
      if (v9 >= self->nextTransition_)
      {
        goto LABEL_22;
      }
    }

LABEL_23:
    JreThrowNullPointerException();
  }

LABEL_22:
  [(OrgApacheLuceneUtilAutomatonAutomaton *)v6 finishState];
  return v6;
}

- (int)createState
{
  nextState = self->nextState_;
  self->nextState_ = nextState + 1;
  return nextState;
}

- (void)setAcceptWithInt:(int)int withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v5 = *&int;
  if ([(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self getNumStates]<= int)
  {
    [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self getNumStates];
    v15 = JreStrcat("$I$IC", v8, v9, v10, v11, v12, v13, v14, @"state=");
    v16 = new_JavaLangIllegalArgumentException_initWithNSString_(v15);
    objc_exception_throw(v16);
  }

  isAccept = self->isAccept_;
  if (!isAccept)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilBitSet *)isAccept setWithInt:v5 withBoolean:booleanCopy];
}

- (BOOL)isAcceptWithInt:(int)int
{
  isAccept = self->isAccept_;
  if (!isAccept)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilBitSet *)isAccept getWithInt:*&int];
}

- (void)copy__WithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton
{
  getNumStates = [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self getNumStates];
  if (!automaton)
  {
    JreThrowNullPointerException();
  }

  v6 = getNumStates;
  getNumStates2 = [automaton getNumStates];
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self copyStatesWithOrgApacheLuceneUtilAutomatonAutomaton:automaton];
  v8 = new_OrgApacheLuceneUtilAutomatonTransition_init();
  if (getNumStates2 >= 1)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = [automaton initTransitionWithInt:v10 withOrgApacheLuceneUtilAutomatonTransition:v9];
      if (v11 >= 1)
      {
        v12 = v11;
        do
        {
          [automaton getNextTransitionWithOrgApacheLuceneUtilAutomatonTransition:v9];
          [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)self addTransitionWithInt:v10 + v6 withInt:v9->dest_ + v6 withInt:v9->min_ withInt:v9->max_];
          --v12;
        }

        while (v12);
      }

      v10 = (v10 + 1);
    }

    while (v10 != getNumStates2);
  }
}

- (void)copyStatesWithOrgApacheLuceneUtilAutomatonAutomaton:(id)automaton
{
  if (!automaton)
  {
    JreThrowNullPointerException();
  }

  getNumStates = [automaton getNumStates];
  if (getNumStates >= 1)
  {
    v6 = getNumStates;
    v7 = 0;
    do
    {
      -[OrgApacheLuceneUtilAutomatonAutomaton_Builder setAcceptWithInt:withBoolean:](self, "setAcceptWithInt:withBoolean:", -[OrgApacheLuceneUtilAutomatonAutomaton_Builder createState](self, "createState"), [automaton isAcceptWithInt:v7]);
      v7 = (v7 + 1);
    }

    while (v6 != v7);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonAutomaton_Builder;
  [(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)&v3 dealloc];
}

@end
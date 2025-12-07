@interface OrgApacheLuceneUtilTimSorter
+ (int)minRunWithInt:(int)int;
- (int)lowerSaved3WithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (int)lowerSavedWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (int)nextRun;
- (int)runBaseWithInt:(int)int;
- (int)runEndWithInt:(int)int;
- (int)runLenWithInt:(int)int;
- (int)upperSaved3WithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (int)upperSavedWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)dealloc;
- (void)doRotateWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)ensureInvariants;
- (void)exhaustStack;
- (void)mergeAtWithInt:(int)int;
- (void)mergeHiWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)mergeLoWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)mergeWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)pushRunLenWithInt:(int)int;
- (void)resetWithInt:(int)int withInt:(int)withInt;
- (void)setRunEndWithInt:(int)int withInt:(int)withInt;
- (void)sortWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilTimSorter

+ (int)minRunWithInt:(int)int
{
  if (int < 64)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    intCopy = int;
    do
    {
      v3 |= intCopy & 1;
      int = intCopy >> 1;
      v5 = intCopy > 0x7F;
      intCopy >>= 1;
    }

    while (v5);
  }

  return v3 + int;
}

- (int)runLenWithInt:(int)int
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  v4 = (self->stackSize_ - int);
  size = runEnds->super.size_;
  if ((v4 & 0x80000000) != 0 || v4 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v6 = runEnds;
  v7 = *(&runEnds->super.size_ + v4 + 1);
  v8 = (v4 - 1);
  if (v8 < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  return v7 - *(&v6->super.size_ + v8 + 1);
}

- (int)runBaseWithInt:(int)int
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  v6 = stackSize + ~int;
  if (v6 < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (stackSize + ~int));
  }

  return *(&runEnds->super.size_ + v6 + 1);
}

- (int)runEndWithInt:(int)int
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  v6 = stackSize - int;
  if (stackSize - int < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (stackSize - int));
  }

  return *(&runEnds->super.size_ + v6 + 1);
}

- (void)setRunEndWithInt:(int)int withInt:(int)withInt
{
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  v7 = stackSize - int;
  if (stackSize - int < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (stackSize - int));
  }

  *(&runEnds->super.size_ + v7 + 1) = withInt;
}

- (void)pushRunLenWithInt:(int)int
{
  runEnds = self->runEnds_;
  stackSize = self->stackSize_;
  size = runEnds->super.size_;
  if (stackSize < 0 || (v7 = runEnds, stackSize >= size))
  {
    IOSArray_throwOutOfBoundsWithMsg(size, stackSize);
  }

  v8 = *(&runEnds->super.size_ + stackSize + 1);
  v9 = self->stackSize_;
  v10 = v7->super.size_;
  v11 = v9 + 1;
  if (v9 + 1 < 0 || v11 >= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, (v9 + 1));
  }

  *(&v7->super.size_ + v11 + 1) = v8 + int;
  ++self->stackSize_;
}

- (int)nextRun
{
  v3 = [(OrgApacheLuceneUtilTimSorter *)self runEndWithInt:0];
  if (v3 == self->to_ - 1)
  {
    return 1;
  }

  v5 = v3;
  v6 = (v3 + 2);
  v7 = [(OrgApacheLuceneUtilTimSorter *)self compareWithInt:v3 withInt:(v3 + 1)];
  to = self->to_;
  if (v7 <= 0)
  {
    while (v6 < to && [(OrgApacheLuceneUtilTimSorter *)self compareWithInt:(v6 - 1) withInt:v6]<= 0)
    {
      v6 = (v6 + 1);
      to = self->to_;
    }
  }

  else
  {
    while (v6 < to && [(OrgApacheLuceneUtilTimSorter *)self compareWithInt:(v6 - 1) withInt:v6]>= 1)
    {
      v6 = (v6 + 1);
      to = self->to_;
    }

    [(OrgApacheLuceneUtilSorter *)self reverseWithInt:v5 withInt:v6];
  }

  v9 = JavaLangMath_minWithInt_withInt_(self->to_, self->minRun_ + v5);
  v10 = JavaLangMath_maxWithInt_withInt_(v6, v9);
  [(OrgApacheLuceneUtilSorter *)self binarySortWithInt:v5 withInt:v10 withInt:v6];
  return v10 - v5;
}

- (void)ensureInvariants
{
  while (self->stackSize_ >= 2)
  {
    v3 = [(OrgApacheLuceneUtilTimSorter *)self runLenWithInt:0];
    v4 = [(OrgApacheLuceneUtilTimSorter *)self runLenWithInt:1];
    if (self->stackSize_ > 2 && (v5 = [(OrgApacheLuceneUtilTimSorter *)self runLenWithInt:2], v5 <= v4 + v3))
    {
      v6 = v5 < v3;
    }

    else
    {
      if (v4 > v3)
      {
        return;
      }

      v6 = 0;
    }

    [(OrgApacheLuceneUtilTimSorter *)self mergeAtWithInt:v6];
  }
}

- (void)exhaustStack
{
  if (self->stackSize_ >= 2)
  {
    do
    {
      [(OrgApacheLuceneUtilTimSorter *)self mergeAtWithInt:0];
    }

    while (self->stackSize_ > 1);
  }
}

- (void)resetWithInt:(int)int withInt:(int)withInt
{
  self->stackSize_ = 0;
  JavaUtilArrays_fillWithIntArray_withInt_(self->runEnds_, 0);
  runEnds = self->runEnds_;
  if (!runEnds)
  {
    JreThrowNullPointerException();
  }

  size = runEnds->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  *(&runEnds->super.size_ + 1) = int;
  self->to_ = withInt;
  v9 = withInt - int;
  if (withInt - int >= 65)
  {
    v10 = 0;
    do
    {
      v10 |= v9 & 1;
      v11 = v9 >> 1;
      v12 = v9 > 0x7F;
      v9 >>= 1;
    }

    while (v12);
    v9 = v10 + v11;
  }

  self->minRun_ = v9;
}

- (void)mergeAtWithInt:(int)int
{
  v3 = *&int;
  [(OrgApacheLuceneUtilTimSorter *)self mergeWithInt:[(OrgApacheLuceneUtilTimSorter *)self runBaseWithInt:(int + 1)] withInt:[(OrgApacheLuceneUtilTimSorter *)self runBaseWithInt:v3] withInt:[(OrgApacheLuceneUtilTimSorter *)self runEndWithInt:v3]];
  if (v3 <= 0x7FFFFFFE)
  {
    do
    {
      v5 = v3 + 1;
      [(OrgApacheLuceneUtilTimSorter *)self setRunEndWithInt:(v3 + 1) withInt:[(OrgApacheLuceneUtilTimSorter *)self runEndWithInt:v3]];
      v3 = (v3 - 1);
    }

    while (v5 > 1);
  }

  --self->stackSize_;
}

- (void)mergeWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = (withInt - 1);
  if ([(OrgApacheLuceneUtilTimSorter *)self compareWithInt:v9 withInt:?]>= 1)
  {
    v10 = [(OrgApacheLuceneUtilSorter *)self upper2WithInt:v7 withInt:v6 withInt:v6];
    v11 = [(OrgApacheLuceneUtilSorter *)self lower2WithInt:v6 withInt:v5 withInt:v9];
    maxTempSlots = self->maxTempSlots_;
    if (v11 - v6 > v6 - v10 || v11 - v6 > maxTempSlots)
    {
      if (v6 - v10 <= maxTempSlots)
      {

        [(OrgApacheLuceneUtilTimSorter *)self mergeLoWithInt:v10 withInt:v6 withInt:v11];
      }

      else
      {

        [(OrgApacheLuceneUtilSorter *)self mergeInPlaceWithInt:v10 withInt:v6 withInt:v11];
      }
    }

    else
    {

      [(OrgApacheLuceneUtilTimSorter *)self mergeHiWithInt:v10 withInt:v6 withInt:v11];
    }
  }
}

- (void)sortWithInt:(int)int withInt:(int)withInt
{
  v4 = *&withInt;
  v5 = *&int;
  [OrgApacheLuceneUtilSorter checkRangeWithInt:"checkRangeWithInt:withInt:" withInt:?];
  if (v4 - v5 >= 2)
  {
    [(OrgApacheLuceneUtilTimSorter *)self resetWithInt:v5 withInt:v4];
    do
    {
      [(OrgApacheLuceneUtilTimSorter *)self ensureInvariants];
      [(OrgApacheLuceneUtilTimSorter *)self pushRunLenWithInt:[(OrgApacheLuceneUtilTimSorter *)self nextRun]];
    }

    while ([(OrgApacheLuceneUtilTimSorter *)self runEndWithInt:0]< v4);

    [(OrgApacheLuceneUtilTimSorter *)self exhaustStack];
  }
}

- (void)doRotateWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = withInt - int;
  v10 = a5 - withInt;
  if (withInt - int == a5 - withInt)
  {
    if (a5 > withInt)
    {
      do
      {
        v11 = v6 + 1;
        [(OrgApacheLuceneUtilTimSorter *)self swapWithInt:v7 withInt:v6];
        v7 = (v7 + 1);
        v6 = (v6 + 1);
      }

      while (v5 != v11);
    }
  }

  else
  {
    maxTempSlots = self->maxTempSlots_;
    if (v10 >= v9 || v10 > maxTempSlots)
    {
      if (v9 <= maxTempSlots)
      {
        [OrgApacheLuceneUtilTimSorter saveWithInt:"saveWithInt:withInt:" withInt:?];
        if (v5 > v6)
        {
          v16 = v7;
          do
          {
            [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:v6 withInt:v16];
            v6 = (v6 + 1);
            v16 = (v16 + 1);
          }

          while (v5 != v6);
        }

        v17 = (v10 + v7);
        if (v17 < v5)
        {
          v18 = 0;
          do
          {
            [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v18 withInt:v17];
            v18 = (v18 + 1);
            v17 = (v17 + 1);
          }

          while (v9 != v18);
        }
      }

      else
      {
        [OrgApacheLuceneUtilSorter reverseWithInt:"reverseWithInt:withInt:" withInt:?];
        [(OrgApacheLuceneUtilSorter *)self reverseWithInt:v6 withInt:v5];

        [(OrgApacheLuceneUtilSorter *)self reverseWithInt:v7 withInt:v5];
      }
    }

    else
    {
      [(OrgApacheLuceneUtilTimSorter *)self saveWithInt:*&withInt withInt:(a5 - withInt)];
      v13 = (v6 - 1);
      if (v13 >= v7)
      {
        v14 = (v5 - 1);
        do
        {
          [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:v13 withInt:v14];
          v13 = (v13 - 1);
          v14 = (v14 - 1);
        }

        while (v13 >= v7);
      }

      if (v10 >= 1)
      {
        v15 = 0;
        do
        {
          [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v15 withInt:v7];
          v15 = (v15 + 1);
          v7 = (v7 + 1);
        }

        while (v10 != v15);
      }
    }
  }
}

- (void)mergeLoWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = withInt - int;
  [OrgApacheLuceneUtilTimSorter saveWithInt:"saveWithInt:withInt:" withInt:?];
  [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:v6 withInt:v7];
  v10 = 0;
  v11 = (v6 + 1);
LABEL_2:
  v12 = 0;
  v7 = (v7 + 1);
  while (v10 < v9 && v11 < v5)
  {
    if ([(OrgApacheLuceneUtilTimSorter *)self compareSavedWithInt:v10 withInt:v11]<= 0)
    {
      [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v10 withInt:v7];
      v12 = 0;
      v10 = (v10 + 1);
    }

    else
    {
      [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:v11 withInt:v7];
      ++v12;
      v11 = (v11 + 1);
    }

    v7 = (v7 + 1);
    if (v12 >= 7)
    {
      v13 = [(OrgApacheLuceneUtilTimSorter *)self lowerSaved3WithInt:v11 withInt:v5 withInt:v10];
      if (v11 < v13)
      {
        v14 = v13;
        do
        {
          v15 = v11 + 1;
          [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:v11 withInt:v7];
          v7 = (v7 + 1);
          v11 = (v11 + 1);
        }

        while (v14 != v15);
        v11 = v14;
      }

      [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v10 withInt:v7];
      v10 = (v10 + 1);
      goto LABEL_2;
    }
  }

  if (v10 < v9)
  {
    do
    {
      v16 = v10 + 1;
      [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v10 withInt:v7];
      v7 = (v7 + 1);
      v10 = (v10 + 1);
    }

    while (v16 < v9);
  }
}

- (void)mergeHiWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v7 = *&int;
  LODWORD(v9) = a5 - withInt;
  [(OrgApacheLuceneUtilTimSorter *)self saveWithInt:*&withInt withInt:(a5 - withInt)];
  [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:(withInt - 1) withInt:(a5 - 1)];
  v10 = (withInt - 2);
  v11 = (a5 - 2);
LABEL_2:
  v12 = 0;
  v9 = (v9 - 1);
  while (v10 >= v7 && (v9 & 0x80000000) == 0)
  {
    if (([(OrgApacheLuceneUtilTimSorter *)self compareSavedWithInt:v9 withInt:v10]& 0x80000000) != 0)
    {
      [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:v10 withInt:v11];
      ++v12;
      v10 = (v10 - 1);
    }

    else
    {
      [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v9 withInt:v11];
      v12 = 0;
      v9 = (v9 - 1);
    }

    v11 = (v11 - 1);
    if (v12 >= 7)
    {
      v13 = [(OrgApacheLuceneUtilTimSorter *)self upperSaved3WithInt:v7 withInt:(v10 + 1) withInt:v9];
      if (v10 >= v13)
      {
        v16 = v13;
        do
        {
          v15 = (v10 - 1);
          v14 = (v11 - 1);
          [(OrgApacheLuceneUtilTimSorter *)self copy__WithInt:v10 withInt:v11];
          v10 = v15;
          v11 = v14;
        }

        while (v15 >= v16);
      }

      else
      {
        v14 = v11;
        v15 = v10;
      }

      v11 = (v14 - 1);
      [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v9 withInt:v14];
      v10 = v15;
      goto LABEL_2;
    }
  }

  if ((v9 & 0x80000000) == 0)
  {
    do
    {
      v17 = v9 - 1;
      [(OrgApacheLuceneUtilTimSorter *)self restoreWithInt:v9 withInt:v11];
      v11 = (v11 - 1);
      v9 = (v9 - 1);
    }

    while (v17 != -1);
  }
}

- (int)lowerSavedWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  intCopy = int;
  v6 = withInt - int;
  if (withInt - int >= 1)
  {
    v7 = *&a5;
    do
    {
      v9 = intCopy + (v6 >> 1);
      v10 = [(OrgApacheLuceneUtilTimSorter *)self compareSavedWithInt:v7 withInt:v9];
      if (v10 <= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v10 > 0)
      {
        intCopy = v9 + 1;
      }
    }

    while (v6 > 0);
  }

  return intCopy;
}

- (int)upperSavedWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  intCopy = int;
  v6 = withInt - int;
  if (withInt - int >= 1)
  {
    v7 = *&a5;
    do
    {
      v9 = intCopy + (v6 >> 1);
      v10 = [(OrgApacheLuceneUtilTimSorter *)self compareSavedWithInt:v7 withInt:v9];
      if (v10 >= 0)
      {
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }

      if (v10 >= 0)
      {
        intCopy = v9 + 1;
      }
    }

    while (v6 > 0);
  }

  return intCopy;
}

- (int)lowerSaved3WithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = (int + 1);
  if (v9 >= withInt)
  {
    v10 = *&int;
LABEL_6:
    selfCopy2 = self;
    v12 = v10;
    v13 = v6;
  }

  else
  {
    while (1)
    {
      v10 = v9;
      if ([(OrgApacheLuceneUtilTimSorter *)self compareSavedWithInt:v5 withInt:v9]<= 0)
      {
        break;
      }

      v9 = (v10 + 2 * (v10 - v7));
      v7 = v10;
      if (v9 >= v6)
      {
        goto LABEL_6;
      }
    }

    selfCopy2 = self;
    v12 = v7;
    v13 = v10;
  }

  return [(OrgApacheLuceneUtilTimSorter *)selfCopy2 lowerSavedWithInt:v12 withInt:v13 withInt:v5];
}

- (int)upperSaved3WithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  v7 = *&int;
  v9 = (withInt - 1);
  if (v9 <= int)
  {
    v10 = *&withInt;
LABEL_6:
    selfCopy2 = self;
    v12 = v7;
    v13 = v10;
  }

  else
  {
    while (1)
    {
      v10 = v9;
      if (([(OrgApacheLuceneUtilTimSorter *)self compareSavedWithInt:v5 withInt:v9]& 0x80000000) == 0)
      {
        break;
      }

      v9 = (v10 + 2 * (v10 - v6));
      v6 = v10;
      if (v9 <= v7)
      {
        goto LABEL_6;
      }
    }

    selfCopy2 = self;
    v12 = v10;
    v13 = v6;
  }

  return [(OrgApacheLuceneUtilTimSorter *)selfCopy2 upperSavedWithInt:v12 withInt:v13 withInt:v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilTimSorter;
  [(OrgApacheLuceneUtilTimSorter *)&v3 dealloc];
}

@end
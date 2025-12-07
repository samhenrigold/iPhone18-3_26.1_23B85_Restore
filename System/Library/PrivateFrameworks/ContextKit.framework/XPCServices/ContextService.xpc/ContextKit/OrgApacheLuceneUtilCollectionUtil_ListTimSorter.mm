@interface OrgApacheLuceneUtilCollectionUtil_ListTimSorter
- (int)compareSavedWithInt:(int)int withInt:(int)withInt;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)restoreWithInt:(int)int withInt:(int)withInt;
- (void)saveWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilCollectionUtil_ListTimSorter

- (void)copy__WithInt:(int)int withInt:(int)withInt
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v5 = *&withInt;
  v6 = [(JavaUtilList *)self->list_ getWithInt:*&int];

  [(JavaUtilList *)list setWithInt:v5 withId:v6];
}

- (void)saveWithInt:(int)int withInt:(int)withInt
{
  if (withInt >= 1)
  {
    v4 = *&int;
    v6 = 0;
    withIntCopy = withInt;
    do
    {
      tmp = self->tmp_;
      if (!tmp || (list = self->list_) == 0)
      {
        JreThrowNullPointerException();
      }

      IOSObjectArray_Set(tmp, v6++, [(JavaUtilList *)list getWithInt:v4]);
      v4 = (v4 + 1);
    }

    while (withIntCopy != v6);
  }
}

- (void)restoreWithInt:(int)int withInt:(int)withInt
{
  list = self->list_;
  if (!list || (tmp = self->tmp_) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = *&withInt;
  size = tmp->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v8 = (&tmp->elementType_)[int];

  [(JavaUtilList *)list setWithInt:v6 withId:v8];
}

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  comp = self->comp_;
  if (!comp || (list = self->list_) == 0)
  {
    JreThrowNullPointerException();
  }

  v7 = *&withInt;
  v8 = [(JavaUtilList *)list getWithInt:*&int];
  v9 = [(JavaUtilList *)self->list_ getWithInt:v7];

  return [(JavaUtilComparator *)comp compareWithId:v8 withId:v9];
}

- (int)compareSavedWithInt:(int)int withInt:(int)withInt
{
  comp = self->comp_;
  if (!comp)
  {
    goto LABEL_9;
  }

  tmp = self->tmp_;
  if (!tmp)
  {
    goto LABEL_9;
  }

  size = tmp->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  list = self->list_;
  if (!list)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v9 = (&tmp->elementType_)[int];
  v10 = [(JavaUtilList *)list getWithInt:*&withInt, *&withInt];

  return [(JavaUtilComparator *)comp compareWithId:v9 withId:v10];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilCollectionUtil_ListTimSorter;
  [(OrgApacheLuceneUtilTimSorter *)&v3 dealloc];
}

@end
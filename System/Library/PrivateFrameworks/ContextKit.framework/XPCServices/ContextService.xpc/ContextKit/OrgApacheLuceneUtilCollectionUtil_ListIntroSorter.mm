@interface OrgApacheLuceneUtilCollectionUtil_ListIntroSorter
- (int)comparePivotWithInt:(int)int;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setPivotWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilCollectionUtil_ListIntroSorter

- (void)setPivotWithInt:(int)int
{
  list = self->list_;
  if (!list)
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)list getWithInt:*&int];

  JreStrongAssign(&self->pivot_, v5);
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

- (int)comparePivotWithInt:(int)int
{
  comp = self->comp_;
  if (!comp || !self->list_)
  {
    JreThrowNullPointerException();
  }

  pivot = self->pivot_;
  v5 = [(JavaUtilList *)self->list_ getWithInt:*&int];

  return [(JavaUtilComparator *)comp compareWithId:pivot withId:v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilCollectionUtil_ListIntroSorter;
  [(OrgApacheLuceneUtilCollectionUtil_ListIntroSorter *)&v3 dealloc];
}

@end
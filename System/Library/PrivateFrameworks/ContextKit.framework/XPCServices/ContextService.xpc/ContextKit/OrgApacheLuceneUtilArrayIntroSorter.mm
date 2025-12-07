@interface OrgApacheLuceneUtilArrayIntroSorter
- (int)comparePivotWithInt:(int)int;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setPivotWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilArrayIntroSorter

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  comparator = self->comparator_;
  if (!comparator || (arr = self->arr_) == 0)
  {
    JreThrowNullPointerException();
  }

  size = arr->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  v7 = (&arr->elementType_)[withInt];
  v8 = (&arr->elementType_)[int];

  return [(JavaUtilComparator *)comparator compareWithId:v8 withId:v7];
}

- (void)setPivotWithInt:(int)int
{
  arr = self->arr_;
  if (!arr)
  {
    JreThrowNullPointerException();
  }

  size = arr->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v6 = (&arr->elementType_)[int];

  JreStrongAssign(&self->pivot_, v6);
}

- (int)comparePivotWithInt:(int)int
{
  comparator = self->comparator_;
  if (!comparator || (arr = self->arr_) == 0)
  {
    JreThrowNullPointerException();
  }

  pivot = self->pivot_;
  size = arr->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v7 = (&arr->elementType_)[int];

  return [(JavaUtilComparator *)comparator compareWithId:pivot withId:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilArrayIntroSorter;
  [(OrgApacheLuceneUtilArrayIntroSorter *)&v3 dealloc];
}

@end
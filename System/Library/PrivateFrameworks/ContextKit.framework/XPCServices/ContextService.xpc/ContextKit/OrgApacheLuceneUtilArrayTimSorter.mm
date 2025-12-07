@interface OrgApacheLuceneUtilArrayTimSorter
- (int)compareSavedWithInt:(int)int withInt:(int)withInt;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)restoreWithInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilArrayTimSorter

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

- (void)copy__WithInt:(int)int withInt:(int)withInt
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

  IOSObjectArray_Set(arr, withInt, v6);
}

- (void)restoreWithInt:(int)int withInt:(int)withInt
{
  arr = self->arr_;
  if (!arr || (tmp = self->tmp_) == 0)
  {
    JreThrowNullPointerException();
  }

  size = tmp->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v7 = (&tmp->elementType_)[int];

  IOSObjectArray_Set(arr, withInt, v7);
}

- (int)compareSavedWithInt:(int)int withInt:(int)withInt
{
  comparator = self->comparator_;
  if (!comparator)
  {
    goto LABEL_11;
  }

  tmp = self->tmp_;
  if (!tmp)
  {
    goto LABEL_11;
  }

  size = tmp->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  arr = self->arr_;
  if (!arr)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v9 = arr->super.size_;
  if (withInt < 0 || v9 <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, *&withInt);
  }

  v10 = (&arr->elementType_)[withInt];
  v11 = (&tmp->elementType_)[int];

  return [(JavaUtilComparator *)comparator compareWithId:v11 withId:v10];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilArrayTimSorter;
  [(OrgApacheLuceneUtilTimSorter *)&v3 dealloc];
}

@end
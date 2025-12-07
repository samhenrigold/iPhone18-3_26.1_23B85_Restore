@interface OrgApacheLuceneSearchFieldComparator_DocComparator
- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context;
- (id)valueWithInt:(int)int;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setBottomWithInt:(int)int;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_DocComparator

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  docIDs = self->docIDs_;
  if (!docIDs)
  {
    JreThrowNullPointerException();
  }

  size = docIDs->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  return *(&docIDs->super.size_ + int + 1) - *(&docIDs->super.size_ + withInt + 1);
}

- (void)copy__WithInt:(int)int withInt:(int)withInt
{
  docIDs = self->docIDs_;
  if (!docIDs)
  {
    JreThrowNullPointerException();
  }

  docBase = self->docBase_;
  size = docIDs->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  *(&docIDs->super.size_ + int + 1) = docBase + withInt;
}

- (id)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  *(self + 4) = *(context + 8);
  return self;
}

- (void)setBottomWithInt:(int)int
{
  docIDs = self->docIDs_;
  if (!docIDs)
  {
    JreThrowNullPointerException();
  }

  size = docIDs->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  self->bottom_ = *(&docIDs->super.size_ + int + 1);
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  self->topValue_ = [id intValue];
}

- (id)valueWithInt:(int)int
{
  docIDs = self->docIDs_;
  if (!docIDs)
  {
    JreThrowNullPointerException();
  }

  size = docIDs->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v5 = *(&docIDs->super.size_ + int + 1);

  return JavaLangInteger_valueOfWithInt_(v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_DocComparator;
  [(OrgApacheLuceneSearchFieldComparator_DocComparator *)&v3 dealloc];
}

@end
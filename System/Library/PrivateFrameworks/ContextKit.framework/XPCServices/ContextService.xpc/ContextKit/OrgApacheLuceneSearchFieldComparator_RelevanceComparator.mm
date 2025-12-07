@interface OrgApacheLuceneSearchFieldComparator_RelevanceComparator
- (id)valueWithInt:(int)int;
- (int)compareBottomWithInt:(int)int;
- (int)compareTopWithInt:(int)int;
- (int)compareValuesWithId:(id)id withId:(id)withId;
- (int)compareWithInt:(int)int withInt:(int)withInt;
- (void)copy__WithInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)setBottomWithInt:(int)int;
- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer;
- (void)setTopValueWithId:(id)id;
@end

@implementation OrgApacheLuceneSearchFieldComparator_RelevanceComparator

- (int)compareWithInt:(int)int withInt:(int)withInt
{
  scores = self->scores_;
  if (!scores)
  {
    JreThrowNullPointerException();
  }

  size = scores->super.size_;
  if (withInt < 0 || size <= withInt)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&withInt);
  }

  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v6 = *(&scores->super.size_ + int + 1);
  v7 = *(&scores->super.size_ + withInt + 1);

  return JavaLangFloat_compareWithFloat_withFloat_(v7, v6);
}

- (int)compareBottomWithInt:(int)int
{
  scorer = self->scorer_;
  if (!scorer)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchScorer *)scorer score];
  bottom = self->bottom_;

  return JavaLangFloat_compareWithFloat_withFloat_(v5, bottom);
}

- (void)copy__WithInt:(int)int withInt:(int)withInt
{
  scorer = self->scorer_;
  if (!scorer || (v6 = *&int, [(OrgApacheLuceneSearchScorer *)scorer score:*&int], (scores = self->scores_) == 0))
  {
    JreThrowNullPointerException();
  }

  size = scores->super.size_;
  if ((v6 & 0x80000000) != 0 || size <= v6)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  *(&scores->super.size_ + v6 + 1) = v7;
}

- (void)setBottomWithInt:(int)int
{
  scores = self->scores_;
  if (!scores)
  {
    JreThrowNullPointerException();
  }

  size = scores->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  self->bottom_ = *(&scores->super.size_ + int + 1);
}

- (void)setTopValueWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  [id floatValue];
  self->topValue_ = v4;
}

- (void)setScorerWithOrgApacheLuceneSearchScorer:(id)scorer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    JreStrongAssign(&self->scorer_, scorer);
  }

  else
  {
    v5 = new_OrgApacheLuceneSearchScoreCachingWrappingScorer_initWithOrgApacheLuceneSearchScorer_(scorer);

    JreStrongAssignAndConsume(&self->scorer_, v5);
  }
}

- (id)valueWithInt:(int)int
{
  scores = self->scores_;
  if (!scores)
  {
    JreThrowNullPointerException();
  }

  size = scores->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  v5 = *(&scores->super.size_ + int + 1);

  return JavaLangFloat_valueOfWithFloat_(size, a2, v5);
}

- (int)compareValuesWithId:(id)id withId:(id)withId
{
  if (!withId)
  {
    JreThrowNullPointerException();
  }

  return [withId compareToWithId:id];
}

- (int)compareTopWithInt:(int)int
{
  scorer = self->scorer_;
  if (!scorer)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneSearchScorer *)scorer score];
  topValue = self->topValue_;

  return JavaLangFloat_compareWithFloat_withFloat_(v5, topValue);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchFieldComparator_RelevanceComparator;
  [(OrgApacheLuceneSearchFieldComparator_RelevanceComparator *)&v3 dealloc];
}

@end
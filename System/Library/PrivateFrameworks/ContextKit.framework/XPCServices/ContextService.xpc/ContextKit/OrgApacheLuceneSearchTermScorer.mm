@interface OrgApacheLuceneSearchTermScorer
- (float)score;
- (id)description;
- (int)advanceWithInt:(int)int;
- (int)docID;
- (int)freq;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchTermScorer

- (int)docID
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum docID];
}

- (int)freq
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum freq];
}

- (int)nextDoc
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum nextDoc];
}

- (float)score
{
  docScorer = self->docScorer_;
  if (!docScorer || (postingsEnum = self->postingsEnum_) == 0)
  {
    JreThrowNullPointerException();
  }

  docID = [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum docID];
  *&v6 = [(OrgApacheLuceneIndexPostingsEnum *)self->postingsEnum_ freq];

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer scoreWithInt:docID withFloat:v6];
  return result;
}

- (int)advanceWithInt:(int)int
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum advanceWithInt:*&int];
}

- (int64_t)cost
{
  postingsEnum = self->postingsEnum_;
  if (!postingsEnum)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneIndexPostingsEnum *)postingsEnum cost];
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchTermScorer;
  [(OrgApacheLuceneSearchTermScorer *)&v10 description];
  return JreStrcat("$@$$C", v2, v3, v4, v5, v6, v7, v8, @"scorer(");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTermScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
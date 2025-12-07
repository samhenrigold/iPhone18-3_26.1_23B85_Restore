@interface OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_TFIDFSimScorer
- (float)scoreWithInt:(int)int withFloat:(float)float;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_TFIDFSimScorer

- (float)scoreWithInt:(int)int withFloat:(float)float
{
  v4 = *&int;
  [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self->this$0_ tfWithFloat:?];
  v7 = v6 * self->weightValue_;
  norms = self->norms_;
  if (norms)
  {
    [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity *)self->this$0_ decodeNormValueWithLong:[(OrgApacheLuceneIndexNumericDocValues *)norms getWithInt:v4]];
    return v7 * v9;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_TFIDFSimScorer;
  [(OrgApacheLuceneSearchSimilaritiesTFIDFSimilarity_TFIDFSimScorer *)&v3 dealloc];
}

@end
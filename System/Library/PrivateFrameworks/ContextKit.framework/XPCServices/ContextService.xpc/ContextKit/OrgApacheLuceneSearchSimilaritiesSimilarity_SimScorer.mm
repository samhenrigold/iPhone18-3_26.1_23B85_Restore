@interface OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer
- (id)explainWithInt:(int)int withOrgApacheLuceneSearchExplanation:(id)explanation;
@end

@implementation OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer

- (id)explainWithInt:(int)int withOrgApacheLuceneSearchExplanation:(id)explanation
{
  if (!explanation)
  {
    JreThrowNullPointerException();
  }

  v5 = *&int;
  [explanation getValue];
  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)self scoreWithInt:v5 withFloat:?];
  v8 = v7;
  [explanation getValue];
  v16 = JreStrcat("$I$F$", v9, v10, v11, v12, v13, v14, v15, @"score(doc=");
  v17 = JavaUtilCollections_singletonWithId_(explanation);

  return OrgApacheLuceneSearchExplanation_matchWithFloat_withNSString_withJavaUtilCollection_(v8, v16, v17);
}

@end
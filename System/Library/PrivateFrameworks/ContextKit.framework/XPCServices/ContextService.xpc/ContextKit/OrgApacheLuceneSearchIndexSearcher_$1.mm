@interface OrgApacheLuceneSearchIndexSearcher_$1
- (id)computeWeightWithFloat:(float)float withOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatisticsArray:(id)array;
- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)weight withOrgApacheLuceneIndexLeafReaderContext:(id)context;
@end

@implementation OrgApacheLuceneSearchIndexSearcher_$1

- (id)computeWeightWithFloat:(float)float withOrgApacheLuceneSearchCollectionStatistics:(id)statistics withOrgApacheLuceneSearchTermStatisticsArray:(id)array
{
  v5 = [OrgApacheLuceneSearchIndexSearcher__1__1 alloc];
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight_init();

  return v5;
}

- (id)simScorerWithOrgApacheLuceneSearchSimilaritiesSimilarity_SimWeight:(id)weight withOrgApacheLuceneIndexLeafReaderContext:(id)context
{
  v4 = [OrgApacheLuceneSearchIndexSearcher__1__2 alloc];
  OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer_init();

  return v4;
}

@end
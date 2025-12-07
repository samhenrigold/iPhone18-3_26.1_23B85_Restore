@interface OrgApacheLuceneSearchTopDocsCollector
+ (void)initialize;
- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
- (id)topDocs;
- (id)topDocsWithInt:(int)int;
- (id)topDocsWithInt:(int)int withInt:(int)withInt;
- (int)topDocsSize;
- (void)dealloc;
- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int;
@end

@implementation OrgApacheLuceneSearchTopDocsCollector

- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  v4 = (int - 1);
  if (int - 1 >= 0)
  {
    if (array)
    {
      while (1)
      {
        pq = self->pq_;
        if (!pq)
        {
          break;
        }

        IOSObjectArray_Set(array, v4, [(OrgApacheLuceneUtilPriorityQueue *)pq pop]);
        if (v4-- <= 0)
        {
          return;
        }
      }
    }

    JreThrowNullPointerException();
  }
}

- (id)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(id)array withInt:(int)int
{
  if (!array)
  {
    return OrgApacheLuceneSearchTopDocsCollector_EMPTY_TOPDOCS_;
  }

  v4 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_(self->totalHits_, array);

  return v4;
}

- (int)topDocsSize
{
  pq = self->pq_;
  if (!pq)
  {
    JreThrowNullPointerException();
  }

  totalHits = self->totalHits_;
  if (totalHits < [(OrgApacheLuceneUtilPriorityQueue *)pq size])
  {
    return self->totalHits_;
  }

  v6 = self->pq_;

  return [(OrgApacheLuceneUtilPriorityQueue *)v6 size];
}

- (id)topDocs
{
  topDocsSize = [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsSize];

  return [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsWithInt:0 withInt:topDocsSize];
}

- (id)topDocsWithInt:(int)int
{
  v3 = *&int;
  topDocsSize = [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsSize];

  return [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsWithInt:v3 withInt:topDocsSize];
}

- (id)topDocsWithInt:(int)int withInt:(int)withInt
{
  v5 = *&int;
  topDocsSize = [(OrgApacheLuceneSearchTopDocsCollector *)self topDocsSize];
  if ((v5 & 0x80000000) != 0 || withInt < 1 || (v8 = __OFSUB__(topDocsSize, v5), v9 = topDocsSize - v5, (v9 < 0) ^ v8 | (v9 == 0)))
  {
    selfCopy2 = self;
    v17 = 0;
  }

  else
  {
    v10 = JavaLangMath_minWithInt_withInt_(v9, withInt);
    v12 = [IOSObjectArray arrayWithLength:v10 type:OrgApacheLuceneSearchScoreDoc_class_(v10, v11)];
    pq = self->pq_;
    if (!pq)
    {
      JreThrowNullPointerException();
    }

    v14 = [(OrgApacheLuceneUtilPriorityQueue *)pq size]- (v10 + v5);
    if (v14 >= 1)
    {
      v15 = v14 + 1;
      do
      {
        [(OrgApacheLuceneUtilPriorityQueue *)self->pq_ pop];
        --v15;
      }

      while (v15 > 1);
    }

    [(OrgApacheLuceneSearchTopDocsCollector *)self populateResultsWithOrgApacheLuceneSearchScoreDocArray:v12 withInt:v10];
    selfCopy2 = self;
    v17 = v12;
  }

  return [(OrgApacheLuceneSearchTopDocsCollector *)selfCopy2 newTopDocsWithOrgApacheLuceneSearchScoreDocArray:v17 withInt:v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchTopDocsCollector;
  [(OrgApacheLuceneSearchTopDocsCollector *)&v3 dealloc];
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v5 = [IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchScoreDoc_class_(v3, v4)];
    v6 = new_OrgApacheLuceneSearchTopDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withFloat_(0, v5, NAN);
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchTopDocsCollector_EMPTY_TOPDOCS_, v6);
    atomic_store(1u, OrgApacheLuceneSearchTopDocsCollector__initialized);
  }
}

@end
@interface OrgApacheLuceneSearchBooleanScorer
- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchBooleanScorer

- (int)scoreWithOrgApacheLuceneSearchLeafCollector:(id)collector withOrgApacheLuceneUtilBits:(id)bits withInt:(int)int withInt:(int)withInt
{
  fakeScorer = self->fakeScorer_;
  if (!fakeScorer || (fakeScorer->doc_ = -1, !collector) || (v8 = *&withInt, v9 = *&int, [collector setScorerWithOrgApacheLuceneSearchScorer:self->fakeScorer_], (v12 = sub_100108C60(self, v9)) == 0))
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  while (1)
  {
    result = v12[6];
    if (result >= v8)
    {
      return result;
    }

    v14 = result & 0xFFFFF800;
    v15 = JavaLangMath_maxWithInt_withInt_(v9, result & 0xFFFFF800);
    v16 = JavaLangMath_minWithInt_withInt_(v8, v14 + 2048);
    sub_100108D5C(self, collector, bits, v14, v15, v16);
    head = self->head_;
    if (head)
    {
      v12 = [(OrgApacheLuceneUtilPriorityQueue *)head top];
      if (v12)
      {
        continue;
      }
    }

    goto LABEL_7;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchBooleanScorer;
  [(OrgApacheLuceneSearchBooleanScorer *)&v3 dealloc];
}

@end
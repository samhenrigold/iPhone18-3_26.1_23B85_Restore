@interface OrgApacheLuceneSearchSloppyPhraseScorer
- (BOOL)advancePPWithOrgApacheLuceneSearchPhrasePositions:(id)positions;
- (float)score;
- (id)asTwoPhaseIterator;
- (id)lesserWithOrgApacheLuceneSearchPhrasePositions:(id)positions withOrgApacheLuceneSearchPhrasePositions:(id)phrasePositions;
- (int)advanceWithInt:(int)int;
- (int)docID;
- (int)nextDoc;
- (int)tpPosWithOrgApacheLuceneSearchPhrasePositions:(id)positions;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchSloppyPhraseScorer

- (BOOL)advancePPWithOrgApacheLuceneSearchPhrasePositions:(id)positions
{
  if (!positions)
  {
    JreThrowNullPointerException();
  }

  nextPosition = [positions nextPosition];
  if (nextPosition)
  {
    v6 = *(positions + 2);
    if (v6 > self->end_)
    {
      self->end_ = v6;
    }
  }

  return nextPosition;
}

- (id)lesserWithOrgApacheLuceneSearchPhrasePositions:(id)positions withOrgApacheLuceneSearchPhrasePositions:(id)phrasePositions
{
  if (!positions || !phrasePositions)
  {
    JreThrowNullPointerException();
  }

  v4 = *(positions + 2);
  v5 = *(phrasePositions + 2);
  if (v4 >= v5 && (v4 != v5 || *(positions + 4) >= *(phrasePositions + 4)))
  {
    return phrasePositions;
  }

  return positions;
}

- (int)tpPosWithOrgApacheLuceneSearchPhrasePositions:(id)positions
{
  if (!positions)
  {
    JreThrowNullPointerException();
  }

  return *(positions + 4) + *(positions + 2);
}

- (int)docID
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)conjunction docID];
}

- (int)nextDoc
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  nextDoc = [(OrgApacheLuceneSearchConjunctionDISI *)conjunction nextDoc];
  v6 = 0x7FFFFFFF;
  if (nextDoc != 0x7FFFFFFF)
  {
    v7 = nextDoc;
    v8 = sub_1000C38E8(self, v5);
    self->sloppyFreq_ = v8;
    if (v8 == 0.0)
    {
      while (1)
      {
        nextDoc2 = [(OrgApacheLuceneSearchConjunctionDISI *)self->conjunction_ nextDoc];
        if (nextDoc2 == 0x7FFFFFFF)
        {
          break;
        }

        v6 = nextDoc2;
        v9 = sub_1000C38E8(self, v11);
        self->sloppyFreq_ = v9;
        if (v9 != 0.0)
        {
          return v6;
        }
      }

      return 0x7FFFFFFF;
    }

    else
    {
      return v7;
    }
  }

  return v6;
}

- (float)score
{
  docScorer = self->docScorer_;
  if (!docScorer)
  {
    JreThrowNullPointerException();
  }

  docID = [(OrgApacheLuceneSearchSloppyPhraseScorer *)self docID];
  *&v5 = self->sloppyFreq_;

  [(OrgApacheLuceneSearchSimilaritiesSimilarity_SimScorer *)docScorer scoreWithInt:docID withFloat:v5];
  return result;
}

- (int)advanceWithInt:(int)int
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneSearchConjunctionDISI *)conjunction advanceWithInt:*&int];
  v7 = 0x7FFFFFFF;
  if (v5 != 0x7FFFFFFF)
  {
    v8 = v5;
    v9 = sub_1000C38E8(self, v6);
    self->sloppyFreq_ = v9;
    if (v9 == 0.0)
    {
      while (1)
      {
        nextDoc = [(OrgApacheLuceneSearchConjunctionDISI *)self->conjunction_ nextDoc];
        if (nextDoc == 0x7FFFFFFF)
        {
          break;
        }

        v7 = nextDoc;
        v10 = sub_1000C38E8(self, v12);
        self->sloppyFreq_ = v10;
        if (v10 != 0.0)
        {
          return v7;
        }
      }

      return 0x7FFFFFFF;
    }

    else
    {
      return v8;
    }
  }

  return v7;
}

- (int64_t)cost
{
  conjunction = self->conjunction_;
  if (!conjunction)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchConjunctionDISI *)conjunction cost];
}

- (id)asTwoPhaseIterator
{
  conjunction = self->conjunction_;
  v4 = [OrgApacheLuceneSearchSloppyPhraseScorer__2 alloc];
  JreStrongAssign(&v4->this$0_, self);
  OrgApacheLuceneSearchTwoPhaseIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(v4, conjunction);

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchSloppyPhraseScorer;
  [(OrgApacheLuceneSearchScorer *)&v3 dealloc];
}

@end
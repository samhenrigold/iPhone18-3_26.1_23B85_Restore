@interface OrgApacheLuceneSearchConjunctionDISI
- (int)advanceWithInt:(int)int;
- (int)docID;
- (int)nextDoc;
- (int64_t)cost;
- (void)dealloc;
@end

@implementation OrgApacheLuceneSearchConjunctionDISI

- (int)advanceWithInt:(int)int
{
  lead = self->lead_;
  if (!lead)
  {
    JreThrowNullPointerException();
  }

  v5 = [(OrgApacheLuceneSearchDocIdSetIterator *)lead advanceWithInt:*&int];

  return sub_100060DD8(self, v5);
}

- (int)docID
{
  lead = self->lead_;
  if (!lead)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)lead docID];
}

- (int)nextDoc
{
  lead = self->lead_;
  if (!lead)
  {
    JreThrowNullPointerException();
  }

  nextDoc = [(OrgApacheLuceneSearchDocIdSetIterator *)lead nextDoc];

  return sub_100060DD8(self, nextDoc);
}

- (int64_t)cost
{
  lead = self->lead_;
  if (!lead)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneSearchDocIdSetIterator *)lead cost];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneSearchConjunctionDISI;
  [(OrgApacheLuceneSearchConjunctionDISI *)&v3 dealloc];
}

@end
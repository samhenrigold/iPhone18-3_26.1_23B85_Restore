@interface OrgApacheLuceneSearchFieldValueHitQueue_Entry
- (OrgApacheLuceneSearchFieldValueHitQueue_Entry)initWithInt:(int)int withInt:(int)withInt withFloat:(float)float;
- (id)description;
@end

@implementation OrgApacheLuceneSearchFieldValueHitQueue_Entry

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry)initWithInt:(int)int withInt:(int)withInt withFloat:(float)float
{
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(self, withInt, float);
  *(&self->super.shardIndex_ + 1) = int;
  return self;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = OrgApacheLuceneSearchFieldValueHitQueue_Entry;
  [(OrgApacheLuceneSearchScoreDoc *)&v10 description];
  return JreStrcat("$IC$", v2, v3, v4, v5, v6, v7, v8, @"slot:");
}

@end
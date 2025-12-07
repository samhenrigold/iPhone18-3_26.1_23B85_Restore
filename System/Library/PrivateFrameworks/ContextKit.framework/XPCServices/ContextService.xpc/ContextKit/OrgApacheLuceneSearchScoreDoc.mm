@interface OrgApacheLuceneSearchScoreDoc
- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float;
- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float withInt:(int)withInt;
@end

@implementation OrgApacheLuceneSearchScoreDoc

- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float
{
  self->score_ = float;
  self->doc_ = int;
  self->shardIndex_ = -1;
  return self;
}

- (OrgApacheLuceneSearchScoreDoc)initWithInt:(int)int withFloat:(float)float withInt:(int)withInt
{
  self->score_ = float;
  self->doc_ = int;
  self->shardIndex_ = withInt;
  return self;
}

@end
@interface OrgApacheLuceneIndexDirectoryReader
+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader;
+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader withOrgApacheLuceneIndexIndexCommit:(id)commit;
+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader withOrgApacheLuceneIndexIndexWriter:(id)writer withBoolean:(BOOL)boolean;
+ (id)openWithOrgApacheLuceneIndexIndexCommit:(id)commit;
+ (id)openWithOrgApacheLuceneIndexIndexWriter:(id)writer withBoolean:(BOOL)boolean;
- (OrgApacheLuceneIndexDirectoryReader)initWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexLeafReaderArray:(id)array;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexDirectoryReader

+ (id)openWithOrgApacheLuceneIndexIndexWriter:(id)writer withBoolean:(BOOL)boolean
{
  if (!writer)
  {
    JreThrowNullPointerException();
  }

  return [writer getReaderWithBoolean:boolean];
}

+ (id)openWithOrgApacheLuceneIndexIndexCommit:(id)commit
{
  if (!commit)
  {
    JreThrowNullPointerException();
  }

  getDirectory = [commit getDirectory];

  return OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexCommit_(getDirectory, commit);
}

+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader doOpenIfChanged];
}

+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader withOrgApacheLuceneIndexIndexCommit:(id)commit
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:commit];
}

+ (id)openIfChangedWithOrgApacheLuceneIndexDirectoryReader:(id)reader withOrgApacheLuceneIndexIndexWriter:(id)writer withBoolean:(BOOL)boolean
{
  if (!reader)
  {
    JreThrowNullPointerException();
  }

  return [reader doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:writer withBoolean:boolean];
}

- (OrgApacheLuceneIndexDirectoryReader)initWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexLeafReaderArray:(id)array
{
  OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(self, array);
  JreStrongAssign(&self->directory_, directory);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexDirectoryReader;
  [(OrgApacheLuceneIndexBaseCompositeReader *)&v3 dealloc];
}

@end
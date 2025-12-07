@interface OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat
- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context;
- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context;
- (void)dealloc;
@end

@implementation OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat

- (id)fieldsReaderWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneIndexFieldInfos:(id)infos withOrgApacheLuceneStoreIOContext:(id)context
{
  v6 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneIndexFieldInfos_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_(directory, info, self->segmentSuffix_, infos, context, self->formatName_, self->compressionMode_);

  return v6;
}

- (id)fieldsWriterWithOrgApacheLuceneStoreDirectory:(id)directory withOrgApacheLuceneIndexSegmentInfo:(id)info withOrgApacheLuceneStoreIOContext:(id)context
{
  v5 = new_OrgApacheLuceneCodecsCompressingCompressingStoredFieldsWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexSegmentInfo_withNSString_withOrgApacheLuceneStoreIOContext_withNSString_withOrgApacheLuceneCodecsCompressingCompressionMode_withInt_withInt_withInt_(directory, info, self->segmentSuffix_, context, self->formatName_, self->compressionMode_, self->chunkSize_, self->maxDocsPerChunk_, self->blockSize_);

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat;
  [(OrgApacheLuceneCodecsCompressingCompressingStoredFieldsFormat *)&v3 dealloc];
}

@end
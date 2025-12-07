@interface ASFinanceStoreHelper
- (NSString)errorDomain;
- (void)countTransactionsWithStartDateOffset:(unint64_t)offset endDateOffset:(unint64_t)dateOffset transactionSources:(unint64_t)sources locationType:(unint64_t)type locationFilterDistance:(int64_t)distance lat:(NSString *)lat lon:(NSString *)lon maxCount:(unint64_t)self0 completionHandler:(id)aBlock;
- (void)queryTransactionsWithStartDateOffset:(unint64_t)offset endDateOffset:(unint64_t)dateOffset transactionSources:(unint64_t)sources locationType:(unint64_t)type locationFilterDistance:(int64_t)distance lat:(NSString *)lat lon:(NSString *)lon maxCount:(unint64_t)self0 sortOrder:(unint64_t)self1 sortByAttributes:(unint64_t)self2 attributes:(unint64_t)self3 completionHandler:(id)aBlock;
@end

@implementation ASFinanceStoreHelper

- (NSString)errorDomain
{
  v2 = ASFinanceStoreHelper.errorDomain.getter();

  return v2;
}

- (void)queryTransactionsWithStartDateOffset:(unint64_t)offset endDateOffset:(unint64_t)dateOffset transactionSources:(unint64_t)sources locationType:(unint64_t)type locationFilterDistance:(int64_t)distance lat:(NSString *)lat lon:(NSString *)lon maxCount:(unint64_t)self0 sortOrder:(unint64_t)self1 sortByAttributes:(unint64_t)self2 attributes:(unint64_t)self3 completionHandler:(id)aBlock
{
  v20 = _Block_copy(aBlock);
  v21 = swift_allocObject();
  *(v21 + 16) = offset;
  *(v21 + 24) = dateOffset;
  *(v21 + 32) = sources;
  *(v21 + 40) = type;
  *(v21 + 48) = distance;
  *(v21 + 56) = lat;
  *(v21 + 64) = lon;
  *(v21 + 72) = *&count;
  *(v21 + 88) = attributes;
  *(v21 + 96) = a13;
  *(v21 + 104) = v20;
  *(v21 + 112) = self;
  latCopy = lat;
  lonCopy = lon;
  selfCopy = self;

  sub_1000CAD58(&unk_1005CC7B0, v21);
}

- (void)countTransactionsWithStartDateOffset:(unint64_t)offset endDateOffset:(unint64_t)dateOffset transactionSources:(unint64_t)sources locationType:(unint64_t)type locationFilterDistance:(int64_t)distance lat:(NSString *)lat lon:(NSString *)lon maxCount:(unint64_t)self0 completionHandler:(id)aBlock
{
  v17 = _Block_copy(aBlock);
  v18 = swift_allocObject();
  v18[2] = offset;
  v18[3] = dateOffset;
  v18[4] = sources;
  v18[5] = type;
  v18[6] = distance;
  v18[7] = lat;
  v18[8] = lon;
  v18[9] = count;
  v18[10] = v17;
  v18[11] = self;
  latCopy = lat;
  lonCopy = lon;
  selfCopy = self;

  sub_1000CAD58(&unk_1005CC7A0, v18);
}

@end
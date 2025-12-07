@interface WBSSpotlightDonationEntityCorrelator
- (WBSSpotlightDonationEntityCorrelator)init;
- (id)initIfAvailable;
- (void)correlateBookmarkEntityForItem:(id)item withUUIDString:(id)string;
- (void)correlateHistoryEntityForItem:(id)item;
- (void)correlateReadingListEntityForItem:(id)item withUUIDString:(id)string;
- (void)correlateTabEntityForItem:(id)item;
@end

@implementation WBSSpotlightDonationEntityCorrelator

- (id)initIfAvailable
{
  if (MEMORY[0x1E6964E88])
  {

    return [(WBSSpotlightDonationEntityCorrelator *)self init];
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

- (WBSSpotlightDonationEntityCorrelator)init
{
  v3.receiver = self;
  v3.super_class = WBSSpotlightDonationEntityCorrelator;
  return [(WBSSpotlightDonationEntityCorrelator *)&v3 init];
}

- (void)correlateHistoryEntityForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1B855A77C(itemCopy, 0x4579726F74736948, 0xED0000797469746ELL);
}

- (void)correlateBookmarkEntityForItem:(id)item withUUIDString:(id)string
{
  sub_1B8565DA8();
  itemCopy = item;
  selfCopy = self;
  attributeSet = [itemCopy attributeSet];
  title = [attributeSet title];

  if (title)
  {
    sub_1B8565DA8();

    attributeSet2 = [itemCopy attributeSet];
    sub_1B855A52C(MEMORY[0x1E69E7CC0]);
    sub_1B8566258();

    selfCopy = attributeSet2;
  }
}

- (void)correlateReadingListEntityForItem:(id)item withUUIDString:(id)string
{
  v6 = sub_1B8565DA8();
  v8 = v7;
  itemCopy = item;
  selfCopy = self;
  sub_1B855A63C(itemCopy, v6, v8);
}

- (void)correlateTabEntityForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_1B855A77C(itemCopy, 0x7469746E45626154, 0xE900000000000079);
}

@end
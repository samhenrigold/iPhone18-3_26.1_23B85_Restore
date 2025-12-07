@interface MTServerPodcastEpisode
- (BOOL)isExplicit;
- (BOOL)isRestricted;
- (BOOL)priceTypeIsPSUB;
- (MTServerPodcastEpisode)init;
- (NSDate)firstTimeAvailableAsFree;
- (NSDate)firstTimeAvailableAsPaid;
- (NSDate)pubDate;
- (NSOrderedSet)chapters;
- (NSString)author;
- (NSString)entitledPriceType;
- (NSString)episodeStoreId;
- (NSString)guid;
- (NSString)itemDescription;
- (NSString)itunesTitle;
- (NSString)priceType;
- (NSString)title;
- (NSString)uti;
- (NSString)webpageURL;
- (int64_t)episodeNumber;
- (int64_t)seasonNumber;
@end

@implementation MTServerPodcastEpisode

- (NSString)author
{
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 24))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isExplicit
{
  selfCopy = self;
  v3 = ServerPodcastEpisode.isExplicit.getter();

  return v3 & 1;
}

- (NSString)guid
{
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 328))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)itemDescription
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 184))
  {
    goto LABEL_2;
  }

  v4 = *(v2 + 112);
  if (v4 && *(v4 + 24))
  {

LABEL_2:

    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (NSDate)pubDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  PodcastEpisodeAttributes.releaseDateResolved.getter(v5);

  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (NSDate)firstTimeAvailableAsPaid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 208))
  {
    v15 = 2;
    selfCopy = self;

    PodcastEpisodeAttributes.AvailabilityDates.subscript.getter(&v15, v5);

    v7 = sub_1D9176E3C();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = 0;
    if (v9 != 1)
    {
      v11 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v8 + 8))(v5, v7);
      v10 = v11;
    }
  }

  else
  {
    v12 = sub_1D9176E3C();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v10 = 0;
  }

  return v10;
}

- (NSDate)firstTimeAvailableAsFree
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 208))
  {
    selfCopy = self;

    PodcastEpisodeAttributes.AvailabilityDates.free.getter(v5);

    v7 = sub_1D9176E3C();
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(v5, 1, v7);
    v10 = 0;
    if (v9 != 1)
    {
      v11 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v8 + 8))(v5, v7);
      v10 = v11;
    }
  }

  else
  {
    v12 = sub_1D9176E3C();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v10 = 0;
  }

  return v10;
}

- (NSString)title
{
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 88))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)uti
{
  selfCopy = self;
  PodcastEpisodeAttributes.uti.getter();
  v4 = v3;

  if (v4)
  {
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)itunesTitle
{
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 104))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)seasonNumber
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 360))
  {
    return 0;
  }

  else
  {
    return *(v2 + 352);
  }
}

- (int64_t)episodeNumber
{
  v2 = *(self + OBJC_IVAR___MTServerPodcastEpisode_attributes);
  if (*(v2 + 344))
  {
    return 0;
  }

  else
  {
    return *(v2 + 336);
  }
}

- (NSString)webpageURL
{
  if (*(*(self + OBJC_IVAR___MTServerPodcastEpisode_attributes) + 240))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)episodeStoreId
{

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (NSString)priceType
{
  selfCopy = self;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v3, &v6);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSString)entitledPriceType
{
  selfCopy = self;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v3, &v6);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (NSOrderedSet)chapters
{
  selfCopy = self;
  v3 = ServerPodcastEpisode.chapters.getter();

  return v3;
}

- (BOOL)priceTypeIsPSUB
{
  selfCopy = self;
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(v3, &v6);

  if (v6 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D9179ACC();
  }

  return v4 & 1;
}

- (BOOL)isRestricted
{
  selfCopy = self;
  v3 = ServerPodcastEpisode.isRestricted.getter();

  return v3 & 1;
}

- (MTServerPodcastEpisode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
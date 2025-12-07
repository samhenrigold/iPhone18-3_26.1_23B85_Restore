@interface MTServerPodcast
- (BOOL)hasEpisodes;
- (BOOL)isExplicit;
- (BOOL)isNotSubscribable;
- (MTFeedChannel)channelItem;
- (NSArray)offers;
- (NSOrderedSet)categories;
- (NSString)artworkPrimaryColor;
- (NSString)artworkTemplateURL;
- (NSString)artworkTextPrimaryColor;
- (NSString)artworkTextQuaternaryColor;
- (NSString)artworkTextSecondaryColor;
- (NSString)artworkTextTertiaryColor;
- (NSString)category;
- (NSString)podcastStoreId;
- (NSString)resolvedFeedURL;
- (NSString)shareURL;
- (NSString)showSpecificUpsellCopy;
- (NSString)showType;
- (NSString)title;
- (NSString)uberArtworkTextPrimaryColor;
- (NSString)uberArtworkTextQuaternaryColor;
- (NSString)uberArtworkTextSecondaryColor;
- (NSString)uberArtworkTextTertiaryColor;
- (NSString)uberBackgroundImageURL;
- (NSString)uberBackgroundJoeColor;
- (NSString)webpageURL;
- (id)toFeed;
@end

@implementation MTServerPodcast

- (NSString)category
{
  ServerPodcast.category.getter();
  if (v2)
  {
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasEpisodes
{
  v3 = OBJC_IVAR___MTServerPodcast_episodes;
  swift_beginAccess();
  v4 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[v3];
  if (!v4)
  {
    return 0;
  }

  if (v4 >> 62)
  {
    v5 = sub_1D917935C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

- (NSString)resolvedFeedURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 80))
    {

      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)title
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 96))
    {

      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isExplicit
{
  selfCopy = self;
  v3 = ServerPodcast.isExplicit.getter();

  return v3 & 1;
}

- (BOOL)isNotSubscribable
{
  v2 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v2)
  {
    return (*(v2 + 48) != 2) & (*(v2 + 48) ^ 1);
  }

  else
  {
    return 0;
  }
}

- (NSString)shareURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 40))
    {

      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)showType
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 144))
    {

      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)webpageURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 200))
    {

      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)podcastStoreId
{

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (NSArray)offers
{
  selfCopy = self;
  v3 = ServerPodcast.offers.getter();

  if (v3)
  {
    sub_1D90358A0();
    v4 = sub_1D91785DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)uberBackgroundImageURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 56))
    {

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uberBackgroundJoeColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 72))
    {

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uberArtworkTextPrimaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 88))
    {

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uberArtworkTextSecondaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 104))
    {

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uberArtworkTextTertiaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 120))
    {

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)uberArtworkTextQuaternaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 152);
    if (v4 && (v5 = *(v4 + 16)) != 0 && *(v5 + 136))
    {

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)artworkTemplateURL
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 56))
    {

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)artworkPrimaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 72))
    {

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)artworkTextPrimaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 88))
    {

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)artworkTextSecondaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 104))
    {

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)artworkTextTertiaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 120))
    {

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)artworkTextQuaternaryColor
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    v4 = *(v3 + 112);
    if (v4 && *(v4 + 136))
    {

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MTFeedChannel)channelItem
{
  selfCopy = self;
  v3 = ServerPodcast.channelItem.getter();

  return v3;
}

- (NSString)showSpecificUpsellCopy
{
  v3 = *&self->_TtC18PodcastsFoundation17ServerPodcastBase_opaque[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v3)
  {
    if (*(v3 + 240))
    {

      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSOrderedSet)categories
{
  selfCopy = self;
  v3 = ServerPodcast.categories.getter();

  return v3;
}

- (id)toFeed
{
  selfCopy = self;
  ServerPodcast.toFeed()(v3);
  v5 = v4;

  return v5;
}

@end
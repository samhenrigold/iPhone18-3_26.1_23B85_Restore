@interface ServerChannel
- (NSString)artworkURL;
- (NSString)backgroundColor;
- (NSString)displayType;
- (NSString)fallbackSubscriptionName;
- (NSString)logoImageURL;
- (NSString)name;
- (NSString)storeId;
- (NSString)subscriptionName;
- (NSString)uberBackgroundImageURL;
- (NSString)uberBackgroundJoeColor;
- (NSString)url;
- (float)logoImageHeight;
- (float)logoImageWidth;
- (int64_t)availableShowCount;
- (int64_t)showCount;
@end

@implementation ServerChannel

- (NSString)name
{

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (NSString)subscriptionName
{
  if (*(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 104))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)showCount
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v2 + 56))
  {
    return 0;
  }

  else
  {
    return *(v2 + 48);
  }
}

- (int64_t)availableShowCount
{
  v2 = *(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes);
  if (*(v2 + 72))
  {
    return 0;
  }

  else
  {
    return *(v2 + 64);
  }
}

- (NSString)storeId
{

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (NSString)displayType
{
  selfCopy = self;
  sub_1D902F434(selfCopy, &v5);

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

- (NSString)artworkURL
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 24);
  if (v2 && *(v2 + 56))
  {

    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)logoImageURL
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v2 && *(v2 + 56))
  {

    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)backgroundColor
{
  if (*(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 144))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (float)logoImageHeight
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v2 && (*(v2 + 40) & 1) == 0)
  {
    return *(v2 + 32);
  }

  else
  {
    return 0;
  }
}

- (float)logoImageWidth
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 128);
  if (v2 && (*(v2 + 24) & 1) == 0)
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

- (NSString)uberBackgroundImageURL
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (v2 && (v3 = *(v2 + 32)) != 0 && *(v3 + 56))
  {

    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)uberBackgroundJoeColor
{
  v2 = *(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 112);
  if (v2 && (v3 = *(v2 + 32)) != 0 && *(v3 + 72))
  {

    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)url
{
  if (*(*(self + OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes) + 168))
  {

    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)fallbackSubscriptionName
{
  selfCopy = self;
  ServerChannel.fallbackSubscriptionName.getter();
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

@end
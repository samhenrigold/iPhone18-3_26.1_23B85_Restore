@interface JSAStoreContentLookupRequest
- (NSArray)itemIdentifiers;
- (NSDictionary)requestOptions;
- (void)cancel;
- (void)dealloc;
- (void)send;
- (void)setItemIdentifiers:(id)identifiers;
- (void)setOnResponse:(id)response;
- (void)setRequestOptions:(id)options;
@end

@implementation JSAStoreContentLookupRequest

- (NSDictionary)requestOptions
{
  if (*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions))
  {

    v2.super.isa = sub_8433C().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setRequestOptions:(id)options
{
  if (options)
  {
    v4 = sub_8434C();
  }

  else
  {
    v4 = 0;
  }

  if ((*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__requestOptions) = v4;
  }
}

- (NSArray)itemIdentifiers
{
  swift_beginAccess();
  selfCopy = self;

  sub_634D8(v4);

  v5.super.isa = sub_8458C().super.isa;

  return v5.super.isa;
}

- (void)setItemIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    v4 = sub_845AC();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_63B10(v4);
}

- (void)setOnResponse:(id)response
{
  if ((*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) & 1) == 0)
  {
    v5 = *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
    *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse) = response;
    responseCopy = response;
  }
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest_frozen) == 1)
  {
    selfCopy = self;
  }

  else
  {
    v4 = *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse);
    *(&self->super.isa + OBJC_IVAR___JSAStoreContentLookupRequest__onResponse) = 0;
    selfCopy2 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for StoreContentLookupRequest();
  [(JSAStoreContentLookupRequest *)&v6 dealloc];
}

- (void)send
{
  selfCopy = self;
  sub_64568();
}

- (void)cancel
{
  selfCopy = self;
  sub_6532C();
}

@end
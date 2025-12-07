@interface TPSContextualEventBuilder
- (NSDictionary)dictionary;
- (NSString)stream;
- (TPSContextualEventBuilder)init;
- (id)contextualEvent;
- (void)setDictionary:(id)dictionary;
- (void)setStream:(id)stream;
@end

@implementation TPSContextualEventBuilder

- (NSDictionary)dictionary
{

  v2 = sub_232E01450();

  return v2;
}

- (void)setDictionary:(id)dictionary
{
  *(self + OBJC_IVAR___TPSContextualEventBuilder_dictionary) = sub_232E01470();
}

- (NSString)stream
{
  if (*(self + OBJC_IVAR___TPSContextualEventBuilder_stream + 8))
  {

    v2 = sub_232E014C0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setStream:(id)stream
{
  if (stream)
  {
    v4 = sub_232E014D0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___TPSContextualEventBuilder_stream);
  *v6 = v4;
  v6[1] = v5;
}

- (id)contextualEvent
{
  selfCopy = self;
  v4 = sub_232DC927C(selfCopy, v3);

  return v4;
}

- (TPSContextualEventBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
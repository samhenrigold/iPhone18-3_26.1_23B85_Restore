@interface _SwiftPanicPatternInfo
- (_SwiftPanicPatternInfo)init;
- (_SwiftPanicPatternInfo)initWithPatternInfo:(id)info;
@end

@implementation _SwiftPanicPatternInfo

- (_SwiftPanicPatternInfo)initWithPatternInfo:(id)info
{
  v3 = sub_1D9849DF4();
  PanicPatternInfo.init(panicString:)(v3, v4);
  return result;
}

- (_SwiftPanicPatternInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
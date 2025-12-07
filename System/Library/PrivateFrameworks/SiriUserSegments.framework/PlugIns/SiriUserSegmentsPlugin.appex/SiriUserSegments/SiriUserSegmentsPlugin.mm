@interface SiriUserSegmentsPlugin
- (_TtC22SiriUserSegmentsPlugin22SiriUserSegmentsPlugin)init;
- (id)performTask:(id)task error:(id *)error;
@end

@implementation SiriUserSegmentsPlugin

- (id)performTask:(id)task error:(id *)error
{
  v6 = sub_100001628();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001618();
  taskCopy = task;
  selfCopy = self;
  sub_100001608();
  (*(v7 + 8))(v9, v6);
  sub_1000013FC(&_swiftEmptyArrayStorage);
  v12 = objc_allocWithZone(MLRTaskResult);
  isa = sub_100001638().super.isa;

  v14 = [v12 initWithJSONResult:isa unprivatizedVector:0];

  return v14;
}

- (_TtC22SiriUserSegmentsPlugin22SiriUserSegmentsPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriUserSegmentsPlugin();
  return [(SiriUserSegmentsPlugin *)&v3 init];
}

@end
@interface ContactsButtonDrawing
- (CGSize)drawingSize;
- (_TtC24ContactsButtonXPCService21ContactsButtonDrawing)init;
- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point;
@end

@implementation ContactsButtonDrawing

- (CGSize)drawingSize
{
  v3 = OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag;
  v4 = (*(&self->super.isa + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonDrawing_tag) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  selfCopy = self;
  v14.origin.x = v5;
  v14.origin.y = v6;
  v14.size.width = v7;
  v14.size.height = v8;
  CGRectGetWidth(v14);
  CGRectGetHeight(*(*(&self->super.isa + v3) + OBJC_IVAR____TtC24ContactsButtonXPCService21ContactsButtonSlotTag_frame));

  nullsub_2();
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)drawInContext:(CGContext *)context atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  selfCopy = self;
  sub_10000DE94(contextCopy, x, y);
}

- (_TtC24ContactsButtonXPCService21ContactsButtonDrawing)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
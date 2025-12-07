@interface TSCachePreFlushTask
- (TSCachePreFlushTask)init;
- (void)dealloc;
- (void)finish;
@end

@implementation TSCachePreFlushTask

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR___TSCachePreFlushTask_block);
  v5 = *(&self->super.isa + OBJC_IVAR___TSCachePreFlushTask_block);
  if (v5)
  {
    v6 = v4[1];
    selfCopy = self;
    v8 = sub_2188202A8(v5);
    v5(v8);
    sub_2187FABEC(v5, v6);
    v9 = *v4;
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
  }

  v11 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_2187FABEC(v9, v11);
  v12.receiver = self;
  v12.super_class = ObjectType;
  [(TSCachePreFlushTask *)&v12 dealloc];
}

- (void)finish
{
  v2 = (self + OBJC_IVAR___TSCachePreFlushTask_block);
  v3 = *(&self->super.isa + OBJC_IVAR___TSCachePreFlushTask_block);
  if (v3)
  {
    v4 = v2[1];
    selfCopy = self;
    v6 = sub_2188202A8(v3);
    v3(v6);
    sub_2187FABEC(v3, v4);
    v7 = *v2;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0;
  }

  v9 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_2187FABEC(v7, v9);
}

- (TSCachePreFlushTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
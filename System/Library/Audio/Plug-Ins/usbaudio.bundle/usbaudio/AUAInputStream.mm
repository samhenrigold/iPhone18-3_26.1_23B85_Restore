@interface AUAInputStream
- (void)stopStream;
@end

@implementation AUAInputStream

- (void)stopStream
{
  v4 = *&self->super.ASDStream_opaque[OBJC_IVAR___AUAInputStream_startCount];
  v5 = v4 != 0;
  v6 = v4 - 1;
  if (v5)
  {
    *&self->super.ASDStream_opaque[OBJC_IVAR___AUAInputStream_startCount] = v6;
    if (!v6)
    {
      v9 = v2;
      v10 = v3;
      v8.receiver = self;
      v8.super_class = type metadata accessor for AUAInputStream(0);
      v7 = v8.receiver;
      [(AUAStream *)&v8 stopStream];
      *&v7[OBJC_IVAR___AUAInputStream_lockDelay] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

@end
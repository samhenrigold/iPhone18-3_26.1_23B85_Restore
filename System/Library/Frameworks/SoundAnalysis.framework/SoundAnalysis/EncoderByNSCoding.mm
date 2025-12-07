@interface EncoderByNSCoding
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key;
- (void)encodeCMTime:(id *)time forKey:(id)key;
- (void)encodeCMTimeRange:(id *)range forKey:(id)key;
- (void)encodeConditionalObject:(id)object forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeFloat:(float)float forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
@end

@implementation EncoderByNSCoding

- (void)encodeCMTime:(id *)time forKey:(id)key
{
  var0 = time->var0;
  v6 = *&time->var1;
  var3 = time->var3;
  v8 = sub_1C9A924A8();
  v10 = v9;
  selfCopy = self;
  sub_1C9981D30(var0, v6, var3, v8, v10);
}

- (void)encodeCMTimeRange:(id *)range forKey:(id)key
{
  var3 = range->var1.var3;
  v10[0] = range->var0.var0;
  v10[1] = *&range->var0.var1;
  v11 = *&range->var0.var3;
  v12 = *&range->var1.var1;
  v13 = var3;
  v6 = sub_1C9A924A8();
  v8 = v7;
  selfCopy = self;
  sub_1C9981DB8(v10, v6, v8);
}

- (void)encodeObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  v10 = sub_1C9A924A8();
  v12 = v11;

  sub_1C9981EEC(v13, v10, v12);

  sub_1C97A59D0(v13);
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  v6 = sub_1C9A924A8();
  v8 = v7;
  selfCopy = self;
  sub_1C998204C(bool, v6, v8);
}

- (void)encodeFloat:(float)float forKey:(id)key
{
  v6 = sub_1C9A924A8();
  v8 = v7;
  selfCopy = self;
  sub_1C99821D4(v6, v8, float);
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  v6 = sub_1C9A924A8();
  v8 = v7;
  selfCopy = self;
  sub_1C9982250(v6, v8, double);
}

- (void)encodeBytes:(const char *)bytes length:(int64_t)length forKey:(id)key
{
  v8 = sub_1C9A924A8();
  v10 = v9;
  selfCopy = self;
  sub_1C99822CC(bytes, length, v8, v10);
}

- (void)encodeConditionalObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    keyCopy2 = key;
    selfCopy2 = self;
  }

  sub_1C9A924A8();

  sub_1C998244C(v10, v11, v12, v13, v14, v15, v16, v17);
}

@end
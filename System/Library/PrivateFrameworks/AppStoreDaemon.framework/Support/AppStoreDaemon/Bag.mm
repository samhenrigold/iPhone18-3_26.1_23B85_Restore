@interface Bag
- (AMSBagProtocol)amsBag;
- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
- (Bag)init;
- (RecentBag)asRecentBag;
- (UpToDateBag)asUpToDateBag;
- (double)doubleForKey:(id)key defaultValue:(double)value;
- (id)BOOLForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)arrayOfIntegersForKey:(id)key;
- (id)arrayOfStringsForKey:(id)key;
- (id)doubleForKey:(id)key;
- (id)integerForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key defaultValue:(int64_t)value;
@end

@implementation Bag

- (id)BOOLForKey:(id)key
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[3];
  v7 = v5[4];
  sub_100005B60(v5, v6);
  keyCopy = key;
  selfCopy = self;
  v10 = sub_1000D06CC(keyCopy, v6, v7);
  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(NSNumber) initWithBool:v10 & 1];
  }

  return v11;
}

- (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value
{
  v7 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v8 = v7[3];
  v9 = v7[4];
  sub_100005B60(v7, v8);
  keyCopy = key;
  selfCopy = self;
  v12 = sub_1000D06CC(keyCopy, v8, v9);

  if (v12 == 2)
  {
    return value;
  }

  else
  {
    return v12;
  }
}

- (id)doubleForKey:(id)key
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[3];
  v7 = v5[4];
  sub_100005B60(v5, v6);
  keyCopy = key;
  selfCopy = self;
  v10 = sub_1000D0A3C(keyCopy, v6, v7, &dispatch thunk of Bag.subscript.getter);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(NSNumber) initWithDouble:*&v10];
  }

  return v12;
}

- (double)doubleForKey:(id)key defaultValue:(double)value
{
  v7 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v8 = v7[3];
  v9 = v7[4];
  sub_100005B60(v7, v8);
  keyCopy = key;
  selfCopy = self;
  v12 = COERCE_DOUBLE(sub_1000D0A3C(keyCopy, v8, v9, &dispatch thunk of Bag.subscript.getter));
  LOBYTE(v8) = v13;

  result = v12;
  if (v8)
  {
    return value;
  }

  return result;
}

- (id)integerForKey:(id)key
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[3];
  v7 = v5[4];
  sub_100005B60(v5, v6);
  keyCopy = key;
  selfCopy = self;
  v10 = sub_1000D0A3C(keyCopy, v6, v7, &dispatch thunk of Bag.subscript.getter);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_allocWithZone(NSNumber) initWithInteger:v10];
  }

  return v12;
}

- (int64_t)integerForKey:(id)key defaultValue:(int64_t)value
{
  v7 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v8 = v7[3];
  v9 = v7[4];
  sub_100005B60(v7, v8);
  keyCopy = key;
  selfCopy = self;
  v12 = sub_1000D0A3C(keyCopy, v8, v9, &dispatch thunk of Bag.subscript.getter);
  LOBYTE(v8) = v13;

  if (v8)
  {
    return value;
  }

  else
  {
    return v12;
  }
}

- (id)stringForKey:(id)key
{
  v5 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v6 = v5[3];
  v7 = v5[4];
  sub_100005B60(v5, v6);
  keyCopy = key;
  selfCopy = self;
  sub_1000C4F1C(keyCopy, v6, v7);
  v11 = v10;

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)URLForKey:(id)key
{
  v5 = sub_100085D40(&qword_10059CE90, &unk_100436180);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = *&self->bag[OBJC_IVAR___Bag_bag + 16];
  sub_100005B60((&self->super.isa + OBJC_IVAR___Bag_bag), v8);
  keyCopy = key;
  selfCopy = self;
  sub_1000D0CE8(keyCopy, v8);

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v16 = v15;
    (*(v12 + 8))(v7, v11);
    v14 = v16;
  }

  return v14;
}

- (id)arrayOfStringsForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D0EC0(keyCopy);

  if (v6)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (id)arrayOfIntegersForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = sub_1000D11B0(keyCopy);

  if (v6)
  {
    sub_10009FAD4(0, &qword_10059CBB0, NSNumber_ptr);
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (AMSBagProtocol)amsBag
{
  v3 = (&self->super.isa + OBJC_IVAR___Bag_bag);
  v4 = v3[3];
  v5 = v3[4];
  sub_100005B60(v3, v4);
  selfCopy = self;
  v7 = sub_1000D1AA8(v4, v5, 0, type metadata accessor for ASDAMSBag, sub_1000D5448);

  return v7;
}

- (RecentBag)asRecentBag
{
  selfCopy = self;
  v3 = sub_1000D1544();

  return v3;
}

- (UpToDateBag)asUpToDateBag
{
  selfCopy = self;
  v3 = sub_1000D1738();

  return v3;
}

- (Bag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
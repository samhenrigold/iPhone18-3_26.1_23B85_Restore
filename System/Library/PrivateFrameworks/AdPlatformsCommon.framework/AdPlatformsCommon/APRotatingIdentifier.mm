@interface APRotatingIdentifier
- (APRotatingIdentifier)init;
- (APRotatingIdentifier)initWithValue:(id)value type:(int64_t)type source:(int64_t)source expirationDate:(id)date processId:(id)id;
- (NSDate)expirationDate;
- (NSString)processId;
- (NSString)value;
- (int64_t)type;
- (void)setExpirationDate:(id)date;
- (void)setProcessId:(id)id;
- (void)setType:(int64_t)type;
- (void)setValue:(id)value;
@end

@implementation APRotatingIdentifier

- (NSString)value
{
  swift_beginAccess();

  v2 = sub_1BB014B38();

  return v2;
}

- (void)setValue:(id)value
{
  v4 = sub_1BB014B48();
  v6 = v5;
  v7 = (self + OBJC_IVAR___APRotatingIdentifier_value);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)type
{
  v3 = OBJC_IVAR___APRotatingIdentifier_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR___APRotatingIdentifier_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSDate)expirationDate
{
  v3 = sub_1BB014398();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_1BB014338();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setExpirationDate:(id)date
{
  v4 = sub_1BB014398();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB014358();
  v8 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (NSString)processId
{

  v2 = sub_1BB014B38();

  return v2;
}

- (void)setProcessId:(id)id
{
  v4 = sub_1BB014B48();
  v5 = (self + OBJC_IVAR___APRotatingIdentifier_processId);
  *v5 = v4;
  v5[1] = v6;
}

- (APRotatingIdentifier)initWithValue:(id)value type:(int64_t)type source:(int64_t)source expirationDate:(id)date processId:(id)id
{
  ObjectType = swift_getObjectType();
  v10 = sub_1BB014398();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BB014B48();
  v16 = v15;
  sub_1BB014358();
  v17 = sub_1BB014B48();
  v19 = v18;
  v20 = (self + OBJC_IVAR___APRotatingIdentifier_value);
  *v20 = v14;
  v20[1] = v16;
  *(self + OBJC_IVAR___APRotatingIdentifier_type) = type;
  *(self + OBJC_IVAR___APRotatingIdentifier_source) = source;
  (*(v11 + 16))(self + OBJC_IVAR___APRotatingIdentifier_expirationDate, v13, v10);
  v21 = (self + OBJC_IVAR___APRotatingIdentifier_processId);
  *v21 = v17;
  v21[1] = v19;
  v26.receiver = self;
  v26.super_class = ObjectType;
  v22 = [(APRotatingIdentifier *)&v26 init];
  (*(v11 + 8))(v13, v10);
  return v22;
}

- (APRotatingIdentifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
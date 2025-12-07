@interface ChatRecordKeyedDataSource
- (_TtC17MessagesCloudSync25ChatRecordKeyedDataSource)init;
- (id)arrayForKey:(id)key;
- (id)assetURLForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dictForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)sourceRecordChangeTag;
- (id)sourceRecordName;
- (id)sourceRecordType;
- (id)stringForKey:(id)key;
@end

@implementation ChatRecordKeyedDataSource

- (id)sourceRecordType
{
  v3 = type metadata accessor for ChatRecord(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B974E6C(self + OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord, v5);
  v6 = *(v5 + 9);

  sub_22B974ED0(v5);
  if (v6)
  {
    v7 = sub_22BA0FFCC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sourceRecordName
{
  if (*&self->chatRecord[OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 48])
  {

    v2 = sub_22BA0FFCC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)sourceRecordChangeTag
{
  if (*&self->chatRecord[OBJC_IVAR____TtC17MessagesCloudSync25ChatRecordKeyedDataSource_chatRecord + 32])
  {

    v2 = sub_22BA0FFCC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)stringForKey:(id)key
{
  if (key)
  {
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_22B98D8CC(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_22BA0FFCC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)numberForKey:(id)key
{
  if (key)
  {
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_22B98DE60(v4, v6);

  return v8;
}

- (id)dictForKey:(id)key
{
  if (key)
  {
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_22B98E2A8(v4, v6);

  if (v8)
  {
    v9 = sub_22BA0FF5C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataForKey:(id)key
{
  if (key)
  {
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_22B98E674(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_22BA0FC8C();
    sub_22B9359A8(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (id)arrayForKey:(id)key
{
  if (key)
  {
    v4 = sub_22BA0FFFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_22B98ED44(v4, v6);

  if (v8)
  {
    v9 = sub_22BA101DC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)assetURLForKey:(id)key
{
  v5 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  if (key)
  {
    v8 = sub_22BA0FFFC();
    key = v9;
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  sub_22B98F0F8(v8, key, v7);

  v11 = sub_22BA0FC4C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_22BA0FBBC();
    (*(v12 + 8))(v7, v11);
    v14 = v15;
  }

  return v14;
}

- (_TtC17MessagesCloudSync25ChatRecordKeyedDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
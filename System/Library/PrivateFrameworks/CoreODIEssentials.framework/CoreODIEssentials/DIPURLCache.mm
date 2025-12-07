@interface DIPURLCache
- (_TtC17CoreODIEssentials11DIPURLCache)init;
- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l;
- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path;
- (void)storeCachedResponse:(id)response forDataTask:(id)task;
- (void)storeCachedResponse:(id)response forRequest:(id)request;
@end

@implementation DIPURLCache

- (void)storeCachedResponse:(id)response forDataTask:(id)task
{
  responseCopy = response;
  taskCopy = task;
  selfCopy = self;
  v8 = sub_1DAFE5358(responseCopy);
  if (v8)
  {
    v9 = v8;
    v11.receiver = selfCopy;
    v11.super_class = type metadata accessor for DIPURLCache();
    [(NSURLCache *)&v11 storeCachedResponse:v9 forDataTask:taskCopy];
  }

  else
  {
  }
}

- (void)storeCachedResponse:(id)response forRequest:(id)request
{
  v6 = sub_1DB09CBF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09CBA4();
  responseCopy = response;
  selfCopy = self;
  v12 = sub_1DAFE5358(responseCopy);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1DB09CB84();
    v15 = type metadata accessor for DIPURLCache();
    v16.receiver = selfCopy;
    v16.super_class = v15;
    [(NSURLCache *)&v16 storeCachedResponse:v13 forRequest:v14];

    responseCopy = v13;
    selfCopy = v14;
  }

  (*(v7 + 8))(v9, v6);
}

- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity diskPath:(id)path
{
  if (path)
  {
    sub_1DB09D6C4();
    v8 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *v8 = 45;
    v8[1] = 0xE100000000000000;
    v9 = sub_1DB09D6B4();
  }

  else
  {
    v9 = 0;
    v10 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
    *v10 = 45;
    v10[1] = 0xE100000000000000;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for DIPURLCache();
  v11 = [(NSURLCache *)&v13 initWithMemoryCapacity:capacity diskCapacity:diskCapacity diskPath:v9];

  return v11;
}

- (_TtC17CoreODIEssentials11DIPURLCache)initWithMemoryCapacity:(int64_t)capacity diskCapacity:(int64_t)diskCapacity directoryURL:(id)l
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAB0, &qword_1DB0A9530);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  if (l)
  {
    sub_1DB09CF04();
    v15 = sub_1DB09CF64();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v15 = sub_1DB09CF64();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
  *v16 = 45;
  v16[1] = 0xE100000000000000;
  sub_1DAFE6928(v14, v12);
  sub_1DB09CF64();
  v17 = *(v15 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v12, 1, v15) != 1)
  {
    v18 = sub_1DB09CEE4();
    (*(v17 + 8))(v12, v15);
  }

  v19 = type metadata accessor for DIPURLCache();
  v22.receiver = self;
  v22.super_class = v19;
  v20 = [(NSURLCache *)&v22 initWithMemoryCapacity:capacity diskCapacity:diskCapacity directoryURL:v18];

  sub_1DAF40AEC(v14, &unk_1ECC0EAB0, &qword_1DB0A9530);
  return v20;
}

- (_TtC17CoreODIEssentials11DIPURLCache)init
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC17CoreODIEssentials11DIPURLCache_logger);
  *v2 = 45;
  v2[1] = 0xE100000000000000;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DIPURLCache();
  return [(NSURLCache *)&v4 init];
}

@end
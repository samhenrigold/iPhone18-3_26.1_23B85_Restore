@interface MSRAPRecord
+ (Class)managedClass;
- (MSCommunityID)communityID;
- (MSRAPRecord)initWithClientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)status statusLastUpdatedDate:(id)self0 summary:(id)self1 type:(signed __int16)self2;
- (MSRAPRecord)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent;
- (MSRAPRecord)initWithStore:(id)store clientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)self0 statusLastUpdatedDate:(id)self1 summary:(id)self2 type:(signed __int16)self3;
- (NSDate)statusLastUpdatedDate;
- (int64_t)positionIndex;
- (void)setClientRevision:(signed __int16)revision;
- (void)setCommunityID:(id)d;
- (void)setPositionIndex:(int64_t)index;
- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent;
- (void)setStatus:(signed __int16)status;
- (void)setStatusLastUpdatedDate:(id)date;
- (void)setType:(signed __int16)type;
@end

@implementation MSRAPRecord

- (MSRAPRecord)initWithClientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)status statusLastUpdatedDate:(id)self0 summary:(id)self1 type:(signed __int16)self2
{
  selfCopy = self;
  indexCopy = index;
  revisionCopy = revision;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - v17;
  if (data)
  {
    codeCopy = code;
    responseCopy = response;
    idCopy = id;
    dateCopy = date;
    summaryCopy = summary;
    dataCopy = data;
    v25 = sub_1B63BE924();
    v53 = v26;
    v54 = v25;

    if (code)
    {
      goto LABEL_3;
    }
  }

  else
  {
    codeCopy2 = code;
    responseCopy2 = response;
    idCopy2 = id;
    dateCopy2 = date;
    summaryCopy2 = summary;
    v53 = 0xF000000000000000;
    v54 = 0;
    if (code)
    {
LABEL_3:
      v27 = sub_1B63BEBD4();
      v51 = v28;
      v52 = v27;

      if (response)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v51 = 0;
  v52 = 0;
  if (response)
  {
LABEL_4:
    v29 = sub_1B63BE924();
    v31 = v30;

    if (id)
    {
      goto LABEL_5;
    }

LABEL_10:
    v32 = 0;
    v34 = 0;
    if (date)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v29 = 0;
  v31 = 0xF000000000000000;
  if (!id)
  {
    goto LABEL_10;
  }

LABEL_5:
  v32 = sub_1B63BEBD4();
  v34 = v33;

  if (date)
  {
LABEL_6:
    sub_1B63BE974();

    v35 = sub_1B63BE994();
    (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
    goto LABEL_12;
  }

LABEL_11:
  v41 = sub_1B63BE994();
  (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
LABEL_12:
  if (summary)
  {
    v42 = sub_1B63BEBD4();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v49 = v18;
  v46 = v53;
  v45 = v54;
  v47 = sub_1B6310620(revisionCopy, v54, v53, v52, v51, indexCopy, v29, v31, v32, v34, status, v49, v42, v44, type);
  sub_1B6284F64(v29, v31);
  sub_1B6284F64(v45, v46);
  return v47;
}

- (MSRAPRecord)initWithStore:(id)store clientRevision:(signed __int16)revision contentData:(id)data countryCode:(id)code positionIndex:(int64_t)index rapResponse:(id)response reportId:(id)id status:(signed __int16)self0 statusLastUpdatedDate:(id)self1 summary:(id)self2 type:(signed __int16)self3
{
  selfCopy = self;
  indexCopy = index;
  revisionCopy = revision;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v49 - v18;
  storeCopy = store;
  if (data)
  {
    storeCopy2 = store;
    codeCopy = code;
    responseCopy = response;
    idCopy = id;
    dateCopy = date;
    summaryCopy = summary;
    dataCopy = data;
    v27 = sub_1B63BE924();
    v51 = v28;
    v52 = v27;

    if (code)
    {
      goto LABEL_3;
    }
  }

  else
  {
    storeCopy3 = store;
    codeCopy2 = code;
    responseCopy2 = response;
    idCopy2 = id;
    dateCopy2 = date;
    summaryCopy2 = summary;
    v51 = 0xF000000000000000;
    v52 = 0;
    if (code)
    {
LABEL_3:
      v29 = sub_1B63BEBD4();
      v49 = v30;
      v50 = v29;

      if (response)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v49 = 0;
  v50 = 0;
  if (response)
  {
LABEL_4:
    v31 = sub_1B63BE924();
    v33 = v32;

    if (id)
    {
      goto LABEL_5;
    }

LABEL_10:
    v34 = 0;
    v36 = 0;
    if (date)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v31 = 0;
  v33 = 0xF000000000000000;
  if (!id)
  {
    goto LABEL_10;
  }

LABEL_5:
  v34 = sub_1B63BEBD4();
  v36 = v35;

  if (date)
  {
LABEL_6:
    sub_1B63BE974();

    v37 = sub_1B63BE994();
    (*(*(v37 - 8) + 56))(v19, 0, 1, v37);
    goto LABEL_12;
  }

LABEL_11:
  v44 = sub_1B63BE994();
  (*(*(v44 - 8) + 56))(v19, 1, 1, v44);
LABEL_12:
  if (summary)
  {
    v45 = sub_1B63BEBD4();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  return RAPRecord.init(store:clientRevision:contentData:countryCode:positionIndex:rapResponse:reportId:status:statusLastUpdatedDate:summary:type:)(storeCopy, revisionCopy, v52, v51, v50, v49, indexCopy, v31, v33, v34, v36, status, v19, v45, v47, type);
}

+ (Class)managedClass
{
  type metadata accessor for MapsSyncManagedRAPRecord();

  return swift_getObjCClassFromMetadata();
}

- (void)setPropertiesUnsafeWithManagedObject:(id)object lazyLoad:(BOOL)load parent:(BOOL)parent
{
  objectCopy = object;
  selfCopy = self;
  sub_1B631018C(objectCopy, load);
}

- (void)setClientRevision:(signed __int16)revision
{
  selfCopy = self;
  sub_1B630B5B4(revision);
}

- (int64_t)positionIndex
{
  v3 = OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock;
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync14MapsSyncObject__propertyLock);
  selfCopy = self;
  [v4 lock];
  v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MSRAPRecord__positionIndex);
  [*(&self->super.super.isa + v3) unlock];

  return v6;
}

- (void)setPositionIndex:(int64_t)index
{
  selfCopy = self;
  sub_1B630C37C(index);
}

- (void)setStatus:(signed __int16)status
{
  selfCopy = self;
  sub_1B630D500(status);
}

- (NSDate)statusLastUpdatedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1B630D870(v5);

  v7 = sub_1B63BE994();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1B63BE954();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setStatusLastUpdatedDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943210, &unk_1B63C3F50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (date)
  {
    sub_1B63BE974();
    v8 = sub_1B63BE994();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B63BE994();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_1B630DE70(v7);
}

- (void)setType:(signed __int16)type
{
  selfCopy = self;
  sub_1B630F090(type);
}

- (MSCommunityID)communityID
{
  selfCopy = self;
  v3 = sub_1B630F38C();

  return v3;
}

- (void)setCommunityID:(id)d
{
  dCopy = d;
  selfCopy = self;
  sub_1B630F83C(d);
}

- (MSRAPRecord)initWithObject:(id)object store:(id)store lazyLoad:(BOOL)load parent:(BOOL)parent
{
  parentCopy = parent;
  loadCopy = load;
  objectCopy = object;
  return sub_1B630F9F8(object, store, loadCopy, parentCopy);
}

@end
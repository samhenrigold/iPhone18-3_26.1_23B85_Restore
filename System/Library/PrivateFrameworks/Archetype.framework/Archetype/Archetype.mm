uint64_t sub_240FA70A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_240FA70E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E378, &qword_240FAF280);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_240FAF250;
  sub_240FAEA80();

  MEMORY[0x245CD5BD0](a1, a2);
  MEMORY[0x245CD5BD0](a3, a4);
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = 0xD000000000000012;
  *(v8 + 40) = 0x8000000240FAF650;
  sub_240FAEAF0();
}

uint64_t static ATRawAssortmentClient.printRawAssortment()()
{
  v0 = objc_opt_self();
  v1 = &unk_2852D96F0;
  v2 = [v0 interfaceWithProtocol_];
  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_240FAE970();
  v5 = [v3 initWithMachServiceName:v4 options:0];

  [v5 setRemoteObjectInterface:v2];
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD00000000000002BLL;
  *(v6 + 24) = 0x8000000240FAF4B0;
  v34 = sub_240FA7E04;
  v35 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_240FA70A4;
  v33 = &block_descriptor;
  v7 = _Block_copy(&aBlock);

  [v5 setInterruptionHandler:v7];
  _Block_release(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000002BLL;
  *(v8 + 24) = 0x8000000240FAF4B0;
  v34 = sub_240FA7E54;
  v35 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_240FA70A4;
  v33 = &block_descriptor_6;
  v9 = _Block_copy(&aBlock);

  [v5 setInvalidationHandler:v9];
  _Block_release(v9);
  [v5 activate];

  v34 = sub_240FA7860;
  v35 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_240FA7960;
  v33 = &block_descriptor_9;
  v10 = _Block_copy(&aBlock);
  v11 = [v5 remoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  sub_240FAEA70();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E370, &qword_240FAF278);
  v12 = swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E378, &qword_240FAF280);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_240FAF250;
    aBlock = 0;
    v31 = 0xE000000000000000;
    sub_240FAEA80();

    aBlock = 0xD00000000000002ALL;
    v31 = 0x8000000240FAF550;
    [v5 processIdentifier];
    v14 = sub_240FAEAB0();
    MEMORY[0x245CD5BD0](v14);

    v15 = aBlock;
    v16 = v31;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 32) = v15;
    *(v13 + 40) = v16;
    sub_240FAEAF0();

    v17 = dispatch_semaphore_create(0);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v34 = sub_240FA7F0C;
    v35 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_240FA7AF0;
    v33 = &block_descriptor_15;
    v19 = _Block_copy(&aBlock);
    v20 = v17;

    [v29 spotlightEmailAttributes:10 completionHandler:v19];
    _Block_release(v19);
    sub_240FAEA30();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v34 = sub_240FA7F14;
    v35 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_240FA7AF0;
    v33 = &block_descriptor_21;
    v22 = _Block_copy(&aBlock);
    v23 = v20;

    [v29 spotlightItemTitles:10 completionHandler:v22];
    _Block_release(v22);
    sub_240FAEA30();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v34 = sub_240FA7F1C;
    v35 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_240FA7AF0;
    v33 = &block_descriptor_27;
    v25 = _Block_copy(&aBlock);
    v26 = v23;

    [v29 textOnScreenAX_];
    _Block_release(v25);
    sub_240FAEA30();
    swift_unknownObjectRelease();

    v5 = v26;
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_240FAF250;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 32) = 0xD000000000000033;
    *(v27 + 40) = 0x8000000240FAF510;
    sub_240FAEAF0();
  }

  return v12;
}

uint64_t sub_240FA7860(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E378, &qword_240FAF280);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_240FAF250;
  sub_240FAEA80();
  MEMORY[0x245CD5BD0](0xD000000000000031, 0x8000000240FAF610);
  swift_getErrorValue();
  v2 = sub_240FAEAE0();
  MEMORY[0x245CD5BD0](v2);

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_240FAEAF0();
}

void sub_240FA7960(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_240FA79C8(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E378, &qword_240FAF280);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_240FAF250;
  v5 = 0xE000000000000000;
  sub_240FAEA80();

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    a1 = 0;
  }

  MEMORY[0x245CD5BD0](a1, v5);

  MEMORY[0x245CD5BD0](657952, 0xE300000000000000);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0x69616D65200A0A0ALL;
  *(v4 + 40) = 0xEB000000003A736CLL;
  sub_240FAEAF0();

  return sub_240FAEA40();
}

uint64_t sub_240FA7AF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_240FAE990();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_240FA7B6C(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E378, &qword_240FAF280);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_240FAF250;
  v5 = 0xE000000000000000;
  sub_240FAEA80();

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    a1 = 0;
  }

  MEMORY[0x245CD5BD0](a1, v5);

  MEMORY[0x245CD5BD0](657952, 0xE300000000000000);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x8000000240FAF5F0;
  sub_240FAEAF0();

  return sub_240FAEA40();
}

uint64_t sub_240FA7C90(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E378, &qword_240FAF280);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_240FAF250;
  v5 = 0xE000000000000000;
  sub_240FAEA80();

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    a1 = 0;
  }

  MEMORY[0x245CD5BD0](a1, v5);

  MEMORY[0x245CD5BD0](657952, 0xE300000000000000);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000240FAF5D0;
  sub_240FAEAF0();

  return sub_240FAEA40();
}

uint64_t sub_240FA7DCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_240FA7ED4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static ATCalendarEvent.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27E51E380 = a1;
  return result;
}

uint64_t ATCalendarEvent.eventTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle);

  return v1;
}

id ATCalendarEvent.__allocating_init(eventTitle:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ATCalendarEvent.init(eventTitle:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ATCalendarEvent();
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_240FA8280@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle);
  v3 = *(v1 + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle + 8);
  v5 = type metadata accessor for ATCalendarEvent();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  a1[3] = v5;
  *a1 = result;
  return result;
}

void sub_240FA837C(void *a1)
{
  v2 = sub_240FAE970();
  v3 = sub_240FAE970();
  [a1 encodeObject:v2 forKey:v3];
}

id ATCalendarEvent.init(coder:)(void *a1)
{
  sub_240FAD3F0(0, &qword_27E51E390, 0x277CCACA8);
  v2 = sub_240FAEA50();
  if (v2)
  {
    v3 = v2;
    sub_240FAE980();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_240FA86B0()
{
  MEMORY[0x245CD5BD0](*(v0 + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle), *(v0 + OBJC_IVAR____TtC9Archetype15ATCalendarEvent_eventTitle + 8));
  MEMORY[0x245CD5BD0](34, 0xE100000000000000);
  return 34;
}

id ATCalendarEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static ATArrayOfCalendarEvents.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27E51E381 = a1;
  return result;
}

void sub_240FA8A10(void *a1)
{
  type metadata accessor for ATCalendarEvent();
  v2 = sub_240FAE9C0();
  v3 = sub_240FAE970();
  [a1 encodeObject:v2 forKey:v3];
}

id ATArrayOfCalendarEvents.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for ATCalendarEvent();
  if (sub_240FAEA60())
  {
    v5 = sub_240FAE9C0();

    v6 = [v4 initWithCalendarEvents_];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id ATArrayOfCalendarEvents.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for ATCalendarEvent();
  if (sub_240FAEA60())
  {
    v4 = sub_240FAE9C0();

    v5 = [v2 initWithCalendarEvents_];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_240FA8DF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype23ATArrayOfCalendarEvents_calendarEvents);
  if (v1 >> 62)
  {
    v2 = sub_240FAEAA0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E3A0, &unk_240FAF2D0);
    sub_240FAD320();
    v14 = sub_240FAE960();
    v16 = v15;

    MEMORY[0x245CD5BD0](v14, v16);

    MEMORY[0x245CD5BD0](93, 0xE100000000000000);
    return 91;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_240FAD300(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245CD5CB0](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 description];
      v8 = sub_240FAE990();
      v10 = v9;

      v12 = *(v17 + 16);
      v11 = *(v17 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_240FAD300((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      *(v17 + 16) = v12 + 1;
      v13 = v17 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v2 != v4);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t static ATPlayedMediaItem.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27E51E382 = a1;
  return result;
}

uint64_t ATPlayedMediaItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title);

  return v1;
}

uint64_t ATPlayedMediaItem.artist.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist);

  return v1;
}

uint64_t ATPlayedMediaItem.album.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album);

  return v1;
}

uint64_t ATPlayedMediaItem.link.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link);

  return v1;
}

uint64_t ATPlayedMediaItem.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID);

  return v1;
}

uint64_t ATPlayedMediaItem.mediaType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType);

  return v1;
}

id ATPlayedMediaItem.__allocating_init(title:artist:album:link:bundleID:mediaType:playTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = objc_allocWithZone(v13);
  v23 = &v22[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &v22[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist];
  *v24 = a3;
  *(v24 + 1) = a4;
  v25 = &v22[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album];
  *v25 = a5;
  *(v25 + 1) = a6;
  v26 = &v22[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link];
  *v26 = a7;
  *(v26 + 1) = a8;
  v27 = &v22[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID];
  *v27 = a10;
  *(v27 + 1) = a11;
  v28 = &v22[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType];
  *v28 = a12;
  *(v28 + 1) = a13;
  *&v22[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime] = a9;
  v31.receiver = v22;
  v31.super_class = v13;
  return objc_msgSendSuper2(&v31, sel_init);
}

id ATPlayedMediaItem.init(title:artist:album:link:bundleID:mediaType:playTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = &v13[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album];
  *v16 = a5;
  *(v16 + 1) = a6;
  v17 = &v13[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link];
  *v17 = a7;
  *(v17 + 1) = a8;
  v18 = &v13[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID];
  *v18 = a10;
  *(v18 + 1) = a11;
  v19 = &v13[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType];
  *v19 = a12;
  *(v19 + 1) = a13;
  *&v13[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime] = a9;
  v21.receiver = v13;
  v21.super_class = type metadata accessor for ATPlayedMediaItem();
  return objc_msgSendSuper2(&v21, sel_init);
}

void *sub_240FA9638@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title + 8);
  v3 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist + 8);
  v22 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist);
  v23 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title);
  v4 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link + 8);
  v20 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link);
  v21 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album);
  v7 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID);
  v6 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID + 8);
  v8 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType);
  v9 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType + 8);
  v10 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime);
  v11 = type metadata accessor for ATPlayedMediaItem();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title];
  *v13 = v23;
  *(v13 + 1) = v2;
  v14 = &v12[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist];
  *v14 = v22;
  *(v14 + 1) = v3;
  v15 = &v12[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album];
  *v15 = v21;
  *(v15 + 1) = v4;
  v16 = &v12[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link];
  *v16 = v20;
  *(v16 + 1) = v5;
  v17 = &v12[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID];
  *v17 = v7;
  *(v17 + 1) = v6;
  v18 = &v12[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType];
  *v18 = v8;
  *(v18 + 1) = v9;
  *&v12[OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime] = v10;
  v25.receiver = v12;
  v25.super_class = v11;

  result = objc_msgSendSuper2(&v25, sel_init);
  a1[3] = v11;
  *a1 = result;
  return result;
}

void sub_240FA9830(void *a1)
{
  v3 = sub_240FAE970();
  v4 = sub_240FAE970();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_240FAE970();
  v6 = sub_240FAE970();
  [a1 encodeObject:v5 forKey:v6];

  v7 = sub_240FAE970();
  v8 = sub_240FAE970();
  [a1 encodeObject:v7 forKey:v8];

  v9 = sub_240FAE970();
  v10 = sub_240FAE970();
  [a1 encodeObject:v9 forKey:v10];

  v11 = sub_240FAE970();
  v12 = sub_240FAE970();
  [a1 encodeObject:v11 forKey:v12];

  v13 = sub_240FAE970();
  v14 = sub_240FAE970();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime);
  v16 = sub_240FAE970();
  [a1 encodeDouble:v16 forKey:v15];
}

id ATPlayedMediaItem.init(coder:)(void *a1)
{
  sub_240FAD3F0(0, &qword_27E51E390, 0x277CCACA8);
  v2 = sub_240FAEA50();
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v3 = v2;
    sub_240FAE980();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_240FA9F44()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType;
  v3 = *(v0 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_mediaType);
  v4 = *(v2 + 8);
  v5 = v3 == 1735290739 && v4 == 0xE400000000000000;
  if (v5 || (sub_240FAEAD0() & 1) != 0)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_240FAEA80();
    MEMORY[0x245CD5BD0](0x2820676E6F735BLL, 0xE700000000000000);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID + 8));
    MEMORY[0x245CD5BD0](572546345, 0xE400000000000000);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title + 8));
    MEMORY[0x245CD5BD0](0x2079622022, 0xE500000000000000);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist + 8));
    result = MEMORY[0x245CD5BD0](0x695479616C70202CLL, 0xEC000000203A656DLL);
    v7 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime);
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v7 > -9.22337204e18)
      {
        if (v7 < 9.22337204e18)
        {
LABEL_9:
          v8 = sub_240FAEAB0();
          MEMORY[0x245CD5BD0](v8);

          MEMORY[0x245CD5BD0](0xD000000000000010, 0x8000000240FAF8F0);
          MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_link + 8));
          MEMORY[0x245CD5BD0](41, 0xE100000000000000);
          return v16;
        }

        goto LABEL_43;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v9 = v3 == 0x74736163646F70 && v4 == 0xE700000000000000;
  if (v9 || (sub_240FAEAD0() & 1) != 0)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_240FAEA80();
    MEMORY[0x245CD5BD0](0x74736163646F705BLL, 0xEA00000000002820);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID + 8));
    MEMORY[0x245CD5BD0](2236509, 0xE300000000000000);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist + 8));
    MEMORY[0x245CD5BD0](0x6F73697065202C22, 0xED000022203A6564);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title + 8));
    v3 = &v16;
    result = MEMORY[0x245CD5BD0](0x5479616C70202C22, 0xED0000203A656D69);
    v10 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v10 <= -9.22337204e18)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v10 < 9.22337204e18)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v11 = v3 == 0x6F6F626F69647561 && v4 == 0xE90000000000006BLL;
  if (v11 || (sub_240FAEAD0() & 1) != 0)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_240FAEA80();
    MEMORY[0x245CD5BD0](0x6F626F696475615BLL, 0xEC00000028206B6FLL);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID + 8));
    MEMORY[0x245CD5BD0](572546345, 0xE400000000000000);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_album + 8));
    MEMORY[0x245CD5BD0](0x2079622022, 0xE500000000000000);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_artist + 8));
    MEMORY[0x245CD5BD0](0x657470616863202CLL, 0xEC00000022203A72);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title + 8));
    v3 = &v16;
    result = MEMORY[0x245CD5BD0](0x5479616C70202C22, 0xED0000203A656D69);
    v12 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime);
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v12 <= -9.22337204e18)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v12 < 9.22337204e18)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v13 = v3 == 0xD000000000000010 && 0x8000000240FAF8D0 == v4;
  if (v13 || (sub_240FAEAD0() & 1) != 0)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_240FAEA80();
    MEMORY[0x245CD5BD0](0xD000000000000010, 0x8000000240FAF910);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID + 8));
    MEMORY[0x245CD5BD0](572546345, 0xE400000000000000);
    MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title + 8));
    result = MEMORY[0x245CD5BD0](0x5479616C70202C22, 0xED0000203A656D69);
    v14 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v14 <= -9.22337204e18)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v14 < 9.22337204e18)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_240FAEA80();
  MEMORY[0x245CD5BD0](0x6E776F6E6B6E755BLL, 0xEA00000000002820);
  MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_bundleID + 8));
  MEMORY[0x245CD5BD0](0x656C746974205D29, 0xEB0000000022203ALL);
  MEMORY[0x245CD5BD0](*(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title), *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_title + 8));
  result = MEMORY[0x245CD5BD0](0x5479616C70202C22, 0xED0000203A656D69);
  v15 = *(v1 + OBJC_IVAR____TtC9Archetype17ATPlayedMediaItem_playTime);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v15 > -9.22337204e18)
  {
    if (v15 < 9.22337204e18)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t static ATArrayOfPlayedMediaItems.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27E51E383 = a1;
  return result;
}

id sub_240FAA924(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_240FAA99C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_240FAAA10(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void *a5, uint64_t (*a6)(void))
{
  a4(a1, a2);
  *&a1[*a5] = sub_240FAE9D0();
  v10.receiver = a1;
  v10.super_class = a6();
  return objc_msgSendSuper2(&v10, sel_init);
}

void *sub_240FAAAA4@<X0>(void *a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v6 = *(v3 + *a1);
  v7 = a2();
  v8 = objc_allocWithZone(v7);
  *&v8[*a1] = v6;
  v10.receiver = v8;
  v10.super_class = v7;

  result = objc_msgSendSuper2(&v10, sel_init);
  a3[3] = v7;
  *a3 = result;
  return result;
}

id sub_240FAAB40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  v6 = *(a1 + *a4);
  v7 = a5();
  v8 = objc_allocWithZone(v7);
  *&v8[*a4] = v6;
  v10.receiver = v8;
  v10.super_class = v7;

  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_240FAABB0(void *a1)
{
  type metadata accessor for ATPlayedMediaItem();
  v2 = sub_240FAE9C0();
  v3 = sub_240FAE970();
  [a1 encodeObject:v2 forKey:v3];
}

id ATArrayOfPlayedMediaItems.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for ATPlayedMediaItem();
  if (sub_240FAEA60())
  {
    v5 = sub_240FAE9C0();

    v6 = [v4 initWithPlayedMediaItems_];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id ATArrayOfPlayedMediaItems.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for ATPlayedMediaItem();
  if (sub_240FAEA60())
  {
    v4 = sub_240FAE9C0();

    v5 = [v2 initWithPlayedMediaItems_];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id sub_240FAAF6C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_240FAE970();

  return v5;
}

char *sub_240FAAFDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Archetype25ATArrayOfPlayedMediaItems_playedMediaItems);
  if (v1 >> 62)
  {
    v2 = sub_240FAEAA0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E3A0, &unk_240FAF2D0);
    sub_240FAD320();
    v14 = sub_240FAE960();

    return v14;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_240FAD300(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x245CD5CB0](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 description];
      v8 = sub_240FAE990();
      v10 = v9;

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_240FAD300((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v2 != v4);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id ATPersonalizationClient.init()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_240FAE970();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  v4 = OBJC_IVAR____TtC9Archetype23ATPersonalizationClient_connection;
  *&v0[OBJC_IVAR____TtC9Archetype23ATPersonalizationClient_connection] = v3;
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  [*&v0[v4] resume];
  v8 = *&v0[v4];
  aBlock[4] = sub_240FAB410;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240FA7960;
  aBlock[3] = &block_descriptor_0;
  v9 = _Block_copy(aBlock);
  v10 = v8;
  v11 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_240FAEA70();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E400, &qword_240FAF2E0);
  v12 = swift_dynamicCast();
  v13 = v16;
  if (!v12)
  {
    v13 = 0;
  }

  *&v0[OBJC_IVAR____TtC9Archetype23ATPersonalizationClient_remoteObjectProxy] = v13;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ATPersonalizationClient();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_240FAB410(void *a1)
{
  v2 = sub_240FAE950();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240FAE940();
  v6 = a1;
  v7 = sub_240FAE930();
  v8 = sub_240FAEA20();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_240FA6000, v7, v8, "Received error from ArchetypeService: %@", v9, 0xCu);
    sub_240FAE778(v10, &qword_27E51E4F8, &qword_240FAF4B0);
    MEMORY[0x245CD60C0](v10, -1, -1);
    MEMORY[0x245CD60C0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_240FAB5DC(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 160) = a1;
  return MEMORY[0x2822009F8](sub_240FAB600, 0, 0);
}

uint64_t sub_240FAB600()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC9Archetype23ATPersonalizationClient_remoteObjectProxy);
  if (v1)
  {
    v2 = *(v0 + 160);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_240FAB774;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E410, &qword_240FAF2F0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_240FAE92C;
    *(v0 + 104) = &block_descriptor_3;
    *(v0 + 112) = v3;
    [v1 freeNowWithExcludeAllDayEvents:v2 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_240FAB774()
{

  return MEMORY[0x2822009F8](sub_240FAB854, 0, 0);
}

uint64_t sub_240FAB9F4(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_240FABAB0;

  return sub_240FAB5DC(a1);
}

uint64_t sub_240FABAB0(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240FABBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x2822009F8](sub_240FABC24, 0, 0);
}

uint64_t sub_240FABC24()
{
  v1 = *(v0[24] + OBJC_IVAR____TtC9Archetype23ATPersonalizationClient_remoteObjectProxy);
  if (v1)
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    v5 = sub_240FAE970();
    v0[25] = v5;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_240FABDC4;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E418, &qword_240FAF300);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240FAE92C;
    v0[13] = &block_descriptor_6_0;
    v0[14] = v6;
    [v1 topPlayedMediaWithK:v4 start:v3 end:v2 mediaType:v5 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_240FABDC4()
{

  return MEMORY[0x2822009F8](sub_240FABEA4, 0, 0);
}

uint64_t sub_240FABEA4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240FABF0C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_240FAC110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v11 = sub_240FAE990();
  v13 = v12;
  v6[4] = v12;
  a6;
  v14 = swift_task_alloc();
  v6[5] = v14;
  *v14 = v6;
  v14[1] = sub_240FAC20C;

  return sub_240FABBFC(a1, a2, a3, v11, v13);
}

uint64_t sub_240FAC20C(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240FAC374(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_240FAC398, 0, 0);
}

uint64_t sub_240FAC398()
{
  v1 = *(v0[22] + OBJC_IVAR____TtC9Archetype23ATPersonalizationClient_remoteObjectProxy);
  if (v1)
  {
    v2 = sub_240FAE970();
    v0[23] = v2;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_240FAC51C;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E51E420, &unk_240FAF310);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240FAC668;
    v0[13] = &block_descriptor_9_0;
    v0[14] = v3;
    [v1 currentLocationWithEffectiveBundleIdentifier:v2 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = v0[1];

    return v4(0, 0);
  }
}

uint64_t sub_240FAC51C()
{

  return MEMORY[0x2822009F8](sub_240FAC5FC, 0, 0);
}

uint64_t sub_240FAC5FC()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_240FAC668(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_240FAE990();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_240FAC868(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_240FAE990();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_240FAC93C;

  return sub_240FAC374(v5, v7);
}

uint64_t sub_240FAC93C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = sub_240FAE970();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

id sub_240FACADC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_240FACB60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_240FAE910;

  return v6();
}

uint64_t sub_240FACC48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_240FACD30;

  return v7();
}

uint64_t sub_240FACD30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240FACE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_240FAE2CC(a3, v22 - v9);
  v11 = sub_240FAEA00();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_240FAE778(v10, &qword_27E51E4F0, &qword_240FAF420);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_240FAE9F0();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_240FAE9E0();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_240FAE9A0() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_240FAE778(a3, &qword_27E51E4F0, &qword_240FAF420);

    return v20;
  }

LABEL_8:
  sub_240FAE778(a3, &qword_27E51E4F0, &qword_240FAF420);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_240FAD110(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_240FAD208;

  return v6(a1);
}

uint64_t sub_240FAD208()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_240FAD300(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_240FAE7D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_240FAD320()
{
  result = qword_27E51E3A8;
  if (!qword_27E51E3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51E3A0, &unk_240FAF2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51E3A8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_240FAD3F0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240FAD4A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_240FAD558@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27E51E380;
  return result;
}

uint64_t sub_240FAD5A4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27E51E380 = v1;
  return result;
}

uint64_t sub_240FAD5EC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27E51E381;
  return result;
}

uint64_t sub_240FAD638(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27E51E381 = v1;
  return result;
}

uint64_t sub_240FAD680@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27E51E382;
  return result;
}

uint64_t sub_240FAD6CC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27E51E382 = v1;
  return result;
}

uint64_t sub_240FAD714@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27E51E383;
  return result;
}

uint64_t sub_240FAD760(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27E51E383 = v1;
  return result;
}

uint64_t dispatch thunk of ATPersonalizationClient.freeNow(excludeAllDayEvents:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240FAE928;

  return v7(a1);
}

uint64_t dispatch thunk of ATPersonalizationClient.topPlayedMedia(k:start:end:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x68);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_240FADD08;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_240FADD08(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ATPersonalizationClient.currentLocation(effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x70);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240FADF3C;

  return v9(a1, a2);
}

uint64_t sub_240FADF3C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_240FAE040()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240FAE088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240FAE910;

  return sub_240FAC868(v2, v3, v4);
}

uint64_t sub_240FAE140()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240FAE910;

  return sub_240FACB60(v2, v3, v4);
}

uint64_t sub_240FAE200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240FAE910;

  return sub_240FACC48(a1, v4, v5, v6);
}

uint64_t sub_240FAE2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240FAE33C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240FAE374(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240FAE910;

  return sub_240FAD110(a1, v4);
}

uint64_t sub_240FAE42C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240FACD30;

  return sub_240FAD110(a1, v4);
}

uint64_t sub_240FAE4E4()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_240FAE52C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_240FACD30;

  return sub_240FAC110(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_240FAE600()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240FAE640()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240FAE910;

  return sub_240FAB9F4(v2, v4, v3);
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_240FAE778(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_240FAE7D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E51E500, &qword_240FAF4B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}
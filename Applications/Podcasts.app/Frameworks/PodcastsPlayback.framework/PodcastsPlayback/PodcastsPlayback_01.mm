uint64_t sub_14F70()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t objectdestroyTm()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t NowPlayingItemPlayheadSynchronizer.__allocating_init(asPartOf:)(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D530, &qword_5C3E8);
  sub_5A094();
  *(v1 + 16) = v3;
  type metadata accessor for PlaybackController(0);
  sub_5A094();

  *(v1 + 24) = v3;
  return v1;
}

uint64_t NowPlayingItemPlayheadSynchronizer.init(asPartOf:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D530, &qword_5C3E8);
  sub_5A094();
  *(v1 + 16) = v3;
  type metadata accessor for PlaybackController(0);
  sub_5A094();

  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_151A8()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v11 = sub_1571C;
  v12 = v2;
  aBlock = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_159C8;
  v10 = &block_descriptor_1;
  v3 = _Block_copy(&aBlock);

  v4 = [v1 addEpisodeObserverUsingBlock:v3];
  _Block_release(v3);
  if (v4)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    v8 = 0;
    v9 = 0;
  }

  aBlock = v4;
  v10 = ObjectType;
  swift_beginAccess();
  sub_15A5C(&aBlock, v0 + 32);
  return swift_endAccess();
}

uint64_t sub_152D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_15310(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_59D14();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v16 = v32;
    if (v32)
    {
      v17 = [v32 identifiers];
      v18 = [v17 library];

      if (!v18)
      {

        return;
      }

      v31 = v11;
      v19 = [v18 databaseID];
      swift_unknownObjectRelease();
      v20 = sub_5A194();
      v22 = v21;

      if (v20 == a1 && v22 == a2)
      {

        v23 = v31;
        goto LABEL_9;
      }

      v24 = sub_5A8E4();

      v23 = v31;
      if (v24)
      {
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_59E24();

        if (v32 != 1)
        {
          sub_59CC4();
          v25 = sub_59D04();
          v26 = sub_5A474();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 134217984;
            *(v27 + 4) = a4;
            _os_log_impl(&dword_0, v25, v26, "Received playhead sync event for currently playing item. Moving playhead to %f", v27, 0xCu);
          }

          (*(v23 + 8))(v13, v10);
          v28 = sub_5A3B4();
          (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = 0;
          *(v29 + 32) = v15;
          *(v29 + 40) = a4;
          *(v29 + 48) = 0;
          *(v29 + 56) = 0;

          sub_424B4(0, 0, v9, &unk_5C508, v29);
        }
      }
    }
  }
}

uint64_t sub_15724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  return _swift_task_switch(sub_1574C, 0, 0);
}

uint64_t sub_1574C()
{
  v1 = *(v0 + 88);
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_15810;

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_15810(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_15964;
  }

  else
  {
    *(v4 + 112) = a1;
    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v5 = sub_15940;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_15964()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_159C8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = sub_5A194();
  v7 = v6;

  v4(v5, v7, a3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_15A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC80, &qword_5C3F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlayingItemPlayheadSynchronizer.deinit()
{
  swift_unknownObjectRelease();

  sub_15AFC(v0 + 32);
  return v0;
}

uint64_t sub_15AFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC80, &qword_5C3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NowPlayingItemPlayheadSynchronizer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_15AFC(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_15C30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_15C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_15D44;

  return sub_15724(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_15D44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_15E38(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  if (!v2)
  {
    return 0;
  }

  result = sub_59C54();
  if (v4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_15E80(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v5)
  {
    result = sub_15E38(a1, a2);
    if (v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_15EF0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MTEpisodeLookupRequest) init];
  result = sub_15E38(a1, a2);
  if ((v6 & 1) == 0)
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    [v4 setStoreTrackId:result];
  }

  (*(a2 + 24))(a1, a2);
  if (v7)
  {
    v8 = sub_5A174();
  }

  else
  {
    v8 = 0;
  }

  [v4 setUuid:v8];

  return v4;
}

uint64_t getEnumTagSinglePayload for PlaybackPositionTrackerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackPositionTrackerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_16208()
{
  result = qword_7D608;
  if (!qword_7D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D608);
  }

  return result;
}

void QueueModelSection.init(tracklistSection:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_5A194();
  v6 = v5;
  if (v4 == sub_5A194() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_5A8E4();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = sub_5A194();
  v13 = v12;
  if (v11 == sub_5A194() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v16 = sub_5A8E4();

    if (v16)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_9:
  *a2 = v10;
}

PodcastsPlayback::QueueModelSection_optional __swiftcall QueueModelSection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_71E50;
  v8._object = object;
  v5 = sub_5A874(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t QueueModelSection.rawValue.getter()
{
  if (*v0)
  {
    return 0x7565755174666F73;
  }

  else
  {
    return 0x7565755164726168;
  }
}

uint64_t sub_16460(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7565755174666F73;
  }

  else
  {
    v2 = 0x7565755164726168;
  }

  if (*a2)
  {
    v3 = 0x7565755174666F73;
  }

  else
  {
    v3 = 0x7565755164726168;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_5A8E4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_164F4()
{
  sub_5A974();
  sub_5A1E4();

  return sub_5A9A4();
}

uint64_t sub_16574(uint64_t a1)
{
  sub_5A1E4();
}

Swift::Int sub_165D8(uint64_t a1)
{
  sub_5A974();
  sub_5A1E4();

  return sub_5A9A4();
}

uint64_t sub_16654@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_71E50;
  v8._object = v3;
  v5 = sub_5A874(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_166B4(uint64_t *a1@<X8>)
{
  v2 = 0x7565755164726168;
  if (*v1)
  {
    v2 = 0x7565755174666F73;
  }

  *a1 = v2;
  a1[1] = 0xE900000000000065;
}

unint64_t sub_166F4()
{
  result = qword_7D610;
  if (!qword_7D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D610);
  }

  return result;
}

void sub_16758()
{
  v0 = objc_allocWithZone(MPRemoteCommandCenter);
  v1 = sub_5A174();
  v2 = [v0 initWithPlayerID:v1];

  qword_7D618 = v2;
}

id RemoteFollowCommandCenter.__allocating_init(asPartOf:subscriptionUtility:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_subscriptionUtility] = a2;
  type metadata accessor for PlaybackController(0);
  swift_unknownObjectRetain();
  sub_5A094();
  *&v4[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_playbackController] = v8;
  v7.receiver = v4;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, "init");

  swift_unknownObjectRelease();
  return v5;
}

id RemoteFollowCommandCenter.init(asPartOf:subscriptionUtility:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_subscriptionUtility] = a2;
  type metadata accessor for PlaybackController(0);
  swift_unknownObjectRetain();
  sub_5A094();
  *&v2[OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_playbackController] = v6;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for RemoteFollowCommandCenter();
  v3 = objc_msgSendSuper2(&v5, "init");

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1694C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_5A3B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_5A384();
  v6 = v0;
  v7 = sub_5A374();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = ObjectType;
  sub_17A48(0, 0, v4, &unk_5C750, v8);
}

uint64_t sub_16A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_59D14();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCA0, &qword_5C808);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  v4[22] = swift_task_alloc();
  v7 = sub_5A4E4();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D680, &unk_5CF50);
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCB0, &unk_5C830);
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = sub_5A384();
  v4[39] = sub_5A374();
  v13 = sub_5A354();
  v4[40] = v13;
  v4[41] = v12;

  return _swift_task_switch(sub_16E18, v13, v12);
}

uint64_t sub_16E18()
{
  v20 = v0[34];
  v27 = v0[33];
  v24 = v0[32];
  v16 = v0[29];
  v17 = v0[30];
  v12 = v0[28];
  v15 = v0[27];
  v13 = v0[26];
  v14 = v0[31];
  v21 = v0[24];
  v22 = v0[23];
  v18 = v0[25];
  v19 = v0[22];
  v23 = v0[21];
  v25 = v0[19];
  v26 = v0[20];
  v1 = *(v0[15] + OBJC_IVAR____TtC16PodcastsPlayback25RemoteFollowCommandCenter_playbackController);
  v2 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[10] = (*(v4 + 8))(v3, v4);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  sub_59F64();
  (*(v15 + 8))(v12, v13);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v5 = sub_59E74();
  (*(v17 + 8))(v14, v16);
  v0[11] = v5;
  sub_5A4D4();
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v6 = sub_5A504();
  v0[12] = v6;
  v7 = sub_5A4A4();
  (*(*(v7 - 8) + 56))(v19, 1, 1, v7);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_59F44();
  sub_9708(v19, &unk_7D9C0, &unk_5C810);

  (*(v21 + 8))(v18, v22);

  sub_5108(&qword_7D6B0, &qword_7D680, &unk_5CF50, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  sub_59FA4();
  (*(v27 + 8))(v20, v24);
  sub_59D74();
  (*(v26 + 8))(v23, v25);
  v0[42] = sub_5A374();
  v8 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v9 = swift_task_alloc();
  v0[43] = v9;
  *v9 = v0;
  v9[1] = sub_17360;
  v10 = v0[35];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 13, v10, v8);
}

uint64_t sub_17360()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_5A354();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_178BC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_5A354();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_174F8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_174F8()
{

  v0[45] = v0[13];
  v1 = v0[40];
  v2 = v0[41];

  return _swift_task_switch(sub_17564, v1, v2);
}

uint64_t sub_17564()
{
  v1 = *(v0 + 360);
  if (v1 == &dword_0 + 1)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

LABEL_10:

    v16 = *(v0 + 8);

    return v16();
  }

  if (v1)
  {
    v2 = [v1 tracklist];
    v3 = [v2 resetCommand];

    if (v3)
    {
      swift_unknownObjectRelease();

      sub_59CC4();
      v4 = sub_59D04();
      v5 = sub_5A474();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_0, v4, v5, "Registered PodcastsFollowProxyPlayer", v6, 2u);
      }

      v8 = *(v0 + 136);
      v7 = *(v0 + 144);
      v9 = *(v0 + 128);

      (*(v8 + 8))(v7, v9);
      if (qword_7CC58 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 360);
      v12 = *(v0 + 288);
      v11 = *(v0 + 296);
      v13 = *(v0 + 280);
      v14 = *(v0 + 120);
      v15 = [qword_7D618 setPlaybackQueueCommand];
      [v15 addTarget:v14 action:"remoteSetPlaybackQueueCommand:completion:" usingExtendedStatus:1];
      sub_19D78(v10);

      (*(v12 + 8))(v11, v13);
      goto LABEL_10;
    }

    sub_19D78(*(v0 + 360));
  }

  *(v0 + 336) = sub_5A374();
  v18 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v19 = swift_task_alloc();
  *(v0 + 344) = v19;
  *v19 = v0;
  v19[1] = sub_17360;
  v20 = *(v0 + 280);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 104, v20, v18);
}

uint64_t sub_178BC()
{
  *(v0 + 112) = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_17948()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_17988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_15D44;

  return sub_16A84(a1, v4, v5, v6);
}

uint64_t sub_17A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_199B4(a3, v25 - v10);
  v12 = sub_5A3B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_9708(v11, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_5A354();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_5A1C4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_17D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_199B4(a3, v25 - v10);
  v12 = sub_5A3B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_9708(v11, &qword_7DB70, &qword_5C740);
  }

  else
  {
    sub_5A3A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_5A354();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_5A1C4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D670, &qword_5C7E0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_9708(a3, &qword_7DB70, &qword_5C740);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_9708(a3, &qword_7DB70, &qword_5C740);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D670, &qword_5C7E0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_1809C(char a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, const char *a7)
{
  v32 = a6;
  v12 = sub_59D14();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  if (a1)
  {
    sub_59CC4();

    v19 = sub_59D04();
    v20 = sub_5A474();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = a5;
      v22 = v21;
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      *(v22 + 14) = sub_9430(a3, a4, &v33);
      _os_log_impl(&dword_0, v19, v20, a7, v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);

      a5 = v31;
    }

    (*(v13 + 8))(v18, v12);
    v24 = 0;
  }

  else
  {
    sub_59CC4();

    v25 = sub_59D04();
    v26 = sub_5A454();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      *(v27 + 14) = sub_9430(a3, a4, &v33);
      _os_log_impl(&dword_0, v25, v26, "We didn't follow the show. Perhaps already subscribed?: %{private,mask.hash}s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    (*(v13 + 8))(v16, v12);
    v24 = 200;
  }

  v29 = [objc_opt_self() statusWithCode:v24];
  a5();
}

id RemoteFollowCommandCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteFollowCommandCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteFollowCommandCenter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_185D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_186C8;

  return v6(a1);
}

uint64_t sub_186C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_187C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_188B4;

  return v5(v2 + 32);
}

uint64_t sub_188B4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void sub_189C8(void *a1, char *a2, void (**a3)(void, void))
{
  v122 = sub_59A44();
  v128 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_59A84();
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v123 = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D658, &qword_5C7B8);
  __chkstk_darwin(v9 - 8);
  v11 = v113 - v10;
  v12 = sub_59AB4();
  v127 = *(v12 - 8);
  __chkstk_darwin(v12);
  v126 = v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_59D14();
  v129 = *(v14 - 8);
  v130 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v119 = v113 - v19;
  v20 = __chkstk_darwin(v18);
  v120 = v113 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = v113 - v23;
  __chkstk_darwin(v22);
  v26 = v113 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  _Block_copy(a3);
  v28 = [a1 playbackQueue];
  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = v28;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {

LABEL_7:
    sub_59CC4();
    v45 = sub_59D04();
    v46 = sub_5A454();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_0, v45, v46, "Received an unrecognized playback queue in compatibility command center handler. Dropping this request.", v47, 2u);
    }

    (*(v129 + 8))(v17, v130);
    v48 = [objc_opt_self() statusWithCode:200];
    (a3)[2](a3, v48);

    return;
  }

  v31 = v30;
  v115 = v12;
  v118 = a3;
  v113[1] = swift_getObjectType();
  sub_59CC4();
  v32 = a2;
  v33 = v29;
  v34 = sub_59D04();
  v35 = sub_5A474();

  v36 = os_log_type_enabled(v34, v35);
  v37 = &off_7B000;
  v117 = v27;
  if (v36)
  {
    v114 = v33;
    v38 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v38 = 136315394;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D660, &qword_5C7C0);
    v39 = sub_5A1B4();
    v41 = sub_9430(v39, v40, &aBlock);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = [v31 trackIdentifiers];
    if (v42)
    {
      v43 = v42;
      v44 = sub_5A294();
    }

    else
    {
      v44 = 0;
    }

    ObjectType = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D668, &qword_5C7C8);
    v49 = sub_5A1B4();
    v51 = sub_9430(v49, v50, &aBlock);

    *(v38 + 14) = v51;
    _os_log_impl(&dword_0, v34, v35, "Received playback queue in %s: %s", v38, 0x16u);
    swift_arrayDestroy();

    v116 = *(v129 + 8);
    v116(v26, v130);
    v33 = v114;
    v37 = &off_7B000;
  }

  else
  {

    v116 = *(v129 + 8);
    v116(v26, v130);
  }

  v52 = [v31 v37[406]];
  v53 = v118;
  v54 = v128;
  if (!v52)
  {
LABEL_19:
    sub_59CC4();
    v59 = v33;
    v60 = sub_59D04();
    v61 = sub_5A454();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 136315138;
      v64 = [v31 trackIdentifiers];
      if (v64)
      {
        v65 = v64;
        v66 = sub_5A294();

        if (v66[2])
        {
          v68 = v66[4];
          v67 = v66[5];
        }

        else
        {
          v68 = 0;
          v67 = 0xE000000000000000;
        }

        v53 = v118;
      }

      else
      {
        v68 = 0;
        v67 = 0xE000000000000000;
      }

      v69 = sub_9430(v68, v67, &aBlock);

      *(v62 + 4) = v69;
      _os_log_impl(&dword_0, v60, v61, "Unable to parse follow queue identifier: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);

      v116(v24, v130);
    }

    else
    {

      v116(v24, v130);
    }

    v70 = [objc_opt_self() statusWithCode:200];
    (v53)[2](v53, v70);

    return;
  }

  v55 = v52;
  v56 = sub_5A294();

  if (!*(v56 + 16))
  {

    goto LABEL_19;
  }

  sub_59A74();
  v57 = v127;
  v58 = v115;
  if ((*(v127 + 48))(v11, 1, v115) == 1)
  {
    sub_9708(v11, &qword_7D658, &qword_5C7B8);
    goto LABEL_19;
  }

  v71 = v126;
  (*(v57 + 32))(v126, v11, v58);
  v72 = v123;
  sub_59A94();
  v74 = v124;
  v73 = v125;
  v75 = (*(v124 + 88))(v72, v125);
  v76 = enum case for URLTrackIdentifier.Command.subscribe(_:);
  (*(v74 + 8))(v72, v73);
  if (v75 == v76)
  {
    v114 = v33;
    v77 = *(v54 + 104);
    v79 = v121;
    v78 = v122;
    v77(v121, enum case for URLTrackIdentifier.ArgumentKey.storeCollectionID(_:), v122);
    v80 = v78;
    v81 = sub_59A64();
    v83 = v82;
    v84 = *(v54 + 8);
    v84(v79, v80);
    if (v83)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v86 = sub_5A174();
      v87 = swift_allocObject();
      v87[2] = v81;
      v87[3] = v83;
      v88 = v117;
      v87[4] = sub_198F4;
      v87[5] = v88;
      v136 = sub_1998C;
      v137 = v87;
      aBlock = _NSConcreteStackBlock;
      v133 = 1107296256;
      v134 = sub_1803C;
      v135 = &block_descriptor_15;
      v89 = v71;
      v90 = _Block_copy(&aBlock);

      [ObjCClassFromMetadata subscribeToPodcastWithAdamID:v86 completion:v90];
      _Block_release(v90);

      (*(v127 + 8))(v89, v115);
    }

    else
    {
      v77(v79, enum case for URLTrackIdentifier.ArgumentKey.feedURL(_:), v80);
      v99 = v71;
      v100 = sub_59A64();
      v102 = v101;
      v84(v79, v80);
      if (v102)
      {
        v103 = swift_getObjCClassFromMetadata();
        v104 = sub_5A174();
        v105 = swift_allocObject();
        v105[2] = v100;
        v105[3] = v102;
        v106 = v117;
        v105[4] = sub_198F4;
        v105[5] = v106;
        v136 = sub_19908;
        v137 = v105;
        aBlock = _NSConcreteStackBlock;
        v133 = 1107296256;
        v134 = sub_1803C;
        v135 = &block_descriptor_2;
        v107 = _Block_copy(&aBlock);

        [v103 subscribeToPodcastWithFeedUrl:v104 completion:v107];
        _Block_release(v107);

        (*(v127 + 8))(v99, v115);
      }

      else
      {
        v108 = v119;
        sub_59CC4();
        v109 = sub_59D04();
        v110 = sub_5A454();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&dword_0, v109, v110, "Unable to find feed URL or Adam ID in follow request", v111, 2u);
        }

        v116(v108, v130);
        v112 = [objc_opt_self() statusWithCode:200];
        (v53)[2](v53, v112);

        (*(v127 + 8))(v99, v115);
      }
    }
  }

  else
  {
    v91 = v71;
    v92 = v120;
    sub_59CC4();
    v93 = sub_59D04();
    v94 = sub_5A454();
    v95 = os_log_type_enabled(v93, v94);
    v96 = v127;
    if (v95)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_0, v93, v94, "Received a playback queue without a subscribe request in compatibility command center handler. Dropping this request.", v97, 2u);
      v96 = v127;
    }

    v116(v92, v130);
    v98 = [objc_opt_self() statusWithCode:200];
    (v53)[2](v53, v98);

    (*(v96 + 8))(v91, v115);
  }
}

uint64_t sub_198BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_8Tm()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_199B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_19A5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D9C;

  return sub_187C0(a1, v4);
}

uint64_t sub_19B14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_15D44;

  return sub_187C0(a1, v4);
}

uint64_t sub_19BCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D9C;

  return sub_185D0(a1, v4);
}

unint64_t sub_19C84()
{
  result = qword_7D698;
  if (!qword_7D698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_7DA20, &qword_5CDA0);
    sub_19D34(&qword_7D6A0, &unk_7DA30, MPCPlayerResponse_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7D698);
  }

  return result;
}

uint64_t sub_19D34(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_4FE4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_19D78(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

void *SiriIntentDonator.__allocating_init(asPartOf:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v1[4] = 0;
  type metadata accessor for PlaybackController(0);
  sub_5A094();
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D6B8, &qword_5C868);
  sub_5A094();

  v1[3] = v3;
  return v1;
}

void *SiriIntentDonator.init(asPartOf:)(uint64_t a1)
{
  v1[4] = 0;
  type metadata accessor for PlaybackController(0);
  sub_5A094();
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D6B8, &qword_5C868);
  sub_5A094();

  v1[3] = v3;
  return v1;
}

void *SiriIntentDonator.__allocating_init(playbackController:donationService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = a1;

  swift_unknownObjectRetain();
  SiriIntentDonator.beginObserving()();

  swift_unknownObjectRelease();
  return v4;
}

void *SiriIntentDonator.init(playbackController:donationService:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;

  swift_unknownObjectRetain();
  SiriIntentDonator.beginObserving()();

  swift_unknownObjectRelease();
  return v2;
}

Swift::Void __swiftcall SiriIntentDonator.beginObserving()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D6C0, &unk_5C870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v7[1] = *(*(v0 + 16) + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DB50, &unk_5CE40);
  sub_59904();
  sub_5108(&qword_7D6C8, &unk_7DB50, &unk_5CE40, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_59E84();

  swift_allocObject();
  swift_weakInit();
  sub_5108(&qword_7D6D0, &qword_7D6C0, &unk_5C870, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v6 = sub_59F84();

  (*(v3 + 8))(v5, v2);
  *(v1 + 32) = v6;
}

uint64_t sub_1A1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D798, &qword_5C8F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-v5 - 8];
  v7 = type metadata accessor for PlaybackController.QueueCommand(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v20[-v12 - 8];
  sub_1B0F8(a1, v20);
  if (!v21)
  {
    sub_9708(v20, &qword_7D7A0, qword_5C900);
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
  v14 = swift_dynamicCast();
  (*(v8 + 56))(v6, v14 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_6:
    sub_9708(v6, &qword_7D798, &qword_5C8F8);
    goto LABEL_7;
  }

  sub_1B168(v6, v13);
  sub_1B168(v13, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v15 = sub_59904();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a2, v11, v15);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  sub_1B1CC(v11);
LABEL_7:
  v18 = sub_59904();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_1A4B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A4E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A550(a1);
  }

  return result;
}

void sub_1A550(uint64_t a1)
{
  v2 = sub_59D14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1ACC8();
  if (v7)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = *(v1 + 24);

    v15 = sub_5A174();

    if (v13)
    {

      v16 = sub_5A174();
    }

    else
    {
      v16 = 0;
    }

    v20 = swift_allocObject();
    v20[2] = v10;
    v20[3] = v11;
    v20[4] = v12;
    v20[5] = v13;
    aBlock[4] = sub_1B0D4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB98;
    aBlock[3] = &block_descriptor_3;
    v21 = _Block_copy(aBlock);

    [v14 donateEpisodeUuid:v15 stationUuid:v16 isPlaybackFromSiri:0 completion:v21];
    _Block_release(v21);
  }

  else
  {
    sub_59CB4();
    v17 = sub_59D04();
    v18 = sub_5A434();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "No identifiers to donate for intent", v19, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A7C8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_59D14();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  if (a1)
  {
    sub_59CB4();

    v17 = sub_59D04();
    v18 = sub_5A474();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v37 = v10;
      v20 = a4;
      v21 = v19;
      v40 = swift_slowAlloc();
      *v21 = 136446466;
      *(v21 + 4) = sub_9430(a2, a3, &v40);
      *(v21 + 12) = 2082;
      v38 = v20;
      v39 = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D790, &unk_5D9E0);
      v22 = sub_5A1B4();
      v24 = sub_9430(v22, v23, &v40);

      *(v21 + 14) = v24;
      _os_log_impl(&dword_0, v17, v18, "Successfully donated playback intent for episode uuid: %{public}s - station uuid: %{public}s", v21, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v16, v37);
    }

    v35 = *(v11 + 8);
    v36 = v16;
  }

  else
  {
    sub_59CB4();

    v26 = sub_59D04();
    v27 = sub_5A474();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v37 = v10;
      v29 = a2;
      v30 = a4;
      v31 = v28;
      v40 = swift_slowAlloc();
      *v31 = 136446466;
      *(v31 + 4) = sub_9430(v29, a3, &v40);
      *(v31 + 12) = 2082;
      v38 = v30;
      v39 = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D790, &unk_5D9E0);
      v32 = sub_5A1B4();
      v34 = sub_9430(v32, v33, &v40);

      *(v31 + 14) = v34;
      _os_log_impl(&dword_0, v26, v27, "Error donating: %{public}s - station uuid: %{public}s", v31, 0x16u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v14, v37);
    }

    v35 = *(v11 + 8);
    v36 = v14;
  }

  return v35(v36, v10);
}

uint64_t sub_1AB98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *SiriIntentDonator.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t SiriIntentDonator.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1ACC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A0, &qword_5C8F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_59604();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_59944();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_59884();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for MediaIdentifier.podcast(_:))
  {
    return 0;
  }

  if (v11 == enum case for MediaIdentifier.episodes(_:))
  {
LABEL_3:
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  if (v11 == enum case for MediaIdentifier.localEpisodes(_:))
  {
    (*(v8 + 96))(v10, v7);
    if (*(*v10 + 16))
    {
      v13 = *(*v10 + 32);

      return v13;
    }

LABEL_14:

    return 0;
  }

  if (v11 == enum case for MediaIdentifier.localPodcast(_:))
  {
    (*(v8 + 8))(v10, v7);
    sub_597F4();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_9708(v2, &qword_7E2A0, &qword_5C8F0);
      return 0;
    }

    (*(v4 + 32))(v6, v2, v3);
    v14 = sub_595F4();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    if (v16)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v11 != enum case for MediaIdentifier.station(_:))
    {
      if (v11 != enum case for MediaIdentifier.snapshot(_:) && v11 != enum case for MediaIdentifier.mediaQuery(_:) && v11 != enum case for MediaIdentifier.universalEpisodeIdentifiers(_:) && v11 == enum case for MediaIdentifier.library(_:))
      {
        return 0;
      }

      goto LABEL_3;
    }

    (*(v8 + 96))(v10, v7);
    if (!v10[3])
    {
      goto LABEL_14;
    }

    return v10[2];
  }
}

uint64_t sub_1B094()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A0, qword_5C900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackController.QueueCommand(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1CC(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackController.QueueCommand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Dependencies.allDependencies()()
{
  v0 = sub_5A084();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A8, &qword_5C918);
  sub_5A074();
  type metadata accessor for PlaybackController(0);
  sub_5A074();
  sub_5A0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7B0, qword_5C920);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_5BC80;
  (*(v1 + 16))(v8 + v7, v6, v0);
  sub_5A0A4();
  v9 = sub_5A0B4();

  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v6, v0);
  return v9;
}

uint64_t sub_1B434@<X0>(uint64_t *a1@<X8>)
{
  sub_597A4();
  swift_allocObject();
  result = sub_59794();
  *a1 = result;
  return result;
}

uint64_t sub_1B474@<X0>(uint64_t *a1@<X8>)
{
  sub_5A0D4();
  sub_5A0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A8, &qword_5C918);
  sub_5A094();
  type metadata accessor for PlaybackController(0);
  swift_allocObject();
  v2 = PlaybackController.init(reachability:)(v4);

  *a1 = v2;
  return result;
}

uint64_t PendingPlaybackController.__allocating_init(pendingPlaybackStore:playbackController:playStateEstimationProvider:legacyPlayerController:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_12440(a3, v8 + 32);
  *(v8 + 24) = a2;
  sub_12440(a4, v8 + 72);
  return v8;
}

uint64_t PendingPlaybackController.init(pendingPlaybackStore:playbackController:playStateEstimationProvider:legacyPlayerController:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  sub_12440(a3, v4 + 32);
  *(v4 + 24) = a2;
  sub_12440(a4, v4 + 72);
  return v4;
}

uint64_t PendingPlaybackController.__allocating_init(asPartOf:)(uint64_t a1)
{
  type metadata accessor for PendingPlaybackStore();
  sub_5A0D4();
  sub_5A0E4();
  type metadata accessor for PlaybackController(0);
  sub_5A0E4();
  v1 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7B8, "8<");
  sub_5A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7C0, "8<");
  sub_5A0E4();

  v2 = swift_allocObject();
  *(v2 + 16) = v7;
  sub_12440(&v5, v2 + 32);
  *(v2 + 24) = v1;
  sub_12440(&v4, v2 + 72);
  return v2;
}

uint64_t PendingPlaybackController.preflight(_:)(uint64_t a1)
{
  v81 = sub_59984();
  v74 = *(v81 - 8);
  __chkstk_darwin(v81);
  v70 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  v4 = __chkstk_darwin(v3 - 8);
  v79 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v62 - v6;
  v8 = *a1;
  v73 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = sub_595D4();
  v93 = v14;
  v15 = sub_A5B8();
  v94 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v90);
  v17 = enum case for Podcasts.responsivePlayback(_:);
  v18 = *(v14 - 8);
  v19 = *(v18 + 104);
  v20 = v18 + 104;
  v19(boxed_opaque_existential_1, enum case for Podcasts.responsivePlayback(_:), v14);
  LOBYTE(a1) = sub_595B4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v90);
  if (a1)
  {
    v62 = v20;
    v63 = v19;
    v64 = v17;
    v65 = v15;
    v66 = v14;
    v72 = v7;
    v68 = v9;
    v67 = v10;
    v69 = v8;
    v22 = sub_59B94();
    v23 = v22 + 56;
    v24 = 1 << *(v22 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v22 + 56);
    v27 = (v24 + 63) >> 6;
    v75 = (v74 + 48);
    v78 = v22;

    v28 = 0;
    v71 = _swiftEmptyArrayStorage;
    v77 = v23;
    v76 = v27;
LABEL_5:
    v29 = v28;
    if (!v26)
    {
      goto LABEL_7;
    }

    do
    {
      v28 = v29;
LABEL_10:
      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v31 = *(v78 + 48) + 24 * (v30 | (v28 << 6));
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = v80[7];
      v36 = v80[8];
      __swift_project_boxed_opaque_existential_1(v80 + 4, v35);
      v82 = *(v36 + 8);
      sub_5340(v32, v33, v34);
      v37 = v79;
      v82(v32, v33, v34, v35, v36);
      sub_5350(v32, v33, v34);
      if ((*v75)(v37, 1, v81) != 1)
      {
        sub_11AAC(v37, v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_1C558(0, v71[2] + 1, 1, v71, &qword_7D888, &qword_5CA58, &type metadata accessor for EpisodePlayState);
        }

        v23 = v77;
        v39 = v71[2];
        v38 = v71[3];
        if (v39 >= v38 >> 1)
        {
          v71 = sub_1C558((v38 > 1), v39 + 1, 1, v71, &qword_7D888, &qword_5CA58, &type metadata accessor for EpisodePlayState);
        }

        v40 = v71;
        v71[2] = v39 + 1;
        result = sub_11AAC(v70, v40 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v39);
        v27 = v76;
        goto LABEL_5;
      }

      result = sub_AD84(v37);
      v29 = v28;
      v23 = v77;
      v27 = v76;
    }

    while (v26);
    while (1)
    {
LABEL_7:
      v28 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        return result;
      }

      if (v28 >= v27)
      {
        break;
      }

      v26 = *(v23 + 8 * v28);
      ++v29;
      if (v26)
      {
        goto LABEL_10;
      }
    }

    if (v71[2])
    {
      v41 = v74;
      v42 = v72;
      sub_5B84(v71 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v72);
      v43 = 0;
    }

    else
    {
      v43 = 1;
      v42 = v72;
      v41 = v74;
    }

    v44 = v73;
    v45 = v69;
    v46 = v68;
    v47 = v67;

    (*(v41 + 56))(v42, v43, 1, v81);
    v83 = v45;
    v84 = v44;
    v85 = v46;
    v86 = v47;
    v87 = v11;
    v88 = v12;
    v89 = v13;
    PendingPlaybackMetadata.withPlayState(with:)(v42, &v90);
    v48 = v93;
    if (v93 != 1)
    {
      v49 = v90;
      v50 = v91;
      v51 = v92;
      v53 = v94;
      v52 = v95;
      v54 = v96;
      v55 = v66;
      v93 = v66;
      v94 = v65;
      v56 = __swift_allocate_boxed_opaque_existential_1(&v90);
      v63(v56, v64, v55);
      LOBYTE(v55) = sub_595B4();
      __swift_destroy_boxed_opaque_existential_0Tm(&v90);
      if (v55)
      {
        swift_beginAccess();
        v90 = v49;
        v91 = v50 & 1;
        v92 = v51;
        v93 = v48;
        v94 = v53;
        v95 = v52;
        v96 = v54;

        sub_1C73C(v49, v50, v51, v48);
        sub_59D84();

        sub_A674(v90, v91, v92, v93);
      }

      v57 = v52;
      if (([objc_opt_self() supportsBlueMoon] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_59E24();

        v42 = v72;

        v58 = v90;
        if (!v90 || (v59 = [v90 isDeviceRoute], v58, v59))
        {
          v60 = v80[12];
          v61 = v80[13];
          __swift_project_boxed_opaque_existential_1(v80 + 9, v60);
          v90 = v49;
          LOBYTE(v91) = v50 & 1;
          v92 = v51;
          v93 = v48;
          v94 = v53;
          v95 = v57;
          v96 = v54;
          (*(v61 + 8))(&v90, v60, v61);
          sub_AD84(v72);
          return sub_A674(v49, v50, v51, v48);
        }
      }

      sub_A674(v49, v50, v51, v48);
    }

    return sub_AD84(v42);
  }

  return result;
}

Swift::Void __swiftcall PendingPlaybackController.reset()()
{
  v0 = sub_595D4();
  v3 = v0;
  v4 = sub_A5B8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.responsivePlayback(_:), v0);
  LOBYTE(v0) = sub_595B4();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  if (v0)
  {
    swift_beginAccess();
    memset(v2, 0, sizeof(v2));
    v3 = 1;
    v5 = 0;
    v6 = 0;
    v4 = 0;

    sub_59D84();
  }
}

void *PendingPlaybackController.deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  return v0;
}

uint64_t PendingPlaybackController.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1C0C8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a2 = v4;
  return result;
}

uint64_t sub_1C148(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_59E34();
}

char *sub_1C1C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F410, &qword_5CA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C304(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1C410(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C558(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1C73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

char *sub_1C7A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D880, &unk_5CA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t PlaybackController.PreferredJumpInterval.localizedStringForSkipBackward.getter()
{
  isa = sub_5A3C4().super.super.isa;
  v1 = IMAccessibilityLocalizedNumber();

  if (v1)
  {
    v2 = sub_5A194();
    v4 = v3;
  }

  else
  {
    sub_5A3D4();
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._countAndFlagsBits = 0x2520646E69776552;
  v11._object = 0xED00006365732040;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v6.super.isa = v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_59484(v11, v12, v6, v13, 0, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_5BC80;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_502C();
  *(v7 + 32) = v2;
  *(v7 + 40) = v4;
  v8 = sub_5A184();

  return v8;
}

uint64_t PlaybackController.PreferredJumpInterval.localizedStringForSkipForward.getter()
{
  isa = sub_5A3C4().super.super.isa;
  v1 = IMAccessibilityLocalizedNumber();

  if (v1)
  {
    v2 = sub_5A194();
    v4 = v3;
  }

  else
  {
    sub_5A3D4();
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._countAndFlagsBits = 0x2040252070696B53;
  v11._object = 0xEB00000000636573;
  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v6.super.isa = v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_59484(v11, v12, v6, v13, 0, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_5BC80;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_502C();
  *(v7 + 32) = v2;
  *(v7 + 40) = v4;
  v8 = sub_5A184();

  return v8;
}

uint64_t MPCPlayerResponse.currentItem.getter()
{
  v1 = [v0 playerPath];
  v2 = [v1 isInProcess];

  if ((v2 & 1) != 0 || (v3 = [v0 playerPath], v4 = objc_msgSend(v3, "isNativePodcastsPath"), v3, v4))
  {
    v5 = [v0 tracklist];
    v6 = [v5 playingItem];

    if (v6)
    {
      v7 = [v6 metadataObject];

      if (v7)
      {
        v8 = [v7 flattenedGenericObject];

        if (v8)
        {
          v9 = [v8 anyObject];

          if (v9)
          {
            objc_opt_self();
            result = swift_dynamicCastObjCClass();
            if (result)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

void *sub_1CD1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_5A814();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_10618(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_5A724();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10618((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_4FE4(0, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
        v16 = sub_19D34(&qword_7E270, &qword_7E268, MPCPlayerCommandDialogAction_ptr, &protocol conformance descriptor for MPCPlayerCommandDialogAction);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_12440(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_10618((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_4FE4(0, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
        v16 = sub_19D34(&qword_7E270, &qword_7E268, MPCPlayerCommandDialogAction_ptr, &protocol conformance descriptor for MPCPlayerCommandDialogAction);
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_12440(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1CF54(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_10658(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v15 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        sub_10658((v7 > 1), v8 + 1, 1);
        v5 = v10;
        v2 = v15;
      }

      v13 = &type metadata for PlaybackController.TransportCommand;
      v14 = &protocol witness table for PlaybackController.TransportCommand;
      v11 = v5;
      v12 = v6;
      v2[2] = v8 + 1;
      sub_12440(&v11, &v2[5 * v8 + 4]);
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PlaybackController.__allocating_init(asPartOf:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D7A8, &qword_5C918);
  sub_5A094();
  type metadata accessor for PlaybackController(0);
  v1 = swift_allocObject();
  PlaybackController.init(reachability:)(v3);

  return v1;
}

uint64_t PlaybackController.ErrorDialog.dialog.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_59B64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaybackController.ErrorDialog.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaybackController.ErrorDialog(0) + 20));
  swift_errorRetain();
  return v1;
}

uint64_t sub_1D1BC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a2 = v4;
  return result;
}

uint64_t sub_1D23C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_59E34();
}

uint64_t sub_1D2B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v1;
}

uint64_t sub_1D324(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC0, &qword_5CE98);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8E8, &qword_5CB28);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1D500(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB8, &qword_5CE90);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1D6C8(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_59E34();
}

uint64_t sub_1D750(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA0, &qword_5CE78);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

double sub_1D8F0@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1D980(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_59E34();
}

double sub_1DA1C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1DAA8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB0, &qword_5CE88);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D918, &qword_5CC18);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

double sub_1DC48@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1DCD0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_59E34();
}

uint64_t sub_1DD54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();
}

uint64_t sub_1DDCC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA8, &qword_5CE80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D928, &unk_5CC68);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1DF80@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a4 = v6;
  return result;
}

uint64_t sub_1DFFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  return sub_59E34();
}

uint64_t sub_1E08C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB90, &qword_5CE68);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D998, &qword_5CCC0);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1E240(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v3;
}

uint64_t sub_1E2AC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1E44C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  *a2 = v4;
  return result;
}

uint64_t sub_1E4CC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_59E34();
}

uint64_t sub_1E548()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  return v1;
}

uint64_t sub_1E5BC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_59E04();
  return swift_endAccess();
}

uint64_t sub_1E638(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB98, &qword_5CE70);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9B8, &unk_5CD60);
  sub_59E14();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_1E7D8(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_59E04();
  return swift_endAccess();
}

uint64_t sub_1E850()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v37 = &v26 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D8, &qword_5CD80);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9E0, &qword_5CD88);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v32 = &v26 - v9;
  v10 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v10, v39);
  v11 = v40;
  v12 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v38 = (*(v12 + 8))(v11, v12);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v26;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v14 = v29;
  sub_59F64();
  (*(v31 + 8))(v13, v14);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v15 = v28;
  v16 = sub_59E74();
  (*(v30 + 8))(v5, v15);
  v39[0] = v16;
  v17 = v27;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v18 = sub_5A504();
  v39[0] = v18;
  v19 = sub_5A4A4();
  v20 = v37;
  (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  sub_5108(&qword_7DA48, &qword_7D9D8, &qword_5CD80, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v22 = v32;
  v21 = v33;
  sub_59F34();
  sub_9708(v20, &unk_7D9C0, &unk_5C810);

  (*(v36 + 8))(v17, v21);
  sub_5108(&qword_7DA58, &qword_7D9E0, &qword_5CD88, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v34;
  v24 = sub_59E74();
  (*(v35 + 8))(v22, v23);
  return v24;
}

void sub_1EEE8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if ([*a1 state] == &dword_0 + 2)
    {
      v4 = [v3 playerPath];
      v5 = [v4 isInProcess];

      if (v5)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        v6 = [v3 playerPath];
        LOBYTE(v3) = [v6 isNativePodcastsPath];
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *a2 = v3;
}

id MPCPlayerResponse.isSystemPodcastsResponse.getter()
{
  v1 = [v0 playerPath];
  v2 = [v1 isInProcess];

  if (v2)
  {
    return &dword_0 + 1;
  }

  v4 = [v0 playerPath];
  v5 = [v4 isNativePodcastsPath];

  return v5;
}

uint64_t sub_1F03C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v37 = &v26 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA60, &qword_5CDA8);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA68, &qword_5CDB0);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v32 = &v26 - v9;
  v10 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v10, v39);
  v11 = v40;
  v12 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v38 = (*(v12 + 8))(v11, v12);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v26;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v14 = v29;
  sub_59F64();
  (*(v31 + 8))(v13, v14);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v15 = v28;
  v16 = sub_59E74();
  (*(v30 + 8))(v5, v15);
  v39[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA70, &unk_5CDB8);
  v17 = v27;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v18 = sub_5A504();
  v39[0] = v18;
  v19 = sub_5A4A4();
  v20 = v37;
  (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  sub_5108(&qword_7DA78, &qword_7DA60, &qword_5CDA8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v22 = v32;
  v21 = v33;
  sub_59F34();
  sub_9708(v20, &unk_7D9C0, &unk_5C810);

  (*(v36 + 8))(v17, v21);
  sub_5108(&qword_7DA80, &qword_7DA68, &qword_5CDB0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v34;
  v24 = sub_59E74();
  (*(v35 + 8))(v22, v23);
  return v24;
}

void sub_1F6E4(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0;
  if (v3 && (v5 = [v3 tracklist], v6 = objc_msgSend(v5, "playingItem"), v5, v6) && (v7 = objc_msgSend(v6, "playbackRateCommand"), v6, v7))
  {
    [v7 preferredPlaybackRate];
    v4 = v8;
    swift_unknownObjectRelease();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  *a2 = v4;
  *(a2 + 4) = v9;
}

uint64_t sub_1F7AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v37 = &v26 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA88, &qword_5CDC8);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA90, &qword_5CDD0);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v32 = &v26 - v9;
  v10 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v10, v39);
  v11 = v40;
  v12 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v38 = (*(v12 + 8))(v11, v12);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v26;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v14 = v29;
  sub_59F64();
  (*(v31 + 8))(v13, v14);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v15 = v28;
  v16 = sub_59E74();
  (*(v30 + 8))(v5, v15);
  v39[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DA98, &qword_5CDD8);
  v17 = v27;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v18 = sub_5A504();
  v39[0] = v18;
  v19 = sub_5A4A4();
  v20 = v37;
  (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  sub_5108(&qword_7DAA0, &qword_7DA88, &qword_5CDC8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v22 = v32;
  v21 = v33;
  sub_59F34();
  sub_9708(v20, &unk_7D9C0, &unk_5C810);

  (*(v36 + 8))(v17, v21);
  sub_5108(&qword_7DAA8, &qword_7DA90, &qword_5CDD0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v34;
  v24 = sub_59E74();
  (*(v35 + 8))(v22, v23);
  return v24;
}

void sub_1FE54(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 tracklist];
    v5 = [v4 sleepTimerCommand];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_1FEC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v55 = &v36 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v36 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAB0, &qword_5CDE0);
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin(v6);
  v43 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAB8, &qword_5CDE8);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  __chkstk_darwin(v9);
  v44 = &v36 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAC0, &qword_5CDF0);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v45 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAC8, &qword_5CDF8);
  v14 = *(v13 - 8);
  v52 = v13;
  v53 = v14;
  __chkstk_darwin(v13);
  v50 = &v36 - v15;
  v16 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  v38 = v0;
  swift_beginAccess();
  sub_123D8(v0 + v16, v57);
  v17 = v58;
  v18 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v56 = (*(v18 + 8))(v17, v18);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v19 = v37;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v20 = v40;
  sub_59F64();
  (*(v42 + 8))(v19, v20);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v21 = v39;
  v22 = sub_59E74();
  (*(v41 + 8))(v5, v21);
  v57[0] = v22;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  v23 = v43;
  sub_59E94();

  sub_5108(&qword_7DAD0, &qword_7DAB0, &qword_5CDE0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v24 = v44;
  v25 = v46;
  sub_59F14();
  (*(v47 + 8))(v23, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAD8, &qword_5CE00);
  sub_5108(&qword_7DAE0, &qword_7DAB8, &qword_5CDE8, &protocol conformance descriptor for Publishers.Filter<A>);
  v26 = v45;
  v27 = v48;
  sub_59E84();
  (*(v49 + 8))(v24, v27);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v28 = sub_5A504();
  v57[0] = v28;
  v29 = sub_5A4A4();
  v30 = v55;
  (*(*(v29 - 8) + 56))(v55, 1, 1, v29);
  sub_5108(&qword_7DAE8, &qword_7DAC0, &qword_5CDF0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v32 = v50;
  v31 = v51;
  sub_59F34();
  sub_9708(v30, &unk_7D9C0, &unk_5C810);

  (*(v54 + 8))(v26, v31);
  sub_5108(&qword_7DAF0, &qword_7DAC8, &qword_5CDF8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v52;
  v34 = sub_59E74();
  (*(v53 + 8))(v32, v33);
  return v34;
}

uint64_t sub_2084C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    v4 = *(v3 + 24);
    v5 = *(v3 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
    (*(v5 + 64))(1, v4, v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_2090C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
    (*(v4 + 64))(0, v3, v4);
    swift_endAccess();
  }

  return result;
}

void *sub_209CC(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = [result request];
    v3 = sub_49750();

    return (v3 & 1);
  }

  return result;
}

void sub_20A1C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 && (v3 = MPCPlayerResponse.currentItem.getter()) != 0 && (v4 = v3, v5 = [v3 transcriptAlignments], v4, v5))
  {
    sub_4FE4(0, &qword_7E3B8, MPTranscriptAlignment_ptr);
    v6 = sub_5A294();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t sub_20AB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DAF8, &qword_5CE08);
  v3 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v15 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB00, &qword_5CE10);
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v15 - v7;
  v18 = sub_214E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB08, &qword_5CE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  sub_5108(&qword_7DB18, &qword_7DB08, &qword_5CE18, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v9 = sub_5A504();
  v18 = v9;
  v10 = sub_5A4A4();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_5108(&qword_7DB20, &qword_7DAF8, &qword_5CE08, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v11 = v16;
  sub_59F34();
  sub_9708(v2, &unk_7D9C0, &unk_5C810);

  (*(v3 + 8))(v5, v11);
  sub_5108(&qword_7DB28, &qword_7DB00, &qword_5CE10, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v12 = v17;
  v13 = sub_59E74();
  (*(v6 + 8))(v8, v12);
  return v13;
}

void sub_20E70(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 chapters]) != 0)
  {
    v5 = v4;
    sub_4FE4(0, &qword_7E390, MPModelPodcastChapter_ptr);
    v6 = sub_5A294();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v6;
}

uint64_t sub_20EF8@<X0>(float *a1@<X8>)
{
  sub_2F368(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 32))(v2, v3);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v6);
  *a1 = v4;
  return result;
}

uint64_t sub_20F7C(float *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2F368(&v9);
  v4 = v10;
  v5 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(&v9, v10);
  (*(v5 + 40))(v4, v5, v2);
  sub_12440(&v9, v8);
  v6 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_312E8(v8, v3 + v6, &qword_7DB38, &qword_5CE28);
  return swift_endAccess();
}

float sub_21044()
{
  sub_2F368(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 32))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2;
}

uint64_t sub_210C0(float a1)
{
  v2 = v1;
  sub_2F368(&v9);
  v4 = v10;
  v5 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(&v9, v10);
  (*(v5 + 40))(v4, v5, a1);
  sub_12440(&v9, v8);
  v6 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_312E8(v8, v2 + v6, &qword_7DB38, &qword_5CE28);
  return swift_endAccess();
}

uint64_t (*sub_21184(float **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  sub_2F368(v3);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 32))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  *(v4 + 112) = v7;
  return sub_2124C;
}

void sub_2124C(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 28);
  v3 = (*a1)[13];
  sub_2F368(*a1);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 40))(v4, v5, v2);
  sub_12440(v1, (v1 + 10));
  v6 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_312E8((v1 + 10), v3 + v6, &qword_7DB38, &qword_5CE28);
  swift_endAccess();

  free(v1);
}

uint64_t sub_2132C()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_21398()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 16))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_21404()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 24))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_21470()
{
  sub_2F368(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 56))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  return v0 & 1;
}

uint64_t sub_214E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v37 = &v26 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E398, &qword_5D328);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E3A0, &qword_5D330);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v32 = &v26 - v9;
  v10 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v10, v39);
  v11 = v40;
  v12 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v38 = (*(v12 + 8))(v11, v12);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v26;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v14 = v29;
  sub_59F64();
  (*(v31 + 8))(v13, v14);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v15 = v28;
  v16 = sub_59E74();
  (*(v30 + 8))(v5, v15);
  v39[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC8, &qword_5CEA0);
  v17 = v27;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v18 = sub_5A504();
  v39[0] = v18;
  v19 = sub_5A4A4();
  v20 = v37;
  (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  sub_5108(&qword_7E3A8, &qword_7E398, &qword_5D328, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v22 = v32;
  v21 = v33;
  sub_59F34();
  sub_9708(v20, &unk_7D9C0, &unk_5C810);

  (*(v36 + 8))(v17, v21);
  sub_5108(&qword_7E3B0, &qword_7E3A0, &qword_5D330, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v34;
  v24 = sub_59E74();
  (*(v35 + 8))(v22, v23);
  return v24;
}

uint64_t sub_21B8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    result = MPCPlayerResponse.currentItem.getter();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_21BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v37 = &v26 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E340, &qword_5D300);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E348, &qword_5D308);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v32 = &v26 - v9;
  v10 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v10, v39);
  v11 = v40;
  v12 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v38 = (*(v12 + 8))(v11, v12);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v26;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v14 = v29;
  sub_59F64();
  (*(v31 + 8))(v13, v14);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v15 = v28;
  v16 = sub_59E74();
  (*(v30 + 8))(v5, v15);
  v39[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD8, &qword_5CEB0);
  v17 = v27;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v18 = sub_5A504();
  v39[0] = v18;
  v19 = sub_5A4A4();
  v20 = v37;
  (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  sub_5108(&qword_7E350, &qword_7E340, &qword_5D300, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v22 = v32;
  v21 = v33;
  sub_59F34();
  sub_9708(v20, &unk_7D9C0, &unk_5C810);

  (*(v36 + 8))(v17, v21);
  sub_5108(&qword_7E358, &qword_7E348, &qword_5D308, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v34;
  v24 = sub_59E74();
  (*(v35 + 8))(v22, v23);
  return v24;
}

void sub_2226C(id *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = [v3 playerPath];
    v5 = [v4 isInProcess];

    if (((v5 & 1) != 0 || (v6 = [v3 playerPath], v7 = objc_msgSend(v6, "isNativePodcastsPath"), v6, v7)) && (v8 = objc_msgSend(v3, "tracklist"), v9 = objc_msgSend(v8, "playingItem"), v8, v9))
    {
      [v9 duration];
      v15 = v18;
      v16 = v17;
      v14 = v19;
      v10 = v20;
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v10 = 2;
      v14 = 0u;
    }

    v12 = v15;
    v11 = v16;
    v13 = v14;
  }

  else
  {
    v11 = 0uLL;
    v10 = 2;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 48) = v10;
}

uint64_t sub_223BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v46 = &v31 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = &v31 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E308, &qword_5D2E0);
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  __chkstk_darwin(v6);
  v34 = &v31 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E310, &qword_5D2E8);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E318, &qword_5D2F0);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  __chkstk_darwin(v10);
  v41 = &v31 - v12;
  v13 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v13, v48);
  v14 = v49;
  v15 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v47 = (*(v15 + 8))(v14, v15);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v16 = v32;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v17 = v36;
  sub_59F64();
  (*(v38 + 8))(v16, v17);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v18 = v35;
  v19 = sub_59E74();
  (*(v37 + 8))(v5, v18);
  v48[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E320, &qword_5D2F8);
  v20 = v34;
  sub_59EC4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE0, &qword_5CEB8);
  v21 = v33;
  v22 = v39;
  sub_59D24();
  (*(v40 + 8))(v20, v22);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v48[0] = v23;
  v24 = sub_5A4A4();
  v25 = v46;
  (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  sub_5108(&qword_7E328, &qword_7E310, &qword_5D2E8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v27 = v41;
  v26 = v42;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v45 + 8))(v21, v26);
  sub_5108(&qword_7E330, &qword_7E318, &qword_5D2F0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v28 = v43;
  v29 = sub_59E74();
  (*(v44 + 8))(v27, v28);
  return v29;
}

void sub_22B60(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 tracklist], v5 = objc_msgSend(v4, "playingItem"), v4, v5))
  {
    v6 = [v5 seekCommand];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_22BF4(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v6 = [*a1 preferredBackwardJumpIntervals];
  sub_4FE4(0, &qword_7E338, NSNumber_ptr);
  v7 = sub_5A294();

  if (v7 >> 62)
  {
    if (!sub_5A814())
    {
      goto LABEL_17;
    }
  }

  else if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_5A724();
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_20;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v2 = &off_7B000;
  [v9 doubleValue];
  v3 = v10;

  v11 = [v5 preferredForwardJumpIntervals];
  v12 = sub_5A294();

  if (!(v12 >> 62))
  {
    if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (!sub_5A814())
  {
LABEL_17:

LABEL_18:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return;
  }

LABEL_9:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v13 = sub_5A724();
    goto LABEL_12;
  }

  if (*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    v13 = *(v12 + 32);
LABEL_12:
    v14 = v13;

    [v14 v2[437]];
    v16 = v15;

    *a2 = v3;
    *(a2 + 8) = v16;
    *(a2 + 16) = 0;
    return;
  }

  __break(1u);
}

uint64_t sub_22DC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v37 = &v26 - v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v26 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2E8, &qword_5D2C8);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2F0, &unk_5D2D0);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  __chkstk_darwin(v7);
  v32 = &v26 - v9;
  v10 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v10, v39);
  v11 = v40;
  v12 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v38 = (*(v12 + 8))(v11, v12);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v26;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v14 = v29;
  sub_59F64();
  (*(v31 + 8))(v13, v14);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v15 = v28;
  v16 = sub_59E74();
  (*(v30 + 8))(v5, v15);
  v39[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD0, &qword_5CEA8);
  v17 = v27;
  sub_59EC4();

  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v18 = sub_5A504();
  v39[0] = v18;
  v19 = sub_5A4A4();
  v20 = v37;
  (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  sub_5108(&qword_7E2F8, &qword_7E2E8, &qword_5D2C8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v22 = v32;
  v21 = v33;
  sub_59F34();
  sub_9708(v20, &unk_7D9C0, &unk_5C810);

  (*(v36 + 8))(v17, v21);
  sub_5108(&qword_7E300, &qword_7E2F0, &unk_5D2D0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v34;
  v24 = sub_59E74();
  (*(v35 + 8))(v22, v23);
  return v24;
}

uint64_t sub_23478()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v46 = &v31 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v32 = &v31 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2C0, &qword_5D2B0);
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  __chkstk_darwin(v6);
  v34 = &v31 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2C8, &qword_5D2B8);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v33 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2D0, &qword_5D2C0);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  __chkstk_darwin(v10);
  v41 = &v31 - v12;
  v13 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v13, v48);
  v14 = v49;
  v15 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v47 = (*(v15 + 8))(v14, v15);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v16 = v32;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v17 = v36;
  sub_59F64();
  (*(v38 + 8))(v16, v17);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v18 = v35;
  v19 = sub_59E74();
  (*(v37 + 8))(v5, v18);
  v48[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DA20, &qword_5CDA0);
  v20 = v34;
  sub_59EC4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE8, &unk_5CEC0);
  v21 = v33;
  v22 = v39;
  sub_59D24();
  (*(v40 + 8))(v20, v22);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v23 = sub_5A504();
  v48[0] = v23;
  v24 = sub_5A4A4();
  v25 = v46;
  (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  sub_5108(&qword_7E2D8, &qword_7E2C8, &qword_5D2B8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v27 = v41;
  v26 = v42;
  sub_59F34();
  sub_9708(v25, &unk_7D9C0, &unk_5C810);

  (*(v45 + 8))(v21, v26);
  sub_5108(&qword_7E2E0, &qword_7E2D0, &qword_5D2C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v28 = v43;
  v29 = sub_59E74();
  (*(v44 + 8))(v27, v28);
  return v29;
}

void sub_23C1C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 playerPath];
    v5 = [v4 isInProcess];

    if ((v5 & 1) != 0 || (v6 = [v3 playerPath], v7 = objc_msgSend(v6, "isNativePodcastsPath"), v6, v7))
    {
      v8 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  *a2 = v3;
}

id sub_23CD4@<X0>(id *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  result = *a1;
  if (result)
  {
    result = [result *a2];
  }

  *a3 = result;
  return result;
}

uint64_t sub_23D10()
{
  if ([objc_opt_self() supportsBlueMoon] && (v0 = objc_msgSend(objc_opt_self(), "mainBundle"), v1 = sub_23E6C(), v0, (v1 & 1) != 0))
  {
    if (qword_7CC68 != -1)
    {
      swift_once();
    }

    v6[0] = xmmword_7D8B0;
    v6[1] = *&qword_7D8C0;
    v7 = qword_7D8D0;
    v8 = xmmword_7D8B0;
    v9 = *&qword_7D8C0;
    v10 = qword_7D8D0;
    v2 = objc_allocWithZone(_s9MPCPlayerCMa());
    sub_32DEC(&v8, v5);
    sub_32DEC(&v9, v5);
    sub_9768(&v10, v5, &unk_7ED60, &qword_5D320);
    result = sub_3B99C(v6);
    v4 = &off_73628;
  }

  else
  {
    type metadata accessor for EmptyPlayer();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0;
    v4 = &off_735C0;
  }

  *&xmmword_7D8A0 = result;
  *(&xmmword_7D8A0 + 1) = v4;
  return result;
}

void *sub_23E6C()
{
  result = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  if (result)
  {
    v2 = result;
    v3 = sub_5A194();
    v5 = v4;

    v6 = [v0 bundleIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = sub_5A194();
      v10 = v9;

      if (v8 == v3 && v10 == v5)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_5A8E4();
      }
    }

    else
    {
      v12 = 0;
    }

    return (v12 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23F34()
{
  if (qword_7CC70 != -1)
  {
    swift_once();
  }

  xmmword_7D8B0 = xmmword_80BD0;
  qword_7D8C0 = qword_80BE0;
  unk_7D8C8 = unk_80BE8;
  qword_7D8D0 = qword_80BF0;
}

uint64_t sub_23FE8(uint64_t a1, uint64_t *a2)
{
  sub_9768(a1, v9, &qword_7DB40, &qword_5CE30);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  sub_2F4CC(v9, v3 + v4);
  swift_endAccess();
  if (qword_7CC60 != -1)
  {
    swift_once();
  }

  v5 = *(&xmmword_7D8A0 + 1);
  ObjectType = swift_getObjectType();
  sub_9768(v3 + v4, v8, &qword_7DB40, &qword_5CE30);
  (*(v5 + 40))(v8, ObjectType, v5);
  return sub_9708(v9, &qword_7DB40, &qword_5CE30);
}

uint64_t sub_24110@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  return sub_9768(v1 + v3, a1, &qword_7DB40, &qword_5CE30);
}

uint64_t sub_24178(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  sub_2F4CC(a1, v1 + v3);
  swift_endAccess();
  if (qword_7CC60 != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_7D8A0 + 1);
  ObjectType = swift_getObjectType();
  sub_9768(v1 + v3, v7, &qword_7DB40, &qword_5CE30);
  (*(v4 + 40))(v7, ObjectType, v4);
  return sub_9708(a1, &qword_7DB40, &qword_5CE30);
}

uint64_t (*sub_24288(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  *(v3 + 40) = v1;
  *(v3 + 48) = v4;
  swift_beginAccess();
  return sub_24310;
}

void sub_24310(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (qword_7CC60 != -1)
    {
      swift_once();
    }

    v5 = v3[5];
    v4 = v3[6];
    v6 = *(&xmmword_7D8A0 + 1);
    ObjectType = swift_getObjectType();
    sub_9768(v5 + v4, v3, &qword_7DB40, &qword_5CE30);
    (*(v6 + 40))(v3, ObjectType, v6);
  }

  free(v3);
}

uint64_t sub_243EC()
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v16 = *(v14 - 8);
  __chkstk_darwin(v14);
  v2 = &v12 - v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v15 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = &v12 - v3;
  v5 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v0 + v5, v18);
  v7 = v19;
  v6 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v17 = (*(v6 + 8))(v7, v6);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v8 = v14;
  sub_59F64();
  (*(v16 + 8))(v2, v8);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v9 = v13;
  v10 = sub_59E74();
  (*(v15 + 8))(v4, v9);
  return v10;
}

uint64_t sub_2474C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E3C0, &qword_5D338);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E3C8, &unk_5D340);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DA20, &qword_5CDA0);
    sub_59DD4();
    sub_5108(&qword_7E3D0, &qword_7E3C0, &qword_5D338, &protocol conformance descriptor for Empty<A, B>);
    v12 = sub_59E74();
    result = (*(v5 + 8))(v7, v4);
  }

  else
  {
    v16 = *a1;
    v14 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DA20, &qword_5CDA0);
    sub_59DC4();
    sub_5108(&qword_7E3D8, &qword_7E3C8, &unk_5D340, &protocol conformance descriptor for Just<A>);
    v12 = sub_59E74();
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_249B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB48, &qword_5CE38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DB50, &unk_5CE40);
  sub_5108(&qword_7D6C8, &unk_7DB50, &unk_5CE40, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_59E84();

  sub_5108(&qword_7DB60, &qword_7DB48, &qword_5CE38, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v5 = sub_59E74();
  (*(v2 + 8))(v4, v1);
  return v5;
}

double sub_24B78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9768(a1, v4, &qword_7D7A0, qword_5C900);
  if (!v5)
  {
    sub_9708(v4, &qword_7D7A0, qword_5C900);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    result = 0.0;
    *a2 = xmmword_5CA70;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_24C20()
{
  v1 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController;
  if (*(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController);
  }

  else
  {
    type metadata accessor for PlaybackController.QueueController();
    v2 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_24CE0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24C20();
  return sub_24D28;
}

uint64_t PlaybackController.__allocating_init(reachability:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PlaybackController.init(reachability:)(a1);
  return v2;
}

uint64_t PlaybackController.init(reachability:)(uint64_t a1)
{
  v2 = v1;
  v195 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v3 - 8);
  v135 = &v134 - v4;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v144 = *(v145 - 8);
  v5 = __chkstk_darwin(v145);
  v142 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v143 = &v134 - v7;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB80, &qword_5CE58);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v134 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB88, &qword_5CE60);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v134 - v9;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB90, &qword_5CE68);
  v187 = *(v188 - 8);
  v10 = __chkstk_darwin(v188);
  v185 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v186 = &v134 - v12;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB98, &qword_5CE70);
  v183 = *(v184 - 8);
  v13 = __chkstk_darwin(v184);
  v181 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v182 = &v134 - v15;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA0, &qword_5CE78);
  v179 = *(v180 - 8);
  v16 = __chkstk_darwin(v180);
  v177 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v178 = &v134 - v18;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA8, &qword_5CE80);
  v175 = *(v176 - 8);
  v19 = __chkstk_darwin(v176);
  v173 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v174 = &v134 - v21;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB0, &qword_5CE88);
  v171 = *(v172 - 8);
  v22 = __chkstk_darwin(v172);
  v169 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v170 = &v134 - v24;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBB8, &qword_5CE90);
  v167 = *(v168 - 8);
  v25 = __chkstk_darwin(v168);
  v165 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v166 = &v134 - v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC0, &qword_5CE98);
  v163 = *(v164 - 8);
  v28 = __chkstk_darwin(v164);
  v161 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v162 = &v134 - v30;
  v158 = sub_59C24();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v156 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9B8, &unk_5CD60);
  v155 = *(v193 - 8);
  __chkstk_darwin(v193);
  v154 = &v134 - v32;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  v153 = *(v189 - 8);
  __chkstk_darwin(v189);
  v152 = &v134 - v33;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D998, &qword_5CCC0);
  v151 = *(v194 - 8);
  __chkstk_darwin(v194);
  v150 = &v134 - v34;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D928, &unk_5CC68);
  v149 = *(v191 - 8);
  __chkstk_darwin(v191);
  v148 = &v134 - v35;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D918, &qword_5CC18);
  v147 = *(v190 - 8);
  __chkstk_darwin(v190);
  v146 = &v134 - v36;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  v37 = *(v192 - 8);
  __chkstk_darwin(v192);
  v39 = &v134 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v134 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8E8, &qword_5CB28);
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v134 - v46;
  v48 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__isPlaying;
  LOBYTE(aBlock) = 0;
  sub_59DF4();
  v49 = *(v45 + 32);
  v159 = v44;
  v49(v2 + v48, v47, v44);
  v50 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__nowPlayingItem;
  *&aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBC8, &qword_5CEA0);
  sub_59DF4();
  v51 = *(v41 + 32);
  v160 = v40;
  v51(v2 + v50, v43, v40);
  v52 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__tracklist;
  *&aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD0, &qword_5CEA8);
  sub_59DF4();
  (*(v37 + 32))(v2 + v52, v39, v192);
  v53 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__durationSnapshot;
  v198 = 0u;
  v199 = 0u;
  aBlock = 0u;
  v200 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBD8, &qword_5CEB0);
  v54 = v146;
  sub_59DF4();
  (*(v147 + 32))(v2 + v53, v54, v190);
  v55 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__preferredJumpInterval;
  aBlock = 0uLL;
  LOBYTE(v198) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE0, &qword_5CEB8);
  v56 = v148;
  sub_59DF4();
  (*(v149 + 32))(v2 + v55, v56, v191);
  v57 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__videoOutput;
  *&aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBE8, &unk_5CEC0);
  v58 = v150;
  sub_59DF4();
  (*(v151 + 32))(v2 + v57, v58, v194);
  v59 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__currentRoute;
  *&aBlock = 0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBF0, &unk_5E4A0);
  v61 = v152;
  v151 = v60;
  sub_59DF4();
  (*(v153 + 32))(v2 + v59, v61, v189);
  v62 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__chapters;
  *&aBlock = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  v63 = v154;
  sub_59DF4();
  (*(v155 + 32))(v2 + v62, v63, v193);
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_logController) = 0;
  v64 = (v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_preparationObserver);
  *v64 = 0u;
  v64[1] = 0u;
  v65 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_performedCommandsPublisher;
  *&v199 = 0;
  aBlock = 0u;
  v198 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DB50, &unk_5CE40);
  swift_allocObject();
  *(v2 + v65) = sub_59DA4();
  v66 = v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  *v66 = 0u;
  *(v66 + 16) = 0u;
  *(v66 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController) = 0;
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath) = 0;
  v67 = v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  *v67 = 0u;
  *(v67 + 16) = 0u;
  *(v67 + 32) = 0;
  if (qword_7CC60 != -1)
  {
    swift_once();
  }

  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player) = xmmword_7D8A0;
  swift_unknownObjectRetain();
  sub_5A2C4();
  v68 = v156;
  sub_59C14();
  (*(v157 + 32))(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_errorTransformer, v68, v158);
  if (qword_7CC78 != -1)
  {
    swift_once();
  }

  v69 = qword_80BF8;
  v70 = (v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource);
  v70[3] = _s27AutomaticResponseDataSourceCMa();
  v70[4] = &off_73D50;
  *v70 = v69;
  swift_beginAccess();
  v71 = v70[3];
  v72 = v70[4];
  v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
  v74 = *(v71 - 8);
  __chkstk_darwin(v73);
  v76 = &v134 - v75;
  (*(v74 + 16))(&v134 - v75);
  v77 = *(v72 + 8);
  v78 = v69;
  v79 = v77(v71, v72);
  (*(v74 + 8))(v76, v71);
  *&aBlock = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v80 = sub_59E74();

  _s17PlayerInvalidatorCMa();
  swift_allocObject();
  v81 = sub_3F3A8(v80, 5);

  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerMonitor) = v81;
  sub_123D8(v70, &aBlock);
  type metadata accessor for PlaybackController.RouteController();
  v82 = swift_allocObject();
  v83 = *(&v198 + 1);
  v84 = v199;
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v198 + 1));
  *(v82 + 16) = (*(v84 + 24))(v83, v84);
  sub_12440(&aBlock, v82 + 24);
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_routeController) = v82;
  v196 = sub_1E850();
  swift_beginAccess();
  v85 = v162;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DC20, &qword_5CED0);
  sub_5108(&qword_7ED90, &unk_7DC20, &qword_5CED0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F94();

  v86 = v163;
  v87 = v164;
  (*(v163 + 16))(v161, v85, v164);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v86 + 8))(v85, v87);
  v196 = sub_214E4();
  swift_beginAccess();
  v88 = v166;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB08, &qword_5CE18);
  sub_5108(&qword_7DB18, &qword_7DB08, &qword_5CE18, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F94();

  v89 = v167;
  v90 = v168;
  (*(v167 + 16))(v165, v88, v168);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v89 + 8))(v88, v90);
  v196 = sub_21BC4();
  swift_beginAccess();
  v91 = v170;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC30, &qword_5CED8);
  sub_5108(&qword_7DC38, &qword_7DC30, &qword_5CED8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F94();

  v92 = v171;
  v93 = v172;
  (*(v171 + 16))(v169, v91, v172);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v92 + 8))(v91, v93);
  v196 = sub_223BC();
  swift_beginAccess();
  v94 = v174;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC40, &qword_5CEE0);
  sub_5108(&qword_7DC48, &qword_7DC40, &qword_5CEE0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F94();

  v95 = v175;
  v96 = v176;
  (*(v175 + 16))(v173, v94, v176);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v95 + 8))(v94, v96);
  v196 = sub_22DC4();
  swift_beginAccess();
  v97 = v178;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC50, &qword_5CEE8);
  sub_5108(&qword_7DC58, &qword_7DC50, &qword_5CEE8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F94();

  v98 = v179;
  v99 = v180;
  (*(v179 + 16))(v177, v97, v180);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v98 + 8))(v97, v99);
  v196 = sub_20AB0();
  swift_beginAccess();
  v100 = v182;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC60, &qword_5CEF0);
  sub_5108(&qword_7DC68, &qword_7DC60, &qword_5CEF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F94();

  v101 = v183;
  v102 = v184;
  (*(v183 + 16))(v181, v100, v184);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v101 + 8))(v100, v102);
  v196 = sub_23478();
  swift_beginAccess();
  v103 = v186;
  sub_59E04();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC70, &unk_5CEF8);
  sub_5108(&qword_7DC78, &qword_7DC70, &unk_5CEF8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59F94();

  v104 = v187;
  v105 = v188;
  (*(v187 + 16))(v185, v103, v188);
  swift_beginAccess();
  sub_59E14();
  swift_endAccess();
  (*(v104 + 8))(v103, v105);
  v107 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource + 24);
  v106 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource + 32);
  v108 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource), v107);
  v109 = *(v107 - 8);
  __chkstk_darwin(v108);
  v111 = &v134 - v110;
  (*(v109 + 16))(&v134 - v110);
  v112 = (*(v106 + 24))(v107, v106);
  (*(v109 + 8))(v111, v107);
  if (v112)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DC88, &qword_5CF18);
    v113 = v136;
    sub_59E04();
    swift_endAccess();

    sub_5108(&qword_7DC90, &qword_7DB80, &qword_5CE58, &protocol conformance descriptor for Published<A>.Publisher);
    v114 = v139;
    v115 = v138;
    sub_59EC4();
    (*(v137 + 8))(v113, v115);
    swift_beginAccess();
    v116 = v143;
    sub_59E04();
    swift_endAccess();
    sub_5108(&qword_7DC98, &qword_7DB88, &qword_5CE60, &protocol conformance descriptor for Publishers.Map<A, B>);
    v117 = v141;
    sub_59F94();
    (*(v140 + 8))(v114, v117);
    v118 = v144;
    v119 = v145;
    (*(v144 + 16))(v142, v116, v145);
    swift_beginAccess();
    sub_59E14();
    swift_endAccess();
    (*(v118 + 8))(v116, v119);
  }

  PlaybackController.LogController.init(playbackController:)(&aBlock);
  *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_logController) = aBlock;

  sub_2B8B4();
  v120 = *(v2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player + 8);
  ObjectType = swift_getObjectType();
  *(&v198 + 1) = type metadata accessor for PlaybackController(0);
  *&v199 = &off_72D98;
  *&aBlock = v2;
  v122 = *(v120 + 88);

  v122(&aBlock, ObjectType, v120);
  _s9MPCPlayerCMa();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = [objc_opt_self() sharedApplication];
    v124 = [v123 applicationState];

    if (!v124)
    {
      v125 = sub_5A3B4();
      v126 = v135;
      (*(*(v125 - 8) + 56))(v135, 1, 1, v125);
      v127 = swift_allocObject();
      v127[2] = 0;
      v127[3] = 0;
      v127[4] = v2;

      sub_17D38(0, 0, v126, &unk_5CF10, v127);
    }

    v128 = [objc_opt_self() defaultCenter];
    v129 = swift_allocObject();
    swift_weakInit();
    *&v199 = sub_312C8;
    *(&v199 + 1) = v129;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v198 = sub_278F4;
    *(&v198 + 1) = &block_descriptor_4;
    v130 = _Block_copy(&aBlock);

    v131 = [v128 addObserverForName:UIApplicationDidBecomeActiveNotification object:0 queue:0 usingBlock:v130];
    _Block_release(v130);

    *(&v198 + 1) = swift_getObjectType();
    swift_unknownObjectRelease();
    *&aBlock = v131;
    v132 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_preparationObserver;
    swift_beginAccess();
    sub_312E8(&aBlock, v2 + v132, &qword_7DC80, &qword_5C3F0);
    swift_endAccess();
  }

  return v2;
}

uint64_t sub_26E68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_26F28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 8) route];
  *a2 = result;
  return result;
}

uint64_t sub_26F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return _swift_task_switch(sub_26F84, 0, 0);
}

uint64_t sub_26F84()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CA80;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_27044;

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_27044(void *a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    v5 = sub_271A4;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v5 = sub_2717C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_271A4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  **(v0 + 56) = *(v0 + 80) != 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27238()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CA80;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_272F8;

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_272F8(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_32E4C, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_27450(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB70, &qword_5C740);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_5A3B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_17D38(0, 0, v4, &unk_5D298, v7);
}

uint64_t sub_275A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return _swift_task_switch(sub_275C0, 0, 0);
}

uint64_t sub_275C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
    *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
    *(v0 + 16) = xmmword_5CA80;
    *(v0 + 32) = 0;
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_276E4;

    return sub_2A8B0(v0 + 16, 0);
  }

  else
  {
    **(v0 + 80) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_276E4(void *a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_27880;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v5 = sub_27818;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_27818()
{

  **(v0 + 80) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27880()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  **(v0 + 80) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_278F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_59474();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_59454();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaybackController.deinit()
{
  v1 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_preparationObserver;
  swift_beginAccess();
  sub_9768(v0 + v1, &v22, &qword_7DC80, &qword_5C3F0);
  if (v23)
  {
    sub_31404(&v22, v24);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1(v24, v25);
    [v2 removeObserver:sub_5A8D4()];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  else
  {
    sub_9708(&v22, &qword_7DC80, &qword_5C3F0);
  }

  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__isPlaying;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8E8, &qword_5CB28);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__nowPlayingItem;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D8F8, &qword_5CB78);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__tracklist;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__durationSnapshot;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D918, &qword_5CC18);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__preferredJumpInterval;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D928, &unk_5CC68);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__videoOutput;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D998, &qword_5CCC0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__currentRoute;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController__chapters;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9B8, &unk_5CD60);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource));

  v19 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_errorTransformer;
  v20 = sub_59C24();
  (*(*(v20 - 8) + 8))(v0 + v19, v20);

  sub_9708(v0 + v1, &qword_7DC80, &qword_5C3F0);

  sub_9708(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker, &qword_7DB40, &qword_5CE30);

  sub_9708(v0 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController, &qword_7DB38, &qword_5CE28);
  return v0;
}

uint64_t PlaybackController.__deallocating_deinit()
{
  PlaybackController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_27EB8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = v3 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 40))(v2, v8, v9);
  return swift_endAccess();
}

void *sub_27F78()
{
  v1 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_27FC4(void *a1)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = v1 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 40))(a1, v7, v8);
  return swift_endAccess();
}

uint64_t (*sub_2807C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_28104;
}

void sub_28104(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = v4 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
    v9 = *(v8 + 40);
    v10 = v5;
    v9(v5, v7, v8);
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_281CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2825C;

  return sub_2E290();
}

uint64_t sub_2825C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_283AC, 0, 0);
  }
}

uint64_t sub_283AC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_284D8;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_284D8(char a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_285D8, 0, 0);
}

uint64_t sub_285D8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_28640(void *a1)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v3, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = (*(v5 + 16))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  if (v6)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 24))(v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_28728(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 416) = v3;
  *(v4 + 408) = a3;
  *(v4 + 392) = a1;
  *(v4 + 400) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCA0, &qword_5C808);
  *(v4 + 424) = v5;
  *(v4 + 432) = *(v5 - 8);
  *(v4 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  *(v4 + 448) = swift_task_alloc();
  v6 = sub_5A4E4();
  *(v4 + 456) = v6;
  *(v4 + 464) = *(v6 - 8);
  *(v4 + 472) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  *(v4 + 480) = v7;
  *(v4 + 488) = *(v7 - 8);
  *(v4 + 496) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  *(v4 + 504) = v8;
  *(v4 + 512) = *(v8 - 8);
  *(v4 + 520) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D680, &unk_5CF50);
  *(v4 + 528) = v9;
  *(v4 + 536) = *(v9 - 8);
  *(v4 + 544) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCB0, &unk_5C830);
  *(v4 + 552) = v10;
  *(v4 + 560) = *(v10 - 8);
  *(v4 + 568) = swift_task_alloc();
  v11 = sub_59D14();
  *(v4 + 576) = v11;
  *(v4 + 584) = *(v11 - 8);
  *(v4 + 592) = swift_task_alloc();
  *(v4 + 600) = swift_task_alloc();
  *(v4 + 608) = swift_task_alloc();
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v4 + 632) = v12;
  *v12 = v4;
  v12[1] = sub_28AE8;

  return sub_2E290();
}

uint64_t sub_28AE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 640) = a1;

    return _swift_task_switch(sub_28CE4, 0, 0);
  }
}

uint64_t sub_28CE4()
{
  v1 = v0[49];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_28E10;
  v5 = v0[80];

  return v7(v5, v2, v3);
}

uint64_t sub_28E10(char a1)
{
  *(*v1 + 720) = a1;

  return _swift_task_switch(sub_28F10, 0, 0);
}

uint64_t sub_28F10()
{
  v65 = v0;
  v1 = *(v0 + 720);

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 712) = v2;
    *v2 = v0;
    v2[1] = sub_2A4E8;
    v3 = *(v0 + 392);

    return sub_2A8B0(v3, 0);
  }

  else
  {
    sub_59CC4();
    v5 = sub_59D04();
    v6 = sub_5A474();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "╭ ⏱️ Await for command", v7, 2u);
    }

    v8 = *(v0 + 624);
    v9 = *(v0 + 584);
    v10 = *(v0 + 576);
    v11 = *(v0 + 392);

    v12 = *(v9 + 8);
    *(v0 + 656) = v12;
    v12(v8, v10);
    sub_59CC4();
    sub_123D8(v11, v0 + 16);
    v13 = sub_59D04();
    v14 = sub_5A474();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 616);
    v17 = *(v0 + 576);
    if (v15)
    {
      v62 = *(v0 + 616);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v64 = v19;
      *v18 = 136446210;
      sub_123D8(v0 + 16, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
      v20 = v12;
      v21 = sub_5A1B4();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      v24 = sub_9430(v21, v23, &v64);

      *(v18 + 4) = v24;
      v12 = v20;
      _os_log_impl(&dword_0, v13, v14, "| %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);

      v20(v62, v17);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
      v12(v16, v17);
    }

    sub_59CC4();
    v25 = sub_59D04();
    v26 = sub_5A474();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 608);
    v29 = *(v0 + 576);
    if (v27)
    {
      v63 = v12;
      v30 = *(v0 + 400);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64 = v32;
      *v31 = 136446210;
      *(v0 + 384) = v30;
      type metadata accessor for MPCPlayerChangeRequestOptions(0);
      v33 = sub_5A1B4();
      v35 = sub_9430(v33, v34, &v64);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v25, v26, "╰ options=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);

      v63(v28, v29);
    }

    else
    {

      v12(v28, v29);
    }

    v54 = *(v0 + 544);
    v61 = *(v0 + 536);
    v58 = *(v0 + 528);
    v50 = *(v0 + 504);
    v51 = *(v0 + 512);
    v36 = *(v0 + 496);
    v49 = *(v0 + 488);
    v47 = *(v0 + 480);
    v48 = *(v0 + 520);
    v55 = *(v0 + 464);
    v56 = *(v0 + 456);
    v52 = *(v0 + 472);
    v53 = *(v0 + 448);
    v57 = *(v0 + 440);
    v60 = *(v0 + 432);
    v59 = *(v0 + 424);
    v37 = *(v0 + 416);
    v38 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
    swift_beginAccess();
    sub_123D8(v37 + v38, v0 + 56);
    v39 = *(v0 + 80);
    v40 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v39);
    *(v0 + 344) = (*(v40 + 8))(v39, v40);
    sub_59D34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
    sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_59FB4();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    sub_19C84();
    sub_59F64();
    (*(v49 + 8))(v36, v47);
    sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v41 = sub_59E74();
    (*(v51 + 8))(v48, v50);
    *(v0 + 352) = v41;
    sub_5A4C4();
    sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
    v42 = sub_5A504();
    *(v0 + 360) = v42;
    v43 = sub_5A4A4();
    (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
    sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    sub_59F44();
    sub_9708(v53, &unk_7D9C0, &unk_5C810);

    (*(v55 + 8))(v52, v56);

    sub_5108(&qword_7D6B0, &qword_7D680, &unk_5CF50, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    sub_59FA4();
    (*(v61 + 8))(v54, v58);
    sub_59D74();
    (*(v60 + 8))(v57, v59);
    v44 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v45 = swift_task_alloc();
    *(v0 + 664) = v45;
    *v45 = v0;
    v45[1] = sub_29828;
    v46 = *(v0 + 552);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 368, v46, v44);
  }
}

uint64_t sub_29828()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_29E04;
  }

  else
  {
    v2 = sub_2993C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_29960()
{
  v28 = v0;
  v1 = v0[85];
  if (v1 == 1)
  {
    v5 = v0[49];
    (*(v0[70] + 8))(v0[71], v0[69]);
    sub_59CC4();
    sub_123D8(v5, (v0 + 12));
    v6 = sub_59D04();
    v7 = sub_5A454();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[82];
    v10 = v0[74];
    v11 = v0[72];
    if (v8)
    {
      v25 = v0[82];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136446210;
      sub_123D8((v0 + 12), (v0 + 17));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
      v14 = sub_5A1B4();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v17 = sub_9430(v14, v16, &v27);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_0, v6, v7, "⌛️❌ Timed out waiting for command %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);

      v25(v10, v11);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v9(v10, v11);
    }

    sub_31414();
    swift_allocError();
    *v22 = xmmword_5CA90;
    swift_willThrow();

    v23 = v0[1];

    return v23();
  }

  else if (v1)
  {
    v18 = v0[49];
    v19 = v18[3];
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v26 = (*(v20 + 16) + **(v20 + 16));
    v21 = swift_task_alloc();
    v0[86] = v21;
    *v21 = v0;
    v21[1] = sub_29E90;

    return v26(v1, v19, v20);
  }

  else
  {
    v2 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v3 = swift_task_alloc();
    v0[83] = v3;
    *v3 = v0;
    v3[1] = sub_29828;
    v4 = v0[69];

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 46, v4, v2);
  }
}

uint64_t sub_29E04()
{
  *(v0 + 376) = *(v0 + 672);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_29E90(char a1)
{
  *(*v1 + 721) = a1;

  return _swift_task_switch(sub_29F90, 0, 0);
}

uint64_t sub_29F90(uint64_t a1)
{
  v24 = v1;
  if (*(v1 + 721) == 1)
  {
    v2 = *(v1 + 392);
    sub_59CC4();
    sub_123D8(v2, v1 + 176);
    v3 = sub_59D04();
    v4 = sub_5A474();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 656);
    v7 = *(v1 + 600);
    v8 = *(v1 + 576);
    if (v5)
    {
      v22 = *(v1 + 656);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      sub_123D8(v1 + 176, v1 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
      v11 = sub_5A1B4();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));
      v14 = sub_9430(v11, v13, &v23);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_0, v3, v4, "⏱️✅ Command available. Performing: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);

      v22(v7, v8);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));
      v6(v7, v8);
    }

    v18 = swift_task_alloc();
    *(v1 + 696) = v18;
    *v18 = v1;
    v18[1] = sub_2A28C;
    v20 = *(v1 + 392);
    v19 = *(v1 + 400);

    return sub_2A8B0(v20, v19);
  }

  else
  {
    sub_19D78(*(v1 + 680));
    v15 = sub_5108(&unk_7DCC0, &unk_7DCB0, &unk_5C830, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
    v16 = swift_task_alloc();
    *(v1 + 664) = v16;
    *v16 = v1;
    v16[1] = sub_29828;
    v17 = *(v1 + 552);

    return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 368, v17, v15);
  }
}

uint64_t sub_2A28C(uint64_t a1)
{
  v3 = *v2;
  v3[40] = v2;
  v3[41] = a1;
  v3[42] = v1;
  v3[88] = v1;

  if (v1)
  {
    v4 = sub_2A774;
  }

  else
  {
    v4 = sub_2A3A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2A3A8()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_19D78(*(v0 + 680));
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 328);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_2A4E8(uint64_t a1)
{
  v2 = *v1;

  v4 = *(v2 + 8);
  if (!v7)
  {
    v3 = a1;
  }

  return v4(v3);
}

uint64_t sub_2A774()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_19D78(*(v0 + 680));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2A8B0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return _swift_task_switch(sub_2A8D4, 0, 0);
}

uint64_t sub_2A8D4()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE0, &qword_5CF60);
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = xmmword_5BC80;
  sub_123D8(v1, inited + 32);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_2A9A8;
  v4 = v0[12];

  return sub_2AC24(inited, v4);
}

uint64_t sub_2A9A8(uint64_t a1)
{
  v3 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {
    v4 = sub_2ABB4;
  }

  else
  {
    v5 = v3[14];
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 32));
    v4 = sub_2AAD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2AAD0()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
    result = sub_5A814();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_5A724();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 128) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2ABB4()
{
  v1 = *(v0 + 112);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2AC24(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE8, &qword_5CF70);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7DCF0, &qword_5CF78);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v5 = sub_59B64();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[36] = v6;
  *v6 = v3;
  v6[1] = sub_2ADA0;

  return sub_2BF98(a1);
}

uint64_t sub_2ADA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[37] = a1;
    v8 = swift_task_alloc();
    v4[38] = v8;
    *v8 = v5;
    v8[1] = sub_2AF44;
    v9 = v4[28];

    return sub_309C0(a1, v9);
  }
}

uint64_t sub_2AF44(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_2B064, 0, 0);
}

uint64_t sub_2B064()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_123D8(v3, (v0 + 2));
      sub_123D8((v0 + 2), (v0 + 7));
      sub_59D84();
      sub_9708((v0 + 7), &qword_7D7A0, qword_5C900);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v4 = v0[39];
  if (v4 >> 62)
  {
LABEL_39:
    v5 = sub_5A814();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_40:

    v48 = v0[1];
    v49 = v0[39];

    return v48(v49);
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_40;
  }

LABEL_6:
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = v0[39] + 32;
  while (1)
  {
    if (v7)
    {
      v10 = sub_5A724();
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      v10 = *(v9 + 8 * v6);
    }

    v4 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v12 = [v10 error];
    if (v12)
    {
      break;
    }

    ++v6;
    if (v11 == v5)
    {
      goto LABEL_40;
    }
  }

  v13 = v12;

  v14 = v13;
  sub_59C04();

  sub_9768((v0 + 12), (v0 + 17), &qword_7DD00, &qword_5CF98);
  v15 = v0[20];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    v17 = *(v15 - 8);
    v18 = swift_task_alloc();
    (*(v17 + 16))(v18, v16, v15);
    v19 = sub_5A8C4();
    if (v19)
    {
      v20 = v19;
      (*(v17 + 8))(v18, v15);
    }

    else
    {
      v20 = swift_allocError();
      (*(v17 + 32))(v21, v18, v15);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);

    v14 = v20;
  }

  else
  {
    sub_9708((v0 + 17), &qword_7DD00, &qword_5CF98);
  }

  v22 = [v4 dialog];
  v23 = v0[33];
  v24 = v0[34];
  if (!v22)
  {
    v29 = *(v24 + 56);
    v29(v0[31], 1, 1, v0[33]);
    sub_9768((v0 + 12), (v0 + 22), &qword_7DD00, &qword_5CF98);
    if (v0[25])
    {
      v30 = v0[30];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
      sub_59774();
      v31 = sub_59B84();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v30, 1, v31) != 1)
      {
        v37 = v0[30];
        sub_59B74();
        (*(v32 + 8))(v37, v31);
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
LABEL_29:
        v38 = v0[31];
        v28 = *(v0[34] + 48);
        if (v28(v38, 1, v0[33]) != 1)
        {
          sub_9708(v38, &unk_7DCF0, &qword_5CF78);
        }

        goto LABEL_31;
      }

      v33 = v0[30];
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
      v34 = &qword_7DCE8;
      v35 = &qword_5CF70;
      v36 = v33;
    }

    else
    {
      v34 = &qword_7DD00;
      v35 = &qword_5CF98;
      v36 = (v0 + 22);
    }

    sub_9708(v36, v34, v35);
    v29(v0[32], 1, 1, v0[33]);
    goto LABEL_29;
  }

  v26 = v0[31];
  v25 = v0[32];
  sub_2B770(v22);
  v27 = *(v24 + 56);
  v27(v26, 0, 1, v23);
  (*(v24 + 32))(v25, v26, v23);
  v27(v25, 0, 1, v23);
  v28 = *(v24 + 48);
LABEL_31:
  v40 = v0[32];
  v39 = v0[33];
  if (v28(v40, 1, v39) == 1)
  {
    sub_9708(v40, &unk_7DCF0, &qword_5CF78);
    swift_willThrow();
  }

  else
  {
    v42 = v0[34];
    v41 = v0[35];
    (*(v42 + 32))(v41, v40, v39);
    v43 = type metadata accessor for PlaybackController.ErrorDialog(0);
    sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog, &protocol conformance descriptor for PlaybackController.ErrorDialog);
    swift_allocError();
    v45 = v44;
    (*(v42 + 16))(v44, v41, v39);
    *(v45 + *(v43 + 20)) = v14;
    swift_willThrow();

    (*(v42 + 8))(v41, v39);
  }

  sub_9708((v0 + 12), &qword_7DD00, &qword_5CF98);

  v46 = v0[1];

  return v46();
}

void sub_2B770(void *a1)
{
  v1 = [a1 localizedTitle];
  if (v1)
  {
    v2 = v1;
    sub_5A194();
  }

  v3 = [a1 localizedMessage];
  if (v3)
  {
    v4 = v3;
    sub_5A194();
  }

  v5 = [a1 actions];
  sub_4FE4(0, &qword_7E268, MPCPlayerCommandDialogAction_ptr);
  v6 = sub_5A294();

  sub_1CD1C(v6);

  sub_59B54();
}

uint64_t sub_2B8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A0, &qword_5C8F0);
  __chkstk_darwin(v0 - 8);
  v44 = v35 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2A8, &unk_5D8E0);
  __chkstk_darwin(v2 - 8);
  v40 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2B0, &qword_5D2A0);
  __chkstk_darwin(v4 - 8);
  v39 = v35 - v5;
  v38 = sub_598A4();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_598E4();
  __chkstk_darwin(v8 - 8);
  v37 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_59944();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[1] = v13;
  v14 = sub_59904();
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v41 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_59AC4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_59AE4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = 0;
  v47 = 6;
  sub_59AF4();
  (*(v17 + 104))(v19, enum case for EpisodeListSettings.InitialItemBehavior.trimHeadAndInitialItem(_:), v16);
  sub_59AD4();
  (*(v11 + 104))(v13, enum case for MediaIdentifier.library(_:), v10);
  (*(v6 + 104))(v36, enum case for PlaybackIntent.Origin.endOfQueue(_:), v38);
  (*(v11 + 56))(v39, 1, 1, v10);
  v24 = v40;
  (*(v21 + 16))(v40, v23, v20);
  (*(v21 + 56))(v24, 0, 1, v20);
  sub_598D4();
  v25 = sub_59604();
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E2B8, &qword_5D2A8);
  v26 = sub_59894();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_5BC80;
  (*(v27 + 104))(v29 + v28, enum case for PlaybackIntent.Option.preventQueueing(_:), v26);
  sub_3A27C(v29);
  swift_setDeallocating();
  (*(v27 + 8))(v29 + v28, v26);
  swift_deallocClassInstance();
  v30 = v41;
  sub_59874();
  v31 = *(v45 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_player + 8);
  ObjectType = swift_getObjectType();
  v33 = PlaybackIntent.generateLocalMPCIntent()();
  (*(v31 + 64))(v33, ObjectType, v31);
  (*(v42 + 8))(v30, v43);
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_2BF98(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DCE8, &qword_5CF70);
  v2[47] = swift_task_alloc();
  v3 = sub_59B64();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v4 = sub_59D14();
  v2[52] = v4;
  v2[53] = *(v4 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return _swift_task_switch(sub_2C104, 0, 0);
}

uint64_t sub_2C104()
{
  if (sub_2E748(v0[45]))
  {
    sub_59CC4();
    v1 = sub_59D04();
    v2 = sub_5A474();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, v1, v2, "Converting current route to a buffered AirPlay route", v3, 2u);
    }

    v4 = v0[55];
    v5 = v0[52];
    v6 = v0[53];

    (*(v6 + 8))(v4, v5);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v7 = v0[44];
    v0[56] = v7;
    v8 = swift_task_alloc();
    v0[57] = v8;
    *v8 = v0;
    v8[1] = sub_2C314;

    return sub_4D088(v7);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[59] = v10;
    *v10 = v0;
    v10[1] = sub_2C818;

    return sub_2E290();
  }
}

uint64_t sub_2C314(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v4 = sub_2D318;
  }

  else
  {

    v4 = sub_2C438;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_2C438()
{
  v30 = v0;
  v1 = v0[38];
  v2 = v0[45];
  v0[61] = v1;
  v0[43] = _swiftEmptyArrayStorage;
  v3 = *(v2 + 16);
  v0[62] = v3;
  if (v3)
  {
    v0[66] = 0;
    v0[65] = _swiftEmptyArrayStorage;
    v0[63] = _swiftEmptyArrayStorage;
    v0[64] = _swiftEmptyArrayStorage;
    sub_123D8(v2 + 32, (v0 + 12));
    v4 = v0[15];
    v5 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
    v27 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[67] = v6;
    *v6 = v0;
    v6[1] = sub_2CD14;
    v7 = v0[61];

    v27(v7, v4, v5);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage[2];
    if (v8)
    {
      v9 = 0;
      v10 = &_swiftEmptyArrayStorage[4];
      v11 = (v0[53] + 8);
      v25 = _swiftEmptyArrayStorage[2];
      while (v9 < _swiftEmptyArrayStorage[2])
      {
        sub_123D8(v10, (v0 + 22));
        sub_59CC4();
        sub_123D8((v0 + 22), (v0 + 27));
        v12 = sub_59D04();
        v13 = sub_5A454();
        v14 = os_log_type_enabled(v12, v13);
        v15 = v0[54];
        v16 = v0[52];
        if (v14)
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v29 = v18;
          *v17 = 136446210;
          sub_123D8((v0 + 27), (v0 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
          v26 = v15;
          v28 = v16;
          v19 = v11;
          v20 = sub_5A1B4();
          v22 = v21;
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          v23 = sub_9430(v20, v22, &v29);

          *(v17 + 4) = v23;
          v11 = v19;
          _os_log_impl(&dword_0, v12, v13, "Trying to perform unavailable command: %{public}s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
          v8 = v25;

          (*v19)(v26, v28);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          (*v11)(v15, v16);
        }

        ++v9;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
        v10 += 5;
        if (v8 == v9)
        {
          v1 = v0[61];
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v24 = v0[1];

      v24(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_2C818(uint64_t a1)
{
  v3 = *v2;
  v3[40] = v2;
  v3[41] = a1;
  v3[42] = v1;
  v3[60] = v1;

  if (v1)
  {
    v4 = sub_2D840;
  }

  else
  {
    v4 = sub_2C934;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_2C934()
{
  v30 = v0;
  v1 = v0[41];
  v2 = v0[45];
  v0[61] = v1;
  v0[43] = _swiftEmptyArrayStorage;
  v3 = *(v2 + 16);
  v0[62] = v3;
  if (v3)
  {
    v0[66] = 0;
    v0[65] = _swiftEmptyArrayStorage;
    v0[63] = _swiftEmptyArrayStorage;
    v0[64] = _swiftEmptyArrayStorage;
    sub_123D8(v2 + 32, (v0 + 12));
    v4 = v0[15];
    v5 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
    v27 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[67] = v6;
    *v6 = v0;
    v6[1] = sub_2CD14;
    v7 = v0[61];

    v27(v7, v4, v5);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage[2];
    if (v8)
    {
      v9 = 0;
      v10 = &_swiftEmptyArrayStorage[4];
      v11 = (v0[53] + 8);
      v25 = _swiftEmptyArrayStorage[2];
      while (v9 < _swiftEmptyArrayStorage[2])
      {
        sub_123D8(v10, (v0 + 22));
        sub_59CC4();
        sub_123D8((v0 + 22), (v0 + 27));
        v12 = sub_59D04();
        v13 = sub_5A454();
        v14 = os_log_type_enabled(v12, v13);
        v15 = v0[54];
        v16 = v0[52];
        if (v14)
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v29 = v18;
          *v17 = 136446210;
          sub_123D8((v0 + 27), (v0 + 32));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
          v26 = v15;
          v28 = v16;
          v19 = v11;
          v20 = sub_5A1B4();
          v22 = v21;
          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          v23 = sub_9430(v20, v22, &v29);

          *(v17 + 4) = v23;
          v11 = v19;
          _os_log_impl(&dword_0, v12, v13, "Trying to perform unavailable command: %{public}s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
          v8 = v25;

          (*v19)(v26, v28);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
          (*v11)(v15, v16);
        }

        ++v9;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
        v10 += 5;
        if (v8 == v9)
        {
          v1 = v0[61];
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:

      v24 = v0[1];

      v24(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_2CD14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 544) = a1;
  *(v3 + 552) = v1;

  if (v1)
  {

    v4 = sub_2DD60;
  }

  else
  {
    v4 = sub_2CE40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2CE40()
{
  v40 = v0;
  v1 = *(v0 + 544);
  if (!v1)
  {
    sub_123D8(v0 + 96, v0 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 520);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1C410(0, v4[2] + 1, 1, *(v0 + 520));
    }

    v8 = v4[2];
    v7 = v4[3];
    if (v8 >= v7 >> 1)
    {
      v4 = sub_1C410((v7 > 1), v8 + 1, 1, v4);
    }

    v4[2] = v8 + 1;
    sub_12440((v0 + 136), &v4[5 * v8 + 4]);
    v5 = *(v0 + 504);
    v3 = *(v0 + 512);
    goto LABEL_9;
  }

  v2 = v1;
  sub_5A274();
  if (*(&dword_10 + (*(v0 + 344) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 344) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    sub_5A304();

    v3 = *(v0 + 344);
    v4 = *(v0 + 520);
    v5 = v3;
LABEL_9:
    v9 = *(v0 + 496);
    v10 = *(v0 + 528) + 1;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    if (v10 != v9)
    {
      break;
    }

    v33 = v5;
    v2 = v4[2];
    if (!v2)
    {
LABEL_20:

      v32 = *(v0 + 8);

      return v32(v33);
    }

    v11 = 0;
    v12 = (v4 + 4);
    v13 = (*(v0 + 424) + 8);
    v34 = v13;
    v35 = v4;
    while (v11 < v4[2])
    {
      sub_123D8(v12, v0 + 176);
      sub_59CC4();
      sub_123D8(v0 + 176, v0 + 216);
      v14 = sub_59D04();
      v15 = sub_5A454();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 432);
      v18 = *(v0 + 416);
      if (v16)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136446210;
        sub_123D8(v0 + 216, v0 + 256);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D2D0, &qword_5CA50);
        v36 = v17;
        v37 = v18;
        v21 = sub_5A1B4();
        v22 = v2;
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));
        v25 = sub_9430(v21, v24, &v39);
        v2 = v22;

        *(v19 + 4) = v25;
        _os_log_impl(&dword_0, v14, v15, "Trying to perform unavailable command: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        v4 = v35;

        v13 = v34;

        (*v34)(v36, v37);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));
        (*v13)(v17, v18);
      }

      ++v11;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v12 += 40;
      if (v2 == v11)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    sub_5A2B4();
  }

  v26 = *(v0 + 528);
  *(v0 + 528) = v26 + 1;
  *(v0 + 520) = v4;
  *(v0 + 504) = v5;
  *(v0 + 512) = v3;
  sub_123D8(*(v0 + 360) + 40 * v26 + 72, v0 + 96);
  v27 = *(v0 + 120);
  v28 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v27);
  v38 = (*(v28 + 8) + **(v28 + 8));
  v29 = swift_task_alloc();
  *(v0 + 536) = v29;
  *v29 = v0;
  v29[1] = sub_2CD14;
  v30 = *(v0 + 488);

  return v38(v30, v27, v28);
}

uint64_t sub_2D318()
{
  sub_59C04();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 376);
    sub_12440((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_59774();
    v2 = sub_59B84();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 48))(v1, 1, v2);
    v5 = *(v0 + 376);
    if (v4 == 1)
    {
      sub_9708(v5, &qword_7DCE8, &qword_5CF70);
    }

    else
    {
      if ((*(v3 + 88))(v5, v2) == enum case for PlaybackErrorBehavior.dialog(_:))
      {
        v7 = *(v0 + 400);
        v6 = *(v0 + 408);
        v8 = *(v0 + 384);
        v9 = *(v0 + 392);
        v10 = *(v0 + 376);
        (*(v3 + 96))(v10, v2);
        v32 = *(v9 + 32);
        v32(v6, v10, v8);
        (*(v9 + 16))(v7, v6, v8);
        v11 = *(v0 + 40);
        v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
        v13 = *(v11 - 8);
        v14 = swift_task_alloc();
        (*(v13 + 16))(v14, v12, v11);
        v15 = sub_5A8C4();
        if (v15)
        {
          v16 = v15;
          (*(v13 + 8))(v14, v11);
        }

        else
        {
          v16 = swift_allocError();
          (*(v13 + 32))(v22, v14, v11);
        }

        v23 = *(v0 + 400);
        v31 = *(v0 + 408);
        v25 = *(v0 + 384);
        v24 = *(v0 + 392);
        v26 = type metadata accessor for PlaybackController.ErrorDialog(0);
        sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog, &protocol conformance descriptor for PlaybackController.ErrorDialog);
        swift_allocError();
        v28 = v27;
        v32(v27, v23, v25);
        *(v28 + *(v26 + 20)) = v16;

        swift_willThrow();

        (*(v24 + 8))(v31, v25);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_15;
      }

      (*(v3 + 8))(*(v0 + 376), v2);
    }

    v17 = *(v0 + 40);
    v18 = __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    (*(v19 + 16))(v20, v18, v17);
    if (sub_5A8C4())
    {
      (*(v19 + 8))(v20, v17);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v21, v20, v17);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_9708(v0 + 56, &qword_7DD00, &qword_5CF98);
    swift_willThrow();
  }

LABEL_15:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2D840()
{
  sub_59C04();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 376);
    sub_12440((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_59774();
    v2 = sub_59B84();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 48))(v1, 1, v2);
    v5 = *(v0 + 376);
    if (v4 == 1)
    {
      sub_9708(v5, &qword_7DCE8, &qword_5CF70);
    }

    else
    {
      if ((*(v3 + 88))(v5, v2) == enum case for PlaybackErrorBehavior.dialog(_:))
      {
        v7 = *(v0 + 400);
        v6 = *(v0 + 408);
        v8 = *(v0 + 384);
        v9 = *(v0 + 392);
        v10 = *(v0 + 376);
        (*(v3 + 96))(v10, v2);
        v32 = *(v9 + 32);
        v32(v6, v10, v8);
        (*(v9 + 16))(v7, v6, v8);
        v11 = *(v0 + 40);
        v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
        v13 = *(v11 - 8);
        v14 = swift_task_alloc();
        (*(v13 + 16))(v14, v12, v11);
        v15 = sub_5A8C4();
        if (v15)
        {
          v16 = v15;
          (*(v13 + 8))(v14, v11);
        }

        else
        {
          v16 = swift_allocError();
          (*(v13 + 32))(v22, v14, v11);
        }

        v23 = *(v0 + 400);
        v31 = *(v0 + 408);
        v25 = *(v0 + 384);
        v24 = *(v0 + 392);
        v26 = type metadata accessor for PlaybackController.ErrorDialog(0);
        sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog, &protocol conformance descriptor for PlaybackController.ErrorDialog);
        swift_allocError();
        v28 = v27;
        v32(v27, v23, v25);
        *(v28 + *(v26 + 20)) = v16;

        swift_willThrow();

        (*(v24 + 8))(v31, v25);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_15;
      }

      (*(v3 + 8))(*(v0 + 376), v2);
    }

    v17 = *(v0 + 40);
    v18 = __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    (*(v19 + 16))(v20, v18, v17);
    if (sub_5A8C4())
    {
      (*(v19 + 8))(v20, v17);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v21, v20, v17);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_9708(v0 + 56, &qword_7DD00, &qword_5CF98);
    swift_willThrow();
  }

LABEL_15:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2DD60()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  sub_59C04();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 376);
    sub_12440((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_59774();
    v2 = sub_59B84();
    v3 = *(v2 - 8);
    v4 = (*(v3 + 48))(v1, 1, v2);
    v5 = *(v0 + 376);
    if (v4 == 1)
    {
      sub_9708(v5, &qword_7DCE8, &qword_5CF70);
    }

    else
    {
      if ((*(v3 + 88))(v5, v2) == enum case for PlaybackErrorBehavior.dialog(_:))
      {
        v7 = *(v0 + 400);
        v6 = *(v0 + 408);
        v8 = *(v0 + 384);
        v9 = *(v0 + 392);
        v10 = *(v0 + 376);
        (*(v3 + 96))(v10, v2);
        v32 = *(v9 + 32);
        v32(v6, v10, v8);
        (*(v9 + 16))(v7, v6, v8);
        v11 = *(v0 + 40);
        v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
        v13 = *(v11 - 8);
        v14 = swift_task_alloc();
        (*(v13 + 16))(v14, v12, v11);
        v15 = sub_5A8C4();
        if (v15)
        {
          v16 = v15;
          (*(v13 + 8))(v14, v11);
        }

        else
        {
          v16 = swift_allocError();
          (*(v13 + 32))(v22, v14, v11);
        }

        v23 = *(v0 + 400);
        v31 = *(v0 + 408);
        v25 = *(v0 + 384);
        v24 = *(v0 + 392);
        v26 = type metadata accessor for PlaybackController.ErrorDialog(0);
        sub_31468(&qword_7DD08, type metadata accessor for PlaybackController.ErrorDialog, &protocol conformance descriptor for PlaybackController.ErrorDialog);
        swift_allocError();
        v28 = v27;
        v32(v27, v23, v25);
        *(v28 + *(v26 + 20)) = v16;

        swift_willThrow();

        (*(v24 + 8))(v31, v25);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        goto LABEL_15;
      }

      (*(v3 + 8))(*(v0 + 376), v2);
    }

    v17 = *(v0 + 40);
    v18 = __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    (*(v19 + 16))(v20, v18, v17);
    if (sub_5A8C4())
    {
      (*(v19 + 8))(v20, v17);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v21, v20, v17);
    }

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_9708(v0 + 56, &qword_7DD00, &qword_5CF98);
    swift_willThrow();
  }

LABEL_15:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2E290()
{
  v1[10] = v0;
  v2 = sub_59D14();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_2E350, 0, 0);
}

uint64_t sub_2E350()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v5)
  {
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v7 = [v6 playerPath];
    v8 = [v7 isInProcess];

    if ((v8 & 1) != 0 || (v9 = [v6 playerPath], v10 = objc_msgSend(v9, "isNativePodcastsPath"), v9, v10))
    {
      sub_59CC4();
      v11 = v6;
      v12 = sub_59D04();
      v13 = sub_5A474();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = [v11 playerPath];
        *(v14 + 4) = v16;
        *v15 = v16;
        _os_log_impl(&dword_0, v12, v13, "Client response - fetched cached response with player path %@", v14, 0xCu);
        sub_9708(v15, &qword_7E260, &qword_5BE50);
      }

      v18 = v0[12];
      v17 = v0[13];
      v19 = v0[11];

      (*(v18 + 8))(v17, v19);

      v20 = v0[1];

      return v20(v11);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  v22 = swift_task_alloc();
  v0[14] = v22;
  *v22 = v0;
  v22[1] = sub_2E61C;

  return sub_2E85C();
}

uint64_t sub_2E61C(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

BOOL sub_2E748(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (!v11[0])
  {
    return 0;
  }

  v2 = [v11[0] isDeviceRoute];

  if (v2)
  {
    return 0;
  }

  v5 = a1 + 32;
  v6 = *(a1 + 16) + 1;
  do
  {
    v3 = --v6 != 0;
    if (!v6)
    {
      break;
    }

    v7 = v5 + 40;
    sub_123D8(v5, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v5 = v7;
  }

  while ((v10 & 1) == 0);
  return v3;
}

uint64_t sub_2E85C()
{
  v1[25] = v0;
  v2 = sub_59D14();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = sub_5A384();
  v1[30] = sub_5A374();
  v4 = sub_5A354();
  v1[31] = v4;
  v1[32] = v3;

  return _swift_task_switch(sub_2E954, v4, v3);
}

uint64_t sub_2E954()
{
  v1 = v0[25];
  v2 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v1 + v2, (v0 + 16));
  v3 = v0[19];
  v4 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v3);
  v7 = (*(v4 + 80) + **(v4 + 80));
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_2EAA4;

  return v7(v3, v4);
}

uint64_t sub_2EAA4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);

  return _swift_task_switch(sub_2EBCC, v4, v3);
}

uint64_t sub_2EBCC()
{
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v2 = qword_7CC68;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_5A174();
  v5 = sub_5A174();
  v6 = [objc_opt_self() pathWithRoute:v3 bundleID:v4 playerID:v5];
  v0[35] = v6;

  v7 = sub_4CE48();
  v0[36] = v7;
  [v7 setPlayerPath:v6];
  sub_59CC4();
  v8 = v6;
  v9 = sub_59D04();
  v10 = sub_5A474();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_0, v9, v10, "Client response - force fetched response with player path %@", v11, 0xCu);
    sub_9708(v12, &qword_7E260, &qword_5BE50);
  }

  v14 = v0[28];
  v15 = v0[26];
  v16 = v0[27];

  (*(v16 + 8))(v14, v15);
  v17 = sub_5A374();
  v0[37] = v17;
  if (v17)
  {
    swift_getObjectType();
    v18 = sub_5A354();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  return _swift_task_switch(sub_2EE20, v18, v20);
}

uint64_t sub_2EE20()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 24;
  v6 = v0[36];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2EF7C;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_32CC0;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_498CC;
  v1[13] = &block_descriptor_172;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_2EF7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[31];
    v5 = v2[32];
    v6 = sub_2F160;
  }

  else
  {

    v2[39] = v2[24];
    v4 = v2[31];
    v5 = v2[32];
    v6 = sub_2F0CC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_2F0CC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  v3 = *(v0 + 8);
  v4 = *(v0 + 312);

  return v3(v4);
}

uint64_t sub_2F160()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2F1F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    **(*(a3 + 64) + 40) = a1;
    v4 = a1;

    return _swift_continuation_throwingResume(a3);
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_31414();
      v5 = swift_allocError();
      *v6 = 0;
      v6[1] = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v7 = swift_allocError();
    *v8 = v5;
    swift_errorRetain();

    return _swift_continuation_throwingResumeWithError(a3, v7);
  }
}

uint64_t sub_2F2E4(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_4FE4(0, &qword_7E298, MPCPlayerCommandStatus_ptr);
  **(*(v2 + 64) + 40) = sub_5A294();

  return _swift_continuation_resume(v2);
}

uint64_t sub_2F368@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___volumeController;
  swift_beginAccess();
  sub_9768(v1 + v3, &v7, &qword_7DB38, &qword_5CE28);
  if (v8)
  {
    return sub_12440(&v7, a1);
  }

  sub_9708(&v7, &qword_7DB38, &qword_5CE28);
  v5 = _s20VolumeController_iOSCMa();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  a1[3] = v5;
  a1[4] = &off_740A0;
  *a1 = v6;
  sub_123D8(a1, &v7);
  swift_beginAccess();
  sub_312E8(&v7, v1 + v3, &qword_7DB38, &qword_5CE28);
  return swift_endAccess();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2F4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB40, &qword_5CE30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t PlaybackController.currentTime.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (v7 == 2)
  {
    return 0;
  }

  sub_594E4();
  v2 = v5 + (v1 - v3) * v6;
  if (v2 >= v4)
  {
    v2 = v4;
  }

  return fmax(v2, 0.0);
}

uint64_t sub_2F62C()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CAA0;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_272F8;

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_2F70C()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CAB0;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_272F8;

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_2F7EC()
{
  *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 16) = xmmword_5CAC0;
  *(v0 + 32) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2F8AC;

  return sub_2A8B0(v0 + 16, 0);
}

uint64_t sub_2F8AC(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2FA04, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 16));
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2FA04()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaybackController.performIntent(_:whenPossible:)(uint64_t a1, char a2)
{
  *(v3 + 289) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = sub_59D14();
  *(v3 + 176) = v4;
  *(v3 + 184) = *(v4 - 8);
  *(v3 + 192) = swift_task_alloc();
  v5 = sub_59944();
  *(v3 + 200) = v5;
  *(v3 + 208) = *(v5 - 8);
  *(v3 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_2FB88, 0, 0);
}

uint64_t sub_2FB88()
{
  if ([objc_opt_self() supportsBlueMoon])
  {
    v2 = *(v0 + 208);
    v1 = *(v0 + 216);
    v3 = *(v0 + 200);
    sub_59884();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v4 = *(v0 + 144);
    v5 = MediaIdentifier.firstItemMatchesEpisode(_:)(v4);

    (*(v2 + 8))(v1, v3);
    if (v5)
    {
      *(v0 + 152) = _swiftEmptyArrayStorage;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_59E24();

      if ((*(v0 + 288) & 1) == 0)
      {
        sub_59CC4();
        v6 = sub_59D04();
        v7 = sub_5A434();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_0, v6, v7, "Resuming episode that's already in the player", v8, 2u);
        }

        v10 = *(v0 + 184);
        v9 = *(v0 + 192);
        v11 = *(v0 + 176);

        (*(v10 + 8))(v9, v11);
        *(v0 + 96) = xmmword_5CAB0;
        *(v0 + 112) = 0;
        sub_5A2D4();
      }

      v12 = sub_59844();
      if ((v13 & 1) == 0)
      {
        *(v0 + 128) = 0;
        *(v0 + 136) = 0;
        *(v0 + 120) = v12;
        sub_5A2D4();
      }

      v14 = sub_1CF54(*(v0 + 152));
      *(v0 + 224) = v14;

      v15 = swift_task_alloc();
      *(v0 + 232) = v15;
      *v15 = v0;
      v15[1] = sub_30074;

      return sub_2AC24(v14, 0);
    }

    else
    {
      v18 = *(v0 + 160);
      if (*(v0 + 289) == 1)
      {
        *(v0 + 80) = type metadata accessor for PlaybackController.QueueCommand(0);
        *(v0 + 88) = &protocol witness table for PlaybackController.QueueCommand;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        v20 = sub_59904();
        (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v18, v20);
        swift_storeEnumTagMultiPayload();
        v21 = swift_task_alloc();
        *(v0 + 256) = v21;
        *v21 = v0;
        v21[1] = sub_30288;

        return sub_28728(v0 + 56, 0, 5.0);
      }

      else
      {
        *(v0 + 40) = type metadata accessor for PlaybackController.QueueCommand(0);
        *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
        v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
        v23 = sub_59904();
        (*(*(v23 - 8) + 16))(v22, v18, v23);
        swift_storeEnumTagMultiPayload();
        v24 = swift_task_alloc();
        *(v0 + 272) = v24;
        *v24 = v0;
        v24[1] = sub_303F0;

        return sub_2A8B0(v0 + 16, 0);
      }
    }
  }

  else
  {

    v17 = *(v0 + 8);

    return v17(0);
  }
}

uint64_t sub_30074(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v4 = sub_30558;
  }

  else
  {

    v4 = sub_30190;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_30190()
{
  v1 = *(v0 + 240);
  if (v1 >> 62)
  {
    result = sub_5A814();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_5A724();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 240) + 32);
  }

LABEL_9:

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_30288(uint64_t a1)
{
  v4 = *v2;
  v4[33] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_305D0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 7);

    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_303F0(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_30648, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 2);

    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_30558()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_305D0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_30648()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_306C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    sub_24C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_5BC80;
    *(inited + 32) = a1;
    v6 = inited + 32;
    *(inited + 40) = a2;
    sub_4411C(inited, &off_71EC8);

    swift_setDeallocating();
    return sub_32C5C(v6);
  }

  else
  {
    sub_24C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D880, &unk_5CA40);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_5BC80;
    *(v8 + 32) = a1;
    sub_43BC4(v8, &off_71EA0);

    return swift_setDeallocating();
  }
}

void sub_307C4(char *a1@<X8>)
{
  v2 = sub_59464();
  v3 = sub_5A194();
  v5 = v4;
  if (v3 == sub_5A194() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_5A8E4();

  if (v8)
  {

LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

  v10 = sub_5A194();
  v12 = v11;
  if (v10 == sub_5A194() && v12 == v13)
  {

    v9 = 0;
  }

  else
  {
    v15 = sub_5A8E4();

    if (v15)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_9:
  *a1 = v9;
}

uint64_t MPCPlayerCommandDialogAction.title.getter()
{
  v1 = [v0 localizedTitle];
  v2 = sub_5A194();

  return v2;
}

uint64_t sub_30968()
{
  v1 = [*v0 localizedTitle];
  v2 = sub_5A194();

  return v2;
}

uint64_t sub_309C0(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = sub_59D14();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  sub_5A384();
  v2[25] = sub_5A374();
  v5 = sub_5A354();
  v2[26] = v5;
  v2[27] = v4;

  return _swift_task_switch(sub_30AB4, v5, v4);
}

uint64_t sub_30AB4()
{
  v0[18] = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E278, &qword_5D280);
  sub_5108(&qword_7E280, &qword_7E278, &qword_5D280, &protocol conformance descriptor for [A]);
  if (sub_5A414())
  {
    v1 = v0[21];
    v2 = objc_allocWithZone(MPCPlayerChangeRequest);
    sub_4FE4(0, &qword_7E288, MPCPlayerCommandRequest_ptr);
    isa = sub_5A284().super.isa;
    v4 = [v2 initWithCommandRequests:isa];
    v0[28] = v4;

    [v4 setOptions:v1];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = sub_30D94;
    v5 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E290, &qword_5D288);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_2F2E4;
    v0[13] = &block_descriptor_177;
    v0[14] = v5;
    [v4 performWithExtendedStatusCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    sub_59CC4();
    v6 = sub_59D04();
    v7 = sub_5A454();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[22];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v6, v7, "No command requests are available to perform. Skipping.", v12, 2u);
    }

    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_30D94()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return _swift_task_switch(sub_30E9C, v2, v1);
}

uint64_t sub_30E9C()
{

  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_30F18()
{
  v0 = sub_5A5C4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E360, &qword_5D310);
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E368, &qword_5D318);
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v22 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  sub_5A5D4();

  v16 = [v14 defaultCenter];
  sub_5A5D4();

  sub_31468(&qword_7E370, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_59F04();
  v17 = *(v1 + 8);
  v17(v4, v0);
  v17(v6, v0);
  sub_5108(&qword_7E378, &qword_7E360, &qword_5D310, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v18 = v24;
  sub_59E84();
  (*(v25 + 8))(v10, v18);
  sub_5108(&unk_7E380, &qword_7E368, &qword_5D318, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v19 = v23;
  v20 = sub_59E74();
  (*(v11 + 8))(v13, v19);
  return v20;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_312E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_31350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D9C;

  return sub_26F64(a1, v4, v5, v6);
}

_OWORD *sub_31404(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_31414()
{
  result = qword_7DCD0;
  if (!qword_7DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7DCD0);
  }

  return result;
}

uint64_t sub_31468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_31658@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playbackPositionTracker;
  swift_beginAccess();
  return sub_9768(v3 + v4, a2, &qword_7DB40, &qword_5CE30);
}

uint64_t sub_316C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24C20();
  *a1 = result;
  return result;
}

uint64_t sub_316F4(uint64_t *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController____lazy_storage___queueController) = *a1;
}

id sub_31740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_playerPath;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_317B4(uint64_t a1)
{
  sub_327D8();
  if (v1 <= 0x3F)
  {
    sub_32828(319, &qword_7DD50, &qword_7DBC8, &qword_5CEA0);
    if (v2 <= 0x3F)
    {
      sub_32828(319, &qword_7DD58, &qword_7DBD0, &qword_5CEA8);
      if (v3 <= 0x3F)
      {
        sub_32828(319, &qword_7DD60, &qword_7DBD8, &qword_5CEB0);
        if (v4 <= 0x3F)
        {
          sub_32828(319, &qword_7DD68, &qword_7DBE0, &qword_5CEB8);
          if (v5 <= 0x3F)
          {
            sub_32828(319, &qword_7DD70, &qword_7DBE8, &unk_5CEC0);
            if (v6 <= 0x3F)
            {
              sub_32828(319, &qword_7DD78, &qword_7DBF0, &unk_5E4A0);
              if (v7 <= 0x3F)
              {
                sub_32828(319, &unk_7DD80, &qword_7DB10, &qword_5CE20);
                if (v8 <= 0x3F)
                {
                  sub_59C24();
                  if (v9 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of PlaybackController.canPerform(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 928) + **(*v1 + 928));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_32310;

  return v6(a1);
}

uint64_t sub_32310(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  v11 = (*(*v3 + 944) + **(*v3 + 944));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_32E5C;
  v9.n128_f64[0] = a3;

  return v11(a1, a2, v9);
}

uint64_t dispatch thunk of PlaybackController.performCommand(_:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 952) + **(*v2 + 952));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_32310;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PlaybackController.performCommands(_:options:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 960) + **(*v2 + 960));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_32E5C;

  return v8(a1, a2);
}

void sub_327D8()
{
  if (!qword_7DD48)
  {
    v0 = sub_59E44();
    if (!v1)
    {
      atomic_store(v0, &qword_7DD48);
    }
  }
}

void sub_32828(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_59E44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_32890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_59B64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_32960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_59B64();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_32A18(uint64_t a1)
{
  result = sub_59B64();
  if (v2 <= 0x3F)
  {
    result = sub_32A9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_32A9C()
{
  result = qword_7E220;
  if (!qword_7E220)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_7E220);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16PodcastsPlayback0B10ControllerC13ResponseErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_32B24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_32B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_32BD4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackController.PreferredJumpInterval(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlaybackController.PreferredJumpInterval(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_32D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_15D44;

  return sub_275A0(a1, v4, v5, v6);
}

unint64_t sub_32E84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v1 = *(v0 + 112);
  *(v0 + 136) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (*(v0 + 64) == 2)
  {

LABEL_4:
    v2 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for PodcastsPlaybackError.PlayChapterError.noItemPlaying(_:), v2);
    swift_willThrow();
LABEL_21:
    v19 = *(v0 + 8);

    return v19();
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_594E4();
  v9 = v6 + (v8 - v4) * *&v7;
  if (v9 >= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v1 chapters];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  sub_63F4();
  v13 = sub_5A294();
  *(v0 + 144) = v13;

  *(v0 + 120) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  sub_3354C();
  if ((sub_5A414() & 1) == 0)
  {

LABEL_19:
    v17 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for PodcastsPlaybackError.PlayChapterError.hasNoChapters(_:), v17);
    swift_willThrow();
LABEL_20:

    goto LABEL_21;
  }

  result = sub_6440(v13, fmax(v10, 0.0));
  if (result >> 62)
  {
    v20 = result;
    v21 = sub_5A814();
    result = v20;
    if (v21)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_25:

    v22 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for PodcastsPlaybackError.PlayChapterError.lastChapterAlreadyPlaying(_:), v22);
    swift_willThrow();
    v1 = *(v0 + 136);

    goto LABEL_20;
  }

LABEL_12:
  if ((result & 0xC000000000000001) != 0)
  {
    v15 = sub_5A724();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v15 = *(result + 32);
  }

  *(v0 + 152) = v15;

  *(v0 + 96) = &type metadata for PlaybackController.TransportCommand;
  *(v0 + 104) = &protocol witness table for PlaybackController.TransportCommand;
  *(v0 + 72) = xmmword_5D350;
  *(v0 + 88) = 0;
  v16 = swift_task_alloc();
  *(v0 + 160) = v16;
  *v16 = v0;
  v16[1] = sub_332D0;

  return sub_2A8B0(v0 + 72, 0);
}

uint64_t sub_332D0(void *a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_3346C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 72));
    v5 = sub_33400;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_33400()
{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[19];

  return v2(v3);
}

uint64_t sub_3346C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_334EC()
{
  result = qword_7E3E0;
  if (!qword_7E3E0)
  {
    sub_596F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E3E0);
  }

  return result;
}

unint64_t sub_3354C()
{
  result = qword_7E3E8;
  if (!qword_7E3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_7DB10, &qword_5CE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7E3E8);
  }

  return result;
}

uint64_t sub_335D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  v1 = *(v0 + 72);
  *(v0 + 96) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_59E24();

  if (*(v0 + 64) == 2)
  {

LABEL_4:
    v2 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for PodcastsPlaybackError.PlayChapterError.noItemPlaying(_:), v2);
    swift_willThrow();
LABEL_14:
    v20 = *(v0 + 8);

    return v20();
  }

  v4 = *(v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_594E4();
  v9 = v8;
  v10 = [v1 chapters];
  if (!v10)
  {
LABEL_13:
    v18 = sub_596F4();
    sub_334EC();
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, enum case for PodcastsPlaybackError.PlayChapterError.hasNoChapters(_:), v18);
    swift_willThrow();

    goto LABEL_14;
  }

  v11 = v10;
  sub_63F4();
  v12 = sub_5A294();
  *(v0 + 104) = v12;

  *(v0 + 80) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB10, &qword_5CE20);
  sub_3354C();
  if ((sub_5A414() & 1) == 0)
  {

    goto LABEL_13;
  }

  v13 = v6 + (v9 - v4) * *&v7;
  if (v13 >= v5)
  {
    v13 = v5;
  }

  v14 = fmax(v13, 0.0);
  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  *v15 = v0;
  v15[1] = sub_33904;
  v16 = *(v0 + 88);

  return sub_33B00(v12, v16, v14);
}

uint64_t sub_33904(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_33A98;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_33A2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_33A2C()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

uint64_t sub_33A98()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_33B00(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 72) = a2;
  *(v3 + 64) = a3;
  *(v3 + 56) = a1;
  return _swift_task_switch(sub_33B28, 0, 0);
}

unint64_t sub_33B28()
{
  result = sub_65E8(*(v0 + 56), *(v0 + 64));
  if (result >> 62)
  {
    v7 = result;
    v2 = sub_5A814();
    result = v7;
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((result & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v4 < *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          v5 = *(result + 8 * v4 + 32);
LABEL_8:
          *(v0 + 80) = v5;

          *(v0 + 40) = &type metadata for PlaybackController.TransportCommand;
          *(v0 + 48) = &protocol witness table for PlaybackController.TransportCommand;
          *(v0 + 16) = xmmword_5D360;
          *(v0 + 32) = 0;
          v6 = swift_task_alloc();
          *(v0 + 88) = v6;
          *v6 = v0;
          v6[1] = sub_33D3C;

          return sub_2A8B0(v0 + 16, 0);
        }

        __break(1u);
        return result;
      }

      v5 = sub_5A724();
      goto LABEL_8;
    }
  }

  else
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v8 = sub_596F4();
  sub_334EC();
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, enum case for PodcastsPlaybackError.PlayChapterError.firstChapterAlreadyPlaying(_:), v8);
  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_33D3C(void *a1)
{
  v4 = *v2;
  v4[12] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_33E90, 0, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 2);
    v5 = v4[1];
    v6 = v4[10];

    return v5(v6);
  }
}

uint64_t sub_33E90()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_33F10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_33F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_33FC0()
{
  result = kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier;
  if (kMRMediaRemoteSystemPodcastApplicationDisplayIdentifier)
  {
    v1 = sub_5A194();
    v3 = v2;
    v7 = &_swiftEmptySetSingleton;
    sub_B5B4(&v6, 2);
    sub_B5B4(&v5, 1);
    result = sub_B5B4(&v4, 0);
    *&xmmword_80BD0 = 0x7374736163646F50;
    *(&xmmword_80BD0 + 1) = 0xE800000000000000;
    qword_80BE0 = v1;
    unk_80BE8 = v3;
    qword_80BF0 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_34074()
{
  if (qword_7CC70 != -1)
  {
    swift_once();
  }

  v3[0] = xmmword_80BD0;
  v3[1] = *&qword_80BE0;
  v4 = qword_80BF0;
  v5 = xmmword_80BD0;
  v6 = *&qword_80BE0;
  v7 = qword_80BF0;
  v0 = objc_allocWithZone(_s27AutomaticResponseDataSourceCMa());
  sub_32DEC(&v5, v2);
  sub_32DEC(&v6, v2);
  sub_34130(&v7, v2);
  result = sub_4A4AC(v3);
  qword_80BF8 = result;
  return result;
}

uint64_t sub_34130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED60, &qword_5D320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s13ConfigurationV12PlayerOptionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}
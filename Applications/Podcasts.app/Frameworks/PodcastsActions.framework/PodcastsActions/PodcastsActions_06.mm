char *sub_A9FE0@<X0>(char **a1@<X8>)
{
  result = sub_AA008();
  *a1 = result;
  return result;
}

char *sub_AA008()
{
  v0 = sub_E64B4();
  v26 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v25 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v22 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130590, &qword_F2BD8);
  v5 = sub_E6614();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v30 = v6 & 0xFFFFFFFFFFFFFF8;
    v28 = (v26 + 32);
    v31 = _swiftEmptyArrayStorage;
    v23 = i;
    v24 = v6;
    v27 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        v10 = sub_E79B4();
      }

      else
      {
        if (v8 >= *(v30 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      sub_E64F4();
      sub_E6824();
      if (v13)
      {
      }

      else
      {
        sub_E64C4();
        v29 = sub_E66E4();
        v15 = v14;

        if (v15)
        {
          sub_E64C4();
          sub_E66D4();

          v16 = v25;
          sub_E6494();

          v17 = *v28;
          (*v28)(v4, v16, v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_234CC(0, *(v31 + 2) + 1, 1, v31);
          }

          v19 = *(v31 + 2);
          v18 = *(v31 + 3);
          i = v23;
          if (v19 >= v18 >> 1)
          {
            v31 = sub_234CC((v18 > 1), v19 + 1, 1, v31);
          }

          v20 = v31;
          *(v31 + 2) = v19 + 1;
          v17(&v20[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19], v4, v0);
          v6 = v24;
        }

        else
        {
        }

        v9 = v27;
      }

      ++v8;
      if (v12 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_24:

  return v31;
}

uint64_t InteractionContext.Page.entityAnnotation()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E5B74();
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AA6E0(v1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 4) < 0x17)
  {
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (v5[8])
      {
        if (!*(v5 + 3))
        {
          goto LABEL_2;
        }

        v11 = *(v5 + 2);
        v12 = *(v5 + 3);
      }

      else
      {
        v23 = *v5;
        sub_10D78();
        v11 = sub_E7854();
        v12 = v18;
      }

      type metadata accessor for EpisodeEntity(0);
      v23 = v11;
      v24 = v12;
      sub_AA7AC(&qword_12E000, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
      goto LABEL_18;
    }

    v13 = v5[8];
    v14 = *(v5 + 2);
    v15 = *(v5 + 3);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305A0, &qword_F2C38) + 64);
    if (v13)
    {
      if (!v15)
      {
        v22 = sub_E55E4();
        (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
        return sub_AA744(&v5[v16]);
      }

      v17 = v15;
    }

    else
    {
      v23 = *v5;
      sub_10D78();
      v14 = sub_E7854();
      v17 = v20;
    }

    type metadata accessor for ShowEntity(0);
    v23 = v14;
    v24 = v17;
    sub_AA7AC(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    sub_E55D4();
    v21 = sub_E55E4();
    (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    return sub_AA744(&v5[v16]);
  }

  if (EnumCaseMultiPayload)
  {
    sub_AA744(v5);
  }

  else if ((v5[8] & 1) == 0)
  {
    v9 = *v5;
    type metadata accessor for ChannelEntity(0);
    v23 = v9;
    sub_10D78();
    v23 = sub_E7854();
    v24 = v10;
    sub_AA7AC(&qword_12E040, type metadata accessor for ChannelEntity, &protocol conformance descriptor for ChannelEntity);
LABEL_18:
    sub_E55D4();
    v19 = sub_E55E4();
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

LABEL_2:
  v7 = sub_E55E4();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_AA6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5B74();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AA744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AA7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_AA7F8()
{
  result = qword_1305A8;
  if (!qword_1305A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305A8);
  }

  return result;
}

uint64_t DebugLibraryStorageTipSuggestedLimitIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CD0, &unk_F5DA0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_E6974();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = sub_E5C04();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305B0, &qword_F2D30);
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305B8, &unk_F2D38);
  v7 = swift_task_alloc();
  v1[23] = v7;
  *v7 = v1;
  v7[1] = sub_AAABC;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v6, v6);
}

uint64_t sub_AAABC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_AB0C8;
  }

  else
  {
    v2 = sub_AABD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_AABD0()
{
  v44 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  swift_getObjectType();
  sub_E6D34();
  sub_26E5C();
  sub_E6CA4();
  (*(v2 + 8))(v1, v3);
  v4 = v0[6];
  if (![objc_opt_self() isRunningOnInternalOS])
  {
    swift_unknownObjectRelease();

LABEL_10:
    v21 = 1;
    goto LABEL_19;
  }

  if (!v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v5 = [v4 longLongValue];
  sub_E76B4();
  sub_E5BC4();
  sub_E6954();
  v6 = sub_E6964();
  v7 = sub_E74B4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v5;
    _os_log_impl(&dword_0, v6, v7, "Using UserDefault override value for storage tip level: %lld", v8, 0xCu);
  }

  v9 = v0[16];
  v10 = v0[12];
  v11 = v0[13];

  v12 = v9;
  v13 = *(v11 + 8);
  v13(v12, v10);
  if ((v5 & 0x8000000000000000) != 0)
  {
    sub_E6954();
    v22 = sub_E6964();
    v23 = sub_E7494();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v4;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v22, v23, "Recommending hiding tip", v25, 2u);

      v4 = v22;
      v22 = v24;
    }

    swift_unknownObjectRelease();
    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[17];
    v29 = v0[8];
    v13(v0[15], v0[12]);
    (*(v27 + 32))(v29, v26, v28);
  }

  else
  {
    sub_E6954();
    v14 = sub_E6964();
    v41 = sub_E7494();
    v15 = os_log_type_enabled(v14, v41);
    v16 = v0[14];
    v42 = v0[12];
    if (v15)
    {
      v40 = v13;
      v17 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v17 = 136315138;
      v0[7] = v5;
      type metadata accessor for MTPodcastEpisodeLimit(0);
      v18 = sub_E7084();
      v38 = v16;
      v20 = sub_23E64(v18, v19, &v43);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_0, v14, v41, "Recommending %s episode level", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);

      v40(v38, v42);
    }

    else
    {

      v13(v16, v42);
    }

    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[9];
    sub_E6D24();
    sub_E6CA4();
    (*(v31 + 8))(v30, v32);
    if (v0[5])
    {
      sub_E5BE4();
    }

    v34 = v0[18];
    v33 = v0[19];
    v35 = v0[17];
    sub_E5BC4();
    swift_unknownObjectRelease();

    (*(v34 + 8))(v33, v35);
  }

  v21 = 0;
LABEL_19:
  (*(v0[18] + 56))(v0[8], v21, 1, v0[17]);

  v36 = v0[1];

  return v36();
}

uint64_t sub_AB0C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AB178(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return DebugLibraryStorageTipSuggestedLimitIntentImplementation.perform(_:objectGraph:)(a1);
}

void *sub_AB218(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_AB23C()
{
  result = qword_131D10;
  if (!qword_131D10)
  {
    type metadata accessor for LibraryStorageTipSuggestedLimitIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131D10);
  }

  return result;
}

uint64_t DownloadEpisodesIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[15] = a2;
  v4 = sub_E7324();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[18] = v5;
  v2[19] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1305C0, qword_F2DE8);
  v8 = swift_task_alloc();
  v2[20] = v8;
  *v8 = v2;
  v8[1] = sub_AB3C8;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v7, v7);
}

uint64_t sub_AB3C8()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_ABD70, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
    v4 = swift_task_alloc();
    *(v2 + 176) = v4;
    *v4 = v2;
    v4[1] = sub_AB56C;

    return BaseObjectGraph.inject<A>(_:)(v2 + 96, v3, v3);
  }
}

uint64_t sub_AB56C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_ABDD4;
  }

  else
  {
    v2 = sub_AB680;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_AB680()
{
  v1 = v0[23];
  swift_getObjectType();
  sub_6C94();
  v0[24] = sub_E7764();
  (*(v0[17] + 8))(v0[18], v0[16]);
  swift_unknownObjectRelease();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_AB7F0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 7, v4, v4);
  }
}

uint64_t sub_AB7F0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_ABE40;
  }

  else
  {
    v2 = sub_AB904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_AB904()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v0[14] = v1;
  v4 = swift_task_alloc();
  v0[27] = v4;
  v5 = sub_ABFB8();
  *v4 = v0;
  v4[1] = sub_AB9EC;
  v6 = v0[15];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 13, v0 + 14, v6, &type metadata for FindOrCreateLocalEpisodeContentIDsIntent, v5, v2, v3);
}

uint64_t sub_AB9EC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_ABEB4;
  }

  else
  {
    v2 = sub_ABB00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_ABB00()
{
  v1 = v0[13];
  v0[29] = v1;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_ABBD0;
  v5 = v0[24];

  return dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisodes(with:isFromSaving:from:in:)(v1, 0, 3, v5, v2, v3);
}

uint64_t sub_ABBD0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_ABF30;
  }

  else
  {

    v2 = sub_ABCEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_ABCEC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_ABD70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ABDD4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ABE40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ABEB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ABF30()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_ABFB8()
{
  result = qword_1305D8;
  if (!qword_1305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305D8);
  }

  return result;
}

uint64_t sub_AC00C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return DownloadEpisodesIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_AC0AC(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t EnqueueEpisodeForPlaybackIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_E5D34();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305F0, &qword_F2E88);
  v2[13] = swift_task_alloc();
  v4 = sub_E62C4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_AC324, 0, 0);
}

uint64_t sub_AC324()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_95FE0(**(v0 + 64), *(*(v0 + 64) + 8), *(*(v0 + 64) + 16));
  sub_E62B4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_ACC40(*(v0 + 104));
    sub_ACCA8();
    swift_allocError();
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    *(v0 + 216) = *(type metadata accessor for EnqueueEpisodeForPlaybackIntent(0) + 20);
    *(v0 + 136) = sub_E72F4();
    *(v0 + 144) = sub_E72E4();
    v6 = sub_E5D94();
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_AC510;

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v6, v6);
  }
}

uint64_t sub_AC510()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = sub_E7294();
  if (v0)
  {
    v5 = sub_AC950;
  }

  else
  {
    *(v2 + 168) = v3;
    *(v2 + 176) = v4;
    v5 = sub_AC674;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_AC674()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 56);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F338, &qword_F2E90) + 48);
  (*(v3 + 16))(v5, v2, v4);
  v10 = sub_E5D24();
  (*(*(v10 - 8) + 16))(v5 + v9, v8 + v1, v10);
  (*(v6 + 104))(v5, enum case for PlaybackController.QueueCommand.addItemToQueue(_:), v7);
  *(v0 + 40) = v7;
  *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(v6 + 16))(boxed_opaque_existential_1, v5, v7);
  v14 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v12 = swift_task_alloc();
  *(v0 + 192) = v12;
  *v12 = v0;
  v12[1] = sub_AC824;

  return (v14)(v0 + 16, 0);
}

uint64_t sub_AC824(void *a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_ACAFC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_AC9C0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_AC950()
{

  *(v0 + 208) = *(v0 + 160);

  return _swift_task_switch(sub_ACBA8, 0, 0);
}

uint64_t sub_AC9C0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_ACA5C, 0, 0);
}

uint64_t sub_ACA5C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_ACAFC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[26] = v0[25];

  return _swift_task_switch(sub_ACBA8, 0, 0);
}

uint64_t sub_ACBA8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_ACC40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305F0, &qword_F2E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_ACCA8()
{
  result = qword_1305F8;
  if (!qword_1305F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305F8);
  }

  return result;
}

unint64_t sub_ACD00()
{
  result = qword_130600;
  if (!qword_130600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130600);
  }

  return result;
}

unint64_t sub_ACD58()
{
  result = qword_12F478;
  if (!qword_12F478)
  {
    type metadata accessor for EnqueueEpisodeForPlaybackIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12F478);
  }

  return result;
}

uint64_t sub_ACDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return EnqueueEpisodeForPlaybackIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t EnqueueShowForPlaybackIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_E5D34();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305F0, &qword_F2E88);
  v2[13] = swift_task_alloc();
  v4 = sub_E62C4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_ACFD4, 0, 0);
}

uint64_t sub_ACFD4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_95FE0(**(v0 + 64), *(*(v0 + 64) + 8), *(*(v0 + 64) + 16));
  sub_E62A4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_ACC40(*(v0 + 104));
    sub_AD1C0();
    swift_allocError();
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    *(v0 + 216) = *(type metadata accessor for EnqueueShowForPlaybackIntent(0) + 20);
    *(v0 + 136) = sub_E72F4();
    *(v0 + 144) = sub_E72E4();
    v6 = sub_E5D94();
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_AC510;

    return BaseObjectGraph.inject<A>(_:)(v0 + 56, v6, v6);
  }
}

unint64_t sub_AD1C0()
{
  result = qword_130608;
  if (!qword_130608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130608);
  }

  return result;
}

unint64_t sub_AD218()
{
  result = qword_130610;
  if (!qword_130610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130610);
  }

  return result;
}

unint64_t sub_AD270()
{
  result = qword_130618;
  if (!qword_130618)
  {
    type metadata accessor for EnqueueShowForPlaybackIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130618);
  }

  return result;
}

uint64_t sub_AD2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return EnqueueShowForPlaybackIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t FetchPodcastForEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[10] = a2;
  v4 = sub_E6374();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E020, &qword_EABE8);
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  v2[22] = swift_task_alloc();
  v6 = sub_E5FE4();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_E6084();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a1;
  v2[28] = v8;
  v2[29] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v11 = swift_task_alloc();
  v2[30] = v11;
  *v11 = v2;
  v11[1] = sub_AD71C;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v10, v10);
}

uint64_t sub_AD71C()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_AE72C, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306B0, &qword_F31E0);
    v4 = swift_task_alloc();
    *(v2 + 256) = v4;
    *v4 = v2;
    v4[1] = sub_AD8C0;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_AD8C0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_AE818;
  }

  else
  {
    v2 = sub_AD9D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_AD9D4()
{
  v31 = *(v0 + 232);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v32 = *(v0 + 144);
  v33 = *(v0 + 136);
  v34 = *(v0 + 56);
  *(v0 + 272) = v34;
  (*(v1 + 104))();
  v6 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
  v7 = sub_E6014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 104);
  v9(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v10 = sub_E60A4();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = sub_E6034();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC18, &qword_ECC68);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_E87F0;
  v15 = v14 + v13;
  v16 = v12[14];
  v9(v15, enum case for MediaRequest.ContentType.podcast(_:), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12EC20, &qword_ECC78);
  v17 = sub_E6044();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_E87F0;
  (*(v18 + 104))(v20 + v19, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v17);
  *(v15 + v16) = v20;
  sub_B0314(v14);
  swift_setDeallocating();
  sub_B04FC(v15);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_E87F0;
  *(v0 + 64) = v31;
  sub_10D78();
  *(v21 + 32) = sub_E7854();
  *(v21 + 40) = v22;
  v23 = sub_E6024();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  v24 = sub_E6094();
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
  v25 = sub_E59C4();
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  sub_E6074();
  v26 = *(v0 + 40);
  *(v0 + 280) = v26;
  *(v0 + 296) = __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
  *(v0 + 304) = sub_E6524();
  sub_E6354();
  v27 = swift_allocObject();
  *(v0 + 312) = v27;
  *(v27 + 16) = v34;
  swift_unknownObjectRetain();
  v28 = swift_task_alloc();
  *(v0 + 320) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1306E0, &unk_F31E8);
  *v28 = v0;
  v28[1] = sub_AE030;

  return DispatchWorkgroup.runThreadBlocking<A>(operation:)(v0 + 72, sub_B059C, v27, v29);
}

uint64_t sub_AE030()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_AE1A4, 0, 0);
}

uint64_t sub_AE1A4()
{
  v0[41] = v0[9];
  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_AE258;
  v2 = v0[28];
  v3 = v0[16];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v3, v2);
}

uint64_t sub_AE258()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_AE90C;
  }

  else
  {
    v3 = sub_AE38C;
  }

  return _swift_task_switch(v3, 0, 0);
}

unint64_t sub_AE38C()
{
  result = sub_E6314();
  if (result >> 62)
  {
    v15 = result;
    v16 = sub_E7AC4();
    result = v15;
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_17:

LABEL_18:
    v17 = v0[27];
    v18 = v0[28];
    v19 = v0[26];
    v21 = v0[15];
    v20 = v0[16];
    v22 = v0[14];
    sub_B05D8();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v21 + 8))(v20, v22);
    (*(v17 + 8))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v23 = v0[1];

    return v23();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v2 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_23:
      v24 = result;
      v25 = sub_E7AC4();
      result = v24;
      if (v25)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    v2 = *(result + 32);
  }

  v3 = v2;

  v4 = sub_E64D4();

  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = sub_E6784();

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = sub_E6794();

  result = v6;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v7 = *(result + 32);
  }

  v26 = v7;
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];
  swift_unknownObjectRelease();

  (*(v11 + 8))(v12, v13);
  (*(v8 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v14 = v0[1];

  return v14(v26);
}

uint64_t sub_AE72C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AE818()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_AE90C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_AEA28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return FetchPodcastForEpisodeIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

unint64_t sub_AEAC8(uint64_t a1)
{
  sub_E6014();
  sub_B1BF0(&qword_130740, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
  v2 = sub_E6FA4();
  return sub_AEC70(a1, v2, &type metadata accessor for MediaRequest.ContentType, &qword_130748, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
}

unint64_t sub_AEB9C(uint64_t a1)
{
  sub_E6064();
  sub_B1BF0(&qword_130760, &type metadata accessor for MediaRequest.Filter, &protocol conformance descriptor for MediaRequest.Filter);
  v2 = sub_E6FA4();
  return sub_AEC70(a1, v2, &type metadata accessor for MediaRequest.Filter, &qword_130768, &type metadata accessor for MediaRequest.Filter, &protocol conformance descriptor for MediaRequest.Filter);
}

unint64_t sub_AEC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_B1BF0(v23, v24, v25);
      v19 = sub_E6FB4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_AEE10(uint64_t a1)
{
  sub_E5FF4();
  sub_B1BF0(&qword_130790, &type metadata accessor for MediaRequest.Association, &protocol conformance descriptor for MediaRequest.Association);
  v2 = sub_E6FA4();
  return sub_AEC70(a1, v2, &type metadata accessor for MediaRequest.Association, &qword_130798, &type metadata accessor for MediaRequest.Association, &protocol conformance descriptor for MediaRequest.Association);
}

unint64_t sub_AEEE4(uint64_t a1, uint64_t a2)
{
  sub_E7CC4();
  sub_E7124();
  v4 = sub_E7CF4();

  return sub_AEF5C(a1, a2, v4);
}

unint64_t sub_AEF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_E7BD4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_AF014(uint64_t a1)
{
  sub_E6034();
  sub_B1BF0(&qword_1307C0, &type metadata accessor for MediaRequest.Relationship, &protocol conformance descriptor for MediaRequest.Relationship);
  v2 = sub_E6FA4();
  return sub_AEC70(a1, v2, &type metadata accessor for MediaRequest.Relationship, &qword_1307C8, &type metadata accessor for MediaRequest.Relationship, &protocol conformance descriptor for MediaRequest.Relationship);
}

unint64_t sub_AF0E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307D0, &qword_F3318);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307D8, &unk_F3320);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_1307D0, &qword_F3318);
      result = sub_AF014(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E6034();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF2D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307B0, &qword_F3308);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307B8, &qword_F3310);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_1307B0, &qword_F3308);
      result = sub_AF014(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E6034();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307A8, &qword_F3300);
    v3 = sub_E7B04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_AEEE4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307A0, &qword_F32F8);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &unk_1306C0, &qword_ECC70);
      result = sub_AEAC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E6014();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF7A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130780, &qword_F32E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130788, &qword_F32F0);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130780, &qword_F32E8);
      result = sub_AEE10(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E5FF4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AF98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130770, &qword_F32D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130778, &qword_F32E0);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130770, &qword_F32D8);
      result = sub_AEAC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E6014();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AFB74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130750, &qword_F32C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130758, &qword_F32D0);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130750, &qword_F32C8);
      result = sub_AEB9C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E6064();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AFD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130730, &qword_F32B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130738, &qword_F32C0);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130730, &qword_F32B8);
      result = sub_AEAC8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E6014();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_AFF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130860, &qword_EB5B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130868, &unk_F33B0);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130860, &qword_EB5B8);
      v11 = *v5;
      result = sub_DFF24(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B012C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130850, &unk_EB8B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130858, &unk_F33A0);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130850, &unk_EB8B0);
      v11 = *v5;
      result = sub_DFFE8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307A0, &qword_F32F8);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &unk_1306C0, &qword_ECC70);
      result = sub_E0070(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_E6014();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_B04FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306C0, &qword_ECC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B0564()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_B059C@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) primaryUser];
  *a1 = result;
  return result;
}

unint64_t sub_B05D8()
{
  result = qword_1306E8;
  if (!qword_1306E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1306E8);
  }

  return result;
}

unint64_t sub_B0630()
{
  result = qword_1306F0;
  if (!qword_1306F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1306F0);
  }

  return result;
}

unint64_t sub_B0694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130840, &qword_EDC78);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130848, &unk_F3390);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130840, &qword_EDC78);
      result = sub_E00F4(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_E56B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B087C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130830, &qword_EDF58);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130838, &unk_F3380);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130830, &qword_EDF58);
      result = sub_E0180(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_E56B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130820, &qword_EE238);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130828, &unk_F3370);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130820, &qword_EE238);
      result = sub_E0240(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_E56B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2B8, qword_EE510);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130700, &qword_F3288);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_12F2B8, qword_EE510);
      v11 = *v5;
      result = sub_E02E4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_E56B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B0E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130810, &unk_F1E18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130818, &unk_F3360);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130810, &unk_F1E18);
      result = sub_E0398(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_E56B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B101C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130800, &qword_F24A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130808, &unk_F3350);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_130800, &qword_F24A8);
      result = sub_E0494(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_E56B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B1204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307F0, &qword_F2788);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307F8, &unk_F3340);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_1307F0, &qword_F2788);
      result = sub_E05D8(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_E56B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B13EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307E0, &unk_F2A60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307E8, &unk_F3330);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26324(v9, v5, &qword_1307E0, &unk_F2A60);
      result = sub_E0684(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = sub_E56B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, &v5[v8], v15);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B15D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_130878, &unk_F33C0);
    v7 = sub_E7B04();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_26324(v9, v5, &qword_130870, &qword_F2B70);
      v11 = *v5;
      result = sub_E0728(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_E64B4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_B17B0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130728, &qword_F32B0);
  v3 = sub_E7B04();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_E0728(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_E0728(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_B18B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130720, &unk_F59E0);
  v3 = sub_E7B04();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_E07B8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_E07B8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_B19C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130718, &unk_F32A0);
    v3 = sub_E7B04();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_E0824(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_B1AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130708, &qword_F3290);
    v3 = sub_E7B04();
    v4 = a1 + 32;

    while (1)
    {
      sub_26324(v4, v13, &qword_130710, &qword_F3298);
      result = sub_E0868(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_61B34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_B1BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FetchMediaAPIRepresentableIntentImplementation.perform(_:objectGraph:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  *v7 = v3;
  v7[1] = sub_1DAF8;

  return sub_B1DBC(a1, a2, v8);
}

uint64_t sub_B1CF8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  v9 = *(a4 + 16);
  *v8 = v4;
  v8[1] = sub_1D7E4;

  return sub_B1DBC(a2, a3, v9);
}

uint64_t sub_B1DBC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a3;
  v5 = sub_E6324();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  *(v3 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  *(v3 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  *(v3 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_E5FE4();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  v7 = sub_E6084();
  *(v3 + 168) = v7;
  *(v3 + 176) = *(v7 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v9 = swift_task_alloc();
  *(v3 + 208) = v9;
  *v9 = v3;
  v9[1] = sub_B20F0;

  return BaseObjectGraph.inject<A>(_:)(v3 + 16, v8, v8);
}

uint64_t sub_B20F0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_B29C4;
  }

  else
  {
    v2 = sub_B2204;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B2204()
{
  v1 = v0[27];
  v2 = v0[17];
  v3 = v0[8];
  (*(v0[19] + 104))(v0[20], enum case for MediaRequest.RequestType.catalog(_:), v0[18]);
  MediaAPIRepresentableIntent = type metadata accessor for FetchMediaAPIRepresentableIntent(0, v3, v4, v5);
  FetchMediaAPIRepresentableIntent.contentType.getter(MediaAPIRepresentableIntent, v2);
  if (v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[24];
    v10 = v0[16];
    v11 = v0[17];
    v12 = v0[15];
    v13 = sub_E6014();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
    v14 = sub_E60A4();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = sub_E6034();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = *(v9 + 16);
    if (v16)
    {
      v17 = v0[24];

      sub_15D18(0, v16, 0);
      v18 = _swiftEmptyArrayStorage;
      v19 = (v17 + 32);
      sub_10D78();
      do
      {
        v20 = *v19++;
        v0[7] = v20;
        v21 = sub_E7854();
        v37 = v18;
        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          v36 = v21;
          v26 = v22;
          sub_15D18((v23 > 1), v24 + 1, 1);
          v22 = v26;
          v21 = v36;
          v18 = v37;
        }

        v18[2] = v24 + 1;
        v25 = &v18[2 * v24];
        v25[4] = v21;
        v25[5] = v22;
        --v16;
      }

      while (v16);
    }

    else
    {
    }

    v27 = v0[14];
    v28 = v0[12];
    v29 = v0[13];
    v30 = sub_E6024();
    (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
    v31 = sub_E6094();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = sub_E59C4();
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
    sub_AF0E8(_swiftEmptyArrayStorage);
    sub_AF0E8(_swiftEmptyArrayStorage);
    sub_AF2D0(_swiftEmptyArrayStorage);
    sub_AF4B8(_swiftEmptyArrayStorage);
    sub_AF5BC(_swiftEmptyArrayStorage);
    sub_AF7A4(_swiftEmptyArrayStorage);
    sub_AF98C(_swiftEmptyArrayStorage);
    sub_AFB74(_swiftEmptyArrayStorage);
    sub_AFD5C(_swiftEmptyArrayStorage);
    sub_E6074();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v33 = swift_task_alloc();
    v0[28] = v33;
    *v33 = v0;
    v33[1] = sub_B2780;
    v34 = v0[23];
    v35 = v0[11];

    return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v35, v34);
  }
}

uint64_t sub_B2780()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_B2A9C;
  }

  else
  {
    v2 = sub_B2894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B2894()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v9 = sub_E6314();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_B29C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B2A9C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t PlayEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t a1)
{
  v1[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  v1[5] = swift_task_alloc();
  v2 = sub_E6214();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130900, &unk_F3490);
  v1[9] = swift_task_alloc();
  v3 = sub_E61F4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = sub_E62C4();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_E5D94();
  v6 = swift_task_alloc();
  v1[18] = v6;
  *v6 = v1;
  v6[1] = sub_B2E20;

  return BaseObjectGraph.inject<A>(_:)(v1 + 2, v5, v5);
}

uint64_t sub_B2E20()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_B3464;
  }

  else
  {
    v2 = sub_B2F34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B2F34()
{
  v1 = v0[4];
  v0[20] = v0[2];
  v2 = v1[10];
  if (v2)
  {
    v3 = v1[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_E87F0;
    *(v4 + 32) = v3;
    *(v4 + 40) = v2;
    v5 = &enum case for MediaIdentifier.localEpisodes(_:);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_E87F0;
    *(v4 + 32) = v1[11];
    v5 = &enum case for MediaIdentifier.episodes(_:);
  }

  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];
  *v6 = v4;
  (*(v8 + 104))(v6, *v5, v7);

  v0[3] = sub_E73D4();
  v9 = type metadata accessor for PlayEpisodeIntent(0);
  v10 = (v1 + *(v9 + 24));
  v11 = v10[1];
  if (v11)
  {
    v13 = v0[12];
    v12 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    *v13 = *v10;
    *(v13 + 8) = v11;
    (*(v14 + 104))(v13, enum case for PlaybackIntent.Option.playbackAccount(_:), v15);

    sub_BF314(v12, v13);
    (*(v14 + 8))(v12, v15);
  }

  v30 = v0[16];
  v16 = v0[15];
  v31 = v0[14];
  v32 = v0[17];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[9];
  v22 = v0[4];
  v21 = v0[5];
  v23 = v9;
  v24 = *(v9 + 28);
  v25 = sub_E6204();
  (*(*(v25 - 8) + 16))(v17, v22 + v24, v25);
  (*(v19 + 104))(v17, enum case for PlaybackIntent.Option.playbackSource(_:), v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_B36BC(v17, isUniquelyReferenced_nonNull_native, v20);
  sub_B3B78(v20);
  (*(v16 + 16))(v30, v32, v31);
  sub_B3BE0(v22 + *(v23 + 20), v21);
  sub_E61E4();
  v27 = swift_task_alloc();
  v0[21] = v27;
  *v27 = v0;
  v27[1] = sub_B323C;
  v28 = v0[8];

  return PlaybackController.performIntent(_:whenPossible:)(v28, 1);
}

uint64_t sub_B323C(void *a1)
{
  *(*v2 + 176) = v1;

  if (v1)
  {
    v4 = sub_B351C;
  }

  else
  {

    v4 = sub_B3358;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_B3358()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[8];
  v6 = v0[6];
  v5 = v0[7];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_B3464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B351C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_B361C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_AC0AC;

  return PlayEpisodeIntentImplementation.perform(_:objectGraph:)(a2);
}

uint64_t sub_B36BC@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a3;
  v7 = sub_E61F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_B3CA8(&qword_130908, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
  v58 = a1;
  v13 = sub_E6FA4();
  v14 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  v57 = v11 + 56;
  v17 = *(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16;
  v54 = v3;
  v55 = v8;
  if (v17)
  {
    v52 = v12;
    LODWORD(v56) = a2;
    v20 = *(v8 + 16);
    v19 = v8 + 16;
    v18 = v20;
    v21 = ~v15;
    v22 = *(v19 + 56);
    while (1)
    {
      v23 = v14;
      v18(v10, v14[6] + v22 * v16, v7);
      sub_B3CA8(&unk_130910, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
      v24 = sub_E6FB4();
      (*(v19 - 8))(v10, v7);
      if (v24)
      {
        break;
      }

      v16 = (v16 + 1) & v21;
      v14 = v23;
      if (((*(v57 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v25 = 1;
        goto LABEL_8;
      }
    }

    v25 = 0;
    v14 = v23;
LABEL_8:
    v26 = v24 ^ 1u;
    v4 = v54;
    v8 = v55;
    LOBYTE(a2) = v56;
  }

  else
  {
    v26 = 1;
    v25 = 1;
  }

  v27 = v14[2];
  v28 = v27 + v25;
  if (__OFADD__(v27, v25))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = v14[3];
  if (v29 >= v28 && (a2 & 1) != 0)
  {
    if (v26)
    {
LABEL_13:
      v30 = v53;
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    v52 = v26;
    sub_C0444(v28);
  }

  else
  {
    if (v29 >= v28)
    {
      sub_C184C();
      if (v26)
      {
        goto LABEL_13;
      }

LABEL_18:
      v31 = *(v8 + 72) * v16;
      v30 = v53;
      goto LABEL_28;
    }

    v52 = v26;
    sub_C261C(v28);
  }

  v32 = *v4;
  v33 = sub_E6FA4();
  v34 = v32 + 56;
  v57 = v32;
  v35 = -1 << *(v32 + 32);
  v16 = v33 & ~v35;
  if ((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v36 = v34;
    v56 = ~v35;
    v39 = *(v8 + 16);
    v38 = v8 + 16;
    v37 = v39;
    v40 = *(v38 + 56);
    while (1)
    {
      v31 = v40 * v16;
      v37(v10, *(v57 + 48) + v40 * v16, v7);
      sub_B3CA8(&unk_130910, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
      v41 = sub_E6FB4();
      (*(v38 - 8))(v10, v7);
      if (v41)
      {
        break;
      }

      v16 = (v16 + 1) & v56;
      if (((*(v36 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v30 = v53;
    v4 = v54;
    v8 = v55;
    if (v52)
    {
      goto LABEL_32;
    }

LABEL_28:
    v47 = *v4;
    v48 = *(*v4 + 48);
    v49 = *(v8 + 32);
    v49(v30, v48 + v31, v7);
    v49(*(v47 + 48) + v31, v58, v7);
    v46 = 0;
    return (*(v8 + 56))(v30, v46, 1, v7);
  }

LABEL_24:
  v30 = v53;
  v4 = v54;
  v8 = v55;
  if (v52)
  {
LABEL_25:
    v42 = *v4;
    *(*v4 + 8 * (v16 >> 6) + 56) |= 1 << v16;
    (*(v8 + 32))(*(v42 + 48) + *(v8 + 72) * v16, v58, v7);
    v43 = *(v42 + 16);
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (!v44)
    {
      *(v42 + 16) = v45;
      v46 = 1;
      return (*(v8 + 56))(v30, v46, 1, v7);
    }

    goto LABEL_31;
  }

LABEL_32:
  result = sub_E7C44();
  __break(1u);
  return result;
}

uint64_t sub_B3B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130900, &unk_F3490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B3BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B3CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RemoveEpisodesDownloadIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[9] = a2;
  v4 = sub_E7724();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_E7324();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a1;
  v2[15] = v6;
  v2[16] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1305C0, qword_F2DE8);
  v9 = swift_task_alloc();
  v2[17] = v9;
  *v9 = v2;
  v9[1] = sub_B3E70;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v8, v8);
}

uint64_t sub_B3E70()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B45D8, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
    v4 = swift_task_alloc();
    *(v2 + 152) = v4;
    *v4 = v2;
    v4[1] = sub_B4014;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_B4014()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_B4648;
  }

  else
  {
    v2 = sub_B4128;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B4128()
{
  v1 = v0[20];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[21] = v2;
  if (v1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[16];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);
    swift_unknownObjectRelease();
    v10 = swift_allocObject();
    v0[22] = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    (*(v8 + 104))(v7, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v9);
    v5;

    v11 = swift_task_alloc();
    v0[23] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130920, &unk_F3520);
    *v11 = v0;
    v11[1] = sub_B4348;
    v13 = v0[12];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 8, v13, sub_B4970, v10, v12);
  }
}

uint64_t sub_B4348()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v3 = sub_B46C0;
  }

  else
  {
    v3 = sub_B44CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_B44CC()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

      sub_E5F44();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v4 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_B45D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B4648()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B46C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_B4740@<X0>(char **a2@<X8>)
{
  result = sub_E7714();
  if (!v2)
  {
    v5 = result;
    v6 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_23:
      v7 = sub_E7AC4();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v21 = _swiftEmptyArrayStorage;
        do
        {
          v9 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = sub_E79B4();
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v9 >= *(v6 + 16))
              {
                goto LABEL_22;
              }

              v10 = *(v5 + 8 * v9 + 32);
              v8 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            v11 = v10;
            v12 = [v11 uuid];
            if (v12)
            {
              break;
            }

            ++v9;
            if (v8 == v7)
            {
              goto LABEL_25;
            }
          }

          v20 = a2;
          v13 = v12;
          v14 = sub_E7064();
          v19 = v15;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_22FBC(0, *(v21 + 2) + 1, 1, v21);
          }

          v17 = *(v21 + 2);
          v16 = *(v21 + 3);
          if (v17 >= v16 >> 1)
          {
            v21 = sub_22FBC((v16 > 1), v17 + 1, 1, v21);
          }

          *(v21 + 2) = v17 + 1;
          v18 = &v21[16 * v17];
          a2 = v20;
          *(v18 + 4) = v14;
          *(v18 + 5) = v19;
        }

        while (v8 != v7);
        goto LABEL_25;
      }
    }

    else
    {
      v7 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v21 = _swiftEmptyArrayStorage;
LABEL_25:

    *a2 = v21;
  }

  return result;
}

uint64_t sub_B4930()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B4990(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_AC0AC;

  return RemoveEpisodesDownloadIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t UpdateEpisodeDownloadBehaviorImplementation.intent.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t UpdateEpisodeDownloadBehaviorImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[8] = a1;
  v3[9] = a2;
  v4 = a3[1];
  v3[10] = *a3;
  v3[11] = v4;
  return _swift_task_switch(sub_B4A88, 0, 0);
}

uint64_t sub_B4A88()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_B17B0(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130930, &unk_F35B8);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v4[8] = v3;
  v4[9] = v6;
  v4[6] = v2;
  v4[7] = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_B4BAC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 7, v7, v7);
}

uint64_t sub_B4BAC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_B4F58;
  }

  else
  {
    v2 = sub_B4CC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B4CC8()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 56) privateQueueContext];
  *(v0 + 120) = v2;
  swift_unknownObjectRelease();
  *v1 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_B4DBC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v3, v3);
}

uint64_t sub_B4DBC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_B4FD8;
  }

  else
  {
    v2 = sub_B4EEC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_B4EEC()
{
  sub_4524((v0 + 16), *(v0 + 64) + 8);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B4F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B4FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t UpdateEpisodeDownloadBehaviorImplementation.perform()()
{
  v1[35] = v0;
  v2 = sub_E6974();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_B512C, 0, 0);
}

uint64_t sub_B512C(uint64_t a1)
{
  v24 = v1;
  v2 = v1[35];
  sub_E6954();
  sub_B6408(v2, (v1 + 2));
  sub_B6408(v2, (v1 + 12));
  v3 = sub_E6964();
  v4 = sub_E7494();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[39];
    v6 = v1[36];
    v7 = v1[37];
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    v1[34] = v1[9];
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    v9 = sub_E7084();
    v11 = v10;
    sub_B6440((v1 + 2));
    v12 = sub_23E64(v9, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_E7204();
    v15 = v14;
    sub_B6440((v1 + 12));
    v16 = sub_23E64(v13, v15, &v23);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_0, v3, v4, "Updating episodes to new download behavior (%s: %s", v8, 0x16u);
    swift_arrayDestroy();

    v17 = *(v7 + 8);
    v17(v5, v6);
  }

  else
  {
    v18 = v1[39];
    v19 = v1[36];
    v20 = v1[37];

    sub_B6440((v1 + 12));
    sub_B6440((v1 + 2));
    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  v1[40] = v17;
  v21 = swift_task_alloc();
  v1[41] = v21;
  *v21 = v1;
  v21[1] = sub_B53A4;

  return sub_B5774();
}

uint64_t sub_B53A4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_B54F8, 0, 0);
  }
}

uint64_t sub_B54F8(uint64_t a1)
{
  v21 = v1;
  v2 = v1[35];
  sub_E6954();
  sub_B6408(v2, (v1 + 22));
  v3 = sub_E6964();
  v4 = sub_E74D4();
  if (os_log_type_enabled(v3, v4))
  {
    v18 = v1[38];
    v19 = v1[40];
    v5 = v1[36];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130938, &qword_F35D8);
    sub_E68C4();
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
    sub_B6470();
    v8 = sub_E6F84();
    v10 = v9;

    sub_B6440((v1 + 22));
    v11 = sub_23E64(v8, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "Mass-updated download behaviors. Prior behaviors: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    v19(v18, v5);
  }

  else
  {
    v12 = v1[40];
    v13 = v1[38];
    v14 = v1[36];

    v12(v13, v14);
    sub_B6440((v1 + 22));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130938, &qword_F35D8);
  sub_E68C4();
  v15 = v1[32];

  v16 = v1[1];

  return v16(v15);
}

uint64_t sub_B5774()
{
  v1[12] = v0;
  v2 = sub_E7724();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_B5834, 0, 0);
}

uint64_t sub_B5834()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_B6408(*(v0 + 96), v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 128) = v4;
  v5 = *(v0 + 64);
  v4[3] = *(v0 + 48);
  v4[4] = v5;
  v4[5] = *(v0 + 80);
  v6 = *(v0 + 32);
  v4[1] = *(v0 + 16);
  v4[2] = v6;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_B5968;
  v8 = *(v0 + 120);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v8, sub_B65EC, v4, &type metadata for () + 8);
}

uint64_t sub_B5968()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_B5B60;
  }

  else
  {
    v5 = sub_B5AFC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_B5AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B5B60()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_B5BC4(void **a1)
{
  v2 = *a1;
  result = sub_E7714();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      v5 = sub_E7AC4();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = sub_E79B4();
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          sub_B5D54(v7);
        }
      }
    }

    v10 = 0;
    if ([v2 save:&v10])
    {
      return v10;
    }

    else
    {
      v9 = v10;
      sub_E5904();

      return swift_willThrow();
    }
  }

  return result;
}

id sub_B5D54(void *a1)
{
  v2 = v1;
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_E59C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 uuid];
  if (v12)
  {
    v13 = v12;
    v14 = sub_E7064();
    v16 = v15;
  }

  else
  {
    v17 = [a1 objectID];
    v18 = [v17 URIRepresentation];

    sub_E5994();
    v14 = sub_E5974();
    v16 = v19;
    (*(v9 + 8))(v11, v8);
  }

  sub_E6954();
  sub_B6408(v2, v34);

  v20 = sub_E6964();
  v21 = sub_E7494();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32[0] = v4;
    v33[0] = v23;
    *v22 = 136315394;
    v24 = sub_23E64(v14, v16, v33);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    v32[1] = v35;
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    v25 = sub_E7084();
    v27 = v26;
    sub_B6440(v34);
    v28 = sub_23E64(v25, v27, v33);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_0, v20, v21, "Updating download behavior of episode (%s to %s", v22, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v32[0]);
  }

  else
  {

    sub_B6440(v34);
    (*(v5 + 8))(v7, v4);
  }

  v29 = [a1 downloadBehavior];
  v30 = *(v2 + 72);
  os_unfair_lock_lock((v30 + 24));
  sub_B610C((v30 + 16), v29, a1);
  os_unfair_lock_unlock((v30 + 24));
  return [a1 setDownloadBehavior:*(v2 + 56)];
}

uint64_t sub_B610C(char **a1, Swift::UInt64 a2, id a3)
{
  v5 = [a3 objectID];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  v20 = *a1;
  v9 = sub_E0728(a2);
  v10 = *(v7 + 2);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  if (*(v7 + 3) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v7;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_E359C();
      v7 = v20;
      *a1 = v20;
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_E3B54(v9, a2, _swiftEmptyArrayStorage, v7);
    goto LABEL_9;
  }

  sub_E28F8(v12, isUniquelyReferenced_nonNull_native);
  v7 = v20;
  v14 = sub_E0728(a2);
  if ((v13 & 1) != (v15 & 1))
  {
    type metadata accessor for MTEpisodeDownloadBehavior(0);
    result = sub_E7C54();
    __break(1u);
    return result;
  }

  v9 = v14;
  *a1 = v20;
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a1 = *(v7 + 7);
  v7 = a1[v9];
  result = swift_isUniquelyReferenced_nonNull_native();
  a1[v9] = v7;
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_239C4(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
    a1[v9] = result;
  }

  v18 = *(v7 + 2);
  v17 = *(v7 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_239C4((v17 > 1), v18 + 1, 1, v7);
    v7 = result;
    a1[v9] = result;
  }

  *(v7 + 2) = v18 + 1;
  v19 = &v7[24 * v18];
  *(v19 + 4) = v5;
  *(v19 + 5) = 0;
  v19[48] = 1;
  return result;
}

uint64_t sub_B62C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return UpdateEpisodeDownloadBehaviorImplementation.init(asPartOf:performing:)(a1, a2, a3);
}

uint64_t sub_B6378(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D7E4;

  return UpdateEpisodeDownloadBehaviorImplementation.perform()();
}

unint64_t sub_B6470()
{
  result = qword_130948;
  if (!qword_130948)
  {
    type metadata accessor for MTEpisodeDownloadBehavior(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130948);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_B64E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B6530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B6594()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_B6608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v8 = *(type metadata accessor for AnyJSIntentModel(0, a4, a5, a4) + 36);
  v9 = sub_E6C34();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a3, v9);
}

uint64_t AnyJSIntentModel.object.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_E6C34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t AnyJSIntentModel.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_E6C24();
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    __chkstk_darwin(v5);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_E7BC4();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() valueWithObject:v9 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130980, &qword_F36B0);
  result = sub_B689C();
  a2[4] = result;
  *a2 = v10;
  return result;
}

unint64_t sub_B689C()
{
  result = qword_130988[0];
  if (!qword_130988[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130980, &qword_F36B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_130988);
  }

  return result;
}

uint64_t AnyJSIntentModel.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v7 = sub_E6C34();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6C44();
  v11 = sub_E6C14();
  v13 = v12;
  v14 = *(v8 + 8);
  v14(v10, v7);
  if (v13)
  {
    v15 = sub_E6C94();
    (*(*(v15 - 8) + 8))(v25, v15);
    return sub_B6608(v11, v13, a1, v23, v24, a5);
  }

  else
  {
    v17 = sub_E6F54();
    sub_B6BC4();
    swift_allocError();
    v19 = v18;
    v21 = type metadata accessor for AnyJSIntentModel(0, v23, v24, v20);
    *v19 = 0x646E696B24;
    v19[1] = 0xE500000000000000;
    v19[2] = v21;
    v19[3] = _swiftEmptyArrayStorage;
    (*(*(v17 - 8) + 104))(v19, enum case for JSONError.malformedProperty(_:), v17);
    swift_willThrow();
    v22 = sub_E6C94();
    (*(*(v22 - 8) + 8))(v25, v22);
    return (v14)(a1, v7);
  }
}

unint64_t sub_B6BC4()
{
  result = qword_12D830;
  if (!qword_12D830)
  {
    sub_E6F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D830);
  }

  return result;
}

uint64_t sub_B6C8C(uint64_t a1)
{
  result = sub_E6C34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6C34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B6DDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_E6C34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t EnqueueEpisodeForPlaybackIntent.init(episodeID:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for EnqueueEpisodeForPlaybackIntent(0) + 20);
  v8 = sub_E5D24();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t type metadata accessor for EnqueueEpisodeForPlaybackIntent(uint64_t a1)
{
  result = qword_130A68;
  if (!qword_130A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id EnqueueEpisodeForPlaybackIntent.episodeID.getter()
{
  v1 = *v0;
  sub_95FE0(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t EnqueueEpisodeForPlaybackIntent.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnqueueEpisodeForPlaybackIntent(0) + 20);
  v4 = sub_E5D24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_B7104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_E5D24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B71BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_E5D24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_B725C(uint64_t a1)
{
  result = sub_E5D24();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PodcastsActions25RemoteQueueOperationErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t EnqueueShowForPlaybackIntent.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EnqueueShowForPlaybackIntent(0) + 20);
  v4 = sub_E5D24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for EnqueueShowForPlaybackIntent(uint64_t a1)
{
  result = qword_130AF8;
  if (!qword_130AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnqueueShowForPlaybackIntent.init(showID:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for EnqueueShowForPlaybackIntent(0) + 20);
  v8 = sub_E5D24();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t sub_B74A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_E5D24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_B755C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_E5D24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FetchChannelForPodcastIntent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FetchChannelForPodcastIntent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t FetchMediaAPIRepresentableIntent.init(entityIDs:typeIncludes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FetchMediaAPIRepresentableIntent.contentType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_E6154();
  if (swift_dynamicCastMetatype())
  {
    v4 = &enum case for MediaRequest.ContentType.podcastChannel(_:);
LABEL_7:
    v7 = *v4;
    v8 = sub_E6014();
    return (*(*(v8 - 8) + 104))(a2, v7, v8);
  }

  sub_E6164();
  if (swift_dynamicCastMetatype())
  {
    v4 = &enum case for MediaRequest.ContentType.podcast(_:);
    goto LABEL_7;
  }

  sub_E6524();
  if (swift_dynamicCastMetatype())
  {
    v4 = &enum case for MediaRequest.ContentType.podcastEpisode(_:);
    goto LABEL_7;
  }

  type metadata accessor for FetchMediaAPIRepresentableIntent.FetchMediaAPIRepresentableError(0, v3, v5, v6);
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

unint64_t static FetchMediaAPIRepresentableIntent.kind.getter(uint64_t a1)
{
  sub_E7984(28);

  v2._countAndFlagsBits = sub_E7D44();
  sub_E7134(v2);

  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  sub_E7134(v3);
  return 0xD000000000000019;
}

unint64_t sub_B7874@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = static FetchMediaAPIRepresentableIntent.kind.getter(*(a1 + 16));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_B78A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FetchShowLatestEpisodesIntent.init(show:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_96004(a1, a3);
  result = type metadata accessor for FetchShowLatestEpisodesIntent(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for FetchShowLatestEpisodesIntent(uint64_t a1)
{
  result = qword_130C88;
  if (!qword_130C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B7AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B7B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_B7BB0(uint64_t a1)
{
  result = type metadata accessor for ShowEntity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

int *FollowFeedIntent.init(rssFeedURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_E59C4();
  v5 = *(v4 - 8);
  (*(v5 + 32))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 1, v4);
  result = type metadata accessor for FollowFeedIntent(0);
  v7 = a2 + result[5];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a2 + result[6]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + result[7]) = 0;
  return result;
}

int *FollowFeedIntent.init(feedURL:adamID:location:contentRating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_CF40(a1, a7);
  result = type metadata accessor for FollowFeedIntent(0);
  v14 = a7 + result[5];
  *v14 = a2;
  *(v14 + 8) = a3 & 1;
  v15 = (a7 + result[6]);
  *v15 = a4;
  v15[1] = a5;
  *(a7 + result[7]) = a6 & 1;
  return result;
}

uint64_t type metadata accessor for FollowFeedIntent(uint64_t a1)
{
  result = qword_130D20;
  if (!qword_130D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FollowFeedIntent.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for FollowFeedIntent(0) + 24));

  return v1;
}

unint64_t sub_B7F00()
{
  result = qword_130CC0;
  if (!qword_130CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130CC0);
  }

  return result;
}

uint64_t sub_B7F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_B8054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_B811C(uint64_t a1)
{
  sub_E480(319);
  if (v1 <= 0x3F)
  {
    sub_5041C(319, &unk_130D30, &type metadata for AdamID);
    if (v2 <= 0x3F)
    {
      sub_5041C(319, &qword_12E680, &type metadata for String);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t PodcastDonationModel.init(librarySnapshotFollowedShow:)(uint64_t a1)
{
  sub_E6764();
  sub_E6754();
  sub_E6744();
  sub_E6494();
  v2 = sub_E6774();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_B82FC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_B8344(uint64_t a1)
{
  v2 = sub_B84D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8380(uint64_t a1)
{
  v2 = sub_B84D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibrarySnapshotIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130D68, qword_F41E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_B84D0();
  sub_E7D14();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_B84D0()
{
  result = qword_130D70;
  if (!qword_130D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D70);
  }

  return result;
}

unint64_t sub_B8550()
{
  result = qword_130D78;
  if (!qword_130D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D78);
  }

  return result;
}

unint64_t sub_B85AC()
{
  result = qword_130D80;
  if (!qword_130D80)
  {
    sub_E6274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D80);
  }

  return result;
}

unint64_t sub_B86A8()
{
  result = qword_130D88;
  if (!qword_130D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D88);
  }

  return result;
}

unint64_t sub_B8700()
{
  result = qword_130D90;
  if (!qword_130D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D90);
  }

  return result;
}

unint64_t sub_B8754()
{
  result = qword_130D98;
  if (!qword_130D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130D98);
  }

  return result;
}

uint64_t LibraryStorageTipSuggestedLimitIntent.storageUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0) + 24);
  v4 = sub_E60F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LibraryStorageTipSuggestedLimitIntent(uint64_t a1)
{
  result = qword_130E60;
  if (!qword_130E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryStorageTipSuggestedLimitIntent.storageAvailable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0) + 28);
  v4 = sub_E60F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryStorageTipSuggestedLimitIntent.previousIgnoredStorage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0) + 32);

  return sub_B8950(v3, a1);
}

uint64_t sub_B8950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryStorageTipSuggestedLimitIntent.init(globalLimit:supportedLimits:storageUsed:storageAvailable:previousIgnoredStorage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0);
  v11 = v10[6];
  v12 = sub_E60F4();
  v13 = *(*(v12 - 8) + 32);
  v13(&a6[v11], a3, v12);
  v13(&a6[v10[7]], a4, v12);
  v14 = &a6[v10[8]];

  return sub_B8A98(a5, v14);
}

uint64_t sub_B8A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B8B20()
{
  v1 = *v0;
  v2 = 0x694C6C61626F6C67;
  v3 = 0x55656761726F7473;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574726F70707573;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_B8BDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_BA2B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_B8C10(uint64_t a1)
{
  v2 = sub_B99D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B8C4C(uint64_t a1)
{
  v2 = sub_B99D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t LibraryStorageTipSuggestedLimitIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA8, &qword_F4480);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_B99D0();
  sub_E7D14();
  v12 = *v3;
  v11 = 0;
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_BA47C(&qword_130DB8, type metadata accessor for MTPodcastEpisodeLimit, &protocol conformance descriptor for MTPodcastEpisodeLimit);
  sub_E7B94();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DC0, &qword_F4488);
    sub_B9A24(&qword_130DC8, &qword_130DB8, &protocol conformance descriptor for MTPodcastEpisodeLimit, &protocol conformance descriptor for <A> [A]);
    sub_E7B94();
    type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0);
    LOBYTE(v12) = 2;
    sub_E60F4();
    sub_BA47C(&qword_130DD0, &type metadata accessor for StorageSpace, &protocol conformance descriptor for StorageSpace);
    sub_E7B94();
    LOBYTE(v12) = 3;
    sub_E7B94();
    LOBYTE(v12) = 4;
    sub_E7B74();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LibraryStorageTipSuggestedLimitIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  __chkstk_darwin(v3 - 8);
  v41 = &v35 - v4;
  v5 = sub_E60F4();
  v43 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DD8, &qword_F4490);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v35 - v11;
  v13 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_B99D0();
  v44 = v12;
  v17 = v46;
  sub_E7D04();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v46 = v10;
  v39 = v8;
  v18 = v15;
  v19 = v42;
  v20 = v43;
  type metadata accessor for MTPodcastEpisodeLimit(0);
  v48 = 0;
  sub_BA47C(&qword_130DE0, type metadata accessor for MTPodcastEpisodeLimit, &protocol conformance descriptor for MTPodcastEpisodeLimit);
  v21 = v44;
  sub_E7B64();
  v22 = v18;
  *v18 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DC0, &qword_F4488);
  v48 = 1;
  sub_B9A24(&qword_130DE8, &qword_130DE0, &protocol conformance descriptor for MTPodcastEpisodeLimit, &protocol conformance descriptor for <A> [A]);
  sub_E7B64();
  *(v18 + 1) = v49;
  LOBYTE(v49) = 2;
  v24 = sub_BA47C(&qword_130DF0, &type metadata accessor for StorageSpace, &protocol conformance descriptor for StorageSpace);
  v25 = v46;
  sub_E7B64();
  v26 = *(v13 + 24);
  v38 = 0;
  v27 = v24;
  v28 = *(v20 + 32);
  v36 = v13;
  v37 = v22;
  v28(&v22[v26], v25, v5);
  LOBYTE(v49) = 3;
  v29 = v38;
  v30 = v39;
  v46 = v27;
  sub_E7B64();
  if (v29)
  {
    (*(v19 + 8))(v21, v45);
    v32 = v37;
    v31 = v38;
    __swift_destroy_boxed_opaque_existential_1(v47);

    if (!v31)
    {
      return (*(v20 + 8))(v32 + *(v13 + 24), v5);
    }
  }

  else
  {
    v28((v37 + *(v36 + 28)), v30, v5);
    LOBYTE(v49) = 4;
    v33 = v41;
    sub_E7B54();
    (*(v19 + 8))(v21, v45);
    v34 = v37;
    sub_B8A98(v33, v37 + *(v36 + 32));
    sub_B9AC0(v34, v40);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return sub_B9B24(v34);
  }

  return result;
}

BOOL _s15PodcastsActions37LibraryStorageTipSuggestedLimitIntentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_E60F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130ED8, &qword_F4718);
  v12 = __chkstk_darwin(v11);
  v14 = &v28 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = a1[1];
  v16 = a2[1];
  v17 = *(v15 + 16);
  if (v17 != *(v16 + 16))
  {
    return 0;
  }

  if (v17 && v15 != v16)
  {
    v18 = (v15 + 32);
    v19 = (v16 + 32);
    while (*v18 == *v19)
    {
      ++v18;
      ++v19;
      if (!--v17)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v20 = v12;
  v21 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0);
  if ((sub_E60C4() & 1) == 0 || (sub_E60C4() & 1) == 0)
  {
    return 0;
  }

  v22 = *(v21 + 32);
  v23 = *(v20 + 48);
  sub_B8950(a1 + v22, v14);
  sub_B8950(a2 + v22, &v14[v23]);
  v24 = *(v5 + 48);
  if (v24(v14, 1, v4) != 1)
  {
    sub_B8950(v14, v10);
    if (v24(&v14[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_15;
    }

    (*(v5 + 32))(v7, &v14[v23], v4);
    sub_BA47C(&qword_130EE0, &type metadata accessor for StorageSpace, &protocol conformance descriptor for StorageSpace);
    v26 = sub_E6FB4();
    v27 = *(v5 + 8);
    v27(v7, v4);
    v27(v10, v4);
    sub_110AC(v14, &qword_130DA0, &qword_F4478);
    return (v26 & 1) != 0;
  }

  if (v24(&v14[v23], 1, v4) != 1)
  {
LABEL_15:
    sub_110AC(v14, &qword_130ED8, &qword_F4718);
    return 0;
  }

  sub_110AC(v14, &qword_130DA0, &qword_F4478);
  return 1;
}

unint64_t sub_B99D0()
{
  result = qword_130DB0;
  if (!qword_130DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130DB0);
  }

  return result;
}

uint64_t sub_B9A24(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130DC0, &qword_F4488);
    sub_BA47C(a2, type metadata accessor for MTPodcastEpisodeLimit, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B9AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B9B24(uint64_t a1)
{
  v2 = type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B9C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E60F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_B9DB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_E60F4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_B9EE0(uint64_t a1)
{
  type metadata accessor for MTPodcastEpisodeLimit(319);
  if (v1 <= 0x3F)
  {
    sub_B9FF4(319, &qword_130E70, type metadata accessor for MTPodcastEpisodeLimit, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_E60F4();
      if (v3 <= 0x3F)
      {
        sub_B9FF4(319, &unk_130E78, &type metadata accessor for StorageSpace, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_B9FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LibraryStorageTipSuggestedLimitIntent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryStorageTipSuggestedLimitIntent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_BA1AC()
{
  result = qword_130EB8;
  if (!qword_130EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130EB8);
  }

  return result;
}

unint64_t sub_BA204()
{
  result = qword_130EC0;
  if (!qword_130EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130EC0);
  }

  return result;
}

unint64_t sub_BA25C()
{
  result = qword_130EC8;
  if (!qword_130EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130EC8);
  }

  return result;
}

uint64_t sub_BA2B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694C6C61626F6C67 && a2 == 0xEB0000000074696DLL;
  if (v4 || (sub_E7BD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xEF7374696D694C64 || (sub_E7BD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55656761726F7473 && a2 == 0xEB00000000646573 || (sub_E7BD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000F84E0 == a2 || (sub_E7BD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000000F8500 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_E7BD4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_BA47C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BA520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_BA5A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for OpenTranscriptIntent(uint64_t a1)
{
  result = qword_130F40;
  if (!qword_130F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BA65C(uint64_t a1)
{
  result = type metadata accessor for EpisodeEntity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PlayEpisodeIntent.init(episode:baseListSettings:playbackAccountDSID:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_A0760(a1, a6);
  v11 = type metadata accessor for PlayEpisodeIntent(0);
  sub_BA7D0(a2, a6 + v11[5]);
  v12 = (a6 + v11[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = v11[7];
  v14 = sub_E6204();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t type metadata accessor for PlayEpisodeIntent(uint64_t a1)
{
  result = qword_130FD0;
  if (!qword_130FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BA7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PlayEpisodeIntent.baseListSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlayEpisodeIntent(0) + 20);

  return sub_B3BE0(v3, a1);
}

uint64_t PlayEpisodeIntent.playbackAccountDSID.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlayEpisodeIntent(0) + 24));

  return v1;
}

uint64_t PlayEpisodeIntent.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayEpisodeIntent(0) + 28);
  v4 = sub_E6204();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_BA990(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for EpisodeEntity(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_E6204();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_BAB34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for EpisodeEntity(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F330, &unk_F47B0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = sub_E6204();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_BACB8(uint64_t a1)
{
  type metadata accessor for EpisodeEntity(319);
  if (v1 <= 0x3F)
  {
    sub_BAD6C(319);
    if (v2 <= 0x3F)
    {
      sub_5FB94();
      if (v3 <= 0x3F)
      {
        sub_E6204();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_BAD6C(uint64_t a1)
{
  if (!qword_130FE0)
  {
    sub_E63C4();
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_130FE0);
    }
  }
}

uint64_t PlayStationIntent.init(station:firstEpisode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_472D8(a1, a3);
  v5 = a3 + *(type metadata accessor for PlayStationIntent(0) + 20);

  return sub_BAEF8(a2, v5);
}

uint64_t type metadata accessor for PlayStationIntent(uint64_t a1)
{
  result = qword_131070;
  if (!qword_131070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BAEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PlayStationIntent.firstEpisode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlayStationIntent(0) + 20);

  return sub_A06F0(v3, a1);
}

uint64_t sub_BB008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StationEntity(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_BB118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StationEntity(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_BB220(uint64_t a1)
{
  type metadata accessor for StationEntity(319);
  if (v1 <= 0x3F)
  {
    sub_BB2A4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_BB2A4(uint64_t a1)
{
  if (!qword_131080)
  {
    type metadata accessor for EpisodeEntity(255);
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_131080);
    }
  }
}

uint64_t SwitchNewsProviderIntent.init(providerAdamID:topicID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SwitchNewsProviderIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1310B0, &qword_F4B50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[2];
  v11[1] = v1[1];
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_BB564();
  sub_E7D14();
  v15 = v8;
  v14 = 0;
  sub_BB5B8();
  sub_E7B94();
  if (v2 || !v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_E7B84();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_BB564()
{
  result = qword_1310B8;
  if (!qword_1310B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310B8);
  }

  return result;
}

unint64_t sub_BB5B8()
{
  result = qword_1310C0;
  if (!qword_1310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310C0);
  }

  return result;
}

uint64_t SwitchNewsProviderIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1310C8, &qword_F4B58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_BB564();
  sub_E7D04();
  if (!v2)
  {
    v14[15] = 0;
    sub_BB7D0();
    sub_E7B64();
    v9 = v15;
    v14[14] = 1;
    v11 = sub_E7B44();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_BB7D0()
{
  result = qword_1310D0;
  if (!qword_1310D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310D0);
  }

  return result;
}

unint64_t sub_BB8B8()
{
  result = qword_1310D8;
  if (!qword_1310D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310D8);
  }

  return result;
}

unint64_t sub_BB910()
{
  result = qword_1310E0;
  if (!qword_1310E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310E0);
  }

  return result;
}

unint64_t sub_BB968()
{
  result = qword_1310E8;
  if (!qword_1310E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310E8);
  }

  return result;
}

uint64_t sub_BB9DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_BBA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_BBAAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64496369706F74;
  }

  else
  {
    v3 = 0x72656469766F7270;
  }

  if (v2)
  {
    v4 = 0xEE0064496D616441;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64496369706F74;
  }

  else
  {
    v5 = 0x72656469766F7270;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEE0064496D616441;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_E7BD4();
  }

  return v8 & 1;
}

Swift::Int sub_BBB60()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_BBBF0(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_BBC6C(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_BBCF8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1204E0;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

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

void sub_BBD58(uint64_t *a1@<X8>)
{
  v2 = 0x72656469766F7270;
  if (*v1)
  {
    v2 = 0x64496369706F74;
  }

  v3 = 0xEE0064496D616441;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_BBDA4()
{
  if (*v0)
  {
    return 0x64496369706F74;
  }

  else
  {
    return 0x72656469766F7270;
  }
}

uint64_t sub_BBDEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1204E0;
  v9._object = a2;
  v6 = sub_E7B34(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_BBE5C(uint64_t a1)
{
  v2 = sub_BB564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_BBE98(uint64_t a1)
{
  v2 = sub_BB564();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_BBED8()
{
  result = qword_1310F0;
  if (!qword_1310F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310F0);
  }

  return result;
}

unint64_t sub_BBF30()
{
  result = qword_1310F8;
  if (!qword_1310F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1310F8);
  }

  return result;
}

unint64_t sub_BBF88()
{
  result = qword_131100;
  if (!qword_131100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131100);
  }

  return result;
}

unint64_t sub_BBFDC()
{
  result = qword_131108;
  if (!qword_131108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131108);
  }

  return result;
}

uint64_t UnfollowShowIntent.init(showID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_BC0E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_BC12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t UpdateEpisodePlayStateIntent.init(episode:playState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a2;
  v4 = a3 + *(type metadata accessor for UpdateEpisodePlayStateIntent(0) + 20);

  return sub_A0760(a1, v4);
}

uint64_t type metadata accessor for UpdateEpisodePlayStateIntent(uint64_t a1)
{
  result = qword_131168;
  if (!qword_131168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpdateEpisodePlayStateIntent.episode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UpdateEpisodePlayStateIntent(0) + 20);

  return sub_6FAC8(v3, a1);
}

uint64_t sub_BC300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for EpisodeEntity(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_BC38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for EpisodeEntity(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_BC408(uint64_t a1)
{
  type metadata accessor for MTEpisodePlayState(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EpisodeEntity(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_BC48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  v8 = swift_checkMetadataState();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = *(a4 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_BC670, 0, 0);
}

uint64_t sub_BC670()
{
  v8 = v0[6];
  (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
  v1 = *(v8 + 24);

  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_BC7C0;
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[4];

  return v7(v3, v5, v4);
}

uint64_t sub_BC7C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_BCC6C;
  }

  else
  {
    v2 = sub_BC8D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_BC8D4()
{
  v1 = v0[16];
  sub_E7384();
  if (v1)
  {
    (*(v0[13] + 8))(v0[14], v0[5]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v8 = (*(v0[6] + 32) + **(v0[6] + 32));
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_BCA68;
    v5 = v0[9];
    v6 = v0[5];
    v7 = v0[6];

    return v8(v5, v6, v7);
  }
}

uint64_t sub_BCA68()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_BCCF0;
  }

  else
  {
    v2 = sub_BCB7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_BCB7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[5]);
  (*(v2 + 32))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_BCC6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_BCCF0()
{
  (*(v0[13] + 8))(v0[14], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_BCD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v9 = v4;
  v9[1] = sub_588C;

  return sub_BC48C(a1, a2, a3, v10, v11);
}

uint64_t static NativeIntentDispatcher.Builder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_E6EB4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6EA4();
  type metadata accessor for _EphemeralIntentImplementationWrapper(0, a2, a3, v9);
  swift_getWitnessTable();
  sub_E6E84();
  return (*(v6 + 8))(v8, v5);
}

uint64_t NativeIntentDispatcher.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _EphemeralIntentImplementationWrapper(0, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();

  return NativeIntentDispatcher.register<A>(_:)(WitnessTable, v4, WitnessTable);
}

uint64_t dispatch thunk of EphemeralIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5E10;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of EphemeralIntentImplementation.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return v9(a1, a2, a3);
}

void *sub_BD290@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

Swift::Int sub_BD29C()
{
  sub_E7CC4();
  sub_E7124();
  return sub_E7CF4();
}

Swift::Int sub_BD2F0(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();
  return sub_E7CF4();
}

uint64_t sub_BD338(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_E7BD4();
  }
}

uint64_t TipButton.init(id:title:action:style:clickLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v16 = *(type metadata accessor for TipButton(0) + 32);
  v17 = sub_E5B94();
  (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  sub_4D9C(a5, (a8 + 32));
  *(a8 + 9) = a6;

  return sub_BD48C(a7, &a8[v16]);
}

uint64_t type metadata accessor for TipButton(uint64_t a1)
{
  result = qword_131290;
  if (!qword_131290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_BD48C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TipButton.action.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));

  return sub_4D9C(a1, v1 + 32);
}

uint64_t TipButton.clickLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TipButton(0) + 32);

  return sub_BD5BC(v3, a1);
}

uint64_t sub_BD5BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TipButton.clickLocation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TipButton(0) + 32);

  return sub_BD48C(a1, v3);
}

PodcastsActions::TipButton::ID __swiftcall TipButton.ID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_E7984(31);

  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  sub_E7134(v6);

  v3 = 0xD00000000000001DLL;
  v4 = 0x80000000000F8540;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static TipButton.close(action:clickLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_48FC(a1, (a3 + 32));
  sub_BD5BC(a2, v8);
  v9 = *(type metadata accessor for TipButton(0) + 32);
  v10 = sub_E5B94();
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  *a3 = 0xD000000000000022;
  *(a3 + 1) = 0x80000000000F8560;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 9) = 2;
  return sub_BD48C(v8, &a3[v9]);
}

unint64_t sub_BD880()
{
  result = qword_131228;
  if (!qword_131228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131228);
  }

  return result;
}

unint64_t sub_BD8D8()
{
  result = qword_131230;
  if (!qword_131230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131230);
  }

  return result;
}

uint64_t sub_BD940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_BDA10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_BDAC0(uint64_t a1)
{
  sub_5FB94();
  if (v1 <= 0x3F)
  {
    sub_BDB84();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AMSDialogActionStyle(319);
      if (v3 <= 0x3F)
      {
        sub_BDBE8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_BDB84()
{
  result = qword_1312A0;
  if (!qword_1312A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1312A0);
  }

  return result;
}

void sub_BDBE8(uint64_t a1)
{
  if (!qword_1312A8)
  {
    sub_E5B94();
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_1312A8);
    }
  }
}

uint64_t static Set<>.all.getter()
{
  sub_C8A0();
  v2 = sub_E73C4();
  sub_BE9F8(&v1, 0);
  sub_BE9F8(&v1, 1);
  sub_BE9F8(&v1, 2);
  sub_BE9F8(&v1, 3);
  sub_BE9F8(&v1, 4);
  sub_BE9F8(&v1, 5);
  return v2;
}

unint64_t sub_BDD1C()
{
  result = qword_1312E8;
  if (!qword_1312E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1312F0, &qword_F5318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1312E8);
  }

  return result;
}

unint64_t sub_BDD84()
{
  result = qword_1312F8;
  if (!qword_1312F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1312F8);
  }

  return result;
}

unint64_t TipKind.debugDescription.getter(uint64_t a1, void *a2)
{
  sub_E7984(23);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  sub_E7134(v5);
  v6._countAndFlagsBits = 10530;
  v6._object = 0xE200000000000000;
  sub_E7134(v6);
  return 0xD000000000000013;
}

unint64_t sub_BDE78()
{
  v1 = *v0;
  v2 = v0[1];
  sub_E7984(23);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_E7134(v4);
  v5._countAndFlagsBits = 10530;
  v5._object = 0xE200000000000000;
  sub_E7134(v5);
  return 0xD000000000000013;
}

unint64_t sub_BDFF4()
{
  result = qword_131300;
  if (!qword_131300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131300);
  }

  return result;
}

uint64_t TipModel.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_E59C4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

Swift::Void __swiftcall TipProvider.requestRefresh()()
{
  v2 = v1;
  v3 = v0;
  sub_C8A0();
  v5 = sub_E73C4();
  sub_BE9F8(&v4, 0);
  sub_BE9F8(&v4, 1);
  sub_BE9F8(&v4, 2);
  sub_BE9F8(&v4, 3);
  sub_BE9F8(&v4, 4);
  sub_BE9F8(&v4, 5);
  (*(v2 + 16))(v5, v3, v2);
}

uint64_t TipProvider.tips(for:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131308, &qword_F5520);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  LOBYTE(a1) = *a1;
  v12[1] = (*(a3 + 8))(a2, a3);
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131310, &qword_F5A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  sub_3C2A0(&qword_131318, &qword_131310, &qword_F5A30, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_E6AC4();

  sub_3C2A0(&qword_131320, &qword_131308, &qword_F5520, &protocol conformance descriptor for Publishers.Map<A, B>);
  v10 = sub_E6A74();
  (*(v7 + 8))(v9, v6);
  return v10;
}

void *sub_BE4B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(*a1 + 16) && (sub_E07B8(a2), (v4 & 1) != 0))
  {
  }

  else
  {
    result = _swiftEmptyArrayStorage;
  }

  *a3 = result;
  return result;
}

uint64_t TipProvider.firstTip(for:of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131328, &qword_F5528);
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v21 - v11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131330, qword_F5530);
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = &v21 - v14;
  v24 = *a1;
  v23 = TipProvider.tips(for:)(&v24, a4, a5);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F10, &unk_F5FE0);
  sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_E6AC4();

  sub_3C2A0(&qword_131338, &qword_131328, &qword_F5528, &protocol conformance descriptor for Publishers.Map<A, B>);
  v17 = v22;
  sub_E6AB4();
  (*(v10 + 8))(v12, v17);
  sub_3C2A0(&qword_131340, &qword_131330, qword_F5530, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v18 = v21;
  v19 = sub_E6A74();
  (*(v13 + 8))(v15, v18);
  return v19;
}

uint64_t *sub_BE824@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6)
  {
    v9 = 0;
    v10 = v5 + 32;
    while (v9 < *(v5 + 16))
    {
      sub_48FC(v10, &v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      if (sub_BE0E4(v11, v12) == a2 && v13 == a3)
      {

        return sub_4524(&v16, a4);
      }

      v15 = sub_E7BD4();

      if (v15)
      {
        return sub_4524(&v16, a4);
      }

      ++v9;
      result = __swift_destroy_boxed_opaque_existential_1(&v16);
      v10 += 40;
      if (v6 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

Swift::Void __swiftcall TipProvider.requestRefresh(for:)(PodcastsActions::TipGroup a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D6F0, &qword_E9820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = v5;
  v7 = sub_C50C(inited);
  swift_setDeallocating();
  (*(v3 + 16))(v7, v4, v3);
}

uint64_t sub_BE9F8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_E7CC4();
  sub_E7CD4(a2);
  v6 = sub_E7CF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_C0824(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_BEB08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BEB48(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_E7CC4();
  sub_E7124();
  v8 = sub_E7CF4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_E7BD4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_C0970(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_BEC98(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_E59C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_C2960(&qword_131368, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v33 = a2;
  v11 = sub_E6FA4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_C2960(&qword_131370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = sub_E6FB4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_C0AF0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_BEF78(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_E7CB4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_C0DB8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_BF0A0(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_E78D4();

    if (v17)
    {

      sub_4ABC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_E78C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_BF5F4(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_C0224(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_C07A0(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_4ABC(0, a3, a4);
    v19 = sub_E7784(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_E7794();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_C0ED8(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_BF314(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_E61F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
  v33 = a2;
  v11 = sub_E6FA4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_C2960(&unk_130910, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
      v21 = sub_E6FB4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_C1068(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

Swift::Int sub_BF5F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_E7954();
    v23 = v10;
    sub_E78B4();
    if (sub_E78E4())
    {
      sub_4ABC(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_C0224(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_E7784(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_E78E4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_BF7F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
  result = sub_E7944();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_E7CC4();
      sub_E7CD4(v17);
      result = sub_E7CF4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_BFA44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  result = sub_E7944();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_E7CC4();
      sub_E7124();
      result = sub_E7CF4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_BFCA4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_E59C4();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131378, &qword_F5578);
  result = sub_E7944();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_C2960(&qword_131368, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = sub_E6FA4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_C0000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131348, &qword_F5558);
  result = sub_E7944();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_E7CB4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_C0224(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_E7944();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_E7784(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_C0444(uint64_t a1)
{
  v2 = v1;
  v36 = sub_E61F4();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131350, &qword_F5560);
  result = sub_E7944();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
      result = sub_E6FA4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_C07A0(uint64_t a1, void *a2)
{
  sub_E7784(a2[5]);
  result = sub_E78A4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_C0824(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_BF7F4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_C1330();
      a2 = v7;
      goto LABEL_12;
    }

    sub_C1AAC(v5 + 1);
  }

  v8 = *v3;
  sub_E7CC4();
  sub_E7CD4(v4);
  result = sub_E7CF4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

uint64_t sub_C0970(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_BFA44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_C1470();
      goto LABEL_16;
    }

    sub_C1CCC(v8 + 1);
  }

  v10 = *v4;
  sub_E7CC4();
  sub_E7124();
  result = sub_E7CF4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_E7BD4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_E7C44();
  __break(1u);
  return result;
}

uint64_t sub_C0AF0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_E59C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_BFCA4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_C1874(&type metadata accessor for URL, &qword_131378, &qword_F5578);
      goto LABEL_12;
    }

    sub_C1F04(v10 + 1);
  }

  v12 = *v3;
  sub_C2960(&qword_131368, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v13 = sub_E6FA4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_C2960(&qword_131370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = sub_E6FB4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

uint64_t sub_C0DB8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_C0000(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_C15CC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_C2220(v5 + 1);
  }

  v8 = *v3;
  result = sub_E7CB4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

void sub_C0ED8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_C0224(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_C170C(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_C2410(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_E7784(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_4ABC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_E7794();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_E7C44();
  __break(1u);
}

uint64_t sub_C1068(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_E61F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_C0444(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_C1874(&type metadata accessor for PlaybackIntent.Option, &qword_131350, &qword_F5560);
      goto LABEL_12;
    }

    sub_C261C(v10 + 1);
  }

  v12 = *v3;
  sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
  v13 = sub_E6FA4();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_C2960(&unk_130910, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
      v21 = sub_E6FB4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_E7C44();
  __break(1u);
  return result;
}

void *sub_C1330()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
  v2 = *v0;
  v3 = sub_E7934();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_C1470()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  v2 = *v0;
  v3 = sub_E7934();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_C15CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131348, &qword_F5558);
  v2 = *v0;
  v3 = sub_E7934();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_C170C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_E7934();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_C1874(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_E7934();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_C1AAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
  result = sub_E7944();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_E7CC4();
      sub_E7CD4(v16);
      result = sub_E7CF4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}
void *sub_4C478()
{
  v1 = *(*v0 + OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController27AutomaticResponseDataSource_pathCoordinator);
  v2 = v1;
  return v1;
}

uint64_t sub_4C52C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4D078;

  return sub_4B480();
}

uint64_t sub_4C5BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_4D084;

  return sub_4B5B0();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4C690()
{
  result = qword_7ECF0;
  if (!qword_7ECF0)
  {
    sub_59FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7ECF0);
  }

  return result;
}

id sub_4C6E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E250, &qword_5CA38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5DDE0;
  *(inited + 32) = sub_5A194();
  *(inited + 40) = v1;
  *(inited + 48) = sub_5A194();
  *(inited + 56) = v2;
  *(inited + 64) = sub_5A194();
  *(inited + 72) = v3;
  *(inited + 80) = sub_5A194();
  *(inited + 88) = v4;
  *(inited + 96) = sub_5A194();
  *(inited + 104) = v5;
  *(inited + 112) = sub_5A194();
  *(inited + 120) = v6;
  *(inited + 128) = sub_5A194();
  *(inited + 136) = v7;
  *(inited + 144) = sub_5A194();
  *(inited + 152) = v8;
  *(inited + 160) = sub_5A194();
  *(inited + 168) = v9;
  *(inited + 176) = sub_5A194();
  *(inited + 184) = v10;
  *(inited + 192) = sub_5A194();
  *(inited + 200) = v11;
  *(inited + 208) = sub_5A194();
  *(inited + 216) = v12;
  *(inited + 224) = sub_5A194();
  *(inited + 232) = v13;
  *(inited + 240) = sub_5A194();
  *(inited + 248) = v14;
  *(inited + 256) = sub_5A194();
  *(inited + 264) = v15;
  *(inited + 272) = sub_5A194();
  *(inited + 280) = v16;
  *(inited + 288) = sub_5A194();
  *(inited + 296) = v17;
  *(inited + 304) = sub_5A194();
  *(inited + 312) = v18;
  *(inited + 320) = sub_5A194();
  *(inited + 328) = v19;
  *(inited + 336) = sub_5A194();
  *(inited + 344) = v20;
  v21 = sub_5A194();
  v23 = v22;
  v24 = sub_1C304(&dword_0 + 1, 21, 1, inited);
  *(v24 + 2) = 21;
  *(v24 + 44) = v21;
  *(v24 + 45) = v23;
  v25 = sub_5A194();
  v27 = *(v24 + 3);
  if (v27 <= 0x2B)
  {
    v64 = v25;
    v65 = v26;
    v66 = sub_1C304((v27 > 1), 22, 1, v24);
    v26 = v65;
    v24 = v66;
    v25 = v64;
  }

  *(v24 + 2) = 22;
  *(v24 + 46) = v25;
  *(v24 + 47) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7ED20, &qword_5DED0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_5BC80;
  v67 = v28;
  *(v28 + 32) = sub_5A194();
  v68 = v28 + 32;
  *(v28 + 40) = v29;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_5DC00;
  *(v30 + 32) = sub_5A194();
  *(v30 + 40) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_5BC80;
  *(v32 + 32) = sub_5A194();
  *(v32 + 40) = v33;
  sub_1172C(_swiftEmptyArrayStorage);
  v34 = objc_allocWithZone(MPPropertySet);
  isa = sub_5A284().super.isa;

  sub_4FE4(0, &qword_7ED28, MPPropertySet_ptr);
  v36 = sub_5A0F4().super.isa;

  v37 = [v34 initWithProperties:isa relationships:v36];

  *(v30 + 48) = v37;
  *(v30 + 56) = sub_5A194();
  *(v30 + 64) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_5DDF0;
  *(v39 + 32) = sub_5A194();
  *(v39 + 40) = v40;
  *(v39 + 48) = sub_5A194();
  *(v39 + 56) = v41;
  *(v39 + 64) = sub_5A194();
  *(v39 + 72) = v42;
  *(v39 + 80) = sub_5A194();
  *(v39 + 88) = v43;
  *(v39 + 96) = sub_5A194();
  *(v39 + 104) = v44;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_5BC80;
  *(v45 + 32) = sub_5A194();
  *(v45 + 40) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_5BC80;
  *(v47 + 32) = sub_5A194();
  *(v47 + 40) = v48;
  v49 = sub_5A284().super.isa;

  v50 = [objc_opt_self() propertySetWithProperties:v49];

  *(v45 + 48) = v50;
  sub_1172C(v45);
  swift_setDeallocating();
  sub_9708(v45 + 32, &unk_7ED30, &unk_5DED8);
  v51 = objc_allocWithZone(MPPropertySet);
  v52 = sub_5A284().super.isa;

  v53 = sub_5A0F4().super.isa;

  v54 = [v51 initWithProperties:v52 relationships:v53];

  *(v30 + 72) = v54;
  sub_1172C(v30);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED30, &unk_5DED8);
  swift_arrayDestroy();
  v55 = objc_allocWithZone(MPPropertySet);
  v56 = sub_5A284().super.isa;

  v57 = sub_5A0F4().super.isa;

  v58 = [v55 initWithProperties:v56 relationships:v57];

  *(v67 + 48) = v58;
  sub_1172C(v67);
  swift_setDeallocating();
  sub_9708(v68, &unk_7ED30, &unk_5DED8);
  v59 = objc_allocWithZone(MPPropertySet);
  v60 = sub_5A284().super.isa;
  v61 = sub_5A0F4().super.isa;

  v62 = [v59 initWithProperties:v60 relationships:v61];

  return v62;
}

id sub_4CE48()
{
  v0 = [objc_allocWithZone(MPCPlayerRequest) init];
  v1 = sub_5A174();
  [v0 setLabel:v1];

  v2 = sub_4C6E8();
  [v0 setPlayingItemProperties:v2];

  v3 = sub_4C6E8();
  [v0 setQueueItemProperties:v3];

  [v0 setTracklistRange:{0, 99}];
  return v0;
}

uint64_t sub_4CF38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm_1()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4D010()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4D088(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_4D0A8, 0, 0);
}

uint64_t sub_4D0A8()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[18];
  }

  else
  {
    v2 = [objc_opt_self() systemRoute];
  }

  v0[20] = v2;
  v3 = objc_allocWithZone(MPAVRoutingController);
  v4 = v1;
  v5 = sub_5A174();
  v6 = [v3 initWithName:v5];
  v0[21] = v6;

  v0[2] = v0;
  v0[3] = sub_4D24C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EE50, &unk_5DF90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_4D6F8;
  v0[13] = &block_descriptor_10;
  v0[14] = v7;
  [v6 selectRoute:v2 operation:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_4D24C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_4D618;
  }

  else
  {
    v2 = sub_4D35C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_4D35C()
{
  v1 = *(v0 + 152);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v6 = (*(v3 + 88) + **(v3 + 88));
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_4D484;

  return v6(v2, v3);
}

uint64_t sub_4D484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_4D690;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_4D5AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_4D5AC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);
  v3 = *(v0 + 200);

  return v2(v3);
}

uint64_t sub_4D618(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 160);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_4D690()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_4D6F8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7ED10, &qword_5C850);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t PlaybackController.RouteController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t PlaybackController.SleepTimerStopMode.localizedName.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((*&v1 - 2) >= 2)
    {
      if (v1 == 0.0)
      {
        v9 = [objc_opt_self() mainBundle];
        v23._countAndFlagsBits = 0xE000000000000000;
        v10._countAndFlagsBits = 6710863;
        v10._object = 0xE300000000000000;
LABEL_14:
        v27.value._countAndFlagsBits = 0;
        v27.value._object = 0;
        v17.super.isa = v9;
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        v18 = sub_59484(v10, v27, v17, v30, 0, v23);

        return v18;
      }

      v2 = "v16@?0@NSError8";
      v3 = [objc_opt_self() mainBundle];
    }

    else
    {
      v2 = "When chapter ends";
      v3 = [objc_opt_self() mainBundle];
    }

    v9 = v3;
    v23._countAndFlagsBits = 0xE000000000000000;
    v10._object = (v2 | 0x8000000000000000);
    v10._countAndFlagsBits = 0xD000000000000011;
    goto LABEL_14;
  }

  if (*v0 == 3600.0)
  {
    v4 = [objc_opt_self() mainBundle];
    v23._countAndFlagsBits = 0xE600000000000000;
    v24._countAndFlagsBits = 0x72756F68206925;
    v24._object = 0xE700000000000000;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v5.super.isa = v4;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_59484(v24, v26, v5, v29, 0x72756F482031, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_5BC80;
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = 1;
    v7 = sub_5A184();

    return v7;
  }

  else
  {
    if (qword_7CC88 != -1)
    {
      swift_once();
    }

    v11 = qword_7EE58;
    isa = sub_5A3C4().super.super.isa;
    v13 = [v11 stringForObjectValue:isa];

    if (v13)
    {
      v14 = sub_5A194();
      v16 = v15;
    }

    else
    {
      sub_5A3D4();
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    v19 = [objc_opt_self() mainBundle];
    v23._countAndFlagsBits = 0xE000000000000000;
    v25._countAndFlagsBits = 0x74756E696D204025;
    v25._object = 0xEA00000000007365;
    v28.value._countAndFlagsBits = 0;
    v28.value._object = 0;
    v20.super.isa = v19;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_59484(v25, v28, v20, v31, 0, v23);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D020, &qword_5DFA0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_5BC80;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_502C();
    *(v21 + 32) = v14;
    *(v21 + 40) = v16;
    v22 = sub_5A184();

    return v22;
  }
}

void PlaybackController.SleepTimerStopMode.sleepTimerCommand.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) != 1)
  {
    *a1 = v2;
    *(a1 + 8) = 0;
    return;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a1 = 1;
      *(a1 + 8) = 1;
      return;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    *a1 = 2;
    goto LABEL_9;
  }

  *a1 = 0;
LABEL_9:
  *(a1 + 8) = 1;
}

BOOL static PlaybackController.SleepTimerStopMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 <= 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v4) = 0;
      }

      return (v4 & 1) != 0;
    }

    if (*&v3 == 1)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (*&v2 == 2)
  {
    if (*&v3 == 2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    return (v6 & 1) != 0;
  }

  if (*&v3 > 2uLL)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

void PlaybackController.SleepTimerStopMode.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    sub_5A984(v2);
  }

  else
  {
    sub_5A984(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    sub_5A994(v3);
  }
}

Swift::Int PlaybackController.SleepTimerStopMode.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_5A974();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }
    }

    else if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    sub_5A984(v3);
  }

  else
  {
    sub_5A984(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    sub_5A994(v4);
  }

  return sub_5A9A4();
}

Swift::Int sub_4DEB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_5A974();
  if (v3 == 1)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 4;
      }
    }

    else if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    sub_5A984(v4);
  }

  else
  {
    sub_5A984(1uLL);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    sub_5A994(v5);
  }

  return sub_5A9A4();
}

BOOL sub_4DF4C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (*&v2 > 1)
  {
    if (*&v2 != 2)
    {
      if (*&v3 > 2uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = *&v3 == 2;
  }

  else if (v2 == 0.0)
  {
    v4 = *&v3 == 0;
  }

  else
  {
    v4 = *&v3 == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

id sub_4DFD0()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setMinimumFractionDigits:0];
  [v0 setMaximumFractionDigits:2];
  result = [v0 setNumberStyle:1];
  qword_7EE58 = v0;
  return result;
}

char *MPCSleepTimerCommand.sleepTimerStopMode.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 stopMode];
  if (result > 1)
  {
    if (result == &dword_0 + 2)
    {
      v4 = 1;
      *a1 = 1;
      goto LABEL_10;
    }

    if (result == &dword_0 + 3)
    {
      *a1 = 2;
LABEL_8:
      v4 = 1;
      goto LABEL_10;
    }

LABEL_7:
    *a1 = 0;
    goto LABEL_8;
  }

  if (result != &dword_0 + 1)
  {
    goto LABEL_7;
  }

  result = [v1 time];
  v4 = 0;
  *a1 = v5;
LABEL_10:
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_4E0E0()
{
  result = qword_7EE60;
  if (!qword_7EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7EE60);
  }

  return result;
}

uint64_t PlaybackController.viewState.getter()
{
  type metadata accessor for PlaybackController.ViewState(0);
  swift_allocObject();

  v1 = sub_4E8BC(v0);

  return v1;
}

uint64_t type metadata accessor for PlaybackController.ViewState(uint64_t a1)
{
  result = qword_7EEA0;
  if (!qword_7EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlaybackController.ViewState.hasHardQueue.getter()
{
  swift_getKeyPath();
  sub_4EE24();
  sub_59564();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_4E268@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_4EE24();
  sub_59564();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t PlaybackController.ViewState.hasHardQueue.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_4EE24();
    sub_59554();
  }

  return result;
}

uint64_t (*PlaybackController.ViewState.hasHardQueue.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9ViewState___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_4EE24();
  sub_59564();

  *v4 = v1;
  swift_getKeyPath();
  sub_59584();

  swift_beginAccess();
  return sub_4E520;
}

void sub_4E520(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_59574();

  free(v1);
}

id *sub_4E5A4@<X0>(id *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v3 = *result;
    MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_72198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
    sub_5108(&qword_7E558, &unk_7F5A0, &qword_5D8F0, &protocol conformance descriptor for [A]);
    v4 = sub_5A414();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_4E684(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (v2 == *(v4 + 24))
    {
      *(v4 + 24) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_4EE24();
      sub_59554();
    }
  }

  return result;
}

uint64_t PlaybackController.ViewState.deinit()
{

  v1 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9ViewState___observationRegistrar;
  v2 = sub_595A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PlaybackController.ViewState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC16PodcastsPlayback18PlaybackController9ViewState___observationRegistrar;
  v2 = sub_595A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_4E8BC(uint64_t a1)
{
  v2 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DBA0, &qword_5CE78);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = v18 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EF38, &qword_5E0D8);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7EF40, &qword_5E0E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  *(v2 + 16) = &_swiftEmptySetSingleton;
  sub_59594();
  v20 = a1;
  sub_24C20();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v13 = Strong;
  if (Strong)
  {
    v18[1] = v2 + 16;
    v19 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_59E24();

    v14 = v25;
    if (v25)
    {
      v25 = MPCPlayerResponseTracklist.itemsInSections(sections:)(&off_71F90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
      sub_5108(&qword_7E558, &unk_7F5A0, &qword_5D8F0, &protocol conformance descriptor for [A]);
      v13 = sub_5A414();
    }

    else
    {

      v13 = 0;
    }

    v9 = v19;
  }

  else
  {
  }

  *(v2 + 24) = v13 & 1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D908, &qword_5CBC8);
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7EF48, &qword_7DBA0, &qword_5CE78, &protocol conformance descriptor for Published<A>.Publisher);
  v15 = v23;
  sub_59E84();
  (*(v21 + 8))(v5, v15);
  sub_5108(&qword_7EF50, &qword_7EF38, &qword_5E0D8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v16 = v24;
  sub_59F64();
  (*(v22 + 8))(v7, v16);
  swift_allocObject();
  swift_weakInit();
  sub_5108(&qword_7EF58, &qword_7EF40, &qword_5E0E0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_59F84();

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_59D44();
  swift_endAccess();

  return v2;
}

unint64_t sub_4EE24()
{
  result = qword_7EE70;
  if (!qword_7EE70)
  {
    type metadata accessor for PlaybackController.ViewState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7EE70);
  }

  return result;
}

uint64_t sub_4EE9C(uint64_t a1)
{
  result = sub_595A4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4EF64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4EFA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

NSString sub_4F010()
{
  result = sub_5A174();
  qword_7EF60 = result;
  return result;
}

id static NSNotificationName.VolumeLevelDidChange.getter()
{
  if (qword_7CC90 != -1)
  {
    swift_once();
  }

  v1 = qword_7EF60;

  return v1;
}

void sub_4F148(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedController];
  [v4 *a3];
}

id sub_4F1F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4F2BC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 32, v1);
  v3 = (*(v2 + 32))(v6, v1, v2);
  *v4 = *v4 + 0.05;
  v3(v6, 0);
  swift_endAccess();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_7CC90 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_7EF60 object:0];
}

void sub_4F3E0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 32, v1);
  v3 = (*(v2 + 32))(v6, v1, v2);
  *v4 = *v4 + -0.05;
  v3(v6, 0);
  swift_endAccess();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_7CC90 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_7EF60 object:0];
}

uint64_t sub_4F504()
{
  v1 = sub_59FE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5A014();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v9 = sub_5A504();
  aBlock[4] = sub_4FD7C;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = &block_descriptor_11;
  v10 = _Block_copy(aBlock);

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_4FD9C();
  sub_5A694();
  sub_5A534();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_4F784(uint64_t a1)
{
  result = [objc_opt_self() defaultSharedOutputContext];
  if (result)
  {
    v3 = result;
    v4 = _s19MPCVolumeDataSourceCMa();
    v5 = swift_allocObject();
    *(v5 + 32) = 1;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 16) = *(a1 + 16);
    v16[3] = v4;
    v16[4] = &off_74160;
    v16[0] = v5;
    swift_unknownObjectRetain();
    v6 = [v3 outputDevices];
    sub_4FE4(0, &qword_7F038, AVOutputDevice_ptr);
    v7 = sub_5A294();

    if (v7 >> 62)
    {
      v8 = sub_5A814();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    if (v8 < 1)
    {
      sub_123D8(v16, &v13);
    }

    else
    {
      v9 = _s31AVOutputContextVolumeDataSourceCMa();
      swift_allocObject();
      v10 = v3;
      v11 = sub_506EC(v10);

      v14 = v9;
      v15 = &off_74108;
      *&v13 = v11;
    }

    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm((a1 + 32));
    sub_12440(&v13, a1 + 32);
    swift_endAccess();
    v12 = [objc_opt_self() defaultCenter];
    if (qword_7CC90 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_7EF60 object:0];

    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  return result;
}

uint64_t sub_4FA9C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

float sub_4FB48()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = (*(v3 + 16))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_4FBD4(float a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 32, v4);
  (*(v5 + 24))(v4, v5, a1);
  return swift_endAccess();
}

uint64_t sub_4FC60()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[7];
  v3 = v1[8];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v5 = *(v2 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  LOBYTE(v3) = (*(v3 + 8))(v2, v3);
  (*(v5 + 8))(v7, v2);
  return v3 & 1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4FD9C()
{
  result = qword_7ED00;
  if (!qword_7ED00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_7E8F0, &unk_5DBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_7ED00);
  }

  return result;
}

uint64_t sub_4FEC8()
{
  swift_unknownObjectRelease();
  sub_227C(v0[5], v0[6]);
  sub_227C(v0[7], v0[8]);

  return swift_deallocClassInstance();
}

float sub_4FF34()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_4FFB0(float a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  v5(ObjectType, v3, a1);

  return swift_unknownObjectRelease();
}

uint64_t (*sub_50038(uint64_t a1))(float *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  swift_unknownObjectRelease();
  *(a1 + 8) = v7;
  return sub_500D8;
}

uint64_t sub_500D8(float *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 24);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  swift_unknownObjectRetain();
  v4(ObjectType, v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t sub_50180(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(result + 32);

    v1(v3);

    return sub_227C(v1, v2);
  }

  return result;
}

uint64_t sub_5021C(uint64_t a1, uint64_t a2)
{
  v5 = sub_59FE4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5A014();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_50678();
  v12 = sub_5A504();
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_12CB4;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  sub_5A004();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_4FD9C();
  sub_5A694();
  sub_5A534();
  _Block_release(v13);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_5047C(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 48);

    v1(v3);

    return sub_227C(v1, v2);
  }

  return result;
}

uint64_t sub_504F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_5021C(a3, a4);
}

uint64_t sub_5054C()
{
  sub_227C(*(v0 + 24), *(v0 + 32));
  sub_227C(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t (*sub_50608(uint64_t a1))()
{
  v3 = *v1;
  *a1 = *v1;
  [*(v3 + 16) volume];
  *(a1 + 8) = v4;
  return sub_50660;
}

unint64_t sub_50678()
{
  result = qword_7DA40;
  if (!qword_7DA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_7DA40);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_506EC(void *a1)
{
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 defaultCenter];
  [v5 addObserver:v1 selector:"volumeAvailabilityDidChange" name:AVOutputContextCanSetVolumeDidChangeNotification object:0];

  v6 = [v3 defaultCenter];
  [v6 addObserver:v1 selector:"outputContextVolumeDidChange" name:AVOutputContextVolumeDidChangeNotification object:v4];

  return v1;
}

void *sub_5083C(uint64_t a1)
{
  v77 = sub_599C4();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F5B8, &qword_5E510);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1C2DC(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = (v20 - v22);
  result = sub_57B44(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = result + v26;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_589E4(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_9768(v14, v75, &qword_7F5B8, &qword_5E510);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_9708(v37, &qword_7F5B8, &qword_5E510);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_1C2DC((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_9768(v14, v76, &qword_7F5B8, &qword_5E510);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_9708(v43, &qword_7F5B8, &qword_5E510);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_9768(v14, v75, &qword_7F5B8, &qword_5E510);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_9708(v14, &qword_7F5B8, &qword_5E510);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_9768(v14, v76, &qword_7F5B8, &qword_5E510);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_9708(v14, &qword_7F5B8, &qword_5E510);
    sub_589E4(v65);
    result = sub_9708(v37, &qword_7F5B8, &qword_5E510);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= (v28 + 1))
  {
    v32 = (v28 + 1);
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_50F8C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_5A814();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_5A814();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_57AA4(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_51084(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C1C0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_51180(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

uint64_t sub_51218(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t PlayStateDataSource.__allocating_init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(a1, a2, a3);
  return v6;
}

uint64_t PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a3;
  v20 = a2;
  v19 = sub_5A4F4();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5A014();
  __chkstk_darwin(v8 - 8);
  v9 = sub_5A494();
  __chkstk_darwin(v9);
  *(v3 + 32) = xmmword_5E290;
  *(v3 + 48) = xmmword_5E2A0;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  *(v3 + 80) = &_swiftEmptyDictionarySingleton;
  v10 = sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v18[1] = "";
  v18[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F1A8, qword_5E2C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5BC80;
  sub_5A484();
  v23 = v11;
  sub_5848C(&qword_7E910, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7CFF0, &qword_5BCA0);
  sub_5108(&qword_7E920, &qword_7CFF0, &qword_5BCA0, &protocol conformance descriptor for [A]);
  sub_5A694();
  sub_5A004();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v12 = sub_5A544();
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = v12;
  v13 = v21;
  *(v3 + 16) = v20;
  *(v3 + 24) = v13;
  type metadata accessor for IdentifierUtil();
  v14 = swift_allocObject();
  v15 = sub_11928(_swiftEmptyArrayStorage);
  v16 = v22;
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v4 + 72) = v14;
  return v4;
}

uint64_t PlayStateDataSource.__allocating_init(asPartOf:)(uint64_t a1)
{
  type metadata accessor for PlaybackController(0);
  sub_5A0D4();
  sub_5A0E4();
  type metadata accessor for PendingPlaybackStore();
  sub_5A0E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F1B8, &qword_5E2D8);
  sub_5A0E4();
  type metadata accessor for PlayStateDataSource();
  v1 = swift_allocObject();
  PlayStateDataSource.init(playbackController:pendingPlaybackStore:episodeLookupUtil:)(v5, v4, v3);

  return v1;
}

uint64_t sub_51788@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_58CB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_226C(v4, v5);
}

uint64_t sub_5181C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = sub_58C78;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_226C(v4, v3);
  sub_226C(v6, v5);
  sub_518FC(v8);
  sub_227C(v8, v9);
  return sub_227C(v6, v5);
}

uint64_t sub_518FC(uint64_t a1)
{
  if (!a1)
  {
    sub_54138();
  }

  result = swift_beginAccess();
  if (!*(v1 + 96))
  {
    swift_beginAccess();
    v3 = *(v1 + 64);
    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_6:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_5A724();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_15:
            __break(1u);
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_19:
            v4 = sub_5A814();
            goto LABEL_6;
          }

          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_15;
          }
        }

        sub_59D64();

        ++v5;
      }

      while (v6 != v4);
    }
  }

  return result;
}

uint64_t sub_51A20()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_226C(v1, *(v0 + 104));
  return v1;
}

uint64_t sub_51A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_226C(a1, a2);
  sub_518FC(v5);
  sub_227C(v5, v6);
  return sub_227C(a1, a2);
}

void (*sub_51AF8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  sub_226C(v5, v6);
  return sub_51B88;
}

void sub_51B88(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v5 + 96);
  v8 = *(v5 + 104);
  *(v5 + 96) = v4;
  *(v5 + 104) = v6;
  sub_226C(v4, v6);
  if (a2)
  {
    sub_226C(v4, v6);
    sub_518FC(v7);
    sub_227C(v7, v8);
    sub_227C(v4, v6);
    v9 = v3[3];
    v10 = v3[4];
  }

  else
  {
    sub_518FC(v7);
    sub_227C(v7, v8);
    v9 = v4;
    v10 = v6;
  }

  sub_227C(v9, v10);

  free(v3);
}

uint64_t sub_51C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v1 - 8);
  v77 = &v47 - v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7DB78, &qword_5CE50);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v47 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F460, &qword_5E470);
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v58 = &v47 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D678, &unk_5CD70);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = &v47 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D9D0, &unk_5C820);
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v47 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F468, &qword_5E478);
  v61 = *(v57 - 8);
  __chkstk_darwin(v57);
  v51 = &v47 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F470, &qword_5E480);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v56 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F478, &qword_5E488);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  __chkstk_darwin(v9);
  v62 = &v47 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F480, &qword_5E490);
  v76 = *(v74 - 8);
  __chkstk_darwin(v74);
  v68 = &v47 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F488, &qword_5E498);
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v47 - v13;
  v14 = *(v0 + 24);
  v15 = OBJC_IVAR____TtC16PodcastsPlayback18PlaybackController_responseDataSource;
  swift_beginAccess();
  sub_123D8(v14 + v15, &v80);
  v16 = v81;
  v17 = v82;
  __swift_project_boxed_opaque_existential_1(&v80, v81);
  v78 = (*(v17 + 8))(v16, v17);
  sub_59D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9F0, &unk_5CD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D688, &unk_5C840);
  v48 = &protocol conformance descriptor for CurrentValueSubject<A, B>;
  sub_5108(&unk_7DA00, &unk_7D9F0, &unk_5CD90, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v60 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_5108(&qword_7D690, &qword_7D688, &unk_5C840, &protocol conformance descriptor for AnyPublisher<A, B>);
  v18 = v49;
  sub_59FB4();

  __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  sub_5108(&unk_7DA10, &qword_7D678, &unk_5CD70, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_19C84();
  v19 = v50;
  v20 = v53;
  sub_59F64();
  (*(v55 + 8))(v18, v20);
  sub_5108(&qword_7D6A8, &qword_7D9D0, &unk_5C820, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v21 = v52;
  v22 = sub_59E74();
  (*(v54 + 8))(v19, v21);
  v80 = v22;
  sub_4FE4(0, &unk_7DA30, MPCPlayerResponse_ptr);
  v23 = v51;
  sub_59E84();

  v24 = v47;
  v25 = *(v47 + 16);
  swift_beginAccess();
  v79 = *(v25 + 16);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F490, &qword_5CD10);
  v26 = v59;
  sub_59E04();
  swift_endAccess();
  sub_5108(&qword_7E448, &qword_7DB78, &qword_5CE50, &protocol conformance descriptor for Published<A>.Publisher);
  sub_34F8C();
  v27 = v58;
  v28 = v63;
  sub_59F64();
  (*(v64 + 8))(v26, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F4C0, &unk_5C0F0);
  sub_5108(&qword_7F4C8, &qword_7F468, &qword_5E478, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_5108(&unk_7F4D0, &qword_7F4C0, &unk_5C0F0, v48);
  sub_5108(&qword_7E458, &qword_7F460, &qword_5E470, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v29 = v56;
  v30 = v57;
  v31 = v67;
  sub_59EA4();
  (*(v69 + 8))(v27, v31);

  (*(v61 + 8))(v23, v30);
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  v32 = sub_5A504();
  v78 = v32;
  v33 = sub_5A4A4();
  v34 = v77;
  (*(*(v33 - 8) + 56))(v77, 1, 1, v33);
  sub_5108(&unk_7F4E0, &qword_7F470, &qword_5E480, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v35 = v62;
  v36 = v65;
  sub_59F34();
  sub_9708(v34, &unk_7D9C0, &unk_5C810);

  (*(v66 + 8))(v29, v36);
  v37 = *(v24 + 72);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = xmmword_5E290;
  *(v38 + 40) = xmmword_5E2A0;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_58B4C;
  *(v39 + 24) = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F430, &unk_5E458);
  sub_5108(&qword_7F4F0, &qword_7F478, &qword_5E488, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v40 = v68;
  v41 = v71;
  sub_59EC4();

  (*(v72 + 8))(v35, v41);
  sub_5108(&qword_7F4F8, &qword_7F480, &qword_5E490, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_5108(&qword_7F438, &qword_7F430, &unk_5E458, v60);
  v42 = v70;
  v43 = v74;
  sub_59F74();
  (*(v76 + 8))(v40, v43);
  sub_5108(&qword_7F500, &qword_7F488, &qword_5E498, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v44 = v73;
  v45 = sub_59E74();
  (*(v75 + 8))(v42, v44);
  return v45;
}

id sub_529FC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_52A08(void *a1, uint64_t a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F508, &qword_5E4B0);
  __chkstk_darwin(v14 - 8);
  v163 = &v138 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F510, &qword_5E4B8);
  v167 = *(v16 - 8);
  __chkstk_darwin(v16);
  v165 = &v138 - v17;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F518, &qword_5E4C0);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v166 = &v138 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7D9C0, &unk_5C810);
  __chkstk_darwin(v19 - 8);
  v156 = &v138 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F520, &qword_5E4C8);
  __chkstk_darwin(v21 - 8);
  v154 = &v138 - v22;
  v23 = sub_5A4E4();
  v153 = *(v23 - 8);
  __chkstk_darwin(v23);
  v152 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F528, &qword_5E4D0);
  v179 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v176 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v172 = &v138 - v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F530, &qword_5E4D8);
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v155 = &v138 - v29;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F538, &qword_5E4E0);
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v157 = &v138 - v30;
  v171 = type metadata accessor for PlayStateData(0);
  v180 = *(v171 - 8);
  __chkstk_darwin(v171);
  v32 = (&v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = sub_59524();
  v33 = *(v178 - 8);
  __chkstk_darwin(v178);
  v177 = &v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  v173 = *(v182 - 8);
  v35 = __chkstk_darwin(v182);
  v175 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v151 = &v138 - v38;
  v39 = __chkstk_darwin(v37);
  v150 = &v138 - v40;
  __chkstk_darwin(v39);
  v42 = &v138 - v41;
  v43 = *(a2 + 8);
  v162 = *a2;
  v174 = v43;
  v44 = *(a2 + 24);
  v170 = *(a2 + 16);
  v183 = v44;
  v45 = *(a2 + 32);
  v46 = *(a2 + 40);
  v47 = *(a2 + 48);
  v184 = a1;
  v164 = a4;
  sub_55764(a1, &v138 - v41);
  v181 = a3;
  if (!a3 || [v181 isDeviceRoute])
  {
    a5 = a6;
  }

  v48 = v183;
  if (v183 != 1)
  {
    v49 = v177;
    sub_59514();
    sub_594D4();
    v51 = v50;
    v52 = *(v33 + 8);
    v147 = v33 + 8;
    v146 = v52;
    v52(v49, v178);
    if (v51 - v45 < a5)
    {
      v192 = &_swiftEmptySetSingleton;
      if ((v174 & 1) == 0)
      {
        sub_B3F0(&v187, v162, 0, 0);
        sub_5350(v187, v188, v189);
      }

      v142 = v25;
      if (v48)
      {

        sub_B3F0(&v187, v170, v48, 1);
        sub_5350(v187, v188, v189);
      }

      v53 = v192;
      v54 = sub_53FDC();
      v55 = v53 + 56;
      v56 = 1 << v53[32];
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      else
      {
        v57 = -1;
      }

      v58 = v57 & *(v53 + 7);
      v59 = (v56 + 63) >> 6;
      v185 = v54 + 56;
      v186 = v54;

      v61 = 0;
      v148 = v32;
      v149 = v42;
      v139 = v16;
      v145 = v23;
      v144 = v53;
      v141 = v53 + 56;
      v140 = v59;
      while (1)
      {
        do
        {
          if (!v58)
          {
            while (1)
            {
              v63 = v61 + 1;
              if (__OFADD__(v61, 1))
              {
                break;
              }

              if (v63 >= v59)
              {

                goto LABEL_38;
              }

              v62 = *&v55[8 * v63];
              ++v61;
              if (v62)
              {
                v61 = v63;
                goto LABEL_20;
              }
            }

            __break(1u);
            return result;
          }

          v62 = v58;
LABEL_20:
          v58 = (v62 - 1) & v62;
        }

        while (!*(v186 + 2));
        v143 = (v62 - 1) & v62;
        v64 = *(v53 + 6) + 24 * (__clz(__rbit64(v62)) | (v61 << 6));
        v66 = *v64;
        v65 = *(v64 + 8);
        v67 = *(v64 + 16);
        v68 = v186;
        sub_5A974();
        sub_5340(v66, v65, v67);
        sub_59BB4();
        v69 = sub_5A9A4();
        v70 = -1 << v68[32];
        v71 = v69 & ~v70;
        if ((*&v185[(v71 >> 3) & 0xFFFFFFFFFFFFFF8] >> v71))
        {
          break;
        }

LABEL_25:
        result = sub_5350(v66, v65, v67);
        v42 = v149;
        v23 = v145;
        v32 = v148;
        v53 = v144;
        v55 = v141;
        v59 = v140;
        v58 = v143;
      }

      v72 = ~v70;
      while (1)
      {
        v73 = *(v186 + 6) + 24 * v71;
        v74 = *v73;
        v75 = *(v73 + 8);
        v76 = *(v73 + 16);
        sub_5340(*v73, v75, v76);
        v77 = sub_59BA4();
        sub_5350(v74, v75, v76);
        if (v77)
        {
          break;
        }

        v71 = (v71 + 1) & v72;
        if (((*&v185[(v71 >> 3) & 0xFFFFFFFFFFFFFF8] >> v71) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      sub_5350(v66, v65, v67);

      v78 = [v184 tracklist];
      v79 = [v78 playingItem];

      v42 = v149;
      v16 = v139;
      v25 = v142;
      v23 = v145;
      v32 = v148;
      if (!v79 || ([v79 duration], v80 = v190, v81 = v191, v82 = objc_msgSend(v184, "state"), v79, v80 <= 0.1) || v82 != &dword_0 + 2 || v81)
      {
LABEL_38:
        v192 = &_swiftEmptySetSingleton;
        if ((v174 & 1) == 0)
        {
          sub_B3F0(&v187, v162, 0, 0);
          sub_5350(v187, v188, v189);
        }

        v106 = v171;
        v107 = v151;
        v108 = v183;
        if (v183)
        {

          sub_B3F0(&v187, v170, v108, 1);
          sub_5350(v187, v188, v189);
        }

        v109 = v192;
        v110 = (v32 + v106[5]);
        *v110 = v47;
        v110[1] = v46;
        sub_59984();
        swift_storeEnumTagMultiPayload();
        v111 = v177;
        sub_59514();
        sub_594D4();
        v113 = v112;
        v114 = v178;
        v115 = v146;
        v146(v111, v178);
        *v32 = v109;
        *(v32 + v106[6]) = v113;
        *(v32 + v106[7]) = 0;
        sub_59514();
        sub_594D4();
        v115(v111, v114);
        sub_9768(v42, v107, &qword_7F420, &qword_5E448);
        if ((*(v180 + 48))(v107, 1, v106) == 1)
        {
          sub_9708(v107, &qword_7F420, &qword_5E448);
          v116 = 1;
          v117 = v150;
        }

        else
        {
          v118 = *v107;
          v117 = v150;
          sub_58C10(v107 + v106[5], &v150[v106[5]], &type metadata accessor for EpisodePlayState);
          v119 = v106[6];
          v120 = *(v107 + v119);
          *v117 = v118;
          *(v117 + v119) = v120;
          *(v117 + v106[7]) = 1;

          sub_58AB8(v107);
          v116 = 0;
        }

        v121 = *(v180 + 56);
        v180 += 56;
        v186 = v121;
        (v121)(v117, v116, 1, v106);
        sub_59DC4();
        v122 = v152;
        sub_5A4C4();
        v123 = v153;
        v124 = v154;
        (*(v153 + 56))(v154, 1, 1, v23);
        sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
        v125 = sub_5A504();
        v187 = v125;
        v126 = sub_5A4A4();
        v127 = v156;
        (*(*(v126 - 8) + 56))(v156, 1, 1, v126);
        sub_5108(&qword_7F540, &qword_7F528, &qword_5E4D0, &protocol conformance descriptor for Just<A>);
        sub_19D34(&qword_7DA50, &qword_7DA40, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
        v128 = v23;
        v129 = v155;
        v130 = v142;
        v131 = v172;
        sub_59EE4();
        sub_9708(v127, &unk_7D9C0, &unk_5C810);

        sub_9708(v124, &qword_7F520, &qword_5E4C8);
        (*(v123 + 8))(v122, v128);
        (*(v179 + 8))(v131, v130);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F568, &unk_5E4F0);
        v132 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v133 = swift_allocObject();
        *(v133 + 16) = xmmword_5BC80;
        v134 = v148;
        sub_58C10(v148, v133 + v132, type metadata accessor for PlayStateData);
        (v186)(v133 + v132, 0, 1, v171);
        sub_5108(&qword_7F580, &qword_7F530, &qword_5E4D8, &protocol conformance descriptor for Publishers.Delay<A, B>);
        v135 = v157;
        v136 = v160;
        sub_59F24();

        (*(v158 + 8))(v129, v136);
        sub_5108(&qword_7F588, &qword_7F538, &qword_5E4E0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
        v137 = v161;
        v104 = sub_59E74();
        (*(v159 + 8))(v135, v137);
        sub_58AB8(v134);
        v42 = v149;
        goto LABEL_46;
      }
    }
  }

  v83 = [v184 tracklist];
  v84 = [v83 playingItem];

  if (v84 && ([v84 duration], v85 = v190, v86 = v191, v87 = objc_msgSend(v184, "state"), v84, v85 > 0.1) && v87 == &dword_0 + 2 && (v86 & 1) == 0)
  {
    sub_4FE4(0, &qword_7F548, NSTimer_ptr);
    v88 = [objc_opt_self() mainRunLoop];
    v89 = sub_5A634();
    v90 = v163;
    (*(*(v89 - 8) + 56))(v163, 1, 1, v89);
    v91 = sub_5A604();

    sub_9708(v90, &qword_7F508, &qword_5E4B0);
    v187 = v91;
    sub_5A5F4();
    sub_5848C(&qword_7F550, 255, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v92 = sub_59DB4();

    v187 = v92;
    v93 = swift_allocObject();
    v94 = v184;
    v93[2] = v164;
    v93[3] = v94;
    v95 = v181;
    v93[4] = v181;
    v96 = v95;

    v97 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F558, &qword_5E4E8);
    v98 = v167;
    sub_5108(&qword_7F560, &qword_7F558, &qword_5E4E8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    v99 = v165;
    sub_59EC4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F568, &unk_5E4F0);
    v100 = (*(v173 + 80) + 32) & ~*(v173 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_5BC80;
    sub_9768(v42, v101 + v100, &qword_7F420, &qword_5E448);
    sub_5108(&qword_7F570, &qword_7F510, &qword_5E4B8, &protocol conformance descriptor for Publishers.Map<A, B>);
    v102 = v166;
    sub_59F24();

    (*(v98 + 8))(v99, v16);
    sub_5108(&qword_7F578, &qword_7F518, &qword_5E4C0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
    v103 = v169;
    v104 = sub_59E74();
    (*(v168 + 8))(v102, v103);
  }

  else
  {
    sub_9768(v42, v175, &qword_7F420, &qword_5E448);
    v105 = v176;
    sub_59DC4();
    sub_5108(&qword_7F540, &qword_7F528, &qword_5E4D0, &protocol conformance descriptor for Just<A>);
    v104 = sub_59E74();
    (*(v179 + 8))(v105, v25);
  }

LABEL_46:
  sub_9708(v42, &qword_7F420, &qword_5E448);
  return v104;
}

void *sub_53FDC()
{
  v0 = MPCPlayerResponse.currentItem.getter();
  if (!v0)
  {
    return &_swiftEmptySetSingleton;
  }

  v1 = v0;
  v2 = [v1 identifiers];
  v3 = [v2 library];

  if (v3)
  {
    v4 = [v3 databaseID];
    swift_unknownObjectRelease();
    sub_5A194();
  }

  v6 = [v1 identifiers];
  v7 = [v6 universalStore];

  if (v7)
  {
    [v7 adamID];
    swift_unknownObjectRelease();
    sub_59C44();
  }

  v8 = sub_59B94();

  return v8;
}

uint64_t sub_54138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F418, &qword_5E440);
  __chkstk_darwin(v0);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F428, &qword_5E450);
  v9 = *(v20 - 8);
  __chkstk_darwin(v20);
  v11 = &v19 - v10;
  v21 = sub_51C5C();
  v12 = type metadata accessor for PlayStateData(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 1, 1, v12);
  v13(v6, 1, 1, v12);
  v14 = *(v0 + 48);
  sub_58880(v8, v2);
  sub_58880(v6, &v2[v14]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F430, &unk_5E458);
  sub_5108(&qword_7F438, &qword_7F430, &unk_5E458, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_59ED4();
  sub_9708(v2, &qword_7F418, &qword_5E440);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_58928;
  *(v16 + 24) = v15;
  sub_5108(&qword_7F440, &qword_7F428, &qword_5E450, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v17 = v20;
  sub_59F84();

  (*(v9 + 8))(v11, v17);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E940, &qword_5DBD0);
  sub_5108(&unk_7ED80, &unk_7E940, &qword_5DBD0, &protocol conformance descriptor for [A]);
  sub_59D54();
  swift_endAccess();
}

uint64_t sub_54538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F418, &qword_5E440);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v7 + 56);
  sub_9768(a1, &v12 - v8, &qword_7F418, &qword_5E440);
  sub_58880(&v9[*(v7 + 56)], a3);
  sub_9768(a2, a3 + v10, &qword_7F420, &qword_5E448);
  return sub_9708(v9, &qword_7F420, &qword_5E448);
}

uint64_t sub_54630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_59FE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v16[1] = v16;
    v17 = _swiftEmptyArrayStorage;
    v10 = __chkstk_darwin(result);
    v16[-4] = &v17;
    v16[-3] = v10;
    v16[-2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F448, qword_5E550);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_5BC80;
    sub_59FD4();
    v16[2] = v11;
    sub_5848C(&qword_7ECF0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
    sub_5108(&qword_7ED00, &unk_7E8F0, &unk_5DBF0, &protocol conformance descriptor for [A]);
    v12 = sub_5A694();
    __chkstk_darwin(v12);
    v16[-2] = sub_589BC;
    v16[-1] = &v16[-6];
    sub_5A514();
    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    v13 = *(v9 + 96);
    if (v13)
    {
      v14 = *(v9 + 104);
      v15 = v17;

      v13(v15);
      sub_227C(v13, v14);
    }
  }

  return result;
}

uint64_t sub_5492C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_59984();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v59 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  __chkstk_darwin(v8 - 8);
  v10 = v53 - v9;
  v58 = type metadata accessor for PlayStateData(0);
  v11 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v60 = a2;
  v13 = *(a2 + 80);
  v14 = *(v13 + 16);
  v53[1] = a1;
  if (v14)
  {
    v54 = a3;
    v15 = sub_56474(v14, 0);
    v55 = sub_57F48(&v62, (v15 + 32), v14, v13);
    v16 = v62;

    sub_589E4(v16);
    if (v55 != v14)
    {
      goto LABEL_37;
    }

    a3 = v54;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  sub_51084(v15);
  *(v60 + 80) = &_swiftEmptyDictionarySingleton;

  sub_9768(a3, v10, &qword_7F420, &qword_5E448);
  if ((*(v11 + 48))(v10, 1, v58) == 1)
  {
    return sub_9708(v10, &qword_7F420, &qword_5E448);
  }

  v18 = v57;
  sub_589EC(v10, v57, type metadata accessor for PlayStateData);
  v19 = *v18;
  v22 = *(*v18 + 56);
  v21 = *v18 + 56;
  v20 = v22;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v54 = v21;
  v55 = v19;
  while (v25)
  {
LABEL_17:
    v30 = *(v19 + 48) + 24 * (__clz(__rbit64(v25)) | (v27 << 6));
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    v34 = *(v58 + 20);
    v35 = v60;
    swift_beginAccess();
    sub_58C10(v57 + v34, v59, &type metadata accessor for EpisodePlayState);
    sub_5340(v31, v32, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v35 + 80);
    v37 = v61;
    *(v35 + 80) = 0x8000000000000000;
    v39 = sub_56504(v31, v32, v33);
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_35;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v38)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_5782C();
        if (v43)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_56EEC(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_56504(v31, v32, v33);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_38;
      }

      v39 = v44;
      if (v43)
      {
LABEL_10:
        sub_5350(v31, v32, v33);
        v28 = v61;
        sub_58A54(v59, v61[7] + *(v56 + 72) * v39);
        goto LABEL_11;
      }
    }

    v28 = v61;
    v61[(v39 >> 6) + 8] |= 1 << v39;
    v46 = v28[6] + 24 * v39;
    *v46 = v31;
    *(v46 + 8) = v32;
    *(v46 + 16) = v33;
    sub_589EC(v59, v28[7] + *(v56 + 72) * v39, &type metadata accessor for EpisodePlayState);
    v47 = v28[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_36;
    }

    v28[2] = v49;
LABEL_11:
    v25 &= v25 - 1;
    *(v60 + 80) = v28;

    swift_endAccess();
    v21 = v54;
    v19 = v55;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      v50 = *(v19 + 16);
      if (!v50)
      {
        goto LABEL_31;
      }

      v51 = sub_56474(*(v19 + 16), 0);
      v52 = sub_57DE8(&v62, (v51 + 32), v50, v19);
      sub_589E4(v62);
      if (v52 != v50)
      {
        __break(1u);
LABEL_31:

        v51 = _swiftEmptyArrayStorage;
      }

      sub_51084(v51);
      return sub_58AB8(v57);
    }

    v25 = *(v21 + 8 * v29);
    ++v27;
    if (v25)
    {
      v27 = v29;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_5A914();
  __break(1u);
  return result;
}

uint64_t PlayStateDataSource.deinit()
{

  sub_227C(*(v0 + 96), *(v0 + 104));
  return v0;
}

uint64_t PlayStateDataSource.__deallocating_deinit()
{
  PlayStateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_54FB8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  sub_226C(v2, *(v1 + 104));
  return v2;
}

uint64_t sub_5500C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  sub_226C(a1, a2);
  sub_518FC(v6);
  sub_227C(v6, v7);
  return sub_227C(a1, a2);
}

void (*sub_55098(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_51AF8(v2);
  return sub_1EB8;
}

void sub_5510C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(*v3 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F590, "v4");
  sub_5A524();
}

uint64_t sub_551A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PlayStateData(0);
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 tracklist];
  v15 = [v14 playingItem];

  if (v15)
  {
    v36 = a2;
    v37 = a4;
    v38 = a5;
    v39 = COERCE_DOUBLE(sub_53FDC());
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F3F0, &qword_5E428);
    sub_5108(&qword_7F3F8, &qword_7F3F0, &qword_5E428, &protocol conformance descriptor for Set<A>);
    v16 = sub_5A414();

    if ((v16 & 1) != 0 && [a1 state] != &dword_0 + 1)
    {
      [v15 duration];
      v18 = v40;
      v35 = v43;
      [v15 duration];
      v19 = 0.0;
      if (v40 > 0.0)
      {
        [v15 duration];
        v20 = v39;
        v21 = v40;
        v22 = v41;
        v23 = v42;
        sub_594E4();
        v25 = v22 + (v24 - v20) * v23;
        if (v25 >= v21)
        {
          v25 = v21;
        }

        v19 = fmax(v25, 0.0);
      }

      v26 = sub_53FDC();
      if (a3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F410, &qword_5CA30);
        v27 = swift_allocObject();
        *(v27 + 1) = xmmword_5BC80;
        v27[4] = v36;
        v27[5] = a3;
        *(v27 + 48) = 1;
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
      }

      v28 = sub_587EC(v27, v26);

      *v13 = v28;
      [v15 duration];
      *(v13 + v10[6]) = v39;
      *(v13 + v10[7]) = v37 & 1;
      v29 = (v13 + v10[5]);
      v30 = [a1 state] != &dword_0 + 2;
      v31 = [a1 playerPath];
      v32 = sub_55574();

      *v29 = v19;
      v29[1] = v18;
      *(v29 + 16) = v30;
      *(v29 + 17) = v35;
      *(v29 + 18) = v32 & 1;
      sub_59984();
      swift_storeEnumTagMultiPayload();
      a5 = v38;
      sub_589EC(v13, v38, type metadata accessor for PlayStateData);
      v17 = 0;
    }

    else
    {

      v17 = 1;
      a5 = v38;
    }
  }

  else
  {

    v17 = 1;
  }

  return (*(v11 + 56))(a5, v17, 1, v10);
}

id sub_55574()
{
  v1 = [v0 route];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
LABEL_21:
    v13 = 0;
LABEL_22:

    return v13;
  }

  result = [v3 endpointObject];
  if (result)
  {
    v5 = result;
    v6 = [result outputDevices];

    if (v6)
    {
      sub_4FE4(0, &qword_7F408, MRAVOutputDevice_ptr);
      v7 = sub_5A294();

      if (v7 >> 62)
      {
LABEL_26:
        v8 = sub_5A814();
      }

      else
      {
        v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      }

      v9 = 0;
      while (v8 != v9)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_5A724();
        }

        else
        {
          if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_25;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (([v10 isLocalDevice] & 1) == 0 || objc_msgSend(v11, "deviceType") == 3)
        {

          v13 = 1;
          v2 = v11;
          goto LABEL_22;
        }

        v12 = [v11 deviceSubtype];

        ++v9;
        if (v12 == 14)
        {

          v13 = 1;
          goto LABEL_22;
        }
      }
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_55764(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v5 = type metadata accessor for PlayStateData(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v79[-v10];
  v12 = sub_5A044();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_4FE4(0, &qword_7DA40, OS_dispatch_queue_ptr);
  *v15 = sub_5A504();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_5A064();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = MPCPlayerResponse.currentItem.getter();
  if (!v17)
  {
LABEL_6:
    v21 = MPCPlayerResponse.currentItem.getter();
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = v21;
    v23 = [v21 identifiers];
    v24 = [v23 universalStore];

    if (!v24)
    {

      goto LABEL_16;
    }

    [v24 adamID];
    swift_unknownObjectRelease();
    v25 = sub_59C44();

    if ((v25 & 0x8000000000000000) == 0)
    {
      swift_beginAccess();
      v26 = *(v3 + 16);
      if (*(v26 + 16))
      {
        v27 = sub_566B8(v25);
        if (v28)
        {
          v29 = (*(v26 + 56) + 16 * v27);
          v30 = *v29;
          v31 = v29[1];

          v32 = a1;
          sub_551A4(v32, v30, v31, 0, v81);
          return;
        }
      }

      v33 = [objc_allocWithZone(MTEpisodeLookupRequest) init];
      [v33 setStoreTrackId:v25];
      v34 = [*(v3 + 24) findEpisodeWithRequest:v33];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 uuid];

        if (v36)
        {
          v37 = sub_5A194();
          v39 = v38;

          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = *(v3 + 16);
          *(v3 + 16) = 0x8000000000000000;
          sub_57400(v37, v39, v25, isUniquelyReferenced_nonNull_native);
          *(v3 + 16) = v82;
          swift_endAccess();
          v41 = a1;
          sub_551A4(v41, v37, v39, 0, v81);

          return;
        }
      }

      v61 = a1;
      v62 = [v61 tracklist];
      v63 = [v62 playingItem];

      if (v63)
      {
        v83 = COERCE_DOUBLE(sub_53FDC());
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F3F0, &qword_5E428);
        sub_5108(&qword_7F3F8, &qword_7F3F0, &qword_5E428, &protocol conformance descriptor for Set<A>);
        v64 = sub_5A414();

        if ((v64 & 1) != 0 && [v61 state] != &dword_0 + 1)
        {
          [v63 duration];
          v65 = v84;
          v80 = v87;
          [v63 duration];
          v66 = 0.0;
          if (v84 > 0.0)
          {
            [v63 duration];
            v67 = v83;
            v68 = v84;
            v69 = v85;
            v70 = v86;
            sub_594E4();
            v72 = v69 + (v71 - v67) * v70;
            if (v72 >= v68)
            {
              v72 = v68;
            }

            v66 = fmax(v72, 0.0);
          }

          v73 = sub_53FDC();
          *v11 = sub_587EC(_swiftEmptyArrayStorage, v73);
          [v63 duration];
          *(v11 + v5[6]) = v83;
          *(v11 + v5[7]) = 0;
          v74 = (v11 + v5[5]);
          v75 = [v61 state] != &dword_0 + 2;
          v76 = [v61 playerPath];
          v77 = sub_55574();

          *v74 = v66;
          v74[1] = v65;
          *(v74 + 16) = v75;
          *(v74 + 17) = v80;
          *(v74 + 18) = v77 & 1;
          sub_59984();
          swift_storeEnumTagMultiPayload();
          v78 = v81;
          sub_589EC(v11, v81, type metadata accessor for PlayStateData);
          (*(v6 + 56))(v78, 0, 1, v5);
          goto LABEL_31;
        }
      }

      (*(v6 + 56))(v81, 1, 1, v5);
LABEL_31:

      return;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 identifiers];
  v20 = [v19 library];

  if (!v20)
  {

    goto LABEL_6;
  }

  swift_unknownObjectRelease();
LABEL_16:
  v42 = a1;
  v43 = [v42 tracklist];
  v44 = [v43 playingItem];

  if (!v44)
  {
LABEL_20:

    (*(v6 + 56))(v81, 1, 1, v5);
    return;
  }

  v83 = COERCE_DOUBLE(sub_53FDC());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F3F0, &qword_5E428);
  sub_5108(&qword_7F3F8, &qword_7F3F0, &qword_5E428, &protocol conformance descriptor for Set<A>);
  v45 = sub_5A414();

  if ((v45 & 1) == 0 || [v42 state] == &dword_0 + 1)
  {

    goto LABEL_20;
  }

  [v44 duration];
  v46 = v84;
  v47 = v87;
  [v44 duration];
  v48 = 0.0;
  if (v84 > 0.0)
  {
    [v44 duration];
    v49 = v83;
    v50 = v84;
    v51 = v85;
    v52 = v86;
    sub_594E4();
    v54 = v51 + (v53 - v49) * v52;
    if (v54 >= v50)
    {
      v54 = v50;
    }

    v48 = fmax(v54, 0.0);
  }

  v55 = sub_53FDC();
  *v9 = sub_587EC(_swiftEmptyArrayStorage, v55);
  [v44 duration];
  *(v9 + v5[6]) = v83;
  *(v9 + v5[7]) = 0;
  v56 = (v9 + v5[5]);
  v57 = [v42 state] != &dword_0 + 2;
  v58 = [v42 playerPath];
  v59 = sub_55574();

  *v56 = v48;
  v56[1] = v46;
  *(v56 + 16) = v57;
  *(v56 + 17) = v47;
  *(v56 + 18) = v59 & 1;
  sub_59984();
  swift_storeEnumTagMultiPayload();
  v60 = v81;
  sub_589EC(v9, v81, type metadata accessor for PlayStateData);
  (*(v6 + 56))(v60, 0, 1, v5);
}

uint64_t sub_5606C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_560AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 80);
  if (*(v10 + 16))
  {

    v11 = sub_56504(a2, a3, a4 & 1);
    if (v12)
    {
      v13 = v11;
      v14 = *(v10 + 56);
      v15 = sub_59984();
      v16 = *(v15 - 8);
      sub_58C10(v14 + *(v16 + 72) * v13, a5, &type metadata accessor for EpisodePlayState);

      return (*(v16 + 56))(a5, 0, 1, v15);
    }
  }

  v18 = sub_59984();
  return (*(*(v18 - 8) + 56))(a5, 1, 1, v18);
}

uint64_t sub_5622C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v31 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v30 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_5A974();
      sub_5340(v12, v13, v14);
      v15 = v12;
      v16 = v13;
      v32 = v14;
      sub_59BB4();
      v17 = sub_5A9A4();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      if (((*(v31 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = v2;
        v22 = *(v2 + 48) + 24 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        sub_5340(*v22, v24, v25);
        v26 = sub_59BA4();
        sub_5350(v23, v24, v25);
        if (v26)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        v2 = v21;
        if (((*(v31 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_5350(v15, v16, v32);
      v7 = v28;
      result = v29;
      v2 = v21;
      v6 = v30;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_5350(v15, v16, v32);
    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_56474(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F410, &qword_5CA30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

unint64_t sub_56504(uint64_t a1, uint64_t a2, char a3)
{
  sub_5A974();
  sub_59BB4();
  v6 = sub_5A9A4();

  return sub_566FC(a1, a2, a3 & 1, v6);
}

unint64_t sub_56590(Swift::UInt64 a1)
{
  sub_5A974();
  sub_5A994(a1);
  v2 = sub_5A9A4();

  return sub_56800(a1, v2);
}

unint64_t sub_565FC(uint64_t a1, uint64_t a2)
{
  sub_5A974();
  sub_5A1E4();
  v4 = sub_5A9A4();

  return sub_5686C(a1, a2, v4);
}

unint64_t sub_56674(uint64_t a1)
{
  v2 = v1;
  v4 = sub_5A614(*(v2 + 40));

  return sub_56924(a1, v4);
}

unint64_t sub_566B8(uint64_t a1)
{
  v2 = sub_5A964();

  return sub_56800(a1, v2);
}

unint64_t sub_566FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      sub_5340(*v8, v10, v11);
      v12 = sub_59BA4();
      sub_5350(v9, v10, v11);
      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_56800(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_5686C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_5A8E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_56924(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_5A624();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_569F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
  result = sub_5A834();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_5A614(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_56C68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F400, &unk_5E430);
  v34 = v4;
  result = sub_5A834();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_5A964();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_56EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_59984();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F458, &qword_5E468);
  v41 = v4;
  result = sub_5A834();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 24 * v22;
      v26 = *v24;
      v25 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = v23 + *(v40 + 72) * v22;
      v42 = *(v40 + 72);
      if (v41)
      {
        sub_589EC(v28, v43, &type metadata accessor for EpisodePlayState);
      }

      else
      {
        sub_58C10(v28, v43, &type metadata accessor for EpisodePlayState);
        sub_5340(v26, v25, v27);
      }

      sub_5A974();
      sub_59BB4();
      result = sub_5A9A4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 24 * v17;
      *v18 = v26;
      *(v18 + 8) = v25;
      *(v18 + 16) = v27;
      result = sub_589EC(v43, *(v9 + 56) + v42 * v17, &type metadata accessor for EpisodePlayState);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

id sub_57284(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_56674(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_569F8(v13, a3 & 1);
      v8 = sub_56674(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_4FE4(0, &unk_7ECE0, MPCPlayerPath_ptr);
        result = sub_5A914();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_57560();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

unint64_t sub_57400(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_566B8(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_56C68(v16, a4 & 1);
      result = sub_566B8(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_5A914();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_576C4();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_57560()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7D430, &unk_5E500);
  v2 = *v0;
  v3 = sub_5A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_576C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F400, &unk_5E430);
  v2 = *v0;
  v3 = sub_5A824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_5782C()
{
  v1 = v0;
  v2 = sub_59984();
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F458, &qword_5E468);
  v4 = *v0;
  v5 = sub_5A824();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v34 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 24 * v19;
        v21 = *(v4 + 48) + 24 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = v31;
        v26 = *(v32 + 72) * v19;
        sub_58C10(*(v4 + 56) + v26, v31, &type metadata accessor for EpisodePlayState);
        v27 = v33;
        v28 = *(v33 + 48) + v20;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v24;
        sub_589EC(v25, *(v27 + 56) + v26, &type metadata accessor for EpisodePlayState);
        result = sub_5340(v22, v23, v24);
        v14 = v34;
      }

      while (v34);
    }

    v17 = v10;
    v6 = v33;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v34 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_57AA4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_5A814();
LABEL_9:
  result = sub_5A734();
  *v2 = result;
  return result;
}

void *sub_57B44(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_599C4();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v31;
    a1[4] = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = (&dword_0 + 1);
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_57DE8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_5340(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_5340(v19, v20, v21);
      result = v14;
      v22 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_57F48(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_5340(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_5340(v19, v20, v21);
      result = v14;
      v22 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v22)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_580A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5A814();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_5A814();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_5108(&qword_7F5B0, &qword_7E958, &unk_5DA90, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7E958, &unk_5DA90);
            v9 = sub_48930(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4FE4(0, &qword_7E950, NSError_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_5825C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_5A814();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_5A814();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_5108(&qword_7E558, &unk_7F5A0, &qword_5D8F0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F5A0, &qword_5D8F0);
            v9 = sub_485CC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_4FE4(0, &qword_7E4E8, MPCPlayerResponseItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_58434(uint64_t a1, uint64_t a2)
{
  result = sub_5848C(&qword_7F1C0, a2, type metadata accessor for PlayStateDataSource, &protocol conformance descriptor for PlayStateDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_5848C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_58520@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_586B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_586D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t type metadata accessor for PlayStateData(uint64_t a1)
{
  result = qword_7F618;
  if (!qword_7F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5875C(uint64_t *a1, uint64_t *a2)
{
  if (sub_5622C(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for PlayStateData(0), (sub_59974()) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    v5 = *(a1 + *(v4 + 28)) ^ *(a2 + *(v4 + 28)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_587EC(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      sub_5340(v6, v5, *v3);
      sub_B3F0(v8, v6, v5, v4);
      sub_5350(v8[0], v8[1], v9);
      v3 += 24;
      --v2;
    }

    while (v2);
    return v10;
  }

  return a2;
}

uint64_t sub_58880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F420, &qword_5E448);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_588F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_58930()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_58968(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_7F418, &qword_5E440);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_589EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_58A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_59984();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_58AB8(uint64_t a1)
{
  v2 = type metadata accessor for PlayStateData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_58B14()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_58B5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1, a1[8]);
  *a2 = result;
  return result;
}

uint64_t sub_58B9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_58C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_58C78(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_58D18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_59984();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_58DD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_59984();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_58E7C(uint64_t a1)
{
  sub_58F18(319);
  if (v1 <= 0x3F)
  {
    sub_59984();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_58F18(uint64_t a1)
{
  if (!qword_7F628)
  {
    sub_4F28();
    v1 = sub_5A404();
    if (!v2)
    {
      atomic_store(v1, &qword_7F628);
    }
  }
}

uint64_t SynchronizedEpisodeStateDataSource.performExpectedEpisodeStateUpdates(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_59FE4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (*(a4 + 24))(a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7F448, qword_5E550);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_5BC80;
  sub_59FD4();
  v18 = v13;
  sub_4C690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_7E8F0, &unk_5DBF0);
  sub_4FD9C();
  sub_5A694();
  v16 = a1;
  v17 = a2;
  sub_5A514();

  return (*(v9 + 8))(v11, v8);
}

void SynchronizedEpisodeStateDataSource.state(for:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 24))(a4, a5);
  swift_getAssociatedTypeWitness();
  sub_5A664();
  sub_5A524();
}

uint64_t sub_592A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 16))(a5, a6);
  sub_5340(a2, a3, a4 & 1);
  swift_getAssociatedTypeWitness();
  sub_4F28();
  sub_5A134();

  return sub_5350(a2, a3, a4 & 1);
}
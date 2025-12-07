void *sub_2331E2F8C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_23328DC3C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void sub_2331E3028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_233143EE0(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = *(v7 + 2);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 2) = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

unint64_t sub_2331E3128()
{
  result = qword_280D39BB0;
  if (!qword_280D39BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DDE1A98, &unk_2332985F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D39BB0);
  }

  return result;
}

uint64_t sub_2331E318C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

TextToSpeechVoiceBankingSupport::TTSVBDataStore::Configuration_optional __swiftcall TTSVBDataStore.Configuration.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TTSVBDataStore.Configuration.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D656144636E7973;
  }

  else
  {
    return 0x6E65696C43637078;
  }
}

uint64_t sub_2331E33A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D656144636E7973;
  }

  else
  {
    v3 = 0x6E65696C43637078;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x6D656144636E7973;
  }

  else
  {
    v5 = 0x6E65696C43637078;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23328E54C();
  }

  return v8 & 1;
}

uint64_t sub_2331E3458()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331E34E4(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_2331E355C(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331E35E4@<X0>(char *a2@<X8>)
{
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2331E3644(uint64_t *a1@<X8>)
{
  v2 = 0x6E65696C43637078;
  if (*v1)
  {
    v2 = 0x6D656144636E7973;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TTSVBDataStore.XPCServiceConfig.storeURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23328CC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id TTSVBDataStore.XPCServiceConfig.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBDataStore.XPCServiceConfig(0) + 20));

  return v1;
}

uint64_t TTSVBDataStore.XPCServiceConfig.options.getter()
{
  type metadata accessor for TTSVBDataStore.XPCServiceConfig(0);
}

uint64_t TTSVBDataStore.XPCServiceConfig.serviceName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBDataStore.XPCServiceConfig(0) + 28));

  return v1;
}

uint64_t TTSVBDataStore.XPCServiceConfig.init(storeURL:model:serviceName:options:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6, a1, v12);
  v14 = type metadata accessor for TTSVBDataStore.XPCServiceConfig(0);
  *(a6 + v14[5]) = a2;
  v15 = (a6 + v14[7]);
  *v15 = a3;
  v15[1] = a4;
  sub_23328D98C();
  v16 = a2;

  v17 = MEMORY[0x277D837D0];
  sub_23328E1EC();
  v22 = v17;
  *&v21 = a3;
  *(&v21 + 1) = a4;
  sub_233145134(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2331EAB7C(v20, v23, isUniquelyReferenced_nonNull_native);

  (*(v13 + 8))(a1, v12);
  result = sub_2331EACC8(v23);
  *(a6 + v14[6]) = a5;
  return result;
}

uint64_t TTSVBDataStore.eventPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E38, &qword_23329B340);
  sub_23315246C(qword_280D39BC8, &qword_27DDE2E38, &qword_23329B340, MEMORY[0x277CBCE20]);
  return sub_23328D76C();
}

unsigned __int8 *sub_2331E3A78(unsigned __int8 *a1, char *a2)
{
  v58 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_23328D6EC();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_23328DEAC();
  v6 = *(v54 - 1);
  MEMORY[0x28223BE20](v54);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328DE7C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_23328D80C();
  MEMORY[0x28223BE20](v10 - 8);
  v53 = *a1;
  v11 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_eventSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E38, &qword_23329B340);
  swift_allocObject();
  *&v2[v11] = sub_23328D72C();
  v51 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue;
  v12 = sub_233144EEC(0, &qword_280D3A220, 0x277D85C78);
  v49 = "com.apple.aps.voicebankingd";
  v50 = v12;
  sub_23328D7EC();
  v60 = MEMORY[0x277D84F90];
  v48[2] = sub_2331CCB20(&qword_280D3A230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  sub_23315246C(&qword_280D3A250, &unk_27DDE2B80, qword_233290290, MEMORY[0x277D83970]);
  sub_23328E14C();
  v13 = *MEMORY[0x277D85260];
  v14 = *(v6 + 104);
  v48[0] = v6 + 104;
  v14(v8, v13, v54);
  *&v2[v51] = sub_23328DEDC();
  v51 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_calloutQueue;
  v49 = "anking.store.private";
  sub_23328D7EC();
  v60 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v14(v8, v13, v54);
  *&v2[v51] = sub_23328DEDC();
  v15 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_cloudStoreName[0]];
  *v15 = 0x6563696F56535454;
  v15[1] = 0xEF676E696B6E6142;
  v16 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_localStoreName];
  *v16 = 0xD000000000000014;
  v16[1] = 0x80000002332A9E50;
  v17 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_managedObjectModelName];
  *v17 = 0x6563696F56535454;
  v17[1] = 0xEF676E696B6E6142;
  v18 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___cloudDatastoreURL;
  v19 = sub_23328CC9C();
  v20 = *(v19 - 8);
  v21 = v20[7];
  v21(&v2[v18], 1, 1, v19);
  v21(&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL], 1, 1, v19);
  v21(&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___managedObjectModelURL], 1, 1, v19);
  *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container] = 0;
  v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_shouldAttemptLoad] = 1;
  v22 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_loadError;
  v23 = type metadata accessor for TTSVBError(0);
  (*(*(v23 - 8) + 56))(&v2[v22], 1, 1, v23);
  v24 = &v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_persistentHistoryProcessingDatesPreferenceKey];
  *v24 = 0xD000000000000020;
  v24[1] = 0x80000002332A9E70;
  v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration] = v53;
  v25 = v20[2];
  v54 = v2;
  v26 = v58;
  (v25)(&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_voiceBankingRootURL], v58, v19);
  v27 = sub_233225440();
  v28 = (*(v56 + 16))(v55, v27, v57);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25(v31, v26, v19, v29);
  v32 = sub_23328D6CC();
  v33 = sub_23328DE1C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v60 = v51;
    *v34 = 136315650;
    if (v53)
    {
      v35 = 0x6D656144636E7973;
    }

    else
    {
      v35 = 0x6E65696C43637078;
    }

    if (v53)
    {
      v36 = 0xEA00000000006E6FLL;
    }

    else
    {
      v36 = 0xE900000000000074;
    }

    v37 = sub_23311A8F4(v35, v36, &v60);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = sub_23328CC6C();
    v40 = v39;
    v41 = v20[1];
    v41(v31, v19);
    v42 = sub_23311A8F4(v38, v40, &v60);

    *(v34 + 14) = v42;
    *(v34 + 22) = 2080;
    if (TTSVBIsPersonalVoiceVersion2Enabled())
    {
      v43 = 50;
    }

    else
    {
      v43 = 49;
    }

    v44 = sub_23311A8F4(v43, 0xE100000000000000, &v60);

    *(v34 + 24) = v44;
    _os_log_impl(&dword_233109000, v32, v33, "Initializing datastore with config=%s rootURL=%s PersonalVoiceVersion=%s", v34, 0x20u);
    v45 = v51;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v45, -1, -1);
    MEMORY[0x23839CFD0](v34, -1, -1);
  }

  else
  {

    v41 = v20[1];
    v41(v31, v19);
  }

  (*(v56 + 8))(v55, v57);
  v59.receiver = v54;
  v59.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v59, sel_init);
  v41(v58, v19);
  return v46;
}

uint64_t sub_2331E42F8@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6 - 8);
  sub_233121D34(v3 + v5, &v16[-v7], &qword_27DDE19A0, &unk_233290360);
  v8 = sub_23328CC9C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&v16[-v7], 1, v8) != 1)
  {
    return (*(v9 + 32))(a3, &v16[-v7], v8);
  }

  v10 = sub_233121E04(&v16[-v7], &qword_27DDE19A0, &unk_233290360);
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23328CBEC();
  sub_23328CBFC();
  v13 = (*(v9 + 8))(v12, v8);
  v14 = MEMORY[0x28223BE20](v13);
  (*(v9 + 16))(&v16[-v7], a3, v8, v14);
  (*(v9 + 56))(&v16[-v7], 0, 1, v8);
  swift_beginAccess();
  sub_2331BD410(&v16[-v7], v3 + v5, &qword_27DDE19A0, &unk_233290360);
  return swift_endAccess();
}

uint64_t sub_2331E458C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___managedObjectModelURL;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  sub_233121D34(v1 + v3, &v24 - v6, &qword_27DDE19A0, &unk_233290360);
  v8 = sub_23328CC9C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_233121E04(v7, &qword_27DDE19A0, &unk_233290360);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_managedObjectModelName);
  v24 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_managedObjectModelName + 8);
  v25 = v12;
  v13 = sub_23328D95C();
  v14 = sub_23328D95C();
  v15 = [v11 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    sub_23328CC4C();

    v17 = MEMORY[0x28223BE20](v16);
    v18 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v18, a1, v8, v17);
    (*(v9 + 56))(v18, 0, 1, v8);
    swift_beginAccess();
    sub_2331BD410(v18, v1 + v3, &qword_27DDE19A0, &unk_233290360);
    return swift_endAccess();
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_23328E24C();

    v26 = 0xD000000000000014;
    v27 = 0x80000002332AA480;
    MEMORY[0x23839B7E0](v25, v24);
    MEMORY[0x23839B7E0](0xD00000000000001ALL, 0x80000002332AA4A0);
    v20 = [v11 bundlePath];
    v21 = sub_23328D98C();
    v23 = v22;

    MEMORY[0x23839B7E0](v21, v23);

    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

id sub_2331E491C()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container);
  }

  else
  {
    v4 = sub_2331E4A0C();
    v5 = 0x277CBE470;
    if (!*(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration))
    {
      v5 = 0x277CBE4A0;
    }

    v6 = objc_allocWithZone(*v5);
    v7 = sub_23328D95C();
    v8 = [v6 initWithName:v7 managedObjectModel:v4];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_2331E4A0C()
{
  v0 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23328CC9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2331E458C(v9);
  v10 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v11 = sub_23328CBCC();
  v12 = [v10 initWithContentsOfURL_];

  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    sub_2331EB004(v12);
    return v12;
  }

  else
  {
    v15 = xmmword_23329B320;
    v16 = 3;
    sub_2331E458C(v2);
    swift_storeEnumTagMultiPayload();
    TTSVBError.init(_:_:_:)(&v15, v2, 0, v5);
    TTSVBError.description.getter();
    sub_2331EC8A4(v5, type metadata accessor for TTSVBError);
    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2331E4D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v21 = a1;
  v5 = sub_23328D7CC();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23328D80C();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v24 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_calloutQueue);
  sub_233121D34(v21, &v20 - v13, &unk_27DDE25D0, &unk_233290330);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 16) = v22;
  *(v16 + 24) = v17;
  sub_2331ED6BC(v14, v16 + v15);
  aBlock[4] = sub_2331BE38C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_85;
  v18 = _Block_copy(aBlock);

  sub_23328D7DC();
  v27 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v7, v18);
  _Block_release(v18);
  (*(v26 + 8))(v7, v5);
  (*(v8 + 8))(v10, v25);
}

TextToSpeechVoiceBankingSupport::TTSVBDataStore::OperationContext_optional __swiftcall TTSVBDataStore.OperationContext.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2331E50F0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_2331E511C(_BYTE *a1)
{
  if (*a1)
  {

    return sub_2331E5184();
  }

  else
  {
    v2 = sub_2331E491C();
    v3 = [v2 viewContext];

    return v3;
  }
}

id sub_2331E5184()
{
  v0 = sub_2331E491C();
  v1 = [v0 newBackgroundContext];

  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000010, 0x80000002332A9F60);
  sub_23328CD0C();
  sub_23328DCDC();
  v2 = sub_23328D95C();

  [v1 setName_];

  v3 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v1 setMergePolicy_];

  return v1;
}

void sub_2331E52F8(void *a1)
{
  v2 = type metadata accessor for TTSVBDataStoreEvent(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 object])
  {
    sub_23328E0DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_233144EEC(0, &qword_280D39B80, 0x277CBE440);
    if (swift_dynamicCast())
    {
      v6 = v9[1];
      sub_233144EEC(0, &qword_27DDE2B00, 0x277D82BB8);
      v7 = sub_2331E491C();
      v8 = [v7 viewContext];

      LOBYTE(v7) = sub_23328DFDC();
      if (v7)
      {
        sub_23328C90C();
        swift_storeEnumTagMultiPayload();

        sub_23328D71C();

        sub_2331EC8A4(v5, type metadata accessor for TTSVBDataStoreEvent);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_233121E04(v12, &qword_27DDE2660, &qword_233298100);
  }
}

uint64_t TTSVBDataStoreEvent.MergeEvent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23328C93C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2331E55C8(uint64_t a1)
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTSVBDataStoreEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_23328C93C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328C90C();
  TTSVBDataStoreEvent.CloudKitSyncEvent.init(_:)(v13, v10);
  swift_storeEnumTagMultiPayload();
  v14 = sub_233225440();
  (*(v2 + 16))(v4, v14, v1);
  sub_2331ED654(v10, v7, type metadata accessor for TTSVBDataStoreEvent);
  v15 = sub_23328D6CC();
  v16 = sub_23328DE1C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v2;
    v28 = v18;
    v19 = v18;
    *v17 = 136315138;
    v20 = TTSVBDataStoreEvent.description.getter();
    v26 = v1;
    v22 = v21;
    sub_2331EC8A4(v7, type metadata accessor for TTSVBDataStoreEvent);
    v23 = sub_23311A8F4(v20, v22, &v28);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_233109000, v15, v16, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23839CFD0](v19, -1, -1);
    MEMORY[0x23839CFD0](v17, -1, -1);

    (*(v27 + 8))(v4, v26);
  }

  else
  {

    sub_2331EC8A4(v7, type metadata accessor for TTSVBDataStoreEvent);
    (*(v2 + 8))(v4, v1);
  }

  sub_23328D71C();

  return sub_2331EC8A4(v10, type metadata accessor for TTSVBDataStoreEvent);
}

uint64_t TTSVBDataStoreEvent.CloudKitSyncEvent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23328C93C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  result = sub_23328C92C();
  if (result)
  {
    v7 = result;
    *&v15 = sub_23328D98C();
    *(&v15 + 1) = v8;

    sub_23328E1EC();
    if (*(v7 + 16))
    {
      v9 = sub_2331EA6D0(v14);
      if (v10)
      {
        v11 = v9;

        sub_23311B0C0(*(v7 + 56) + 32 * v11, v13);

        (*(v5 + 8))(a1, v4);
        sub_2331EACC8(v14);
        sub_233145134(v13, &v15);
        sub_233144EEC(0, &qword_280D39B70, 0x277CBE480);
        swift_dynamicCast();
        result = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0);
        *(a2 + *(result + 20)) = v12;
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TTSVBDataStoreEvent.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTSVBDataStoreEvent.MergeEvent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTSVBDataStoreEvent(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_233297B30;
  strcpy((v11 + 32), "DataStoreEvent");
  *(v11 + 47) = -18;
  v34 = v11;
  sub_2331ED654(v1, v10, type metadata accessor for TTSVBDataStoreEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v19 = *v10;
    v20 = v10[1];
    if (EnumCaseMultiPayload == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_233297630;
      v22 = 0x80000002332A9FA0;
      v23 = 0xD000000000000013;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_233297630;
      v22 = 0x80000002332A9F80;
      v23 = 0xD000000000000012;
    }

    *(inited + 32) = v23;
    *(inited + 40) = v22;
    *(inited + 48) = v19;
    *(inited + 56) = v20;
    sub_2331EA3B4(inited);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2331EC944(v10, v4, type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent);
    v24 = TTSVBDataStoreEvent.CloudKitSyncEvent.description.getter();
    v26 = v25;
    v28 = *(v11 + 16);
    v27 = *(v11 + 24);
    if (v28 >= v27 >> 1)
    {
      v11 = sub_233143EE0((v27 > 1), v28 + 1, 1, v11);
    }

    sub_2331EC8A4(v4, type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent);
    *(v11 + 16) = v28 + 1;
    v29 = v11 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    v34 = v11;
  }

  else
  {
    sub_2331EC944(v10, v7, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
    v13 = sub_233143EE0(1, 2, 1, v11);
    *(v13 + 2) = 2;
    strcpy(v13 + 48, "Merge Objects");
    *(v13 + 31) = -4864;
    v34 = v13;
    type metadata accessor for TTSVBLocalVoiceMO();
    v14 = [swift_getObjCClassFromMetadata() entity];
    v15 = TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(v14);

    if (v15)
    {
      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = sub_233143EE0((v16 > 1), v17 + 1, 1, v13);
      }

      sub_2331EC8A4(v7, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = 0xD000000000000011;
      *(v18 + 5) = 0x80000002332A9FC0;
      v34 = v13;
    }

    else
    {
      sub_2331EC8A4(v7, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
    }
  }

  v33 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v30 = sub_23328D8FC();

  return v30;
}

uint64_t sub_2331E604C(void *a1, const char *a2, uint64_t a3, ...)
{
  v4 = a3;
  v40 = a2;
  v5 = v3;
  v7 = type metadata accessor for TTSVBDataStoreEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_23328D6EC();
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 userInfo];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = sub_23328D89C();

  v42 = sub_23328D98C();
  v43 = v17;
  sub_23328E1EC();
  if (!*(v16 + 16) || (v18 = sub_2331EA6D0(v44), (v19 & 1) == 0))
  {

    sub_2331EACC8(v44);
LABEL_8:
    v45 = 0u;
    v46 = 0u;
    goto LABEL_9;
  }

  sub_23311B0C0(*(v16 + 56) + 32 * v18, &v45);
  sub_2331EACC8(v44);

  if (!*(&v46 + 1))
  {
LABEL_9:
    sub_233121E04(&v45, &qword_27DDE2660, &qword_233298100);
    goto LABEL_10;
  }

  sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v20 = v44[0];
    v21 = [v44[0] unsignedIntegerValue];

    v22 = v41;
    goto LABEL_11;
  }

LABEL_10:
  v22 = v41;
  v21 = 0;
LABEL_11:
  v23 = sub_233225440();
  (*(v10 + 16))(v13, v23, v22);
  v24 = sub_23328D6CC();
  v25 = sub_23328DE4C();
  if (!os_log_type_enabled(v24, v25))
  {

    (*(v10 + 8))(v13, v22);
    goto LABEL_32;
  }

  v38[0] = v5;
  v38[1] = v7;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v44[0] = v27;
  *v26 = 136315138;
  v39 = v4;
  if (v21 > 3)
  {
    if (v21 <= 5)
    {
      if (v21 == 4)
      {
        v28 = 0xD000000000000010;
        v29 = 0x80000002332AA020;
      }

      else
      {
        v28 = 0x6C654420656E6F5ALL;
        v29 = 0xEC00000064657465;
      }

      goto LABEL_31;
    }

    if (v21 == 6)
    {
      v29 = 0x80000002332AA000;
      v31 = 5;
      goto LABEL_28;
    }

    if (v21 == 7)
    {
      v29 = 0x80000002332A9FE0;
      v31 = 11;
LABEL_28:
      v28 = v31 | 0xD000000000000010;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (v21 != 1)
  {
    if (v21 == 2)
    {
      v30 = 0x74756F676F4CLL;
    }

    else
    {
      if (v21 != 3)
      {
LABEL_25:
        v28 = 0x206E776F6E6B6E55;
        v29 = 0xEF746C7561666544;
        goto LABEL_31;
      }

      v30 = 0x65676E616843;
    }

    v29 = v30 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    v28 = 0x20746E756F636341;
    goto LABEL_31;
  }

  v28 = 0x20746E756F636341;
  v29 = 0xED00006E69676F4CLL;
LABEL_31:
  v32 = sub_23311A8F4(v28, v29, v44);

  *(v26 + 4) = v32;
  _os_log_impl(&dword_233109000, v24, v25, v40, v26, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v27);
  MEMORY[0x23839CFD0](v27, -1, -1);
  MEMORY[0x23839CFD0](v26, -1, -1);

  (*(v10 + 8))(v13, v41);
LABEL_32:
  if (v21 <= 3)
  {
    switch(v21)
    {
      case 1:
        v33 = 0x20746E756F636341;
        v34 = 0xED00006E69676F4CLL;
        goto LABEL_50;
      case 2:
        v35 = 0x74756F676F4CLL;
        break;
      case 3:
        v35 = 0x65676E616843;
        break;
      default:
        goto LABEL_44;
    }

    v34 = v35 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    v33 = 0x20746E756F636341;
    goto LABEL_50;
  }

  if (v21 > 5)
  {
    if (v21 == 6)
    {
      v34 = 0x80000002332AA000;
      v36 = 5;
      goto LABEL_47;
    }

    if (v21 == 7)
    {
      v34 = 0x80000002332A9FE0;
      v36 = 11;
LABEL_47:
      v33 = v36 | 0xD000000000000010;
      goto LABEL_50;
    }

LABEL_44:
    v33 = 0x206E776F6E6B6E55;
    v34 = 0xEF746C7561666544;
    goto LABEL_50;
  }

  if (v21 == 4)
  {
    v33 = 0xD000000000000010;
    v34 = 0x80000002332AA020;
  }

  else
  {
    v33 = 0x6C654420656E6F5ALL;
    v34 = 0xEC00000064657465;
  }

LABEL_50:
  *v9 = v33;
  v9[1] = v34;
  swift_storeEnumTagMultiPayload();

  sub_23328D71C();

  return sub_2331EC8A4(v9, type metadata accessor for TTSVBDataStoreEvent);
}

uint64_t sub_2331E6708()
{
  v1 = v0;
  v2 = sub_23328CE1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = aBlock - v7;
  sub_2331E8350(aBlock - v7);
  v9 = *(v3 + 48);
  if (v9(v8, 1, v2) == 1)
  {
    sub_23328CD7C();
    if (v9(v8, 1, v2) != 1)
    {
      sub_233121E04(v8, &qword_27DDE1A18, &unk_233297730);
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
  }

  v10 = objc_opt_self();
  v11 = sub_23328CD9C();
  v12 = [v10 fetchHistoryAfterDate_];

  v13 = sub_2331E491C();
  v14 = [v13 viewContext];

  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v12;
  v15[4] = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2331ED5EC;
  *(v16 + 24) = v15;
  aBlock[4] = sub_2331B9BC4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_79;
  v17 = _Block_copy(aBlock);
  v18 = v14;
  v19 = v12;
  v20 = v1;

  [v18 performBlockAndWait_];
  _Block_release(v17);

  (*(v3 + 8))(v5, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331E6AA8()
{
  v32 = MEMORY[0x277D84F90];
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration);
  v2 = sub_23328CC9C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v4 + 8);
  if (v1)
  {
    v31 = v0;
    sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___cloudDatastoreURL, &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v7 = sub_23328CBCC();
    v8 = [v6 initWithURL_];

    v9 = *v5;
    (*v5)(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_2331E81F4(v8);
    v10 = sub_23328D95C();
    [v8 setConfiguration_];

    v11 = objc_allocWithZone(MEMORY[0x277CBE3A0]);
    v12 = sub_23328D95C();
    v13 = [v11 initWithContainerIdentifier_];

    v14 = sub_23328D95C();
    [v13 setApsConnectionMachServiceName_];

    [v13 setAutomaticallyScheduleImportAndExportOperations_];
    [v13 setUseDeviceToDeviceEncryption_];
    [v13 setAutomaticallyDownloadFileBackedFutures_];
    v15 = [objc_allocWithZone(MEMORY[0x277CBE398]) initWithOptions_];
    [v8 setMirroringDelegate_];
    v16 = v8;
    MEMORY[0x23839B920]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23328DC1C();
    }

    v17 = sub_23328DC4C();
    MEMORY[0x28223BE20](v17);
    v18 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, v18);
    v19 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v20 = sub_23328CBCC();
    v21 = [v19 initWithURL_];

    v9(v18, v2);
    sub_2331E81F4(v21);
    v22 = sub_23328D95C();
    [v21 setConfiguration_];

    v23 = v21;
    MEMORY[0x23839B920]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23328DC1C();
    }

    sub_23328DC4C();
  }

  else
  {
    sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = objc_allocWithZone(MEMORY[0x277CBE4E0]);
    v25 = sub_23328CBCC();
    v26 = [v24 initWithURL_];

    (*v5)(&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    sub_2331E81F4(v26);
    v27 = sub_23328D95C();
    [v26 setConfiguration_];

    [v26 setType_];
    v28 = sub_23328D95C();
    [v26 setOption:v28 forKey:*MEMORY[0x277CBE340]];

    sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
    v29 = sub_23328DFBC();
    [v26 setOption:v29 forKey:*MEMORY[0x277CBE328]];

    v15 = v26;
    MEMORY[0x23839B920]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23328DC1C();
    }

    sub_23328DC4C();
  }

  return v32;
}

uint64_t sub_2331E7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v9 = sub_23328D7CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D80C();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue];
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v20[0];
  v17 = _Block_copy(aBlock);
  v18 = v5;

  sub_23328D7DC();
  v22 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_2331E734C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23328D7CC();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D80C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2331E77B4();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  aBlock[4] = sub_2331ED5E4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_70;
  v12 = _Block_copy(aBlock);

  sub_23328D7DC();
  v17 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

void sub_2331E77B4()
{
  v63[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  MEMORY[0x28223BE20](v2);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = sub_23328D83C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  v18 = sub_23328D85C();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
  }

  v58 = v7;
  v60 = v1;
  v19 = sub_2331E491C();
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = sub_233225440();
    v23 = v61;
    v24 = *(v62 + 16);
    v24(v10, v22, v61);
    v25 = sub_23328D6CC();
    v26 = sub_23328DE1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_233109000, v25, v26, "Will call initializeCloudKitSchema()", v27, 2u);
      v28 = v27;
      v23 = v61;
      MEMORY[0x23839CFD0](v28, -1, -1);
    }

    v29 = v10;
    v30 = *(v62 + 8);
    v62 += 8;
    v30(v29, v23);
    v63[0] = 0;
    v31 = [v21 initializeCloudKitSchemaWithOptions:4 error:v63];
    v32 = v63[0];
    if (v31)
    {
      v33 = v58;
      v24(v58, v22, v23);
      v34 = v32;
      v35 = sub_23328D6CC();
      v36 = sub_23328DE1C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v23;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_233109000, v35, v36, "Call to initializeCloudKitSchema() was successful", v38, 2u);
        MEMORY[0x23839CFD0](v38, -1, -1);

        v39 = v33;
        v40 = v37;
      }

      else
      {

        v39 = v33;
        v40 = v23;
      }

      v30(v39, v40);
    }

    else
    {
      v41 = v63[0];
      v42 = sub_23328CA7C();

      swift_willThrow();
      v43 = v59;
      v24(v59, v22, v23);
      v44 = v42;
      v45 = sub_23328D6CC();
      v46 = sub_23328DE3C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v61 = v30;
        v49 = v48;
        v63[0] = v48;
        *v47 = 136315138;
        v50 = sub_23328CA6C();
        v51 = v23;
        v52 = [v50 debugDescription];

        v53 = sub_23328D98C();
        v55 = v54;

        v56 = sub_23311A8F4(v53, v55, v63);

        *(v47 + 4) = v56;
        _os_log_impl(&dword_233109000, v45, v46, "Error occurred calling initializeCloudKitSchema(). %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x23839CFD0](v49, -1, -1);
        MEMORY[0x23839CFD0](v47, -1, -1);

        v61(v59, v51);
      }

      else
      {

        v30(v43, v23);
      }

      swift_willThrow();
    }
  }

  else
  {
  }
}

uint64_t sub_2331E7D44(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_233121E04(v4, &unk_27DDE25D0, &unk_233290330);
}

uint64_t sub_2331E7E00(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_2331524CC(&v11);
  v9 = v11;
  v10 = v12;
  static TTSVBError.map(_:_:)(a3, &v9, v7);
  sub_2331220AC(v9, *(&v9 + 1), v10);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_233121E04(v7, &unk_27DDE25D0, &unk_233290330);
}

uint64_t sub_2331E7F08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23328CC9C();
  v22 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, v5);
  v23 = sub_2331E4A0C();
  v24 = 0x80000002332A9DB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E50, &qword_23329B348);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233290950;
  v29 = sub_23328D98C();
  v30 = v7;
  v8 = MEMORY[0x277D837D0];
  sub_23328E1EC();
  v9 = MEMORY[0x277D839B0];
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v29 = sub_23328D98C();
  v30 = v10;
  sub_23328E1EC();
  *(inited + 168) = v9;
  *(inited + 144) = 1;
  v29 = sub_23328D98C();
  v30 = v11;
  sub_23328E1EC();
  *(inited + 240) = v9;
  *(inited + 216) = 1;
  v12 = sub_2331ECCA8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E58, &unk_23329B350);
  swift_arrayDestroy();
  (*(v3 + 16))(a1, v5, v2);
  v13 = type metadata accessor for TTSVBDataStore.XPCServiceConfig(0);
  v15 = v23;
  v14 = v24;
  *(a1 + v13[5]) = v23;
  v16 = (a1 + v13[7]);
  *v16 = 0xD00000000000001CLL;
  v16[1] = v14;
  *&v27 = sub_23328D98C();
  *(&v27 + 1) = v17;
  v18 = v15;
  sub_23328E1EC();
  v28 = v8;
  *&v27 = 0xD00000000000001CLL;
  *(&v27 + 1) = v14;
  sub_233145134(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v12;
  sub_2331EAB7C(v26, &v29, isUniquelyReferenced_nonNull_native);

  sub_2331EACC8(&v29);
  result = (*(v3 + 8))(v5, v22);
  *(a1 + v13[6]) = v25;
  return result;
}

void sub_2331E81F4(void *a1)
{
  [a1 setOption:*MEMORY[0x277CCA1A0] forKey:*MEMORY[0x277CBE240]];
  sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  v2 = sub_23328DFBC();
  [a1 setOption:v2 forKey:*MEMORY[0x277CBE210]];

  v3 = sub_23328DFBC();
  [a1 setOption:v3 forKey:*MEMORY[0x277CBE270]];

  v4 = sub_23328DFBC();
  [a1 setOption:v4 forKey:*MEMORY[0x277CBE338]];

  v5 = sub_23328DFBC();
  [a1 setOption:v5 forKey:*MEMORY[0x277CBE1D8]];

  v6 = sub_23328DFBC();
  [a1 setOption:v6 forKey:*MEMORY[0x277CBE178]];
}

uint64_t sub_2331E8350@<X0>(uint64_t a1@<X8>)
{
  v2 = *sub_233165CA0();

  v3 = sub_23328D95C();

  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    v22 = sub_23328CE1C();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }

  v5 = sub_23328D89C();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25[-v7];
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (!v10)
  {
    v11 = [objc_opt_self() processInfo];
    v10 = [v11 processName];
  }

  v12 = sub_23328D98C();
  v14 = v13;

  if (!*(v5 + 16))
  {

    goto LABEL_12;
  }

  v15 = sub_233144260(v12, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_12:

    v18 = sub_23328CE1C();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
LABEL_13:
    sub_233121E04(v8, &qword_27DDE1A18, &unk_233297730);
    sub_23328CE1C();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  sub_23311B0C0(*(v5 + 56) + 32 * v15, v25);

  v18 = sub_23328CE1C();
  v19 = swift_dynamicCast();
  v20 = *(v18 - 8);
  v21 = *(v20 + 56);
  v21(v8, v19 ^ 1u, 1, v18);
  if ((*(v20 + 48))(v8, 1, v18) == 1)
  {
    goto LABEL_13;
  }

  (*(v20 + 32))(a1, v8, v18);
  return v21(a1, 0, 1, v18);
}

void sub_2331E874C(void *a1, uint64_t a2, id *a3)
{
  v88 = a3;
  v94 = *MEMORY[0x277D85DE8];
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v80 - v11;
  *&v93[0] = 0;
  v89 = a1;
  v13 = [a1 executeRequest:a2 error:{v93, v10}];
  v14 = *&v93[0];
  if (v13)
  {
    v15 = v13;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {
      v35 = v14;

      return;
    }

    v17 = v16;
    v18 = v14;
    if ([v17 result])
    {
      sub_23328E0DC();
      swift_unknownObjectRelease();
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
    }

    v93[0] = v91;
    v93[1] = v92;
    if (!*(&v92 + 1))
    {

      sub_233121E04(v93, &qword_27DDE2660, &qword_233298100);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EA0, &qword_23329B690);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v36 = v90;
    if (v90 >> 62)
    {
      v37 = sub_23328E19C();
      if (v37)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v37 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
LABEL_15:
        v81 = v12;
        v82 = v6;
        v83 = v5;
        if (v37 < 1)
        {
          __break(1u);
        }

        v80 = v15;
        v38 = 0;
        v84 = v8;
        v85 = v36 & 0xC000000000000001;
        v86 = v37;
        v87 = v36;
        do
        {
          if (v85)
          {
            v39 = MEMORY[0x23839BFC0](v38, v36);
          }

          else
          {
            v39 = v36[v38 + 4];
          }

          v40 = v39;
          ++v38;
          v41 = sub_23328C93C();
          v42 = *(v41 - 8);
          v43 = MEMORY[0x28223BE20](v41);
          v45 = &v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
          v46 = [v40 objectIDNotification];
          sub_23328C90C();

          v47 = sub_23328C8FC();
          [v89 mergeChangesFromContextDidSaveNotification_];

          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
          v49 = MEMORY[0x28223BE20](v48 - 8);
          v51 = &v80 - v50;
          v52 = [v40 timestamp];
          sub_23328CDDC();

          v53 = sub_23328CE1C();
          v54 = *(v53 - 8);
          (*(v54 + 56))(v51, 0, 1, v53);
          sub_2331E9088(v51);

          (*(v42 + 8))(v45, v41);
          v36 = v87;
        }

        while (v86 != v38);

        v87 = &v80;
        v56 = *(v54 + 64);
        MEMORY[0x28223BE20](v55);
        v57 = &v80 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CDBC();
        v58 = sub_233225440();
        v59 = v81;
        v6 = v82;
        v60 = (*(v82 + 16))(v81, v58, v83);
        v88 = &v80;
        v61 = MEMORY[0x28223BE20](v60);
        v62 = v57;
        (*(v54 + 16))(v57, v57, v53, v61);
        v63 = sub_23328D6CC();
        v64 = sub_23328DE2C();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v93[0] = v66;
          *v65 = 136315138;
          v67 = sub_23328CDFC();
          v86 = v57;
          v69 = v68;
          v70 = *(v54 + 8);
          v70(v62, v53);
          v71 = sub_23311A8F4(v67, v69, v93);
          v57 = v86;

          *(v65 + 4) = v71;
          _os_log_impl(&dword_233109000, v63, v64, "Deleting all history items older than one year %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          v72 = v66;
          v6 = v82;
          MEMORY[0x23839CFD0](v72, -1, -1);
          MEMORY[0x23839CFD0](v65, -1, -1);

          (*(v6 + 8))(v81, v83);
        }

        else
        {

          v70 = *(v54 + 8);
          v70(v57, v53);
          (*(v6 + 8))(v59, v83);
        }

        v73 = objc_opt_self();
        v74 = sub_23328CD9C();
        v75 = [v73 deleteHistoryBeforeDate_];

        *&v93[0] = 0;
        v76 = [v89 executeRequest:v75 error:v93];
        if (v76)
        {
          v77 = v76;
          v78 = *&v93[0];

          v70(v57, v53);
          return;
        }

        v79 = *&v93[0];
        v20 = sub_23328CA7C();

        swift_willThrow();
        v70(v57, v53);
        v5 = v83;
        v8 = v84;
        goto LABEL_6;
      }
    }

    return;
  }

  v19 = *&v93[0];
  v20 = sub_23328CA7C();

  swift_willThrow();
LABEL_6:
  v21 = sub_233225440();
  (*(v6 + 16))(v8, v21, v5);
  v22 = v20;
  v23 = sub_23328D6CC();
  v24 = sub_23328DE3C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v93[0] = v26;
    *v25 = 136315138;
    v27 = v6;
    v28 = sub_23328CA6C();
    v29 = [v28 debugDescription];
    v84 = v8;
    v30 = v29;

    v31 = sub_23328D98C();
    v33 = v32;

    v34 = sub_23311A8F4(v31, v33, v93);

    *(v25 + 4) = v34;
    _os_log_impl(&dword_233109000, v23, v24, "Error occurred processing persistent history: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23839CFD0](v26, -1, -1);
    MEMORY[0x23839CFD0](v25, -1, -1);

    (*(v27 + 8))(v84, v5);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2331E9088(uint64_t a1)
{
  v2 = sub_233165CA0();
  v3 = *v2;

  v4 = sub_23328D95C();

  v5 = [v3 dictionaryForKey_];

  if (v5)
  {
    v6 = sub_23328D89C();
  }

  else
  {
    v6 = sub_233145024(MEMORY[0x277D84F90]);
  }

  v29 = v6;
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    v9 = [objc_opt_self() processInfo];
    v8 = [v9 processName];
  }

  v10 = sub_23328D98C();
  v12 = v11;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  sub_233121D34(a1, &v25 - v14, &qword_27DDE1A18, &unk_233297730);
  v16 = sub_23328CE1C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_233121E04(v15, &qword_27DDE1A18, &unk_233297730);
    sub_2331EA62C(v10, v12, &v27);

    sub_233121E04(&v27, &qword_27DDE2660, &qword_233298100);
  }

  else
  {
    v28 = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(v17 + 32))(boxed_opaque_existential_1, v15, v16);
    sub_233145134(&v27, v26);
    v19 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v19;
    sub_23314474C(v26, v10, v12, isUniquelyReferenced_nonNull_native);
  }

  v21 = *v2;
  v22 = sub_23328D87C();

  v23 = sub_23328D95C();

  [v21 setObject:v22 forKey:v23];

  return sub_233121E04(a1, &qword_27DDE1A18, &unk_233297730);
}

id TTSVBDataStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSVBDataStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2331E9698(void *a1)
{
  v1 = sub_23328C92C();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  sub_23328D98C();
  sub_23328E1EC();
  if (!*(v2 + 16) || (v3 = sub_2331EA6D0(v5), (v4 & 1) == 0))
  {

    sub_2331EACC8(v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_23311B0C0(*(v2 + 56) + 32 * v3, &v6);
  sub_2331EACC8(v5);

  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E60, &qword_23329B360);
    if (swift_dynamicCast())
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  sub_233121E04(&v6, &qword_27DDE2660, &qword_233298100);
LABEL_10:
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_23328E19C())
    {
      sub_2331EC9B8(MEMORY[0x277D84F90]);
    }
  }
}

uint64_t TTSVBDataStoreEvent.MergeEvent.all.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E68, &qword_23329B368);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23329B330;
  TTSVBDataStoreEvent.MergeEvent.inserted.getter();
  *(v0 + 32) = v1;
  TTSVBDataStoreEvent.MergeEvent.updated.getter();
  *(v0 + 40) = v2;
  TTSVBDataStoreEvent.MergeEvent.deleted.getter();
  *(v0 + 48) = v3;
  TTSVBDataStoreEvent.MergeEvent.refreshed.getter();
  *(v0 + 56) = v4;
  TTSVBDataStoreEvent.MergeEvent.invalidated.getter();
  *(v0 + 64) = v5;
  return v0;
}

Swift::Bool __swiftcall TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(NSEntityDescription a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E68, &qword_23329B368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23329B330;
  TTSVBDataStoreEvent.MergeEvent.inserted.getter();
  *(inited + 32) = v2;
  v24 = inited + 32;
  TTSVBDataStoreEvent.MergeEvent.updated.getter();
  *(inited + 40) = v3;
  TTSVBDataStoreEvent.MergeEvent.deleted.getter();
  *(inited + 48) = v4;
  TTSVBDataStoreEvent.MergeEvent.refreshed.getter();
  *(inited + 56) = v5;
  TTSVBDataStoreEvent.MergeEvent.invalidated.getter();
  v6 = 0;
  *(inited + 64) = v7;
LABEL_2:
  v8 = *(v24 + 8 * v6);
  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_23328E18C();
    sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448);
    sub_2331ECDE4();
    result = sub_23328DD4C();
    v8 = v27;
    v10 = v28;
    v12 = v29;
    v11 = v30;
    v13 = v31;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v11 = 0;
  }

  v25 = v6 + 1;
  v17 = (v12 + 64) >> 6;
  while (v8 < 0)
  {
    if (!sub_23328E1BC() || (sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448), swift_dynamicCast(), (v20 = v26) == 0))
    {
LABEL_20:
      sub_233113BBC(v8);
      ++v6;
      if (v25 != 5)
      {
        goto LABEL_2;
      }

      v23 = 0;
      goto LABEL_22;
    }

LABEL_18:
    sub_233144EEC(0, &qword_27DDE2B00, 0x277D82BB8);
    v21 = [v20 entity];
    v22 = sub_23328DFDC();

    if (v22)
    {
      sub_233113BBC(v8);
      v23 = 1;
LABEL_22:

      return v23;
    }
  }

  v18 = v11;
  v19 = v13;
  if (v13)
  {
LABEL_14:
    v13 = (v19 - 1) & v19;
    v20 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v17)
    {
      goto LABEL_20;
    }

    v19 = *(v10 + 8 * v11);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL TTSVBDataStoreEvent.MergeEvent.voicesDidChange.getter()
{
  type metadata accessor for TTSVBLocalVoiceMO();
  v0 = [swift_getObjCClassFromMetadata() entity];
  v1 = TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(v0);

  return v1;
}

id TTSVBDataStoreEvent.CloudKitSyncEvent.event.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0) + 20));

  return v1;
}

BOOL TTSVBDataStoreEvent.CloudKitSyncEvent.isFinished.getter()
{
  v1 = [*(v0 + *(type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0) + 20)) endDate];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  if (v1)
  {
    v5 = sub_23328CE1C();
    v6 = *(v5 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CDDC();

    (*(v6 + 32))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
  }

  else
  {
    v9 = sub_23328CE1C();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  sub_233121E04(v4, &qword_27DDE1A18, &unk_233297730);
  return v1 != 0;
}

uint64_t TTSVBDataStoreEvent.CloudKitSyncEvent.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_233297B30;
  *(v1 + 32) = 0xD000000000000013;
  *(v1 + 40) = 0x80000002332AA070;
  v2 = *(v0 + *(type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(0) + 20));
  v3 = [v2 endDate];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  if (v3)
  {
    sub_23328CDDC();

    v7 = sub_23328CE1C();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_23328CE1C();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_233121E04(v6, &qword_27DDE1A18, &unk_233297730);
  v9 = [v2 type];
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (!v9)
  {
    if (!v3)
    {
      if (v12 <= v11)
      {
        v1 = sub_233143EE0((v10 > 1), v11 + 1, 1, v1);
      }

      *(v1 + 16) = v13;
      v40 = v1 + 16 * v11;
      *(v40 + 32) = 0xD00000000000001ALL;
      *(v40 + 40) = 0x80000002332AA0C0;
      goto LABEL_44;
    }

    v14 = 0xD00000000000001BLL;
    v15 = "Finished setting up records";
    goto LABEL_13;
  }

  if (v9 != 2)
  {
    if (v9 != 1)
    {
      if (v12 <= v11)
      {
        v1 = sub_233143EE0((v10 > 1), v11 + 1, 1, v1);
      }

      *(v1 + 16) = v13;
      v18 = v1 + 16 * v11;
      strcpy((v18 + 32), "Unknown event");
      *(v18 + 46) = -4864;
      if (!v3)
      {
        goto LABEL_44;
      }

      goto LABEL_20;
    }

    if (v3)
    {
      v14 = 0xD00000000000001CLL;
      v15 = "Finished downloading records";
LABEL_13:
      v16 = v15 - 32;
      goto LABEL_14;
    }

    if (v12 <= v11)
    {
      v1 = sub_233143EE0((v10 > 1), v11 + 1, 1, v1);
    }

    v37 = 0x80000002332AA140;
    *(v1 + 16) = v13;
    v38 = v1 + 16 * v11;
    v39 = 0xD00000000000001BLL;
LABEL_43:
    *(v38 + 32) = v39;
    *(v38 + 40) = v37;
    goto LABEL_44;
  }

  if (!v3)
  {
    if (v12 <= v11)
    {
      v1 = sub_233143EE0((v10 > 1), v11 + 1, 1, v1);
    }

    v37 = 0x80000002332AA100;
    *(v1 + 16) = v13;
    v38 = v1 + 16 * v11;
    v39 = 0xD000000000000019;
    goto LABEL_43;
  }

  v16 = "Started uploading records";
  v14 = 0xD00000000000001ALL;
LABEL_14:
  if (v12 <= v11)
  {
    v1 = sub_233143EE0((v10 > 1), v11 + 1, 1, v1);
  }

  *(v1 + 16) = v13;
  v17 = v1 + 16 * v11;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16 | 0x8000000000000000;
LABEL_20:
  v19 = [v2 succeeded];
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  v22 = v21 + 1;
  if (v19)
  {
    if (v20 >> 1 <= v21)
    {
      v1 = sub_233143EE0((v20 > 1), v21 + 1, 1, v1);
    }

    *(v1 + 16) = v22;
    v23 = v1 + 16 * v21;
    *(v23 + 32) = 0x73736563637553;
    *(v23 + 40) = 0xE700000000000000;
    goto LABEL_44;
  }

  if (v20 >> 1 <= v21)
  {
    v1 = sub_233143EE0((v20 > 1), v21 + 1, 1, v1);
  }

  *(v1 + 16) = v22;
  v24 = v1 + 16 * v21;
  *(v24 + 32) = 0x64656C696146;
  *(v24 + 40) = 0xE600000000000000;
  v25 = [v2 error];
  if (v25)
  {
    v47 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v26 = v46;
      v27 = [v46 debugDescription];
      v28 = sub_23328D98C();
      v30 = v29;

      v32 = *(v1 + 16);
      v31 = *(v1 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v45 = v32 + 1;
        v43 = sub_233143EE0((v31 > 1), v32 + 1, 1, v1);
        v33 = v45;
        v1 = v43;
      }

      *(v1 + 16) = v33;
      v34 = v1 + 16 * v32;
      *(v34 + 32) = v28;
      *(v34 + 40) = v30;
      if ([v26 code] != 134400)
      {

        goto LABEL_44;
      }

      v36 = *(v1 + 16);
      v35 = *(v1 + 24);
      if (v36 >= v35 >> 1)
      {
        v1 = sub_233143EE0((v35 > 1), v36 + 1, 1, v1);
      }

      v37 = 0x80000002332AA090;
      *(v1 + 16) = v36 + 1;
      v38 = v1 + 16 * v36;
      v39 = 0xD000000000000024;
      goto LABEL_43;
    }
  }

LABEL_44:
  v47 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v41 = sub_23328D8FC();

  return v41;
}

char *sub_2331EA3B4(char *result)
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

  result = sub_233143EE0(result, v10, 1, v3);
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

BOOL TTSVBDataStoreEvent.voicesDidChange.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTSVBDataStoreEvent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTSVBDataStoreEvent.MergeEvent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2331ED654(v1, v4, type metadata accessor for TTSVBDataStoreEvent);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2331EC8A4(v4, type metadata accessor for TTSVBDataStoreEvent);
    return 0;
  }

  else
  {
    sub_2331EC944(v4, v7, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
    type metadata accessor for TTSVBLocalVoiceMO();
    v9 = [swift_getObjCClassFromMetadata() entity];
    v8 = TTSVBDataStoreEvent.MergeEvent.anyObjectIsEntity(_:)(v9);

    sub_2331EC8A4(v7, type metadata accessor for TTSVBDataStoreEvent.MergeEvent);
  }

  return v8;
}

double sub_2331EA62C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_233144260(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_233144908();
      v10 = v12;
    }

    sub_233145134((*(v10 + 56) + 32 * v8), a3);
    sub_2331EA9CC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_2331EA6D0(uint64_t a1)
{
  v2 = sub_23328E1CC();

  return sub_2331EAD98(a1, v2);
}

uint64_t sub_2331EA714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E98, &unk_23329B680);
  result = sub_23328E34C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_233145134((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2331ED5F8(v23, &v36);
        sub_23311B0C0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_23328E1CC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_233145134(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2331EA9CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23328E16C() + 1) & ~v5;
    do
    {
      sub_23328E61C();

      sub_23328DA3C();
      v10 = sub_23328E66C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2331EAB7C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2331EA6D0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2331EAE60();
      goto LABEL_7;
    }

    sub_2331EA714(v13, a3 & 1);
    v19 = sub_2331EA6D0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2331ED5F8(a2, v21);
      return sub_2331EAD1C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_23328E5AC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_233145134(a1, v17);
}

_OWORD *sub_2331EAD1C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_233145134(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_2331EAD98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2331ED5F8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23839BF30](v9, a1);
      sub_2331EACC8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_2331EAE60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E98, &unk_23329B680);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v18 = 40 * v17;
        sub_2331ED5F8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23311B0C0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_233145134(v22, (*(v4 + 56) + v17));
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

void sub_2331EB004(void *a1)
{
  v2 = [a1 entitiesByName];
  sub_233144EEC(0, &qword_280D39B98, 0x277CBE408);
  v3 = sub_23328D89C();

  if (!*(v3 + 16) || (v4 = sub_233144260(0xD000000000000012, 0x80000002332A9D30), (v5 & 1) == 0))
  {

    type metadata accessor for TTSVBError(0);
    sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000030, 0x80000002332AA380, 0, v26);
    swift_willThrow();
    return;
  }

  v6 = *(*(v3 + 56) + 8 * v4);

  v7 = [v6 attributesByName];
  sub_233144EEC(0, &qword_280D39B88, 0x277CBE358);
  v8 = sub_23328D89C();

  if (!*(v8 + 16) || (v9 = sub_233144260(0x7475466F69647561, 0xEB00000000657275), (v10 & 1) == 0))
  {

    sub_23328E24C();

    v27 = [v6 description];
    v28 = sub_23328D98C();
    v30 = v29;

    MEMORY[0x23839B7E0](v28, v30);

    type metadata accessor for TTSVBError(0);
    sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000038, 0x80000002332AA3C0, 0, v31);
    swift_willThrow();

    return;
  }

  v38 = v6;
  v11 = *(*(v8 + 56) + 8 * v9);

  if ([v11 respondsToSelector_])
  {
    v12 = sub_23328DC6C();
    v13 = sub_23328D95C();
    [v11 setValue:v12 forKey:v13];

    v14 = [a1 entitiesByName];
    v15 = sub_23328D89C();

    if (!*(v15 + 16) || (v16 = sub_233144260(0xD000000000000015, 0x80000002332A7DD0), (v17 & 1) == 0))
    {

      type metadata accessor for TTSVBError(0);
      sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000033, 0x80000002332AA400, 0, v32);
      swift_willThrow();

      return;
    }

    v18 = *(*(v15 + 56) + 8 * v16);

    v19 = [v18 attributesByName];
    v20 = sub_23328D89C();

    if (!*(v20 + 16) || (v21 = sub_233144260(0x75747546656C6966, 0xEA00000000006572), (v22 & 1) == 0))
    {

      sub_23328E24C();

      v33 = [v18 description];
      v34 = sub_23328D98C();
      v36 = v35;

      MEMORY[0x23839B7E0](v34, v36);

      type metadata accessor for TTSVBError(0);
      sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(0xD000000000000019, 0x80000002332AA360, 0xD000000000000037, 0x80000002332AA440, 0, v37);
      swift_willThrow();

      return;
    }

    v23 = *(*(v20 + 56) + 8 * v21);

    if ([v23 respondsToSelector_])
    {
      v24 = sub_23328DC6C();
      v25 = sub_23328D95C();
      [v23 setValue:v24 forKey:v25];

      return;
    }
  }

  sub_23328E31C();
  __break(1u);
}

void sub_2331EB774()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1;

  sub_2331EB7F8(v4, v4, v2, v3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2331EB7F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v122 = a3;
  v128 = *MEMORY[0x277D85DE8];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v123);
  v121 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v112 = &v105 - v9;
  v113 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v113);
  v114 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v11 - 8);
  v116 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v115 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v105 - v16);
  v18 = type metadata accessor for TTSVBError(0);
  v119 = *(v18 - 8);
  v120 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D6EC();
  v117 = *(v21 - 8);
  v118 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23328D83C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue);
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24, v26);
  v30 = v29;
  v31 = sub_23328D85C();
  (*(v25 + 8))(v28, v24);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_37:
    v39 = sub_23328E19C();
    goto LABEL_6;
  }

  v32 = a1;
  if (*(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_shouldAttemptLoad) != 1)
  {
    v53 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_loadError;
    swift_beginAccess();
    sub_233121D34(a1 + v53, v17, &qword_27DDE1B38, &unk_2332909A0);
    if ((*(v119 + 48))(v17, 1, v120) != 1)
    {
      sub_2331EC944(v17, v20, type metadata accessor for TTSVBError);
      v58 = v121;
      sub_2331ED654(v20, v121, type metadata accessor for TTSVBError);
      swift_storeEnumTagMultiPayload();
      sub_2331E4D30(v58, a2, v122, a4);
      sub_233121E04(v58, &unk_27DDE25D0, &unk_233290330);
      sub_2331EC8A4(v20, type metadata accessor for TTSVBError);
      return;
    }

    sub_233121E04(v17, &qword_27DDE1B38, &unk_2332909A0);
    v54 = v121;
    swift_storeEnumTagMultiPayload();
    v55 = v54;
    v56 = a2;
    v57 = v122;
    goto LABEL_34;
  }

  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_shouldAttemptLoad) = 0;
  v31 = sub_2331E6AA8();
  v33 = sub_233225440();
  v35 = v117;
  v34 = v118;
  (*(v117 + 16))(v23, v33, v118);

  v17 = sub_23328D6CC();
  v36 = sub_23328DE1C();

  v110 = v36;
  v37 = os_log_type_enabled(v17, v36);
  v124 = v31;
  if (!v37)
  {

    (*(v35 + 8))(v23, v34);
    goto LABEL_21;
  }

  v38 = swift_slowAlloc();
  v106 = swift_slowAlloc();
  *&v126 = v106;
  v107 = v38;
  *v38 = 136315138;
  v109 = a1;
  if (v31 >> 62)
  {
    goto LABEL_37;
  }

  v39 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v108 = v17;
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v111 = a2;
    v105 = a4;
    v125 = MEMORY[0x277D84F90];
    sub_23312676C(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
    }

    v41 = 0;
    v40 = v125;
    v42 = v31 & 0xC000000000000001;
    v43 = v23;
    do
    {
      if (v42)
      {
        v44 = MEMORY[0x23839BFC0](v41, v31);
      }

      else
      {
        v44 = *(v31 + 8 * v41 + 32);
      }

      v45 = v44;
      v46 = [v45 description];
      v47 = sub_23328D98C();
      v49 = v48;

      v125 = v40;
      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_23312676C((v50 > 1), v51 + 1, 1);
        v40 = v125;
      }

      ++v41;
      *(v40 + 16) = v51 + 1;
      v52 = v40 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
      v31 = v124;
    }

    while (v39 != v41);
    v23 = v43;
    a4 = v105;
    a2 = v111;
  }

  v125 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v59 = sub_23328D8FC();
  v61 = v60;

  v62 = sub_23311A8F4(v59, v61, &v126);

  v63 = v107;
  *(v107 + 1) = v62;
  v64 = v108;
  _os_log_impl(&dword_233109000, v108, v110, "Will create and load TTSVoiceBanking persistent stores: %s", v63, 0xCu);
  v65 = v106;
  __swift_destroy_boxed_opaque_existential_0(v106);
  MEMORY[0x23839CFD0](v65, -1, -1);
  MEMORY[0x23839CFD0](v63, -1, -1);

  (*(v117 + 8))(v23, v118);
  v32 = v109;
LABEL_21:
  v66 = sub_2331E491C();
  sub_233144EEC(0, &qword_280D39B78, 0x277CBE4E0);
  v67 = sub_23328DBDC();
  [v66 setPersistentStoreDescriptions_];

  v68 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container;
  v69 = *(v32 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___container);
  *&v126 = 0;
  if ([v69 load_])
  {
    v111 = a2;
    v70 = v126;

    v71 = [*(v32 + v68) viewContext];
    v72 = sub_23328D95C();
    [v71 setName_];

    v73 = [*(v32 + v68) viewContext];
    v74 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
    [v73 setMergePolicy_];

    v75 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration;
    if (*(v32 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_configuration))
    {
      v76 = sub_23328E54C();

      if ((v76 & 1) == 0)
      {
LABEL_29:
        if (*(v32 + v75) == 1)
        {

          v99 = v122;
        }

        else
        {
          v100 = sub_23328E54C();

          v99 = v122;
          if ((v100 & 1) == 0)
          {
LABEL_33:
            v54 = v121;
            swift_storeEnumTagMultiPayload();
            v55 = v54;
            v56 = v111;
            v57 = v99;
LABEL_34:
            sub_2331E4D30(v55, v56, v57, a4);
            v89 = v54;
            goto LABEL_35;
          }
        }

        v101 = objc_opt_self();
        v102 = [v101 defaultCenter];
        [v102 addObserver:v32 selector:sel_handlePersistentCloudKitContainerEventChanged_ name:*MEMORY[0x277CBE1F0] object:0];

        v103 = [v101 defaultCenter];
        [v103 addObserver:v32 selector:sel_handleWillResetCloudSync_ name:*MEMORY[0x277CBE140] object:0];

        v104 = [v101 defaultCenter];
        [v104 addObserver:v32 selector:sel_handleDidResetCloudSync_ name:*MEMORY[0x277CBE130] object:0];

        goto LABEL_33;
      }
    }

    else
    {
    }

    v90 = [*(v32 + v68) viewContext];
    [v90 setAutomaticallyMergesChangesFromParent_];

    v91 = objc_opt_self();
    v92 = [v91 defaultCenter];
    v93 = v32;
    v94 = *MEMORY[0x277CBE1A0];
    v95 = [*(v93 + v68) viewContext];
    [v92 addObserver:v93 selector:sel_handleManagedObjectContextDidMergeChangesObjectIDs_ name:v94 object:v95];

    v96 = [v91 defaultCenter];
    v97 = *MEMORY[0x277CBE260];
    v98 = [*(v93 + v68) persistentStoreCoordinator];
    [v96 addObserver:v93 selector:sel_handlePersistentStoreRemoteChange_ name:v97 object:v98];

    v32 = v93;
    goto LABEL_29;
  }

  v77 = v126;
  v78 = sub_23328CA7C();

  swift_willThrow();
  v126 = xmmword_23329B320;
  v127 = 3;
  v79 = v114;
  sub_2331E42F8(&OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore____lazy_storage___localDatastoreURL, v114);
  swift_storeEnumTagMultiPayload();
  v80 = sub_23328CA6C();
  v81 = v115;
  TTSVBError.init(_:_:_:)(&v126, v79, v80, v115);
  v83 = v119;
  v82 = v120;
  (*(v119 + 56))(v81, 0, 1, v120);
  v84 = v32;
  v85 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport14TTSVBDataStore_queue_loadError;
  swift_beginAccess();
  sub_2331BD410(v81, v84 + v85, &qword_27DDE1B38, &unk_2332909A0);
  swift_endAccess();
  v86 = v84 + v85;
  v87 = v116;
  sub_233121D34(v86, v116, &qword_27DDE1B38, &unk_2332909A0);
  if ((*(v83 + 48))(v87, 1, v82) != 1)
  {

    v88 = v112;
    sub_2331EC944(v87, v112, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    sub_2331E4D30(v88, a2, v122, a4);

    v89 = v88;
LABEL_35:
    sub_233121E04(v89, &unk_27DDE25D0, &unk_233290330);
    return;
  }

  __break(1u);
}

uint64_t sub_2331EC628(void *a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userInfo];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_23328D89C();

  v18[1] = sub_23328D98C();
  v18[2] = v10;
  sub_23328E1EC();
  if (!*(v9 + 16) || (v11 = sub_2331EA6D0(v19), (v12 & 1) == 0))
  {

    sub_2331EACC8(v19);
LABEL_9:
    v20 = 0u;
    v21 = 0u;
    return sub_233121E04(&v20, &qword_27DDE2660, &qword_233298100);
  }

  sub_23311B0C0(*(v9 + 56) + 32 * v11, &v20);
  sub_2331EACC8(v19);

  if (!*(&v21 + 1))
  {
    return sub_233121E04(&v20, &qword_27DDE2660, &qword_233298100);
  }

  sub_233121E04(&v20, &qword_27DDE2660, &qword_233298100);
  v13 = sub_233225440();
  (*(v3 + 16))(v6, v13, v2);
  v14 = sub_23328D6CC();
  v15 = sub_23328DE1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_233109000, v14, v15, "*** Got note *** should invalidate all objects", v16, 2u);
    MEMORY[0x23839CFD0](v16, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2331EC8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331EC944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2331EC9B8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_23328E19C())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E90, &qword_23329B678);
      v3 = sub_23328E22C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_23328E19C();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x23839BFC0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_23328DFCC();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_23328DFDC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_23328DFCC();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_233144EEC(0, &qword_27DDE2E70, 0x277CBE448);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_23328DFDC();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2331ECCA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2E98, &unk_23329B680);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_233121D34(v4, v13, &qword_27DDE2E58, &unk_23329B350);
      result = sub_2331EA6D0(v13);
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
      result = sub_233145134(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2331ECDE4()
{
  result = qword_27DDE2E78;
  if (!qword_27DDE2E78)
  {
    sub_233144EEC(255, &qword_27DDE2E70, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2E78);
  }

  return result;
}

unint64_t sub_2331ECE50()
{
  result = qword_27DDE2E80;
  if (!qword_27DDE2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2E80);
  }

  return result;
}

unint64_t sub_2331ECEA8()
{
  result = qword_27DDE2E88;
  if (!qword_27DDE2E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2E88);
  }

  return result;
}

void sub_2331ECF44(uint64_t a1)
{
  sub_23328CC9C();
  if (v1 <= 0x3F)
  {
    sub_2331ED0D8(319, &qword_280D3A0D8, MEMORY[0x28220BE18]);
    if (v2 <= 0x3F)
    {
      sub_2331ED0D8(319, &qword_280D3A0A8, type metadata accessor for TTSVBError);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2331ED0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23328E00C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2331ED164(uint64_t a1)
{
  sub_23328CC9C();
  if (v1 <= 0x3F)
  {
    sub_233144EEC(319, &qword_280D39B90, 0x277CBE450);
    if (v2 <= 0x3F)
    {
      sub_2331ED218();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2331ED218()
{
  if (!qword_280D39BB8)
  {
    v0 = sub_23328D8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D39BB8);
    }
  }
}

uint64_t sub_2331ED28C(uint64_t a1)
{
  result = type metadata accessor for TTSVBDataStoreEvent.MergeEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTSVBDataStoreEvent.CloudKitSyncEvent(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2331ED334(uint64_t a1)
{
  result = sub_23328C93C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2331ED544(uint64_t a1)
{
  result = sub_23328C93C();
  if (v2 <= 0x3F)
  {
    result = sub_233144EEC(319, &qword_280D39B70, 0x277CBE480);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2331ED654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331ED6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2331ED7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 path];
  if (v4)
  {
    v5 = v4;
    sub_23328D98C();

    v6 = sub_23328CC9C();
    v7 = *(v6 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CB7C();

    sub_23328CBEC();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t TTSVBSiriTTSTrainingAsset.metadataURL.getter()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = [v0 path];
  if (v4)
  {
    v5 = v4;
    sub_23328D98C();

    MEMORY[0x28223BE20](v6);
    sub_23328CB7C();

    sub_23328CBEC();
    v7 = *(v2 + 8);
    v7(&v9 - v3, v1);
    sub_23328CBEC();
    return (v7)(&v9 - v3, v1);
  }

  else
  {
    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t TTSVBSiriTTSTrainingAsset.trainingScript.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_23328CC9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBSiriTTSTrainingAsset.metadataURL.getter();
  static TTSVBTrainingScript.parseScript(fromMetadatFile:)(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

id sub_2331EDD8C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v5 = sub_23328DBDC();

  return v5;
}

uint64_t sub_2331EDE08()
{
  v1 = sub_23328D95C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_23328E0DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EA8, &qword_23329B6A8);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_233121E04(v7, &qword_27DDE2660, &qword_233298100);
  }

  return MEMORY[0x277D84F90];
}

void sub_2331EDF18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  v5 = sub_23328D95C();
  [v6 setObject:v4 forKey:v5];
}

void sub_2331EDFB0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v2 = sub_23328DBDC();

  v3 = sub_23328D95C();
  [v1 setObject:v2 forKey:v3];
}

void sub_2331EE070(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v5 = sub_23328DBFC();

  *a3 = v5;
}

void sub_2331EE0E8(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v7 = sub_23328DBDC();
  [v6 *a5];
}

id sub_2331EE168(void *a1)
{
  v1 = a1;
  NSUserDefaults.liveSpeechCategories.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v2 = sub_23328D87C();

  return v2;
}

void sub_2331EE1EC(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  sub_23328D89C();
  v6 = a1;
  v4 = sub_23328D87C();

  v5 = sub_23328D95C();
  [v6 setObject:v4 forKey:v5];
}

void NSUserDefaults.liveSpeechCategories.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v2 = sub_23328D87C();

  v3 = sub_23328D95C();
  [v1 setObject:v2 forKey:v3];
}

void sub_2331EE3A0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 liveSpeechCategories];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v4 = sub_23328D89C();

  *a2 = v4;
}

void sub_2331EE420(uint64_t *a1, void **a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v3 = sub_23328D87C();
  [v2 setLiveSpeechCategories_];
}

id sub_2331EE4A8(void *a1)
{
  v1 = a1;
  v2 = sub_23328D95C();
  v3 = [v1 integerForKey_];

  return v3;
}

id NSUserDefaults.liveSpeechMaxRecentsCount.getter()
{
  v1 = sub_23328D95C();
  v2 = [v0 integerForKey_];

  return v2;
}

void sub_2331EE574(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v3 = sub_23328DD5C();
  v4 = sub_23328D95C();
  [v5 setValue:v3 forKey:v4];
}

void NSUserDefaults.liveSpeechMaxRecentsCount.setter(uint64_t a1)
{
  v2 = sub_23328DD5C();
  v3 = sub_23328D95C();
  [v1 setValue:v2 forKey:v3];
}

id sub_2331EE680@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 liveSpeechMaxRecentsCount];
  *a2 = result;
  return result;
}

uint64_t sub_2331EE6C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746E65636552;
  }

  else
  {
    v3 = 0x6465766153;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746E65636552;
  }

  else
  {
    v5 = 0x6465766153;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23328E54C();
  }

  return v8 & 1;
}

uint64_t sub_2331EE76C()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331EE7EC(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_2331EE858(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331EE8D4@<X0>(char *a2@<X8>)
{
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2331EE934(uint64_t *a1@<X8>)
{
  v2 = 0x6465766153;
  if (*v1)
  {
    v2 = 0x73746E65636552;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

char *sub_2331EEA44(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + 16);
  v4 = v2;
  if (v3 && (v5 = sub_233144260(1954047348, 0xE400000000000000), (v6 & 1) != 0) && (sub_23311B0C0(*(a1 + 56) + 32 * v5, v34), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v33[7];
    v8 = v33[8];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = &v4[OBJC_IVAR___LiveSpeechPhrase_text];
  swift_beginAccess();
  *v9 = v7;
  *(v9 + 1) = v8;

  if (*(a1 + 16) && (v10 = sub_233144260(0x44497475706E69, 0xE700000000000000), (v11 & 1) != 0))
  {
    sub_23311B0C0(*(a1 + 56) + 32 * v10, v34);
    v12 = swift_dynamicCast();
    if (v12)
    {
      v13 = v33[4];
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v33[5];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = &v4[OBJC_IVAR___LiveSpeechPhrase_inputID];
  swift_beginAccess();
  *v15 = v13;
  *(v15 + 1) = v14;

  if (*(a1 + 16) && (v16 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v17 & 1) != 0))
  {
    sub_23311B0C0(*(a1 + 56) + 32 * v16, v34);
    v18 = swift_dynamicCast();
    if (v18)
    {
      v19 = v33[1];
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v33[2];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v21 = &v4[OBJC_IVAR___LiveSpeechPhrase_categoryID];
  swift_beginAccess();
  *v21 = v19;
  *(v21 + 1) = v20;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v33 - v23;
  if (*(a1 + 16) && (v25 = sub_233144260(0x6E6F697461657263, 0xEC00000065746144), (v26 & 1) != 0))
  {
    sub_23311B0C0(*(a1 + 56) + 32 * v25, v34);

    v27 = sub_23328CE1C();
    v28 = swift_dynamicCast();
    v29 = *(v27 - 8);
    (*(v29 + 56))(v24, v28 ^ 1u, 1, v27);
    v30 = 0;
    if ((*(v29 + 48))(v24, 1, v27) != 1)
    {
      v30 = sub_23328CD9C();
      (*(v29 + 8))(v24, v27);
    }
  }

  else
  {

    v31 = sub_23328CE1C();
    (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
    v30 = 0;
  }

  [v4 setCreationDate_];

  return v4;
}

id sub_2331EEE80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_23328D95C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2331EEF14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_23328D98C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2331EF0B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___LiveSpeechPhrase_anyCreationDate;
  swift_beginAccess();
  sub_233121D34(v1 + v3, v8, &qword_27DDE2660, &qword_233298100);
  if (v9)
  {
    v4 = sub_23328CE1C();
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a1, v5 ^ 1u, 1, v4);
  }

  else
  {
    sub_233121E04(v8, &qword_27DDE2660, &qword_233298100);
    v7 = sub_23328CE1C();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_2331EF2F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_233121D34(a1, &v11 - v4, &qword_27DDE1A18, &unk_233297730);
  v6 = sub_23328CE1C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_233121E04(a1, &qword_27DDE1A18, &unk_233297730);
    sub_233121E04(v5, &qword_27DDE1A18, &unk_233297730);
    v12 = 0u;
    v13 = 0u;
  }

  else
  {
    *(&v13 + 1) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
    sub_233121E04(a1, &qword_27DDE1A18, &unk_233297730);
  }

  v9 = OBJC_IVAR___LiveSpeechPhrase_anyCreationDate;
  swift_beginAccess();
  sub_2331F4990(&v12, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_2331EF4C0(uint64_t *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v35 = a5;
  v36 = a4;
  v40 = a3;
  v44 = a2;
  v8 = sub_23328D6EC();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (!v11)
  {
LABEL_21:
    v22 = sub_233225944();
    swift_beginAccess();
    v24 = v37;
    v23 = v38;
    v25 = v39;
    (*(v38 + 16))(v37, v22, v39);
    v26 = sub_23328D6CC();
    v27 = sub_23328DE3C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_23311A8F4(0xD00000000000003CLL, 0x80000002332AAAB0, &v41);
      _os_log_impl(&dword_233109000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23839CFD0](v29, -1, -1);
      MEMORY[0x23839CFD0](v28, -1, -1);
    }

    (*(v23 + 8))(v24, v25);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD00000000000003CLL, 0x80000002332AAAB0, 0, 0, 0, v30);
    return swift_willThrow();
  }

  v12 = 0;
  v13 = -32;
  v14 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v12 >= v10[2])
    {
      __break(1u);
      goto LABEL_29;
    }

    v15 = v10[v12 + 4];
    if (!*(v15 + 16))
    {
      goto LABEL_4;
    }

    v16 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
    if ((v17 & 1) == 0)
    {
      goto LABEL_3;
    }

    sub_23311B0C0(*(v15 + 56) + 32 * v16, v43);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v41 == v44 && v42 == v40)
    {
    }

    else
    {
      v18 = sub_23328E54C();

      if ((v18 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!*(v15 + 16) || (v19 = sub_233144260(1954047348, 0xE400000000000000), (v20 & 1) == 0) || (sub_23311B0C0(*(v15 + 56) + 32 * v19, v43), (swift_dynamicCast() & 1) == 0))
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v41 == v36 && v42 == v35)
    {
      break;
    }

    v21 = sub_23328E54C();

    if (v21)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v12;
    v13 -= 8;
    if (v11 == v12)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  v43[3] = v14;
  v43[0] = v33;
  v43[1] = v34;

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_26;
  }

LABEL_29:
  result = sub_2331F46B0(v10);
  v10 = result;
LABEL_26:
  if (v12 >= v10[2])
  {
    __break(1u);
  }

  else
  {
    sub_2331EF948(v43, 1954047348, 0xE400000000000000);
    *v32 = v10;
    return notify_post("com.apple.livespeech.localprefschanged");
  }

  return result;
}

uint64_t sub_2331EF948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_233145134(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_23314474C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_233121E04(a1, &qword_27DDE2660, &qword_233298100);
    sub_2331EA62C(a2, a3, v9);

    return sub_233121E04(v9, &qword_27DDE2660, &qword_233298100);
  }

  return result;
}

unint64_t _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0()
{
  v1 = sub_23328D95C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_23328E0DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB0, &qword_23329B6B8);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_233121E04(v7, &qword_27DDE2660, &qword_233298100);
  }

  return sub_2331F488C(MEMORY[0x277D84F90]);
}

uint64_t sub_2331EFB38(uint64_t *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  v35 = a5;
  v36 = a4;
  v40 = a3;
  v44 = a2;
  v8 = sub_23328D6EC();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (!v11)
  {
LABEL_21:
    v22 = sub_233225944();
    swift_beginAccess();
    v24 = v37;
    v23 = v38;
    v25 = v39;
    (*(v38 + 16))(v37, v22, v39);
    v26 = sub_23328D6CC();
    v27 = sub_23328DE3C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_23311A8F4(0xD000000000000045, 0x80000002332AAA60, &v41);
      _os_log_impl(&dword_233109000, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23839CFD0](v29, -1, -1);
      MEMORY[0x23839CFD0](v28, -1, -1);
    }

    (*(v23 + 8))(v24, v25);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000045, 0x80000002332AAA60, 0, 0, 0, v30);
    return swift_willThrow();
  }

  v12 = 0;
  v13 = -32;
  v14 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v12 >= v10[2])
    {
      __break(1u);
      goto LABEL_29;
    }

    v15 = v10[v12 + 4];
    if (!*(v15 + 16))
    {
      goto LABEL_4;
    }

    v16 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
    if ((v17 & 1) == 0)
    {
      goto LABEL_3;
    }

    sub_23311B0C0(*(v15 + 56) + 32 * v16, v43);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v41 == v44 && v42 == v40)
    {
    }

    else
    {
      v18 = sub_23328E54C();

      if ((v18 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (!*(v15 + 16) || (v19 = sub_233144260(1954047348, 0xE400000000000000), (v20 & 1) == 0) || (sub_23311B0C0(*(v15 + 56) + 32 * v19, v43), (swift_dynamicCast() & 1) == 0))
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v41 == v36 && v42 == v35)
    {
      break;
    }

    v21 = sub_23328E54C();

    if (v21)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v12;
    v13 -= 8;
    if (v11 == v12)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  v43[3] = v14;
  v43[0] = v33;
  v43[1] = v34;

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_26;
  }

LABEL_29:
  result = sub_2331F46B0(v10);
  v10 = result;
LABEL_26:
  if (v12 >= v10[2])
  {
    __break(1u);
  }

  else
  {
    sub_2331EF948(v43, 0x79726F6765746163, 0xEA00000000004449);
    *v32 = v10;
    return notify_post("com.apple.livespeech.localprefschanged");
  }

  return result;
}

uint64_t sub_2331EFFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_23328D98C();
  v10 = v9;
  v11 = sub_23328D98C();
  v13 = v12;
  v14 = sub_23328D98C();
  a7(v8, v10, v11, v13, v14, v15);

  return 1;
}

uint64_t sub_2331F00F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v24 = MEMORY[0x277D84F90];
    v22 = a1;
    sub_23328E2DC();
    v4 = v22 + 64;
    v5 = sub_23328E15C();
    v6 = *(v22 + 36);
    result = type metadata accessor for LiveSpeechCategory(v5);
    v7 = v22;
    v8 = 0;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v7 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v7 + 36))
      {
        goto LABEL_22;
      }

      v23 = v8;
      v11 = (*(v7 + 48) + 16 * v5);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(v7 + 56) + 8 * v5);

      sub_2331F0BA8(v13, v12, v14);
      sub_23328E2BC();
      sub_23328E2EC();
      sub_23328E2FC();
      result = sub_23328E2CC();
      v7 = v22;
      v9 = 1 << *(v22 + 32);
      if (v5 >= v9)
      {
        goto LABEL_23;
      }

      v15 = *(v4 + 8 * v10);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v6 != *(v22 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v9 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v10 << 6;
        v18 = v10 + 1;
        v19 = (v22 + 72 + 8 * v10);
        while (v18 < (v9 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_23315D8E0(v5, v6, 0);
            v7 = v22;
            v9 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_23315D8E0(v5, v6, 0);
        v7 = v22;
      }

LABEL_4:
      v8 = v23 + 1;
      v5 = v9;
      if (v23 + 1 == v2)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id static LiveSpeechPhrase.maxPreferredPhraseCount.getter()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = sub_23328D95C();
  v2 = [v0 integerForKey_];

  return v2;
}

void static LiveSpeechPhrase.maxPreferredPhraseCount.setter(uint64_t a1)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v1 = qword_27DDF8168;
  v2 = sub_23328DD5C();
  v3 = sub_23328D95C();
  [v1 setValue:v2 forKey:v3];
}

id sub_2331F07A4@<X0>(void *a2@<X8>)
{
  result = [swift_getObjCClassFromMetadata() maxPreferredPhraseCount];
  *a2 = result;
  return result;
}

id sub_2331F07DC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata setMaxPreferredPhraseCount_];
}

void static LiveSpeechPhrase.observeChangesAsync()()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EE0, &qword_23329B710);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = v0;
  sub_23328CAFC();
  sub_2331F8078(&qword_27DDE2EE8, &qword_27DDE2EE0, &qword_23329B710);
  v6 = sub_23328D76C();
  (*(v2 + 8))(v4, v1);
  v9[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EF0, &qword_23329B718);
  v8 = sub_23315246C(&qword_27DDE2EF8, &qword_27DDE2EF0, &qword_23329B718, MEMORY[0x277CBCD90]);
  MEMORY[0x23839B500](v7, v8);
}

uint64_t LiveSpeechCategory.id.getter()
{
  v1 = [v0 categoryID];
  v2 = sub_23328D98C();

  return v2;
}

void sub_2331F0AE4(uint64_t *a1@<X8>)
{
  v3 = [*v1 categoryID];
  v4 = sub_23328D98C();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

char *sub_2331F0BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = &v6[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 1) = a2;
  v8 = v6;

  if (*(a3 + 16) && (v9 = sub_233144260(1701667182, 0xE400000000000000), (v10 & 1) != 0))
  {
    v11 = (*(a3 + 56) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
  }

  else
  {
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v14 = &v8[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  *v14 = v13;
  *(v14 + 1) = v12;

  if (*(a3 + 16) && (v15 = sub_233144260(0x6C6F626D7973, 0xE600000000000000), (v16 & 1) != 0))
  {
    v17 = (*(a3 + 56) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
  }

  else
  {
    v19 = 0;
    v18 = 0xE000000000000000;
  }

  v20 = &v8[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  *v20 = v19;
  *(v20 + 1) = v18;

  return v8;
}

id sub_2331F0D64(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();

  v3 = sub_23328D95C();

  return v3;
}

uint64_t sub_2331F0DE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_23328D98C();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_2331F1030()
{
  v1 = [v0 categoryID];
  v2 = sub_23328D98C();
  v4 = v3;

  v5 = v2 == 0x73746E65636552 && v4 == 0xE700000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v6 = sub_23328D95C();
    v7 = TTSVBSupportLocString(v6);
  }

  else
  {
    if (v2 == 0x6465766153 && v4 == 0xE500000000000000)
    {
    }

    else
    {
      v12 = sub_23328E54C();

      if ((v12 & 1) == 0)
      {
        v8 = [v0 name];
        goto LABEL_8;
      }
    }

    v6 = sub_23328D95C();
    v7 = TTSVBSupportLocString(v6);
  }

  v8 = v7;

LABEL_8:
  v9 = sub_23328D98C();

  return v9;
}

uint64_t sub_2331F11B4()
{
  v21 = [v0 isSaved];
  if (qword_27DDF8160 != -1)
  {
LABEL_30:
    swift_once();
  }

  v1 = qword_27DDF8168;
  v2 = sub_2331EDE08();

  v26 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (!v3)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v4 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v6 = *(v2 + 32 + 8 * v5);
      v7 = *(v6 + 16);

      if (v7 && (v8 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v9 & 1) != 0) && (sub_23311B0C0(*(v6 + 56) + 32 * v8, v25), swift_dynamicCast()))
      {
        v11 = v23;
        v10 = v24;
      }

      else
      {
        v11 = 0;
        v10 = 0;
      }

      v12 = [v22 categoryID];
      v13 = sub_23328D98C();
      v15 = v14;

      if (!v10)
      {

        if (v21)
        {
          goto LABEL_23;
        }

        goto LABEL_5;
      }

      if (v11 == v13 && v10 == v15)
      {
        break;
      }

      v17 = sub_23328E54C();

      if (v17)
      {
        goto LABEL_22;
      }

LABEL_5:

      if (v3 == ++v5)
      {
        goto LABEL_28;
      }
    }

LABEL_22:

LABEL_23:
    type metadata accessor for LiveSpeechPhrase(v18);
    sub_2331EEA44(v6);
    MEMORY[0x23839B920]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23328DC1C();
    }

    v4 = v5 + 1;
    sub_23328DC4C();
    v20 = v26;
  }

  while (v3 - 1 != v5);
LABEL_28:

  return v20;
}

void sub_2331F14CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v10 = sub_23328D6EC();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v13 = qword_27DDF8168;
  v32[0] = sub_2331EDE08();
  sub_2331F195C(v32, v4, a1, a2, a3, a4);
  if (v5)
  {

LABEL_20:

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v14 = sub_23328DBDC();

  v15 = sub_23328D95C();
  [v13 setObject:v14 forKey:v15];

  v16 = [v4 phrases];
  type metadata accessor for LiveSpeechPhrase(v16);
  v17 = sub_23328DBFC();

  if (([v4 isRecents] & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0x64uLL)
    {
      goto LABEL_20;
    }

    goto LABEL_8;
  }

  if (sub_23328E19C() <= 100)
  {
    goto LABEL_20;
  }

  if (sub_23328E19C())
  {
LABEL_8:
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x23839BFC0](0, v17);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v18 = *(v17 + 32);
    }

    v19 = v18;

    v32[0] = 0;
    if ([v4 deletePhrase:v19 error:v32])
    {
      v20 = v32[0];
    }

    else
    {
      v21 = v32[0];
      sub_23328CA7C();

      swift_willThrow();
    }

    return;
  }

  v22 = sub_233225944();
  swift_beginAccess();
  (*(v29 + 16))(v12, v22, v30);
  v23 = sub_23328D6CC();
  v24 = sub_23328DE3C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_23311A8F4(0xD000000000000032, 0x80000002332AA610, &v31);
    _os_log_impl(&dword_233109000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23839CFD0](v26, -1, -1);
    MEMORY[0x23839CFD0](v25, -1, -1);
  }

  (*(v29 + 8))(v12, v30);
  type metadata accessor for TTSVBError(0);
  sub_23311A3F8();
  swift_allocError();
  TTSVBError.init(_:_:_:)(0xD000000000000032, 0x80000002332AA610, 0, 0, 0, v27);
  swift_willThrow();
}

uint64_t sub_2331F195C(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a5;
  v68 = a6;
  v70 = a4;
  v74 = a3;
  v8 = sub_23328D6EC();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v69 = *a1;
  v11 = v69[2];
  if (!v11)
  {
LABEL_26:
    v27 = [a2 categoryID];
    v28 = sub_23328D98C();
    v63 = v29;
    v64 = v28;

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v65 = &v61;
    v31 = *(*(v30 - 8) + 64);
    MEMORY[0x28223BE20](v30 - 8);
    v62 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
    v32 = &v61 - v62;
    sub_23328CE0C();
    v33 = sub_23328CE1C();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v32, 0, 1, v33);
    v35 = [objc_allocWithZone(LiveSpeechPhrase) init];
    v36 = &v35[OBJC_IVAR___LiveSpeechPhrase_text];
    swift_beginAccess();
    v37 = v70;
    *v36 = v74;
    *(v36 + 1) = v37;
    v38 = v35;

    v39 = &v38[OBJC_IVAR___LiveSpeechPhrase_inputID];
    swift_beginAccess();
    v40 = v68;
    *v39 = v67;
    v39[1] = v40;

    v41 = &v38[OBJC_IVAR___LiveSpeechPhrase_categoryID];
    swift_beginAccess();
    v42 = v63;
    *v41 = v64;
    v41[1] = v42;

    MEMORY[0x28223BE20](v43);
    v44 = &v61 - v62;
    sub_233121D34(v32, &v61 - v62, &qword_27DDE1A18, &unk_233297730);
    v45 = 0;
    if ((*(v34 + 48))(v44, 1, v33) != 1)
    {
      v45 = sub_23328CD9C();
      (*(v34 + 8))(v44, v33);
    }

    [v38 setCreationDate_];

    sub_233121E04(v32, &qword_27DDE1A18, &unk_233297730);
    v46 = sub_2331F20B0();

    v47 = v69;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_2331F36EC(0, v47[2] + 1, 1, v47);
    }

    v48 = v66;
    v50 = v47[2];
    v49 = v47[3];
    if (v50 >= v49 >> 1)
    {
      v47 = sub_2331F36EC((v49 > 1), v50 + 1, 1, v47);
    }

    v47[2] = v50 + 1;
    v47[v50 + 4] = v46;
    *v48 = v47;
    return notify_post("com.apple.livespeech.localprefschanged");
  }

  v12 = v69 + 4;
  while (1)
  {
    v13 = *v12;

    if (*(v13 + 16) && (v14 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v15 & 1) != 0) && (sub_23311B0C0(*(v13 + 56) + 32 * v14, v73), swift_dynamicCast()))
    {
      v16 = v71;
      v17 = v72;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = [a2 categoryID];
    v19 = sub_23328D98C();
    v21 = v20;

    if (!v17)
    {

LABEL_24:

      goto LABEL_25;
    }

    if (v16 == v19 && v17 == v21)
    {

      if (!*(v13 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v23 = sub_23328E54C();

      if ((v23 & 1) == 0 || !*(v13 + 16))
      {
        goto LABEL_24;
      }
    }

    v24 = sub_233144260(1954047348, 0xE400000000000000);
    if ((v25 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_23311B0C0(*(v13 + 56) + 32 * v24, v73);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v71 == v74 && v72 == v70)
    {
      break;
    }

    v26 = sub_23328E54C();

    if (v26)
    {
      goto LABEL_34;
    }

LABEL_25:
    ++v12;
    if (!--v11)
    {
      goto LABEL_26;
    }
  }

LABEL_34:
  v52 = sub_233225944();
  swift_beginAccess();
  v54 = v63;
  v53 = v64;
  v55 = v65;
  (*(v64 + 16))(v63, v52, v65);
  v56 = sub_23328D6CC();
  v57 = sub_23328DE3C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v71 = v59;
    *v58 = 136315138;
    *(v58 + 4) = sub_23311A8F4(0xD000000000000039, 0x80000002332AA9D0, &v71);
    _os_log_impl(&dword_233109000, v56, v57, "%s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x23839CFD0](v59, -1, -1);
    MEMORY[0x23839CFD0](v58, -1, -1);
  }

  (*(v53 + 8))(v54, v55);
  type metadata accessor for TTSVBError(0);
  sub_23311A3F8();
  swift_allocError();
  TTSVBError.init(_:_:_:)(0xD000000000000039, 0x80000002332AA9D0, 0, 0, 0, v60);
  return swift_willThrow();
}

unint64_t sub_2331F20B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F68, &qword_23329B830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  *(inited + 32) = 1954047348;
  *(inited + 40) = 0xE400000000000000;
  v3 = [v0 text];
  v4 = sub_23328D98C();
  v6 = v5;

  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v8 = sub_233145024(inited);
  swift_setDeallocating();
  sub_233121E04(inited + 32, &qword_27DDE2290, &qword_233297600);
  v9 = [v1 categoryID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_23328D98C();
    v13 = v12;

    v34 = v7;
    *&v33 = v11;
    *(&v33 + 1) = v13;
    sub_233145134(&v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v8;
    sub_23314474C(v32, 0x79726F6765746163, 0xEA00000000004449, isUniquelyReferenced_nonNull_native);
  }

  v15 = [v1 inputID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_23328D98C();
    v19 = v18;

    v34 = v7;
    *&v33 = v17;
    *(&v33 + 1) = v19;
    sub_233145134(&v33, v32);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v8;
    sub_23314474C(v32, 0x44497475706E69, 0xE700000000000000, v20);
  }

  v21 = sub_23328CE1C();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = [v1 creationDate];
  MEMORY[0x28223BE20](v24);
  if (v25)
  {
    v26 = v25;
    sub_23328CDDC();

    (*(v22 + 32))(&v30 - v23, &v30 - v23, v21);
    v34 = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
    (*(v22 + 16))(boxed_opaque_existential_1, &v30 - v23, v21);
    sub_233145134(&v33, v32);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v8;
    sub_23314474C(v32, 0x6E6F697461657263, 0xEC00000065746144, v28);
    (*(v22 + 8))(&v30 - v23, v21);
    return v31;
  }

  return v8;
}

uint64_t sub_2331F24E8(void *a1)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDF8168;
  v13 = sub_2331EDE08();
  result = sub_2331F46C4(&v13, v1, a1);
  v5 = v13;
  v6 = v13[2];
  if (result > v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  if (__OFADD__(v6, result - v6))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v8 > v5[3] >> 1)
  {
    if (v6 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v13 = sub_2331F36EC(isUniquelyReferenced_nonNull_native, v10, 1, v5);
  }

  sub_2331F5634(v7, v6, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v11 = sub_23328DBDC();

  v12 = sub_23328D95C();
  [v3 setObject:v11 forKey:v12];

  return notify_post("com.apple.livespeech.localprefschanged");
}

uint64_t sub_2331F2694(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_233144260(0x79726F6765746163, 0xEA00000000004449), (v7 & 1) != 0) && (sub_23311B0C0(*(v5 + 56) + 32 * v6, v27), swift_dynamicCast()))
  {
    v9 = v25;
    v8 = v26;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [a2 categoryID];
  v11 = sub_23328D98C();
  v13 = v12;

  if (!v8)
  {
    goto LABEL_26;
  }

  if (v9 == v11 && v8 == v13)
  {

    if (!*(v5 + 16))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v15 = sub_23328E54C();

  LOBYTE(v8) = 0;
  if (v15)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_18;
    }

LABEL_15:
    v16 = sub_233144260(1954047348, 0xE400000000000000);
    if (v17)
    {
      sub_23311B0C0(*(v5 + 56) + 32 * v16, v27);
      if (swift_dynamicCast())
      {
        v19 = v25;
        v18 = v26;
        goto LABEL_19;
      }
    }

LABEL_18:
    v19 = 0;
    v18 = 0;
LABEL_19:
    v20 = [a3 text];
    v21 = sub_23328D98C();
    v23 = v22;

    if (v18)
    {
      if (v19 == v21 && v18 == v23)
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        LOBYTE(v8) = sub_23328E54C();
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

LABEL_26:
  }

  return v8 & 1;
}

id sub_2331F29A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  a3(a1, a2);
  a4();
  v5 = sub_23328DBDC();

  return v5;
}

uint64_t sub_2331F2C14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = sub_23328D6EC();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2331F3914(a2, a3);
  if (v13)
  {
    v14 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v14;
    sub_2331F4240(a4, a5, 0x6C6F626D7973, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v16 = v31;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a1;
    sub_2331F40C4(v16, a2, a3, v17);

    *a1 = v31;
  }

  else
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000044, 0x80000002332AA890);
    MEMORY[0x23839B7E0](a2, a3);
    v19 = v31;
    v20 = v32;
    v21 = sub_233225944();
    swift_beginAccess();
    v22 = v10;
    v23 = *(v10 + 16);
    v24 = v30;
    v23(v12, v21, v30);

    v25 = sub_23328D6CC();
    v26 = sub_23328DE3C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_23311A8F4(v19, v20, &v33);
      _os_log_impl(&dword_233109000, v25, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23839CFD0](v28, -1, -1);
      MEMORY[0x23839CFD0](v27, -1, -1);
    }

    (*(v22 + 8))(v12, v24);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(v19, v20, 0, 0, 0, v29);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2331F2F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = sub_23328D98C();
  v9 = v8;
  v10 = sub_23328D98C();
  a6(v7, v9, v10, v11);

  return 1;
}

uint64_t sub_2331F3034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a6@<X8>)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v9 = qword_27DDF8168;
  swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v9;

  v12 = sub_23328CACC();

  result = sub_23328CA5C();
  a6[3] = result;
  *a6 = v12;
  return result;
}

uint64_t sub_2331F3140(uint64_t (*a1)(uint64_t), uint64_t a2, const char *a3)
{
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_233225944();
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_23328D6CC();
  v11 = sub_23328DE2C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_233109000, v10, v11, a3, v12, 2u);
    MEMORY[0x23839CFD0](v12, -1, -1);
  }

  v13 = (*(v6 + 8))(v8, v5);
  return a1(v13);
}

void static LiveSpeechCategory.observeChangesAsync()()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F18, &qword_23329B760);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  v5 = v0;
  sub_23328CAFC();
  sub_2331F8078(&qword_27DDE2F20, &qword_27DDE2F18, &qword_23329B760);
  v6 = sub_23328D76C();
  (*(v2 + 8))(v4, v1);
  v9[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F28, &qword_23329B768);
  v8 = sub_23315246C(&qword_27DDE2F30, &qword_27DDE2F28, &qword_23329B768, MEMORY[0x277CBCD90]);
  MEMORY[0x23839B500](v7, v8);
}

void sub_2331F3674()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27DDF8168 = v2;
  }

  else
  {
    __break(1u);
  }
}

void *sub_2331F36EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F60, &unk_23329B820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2331F3820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F38, &qword_23329B7F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2331F3914(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_233144260(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2331F43C8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_2331F3F14(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_2331F39AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F50, &qword_23329B810);
  v34 = v4;
  result = sub_23328E34C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_23328E61C();
      sub_23328DA3C();
      result = sub_23328E66C();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_2331F3C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
  v37 = v4;
  result = sub_23328E34C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_23328E61C();
      sub_23328DA3C();
      result = sub_23328E66C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2331F3F14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23328E16C() + 1) & ~v5;
    do
    {
      sub_23328E61C();

      sub_23328DA3C();
      v9 = sub_23328E66C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2331F40C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_233144260(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2331F39AC(v16, a4 & 1);
      v11 = sub_233144260(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_23328E5AC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2331F43C8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2331F4240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_233144260(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2331F3C54(v18, a5 & 1);
      v13 = sub_233144260(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_23328E5AC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2331F4538();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_2331F43C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F50, &qword_23329B810);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_2331F4538()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
  v2 = *v0;
  v3 = sub_23328E33C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_2331F46C4(uint64_t *a1, void *a2, void *a3)
{
  v8 = *a1;
  result = sub_2331F4ED0(*a1, a2, a3);
  if (v3)
  {

    return v4;
  }

  if (v10)
  {
    v4 = v8[2];
LABEL_7:

    return v4;
  }

  v4 = result;
  if (!__OFADD__(result, 1))
  {
    v12 = v8 + 2;
    v11 = v8[2];
    if (result + 1 == v11)
    {
      goto LABEL_7;
    }

    v19 = a1;
    v13 = result + 5;
    while (1)
    {
      v15 = v13 - 4;
      if (v13 - 4 >= v11)
      {
        break;
      }

      v20 = v8[v13];

      v16 = sub_2331F2694(&v20, a2, a3);

      if ((v16 & 1) == 0)
      {
        if (v15 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v4 >= *v12)
          {
            goto LABEL_25;
          }

          if (v15 >= *v12)
          {
            goto LABEL_26;
          }

          v17 = v8[v4 + 4];
          v18 = v8[v13];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2331F46B0(v8);
          }

          v8[v4 + 4] = v18;

          if (v15 >= v8[2])
          {
            goto LABEL_27;
          }

          v8[v13] = v17;

          *v19 = v8;
        }

        ++v4;
      }

      v12 = v8 + 2;
      v11 = v8[2];
      v14 = v13 - 3;
      ++v13;
      if (v14 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2331F488C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F50, &qword_23329B810);
    v3 = sub_23328E35C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_233144260(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2331F4990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2660, &qword_233298100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2331F4A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
    v3 = sub_23328E35C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_233144260(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

char *sub_2331F4B14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = sub_23328CE1C();
  v4 = *(v3 - 8);
  (*(v4 + 56))(&v13 - v2, 1, 1, v3);
  v5 = [objc_allocWithZone(LiveSpeechPhrase) init];
  v6 = &v5[OBJC_IVAR___LiveSpeechPhrase_text];
  swift_beginAccess();
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = v5;

  v8 = &v7[OBJC_IVAR___LiveSpeechPhrase_inputID];
  swift_beginAccess();
  *v8 = 0;
  *(v8 + 1) = 0;

  v9 = &v7[OBJC_IVAR___LiveSpeechPhrase_categoryID];
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 1) = 0;

  MEMORY[0x28223BE20](v10);
  sub_233121D34(&v13 - v2, &v13 - v2, &qword_27DDE1A18, &unk_233297730);
  v11 = 0;
  if ((*(v4 + 48))(&v13 - v2, 1, v3) != 1)
  {
    v11 = sub_23328CD9C();
    (*(v4 + 8))(&v13 - v2, v3);
  }

  [v7 setCreationDate_];

  sub_233121E04(&v13 - v2, &qword_27DDE1A18, &unk_233297730);
  return v7;
}

void sub_2331F4D74(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v13 = qword_27DDF8168;
  v16 = sub_2331EDE08();
  sub_2331EF4C0(&v16, a3, a4, a1, a2, a5, a6);
  if (v6)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    v14 = sub_23328DBDC();

    v15 = sub_23328D95C();
    [v13 setObject:v14 forKey:v15];
  }
}

uint64_t sub_2331F4ED0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    v11 = *(v8 + 8 * v7);

    v9 = sub_2331F2694(&v11, a2, a3);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_2331F4F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 32;
    while (1)
    {
      v6 = *(v5 + 8 * v4);
      if (*(v6 + 16))
      {

        v7 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
        if (v8 & 1) != 0 && (sub_23311B0C0(*(v6 + 56) + 32 * v7, v14), (swift_dynamicCast()))
        {
          if (v12 == v15 && v13 == a3)
          {

            return v4;
          }

          v9 = sub_23328E54C();

          if (v9)
          {
            return v4;
          }
        }

        else
        {
        }
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

void sub_2331F510C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v11 = sub_23328D6EC();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v14 = qword_27DDF8168;
  v15 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  if (*(v15 + 16))
  {
    sub_233144260(a5, a6);
    v17 = v16;

    if (v17)
    {
LABEL_8:
      v19 = qword_27DDF8168;
      v36[0] = sub_2331EDE08();
      v20 = v35;
      sub_2331EFB38(v36, a3, a4, a1, v34, a5, a6);
      if (v20)
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
        v29 = sub_23328DBDC();

        v30 = sub_23328D95C();
        [v19 setObject:v29 forKey:v30];
      }

      return;
    }
  }

  else
  {
  }

  v18 = sub_23328E37C();

  if (v18 <= 1)
  {
    goto LABEL_8;
  }

  v21 = sub_233225944();
  swift_beginAccess();
  v23 = v32;
  v22 = v33;
  (*(v32 + 16))(v13, v21, v33);
  v24 = sub_23328D6CC();
  v25 = sub_23328DE3C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_23311A8F4(0xD000000000000048, 0x80000002332AAA10, &v37);
    _os_log_impl(&dword_233109000, v24, v25, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23839CFD0](v27, -1, -1);
    MEMORY[0x23839CFD0](v26, -1, -1);
  }

  (*(v23 + 8))(v13, v22);
  type metadata accessor for TTSVBError(0);
  sub_23311A3F8();
  swift_allocError();
  TTSVBError.init(_:_:_:)(0xD000000000000048, 0x80000002332AAA10, 0, 0, 0, v28);
  swift_willThrow();
}

uint64_t sub_2331F54C8()
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = sub_2331EDE08();

  v2 = *(v1 + 16);
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    v3 = sub_23328E2DC();
    type metadata accessor for LiveSpeechPhrase(v3);
    v4 = 32;
    do
    {

      sub_2331EEA44(v5);
      sub_23328E2BC();
      sub_23328E2EC();
      sub_23328E2FC();
      sub_23328E2CC();
      v4 += 8;
      --v2;
    }

    while (v2);

    return v7;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_2331F5634(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_2331F5704()
{
  v0 = [objc_allocWithZone(LiveSpeechCategory) init];
  v1 = &v0[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  *v1 = 0;
  *(v1 + 1) = 0xE000000000000000;
  v2 = v0;

  v3 = &v2[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;

  v4 = &v2[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;

  return v2;
}

unint64_t sub_2331F57EC()
{
  if (qword_27DDF8160 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v0 = qword_27DDF8168;
    v1 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

    v2 = sub_2331F00F0(v1);

    v27 = v2;
    v3 = v2 >> 62 ? sub_23328E19C() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v3)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23839BFC0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 isSaved];

      if (v8)
      {

        goto LABEL_18;
      }

      ++v4;
      if (v7 == v3)
      {
        goto LABEL_14;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_14:

  v9 = [objc_allocWithZone(LiveSpeechCategory) init];
  v10 = &v9[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  *v10 = 0x6465766153;
  *(v10 + 1) = 0xE500000000000000;
  v11 = v9;

  v12 = &v11[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  *v12 = 0x6B72616D6B6F6F62;
  *(v12 + 1) = 0xE800000000000000;

  v13 = &v11[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  *v13 = 0x6465766153;
  *(v13 + 1) = 0xE500000000000000;

  MEMORY[0x23839B920](v14);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23328DC1C();
  }

  sub_23328DC4C();
  v2 = v27;
LABEL_18:
  if (v2 >> 62)
  {
    v15 = sub_23328E19C();
  }

  else
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v15 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x23839BFC0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v17 = *(v2 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v19 = [v17 isRecents];

    if (v19)
    {
      return v2;
    }
  }

  v20 = [objc_allocWithZone(LiveSpeechCategory) init];
  v21 = &v20[OBJC_IVAR___LiveSpeechCategory_name];
  swift_beginAccess();
  *v21 = 0x73746E65636552;
  *(v21 + 1) = 0xE700000000000000;
  v22 = v20;

  v23 = &v22[OBJC_IVAR___LiveSpeechCategory_symbol];
  swift_beginAccess();
  *v23 = 0x6B636F6C63;
  *(v23 + 1) = 0xE500000000000000;

  v24 = &v22[OBJC_IVAR___LiveSpeechCategory_categoryID];
  swift_beginAccess();
  *v24 = 0x73746E65636552;
  *(v24 + 1) = 0xE700000000000000;

  MEMORY[0x23839B920](v25);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23328DC1C();
  }

  sub_23328DC4C();
  return v27;
}

char *sub_2331F5C38(uint64_t a1, uint64_t a2)
{
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v4 = qword_27DDF8168;
  v5 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  if (*(v5 + 16))
  {
    v6 = sub_233144260(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      type metadata accessor for LiveSpeechCategory(v9);

      return sub_2331F0BA8(a1, a2, v8);
    }
  }

  v11 = sub_23328E37C();

  if (!v11)
  {
    v13 = 0xE500000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x6B72616D6B6F6F62;
    v16 = 0x6465766153;
    goto LABEL_10;
  }

  if (v11 == 1)
  {
    v13 = 0xE700000000000000;
    v14 = 0xE500000000000000;
    v15 = 0x6B636F6C63;
    v16 = 0x73746E65636552;
LABEL_10:
    type metadata accessor for LiveSpeechCategory(v12);
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v18 = &v17[OBJC_IVAR___LiveSpeechCategory_name];
    swift_beginAccess();
    *v18 = v16;
    v18[1] = v13;
    v19 = v17;

    v20 = &v19[OBJC_IVAR___LiveSpeechCategory_symbol];
    swift_beginAccess();
    *v20 = v15;
    v20[1] = v14;

    v21 = &v19[OBJC_IVAR___LiveSpeechCategory_categoryID];
    swift_beginAccess();
    *v21 = v16;
    v21[1] = v13;

    return v19;
  }

  return 0;
}

uint64_t sub_2331F5E64(uint64_t a1, uint64_t a2)
{
  if (qword_27DDF8160 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = qword_27DDF8168;
  v3 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    do
    {
      if (!v6)
      {
        while (1)
        {
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v9 >= v7)
          {

            return 0;
          }

          v6 = *(v3 + 64 + 8 * v9);
          ++v8;
          if (v6)
          {
            v8 = v9;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_18;
      }

LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v8 << 6);
    }

    while (!*(*(*(v3 + 56) + 8 * v11) + 16));
    v12 = *(*(v3 + 48) + 16 * v11 + 8);

    sub_233144260(1701667182, 0xE400000000000000);
    if (v13)
    {
      sub_23311A294();
      if (!sub_23328E08C())
      {
        break;
      }
    }
  }

  return v12;
}

uint64_t sub_2331F6044(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  v29 = a1;
  v12 = sub_23328D6EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2331F5E64(a2, a3))
  {

    v16 = sub_233225944();
    swift_beginAccess();
    (*(v13 + 16))(v15, v16, v12);
    v17 = sub_23328D6CC();
    v18 = sub_23328DE3C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_23311A8F4(0xD00000000000004BLL, 0x80000002332AA980, &v31);
      _os_log_impl(&dword_233109000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23839CFD0](v20, -1, -1);
      MEMORY[0x23839CFD0](v19, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD00000000000004BLL, 0x80000002332AA980, 0, 0, 0, v21);
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F58, &qword_23329B818);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_233297630;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a2;
    *(inited + 56) = a3;
    *(inited + 64) = 0x6C6F626D7973;
    *(inited + 72) = 0xE600000000000000;
    *(inited + 80) = a6;
    *(inited + 88) = a7;

    v24 = sub_2331F4A00(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F48, &qword_23329B808);
    swift_arrayDestroy();
    v25 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = *v25;
    sub_2331F40C4(v24, v28, a5, isUniquelyReferenced_nonNull_native);

    *v25 = v30[0];
  }

  return result;
}

char *sub_2331F6388(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_23328CE8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_23328CE7C();
  v12 = sub_23328CE3C();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v15 = qword_27DDF8168;
  v28[0] = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
  v16 = v29;
  sub_2331F6044(v28, a1, a2, v12, v14, a3, a4);
  if (v16)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
    v17 = sub_23328D87C();
    v29 = v12;
    v18 = a4;
    v27 = v14;
    v19 = v17;

    v20 = sub_23328D95C();
    [v15 setObject:v19 forKey:v20];

    notify_post("com.apple.livespeech.localprefschanged");
    v21 = [objc_allocWithZone(LiveSpeechCategory) init];
    v22 = &v21[OBJC_IVAR___LiveSpeechCategory_name];
    swift_beginAccess();
    *v22 = a1;
    *(v22 + 1) = a2;
    a4 = v21;

    v23 = &a4[OBJC_IVAR___LiveSpeechCategory_symbol];
    swift_beginAccess();
    *v23 = a3;
    *(v23 + 1) = v18;

    v24 = &a4[OBJC_IVAR___LiveSpeechCategory_categoryID];
    swift_beginAccess();
    v25 = v27;
    *v24 = v29;
    *(v24 + 1) = v25;
  }

  return a4;
}

uint64_t sub_2331F668C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  result = sub_2331F4F88(*a1, a2, a3);
  v8 = result;
  v25 = v3;
  if (v3)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  if (__OFADD__(result, 1))
  {
    goto LABEL_33;
  }

  v10 = v5 + 2;
  v9 = v5[2];
  if (result + 1 == v9)
  {
    return v8;
  }

  for (i = result + 5; ; ++i)
  {
    v13 = i - 4;
    if (i - 4 >= v9)
    {
      break;
    }

    v14 = v5[i];
    if (*(v14 + 16))
    {

      v15 = sub_233144260(0x79726F6765746163, 0xEA00000000004449);
      if (v16 & 1) != 0 && (sub_23311B0C0(*(v14 + 56) + 32 * v15, v24), (swift_dynamicCast()))
      {
        if (v22 == a2 && v23 == a3)
        {

          goto LABEL_9;
        }

        v19 = sub_23328E54C();

        if (v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    if (v13 != v8)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v8 >= *v10)
      {
        goto LABEL_30;
      }

      if (v13 >= *v10)
      {
        goto LABEL_31;
      }

      v17 = v5[v8 + 4];
      v18 = v5[i];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2331F46B0(v5);
      }

      v5[v8 + 4] = v18;

      if (v13 >= v5[2])
      {
        goto LABEL_32;
      }

      v5[i] = v17;

      *a1 = v5;
    }

    ++v8;
LABEL_9:
    v10 = v5 + 2;
    v9 = v5[2];
    v12 = i - 3;
    if (v12 == v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2331F68B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_23328E37C();

  if (v8 <= 1)
  {
    v9 = sub_233225944();
    swift_beginAccess();
    (*(v5 + 16))(v7, v9, v4);

    v10 = sub_23328D6CC();
    v11 = sub_23328DE3C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_23311A8F4(a1, a2, &v27);
      _os_log_impl(&dword_233109000, v10, v11, "Cannot delete category with ID: %s. System categories cant be deleted", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23839CFD0](v13, -1, -1);
      MEMORY[0x23839CFD0](v12, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  if (qword_27DDF8160 != -1)
  {
    swift_once();
  }

  v15 = qword_27DDF8168;
  v28[0] = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
  sub_2331F3914(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
  v16 = sub_23328D87C();

  v17 = sub_23328D95C();
  [v15 setObject:v16 forKey:v17];

  v18 = qword_27DDF8168;
  v28[0] = sub_2331EDE08();

  v19 = sub_2331F668C(v28, a1, a2);

  v20 = v28[0];
  v21 = *(v28[0] + 16);
  if (v19 > v21)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v19 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v21, v19 - v21))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v19 > v20[3] >> 1)
  {
    if (v21 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v28[0] = sub_2331F36EC(isUniquelyReferenced_nonNull_native, v23, 1, v20);
  }

  sub_2331F5634(v19, v21, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
  v24 = sub_23328DBDC();

  v25 = sub_23328D95C();
  [v18 setObject:v24 forKey:v25];

  return notify_post("com.apple.livespeech.localprefschanged");
}

uint64_t sub_2331F6D00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  if (sub_2331F5E64(a2, a3))
  {

    v16 = sub_233225944();
    swift_beginAccess();
    (*(v10 + 16))(v12, v16, v9);
    v17 = sub_23328D6CC();
    v18 = sub_23328DE3C();
    v19 = v9;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_23311A8F4(0xD00000000000004BLL, 0x80000002332AA980, &v45);
      _os_log_impl(&dword_233109000, v17, v18, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23839CFD0](v21, -1, -1);
      MEMORY[0x23839CFD0](v20, -1, -1);
    }

    (*(v10 + 8))(v12, v19);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    v23 = v22;
    v24 = 0x80000002332AA980;
    v25 = 0xD00000000000004BLL;
LABEL_5:
    TTSVBError.init(_:_:_:)(v25, v24, 0, 0, 0, v23);
    return swift_willThrow();
  }

  v27 = sub_2331F3914(v42, a5);
  if (!v27)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD00000000000003DLL, 0x80000002332AA940);
    MEMORY[0x23839B7E0](v42, a5);
    v33 = v43;
    v32 = v44;
    v34 = sub_233225944();
    swift_beginAccess();
    v35 = v9;
    (*(v10 + 16))(v15, v34, v9);

    v36 = sub_23328D6CC();
    v37 = sub_23328DE3C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v33;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_23311A8F4(v38, v32, &v45);
      _os_log_impl(&dword_233109000, v36, v37, "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23839CFD0](v40, -1, -1);
      MEMORY[0x23839CFD0](v39, -1, -1);

      (*(v10 + 8))(v15, v35);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
      v38 = v33;
    }

    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    v23 = v41;
    v25 = v38;
    v24 = v32;
    goto LABEL_5;
  }

  v28 = v27;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = v28;
  sub_2331F4240(a2, a3, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v30 = v43;

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *a1;
  sub_2331F40C4(v30, v42, a5, v31);

  *a1 = v43;
  return notify_post("com.apple.livespeech.localprefschanged");
}

void sub_2331F71D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_23328E37C();

  if (v13 > 1)
  {
    if (qword_27DDF8160 != -1)
    {
      swift_once();
    }

    v22 = qword_27DDF8168;
    v26 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
    sub_2331F6D00(&v26, a3, a4, a1, a2);
    if (v4)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
      v23 = sub_23328D87C();

      v24 = sub_23328D95C();
      [v22 setObject:v23 forKey:v24];
    }
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332AA8E0);
    MEMORY[0x23839B7E0](a1, a2);
    MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AA910);
    v14 = v26;
    v15 = v27;
    v16 = sub_233225944();
    swift_beginAccess();
    (*(v10 + 16))(v12, v16, v9);

    v17 = sub_23328D6CC();
    v18 = sub_23328DE3C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_23311A8F4(v14, v15, &v28);
      _os_log_impl(&dword_233109000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23839CFD0](v20, -1, -1);
      MEMORY[0x23839CFD0](v19, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(v14, v15, 0, 0, 0, v21);
    swift_willThrow();
  }
}

uint64_t sub_2331F75A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_23328E37C();

  if (v13 > 1)
  {
    if (qword_27DDF8160 != -1)
    {
      swift_once();
    }

    v23 = qword_27DDF8168;
    v27 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
    sub_2331F2C14(&v27, a1, a2, a3, a4);
    if (v4)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
      v24 = sub_23328D87C();

      v25 = sub_23328D95C();
      [v23 setObject:v24 forKey:v25];

      return notify_post("com.apple.livespeech.localprefschanged");
    }
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332AA830);
    MEMORY[0x23839B7E0](a1, a2);
    MEMORY[0x23839B7E0](0xD000000000000023, 0x80000002332AA860);
    v14 = v27;
    v15 = v28;
    v16 = sub_233225944();
    swift_beginAccess();
    (*(v10 + 16))(v12, v16, v9);

    v17 = sub_23328D6CC();
    v18 = sub_23328DE3C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_23311A8F4(v14, v15, &v29);
      _os_log_impl(&dword_233109000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23839CFD0](v20, -1, -1);
      MEMORY[0x23839CFD0](v19, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(v14, v15, 0, 0, 0, v21);
    return swift_willThrow();
  }
}

void _sSo18LiveSpeechCategoryC06TextToB19VoiceBankingSupportE27addSystemCategoriesIfNeededyyFZ_0()
{
  if (qword_27DDF8160 != -1)
  {
LABEL_74:
    swift_once();
  }

  v0 = qword_27DDF8168;
  v1 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();

  v2 = sub_2331F00F0(v1);

  if (v2 >> 62)
  {
    v3 = sub_23328E19C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x23839BFC0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v9 = [v7 isSaved];

    ++v4;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  v10 = sub_2331F3820(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_2331F3820((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v6 = v10;
  v10[v12 + 32] = 0;
LABEL_16:
  if (!v3)
  {
LABEL_26:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2331F3820(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = qword_27DDF7AD0 + 1328;
    v20 = *(v6 + 2);
    v19 = *(v6 + 3);
    if (v20 >= v19 >> 1)
    {
      v6 = sub_2331F3820((v19 > 1), v20 + 1, 1, v6);
    }

    *(v6 + 2) = v20 + 1;
    v6[v20 + 32] = 1;
    goto LABEL_33;
  }

  v13 = 0;
  while (1)
  {
    if (v5)
    {
      v14 = MEMORY[0x23839BFC0](v13, v2);
    }

    else
    {
      if (v13 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v14 = *(v2 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_71;
    }

    v17 = [v14 isRecents];

    if (v17)
    {
      break;
    }

    ++v13;
    if (v16 == v3)
    {
      goto LABEL_26;
    }
  }

  if (*(v6 + 2))
  {
    v18 = &qword_27DDF7AD0[166];
LABEL_33:
    v21 = v18[45];
    v22 = _sSo14NSUserDefaultsC31TextToSpeechVoiceBankingSupportE04liveE10CategoriesSDySSSDyS2SGGvg_0();
    v23 = *(v6 + 2);
    if (!v23)
    {
LABEL_62:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2EB8, &unk_23329B6C0);
      v56 = sub_23328D87C();

      v57 = sub_23328D95C();
      [v21 setObject:v56 forKey:v57];

      return;
    }

    v59 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F40, &qword_23329B800);
    v24 = 32;
    while (1)
    {
      v60 = v24;
      v61 = v23;
      v25 = v6[v24] == 0;
      if (v6[v24])
      {
        v26 = 0x73746E65636552;
      }

      else
      {
        v26 = 0x6465766153;
      }

      v27 = 0xE500000000000000;
      if (v6[v24])
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE500000000000000;
      }

      v29 = 0x6B72616D6B6F6F62;
      if (v25)
      {
        v27 = 0xE800000000000000;
      }

      else
      {
        v29 = 0x6B636F6C63;
      }

      v62 = v29;
      v63 = v27;
      v30 = sub_23328E35C();

      v31 = sub_233144260(1701667182, 0xE400000000000000);
      if (v32)
      {
        goto LABEL_66;
      }

      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v31;
      v33 = (v30[6] + 16 * v31);
      *v33 = 1701667182;
      v33[1] = 0xE400000000000000;
      v34 = (v30[7] + 16 * v31);
      *v34 = v26;
      v34[1] = v28;
      v35 = v30[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_67;
      }

      v30[2] = v37;

      v38 = sub_233144260(0x6C6F626D7973, 0xE600000000000000);
      if (v39)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      *(v30 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
      v40 = (v30[6] + 16 * v38);
      *v40 = 0x6C6F626D7973;
      v40[1] = 0xE600000000000000;
      v41 = (v30[7] + 16 * v38);
      *v41 = v62;
      v41[1] = v63;
      v42 = v30[2];
      v36 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v36)
      {
        goto LABEL_67;
      }

      v30[2] = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F48, &qword_23329B808);
      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = sub_233144260(v26, v28);
      v47 = v22[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_68;
      }

      v50 = v45;
      if (v22[3] >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v45 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_2331F43C8();
          if ((v50 & 1) == 0)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        sub_2331F39AC(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_233144260(v26, v28);
        if ((v50 & 1) != (v52 & 1))
        {
          v58 = sub_23328E5AC();
          __break(1u);

          __break(1u);
          return;
        }

        v46 = v51;
        if ((v50 & 1) == 0)
        {
LABEL_57:
          v22[(v46 >> 6) + 8] |= 1 << v46;
          v53 = (v22[6] + 16 * v46);
          *v53 = v26;
          v53[1] = v28;
          *(v22[7] + 8 * v46) = v30;
          v54 = v22[2];
          v36 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v36)
          {
            goto LABEL_73;
          }

          v22[2] = v55;
          goto LABEL_36;
        }
      }

      *(v22[7] + 8 * v46) = v30;

LABEL_36:
      v24 = v60 + 1;
      --v23;
      v6 = v59;
      if (v61 == 1)
      {

        goto LABEL_62;
      }
    }
  }
}

uint64_t sub_2331F8078(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2331F817C()
{
  result = qword_27DDF8310[0];
  if (!qword_27DDF8310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF8310);
  }

  return result;
}

uint64_t sub_2331F81EC(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    v4 = [swift_getObjCClassFromMetadata() entity];
    v5 = [v4 attributesByName];
    sub_233144EEC(0, &qword_280D39B88, 0x277CBE358);
    v6 = sub_23328D89C();

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = sub_2331F98A0(*(v6 + 16), 0);
      v9 = sub_2331F9BA8(&v11, v8 + 4, v7, v6);
      sub_233113BBC(v11);
      if (v9 == v7)
      {
LABEL_9:
        v10 = sub_2331F8334(v8);

        return v10;
      }

      __break(1u);
    }

    v8 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return sub_2331F8334(v2);
}

uint64_t sub_2331F8334(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2331F9924(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2331F9924((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_233145134(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id static DSO<>.entity.getter()
{
  v0 = [swift_getObjCClassFromMetadata() entity];

  return v0;
}

void static DSO<>.entityName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v3 = [v2 name];

  if (v3)
  {
    sub_23328D98C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static DSO<>.count(in:configure:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F80, &unk_23329B940);
  v8 = (*(a5 + 16))(a4, a5);
  v10 = v9;
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_2331F9848(v8, v10);
  a2();
  v13 = sub_23328DF6C();

  return v13;
}

void static DSO<>.hydrated(in:matching:)(void *a1, void *a2, uint64_t a3)
{
  v3 = [a1 registeredObjects];
  sub_233144EEC(0, &qword_27DDE2F88, 0x277CBE438);
  sub_2331F9D00();
  v4 = sub_23328DD2C();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_23328E18C();
    sub_23328DD4C();
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v19 = v6;
  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!sub_23328E1BC() || (swift_dynamicCast(), v17 = v21, v15 = v7, v16 = v8, !v21))
    {
LABEL_21:
      sub_233113BBC(v4);
      return;
    }

LABEL_18:
    if (([v17 isFault] & 1) == 0)
    {
      v18 = swift_dynamicCastUnknownClass();
      if (v18)
      {
        if ([a2 evaluateWithObject_])
        {
          goto LABEL_21;
        }
      }
    }

    v7 = v15;
    v8 = v16;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_21;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void (*sub_2331F88A8(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return nullsub_1;
}

uint64_t static DSO<>.fetch(in:config:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23328D6EC();
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F80, &unk_23329B940);
  v9 = (*(a5 + 16))(a4, a5);
  v11 = v10;
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_2331F9848(v9, v11);
  [v13 setReturnsObjectsAsFaults_];
  a2(v13);
  v14 = sub_23328DF7C();

  return v14;
}

uint64_t static DSO<>.fetch(properties:in:config:)(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_23328D6EC();
  v10 = MEMORY[0x28223BE20](v9);
  (*(a6 + 16))(a5, a6, v10);
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v12 = sub_23328D95C();

  v13 = [v11 initWithEntityName_];

  [v13 setResultType_];
  v16 = type metadata accessor for DSOFetchProperties(0, a5, v14, v15);
  sub_2331F81EC(v16);
  v17 = sub_23328DBDC();

  [v13 setPropertiesToFetch_];

  a3(v13);
  sub_233144EEC(0, &qword_27DDE2F98, 0x277CBEAC0);
  v18 = sub_23328DF7C();
  v19 = sub_2331F8EC4(v18);

  if (v19)
  {
    return v19;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2331F8EC4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v8 = MEMORY[0x277D84F90];
    sub_2331F9944(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_23328E19C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x23839BFC0](0, a1);
LABEL_10:
  v6 = v5;
  sub_23328D88C();

  return 0;
}

void static DSO<>.findOrFetch(in:matching:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  static DSO<>.hydrated(in:matching:)(a1, a2, a3);
  if (!v8)
  {
    MEMORY[0x28223BE20](0);
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v9[7] = static DSO<>.fetch(in:config:)(a1, sub_2331F9DE8, v9, a3, a4);
    sub_23328DC5C();
    swift_getWitnessTable();
    sub_23328DDAC();
  }
}

void static DSO<>.findOrCreate(in:matching:config:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  static DSO<>.findOrFetch(in:matching:)(a1, a2, a5, a6);
  if (!v9)
  {
    NSManagedObjectContext.insertDSO<A>(_:)(0, a5, a6);
    a3();
  }
}

uint64_t NSManagedObjectContext.insertDSO<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = objc_opt_self();
  (*(a3 + 16))(a2, a3);
  v8 = sub_23328D95C();

  v9 = [v7 insertNewObjectForEntityForName:v8 inManagedObjectContext:v4];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

void DSO<>.refresh(_:)(char a1)
{
  v3 = [v1 managedObjectContext];
  [v3 refreshObject:v1 mergeChanges:a1 & 1];
}

double DSO<>.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = [v4 changedValues];
  v9 = sub_23328D89C();

  if (*(v9 + 16) && (v10 = sub_233144260(a1, a2), (v11 & 1) != 0))
  {
    sub_23311B0C0(*(v9 + 56) + 32 * v10, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_233297B30;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = sub_23328DBDC();

  v10 = [v4 committedValuesForKeys_];

  v11 = sub_23328D89C();
  if (*(v11 + 16) && (v12 = sub_233144260(a1, a2), (v13 & 1) != 0))
  {
    sub_23311B0C0(*(v11 + 56) + 32 * v12, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Bool __swiftcall NSManagedObjectContext.saveOrRollback()()
{
  v1 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = 0;
  v7 = [v1 save_];
  if (v7)
  {
    v8 = v17[0];
  }

  else
  {
    v9 = v17[0];
    v10 = sub_23328CA7C();

    swift_willThrow();
    v11 = sub_233225440();
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_23328D6CC();
    v13 = sub_23328DE3C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_233109000, v12, v13, "CoreData save failed! Rolling back context", v14, 2u);
      MEMORY[0x23839CFD0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    [v1 rollback];
  }

  return v7;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.trySave()()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v4[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0;
  v6 = xmmword_23329B930;
  v7 = 3;
  swift_storeEnumTagMultiPayload();
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331F9E4C, v4, &v6, v3);
  sub_2331F9EC4(v3);
}

id sub_2331F9848(uint64_t a1, uint64_t a2)
{
  v3 = sub_23328D95C();

  v4 = [v2 initWithEntityName_];

  return v4;
}

void *sub_2331F98A0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_2331F9924(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2331F9964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2331F9944(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2331F9A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2331F9964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E0, &unk_23329B9C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2331F9A74(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2F60, &unk_23329B820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2331F9BA8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2331F9D00()
{
  result = qword_27DDE2F90;
  if (!qword_27DDE2F90)
  {
    sub_233144EEC(255, &qword_27DDE2F88, 0x277CBE438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2F90);
  }

  return result;
}

uint64_t sub_2331F9D68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2978, &qword_233299A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2331F9DE8(void *a1)
{
  [a1 setPredicate_];
  [a1 setReturnsObjectsAsFaults_];

  return [a1 setFetchLimit_];
}

id sub_2331F9E4C()
{
  v1 = *(v0 + 16);
  v4 = 0;
  if ([v1 save_])
  {
    return v4;
  }

  v3 = v4;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_2331F9EC4(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError.Reason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2331F9F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2331F9F90(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2331F9FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}
id TTSVBVoiceBankingManager.audioService.getter()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  }

  else
  {
    v4 = v0;
    type metadata accessor for TTSVBAudioService();
    v5 = TTSVBAudioService.__allocating_init()();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_233175120@<X0>(void *a1@<X8>)
{
  result = TTSVBVoiceBankingManager.audioService.getter();
  *a1 = result;
  return result;
}

void sub_23317514C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  *(*a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService) = *a1;
  v3 = v2;
}

void (*TTSVBVoiceBankingManager.audioService.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = TTSVBVoiceBankingManager.audioService.getter();
  return sub_2331751F8;
}

void sub_2331751F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService);
  *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService) = v2;
}

uint64_t sub_233175210()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_23317527C();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_2331B9710(v4);
  }

  sub_2331BDE90(v2);
  return v3;
}

uint64_t sub_23317527C()
{
  v0 = sub_23328CC9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5];
  static TTSVBPath.longLivedLogsDirectoryURL()();
  (*(v1 + 56))(v6, 0, 1, v0);
  v7 = (*(v1 + 32))(&v11[-v3], v6, v0);
  v8 = MEMORY[0x28223BE20](v7);
  (*(v1 + 16))(&v11[-v3], &v11[-v3], v0, v8);
  sub_23328D2EC();
  swift_allocObject();
  v9 = sub_23328D2DC();
  (*(v1 + 8))(&v11[-v3], v0);
  return v9;
}

id TTSVBVoiceBankingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TTSVBVoiceBankingManager.init()()
{
  ObjectType = swift_getObjectType();
  v27 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v27);
  v26 = v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23328DEAC();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328DE7C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23328D80C();
  MEMORY[0x28223BE20](v5 - 8);
  v24 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue;
  v23 = sub_233144EEC(0, &qword_280D3A220, 0x277D85C78);
  sub_23328D7EC();
  v30 = MEMORY[0x277D84F90];
  v21[2] = sub_2331B2AAC(&qword_280D3A230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  v21[3] = sub_23315246C(&qword_280D3A250, &unk_27DDE2B80, qword_233290290, MEMORY[0x277D83970]);
  sub_23328E14C();
  v6 = *MEMORY[0x277D85260];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v21[0] = v7;
  v8(v3, v6, v28);
  v9 = sub_23328DEDC();
  v10 = v22;
  *&v22[v24] = v9;
  v24 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
  sub_23328D7EC();
  v30 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v8(v3, v6, v28);
  *&v10[v24] = sub_23328DEDC();
  *&v10[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore] = 0;
  *&v10[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession] = 0;
  *&v10[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___audioService] = 0;
  *&v10[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger] = 1;
  v29.receiver = v10;
  v29.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v29, sel_init);
  IsVoicebankingd = TTSVBProcessIsVoicebankingd(v11, v12);
  type metadata accessor for TTSVBDataStore(0);
  LOBYTE(v30) = IsVoicebankingd;
  v14 = v26;
  swift_storeEnumTagMultiPayload();
  v15 = sub_23328CC9C();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBPath.url.getter(v17);
  sub_2331BDC54(v14, type metadata accessor for TTSVBPath);
  v18 = sub_2331E3A34(&v30, v17);
  v19 = *&v11[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  *&v11[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore] = v18;

  return v11;
}

uint64_t sub_233175ADC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v6 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (v6)
  {
    v10 = result;
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v10;
    v11[4] = a2;
    v12 = v6;
    v13 = v5;

    a5(a4, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_233175B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a6;
  v28 = a7;
  v23[1] = a5;
  v24 = a3;
  v25 = a4;
  v23[0] = a1;
  v8 = sub_23328D7CC();
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23328D80C();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v23 - v16;
  v26 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  sub_233121D34(v23[0], v23 - v16, &unk_27DDE25D0, &unk_233290330);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = v24;
  *(v19 + 24) = v20;
  sub_233121D9C(v17, v19 + v18, &unk_27DDE25D0, &unk_233290330);
  aBlock[4] = v27;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v28;
  v21 = _Block_copy(aBlock);

  sub_23328D7DC();
  v31 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v10, v21);
  _Block_release(v21);
  (*(v30 + 8))(v10, v8);
  (*(v11 + 8))(v13, v29);
}

void TTSVBVoiceBankingManager.dataStoreEventPublisher.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v1)
  {
    v2 = v1;
    TTSVBDataStore.eventPublisher.getter();
  }

  else
  {
    __break(1u);
  }
}

void TTSVBVoiceBankingManager.viewContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v1)
  {
    v3 = 0;
    v2 = v1;
    sub_2331E511C(&v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_233176034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23328D7CC();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D80C();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_233122608(a1);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  aBlock[4] = sub_2331BE6E4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_608;
  v15 = _Block_copy(aBlock);

  sub_23328D7DC();
  v20 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TTSVBVoiceBankingManager.createVoice(named:localeID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = TTSVBProcessIsVoicebankingd(a1, a2);
  if (result)
  {
    v14 = swift_allocObject();
    v14[2] = v6;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a4;
    v15 = v6;

    sub_233178950(sub_23317643C, v14, a5, a6, &unk_284875588, sub_2331BDEF0, &block_descriptor_590);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23317646C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v43 = a1;
  v44 = a3;
  v8 = sub_23328D6EC();
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D83C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = v5;
  v16 = *(v5 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_23328D85C();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v18 = sub_233225440();
    v19 = *(v45 + 16);
    v40 = v8;
    v19(v10, v18, v8);

    v20 = sub_23328D6CC();
    v21 = sub_23328DE1C();

    v22 = a4;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = a4;
      v25 = a2;
      v26 = v24;
      v46 = v24;
      *v23 = 136315394;
      v27 = v43;
      *(v23 + 4) = sub_23311A8F4(v43, v25, &v46);
      *(v23 + 12) = 2080;
      v28 = v44;
      *(v23 + 14) = sub_23311A8F4(v44, v39, &v46);
      _os_log_impl(&dword_233109000, v20, v21, "Will create voice datastore entry with name: %s (locale: %s)", v23, 0x16u);
      swift_arrayDestroy();
      v29 = v26;
      a2 = v25;
      v22 = v39;
      MEMORY[0x23839CFD0](v29, -1, -1);
      MEMORY[0x23839CFD0](v23, -1, -1);

      v30 = (*(v45 + 8))(v10, v40);
    }

    else
    {

      v30 = (*(v45 + 8))(v10, v40);
      v27 = v43;
      v28 = v44;
    }

    MEMORY[0x28223BE20](v30);
    *(&v38 - 4) = v27;
    *(&v38 - 3) = a2;
    *(&v38 - 2) = v28;
    *(&v38 - 1) = v22;
    v31 = v42;
    v32 = sub_233175210();
    if (v32)
    {
      MEMORY[0x28223BE20](v32);
      *(&v38 - 2) = sub_2331BC4B0;
      *(&v38 - 1) = (&v38 - 6);
      sub_23328D2BC();
    }

    v33 = *(v31 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v33)
    {
      v47 = 1;
      v34 = v33;
      v35 = sub_2331E511C(&v47);

      type metadata accessor for TTSVBLocalVoiceMO();
      v36 = static TTSVBLocalVoiceMO.voiceForNamePredicate(_:)(v27, a2);
      MEMORY[0x28223BE20](v36);
      *(&v38 - 6) = v35;
      *(&v38 - 5) = v37;
      *(&v38 - 4) = v27;
      *(&v38 - 3) = a2;
      *(&v38 - 2) = v28;
      *(&v38 - 1) = v22;
      sub_23328CE8C();
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_233176918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D80C();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v14 = swift_allocObject();
  v14[2] = sub_2331B3A28;
  v14[3] = a1;
  v14[4] = v3;
  v14[5] = a2;
  v14[6] = a3;
  aBlock[4] = sub_2331BCA8C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_455;
  v15 = _Block_copy(aBlock);

  v16 = v3;

  sub_23328D7DC();
  v20 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_233176C48@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a6;
  v48 = a5;
  v56 = a3;
  v50 = a7;
  v51 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v51);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_23328D6EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = type metadata accessor for TTSVBLocalVoiceMO();
  v53 = a2;
  if (static DSO<>.count(in:configure:)(a1, sub_2331BC5A0, v52, v19, &protocol witness table for TTSVBLocalVoiceMO) < 1)
  {
    v47 = v15;
    v28 = v13;
    v29 = v50;
    v30 = sub_23328CE7C();
    MEMORY[0x28223BE20](v30);
    *(&v47 - 6) = v56;
    *(&v47 - 5) = a4;
    v31 = a4;
    v33 = v48;
    v32 = v49;
    *(&v47 - 4) = v29;
    *(&v47 - 3) = v33;
    *(&v47 - 2) = v32;
    static DSO<>.findOrCreate(in:matching:config:)(a1, a2, sub_2331BC5B0, (&v47 - 8), v19, &protocol witness table for TTSVBLocalVoiceMO);

    NSManagedObjectContext.trySave()();
    if (v35)
    {
      v36 = sub_23328CE8C();
      return (*(*(v36 - 8) + 8))(v50, v36);
    }

    else
    {
      v40 = v56;
      v41 = sub_233225440();
      v42 = v47;
      (*(v28 + 16))(v47, v41, v12);

      v43 = sub_23328D6CC();
      v44 = sub_23328DE1C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v54 = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_23311A8F4(v40, v31, &v54);
        _os_log_impl(&dword_233109000, v43, v44, "Did create voice datastore entry with name: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x23839CFD0](v46, -1, -1);
        MEMORY[0x23839CFD0](v45, -1, -1);

        return (*(v28 + 8))(v47, v12);
      }

      else
      {

        return (*(v28 + 8))(v42, v12);
      }
    }
  }

  else
  {
    v20 = sub_233225440();
    (*(v13 + 16))(v18, v20, v12);

    v21 = sub_23328D6CC();
    v22 = sub_23328DE1C();

    v23 = a4;
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v12;
      v26 = v25;
      *&v54 = v25;
      *v24 = 136315138;
      v27 = v56;
      *(v24 + 4) = sub_23311A8F4(v56, v23, &v54);
      _os_log_impl(&dword_233109000, v21, v22, "Datastore already contains voice with name: %s. Bailing on create voice", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23839CFD0](v26, -1, -1);
      MEMORY[0x23839CFD0](v24, -1, -1);

      (*(v13 + 8))(v18, v50);
    }

    else
    {

      (*(v13 + 8))(v18, v12);
      v27 = v56;
    }

    v54 = xmmword_2332991C0;
    v55 = 3;
    *v11 = v27;
    v11[1] = v23;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    v39 = v38;

    TTSVBError.init(_:_:_:)(&v54, v11, 0, v39);
    return swift_willThrow();
  }
}

void sub_2331771DC(uint64_t a1)
{
  v200 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v200);
  v201 = v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328D6EC();
  v210 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v193 = v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v178 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v178 - v10;
  MEMORY[0x28223BE20](v12);
  v196 = v178 - v13;
  MEMORY[0x28223BE20](v14);
  v205 = v178 - v15;
  MEMORY[0x28223BE20](v16);
  v208 = v178 - v17;
  v18 = sub_23328D83C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = v1;
  v23 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18, v20);
  v24 = v23;
  LOBYTE(v23) = sub_23328D85C();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v195 = v11;
  v194 = v8;
  v25 = sub_233225314();
  v26 = *(v210 + 16);
  v198 = v25;
  v199 = v210 + 16;
  v197 = v26;
  (v26)(v208);
  v27 = sub_23328CE8C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v191 = v30;
  v206 = a1;
  v207 = v4;
  v32 = v31;
  v33 = v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v28 + 16);
  v34(v33, a1, v31, v29);
  v35 = sub_23328D6CC();
  v36 = sub_23328DE4C();
  v37 = os_log_type_enabled(v35, v36);
  v192 = v28;
  v202 = v34;
  v203 = v28 + 16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v213 = v39;
    *v38 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v40 = sub_23328E51C();
    v189 = v178;
    v42 = v41;
    v190 = *(v28 + 8);
    v190(v33, v32);
    v43 = sub_23311A8F4(v40, v42, &v213);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_233109000, v35, v36, "Will delete voice and all related data with VoiceID: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x23839CFD0](v39, -1, -1);
    MEMORY[0x23839CFD0](v38, -1, -1);
  }

  else
  {

    v190 = *(v28 + 8);
    v190(v33, v32);
  }

  v44 = *(v210 + 8);
  v45 = v44(v208, v207);
  MEMORY[0x28223BE20](v45);
  v46 = v206;
  v178[-2] = v206;
  v47 = sub_233175210();
  if (v47)
  {
    MEMORY[0x28223BE20](v47);
    v178[-2] = sub_2331BA284;
    v178[-1] = &v178[-4];
    sub_23328D2BC();
  }

  v48 = *(v209 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v48)
  {
    goto LABEL_33;
  }

  LOBYTE(v213) = 1;
  v49 = v48;
  v50 = sub_2331E511C(&v213);

  v209 = v178;
  MEMORY[0x28223BE20](v51);
  v178[-2] = v46;
  v178[-1] = v50;
  v52 = v204;
  sub_23328DF5C();
  v53 = v205;
  if (v52)
  {
  }

  else
  {
    v187 = v44;
    v208 = 0;
    v54 = sub_23328CC9C();
    v209 = v178;
    v188 = v54;
    v189 = *(v54 - 8);
    v55 = MEMORY[0x28223BE20](v54);
    v186 = v56;
    v57 = v178 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v201;
    v202(v201, v46, v32, v55);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v57);
    sub_2331BDC54(v58, type metadata accessor for TTSVBPath);
    v59 = v207;
    v197(v53, v198, v207);
    v60 = sub_23328D6CC();
    v61 = sub_23328DE4C();
    v62 = os_log_type_enabled(v60, v61);
    v184 = v32;
    v185 = v50;
    v204 = v57;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v213 = v64;
      *v63 = 136315138;
      swift_beginAccess();
      v65 = sub_23328CC6C();
      v67 = sub_23311A8F4(v65, v66, &v213);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_233109000, v60, v61, "Deleting any staged trainings: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23839CFD0](v64, -1, -1);
      v68 = v63;
      v57 = v204;
      MEMORY[0x23839CFD0](v68, -1, -1);
    }

    v187(v53, v59);
    v69 = sub_2331DEBE8();
    v214 = *v69;
    v70 = v214;
    v71 = swift_beginAccess();
    v205 = v178;
    v72 = v186;
    v73 = MEMORY[0x28223BE20](v71);
    v74 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
    v75 = v189;
    v77 = v189 + 2;
    v76 = v189[2];
    v78 = v188;
    v76(v178 - v74, v57, v188, v73);
    v183 = xmmword_2332991D0;
    v211 = xmmword_2332991D0;
    v212 = 3;
    v79 = v70;
    v80 = v208;
    _TTSVBFileManager.removeItem(_:problem:)(v178 - v74, &v211);
    v208 = v80;
    if (v80)
    {

      v81 = v75[1];
      v81(v178 - v74, v78);

      v81(v204, v78);
    }

    else
    {
      v179 = v76;
      v178[1] = v77;
      v180 = v69;
      v82 = v75[1];
      v182 = v75 + 1;
      v181 = v82;
      v82(v178 - v74, v78);

      v83 = v201;
      (v202)(v201, v206, v184);
      v84 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v84);
      TTSVBPath.url.getter(v178 - v74);
      sub_2331BDC54(v83, type metadata accessor for TTSVBPath);
      v85 = v75[5];
      v86 = v204;
      v189 = v75 + 5;
      v205 = v85;
      (v85)(v204, v178 - v74, v78);
      v87 = v196;
      v88 = v207;
      v197(v196, v198, v207);
      v89 = sub_23328D6CC();
      v90 = sub_23328DE4C();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *&v211 = v92;
        *v91 = 136315138;
        v93 = sub_23328CC6C();
        v95 = sub_23311A8F4(v93, v94, &v211);

        *(v91 + 4) = v95;
        _os_log_impl(&dword_233109000, v89, v90, "Deleting user recordings: %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x23839CFD0](v92, -1, -1);
        MEMORY[0x23839CFD0](v91, -1, -1);
      }

      v96 = (v187)(v87, v88);
      v214 = *v180;
      v97 = v214;
      v98 = v186;
      v99 = MEMORY[0x28223BE20](v96);
      v100 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
      v101 = v178 - v100;
      v102 = v188;
      v179(v178 - v100, v86, v188, v99);
      v211 = v183;
      v212 = 3;
      v103 = v97;
      v104 = v208;
      _TTSVBFileManager.removeItem(_:problem:)(v178 - v100, &v211);
      if (v104 || ((v208 = 0, v181(v178 - v100, v102), v214, v105 = v201, (v202)(v201, v206, v184), v106 = swift_storeEnumTagMultiPayload(), MEMORY[0x28223BE20](v106), TTSVBPath.url.getter(v178 - v100), sub_2331BDC54(v105, type metadata accessor for TTSVBPath), (v205)(v86, v178 - v100, v102), v107 = v195, v108 = v207, v197(v195, v198, v207), v109 = sub_23328D6CC(), v110 = sub_23328DE4C(), !os_log_type_enabled(v109, v110)) ? (v109, v116 = v107) : (v111 = swift_slowAlloc(), v112 = swift_slowAlloc(), *&v211 = v112, *v111 = 136315138, v113 = sub_23328CC6C(), v115 = sub_23311A8F4(v113, v114, &v211), , *(v111 + 4) = v115, _os_log_impl(&dword_233109000, v109, v110, "Deleting created models: %s", v111, 0xCu), __swift_destroy_boxed_opaque_existential_0(v112), MEMORY[0x23839CFD0](v112, -1, -1), MEMORY[0x23839CFD0](v111, -1, -1), v109, v116 = v195), v117 = (v187)(v116, v108), v214 = *v180, v118 = v214, v119 = v186, v120 = MEMORY[0x28223BE20](v117), v121 = (v119 + 15) & 0xFFFFFFFFFFFFFFF0, v101 = v178 - v121, v102 = v188, v179(v178 - v121, v86, v188, v120), v211 = v183, v212 = 3, v122 = v118, v123 = v208, _TTSVBFileManager.removeItem(_:problem:)(v178 - v121, &v211), v123))
      {

        v124 = v101;
        v125 = v181;
        v181(v124, v102);

        v125(v86, v102);
      }

      else
      {
        v208 = 0;
        v181(v178 - v121, v102);

        v126 = v201;
        (v202)(v201, v206, v184);
        v127 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v127);
        TTSVBPath.url.getter(v178 - v121);
        sub_2331BDC54(v126, type metadata accessor for TTSVBPath);
        (v205)(v86, v178 - v121, v102);
        v128 = v194;
        v129 = v207;
        v197(v194, v198, v207);
        v130 = sub_23328D6CC();
        v131 = sub_23328DE4C();
        v132 = v86;
        if (os_log_type_enabled(v130, v131))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *&v211 = v134;
          *v133 = 136315138;
          v135 = sub_23328CC6C();
          v137 = v128;
          v138 = sub_23311A8F4(v135, v136, &v211);

          *(v133 + 4) = v138;
          _os_log_impl(&dword_233109000, v130, v131, "Deleting exported items: %s", v133, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v134);
          MEMORY[0x23839CFD0](v134, -1, -1);
          MEMORY[0x23839CFD0](v133, -1, -1);

          v139 = v137;
        }

        else
        {

          v139 = v128;
        }

        v140 = (v187)(v139, v129);
        v196 = v178;
        v214 = *v180;
        v141 = v214;
        v142 = v186;
        v143 = MEMORY[0x28223BE20](v140);
        v144 = (v142 + 15) & 0xFFFFFFFFFFFFFFF0;
        v145 = v188;
        v146 = v179;
        v179(v178 - v144, v132, v188, v143);
        v211 = v183;
        v212 = 3;
        v147 = v141;
        v148 = v208;
        _TTSVBFileManager.removeItem(_:problem:)(v178 - v144, &v211);
        if (v148 || (v181(v178 - v144, v145), v214, v208 = 0, v150 = v201, (v202)(v201, v206, v184), v151 = swift_storeEnumTagMultiPayload(), MEMORY[0x28223BE20](v151), TTSVBPath.url.getter(v178 - v144), sub_2331BDC54(v150, type metadata accessor for TTSVBPath), v152 = (v205)(v132, v178 - v144, v145), v214 = *v180, v153 = v214, v154 = MEMORY[0x28223BE20](v152), v146(v178 - v144, v132, v145, v154), v211 = v183, v212 = 3, v155 = v153, v156 = v208, _TTSVBFileManager.removeItem(_:problem:)(v178 - v144, &v211), v156))
        {

          v149 = v181;
          v181(v178 - v144, v145);

          v149(v132, v145);
        }

        else
        {
          v208 = 0;
          v157 = v181;
          v181(v178 - v144, v145);

          v158 = v193;
          v159 = v207;
          v160 = (v197)(v193, v198, v207);
          v161 = MEMORY[0x28223BE20](v160);
          v163 = v178 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
          v164 = v184;
          v202(v163, v206, v184, v161);
          v165 = sub_23328D6CC();
          v166 = sub_23328DE4C();
          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            *&v211 = v168;
            *v167 = 136315138;
            sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
            v169 = sub_23328E51C();
            v170 = v159;
            v172 = v171;
            v190(v163, v164);
            v173 = sub_23311A8F4(v169, v172, &v211);

            *(v167 + 4) = v173;
            _os_log_impl(&dword_233109000, v165, v166, "Finished deleting voice and all related data with VoiceID: %s", v167, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v168);
            MEMORY[0x23839CFD0](v168, -1, -1);
            v157 = v181;
            MEMORY[0x23839CFD0](v167, -1, -1);

            v174 = v193;
            v175 = v170;
          }

          else
          {

            v190(v163, v164);
            v174 = v158;
            v175 = v159;
          }

          v187(v174, v175);
          v176 = v185;
          v177 = [objc_opt_self() defaultCenter];
          [v177 postNotificationName:*sub_2331694E8() object:0];

          v157(v204, v188);
        }
      }
    }
  }
}

uint64_t sub_233178950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v12 = sub_23328D7CC();
  v26 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23328D80C();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *&v7[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v7;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);

  v20 = v7;

  sub_23328D7DC();
  v27 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v17, v14, v19);
  _Block_release(v19);
  (*(v26 + 8))(v14, v12);
  (*(v15 + 8))(v17, v25);
}

void sub_233178C40(uint64_t a1, void *a2)
{
  v37 = a2;
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = sub_23328D6EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_233225314();
  v35 = v4;
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_23328CE8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v36 = a1;
  v13(v12, a1, v8, v10);
  v14 = sub_23328D6CC();
  v15 = sub_23328DE4C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v16 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v17 = sub_23328E51C();
    v34 = v3;
    v19 = v18;
    (*(v9 + 8))(v12, v8);
    v20 = sub_23311A8F4(v17, v19, v38);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_233109000, v14, v15, "Will delete voice with ID from datastore: %s", v16, 0xCu);
    v21 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23839CFD0](v21, -1, -1);
    MEMORY[0x23839CFD0](v16, -1, -1);

    (*(v35 + 8))(v6, v34);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    (*(v35 + 8))(v6, v3);
  }

  type metadata accessor for TTSVBLocalVoiceMO();
  v22 = static TTSVBLocalVoiceMO.batchDeleteRequest(forVoiceID:)();
  v38[0] = 0;
  v23 = v37;
  v24 = [v37 executeRequest:v22 error:v38];
  v25 = v38[0];
  if (v24)
  {
    v26 = v24;
    v27 = v38[0];

    type metadata accessor for TTSVBCloudVoiceMO();
    v28 = static TTSVBCloudVoiceMO.batchDeleteRequest(forVoiceID:)();

    v38[0] = 0;
    v29 = [v23 executeRequest:v28 error:v38];
    v25 = v38[0];
    if (v29)
    {
      v30 = v29;
      v31 = v38[0];

      NSManagedObjectContext.saveOrRollback()();
      return;
    }

    v22 = v28;
  }

  v32 = v25;
  sub_23328CA7C();

  swift_willThrow();
}

id TTSVBVoiceBankingManager.recordedPhraseCount(forVoice:validDataOnly:trainingDataSource:)(uint64_t a1, int a2, char *a3)
{
  v36 = a2;
  v38[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23328D83C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a3;
  v15 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v16 = v15;
  LOBYTE(v15) = sub_23328D85C();
  result = (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
  }

  if (v14)
  {
    v18 = sub_23328CC9C();
    v19 = *(v18 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = &v35[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v22 = sub_23328CE8C();
    (*(*(v22 - 8) + 16))(v8, a1, v22);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(v21);
    sub_2331BDC54(v8, type metadata accessor for TTSVBPath);
    v23 = [objc_opt_self() defaultManager];
    v24 = sub_23328CBCC();
    v38[0] = 0;
    v25 = [v23 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:v38];

    v26 = v38[0];
    if (v25)
    {
      v27 = sub_23328DBFC();
      v28 = v26;

      (*(v19 + 8))(v21, v18);
      v29 = *(v27 + 16);
    }

    else
    {
      v29 = v38[0];
      sub_23328CA7C();

      swift_willThrow();
      (*(v19 + 8))(v21, v18);
    }

    return v29;
  }

  v30 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v30)
  {
    LOBYTE(v38[0]) = 1;
    v31 = v30;
    v32 = sub_2331E511C(v38);

    MEMORY[0x28223BE20](v33);
    *&v35[-32] = a1;
    *&v35[-24] = v32;
    v35[-16] = v36 & 1;
    v34 = v37;
    sub_23328DF5C();
    v29 = v34;

    if (!v34)
    {
      return v38[0];
    }

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_233179498(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23328E2DC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23311B0C0(i, v5);
    type metadata accessor for TTSVBLocalVoiceSampleMO();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23328E2BC();
    sub_23328E2EC();
    sub_23328E2FC();
    sub_23328E2CC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void TTSVBVoiceBankingManager.durationOfRecordingData(forVoice:validDataOnly:)(uint64_t a1, char a2)
{
  v5 = sub_23328D83C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_23328D85C();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v12)
    {
      v17 = 1;
      v13 = v12;
      v14 = sub_2331E511C(&v17);

      MEMORY[0x28223BE20](v15);
      *(&v16 - 4) = a1;
      *(&v16 - 3) = v14;
      *(&v16 - 16) = a2 & 1;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_233179780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v33[1] = a2;
  v5 = sub_23328D7CC();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23328D80C();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v33 - v9;
  v11 = type metadata accessor for TTSVBVoiceModel(0);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v45 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v14 = sub_2331F88A8(v13, &protocol witness table for TTSVBLocalVoiceModelMO);
  v16 = static DSO<>.fetch(in:config:)(a1, v14, v15, v13, &protocol witness table for TTSVBLocalVoiceModelMO);

  if (v16 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v18 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v19 = 0;
    v44 = v16 & 0xC000000000000001;
    v20 = (v43 + 48);
    v42 = v11;
    while (1)
    {
      if (v44)
      {
        v21 = MEMORY[0x23839BFC0](v19, v16);
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v21 = *(v16 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      (*((*MEMORY[0x277D85000] & *v21) + 0x58))(0);

      if ((*v20)(v10, 1, v11) == 1)
      {
        sub_233121E04(v10, &qword_27DDE2388, &qword_233297728);
      }

      else
      {
        sub_2331BDDC4(v10, v45, type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_2331B3130(0, v18[2] + 1, 1, v18, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          v18 = sub_2331B3130((v24 > 1), v25 + 1, 1, v18, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v18[2] = v25 + 1;
        sub_2331BDDC4(v45, v18 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v25, type metadata accessor for TTSVBVoiceModel);
        v11 = v42;
      }

      ++v19;
      if (v23 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  v26 = swift_allocObject();
  v27 = v35;
  v26[2] = v34;
  v26[3] = v27;
  v26[4] = v18;
  aBlock[4] = sub_2331BE6E4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_566;
  v28 = _Block_copy(aBlock);

  v29 = v36;
  sub_23328D7DC();
  v46 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v30 = v38;
  v31 = v41;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v29, v30, v28);
  _Block_release(v28);
  (*(v40 + 8))(v30, v31);
  (*(v37 + 8))(v29, v39);
}

void sub_233179DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (v6)
  {
    v9 = v5;
    LOBYTE(v18[0]) = 1;
    v12 = v6;
    v13 = sub_2331E511C(v18);

    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v9;
    v14[4] = a1;
    v14[5] = a2;
    v18[4] = a4;
    v18[5] = v14;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2331221F8;
    v18[3] = a5;
    v15 = _Block_copy(v18);
    v16 = v13;
    v17 = v9;

    [v16 performBlock_];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_233179F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v65 = a3;
  v64 = a2;
  v5 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  v62 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D7CC();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_23328D80C();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v61 - v11;
  v80 = type metadata accessor for TTSVBVoiceModel(0);
  v13 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v61 - v16;
  MEMORY[0x28223BE20](v17);
  v74 = &v61 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v22);
  v77 = &v61 - v23;
  v24 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v25 = sub_2331F88A8(v24, &protocol witness table for TTSVBLocalVoiceModelMO);
  v27 = static DSO<>.fetch(in:config:)(a1, v25, v26, v24, &protocol witness table for TTSVBLocalVoiceModelMO);

  if (v27 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    v29 = 0;
    v75 = v27 & 0xFFFFFFFFFFFFFF8;
    v76 = v27 & 0xC000000000000001;
    v30 = MEMORY[0x277D84F90];
    v73 = v27;
    while (1)
    {
      if (v76)
      {
        v31 = MEMORY[0x23839BFC0](v29, v27);
      }

      else
      {
        if (v29 >= *(v75 + 16))
        {
          goto LABEL_18;
        }

        v31 = *(v27 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      (*((*MEMORY[0x277D85000] & *v31) + 0x58))(0);

      if ((*(v13 + 48))(v12, 1, v80) == 1)
      {
        sub_233121E04(v12, &qword_27DDE2388, &qword_233297728);
      }

      else
      {
        sub_2331BDDC4(v12, v77, type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_2331B3130(0, v30[2] + 1, 1, v30, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v35 = v30[2];
        v34 = v30[3];
        if (v35 >= v34 >> 1)
        {
          v30 = sub_2331B3130((v34 > 1), v35 + 1, 1, v30, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v30[2] = v35 + 1;
        sub_2331BDDC4(v77, v30 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35, type metadata accessor for TTSVBVoiceModel);
        v27 = v73;
      }

      ++v29;
      if (v33 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_21:

  v37 = v30[2];
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v39 = 0;
    v77 = v13;
    while (v39 < v30[2])
    {
      v40 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v41 = *(v13 + 72);
      sub_2331BDBEC(v30 + v40 + v41 * v39, v21, type metadata accessor for TTSVBVoiceModel);
      if (*&v21[*(v80 + 52)] == 7 && v21[*(v80 + 76)] == 1)
      {
        sub_2331BDDC4(v21, v74, type metadata accessor for TTSVBVoiceModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2331B4058(0, *(v38 + 16) + 1, 1);
          v38 = aBlock[0];
        }

        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_2331B4058((v43 > 1), v44 + 1, 1);
          v38 = aBlock[0];
        }

        *(v38 + 16) = v44 + 1;
        result = sub_2331BDDC4(v74, v38 + v40 + v44 * v41, type metadata accessor for TTSVBVoiceModel);
        v13 = v77;
      }

      else
      {
        result = sub_2331BDC54(v21, type metadata accessor for TTSVBVoiceModel);
      }

      if (v37 == ++v39)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:

    v45 = *(v38 + 16);
    if (v45)
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2331B4014(0, v45, 0);
      v46 = aBlock[0];
      v47 = v38 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v48 = *(v13 + 72);
      v49 = v62;
      v50 = v63;
      do
      {
        v51 = v78;
        sub_2331BDBEC(v47, v78, type metadata accessor for TTSVBVoiceModel);
        v52 = v79;
        sub_2331BDBEC(v51, v79, type metadata accessor for TTSVBVoiceModel);
        TTSVBInstalledVoiceModel.init(model:)(v52, v50);
        sub_2331BDC54(v51, type metadata accessor for TTSVBVoiceModel);
        aBlock[0] = v46;
        v54 = *(v46 + 16);
        v53 = *(v46 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_2331B4014((v53 > 1), v54 + 1, 1);
          v50 = v63;
          v46 = aBlock[0];
        }

        *(v46 + 16) = v54 + 1;
        sub_2331BDDC4(v50, v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v54, type metadata accessor for TTSVBInstalledVoiceModel);
        v47 += v48;
        --v45;
      }

      while (v45);
    }

    else
    {

      v46 = MEMORY[0x277D84F90];
    }

    v55 = swift_allocObject();
    v56 = v66;
    v55[2] = v65;
    v55[3] = v56;
    v55[4] = v46;
    aBlock[4] = sub_2331BDE2C;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_560;
    v57 = _Block_copy(aBlock);

    v58 = v67;
    sub_23328D7DC();
    v81 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v59 = v69;
    v60 = v72;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v58, v59, v57);
    _Block_release(v57);
    (*(v71 + 8))(v59, v60);
    (*(v68 + 8))(v58, v70);
  }

  return result;
}

void TTSVBVoiceBankingManager.fetchPersonalVoiceSystemRepresentation(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (TTSVBProcessIsVoicebankingd(a1, a2))
  {
    v6 = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
    if (v6)
    {
      LOBYTE(v13[0]) = 1;
      v7 = v6;
      v8 = sub_2331E511C(v13);

      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = v3;
      v9[4] = a1;
      v9[5] = a2;
      v13[4] = sub_2331B2A7C;
      v13[5] = v9;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_2331221F8;
      v13[3] = &block_descriptor_34;
      v10 = _Block_copy(v13);
      v11 = v8;
      v12 = v3;

      [v11 performBlock_];
      _Block_release(v10);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23317AA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v84 = a3;
  v83 = a2;
  v5 = type metadata accessor for TTSVBVoice(0);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0);
  v89 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v94 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  v106 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v77 - v13;
  v14 = type metadata accessor for TTSVBVoiceModel(0);
  v107 = *(v14 - 8);
  v108 = v14;
  MEMORY[0x28223BE20](v14);
  v105 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = &v77 - v17;
  MEMORY[0x28223BE20](v18);
  v99 = &v77 - v19;
  MEMORY[0x28223BE20](v20);
  v98 = &v77 - v21;
  MEMORY[0x28223BE20](v22);
  v102 = &v77 - v23;
  v82 = sub_23328D7CC();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23328D80C();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TTSVBLocalVoiceMO();
  v27 = sub_2331F88A8(v26, &protocol witness table for TTSVBLocalVoiceMO);
  v88 = v26;
  v29 = static DSO<>.fetch(in:config:)(a1, v27, v28, v26, &protocol witness table for TTSVBLocalVoiceMO);

  v91 = v29;
  if (v29 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
  {
    v31 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v32 = 0;
    v93 = v91 & 0xC000000000000001;
    v87 = v91 & 0xFFFFFFFFFFFFFF8;
    v86 = v91 + 32;
    v100 = v11;
    v101 = (v107 + 48);
    v33 = MEMORY[0x277D84F90];
    v92 = i;
    while (1)
    {
      if (v93)
      {
        v34 = MEMORY[0x23839BFC0](v32, v91);
      }

      else
      {
        if (v32 >= *(v87 + 16))
        {
          goto LABEL_62;
        }

        v34 = *(v86 + 8 * v32);
      }

      v35 = v34;
      v36 = __OFADD__(v32, 1);
      v37 = v32 + 1;
      if (v36)
      {
        break;
      }

      v96 = v33;
      v97 = v37;
      v38 = (*((*MEMORY[0x277D85000] & *v34) + 0x70))();
      v39 = v38;
      if (v38 >> 62)
      {
        v40 = sub_23328E19C();
        v95 = v35;
        if (v40)
        {
LABEL_14:
          v41 = 0;
          while (1)
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v42 = MEMORY[0x23839BFC0](v41, v39);
            }

            else
            {
              if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_59;
              }

              v42 = *(v39 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            v45 = v11;
            v46 = v103;
            (*((*MEMORY[0x277D85000] & *v42) + 0x58))(0);

            if ((*v101)(v46, 1, v108) == 1)
            {
              sub_233121E04(v46, &qword_27DDE2388, &qword_233297728);
              v11 = v45;
            }

            else
            {
              sub_2331BDDC4(v46, v102, type metadata accessor for TTSVBVoiceModel);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_2331B3130(0, v31[2] + 1, 1, v31, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
              }

              v48 = v31[2];
              v47 = v31[3];
              if (v48 >= v47 >> 1)
              {
                v31 = sub_2331B3130((v47 > 1), v48 + 1, 1, v31, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
              }

              v31[2] = v48 + 1;
              sub_2331BDDC4(v102, v31 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v48, type metadata accessor for TTSVBVoiceModel);
              v11 = v100;
            }

            ++v41;
            if (v44 == v40)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v95 = v35;
        if (v40)
        {
          goto LABEL_14;
        }
      }

LABEL_29:

      v49 = v31[2];
      if (v49)
      {
        v50 = 0;
        v51 = MEMORY[0x277D84F90];
        v52 = v98;
        while (v50 < v31[2])
        {
          v53 = (*(v107 + 80) + 32) & ~*(v107 + 80);
          v54 = *(v107 + 72);
          sub_2331BDBEC(v31 + v53 + v54 * v50, v52, type metadata accessor for TTSVBVoiceModel);
          if (*(v52 + *(v108 + 52)) == 7 && *(v52 + *(v108 + 76)) == 1)
          {
            sub_2331BDDC4(v52, v99, type metadata accessor for TTSVBVoiceModel);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2331B4058(0, *(v51 + 16) + 1, 1);
              v51 = aBlock[0];
            }

            v57 = *(v51 + 16);
            v56 = *(v51 + 24);
            if (v57 >= v56 >> 1)
            {
              sub_2331B4058((v56 > 1), v57 + 1, 1);
              v51 = aBlock[0];
            }

            *(v51 + 16) = v57 + 1;
            sub_2331BDDC4(v99, v51 + v53 + v57 * v54, type metadata accessor for TTSVBVoiceModel);
            v11 = v100;
            v52 = v98;
          }

          else
          {
            sub_2331BDC54(v52, type metadata accessor for TTSVBVoiceModel);
          }

          if (v49 == ++v50)
          {
            goto LABEL_42;
          }
        }

LABEL_60:
        __break(1u);
        break;
      }

      v51 = MEMORY[0x277D84F90];
LABEL_42:

      v58 = *(v51 + 16);
      if (v58)
      {
        aBlock[0] = MEMORY[0x277D84F90];
        sub_2331B4014(0, v58, 0);
        v59 = aBlock[0];
        v60 = v51 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
        v61 = *(v107 + 72);
        do
        {
          v62 = v104;
          sub_2331BDBEC(v60, v104, type metadata accessor for TTSVBVoiceModel);
          v63 = v105;
          sub_2331BDBEC(v62, v105, type metadata accessor for TTSVBVoiceModel);
          TTSVBInstalledVoiceModel.init(model:)(v63, v11);
          sub_2331BDC54(v62, type metadata accessor for TTSVBVoiceModel);
          aBlock[0] = v59;
          v65 = *(v59 + 16);
          v64 = *(v59 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_2331B4014((v64 > 1), v65 + 1, 1);
            v59 = aBlock[0];
          }

          *(v59 + 16) = v65 + 1;
          sub_2331BDDC4(v11, v59 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v65, type metadata accessor for TTSVBInstalledVoiceModel);
          v60 += v61;
          --v58;
        }

        while (v58);
      }

      else
      {

        v59 = MEMORY[0x277D84F90];
      }

      v33 = v96;
      v32 = v97;
      v66 = v95;
      if (*(v59 + 16))
      {
        v67 = v90;
        TTSVBCommonVoiceMO.immutableVoice()(v88, &protocol witness table for TTSVBLocalVoiceMO, v90);
        sub_2331D2BEC(v67, v59, v94);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2331B3130(0, v33[2] + 1, 1, v33, &qword_27DDE2A80, &unk_233299B80, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
        }

        v31 = MEMORY[0x277D84F90];
        v69 = v33[2];
        v68 = v33[3];
        if (v69 >= v68 >> 1)
        {
          v33 = sub_2331B3130((v68 > 1), v69 + 1, 1, v33, &qword_27DDE2A80, &unk_233299B80, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
        }

        v33[2] = v69 + 1;
        sub_2331BDDC4(v94, v33 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v69, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      if (v32 == v92)
      {

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_57:
  v70 = swift_allocObject();
  v71 = v85;
  v70[2] = v84;
  v70[3] = v71;
  v70[4] = v33;
  aBlock[4] = sub_2331BDD94;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_554;
  v72 = _Block_copy(aBlock);

  v73 = v77;
  sub_23328D7DC();
  v109 = v31;
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v74 = v79;
  v75 = v82;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v73, v74, v72);
  _Block_release(v72);
  (*(v81 + 8))(v74, v75);
  (*(v78 + 8))(v73, v80);
}

void sub_23317B838(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v63 = a6;
  v57 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v60);
  v58 = v60;
  v59 = v61;
  v16 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v58);
  sub_2331220AC(v58, *(&v58 + 1), v59);
  if (!v7)
  {
    v62 = a4;
    v52 = a7;
    v53 = v15;
    v17 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v55 = a2;
    v56 = v17;
    v18 = NSManagedObjectContext.insertDSO<A>(_:)(v17, v17, &protocol witness table for TTSVBLocalVoiceModelMO);
    [v18 setVoice_];
    v19 = sub_23328CE8C();
    v20 = *(v19 - 8);
    MEMORY[0x28223BE20](v19);
    v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CE7C();
    v23 = sub_23328CE4C();
    (*(v20 + 8))(v22, v19);
    [v18 setModelID_];

    v54 = v16;
    v24 = [v16 localeID];
    [v18 setTrainingLocaleID_];

    v25 = sub_23328CE1C();
    v26 = *(v25 - 8);
    MEMORY[0x28223BE20](v25);
    v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23328CE0C();
    v29 = sub_23328CD9C();
    (*(v26 + 8))(v28, v25);
    [v18 setCreationDate_];

    v30 = [objc_opt_self() processInfo];
    v31 = [v30 operatingSystemVersionString];

    if (!v31)
    {
      sub_23328D98C();
      v31 = sub_23328D95C();
    }

    [v18 setCreationOSBuild_];

    v32 = MobileGestalt_get_current_device();
    v34 = v56;
    v33 = v57;
    v35 = v62;
    if (v32)
    {
      v36 = v32;
      v37 = MobileGestalt_copy_computerName_obj();

      if (v37)
      {
        sub_23328D98C();

        v37 = sub_23328D95C();
      }
    }

    else
    {
      v37 = 0;
    }

    [v18 setCreationDeviceName_];

    v38 = MobileGestalt_get_current_device();
    if (v38)
    {
      v39 = v38;
      v40 = MobileGestalt_copy_uniqueDeviceID_obj();

      if (v40)
      {
        sub_23328D98C();

        v40 = sub_23328D95C();
      }
    }

    else
    {
      v40 = 0;
    }

    [v18 setCreationDeviceUDID_];

    v41 = MobileGestalt_get_current_device();
    if (v41)
    {
      v42 = v41;
      v43 = MobileGestalt_copy_hwModelStr_obj();

      if (v43)
      {
        sub_23328D98C();

        v43 = sub_23328D95C();
      }
    }

    else
    {
      v43 = 0;
    }

    [v18 setCreationDeviceModel_];

    if (v35)
    {
      v44 = 0;
    }

    else
    {
      v44 = a3;
    }

    v45 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
    TTSVBCommonVoiceModelMO.status.setter(v44, v34, v45);
    if (v33 == 2 || v33 == 1 || !v33)
    {
      v46 = sub_23328D95C();

      [v18 setTrainingMode_];

      if (v33 > 1)
      {
        sub_233167B90();
      }

      else
      {
        sub_233167DE4();
      }

      v47 = sub_23328D95C();

      [v18 setVersion_];

      LODWORD(v60) = v63;
      TTSVBCommonVoiceModelMO.flags.setter(&v60, v34, v45);
      sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
      v48 = sub_23328DFBC();
      [v18 setIsDownloaded_];

      NSManagedObjectContext.trySave()();
      if (v49)
      {

        return;
      }

      v50 = v53;
      (*((*MEMORY[0x277D85000] & *v18) + 0x58))(0);
      v51 = type metadata accessor for TTSVBVoiceModel(0);
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) != 1)
      {

        sub_2331BDDC4(v50, v52, type metadata accessor for TTSVBVoiceModel);
        return;
      }

      __break(1u);
    }

    sub_23328E31C();
    __break(1u);
  }
}

uint64_t TTSVBVoiceBankingManager.refreshModels(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D80C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = TTSVBProcessIsVoicebankingd(v13, v14);
  if (result)
  {
    v21 = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = a2;
    aBlock[4] = sub_2331B2AA0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_40;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    sub_23328D7DC();
    v22 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v20 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v12, v8, v17);
    _Block_release(v17);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23317C2D0(char *a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v77 = a3;
  v78 = a1;
  v79 = type metadata accessor for TTSVBVoiceModel(0);
  v73 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328D7CC();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_23328D80C();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D6EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v74 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v65 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v65 - v14;
  v16 = sub_233225514();
  v17 = *(v9 + 16);
  v17(v15, v16, v8);
  v18 = sub_23328D6CC();
  v19 = sub_23328DE1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_233109000, v18, v19, "Request training status refresh for models", v20, 2u);
    MEMORY[0x23839CFD0](v20, -1, -1);
  }

  v21 = *(v9 + 8);
  v21(v15, v8);
  v22 = *&v78[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (v22)
  {
    LOBYTE(aBlock) = 1;
    v23 = v22;
    v24 = sub_2331E511C(&aBlock);

    MEMORY[0x28223BE20](v25);
    *(&v65 - 2) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A58, &qword_233299B60);
    v75 = v24;
    sub_23328DF5C();
    v26 = aBlock;
    if (*(aBlock + 2))
    {
      v27 = v74;
      v17(v74, v16, v8);

      v28 = sub_23328D6CC();
      v29 = sub_23328DE1C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = *(v26 + 2);

        _os_log_impl(&dword_233109000, v28, v29, "%ld models exist that require refresh. requesting getTasksByIDs for them now.", v30, 0xCu);
        v31 = v30;
        v27 = v74;
        MEMORY[0x23839CFD0](v31, -1, -1);
      }

      else
      {
      }

      v42 = v77;
      v21(v27, v8);
      v43 = sub_23317503C();
      v44 = v43;
      v45 = *(v26 + 2);
      if (v45)
      {
        v72 = v43;
        aBlock = MEMORY[0x277D84F90];
        sub_23312676C(0, v45, 0);
        v46 = aBlock;
        v47 = *(v73 + 80);
        v74 = v26;
        v48 = &v26[(v47 + 32) & ~v47];
        v49 = *(v73 + 72);
        do
        {
          sub_2331BDBEC(v48, v4, type metadata accessor for TTSVBVoiceModel);
          v50 = sub_23328CE3C();
          v52 = v51;
          sub_2331BDC54(v4, type metadata accessor for TTSVBVoiceModel);
          aBlock = v46;
          v54 = *(v46 + 2);
          v53 = *(v46 + 3);
          if (v54 >= v53 >> 1)
          {
            sub_23312676C((v53 > 1), v54 + 1, 1);
            v46 = aBlock;
          }

          *(v46 + 2) = v54 + 1;
          v55 = &v46[16 * v54];
          *(v55 + 4) = v50;
          *(v55 + 5) = v52;
          v48 += v49;
          --v45;
        }

        while (v45);
        v42 = v77;
        v26 = v74;
        v44 = v72;
      }

      v56 = sub_23328DBDC();

      v57 = v78;
      v58 = *&v78[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
      v59 = swift_allocObject();
      v59[2] = v57;
      v59[3] = v26;
      v61 = v75;
      v60 = v76;
      v59[4] = v75;
      v59[5] = v60;
      v59[6] = v42;
      v85 = sub_2331BDBD4;
      v86 = v59;
      aBlock = MEMORY[0x277D85DD0];
      v82 = 1107296256;
      v83 = sub_23317E0C8;
      v84 = &block_descriptor_542;
      v62 = _Block_copy(&aBlock);

      v63 = v57;
      v64 = v61;

      [v44 getTasksByIDs:v56 replyOnQueue:v58 statusHandler:v62];

      _Block_release(v62);
    }

    else
    {

      v32 = v66;
      v17(v66, v16, v8);
      v33 = sub_23328D6CC();
      v34 = sub_23328DE1C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_233109000, v33, v34, "No models exist that require refresh. completing successfully", v35, 2u);
        MEMORY[0x23839CFD0](v35, -1, -1);
      }

      v21(v32, v8);
      v36 = swift_allocObject();
      v37 = v77;
      *(v36 + 16) = v76;
      *(v36 + 24) = v37;
      v85 = sub_2331BDBE4;
      v86 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v82 = 1107296256;
      v83 = sub_2331221F8;
      v84 = &block_descriptor_548;
      v38 = _Block_copy(&aBlock);

      v39 = v67;
      sub_23328D7DC();
      v80 = MEMORY[0x277D84F90];
      sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
      v40 = v69;
      v41 = v72;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v39, v40, v38);
      _Block_release(v38);

      (*(v71 + 8))(v40, v41);
      (*(v68 + 8))(v39, v70);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23317CC04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v35 = type metadata accessor for TTSVBVoiceModel(0);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v8 = sub_2331F88A8(v7, &protocol witness table for TTSVBLocalVoiceModelMO);
  v10 = static DSO<>.fetch(in:config:)(a1, v8, v9, v7, &protocol witness table for TTSVBLocalVoiceModelMO);

  v36 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    v12 = 0;
    v13 = v10 & 0xFFFFFFFFFFFFFF8;
    v32 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23839BFC0](v12, v10);
      }

      else
      {
        if (v12 >= *(v13 + 16))
        {
          goto LABEL_15;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v17 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
      v18 = TTSVBCommonVoiceModelMO.status.getter(v7, v17);
      if (TTSVBVoiceStatus.isFinal.getter(v18))
      {
      }

      else
      {
        sub_23328E2BC();
        sub_23328E2EC();
        v13 = v32;
        sub_23328E2FC();
        sub_23328E2CC();
      }

      ++v12;
      if (v16 == i)
      {
        v19 = v36;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_18:

  if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  for (j = *(v19 + 16); j; j = sub_23328E19C())
  {
    v21 = 0;
    v22 = (v33 + 48);
    v23 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D85000];
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x23839BFC0](v21, v19);
      }

      else
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_36;
        }

        v25 = *(v19 + 8 * v21 + 32);
      }

      v26 = v25;
      v27 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      (*((*v24 & *v25) + 0x58))(0);

      if ((*v22)(v5, 1, v35) == 1)
      {
        sub_233121E04(v5, &qword_27DDE2388, &qword_233297728);
      }

      else
      {
        sub_2331BDDC4(v5, v34, type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2331B3130(0, v23[2] + 1, 1, v23, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v29 = v23[2];
        v28 = v23[3];
        if (v29 >= v28 >> 1)
        {
          v23 = sub_2331B3130((v28 > 1), v29 + 1, 1, v23, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
        }

        v23[2] = v29 + 1;
        sub_2331BDDC4(v34, v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for TTSVBVoiceModel);
        v24 = MEMORY[0x277D85000];
      }

      ++v21;
      if (v27 == j)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_39:

  *v31 = v23;
  return result;
}

uint64_t sub_23317D0E0(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A60, &qword_233299B68);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  *(&v6 - v3) = MEMORY[0x277D84F90];
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_233121E04(v4, &qword_27DDE2A60, &qword_233299B68);
}

uint64_t sub_23317D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v36 = a6;
  v37 = a5;
  v38 = a3;
  v39 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A60, &qword_233299B68);
  MEMORY[0x28223BE20](v35);
  v9 = (&v34 - v8);
  v10 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = sub_23328D83C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17, v19);
  v23 = v22;
  LOBYTE(v22) = sub_23328D85C();
  result = (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v39 = sub_23317D644(v38, a1, v39);
    *&v40 = v39;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A68, &qword_233299B70);
    v26 = sub_23315246C(&qword_27DDE2A70, &qword_27DDE2A68, &qword_233299B70, MEMORY[0x277D83970]);
    v38 = v25;
    v34 = v26;
    result = Sequence<>.transitionsToFinished.getter(v25, v26);
    v27 = result;
    v28 = *(result + 16);
    if (v28)
    {
      v29 = 0;
      while (v29 < *(v27 + 16))
      {
        sub_2331BDBEC(v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, v16, type metadata accessor for TTSVBVoiceModelStateTransition);
        sub_23317D7F8(v16);
        ++v29;
        result = sub_2331BDC54(v16, type metadata accessor for TTSVBVoiceModelStateTransition);
        if (v28 == v29)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:

      v30 = v39;
      *&v40 = v39;
      result = Sequence<>.transitionsToAnyFinalState.getter(v38, v34);
      v31 = result;
      v32 = *(result + 16);
      if (!v32)
      {
LABEL_10:

        *v9 = v30;
        swift_storeEnumTagMultiPayload();
        v37(v9);
        return sub_233121E04(v9, &qword_27DDE2A60, &qword_233299B68);
      }

      v33 = 0;
      while (v33 < *(v31 + 16))
      {
        sub_2331BDBEC(v31 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v13, type metadata accessor for TTSVBVoiceModelStateTransition);
        sub_23317DD4C(v13);
        ++v33;
        result = sub_2331BDC54(v13, type metadata accessor for TTSVBVoiceModelStateTransition);
        if (v32 == v33)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23317D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_23328D83C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd(v12, v13);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v11 = v15;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v16 = v15;
  LOBYTE(v15) = sub_23328D85C();
  result = (*(v9 + 8))(v11, v8);
  if ((v15 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](result);
  v17[-4] = a1;
  v17[-3] = a3;
  v17[-2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A68, &qword_233299B70);
  result = sub_23328DF5C();
  if (!v4)
  {
    return v17[1];
  }

  return result;
}

uint64_t sub_23317D7F8(uint64_t a1)
{
  v39 = type metadata accessor for TTSVBVoiceModel(0);
  MEMORY[0x28223BE20](v39);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_23328D6EC();
  v6 = *(v43 - 1);
  MEMORY[0x28223BE20](v43);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D83C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd(v13, v14);
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v40 = a1;
  v41 = v1;
  v42 = v2;
  v16 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v12 = v16;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v17 = v16;
  v18 = sub_23328D85C();
  result = (*(v10 + 8))(v12, v9);
  if ((v18 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v19 = sub_233225314();
  v20 = v43;
  (*(v6 + 16))(v8, v19, v43);
  v21 = sub_23328D6CC();
  v22 = sub_23328DE4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_233109000, v21, v22, "Voice model has moved to 'finished' status. Performing cleanup tasks", v23, 2u);
    MEMORY[0x23839CFD0](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v20);
  v24 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
  v25 = v5;
  sub_2331BDBEC(v40 + *(v24 + 20), v5, type metadata accessor for TTSVBVoiceModel);
  sub_23317EAEC();
  v26 = TTSVBVoiceModel.trainingDuration.getter();
  if ((v27 & 1) == 0)
  {
    static TTSVBAnalytics.modelTrained(version:duration:trainingLocaleID:)(*&v5[*(v39 + 48)], *&v5[*(v39 + 48) + 8], *&v5[*(v39 + 56)], *&v5[*(v39 + 56) + 8], *&v26);
  }

  v28 = sub_23328CC9C();
  v43 = &v39;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v39 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2331DEBE8();
  v47 = *v32;
  MEMORY[0x28223BE20](v32);
  v34 = v33;
  TTSVBVoiceModel.url.getter(v31);
  v44 = 0;
  v45 = 0;
  v46 = -1;
  v35 = v42;
  _TTSVBFileManager.getOrCreateFile(in:named:problem:)(v31, 0xD000000000000012, 0x80000002332A8E70, &v44, v31);
  if (v35)
  {
    (*(v29 + 8))(v31, v28);
  }

  else
  {
    v42 = *(v29 + 8);
    v42(v31, v28);

    v47 = *v32;
    v36 = v47;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v37 = sub_2331B2AAC(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
    v38 = v36;
    _TTSVBFileManager.write<A>(item:toFile:problem:)(v25, v31, &v44, v39, v37);

    v42(v31, v28);
  }

  return sub_2331BDC54(v25, type metadata accessor for TTSVBVoiceModel);
}

uint64_t sub_23317DD4C(uint64_t a1)
{
  v3 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328D83C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd(v14, v15);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v13 = v17;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v18 = v17;
  LOBYTE(v17) = sub_23328D85C();
  result = (*(v11 + 8))(v13, v10);
  if ((v17 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v19 = sub_233225314();
  (*(v7 + 16))(v9, v19, v6);
  sub_2331BDBEC(a1, v5, type metadata accessor for TTSVBVoiceModelStateTransition);
  v20 = sub_23328D6CC();
  v21 = sub_23328DE4C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;
    v24 = &v5[*(v3 + 20)];
    v25 = type metadata accessor for TTSVBVoiceModel(0);
    v26 = TTSVBVoiceTrainingStatus.localizedTitle.getter(*&v24[*(v25 + 60)]);
    v28 = v27;
    sub_2331BDC54(v5, type metadata accessor for TTSVBVoiceModelStateTransition);
    v29 = sub_23311A8F4(v26, v28, &v31);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_233109000, v20, v21, "Voice model has moved to '%s' status. Performing cleanup tasks", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x23839CFD0](v23, -1, -1);
    MEMORY[0x23839CFD0](v22, -1, -1);
  }

  else
  {

    sub_2331BDC54(v5, type metadata accessor for TTSVBVoiceModelStateTransition);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_23317E0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  sub_233144EEC(0, &qword_27DDE29C8, off_2789C3130);
  v4 = sub_23328DBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  v5 = sub_23328DBFC();

  v3(v4, v5);
}

void sub_23317E18C(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v69 = a2;
  v65 = a3;
  v6 = type metadata accessor for TTSVBVoiceModelStateTransition(0);
  v58 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v52 - v9;
  v71 = type metadata accessor for TTSVBVoiceModel(0);
  v10 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v52 - v13;
  MEMORY[0x28223BE20](v14);
  v62 = &v52 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v53 = a4;
    v72 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v20 = 0;
    v21 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v66 = MEMORY[0x277D84F90];
    v68 = *(v10 + 72);
    v61 = (v10 + 48);
    do
    {
      sub_2331BDBEC(v21, v18, type metadata accessor for TTSVBVoiceModel);
      v22 = static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(&v18[*(v71 + 24)], v69);
      if (v22)
      {
        v23 = v22;
        MEMORY[0x28223BE20](v22);
        *(&v52 - 2) = v18;
        v24 = v70;
        v25 = sub_23317E9D8(sub_2331BDCD4, (&v52 - 4), v65);
        v70 = v24;
        if (v25)
        {
          v26 = v25;
          v27 = [v25 status];
          v28 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
          TTSVBCommonVoiceModelMO.status.setter(v27, v72, v28);
          v29 = [v26 status];
          v67 = v20;
          if (v29 == 7)
          {
            v60 = v28;
            v30 = [v23 trainingFinishedDate];
            v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
            v59 = &v52;
            MEMORY[0x28223BE20](v31 - 8);
            v33 = &v52 - v32;
            if (v30)
            {
              sub_23328CDDC();

              v34 = sub_23328CE1C();
              (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
              sub_233121E04(v33, &qword_27DDE1A18, &unk_233297730);
            }

            else
            {
              v35 = sub_23328CE1C();
              v36 = *(v35 - 8);
              v54 = v35;
              v55 = v36;
              (*(v36 + 56))(v33, 1, 1, v35);
              v37 = sub_233121E04(v33, &qword_27DDE1A18, &unk_233297730);
              MEMORY[0x28223BE20](v37);
              v39 = &v52 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_23328CE0C();
              v40 = sub_23328CD9C();
              (*(v55 + 8))(v39, v54);
              [v23 setTrainingFinishedDate_];
            }

            v20 = v67;
            v28 = v60;
          }

          if ([v26 status] == 7)
          {
            v41 = 4;
          }

          else
          {
            v41 = [v26 trainingStatus];
          }

          TTSVBCommonVoiceModelMO.trainingStatus.setter(v41, v72, v28);
          [v26 normalizedProgressValue];
          [v23 setTrainingTaskProgress_];
          v42 = v63;
          (*((*MEMORY[0x277D85000] & *v23) + 0x58))(0);
          if ((*v61)(v42, 1, v71) == 1)
          {
            sub_233121E04(v42, &qword_27DDE2388, &qword_233297728);
          }

          else
          {
            v43 = v62;
            sub_2331BDDC4(v42, v62, type metadata accessor for TTSVBVoiceModel);
            v44 = v56;
            sub_2331BDBEC(v18, v56, type metadata accessor for TTSVBVoiceModel);
            v45 = v43;
            v46 = v57;
            sub_2331BDBEC(v45, v57, type metadata accessor for TTSVBVoiceModel);
            TTSVBVoiceModelStateTransition.init(previous:current:)(v44, v46, v64);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = sub_2331B3130(0, v66[2] + 1, 1, v66, &qword_27DDE2A78, &qword_233299B78, type metadata accessor for TTSVBVoiceModelStateTransition);
            }

            v48 = v66[2];
            v47 = v66[3];
            v20 = v67;
            if (v48 >= v47 >> 1)
            {
              v66 = sub_2331B3130((v47 > 1), v48 + 1, 1, v66, &qword_27DDE2A78, &qword_233299B78, type metadata accessor for TTSVBVoiceModelStateTransition);
            }

            sub_2331BDC54(v62, type metadata accessor for TTSVBVoiceModel);
            v49 = v66;
            v66[2] = v48 + 1;
            sub_2331BDDC4(v64, v49 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v48, type metadata accessor for TTSVBVoiceModelStateTransition);
          }

          v50 = [v23 hasPersistentChangedValues];

          v20 |= v50;
        }

        else
        {
        }
      }

      sub_2331BDC54(v18, type metadata accessor for TTSVBVoiceModel);
      v21 += v68;
      --v19;
    }

    while (v19);
    if (v20)
    {
      NSManagedObjectContext.trySave()();
      a4 = v53;
      v70 = v51;
      if (v51)
      {

        return;
      }
    }

    else
    {
      a4 = v53;
    }
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  *a4 = v66;
}

void *sub_23317E9D8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23839BFC0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_23317EAEC()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd(v10, v11);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v7 + 8))(v9, v6);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v5, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Will mirror local voices into cloud datastore", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331BCE74;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331BE574;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_519;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_23317EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23328CE8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = v5;
  sub_233178950(a5, v15, a2, a3, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_23317F068(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23328D83C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!TTSVBProcessIsVoicebankingd(v8, v9))
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v7 = v10;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_23328D85C();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v12)
  {
    v17 = 1;
    v13 = v12;
    v14 = sub_2331E511C(&v17);

    MEMORY[0x28223BE20](v15);
    *(&v16 - 4) = a1;
    *(&v16 - 3) = v14;
    *(&v16 - 2) = v2;
    sub_23328DF5C();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_23317F254(unsigned int (**a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = v1;
  v51 = sub_23328D83C();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for TTSVBVoiceModel(0);
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = a1;
  v49 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore;
  v11 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v11)
  {
    v60 = 1;
    v12 = v11;
    v13 = sub_2331E511C(&v60);

    v14 = type metadata accessor for TTSVBCloudVoiceModelMO();
    v15 = sub_2331F88A8(v14, &protocol witness table for TTSVBCloudVoiceModelMO);
    v45 = v13;
    v17 = static DSO<>.fetch(in:config:)(v13, v15, v16, v14, &protocol witness table for TTSVBCloudVoiceModelMO);

    if (v17 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
    {
      v47 = v4;
      v57 = v2;
      if (i)
      {
        v19 = 0;
        v53 = v17 & 0xFFFFFFFFFFFFFF8;
        v54 = v17 & 0xC000000000000001;
        v2 = (v56 + 48);
        v20 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v54)
          {
            v21 = v20;
            v22 = MEMORY[0x23839BFC0](v19, v17);
          }

          else
          {
            if (v19 >= *(v53 + 16))
            {
              goto LABEL_31;
            }

            v21 = v20;
            v22 = *(v17 + 8 * v19 + 32);
          }

          v23 = v22;
          v4 = (v19 + 1);
          if (__OFADD__(v19, 1))
          {
            break;
          }

          (*((*MEMORY[0x277D85000] & *v22) + 0x60))(0);

          if ((*v2)(v8, 1, v9) == 1)
          {
            sub_233121E04(v8, &qword_27DDE2388, &qword_233297728);
            v20 = v21;
          }

          else
          {
            sub_2331BDDC4(v8, v55, type metadata accessor for TTSVBVoiceModel);
            v24 = v21;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_2331B3130(0, v21[2] + 1, 1, v21, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
            }

            v26 = v24[2];
            v25 = v24[3];
            v27 = v24;
            if (v26 >= v25 >> 1)
            {
              v27 = sub_2331B3130((v25 > 1), v26 + 1, 1, v24, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
            }

            v27[2] = v26 + 1;
            v20 = v27;
            sub_2331BDDC4(v55, v27 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v26, type metadata accessor for TTSVBVoiceModel);
          }

          ++v19;
          if (v4 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
LABEL_20:

        v54 = v20[2];
        if (!v54)
        {
LABEL_28:

          return;
        }

        v28 = 0;
        v53 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
        v58 = *MEMORY[0x277D85200];
        v29 = (v47 + 13);
        ++v47;
        v48 = v29;
        v46 = v20;
        while (v28 < v20[2])
        {
          v30 = v20 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v28;
          v8 = *(v9 + 24);
          v31 = sub_23328CE8C();
          v2 = &v44;
          v32 = *(v31 - 8);
          v33 = MEMORY[0x28223BE20](v31);
          v4 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          v35 = (*(v32 + 16))(v4, v30 + v8, v31, v33);
          if (!TTSVBProcessIsVoicebankingd(v35, v36))
          {
            goto LABEL_33;
          }

          v55 = &v44;
          v17 = v9;
          v2 = v52;
          v37 = *(v52 + v53);
          v9 = v50;
          v8 = v51;
          *v50 = v37;
          (*v48)(v9, v58, v8);
          v38 = v37;
          LOBYTE(v37) = sub_23328D85C();
          (*v47)(v9, v8);
          if ((v37 & 1) == 0)
          {
            goto LABEL_34;
          }

          v39 = *(v2 + v49);
          if (!v39)
          {
            __break(1u);
            goto LABEL_37;
          }

          v59 = 1;
          v40 = v39;
          v41 = sub_2331E511C(&v59);

          v8 = &v44;
          MEMORY[0x28223BE20](v42);
          *(&v44 - 4) = v4;
          *(&v44 - 3) = v41;
          *(&v44 - 2) = v2;
          v43 = v57;
          sub_23328DF5C();
          v57 = v43;
          if (v43)
          {

            (*(v32 + 8))(v4, v31);
            return;
          }

          v9 = v17;
          ++v28;

          (*(v32 + 8))(v4, v31);
          v20 = v46;
          if (v54 == v28)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }
  }

LABEL_37:
  __break(1u);
}

void sub_23317F95C(uint64_t a1, void *a2, uint64_t a3)
{
  v216 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v5 - 8);
  v233 = &v189 - v6;
  v234 = sub_23328D6EC();
  v218 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v8 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v189 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v189 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v189 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v189 - v19;
  v21 = type metadata accessor for TTSVBCloudVoiceModelMO();
  v22 = a1;
  v23 = a1;
  v24 = a2;
  v25 = v235;
  v26 = static TTSVBCloudVoiceModelMO.requireModelWithID(_:moc:)(v23, a2);
  if (v25)
  {
    return;
  }

  v27 = v26;
  v231 = v17;
  v232 = v20;
  v229 = v22;
  v230 = v14;
  v205 = v11;
  v208 = v24;
  v206 = v8;
  v214 = 0;
  v28 = sub_2331B2AAC(&qword_27DDE2358, type metadata accessor for TTSVBCloudVoiceModelMO, &protocol conformance descriptor for TTSVBCloudVoiceModelMO);
  v29 = v27;
  if ((TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v21, v28) & 1) == 0)
  {
    v211 = v27;
    v45 = sub_233225440();
    v46 = v218;
    v47 = v232;
    v48 = v234;
    (*(v218 + 16))(v232, v45, v234);
    v49 = sub_23328CE8C();
    v50 = *(v49 - 8);
    v51 = MEMORY[0x28223BE20](v49);
    v53 = &v189 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v53, v229, v49, v51);
    v54 = sub_23328D6CC();
    v55 = sub_23328DE1C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v239 = v235;
      *v56 = 136315138;
      v57 = sub_23328CE3C();
      v59 = v58;
      (*(v50 + 8))(v53, v49);
      v60 = sub_23311A8F4(v57, v59, &v239);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_233109000, v54, v55, "Skipping file-backed future sync for model: %s. Model version does not use file backed futures", v56, 0xCu);
      v61 = v235;
      __swift_destroy_boxed_opaque_existential_0(v235);
      MEMORY[0x23839CFD0](v61, -1, -1);
      MEMORY[0x23839CFD0](v56, -1, -1);

      (*(v218 + 8))(v232, v234);
    }

    else
    {

      (*(v50 + 8))(v53, v49);
      (*(v46 + 8))(v47, v48);
    }

    sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
    v85 = sub_23328DFBC();
    v86 = v211;
    [v211 setIsDownloaded_];

    if ([v86 hasPersistentChangedValues])
    {
      NSManagedObjectContext.trySave()();
    }

    return;
  }

  v30 = sub_23328CC9C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v189 - v36;
  v38 = *((*MEMORY[0x277D85000] & *v27) + 0x60);
  v39 = v233;
  v38(0, v35);
  v40 = type metadata accessor for TTSVBVoiceModel(0);
  if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
  {
    sub_233121E04(v39, &qword_27DDE2388, &qword_233297728);
    v239 = 0;
    v240 = 0xE000000000000000;
    sub_23328E24C();
    MEMORY[0x23839B7E0](0xD000000000000030, 0x80000002332A9130);
    v41 = sub_23328CE3C();
    MEMORY[0x23839B7E0](v41);

    MEMORY[0x23839B7E0](0xD00000000000001DLL, 0x80000002332A9170);
    v42 = v239;
    v43 = v240;
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v42, v43, 0, 0, 0, v44);
    swift_willThrow();

    return;
  }

  v197 = &v189;
  v211 = v29;
  TTSVBVoiceModel.url.getter(v37);
  sub_2331BDC54(v39, type metadata accessor for TTSVBVoiceModel);
  v199 = v31;
  v62 = *(v31 + 32);
  v204 = v33;
  v228 = v30;
  v210 = v31 + 32;
  v209 = v62;
  v62(v33, v37, v30);
  v63 = sub_233225440();
  v64 = *(v218 + 16);
  v221 = v63;
  v222 = v218 + 16;
  v65 = v234;
  v220 = v64;
  (v64)(v231);
  v66 = sub_23328CE8C();
  v235 = &v189;
  v67 = *(v66 - 8);
  v68 = v67[8];
  v69 = MEMORY[0x28223BE20](v66);
  v70 = &v189 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = v67[2];
  v191(v70, v229, v66, v69);
  v71 = sub_23328D6CC();
  v72 = sub_23328DE1C();
  v73 = os_log_type_enabled(v71, v72);
  v196 = v66;
  v195 = v67;
  v194 = v68;
  v193 = v67 + 2;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v239 = v75;
    *v74 = 136315138;
    v76 = sub_23328CE3C();
    v78 = v77;
    v192 = v67[1];
    v192(v70, v66);
    v79 = sub_23311A8F4(v76, v78, &v239);
    v80 = v229;

    *(v74 + 4) = v79;
    _os_log_impl(&dword_233109000, v71, v72, "Beginning file-backed future sync for model: %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    v81 = v75;
    v82 = v234;
    MEMORY[0x23839CFD0](v81, -1, -1);
    MEMORY[0x23839CFD0](v74, -1, -1);

    v219 = *(v218 + 8);
    v83 = v219(v231, v82);
    v84 = v211;
  }

  else
  {

    v192 = v67[1];
    v192(&v189 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v66);
    v219 = *(v218 + 8);
    v83 = v219(v231, v65);
    v84 = v211;
    v82 = v65;
    v80 = v229;
  }

  MEMORY[0x28223BE20](v83);
  *(&v189 - 2) = v80;
  v87 = sub_233175210();
  v88 = v228;
  v89 = v230;
  if (v87)
  {
    MEMORY[0x28223BE20](v87);
    *(&v189 - 2) = sub_2331BD8F4;
    *(&v189 - 1) = (&v189 - 4);
    sub_23328D2BC();
  }

  v90 = *((*MEMORY[0x277D85000] & *v84) + 0x58);
  v91 = (v90)();
  if (v91 >> 62)
  {
LABEL_65:
    v190 = sub_23328E19C();
  }

  else
  {
    v190 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v241 = 0;
  v237 = 0;
  v238 = 0;
  v236 = 0;
  v93 = (v90)(v92);
  v90 = v93;
  if (v93 >> 62)
  {
    v95 = sub_23328E19C();
    if (v95)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v95)
    {
LABEL_21:
      v84 = 0;
      v200 = 0;
      v198 = 0;
      v203 = 0;
      v231 = 0;
      v226 = v90 & 0xC000000000000001;
      v212 = v90 & 0xFFFFFFFFFFFFFF8;
      v225 = (v199 + 56);
      v215 = (v199 + 48);
      v207 = (v199 + 8);
      v217 = v218 + 8;
      *&v94 = 136315138;
      v213 = v94;
      v223 = v95;
      v224 = v90;
      while (1)
      {
        if (v226)
        {
          v96 = MEMORY[0x23839BFC0](v84, v90);
        }

        else
        {
          if (v84 >= *(v212 + 16))
          {
            goto LABEL_64;
          }

          v96 = *(v90 + 8 * v84 + 32);
        }

        v235 = v96;
        if (__OFADD__(v84, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v232 = v84 + 1;
        v97 = v82;
        v233 = &v189;
        MEMORY[0x28223BE20](v96);
        v99 = &v189 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
        v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
        v101 = (*(*(v100 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        v102 = MEMORY[0x28223BE20](v100 - 8);
        v103 = &v189 - v101;
        v104 = [v235 fileFuture];
        if (!v104)
        {
          break;
        }

        v105 = [v104 fileURL];
        v106 = swift_unknownObjectRelease();
        MEMORY[0x28223BE20](v106);
        if (v105)
        {
          sub_23328CC4C();

          v107 = 0;
        }

        else
        {
          v107 = 1;
        }

        v88 = v228;
        (*v225)(&v189 - v101, v107, 1, v228);
        sub_233121D9C(&v189 - v101, &v189 - v101, &qword_27DDE19A0, &unk_233290360);
        v108 = (*v215)(&v189 - v101, 1, v88);
        v82 = v234;
        v89 = v230;
        if (v108 == 1)
        {
          goto LABEL_33;
        }

        v209(v99, v103, v88);
        v109 = sub_2331DEBE8();
        v239 = *v109;
        v110 = v239;
        v111 = _TTSVBFileManager.fileExists(_:)(v99);

        if ((v111 & 1) == 0 || (v112 = [v235 relativePath]) == 0)
        {
          (*v207)(v99, v88);
          v82 = v234;
          v89 = v230;
          goto LABEL_41;
        }

        v113 = v112;
        v114 = sub_23328D98C();
        v116 = v115;

        v201 = &v189;
        MEMORY[0x28223BE20](v117);
        v119 = &v189 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
        v239 = v114;
        v240 = v116;
        v120 = sub_23328CB3C();
        v202 = &v189;
        v121 = *(v120 - 8);
        v122 = MEMORY[0x28223BE20](v120);
        v124 = &v189 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v121 + 104))(v124, *MEMORY[0x277CC91E0], v120, v122);
        sub_23311A294();
        sub_23328CC8C();
        (*(v121 + 8))(v124, v120);

        v239 = *v109;
        v125 = v239;
        LOBYTE(v113) = _TTSVBFileManager.fileExists(_:)(v119);

        v126 = *v109;
        if (v113)
        {
          v239 = *v109;
          v127 = v126;
          v128 = _TTSVBFileManager.filesAtURLsAreEqual(_:_:)(v99);

          v129 = *v207;
          v130 = v119;
          v88 = v228;
          (*v207)(v130, v228);
          v129(v99, v88);
          v80 = v229;
          if (v128)
          {
            v131 = v198 + 1;
            v82 = v234;
            v89 = v230;
            if (__OFADD__(v198, 1))
            {
              goto LABEL_87;
            }

            ++v198;
            v237 = v131;
          }

          else
          {
            v150 = v200 + 1;
            v82 = v234;
            v89 = v230;
            if (__OFADD__(v200, 1))
            {
              goto LABEL_86;
            }

            ++v200;
            v236 = v150;
          }

          v90 = v224;
        }

        else
        {
          v239 = *v109;
          v145 = v126;
          v146 = v214;
          _TTSVBFileManager.cloneFile(from:to:)(v99, v119);
          v214 = v146;
          v80 = v229;
          if (v146)
          {

            v153 = *v207;
            v154 = v228;
            (*v207)(v119, v228);
            v153(v99, v154);
            v153(v204, v154);
            return;
          }

          v147 = *v207;
          v148 = v119;
          v88 = v228;
          (*v207)(v148, v228);
          v147(v99, v88);
          v149 = v203 + 1;
          v90 = v224;
          if (__OFADD__(v203, 1))
          {
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            return;
          }

          ++v203;
          v238 = v149;
          v82 = v234;
          v89 = v230;
        }

        v144 = v223;
LABEL_49:
        ++v84;
        if (v232 == v144)
        {

          if (v231)
          {
            v151 = 0;
            v84 = v211;
            v152 = v200;
            goto LABEL_69;
          }

          v84 = v211;
          v152 = v200;
          goto LABEL_68;
        }
      }

      (*v225)(&v189 - v101, 1, 1, v88);
      v82 = v97;
LABEL_33:
      sub_233121E04(v103, &qword_27DDE19A0, &unk_233290360);
LABEL_41:
      v220(v89, v221, v82);
      v132 = v235;
      v133 = sub_23328D6CC();
      v134 = sub_23328DE2C();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v239 = v136;
        *v135 = v213;
        v137 = [v132 relativePath];
        if (v137)
        {
          v138 = v137;
          v139 = sub_23328D98C();
          v141 = v140;
        }

        else
        {
          v141 = 0xE600000000000000;
          v139 = 0x3E656E6F6E3CLL;
        }

        v142 = sub_23311A8F4(v139, v141, &v239);

        *(v135 + 4) = v142;
        _os_log_impl(&dword_233109000, v133, v134, "Future not downloaded: %s", v135, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v136);
        MEMORY[0x23839CFD0](v136, -1, -1);
        MEMORY[0x23839CFD0](v135, -1, -1);

        v89 = v230;
        v82 = v234;
        v219(v230, v234);
        v88 = v228;
        v80 = v229;
      }

      else
      {

        v219(v89, v82);
        v80 = v229;
      }

      v143 = v231 + 1;
      v144 = v223;
      v90 = v224;
      if (__OFADD__(v231, 1))
      {
        goto LABEL_63;
      }

      ++v231;
      v241 = v143;
      goto LABEL_49;
    }
  }

  v152 = 0;
  v198 = 0;
  v203 = 0;
LABEL_68:
  v231 = 0;
  v151 = v190 > 0;
LABEL_69:
  v155 = sub_23328DC6C();
  [v84 setIsDownloaded_];

  if ([v84 hasPersistentChangedValues] && (NSManagedObjectContext.trySave()(), (v214 = v156) != 0))
  {
    (*(v199 + 8))(v204, v88);
  }

  else
  {
    v200 = v152;
    v157 = v82;
    v158 = v206;
    v159 = v205;
    if (v203 > 0 && v151)
    {
      v220(v205, v221, v157);
      v160 = sub_23328D6CC();
      v161 = sub_23328DE1C();
      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        *v162 = 0;
        _os_log_impl(&dword_233109000, v160, v161, "Finished downloading all model files.", v162, 2u);
        MEMORY[0x23839CFD0](v162, -1, -1);
      }

      v219(v159, v157);
      v163 = *(v216 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
      if (v163)
      {

        sub_23328D2BC();
        sub_2331B9710(v163);
      }
    }

    v164 = (v220)(v158, v221, v157);
    v235 = &v189;
    v165 = MEMORY[0x28223BE20](v164);
    v167 = &v189 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
    v168 = v80;
    v169 = v80;
    v170 = v196;
    v191(v167, v169, v196, v165);
    v171 = sub_23328D6CC();
    v172 = sub_23328DE1C();
    if (os_log_type_enabled(v171, v172))
    {
      v173 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v239 = v174;
      *v173 = 136316162;
      v175 = sub_23328CE3C();
      v177 = v176;
      v192(v167, v170);
      v178 = sub_23311A8F4(v175, v177, &v239);

      *(v173 + 4) = v178;
      *(v173 + 12) = 2048;
      *(v173 + 14) = v231;
      *(v173 + 22) = 2048;
      *(v173 + 24) = v203;
      *(v173 + 32) = 2048;
      *(v173 + 34) = v198;
      *(v173 + 42) = 2048;
      *(v173 + 44) = v200;
      _os_log_impl(&dword_233109000, v171, v172, "Finished file-backed future sync for model: %s. undownloaded=%ld cloned=%ld existingEqual=%ld existingUnequal=%ld", v173, 0x34u);
      __swift_destroy_boxed_opaque_existential_0(v174);
      v179 = v174;
      v88 = v228;
      MEMORY[0x23839CFD0](v179, -1, -1);
      MEMORY[0x23839CFD0](v173, -1, -1);

      v180 = v158;
      v181 = v234;
      v168 = v229;
    }

    else
    {

      v192(v167, v170);
      v180 = v158;
      v181 = v157;
    }

    v182 = v219(v180, v181);
    MEMORY[0x28223BE20](v182);
    *(&v189 - 6) = v168;
    *(&v189 - 5) = &v241;
    *(&v189 - 4) = &v238;
    *(&v189 - 3) = &v237;
    *(&v189 - 2) = &v236;
    v185 = *(v184 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
    v186 = v211;
    v187 = v204;
    if (v185)
    {
      MEMORY[0x28223BE20](v183);
      *(&v189 - 2) = sub_2331BD974;
      *(&v189 - 1) = v188;

      sub_23328D2BC();
      sub_2331B9710(v185);
    }

    else
    {
    }

    (*(v199 + 8))(v187, v88);
  }
}

uint64_t sub_233181398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = v4;
  sub_233178950(a4, v8, a1, a2, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_23318143C(unint64_t a1)
{
  v2 = v1;
  v44 = sub_23328D83C();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TTSVBVoice(0);
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore;
  v9 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (v9)
  {
    v51 = 1;
    v10 = v9;
    v11 = sub_2331E511C(&v51);

    v12 = type metadata accessor for TTSVBCloudVoiceMO();
    v13 = sub_2331F88A8(v12, &protocol witness table for TTSVBCloudVoiceMO);
    v36 = v11;
    v48 = v12;
    v15 = static DSO<>.fetch(in:config:)(v11, v13, v14, v12, &protocol witness table for TTSVBCloudVoiceMO);

    if (v15 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
    {
      v39 = v4;
      v42 = a1;
      v49 = v2;
      if (i)
      {
        v17 = 0;
        v46 = v15 & 0xFFFFFFFFFFFFFF8;
        v47 = v15 & 0xC000000000000001;
        v18 = MEMORY[0x277D84F90];
        v4 = i;
        while (1)
        {
          if (v47)
          {
            v2 = v15;
            v19 = MEMORY[0x23839BFC0](v17, v15);
          }

          else
          {
            if (v17 >= *(v46 + 16))
            {
              goto LABEL_29;
            }

            v2 = v15;
            v19 = *(v15 + 8 * v17 + 32);
          }

          v15 = v19;
          v20 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            break;
          }

          TTSVBCommonVoiceMO.immutableVoice()(v48, &protocol witness table for TTSVBCloudVoiceMO, v8);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_2331B3130(0, v18[2] + 1, 1, v18, &qword_27DDE19C8, &qword_233299AD0, type metadata accessor for TTSVBVoice);
          }

          a1 = v18[2];
          v21 = v18[3];
          if (a1 >= v21 >> 1)
          {
            v18 = sub_2331B3130((v21 > 1), a1 + 1, 1, v18, &qword_27DDE19C8, &qword_233299AD0, type metadata accessor for TTSVBVoice);
          }

          v18[2] = a1 + 1;
          sub_2331BDDC4(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1, type metadata accessor for TTSVBVoice);
          ++v17;
          v15 = v2;
          if (v20 == v4)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
LABEL_18:

        v48 = v18[2];
        if (!v48)
        {
LABEL_26:

          return;
        }

        a1 = 0;
        v47 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue;
        LODWORD(v46) = *MEMORY[0x277D85200];
        v22 = (v39 + 13);
        ++v39;
        v40 = v22;
        v37 = v6;
        v38 = v18;
        while (a1 < v18[2])
        {
          v15 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a1;
          v4 = *(v45 + 20);
          v23 = sub_23328CE8C();
          v2 = *(v23 - 8);
          v24 = MEMORY[0x28223BE20](v23);
          v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
          v27 = (*(v2 + 16))(v26, v4 + v15, v23, v24);
          if (!TTSVBProcessIsVoicebankingd(v27, v28))
          {
            goto LABEL_31;
          }

          v6 = v42;
          v8 = v43;
          v29 = *(v42 + v47);
          *v43 = v29;
          v4 = v44;
          (*v40)(v8, v46, v44);
          v30 = v29;
          v15 = sub_23328D85C();
          (*v39)(v8, v4);
          if ((v15 & 1) == 0)
          {
            goto LABEL_32;
          }

          v31 = *(v6 + v41);
          if (!v31)
          {
            __break(1u);
            goto LABEL_35;
          }

          v50 = 1;
          v32 = v31;
          v15 = sub_2331E511C(&v50);

          v4 = &v36;
          MEMORY[0x28223BE20](v33);
          *(&v36 - 4) = v26;
          *(&v36 - 3) = v15;
          *(&v36 - 2) = v6;
          v34 = v49;
          sub_23328DF5C();
          v49 = v34;
          if (v34)
          {

            (*(v2 + 8))(v26, v23);
            return;
          }

          ++a1;

          v35 = *(v2 + 8);
          v2 += 8;
          v35(v26, v23);
          v6 = v37;
          v18 = v38;
          if (v48 == a1)
          {
            goto LABEL_26;
          }
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_233181A58(uint64_t a1, void *a2, uint64_t a3)
{
  v193 = a3;
  v5 = sub_23328D6EC();
  v209 = *(v5 - 8);
  v210 = v5;
  MEMORY[0x28223BE20](v5);
  v192 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v183 = &v176 - v8;
  MEMORY[0x28223BE20](v9);
  v182 = &v176 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v176 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v176 - v15;
  v17 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = (&v176 - v21);
  type metadata accessor for TTSVBCloudVoiceMO();
  v23 = v211;
  v24 = static TTSVBCloudVoiceMO.requireVoiceWithID(_:moc:)(a1, a2);
  if (!v23)
  {
    v207 = v22;
    v208 = v17;
    v205 = v16;
    v206 = v19;
    v190 = v13;
    v188 = a1;
    v189 = a2;
    v25 = *((*MEMORY[0x277D85000] & *v24) + 0x58);
    v26 = (*MEMORY[0x277D85000] & *v24) + 88;
    v181 = v24;
    v27 = *(v25() + 16);

    if (v27)
    {
      v204 = v26;
      v211 = 0;
      v203 = sub_2331DEBE8();
      v213[0] = *v203;
      v29 = v213[0];
      v30 = v207;
      swift_storeEnumTagMultiPayload();
      v31 = sub_23328CC9C();
      v32 = *(v31 - 8);
      v33 = *(v32 + 64);
      MEMORY[0x28223BE20](v31);
      v34 = v29;
      TTSVBPath.url.getter(&v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2331BDC54(v30, type metadata accessor for TTSVBPath);
      LOBYTE(v29) = _TTSVBFileManager.directoryExists(_:)(&v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      v207 = *(v32 + 8);
      v207(&v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v31);

      v35 = v190;
      v36 = v209;
      if (v29)
      {
        v37 = v211;
      }

      else
      {
        v202 = v31;
        v201 = v25;
        v38 = sub_233225440();
        v39 = v205;
        (*(v36 + 2))(v205, v38, v210);
        v40 = sub_23328D6CC();
        v41 = sub_23328DE1C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_233109000, v40, v41, "Recordings directory in container does not exist. Creating.", v42, 2u);
          MEMORY[0x23839CFD0](v42, -1, -1);
        }

        (*(v36 + 1))(v39, v210);
        v212[0] = *v203;
        v43 = v212[0];
        v44 = v206;
        v45 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v45);
        v46 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        v47 = v43;
        TTSVBPath.url.getter(v46);
        sub_2331BDC54(v44, type metadata accessor for TTSVBPath);
        v213[0] = 0;
        v213[1] = 0;
        v214 = -1;
        v48 = sub_233126E60();
        v49 = v211;
        _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v46, 0, v48 & 1, v213);
        v37 = v49;
        if (v49)
        {

          v207(v46, v202);
          return;
        }

        v207(v46, v202);

        v25 = v201;
      }
    }

    else
    {
      v35 = v190;
      v36 = v209;
      v37 = 0;
    }

    v50 = (v25)(v28);
    v52 = v50;
    v53 = v210;
    v186 = *(v50 + 16);
    if (v186)
    {
      v54 = 0;
      v179 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
      v206 = (v36 + 8);
      v207 = (v36 + 16);
      v55 = (v50 + 40);
      *&v51 = 136315138;
      v184 = v51;
      *&v51 = 136316162;
      v176 = v51;
      v187 = v50;
      do
      {
        if (v54 >= *(v52 + 16))
        {
          __break(1u);
          return;
        }

        v200 = v54;
        v57 = *(v55 - 1);
        v56 = *v55;
        v199 = v55;
        ObjectType = swift_getObjectType();
        v59 = *(v56 + 208);
        swift_unknownObjectRetain();
        v204 = v57;
        v208 = v59(ObjectType, v56);
        if (!v60)
        {

          type metadata accessor for TTSVBError(0);
          sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
          swift_allocError();
          TTSVBError.init(_:_:_:)(0xD000000000000052, 0x80000002332A8F80, v208, 0, 0, v168);
          swift_willThrow();
          swift_unknownObjectRelease();

          return;
        }

        v61 = v60;
        v62 = sub_233225440();
        v63 = *v207;
        v202 = v62;
        v203 = v63;
        (v63)(v35);

        v64 = sub_23328D6CC();
        v65 = sub_23328DE1C();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v219 = v67;
          *v66 = v184;
          v68 = v208;
          *(v66 + 4) = sub_23311A8F4(v208, v61, &v219);
          _os_log_impl(&dword_233109000, v64, v65, "Beginning file-backed future sync for sample: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v67);
          MEMORY[0x23839CFD0](v67, -1, -1);
          MEMORY[0x23839CFD0](v66, -1, -1);

          v201 = *v206;
          v69 = (v201)(v35, v53);
        }

        else
        {

          v201 = *v206;
          v69 = (v201)(v35, v53);
          v68 = v208;
        }

        MEMORY[0x28223BE20](v69);
        *(&v176 - 2) = v68;
        *(&v176 - 1) = v61;
        v70 = sub_233175210();
        if (v70)
        {
          MEMORY[0x28223BE20](v70);
          *(&v176 - 2) = sub_2331BD498;
          *(&v176 - 1) = &v176 - 2;
          sub_23328D2BC();
        }

        v219 = 0;
        v217 = 0;
        v218 = 0;
        v216 = 0;
        v71 = type metadata accessor for TTSVBCloudVoiceSampleMO();
        v72 = static TTSVBCloudVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(v68, v61, v188, v189);
        if (v37)
        {
          swift_unknownObjectRelease();

          goto LABEL_73;
        }

        v73 = v72;
        v185 = v71;
        v205 = v61;
        v211 = 0;
        v74 = sub_23328CC9C();
        v196 = &v176;
        v75 = *(v74 - 8);
        v76 = *(v75 + 64);
        MEMORY[0x28223BE20](v74);
        v191 = &v176 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
        v194 = &v176;
        v78 = *(*(v77 - 8) + 64);
        v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
        v80 = MEMORY[0x28223BE20](v77 - 8);
        v209 = v73;
        v81 = [v73 audioFuture];
        v197 = v74;
        v198 = v75;
        v195 = v78;
        if (!v81)
        {

          v208 = *(v75 + 56);
          v208(&v176 - v79, 1, 1, v74);
          goto LABEL_28;
        }

        v82 = [v81 fileURL];
        v83 = swift_unknownObjectRelease();
        MEMORY[0x28223BE20](v83);
        if (v82)
        {
          sub_23328CC4C();

          v84 = 0;
        }

        else
        {
          v84 = 1;
        }

        v85 = v197;
        v86 = v198;
        v87 = *(v198 + 56);
        v87(&v176 - v79, v84, 1, v197);
        sub_233121D9C(&v176 - v79, &v176 - v79, &qword_27DDE19A0, &unk_233290360);
        v88 = *(v86 + 48);
        if (v88(&v176 - v79, 1, v85) == 1)
        {
          v208 = v87;

LABEL_28:
          sub_233121E04(&v176 - v79, &qword_27DDE19A0, &unk_233290360);
LABEL_29:
          v89 = v209;
          v53 = v210;
          v90 = v192;
          v91 = v195;
          (v203)(v192, v202, v210);
          v92 = v89;
          v93 = sub_23328D6CC();
          v94 = sub_23328DE2C();

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v215 = v96;
            *v95 = v184;
            v97 = (v91 + 15) & 0xFFFFFFFFFFFFFFF0;
            v98 = &v176 - v97;
            v99 = [v92 audioFuture];
            if (!v99)
            {
              goto LABEL_47;
            }

            v205 = &v176;
            v209 = v96;
            v100 = [v99 fileURL];
            v101 = swift_unknownObjectRelease();
            v203 = &v176;
            MEMORY[0x28223BE20](v101);
            v102 = &v176 - v97;
            if (v100)
            {
              sub_23328CC4C();

              v103 = 0;
            }

            else
            {
              v103 = 1;
            }

            v135 = v198;
            v136 = v197;
            v208(v102, v103, 1, v197);
            sub_233121D9C(v102, v98, &qword_27DDE19A0, &unk_233290360);
            if ((*(v135 + 48))(v98, 1, v136) == 1)
            {
              sub_233121E04(v98, &qword_27DDE19A0, &unk_233290360);
              v96 = v209;
LABEL_47:
              v137 = 0xE600000000000000;
              v138 = 0x3E656E6F6E3CLL;
              v139 = v192;
            }

            else
            {
              v140 = sub_23328CB1C();
              v137 = v141;
              (*(v135 + 8))(v98, v136);
              v138 = v140;
              v139 = v192;
              v96 = v209;
            }

            v142 = sub_23311A8F4(v138, v137, &v215);

            *(v95 + 4) = v142;
            _os_log_impl(&dword_233109000, v93, v94, "Future not downloaded: %s", v95, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v96);
            MEMORY[0x23839CFD0](v96, -1, -1);
            MEMORY[0x23839CFD0](v95, -1, -1);

            swift_unknownObjectRelease();
            v104 = v139;
            v53 = v210;
          }

          else
          {

            swift_unknownObjectRelease();
            v104 = v90;
          }

          (v201)(v104, v53);
          v37 = v211;
          v35 = v190;
          v52 = v187;
          v143 = v200;
          goto LABEL_51;
        }

        v105 = v191;
        v180 = *(v86 + 32);
        v180(v191, &v176 - v79, v85);
        v194 = sub_2331DEBE8();
        v215 = *v194;
        v106 = v215;
        v107 = _TTSVBFileManager.fileExists(_:)(v105);

        if ((v107 & 1) == 0)
        {
          v208 = v87;

          (*(v86 + 8))(v105, v85);
          goto LABEL_29;
        }

        v178 = &v176;
        MEMORY[0x28223BE20](v108);
        v109 = &v176 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v110);
        v112 = v85;
        v113 = &v176 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
        v114 = sub_2331B2AAC(&qword_27DDE2370, type metadata accessor for TTSVBCloudVoiceSampleMO, &protocol conformance descriptor for TTSVBCloudVoiceSampleMO);
        TTSVBCommonVoiceSampleMO.url.getter(v185, v114, v113);
        if (v88(v113, 1, v112) == 1)
        {
          swift_unknownObjectRelease();

          sub_233121E04(v113, &qword_27DDE19A0, &unk_233290360);
          (*(v198 + 8))(v191, v112);
          return;
        }

        v180(v109, v113, v112);
        v115 = v194;
        v215 = *v194;
        v116 = v215;
        v117 = _TTSVBFileManager.fileExists(_:)(v109);

        v53 = v210;
        v119 = v211;
        v120 = v191;
        v177 = v109;
        if (v117)
        {
          v215 = *v115;
          v121 = v215;
          v122 = _TTSVBFileManager.filesAtURLsAreEqual(_:_:)(v120);

          v124 = v193;
          if (v122)
          {
            v125 = v120;
            v126 = v182;
            (v203)(v182, v202, v53);
            v127 = sub_23328D6CC();
            v128 = sub_23328DE1C();
            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              *v129 = 0;
              _os_log_impl(&dword_233109000, v127, v128, "Will not clone audio-file futureURL to localURL. Files are equal", v129, 2u);
              MEMORY[0x23839CFD0](v129, -1, -1);
            }

            (v201)(v126, v53);
            v130 = *(v124 + v179);
            if (v130)
            {

              sub_23328D2BC();
              sub_2331B9710(v130);
            }

            swift_beginAccess();
            v131 = 0;
            v132 = 0;
            v217 = 1;
            v133 = 1;
            v134 = v209;
            v120 = v125;
            goto LABEL_61;
          }

          MEMORY[0x28223BE20](v123);
          *(&v176 - 2) = v120;
          *(&v176 - 1) = v109;
          v149 = *(v124 + v179);
          if (v149)
          {
            MEMORY[0x28223BE20](v148);
            *(&v176 - 2) = sub_2331BD804;
            *(&v176 - 1) = v150;

            sub_23328D2BC();
            sub_2331B9710(v149);
          }

          swift_beginAccess();
          v133 = 0;
          v132 = 0;
          v216 = 1;
          v131 = 1;
        }

        else
        {
          MEMORY[0x28223BE20](v118);
          *(&v176 - 2) = v120;
          *(&v176 - 1) = v109;
          v145 = *(v193 + v179);
          if (v145)
          {
            MEMORY[0x28223BE20](v144);
            *(&v176 - 2) = sub_2331BD514;
            *(&v176 - 1) = v146;

            sub_23328D2BC();
            sub_2331B9710(v145);
          }

          v215 = *v115;
          v147 = v215;
          _TTSVBFileManager.cloneFile(from:to:)(v120, v109);
          if (v119)
          {
            v169 = v215;

            swift_unknownObjectRelease();
            v170 = *(v198 + 8);
            v171 = v120;
            v172 = v197;
            v170(v177, v197);
            v170(v171, v172);
            return;
          }

          v211 = 0;

          swift_beginAccess();
          v131 = 0;
          v133 = 0;
          v218 = 1;
          v132 = 1;
        }

        v134 = v209;
LABEL_61:
        if ([v134 hasPersistentChangedValues])
        {
          NSManagedObjectContext.trySave()();
          v211 = v151;
          if (v151)
          {
            swift_unknownObjectRelease();

            v173 = *(v198 + 8);
            v174 = v120;
            v175 = v197;
            v173(v177, v197);
            v173(v174, v175);
            return;
          }
        }

        v152 = v183;
        (v203)(v183, v202, v53);
        v153 = v205;

        v154 = sub_23328D6CC();
        v155 = sub_23328DE1C();

        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          v203 = v131;
          v157 = v156;
          v158 = swift_slowAlloc();
          v215 = v158;
          *v157 = v176;
          v159 = v208;
          *(v157 + 4) = sub_23311A8F4(v208, v153, &v215);
          *(v157 + 12) = 2048;
          *(v157 + 14) = 0;
          *(v157 + 22) = 2048;
          *(v157 + 24) = v132;
          *(v157 + 32) = 2048;
          *(v157 + 34) = v133;
          *(v157 + 42) = 2048;
          *(v157 + 44) = v203;
          _os_log_impl(&dword_233109000, v154, v155, "Finished file-backed future sync for sample: %s. undownloaded=%ld cloned=%ld existingEqual=%ld existingUnequal=%ld", v157, 0x34u);
          __swift_destroy_boxed_opaque_existential_0(v158);
          v160 = v158;
          v53 = v210;
          MEMORY[0x23839CFD0](v160, -1, -1);
          MEMORY[0x23839CFD0](v157, -1, -1);

          v161 = (v201)(v152, v53);
          v37 = v211;
        }

        else
        {

          v161 = (v201)(v152, v53);
          v37 = v211;
          v159 = v208;
        }

        MEMORY[0x28223BE20](v161);
        *(&v176 - 6) = v159;
        *(&v176 - 5) = v153;
        *(&v176 - 4) = &v219;
        *(&v176 - 3) = &v218;
        *(&v176 - 2) = &v217;
        *(&v176 - 1) = &v216;
        v163 = *(v193 + v179);
        v35 = v190;
        if (v163)
        {
          MEMORY[0x28223BE20](v162);
          *(&v176 - 2) = sub_2331BD5E0;
          *(&v176 - 1) = v164;

          sub_23328D2BC();

          swift_unknownObjectRelease();
          sub_2331B9710(v163);
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v52 = v187;
        v143 = v200;
        v165 = v191;
        v166 = *(v198 + 8);
        v167 = v197;
        v166(v177, v197);
        v166(v165, v167);
LABEL_51:
        v54 = v143 + 1;
        v55 = v199 + 2;
      }

      while (v186 != v54);
    }

LABEL_73:
  }
}

void sub_23318342C(void *a1)
{
  v166 = a1;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v162);
  v152 = v136 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v156 = (v136 - v4);
  v5 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v5);
  v7 = v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_23328D6EC();
  v8 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v150 = v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v136 - v11;
  MEMORY[0x28223BE20](v13);
  *&v155 = v136 - v14;
  MEMORY[0x28223BE20](v15);
  v165 = v136 - v16;
  v17 = sub_23328D83C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = v1;
  v22 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17, v19);
  v23 = v22;
  LOBYTE(v22) = sub_23328D85C();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v153 = v5;
  v151 = v12;
  v24 = sub_233225314();
  v25 = *(v8 + 16);
  v158 = v24;
  v159 = v8 + 16;
  v157 = v25;
  (v25)(v165);
  v26 = sub_23328CE8C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v146 = v29;
  v30 = v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v27 + 16);
  v145 = v27 + 16;
  v144 = v31;
  v31(v30, v166, v26, v28);
  v32 = sub_23328D6CC();
  v33 = v8;
  v34 = sub_23328DE4C();
  v35 = os_log_type_enabled(v32, v34);
  v149 = v26;
  v148 = v27;
  v154 = v7;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v143 = v136;
    v37 = v36;
    v38 = swift_slowAlloc();
    v161 = v33;
    v39 = v38;
    v171 = v38;
    *v37 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v40 = sub_23328E51C();
    v42 = v41;
    v147 = *(v27 + 8);
    v147(v30, v26);
    v43 = sub_23311A8F4(v40, v42, &v171);
    v44 = v167;

    *(v37 + 4) = v43;
    _os_log_impl(&dword_233109000, v32, v34, "Will delete model and all related data with ID: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x23839CFD0](v39, -1, -1);
    MEMORY[0x23839CFD0](v37, -1, -1);

    v33 = v161;
    v45 = *(v161 + 8);
    v46 = v165;
    v47 = v44;
  }

  else
  {

    v147 = *(v27 + 8);
    v147(v30, v26);
    v45 = *(v33 + 8);
    v46 = v165;
    v47 = v167;
  }

  v160 = v45;
  v48 = (v45)(v46, v47);
  MEMORY[0x28223BE20](v48);
  v49 = v166;
  v136[-2] = v166;
  v50 = v164;
  v51 = sub_233175210();
  if (v51)
  {
    MEMORY[0x28223BE20](v51);
    v136[-2] = sub_2331BD338;
    v136[-1] = &v136[-4];
    sub_23328D2BC();
  }

  v52 = *(v50 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v52)
  {
    goto LABEL_26;
  }

  LOBYTE(v171) = 1;
  v53 = v52;
  v54 = sub_2331E511C(&v171);

  v55 = swift_allocBox();
  v57 = v56;
  v58 = type metadata accessor for TTSVBVoiceModel(0);
  v59 = *(v58 - 8);
  v60 = (*(v59 + 56))(v57, 1, 1, v58);
  MEMORY[0x28223BE20](v60);
  v136[-4] = v49;
  v136[-3] = v54;
  v136[-2] = v55;
  v61 = v163;
  sub_23328DF5C();
  if (v61)
  {

    return;
  }

  v143 = v54;
  v164 = 0;
  v161 = v33;
  v165 = sub_23328CC9C();
  v162 = *(v165 - 1);
  MEMORY[0x28223BE20](v165);
  v163 = v62;
  v63 = v57;
  v64 = v136 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v140 = v63;
  v65 = v63;
  v66 = v156;
  sub_233121D34(v65, v156, &qword_27DDE2388, &qword_233297728);
  v69 = *(v59 + 48);
  v68 = v59 + 48;
  v67 = v69;
  if (v69(v66, 1, v58) == 1)
  {
    goto LABEL_27;
  }

  v141 = v55;
  v70 = v66;
  v71 = v154;
  sub_2331BDDC4(v70, v154, type metadata accessor for TTSVBVoiceModel);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v64);
  sub_2331BDC54(v71, type metadata accessor for TTSVBPath);
  v72 = v155;
  v157(v155, v158, v167);
  v73 = sub_23328D6CC();
  v74 = sub_23328DE4C();
  v75 = os_log_type_enabled(v73, v74);
  v142 = v136;
  v139 = v67;
  v138 = v68;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v170 = v77;
    *v76 = 136315138;
    swift_beginAccess();
    v78 = sub_23328CC6C();
    v80 = sub_23311A8F4(v78, v79, &v170);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_233109000, v73, v74, "Deleting any staged trainings: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v77);
    MEMORY[0x23839CFD0](v77, -1, -1);
    MEMORY[0x23839CFD0](v76, -1, -1);
  }

  v160(v72, v167);
  v81 = sub_2331DEBE8();
  v172 = *v81;
  v82 = v172;
  v83 = swift_beginAccess();
  v156 = v136;
  v84 = MEMORY[0x28223BE20](v83);
  v86 = v136 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v162;
  v88 = v162 + 16;
  v89 = *(v162 + 16);
  v89(v86, v64, v165, v84);
  v155 = xmmword_2332991D0;
  v168 = xmmword_2332991D0;
  v169 = 3;
  v90 = v82;
  v91 = v164;
  _TTSVBFileManager.removeItem(_:problem:)(v86, &v168);
  if (v91)
  {

    v92 = *(v87 + 8);
    v93 = v165;
    v92(v86, v165);

    v92(v64, v93);

    return;
  }

  v136[0] = v89;
  v136[1] = v88;
  v154 = v64;
  v164 = 0;
  v94 = *(v87 + 8);
  v153 = v87 + 8;
  v137 = v94;
  v94(v86, v165);

  v95 = v152;
  sub_233121D34(v140, v152, &qword_27DDE2388, &qword_233297728);
  v96 = v139(v95, 1, v58);
  if (v96 == 1)
  {
    goto LABEL_28;
  }

  v97 = v163;
  MEMORY[0x28223BE20](v96);
  TTSVBVoiceModel.url.getter(v136 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2331BDC54(v95, type metadata accessor for TTSVBVoiceModel);
  v98 = v154;
  (*(v87 + 40))(v154, v136 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0), v165);
  v99 = v151;
  v157(v151, v158, v167);
  v100 = sub_23328D6CC();
  v101 = sub_23328DE4C();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v168 = v103;
    *v102 = 136315138;
    v104 = sub_23328CC6C();
    v106 = sub_23311A8F4(v104, v105, &v168);

    *(v102 + 4) = v106;
    v107 = v167;
    _os_log_impl(&dword_233109000, v100, v101, "Deleting model: %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x23839CFD0](v103, -1, -1);
    v108 = v102;
    v97 = v163;
    MEMORY[0x23839CFD0](v108, -1, -1);

    v109 = v99;
    v110 = v107;
  }

  else
  {

    v109 = v99;
    v110 = v167;
  }

  v111 = (v160)(v109, v110);
  v172 = *v81;
  v112 = v172;
  v113 = MEMORY[0x28223BE20](v111);
  v114 = v136 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115(v114, v98, v165, v113);
  v168 = v155;
  v169 = 3;
  v116 = v112;
  v117 = v164;
  _TTSVBFileManager.removeItem(_:problem:)(v114, &v168);
  v118 = v137;
  if (v117)
  {

    v119 = v165;
    v118(v114, v165);

    v118(v98, v119);
  }

  else
  {
    v164 = 0;
    v137(v114, v165);

    v120 = v150;
    v121 = (v157)(v150, v158, v167);
    v122 = MEMORY[0x28223BE20](v121);
    v124 = v136 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
    v125 = v149;
    v144(v124, v166, v149, v122);
    v126 = sub_23328D6CC();
    v127 = sub_23328DE4C();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v166 = v136;
      v130 = v129;
      *&v168 = v129;
      *v128 = 136315138;
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
      v131 = sub_23328E51C();
      v132 = v120;
      v134 = v133;
      v147(v124, v125);
      v135 = sub_23311A8F4(v131, v134, &v168);

      *(v128 + 4) = v135;
      _os_log_impl(&dword_233109000, v126, v127, "Finished deleting model and all related data with ModelID: %s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      MEMORY[0x23839CFD0](v130, -1, -1);
      MEMORY[0x23839CFD0](v128, -1, -1);

      v160(v132, v167);
      v137(v154, v165);
    }

    else
    {

      v147(v124, v125);
      v160(v120, v167);
      v118(v154, v165);
    }
  }
}

void sub_23318459C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_23328D6EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v36 = a3;
  v17 = swift_projectBox();
  type metadata accessor for TTSVBLocalVoiceModelMO();
  v18 = static TTSVBLocalVoiceModelMO.requireModelWithID(_:moc:)(a1, a2);
  if (!v3)
  {
    v19 = v18;
    v35 = 0;
    (*((*MEMORY[0x277D85000] & *v18) + 0x58))(0);
    swift_beginAccess();
    sub_2331BD410(v16, v17, &qword_27DDE2388, &qword_233297728);
    v20 = sub_233225314();
    (*(v8 + 16))(v10, v20, v7);

    v21 = sub_23328D6CC();
    v22 = sub_23328DE4C();
    if (os_log_type_enabled(v21, v22))
    {
      v33 = v7;
      v34 = v10;
      v32 = v8;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      v25 = v23;
      *v23 = 136315138;
      swift_beginAccess();
      sub_233121D34(v17, v13, &qword_27DDE2388, &qword_233297728);
      v26 = type metadata accessor for TTSVBVoiceModel(0);
      v27 = (*(*(v26 - 8) + 48))(v13, 1, v26);

      if (v27 == 1)
      {
        __break(1u);
        return;
      }

      v28 = *v13;
      v29 = v13[1];

      sub_2331BDC54(v13, type metadata accessor for TTSVBVoiceModel);
      v30 = sub_23311A8F4(v28, v29, &v37);

      *(v25 + 1) = v30;
      _os_log_impl(&dword_233109000, v21, v22, "Deleting model for voice=%s from store", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23839CFD0](v24, -1, -1);
      MEMORY[0x23839CFD0](v25, -1, -1);

      (*(v32 + 8))(v34, v33);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    [a2 deleteObject_];
    NSManagedObjectContext.trySave()();
  }
}

uint64_t TTSVBVoiceBankingManager.importModel(fromDirectory:overrideLocaleID:addingToVoice:completion:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a4;
  v101 = a1;
  v11 = sub_23328D7CC();
  v102 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_23328D80C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_23328D6EC();
  v99 = *(v18 - 8);
  v100 = v18;
  MEMORY[0x28223BE20](v18);
  v98 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (TTSVBIsInternalUIBuild())
  {
    v95 = a2;
    v96 = v6;
    v94 = a6;
    v20 = sub_233225314();
    (*(v99 + 2))(v98, v20, v100);
    v21 = sub_23328CE8C();
    v85 = v81;
    v22 = *(v21 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v91 = v24;
    v25 = &v81[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v26 = *(v22 + 16);
    v27 = v97;
    v84 = v28;
    v89 = v26;
    v90 = v22 + 16;
    (v26)(v25, v97, v23);
    v29 = sub_23328CC9C();
    v83 = v81;
    v30 = *(v29 - 8);
    v31 = MEMORY[0x28223BE20](v29);
    v88 = v32;
    v33 = &v81[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v34 = *(v30 + 16);
    v87 = v30 + 16;
    v86 = v34;
    v34(v33, v101, v29, v31);

    v35 = sub_23328D6CC();
    v36 = sub_23328DE4C();

    v37 = os_log_type_enabled(v35, v36);
    v102 = a3;
    v92 = v22;
    v93 = a5;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315650;
      v82 = v36;
      v40 = sub_23328CE3C();
      v42 = v41;
      v43 = *(v22 + 8);
      v44 = v84;
      v43(v25, v84);
      v45 = sub_23311A8F4(v40, v42, aBlock);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2080;
      v46 = v95;
      if (v102)
      {
        v47 = v95;
      }

      else
      {
        v47 = 0x3E6C696E3CLL;
      }

      if (v102)
      {
        v48 = v102;
      }

      else
      {
        v48 = 0xE500000000000000;
      }

      v49 = sub_23311A8F4(v47, v48, aBlock);

      *(v38 + 14) = v49;
      *(v38 + 22) = 2080;
      v50 = sub_23328CC6C();
      v52 = v51;
      (*(v30 + 8))(v33, v29);
      v53 = sub_23311A8F4(v50, v52, aBlock);

      *(v38 + 24) = v53;
      _os_log_impl(&dword_233109000, v35, v82, "Will import model, adding to voice '%s' overrideLocaleID=%s with data from: %s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v39, -1, -1);
      v54 = v38;
      v27 = v97;
      a3 = v102;
      MEMORY[0x23839CFD0](v54, -1, -1);

      v55 = (*(v99 + 1))(v98, v100);
      v56 = v44;
    }

    else
    {

      (*(v30 + 8))(v33, v29);
      v56 = v84;
      (*(v22 + 8))(v25, v84);
      v55 = (*(v99 + 1))(v98, v100);
      v46 = v95;
    }

    v100 = v30;
    MEMORY[0x28223BE20](v55);
    *&v81[-32] = v27;
    *&v81[-24] = v46;
    v60 = v101;
    *&v81[-16] = a3;
    *&v81[-8] = v60;
    v61 = sub_233175210();
    if (v61)
    {
      MEMORY[0x28223BE20](v61);
      *&v81[-16] = sub_2331B345C;
      *&v81[-8] = &v81[-48];
      sub_23328D2BC();
    }

    v99 = v81;
    v62 = v88;
    v63 = MEMORY[0x28223BE20](v61);
    v64 = &v81[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v65 = v86(v64, v60, v29, v63);
    v101 = v81;
    v98 = v29;
    v66 = v91;
    v67 = MEMORY[0x28223BE20](v65);
    v68 = &v81[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v89(v68, v27, v56, v67);
    v69 = v100;
    v70 = (*(v100 + 80) + 24) & ~*(v100 + 80);
    v71 = v62 + v70 + 7;
    v72 = v56;
    v73 = v71 & 0xFFFFFFFFFFFFFFF8;
    v74 = v92;
    v75 = (*(v92 + 80) + (v71 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v92 + 80);
    v76 = swift_allocObject();
    v77 = v96;
    *(v76 + 16) = v96;
    (*(v69 + 32))(v76 + v70, v64, v98);
    v78 = (v76 + v73);
    v79 = v102;
    *v78 = v95;
    v78[1] = v79;
    (*(v74 + 32))(v76 + v75, v68, v72);

    v80 = v77;
    sub_233178950(sub_2331B358C, v76, v93, v94, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
  }

  else
  {
    v101 = *&v6[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue];
    v57 = swift_allocObject();
    *(v57 + 16) = a5;
    *(v57 + 24) = a6;
    aBlock[4] = sub_2331B3430;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_58;
    v58 = _Block_copy(aBlock);

    sub_23328D7DC();
    v103 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v17, v13, v58);
    _Block_release(v58);
    (*(v102 + 8))(v13, v11);
    (*(v15 + 8))(v17, v14);
  }
}

void sub_233185384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v61 = a2;
  v62 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v53 - v10;
  v12 = sub_23328D83C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12, v14);
  v18 = v17;
  v19 = sub_23328D85C();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v20)
  {
LABEL_13:
    __break(1u);
    (*(a1 + 8))(v16, v19);
    __break(1u);
    return;
  }

  LOBYTE(v63[0]) = 1;
  v21 = v20;
  v22 = sub_2331E511C(v63);

  v23 = sub_2331DEBE8();
  v63[0] = *v23;
  v24 = v63[0];
  sub_2331E143C(a1);
  v25 = v63[0];
  if (v5)
  {
  }

  else
  {
    v54 = v11;
    v57 = v22;
    v58 = v6;
    v60 = a3;

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v56 = v53;
    v27 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v26 - 8);
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    v63[0] = *v23;
    v29 = v63[0];
    v59 = a1;
    _TTSVBFileManager.getFileIfExists(in:named:)(0xD000000000000012, 0x80000002332A8E70, v53 - v28);

    MEMORY[0x28223BE20](v30);
    v55 = v53 - v28;
    sub_233121D34(v53 - v28, v53 - v28, &qword_27DDE19A0, &unk_233290360);
    v31 = sub_23328CC9C();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v53 - v28, 1, v31);
    if (v33 == 1)
    {
      v34 = type metadata accessor for TTSVBVoiceModel(0);
      v35 = v54;
      v36 = (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
    }

    else
    {
      v53[0] = v53;
      v53[1] = v53;
      v39 = MEMORY[0x28223BE20](v33);
      v41 = v53 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 32))(v41, v53 - v28, v31, v39);
      v42 = *sub_2331DEBE8();
      v65 = v42;
      v43 = type metadata accessor for TTSVBVoiceModel(0);
      v63[0] = 0;
      v63[1] = 0;
      v64 = -1;
      v44 = sub_2331B2AAC(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel, &protocol conformance descriptor for TTSVBVoiceModel);
      v45 = v42;
      v35 = v54;
      _TTSVBFileManager.load<A>(_:fromFile:problem:)(v43, v41, v63, v43, v44, v54);

      (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
      v36 = (*(v32 + 8))(v41, v31);
    }

    v37 = v60;
    v38 = v61;
    v46 = v59;
    if (v60)
    {
      v47 = type metadata accessor for TTSVBVoiceModel(0);
      v36 = (*(*(v47 - 8) + 48))(v35, 1, v47);
      if (!v36)
      {
        v48 = (v35 + *(v47 + 56));
        *v48 = v38;
        v48[1] = v37;
      }
    }

    MEMORY[0x28223BE20](v36);
    v49 = v57;
    v53[-6] = v62;
    v53[-5] = v49;
    v53[-4] = v35;
    v53[-3] = v38;
    v53[-2] = v37;
    v53[-1] = v46;
    v50 = v49;
    sub_23328DF5C();
    sub_23317EAEC();
    v51 = [objc_opt_self() defaultCenter];
    v52 = *sub_23316943C();
    [v51 postNotificationName:v52 object:0];

    sub_233121E04(v55, &qword_27DDE19A0, &unk_233290360);
    sub_233121E04(v35, &qword_27DDE2388, &qword_233297728);
  }
}

void sub_233185A3C(uint64_t a1, void *a2, uint64_t *a3, NSObject *a4, char *a5, uint64_t a6)
{
  v132 = a4;
  v133 = a6;
  v136 = a3;
  v137 = a5;
  v8 = sub_23328D6EC();
  v9 = *(v8 - 8);
  v139 = v8;
  v140 = v9;
  MEMORY[0x28223BE20](v8);
  v131 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v138 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v119 - v14;
  v16 = type metadata accessor for TTSVBVoiceModel(0);
  v134 = *(v16 - 8);
  v135 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v119 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = (&v119 - v26);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v143);
  v141 = v143;
  v142 = v144;
  v28 = a2;
  v29 = v145;
  v30 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v141);
  if (v29)
  {
    sub_2331220AC(v141, *(&v141 + 1), v142);
  }

  else
  {
    v31 = v30;
    v129 = v21;
    v130 = v18;
    v127 = v15;
    v128 = 0;
    sub_2331220AC(v141, *(&v141 + 1), v142);
    v32 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v126 = v28;
    v33 = NSManagedObjectContext.insertDSO<A>(_:)(v32, v32, &protocol witness table for TTSVBLocalVoiceModelMO);
    v145 = v31;
    [v33 setVoice_];
    v34 = v136;
    sub_233121D34(v136, v27, &qword_27DDE2388, &qword_233297728);
    v35 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
    TTSVBCommonVoiceModelMO.update(withInfo:)(v27, v32, v35);
    sub_233121E04(v27, &qword_27DDE2388, &qword_233297728);
    sub_233121D34(v34, v24, &qword_27DDE2388, &qword_233297728);
    v36 = v135;
    v136 = v134[6];
    v37 = (v136)(v24, 1, v135);
    sub_233121E04(v24, &qword_27DDE2388, &qword_233297728);
    if (v37 == 1 && v137)
    {
      v38 = sub_23328D95C();
      [v33 setTrainingLocaleID_];
    }

    TTSVBCommonVoiceModelMO.status.setter(7, v32, v35);
    TTSVBCommonVoiceModelMO.trainingStatus.setter(4, v32, v35);
    sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
    v39 = sub_23328DFBC();
    [v33 setIsDownloaded_];

    v40 = v129;
    (*((*MEMORY[0x277D85000] & *v33) + 0x58))(0);
    v41 = (v136)(v40, 1, v36);
    v42 = v139;
    v43 = v140;
    v44 = v138;
    if (v41 == 1)
    {
      sub_233121E04(v40, &qword_27DDE2388, &qword_233297728);
      v45 = sub_233225314();
      v46 = v127;
      (*(v43 + 16))(v127, v45, v42);
      v47 = sub_23328D6CC();
      v48 = sub_23328DE4C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_233109000, v47, v48, "Cannot import model. url could not be determined", v49, 2u);
        MEMORY[0x23839CFD0](v49, -1, -1);
      }

      (*(v43 + 8))(v46, v42);
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(0xD000000000000030, 0x80000002332A8E90, 0, 0, 0, v50);
      swift_willThrow();
    }

    else
    {
      v134 = v33;
      sub_2331BDDC4(v40, v130, type metadata accessor for TTSVBVoiceModel);
      v51 = v42;
      v52 = sub_23328CC9C();
      v136 = &v119;
      v53 = *(v52 - 8);
      isa = v53[8].isa;
      MEMORY[0x28223BE20](v52);
      v55 = &v119 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
      TTSVBVoiceModel.url.getter(v55);
      v56 = sub_233225314();
      v57 = *(v43 + 16);
      v122 = v56;
      v123 = (v43 + 16);
      v121 = v57;
      v58 = (v57)(v44);
      v129 = &v119;
      v127 = isa;
      v59 = MEMORY[0x28223BE20](v58);
      v60 = v44;
      v61 = v55;
      v62 = v53[2].isa;
      v137 = v55;
      v63 = v52;
      v125 = v53 + 2;
      v124 = v62;
      v62(v55, v55, v52, v59);
      v64 = sub_23328D6CC();
      v65 = sub_23328DE4C();
      v66 = os_log_type_enabled(v64, v65);
      v132 = v53;
      if (v66)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v143 = v68;
        *v67 = 136315138;
        v69 = sub_23328CC6C();
        v71 = v70;
        v135 = v53[1].isa;
        v135(v61, v63);
        v72 = sub_23311A8F4(v69, v71, &v143);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_233109000, v64, v65, "Will create target directory for new model '%s'", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x23839CFD0](v68, -1, -1);
        v73 = v67;
        v74 = v139;
        MEMORY[0x23839CFD0](v73, -1, -1);

        v75 = v138;
        v138 = *(v140 + 8);
        (v138)(v75, v74);
        v76 = v63;
      }

      else
      {

        v135 = v53[1].isa;
        v135(v61, v52);
        v138 = *(v140 + 8);
        (v138)(v60, v51);
        v76 = v52;
        v74 = v51;
      }

      v77 = sub_2331DEBE8();
      *&v141 = *v77;
      v143 = 0uLL;
      v144 = -1;
      v78 = v141;
      v79 = sub_233126E60();
      v80 = v137;
      v81 = v128;
      _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v137, 0, v79 & 1, &v143);
      if (v81)
      {

        v135(v80, v76);
        sub_2331BDC54(v130, type metadata accessor for TTSVBVoiceModel);
      }

      else
      {
        v128 = 0;
        v129 = v77;

        v82 = v131;
        v83 = v121(v131, v122, v74);
        v123 = &v119;
        v84 = v127;
        v85 = MEMORY[0x28223BE20](v83);
        v86 = &v119 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
        v87 = v124;
        v88 = (v124)(v86, v85);
        v122 = &v119;
        v89 = MEMORY[0x28223BE20](v88);
        v90 = v80;
        v91 = v86;
        v87(v86, v90, v76, v89);
        v92 = v82;
        v93 = sub_23328D6CC();
        v94 = v74;
        v95 = sub_23328DE4C();
        v96 = os_log_type_enabled(v93, v95);
        v120 = v76;
        if (v96)
        {
          v97 = swift_slowAlloc();
          v125 = v93;
          v98 = v97;
          v127 = swift_slowAlloc();
          *&v143 = v127;
          *v98 = 136315394;
          v99 = sub_23328CC6C();
          v101 = v100;
          v102 = v86;
          v103 = v135;
          v135(v102, v76);
          v104 = sub_23311A8F4(v99, v101, &v143);

          *(v98 + 4) = v104;
          *(v98 + 12) = 2080;
          v105 = sub_23328CC6C();
          v107 = v106;
          v103(v91, v76);
          v108 = sub_23311A8F4(v105, v107, &v143);
          v109 = v133;

          *(v98 + 14) = v108;
          v110 = v125;
          _os_log_impl(&dword_233109000, v125, v95, "Will copy import model '%s' to '%s'", v98, 0x16u);
          v111 = v127;
          swift_arrayDestroy();
          MEMORY[0x23839CFD0](v111, -1, -1);
          MEMORY[0x23839CFD0](v98, -1, -1);

          (v138)(v131, v139);
        }

        else
        {

          v112 = v135;
          v135(v86, v76);
          v112(v86, v76);
          (v138)(v92, v94);
          v109 = v133;
        }

        *&v141 = *v129;
        v143 = 0uLL;
        v144 = -1;
        v113 = v141;
        v114 = v137;
        v115 = v128;
        _TTSVBFileManager.copyContentsOf(_:to:problem:)(v109, v137, &v143);
        v116 = v130;
        v117 = v134;
        if (v115)
        {

          v118 = v114;
        }

        else
        {

          NSManagedObjectContext.trySave()();
          v118 = v137;
        }

        v135(v118, v120);
        sub_2331BDC54(v116, type metadata accessor for TTSVBVoiceModel);
      }
    }
  }
}

void sub_2331867A4()
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7, v9);
  v13 = v12;
  v14 = sub_23328D85C();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = sub_233225314();
  v34 = *(v2 + 16);
  v34(v6, v15, v1);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  v18 = v1;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Will attempt to repair local datastore with on-disk models if needed", v19, 2u);
    MEMORY[0x23839CFD0](v19, -1, -1);
  }

  v20 = *(v2 + 8);
  v20(v6, v18);
  v40 = *sub_2331DEBE8();
  v21 = v40;
  v22 = sub_2331DFDEC();

  v39 = 0;
  if (!v22[2])
  {

    goto LABEL_9;
  }

  v23 = *(v36 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v23)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v38 = 1;
  v24 = v23;
  v25 = sub_2331E511C(&v38);

  MEMORY[0x28223BE20](v26);
  *(&v33 - 4) = v22;
  *(&v33 - 3) = v25;
  *(&v33 - 2) = &v39;
  v27 = v37;
  sub_23328DF5C();

  if (v27)
  {
    return;
  }

  v37 = 0;
LABEL_9:
  v28 = v35;
  v34(v35, v15, v18);
  v29 = sub_23328D6CC();
  v30 = sub_23328DE4C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_233109000, v29, v30, "Finished repairing datastore with on-disk models", v31, 2u);
    MEMORY[0x23839CFD0](v31, -1, -1);
  }

  v20(v28, v18);
  if (v39 == 1)
  {
    sub_23317EAEC();
    v32 = [objc_opt_self() defaultCenter];
    [v32 postNotificationName:*sub_23316943C() object:0];
  }
}

void sub_233186C18(uint64_t a1, void *a2, _BYTE *a3)
{
  v121 = a3;
  v136 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v117[-v5];
  v153 = sub_23328D6EC();
  v6 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v133 = &v117[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v117[-v9];
  MEMORY[0x28223BE20](v11);
  v138 = &v117[-v12];
  v119 = type metadata accessor for TTSVBVoiceModel(0);
  v13 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v132 = &v117[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v131 = &v117[-v16];
  MEMORY[0x28223BE20](v17);
  v130 = &v117[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v117[-v20];
  v122 = type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation(0);
  v22 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v129 = &v117[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v128 = &v117[-v25];
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = *(v122 + 28);
    v127 = *(v122 + 24);
    v126 = v27;
    v135 = type metadata accessor for TTSVBLocalVoiceModelMO();
    v28 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v125 = *(v22 + 72);
    v148 = (v6 + 8);
    v149 = (v6 + 16);
    v118 = (v13 + 56);
    *&v29 = 136315394;
    v124 = v29;
    v137 = v21;
    v134 = v10;
    do
    {
      v146 = v28;
      v32 = v128;
      sub_2331BDBEC(v28, v128, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      sub_2331BDBEC(v32, v21, type metadata accessor for TTSVBVoiceModel);
      v33 = sub_23328CE8C();
      v145 = v117;
      v34 = *(*(v33 - 8) + 64);
      v35 = MEMORY[0x28223BE20](v33);
      v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
      v150 = v37;
      v39 = (v37 + 16);
      v38 = *(v37 + 16);
      v144 = &v117[-v36];
      v40 = v38(v35);
      v143 = v117;
      v41 = MEMORY[0x28223BE20](v40);
      v151 = v33;
      v152 = &v117[-v36];
      v140 = v38;
      v141 = v39;
      v38(v41);
      v42 = sub_233225314();
      v43 = *v149;
      v44 = v138;
      v139 = v42;
      v43(v138);
      v45 = v130;
      sub_2331BDBEC(v21, v130, type metadata accessor for TTSVBVoiceModel);
      v46 = v129;
      sub_2331BDDC4(v32, v129, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
      v47 = sub_23328D6CC();
      v48 = sub_23328DE4C();
      v49 = os_log_type_enabled(v47, v48);
      v147 = v26;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v154 = v51;
        *v50 = v124;
        v123 = v43;
        v52 = *v45;
        v53 = v45[1];

        sub_2331BDC54(v45, type metadata accessor for TTSVBVoiceModel);
        v54 = sub_23311A8F4(v52, v53, &v154);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        v55 = sub_23328CC6C();
        v57 = v56;
        sub_2331BDC54(v46, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
        v58 = sub_23311A8F4(v55, v57, &v154);
        v43 = v123;

        *(v50 + 14) = v58;
        _os_log_impl(&dword_233109000, v47, v48, "Found on-disk model: %s - %s", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v51, -1, -1);
        v59 = v50;
        v21 = v137;
        MEMORY[0x23839CFD0](v59, -1, -1);

        v60 = *v148;
        v61 = v138;
      }

      else
      {

        sub_2331BDC54(v46, type metadata accessor for _TTSVBFileManager.VoiceModelFilesystemRepresentation);
        sub_2331BDC54(v45, type metadata accessor for TTSVBVoiceModel);
        v60 = *v148;
        v61 = v44;
      }

      v142 = v60;
      v60(v61, v153);
      v62 = v133;
      v63 = v132;
      v64 = v131;
      v65 = v152;
      v66 = static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(v152, v136);
      v67 = v139;
      if (v66)
      {

        (v43)(v134, v67, v153);
        v68 = sub_2331BDBEC(v21, v64, type metadata accessor for TTSVBVoiceModel);
        v69 = MEMORY[0x28223BE20](v68);
        v70 = &v117[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v71 = v151;
        v140(v70, v65, v151, v69);
        v72 = sub_23328D6CC();
        v73 = v64;
        v74 = sub_23328DE4C();
        if (os_log_type_enabled(v72, v74))
        {
          v75 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v154 = v140;
          *v75 = v124;
          v141 = v117;
          v76 = *v64;
          v77 = v64[1];

          sub_2331BDC54(v64, type metadata accessor for TTSVBVoiceModel);
          v78 = sub_23311A8F4(v76, v77, &v154);

          *(v75 + 4) = v78;
          *(v75 + 12) = 2080;
          v79 = sub_23328CE3C();
          v81 = v80;
          v30 = *(v150 + 8);
          v30(v70, v151);
          v82 = sub_23311A8F4(v79, v81, &v154);

          *(v75 + 14) = v82;
          _os_log_impl(&dword_233109000, v72, v74, "Model '%s' UDID=%s already in local datastore. Moving on", v75, 0x16u);
          v83 = v140;
          swift_arrayDestroy();
          MEMORY[0x23839CFD0](v83, -1, -1);
          v84 = v75;
          v71 = v151;
          MEMORY[0x23839CFD0](v84, -1, -1);
        }

        else
        {

          v30 = *(v150 + 8);
          v30(v70, v71);
          sub_2331BDC54(v73, type metadata accessor for TTSVBVoiceModel);
        }

        v142(v134, v153);
        v30(v152, v71);
        v21 = v137;
        v31 = v144;
      }

      else
      {
        (v43)(v62, v139, v153);
        v85 = sub_2331BDBEC(v21, v63, type metadata accessor for TTSVBVoiceModel);
        v139 = v117;
        v86 = MEMORY[0x28223BE20](v85);
        v87 = &v117[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v88 = v65;
        v89 = v151;
        v140(v87, v88, v151, v86);
        v90 = sub_23328D6CC();
        v91 = sub_23328DE4C();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v154 = v93;
          *v92 = v124;
          v94 = *v63;
          v95 = v63[1];

          sub_2331BDC54(v63, type metadata accessor for TTSVBVoiceModel);
          v96 = sub_23311A8F4(v94, v95, &v154);

          *(v92 + 4) = v96;
          *(v92 + 12) = 2080;
          v97 = sub_23328CE3C();
          v99 = v98;
          v100 = *(v150 + 8);
          v140 = ((v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v141 = v100;
          (v100)(v87, v89);
          v101 = sub_23311A8F4(v97, v99, &v154);

          *(v92 + 14) = v101;
          _os_log_impl(&dword_233109000, v90, v91, "Adding model '%s' UDID=%s back to local datastore.", v92, 0x16u);
          swift_arrayDestroy();
          v102 = v93;
          v103 = v89;
          MEMORY[0x23839CFD0](v102, -1, -1);
          MEMORY[0x23839CFD0](v92, -1, -1);

          v142(v133, v153);
        }

        else
        {

          v104 = *(v150 + 8);
          v140 = ((v150 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v141 = v104;
          (v104)(&v117[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)], v89);
          sub_2331BDC54(v63, type metadata accessor for TTSVBVoiceModel);
          v142(v62, v153);
          v103 = v89;
        }

        v105 = type metadata accessor for TTSVBLocalVoiceMO();
        v31 = v144;
        v106 = static TTSVBLocalVoiceMO.voiceForIDPredicate(_:)();
        MEMORY[0x28223BE20](v106);
        v107 = v136;
        v108 = v137;
        *&v117[-16] = v31;
        *&v117[-8] = v108;
        static DSO<>.findOrCreate(in:matching:config:)(v107, v106, sub_2331BD288, &v117[-32], v105, &protocol witness table for TTSVBLocalVoiceMO);
        v110 = v109;

        v111 = v135;
        v21 = v108;
        v112 = NSManagedObjectContext.insertDSO<A>(_:)(v135, v135, &protocol witness table for TTSVBLocalVoiceModelMO);
        v113 = v120;
        sub_2331BDBEC(v108, v120, type metadata accessor for TTSVBVoiceModel);
        (*v118)(v113, 0, 1, v119);
        v114 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
        TTSVBCommonVoiceModelMO.update(withInfo:)(v113, v111, v114);
        sub_233121E04(v113, &qword_27DDE2388, &qword_233297728);
        [v112 setVoice_];
        v115 = v152;
        v116 = sub_23328CE4C();
        [v112 setModelID_];

        v30 = v141;
        (v141)(v115, v103);
        *v121 = 1;
        v71 = v103;
      }

      v30(v31, v71);
      sub_2331BDC54(v21, type metadata accessor for TTSVBVoiceModel);
      v28 = v146 + v125;
      v26 = v147 - 1;
    }

    while (v147 != 1);
  }

  NSManagedObjectContext.trySave()();
}

void sub_233187ABC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for TTSVBError.Reason(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_2331DEBE8();
  v28 = *v11;
  v12 = v28;
  v24 = xmmword_2332991E0;
  v26 = xmmword_2332991E0;
  v27 = 3;
  (*(v5 + 56))(v10, 1, 1, v4);
  v13 = v12;
  _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(a1, &v26, v10);
  sub_233121E04(v10, &qword_27DDE2A08, &qword_23329B0C0);

  if (!v2)
  {
    v14 = v25;
    v23[0] = v7;
    v23[1] = v4;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    MEMORY[0x28223BE20](v15 - 8);
    v17 = v23 - v16;
    *&v26 = *v11;
    v18 = v26;
    _TTSVBFileManager.getFileIfExists(in:named:)(0xD000000000000012, 0x80000002332A8B70, v17);

    v19 = sub_23328CC9C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v17, 1, v19) == 1)
    {
      sub_233121E04(v17, &qword_27DDE19A0, &unk_233290360);
      v26 = v24;
      v27 = 3;
      v21 = v23[0];
      sub_23328CBEC();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(&v26, v21, 0, v22);
      swift_willThrow();
    }

    else
    {
      (*(v20 + 32))(v14, v17, v19);
    }
  }
}

uint64_t TTSVBVoiceBankingManager.availableTrainingLocales(forTrainingVersion:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328D7CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23328D80C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v3;
  v14[5] = a1;
  aBlock[4] = sub_2331B3694;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_71;
  v15 = _Block_copy(aBlock);

  v16 = v3;
  v17 = a1;
  sub_23328D7DC();
  v21 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

uint64_t TTSVBVoiceBankingManager.installAsset(localeID:name:type:progress:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a5;
  v30 = a6;
  v14 = sub_23328D7CC();
  v33 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23328D80C();
  v17 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *&v8[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v20 = swift_allocObject();
  v20[2] = v8;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v22 = v28;
  v21 = v29;
  v20[6] = a4;
  v20[7] = v22;
  v20[8] = a8;
  v20[9] = v21;
  v20[10] = v30;
  aBlock[4] = sub_2331B3730;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_77;
  v23 = _Block_copy(aBlock);
  v24 = v8;

  v25 = a3;

  sub_23328D7DC();
  v34 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v19, v16, v23);
  _Block_release(v23);
  (*(v33 + 8))(v16, v14);
  (*(v17 + 8))(v19, v32);
}

void sub_233188458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t (*a8)(), uint64_t a9)
{
  v30 = a8;
  v31 = a6;
  v13 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = sub_23317503C();
  v20 = sub_23328D95C();
  v21 = [v19 installableTrainingAssetsForLocaleID:v20 name:a4 type:a5];

  sub_233144EEC(0, &qword_27DDE2A28, off_2789C3138);
  v22 = sub_23328DBFC();

  if (v22 >> 62)
  {
    if (sub_23328E19C())
    {
      goto LABEL_3;
    }

LABEL_8:

    aBlock = xmmword_2332991F0;
    LOBYTE(v33) = 3;
    sub_233113B28();
    TTSVBError.init(_:_:_:)(&aBlock, v15, 0, v18);
    swift_storeEnumTagMultiPayload();
    v31(v18);
    sub_233121E04(v18, &unk_27DDE25D0, &unk_233290330);
    return;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x23839BFC0](0, v22);
    goto LABEL_6;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 32);
LABEL_6:
    v24 = v23;

    v25 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession);
    v35 = v30;
    v36 = a9;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_233188970;
    v34 = &block_descriptor_503;
    v26 = _Block_copy(&aBlock);
    v27 = v25;

    v28 = swift_allocObject();
    *(v28 + 16) = v31;
    *(v28 + 24) = a7;
    v35 = sub_2331BCE38;
    v36 = v28;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v33 = sub_2331889C4;
    v34 = &block_descriptor_509;
    v29 = _Block_copy(&aBlock);

    [v27 installAsset:v24 progress:v26 completion:v29];
    _Block_release(v29);
    _Block_release(v26);

    return;
  }

  __break(1u);
}

uint64_t sub_2331887E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2828, &qword_233299268);
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = sub_23328E15C();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v12 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = sub_2331B64D0(v6, v7, *(a1 + 36), 0, a1);
    sub_2331BDDC4(v6, a2, type metadata accessor for TTSVBVoice);
    *(a2 + *(v4 + 48)) = v10;
    return (*(v12 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_233188970(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

void sub_2331889C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t TTSVBVoiceBankingManager.trainingAssetIsInstalled(localeID:name:type:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_23328D7CC();
  v27 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D80C();
  v25 = *(v16 - 8);
  v26 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&v6[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = v6;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  aBlock[4] = sub_2331B3768;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_83;
  v20 = _Block_copy(aBlock);

  v21 = v6;

  v22 = a3;
  sub_23328D7DC();
  v28 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v18, v15, v20);
  _Block_release(v20);
  (*(v27 + 8))(v15, v13);
  (*(v25 + 8))(v18, v26);
}

uint64_t TTSVBVoiceBankingManager.fetchTrainingScriptItems(localeID:scriptType:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_23328D7CC();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23328D80C();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  aBlock[4] = sub_2331B3874;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_89;
  v18 = _Block_copy(aBlock);
  v19 = v5;

  v20 = a3;

  sub_23328D7DC();
  v25 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v16, v13, v18);
  _Block_release(v18);
  (*(v24 + 8))(v13, v11);
  (*(v14 + 8))(v16, v23);
}

void TTSVBVoiceBankingManager.queue_fetchTrainingScriptItems(localeID:scriptType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23328D83C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_23328D85C();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = sub_23317503C();
    v17 = sub_23328D95C();
    v18 = swift_allocObject();
    v18[2] = v5;
    v18[3] = a4;
    v18[4] = a5;
    aBlock[4] = sub_2331B38A4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_233189B88;
    aBlock[3] = &block_descriptor_95;
    v19 = _Block_copy(aBlock);
    v20 = v5;

    [v16 fetchTrainingScriptsWithLocaleID:v17 scriptType:a3 replyOnQueue:0 completion:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_233189254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v10 = sub_23328D7CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D80C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v18;
  if (a3)
  {
    v36 = *(a4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;
    v43 = sub_2331BCE30;
    v44 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2331221F8;
    v42 = &block_descriptor_500;
    v20 = _Block_copy(&aBlock);

    sub_23328D7DC();
    v38 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v17, v13, v20);
    _Block_release(v20);
    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v37);
LABEL_5:

    return;
  }

  v32 = a6;
  v33 = v13;
  v34 = v15;
  v35 = v11;
  v21 = sub_23328CC9C();
  v31[1] = v31;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v36)
  {
    sub_23328CB7C();
    static TTSVBTrainingScript.parseScript(fromMetadatFile:)(v24, &aBlock);
    v25 = v10;
    v26 = v33;
    (*(v22 + 8))(v24, v21);
    v27 = aBlock;
    v28 = swift_allocObject();
    v29 = v32;
    v28[2] = a5;
    v28[3] = v29;
    v28[4] = v27;
    v43 = sub_2331BCE00;
    v44 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2331221F8;
    v42 = &block_descriptor_494;
    v30 = _Block_copy(&aBlock);

    sub_23328D7DC();
    v38 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v17, v26, v30);
    _Block_release(v30);
    (*(v35 + 8))(v26, v25);
    (*(v34 + 8))(v17, v37);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_233189970(void (*a1)(char *))
{
  v2 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29E8, &unk_233299AD8);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  v9 = xmmword_2332991F0;
  v10 = 3;
  swift_storeEnumTagMultiPayload();
  TTSVBError.init(_:_:_:)(&v9, v4, 0, v7);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_233121E04(v7, &qword_27DDE29E8, &unk_233299AD8);
}

uint64_t sub_233189AC0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  *(&v13 - v10) = a3;
  swift_storeEnumTagMultiPayload();

  a1(v11);
  return sub_233121E04(v11, a4, a5);
}

uint64_t sub_233189B88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t TTSVBVoiceBankingManager.fetchTrainingScriptItemsAsync(localeID:scriptType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_233189C44, 0, 0);
}

uint64_t sub_233189C44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2810, &qword_233299248);
  *v5 = v0;
  v5[1] = sub_233189D58;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000033, 0x80000002332A7F90, sub_2331B38B0, v3, v6);
}

uint64_t sub_233189D58()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_233189E74;
  }

  else
  {

    v2 = sub_2331BE6DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_233189E74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_233189ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A20, &qword_233299B38);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  TTSVBVoiceBankingManager.fetchTrainingScriptItems(localeID:scriptType:_:)(a3, a4, a5, sub_2331BCD20, v15);
}

uint64_t sub_23318A040(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29E8, &unk_233299AD8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - v6);
  sub_233121D34(a1, &v11 - v6, &qword_27DDE29E8, &unk_233299AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v7, v4, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_2331BDBEC(v4, v9, type metadata accessor for TTSVBError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A20, &qword_233299B38);
    sub_23328DC8C();
    return sub_2331BDC54(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    v12 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A20, &qword_233299B38);
    return sub_23328DC9C();
  }
}

void TTSVBVoiceBankingManager.fetchTrainingMetadata(voiceID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (TTSVBProcessIsVoicebankingd(a1, a2))
  {
    v26 = a2;
    v27 = a3;
    v8 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
    if (v8)
    {
      LOBYTE(aBlock[0]) = 1;
      v9 = v8;
      v10 = sub_2331E511C(aBlock);

      v11 = sub_23328CE8C();
      v25[1] = v25;
      v12 = *(v11 - 8);
      v13 = *(v12 + 64);
      v14 = MEMORY[0x28223BE20](v11);
      v15 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, a1, v11, v14);
      v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      (*(v12 + 32))(v19 + v16, v15, v11);
      *(v19 + v17) = v10;
      *(v19 + v18) = v4;
      v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
      v21 = v27;
      *v20 = v26;
      v20[1] = v21;
      aBlock[4] = sub_2331B38BC;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331221F8;
      aBlock[3] = &block_descriptor_103_0;
      v22 = _Block_copy(aBlock);
      v23 = v10;
      v24 = v4;

      [v23 performBlock_];
      _Block_release(v22);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_23318A4A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a4;
  v51 = a5;
  v8 = type metadata accessor for TTSVBVoiceSample(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_23328D7CC();
  v12 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v48 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D80C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&aBlock);
  v59 = aBlock;
  v60 = v55;
  v18 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v59);
  v49 = v14;
  v46 = a3;
  v47 = v17;
  v19 = v52;
  v20 = v18;
  v21 = sub_2331220AC(v59, *(&v59 + 1), v60);
  v22 = *((*MEMORY[0x277D85000] & *v20) + 0x68);
  v44 = v20;
  v23 = v22(v21);
  v53 = v23;
  if (v23 >> 62)
  {
    v24 = sub_23328E19C();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v47;
  v27 = v50;
  v26 = v51;
  v45 = v12;
  if (!v24)
  {

    v31 = MEMORY[0x277D84F90];
    v40 = v19;
LABEL_14:
    v41 = swift_allocObject();
    v41[2] = v27;
    v41[3] = v26;
    v41[4] = v31;
    v57 = sub_2331BCC6C;
    v58 = v41;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v55 = sub_2331221F8;
    v56 = &block_descriptor_479;
    v42 = _Block_copy(&aBlock);

    sub_23328D7DC();
    *&v59 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v43 = v48;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v25, v43, v42);
    _Block_release(v42);

    (*(v45 + 8))(v43, v40);
    (*(v15 + 8))(v25, v49);
  }

  *&aBlock = MEMORY[0x277D84F90];
  result = sub_2331B409C(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = v53;
    v31 = aBlock;
    v32 = v53 & 0xC000000000000001;
    v33 = v15;
    do
    {
      if (v32)
      {
        v34 = MEMORY[0x23839BFC0](v29, v30);
      }

      else
      {
        v34 = *(v30 + 8 * v29 + 32);
      }

      v35 = v34;
      v36 = type metadata accessor for TTSVBLocalVoiceSampleMO();
      v37 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
      TTSVBCommonVoiceSampleMO.immutableSample()(v36, v37, v11);

      *&aBlock = v31;
      v39 = *(v31 + 16);
      v38 = *(v31 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2331B409C((v38 > 1), v39 + 1, 1);
        v31 = aBlock;
      }

      ++v29;
      *(v31 + 16) = v39 + 1;
      sub_2331BDDC4(v11, v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v39, type metadata accessor for TTSVBVoiceSample);
      v30 = v53;
    }

    while (v24 != v29);
    v15 = v33;

    v26 = v51;
    v40 = v52;
    v25 = v47;
    v27 = v50;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_23318ABE8(void (*a1)(char *), uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_2331524CC(&v15);
  v13 = v15;
  v14 = v16;
  static TTSVBError.map(_:_:)(a3, &v13, v11);
  sub_2331220AC(v13, *(&v13 + 1), v14);
  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_233121E04(v11, a4, a5);
}

uint64_t TTSVBVoiceBankingManager.samplesExist(forVoiceID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_23328CE8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  (*(v8 + 32))(v12 + v11, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v13 = v3;
  sub_233176918(v12, a2, a3);
}

uint64_t sub_23318AE30(uint64_t a1)
{
  v4 = sub_23328D83C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4, v6);
  v10 = v9;
  LOBYTE(v9) = sub_23328D85C();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v19 = 1;
  v13 = v12;
  v14 = sub_2331E511C(&v19);

  MEMORY[0x28223BE20](v15);
  *(&v17 - 2) = a1;
  *(&v17 - 1) = v14;
  sub_23328DF5C();

  if (!v2)
  {
    v16 = v18;
  }

  return v16 & 1;
}

uint64_t sub_23318AFF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v16);
  v14 = v16;
  v15 = v17;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v14);
  result = sub_2331220AC(v14, *(&v14 + 1), v15);
  if (!v3)
  {
    v9 = type metadata accessor for TTSVBLocalVoiceSampleMO();
    *&v16 = &unk_284873AF0;
    MEMORY[0x28223BE20](v9);
    v13[2] = v7;
    v11 = static DSO<>.fetch(properties:in:config:)(&v16, a2, sub_2331BCAFC, v13, v10, &protocol witness table for TTSVBLocalVoiceSampleMO);

    v12 = *(v11 + 16);

    *a3 = v12 != 0;
  }

  return result;
}

uint64_t TTSVBVoiceBankingManager.loadSamplesFromTrainingScripts(forVoiceID:scriptItems:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v15 = v4;

  sub_233178950(sub_2331B3AAC, v14, a3, a4, &unk_284875498, sub_2331BDE5C, &block_descriptor_572);
}

void sub_23318B2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_23328D85C();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v13)
    {
      v18 = 1;
      v14 = v13;
      v15 = sub_2331E511C(&v18);

      MEMORY[0x28223BE20](v16);
      *&v17[-32] = a1;
      *&v17[-24] = v15;
      *&v17[-16] = a2;
      *&v17[-8] = v3;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23318B490(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v50);
  v41 = v50;
  LOBYTE(v42) = v51;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(a1, a2, &v41);
  sub_2331220AC(v41, *(&v41 + 1), v42);
  if (v3)
  {
    return;
  }

  v39 = a3;
  v8 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  *&v50 = &unk_284873B20;
  MEMORY[0x28223BE20](v8);
  v58 = v7;
  v35 = v7;
  v40 = a2;
  v10 = static DSO<>.fetch(properties:in:config:)(&v50, a2, sub_2331BE680, v34, v9, &protocol witness table for TTSVBLocalVoiceSampleMO);

  v11 = *(v10 + 16);
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v38 = v11 - 1;
  do
  {
    v14 = v12;
    while (1)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        return;
      }

      v15 = *(v10 + 32 + 8 * v14);
      if (*(v15 + 16))
      {
        break;
      }

LABEL_6:
      if (v11 == ++v14)
      {
        goto LABEL_19;
      }
    }

    v16 = sub_2331B42BC(0x4449656C706D6173, 0xE800000000000000, sub_2331443DC);
    if ((v17 & 1) == 0)
    {

      goto LABEL_6;
    }

    sub_23311B0C0(*(v15 + 56) + 32 * v16, &v50);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v18 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
      goto LABEL_6;
    }

    v37 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_233143EE0(0, *(v13 + 2) + 1, 1, v13);
    }

    v20 = *(v13 + 2);
    v19 = *(v13 + 3);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      v36 = v20 + 1;
      v23 = v13;
      v24 = v20;
      v25 = sub_233143EE0((v19 > 1), v20 + 1, 1, v23);
      v21 = v36;
      v20 = v24;
      v13 = v25;
    }

    v12 = v14 + 1;
    *(v13 + 2) = v21;
    v22 = &v13[16 * v20];
    *(v22 + 4) = v37;
    *(v22 + 5) = v18;
  }

  while (v38 != v14);
LABEL_19:

  v27 = *(v39 + 16);
  if (v27)
  {
    v28 = v39 + 32;
    v29 = v27 - 1;
    v30 = v40;
    while (1)
    {
      v31 = *(v28 + 80);
      v54 = *(v28 + 64);
      v55 = v31;
      v56 = *(v28 + 96);
      v57 = *(v28 + 112);
      v32 = *(v28 + 16);
      v50 = *v28;
      v51 = v32;
      v33 = *(v28 + 48);
      v52 = *(v28 + 32);
      v53 = v33;
      v49 = v50;
      MEMORY[0x28223BE20](v26);
      v35 = &v49;
      sub_2331B4B78(&v50, &v41);
      if ((sub_2331ACD54(sub_2331BC314, v34, v13) & 1) == 0)
      {
        v45 = v54;
        v46 = v55;
        v47 = v56;
        v48 = v57;
        v41 = v50;
        v42 = v51;
        v43 = v52;
        v44 = v53;
        sub_2331B65FC(v58, &v41, v30);
      }

      v26 = sub_2331B4CC8(&v50);
      if (!v29)
      {
        break;
      }

      --v29;
      v28 += 120;
    }
  }

  NSManagedObjectContext.trySave()();
}

void sub_23318B8A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 80);
  v20[4] = *(a2 + 64);
  v20[5] = v10;
  v20[6] = *(a2 + 96);
  v21 = *(a2 + 112);
  v11 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v11;
  v12 = *(a2 + 48);
  v20[2] = *(a2 + 32);
  v20[3] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v9 = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v15 = *(v3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
    if (v15)
    {
      LOBYTE(v19) = 1;
      v16 = v15;
      v17 = sub_2331E511C(&v19);

      MEMORY[0x28223BE20](v18);
      *(&v19 - 4) = a1;
      *(&v19 - 3) = v17;
      *(&v19 - 2) = v3;
      *(&v19 - 1) = v20;
      sub_23328DF5C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23318BAA4(char *a1, __int128 *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  v37 = a1;
  if (a5 == 1)
  {
    v35 = sub_23328CC9C();
    v36 = &v35;
    v9 = *(v35 - 8);
    MEMORY[0x28223BE20](v35);
    v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v38 = a2;
    v39 = a3;

    MEMORY[0x23839B7E0](46, 0xE100000000000000);
    v12 = sub_2331C464C();
    v13 = *(v12 + 1);
    LOWORD(v41) = *v12;
    v42 = v13;
    v14 = TTSVBAudioDescriptor.fileExtension.getter();
    MEMORY[0x23839B7E0](v14);

    v15 = sub_23328CB3C();
    v16 = *(v15 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 104))(v19, *MEMORY[0x277CC91E0], v15, v17);
    sub_23311A294();
    sub_23328CC8C();
    (*(v16 + 8))(v19, v15);

    v41 = *sub_2331DEBE8();
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v20 = v41;
    _TTSVBFileManager.copyItem(_:to:problem:)(v37, v11, &v38);

    return (*(v9 + 8))(v11, v35);
  }

  else
  {
    v24 = a4 >> 8;
    v25 = sub_23328CC9C();
    v36 = &v35;
    v26 = *(v25 - 8);
    MEMORY[0x28223BE20](v25);
    v28 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    LOBYTE(v38) = a4;
    BYTE1(v38) = v24;
    v39 = a5;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
    v35 = &v35;
    v30 = MEMORY[0x28223BE20](v29 - 8);
    v32 = &v35 - v31;
    (*(v26 + 16))(&v35 - v31, a6, v25, v30);
    (*(v26 + 56))(v32, 0, 1, v25);
    v33 = a5;
    v34 = v43;
    static TTSVBAudioTools.convertAudioFileAtURL(_:audioOverrides:saveTo:filename:)(v37, &v38, v32, a2, a3, v28);
    sub_233121E04(v32, &qword_27DDE19A0, &unk_233290360);
    if (!v34)
    {
      (*(v26 + 8))(v28, v25);
    }

    return sub_2331BB2A0(a4, a5);
  }
}

id sub_23318BF18(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328CBCC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_23328CC9C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_23328CA7C();

    swift_willThrow();
    v9 = sub_23328CC9C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_23318C070(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, unint64_t a13, void *a14, uint64_t a15)
{
  v16 = v15;
  LODWORD(v17) = a8;
  LODWORD(v18) = a7;
  v125 = a6;
  v132 = a5;
  v131 = a4;
  v123 = a3;
  v21 = sub_23328D6EC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v126 = v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v121 = v100 - v25;
  MEMORY[0x28223BE20](v26);
  v102 = v100 - v27;
  type metadata accessor for TTSVBLocalVoiceMO();
  v115 = a2;
  v28 = static TTSVBLocalVoiceMO.findOrFetch(voiceID:moc:)(a1, a2);
  if (!v28)
  {
    return;
  }

  v29 = *((*MEMORY[0x277D85000] & *v28) + 0x68);
  v103 = v28;
  v30 = v29();
  v119 = v30;
  v104 = v30 >> 62;
  if (v30 >> 62)
  {
LABEL_53:
    v122 = sub_23328E19C();
    if (v122)
    {
      goto LABEL_4;
    }

LABEL_54:

LABEL_55:

    return;
  }

  v122 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v122)
  {
    goto LABEL_54;
  }

LABEL_4:
  v107 = a15;
  v106 = a14;
  v105 = a13;
  v114 = a12;
  v113 = a11;
  v31 = v119;
  v124 = v119 & 0xC000000000000001;
  v112 = a10;
  v111 = a9;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  v34 = v31;
  v35 = 0;
  v116 = v18 ^ 1 | v17;
  v117 = (v22 + 8);
  v118 = (v22 + 16);
  v109 = v33;
  if (v34 < 0)
  {
    v36 = v34;
  }

  else
  {
    v36 = v33;
  }

  v100[1] = v36;
  *&v32 = 134218240;
  v108 = v32;
  *&v32 = 136315394;
  v101 = v32;
  v37 = v121;
  v17 = v122;
  v110 = v21;
  while (1)
  {
    if (v124)
    {
      v39 = v34;
      v40 = MEMORY[0x23839BFC0](v35);
    }

    else
    {
      if (v35 >= *(v109 + 16))
      {
        goto LABEL_51;
      }

      v39 = v34;
      v40 = *(v34 + 8 * v35 + 32);
    }

    v22 = v40;
    v18 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ((v131 & 1) == 0 && v132[2] == v123)
    {

      v95 = sub_233225514();
      (*v118)(v102, v95, v21);
      v96 = sub_23328D6CC();
      v97 = sub_23328DE4C();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 134217984;
        *(v98 + 4) = v123;
        _os_log_impl(&dword_233109000, v96, v97, "Did write out required number of audio samples (%ld). Exiting write-out routine", v98, 0xCu);
        MEMORY[0x23839CFD0](v98, -1, -1);
        v99 = v22;
      }

      else
      {
        v99 = v96;
        v96 = v22;
      }

      (*v117)(v102, v21);
      return;
    }

    v133 = v35;
    v134 = MEMORY[0x23839C610]();
    if ((v125 & 1) == 0)
    {
      v41 = type metadata accessor for TTSVBLocalVoiceSampleMO();
      v42 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
      if ((TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(v41, v42) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v138 = v22;
    if (v116)
    {
      break;
    }

    v43 = type metadata accessor for TTSVBLocalVoiceSampleMO();
    v44 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
    TTSVBCommonVoiceSampleMO.trainingValidity.getter(v43, v44, &v137);
    if (TTSVBVoiceSampleTrainingValidity.isValid.getter())
    {
      break;
    }

    v130 = v43;
    v61 = sub_233225514();
    (*v118)(v37, v61, v21);
    v62 = v138;
    v63 = sub_23328D6CC();
    LODWORD(v129) = sub_23328DE3C();
    if (!os_log_type_enabled(v63, v129))
    {

      (*v117)(v37, v21);
      v17 = v122;
      v22 = v138;
LABEL_9:
      v38 = v133;
      goto LABEL_10;
    }

    v127 = v18;
    v128 = v16;
    v120 = v63;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v137.id._countAndFlagsBits = v65;
    *v64 = v101;
    v66 = [v62 sampleID];

    if (!v66)
    {
      goto LABEL_60;
    }

    v67 = sub_23328D98C();
    v69 = v68;

    v70 = sub_23311A8F4(v67, v69, &v137.id._countAndFlagsBits);

    *(v64 + 4) = v70;
    *(v64 + 12) = 2080;
    TTSVBCommonVoiceSampleMO.trainingValidity.getter(v130, v44, &v136);
    v71 = TTSVBVoiceSampleTrainingValidity.stringValue.getter();
    v73 = sub_23311A8F4(v71, v72, &v137.id._countAndFlagsBits);

    *(v64 + 14) = v73;
    v74 = v120;
    _os_log_impl(&dword_233109000, v120, v129, "Skipping sample %s. Not valid for training: %s and trainWithLowQualityData=false", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v65, -1, -1);
    MEMORY[0x23839CFD0](v64, -1, -1);

    v37 = v121;
    (*v117)(v121, v21);
    v39 = v119;
    v17 = v122;
    v22 = v138;
    v38 = v133;
    v18 = v127;
    v16 = v128;
LABEL_10:
    objc_autoreleasePoolPop(v134);

    v35 = v38 + 1;
    v34 = v39;
    if (v18 == v17)
    {
      goto LABEL_54;
    }
  }

  v127 = v18;
  v45 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v129 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO, &protocol conformance descriptor for TTSVBLocalVoiceSampleMO);
  v130 = v45;
  TTSVBCommonVoiceSampleMO.trainingScriptItem.getter(v45, v129, &v136);
  v137 = v136;
  v135 = v136;
  sub_2331BB920();
  v46 = sub_23328C89C();
  LODWORD(v17) = v16;
  if (v16)
  {
    goto LABEL_61;
  }

  v48 = v46;
  v49 = v47;
  v50 = sub_23328CCBC();
  v16 = v114;
  [v114 writeData_];

  v22 = sub_23328CCBC();
  [v16 writeData_];

  sub_233121870(v48, v49);
  sub_2331B4CC8(&v137);
  v51 = sub_233225514();
  (*v118)(v126, v51, v21);
  v18 = v132;

  v52 = sub_23328D6CC();
  v53 = sub_23328DE4C();
  v54 = os_log_type_enabled(v52, v53);
  v128 = 0;
  if (v54)
  {
    v55 = swift_slowAlloc();
    *v55 = v108;
    v56 = *(v18 + 16);
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_52;
    }

    v59 = v55;
    *(v55 + 4) = v58;

    *(v59 + 12) = 2048;
    v60 = v123;
    if (v131)
    {
      if (v104)
      {
        v60 = sub_23328E19C();
      }

      else
      {
        v60 = *(v109 + 16);
      }
    }

    *(v59 + 14) = v60;

    _os_log_impl(&dword_233109000, v52, v53, "Writing out audio sample %ld of %ld", v59, 0x16u);
    MEMORY[0x23839CFD0](v59, -1, -1);
  }

  else
  {
  }

  (*v117)(v126, v21);
  v75 = *sub_2331DEBE8();
  v136.id._countAndFlagsBits = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v79 = v100 - v78;
  v80 = v75;
  TTSVBCommonVoiceSampleMO.url.getter(v130, v129, v79);
  v81 = sub_23328CC9C();
  v82 = *(v81 - 8);
  v83 = *(v82 + 48);
  if (v83(v79, 1, v81) != 1)
  {
    v84 = _TTSVBFileManager.fileExists(_:)(v79);

    v120 = *(v82 + 8);
    v85 = (v120)(v79, v81);
    if (v84)
    {
      MEMORY[0x28223BE20](v85);
      v86 = v100 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      v87 = v138;
      TTSVBCommonVoiceSampleMO.url.getter(v130, v129, v86);
      if (v83(v86, 1, v81) == 1)
      {
        goto LABEL_58;
      }

      v88 = [v87 sampleID];
      v16 = v128;
      if (!v88)
      {
        goto LABEL_59;
      }

      v89 = v88;
      v90 = sub_23328D98C();
      v92 = v91;

      sub_23318BAA4(v86, v90, v92, v105, v106, v107);
      if (v16)
      {

        (v120)(v86, v81);
        objc_autoreleasePoolPop(v134);

        goto LABEL_55;
      }

      (v120)(v86, v81);
    }

    else
    {
      v16 = v128;
    }

    v37 = v121;
    v17 = v122;
    v39 = v119;
    v18 = v127;
    v38 = v133;
    v93 = v132[2];
    v57 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    v21 = v110;
    v22 = v138;
    if (v57)
    {
      goto LABEL_50;
    }

    v132[2] = v94;
    [v115 refreshAllObjects];
    goto LABEL_10;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  swift_unexpectedError();
  __break(1u);
}

void sub_23318CC78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v31[1] = a5;
  v32 = a4;
  v33 = sub_23328D6EC();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29E8, &unk_233299AD8);
  MEMORY[0x28223BE20](v13);
  v15 = (v31 - v14);
  v16 = swift_projectBox();
  sub_233121D34(a1, v15, &qword_27DDE29E8, &unk_233299AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v15, v12, type metadata accessor for TTSVBError);
    v17 = type metadata accessor for TTSVBError(0);
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    swift_beginAccess();
    sub_2331BD410(v12, v16, &qword_27DDE1B38, &unk_2332909A0);
  }

  else
  {
    v18 = *v15;
    swift_beginAccess();
    *(a2 + 16) = v18;
  }

  v19 = sub_233225514();
  v20 = v33;
  (*(v7 + 16))(v9, v19, v33);
  v21 = v32;
  v22 = sub_23328D6CC();
  v23 = sub_23328DE1C();
  if (!os_log_type_enabled(v22, v23))
  {

    goto LABEL_8;
  }

  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v34 = v25;
  *v24 = 136315138;
  v26 = [v21 localeID];

  if (v26)
  {
    v27 = sub_23328D98C();
    v29 = v28;

    v30 = sub_23311A8F4(v27, v29, &v34);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_233109000, v22, v23, "Did fetch training script items with localeID=%s scriptType=default (signaling blocking call)", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23839CFD0](v25, -1, -1);
    MEMORY[0x23839CFD0](v24, -1, -1);

LABEL_8:
    (*(v7 + 8))(v9, v20);
    sub_23328DF4C();
    return;
  }

  __break(1u);
}

uint64_t TTSVBVoiceBankingManager.exportTrainingData(forVoice:shouldCompressResult:includeEntireScript:completion:)(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v28 = a3;
  v29 = a2;
  v34 = sub_23328D7CC();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_23328D80C();
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v11 = sub_23328CE8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = v18 + v17;
  *v19 = v5;
  v20 = v29;
  *(v19 + 8) = v28;
  *(v19 + 9) = v20;
  v21 = (v18 + ((v17 + 17) & 0xFFFFFFFFFFFFFFF8));
  v22 = v31;
  *v21 = v30;
  v21[1] = v22;
  aBlock[4] = sub_2331B3B44;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_115;
  v23 = _Block_copy(aBlock);
  v24 = v5;

  sub_23328D7DC();
  v37 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v25 = v34;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v8, v23);
  _Block_release(v23);
  (*(v36 + 8))(v8, v25);
  (*(v33 + 8))(v10, v35);
}

_DWORD *sub_23318D418(uint64_t a1, char *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v211 = a6;
  v212 = a5;
  v195 = a4;
  v196 = a3;
  v210 = sub_23328D7CC();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v206 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_23328D80C();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v205 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_23328D83C();
  v201 = *(v202 - 1);
  MEMORY[0x28223BE20](v202);
  v200 = (&v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v220);
  v219 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D6EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v193 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v199 = &v190 - v16;
  MEMORY[0x28223BE20](v17);
  *&v228 = &v190 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v190 - v20;
  v22 = sub_233225314();
  v23 = *(v13 + 16);
  v216 = v22;
  v223 = v23;
  v224 = (v13 + 16);
  v23(v21);
  v24 = sub_23328CE8C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v25 + 16);
  v221 = a1;
  v218 = (v25 + 16);
  v217 = v29;
  v29(v28, a1, v24, v26);
  v30 = sub_23328D6CC();
  v31 = sub_23328DE4C();
  v32 = os_log_type_enabled(v30, v31);
  v226 = v12;
  v204 = v13;
  v227 = a2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068], MEMORY[0x28220C0E0]);
    v35 = sub_23328E51C();
    v37 = v36;
    (*(v25 + 8))(v28, v24);
    v38 = sub_23311A8F4(v35, v37, &aBlock);
    v13 = v204;

    *(v33 + 4) = v38;
    _os_log_impl(&dword_233109000, v30, v31, "Beginning export for voice: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23839CFD0](v34, -1, -1);
    v39 = v33;
    v12 = v226;
    MEMORY[0x23839CFD0](v39, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v28, v24);
  }

  v225 = *(v13 + 8);
  v225(v21, v12);
  v40 = sub_23328CC9C();
  v214 = &v190;
  v41 = *(v40 - 8);
  v42 = v41[8];
  v43 = MEMORY[0x28223BE20](v40);
  v44 = &v190 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v219;
  v194 = v24;
  v217(v219, v221, v24, v43);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(v44);
  sub_2331BDC54(v45, type metadata accessor for TTSVBPath);
  v46 = v228;
  v47 = v223(v228, v216, v12);
  v213 = &v190;
  v203 = v42;
  v48 = MEMORY[0x28223BE20](v47);
  v49 = v44;
  v50 = v41[2];
  v197 = v41 + 2;
  v198 = v50;
  v50(v44, v44, v40, v48);
  v51 = sub_23328D6CC();
  v52 = sub_23328DE4C();
  v53 = os_log_type_enabled(v51, v52);
  v215 = v41;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v222 = v44;
    v55 = v54;
    v56 = v40;
    v57 = swift_slowAlloc();
    *&aBlock = v57;
    *v55 = 136315138;
    v58 = sub_23328CC6C();
    v60 = v59;
    v61 = v41[1];
    v61(v49, v56);
    v62 = sub_23311A8F4(v58, v60, &aBlock);

    *(v55 + 4) = v62;
    _os_log_impl(&dword_233109000, v51, v52, "Using %s for export", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v63 = v57;
    v40 = v56;
    MEMORY[0x23839CFD0](v63, -1, -1);
    v44 = v222;
    MEMORY[0x23839CFD0](v55, -1, -1);

    v64 = v228;
    v65 = v226;
  }

  else
  {

    v61 = v41[1];
    v61(v44, v40);
    v64 = v46;
    v65 = v12;
  }

  v225(v64, v65);
  v66 = v227;
  v67 = sub_2331DEBE8();
  v229 = *v67;
  v228 = xmmword_233299200;
  aBlock = xmmword_233299200;
  LOBYTE(v233) = 3;
  v68 = v229;
  _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v44, 0, 1, &aBlock);
  v222 = v44;

  result = sub_233167A00();
  v70 = *&v66[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v70)
  {
    goto LABEL_24;
  }

  v71 = result;
  v191 = *result;
  LOBYTE(aBlock) = 1;
  v72 = v70;
  v192 = sub_2331E511C(&aBlock);

  v73 = TTSVBVoiceBankingManager.audioService.getter();
  v74 = *&v66[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  v75 = v200;
  *v200 = v74;
  v76 = v201;
  v77 = v202;
  (v201[13])(v75, *MEMORY[0x277D85200], v202);
  v78 = v74;
  LOBYTE(v74) = sub_23328D85C();
  result = (v76[1])(v75, v77);
  if ((v74 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v201 = v67;
  v202 = v61;
  v213 = v40;
  v79 = sub_23328D9DC();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v82 = &v190 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D9CC();
  v200 = sub_23328D99C();
  v84 = v83;
  result = (*(v80 + 8))(v82, v79);
  if (v84 >> 60 == 15)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_23328C8BC();
  swift_allocObject();
  v85 = sub_23328C8AC();
  LODWORD(aBlock) = *v71;
  v86 = v191;
  LODWORD(v229) = v191;
  sub_233156AF4();
  v190 = sub_23328E0EC();
  LODWORD(aBlock) = *sub_233167A18();
  LODWORD(v229) = v86;
  v191 = sub_23328E0EC();
  v87 = sub_233225514();
  v88 = v199;
  v89 = v226;
  v223(v199, v87, v226);
  v90 = sub_23328D6CC();
  v91 = sub_23328DE4C();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&aBlock = v93;
    *v92 = 136315138;
    *(v92 + 4) = sub_23311A8F4(7105633, 0xE300000000000000, &aBlock);
    _os_log_impl(&dword_233109000, v90, v91, "Writing out metadata.json and %s audio files", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x23839CFD0](v93, -1, -1);
    MEMORY[0x23839CFD0](v92, -1, -1);
  }

  v94 = (v225)(v88, v89);
  v95 = v203;
  MEMORY[0x28223BE20](v94);
  v96 = &v190 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = *v201;
  aBlock = 0uLL;
  LOBYTE(v233) = -1;
  v97 = v229;
  _TTSVBFileManager.getOrCreateFile(in:named:problem:)(v222, 0xD000000000000012, 0x80000002332A8B70, &aBlock, v96);

  v98 = sub_233144EEC(0, &qword_27DDE29D8, 0x277CCA9F8);
  v99 = MEMORY[0x28223BE20](v98);
  v198(v96, v96, v213, v99);
  sub_23318BF18(v96);
  sub_23328DDFC();
  LOBYTE(v95) = v190 ^ 1;
  v100 = swift_allocObject();
  *(v100 + 16) = 0;
  MEMORY[0x28223BE20](v100);
  v101 = v192;
  *(&v190 - 14) = v221;
  *(&v190 - 13) = v101;
  *(&v190 - 12) = 0;
  *(&v190 - 88) = 1;
  *(&v190 - 10) = v102;
  *(&v190 - 72) = v196 & 1;
  *(&v190 - 71) = v95 & 1;
  *(&v190 - 70) = v191 & 1;
  v103 = v200;
  *(&v190 - 8) = v85;
  *(&v190 - 7) = v103;
  *(&v190 - 6) = v84;
  *(&v190 - 5) = v104;
  v105 = v104;
  *(&v190 - 2) = xmmword_2332987A0;
  *(&v190 - 2) = v222;
  sub_23328DF5C();

  [v105 closeFile];

  sub_23312185C(v103, v84);

  v106 = v215;
  v107 = v96;
  v108 = v213;
  v109 = v202;
  v110 = (v202)(v107, v213);
  v200 = v106 + 1;
  if (v195)
  {
    v111 = v203;
    v112 = MEMORY[0x28223BE20](v110);
    v113 = v219;
    v114 = v221;
    v217(v219, v221, v194, v112);
    swift_storeEnumTagMultiPayload();
    TTSVBPath.url.getter(&v190 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2331BDC54(v113, type metadata accessor for TTSVBPath);
    v229 = *v201;
    aBlock = v228;
    LOBYTE(v233) = 3;
    v115 = v229;
    _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(&v190 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 0, &aBlock);
    v220 = &v190 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v228 = &v190;

    aBlock = 0uLL;
    MEMORY[0x28223BE20](v126);
    *(&v190 - 4) = &aBlock;
    *(&v190 - 3) = v114;
    *(&v190 - 2) = v192;
    v127 = sub_23328DF5C();
    v219 = &v190;
    MEMORY[0x28223BE20](v127);
    v128 = &v190 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
    v129 = sub_23328C8EC();
    v218 = &v190;
    v210 = *(v129 - 8);
    MEMORY[0x28223BE20](v129);
    v131 = (&v190 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2331BC7FC(&qword_27DDE2A10, MEMORY[0x28220B560], MEMORY[0x28220B570]);
    sub_23328E13C();
    v231 = 47;
    sub_23328E10C();
    v231 = 58;
    sub_23328E10C();
    v231 = 96;
    v217 = v129;
    sub_23328E10C();
    v132 = *(&aBlock + 1);
    v209 = v131;
    v208 = *(&aBlock + 1);
    if (*(&aBlock + 1))
    {
      v133 = aBlock;
      v134 = sub_23328D95C();
      v135 = TTSVBSupportLocString(v134);

      v221 = sub_23328D98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_233297B30;
      v229 = v133;
      v230 = v132;
      sub_23311A294();
      v137 = MEMORY[0x277D837D0];
      v229 = sub_23328E02C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
      sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
      v138 = sub_23328D8FC();
      v140 = v139;

      *(v136 + 56) = v137;
      *(v136 + 64) = sub_2331527DC();
      *(v136 + 32) = v138;
      *(v136 + 40) = v140;
      v141 = sub_23328D9BC();
      v143 = v142;

      v229 = v141;
      v230 = v143;
      MEMORY[0x23839B7E0](1885960750, 0xE400000000000000);
      v144 = sub_23328CB3C();
      v145 = *(v144 - 8);
      v146 = MEMORY[0x28223BE20](v144);
      v148 = &v190 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v145 + 104))(v148, *MEMORY[0x277CC91E0], v144, v146);
      sub_23328CC8C();
      (*(v145 + 8))(v148, v144);
    }

    else
    {
      v229 = 0;
      v230 = 0xE000000000000000;
      sub_23328E24C();
      v149 = sub_23328CE3C();
      v151 = v150;

      v229 = v149;
      v230 = v151;
      MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A8D60);
      v152 = sub_23328CB3C();
      v153 = *(v152 - 8);
      v154 = MEMORY[0x28223BE20](v152);
      v156 = &v190 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v153 + 104))(v156, *MEMORY[0x277CC91E0], v152, v154);
      sub_23311A294();
      sub_23328CC8C();
      (*(v153 + 8))(v156, v152);
    }

    v157 = v198;
    v158 = v193;
    v159 = v226;
    v160 = v223(v193, v216, v226);
    v161 = MEMORY[0x28223BE20](v160);
    v163 = &v190 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
    v224 = v128;
    v164 = v213;
    v157(v163, v128, v213, v161);
    v165 = sub_23328D6CC();
    v166 = sub_23328DE4C();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v229 = v168;
      *v167 = 136315138;
      v169 = sub_23328CC6C();
      v171 = v170;
      (v202)(v163, v164);
      v172 = sub_23311A8F4(v169, v171, &v229);

      *(v167 + 4) = v172;
      _os_log_impl(&dword_233109000, v165, v166, "Creating archive at: %s", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v168);
      MEMORY[0x23839CFD0](v168, -1, -1);
      MEMORY[0x23839CFD0](v167, -1, -1);

      v173 = v193;
      v174 = v226;
    }

    else
    {

      (v202)(v163, v164);
      v173 = v158;
      v174 = v159;
    }

    v175 = (v225)(v173, v174);
    v226 = &v190;
    v229 = *v201;
    v176 = v229;
    v177 = v203;
    v178 = MEMORY[0x28223BE20](v175);
    v179 = &v190 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
    v180 = v224;
    v198(v179, v224, v164, v178);
    v181 = v215;
    v182 = (*(v215 + 80) + 40) & ~*(v215 + 80);
    v183 = swift_allocObject();
    v184 = v227;
    v185 = v212;
    *(v183 + 2) = v227;
    *(v183 + 3) = v185;
    *(v183 + 4) = v211;
    (v181[4])(&v183[v182], v179, v164);
    v186 = v176;
    v187 = v184;

    v188 = v222;
    _TTSVBFileManager.createCompressedArchive(from:to:completion:)(v222, v180, sub_2331BC928, v183);

    (*(v210 + 8))(v209, v217);
    v189 = v202;
    (v202)(v180, v164);
    v189(v220, v164);
    v189(v188, v164);
  }

  else
  {
    *&v228 = &v190;
    v227 = *&v227[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue];
    v116 = v203;
    v117 = MEMORY[0x28223BE20](v110);
    v118 = v222;
    v198(&v190 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), v222, v108, v117);
    v119 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v120 = swift_allocObject();
    v121 = v211;
    *(v120 + 16) = v212;
    *(v120 + 24) = v121;
    (v106[4])(v120 + v119, &v190 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), v108);
    v235 = sub_2331BC6F4;
    v236 = v120;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v233 = sub_2331221F8;
    v234 = &block_descriptor_440;
    v122 = _Block_copy(&aBlock);

    v123 = v205;
    sub_23328D7DC();
    v229 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v124 = v206;
    v125 = v210;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v123, v124, v122);

    _Block_release(v122);
    v209[1](v124, v125);
    (*(v207 + 8))(v123, v208);
    v109(v118, v108);
  }
}

uint64_t sub_23318F40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v32 = a4;
  v36 = sub_23328D7CC();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_23328D80C();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v30 - v14;
  v33 = *(a2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  sub_233121D34(a1, &v30 - v14, &unk_27DDE25D0, &unk_233290330);
  v16 = sub_23328CC9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  (*(v17 + 16))(&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v16, v19);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v17 + 80) + v21 + 16) & ~*(v17 + 80);
  v23 = swift_allocObject();
  sub_233121D9C(v15, v23 + v20, &unk_27DDE25D0, &unk_233290330);
  v24 = (v23 + v21);
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  (*(v17 + 32))(v23 + v22, &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  aBlock[4] = sub_2331BC9A0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_449;
  v26 = _Block_copy(aBlock);

  sub_23328D7DC();
  v39 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v27 = v34;
  v28 = v36;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v27, v26);
  _Block_release(v26);
  (*(v38 + 8))(v27, v28);
  (*(v35 + 8))(v10, v37);
}

uint64_t sub_23318F8A4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_233121D34(a1, &v21 - v11, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v12, v9, type metadata accessor for TTSVBError);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    MEMORY[0x28223BE20](v13);
    v15 = &v21 - v14;
    sub_2331BDBEC(v9, &v21 - v14, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    a2(v15);
    sub_233121E04(v15, &qword_27DDE19A8, &qword_233299A30);
    return sub_2331BDC54(v9, type metadata accessor for TTSVBError);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    MEMORY[0x28223BE20](v17);
    v19 = &v21 - v18;
    v20 = sub_23328CC9C();
    (*(*(v20 - 8) + 16))(v19, a4, v20);
    swift_storeEnumTagMultiPayload();
    a2(v19);
    return sub_233121E04(v19, &qword_27DDE19A8, &qword_233299A30);
  }
}

uint64_t TTSVBVoiceBankingManager.importTrainingData(fromDirectory:creatingVoiceName:localeID:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a7;
  v68 = a4;
  v69 = a2;
  v12 = sub_23328D7CC();
  v67 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_23328D80C();
  v15 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v17 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_23328D6EC();
  v70 = *(v18 - 8);
  v71 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (TTSVBIsInternalUIBuild())
  {
    v65 = a5;
    v66 = v7;
    v67 = a6;
    v21 = sub_233225314();
    (*(v70 + 16))(v20, v21, v71);
    v22 = sub_23328CC9C();
    v63 = v58;
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    v25 = MEMORY[0x28223BE20](v22);
    v26 = *(v23 + 16);
    v64 = a1;
    v27 = a1;
    v29 = v28;
    v62 = v26;
    v26(&v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)], v27, v28, v25);

    v30 = sub_23328D6CC();
    v31 = sub_23328DE4C();

    v32 = os_log_type_enabled(v30, v31);
    v61 = a3;
    if (v32)
    {
      v33 = a3;
      v34 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock[0] = v60;
      *v34 = 136315394;
      *(v34 + 4) = sub_23311A8F4(v69, v33, aBlock);
      *(v34 + 12) = 2080;
      v59 = v31;
      v35 = sub_23328CC6C();
      v37 = v36;
      (*(v23 + 8))(&v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)], v29);
      v38 = sub_23311A8F4(v35, v37, aBlock);

      *(v34 + 14) = v38;
      _os_log_impl(&dword_233109000, v30, v59, "Will import new voice '%s' with data from: %s", v34, 0x16u);
      v39 = v60;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v39, -1, -1);
      v40 = v34;
      v41 = v69;
      MEMORY[0x23839CFD0](v40, -1, -1);

      v42 = (*(v70 + 8))(v20, v71);
    }

    else
    {

      (*(v23 + 8))(&v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)], v29);
      v42 = (*(v70 + 8))(v20, v71);
      v41 = v69;
    }

    v46 = MEMORY[0x28223BE20](v42);
    v62(&v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)], v64, v29, v46);
    v47 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v48 = (v24 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v50 = v29;
    v51 = v66;
    *(v49 + 16) = v66;
    (*(v23 + 32))(v49 + v47, &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)], v50);
    v52 = (v49 + v48);
    v53 = v61;
    *v52 = v41;
    v52[1] = v53;
    v54 = (v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8));
    v55 = v65;
    *v54 = v68;
    v54[1] = v55;

    v56 = v51;

    sub_233178950(sub_2331B3C18, v49, v67, v72, &unk_284875588, sub_2331BDEF0, &block_descriptor_590);
  }

  else
  {
    v43 = swift_allocObject();
    v44 = v72;
    *(v43 + 16) = a6;
    *(v43 + 24) = v44;
    aBlock[4] = sub_2331B3BEC;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_121;
    v45 = _Block_copy(aBlock);

    sub_23328D7DC();
    v73 = MEMORY[0x277D84F90];
    sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v17, v14, v45);
    _Block_release(v45);
    (*(v67 + 8))(v14, v12);
    (*(v15 + 8))(v17, v66);
  }
}

uint64_t sub_233190280(void (*a1)(char *), uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  TTSVBError.init(_:_:_:)(0xD000000000000018, 0x80000002332A8D40, 0, 0, 0, &v11 - v8);
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return sub_233121E04(v9, a3, a4);
}

void sub_233190364(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v309 = a4;
  v310 = a5;
  v349 = a1;
  v326 = a6;
  v307 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v307);
  v306 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v305);
  v304 = &v257 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  MEMORY[0x28223BE20](v11 - 8);
  v314 = &v257 - v12;
  v325 = sub_23328D6EC();
  v13 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v302 = &v257 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v301 = &v257 - v16;
  MEMORY[0x28223BE20](v17);
  v324 = &v257 - v18;
  MEMORY[0x28223BE20](v19);
  v323 = &v257 - v20;
  v21 = sub_23328D83C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v257 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v327 = v6;
  v26 = *(v6 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue);
  *v25 = v26;
  v27 = *(v22 + 104);
  v319 = *MEMORY[0x277D85200];
  v318 = v22 + 104;
  v317 = v27;
  v27(v25, v23);
  v316 = v26;
  LOBYTE(v26) = sub_23328D85C();
  v28 = *(v22 + 8);
  v320 = v25;
  v322 = v21;
  v321 = v22 + 8;
  v315 = v28;
  v28(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return;
  }

  v311 = a2;
  v313 = a3;
  v303 = v13;
  v29 = sub_23328CC9C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v257 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v328;
  sub_233187ABC(v349, v32);
  if (v33)
  {
    return;
  }

  v308 = v30;
  static TTSVBTrainingScript.parseScript(fromMetadatFile:)(&v257 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), &v340);
  v297 = v31;
  v34 = v340;
  v35 = v326;
  sub_23317646C(v311, v313, v309, v310, v326);
  v37 = *(v34 + 16);
  v291 = &v257;
  v292 = &v257 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = v29;
  v38 = v34;
  if (v37)
  {
    v39 = 0;
    v296 = (v308 + 16);
    v289 = (v303 + 16);
    v290 = (v308 + 8);
    v288 = (v303 + 8);
    v264 = (v308 + 48);
    v265 = (v308 + 56);
    v263 = v308 + 32;
    v260 = v297 + 7;
    v258 = MEMORY[0x277D84F90];
    v40 = 32;
    *&v36 = 134218498;
    v262 = v36;
    *&v36 = 136315138;
    v261 = v36;
    v259 = xmmword_233299210;
    v41 = v37;
    v266 = v38;
    v267 = v37;
    v257 = 32;
LABEL_7:
    v42 = v40 + 120 * v39;
    v43 = v39 + 1;
    while (v43 - 1 < v41)
    {
      v295 = v43;
      v328 = v33;
      v287 = &v257;
      v285 = v42;
      v50 = *(v38 + v42);
      v51 = *(v38 + v42 + 16);
      v52 = *(v38 + v42 + 48);
      v338[2] = *(v38 + v42 + 32);
      v338[3] = v52;
      v338[0] = v50;
      v338[1] = v51;
      v53 = *(v38 + v42 + 64);
      v54 = *(v38 + v42 + 80);
      v55 = *(v38 + v42 + 96);
      v339 = *(v38 + v42 + 112);
      v338[5] = v54;
      v338[6] = v55;
      v338[4] = v53;
      v57 = *(v38 + v42 + 32);
      v56 = *(v38 + v42 + 48);
      v59 = *(v38 + v42);
      v58 = *(v38 + v42 + 16);
      v61 = *(v38 + v42 + 80);
      v60 = *(v38 + v42 + 96);
      v62 = *(v38 + v42 + 64);
      v63 = *(v38 + v42 + 112);
      v286 = v43 - 1;
      v340 = (v43 - 1);
      v345 = v62;
      v346 = v61;
      v347 = v60;
      v348 = v63;
      v341 = v59;
      v342 = v58;
      v343 = v57;
      v344 = v56;
      MEMORY[0x28223BE20](v38);
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
      v337 = v341;
      sub_2331B4B78(v338, &v329);

      MEMORY[0x23839B7E0](1717658414, 0xE400000000000000);
      sub_23328CBEC();

      v66 = sub_233225314();
      v67 = *v289;
      v68 = v323;
      v299 = v66;
      v300 = v67;
      v69 = v325;
      v70 = v67(v323);
      v309 = &v257;
      v71 = MEMORY[0x28223BE20](v70);
      v72 = &v257 - v65;
      v73 = *v296;
      v310 = &v257 - v65;
      v294 = v73;
      v73(&v257 - v65, &v257 - v65, v29, v71);
      v74 = sub_23328D6CC();
      v75 = sub_23328DE4C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v329 = v77;
        *v76 = v262;
        *(v76 + 4) = v295;
        *(v76 + 12) = 2048;
        *(v76 + 14) = v267;
        *(v76 + 22) = 2080;
        sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
        v78 = sub_23328E51C();
        v80 = v79;
        v283 = *v290;
        (v283)(v72, v312);
        v81 = sub_23311A8F4(v78, v80, &v329);

        *(v76 + 24) = v81;
        _os_log_impl(&dword_233109000, v74, v75, "Will process import item %ld of %ld: %s", v76, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v77);
        v82 = v77;
        v29 = v312;
        MEMORY[0x23839CFD0](v82, -1, -1);
        v83 = v76;
        v32 = v292;
        MEMORY[0x23839CFD0](v83, -1, -1);

        v84 = *v288;
        v85 = v68;
        v86 = v325;
        (*v288)(v85, v325);
      }

      else
      {

        v283 = *v290;
        (v283)(v72, v29);
        v84 = *v288;
        (*v288)(v68, v69);
        v86 = v69;
      }

      v87 = v324;
      *&v329 = *sub_2331DEBE8();
      v88 = v329;
      v89 = v310;
      v90 = _TTSVBFileManager.fileExists(_:)(v310);

      v298 = v84;
      if ((v90 & 1) == 0)
      {
        v178 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v258 = sub_2331B330C(0, *(v258 + 2) + 1, 1, v258);
        }

        v180 = v300;
        v179 = v301;
        v181 = v258;
        v183 = *(v258 + 2);
        v182 = *(v258 + 3);
        if (v183 >= v182 >> 1)
        {
          v181 = sub_2331B330C((v182 > 1), v183 + 1, 1, v258);
        }

        *(v181 + 2) = v183 + 1;
        v258 = v181;
        v184 = &v181[120 * v183];
        v185 = v341;
        v186 = v342;
        v187 = v344;
        *(v184 + 4) = v343;
        *(v184 + 5) = v187;
        *(v184 + 2) = v185;
        *(v184 + 3) = v186;
        v188 = v345;
        v189 = v346;
        v190 = v347;
        *(v184 + 18) = v348;
        *(v184 + 7) = v189;
        *(v184 + 8) = v190;
        *(v184 + 6) = v188;
        v191 = v180(v179);
        v309 = &v257;
        v192 = MEMORY[0x28223BE20](v191);
        v194 = &v257 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
        v294(v194, v89, v29, v192);
        v195 = sub_23328D6CC();
        v196 = sub_23328DE3C();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v300 = swift_slowAlloc();
          *&v329 = v300;
          *v197 = v261;
          v198 = sub_23328CC6C();
          v200 = v199;
          v201 = v194;
          v202 = v283;
          (v283)(v201, v29);
          v203 = sub_23311A8F4(v198, v200, &v329);
          v204 = v202;

          *(v197 + 4) = v203;
          _os_log_impl(&dword_233109000, v195, v196, "Audio file missing for import item: %s", v197, 0xCu);
          v205 = v300;
          __swift_destroy_boxed_opaque_existential_0(v300);
          MEMORY[0x23839CFD0](v205, -1, -1);
          v206 = v197;
          v89 = v310;
          MEMORY[0x23839CFD0](v206, -1, -1);

          v207 = v301;
          v208 = v325;
        }

        else
        {

          v209 = v283;
          (v283)(v194, v29);
          v207 = v179;
          v208 = v178;
          v204 = v209;
        }

        (v298)(v207, v208);
        v32 = v292;
        v39 = v295;
        sub_233192194(v286, v267, v89);
        v210 = v89;
        v211 = v312;
        (v204)(v210, v312);
        v38 = v266;
        v41 = *(v266 + 16);
        v33 = v328;
        v29 = v211;
        v40 = v257;
        v35 = v326;
        if (v41 != v39)
        {
          goto LABEL_7;
        }

        goto LABEL_39;
      }

      v91 = v343;

      v92 = v328;
      static TTSVBAudioTools.analyzeRecording(atURL:detectUserSpeech:expectedText:detectMetrics:)(v89, 1, v91, *(&v91 + 1), 1, &v329);
      v328 = v92;
      if (v92)
      {

        sub_233121E04(&v340, &qword_27DDE29F0, &qword_233299AF8);

        sub_233192194(v286, v267, v89);
        v246 = v283;
        (v283)(v89, v29);
        v247 = sub_23328CE8C();
        (*(*(v247 - 8) + 8))(v326, v247);
        (v246)(v32, v29);
        return;
      }

      v93 = *(&v329 + 1);
      v293 = v329;
      v94 = v330;
      v95 = v86;
      v96 = *(&v330 + 1);
      (v300)(v87, v299, v95);
      v97 = v96;

      v98 = v93;
      v99 = sub_23328D6CC();
      v100 = sub_23328DE4C();
      v300 = v97;

      v101 = os_log_type_enabled(v99, v100);
      v309 = v98;
      v284 = v94;
      if (v101)
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v337 = v103;
        *v102 = v261;
        *&v329 = v293;
        *(&v329 + 1) = v98;
        *&v330 = v94;
        *(&v330 + 1) = v96;
        v104 = TTSVBAudioTools.RecordingAnalysis.description.getter();
        v106 = sub_23311A8F4(v104, v105, &v337);

        *(v102 + 4) = v106;
        v107 = v312;
        _os_log_impl(&dword_233109000, v99, v100, "Audio Analysis: %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        v108 = v326;
        MEMORY[0x23839CFD0](v103, -1, -1);
        v109 = v102;
        v32 = v292;
        MEMORY[0x23839CFD0](v109, -1, -1);

        (v298)(v324, v325);
      }

      else
      {

        (v298)(v87, v325);
        v108 = v326;
        v107 = v312;
      }

      v110 = v300;
      if (!v96)
      {
        sub_233121E04(&v340, &qword_27DDE29F0, &qword_233299AF8);

        type metadata accessor for TTSVBError(0);
        sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
        swift_allocError();
        TTSVBError.init(_:_:_:)(0xD000000000000024, 0x80000002332A8CC0, 0, 0, 0, v250);
        swift_willThrow();

        v251 = v310;
        sub_233192194(v286, v267, v310);
        v252 = v283;
        (v283)(v251, v107);
        v253 = sub_23328CE8C();
        (*(*(v253 - 8) + 8))(v108, v253);
        (v252)(v32, v107);
        return;
      }

      v333 = v345;
      v334 = v346;
      v335 = v347;
      v336 = v348;
      v329 = v341;
      v330 = v342;
      v331 = v343;
      v332 = v344;
      v111 = v300;
      v112 = v328;
      sub_23318B8A4(v108, &v329);
      v328 = v112;
      if (v112)
      {

        sub_233121E04(&v340, &qword_27DDE29F0, &qword_233299AF8);
        v254 = v310;
        sub_233192194(v286, v267, v310);
        v255 = v283;
        (v283)(v254, v107);
        v256 = sub_23328CE8C();
        (*(*(v256 - 8) + 8))(v108, v256);
        (v255)(v32, v107);
        return;
      }

      v280 = v114;
      v281 = v113;
      sub_233121E04(&v340, &qword_27DDE29F0, &qword_233299AF8);
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      v283 = &v257;
      v279 = *(v115 - 8);
      v116 = *(v279 + 64);
      v117 = MEMORY[0x28223BE20](v115 - 8);
      v298 = v118;
      v119 = (&v257 - v118);
      v294((&v257 - v118), v310, v107, v117);
      v120 = *v265;
      v300 = v119;
      v120(v119, 0, 1, v107);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v282 = &v257;
      v278 = *(v121 - 8);
      v122 = (*(v278 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v121 - 8);
      v123 = sub_23328CE1C();
      v124 = *(*(v123 - 8) + 56);
      v299 = &v257 - v122;
      v124(&v257 - v122, 1, 1, v123);
      v125 = MEMORY[0x277D85000];
      v126 = *((*MEMORY[0x277D85000] & *v111) + 0xA0);

      v128 = v126(v127);
      v129 = (*((*v125 & *v111) + 0x100))();
      v130 = (*((*v125 & *v111) + 0x118))();
      v131 = *((*v125 & *v111) + 0x178);
      v277 = v111;
      v132 = v131();
      v133 = v320;
      v135 = v316;
      v134 = v317;
      *v320 = v316;
      v136 = v322;
      v134(v133, v319, v322);
      v137 = v135;
      LOBYTE(v135) = sub_23328D85C();
      v315(v133, v136);
      if ((v135 & 1) == 0)
      {
        goto LABEL_50;
      }

      if (v309)
      {
        v138 = v309;
      }

      else
      {
        v138 = 0xE000000000000000;
      }

      v139 = v293;
      if (!v309)
      {
        v139 = 0;
      }

      v273 = v139;
      v274 = v138;
      v140 = sub_23328CE8C();
      v293 = &v257;
      v270 = v140;
      v141 = *(v140 - 8);
      v142 = *(v141 + 64);
      v143 = MEMORY[0x28223BE20](v140);
      v271 = &v257 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
      v144 = (*(v141 + 16))(v143);
      v276 = &v257;
      v145 = v116;
      v272 = v116;
      MEMORY[0x28223BE20](v144);
      v268 = &v257 - v298;
      v146 = sub_233121D34(v300, &v257 - v298, &qword_27DDE19A0, &unk_233290360);
      v275 = &v257;
      MEMORY[0x28223BE20](v146);
      v269 = &v257 - v122;
      sub_233121D34(v299, &v257 - v122, &qword_27DDE1A18, &unk_233297730);
      v147 = (*(v141 + 80) + 40) & ~*(v141 + 80);
      v148 = (v142 + *(v279 + 80) + v147) & ~*(v279 + 80);
      v149 = (v145 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
      v150 = (v149 + 11) & 0xFFFFFFFFFFFFFFF8;
      v151 = (v150 + 11) & 0xFFFFFFFFFFFFFFF8;
      v279 = (v151 + 15) & 0xFFFFFFFFFFFFFFF8;
      v152 = (*(v278 + 80) + v279 + 16) & ~*(v278 + 80);
      v153 = swift_allocObject();
      v154 = v280;
      v155 = v281;
      *(v153 + 2) = v327;
      *(v153 + 3) = v155;
      *(v153 + 4) = v154;
      (*(v141 + 32))(&v153[v147], v271, v270);
      sub_233121D9C(v268, &v153[v148], &qword_27DDE19A0, &unk_233290360);
      *&v153[v149] = v284;
      v156 = &v153[v150];
      *v156 = v128;
      v156[1] = v129;
      v157 = &v153[v151];
      *v157 = v130;
      v157[1] = v132;
      v158 = &v153[v279];
      v159 = v274;
      *v158 = v273;
      v158[1] = v159;
      v160 = sub_233121D9C(v269, &v153[v152], &qword_27DDE1A18, &unk_233297730);
      v284 = &v257;
      v161 = v297;
      MEMORY[0x28223BE20](v160);
      v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
      v163 = &v257 - v162;
      MEMORY[0x28223BE20](v164);
      v165 = (&v257 - v298);
      sub_233121D34(v300, &v257 - v298, &qword_27DDE19A0, &unk_233290360);
      v29 = v312;
      if ((*v264)(v165, 1, v312) == 1)
      {
        v44 = v327;
        sub_233121E04(v165, &qword_27DDE19A0, &unk_233290360);
        v329 = v259;
        LOBYTE(v330) = 3;
        v45 = v306;
        swift_storeEnumTagMultiPayload();
        v46 = v304;
        TTSVBError.init(_:_:_:)(&v329, v45, 0, v304);
        swift_storeEnumTagMultiPayload();
        sub_23319249C(v46);

        v47 = v277;

        sub_233121E04(v46, &unk_27DDE25D0, &unk_233290330);
        sub_233121E04(v299, &qword_27DDE1A18, &unk_233297730);
        sub_233121E04(v300, &qword_27DDE19A0, &unk_233290360);
        v48 = v290;
      }

      else
      {
        v298 = *(v308 + 32);
        (v298)(&v257 - v162, v165, v29);
        v166 = sub_23328DCBC();
        v167 = (*(*(v166 - 8) + 56))(v314, 1, 1, v166);
        v281 = &v257;
        v168 = MEMORY[0x28223BE20](v167);
        v169 = &v257 - v162;
        v294(&v257 - v162, &v257 - v162, v29, v168);
        v170 = (*(v308 + 80) + 32) & ~*(v308 + 80);
        v171 = (v260 + v170) & 0xFFFFFFFFFFFFFFF8;
        v172 = swift_allocObject();
        *(v172 + 16) = 0;
        *(v172 + 24) = 0;
        v173 = v172 + v170;
        v29 = v312;
        (v298)(v173, v169, v312);
        v174 = (v172 + v171);
        *v174 = sub_2331BE6A0;
        v174[1] = v153;
        v175 = (v172 + ((v171 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v175 = sub_23319249C;
        v175[1] = 0;
        v176 = v327;

        sub_233193E34(0, 0, v314, &unk_233299B00, v172);

        v177 = v277;

        v48 = v290;
        (*(v308 + 8))(v163, v29);
        sub_233121E04(v299, &qword_27DDE1A18, &unk_233297730);
        sub_233121E04(v300, &qword_27DDE19A0, &unk_233290360);
      }

      v49 = v310;
      sub_233192194(v286, v267, v310);
      (*v48)(v49, v29);
      v38 = v266;
      v41 = *(v266 + 16);
      v43 = v295 + 1;
      v42 = v285 + 120;
      v33 = v328;
      v32 = v292;
      v35 = v326;
      if (v295 == v41)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_49;
  }

  v258 = MEMORY[0x277D84F90];
LABEL_39:
  v328 = v33;

  if (*(v258 + 2) && (v212 = v328, sub_23318B2C8(v35, v258), (v328 = v212) != 0))
  {

    v213 = sub_23328CE8C();
    (*(*(v213 - 8) + 8))(v35, v213);
    (*(v308 + 8))(v32, v29);
  }

  else
  {
    v214 = v35;

    v215 = sub_233225314();
    v216 = v302;
    (*(v303 + 16))(v302, v215, v325);
    v217 = sub_23328CE8C();
    v327 = &v257;
    v218 = *(v217 - 8);
    v219 = MEMORY[0x28223BE20](v217);
    v221 = &v257 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0);
    v222 = *(v218 + 16);
    v324 = v223;
    v224 = v222(v221, v214, v219);
    v326 = &v257;
    v225 = MEMORY[0x28223BE20](v224);
    v227 = &v257 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
    v228 = v308;
    (*(v308 + 16))(v227, v349, v312, v225);
    v229 = v313;

    v230 = sub_23328D6CC();
    LODWORD(v214) = sub_23328DE4C();

    LODWORD(v349) = v214;
    v231 = v214;
    v232 = v230;
    if (os_log_type_enabled(v230, v231))
    {
      v233 = v228;
      v234 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      v340 = v323;
      *v234 = 136315650;
      *(v234 + 4) = sub_23311A8F4(v311, v229, &v340);
      *(v234 + 12) = 2080;
      v235 = sub_23328CE3C();
      v237 = v236;
      (*(v218 + 8))(v221, v324);
      v238 = sub_23311A8F4(v235, v237, &v340);

      *(v234 + 14) = v238;
      *(v234 + 22) = 2080;
      v239 = sub_23328CC6C();
      v241 = v240;
      v242 = *(v233 + 8);
      v243 = v312;
      v242(v227, v312);
      v244 = sub_23311A8F4(v239, v241, &v340);

      *(v234 + 24) = v244;
      _os_log_impl(&dword_233109000, v232, v349, "Finished import of new voice '%s' (ID=%s) with data from: %s", v234, 0x20u);
      v245 = v323;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v245, -1, -1);
      MEMORY[0x23839CFD0](v234, -1, -1);

      (*(v303 + 8))(v302, v325);
      v242(v292, v243);
    }

    else
    {

      v248 = *(v228 + 8);
      v249 = v312;
      v248(v227, v312);
      (*(v218 + 8))(v221, v324);
      (*(v303 + 8))(v216, v325);
      v248(v292, v249);
    }
  }
}

void *sub_233192194(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a2;
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_233225314();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_23328CC9C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a3, v10, v12);
  v15 = sub_23328D6CC();
  v16 = sub_23328DE4C();
  if (os_log_type_enabled(v15, v16))
  {
    v25 = v5;
    v17 = swift_slowAlloc();
    result = swift_slowAlloc();
    v27 = result;
    *v17 = 134218498;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      *(v17 + 4) = a1 + 1;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v26;
      *(v17 + 22) = 2080;
      v26 = result;
      sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0], MEMORY[0x28220BE70]);
      v19 = sub_23328E51C();
      v21 = v20;
      (*(v11 + 8))(v14, v10);
      v22 = sub_23311A8F4(v19, v21, &v27);

      *(v17 + 24) = v22;
      _os_log_impl(&dword_233109000, v15, v16, "Did process import item %ld of %ld: %s", v17, 0x20u);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23839CFD0](v23, -1, -1);
      MEMORY[0x23839CFD0](v17, -1, -1);

      return (*(v6 + 8))(v8, v25);
    }
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}
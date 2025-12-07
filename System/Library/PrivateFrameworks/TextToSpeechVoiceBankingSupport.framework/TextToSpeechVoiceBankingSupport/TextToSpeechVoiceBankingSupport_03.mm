uint64_t sub_23315E7C8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEnd);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315E988()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315EA24(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315EBE4()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315EC80(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315EE40()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315EEDC(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

id TTSVBAudioQualityMeasurement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSVBAudioQualityMeasurement.init()()
{
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_spl] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEnd] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEndUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splThreshold] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snr] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEnd] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBAudioQualityMeasurement();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_23315F1E4()
{
  sub_23328E24C();
  v1 = MEMORY[0x23839B7E0](0x3A6C70735BLL, 0xE500000000000000);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xA0))(v1);
  sub_23328DCFC();
  v3 = MEMORY[0x23839B7E0](0x3A646E456C707320, 0xE800000000000000);
  (*((*v2 & *v0) + 0xB8))(v3);
  sub_23328DCFC();
  v4 = MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A7360);
  (*((*v2 & *v0) + 0xD0))(v4);
  sub_23328DCFC();
  v5 = MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A7380);
  (*((*v2 & *v0) + 0xE8))(v5);
  sub_23328DCFC();
  v6 = MEMORY[0x23839B7E0](0x657268546C707320, 0xEE003A646C6F6873);
  (*((*v2 & *v0) + 0x100))(v6);
  sub_23328DCFC();
  v7 = MEMORY[0x23839B7E0](0x3A726E7320, 0xE500000000000000);
  (*((*v2 & *v0) + 0x118))(v7);
  sub_23328DCFC();
  v8 = MEMORY[0x23839B7E0](0x3A646E45726E7320, 0xE800000000000000);
  (*((*v2 & *v0) + 0x130))(v8);
  sub_23328DCFC();
  v9 = MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A73A0);
  (*((*v2 & *v0) + 0x148))(v9);
  sub_23328DCFC();
  v10 = MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A73C0);
  (*((*v2 & *v0) + 0x160))(v10);
  sub_23328DCFC();
  v11 = MEMORY[0x23839B7E0](0x65726854726E7320, 0xEE003A646C6F6873);
  (*((*v2 & *v0) + 0x178))(v11);
  sub_23328DCFC();
  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  return 0;
}

id TTSVBAudioQualityMeasurement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBAudioQualityMeasurement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTSVBTCCCloudKitAccess.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7465736E75;
  }

  if (a1 == 1)
  {
    return 0x6465776F6C6C61;
  }

  return 0x6465696E6564;
}

uint64_t sub_23315FDE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v4 = 0x6465696E6564;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465736E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6465776F6C6C61;
  if (*a2 != 1)
  {
    v8 = 0x6465696E6564;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465736E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_23315FED8()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23315FF74(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_23315FFFC(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

unint64_t sub_233160094@<X0>(Swift::String *a1@<X0>, TextToSpeechVoiceBankingSupport::TTSVBTCCCloudKitAccess_optional *a2@<X8>)
{
  result = _s31TextToSpeechVoiceBankingSupport22TTSVBTCCCloudKitAccessO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_2331600C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v5 = 0x6465696E6564;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465736E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TTSVBAccessManager.Event.hashValue.getter(char a1)
{
  sub_23328E61C();
  MEMORY[0x23839C380](a1 & 1);
  return sub_23328E66C();
}

uint64_t sub_23316019C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_233165B14;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_23316023C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_233165AD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  sub_23310C718(v3, v4);
  return v7(v6, v5);
}

uint64_t sub_233160304()
{
  v1 = (v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_eventHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_23310C718(*v1, v1[1]);
  return v2;
}

uint64_t sub_233160360(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_eventHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_233164F00(v6, v7);
}

id TTSVBAccessManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSVBAccessManager.init()()
{
  v15 = sub_23328DEAC();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v14 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23328DE7C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23328D80C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = &v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_eventHandler];
  *v5 = 0;
  v5[1] = 0;
  v13 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_calloutQueue;
  v6 = sub_233144EEC(0, &qword_280D3A220, 0x277D85C78);
  v12[4] = "unset";
  v12[5] = v6;
  sub_23328D7EC();
  v17 = MEMORY[0x277D84F90];
  v12[3] = sub_233165104(&qword_280D3A230, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v12[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  sub_2331216CC(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  sub_23328E14C();
  v7 = *MEMORY[0x277D85260];
  v8 = v1 + 104;
  v9 = *(v1 + 104);
  v12[1] = v8;
  v9(v14, v7, v15);
  *&v0[v13] = sub_23328DEDC();
  v13 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue;
  sub_23328D7EC();
  v17 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v9(v14, v7, v15);
  *&v0[v13] = sub_23328DEDC();
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken] = 0;
  v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_isMonitoringAccountChanges] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext] = 0;
  v10 = type metadata accessor for TTSVBAccessManager();
  v16.receiver = v0;
  v16.super_class = v10;
  return objc_msgSendSuper2(&v16, sel_init);
}

id TTSVBAccessManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    notify_cancel(v2);
    *&v0[v1] = 0;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for TTSVBAccessManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_233160964()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore);
  }

  else
  {
    v4 = sub_2331609C8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2331609C8(uint64_t a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  *(inited + 32) = sub_23328D98C();
  *(inited + 40) = v7;
  sub_23316591C(inited);
  swift_setDeallocating();
  sub_233165A84(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CB8F80]);
  v9 = sub_23328DD0C();

  v10 = [v8 initWithAccountTypes:v9 delegate:a1];

  v11 = sub_2332254AC();
  (*(v3 + 16))(v5, v11, v2);
  v12 = v10;
  v13 = sub_23328D6CC();
  v14 = sub_23328DE4C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v2;
    v25 = v16;
    v17 = v16;
    *v15 = 136315138;
    v18 = [v12 debugDescription];
    v19 = sub_23328D98C();
    v21 = v20;

    v22 = sub_23311A8F4(v19, v21, &v25);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_233109000, v13, v14, "Creating account store. %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23839CFD0](v17, -1, -1);
    MEMORY[0x23839CFD0](v15, -1, -1);

    (*(v3 + 8))(v5, v24);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v12;
}

void sub_233160CCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a2;
  v78 = a5;
  v76 = a4;
  v6 = sub_23328D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328D80C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v79 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23328D6EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (!a1 || (v81 = v14, objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
    {

      return;
    }

    v20 = v19;
    v21 = a1;
    v22 = [v20 devices];
    if (!v22 || (v75 = v11, v23 = v22, v24 = sub_23328DBFC(), v23, v25 = sub_233161430(v24), , !v25))
    {

      return;
    }

    v71 = v21;
    v74 = v7;
    v26 = sub_2332254AC();
    v27 = v81;
    (*(v81 + 16))(v16, v26, v13);

    v28 = sub_23328D6CC();
    v29 = sub_23328DE4C();

    v70 = v29;
    v30 = os_log_type_enabled(v28, v29);
    v80 = v25;
    v72 = v9;
    v73 = v10;
    if (!v30)
    {

      (v27)[1](v16, v13);
LABEL_33:
      v54 = v74;
      v55 = swift_allocObject();
      v56 = v76;
      v57 = v77;
      v55[2] = v77;
      v55[3] = v56;
      v58 = v80;
      v55[4] = v78;
      v55[5] = v58;
      aBlock[4] = sub_233165BB0;
      aBlock[5] = v55;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331221F8;
      aBlock[3] = &block_descriptor_109;
      v59 = _Block_copy(aBlock);
      v60 = v57;

      v61 = v79;
      sub_23328D7DC();
      v82 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v62 = v72;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v61, v62, v59);

      _Block_release(v59);
      (*(v54 + 8))(v62, v6);
      (*(v75 + 8))(v61, v73);

      return;
    }

    v67 = v28;
    v68 = v6;
    v31 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    v66 = v31;
    *v31 = 136315138;
    v32 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
LABEL_30:
      v33 = sub_23328E19C();
      if (v33)
      {
LABEL_9:
        v34 = 0;
        v35 = v25 & 0xC000000000000001;
        v36 = MEMORY[0x277D84F90];
        do
        {
          v69 = v36;
          v37 = v34;
          while (1)
          {
            if (v35)
            {
              v38 = MEMORY[0x23839BFC0](v37, v25);
            }

            else
            {
              if (v37 >= *(v32 + 16))
              {
                goto LABEL_29;
              }

              v38 = *(v25 + 8 * v37 + 32);
            }

            v27 = v38;
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v39 = [v38 model];
            if (v39)
            {
              break;
            }

            ++v37;
            v25 = v80;
            v27 = v81;
            if (v34 == v33)
            {
              v36 = v69;
              goto LABEL_32;
            }
          }

          v40 = v39;
          v64 = sub_23328D98C();
          v63 = v41;

          v36 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_233143EE0(0, *(v36 + 2) + 1, 1, v36);
          }

          v43 = *(v36 + 2);
          v42 = *(v36 + 3);
          if (v43 >= v42 >> 1)
          {
            v36 = sub_233143EE0((v42 > 1), v43 + 1, 1, v36);
          }

          *(v36 + 2) = v43 + 1;
          v44 = &v36[16 * v43];
          v45 = v63;
          *(v44 + 4) = v64;
          *(v44 + 5) = v45;
          v25 = v80;
          v27 = v81;
        }

        while (v34 != v33);
        goto LABEL_32;
      }
    }

    else
    {
      v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_9;
      }
    }

    v36 = MEMORY[0x277D84F90];
LABEL_32:
    v46 = MEMORY[0x23839B960](v36, MEMORY[0x277D837D0]);
    v47 = v27;
    v49 = v48;

    v50 = sub_23311A8F4(v46, v49, aBlock);

    v51 = v66;
    *(v66 + 1) = v50;
    v52 = v67;
    _os_log_impl(&dword_233109000, v67, v70, "[TTSVBAccessManager]: Found the following devices attached to iCloud account. %s", v51, 0xCu);
    v53 = v65;
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x23839CFD0](v53, -1, -1);
    MEMORY[0x23839CFD0](v51, -1, -1);

    (v47)[1](v16, v13);
    v6 = v68;
    goto LABEL_33;
  }
}

uint64_t sub_233161430(uint64_t a1)
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
    sub_233144EEC(0, &unk_27DDE25F0, 0x277CEC7B0);
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

void sub_23316153C(void *a1, _BOOL8 a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_23328D6EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE25E8, &unk_2332980F0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  if (a1)
  {
    v16 = a1;
    sub_2331524CC(&v49);
    v47 = v49;
    v48 = v50;
    static TTSVBError.map(_:_:)(a1, &v47, v15);
    sub_2331220AC(v47, *(&v47 + 1), v48);
    swift_storeEnumTagMultiPayload();
    (a2)(v15);
  }

  else
  {
    if (a4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
    {
      v41 = v11;
      v42 = v9;
      v40 = v8;
      v43 = v12;
      v44 = v15;
      v45 = a3;
      v46 = a2;
      v11 = 0;
      a3 = a4 & 0xC000000000000001;
      v8 = a4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a3)
        {
          v18 = MEMORY[0x23839BFC0](v11, a4, v13);
        }

        else
        {
          if (v11 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v18 = *(a4 + 8 * v11 + 32);
        }

        v19 = v18;
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v20 = [v18 model];
        if (!v20)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v21 = v20;
        v15 = sub_23328D98C();
        v9 = v22;

        v23._countAndFlagsBits = v15;
        v23._object = v9;
        a2 = TTSVBDeviceExclusivelySupportsPV1(forModel:)(v23);

        if (a2)
        {
          v24 = sub_2332254AC();
          v26 = v41;
          v25 = v42;
          v27 = v40;
          v42[2](v41, v24, v40);
          v28 = v19;
          v29 = sub_23328D6CC();
          v30 = sub_23328DE4C();
          if (!os_log_type_enabled(v29, v30))
          {

            (v25[1])(v26, v27);
            goto LABEL_19;
          }

          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *&v49 = v32;
          *v31 = 136315138;
          v33 = [v28 modelDisplayName];

          if (v33)
          {
            v34 = sub_23328D98C();
            v36 = v35;

            v37 = sub_23311A8F4(v34, v36, &v49);

            *(v31 + 4) = v37;
            _os_log_impl(&dword_233109000, v29, v30, "Found device that only supports PV1 voices. %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            MEMORY[0x23839CFD0](v32, -1, -1);
            MEMORY[0x23839CFD0](v31, -1, -1);

            (v42[1])(v41, v27);
LABEL_19:
            v38 = 1;
            goto LABEL_20;
          }

          goto LABEL_28;
        }

        ++v11;
        if (v12 == i)
        {
          v38 = 0;
LABEL_20:
          a2 = v46;
          v15 = v44;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v38 = 0;
LABEL_25:
    *v15 = v38;
    swift_storeEnumTagMultiPayload();
    (a2)(v15);
  }

  sub_233121E04(v15, &qword_27DDE25E8, &unk_2332980F0);
}

void sub_233161978(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_233161AAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
  sub_23328DEBC();
  return v1;
}

uint64_t sub_233161B2C(char a1, int a2)
{
  v54 = a2;
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  if (a1 == 1)
  {
  }

  else
  {
    v18 = sub_23328E54C();

    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v19 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0xE8))(result) & 1) == 0)
  {
    v24 = sub_2332254AC();
    (*(v5 + 16))(v16, v24, v4);
    v25 = sub_23328D6CC();
    v26 = sub_23328DE3C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_233109000, v25, v26, "Cannot set CloudKit access to 'allowed', isCloudSyncAvailable=false", v27, 2u);
      MEMORY[0x23839CFD0](v27, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    return 0;
  }

  if ((*((*v19 & *v2) + 0xF8))())
  {
    v20 = sub_2332254AC();
    (*(v5 + 16))(v13, v20, v4);
    v21 = sub_23328D6CC();
    v22 = sub_23328DE3C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_233109000, v21, v22, "Cannot set CloudKit access to 'allowed', iCloudAccountIsBeneficiaryAccount=true", v23, 2u);
      MEMORY[0x23839CFD0](v23, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
    return 0;
  }

  result = (*((*v19 & *v2) + 0x100))();
  if (result)
  {
    v28 = sub_2332254AC();
    (*(v5 + 16))(v10, v28, v4);
    v29 = sub_23328D6CC();
    v30 = sub_23328DE3C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_233109000, v29, v30, "Cannot set CloudKit access to 'allowed', iCloudAccountIsManagedAppleAccount=true", v31, 2u);
      MEMORY[0x23839CFD0](v31, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    return 0;
  }

LABEL_17:
  if (!*MEMORY[0x277D6C190])
  {
    __break(1u);
    return result;
  }

  v32 = *MEMORY[0x277D6C190];
  sub_2331693D4();

  v33 = sub_23328D95C();

  if (a1)
  {
    v34 = TCCAccessSetForBundleId();
  }

  else
  {
    v34 = TCCAccessResetForBundleId();
  }

  v35 = v34;

  v36 = sub_2332254AC();
  (*(v5 + 16))(v7, v36, v4);
  v37 = v2;
  v38 = sub_23328D6CC();
  v39 = sub_23328DE4C();

  if (os_log_type_enabled(v38, v39))
  {
    v53 = v35;
    v51 = v4;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v55 = v41;
    *v40 = 136315650;
    v52 = v32;
    if (a1)
    {
      if (a1 == 1)
      {
        v42 = 0x6465776F6C6C61;
      }

      else
      {
        v42 = 0x6465696E6564;
      }

      if (a1 == 1)
      {
        v43 = 0xE700000000000000;
      }

      else
      {
        v43 = 0xE600000000000000;
      }
    }

    else
    {
      v43 = 0xE500000000000000;
      v42 = 0x7465736E75;
    }

    v44 = v53 != 0;
    v45 = sub_23311A8F4(v42, v43, &v55);

    *(v40 + 4) = v45;
    *(v40 + 12) = 1024;
    *(v40 + 14) = v44;
    *(v40 + 18) = 2080;
    v47 = (*((*MEMORY[0x277D85000] & *v37) + 0x118))(v46);
    if (v47)
    {
      if (v47 == 1)
      {
        v48 = 0xE700000000000000;
        v49 = 0x6465776F6C6C61;
      }

      else
      {
        v48 = 0xE600000000000000;
        v49 = 0x6465696E6564;
      }
    }

    else
    {
      v48 = 0xE500000000000000;
      v49 = 0x7465736E75;
    }

    v32 = v52;
    v50 = sub_23311A8F4(v49, v48, &v55);

    *(v40 + 20) = v50;
    _os_log_impl(&dword_233109000, v38, v39, "Did attempt changing cloud access to '%s' result=%{BOOL}d. ValueAfterSetting=%s", v40, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v41, -1, -1);
    MEMORY[0x23839CFD0](v40, -1, -1);

    (*(v5 + 8))(v7, v51);
    if (v53)
    {
      goto LABEL_38;
    }

LABEL_30:

    return 0;
  }

  (*(v5 + 8))(v7, v4);
  if (!v35)
  {
    goto LABEL_30;
  }

LABEL_38:
  if (v54)
  {
    static TTSVBPreferences.hasUserMadeiCloudOptInChoice.setter(1);
  }

  return 1;
}

void sub_233162270()
{
  if (!*MEMORY[0x277D6C190])
  {
    goto LABEL_31;
  }

  v0 = *MEMORY[0x277D6C190];
  v1 = sub_23328D98C();
  v26 = v2;
  v27 = v1;

  if (!*MEMORY[0x277D6C0E8])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = *MEMORY[0x277D6C0E8];
  v4 = sub_23328D98C();
  v6 = v5;

  if (!*MEMORY[0x277D6C0D0])
  {
LABEL_33:
    __break(1u);
    return;
  }

  v7 = *MEMORY[0x277D6C0D0];
  v24 = sub_23328D98C();
  v25 = v8;

  sub_2331693D4();

  v9 = sub_23328D95C();

  v10 = TCCAccessCopyInformationForBundleId();

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v12 = *(v11 + 16);
      if (v12)
      {
        goto LABEL_8;
      }

LABEL_20:

      return;
    }

    v30[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    sub_23328DBEC();
  }

  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_8:
  v13 = 0;
  v14 = MEMORY[0x277D84F70];
  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v15 = *(v11 + 8 * v13 + 32);
    if (!*(v15 + 16))
    {
      goto LABEL_10;
    }

    v16 = sub_233144260(v4, v6);
    if (v17)
    {
      sub_23311B0C0(*(v15 + 56) + 32 * v16, v30);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_10:
    if (v12 == ++v13)
    {
      goto LABEL_20;
    }
  }

  if (v28 == v27 && v29 == v26)
  {

    goto LABEL_23;
  }

  v18 = v6;
  v19 = v14;
  v20 = sub_23328E54C();

  if ((v20 & 1) == 0)
  {

    v14 = v19;
    v6 = v18;
    goto LABEL_10;
  }

LABEL_23:

  if (!*(v15 + 16))
  {

    goto LABEL_28;
  }

  v21 = sub_233144260(v24, v25);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_28:

    return;
  }

  sub_23311B0C0(*(v15 + 56) + 32 * v21, v30);

  sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    [v28 BOOLValue];
  }
}

uint64_t sub_2331625E8()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v66 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v66 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = (*((*MEMORY[0x277D85000] & *v0) + 0x118))(v14);
  v70 = v17;
  v18 = static TTSVBPreferences.hasUserMadeiCloudOptInChoice.getter();
  if ((AXDeviceSupportsVoiceBankingSpeech() & 1) == 0 && (AXDeviceSupportsVoiceBankingTraining() & 1) == 0)
  {
    v19 = sub_233225630();
    (*(v3 + 16))(v16, v19, v2);
    v20 = sub_23328D6CC();
    v21 = sub_23328DE4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v2;
      v23 = v18;
      v24 = v3;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_233109000, v20, v21, "VoiceBanking speaking and training not supported on this platform. Forcing icloud tcc to denied.", v25, 2u);
      v26 = v25;
      v3 = v24;
      v18 = v23;
      v2 = v22;
      MEMORY[0x23839CFD0](v26, -1, -1);
    }

    (*(v3 + 8))(v16, v2);
    v17 = 2;
  }

  if (v70)
  {
    v27 = sub_23328E54C();

    if ((v27 & 1) == 0 && ((v18 ^ 1) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v29 = sub_233225630();
  (*(v3 + 16))(v12, v29, v2);
  v30 = sub_23328D6CC();
  v31 = sub_23328DE4C();
  if (os_log_type_enabled(v30, v31))
  {
    v67 = v3;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v71 = v33;
    *v32 = 136315394;
    v66 = v2;
    v34 = v18;
    if (v70)
    {
      if (v70 == 1)
      {
        v35 = 0xE700000000000000;
        v36 = 0x6465776F6C6C61;
      }

      else
      {
        v35 = 0xE600000000000000;
        v36 = 0x6465696E6564;
      }
    }

    else
    {
      v35 = 0xE500000000000000;
      v36 = 0x7465736E75;
    }

    v37 = sub_23311A8F4(v36, v35, &v71);

    *(v32 + 4) = v37;
    *(v32 + 12) = 1024;
    *(v32 + 14) = v34 & 1;
    _os_log_impl(&dword_233109000, v30, v31, "iCloud TCC access is set to '%s' hasUserMadeiCloudOptInChoice=%{BOOL}d. Forcing it to denied until user approves", v32, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23839CFD0](v33, -1, -1);
    MEMORY[0x23839CFD0](v32, -1, -1);

    v2 = v66;
    v3 = v67;
  }

  else
  {
  }

  v28 = (*(v3 + 8))(v12, v2);
  v17 = 2;
LABEL_20:
  v38 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF8))(v28))
  {
    v39 = sub_233225630();
    (*(v3 + 16))(v9, v39, v2);
    v40 = sub_23328D6CC();
    v41 = sub_23328DE4C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_233109000, v40, v41, "iCloud account is beneficiary. Forcing icloud tcc to denied", v42, 2u);
      MEMORY[0x23839CFD0](v42, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    v17 = 2;
  }

  if ((*((*v38 & *v1) + 0x100))())
  {
    v43 = sub_233225630();
    v44 = v69;
    (*(v3 + 16))(v69, v43, v2);
    v45 = sub_23328D6CC();
    v46 = sub_23328DE4C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_233109000, v45, v46, "iCloud account is a Managed-ID account. Forcing icloud tcc to denied", v47, 2u);
      MEMORY[0x23839CFD0](v47, -1, -1);
    }

    (*(v3 + 8))(v44, v2);
LABEL_31:
    v17 = 2;
    v48 = 0xE600000000000000;
    v49 = 0x6465696E6564;
    goto LABEL_32;
  }

  if (v17)
  {
    if (v17 == 1)
    {
      v48 = 0xE700000000000000;
      v49 = 0x6465776F6C6C61;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v48 = 0xE500000000000000;
  v49 = 0x7465736E75;
LABEL_32:
  if (v70)
  {
    if (v70 == 1)
    {
      v50 = 0xE700000000000000;
      if (v49 != 0x6465776F6C6C61)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v50 = 0xE600000000000000;
      if (v49 != 0x6465696E6564)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    v50 = 0xE500000000000000;
    if (v49 != 0x7465736E75)
    {
      goto LABEL_41;
    }
  }

  if (v48 == v50)
  {
  }

LABEL_41:
  v52 = sub_23328E54C();

  if ((v52 & 1) == 0)
  {
    v53 = sub_233225630();
    v54 = v68;
    (*(v3 + 16))(v68, v53, v2);
    v55 = sub_23328D6CC();
    v56 = v3;
    v57 = sub_23328DE4C();
    if (os_log_type_enabled(v55, v57))
    {
      v67 = v56;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v71 = v59;
      *v58 = 136315650;
      *(v58 + 4) = sub_23311A8F4(0xD000000000000029, 0x80000002332A7630, &v71);
      *(v58 + 12) = 2080;
      if (v70)
      {
        if (v70 == 1)
        {
          v60 = 0xE700000000000000;
          v61 = 0x6465776F6C6C61;
        }

        else
        {
          v60 = 0xE600000000000000;
          v61 = 0x6465696E6564;
        }
      }

      else
      {
        v60 = 0xE500000000000000;
        v61 = 0x7465736E75;
      }

      v62 = sub_23311A8F4(v61, v60, &v71);

      *(v58 + 14) = v62;
      *(v58 + 22) = 2080;
      if (v17)
      {
        v38 = MEMORY[0x277D85000];
        if (v17 == 1)
        {
          v63 = 0xE700000000000000;
          v64 = 0x6465776F6C6C61;
        }

        else
        {
          v63 = 0xE600000000000000;
          v64 = 0x6465696E6564;
        }
      }

      else
      {
        v63 = 0xE500000000000000;
        v38 = MEMORY[0x277D85000];
        v64 = 0x7465736E75;
      }

      v65 = sub_23311A8F4(v64, v63, &v71);

      *(v58 + 24) = v65;
      _os_log_impl(&dword_233109000, v55, v57, "%s current=%s target=%s", v58, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v59, -1, -1);
      MEMORY[0x23839CFD0](v58, -1, -1);

      (*(v67 + 8))(v68, v2);
    }

    else
    {

      (*(v56 + 8))(v54, v2);
    }

    return (*((*v38 & *v1) + 0x110))(v17, 0);
  }

  return result;
}

uint64_t sub_233162FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v20[1] = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue];
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
  sub_233165104(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_233163290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v63 = a4;
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D80C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D6EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = result;
    v59 = v9;
    v60 = v8;
    v61 = v6;
    if (a1)
    {
      v57 = v5;
      v19 = a1;
      v20 = sub_2332254AC();
      (*(v12 + 16))(v14, v20, v11);
      v21 = a1;
      v22 = sub_23328D6CC();
      v23 = sub_23328DE3C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        aBlock = v56;
        *v24 = 136315138;
        v25 = sub_23328CA6C();
        v26 = [v25 debugDescription];

        v27 = sub_23328D98C();
        v29 = v28;

        v30 = sub_23311A8F4(v27, v29, &aBlock);

        *(v24 + 4) = v30;
        _os_log_impl(&dword_233109000, v22, v23, "Error occurred registering for store changes: %s", v24, 0xCu);
        v31 = v56;
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x23839CFD0](v31, -1, -1);
        MEMORY[0x23839CFD0](v24, -1, -1);
      }

      (*(v12 + 8))(v14, v11);
      v32 = v58;
      v33 = swift_allocObject();
      v34 = v63;
      v33[2] = v62;
      v33[3] = v34;
      v33[4] = a1;
      v71 = sub_233165B60;
      v72 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_2331221F8;
      v70 = &block_descriptor_90;
      v35 = _Block_copy(&aBlock);
      v36 = a1;

      v37 = v64;
      sub_23328D7DC();
      v66 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v38 = v65;
      v39 = v57;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v37, v38, v35);
      _Block_release(v35);

      (*(v61 + 8))(v38, v39);
      (*(v59 + 8))(v37, v60);
    }

    else
    {
      v40 = v5;
      v41 = sub_2332254AC();
      (*(v12 + 16))(v17, v41, v11);
      v42 = sub_23328D6CC();
      v43 = sub_23328DE1C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_233109000, v42, v43, "Did register for account store changes", v44, 2u);
        MEMORY[0x23839CFD0](v44, -1, -1);
      }

      (*(v12 + 8))(v17, v11);
      v45 = v58;
      v46 = *(v58 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue);
      v47 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v71 = sub_233165B50;
      v72 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_23316418C;
      v70 = &block_descriptor_78;
      v48 = _Block_copy(&aBlock);

      v49 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken;
      swift_beginAccess();
      notify_register_dispatch("com.apple.tcc.access.changed", &v45[v49], v46, v48);
      swift_endAccess();
      _Block_release(v48);
      v50 = swift_allocObject();
      v51 = v63;
      *(v50 + 16) = v62;
      *(v50 + 24) = v51;
      v71 = sub_233165B58;
      v72 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v68 = 1107296256;
      v69 = sub_2331221F8;
      v70 = &block_descriptor_84_0;
      v52 = _Block_copy(&aBlock);

      v53 = v64;
      sub_23328D7DC();
      v66 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v54 = v65;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v53, v54, v52);
      _Block_release(v52);
      (*(v61 + 8))(v54, v40);
      (*(v59 + 8))(v53, v60);
    }
  }

  return result;
}

uint64_t sub_233163ADC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = sub_23328CA6C();
  TTSVBError.init(_:_:_:)(0xD00000000000002CLL, 0x80000002332A77B0, 0, 0, v7, v6);
  swift_storeEnumTagMultiPayload();
  a1(v6);
  return sub_233121E04(v6, &unk_27DDE25D0, &unk_233290330);
}

void sub_233163BDC(uint64_t a1)
{
  v1 = sub_23328D7CC();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23328D80C();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2332254AC();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_23328D6CC();
  v10 = sub_23328DE1C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = (*((*MEMORY[0x277D85000] & *Strong) + 0x118))();

      if (v15)
      {
        if (v15 == 1)
        {
          v16 = 0xE700000000000000;
          v17 = 0x6465776F6C6C61;
        }

        else
        {
          v16 = 0xE600000000000000;
          v17 = 0x6465696E6564;
        }
      }

      else
      {
        v16 = 0xE500000000000000;
        v17 = 0x7465736E75;
      }
    }

    else
    {
      v16 = 0xE90000000000003ELL;
      v17 = 0x6E776F6E6B6E753CLL;
    }

    v18 = sub_23311A8F4(v17, v16, aBlock);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_233109000, v9, v10, "Did get TCC access changed. Voicebanking cloud access = %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23839CFD0](v12, -1, -1);
    MEMORY[0x23839CFD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = (*((*MEMORY[0x277D85000] & *v19) + 0x88))();
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v30[1] = *&v20[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_calloutQueue];
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v24;
      aBlock[4] = sub_233165B6C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331221F8;
      aBlock[3] = &block_descriptor_96;
      v26 = _Block_copy(aBlock);

      v27 = v31;
      sub_23328D7DC();
      v37 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v28 = v33;
      v29 = v36;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v27, v28, v26);
      _Block_release(v26);
      sub_233164F00(v23, v24);
      (*(v35 + 8))(v28, v29);
      (*(v32 + 8))(v27, v34);
    }

    else
    {
    }
  }
}

uint64_t sub_23316418C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2331641E0(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_233121E04(v4, &unk_27DDE25D0, &unk_233290330);
}

uint64_t sub_23316429C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_233144EEC(0, &unk_280D39B58, 0x277CB8F30);
    v4 = sub_23328DBFC();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_233164340()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isPasscodeSet];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2331643B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v8 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext];
  *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext] = v7;
  v9 = v7;

  if (v9)
  {
    v10 = sub_23328D95C();
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = a3;
    v11[4] = a4;
    v14[4] = sub_2331654A8;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2331646DC;
    v14[3] = &block_descriptor_13;
    v12 = _Block_copy(v14);
    v13 = v4;

    [v9 evaluatePolicy:2 localizedReason:v10 reply:v12];
    _Block_release(v12);
  }
}

void sub_233164510(char a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    a4(v13);
    sub_233121E04(v13, &unk_27DDE25D0, &unk_233290330);
LABEL_5:
    v15 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext);
    *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext) = 0;

    return;
  }

  if (a2)
  {
    v14 = sub_23328CA6C();
    sub_2331524CC(&v18);
    v16 = v18;
    v17 = v19;
    static TTSVBError.map(_:_:)(v14, &v16, v10);

    sub_2331220AC(v16, *(&v16 + 1), v17);
    sub_233121720(v10, v13);
    swift_storeEnumTagMultiPayload();
    a4(v13);
    sub_233121E04(v13, &unk_27DDE25D0, &unk_233290330);
    sub_2331220C4(v10);
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2331646DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23316481C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  v9 = sub_23328D7CC();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_23328D80C();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D6EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2332254AC();
  (*(v13 + 16))(v15, v16, v12);
  v17 = a1;
  v18 = sub_23328D6CC();
  v19 = sub_23328DE1C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v45 = a5;
    v43 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    v23 = [v17 description];
    v24 = sub_23328D98C();
    v42 = a2;
    v25 = a4;
    v26 = v24;
    v28 = v27;

    v29 = v26;
    a4 = v25;
    v30 = sub_23311A8F4(v29, v28, aBlock);

    *(v21 + 4) = v30;
    _os_log_impl(&dword_233109000, v18, v19, v42, v21, 0xCu);
    v31 = v43;
    __swift_destroy_boxed_opaque_existential_0(v43);
    a5 = v45;
    MEMORY[0x23839CFD0](v31, -1, -1);
    MEMORY[0x23839CFD0](v21, -1, -1);

    v32 = (*(v13 + 8))(v15, v44);
  }

  else
  {

    v32 = (*(v13 + 8))(v15, v12);
  }

  result = (*((*MEMORY[0x277D85000] & *v52) + 0x88))(v32);
  if (result)
  {
    v35 = result;
    v36 = v34;
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    aBlock[4] = a4;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = a5;
    v38 = _Block_copy(aBlock);

    v39 = v46;
    sub_23328D7DC();
    v53 = MEMORY[0x277D84F90];
    sub_233165104(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v40 = v48;
    v41 = v51;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v39, v40, v38);
    _Block_release(v38);
    sub_233164F00(v35, v36);
    (*(v50 + 8))(v40, v41);
    (*(v47 + 8))(v39, v49);
  }

  return result;
}

unint64_t _s31TextToSpeechVoiceBankingSupport22TTSVBTCCCloudKitAccessO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23328E37C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_233164F00(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_233164F34(unsigned __int8 *a1@<X8>)
{
  v2 = sub_233160964();
  v3 = [v2 aa_isUsingiCloud];

  *a1 = v3;
}

void sub_233164F88()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_233160964();
  v4 = [v3 aa_primaryAppleAccount];

  v5 = [objc_allocWithZone(MEMORY[0x277CEC7C8]) initWithAccount_];
  if (v5)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v2;
    v7[4] = v1;
    v9[4] = sub_233165B98;
    v9[5] = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_233161978;
    v9[3] = &block_descriptor_103;
    v8 = _Block_copy(v9);

    [v5 performRequestWithHandler_];
    _Block_release(v8);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_233165104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23316514C(unsigned __int8 *a1@<X8>)
{
  v2 = sub_233160964();
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 isBeneficiaryForAccount_];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_2331651FC(unsigned __int8 *a1@<X8>)
{
  v2 = sub_233160964();
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = [v3 aa_isManagedAppleID];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_23316527C(uint64_t *a1@<X8>)
{
  v2 = sub_233160964();
  v3 = [v2 aa_primaryAppleAccount];

  if (v3)
  {
    v4 = [v3 aa_firstName];
    if (v4)
    {
      v5 = v4;
      v6 = sub_23328D98C();
      v8 = v7;
    }

    else
    {

      v6 = 0;
      v8 = 0;
    }

    *a1 = v6;
    a1[1] = v8;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_233165330()
{
  v1 = v0[2];
  if ((*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_isMonitoringAccountChanges) & 1) == 0)
  {
    v3 = v0[3];
    v2 = v0[4];
    *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_isMonitoringAccountChanges) = 1;
    v4 = sub_233160964();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v3;
    v6[4] = v2;
    v8[4] = sub_233165B40;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23316429C;
    v8[3] = &block_descriptor_74;
    v7 = _Block_copy(v8);

    [v4 registerWithCompletion_];
    _Block_release(v7);
  }
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2331654E4()
{
  result = qword_27DDE2558;
  if (!qword_27DDE2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2558);
  }

  return result;
}

unint64_t sub_23316553C()
{
  result = qword_27DDE2560;
  if (!qword_27DDE2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2560);
  }

  return result;
}

uint64_t sub_23316591C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE24A8, &qword_233297F28);
    v3 = sub_23328E22C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_23328E61C();

      sub_23328DA3C();
      result = sub_23328E66C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_23328E54C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_233165AD8(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

void sub_233165C28()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_280D3A6B8 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_233165CA0()
{
  if (qword_280D3A6B0 != -1)
  {
    swift_once();
  }

  return &qword_280D3A6B8;
}

id static NSUserDefaults.voicebankingShared.getter()
{
  if (qword_280D3A6B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280D3A6B8;

  return v1;
}

void sub_233165D4C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithSuiteName_];

  qword_280D3A6A8 = v2;
}

uint64_t static NSUserDefaults.voicebankingSandboxedShared.getter()
{
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v0 = qword_280D3A6A8;
  v1 = qword_280D3A6A8;
  return v0;
}

void (*NSUserDefaults.ttsvb_showInternalAnalysisDuringMicCheck.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233165F28;
}

id NSUserDefaults.ttsvb_internalPhraseCountOverride.getter()
{

  v1 = sub_23328D95C();

  v2 = [v0 integerForKey_];

  return v2;
}

void sub_233165FC0(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  v4 = sub_23328D95C();

  v5 = [v3 integerForKey_];

  *a2 = v5;
  *(a2 + 8) = v5 == 0;
}

void sub_233166050(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_23328DD5C();
  }

  v4 = sub_23328D95C();

  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void NSUserDefaults.ttsvb_internalPhraseCountOverride.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_23328DD5C();
  }

  v4 = sub_23328D95C();

  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.ttsvb_internalPhraseCountOverride.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;

  v3 = sub_23328D95C();

  v4 = [v1 integerForKey_];

  *a1 = v4;
  *(a1 + 8) = v4 == 0;
  return sub_233166250;
}

uint64_t sub_233166250(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_23328DD5C();
  }

  v3 = *(a1 + 16);

  v4 = sub_23328D95C();

  [v3 setObject:v2 forKey:v4];

  return swift_unknownObjectRelease();
}

void (*NSUserDefaults.ttsvb_bypassOSSchedulingWhileTraining.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233166410;
}

id NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter()
{

  v1 = sub_23328D95C();

  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_23328D98C();
    v5 = v4;

    v2 = *MEMORY[0x277CB8130];
    if (sub_23328D98C() == v3 && v6 == v5)
    {
      goto LABEL_14;
    }

    v8 = sub_23328E54C();

    if ((v8 & 1) == 0)
    {
      v2 = *MEMORY[0x277CB8140];
      if (sub_23328D98C() == v3 && v9 == v5)
      {
        goto LABEL_14;
      }

      v11 = sub_23328E54C();

      if ((v11 & 1) == 0)
      {
        v2 = *MEMORY[0x277CB8138];
        if (sub_23328D98C() == v3 && v12 == v5)
        {
LABEL_14:

          goto LABEL_15;
        }

        v15 = sub_23328E54C();

        if ((v15 & 1) == 0)
        {
          v2 = 0;
          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v13 = v2;
LABEL_16:
  }

  return v2;
}

id sub_2331665B4@<X0>(void *a1@<X8>)
{
  result = NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter();
  *a1 = result;
  return result;
}

void sub_2331665E0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2331675C8(v1);
}

void NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.setter(void *a1)
{
  sub_2331675C8(a1);
}

void (*NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter();
  return sub_2331666B0;
}

void sub_2331666B0(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_2331675C8(v4);

    v3 = v2;
  }

  else
  {
    sub_2331675C8(*a1);
    v3 = v4;
  }
}

TextToSpeechVoiceBankingSupport::RecordingMode_optional NSUserDefaults.ttsvb_recordingMode.getter()
{

  v1 = sub_23328D95C();

  v2 = [v0 integerForKey_];

  return RecordingMode.init(rawValue:)(v2);
}

TextToSpeechVoiceBankingSupport::RecordingMode_optional sub_2331667B0@<W0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_23328D95C();

  v5 = [v3 integerForKey_];

  result.value = RecordingMode.init(rawValue:)(v5).value;
  *a2 = v7;
  return result;
}

void NSUserDefaults.ttsvb_recordingMode.setter(_BYTE *a1)
{
  v2 = v1;
  if (*a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    RecordingMode.rawValue.getter();
    v3 = sub_23328E53C();
  }

  v4 = sub_23328D95C();

  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void (*NSUserDefaults.ttsvb_recordingMode.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;

  v2 = sub_23328D95C();

  v3 = [v1 integerForKey_];

  RecordingMode.init(rawValue:)(v3);
  return sub_2331669F8;
}

void sub_2331669F8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  NSUserDefaults.ttsvb_recordingMode.setter(v2);
}

BOOL NSUserDefaults.ttsvb_recordingModeExists.getter()
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
    memset(v4, 0, sizeof(v4));
  }

  sub_23316779C(v4);
  return v2 != 0;
}

void (*NSUserDefaults.ttsvb_hasUserMadeiCloudOptInChoice.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233166C08;
}

void (*NSUserDefaults.ttsvb_hasPerformVoiceDatastoreMigrationV1.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233166D34;
}

id sub_233166D6C(uint64_t a1, uint64_t a2)
{

  v3 = sub_23328D95C();

  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_233166DF0(void **a1@<X0>, unsigned __int8 *a4@<X8>)
{
  v5 = *a1;

  v6 = sub_23328D95C();

  v7 = [v5 BOOLForKey_];

  *a4 = v7;
}

void sub_233166E80(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;

  v8 = sub_23328D95C();

  [v7 setBool:v6 forKey:v8];
}

void sub_233166F24(char a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_23328D95C();

  [v3 setBool:a1 & 1 forKey:v5];
}

void (*NSUserDefaults.ttsvb_internalUseServerBasedASR.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233167048;
}

void sub_233167064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);

  v6 = sub_23328D95C();

  [v4 setBool:v5 forKey:v6];
}

uint64_t sub_233167120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_233167804(0x80000002332A78F0, 0xD000000000000022);
  *a1 = result & 1;
  return result;
}

uint64_t sub_23316724C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_233167804(0x80000002332A7920, 0xD000000000000029);
  *a1 = result & 1;
  return result;
}

void sub_2331672AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v7 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v8 = sub_23328D95C();

    [v7 setBool:v6 forKey:v8];
  }
}

void sub_23316739C(char a1, uint64_t a2, uint64_t a3)
{
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v4 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v5 = sub_23328D95C();

    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_2331674F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v5 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v6 = sub_23328D95C();

    [v5 setBool:v4 forKey:v6];
  }
}

void sub_2331675C8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  v2 = sub_23328D98C();
  v4 = v3;
  v5 = *MEMORY[0x277CB8130];
  if (sub_23328D98C() == v2 && v6 == v4)
  {
    goto LABEL_19;
  }

  v8 = sub_23328E54C();

  if (v8)
  {
    goto LABEL_20;
  }

  v5 = *MEMORY[0x277CB8140];
  if (sub_23328D98C() == v2 && v9 == v4)
  {
    goto LABEL_19;
  }

  v11 = sub_23328E54C();

  if (v11)
  {
    goto LABEL_20;
  }

  v5 = *MEMORY[0x277CB8138];
  if (sub_23328D98C() == v2 && v12 == v4)
  {
LABEL_19:
  }

  else
  {
    v14 = sub_23328E54C();

    if ((v14 & 1) == 0)
    {

LABEL_18:
      v5 = 0;
LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }
  }

LABEL_20:
  v15 = v5;

  v16 = v15;
  if (!v5)
  {
    goto LABEL_22;
  }

  v17 = sub_23328D98C();
  v19 = v18;

  v22[0] = v17;
  v22[1] = v19;
  v20 = sub_23328E53C();
  sub_233165A84(v22);
LABEL_23:

  v21 = sub_23328D95C();

  [v1 setObject:v20 forKey:v21];
  swift_unknownObjectRelease();
}

uint64_t sub_23316779C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2660, &qword_233298100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_233167804(uint64_t a1, uint64_t a2)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v6 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v7 = sub_23328D95C();

    v8 = [v6 BOOLForKey_];
  }

  else
  {
    v9 = sub_233225314();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_23328D6CC();
    v11 = sub_23328DE3C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_233109000, v10, v11, "voicebankingSandboxedShared domain unexpectedly nil", v12, 2u);
      MEMORY[0x23839CFD0](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v8;
}

TextToSpeechVoiceBankingSupport::TTSVBVoiceModelVersion __swiftcall TTSVBVoiceModelVersion.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  if (rawValue._countAndFlagsBits == 50 && rawValue._object == 0xE100000000000000 || (v5 = sub_23328E54C(), (v5 & 1) != 0))
  {

    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27DDF2C08;
    object = unk_27DDF2C10;
  }

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.rawValue._object = v6;
  result.rawValue._countAndFlagsBits = v5;
  return result;
}

uint64_t *sub_233167B90()
{
  if (qword_27DDF2C00 != -1)
  {
    swift_once();
  }

  return &qword_27DDF2C08;
}

uint64_t sub_233167C38()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDF2BD8 == v1 && unk_27DDF2BE0 == v2;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {
    return 0;
  }

  if (qword_27DDF2BE8 != -1)
  {
    swift_once();
  }

  v5 = qword_27DDF2BF0 == v1 && *algn_27DDF2BF8 == v2;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {
    return 1;
  }

  if (qword_27DDF2C00 != -1)
  {
    swift_once();
  }

  if (qword_27DDF2C08 == v1 && unk_27DDF2C10 == v2)
  {
    return 2;
  }

  if (sub_23328E54C())
  {
    return 2;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t *sub_233167D94()
{
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  return &qword_27DDF2BD8;
}

uint64_t *sub_233167DE4()
{
  if (qword_27DDF2BE8 != -1)
  {
    swift_once();
  }

  return &qword_27DDF2BF0;
}

uint64_t TTSVBVoiceModelVersion.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static TTSVBVoiceModelVersion.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2668, &qword_233298138);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_233290950;
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DDF2BE0;
  *(v0 + 32) = qword_27DDF2BD8;
  *(v0 + 40) = v1;
  v2 = qword_27DDF2BE8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_27DDF2BF8;
  *(v0 + 48) = qword_27DDF2BF0;
  *(v0 + 56) = v3;
  v4 = qword_27DDF2C00;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27DDF2C10[0];
  *(v0 + 64) = qword_27DDF2C08;
  *(v0 + 72) = v5;

  return v0;
}

uint64_t sub_233167F80()
{
  v0 = 48;
  v1 = 0xE100000000000000;
  result = sub_23328E54C();
  if (result)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v0 = qword_27DDF2C08;
    v1 = unk_27DDF2C10;
  }

  qword_27DDF2BD8 = v0;
  unk_27DDF2BE0 = v1;
  return result;
}

uint64_t sub_233168038()
{
  v0 = 0x636E61686E452D30;
  v1 = 0xEA00000000006465;
  result = sub_23328E54C();
  if (result)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v0 = qword_27DDF2C08;
    v1 = unk_27DDF2C10;
  }

  qword_27DDF2BF0 = v0;
  *algn_27DDF2BF8 = v1;
  return result;
}

uint64_t sub_233168104()
{
  v0 = 0x495353414C4C2D32;
  v1 = 0xE800000000000000;
  result = sub_23328E54C();
  if (result)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v0 = qword_27DDF2C08;
    v1 = unk_27DDF2C10;
  }

  qword_27DDF2C08 = v0;
  unk_27DDF2C10 = v1;
  return result;
}

uint64_t sub_2331681C8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
}

uint64_t static TTSVBVoiceModelVersion.validateVersionMigration(from:to:)(uint64_t *a1, uint64_t *a2)
{
  v18 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v18);
  v5 = (&v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v6 = a1[1];
  v9 = *a2;
  v8 = a2[1];
  v10 = qword_27DDF2BD0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_27DDF2BD8 == v7 && qword_27DDF2BE0 == v6;
  if (v11 || (sub_23328E54C() & 1) != 0)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    if (qword_27DDF2C08 == v9 && qword_27DDF2C10[0] == v8 || (sub_23328E54C() & 1) != 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_27DDF2BE8 != -1)
  {
    swift_once();
  }

  if (v12 = qword_27DDF2BF0, v13 = *algn_27DDF2BF8, qword_27DDF2BF0 == v7) && *algn_27DDF2BF8 == v6 || (sub_23328E54C())
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    if (qword_27DDF2C08 == v9 && qword_27DDF2C10[0] == v8 || (sub_23328E54C() & 1) != 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_27DDF2C00 != -1)
  {
    swift_once();
  }

  if ((qword_27DDF2C08 != v7 || qword_27DDF2C10[0] != v6) && (sub_23328E54C() & 1) == 0)
  {

    goto LABEL_35;
  }

  if (v12 == v9 && v13 == v8)
  {
LABEL_30:
  }

  v15 = sub_23328E54C();

  if ((v15 & 1) == 0)
  {
LABEL_35:
    v19[0] = 0;
    v19[1] = 0;
    v20 = 3;
    *v5 = v7;
    v5[1] = v6;
    v5[2] = v9;
    v5[3] = v8;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    v17 = v16;

    TTSVBError.init(_:_:_:)(v19, v5, 0, v17);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2331685A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 50 && v3 == 0xE100000000000000;
  if (v5 || (result = sub_23328E54C(), (result & 1) != 0))
  {

    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v4 = qword_27DDF2C08;
    v3 = qword_27DDF2C10[0];
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_233168650@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23316865C()
{
  sub_23328E61C();
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2331686B0(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_233168908@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2668, &qword_233298138);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233290950;
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDF2BE0;
  *(v2 + 32) = qword_27DDF2BD8;
  *(v2 + 40) = v3;
  v4 = qword_27DDF2BE8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_27DDF2BF8;
  *(v2 + 48) = qword_27DDF2BF0;
  *(v2 + 56) = v5;
  v6 = qword_27DDF2C00;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27DDF2C10[0];
  *(v2 + 64) = qword_27DDF2C08;
  *(v2 + 72) = v7;
  *a1 = v2;
}

uint64_t sub_233168A3C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_233168A6C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23328E54C();
  }
}

unint64_t sub_233168AA8()
{
  result = qword_27DDE2670;
  if (!qword_27DDE2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2670);
  }

  return result;
}

unint64_t sub_233168B00()
{
  result = qword_27DDE2678;
  if (!qword_27DDE2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2678);
  }

  return result;
}

unint64_t sub_233168B5C()
{
  result = qword_27DDE2680;
  if (!qword_27DDE2680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2688, &qword_233298470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2680);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_233168BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_233168C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

TextToSpeechVoiceBankingSupport::TTSVBVoiceTrainingExperience_optional __swiftcall TTSVBVoiceTrainingExperience.init(rawValue:)(Swift::String rawValue)
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

uint64_t TTSVBVoiceTrainingExperience.rawValue.getter()
{
  if (*v0)
  {
    return 0x657A696D6974706FLL;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_233168D34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657A696D6974706FLL;
  }

  else
  {
    v3 = 0x6C616E696769726FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF413250726F4664;
  }

  if (*a2)
  {
    v5 = 0x657A696D6974706FLL;
  }

  else
  {
    v5 = 0x6C616E696769726FLL;
  }

  if (*a2)
  {
    v6 = 0xEF413250726F4664;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_233168DE8@<X0>(char *a2@<X8>)
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

void sub_233168E48(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E696769726FLL;
  if (*v1)
  {
    v2 = 0x657A696D6974706FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF413250726F4664;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_233168F44()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233168FD4(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_233169050(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

Swift::Int __swiftcall TTSVBMinimumUserPhraseCount(forExperience:)(TextToSpeechVoiceBankingSupport::TTSVBVoiceTrainingExperience forExperience)
{
  if (*forExperience)
  {
    return 10;
  }

  else
  {
    return 150;
  }
}

uint64_t TTSVBMinimumRequiredPhraseCount(forTrainingMode:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 32;
  }
}

Swift::Bool __swiftcall TTSVBDeviceExclusivelySupportsPV1(forModel:)(Swift::String forModel)
{
  object = forModel._object;
  countAndFlagsBits = forModel._countAndFlagsBits;
  sub_23328D9FC();
  sub_23311A294();
  v3 = sub_23328E0AC();

  if (v3)
  {
    if (countAndFlagsBits == 0x312C366863746157 && object == 0xE800000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_23328E54C() ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  while (2)
  {
    v6 = &unk_284873740 + v5++;
    v7 = 0xEA0000000000322CLL;
    v8 = 0x3331656E6F685069;
    switch(v6[32])
    {
      case 1:
        v7 = 0xEA0000000000332CLL;
        goto LABEL_16;
      case 2:
        v7 = 0xEA0000000000342CLL;
LABEL_16:
        if (countAndFlagsBits != 0x3331656E6F685069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 3:
        v7 = 0xEA0000000000312CLL;
        if (countAndFlagsBits != 0x3331656E6F685069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 4:
        v7 = 0xEA0000000000352CLL;
        goto LABEL_34;
      case 5:
        goto LABEL_34;
      case 6:
        v7 = 0xEA0000000000332CLL;
        goto LABEL_34;
      case 7:
        v7 = 0xEA0000000000342CLL;
        goto LABEL_34;
      case 8:
        v7 = 0xEA0000000000362CLL;
        goto LABEL_34;
      case 9:
        v7 = 0xEA0000000000372CLL;
LABEL_34:
        if (countAndFlagsBits == 0x3431656E6F685069)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 10:
        v7 = 0xEA0000000000382CLL;
        v8 = 0x3431656E6F685069;
        goto LABEL_31;
      case 11:
        goto LABEL_27;
      case 12:
        v7 = 0xEA0000000000332CLL;
        goto LABEL_27;
      case 13:
        v7 = 0xEA0000000000342CLL;
        goto LABEL_27;
      case 14:
        v7 = 0xEA0000000000352CLL;
LABEL_27:
        if (countAndFlagsBits != 0x3531656E6F685069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 15:
        v7 = 0xE800000000000000;
        v9 = 0x343164615069;
        goto LABEL_23;
      case 16:
        v7 = 0xE800000000000000;
        if (countAndFlagsBits != 0x322C343164615069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 17:
        v7 = 0xE800000000000000;
        v9 = 0x366863746157;
LABEL_23:
        if ((v9 & 0xFFFFFFFFFFFFLL | 0x312C000000000000) != countAndFlagsBits)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      default:
LABEL_31:
        if (v8 != countAndFlagsBits)
        {
          goto LABEL_36;
        }

LABEL_35:
        if (v7 != object)
        {
LABEL_36:
          v10 = sub_23328E54C();

          if (v10)
          {
            goto LABEL_40;
          }

          if (v5 == 18)
          {
            return v4 & 1;
          }

          continue;
        }

LABEL_40:
        v4 = 1;
        return v4 & 1;
    }
  }
}

uint64_t sub_233169404()
{
  result = sub_23328D95C();
  qword_280D3A688 = result;
  return result;
}

uint64_t *sub_23316943C()
{
  if (qword_280D3A680 != -1)
  {
    swift_once();
  }

  return &qword_280D3A688;
}

uint64_t sub_2331694B0()
{
  result = sub_23328D95C();
  qword_280D3A698 = result;
  return result;
}

uint64_t *sub_2331694E8()
{
  if (qword_280D3A690 != -1)
  {
    swift_once();
  }

  return &qword_280D3A698;
}

uint64_t sub_23316955C()
{
  result = sub_23328D95C();
  qword_280D3A678 = result;
  return result;
}

uint64_t *sub_233169594()
{
  if (qword_280D3A670 != -1)
  {
    swift_once();
  }

  return &qword_280D3A678;
}

uint64_t sub_233169608()
{
  result = sub_23328D95C();
  qword_280D3A668 = result;
  return result;
}

uint64_t *sub_233169640()
{
  if (qword_280D3A660 != -1)
  {
    swift_once();
  }

  return &qword_280D3A668;
}

id sub_2331696B4(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

Swift::Int __swiftcall String.ttsvb_editDistance(to:)(Swift::String to)
{
  v4 = sub_23328DA4C();
  result = sub_23328DA4C();
  v6 = result;
  v37 = v4;
  if (v4 < 1 || result <= 0)
  {
    if (result <= v4)
    {
      return v4;
    }

    return result;
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_73;
  }

  if (v7 < 0)
  {
    goto LABEL_74;
  }

  v2 = sub_23328DC3C();
  *(v2 + 16) = v7;
  bzero((v2 + 32), 8 * v6 + 8);
  if (__OFADD__(v4, 1))
  {
    goto LABEL_75;
  }

  v1 = sub_23316B82C(v2, v4 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_76;
  }

  while (1)
  {
    if (v1[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[5] = v2;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!*(v2 + 16))
        {
          goto LABEL_79;
        }

        goto LABEL_10;
      }
    }

    v2 = sub_23316B804(v2);
    v1[5] = v2;
    if (!*(v2 + 16))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_10:
    *(v2 + 32) = 1;
    v9 = v37 - 1;
    if (v37 != 1)
    {
      v29 = v1 + 6;
      v3 = 2;
      while (v3 < v1[2])
      {
        v2 = *v29;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *v29 = v2;
        if (v30)
        {
          if (!*(v2 + 16))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v2 = sub_23316B804(v2);
          *v29 = v2;
          if (!*(v2 + 16))
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        *(v2 + 32) = v3++;
        ++v29;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_11:
    if (v1[2])
    {
      v3 = (v1 + 4);
      v2 = v1[4];
      result = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v2;
      if (result)
      {
        goto LABEL_13;
      }

      goto LABEL_81;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = sub_23316B804(v2);
    v2 = result;
LABEL_13:
    if (*(v2 + 16) < 2uLL)
    {
      __break(1u);
      goto LABEL_83;
    }

    *(v2 + 40) = 1;
    *v3 = v2;
    v9 = v6 - 1;
    if (v6 == 1)
    {
      break;
    }

LABEL_52:
    v31 = 6;
    while (v1[2])
    {
      v2 = *v3;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v2;
      if ((v32 & 1) == 0)
      {
        v2 = sub_23316B804(v2);
        *v3 = v2;
      }

      if ((v31 - 4) >= *(v2 + 16))
      {
        goto LABEL_72;
      }

      *(v2 + 8 * v31) = v31 - 4;
      ++v31;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    v1 = sub_23316B818(v1);
  }

LABEL_15:
  v10 = 0;
  v11 = 1;
  while (2)
  {
    v12 = 0;
    do
    {
      v13 = v6;
      sub_23328DA7C();
      v2 = sub_23328DAFC();
      v6 = v14;
      sub_23328DA7C();
      v16 = v2 == sub_23328DAFC() && v6 == v15;
      if (v16)
      {

        v17 = 0;
      }

      else
      {
        v2 = sub_23328E54C();

        v17 = (v2 & 1) == 0;
      }

      v18 = v1[2];
      if (v10 >= v18)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v2 = v12 + 1;
      v19 = *(v3 + 8 * v10);
      if (v12 + 1 >= *(v19 + 16))
      {
        goto LABEL_63;
      }

      v20 = v19 + 8 * v12;
      v21 = *(v20 + 40);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_64;
      }

      if (v11 >= v18)
      {
        goto LABEL_65;
      }

      v6 = *(v3 + 8 * v11);
      if (v12 >= *(v6 + 16))
      {
        goto LABEL_66;
      }

      v24 = *(v6 + 8 * v12 + 32);
      v22 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v22)
      {
        goto LABEL_67;
      }

      v26 = *(v20 + 32);
      v22 = __OFADD__(v26, v17);
      v27 = v26 + v17;
      if (v22)
      {
        goto LABEL_68;
      }

      if (v25 < v23)
      {
        v23 = v25;
      }

      if (v27 >= v23)
      {
        v28 = v23;
      }

      else
      {
        v28 = v27;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 8 * v11) = v6;
      if ((result & 1) == 0)
      {
        result = sub_23316B804(v6);
        v6 = result;
        *(v3 + 8 * v11) = result;
      }

      if (v2 >= *(v6 + 16))
      {
        goto LABEL_69;
      }

      *(v6 + 8 * v12++ + 40) = v28;
      v6 = v13;
    }

    while (v13 != v12);
    v10 = v11;
    v16 = v11++ == v37;
    if (!v16)
    {
      continue;
    }

    break;
  }

  v33 = v1[2];
  if (v33)
  {
    v34 = *(v3 + 8 * v33 - 8);
    v35 = *(v34 + 16);
    if (!v35)
    {
      goto LABEL_84;
    }

    v36 = *(v34 + 8 * v35 + 24);

    return v36;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t String.ttsvb_normalizedForSpeechComparison.getter(uint64_t a1, unint64_t a2)
{

  v5 = sub_233169E3C(0x7FFFFFFFFFFFFFFFLL, 1, a1, a2, v4);
  swift_getKeyPath();
  v6 = *(v5 + 2);
  if (v6)
  {
    v30 = MEMORY[0x277D84F90];
    sub_23312676C(0, v6, 0);
    v7 = v30;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v25 = *(v8 - 3);
      v26 = v9;
      v27 = v10;

      swift_getAtKeyPath();

      v11 = v28;
      v12 = v29;
      v30 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23312676C((v13 > 1), v14 + 1, 1);
        v7 = v30;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
  v16 = sub_23328D8FC();
  v18 = v17;

  *&v25 = v16;
  *(&v25 + 1) = v18;
  v19 = sub_23328C8EC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328C8DC();
  sub_23311A294();
  v23 = sub_23328E05C();
  (*(v20 + 8))(v22, v19);

  return v23;
}

char *sub_233169E3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v8 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (a1)
  {
    v13 = (a4 & 0x2000000000000000) != 0 ? HIBYTE(a4) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
    if (v13)
    {
      v14 = 4 * v13;
      v6 = MEMORY[0x277D84F90];
      v11 = 15;
      do
      {
        v9 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          break;
        }

        while (1)
        {
          sub_23328DAFC();
          v15 = sub_23328D8EC();

          if (v15)
          {
            do
            {
              v9 = sub_23328DA5C() >> 14;
              if (v9 == v14)
              {
                goto LABEL_28;
              }

              sub_23328DAFC();
              v10 = sub_23328D8EC();
            }

            while ((v10 & 1) != 0);
          }

          if (v11 >> 14 != v9 || (a2 & 1) == 0)
          {
            break;
          }

          v11 = sub_23328DA5C();
          v9 = v11 >> 14;
          if (v11 >> 14 == v14)
          {
            goto LABEL_28;
          }
        }

        if (v9 < v11 >> 14)
        {
          __break(1u);
          return result;
        }

        v10 = sub_23328DB0C();
        v18 = v17;
        v30 = v20;
        v31 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_23316B6F8(0, *(v6 + 2) + 1, 1, v6);
        }

        v9 = *(v6 + 2);
        v21 = *(v6 + 3);
        if (v9 >= v21 >> 1)
        {
          v6 = sub_23316B6F8((v21 > 1), v9 + 1, 1, v6);
        }

        *(v6 + 2) = v9 + 1;
        v22 = &v6[32 * v9];
        *(v22 + 4) = v10;
        *(v22 + 5) = v18;
        *(v22 + 6) = v31;
        *(v22 + 7) = v30;
        v11 = sub_23328DA5C();
      }

      while (*(v6 + 2) != a1);
LABEL_28:
      if (v11 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v6;
      }

      if (v14 < v11 >> 14)
      {
        __break(1u);
      }

      else
      {
        v8 = sub_23328DB0C();
        v9 = v26;
        v10 = v27;
        v11 = v28;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          v5 = *(v6 + 2);
          a5 = *(v6 + 3);
LABEL_35:
          v7 = v5 + 1;
          if (v5 < a5 >> 1)
          {
LABEL_36:
            *(v6 + 2) = v7;
            v29 = &v6[32 * v5];
            *(v29 + 4) = v8;
            *(v29 + 5) = v9;
            *(v29 + 6) = v10;
            *(v29 + 7) = v11;
            return v6;
          }

LABEL_39:
          v6 = sub_23316B6F8((a5 > 1), v7, 1, v6);
          goto LABEL_36;
        }
      }

      v6 = sub_23316B6F8(0, *(v6 + 2) + 1, 1, v6);
      goto LABEL_34;
    }
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 || (a2 & 1) == 0)
  {
    v8 = sub_23328DB0C();
    v9 = v23;
    v10 = v24;
    v11 = v25;

    v6 = sub_23316B6F8(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v6 + 2);
    a5 = *(v6 + 3);
    goto LABEL_35;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23316A1C8@<X0>(uint64_t *a5@<X8>)
{
  sub_23316B8C8();
  result = sub_23328E04C();
  *a5 = result;
  a5[1] = v7;
  return result;
}

Swift::UInt64 __swiftcall TTSVBTimestampInNanoseconds(when:)(Swift::UInt64_optional when)
{
  is_nil = when.is_nil;
  value = when.value;
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  mach_timebase_info(v4);
  if (is_nil)
  {
    value = mach_absolute_time();
  }

  if (!is_mul_ok(value, v4[0].numer))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!v4[0].denom)
  {
    goto LABEL_7;
  }

  return value * v4[0].numer / v4[0].denom;
}

Swift::Double __swiftcall TTSVBTimestampInSeconds(when:)(Swift::UInt64_optional when)
{
  is_nil = when.is_nil;
  value = when.value;
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  mach_timebase_info(v4);
  if (is_nil)
  {
    value = mach_absolute_time();
  }

  if (!is_mul_ok(value, v4[0].numer))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!v4[0].denom)
  {
    goto LABEL_7;
  }

  return (value * v4[0].numer / v4[0].denom) / 1000000000.0;
}

uint64_t sub_23316A360(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D839F8];
  *(v2 + 16) = xmmword_233297B30;
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  return sub_23328D9BC();
}

uint64_t static Array<A>.fromData(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23328C85C();
  swift_allocObject();
  sub_23328C84C();
  sub_23328DC5C();
  swift_getWitnessTable();
  sub_23328C83C();

  return v4;
}

uint64_t Array<A>.toData()(uint64_t a1, uint64_t a2)
{
  sub_23328C8BC();
  swift_allocObject();
  sub_23328C8AC();
  sub_23328DC5C();
  swift_getWitnessTable();
  v2 = sub_23328C89C();

  return v2;
}

Swift::Bool __swiftcall TTSVBDeviceSupportsV2Voices()()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

    LOBYTE(v0) = deviceSupportsGenerativeModelSystems;
  }

  else
  {
    __break(1u);
  }

  return v0;
}

void TTSVBRequireDiskSpaceAvailableForTraining(inMode:)(uint64_t a1)
{
  v125 = a1;
  v124 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v124);
  v2 = v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23328D6EC();
  v126 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v101 - v7;
  v9 = type metadata accessor for TTSVBPath(0);
  MEMORY[0x28223BE20](v9);
  v11 = v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *sub_2331DEBE8();
  *&v128 = v12;
  swift_storeEnumTagMultiPayload();
  v13 = sub_23328CC9C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v12;
  TTSVBPath.url.getter(v16);
  sub_23316B91C(v11);
  v18 = v127;
  sub_2331E17B4(v16);
  if (v18)
  {
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v20 = v19;
    v122 = 0;
    v123 = v2;
    v21 = v5;
    v22 = v126;
    (*(v14 + 8))(v16, v13);

    v23 = v125;
    if (v125 == 2)
    {
      v24 = 486000000;
    }

    else
    {
      v24 = 73000000;
    }

    v25 = v3;
    if (v20 >= v24)
    {
      v63 = sub_233225514();
      (*(v22 + 16))(v21, v63, v3);
      v64 = sub_23328D6CC();
      v65 = sub_23328DE4C();
      v66 = v65;
      if (os_log_type_enabled(v64, v65))
      {
        v67 = swift_slowAlloc();
        LODWORD(v120) = v66;
        v68 = v67;
        v121 = swift_slowAlloc();
        v131 = v121;
        v117 = v68;
        *v68 = 134218498;
        *(v68 + 4) = v23;
        *(v68 + 12) = 2080;
        v130 = v24;
        v69 = sub_23328CA4C();
        v115 = v101;
        v70 = *(v69 - 8);
        v123 = v69;
        v124 = v70;
        v110 = *(v70 + 64);
        MEMORY[0x28223BE20](v69);
        v116 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
        v72 = v101 - v116;
        v73 = sub_23328CA1C();
        v104 = v101;
        v74 = *(v73 - 8);
        v119 = v21;
        v75 = v74;
        v113 = *(v74 + 64);
        v76 = MEMORY[0x28223BE20](v73);
        v114 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
        v125 = v25;
        v78 = v101 - v114;
        LODWORD(v112) = *MEMORY[0x277CC8DE0];
        v111 = *(v75 + 104);
        v111(v101 - v114, v76);
        v79 = sub_23328CA3C();
        v127 = v20;
        v118 = v64;
        v80 = v79;
        v107 = v79;
        v81 = *(v79 - 8);
        v108 = *(v81 + 64);
        MEMORY[0x28223BE20](v79);
        v109 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
        v83 = v101 - v109;
        sub_23328CA2C();
        sub_23328C82C();
        v106 = *(v81 + 8);
        v106(v83, v80);
        v105 = *(v75 + 8);
        v105(v78, v73);
        v104 = sub_233125A3C();
        v103 = sub_2331259F0();
        v84 = v123;
        sub_23328E0BC();
        v85 = *(v124 + 8);
        v124 += 8;
        v102 = v85;
        (v85)(v72, v84);
        v86 = sub_23311A8F4(v128, *(&v128 + 1), &v131);

        v115 = v101;
        v88 = v117;
        *(v117 + 14) = v86;
        *(v88 + 22) = 2080;
        v130 = v127;
        MEMORY[0x28223BE20](v87);
        v89 = v101 - v116;
        v91 = MEMORY[0x28223BE20](v90);
        v92 = v101 - v114;
        v93 = (v111)(v101 - v114, v112, v73, v91);
        MEMORY[0x28223BE20](v93);
        v94 = v101 - v109;
        sub_23328CA2C();
        sub_23328C82C();
        v106(v94, v107);
        v105(v92, v73);
        v95 = v123;
        sub_23328E0BC();
        (v102)(v89, v95);
        v96 = sub_23311A8F4(v128, *(&v128 + 1), &v131);

        *(v88 + 24) = v96;
        v97 = v118;
        _os_log_impl(&dword_233109000, v118, v120, "Sufficient space available to train model. Mode=%ld, Required space=%s, Available space=%s", v88, 0x20u);
        v98 = v121;
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v98, -1, -1);
        MEMORY[0x23839CFD0](v88, -1, -1);

        (*(v126 + 8))(v119, v125);
      }

      else
      {

        (*(v22 + 8))(v21, v3);
      }
    }

    else
    {
      v127 = v20;
      v26 = sub_233225514();
      v27 = v8;
      (*(v22 + 16))(v8, v26, v3);
      v28 = sub_23328D6CC();
      v29 = sub_23328DE3C();
      v30 = v29;
      if (os_log_type_enabled(v28, v29))
      {
        v31 = swift_slowAlloc();
        LODWORD(v117) = v30;
        v32 = v31;
        v118 = swift_slowAlloc();
        v131 = v118;
        v121 = v32;
        *v32 = 134218498;
        *(v32 + 4) = v23;
        *(v32 + 12) = 2080;
        v130 = v24;
        v120 = sub_23328CA4C();
        v112 = v101;
        v122 = *(v120 - 8);
        v113 = *(v122 + 64);
        MEMORY[0x28223BE20](v120);
        v114 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
        v34 = v101 - v114;
        v35 = sub_23328CA1C();
        v116 = v27;
        v36 = v35;
        v102 = v101;
        v37 = *(v35 - 8);
        v110 = v37[8];
        v38 = MEMORY[0x28223BE20](v35);
        v111 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        v125 = v25;
        v40 = (v101 - v111);
        LODWORD(v109) = *MEMORY[0x277CC8DE0];
        v108 = v37[13];
        v108(v101 - v111, v38);
        v41 = sub_23328CA3C();
        v119 = v24;
        v105 = v41;
        v42 = *(v41 - 8);
        v115 = v28;
        v43 = v42;
        v106 = *(v42 + 64);
        MEMORY[0x28223BE20](v41);
        v107 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
        v45 = v101 - v107;
        sub_23328CA2C();
        sub_23328C82C();
        v104 = *(v43 + 8);
        v104(v45, v41);
        v103 = v37[1];
        v103(v40, v36);
        v102 = sub_233125A3C();
        v101[1] = sub_2331259F0();
        v46 = v120;
        sub_23328E0BC();
        v47 = *(v122 + 8);
        v122 += 8;
        v101[0] = v47;
        v47(v34, v46);
        v48 = sub_23311A8F4(v128, *(&v128 + 1), &v131);

        v112 = v101;
        v50 = v121;
        *(v121 + 14) = v48;
        *(v50 + 22) = 2080;
        v51 = v127;
        v130 = v127;
        MEMORY[0x28223BE20](v49);
        v52 = v101 - v114;
        v54 = MEMORY[0x28223BE20](v53);
        v55 = (v101 - v111);
        v56 = (v108)(v101 - v111, v109, v36, v54);
        MEMORY[0x28223BE20](v56);
        v57 = v101 - v107;
        sub_23328CA2C();
        sub_23328C82C();
        v104(v57, v105);
        v103(v55, v36);
        v24 = v119;
        v58 = v120;
        sub_23328E0BC();
        (v101[0])(v52, v58);
        v59 = sub_23311A8F4(v128, *(&v128 + 1), &v131);

        v60 = v121;
        *(v121 + 24) = v59;
        v61 = v115;
        _os_log_impl(&dword_233109000, v115, v117, "Not enough space available to train model. Mode=%ld, Required space=%s, Available space=%s", v60, 0x20u);
        v62 = v118;
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v62, -1, -1);
        MEMORY[0x23839CFD0](v60, -1, -1);

        (*(v126 + 8))(v116, v125);
      }

      else
      {

        (*(v22 + 8))(v27, v3);
        v51 = v127;
      }

      v99 = v123;
      v128 = xmmword_233298590;
      v129 = 3;
      *v123 = v51;
      *(v99 + 8) = v24;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_23311A3F8();
      swift_allocError();
      TTSVBError.init(_:_:_:)(&v128, v99, 0, v100);
      swift_willThrow();
    }
  }
}

char *sub_23316B4C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26C0, &qword_233298770);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_23316B5C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26C8, &qword_233298778);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26D0, &unk_233298780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23316B6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26B8, &qword_233298768);
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

uint64_t sub_23316B82C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26D0, &unk_233298780);
    v4 = sub_23328DC3C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

unint64_t sub_23316B8C8()
{
  result = qword_27DDE2690;
  if (!qword_27DDE2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2690);
  }

  return result;
}

uint64_t sub_23316B91C(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBPath(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23316B97C()
{
  result = qword_27DDE2698;
  if (!qword_27DDE2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2698);
  }

  return result;
}

unint64_t sub_23316BA24()
{
  result = qword_27DDE26B0;
  if (!qword_27DDE26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE26B0);
  }

  return result;
}

void sub_23316BA78()
{
  if (*(v0 + 24) == 1)
  {
    v1 = (*(*v0 + 448))();
    v2 = ceilf(v1 / (*(*v0 + 472))());
    if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v2 > -9.2234e18)
    {
      if (v2 < 9.2234e18)
      {
        *(v0 + 16) = v2;
        *(v0 + 24) = 0;
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_23316BB58(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  return result;
}

uint64_t (*sub_23316BB64(void *a1))()
{
  a1[1] = v1;
  sub_23316BA78();
  *a1 = v3;
  return sub_23316BBAC;
}

void *sub_23316BBAC(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 0;
  return result;
}

void sub_23316BBBC()
{
  if (*(v0 + 40) == 1)
  {
    v1 = (*(*v0 + 184))();
    v2 = round(log2(v1));
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -1.0)
    {
      if (v2 < 1.84467441e19)
      {
        *(v0 + 32) = v2;
        *(v0 + 40) = 0;
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_23316BC60(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t (*sub_23316BC6C(void *a1))()
{
  a1[1] = v1;
  sub_23316BBBC();
  *a1 = v3;
  return sub_23316BCB4;
}

void *sub_23316BCB4(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_23316BCC4()
{
  if (*(v0 + 56) != 1)
  {
    return *(v0 + 48);
  }

  v1 = (*(*v0 + 208))();
  if (v1 >= 0x40)
  {
    result = 0;
  }

  else
  {
    result = 1 << v1;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_23316BD2C(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 0;
  return result;
}

uint64_t (*sub_23316BD38(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_23316BCC4();
  return sub_23316BD80;
}

void *sub_23316BD80(void *result)
{
  v1 = result[1];
  *(v1 + 48) = *result;
  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_23316BD90()
{
  if (*(v0 + 72) != 1)
  {
    return *(v0 + 64);
  }

  result = (*(*v0 + 232))() / 2;
  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

uint64_t sub_23316BDF0(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 72) = 0;
  return result;
}

uint64_t (*sub_23316BDFC(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_23316BD90();
  return sub_23316BE44;
}

void *sub_23316BE44(void *result)
{
  v1 = result[1];
  *(v1 + 64) = *result;
  *(v1 + 72) = 0;
  return result;
}

float sub_23316BE54()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 76);
  }

  result = 2.0 / (*(*v0 + 256))();
  *(v0 + 76) = result;
  *(v0 + 80) = 0;
  return result;
}

uint64_t *(*sub_23316BEC8(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = sub_23316BE54();
  return sub_23316BF10;
}

uint64_t *sub_23316BF10(uint64_t *result)
{
  v1 = *result;
  *(v1 + 76) = *(result + 2);
  *(v1 + 80) = 0;
  return result;
}

uint64_t sub_23316BF24()
{
  v1 = v0[11];
  if (v1)
  {

    return v1;
  }

  result = (*(*v0 + 256))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v3 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v3;
      bzero((v1 + 32), 4 * v3);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v0[11] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23316BFF0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316BF24();
  return sub_23316C038;
}

uint64_t sub_23316C048()
{
  v1 = v0[12];
  if (v1)
  {

    return v1;
  }

  result = (*(*v0 + 256))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v3 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v3;
      bzero((v1 + 32), 4 * v3);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v0[12] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23316C114(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C048();
  return sub_23316C15C;
}

uint64_t sub_23316C16C()
{
  v1 = v0[13];
  if (v1)
  {

    return v1;
  }

  result = (*(*v0 + 232))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v3 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v3;
      bzero((v1 + 32), 4 * v3);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v0[13] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23316C230(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C16C();
  return sub_23316C278;
}

uint64_t sub_23316C288()
{
  v1 = v0[14];
  if (v1)
  {

    return v1;
  }

  result = (*(*v0 + 256))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v3 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v3;
      bzero((v1 + 32), 4 * v3);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v0[14] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23316C354(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C288();
  return sub_23316C39C;
}

vDSP_Length sub_23316C3AC()
{
  v1 = v0[15];
  if (v1)
  {

    return v1;
  }

  v2 = *(*v0 + 232);
  result = v2();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v4 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v4;
      bzero((v1 + 32), 4 * v4);
      result = v2();
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_6:
        vDSP_hann_window((v1 + 32), result, 2);
        v0[15] = v1;

        return v1;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      result = v2();
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23316C4A8(vDSP_Length *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C3AC();
  return sub_23316C4F0;
}

FFTSetup sub_23316C500()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  v1 = (*(*v0 + 208))();
  result = vDSP_create_fftsetup(v1, 0);
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

uint64_t sub_23316C560(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t (*sub_23316C56C(FFTSetup *a1))()
{
  a1[1] = v1;
  *a1 = sub_23316C500();
  return sub_23316C5B4;
}

void *sub_23316C5B4(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t sub_23316C5F8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 140) = a1;
  return result;
}

uint64_t sub_23316C6BC(float a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_23316C74C()
{
  v1 = (*(*v0 + 424))();
  vDSP_destroy_fftsetup(v1);

  return swift_deallocClassInstance();
}

uint64_t sub_23316C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*v3 + 512))(a1, 1024);
  v6 = (*(*v3 + 504))(v5, a3);

  return v6;
}

void sub_23316C87C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!a2)
  {
LABEL_66:
    __break(1u);
    return;
  }

  v5 = sub_23328DC3C();
  v5[1].i64[0] = a2;
  v6 = v5 + 2;
  bzero(&v5[2], 4 * a2);
  v5[2].i32[0] = 0;
  v7 = a2 - 1;
  if (a2 != 1)
  {
    bzero(&v5[2].i32[1], 4 * a2 - 4);
  }

  v8 = (*v2 + 448);
  v9 = *v8;
  v10 = (*v8)();
  v11 = *(a1 + 16);
  v12 = (100.0 / v10) * v11;
  if (COERCE_INT(fabs(v12)) > 2139095039)
  {
    goto LABEL_58;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v13 = (8000.0 / v9()) * v11;
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v13 >= 9.2234e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v14 = v12;
  if (v13 < v12)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFSUB__(v13, v12))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v15 = v12;
  do
  {
    if (__OFSUB__(v15, v14))
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

    v16 = (a2 * (v15 - v14)) / (v13 - v12);
    if ((LODWORD(v16) & 0x7F800000) != 0x7F800000 || (LODWORD(v16) & 0x7FFFFF) == 0)
    {
      if ((LODWORD(v16) & 0x7F800000) == 0x7F800000)
      {
        goto LABEL_50;
      }

      if (v16 <= -9.2234e18)
      {
        goto LABEL_51;
      }

      if (v16 >= 9.2234e18)
      {
        goto LABEL_52;
      }

      v18 = v16;
      if (v16 < a2)
      {
        if (v15 < v11)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          if (v5[1].i64[0] <= v18)
          {
            goto LABEL_56;
          }

          v6->f32[v18] = *(a1 + 32 + 4 * v15) + v6->f32[v18];
          goto LABEL_28;
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

LABEL_28:
    if (v13 == v15)
    {
      goto LABEL_32;
    }
  }

  while (!__OFADD__(v15++, 1));
  __break(1u);
LABEL_32:
  v2 = v5[1].i64[0];
  if (!v2)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v20 = v2 - 1;
  if (v2 - 1 >= v7)
  {
    v20 = (a2 - 1);
  }

  v21 = (v20 + 1);
  if (v21 <= 4)
  {
LABEL_53:
    v23 = 0;
    goto LABEL_40;
  }

  v22 = v21 & 3;
  if ((v21 & 3) == 0)
  {
    v22 = 4;
  }

  v23 = v21 - v22;
  v52 = xmmword_233298790;
  __asm
  {
    FMOV            V2.4S, #6.0
    FMOV            V0.4S, #1.0
  }

  v50 = _Q0;
  v51 = xmmword_2332987A0;
  v47 = vdupq_n_s32(0x3ECCCCCDu);
  v48 = _Q2;
  v46 = vdupq_n_s32(0x40266666u);
  v28 = v21 - v22;
  do
  {
    v58 = vmulq_f32(*v6, v48);
    v53 = powf(v58.f32[1], 0.66667);
    v29.f32[0] = powf(v58.f32[0], 0.66667);
    v29.f32[1] = v53;
    v54 = v29;
    v30 = powf(v58.f32[2], 0.66667);
    v31 = v54;
    v31.f32[2] = v30;
    v55 = v31;
    v32 = powf(v58.f32[3], 0.66667);
    v33 = v55;
    v33.f32[3] = v32;
    v49 = vbslq_s8(vcgtq_f32(v33, v50), v50, v33);
    v59 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v51)), vcvtq_f64_u64(v52)), v47);
    v55.i32[0] = powf(v59.f32[1], 0.33333);
    v34.f32[0] = powf(v59.f32[0], 0.33333);
    v34.i32[1] = v55.i32[0];
    v56 = v34;
    v35 = powf(v59.f32[2], 0.33333);
    v36 = v56;
    v36.f32[2] = v35;
    v57 = v36;
    v37 = powf(v59.f32[3], 0.33333);
    v38 = v57;
    v38.f32[3] = v37;
    v39 = vmulq_f32(v38, v46);
    v38.i64[0] = 0x3F0000003F000000;
    v38.i64[1] = 0x3F0000003F000000;
    v40 = vmulq_f32(v49, vaddq_f32(v39, v38));
    *v6++ = vbslq_s8(vcgtq_f32(v40, v50), v50, v40);
    v41 = vdupq_n_s64(4uLL);
    v51 = vaddq_s64(v51, v41);
    v52 = vaddq_s64(v52, v41);
    v28 -= 4;
  }

  while (v28);
LABEL_40:
  while (1)
  {
    v42 = &v5->f32[v23];
    v43 = powf(v42[8] * 6.0, 0.66667);
    v44 = v43 <= 1.0 ? v43 : 1.0;
    v45 = v44 * ((powf(v23 * 0.4, 0.33333) * 2.6) + 0.5);
    if (v45 > 1.0)
    {
      v45 = 1.0;
    }

    v42[8] = v45;
    if (v7 == v23)
    {
      break;
    }

    if (++v23 >= v2)
    {
      goto LABEL_47;
    }
  }
}

uint64_t sub_23316CD74(uint64_t a1, unsigned int a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a2)
  {
    v4 = sub_23328DC3C();
    *(v4 + 16) = v3;
    v46 = v4;
    bzero((v4 + 32), 4 * v3);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v45 = (*(*v2 + 320))(v51);
  v6 = v5;
  v7 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_23316D4D8(v7);
    *v6 = v7;
  }

  v42 = (*(*v2 + 344))(v50);
  v10 = v9;
  v11 = *v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  v44 = v6;
  v41 = v10;
  if ((v12 & 1) == 0)
  {
    v11 = sub_23316D4D8(v11);
    *v10 = v11;
  }

  v43 = v7;
  __Z.realp = (v7 + 32);
  __Z.imagp = (v11 + 32);
  v13 = (*(*v2 + 400))();
  v14 = *(*v2 + 368);
  v15 = v14(v49);
  v17 = v16;
  v18 = *v16;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((v19 & 1) == 0)
  {
    v18 = sub_23316D3D4(0, *(v18 + 2), 0, v18);
  }

  *v17 = v18;

  MEMORY[0x23839D1A0](a1, 1, v13 + 32, 1, v18 + 32, 1, v3);
  v15(v49, 0);

  v20 = v14(v49);
  v22 = v21;
  v23 = *v21;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_23316D4D8(v23);
    *v22 = v23;
  }

  (*(*v2 + 352))();

  vDSP_ctoz(v23 + 4, 2, &__Z, 1, v3);
  v25 = v20(v49, 0);
  v26 = (*(*v2 + 424))(v25);
  if (!v26)
  {
    __break(1u);
  }

  v27 = v26;
  v28 = (*(*v2 + 208))();
  vDSP_fft_zrip(v27, &__Z, 1, v28, 1);
  v29 = (*(*v2 + 392))(v49);
  v31 = v30;
  v32 = *v30;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_23316D3D4(0, *(v32 + 2), 0, v32);
  }

  *v31 = v32;

  vDSP_zvmags(&__Z, 1, v32 + 8, 1, v3);
  v29(v49, 0);

  v35 = *(*v2 + 376);
  v49[0] = v35(v34);
  MEMORY[0x28223BE20](*(v49[0] + 16));
  v37 = sub_23316D4EC(v36, sub_23316D674);

  v38 = (*(*v2 + 384))(v37);
  v39 = v35(v38);
  LODWORD(v49[0]) = (*(*v2 + 280))();
  MEMORY[0x23839D1B0](v39 + 32, 1, v49, v46 + 32, 1, v3);

  *v41 = v11;
  v42(v50, 0);
  *v44 = v43;
  v45(v51, 0);
  return v46;
}

double sub_23316D364()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 1;
  result = 134217764.0;
  *(v0 + 140) = 0x41A00000473B8000;
  return result;
}

char *sub_23316D3D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26D8, &qword_233298850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_23316D4EC(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_23328DC3C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_23316D5EC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 >> 31)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v3 = *(a1 + 16);
  if (!*a2)
  {
    goto LABEL_7;
  }

  vvsqrtf(*a2, (a1 + 32), &v3);
}

void sub_23316D674(uint64_t a1, void *a2)
{
  v4 = **(v2 + 16);
  sub_23316D5EC(v4, a1);
  *a2 = *(v4 + 16);
}

uint64_t sub_23316D6E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE089F8);
  __swift_project_value_buffer(v3, qword_27DE089F8);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

uint64_t sub_23316D84C()
{
  sub_23328D20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (*(v0 + 48))
  {
LABEL_11:
    v5 = sub_233237A1C();
    v6 = *v5;
    *(v0 + 24) = *v5;
    v7 = *(*v6 + 344);

    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 32) = v8;
    *v8 = v0;
    v8[1] = sub_23316DAFC;

    return v11();
  }

  sub_23328D30C();
  sub_23328D28C();

  v2 = sub_23328E6CC();
  if (v3)
  {
    if (v2 == 121 && v3 == 0xE100000000000000)
    {

      goto LABEL_11;
    }

    v4 = sub_23328E54C();

    if (v4)
    {
      goto LABEL_11;
    }
  }

  sub_23328D30C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E0, &unk_23329B9C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_233297B30;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = 0xD00000000000003CLL;
  *(v9 + 40) = 0x80000002332A7D60;
  sub_23328D26C();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23316DAFC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23316DC38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23316DC38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23316DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23316DD34(uint64_t a1)
{
  v2 = sub_23316E164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23316DD70(uint64_t a1)
{
  v2 = sub_23316E164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23316DDAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E8, qword_233298860);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_23328D4DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _s12ResetCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v16 = sub_23328D3CC();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  sub_23328D4CC();
  sub_23328D58C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23316E164();
  v17 = v24;
  sub_23328E68C();
  if (!v17)
  {
    v18 = v22;
    sub_233126AC4();
    sub_23328E41C();
    (*(v23 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_23316E214(v15, v21);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23316E1B8(v15);
}

uint64_t _s12ResetCommandVMa(uint64_t a1)
{
  result = qword_27DDF3A40;
  if (!qword_27DDF3A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23316E164()
{
  result = qword_27DDF3738[0];
  if (!qword_27DDF3738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3738);
  }

  return result;
}

uint64_t sub_23316E1B8(uint64_t a1)
{
  v2 = _s12ResetCommandVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23316E214(uint64_t a1, uint64_t a2)
{
  v4 = _s12ResetCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23316E2E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23316D82C();
}

uint64_t sub_23316E3A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_23316E590(&qword_27DDE26F0, &unk_233298898);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_23316E49C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF3730 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE089F8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23316E590(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s12ResetCommandVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23316E5D4()
{
  v0 = sub_23328D4DC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  sub_23328D3BC();
  v4 = sub_23328D3CC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  sub_23328D4CC();
  return sub_23328D58C();
}

void sub_23316E74C(uint64_t a1)
{
  sub_23316E7B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23316E7B8()
{
  if (!qword_27DDE1A68)
  {
    v0 = sub_23328D5AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE1A68);
    }
  }
}

unint64_t sub_23316E81C()
{
  result = qword_27DDF3B50[0];
  if (!qword_27DDF3B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3B50);
  }

  return result;
}

unint64_t sub_23316E874()
{
  result = qword_27DDF3C60;
  if (!qword_27DDF3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF3C60);
  }

  return result;
}

unint64_t sub_23316E8CC()
{
  result = qword_27DDF3C68[0];
  if (!qword_27DDF3C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3C68);
  }

  return result;
}

id sub_23316E920()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_23316E98C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 relativePath];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_23316E9F4(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_23328D95C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRelativePath_];
}

id sub_23316EA64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 model];
  *a2 = result;
  return result;
}

id sub_23316EAB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileFuture];
  *a2 = result;
  return result;
}

id TTSVBCloudVoiceModelFileMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBCloudVoiceModelFileMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBCloudVoiceModelFileMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBCloudVoiceModelFileMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBCloudVoiceModelFileMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23316EC70@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TTSVBCloudVoiceModelFileMO();
  result = sub_23328E25C();
  *a2 = result;
  return result;
}

uint64_t sub_23316ED00(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7261656C63;
  }

  else
  {
    v2 = 0x746E697270;
  }

  if (*a2)
  {
    v3 = 0x7261656C63;
  }

  else
  {
    v3 = 0x746E697270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23328E54C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23316ED80()
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23316EDF0(uint64_t a1)
{
  sub_23328DA3C();
}

uint64_t sub_23316EE44(uint64_t a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23316EEB0@<X0>(char *a2@<X8>)
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

void sub_23316EF10(uint64_t *a1@<X8>)
{
  v2 = 0x746E697270;
  if (*v1)
  {
    v2 = 0x7261656C63;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_23316EF58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_23328D51C();
  __swift_allocate_value_buffer(v3, qword_27DE08A10);
  __swift_project_value_buffer(v3, qword_27DE08A10);
  v4 = sub_23328D4DC();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return sub_23328D50C();
}

unint64_t sub_23316F09C()
{
  result = qword_27DDE2718;
  if (!qword_27DDE2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2718);
  }

  return result;
}

uint64_t sub_23316F0F0()
{
  *(v1 + 24) = v0;

  return MEMORY[0x2822009F8](sub_23316F180, 0, 0);
}

uint64_t sub_23316F180()
{
  v52 = v0;
  v51[2] = *MEMORY[0x277D85DE8];
  sub_23328D20C();
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = swift_task_alloc();
  static TTSVBPath.longLivedLogsDirectoryURL()();
  swift_task_alloc();
  v4 = *(v2 + 16);
  v4();
  sub_23328D2EC();
  swift_allocObject();
  v48 = v4;
  sub_23328D2DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2720, &qword_233298B58);
  sub_23328D54C();
  if ((*(v0 + 32) & 1) == 0)
  {

    goto LABEL_11;
  }

  v7 = sub_23328E54C();

  if (v7)
  {
LABEL_11:
    v47 = v2;
    v12 = [objc_opt_self() defaultManager];
    v13 = sub_23328CBCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_233297B30;
    v15 = *MEMORY[0x277CBE7C0];
    *(v14 + 32) = *MEMORY[0x277CBE7C0];
    type metadata accessor for URLResourceKey(0);
    v16 = v15;
    v17 = sub_23328DBDC();

    *(v0 + 16) = 0;
    v18 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:v17 options:0 error:v0 + 16];

    v19 = *(v0 + 16);
    if (!v18)
    {
      v36 = v19;
      sub_23328CA7C();

      swift_willThrow();

      (*(v47 + 8))(v3, v1);

      v5 = *(v0 + 8);
      goto LABEL_2;
    }

    v42 = v3;
    v43 = v0;
    v20 = sub_23328DBFC();
    v21 = v19;

    v22 = *(v20 + 16);
    v23 = swift_task_alloc();
    v24 = v47;
    if (!v22)
    {
      v26 = MEMORY[0x277D84F90];
LABEL_28:

      v51[0] = v26;

      sub_233170CDC(v51);

      v37 = v51[0];
      v38 = swift_task_alloc();
      v50 = *(v37 + 16);
      if (v50)
      {
        v39 = 0;
        v46 = v37;
        while (v39 < *(v37 + 16))
        {
          (v48)(v38, v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39, v1);
          sub_23328D30C();
          v40 = swift_task_alloc();
          sub_23328CBDC();
          sub_23328CB9C();
          v41 = *(v47 + 8);
          v41(v40, v1);
          sub_23328D24C();

          sub_23328D9DC();
          swift_task_alloc();
          sub_23328D9CC();
          sub_23328D91C();
          ++v39;
          v41(v38, v1);

          sub_23328D30C();
          sub_23328D27C();

          v37 = v46;
          if (v50 == v39)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        __break(1u);
      }

      v41 = *(v24 + 8);
LABEL_34:
      v41(v42, v1);

      v0 = v43;
      goto LABEL_36;
    }

    v25 = 0;
    v49 = (v47 + 32);
    v26 = MEMORY[0x277D84F90];
    v44 = v1;
    v45 = v20;
    while (1)
    {
      if (v25 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v28 = v20 + v27;
      v29 = *(v24 + 72);
      (v48)(v23, v28 + v29 * v25, v1);
      if (sub_23328CB4C() == 6778732 && v30 == 0xE300000000000000)
      {
        break;
      }

      v31 = sub_23328E54C();

      if (v31)
      {
        goto LABEL_21;
      }

      (*(v47 + 8))(v23, v1);
LABEL_15:
      ++v25;

      v23 = swift_task_alloc();
      v20 = v45;
      if (v22 == v25)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    v32 = swift_task_alloc();
    v33 = *v49;
    (*v49)(v32, v23, v1);
    v51[0] = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_233173E80(0, *(v26 + 16) + 1, 1);
      v26 = v51[0];
    }

    v35 = *(v26 + 16);
    v34 = *(v26 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_233173E80((v34 > 1), v35 + 1, 1);
      v26 = v51[0];
    }

    *(v26 + 16) = v35 + 1;
    v1 = v44;
    v33(v26 + v27 + v35 * v29, v32, v44);

    v24 = v47;
    goto LABEL_15;
  }

  sub_23328D54C();
  if (*(v0 + 33) & 1) != 0 || (sub_23328E54C())
  {
    sub_23328D30C();
    sub_23328D27C();

    v8 = sub_23328CE1C();
    v9 = v2;
    v10 = *(v8 - 8);
    v11 = swift_task_alloc();
    sub_23328CE0C();
    sub_23328D2AC();

    (*(v10 + 8))(v11, v8);
    (*(v9 + 8))(v3, v1);
  }

  else
  {
    (*(v2 + 8))(v3, v1);
  }

LABEL_36:

  v5 = *(v0 + 8);
LABEL_2:

  return v5();
}

uint64_t sub_23316FB48(uint64_t *a1, uint64_t a2)
{
  v41 = a2;
  v36 = a1;
  v43 = sub_23328CE1C();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = v3;
  v42 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v34 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_23328CA0C();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  inited = swift_initStackObject();
  v37 = xmmword_233297B30;
  *(inited + 16) = xmmword_233297B30;
  v10 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v35 = v10;
  sub_23317473C(inited);
  swift_setDeallocating();
  sub_233174930(inited + 32, type metadata accessor for URLResourceKey);
  v11 = v38;
  sub_23328CB6C();
  v32 = v7;
  if (v11)
  {

    v12 = v43;
    (*(v2 + 56))(v6, 1, 1, v43);
  }

  else
  {

    sub_23328C99C();
    (*(v33 + 8))(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v13 = *(v2 + 48);
    v12 = v43;
    if (v13(v6, 1, v43) != 1)
    {
      v38 = v13;
      v15 = (*(v2 + 32))(v42, v6, v12);
      goto LABEL_6;
    }
  }

  sub_23328CD7C();
  v14 = *(v2 + 48);
  v15 = v14(v6, 1, v12);
  v38 = v14;
  if (v15 != 1)
  {
    v15 = sub_233126838(v6);
  }

LABEL_6:
  v36 = &v31;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &v31;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v22 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_initStackObject();
  *(v23 + 16) = v37;
  *(v23 + 32) = v35;
  v24 = v23 + 32;
  sub_23317473C(v23);
  swift_setDeallocating();
  sub_233174930(v24, type metadata accessor for URLResourceKey);
  sub_23328CB6C();

  sub_23328C99C();
  (*(v33 + 8))(v22, v32);
  v25 = v43;
  v26 = v38;
  if (v38(v20, 1, v43) == 1)
  {
    sub_23328CD7C();
    if (v26(v20, 1, v25) != 1)
    {
      sub_233126838(v20);
    }
  }

  else
  {
    (*(v2 + 32))(v17, v20, v25);
  }

  v27 = v42;
  v28 = sub_23328CDAC();
  v29 = *(v2 + 8);
  v29(v17, v25);
  v29(v27, v25);
  return v28 & 1;
}

uint64_t sub_233170100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233170188(uint64_t a1)
{
  v2 = sub_233173EEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331701C4(uint64_t a1)
{
  v2 = sub_233173EEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233170200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2720, &qword_233298B58);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2730, &qword_233298B70);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_23328D47C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = _s19LongTermLogsCommandVMa(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v16 = sub_23328D3CC();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_23328D46C();
  sub_23316F09C();
  sub_23328D57C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233173EEC();
  v17 = v23;
  sub_23328E68C();
  if (!v17)
  {
    v18 = v21;
    sub_23315246C(&qword_27DDE2738, &qword_27DDE2720, &qword_233298B58, MEMORY[0x277CEEA58]);
    sub_23328E41C();
    (*(v22 + 8))(v8, v6);
    (*(v18 + 40))(v15, v5, v3);
    sub_233173F40(v15, v20);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233174930(v15, _s19LongTermLogsCommandVMa);
}

uint64_t sub_2331705A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23316F0F0();
}

uint64_t sub_23317062C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_233174128(&qword_27DDE2760, _s19LongTermLogsCommandVMa, &unk_233298CC8);
  *v3 = v1;
  v3[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v4);
}

uint64_t sub_233170708@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF3D70 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2331707C8()
{
  v0 = sub_23328D47C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6[-v2];
  v6[15] = 0;
  v4 = sub_23328D3CC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_23328D46C();
  sub_23316F09C();
  return sub_23328D57C();
}

uint64_t sub_233170910(uint64_t a1, id *a2)
{
  result = sub_23328D96C();
  *a2 = 0;
  return result;
}

uint64_t sub_233170988(uint64_t a1, id *a2)
{
  v3 = sub_23328D97C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_233170A08@<X0>(uint64_t *a2@<X8>)
{
  sub_23328D98C();
  v3 = sub_23328D95C();

  *a2 = v3;
  return result;
}

uint64_t sub_233170A4C()
{
  v0 = sub_23328D98C();
  v1 = MEMORY[0x23839B830](v0);

  return v1;
}

uint64_t sub_233170A88(uint64_t a1)
{
  sub_23328D98C();
  sub_23328DA3C();
}

uint64_t sub_233170ADC(uint64_t a1)
{
  sub_23328D98C();
  sub_23328E61C();
  sub_23328DA3C();
  v1 = sub_23328E66C();

  return v1;
}

uint64_t sub_233170B50(void *a1, uint64_t *a2)
{
  v2 = sub_23328D98C();
  v4 = v3;
  if (v2 == sub_23328D98C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23328E54C();
  }

  return v7 & 1;
}

uint64_t sub_233170BD8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23328D95C();

  *a2 = v3;
  return result;
}

uint64_t sub_233170C20(uint64_t a1)
{
  sub_233174128(&qword_27DDE27A8, type metadata accessor for URLResourceKey, &unk_233298F28);
  sub_233174128(&qword_27DDE27B0, type metadata accessor for URLResourceKey, &unk_233298EC8);

  return sub_23328E36C();
}

uint64_t sub_233170CDC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233174728(v2);
  }

  v3 = v2[2];
  v4 = *(sub_23328CC9C() - 8);
  v6[0] = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6[1] = v3;
  result = sub_233170D80(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_233170D80(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_23328E50C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23328CC9C();
        v6 = sub_23328DC3C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23328CC9C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2331717E4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_233170EAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_233170EAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    v71 = *MEMORY[0x277CBE7C0];
    result = sub_23328CC9C();
    v7 = result;
    v8 = *(result - 8);
    v9 = v8[2];
    v8 += 2;
    v70 = v9;
    v11 = v8[6];
    v10 = v8[7];
    v67 = (v8 - 1);
    v69 = v8;
    v64 = (v8 + 2);
    v12 = v6 + v10 * (v4 - 1);
    v63 = -v10;
    v13 = v5 - v4;
    v65 = v6;
    v57 = v10;
    v14 = v6 + v10 * v4;
    v88 = xmmword_233297B30;
    v66 = result;
    v68 = v11;
LABEL_6:
    v62 = v4;
    v59 = v14;
    v60 = v13;
    v15 = v13;
    v61 = v12;
    while (1)
    {
      v76 = v15;
      v87 = &v56;
      v16 = MEMORY[0x28223BE20](result);
      v17 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v75 = v14;
      v18 = v70;
      v19 = (v70)(v17, v14, v7, v16);
      v85 = &v56;
      v20 = MEMORY[0x28223BE20](v19);
      v84 = v17;
      v74 = v12;
      v18(v20);
      v21 = sub_23328CE1C();
      v83 = &v56;
      v78 = v21;
      v90 = *(v21 - 8);
      MEMORY[0x28223BE20](v21);
      v82 = v22;
      v91 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v81 = &v56;
      v24 = *(*(v23 - 8) + 64);
      MEMORY[0x28223BE20](v23 - 8);
      v26 = &v56 - v25;
      v27 = sub_23328CA0C();
      v77 = &v56;
      v73 = *(v27 - 8);
      v28 = *(v73 + 64);
      MEMORY[0x28223BE20](v27);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
      inited = swift_initStackObject();
      *(inited + 16) = v88;
      v30 = v71;
      *(inited + 32) = v71;
      v79 = v30;
      sub_23317473C(inited);
      swift_setDeallocating();
      sub_233174930(inited + 32, type metadata accessor for URLResourceKey);
      v86 = v17;
      v31 = v89;
      sub_23328CB6C();
      v72 = v27;
      if (v31)
      {

        v32 = v90;
        v33 = v78;
        (*(v90 + 56))(v26, 1, 1, v78);
      }

      else
      {

        sub_23328C99C();
        (*(v73 + 8))(&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
        v32 = v90;
        v33 = v78;
        v89 = *(v90 + 48);
        if (v89(v26, 1, v78) != 1)
        {
          v34 = (*(v32 + 32))(v91, v26, v33);
          goto LABEL_13;
        }
      }

      sub_23328CD7C();
      v89 = *(v32 + 48);
      v34 = (v89)(v26, 1, v33);
      if (v34 != 1)
      {
        v34 = sub_233126838(v26);
      }

LABEL_13:
      v81 = &v56;
      MEMORY[0x28223BE20](v34);
      v36 = &v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v82 = &v56;
      MEMORY[0x28223BE20](v37);
      v38 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v78 = &v56;
      MEMORY[0x28223BE20](v39);
      v40 = swift_initStackObject();
      *(v40 + 16) = v88;
      *(v40 + 32) = v79;
      v41 = v40 + 32;
      sub_23317473C(v40);
      swift_setDeallocating();
      sub_233174930(v41, type metadata accessor for URLResourceKey);
      v42 = v84;
      sub_23328CB6C();

      sub_23328C99C();
      (*(v73 + 8))(&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v72);
      v43 = v89;
      v44 = v90;
      v45 = v89(v38, 1, v33);
      v7 = v66;
      if (v45 == 1)
      {
        sub_23328CD7C();
        if (v43(v38, 1, v33) != 1)
        {
          sub_233126838(v38);
        }
      }

      else
      {
        (*(v44 + 32))(v36, v38, v33);
      }

      v46 = v91;
      v47 = sub_23328CDAC();
      v48 = *(v44 + 8);
      v48(v36, v33);
      v48(v46, v33);
      v49 = *v67;
      (*v67)(v42, v7);
      result = (v49)(v86, v7);
      v89 = 0;
      if ((v47 & 1) == 0)
      {
        v11 = v68;
LABEL_5:
        v4 = v62 + 1;
        v12 = v61 + v57;
        v13 = v60 - 1;
        v14 = v59 + v57;
        if (v62 + 1 == v58)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = v68;
      v50 = v76;
      if (!v65)
      {
        __break(1u);
        return result;
      }

      v51 = MEMORY[0x28223BE20](result);
      v52 = *v64;
      v53 = v75;
      (*v64)(&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v75, v7, v51);
      v54 = v74;
      swift_arrayInitWithTakeFrontToBack();
      result = (v52)(v54, &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v12 = v54 + v63;
      v14 = v53 + v63;
      v55 = __CFADD__(v50, 1);
      v15 = v50 + 1;
      if (v55)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_2331717E4(uint64_t result, uint64_t a2, int64_t **a3, int64_t a4)
{
  v5 = v4;
  v216 = result;
  v219 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_144:
    v9 = *v216;
    if (!*v216)
    {
      goto LABEL_185;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_146:
      v257 = v8;
      v206 = *(v8 + 2);
      if (v206 >= 2)
      {
        while (1)
        {
          v207 = *v219;
          if (!*v219)
          {
            goto LABEL_183;
          }

          v208 = *&v8[16 * v206];
          v209 = &v8[16 * v206 - 16];
          v211 = *(v209 + 4);
          v210 = *(v209 + 5);
          v212 = sub_23328CC9C();
          sub_23317352C(v207 + *(*(v212 - 8) + 72) * v208, v207 + *(*(v212 - 8) + 72) * v211, v207 + *(*(v212 - 8) + 72) * v210, v9);
          if (v5)
          {
          }

          if (v210 < v208)
          {
            goto LABEL_172;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_233173C84(v8);
          }

          if (v206 - 2 >= *(v8 + 2))
          {
            goto LABEL_173;
          }

          v213 = &v8[16 * v206];
          *v213 = v208;
          *(v213 + 1) = v210;
          v257 = v8;
          result = sub_233173BF8(v206 - 1);
          v8 = v257;
          v206 = *(v257 + 2);
          if (v206 <= 1)
          {
          }
        }
      }
    }

LABEL_179:
    result = sub_233173C84(v8);
    v8 = result;
    goto LABEL_146;
  }

  v215 = a4;
  v7 = 0;
  v230 = *MEMORY[0x277CBE7C0];
  v8 = MEMORY[0x277D84F90];
  v221 = xmmword_233297B30;
  while (1)
  {
    v9 = v7 + 1;
    v218 = v8;
    v229 = v7;
    if (v7 + 1 >= v6)
    {
      v25 = v7 + 1;
    }

    else
    {
      v220 = v6;
      v254 = *v219;
      v10 = sub_23328CC9C();
      v253 = &v215;
      v11 = *(v10 - 8);
      v12 = v11;
      v13 = *(v11 + 72);
      v14 = *(v11 + 64);
      v15 = MEMORY[0x28223BE20](v10);
      v9 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v225 = v12;
      v16 = *(v12 + 16);
      v249 = v17;
      v18 = (v16)(v9, v15);
      v252 = &v215;
      v234 = v13;
      v19 = v229;
      v233 = v14;
      v20 = MEMORY[0x28223BE20](v18);
      v231 = v12 + 16;
      v228 = v16;
      (v16)(v9, v20);
      LODWORD(v232) = sub_23316FB48(v9, v9);
      if (v5)
      {
        v214 = *(v225 + 1);
        v214(v9, v10);
        v214(v9, v10);
      }

      v21 = v225;
      v22 = *(v225 + 1);
      v22(v9, v10);
      v227 = v21 + 8;
      v226 = v22;
      result = (v22)(v9, v10);
      v23 = (v19 + 2);
      v24 = v234;
      v25 = v220;
      v235 = v10;
      v26 = v249;
      while (v25 != v23)
      {
        v239 = v23;
        v247 = &v215;
        v36 = v233;
        v37 = MEMORY[0x28223BE20](result);
        v38 = (&v215 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
        v248 = v39;
        v40 = v228;
        v41 = (v228)(v38, v37);
        v245 = &v215;
        v42 = MEMORY[0x28223BE20](v41);
        v253 = v38;
        v249 = v26;
        v40(v42);
        v43 = sub_23328CE1C();
        v244 = &v215;
        v254 = *(v43 - 8);
        MEMORY[0x28223BE20](v43);
        v243 = v44;
        v251 = &v215 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
        v241 = &v215;
        v242 = *(*(v45 - 8) + 64);
        MEMORY[0x28223BE20](v45 - 8);
        v47 = &v215 - v46;
        v48 = sub_23328CA0C();
        v250 = &v215;
        v236 = v48;
        v237 = *(v48 - 8);
        v49 = v237[8];
        MEMORY[0x28223BE20](v48);
        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
        inited = swift_initStackObject();
        *(inited + 16) = v221;
        v51 = v230;
        *(inited + 32) = v230;
        v238 = v51;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_233174930(inited + 32, type metadata accessor for URLResourceKey);
        v246 = v38;
        v52 = v254;
        sub_23328CB6C();
        v252 = v43;

        sub_23328C99C();
        v53 = v237;
        (v237[1])(&v215 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v236);
        v250 = v52[6];
        if ((v250)(v47, 1, v43) == 1)
        {
          v54 = v238;
          sub_23328CD7C();
          v250 = v52[6];
          if ((v250)(v47, 1, v43) != 1)
          {
            sub_233126838(v47);
          }

          v55 = v240;
        }

        else
        {
          (v52[4])(v251, v47, v43);
          v55 = v240;
          v54 = v238;
        }

        v243 = &v215;
        MEMORY[0x28223BE20](v55);
        v57 = &v215 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
        v242 = &v215;
        MEMORY[0x28223BE20](v58);
        v60 = &v215 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v61);
        v62 = &v215 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
        v63 = swift_initStackObject();
        *(v63 + 16) = v221;
        *(v63 + 32) = v54;
        v64 = v63 + 32;
        sub_23317473C(v63);
        swift_setDeallocating();
        sub_233174930(v64, type metadata accessor for URLResourceKey);
        sub_23328CB6C();

        sub_23328C99C();
        (v53[1])(v62, v236);
        v65 = v254;
        v66 = v252;
        v67 = (v250)(v60, 1, v252);
        v25 = v220;
        if (v67 == 1)
        {
          v5 = 0;
          v28 = v239;
          sub_23328CD7C();
          v68 = (v250)(v60, 1, v66);
          v27 = v249;
          if (v68 != 1)
          {
            sub_233126838(v60);
          }
        }

        else
        {
          (v65[4])(v57, v60, v66);
          v5 = 0;
          v27 = v249;
          v28 = v239;
        }

        v29 = v251;
        v30 = sub_23328CDAC();
        v31 = v254[1];
        v32 = v57;
        v33 = v252;
        v31(v32, v252);
        v31(v29, v33);
        v34 = v235;
        v9 = v227;
        v35 = v226;
        v226(v253, v235);
        result = v35(v246, v34);
        v23 = (v28 + 1);
        v24 = v234;
        v26 = &v27[v234];
        v8 = v218;
        if ((v232 ^ v30))
        {
          v25 = v23 - 1;
          break;
        }
      }

      if (v232)
      {
        if (v25 < v229)
        {
          goto LABEL_178;
        }

        if (v229 < v25)
        {
          v249 = 0;
          v69 = (v225 + 32);
          v70 = v24 * (v25 - 1);
          v71 = v25 * v24;
          v220 = v25;
          v72 = v229;
          v73 = v229 * v24;
          v252 = (v225 + 32);
          do
          {
            if (v72 != --v25)
            {
              v76 = *v219;
              if (!*v219)
              {
                goto LABEL_182;
              }

              v254 = &v215;
              v77 = MEMORY[0x28223BE20](result);
              v9 = &v215 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
              v253 = *v69;
              (v253)(v9, v76 + v73, v235, v77);
              if (v73 < v70 || v76 + v73 >= v76 + v71)
              {
                v74 = v235;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v74 = v235;
                if (v73 != v70)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v74;
              v69 = v252;
              result = (v253)(v76 + v70, v9, v75);
              v8 = v218;
              v24 = v234;
            }

            ++v72;
            v70 -= v24;
            v71 -= v24;
            v73 += v24;
          }

          while (v72 < v25);
          v25 = v220;
          v5 = v249;
        }
      }
    }

    v79 = v219[1];
    if (v25 >= v79)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v25, v229))
    {
      goto LABEL_175;
    }

    if (v25 - v229 >= v215)
    {
LABEL_43:
      v9 = v25;
      goto LABEL_44;
    }

    if (__OFADD__(v229, v215))
    {
      goto LABEL_176;
    }

    if (v229 + v215 >= v79)
    {
      v9 = v219[1];
    }

    else
    {
      v9 = v229 + v215;
    }

    if (v9 < v229)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    if (v25 == v9)
    {
      goto LABEL_43;
    }

    v237 = *v219;
    v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27B8, &unk_2332990C0);
    result = sub_23328CC9C();
    v130 = *(result - 8);
    v131 = v130[2];
    v130 += 2;
    v228 = v131;
    v8 = v130[6];
    v226 = v130[7];
    v223 = (v130 - 1);
    v227 = v130;
    v222 = (v130 + 2);
    v217 = v9;
    v224 = result;
    v225 = v8;
LABEL_97:
    v220 = v25;
    v132 = v25;
LABEL_98:
    v249 = v5;
    v240 = &v215;
    v133 = v132 - 1;
    v134 = MEMORY[0x28223BE20](result);
    v135 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v252 = (&v215 - v135);
    v235 = v136;
    v137 = v228;
    v138 = (v228)(v134);
    v239 = &v215;
    v236 = v133;
    v139 = MEMORY[0x28223BE20](v138);
    v250 = (&v215 - v135);
    v234 = v140;
    v137(v139);
    v141 = sub_23328CE1C();
    v238 = &v215;
    v253 = v141;
    v254 = *(v141 - 8);
    v142 = v254[8];
    MEMORY[0x28223BE20](v141);
    v251 = &v215 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v244 = &v215;
    v246 = *(*(v143 - 8) + 64);
    MEMORY[0x28223BE20](v143 - 8);
    v242 = (&v215 - v144);
    v145 = sub_23328CA0C();
    v241 = &v215;
    v233 = v145;
    v232 = *(v145 - 8);
    MEMORY[0x28223BE20](v145);
    v245 = v146;
    v147 = &v215 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
    v148 = v230;
    v256 = v230;
    v5 = sub_23328E22C();
    v8 = (v5 + 56);
    v149 = v256;
    v243 = v148;
    sub_23328D98C();
    sub_23328E61C();
    v247 = v149;
    sub_23328DA3C();
    v9 = sub_23328E66C();

    v150 = -1 << *(v5 + 32);
    v151 = v9 & ~v150;
    v152 = v151 >> 6;
    v153 = *(v5 + 56 + 8 * (v151 >> 6));
    v154 = 1 << v151;
    if (((1 << v151) & v153) != 0)
    {
      v231 = v142;
      v155 = ~v150;
      while (1)
      {
        v156 = sub_23328D98C();
        v9 = v157;
        if (v156 == sub_23328D98C() && v9 == v158)
        {

          goto LABEL_111;
        }

        v160 = sub_23328E54C();

        if (v160)
        {
          break;
        }

        v151 = (v151 + 1) & v155;
        v152 = v151 >> 6;
        v153 = *&v8[8 * (v151 >> 6)];
        v154 = 1 << v151;
        if (((1 << v151) & v153) == 0)
        {
          v142 = v231;
          goto LABEL_107;
        }
      }

LABEL_111:
      v142 = v231;
    }

    else
    {
LABEL_107:
      *&v8[8 * v152] = v154 | v153;
      *(*(v5 + 48) + 8 * v151) = v247;
      v161 = *(v5 + 16);
      v95 = __OFADD__(v161, 1);
      v162 = v161 + 1;
      if (v95)
      {
        __break(1u);
        goto LABEL_157;
      }

      *(v5 + 16) = v162;
    }

    sub_233174930(&v256, type metadata accessor for URLResourceKey);
    v163 = v249;
    sub_23328CB6C();
    v164 = v253;
    if (v163)
    {

      v165 = v254;
      v166 = v242;
      (v254[7])(v242, 1, 1, v164);
LABEL_115:
      sub_23328CD7C();
      v167 = v165[6];
      v168 = (v167)(v166, 1, v164);
      v241 = 0;
      if (v168 != 1)
      {
        v168 = sub_233126838(v166);
      }

      goto LABEL_118;
    }

    v166 = v242;
    sub_23328C99C();
    (*(v232 + 8))(v147, v233);
    v165 = v254;
    v167 = v254[6];
    if ((v167)(v166, 1, v164) == 1)
    {
      goto LABEL_115;
    }

    v241 = 0;
    v168 = (v165[4])(v251, v166, v164);
LABEL_118:
    v246 = &v215;
    MEMORY[0x28223BE20](v168);
    v245 = (&v215 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0));
    v244 = &v215;
    MEMORY[0x28223BE20](v169);
    v249 = &v215 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
    v243 = &v215;
    MEMORY[0x28223BE20](v171);
    v173 = &v215 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
    v255 = v174;
    v175 = sub_23328E22C();
    v5 = v175 + 56;
    v176 = v255;
    sub_23328D98C();
    sub_23328E61C();
    v247 = v176;
    sub_23328DA3C();
    v177 = sub_23328E66C();

    v178 = -1 << *(v175 + 32);
    v9 = v177 & ~v178;
    v179 = v9 >> 6;
    v180 = *(v175 + 56 + 8 * (v9 >> 6));
    v181 = 1 << v9;
    if (((1 << v9) & v180) == 0)
    {
      goto LABEL_127;
    }

    v242 = v167;
    v182 = ~v178;
    while (1)
    {
      v183 = sub_23328D98C();
      v185 = v184;
      if (v183 == sub_23328D98C() && v185 == v186)
      {

        goto LABEL_131;
      }

      v188 = sub_23328E54C();

      if (v188)
      {
        break;
      }

      v9 = (v9 + 1) & v182;
      v179 = v9 >> 6;
      v180 = *(v5 + 8 * (v9 >> 6));
      v181 = 1 << v9;
      if (((1 << v9) & v180) == 0)
      {
        v167 = v242;
LABEL_127:
        *(v5 + 8 * v179) = v181 | v180;
        *(*(v175 + 48) + 8 * v9) = v247;
        v189 = *(v175 + 16);
        v95 = __OFADD__(v189, 1);
        v190 = v189 + 1;
        v8 = v225;
        v191 = v253;
        v192 = v249;
        if (!v95)
        {
          *(v175 + 16) = v190;
          goto LABEL_132;
        }

LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }
    }

LABEL_131:
    v8 = v225;
    v191 = v253;
    v167 = v242;
    v192 = v249;
LABEL_132:
    sub_233174930(&v255, type metadata accessor for URLResourceKey);
    v193 = v241;
    sub_23328CB6C();
    if (v193)
    {

      (v254[7])(v192, 1, 1, v191);
    }

    else
    {

      sub_23328C99C();
      (*(v232 + 8))(v173, v233);
      v194 = v254;
      if ((v167)(v192, 1, v191) != 1)
      {
        v196 = v245;
        (v194[4])(v245, v192, v191);
        v195 = v224;
        goto LABEL_138;
      }
    }

    v195 = v224;
    v196 = v245;
    sub_23328CD7C();
    if ((v167)(v192, 1, v191) != 1)
    {
      sub_233126838(v192);
    }

LABEL_138:
    v197 = v251;
    v198 = sub_23328CDAC();
    v199 = v196;
    v200 = v198;
    v201 = v254[1];
    v201(v199, v191);
    v201(v197, v191);
    v202 = *v223;
    (*v223)(v250, v195);
    result = v202(v252, v195);
    if (v200)
    {
      break;
    }

    v5 = 0;
LABEL_96:
    v25 = v220 + 1;
    v9 = v217;
    if (v220 + 1 != v217)
    {
      goto LABEL_97;
    }

    v8 = v218;
LABEL_44:
    if (v9 < v229)
    {
      goto LABEL_174;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v81 = *(v8 + 2);
    v80 = *(v8 + 3);
    v82 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      result = sub_233173D7C((v80 > 1), v81 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v82;
    v83 = &v8[16 * v81];
    *(v83 + 4) = v229;
    *(v83 + 5) = v9;
    v217 = v9;
    v9 = *v216;
    if (!*v216)
    {
      goto LABEL_184;
    }

    if (v81)
    {
      while (2)
      {
        v84 = v82 - 1;
        if (v82 >= 4)
        {
          v89 = &v8[16 * v82 + 32];
          v90 = *(v89 - 64);
          v91 = *(v89 - 56);
          v95 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          if (v95)
          {
            goto LABEL_161;
          }

          v94 = *(v89 - 48);
          v93 = *(v89 - 40);
          v95 = __OFSUB__(v93, v94);
          v87 = v93 - v94;
          v88 = v95;
          if (v95)
          {
            goto LABEL_162;
          }

          v96 = &v8[16 * v82];
          v98 = *v96;
          v97 = *(v96 + 1);
          v95 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v95)
          {
            goto LABEL_164;
          }

          v95 = __OFADD__(v87, v99);
          v100 = v87 + v99;
          if (v95)
          {
            goto LABEL_167;
          }

          if (v100 >= v92)
          {
            v118 = &v8[16 * v84 + 32];
            v120 = *v118;
            v119 = *(v118 + 1);
            v95 = __OFSUB__(v119, v120);
            v121 = v119 - v120;
            if (v95)
            {
              goto LABEL_171;
            }

            if (v87 < v121)
            {
              v84 = v82 - 2;
            }
          }

          else
          {
LABEL_64:
            if (v88)
            {
              goto LABEL_163;
            }

            v101 = &v8[16 * v82];
            v103 = *v101;
            v102 = *(v101 + 1);
            v104 = __OFSUB__(v102, v103);
            v105 = v102 - v103;
            v106 = v104;
            if (v104)
            {
              goto LABEL_166;
            }

            v107 = &v8[16 * v84 + 32];
            v109 = *v107;
            v108 = *(v107 + 1);
            v95 = __OFSUB__(v108, v109);
            v110 = v108 - v109;
            if (v95)
            {
              goto LABEL_169;
            }

            if (__OFADD__(v105, v110))
            {
              goto LABEL_170;
            }

            if (v105 + v110 < v87)
            {
              goto LABEL_78;
            }

            if (v87 < v110)
            {
              v84 = v82 - 2;
            }
          }
        }

        else
        {
          if (v82 == 3)
          {
            v85 = *(v8 + 4);
            v86 = *(v8 + 5);
            v95 = __OFSUB__(v86, v85);
            v87 = v86 - v85;
            v88 = v95;
            goto LABEL_64;
          }

          v111 = &v8[16 * v82];
          v113 = *v111;
          v112 = *(v111 + 1);
          v95 = __OFSUB__(v112, v113);
          v105 = v112 - v113;
          v106 = v95;
LABEL_78:
          if (v106)
          {
            goto LABEL_165;
          }

          v114 = &v8[16 * v84];
          v116 = *(v114 + 4);
          v115 = *(v114 + 5);
          v95 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v95)
          {
            goto LABEL_168;
          }

          if (v117 < v105)
          {
            break;
          }
        }

        v122 = v84 - 1;
        if (v84 - 1 >= v82)
        {
          goto LABEL_158;
        }

        v123 = *v219;
        if (!*v219)
        {
          goto LABEL_181;
        }

        v124 = *&v8[16 * v122 + 32];
        v125 = &v8[16 * v84 + 32];
        v127 = *v125;
        v126 = *(v125 + 1);
        v128 = sub_23328CC9C();
        sub_23317352C(v123 + *(*(v128 - 8) + 72) * v124, v123 + *(*(v128 - 8) + 72) * v127, v123 + *(*(v128 - 8) + 72) * v126, v9);
        if (v5)
        {
        }

        if (v126 < v124)
        {
          goto LABEL_159;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_233173C84(v8);
        }

        if (v122 >= *(v8 + 2))
        {
          goto LABEL_160;
        }

        v129 = &v8[16 * v122];
        *(v129 + 4) = v124;
        *(v129 + 5) = v126;
        v257 = v8;
        result = sub_233173BF8(v84);
        v8 = v257;
        v82 = *(v257 + 2);
        if (v82 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v6 = v219[1];
    v7 = v217;
    if (v217 >= v6)
    {
      goto LABEL_144;
    }
  }

  if (v237)
  {
    v5 = 0;
    v203 = MEMORY[0x28223BE20](result);
    v204 = *v222;
    (*v222)(&v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v235, v195, v203);
    v205 = v234;
    swift_arrayInitWithTakeFrontToBack();
    result = (v204)(v205, &v215 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v195);
    v132 = v236;
    if (v236 == v229)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

uint64_t sub_23317352C(char *a1, char *a2, char *a3, char *a4)
{
  v5 = v4;
  result = sub_23328CC9C();
  v72 = *(result - 8);
  v11 = v72[9];
  if (!v11)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = result;
  v13 = a2;
  if (a2 - a1 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_68;
  }

  v14 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v11 != -1)
  {
    v15 = (a2 - a1) / v11;
    v80 = a1;
    v79 = a4;
    if (v15 < v14 / v11)
    {
      v16 = v15 * v11;
      if (a4 < a1 || &a1[v16] <= a4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v13 = a2;
LABEL_17:
      v73 = &a4[v16];
      v77 = v4;
      v78 = &a4[v16];
      if (v16 >= 1 && v13 < a3)
      {
        v19 = v72[2];
        v69 = v72[8];
        v70 = v19;
        v72 += 2;
        v71 = (v72 - 1);
        v67 = v11;
        v68 = a3;
        while (1)
        {
          v74 = a1;
          v20 = a4;
          v76 = &v62;
          v21 = v69;
          v22 = MEMORY[0x28223BE20](result);
          v23 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
          v75 = v24;
          v25 = v70;
          v26 = (v70)(v23, v22);
          v27 = MEMORY[0x28223BE20](v26);
          v28 = v20;
          (v25)(v23, v20, v12, v27);
          v29 = v77;
          v30 = sub_23316FB48(v23, v23);
          v77 = v29;
          if (v29)
          {
            break;
          }

          v31 = v30;
          v32 = *v71;
          (*v71)(v23, v12);
          result = (v32)(v23, v12);
          if (v31)
          {
            v33 = v74;
            v34 = v67;
            v35 = v68;
            v36 = &v67[v75];
            a4 = v28;
            if (v74 < v75 || v74 >= v36)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != v75)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v37 = v36;
          }

          else
          {
            v34 = v67;
            v35 = v68;
            a4 = &v67[v28];
            v33 = v74;
            if (v74 < v28 || v74 >= a4)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v79 = a4;
            v37 = v75;
          }

          a1 = &v34[v33];
          v80 = a1;
          if (a4 >= v73 || v37 >= v35)
          {
            goto LABEL_66;
          }
        }

        v60 = *v71;
        (*v71)(v23, v12);
        v60(v23, v12);
      }

LABEL_66:
      sub_233173C98(&v80, &v79, &v78);
      return 1;
    }

    v17 = v14 / v11 * v11;
    if (a4 < a2 || &a2[v17] <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        if (v17 < 1)
        {
          v40 = &a4[v17];
        }

        else
        {
          v38 = -v11;
          v66 = v72 + 2;
          v67 = (v72 + 1);
          v39 = &a4[v17];
          v40 = &a4[v17];
          v74 = a1;
          v64 = -v11;
          v65 = a4;
          do
          {
            v63 = v40;
            v41 = &v13[v38];
            v75 = &v13[v38];
            v69 = v13;
            while (1)
            {
              v77 = v5;
              if (v13 <= a1)
              {
                v80 = v13;
                v78 = v63;
                goto LABEL_66;
              }

              v70 = a3;
              v71 = v39;
              v68 = v40;
              v76 = &v62;
              v42 = v72[8];
              v43 = MEMORY[0x28223BE20](result);
              v44 = (&v62 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
              v46 = *(v45 + 16);
              v73 = v47;
              v48 = v46(v44, v43);
              v49 = MEMORY[0x28223BE20](v48);
              (v46)(v44, v41, v12, v49);
              v50 = v77;
              v51 = sub_23316FB48(v44, v44);
              if (v50)
              {
                v61 = *v67;
                (*v67)(v44, v12);
                v61(v44, v12);
                v80 = v69;
                v78 = v68;
                goto LABEL_66;
              }

              v52 = v51;
              v77 = 0;
              v53 = v70;
              v54 = &v70[v38];
              v55 = *v67;
              (*v67)(v44, v12);
              result = v55(v44, v12);
              if (v52)
              {
                break;
              }

              v40 = v73;
              v56 = v65;
              a3 = v54;
              if (v53 < v71 || v54 >= v71)
              {
                result = swift_arrayInitWithTakeFrontToBack();
                v5 = v77;
                a1 = v74;
                v41 = v75;
                v38 = v64;
              }

              else
              {
                v5 = v77;
                a1 = v74;
                v41 = v75;
                v38 = v64;
                if (v53 != v71)
                {
                  result = swift_arrayInitWithTakeBackToFront();
                }
              }

              v39 = v40;
              v13 = v69;
              if (v73 <= v56)
              {
                goto LABEL_61;
              }
            }

            v57 = v65;
            a3 = v54;
            if (v53 < v69 || v54 >= v69)
            {
              v59 = v75;
              result = swift_arrayInitWithTakeFrontToBack();
              v13 = v59;
              v5 = v77;
              a1 = v74;
              v38 = v64;
            }

            else
            {
              v5 = v77;
              a1 = v74;
              v13 = v75;
              v38 = v64;
              if (v53 != v69)
              {
                v58 = v75;
                result = swift_arrayInitWithTakeBackToFront();
                v13 = v58;
              }
            }

            v39 = v71;
            v40 = v68;
          }

          while (v71 > v57);
        }

LABEL_61:
        v77 = v5;
        v78 = v40;
        v80 = v13;
        goto LABEL_66;
      }

      result = swift_arrayInitWithTakeBackToFront();
    }

    v13 = a2;
    goto LABEL_41;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_233173BF8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_233173C84(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_233173C98(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_23328CC9C();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_233173D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27C0, &qword_2332990D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_233173E80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_233174550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s19LongTermLogsCommandVMa(uint64_t a1)
{
  result = qword_27DDF4300;
  if (!qword_27DDF4300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233173EEC()
{
  result = qword_27DDF3D78[0];
  if (!qword_27DDF3D78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3D78);
  }

  return result;
}

uint64_t sub_233173F40(uint64_t a1, uint64_t a2)
{
  v4 = _s19LongTermLogsCommandVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_233173FA4()
{
  result = qword_27DDE2740;
  if (!qword_27DDE2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2740);
  }

  return result;
}

unint64_t sub_233173FFC()
{
  result = qword_27DDE2748;
  if (!qword_27DDE2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2748);
  }

  return result;
}

uint64_t sub_233174128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_233174270(uint64_t a1)
{
  sub_233174300(319, &qword_27DDE2788, &_s19LongTermLogsCommandV7CommandON, MEMORY[0x277CEEA50]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_233174300(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_23317444C()
{
  result = qword_27DDF4710[0];
  if (!qword_27DDF4710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF4710);
  }

  return result;
}

unint64_t sub_2331744A4()
{
  result = qword_27DDF4820;
  if (!qword_27DDF4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF4820);
  }

  return result;
}

unint64_t sub_2331744FC()
{
  result = qword_27DDF4828[0];
  if (!qword_27DDF4828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF4828);
  }

  return result;
}

void *sub_233174550(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27C8, &qword_2332990D8);
  v10 = *(sub_23328CC9C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23328CC9C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23317473C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27B8, &unk_2332990C0);
    v3 = sub_23328E22C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_23328D98C();
      sub_23328E61C();
      v27 = v7;
      sub_23328DA3C();
      v8 = sub_23328E66C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_23328D98C();
        v18 = v17;
        if (v16 == sub_23328D98C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_23328E54C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_233174930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_233174994(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[4] = 0;
  v2[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1938, &qword_2332990E0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v2[6] = v3;
  v2[2] = a1;
  v2[3] = sub_233174F64(0, 0, a1);
  return v2;
}

uint64_t sub_233174A10()
{
  v1 = v0[6];

  os_unfair_lock_lock(v1 + 4);

  v2 = sub_233174F64(0, 0, v0[2]);
  swift_beginAccess();
  v0[3] = v2;

  v0[4] = 0;
  v0[5] = 0;
  v3 = v0[6];

  os_unfair_lock_unlock(v3 + 4);
}

void sub_233174AA4(void *a1, double a2)
{
  v5 = v2[6];

  os_unfair_lock_lock(v5 + 4);

  v6 = v2[5];
  swift_beginAccess();
  v7 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_233174E1C(v7);
  v2[3] = v7;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= v7[2])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = &v7[2 * v6];
  v10 = *(v9 + 5);
  v9[4] = a2;
  *(v9 + 5) = a1;
  v2[3] = v7;
  v11 = a1;
  swift_endAccess();

  v12 = v2[5];
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v7[2];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v13 % v14;
  v2[5] = v15;
  if (v15 == v2[4])
  {
    v2[4] = (v15 + 1) % v14;
  }

  v16 = v2[6];

  os_unfair_lock_unlock(v16 + 4);
}

void sub_233174BD8(void *a1, double a2)
{
  v4 = *(*v2 + 256);
  v5 = a1;
  v4(a2);
}

void sub_233174C5C(double a1, double a2)
{
  v15 = MEMORY[0x277D84F90];
  v5 = v2[6];

  os_unfair_lock_lock(v5 + 4);

  v6 = v2[4];
  swift_beginAccess();
  if (v6 == v2[5])
  {
LABEL_2:
    v7 = v2[6];

    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    v8 = v2[3];
    while ((v6 & 0x8000000000000000) == 0)
    {
      v9 = *(v8 + 16);
      if (v6 >= v9)
      {
        goto LABEL_17;
      }

      v10 = v8 + 16 * v6;
      v11 = *(v10 + 40);
      if (v11)
      {
        v12 = *(v10 + 32);
        if (v12 >= a1 && v12 <= a2)
        {
          v14 = v11;
          MEMORY[0x23839B920]();
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23328DC1C();
          }

          sub_23328DC4C();

          v8 = v2[3];
          v9 = *(v8 + 16);
          if (!v9)
          {
            goto LABEL_18;
          }
        }
      }

      v6 = (v6 + 1) % v9;
      if (v6 == v2[5])
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_233174DDC()
{

  return swift_deallocClassInstance();
}

void *sub_233174E30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27D0, &qword_233299178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27D8, &qword_233299180);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_233174F64(void *result, void *a2, uint64_t a3)
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

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27D8, &qword_233299180);
    v6 = sub_23328DC3C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v5;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v5;
        *v9 = a2;
        v10 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    v11 = a2;
    return v7;
  }

  return result;
}

id sub_23317503C()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___trainerSession);
  }

  else
  {
    v4 = [objc_allocWithZone(TTSVBSiriTTSTrainerSession) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}
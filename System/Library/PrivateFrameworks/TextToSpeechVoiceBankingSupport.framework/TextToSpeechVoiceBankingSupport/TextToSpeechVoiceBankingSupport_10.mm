uint64_t sub_23320A1F0(uint64_t a1)
{
  v59 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v59);
  v4 = (&v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - v6;
  v60 = sub_23328D6EC();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D83C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_23328D85C();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = sub_233225380();
    (*(v8 + 16))(v10, v19, v60);
    sub_23321DF10(a1, v7, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    v20 = v1;
    v21 = sub_23328D6CC();
    v22 = sub_23328DE1C();

    v23 = os_log_type_enabled(v21, v22);
    v58 = v20;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v67 = v56;
      *v24 = 136316162;
      v54 = v21;
      v55 = v22;
      v25 = sub_233219D70();
      v57 = a1;
      v27 = v26;
      sub_23321DB24(v7, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
      v28 = sub_23311A8F4(v25, v27, &v67);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = *&v20[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession];
      v30 = [v29 category];
      v65 = sub_23328D98C();
      v66 = v31;
      v63 = 0xD000000000000016;
      v64 = 0x80000002332AAEE0;
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_23311A294();
      v32 = sub_23328E06C();
      v34 = v33;

      v35 = sub_23311A8F4(v32, v34, &v67);

      *(v24 + 14) = v35;
      *(v24 + 22) = 2080;
      v36 = sub_2332169B0([v29 categoryOptions]);
      v38 = sub_23311A8F4(v36, v37, &v67);

      *(v24 + 24) = v38;
      *(v24 + 32) = 2080;
      v39 = [v29 mode];
      v40 = sub_23328D98C();
      v42 = v41;

      v43 = sub_23311A8F4(v40, v42, &v67);

      *(v24 + 34) = v43;
      *(v24 + 42) = 2080;
      v44 = [v29 currentRoute];
      v45 = sub_233218D68();
      v47 = v46;

      a1 = v57;
      v48 = sub_23311A8F4(v45, v47, &v67);

      *(v24 + 44) = v48;
      v49 = v54;
      _os_log_impl(&dword_233109000, v54, v55, "Got audio session event: %s. CurrentCategory=%s CurrentOptions=%s CurrentMode=%s CurrentRoute=%s", v24, 0x34u);
      v50 = v56;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v50, -1, -1);
      MEMORY[0x23839CFD0](v24, -1, -1);
    }

    else
    {

      sub_23321DB24(v7, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    }

    (*(v8 + 8))(v10, v60);
    sub_23321DF10(a1, v4, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
      v52 = *(v51 + 48);

      v53 = sub_23328CE1C();
      (*(*(v53 - 8) + 8))(v4 + v52, v53);
      return sub_233218B40();
    }

    else
    {
      return sub_23321DB24(v4, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23320A814(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_23328C91C();
    if (v33)
    {
      sub_233145134(&v32, v31);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v7 = *&v30[0];
      if (*&v30[0] != *&v6[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {

        return;
      }

      v8 = sub_23328C92C();
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = v8;
      *&v32 = sub_23328D98C();
      *(&v32 + 1) = v10;

      sub_23328E1EC();
      if (*(v9 + 16))
      {
        v11 = sub_2331EA6D0(v31);
        if (v12)
        {
          v13 = v11;

          sub_23311B0C0(*(v9 + 56) + 32 * v13, v30);

          sub_2331EACC8(v31);
          sub_233145134(v30, &v32);
          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          swift_dynamicCast();
          v14 = v29;
          v15 = [v29 unsignedIntegerValue];
          v16 = sub_23328C92C();
          if (!v16)
          {
LABEL_17:
            __break(1u);
            return;
          }

          v17 = v16;
          v28 = v15;
          *&v32 = sub_23328D98C();
          *(&v32 + 1) = v18;

          sub_23328E1EC();
          if (*(v17 + 16))
          {
            v19 = sub_2331EA6D0(v31);
            if (v20)
            {
              v21 = v19;

              sub_23311B0C0(*(v17 + 56) + 32 * v21, v30);

              sub_2331EACC8(v31);
              sub_233145134(v30, &v32);
              sub_233144EEC(0, &qword_27DDE31D8, 0x277CB8418);
              swift_dynamicCast();
              v22 = v29;
              v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
              v24 = *(v23 + 64);
              v25 = *(v23 + 80);
              *v4 = v7;
              v26 = v7;
              sub_23328CE0C();
              *(v4 + v24) = v28;
              *(v4 + v25) = v22;
              swift_storeEnumTagMultiPayload();
              v27 = v22;
              sub_23320A1F0(v4);

              sub_23321DB24(v4, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
              return;
            }
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

void sub_23320ABB0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_23328C91C();
    if (v23)
    {
      sub_233145134(&v22, v21);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v7 = *&v20[0];
      if (*&v20[0] != *&v6[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {

        return;
      }

      v8 = sub_23328C92C();
      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = v8;
      *&v22 = sub_23328D98C();
      *(&v22 + 1) = v10;

      sub_23328E1EC();
      if (*(v9 + 16))
      {
        v11 = sub_2331EA6D0(v21);
        if (v12)
        {
          v13 = v11;

          sub_23311B0C0(*(v9 + 56) + 32 * v13, v20);

          sub_2331EACC8(v21);
          sub_233145134(v20, &v22);
          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          swift_dynamicCast();
          v14 = v19;
          v15 = [v19 unsignedIntegerValue];
          v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3168, &qword_23329C6D8) + 64);
          *v4 = v7;
          v17 = v7;
          sub_23328CE0C();
          *(v4 + v16) = v15;
          swift_storeEnumTagMultiPayload();
          sub_23320A1F0(v4);

          sub_23321DB24(v4, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
          return;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_23320AE4C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_23328C91C();
    if (v23)
    {
      sub_233145134(&v22, v21);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v7 = *&v20[0];
      if (*&v20[0] != *&v6[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {

        return;
      }

      v8 = sub_23328C92C();
      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = v8;
      *&v22 = sub_23328D98C();
      *(&v22 + 1) = v10;

      sub_23328E1EC();
      if (*(v9 + 16))
      {
        v11 = sub_2331EA6D0(v21);
        if (v12)
        {
          v13 = v11;

          sub_23311B0C0(*(v9 + 56) + 32 * v13, v20);

          sub_2331EACC8(v21);
          sub_233145134(v20, &v22);
          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          swift_dynamicCast();
          v14 = v19;
          v15 = [v19 BOOLValue];

          v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3160, &qword_23329C6D0) + 64);
          *v4 = v7;
          v17 = v7;
          sub_23328CE0C();
          *(v4 + v16) = v15;
          swift_storeEnumTagMultiPayload();
          sub_23320A1F0(v4);

          sub_23321DB24(v4, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
          return;
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_23320B0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_23328C91C();
    if (v12)
    {
      sub_233145134(&v11, &v13);
      sub_233144EEC(0, &qword_27DDE31B8, 0x277CB83F8);
      swift_dynamicCast();
      v8 = v10;
      if (v10 == *&v7[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8);
        *v5 = v8;
        v9 = v8;
        sub_23328CE0C();
        swift_storeEnumTagMultiPayload();
        sub_23320A1F0(v5);

        sub_23321DB24(v5, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23320B324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32B0, &qword_23329CE60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[1] = *(*(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32B8, &qword_23329CE68);
  sub_23315246C(&qword_27DDE32C0, &qword_27DDE32B8, &qword_23329CE68, MEMORY[0x277CBCE48]);
  sub_23328D77C();

  sub_23315246C(&qword_27DDE32C8, &qword_27DDE32B0, &qword_23329CE60, MEMORY[0x277CBCC08]);
  v8 = sub_23328D76C();
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  return result;
}

uint64_t TTSVBAudioService.audioMagnitudes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3128, &qword_23329C6A0);
  sub_23328DEBC();
  return v1;
}

uint64_t TTSVBAudioService.inputSource.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3140, &qword_23329C6B8);
  sub_23328DEBC();
  return v1;
}

uint64_t sub_23320B820(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_23328DEBC();
  return v4;
}

void sub_23320B9D0(unsigned __int8 *a1)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_23328D95C();

  v4 = sub_23328D95C();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (v5)
  {
    sub_23328CC4C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23320BB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23328D7CC();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D80C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320BF7C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  aBlock[4] = sub_23321E9E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_263;
  v12 = _Block_copy(aBlock);

  sub_23328D7DC();
  v17 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

void sub_23320BF7C()
{
  v2 = v0;
  v33 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v33);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328D6EC();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_23328D83C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10, v12);
  v16 = v15;
  LOBYTE(v15) = sub_23328D85C();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_233213B70(*MEMORY[0x277CB80B0]);
    if (!v1)
    {
      v17 = sub_233207C68();
      v18 = [v17 isRunning];

      if (v18)
      {
        v19 = sub_233225380();
        v20 = v37;
        (*(v37 + 16))(v6, v19, v4);
        v21 = sub_23328D6CC();
        v22 = sub_23328DE4C();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_233109000, v21, v22, "Will not start audio engine. Already running", v23, 2u);
          MEMORY[0x23839CFD0](v23, -1, -1);
        }

        (*(v20 + 8))(v6, v4);
      }

      else
      {
        v24 = *(**(*(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory) + 248);

        v24(v25);

        sub_233214E78();
        v26 = sub_233225380();
        v27 = v37;
        (*(v37 + 16))(v9, v26, v4);
        v28 = sub_23328D6CC();
        v29 = sub_23328DE4C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_233109000, v28, v29, "Will start audio engine", v30, 2u);
          v27 = v37;
          MEMORY[0x23839CFD0](v30, -1, -1);
        }

        v31 = (*(v27 + 8))(v9, v4);
        MEMORY[0x28223BE20](v31);
        *(&v33 - 2) = v2;
        v35 = xmmword_23329C610;
        v36 = 3;
        v32 = v34;
        swift_storeEnumTagMultiPayload();
        static TTSVBError.perform<A>(_:problem:reason:)(sub_23321E054, (&v33 - 4), &v35, v32);
        sub_23321DB24(v32, type metadata accessor for TTSVBError.Reason);
        LOBYTE(v35) = 1;

        sub_23328D74C();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23320C4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D80C();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320C788();
  v16[1] = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_23321E9E8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_251;
  v14 = _Block_copy(aBlock);

  sub_23328D7DC();
  v18 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_23320C788()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_23328D85C();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    [*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode) stop];
    v14 = sub_233225380();
    (*(v3 + 16))(v5, v14, v2);
    v15 = sub_23328D6CC();
    v16 = sub_23328DE4C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_233109000, v15, v16, "Will stop audio engine", v17, 2u);
      MEMORY[0x23839CFD0](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v18 = sub_233207C68();
    [v18 stop];

    v19 = *(**(*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory) + 248);

    v19(v20);

    sub_233215748();
    v21[15] = 0;

    sub_23328D74C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23320CA70(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_233121E04(v4, &unk_27DDE25D0, &unk_233290330);
}

uint64_t TTSVBAudioService.playAudioFile(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v5 = sub_23328D7CC();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D80C();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v3[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v11 = sub_23328CC9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  (*(v12 + 32))(v18 + v16, v15, v11);
  v19 = (v18 + v17);
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  aBlock[4] = sub_23321CD84;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_27;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  sub_23328D7DC();
  v31 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v7, v21);
  _Block_release(v21);
  (*(v30 + 8))(v7, v5);
  (*(v28 + 8))(v10, v29);
}

uint64_t sub_23320CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23328D7CC();
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D80C();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320D1D8(a2);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  aBlock[4] = sub_23321E9E8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_239;
  v14 = _Block_copy(aBlock);

  sub_23328D7DC();
  v19 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v9, v14);
  _Block_release(v14);
  (*(v18 + 8))(v9, v7);
  (*(v10 + 8))(v12, v17);
}

void sub_23320D1D8(uint64_t a1)
{
  v3 = sub_23328D6EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7, v9);
  v13 = v12;
  LOBYTE(v12) = sub_23328D85C();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v59 = v1;
    v14 = sub_233225380();
    v57 = v4;
    (*(v4 + 16))(v6, v14, v3);
    v15 = sub_23328CC9C();
    v16 = *(v15 - 8);
    v17 = v6;
    v18 = v16[8];
    v19 = MEMORY[0x28223BE20](v15);
    v20 = v16[2];
    v58 = a1;
    v20(&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v19);
    v56 = v17;
    v21 = sub_23328D6CC();
    v22 = sub_23328DE4C();
    v23 = os_log_type_enabled(v21, v22);
    v55 = v16;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v52 = v3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v60[0] = v26;
      *v25 = 136315138;
      v27 = sub_23328CC6C();
      v53 = &v51;
      v29 = v28;
      v54 = v16[1];
      v54(&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
      v30 = sub_23311A8F4(v27, v29, v60);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_233109000, v21, v22, "Will play audio file: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23839CFD0](v26, -1, -1);
      MEMORY[0x23839CFD0](v25, -1, -1);

      v31 = (*(v57 + 8))(v56, v52);
    }

    else
    {

      v54 = v16[1];
      v54(&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
      v31 = (*(v57 + 8))(v56, v3);
    }

    v32 = v15;
    MEMORY[0x28223BE20](v31);
    v33 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x28223BE20](v34);
    v36 = &v51 - v35;
    v37 = v59;
    v38 = sub_233207EFC();
    v39 = [v38 currentItem];

    if (v39)
    {
      v40 = [v39 asset];

      if (v40)
      {
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = [v41 URL];

          sub_23328CC4C();
          (v55[4])(v33, v36, v32);
          if (sub_23328CC2C())
          {
            v43 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer;
            v44 = *(v37 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer);
            v45 = *(MEMORY[0x277CC08F0] + 16);
            v60[0] = *MEMORY[0x277CC08F0];
            v60[1] = *(MEMORY[0x277CC08F0] + 8);
            v60[2] = v45;
            [v44 seekToTime_];
            [*(v37 + v43) play];
            v54(v33, v32);
            return;
          }

          v54(v33, v32);
        }

        else
        {
        }
      }
    }

    v46 = objc_allocWithZone(MEMORY[0x277CE6650]);
    v47 = sub_23328CBCC();
    v48 = [v46 initWithURL:v47 options:0];

    v49 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
    v50 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer;
    [*(v37 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer) replaceCurrentItemWithPlayerItem_];
    [*(v37 + v50) play];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23320D80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23328D7CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D80C();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23320DAF0();
  v16[1] = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_calloutQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_2331B9BC4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_227;
  v14 = _Block_copy(aBlock);

  sub_23328D7DC();
  v18 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_23320DAF0()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v42[-1] - v7;
  v9 = sub_23328D83C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v42[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_23328D85C();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;

    sub_23328D73C();

    if (v43)
    {
      v18 = sub_233225380();
      (*(v3 + 16))(v5, v18, v2);
      v19 = sub_23328D6CC();
      v20 = sub_23328DE3C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_233109000, v19, v20, "Cannot stop recording. isRecording already false", v21, 2u);
        MEMORY[0x23839CFD0](v21, -1, -1);
      }

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      (*((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_speechRecognitionService)) + 0x1B0))(0);

      sub_23328D73C();
      v22 = v42[0];
      v23 = v43;
      v44.value = 0;
      v44.is_nil = 1;
      v24 = TTSVBTimestampInSeconds(when:)(v44);
      if (!v23 || (v25 = 0, v23 == 1))
      {
        v25 = v22;
      }

      v42[0] = v25;
      *&v42[1] = v24;
      v43 = 1;
      sub_23328D74C();

      v26 = sub_233225380();
      (*(v3 + 16))(v8, v26, v2);
      v27 = sub_23328D6CC();
      v28 = sub_23328DE4C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42[0] = v41;
        *v29 = 136315138;
        v45.value = 0;
        v45.is_nil = 1;
        v30 = TTSVBTimestampInSeconds(when:)(v45);
        v31 = sub_23316A360(v30);
        v33 = sub_23311A8F4(v31, v32, v42);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_233109000, v27, v28, "StopRecording. hostTime=%s", v29, 0xCu);
        v34 = v41;
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x23839CFD0](v34, -1, -1);
        MEMORY[0x23839CFD0](v29, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
      v35 = *(v1 + v17);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      MEMORY[0x28223BE20](v36 - 8);
      v38 = &v42[-1] - v37;
      v39 = sub_23328CC9C();
      (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
      v40 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
      swift_beginAccess();

      sub_23321DEA0(v38, v35 + v40);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TTSVBAudioService.beginNewRecording(expectedSpeech:localeInfo:recordingEnvironment:audioFileURL:completion:)(uint64_t a1, uint64_t a2, __int128 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v68 = a6;
  v69 = a2;
  v67 = a1;
  v76 = sub_23328D7CC();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_23328D80C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D6EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[1];
  v81 = *a3;
  v82 = v16;
  v83 = a3[2];
  v66 = *a4;
  v17 = sub_233225380();
  (*(v13 + 16))(v15, v17, v12);
  v18 = sub_23328CC9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = *(v19 + 16);
  v77 = v23;
  v63 = v22;
  (v22)(&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v21);
  v65 = v15;
  v24 = sub_23328D6CC();
  v25 = sub_23328DE4C();
  v26 = os_log_type_enabled(v24, v25);
  v62 = v19;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v64 = a5;
    v28 = v27;
    v29 = swift_slowAlloc();
    v61 = v13;
    v30 = v29;
    aBlock[0] = v29;
    *v28 = 136315138;
    v31 = sub_23328CB9C();
    v60 = v12;
    v33 = v32;
    (*(v19 + 8))(&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v77);
    v34 = sub_23311A8F4(v31, v33, aBlock);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_233109000, v24, v25, "Will begin new recording: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23839CFD0](v30, -1, -1);
    v35 = v28;
    a5 = v64;
    MEMORY[0x23839CFD0](v35, -1, -1);

    v36 = (*(v61 + 8))(v65, v60);
  }

  else
  {

    (*(v19 + 8))(&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v77);
    v36 = (*(v13 + 8))(v65, v12);
  }

  v65 = &v59;
  v64 = *&v78[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v61 = *&v78[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state];
  v37 = v61;
  v38 = MEMORY[0x28223BE20](v36);
  v39 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v77;
  v63(v39, a5, v77, v38);
  v41 = v62;
  v42 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v43 = (v20 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v37;
  (*(v41 + 32))(v45 + v42, v39, v40);
  v46 = v78;
  *(v45 + v43) = v78;
  v47 = (v45 + v44);
  v48 = v69;
  *v47 = v67;
  v47[1] = v48;
  v49 = v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8);
  v50 = v83;
  *(v49 + 16) = v82;
  *(v49 + 32) = v50;
  *v49 = v81;
  *(v49 + 48) = v66;
  v51 = (v45 + ((v44 + 79) & 0xFFFFFFFFFFFFFFF8));
  v52 = v70;
  *v51 = v68;
  v51[1] = v52;
  aBlock[4] = sub_23321CE24;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_39;
  v53 = _Block_copy(aBlock);

  swift_retain_n();
  v54 = v46;
  sub_2331CCAC4(&v81, v79);

  v55 = v71;
  sub_23328D7DC();
  v79[0] = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v56 = v74;
  v57 = v76;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v55, v56, v53);
  _Block_release(v53);

  (*(v75 + 8))(v56, v57);
  (*(v72 + 8))(v55, v73);
}

uint64_t sub_23320E7B8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, __int128 *a6, int a7, uint64_t a8, uint64_t a9)
{
  v101 = a7;
  v100 = a6;
  v102 = a4;
  v103 = a5;
  v111 = a9;
  v112 = a2;
  v12 = sub_23328D7CC();
  v108 = *(v12 - 8);
  v109 = v12;
  MEMORY[0x28223BE20](v12);
  v106 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_23328D80C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D6EC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v99 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v90 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v90 - v25;
  v110 = a1;

  sub_23328D73C();

  LODWORD(a1) = v116;
  v27 = sub_233225380();
  v113 = v19;
  v28 = *(v19 + 16);
  if (!a1)
  {
    v43 = a8;
    v28(v26, v27, v18);
    v44 = sub_23328D6CC();
    v45 = sub_23328DE3C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_233109000, v44, v45, "Cannot begin recording. isRecording already true", v46, 2u);
      MEMORY[0x23839CFD0](v46, -1, -1);
    }

    (*(v113 + 8))(v26, v18);
    aBlock = xmmword_23329C620;
    LOBYTE(v116) = 3;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v47 = swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v17, 0, v48);
    swift_willThrow();
    v70 = swift_allocObject();
    v71 = v111;
    v70[2] = v43;
    v70[3] = v71;
    v70[4] = v47;
    *&v117 = sub_23321EA5C;
    *(&v117 + 1) = v70;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v116 = sub_2331221F8;
    *(&v116 + 1) = &block_descriptor_212;
    v72 = _Block_copy(&aBlock);

    v73 = v47;
    v74 = v104;
    sub_23328D7DC();
    v114 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v75 = v106;
    v76 = v109;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v74, v75, v72);
    _Block_release(v72);

    (*(v108 + 8))(v75, v76);
    (*(v105 + 8))(v74, v107);
  }

  v97 = a3;
  v98 = a8;
  v95 = v27;
  v92 = v19 + 16;
  v96 = v28;
  (v28)(v23);
  v29 = sub_23328CC9C();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v30 + 16);
  v94 = v30 + 16;
  v93 = v34;
  (v34)(v33, v112, v29, v31);
  v35 = sub_23328D6CC();
  v36 = sub_23328DE1C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&aBlock = v91;
    *v37 = 136315138;
    v38 = sub_23328CC6C();
    v90 = &v90;
    v40 = v39;
    (*(v30 + 8))(v33, v29);
    v41 = sub_23311A8F4(v38, v40, &aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_233109000, v35, v36, "Will begin new audio recording: %s", v37, 0xCu);
    v42 = v91;
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x23839CFD0](v42, -1, -1);
    MEMORY[0x23839CFD0](v37, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v33, v29);
  }

  v49 = v18;
  v91 = *(v113 + 8);
  (v91)(v23, v18);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v51 = MEMORY[0x28223BE20](v50 - 8);
  v53 = &v90 - v52;
  v54 = *(v30 + 56);
  v54(&v90 - v52, 1, 1, v29, v51);
  v55 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  v56 = v110;
  swift_beginAccess();
  sub_23321DEA0(v53, v56 + v55);
  sub_233121E04(v56 + v55, &qword_27DDE19A0, &unk_233290360);
  v93(v56 + v55, v112, v29);
  (v54)(v56 + v55, 0, 1, v29);
  swift_endAccess();
  v57 = *sub_233165CA0();
  NSUserDefaults.ttsvb_recordingMode.getter();

  if (aBlock == 2)
  {
    v58 = v97;
    v60 = v102;
    v59 = v103;
    v61 = v96;
    v62 = v95;
  }

  else
  {
    v58 = v97;
    v60 = v102;
    v59 = v103;
    v61 = v96;
    v62 = v95;
    if (aBlock)
    {
      goto LABEL_14;
    }
  }

  v63 = v99;
  v61(v99, v62, v49);
  v64 = sub_23328D6CC();
  v65 = sub_23328DE1C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_233109000, v64, v65, "Will generate new speech recognition task", v66, 2u);
    MEMORY[0x23839CFD0](v66, -1, -1);
  }

  (v91)(v63, v49);
  v67 = *&v58[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_speechRecognitionService];
  v68 = v100[1];
  aBlock = *v100;
  v116 = v68;
  v117 = v100[2];
  LOBYTE(v114) = v101 & 1;
  (*((*MEMORY[0x277D85000] & *v67) + 0x1A0))(v60, v59, &aBlock, &v114);
LABEL_14:
  sub_23320BF7C();
  v69 = v98;
  v77 = [*&v58[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession] currentRoute];
  v78 = [v77 inputs];

  sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
  v79 = sub_23328DBFC();

  if (v79 >> 62)
  {
    result = sub_23328E19C();
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    result = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_20:

      LOBYTE(aBlock) = 0;
      v87 = swift_allocObject();
      v88 = v111;
      v87[2] = v110;
      v87[3] = v58;
      v87[4] = v69;
      v87[5] = v88;

      v89 = v58;

      sub_23320F8E4(&aBlock, sub_23321E544, v87);
    }
  }

  if ((v79 & 0xC000000000000001) != 0)
  {
    v81 = MEMORY[0x23839BFC0](0, v79);
    goto LABEL_19;
  }

  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v81 = *(v79 + 32);
LABEL_19:
    v82 = v81;

    v83 = [v82 portType];
    v84 = sub_23328D98C();
    v86 = v85;

    static TTSVBAnalytics.beganRecording(inputSourceName:)(v84, v86);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_23320F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23328D7CC();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23328D80C();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D6EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49.value = 0;
  v49.is_nil = 1;
  v15 = TTSVBTimestampInSeconds(when:)(v49);
  aBlock = v15;
  v44 = 0;
  LOBYTE(v45) = 0;

  sub_23328D74C();

  v16 = sub_233225380();
  (*(v12 + 16))(v14, v16, v11);
  v17 = sub_23328D6CC();
  v18 = sub_23328DE4C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = a3;
    v22 = v21;
    aBlock = *&v21;
    *v20 = 136315138;
    v23 = sub_23316A360(v15);
    v34 = v11;
    v25 = a4;
    v26 = sub_23311A8F4(v23, v24, &aBlock);

    *(v20 + 4) = v26;
    a4 = v25;
    _os_log_impl(&dword_233109000, v17, v18, "StartRecording. hostTime=%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    a3 = v36;
    MEMORY[0x23839CFD0](v27, -1, -1);
    MEMORY[0x23839CFD0](v20, -1, -1);

    (*(v35 + 8))(v14, v34);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  v47 = sub_23321E9E8;
  v48 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2331221F8;
  v46 = &block_descriptor_221;
  v29 = _Block_copy(&aBlock);

  sub_23328D7DC();
  v42 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v30 = v39;
  v31 = v41;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v30, v29);
  _Block_release(v29);
  (*(v40 + 8))(v30, v31);
  (*(v37 + 8))(v10, v38);
}

void sub_23320F8E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a2;
  v7 = sub_23328D7CC();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23328D80C();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_23328D6EC();
  v11 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v52[-v14];
  v16 = sub_23328D83C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v52[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(v57) = *a1;
  v21 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16, v18);
  v58 = v21;
  LOBYTE(v21) = sub_23328D85C();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    sub_23320BF7C();
    v56 = a3;
    v22 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_cachedSoundEffects;
    swift_beginAccess();
    v23 = *&v4[v22];
    v24 = v57;
    if (*(v23 + 16) && (v25 = sub_23321B17C(v57), (v26 & 1) != 0))
    {
      v27 = *(*(v23 + 56) + 8 * v25);
      swift_endAccess();
      v28 = v27;
    }

    else
    {
      v53 = v15;
      swift_endAccess();
      v29 = sub_23328CC9C();
      v54 = v52;
      v55 = v29;
      v30 = *(v29 - 8);
      v31 = *(v30 + 64);
      MEMORY[0x28223BE20](v29);
      LOBYTE(aBlock[0]) = v24;
      sub_23320B9D0(aBlock);
      v32 = static TTSVBAudioTools.readPCMBuffer(fromAudioFile:)(&v52[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      (*(v30 + 8))(&v52[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)], v55);
      swift_beginAccess();
      v28 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *&v4[v22];
      *&v4[v22] = 0x8000000000000000;
      sub_23321B5EC(v28, v57, isUniquelyReferenced_nonNull_native);
      *&v4[v22] = v67;
      swift_endAccess();
      v15 = v53;
    }

    v34 = sub_233225380();
    v35 = v66;
    (*(v11 + 16))(v15, v34, v66);
    v36 = v4;
    v37 = sub_23328D6CC();
    v38 = sub_23328DE1C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v64 = v11;
      v40 = v39;
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      v42 = "recordingWillStart";
      *v40 = 136315394;
      v43 = v57;
      if (v57)
      {
        v42 = "recordingDidFinish";
      }

      v44 = sub_23311A8F4(0xD000000000000012, (v42 - 32) | 0x8000000000000000, aBlock);

      *(v40 + 4) = v44;
      *(v40 + 12) = 1024;
      LODWORD(v44) = [*&v36[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode] isPlaying];

      *(v40 + 14) = v44;
      _os_log_impl(&dword_233109000, v37, v38, "Asked to play sound effect '%s'. Scheduling audio file. isPlaying=%{BOOL}d", v40, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23839CFD0](v41, -1, -1);
      MEMORY[0x23839CFD0](v40, -1, -1);

      (*(v64 + 8))(v15, v66);
      v45 = v56;
    }

    else
    {

      (*(v11 + 8))(v15, v35);
      v45 = v56;
      v43 = v57;
    }

    v46 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode;
    v47 = *&v36[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioPlayerNode];
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v43;
    *(v49 + 24) = v48;
    *(v49 + 32) = 0;
    *(v49 + 40) = v65;
    *(v49 + 48) = v45;
    aBlock[4] = sub_23321E040;
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_233213B1C;
    aBlock[3] = &block_descriptor_196;
    v50 = _Block_copy(aBlock);

    v51 = v47;

    [v51 scheduleBuffer:v28 atTime:0 options:0 completionCallbackType:2 completionHandler:v50];

    _Block_release(v50);
    [*&v36[v46] play];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2332106DC(void (*a1)(char *), uint64_t a2, void *a3)
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

uint64_t TTSVBAudioService.finishCurrentRecording(outputFormat:audioOverrides:userPhrase:userScore:sampleID:completion:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v51 = a6;
  v52 = a8;
  v49 = a3;
  v50 = a5;
  v14 = a9;
  v15 = sub_23328D7CC();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x28223BE20](v15);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D80C();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23328D6EC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a2;
  v46 = a2[1];
  v47 = v24;
  v48 = *(a2 + 1);
  v25 = sub_233225380();
  (*(v21 + 16))(v23, v25, v20);
  v26 = sub_23328D6CC();
  v27 = sub_23328DE4C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v45 = a4;
    v29 = a7;
    v30 = v28;
    *v28 = 0;
    _os_log_impl(&dword_233109000, v26, v27, "Will finish current recording", v28, 2u);
    v31 = v30;
    a7 = v29;
    v14 = a9;
    a4 = v45;
    MEMORY[0x23839CFD0](v31, -1, -1);
  }

  (*(v21 + 8))(v23, v20);
  v32 = *&v10[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state];
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v10;
  v34 = v46;
  *(v33 + 32) = v47;
  *(v33 + 33) = v34;
  v36 = v48;
  v35 = v49;
  *(v33 + 40) = v48;
  *(v33 + 48) = v35;
  v38 = v50;
  v37 = v51;
  *(v33 + 56) = a4;
  *(v33 + 64) = v38;
  *(v33 + 72) = v37;
  *(v33 + 80) = a7;
  *(v33 + 88) = v52;
  *(v33 + 96) = v14;
  aBlock[4] = sub_23321CEE4;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_45_0;
  v39 = _Block_copy(aBlock);
  v40 = v36;

  swift_retain_n();
  v41 = v10;
  sub_23328D7DC();
  v58 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v42 = v55;
  v43 = v57;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v19, v42, v39);
  _Block_release(v39);

  (*(v56 + 8))(v42, v43);
  (*(v53 + 8))(v19, v54);
}

uint64_t sub_233210C98(uint64_t a1, char *a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11)
{
  v172 = a8;
  v171 = a7;
  v173 = a6;
  v170 = a5;
  v175 = a4;
  v174 = a3;
  v191 = a2;
  v185 = a11;
  v184 = a10;
  v192 = sub_23328D7CC();
  v190 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D80C();
  v188 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v186 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v182);
  v183 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23328D6EC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v157 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v157 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v157 - v28;

  sub_23328D73C();

  v189 = v14;
  v187 = v13;
  if (v195)
  {
    v30 = sub_233225380();
    (*(v18 + 16))(v29, v30, v17);
    v31 = sub_23328D6CC();
    v32 = sub_23328DE3C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_233109000, v31, v32, "Cannot stop recording. isRecording already false", v33, 2u);
      MEMORY[0x23839CFD0](v33, -1, -1);
    }

    (*(v18 + 8))(v29, v17);
    aBlock = xmmword_23329C630;
    LOBYTE(v195) = 3;
    v34 = v183;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v35 = swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v34, 0, v36);
    swift_willThrow();
    v37 = v192;
    goto LABEL_43;
  }

  v179 = v26;
  v168 = v23;
  v180 = v18;
  v176 = v20;
  v169 = v17;
  v181 = a1;

  sub_23328D73C();

  v38 = *&aBlock;
  v39 = v195;
  v199.value = 0;
  v199.is_nil = 1;
  v40 = TTSVBTimestampInSeconds(when:)(v199);
  v41 = v40;
  if (v39)
  {
    v42 = 0.0;
    v37 = v192;
    v43 = v169;
    v44 = v179;
    if (v39 == 1)
    {
      v42 = v38;
    }
  }

  else
  {
    v42 = v38;
    v37 = v192;
    v43 = v169;
    v44 = v179;
  }

  *&aBlock = v42;
  *(&aBlock + 1) = v40;
  LOBYTE(v195) = 1;

  sub_23328D74C();

  v45 = sub_233225380();
  v46 = v180[2];
  v179 = v45;
  v178 = v180 + 2;
  v177 = v46;
  v46(v44);
  v47 = sub_23328D6CC();
  v48 = sub_23328DE4C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&aBlock = v50;
    *v49 = 136315138;
    v200.value = 0;
    v200.is_nil = 1;
    v51 = TTSVBTimestampInSeconds(when:)(v200);
    v52 = sub_23316A360(v51);
    v54 = sub_23311A8F4(v52, v53, &aBlock);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_233109000, v47, v48, "FinishRecording. hostTime=%s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x23839CFD0](v50, -1, -1);
    MEMORY[0x23839CFD0](v49, -1, -1);
  }

  v55 = v180[1];
  v55(v44, v43);
  LOBYTE(aBlock) = 1;
  sub_23320F8E4(&aBlock, nullsub_1, 0);
  v60 = *(**(v181 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory) + 272);

  v57 = (v60)(v56, v42, v41);

  v58 = v168;
  v177(v168, v179, v43);

  v59 = sub_23328D6CC();
  LODWORD(v60) = sub_23328DE4C();
  if (os_log_type_enabled(v59, v60))
  {
    v166 = v59;
    v61 = swift_slowAlloc();
    *v61 = 134218240;
    v62 = v57 >> 62;
    if (v57 >> 62)
    {
      goto LABEL_47;
    }

    for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23328E19C())
    {
      *(v61 + 4) = i;

      *(v61 + 12) = 2048;
      v62 = v62 ? sub_23328E19C() : *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v164 = v61;
      LODWORD(v165) = v60;
      v167 = v55;
      if (!v62)
      {
        break;
      }

      v60 = 0;
      v55 = (v57 & 0xC000000000000001);
      v61 = v57 & 0xFFFFFFFFFFFFFF8;
      v65 = 0.0;
      while (1)
      {
        if (v55)
        {
          v66 = v57;
          v67 = MEMORY[0x23839BFC0](v60, v57);
        }

        else
        {
          if (v60 >= *(v61 + 16))
          {
            goto LABEL_46;
          }

          v66 = v57;
          v67 = *(v57 + 8 * v60 + 32);
        }

        v68 = v67;
        v57 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          break;
        }

        v69 = [v67 format];
        [v69 sampleRate];
        v71 = v70;

        LODWORD(v69) = [v68 frameLength];
        v65 = v65 + v69 / v71;
        ++v60;
        v72 = v57 == v62;
        v57 = v66;
        if (v72)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }

    v65 = 0.0;
LABEL_29:
    v73 = v164;
    *(v164 + 14) = v65;
    v74 = v166;
    _os_log_impl(&dword_233109000, v166, v165, "Will compute audio assessment of %ld buffers. Duration=%f", v73, 0x16u);
    MEMORY[0x23839CFD0](v73, -1, -1);

    v37 = v192;
    v43 = v169;
    v64 = v176;
    v58 = v168;
    v55 = v167;
  }

  else
  {

    v64 = v176;
  }

  v55(v58, v43);
  v75 = objc_opt_self();
  sub_233144EEC(0, &qword_27DDE2C80, 0x277CB83C8);
  v76 = sub_23328DBDC();
  v77 = [v75 assessAudioForBuffers_];

  v177(v64, v179, v43);

  v78 = v77;
  v79 = sub_23328D6CC();
  v80 = sub_23328DE4C();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = v55;
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 134218242;
    if (v57 >> 62)
    {
      v84 = sub_23328E19C();
    }

    else
    {
      v84 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v82 + 4) = v84;

    *(v82 + 12) = 2112;
    *(v82 + 14) = v78;
    *v83 = v78;
    v85 = v78;
    _os_log_impl(&dword_233109000, v79, v80, "Did compute audio assessment of %ld buffers: %@", v82, 0x16u);
    sub_233121E04(v83, &qword_27DDE2978, &qword_233299A50);
    MEMORY[0x23839CFD0](v83, -1, -1);
    MEMORY[0x23839CFD0](v82, -1, -1);

    v81(v176, v43);
  }

  else
  {

    v55(v176, v43);
  }

  v86 = v181;
  v87 = *(v181 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat);
  if (!v87)
  {

LABEL_42:
    aBlock = xmmword_23329C630;
    LOBYTE(v195) = 3;
    v112 = v183;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v35 = swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v112, 0, v113);
    swift_willThrow();

LABEL_43:
    v114 = v190;
    v115 = swift_allocObject();
    v116 = v185;
    v115[2] = v184;
    v115[3] = v116;
    v115[4] = v35;
    v197 = sub_23321EA58;
    v198 = v115;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v195 = sub_2331221F8;
    v196 = &block_descriptor_147_0;
    v117 = _Block_copy(&aBlock);

    v118 = v35;
    v119 = v186;
    sub_23328D7DC();
    v193 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v120 = v187;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v119, v120, v117);
    _Block_release(v117);

    (*(v114 + 8))(v120, v37);
    (*(v188 + 8))(v119, v189);
  }

  v180 = v78;
  v88 = sub_23328CC9C();
  v179 = &v157;
  v89 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v177 = v90;
  v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v178 = &v157;
  MEMORY[0x28223BE20](v92 - 8);
  v168 = v93;
  v94 = (&v157 - v93);
  v95 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  swift_beginAccess();
  sub_23321DC54(v86 + v95, v94);
  v169 = v89;
  v96 = *(v89 + 48);
  v176 = v88;
  v167 = v96;
  v97 = (v96)(v94, 1, v88);
  if (v97)
  {

    sub_233121E04(v94, &qword_27DDE19A0, &unk_233290360);
LABEL_41:
    v37 = v192;
    v78 = v180;
    goto LABEL_42;
  }

  v165 = v57;
  v164 = &v157;
  v98 = MEMORY[0x28223BE20](v97);
  v99 = v169;
  v100 = *(v169 + 16);
  v101 = v176;
  v161 = v169 + 16;
  v160 = v100;
  (v100)(&v157 - v91, v94, v176, v98);
  v166 = v87;
  sub_233121E04(v94, &qword_27DDE19A0, &unk_233290360);
  sub_23328CBDC();
  v103 = v99 + 8;
  v102 = *(v99 + 8);
  v102(&v157 - v91, v101);
  v162 = sub_23328CB9C();
  v178 = v104;
  v163 = v102;
  v105 = (v102)(&v157 - v91, v101);
  v179 = &v157;
  MEMORY[0x28223BE20](v105);
  v106 = &v157 - v91;
  v164 = &v157;
  MEMORY[0x28223BE20](v107);
  v108 = &v157 - v91;
  MEMORY[0x28223BE20](v109);
  v110 = (&v157 - v168);
  sub_23321DC54(v181 + v95, &v157 - v168);
  v111 = (v167)(v110, 1, v101);
  if (v111)
  {

    sub_233121E04(v110, &qword_27DDE19A0, &unk_233290360);
    goto LABEL_41;
  }

  v183 = &v157;
  v168 = a9;
  LODWORD(v167) = v174 >> 8;
  v122 = v177;
  v123 = MEMORY[0x28223BE20](v111);
  v159 = v103;
  v158 = (v122 + 15) & 0xFFFFFFFFFFFFFFF0;
  v124 = &v157 - v158;
  v125 = v176;
  v126 = v160;
  v160(&v157 - v158, v110, v123);
  sub_233121E04(v110, &qword_27DDE19A0, &unk_233290360);
  sub_23328CC1C();
  v163(v124, v125);
  v127 = v169 + 32;
  v169 = *(v169 + 32);
  v128 = (v169)(v106, v108, v125);
  v183 = &v157;
  v182 = *&v191[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioIOQueue];
  v129 = MEMORY[0x28223BE20](v128);
  v130 = &v157 - v158;
  v126(&v157 - v158, v106, v125, v129);
  v131 = (*(v127 + 48) + 48) & ~*(v127 + 48);
  v161 = (v122 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
  v164 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8);
  v132 = (v164 + 15) & 0xFFFFFFFFFFFFFFF8;
  v133 = (v132 + 15) & 0xFFFFFFFFFFFFFFF8;
  v134 = (v133 + 15) & 0xFFFFFFFFFFFFFFF8;
  v177 = v106;
  v135 = (v134 + 23) & 0xFFFFFFFFFFFFFFF8;
  v136 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
  v137 = swift_allocObject();
  v138 = v166;
  *(v137 + 16) = v165;
  *(v137 + 24) = v138;
  *(v137 + 32) = v174;
  *(v137 + 33) = v167;
  *(v137 + 40) = v175;
  (v169)(v137 + v131, v130, v176);
  v139 = (v137 + v161);
  v140 = v178;
  *v139 = v162;
  v139[1] = v140;
  v141 = v191;
  *(v164 + v137) = v191;
  v142 = v180;
  *(v137 + v132) = v180;
  *(v137 + v133) = v181;
  v143 = (v137 + v134);
  v144 = v173;
  *v143 = v170;
  v143[1] = v144;
  *(v137 + v135) = v171;
  v145 = (v137 + v136);
  v146 = v168;
  *v145 = v172;
  v145[1] = v146;
  v147 = (v137 + ((v136 + 23) & 0xFFFFFFFFFFFFFFF8));
  v148 = v185;
  *v147 = v184;
  v147[1] = v148;
  v197 = sub_23321DCC4;
  v198 = v137;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v195 = sub_2331221F8;
  v196 = &block_descriptor_153_0;
  v149 = _Block_copy(&aBlock);
  v150 = v175;
  v151 = v141;

  v152 = v142;
  v153 = v166;
  v154 = v186;
  sub_23328D7DC();
  v193 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v155 = v187;
  v156 = v192;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v154, v155, v149);
  _Block_release(v149);

  (*(v190 + 8))(v155, v156);
  (*(v188 + 8))(v154, v189);
  v163(v177, v176);
}

uint64_t sub_23321230C(unint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, char *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17)
{
  v69 = a8;
  v59 = a6;
  v60 = a7;
  v19 = a3;
  v57 = a1;
  v58 = a2;
  v61 = a16;
  v62 = a17;
  v20 = a3 >> 8;
  v21 = sub_23328D7CC();
  v67 = *(v21 - 8);
  v68 = v21;
  MEMORY[0x28223BE20](v21);
  v64 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23328D80C();
  v65 = *(v23 - 8);
  v66 = v23;
  MEMORY[0x28223BE20](v23);
  v63 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23328CC9C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  LOBYTE(aBlock) = v19;
  BYTE1(aBlock) = v20;
  v72 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = v52 - v31;
  v33 = *(v26 + 16);
  v33(v52 - v31, a5, v25, v30);
  (*(v26 + 56))(v32, 0, 1, v25);
  static TTSVBAudioTools.createAudioFileFromBuffers(_:convertFrom:audioOverrides:saveTo:filename:)(v57, v58, &aBlock, v32, v59, v60, v52 - v28);
  v57 = a15;
  v55 = a14;
  v54 = a13;
  v60 = a12;
  v53 = a11;
  v52[1] = a10;
  v34 = sub_233121E04(v32, &qword_27DDE19A0, &unk_233290360);
  v59 = v52;
  v58 = *&v69[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  v35 = MEMORY[0x28223BE20](v34);
  v36 = v52 - v28;
  v56 = v52 - v28;
  v33(v52 - v28, v52 - v28, v25, v35);
  v37 = (*(v26 + 80) + 72) & ~*(v26 + 80);
  v38 = (v27 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 2) = a9;
  *(v39 + 3) = a10;
  v40 = v60;
  *(v39 + 4) = v53;
  *(v39 + 5) = v40;
  v41 = v55;
  *(v39 + 6) = v54;
  *(v39 + 7) = v41;
  *(v39 + 8) = v57;
  (*(v26 + 32))(&v39[v37], v36, v25);
  v42 = v69;
  *&v39[v38] = v69;
  v43 = &v39[(v38 + 15) & 0xFFFFFFFFFFFFFFF8];
  v44 = v62;
  *v43 = v61;
  v43[1] = v44;
  v75 = sub_23321DDF0;
  v76 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_2331221F8;
  v74 = &block_descriptor_165;
  v45 = _Block_copy(&aBlock);
  v46 = a9;

  v47 = v42;

  v48 = v63;
  sub_23328D7DC();
  v70 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  v49 = v64;
  v50 = v68;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v48, v49, v45);
  _Block_release(v45);
  (*(v67 + 8))(v49, v50);
  (*(v65 + 8))(v48, v66);
  (*(v26 + 8))(v56, v25);
}

uint64_t sub_233212A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = a8;
  v70 = a6;
  v69 = a5;
  v68 = a3;
  v15 = sub_23328D7CC();
  v81 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v79 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23328D80C();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v77 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D6EC();
  v83 = *(v18 - 8);
  v84 = v18;
  MEMORY[0x28223BE20](v18);
  v82 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTSVBAudioService.RecordingResult(0);
  v73 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v74 = v21;
  v75 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v65 - v27;
  v29 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  swift_beginAccess();
  v76 = a2;
  v72 = v29;
  sub_23321DC54(a2 + v29, v28);
  v30 = sub_23328CC9C();
  v31 = *(v30 - 8);
  result = (*(v31 + 48))(v28, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v67 = a11;
    v66 = a10;
    v65[1] = a9;
    *v24 = a1;
    (*(v31 + 32))(&v24[v20[5]], v28, v30);
    v33 = &v24[v20[6]];
    *v33 = v68;
    v33[1] = a4;
    *&v24[v20[7]] = v69;
    v34 = v20[8];
    v69 = v24;
    v35 = &v24[v34];
    *v35 = v70;
    v35[1] = a7;

    v36 = a1;
    v37 = sub_233225380();
    v38 = (*(v83 + 16))(v82, v37, v84);
    v39 = MEMORY[0x28223BE20](v38);
    v41 = v65 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v41, v71, v30, v39);
    v42 = sub_23328D6CC();
    v43 = sub_23328DE1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v71 = v15;
      v46 = v45;
      aBlock[0] = v45;
      *v44 = 136315138;
      v47 = sub_23328CC6C();
      v70 = v26;
      v49 = v48;
      (*(v31 + 8))(v41, v30);
      v50 = sub_23311A8F4(v47, v49, aBlock);
      v26 = v70;

      *(v44 + 4) = v50;
      _os_log_impl(&dword_233109000, v42, v43, "Will end audio recording: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v51 = v46;
      v15 = v71;
      MEMORY[0x23839CFD0](v51, -1, -1);
      MEMORY[0x23839CFD0](v44, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v41, v30);
    }

    v52 = (*(v83 + 8))(v82, v84);
    v53 = MEMORY[0x28223BE20](v52);
    v54 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 56))(v54, 1, 1, v30, v53);
    v55 = v76;
    v56 = v72;
    swift_beginAccess();
    sub_23321DEA0(v54, v55 + v56);
    swift_endAccess();
    v57 = v69;
    v58 = v75;
    sub_23321DF10(v69, v75, type metadata accessor for TTSVBAudioService.RecordingResult);
    v59 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v60 = swift_allocObject();
    v61 = v67;
    *(v60 + 16) = v66;
    *(v60 + 24) = v61;
    sub_23321DF78(v58, v60 + v59);
    aBlock[4] = sub_23321DFDC;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_171;
    v62 = _Block_copy(aBlock);

    v63 = v77;
    sub_23328D7DC();
    v85 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v64 = v79;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v63, v64, v62);
    _Block_release(v62);
    (*(v81 + 8))(v64, v15);
    (*(v78 + 8))(v63, v80);
    sub_23321DB24(v57, type metadata accessor for TTSVBAudioService.RecordingResult);
  }

  return result;
}

uint64_t sub_233213328(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3260, &qword_23329CE30);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_23321DF10(a3, &v9 - v6, type metadata accessor for TTSVBAudioService.RecordingResult);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_233121E04(v7, &qword_27DDE3260, &qword_23329CE30);
}

uint64_t sub_233213414(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3260, &qword_23329CE30);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  v9 = xmmword_23329C630;
  v10 = 3;
  static TTSVBError.map(_:_:)(a3, &v9, &v9 - v6);
  swift_storeEnumTagMultiPayload();
  a1(v7);
  return sub_233121E04(v7, &qword_27DDE3260, &qword_23329CE30);
}

char *sub_233213508(char a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v50 = sub_23328D7CC();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23328D80C();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23328D82C();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - v14;
  v15 = sub_23328D6EC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_233225380();
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_23328D6CC();
  v21 = sub_23328DE1C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v47 = a2;
    v46 = a4;
    v25 = v24;
    aBlock[0] = v24;
    v26 = "recordingWillStart";
    *v23 = 136315138;
    if (a1)
    {
      v26 = "recordingDidFinish";
    }

    v27 = v12;
    v28 = a3;
    v29 = sub_23311A8F4(0xD000000000000012, (v26 - 32) | 0x8000000000000000, aBlock);

    *(v23 + 4) = v29;
    a3 = v28;
    v12 = v27;
    _os_log_impl(&dword_233109000, v20, v21, "Did finish playing sound effect '%s'. Calling completion", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v30 = v25;
    a4 = v46;
    MEMORY[0x23839CFD0](v30, -1, -1);
    MEMORY[0x23839CFD0](v23, -1, -1);

    (*(v16 + 8))(v18, v45);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = result;
    v33 = *&result[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
    v34 = v48;
    v35 = v33;

    sub_23328D81C();
    v36 = v49;
    sub_23328D84C();
    v48 = v34[1];
    v37 = v12;
    v38 = v51;
    (v48)(v37, v51);
    v39 = swift_allocObject();
    *(v39 + 16) = a3;
    *(v39 + 24) = a4;
    aBlock[4] = sub_2331BE574;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_202;
    v40 = _Block_copy(aBlock);

    v41 = v53;
    sub_23328D7DC();
    v57 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    v42 = v55;
    v43 = v50;
    sub_23328E14C();
    MEMORY[0x23839BBE0](v36, v41, v42, v40);
    _Block_release(v40);

    (*(v52 + 8))(v42, v43);
    (*(v54 + 8))(v41, v56);
    (v48)(v36, v38);
  }

  return result;
}

uint64_t sub_233213B1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_233213B70(void *a1)
{
  v187 = a1;
  v3 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v3 - 8);
  v173 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v183);
  v172 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v184 = &v167 - v7;
  v191 = sub_23328D6EC();
  v8 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v10 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v169 = &v167 - v12;
  MEMORY[0x28223BE20](v13);
  v186 = (&v167 - v14);
  MEMORY[0x28223BE20](v15);
  v181 = &v167 - v16;
  v17 = sub_23328D83C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17, v19);
  v23 = v22;
  LOBYTE(v22) = sub_23328D85C();
  (*(v18 + 8))(v21, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v24 = *MEMORY[0x277CB8028];
  v25 = v1;
  v26 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession];
  v27 = [v26 category];
  v28 = [v26 categoryOptions];
  v189 = [v26 mode];
  v175 = v26;
  v29 = [v26 preferredInput];
  if (v29)
  {
    v30 = v29;
    v188 = [v29 portType];
  }

  else
  {
    v188 = 0;
  }

  v182 = v10;
  v31 = sub_23328D98C();
  v33 = v32;
  v192 = v24;
  v34 = sub_23328D98C();
  v190 = v8;
  v185 = v2;
  v174 = v28;
  if (v31 == v34 && v33 == v35)
  {
  }

  else
  {
    v36 = sub_23328E54C();

    if ((v36 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v28 == 44)
  {
    v37 = sub_23328D98C();
    v39 = v38;
    if (v37 == sub_23328D98C() && v39 == v40)
    {
    }

    else
    {
      v41 = sub_23328E54C();

      if ((v41 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v42 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;

    sub_23328D73C();

    v43 = v197;
    if (v197)
    {
      v44 = [v197 portType];

      if (v188)
      {
        if (v44)
        {
          v45 = sub_23328D98C();
          v47 = v46;
          if (v45 == sub_23328D98C() && v47 == v48)
          {

            v8 = v190;
            goto LABEL_25;
          }

          v49 = sub_23328E54C();

          v8 = v190;
          if (v49)
          {
LABEL_25:
            v186 = v42;
            v50 = sub_233225380();
            v51 = v8;
            v52 = v181;
            v53 = v191;
            (*(v8 + 16))(v181, v50, v191);
            v54 = v192;
            v184 = v25;
            v55 = v25;
            v56 = sub_23328D6CC();
            v57 = sub_23328DE4C();

            LODWORD(v187) = v57;
            if (os_log_type_enabled(v56, v57))
            {
              v183 = v56;
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v199 = v59;
              *v58 = 136315650;
              *&v197 = sub_23328D98C();
              *(&v197 + 1) = v60;
              *&v195 = 0xD000000000000016;
              *(&v195 + 1) = 0x80000002332AAEE0;
              v193 = 0;
              v194 = 0xE000000000000000;
              v165 = sub_23311A294();
              v166 = v165;
              v163 = MEMORY[0x277D837D0];
              v164 = v165;
              v61 = sub_23328E06C();
              v63 = v62;

              v64 = sub_23311A8F4(v61, v63, &v199);

              *(v58 + 4) = v64;
              *(v58 + 12) = 2080;
              v65 = sub_2332169B0(44);
              v67 = sub_23311A8F4(v65, v66, &v199);

              *(v58 + 14) = v67;
              *(v58 + 22) = 2080;

              sub_23328D73C();

              v68 = v197;
              if (v197)
              {
                v69 = [v197 portName];

                v70 = sub_23328D98C();
                v72 = v71;
              }

              else
              {
                v70 = 7104878;
                v72 = 0xE300000000000000;
              }

              v151 = v191;
              v152 = v181;
              v153 = sub_23311A8F4(v70, v72, &v199);

              *(v58 + 24) = v153;
              v154 = v183;
              _os_log_impl(&dword_233109000, v183, v187, "Will not reconfigure audio session. Already in expected configuration category=%s options=%s portType=%s", v58, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23839CFD0](v59, -1, -1);
              MEMORY[0x23839CFD0](v58, -1, -1);

              (*(v190 + 8))(v152, v151);
            }

            else
            {

              (*(v51 + 8))(v52, v53);
            }

            return;
          }
        }
      }

      else
      {
        if (!v44)
        {
          goto LABEL_25;
        }
      }
    }

    else if (!v188)
    {
      goto LABEL_25;
    }
  }

LABEL_28:
  v73 = sub_233225380();
  v74 = *(v8 + 16);
  v75 = v186;
  v178 = v73;
  v76 = v191;
  v180 = v8 + 16;
  v179 = v74;
  (v74)(v186);
  v77 = v192;
  v78 = v25;
  v170 = v27;
  v79 = v27;
  v80 = v189;
  v81 = v187;
  v82 = sub_23328D6CC();
  v83 = sub_23328DE4C();
  v189 = v78;

  v176 = v81;
  v177 = v77;

  v187 = v79;
  v171 = v83;
  v84 = os_log_type_enabled(v82, v83);
  v181 = v80;
  if (v84)
  {
    v168 = v82;
    v85 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v199 = v167;
    *v85 = 136316930;
    *&v197 = sub_23328D98C();
    *(&v197 + 1) = v86;
    *&v195 = 0xD000000000000016;
    *(&v195 + 1) = 0x80000002332AAEE0;
    v170 = 0x80000002332AAEE0;
    v193 = 0;
    v194 = 0xE000000000000000;
    v87 = sub_23311A294();
    v165 = v87;
    v166 = v87;
    v163 = MEMORY[0x277D837D0];
    v164 = v87;
    v88 = sub_23328E06C();
    v90 = v89;

    v91 = sub_23311A8F4(v88, v90, &v199);

    *(v85 + 4) = v91;
    *(v85 + 12) = 2080;
    v92 = sub_2332169B0(v174);
    v94 = sub_23311A8F4(v92, v93, &v199);

    *(v85 + 14) = v94;
    *(v85 + 22) = 2080;
    v95 = sub_23328D98C();
    v97 = sub_23311A8F4(v95, v96, &v199);

    *(v85 + 24) = v97;
    *(v85 + 32) = 2080;
    v98 = [v175 preferredInput];
    if (v98)
    {
      v99 = v98;
      v100 = [v98 portName];

      v101 = sub_23328D98C();
      v103 = v102;
    }

    else
    {
      v103 = 0xE300000000000000;
      v101 = 7104878;
    }

    v106 = v184;
    v108 = v176;
    v109 = sub_23311A8F4(v101, v103, &v199);

    *(v85 + 34) = v109;
    *(v85 + 42) = 2080;
    *&v197 = sub_23328D98C();
    *(&v197 + 1) = v110;
    *&v195 = 0xD000000000000016;
    *(&v195 + 1) = v170;
    v193 = 0;
    v194 = 0xE000000000000000;
    v165 = v87;
    v166 = v87;
    v164 = v87;
    v163 = MEMORY[0x277D837D0];
    v111 = sub_23328E06C();
    v113 = v112;

    v114 = sub_23311A8F4(v111, v113, &v199);

    *(v85 + 44) = v114;
    *(v85 + 52) = 2080;
    v115 = sub_2332169B0(44);
    v117 = sub_23311A8F4(v115, v116, &v199);

    *(v85 + 54) = v117;
    *(v85 + 62) = 2080;
    v118 = sub_23328D98C();
    v120 = sub_23311A8F4(v118, v119, &v199);

    *(v85 + 64) = v120;
    *(v85 + 72) = 2080;

    sub_23328D73C();

    v121 = v197;
    v122 = 7104878;
    if (v197)
    {
      v123 = [v197 portName];

      v122 = sub_23328D98C();
      v125 = v124;
    }

    else
    {
      v125 = 0xE300000000000000;
    }

    v107 = v185;
    v126 = v190;
    v127 = sub_23311A8F4(v122, v125, &v199);

    *(v85 + 74) = v127;
    v128 = v168;
    _os_log_impl(&dword_233109000, v168, v171, "Will reconfigure audio session from [category=%s options=%s mode=%s portType=%s] to [category=%s options=%s mode=%s] portType=%s", v85, 0x52u);
    v129 = v167;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v129, -1, -1);
    MEMORY[0x23839CFD0](v85, -1, -1);

    v130 = v186;
    v105 = v191;
    v186 = *(v126 + 8);
    v104 = v186(v130);
  }

  else
  {

    v186 = *(v190 + 8);
    v104 = (v186)(v75, v76);
    v105 = v76;
    v106 = v184;
    v107 = v185;
    v108 = v176;
  }

  MEMORY[0x28223BE20](v104);
  v131 = v189;
  v163 = v189;
  v164 = v177;
  v165 = v108;
  v166 = 44;
  *&v197 = sub_23328D98C();
  *(&v197 + 1) = v132;
  v198 = 1;
  swift_storeEnumTagMultiPayload();
  static TTSVBError.perform<A>(_:problem:reason:)(sub_23321DA9C, (&v167 - 6), &v197, v106);
  if (v107)
  {
    sub_23321DB24(v106, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v197, *(&v197 + 1), v198);
    v136 = v182;
    v179(v182, v178, v105);
    v137 = v107;
    v138 = sub_23328D6CC();
    v139 = sub_23328DE3C();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v193 = v141;
      *v140 = 136315138;
      sub_2331524CC(&v197);
      v195 = v197;
      v196 = v198;
      v142 = v173;
      static TTSVBError.map(_:_:)(v107, &v195, v173);
      sub_2331220AC(v195, *(&v195 + 1), v196);
      v143 = TTSVBError.description.getter();
      v145 = v144;
      sub_23321DB24(v142, type metadata accessor for TTSVBError);
      v146 = sub_23311A8F4(v143, v145, &v193);

      *(v140 + 4) = v146;
      _os_log_impl(&dword_233109000, v138, v139, "%s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v141);
      MEMORY[0x23839CFD0](v141, -1, -1);
      MEMORY[0x23839CFD0](v140, -1, -1);

      v147 = v191;
      v148 = v136;
    }

    else
    {

      v148 = v136;
      v147 = v105;
    }

    (v186)(v148, v147);
    v149 = v181;
    swift_willThrow();
  }

  else
  {
    sub_23321DB24(v106, type metadata accessor for TTSVBError.Reason);
    v133 = sub_2331220AC(v197, *(&v197 + 1), v198);
    MEMORY[0x28223BE20](v133);
    v165 = v131;
    *&v197 = 0xD000000000000024;
    *(&v197 + 1) = 0x80000002332AB470;
    v198 = 0;
    v134 = v172;
    sub_2331524D0(v172);
    static TTSVBError.perform<A>(_:problem:reason:)(sub_23321DB84, &v163, &v197, v134);
    sub_23321DB24(v134, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v197, *(&v197 + 1), v198);
    v135 = sub_233216F24();
    if (v135)
    {
      v150 = v135;
      sub_233217864(v135);
    }

    sub_233218B40();
    v155 = v169;
    v179(v169, v178, v105);
    v156 = v131;
    v157 = sub_23328D6CC();
    v158 = sub_23328DE4C();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 67109632;
      v160 = v175;
      *(v159 + 4) = [v175 isInputGainSettable];

      *(v159 + 8) = 2048;
      [v160 inputGain];
      *(v159 + 10) = v161;
      *(v159 + 18) = 2048;
      [v160 sampleRate];
      *(v159 + 20) = v162;
      _os_log_impl(&dword_233109000, v157, v158, "isInputGainSettable=%{BOOL}d inputGain%f sampleRate=%f", v159, 0x1Cu);
      MEMORY[0x23839CFD0](v159, -1, -1);
    }

    else
    {
    }

    (v186)(v155, v105);
  }
}

void sub_233214E78()
{
  v77 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v77);
  v2 = &v71[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = sub_23328D6EC();
  v3 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v71[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v71[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v71[-v9];
  v11 = sub_23328D83C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_23328D85C();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if ([*(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession) isInputAvailable])
    {
      v76 = v0;
      v18 = sub_233225380();
      v73 = *(v3 + 16);
      v74 = v18;
      (v73)(v10);
      v19 = sub_23328D6CC();
      v20 = sub_23328DE4C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_233109000, v19, v20, "Will install audio tap", v21, 2u);
        MEMORY[0x23839CFD0](v21, -1, -1);
      }

      v22 = *(v3 + 8);
      v23 = v78;
      v22(v10, v78);
      v24 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
      if (*(*(v76 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) == 1)
      {
        (v73)(v7, v74, v23);
        v25 = sub_23328D6CC();
        v26 = sub_23328DE4C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_233109000, v25, v26, "An old audio tap appears to be installed already. Will remove it first", v27, 2u);
          v28 = v27;
          v23 = v78;
          MEMORY[0x23839CFD0](v28, -1, -1);
        }

        v22(v7, v23);
        sub_233215748();
      }

      v29 = sub_233207C68();
      v30 = [v29 inputNode];

      v31 = [v30 inputFormatForBus_];
      [v31 sampleRate];
      if (v32 == 0.0 || ![v31 channelCount])
      {
        aBlock = xmmword_23329C640;
        LOBYTE(v80) = 3;
        [v31 sampleRate];
        v34 = v33;
        v35 = [v31 channelCount];
        *v2 = v34;
        *(v2 + 2) = v35;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for TTSVBError(0);
        sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
        swift_allocError();
        TTSVBError.init(_:_:_:)(&aBlock, v2, 0, v36);
        swift_willThrow();
      }

      else
      {
        v77 = v24;
        v38 = *(v76 + v24);
        v39 = *(v38 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat);
        *(v38 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat) = v31;
        v40 = v31;

        v41 = v75;
        v42 = v78;
        (v73)(v75, v74, v78);
        v43 = v40;
        v44 = v30;
        v45 = sub_23328D6CC();
        v46 = sub_23328DE4C();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&aBlock = v74;
          *v47 = 136315650;
          v48 = [v44 debugDescription];
          v73 = v45;
          v49 = v48;
          v50 = sub_23328D98C();
          v72 = v46;
          v51 = v50;
          v53 = v52;

          v54 = sub_23311A8F4(v51, v53, &aBlock);

          *(v47 + 4) = v54;
          *(v47 + 12) = 2080;
          v55 = [v44 AUAudioUnit];
          v56 = [v55 debugDescription];

          v57 = sub_23328D98C();
          v59 = v58;

          v60 = sub_23311A8F4(v57, v59, &aBlock);

          *(v47 + 14) = v60;
          *(v47 + 22) = 2080;
          sub_2332159F8();
          v63 = sub_23311A8F4(v61, v62, &aBlock);

          *(v47 + 24) = v63;
          v64 = v73;
          _os_log_impl(&dword_233109000, v73, v72, "Installing audio tap input=[%s - %s] format=[%s]", v47, 0x20u);
          v65 = v74;
          swift_arrayDestroy();
          MEMORY[0x23839CFD0](v65, -1, -1);
          MEMORY[0x23839CFD0](v47, -1, -1);

          v66 = v75;
          v67 = v78;
        }

        else
        {

          v66 = v41;
          v67 = v42;
        }

        v22(v66, v67);
        v68 = swift_allocObject();
        v69 = v76;
        swift_unknownObjectWeakInit();
        v82 = sub_23321E0DC;
        v83 = v68;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v80 = sub_2332161B8;
        v81 = &block_descriptor_206;
        v70 = _Block_copy(&aBlock);

        [v44 installTapOnBus:0 bufferSize:1024 format:v43 block:v70];

        _Block_release(v70);
        *(*(v69 + v77) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) = 1;
      }
    }

    else
    {
      aBlock = xmmword_23329C640;
      LOBYTE(v80) = 3;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_23321CD30(&qword_280D3A0B0, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(&aBlock, v2, 0, v37);
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_233215748()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D83C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_23328D85C();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
    if (*(*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) == 1)
    {
      v14 = sub_233225380();
      (*(v3 + 16))(v5, v14, v2);
      v15 = sub_23328D6CC();
      v16 = sub_23328DE4C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_233109000, v15, v16, "Removing audio tap", v17, 2u);
        MEMORY[0x23839CFD0](v17, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      v18 = sub_233207C68();
      v19 = [v18 inputNode];

      [v19 removeTapOnBus_];
      *(*(v1 + v13) + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2332159F8()
{
  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0x647261646E617473, 0xE90000000000003DLL);
  v1 = [v0 isStandard];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  v4 = 0xE500000000000000;
  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x23839B7E0](v3, v5);

  MEMORY[0x23839B7E0](0x6C656E6E61686320, 0xEE003D746E756F43);
  LODWORD(v36) = [v0 channelCount];
  v6 = sub_23328E51C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0x52656C706D617320, 0xEC0000003D657461);
  [v0 sampleRate];
  sub_23328DCDC();
  MEMORY[0x23839B7E0](0x656C7265746E6920, 0xED00003D64657661);
  v7 = [v0 isInterleaved];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  MEMORY[0x23839B7E0](v9, v10);

  MEMORY[0x23839B7E0](0x466E6F6D6D6F6320, 0xEE003D74616D726FLL);
  v11 = [v0 commonFormat];
  if (v11 <= 1)
  {
    if (!v11)
    {
      v12 = 0x726568746FLL;
      goto LABEL_25;
    }

    if (v11 == 1)
    {
      v4 = 0xE300000000000000;
      v12 = 3289958;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        v4 = 0xE300000000000000;
        v12 = 3421798;
        goto LABEL_25;
      case 3:
        v4 = 0xE300000000000000;
        v12 = 3551593;
        goto LABEL_25;
      case 4:
        v12 = 3289961;
        v4 = 0xE300000000000000;
        goto LABEL_25;
    }
  }

  v4 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
LABEL_25:
  MEMORY[0x23839B7E0](v12, v4);

  *(&v40[2] + 8) = v39;
  v13 = [v0 settings];
  v14 = sub_23328D89C();

  v15 = 0;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  if (!v18)
  {
    goto LABEL_30;
  }

  do
  {
    while (1)
    {
      v22 = v15;
LABEL_40:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v22 << 6);
      v25 = (*(v14 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      sub_23311B0C0(*(v14 + 56) + 32 * v24, v35);
      *&v36 = v27;
      *(&v36 + 1) = v26;
      sub_233145134(v35, &v37);

      v21 = v22;
LABEL_41:
      v39 = v36;
      v40[0] = v37;
      v40[1] = v38;
      v28 = *(&v36 + 1);
      if (!*(&v36 + 1))
      {

        return;
      }

      v29 = v39;
      sub_233145134(v40, &v36);
      if (v29 == sub_23328D98C() && v30 == v28)
      {

        goto LABEL_46;
      }

      v31 = sub_23328E54C();

      if ((v31 & 1) == 0)
      {
        break;
      }

LABEL_46:
      sub_23311B0C0(&v36, v35);
      sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v32 = [v34 unsignedIntValue];

        *&v35[0] = 32;
        *(&v35[0] + 1) = 0xE100000000000000;
        MEMORY[0x23839B7E0](v29, v28);

        MEMORY[0x23839B7E0](61, 0xE100000000000000);
        v33 = sub_23321A35C(v32);
        MEMORY[0x23839B7E0](v33);

        goto LABEL_49;
      }

      __swift_destroy_boxed_opaque_existential_0(&v36);

      v15 = v21;
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    *&v35[0] = 0;
    *(&v35[0] + 1) = 0xE000000000000000;
    MEMORY[0x23839B7E0](32, 0xE100000000000000);
    MEMORY[0x23839B7E0](v29, v28);

    MEMORY[0x23839B7E0](61, 0xE100000000000000);
    sub_23328E30C();
LABEL_49:
    MEMORY[0x23839B7E0](*&v35[0], *(&v35[0] + 1));

    __swift_destroy_boxed_opaque_existential_0(&v36);
    v15 = v21;
  }

  while (v18);
LABEL_30:
  if (v19 <= v15 + 1)
  {
    v20 = v15 + 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20 - 1;
  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v18 = 0;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      goto LABEL_41;
    }

    v18 = *(v14 + 64 + 8 * v22);
    ++v15;
    if (v18)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
}

uint64_t sub_233215FD0(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = 0;
  v9 = a1;
  while (1)
  {
    v10 = v9 <= a2;
    if (a3 > 0)
    {
      v10 = v9 >= a2;
    }

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v9, a3);
    v9 += a3;
    if (v11)
    {
      v9 = (v9 >> 63) ^ 0x8000000000000000;
    }

    v11 = __OFADD__(v8++, 1);
    if (v11)
    {
      __break(1u);
      break;
    }
  }

  v24 = MEMORY[0x277D84F90];
  sub_23321B890(0, v8, 0);
  result = v24;
  if (v8)
  {
    while (1)
    {
      v13 = v7 <= a2;
      if (a3 > 0)
      {
        v13 = v7 >= a2;
      }

      if (v13)
      {
        break;
      }

      v14 = *(a4 + 4 * v7);
      if (__OFADD__(v7, a3))
      {
        v15 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v15 = v7 + a3;
      }

      v25 = result;
      v17 = *(result + 16);
      v16 = *(result + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23321B890((v16 > 1), v17 + 1, 1);
        result = v25;
      }

      *(result + 16) = v17 + 1;
      *(result + 4 * v17 + 32) = v14;
      v7 = v15;
      if (!--v8)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
LABEL_22:
    v18 = v15 <= a2;
    if (a3 > 0)
    {
      v18 = v15 >= a2;
    }

    if (!v18)
    {
      v19 = *(result + 16);
      do
      {
        if (__OFADD__(v15, a3))
        {
          v20 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v20 = v15 + a3;
        }

        v21 = *(a4 + 4 * v15);
        v26 = result;
        v22 = *(result + 24);
        if (v19 >= v22 >> 1)
        {
          sub_23321B890((v22 > 1), v19 + 1, 1);
          result = v26;
        }

        *(result + 16) = v19 + 1;
        *(result + 4 * v19 + 32) = v21;
        v23 = v20 <= a2;
        if (a3 > 0)
        {
          v23 = v20 >= a2;
        }

        ++v19;
        v15 = v20;
      }

      while (!v23);
    }
  }

  return result;
}

void sub_2332161B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_233216264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v20[1] = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
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
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_23321653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23328D7CC();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D80C();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233213B70(*MEMORY[0x277CB80A8]);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  aBlock[4] = sub_23321DA80;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_141;
  v12 = _Block_copy(aBlock);

  sub_23328D7DC();
  v17 = MEMORY[0x277D84F90];
  sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_2332169B0(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_233143EE0(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_233143EE0((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  strcpy(v5 + 32, "mixWithOthers");
  *(v5 + 23) = -4864;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_233143EE0((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6568744F6B637564;
    *(v8 + 5) = 0xEA00000000007372;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_233143EE0((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "allowBluetooth");
    v11[47] = -18;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_233143EE0((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000010;
    *(v14 + 5) = 0x80000002332AAF80;
  }

  if ((~a1 & 0x11) != 0)
  {
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v18 = *(v2 + 2);
    v17 = *(v2 + 3);
    if (v18 >= v17 >> 1)
    {
      v2 = sub_233143EE0((v17 > 1), v18 + 1, 1, v2);
    }

    *(v2 + 2) = v18 + 1;
    v19 = &v2[16 * v18];
    *(v19 + 4) = 0xD000000000000024;
    *(v19 + 5) = 0x80000002332AAF50;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_41;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
  }

  v21 = *(v2 + 2);
  v20 = *(v2 + 3);
  if (v21 >= v20 >> 1)
  {
    v2 = sub_233143EE0((v20 > 1), v21 + 1, 1, v2);
  }

  *(v2 + 2) = v21 + 1;
  v22 = &v2[16 * v21];
  *(v22 + 4) = 0xD000000000000012;
  *(v22 + 5) = 0x80000002332AAF30;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

LABEL_46:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
    }

    v27 = *(v2 + 2);
    v26 = *(v2 + 3);
    v15 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v2 = sub_233143EE0((v26 > 1), v27 + 1, 1, v2);
    }

    *(v2 + 2) = v15;
    v28 = &v2[16 * v27];
    *(v28 + 4) = 0xD000000000000023;
    *(v28 + 5) = 0x80000002332AAF00;
    if (v27)
    {
      goto LABEL_29;
    }

LABEL_51:
    v29 = *(v2 + 4);

    return v29;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233143EE0(0, *(v2 + 2) + 1, 1, v2);
  }

  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = sub_233143EE0((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  v25 = &v2[16 * v24];
  strcpy(v25 + 32, "allowAirPlay");
  v25[45] = 0;
  *(v25 + 23) = -5120;
  if (a1 < 0)
  {
    goto LABEL_46;
  }

LABEL_28:
  v15 = *(v2 + 2);
  if (v15 == 1)
  {
    goto LABEL_51;
  }

LABEL_29:
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
    sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
    v30 = sub_23328D8FC();
    v32 = v31;

    MEMORY[0x23839B7E0](v30, v32);

    MEMORY[0x23839B7E0](93, 0xE100000000000000);
    return 91;
  }

  else
  {

    return 1701736270;
  }
}

id sub_233216F24()
{
  v97[1] = *MEMORY[0x277D85DE8];
  v89 = sub_23328D6EC();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v2 = v86 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v91 = v86 - v4;
  v5 = sub_23328D83C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_23328D85C();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    goto LABEL_29;
  }

  v90 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);
  v12 = [v90 availableInputs];
  v87 = v2;
  if (v12)
  {
    v13 = v12;
    sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
    v86[0] = sub_23328DBFC();
  }

  else
  {
    v86[0] = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3250, &qword_23329CE18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B40;
  v15 = *MEMORY[0x277CB81E0];
  v16 = *MEMORY[0x277CB81E8];
  *(inited + 32) = *MEMORY[0x277CB81E0];
  *(inited + 40) = v16;
  v17 = *MEMORY[0x277CB8200];
  v18 = *MEMORY[0x277CB81F8];
  *(inited + 48) = *MEMORY[0x277CB8200];
  *(inited + 56) = v18;
  v97[0] = inited;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_233297B30;
  v20 = *MEMORY[0x277CB8190];
  *(v19 + 32) = *MEMORY[0x277CB8190];
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v20;
  sub_23321B9B4(v19);
  v26 = [v90 availableInputs];
  if (v26)
  {
    v27 = v26;
    sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
    v9 = sub_23328DBFC();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v5 = v91;
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
  {
    v5 = 0;
    v29 = 0;
    v30 = v97[0];
    v95 = i;
    v96 = v9 & 0xC000000000000001;
    v92 = v9;
    v93 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v96)
      {
        v31 = MEMORY[0x23839BFC0](v5, v9);
      }

      else
      {
        if (v5 >= *(v93 + 16))
        {
          goto LABEL_28;
        }

        v31 = *(v9 + 8 * v5 + 32);
      }

      v32 = v31;
      v33 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v34 = [v31 portType];
      v35 = sub_233218EF0(v34, v30);
      v37 = v36;

      if (v37)
      {
      }

      else if (v29)
      {
        v94 = v29;
        v38 = v29;
        v39 = [v38 portType];
        v40 = sub_233218EF0(v39, v30);
        v42 = v41;

        if (v42)
        {
          __break(1u);
        }

        if (v35 >= v40)
        {

          v29 = v94;
        }

        else
        {

          v29 = v32;
        }

        v9 = v92;
      }

      else
      {
        v29 = v32;
      }

      ++v5;
      if (v33 == v95)
      {
        v94 = v29;

        v5 = v91;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v94 = 0;
LABEL_32:

  v43 = sub_233225380();
  v44 = v88;
  v45 = *(v88 + 16);
  v46 = v89;
  v45(v5, v43, v89);
  v47 = v5;
  v48 = sub_23328D6CC();
  v49 = sub_23328DE4C();
  if (os_log_type_enabled(v48, v49))
  {
    v96 = v45;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v97[0] = v51;
    *v50 = 136315138;
    if (v94)
    {
      v52 = v94;
      v53 = [v52 portName];
      v95 = v43;
      v54 = v53;
      v55 = sub_23328D98C();
      v57 = v56;

      v43 = v95;
    }

    else
    {
      v55 = 7104878;
      v57 = 0xE300000000000000;
    }

    v59 = sub_23311A8F4(v55, v57, v97);

    *(v50 + 4) = v59;
    _os_log_impl(&dword_233109000, v48, v49, "Will set preferred input: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x23839CFD0](v51, -1, -1);
    MEMORY[0x23839CFD0](v50, -1, -1);

    v58 = *(v88 + 8);
    v46 = v89;
    v58(v91, v89);
    v45 = v96;
  }

  else
  {

    v58 = *(v44 + 8);
    v58(v47, v46);
  }

  v97[0] = 0;
  v60 = v94;
  v61 = [v90 setPreferredInput:v94 error:{v97, v86[0]}];
  v62 = v87;
  if (v61)
  {
    v63 = v97[0];
  }

  else
  {
    v64 = v97[0];
    v65 = sub_23328CA7C();

    swift_willThrow();
    v45(v62, v43, v46);
    v66 = v65;
    v67 = sub_23328D6CC();
    v68 = sub_23328DE3C();

    if (os_log_type_enabled(v67, v68))
    {
      v86[1] = v65;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v97[0] = v70;
      *v69 = 136315394;
      if (v94)
      {
        v71 = v94;
        v72 = [v71 portName];
        v73 = sub_23328D98C();
        v75 = v74;
      }

      else
      {
        v73 = 7104878;
        v75 = 0xE300000000000000;
      }

      v78 = sub_23311A8F4(v73, v75, v97);

      *(v69 + 4) = v78;
      *(v69 + 12) = 2080;
      v79 = sub_23328CA6C();
      v80 = [v79 description];

      v81 = sub_23328D98C();
      v83 = v82;

      v84 = sub_23311A8F4(v81, v83, v97);

      *(v69 + 14) = v84;
      _os_log_impl(&dword_233109000, v67, v68, "Could not set preferred input: %s. Error=%s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v70, -1, -1);
      MEMORY[0x23839CFD0](v69, -1, -1);

      v76 = v87;
      v77 = v89;
    }

    else
    {

      v76 = v62;
      v77 = v46;
    }

    v58(v76, v77);
    swift_willThrow();
    v60 = v94;
  }

  return v60;
}

void sub_233217864(void *a1)
{
  v194 = a1;
  v206[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v202 = &v187 - v7;
  MEMORY[0x28223BE20](v8);
  v190 = &v187 - v9;
  MEMORY[0x28223BE20](v10);
  v187 = &v187 - v11;
  MEMORY[0x28223BE20](v12);
  v189 = &v187 - v13;
  MEMORY[0x28223BE20](v14);
  v196 = &v187 - v15;
  MEMORY[0x28223BE20](v16);
  v205 = &v187 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v187 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v187 - v22;
  v24 = sub_23328D83C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v187 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24, v26);
  v30 = v29;
  LOBYTE(v29) = sub_23328D85C();
  (*(v25 + 8))(v28, v24);
  if (v29)
  {
    v31 = *sub_233165CA0();
    v32 = NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter();

    v33 = TTSVBIsInternalUIBuild();
    v197 = v2;
    v192 = v32;
    v188 = v5;
    if (v33 && v32)
    {
      v34 = sub_233225380();
      v35 = v3;
      v203 = *(v3 + 16);
      v203(v23, v34, v2);
      v36 = v32;
      v37 = sub_23328D6CC();
      v38 = sub_23328DE1C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v206[0] = v40;
        *v39 = 136315138;

        v41 = sub_23328D98C();
        v43 = sub_23311A8F4(v41, v42, v206);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_233109000, v37, v38, "Will consider override polar pattern: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        v44 = v40;
        v2 = v197;
        MEMORY[0x23839CFD0](v44, -1, -1);
        MEMORY[0x23839CFD0](v39, -1, -1);
      }

      else
      {
      }

      v204 = *(v35 + 8);
      v204(v23, v2);
      v57 = v194;
      v47 = v35;
      v191 = v36;
    }

    else
    {
      v45 = *MEMORY[0x277CB8130];
      v46 = sub_233225380();
      v47 = v3;
      v203 = *(v3 + 16);
      v203(v20, v46, v2);
      v48 = v45;
      v49 = sub_23328D6CC();
      v50 = sub_23328DE1C();

      v51 = os_log_type_enabled(v49, v50);
      v191 = v48;
      if (v51)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v206[0] = v53;
        *v52 = 136315138;
        v54 = sub_23328D98C();
        v56 = sub_23311A8F4(v54, v55, v206);
        v2 = v197;

        *(v52 + 4) = v56;
        _os_log_impl(&dword_233109000, v49, v50, "Will consider default polar pattern: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x23839CFD0](v53, -1, -1);
        MEMORY[0x23839CFD0](v52, -1, -1);
      }

      v204 = *(v47 + 8);
      v204(v20, v2);
      v57 = v194;
    }

    v58 = [v57 portType];
    v59 = sub_23328D98C();
    v61 = v60;
    if (v59 == sub_23328D98C() && v61 == v62)
    {
    }

    else
    {
      v63 = sub_23328E54C();

      if ((v63 & 1) == 0)
      {
        v99 = sub_233225380();
        v100 = v202;
        v203(v202, v99, v2);
        v101 = v57;
        v102 = sub_23328D6CC();
        v103 = sub_23328DE2C();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v206[0] = v105;
          *v104 = 136315138;
          v106 = [v101 portName];
          v107 = v2;
          v108 = sub_23328D98C();
          v110 = v109;

          v111 = sub_23311A8F4(v108, v110, v206);

          *(v104 + 4) = v111;
          _os_log_impl(&dword_233109000, v102, v103, "Will not set polar pattern. input is not built-in mic: %s", v104, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v105);
          MEMORY[0x23839CFD0](v105, -1, -1);
          MEMORY[0x23839CFD0](v104, -1, -1);

          v112 = v202;
          v113 = v107;
        }

        else
        {

          v112 = v100;
          v113 = v2;
        }

        v204(v112, v113);
        return;
      }
    }

    v64 = [v57 dataSources];
    if (v64)
    {
      v65 = v64;
      sub_233144EEC(0, &qword_27DDE3248, 0x277CB8400);
      v3 = sub_23328DBFC();
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v20 = v196;
    v66 = v205;
    v201 = sub_233225380();
    v202 = (v47 + 16);
    (v203)(v66);
    v67 = sub_23328D6CC();
    v68 = sub_23328DE2C();
    v69 = os_log_type_enabled(v67, v68);
    v199 = v3;
    if (v69)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_233109000, v67, v68, "Available datasources for built-in mic:", v70, 2u);
      v71 = v70;
      v3 = v199;
      MEMORY[0x23839CFD0](v71, -1, -1);
    }

    v200 = v47 + 8;
    v204(v66, v2);
    if (!(v3 >> 62))
    {
      v73 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v73)
      {
        goto LABEL_22;
      }

LABEL_72:

      v181 = v190;
      v182 = v197;
      v203(v190, v201, v197);

      v183 = sub_23328D6CC();
      v184 = sub_23328DE2C();

      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        v206[0] = v186;
        *v185 = 136315138;
        *(v185 + 4) = sub_23311A8F4(0x746E6F7246, 0xE500000000000000, v206);
        _os_log_impl(&dword_233109000, v183, v184, "Will not set polar pattern. No datasource name matching '%s'", v185, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v186);
        MEMORY[0x23839CFD0](v186, -1, -1);
        MEMORY[0x23839CFD0](v185, -1, -1);
      }

      v204(v181, v182);
      return;
    }
  }

  else
  {
LABEL_70:
    __break(1u);
  }

  v73 = sub_23328E19C();
  if (!v73)
  {
    goto LABEL_72;
  }

LABEL_22:
  if (v73 < 1)
  {
    __break(1u);
  }

  v74 = 0;
  v205 = (v3 & 0xC000000000000001);
  *&v72 = 136315138;
  v195 = v72;
  v75 = v197;
  v198 = v73;
  do
  {
    if (v205)
    {
      v76 = MEMORY[0x23839BFC0](v74, v3);
    }

    else
    {
      v76 = *(v3 + 8 * v74 + 32);
    }

    v77 = v76;
    v203(v20, v201, v75);
    v78 = v77;
    v79 = sub_23328D6CC();
    v80 = sub_23328DE2C();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v206[0] = v82;
      *v81 = v195;
      v83 = [v78 dataSourceName];
      v84 = sub_23328D98C();
      v86 = v85;

      v87 = v84;
      v20 = v196;
      v88 = sub_23311A8F4(v87, v86, v206);
      v3 = v199;

      *(v81 + 4) = v88;
      _os_log_impl(&dword_233109000, v79, v80, "  - %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v75 = v197;
      MEMORY[0x23839CFD0](v82, -1, -1);
      v73 = v198;
      MEMORY[0x23839CFD0](v81, -1, -1);
    }

    else
    {
    }

    v204(v20, v75);
    ++v74;
  }

  while (v73 != v74);
  v89 = 0;
  v90 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v205)
    {
      v91 = MEMORY[0x23839BFC0](v89, v3);
    }

    else
    {
      if (v89 >= *(v90 + 16))
      {
        goto LABEL_69;
      }

      v91 = *(v3 + 8 * v89 + 32);
    }

    v92 = v91;
    v93 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v94 = [v91 dataSourceName];
    v20 = sub_23328D98C();
    v96 = v95;

    if (v20 == 0x746E6F7246 && v96 == 0xE500000000000000)
    {
      break;
    }

    v98 = sub_23328E54C();

    if (v98)
    {
      goto LABEL_47;
    }

    ++v89;
    v3 = v199;
    if (v93 == v198)
    {
      goto LABEL_72;
    }
  }

LABEL_47:

  v114 = [v92 supportedPolarPatterns];
  v115 = v193;
  v116 = v194;
  if (v114)
  {
    v117 = v114;
    type metadata accessor for PolarPattern(0);
    v118 = sub_23328DBFC();
  }

  else
  {
    v118 = MEMORY[0x277D84F90];
  }

  v119 = *MEMORY[0x277CB8130];
  v206[0] = *MEMORY[0x277CB8130];
  MEMORY[0x28223BE20](v114);
  *(&v187 - 2) = v206;
  v120 = sub_23321BAAC(sub_23321DC0C, (&v187 - 4), v118);

  if (v120)
  {
    v121 = v189;
    v203(v189, v201, v197);
    v122 = v191;
    v123 = v116;
    v124 = v92;
    v125 = sub_23328D6CC();
    v126 = sub_23328DE4C();

    v127 = os_log_type_enabled(v125, v126);
    v199 = v123;
    if (v127)
    {
      v128 = swift_slowAlloc();
      v205 = v124;
      v129 = v128;
      v130 = swift_slowAlloc();
      v206[0] = v130;
      *v129 = 136315650;
      v131 = sub_23328D98C();
      v133 = sub_23311A8F4(v131, v132, v206);
      v193 = v115;
      v134 = v133;

      *(v129 + 4) = v134;
      *(v129 + 12) = 2080;
      v135 = [v123 portName];
      v136 = sub_23328D98C();
      v137 = v122;
      v139 = v138;

      v140 = sub_23311A8F4(v136, v139, v206);

      *(v129 + 14) = v140;
      *(v129 + 22) = 2080;
      v141 = [v205 dataSourceName];
      v142 = sub_23328D98C();
      v144 = v143;

      v145 = v142;
      v122 = v137;
      v146 = sub_23311A8F4(v145, v144, v206);

      *(v129 + 24) = v146;
      _os_log_impl(&dword_233109000, v125, v126, "Will set preferred polar pattern to %s: input=%s datasource=%s", v129, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v130, -1, -1);
      v147 = v129;
      v124 = v205;
      MEMORY[0x23839CFD0](v147, -1, -1);

      v148 = v189;
    }

    else
    {

      v148 = v121;
    }

    v204(v148, v197);
    v154 = v192;
    v206[0] = 0;
    v155 = [v124 setPreferredPolarPattern:v119 error:v206];
    v156 = v206[0];
    v157 = v188;
    if (v155 && (v206[0] = 0, v158 = v156, v159 = [v199 setPreferredDataSource:v124 error:v206], v156 = v206[0], v159))
    {
      v160 = v206[0];
    }

    else
    {
      v161 = v156;
      v162 = sub_23328CA7C();

      swift_willThrow();
      v163 = v197;
      v203(v157, v201, v197);
      v122 = v122;
      v164 = v162;
      v165 = sub_23328D6CC();
      v166 = sub_23328DE3C();

      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v206[0] = v168;
        *v167 = 136315394;
        v169 = sub_23328D98C();
        v205 = v124;
        v171 = sub_23311A8F4(v169, v170, v206);

        *(v167 + 4) = v171;
        *(v167 + 12) = 2080;
        v172 = sub_23328CA6C();
        v173 = [v172 description];

        v174 = sub_23328D98C();
        v176 = v175;

        v177 = sub_23311A8F4(v174, v176, v206);

        *(v167 + 14) = v177;
        v124 = v205;
        _os_log_impl(&dword_233109000, v165, v166, "Could not set polar pattern to %s. Error=%s", v167, 0x16u);
        swift_arrayDestroy();
        v178 = v168;
        v154 = v192;
        MEMORY[0x23839CFD0](v178, -1, -1);
        MEMORY[0x23839CFD0](v167, -1, -1);

        v179 = v188;
        v180 = v197;
      }

      else
      {

        v179 = v157;
        v180 = v163;
      }

      v204(v179, v180);
      swift_willThrow();
    }
  }

  else
  {
    v149 = v187;
    v150 = v197;
    v203(v187, v201, v197);
    v151 = sub_23328D6CC();
    v152 = sub_23328DE2C();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_233109000, v151, v152, "Will not set polar pattern. Datasource does not support this pattern", v153, 2u);
      MEMORY[0x23839CFD0](v153, -1, -1);
    }

    else
    {
    }

    v204(v149, v150);
  }
}

uint64_t sub_233218B40()
{
  v1 = sub_23328D83C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_23328D85C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);

    v9 = [v8 currentRoute];
    v10 = [v9 inputs];

    sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
    v0 = sub_23328DBFC();

    if (!(v0 >> 62))
    {
      result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }

LABEL_10:

      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_23328E19C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v0 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x23839BFC0](0, v0);
    goto LABEL_7;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v0 + 32);
LABEL_7:
    v13 = v12;

LABEL_11:
    v14[1] = v13;
    sub_23328D74C();
  }

  __break(1u);
  return result;
}

uint64_t sub_233218D68()
{
  v1 = v0;
  sub_23328E24C();

  v2 = [v0 inputs];
  sub_233144EEC(0, &qword_27DDE3150, 0x277CB8408);
  v3 = sub_23328DBFC();

  v4 = sub_23321A708(v3);
  v6 = v5;

  MEMORY[0x23839B7E0](v4, v6);

  MEMORY[0x23839B7E0](0x2D6574756F52207DLL, 0xEE007B3D7374754FLL);
  v7 = [v1 outputs];
  v8 = sub_23328DBFC();

  v9 = sub_23321A708(v8);
  v11 = v10;

  MEMORY[0x23839B7E0](v9, v11);

  MEMORY[0x23839B7E0](125, 0xE100000000000000);
  return 0x6E492D6574756F52;
}

uint64_t sub_233218EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = sub_23328D98C();
    v6 = v5;
    if (v4 == sub_23328D98C() && v6 == v7)
    {
      break;
    }

    v9 = sub_23328E54C();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

id TTSVBAudioService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2332190DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23321DF10(v2, v6, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v8 = &qword_27DDE3168;
        v9 = &qword_23329C6D8;
      }

      else
      {
        v8 = &qword_27DDE3160;
        v9 = &qword_23329C6D0;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_7:
    v8 = &qword_27DDE3158;
    v9 = &qword_23329C6C8;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
    v10 = v6 + *(v13 + 48);

    goto LABEL_9;
  }

  v8 = &qword_27DDE3178;
  v9 = &unk_23329C6E8;
LABEL_8:
  v10 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v8, v9) + 48);
LABEL_9:
  v11 = sub_23328CE1C();
  return (*(*(v11 - 8) + 32))(a1, v10, v11);
}

unint64_t sub_233219288()
{
  v1 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23321DF10(v0, v3, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
        v5 = 0xD000000000000013;
      }

      else
      {
        v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
        v5 = 0xD000000000000014;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
      v6 = v3 + *(v7 + 48);

      v5 = 0x6843206574756F52;
    }

    else
    {
      v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3178, &unk_23329C6E8) + 48);
      v5 = 0x7075727265746E49;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v5 = 0xD000000000000017;
      v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3168, &qword_23329C6D8) + 48);
    }

    else
    {
      v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3160, &qword_23329C6D0) + 48);
      v5 = 0xD00000000000001CLL;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
    v5 = 0xD000000000000016;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v5 = 0xD000000000000017;
    v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
  }

  else
  {
    v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
    v5 = 0xD000000000000025;
  }

  v8 = sub_23328CE1C();
  (*(*(v8 - 8) + 8))(v6, v8);
  return v5;
}

uint64_t sub_2332195B4()
{
  v1 = type metadata accessor for TTSVBAudioService.AudioSessionEvent(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v48[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23321DF10(v0, v3, type metadata accessor for TTSVBAudioService.AudioSessionEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3168, &qword_23329C6D8);
      v15 = *(v3 + *(v14 + 64));
      v16 = 0xE500000000000000;
      v54 = 0x3D746E6948;
      v55 = 0xE500000000000000;
      if (v15 == 1)
      {
        v17 = 0x6E69676542;
      }

      else if (v15)
      {
        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E55;
      }

      else
      {
        v16 = 0xE300000000000000;
        v17 = 6581829;
      }
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3160, &qword_23329C6D0);
      v23 = *(v3 + *(v14 + 64));
      v54 = 0x3D64656C62616E45;
      v55 = 0xE800000000000000;
      v24 = v23 == 0;
      v17 = 28494;
      if (v24)
      {
        v16 = 0xE200000000000000;
      }

      else
      {
        v17 = 7562585;
        v16 = 0xE300000000000000;
      }
    }

    v13 = v3 + *(v14 + 48);
    MEMORY[0x23839B7E0](v17, v16);
LABEL_59:

    v12 = v54;
    goto LABEL_79;
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_9:
    v12 = 0;
    v13 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3158, &qword_23329C6C8) + 48);
LABEL_79:
    v47 = sub_23328CE1C();
    (*(*(v47 - 8) + 8))(v13, v47);
    return v12;
  }

  if (EnumCaseMultiPayload)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3170, &qword_23329C6E0);
    v19 = *(v3 + v18[16]);
    v20 = *(v3 + v18[20]);
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_23328E24C();

    v21 = 0xE700000000000000;
    v54 = 0x3D6E6F73616552;
    v55 = 0xE700000000000000;
    if (v19 > 3)
    {
      if (v19 > 6)
      {
        if (v19 == 7)
        {
          v21 = 0x80000002332AB0B0;
          v22 = 0xD00000000000001ELL;
          goto LABEL_58;
        }

        if (v19 == 8)
        {
          v21 = 0x80000002332AB090;
          v22 = 0xD000000000000013;
          goto LABEL_58;
        }
      }

      else
      {
        if (v19 == 4)
        {
          v21 = 0xE800000000000000;
          v22 = 0x656469727265764FLL;
          goto LABEL_58;
        }

        if (v19 == 6)
        {
          v21 = 0xEF7065656C53206DLL;
          v22 = 0x6F726620656B6157;
          goto LABEL_58;
        }
      }
    }

    else
    {
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v21 = 0x80000002332AB0D0;
          v22 = 0xD000000000000016;
        }

        else
        {
          v21 = 0xEF65676E61684320;
          v22 = 0x79726F6765746143;
        }

        goto LABEL_58;
      }

      if (!v19)
      {
        v22 = 0x6E776F6E6B6E55;
        goto LABEL_58;
      }

      if (v19 == 1)
      {
        v21 = 0x80000002332AB0F0;
        v22 = 0xD000000000000014;
LABEL_58:
        v13 = v3 + v18[12];
        MEMORY[0x23839B7E0](v22, v21);

        MEMORY[0x23839B7E0](0x756F697665725020, 0xEF3D6574756F5273);
        v35 = sub_233218D68();
        MEMORY[0x23839B7E0](v35);

        goto LABEL_59;
      }
    }

    v21 = 0xEF746C7561666544;
    v22 = 0x206E776F6E6B6E55;
    goto LABEL_58;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3178, &unk_23329C6E8);
  v6 = result;
  v7 = *(v3 + *(result + 64));
  v8 = v3 + *(result + 80);
  v9 = v8[8];
  v10 = v3 + *(result + 96);
  if (v7 == 1)
  {
    v11 = xmmword_23329C650;
  }

  else if (v7)
  {
    v11 = xmmword_23329C670;
  }

  else
  {
    v11 = xmmword_23329C660;
  }

  v25 = *v10;
  v26 = *v8;
  v27 = v10[8];
  v49 = v11;
  if (v9)
  {
    v50 = 0;
    v51 = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_42:
    v32 = 0;
    v33 = 0;
    goto LABEL_65;
  }

  v54 = 0x3D736E6F6974704FLL;
  v55 = 0xE800000000000000;
  if (v26)
  {
    v30 = 0x5220646C756F6853;
  }

  else
  {
    v30 = 1701736270;
  }

  if (v26)
  {
    v31 = 0xED0000656D757365;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  MEMORY[0x23839B7E0](v30, v31);

  v50 = v54;
  v51 = v55;
  if (v27)
  {
    goto LABEL_42;
  }

LABEL_31:
  v28 = 0xE700000000000000;
  v54 = 0x3D6E6F73616552;
  v55 = 0xE700000000000000;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v29 = 0xD000000000000012;
      v34 = "Built-In Mic Muted";
    }

    else
    {
      if (v25 != 4)
      {
LABEL_60:
        v29 = 0x6E776F6E6B6E55;
        goto LABEL_64;
      }

      v29 = 0xD000000000000012;
      v34 = "Route Disconnected";
    }

    v28 = (v34 - 32) | 0x8000000000000000;
    goto LABEL_64;
  }

  if (!v25)
  {
    v29 = 0x746C7561666544;
    goto LABEL_64;
  }

  if (v25 != 1)
  {
    goto LABEL_60;
  }

  v28 = 0xED00006465646E65;
  v29 = 0x7073755320707041;
LABEL_64:
  MEMORY[0x23839B7E0](v29, v28);

  v32 = v54;
  v33 = v55;
LABEL_65:
  v36 = 0;
  v52 = v32;
  v53 = v33;
  v37 = MEMORY[0x277D84F90];
LABEL_66:
  if (v36 <= 3)
  {
    v38 = 3;
  }

  else
  {
    v38 = v36;
  }

  v39 = v38 + 1;
  v40 = 16 * v36 + 40;
  while (1)
  {
    if (v36 == 3)
    {
      v13 = v3 + *(v6 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
      swift_arrayDestroy();
      v54 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
      sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
      v12 = sub_23328D8FC();

      goto LABEL_79;
    }

    if (v39 == ++v36)
    {
      break;
    }

    v41 = v40 + 16;
    v42 = *&v48[v40];
    v40 += 16;
    if (v42)
    {
      v43 = *&v48[v41 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_233143EE0(0, *(v37 + 16) + 1, 1, v37);
        v37 = result;
      }

      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        result = sub_233143EE0((v44 > 1), v45 + 1, 1, v37);
        v37 = result;
      }

      *(v37 + 16) = v45 + 1;
      v46 = v37 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v42;
      goto LABEL_66;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_233219D70()
{
  sub_23328E24C();

  v25 = 0xD000000000000013;
  v26 = 0x80000002332AB150;
  v0 = sub_23328CE1C();
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2332190DC(v2);
  v3 = sub_23328CD6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CD4C();
  v7 = sub_23328CD3C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CD2C();
  v11 = sub_23328CDEC();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  (*(v4 + 8))(v6, v3);
  (*(v21 + 8))(v2, v22);
  MEMORY[0x23839B7E0](v11, v13);

  MEMORY[0x23839B7E0](8285, 0xE200000000000000);
  v14 = sub_233219288();
  MEMORY[0x23839B7E0](v14);

  v15 = sub_2332195B4();
  if (v16)
  {
    v23 = 2108704;
    v24 = 0xE300000000000000;
    MEMORY[0x23839B7E0](v15);

    v17 = v23;
    v18 = v24;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  MEMORY[0x23839B7E0](v17, v18);

  return v25;
}

uint64_t sub_23321A078()
{

  sub_233121E04(v0 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL, &qword_27DDE19A0, &unk_233290360);

  return swift_deallocClassInstance();
}

void *sub_23321A144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  swift_allocObject();
  v0[2] = sub_23328D75C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32B8, &qword_23329CE68);
  swift_allocObject();
  v0[3] = sub_23328D75C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3290, &qword_23329CE50);
  swift_allocObject();
  v0[4] = sub_23328D75C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32A0, &qword_23329CE58);
  swift_allocObject();
  v0[5] = sub_23328D75C();
  swift_allocObject();
  v0[6] = sub_23328D75C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3280, &qword_23329CE48);
  swift_allocObject();
  v0[7] = sub_23328D75C();
  swift_allocObject();
  v0[8] = sub_23328D75C();
  v2 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioFileURL;
  v3 = sub_23328CC9C();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory;
  type metadata accessor for TTSVBAudioBufferHistory();
  *(v1 + v4) = sub_233174994(300);
  *(v1 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_audioEngineTapInstalled) = 0;
  *(v1 + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_recordingFormat) = 0;
  return v1;
}

uint64_t sub_23321A35C(unsigned int a1)
{
  v29 = 0;
  v30 = 0xE000000000000000;
  v2 = HIBYTE(a1);
  v3 = sub_23321B078(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_23321B078((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  *&v3[4 * v5 + 32] = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23321B078(0, *(v3 + 2) + 1, 1, v3);
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  if (v7 >= v6 >> 1)
  {
    v3 = sub_23321B078((v6 > 1), v7 + 1, 1, v3);
  }

  *(v3 + 2) = v7 + 1;
  *&v3[4 * v7 + 32] = BYTE2(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23321B078(0, *(v3 + 2) + 1, 1, v3);
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_23321B078((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  *&v3[4 * v9 + 32] = BYTE1(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23321B078(0, *(v3 + 2) + 1, 1, v3);
  }

  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v3 = sub_23321B078((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v12;
  *&v3[4 * v11 + 32] = a1;
  v13 = 32;
  do
  {
    v14 = *&v3[v13];
    if (v14 > 0x7F)
    {
      v17 = (*&v3[v13] & 0x3F) << 8;
      if (v14 >= 0x800)
      {
        v18 = v14 >> 12;
        v19 = (v17 | (v14 >> 6) & 0x3F) << 8;
        v20 = HIWORD(v14);
        v15 = (((v19 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
        v21 = v18 + v19 + 8487393;
        if (!v20)
        {
          v15 = v21;
        }
      }

      else
      {
        v15 = (v14 >> 6) + v17 + 33217;
      }
    }

    else
    {
      v15 = v14 + 1;
    }

    v28[0] = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    v16 = sub_23328DA2C();
    MEMORY[0x23839B7E0](v16);

    v13 += 4;
    --v12;
  }

  while (v12);

  v28[0] = v29;
  v28[1] = v30;
  v22 = sub_23328C8EC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328C8CC();
  sub_23311A294();
  v26 = sub_23328E05C();
  (*(v23 + 8))(v25, v22);

  return v26;
}

unint64_t sub_23321A708(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_23328E19C();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v4 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    goto LABEL_16;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23839BFC0](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 portName];
    v8 = sub_23328D98C();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_233143EE0(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v4 = sub_233143EE0((v11 > 1), v12 + 1, 1, v4);
    }

    ++v3;

    *(v4 + 2) = v13;
    v14 = &v4[16 * v12];
    *(v14 + 4) = v8;
    *(v14 + 5) = v10;
  }

  while (v2 != v3);
LABEL_16:
  if (v13 == 1)
  {
    v15 = *(v4 + 4);

    return v15;
  }

  else if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
    sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0, MEMORY[0x277D83958]);
    v16 = sub_23328D8FC();
    v18 = v17;

    MEMORY[0x23839B7E0](v16, v18);

    MEMORY[0x23839B7E0](93, 0xE100000000000000);
    return 91;
  }

  else
  {

    return 1701736270;
  }
}

uint64_t RecordingMode.localizedTitle.getter()
{
  v0 = sub_23328D95C();
  v1 = TTSVBSupportLocString(v0);

  v2 = sub_23328D98C();
  return v2;
}

TextToSpeechVoiceBankingSupport::RecordingMode_optional __swiftcall RecordingMode.init(rawValue:)(Swift::Int rawValue)
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

uint64_t RecordingState.description.getter()
{
  if (*v0)
  {
    return 0x6E6964726F636572;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

BOOL sub_23321AB04(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23321AB34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23321AB60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_23321AC20(uint64_t a1)
{
  sub_23321CD30(&qword_27DDE3358, type metadata accessor for RateDidChangeReason, &unk_23329D3A8);
  sub_23321CD30(&qword_27DDE3360, type metadata accessor for RateDidChangeReason, &unk_23329D348);

  return sub_23328E36C();
}

uint64_t sub_23321ACDC(uint64_t a1)
{
  sub_23321CD30(&qword_27DDE3240, type metadata accessor for NSKeyValueChangeKey, &unk_23329D438);
  sub_23321CD30(&qword_27DDE3388, type metadata accessor for NSKeyValueChangeKey, &unk_23329CFAC);

  return sub_23328E36C();
}

uint64_t sub_23321AD98(uint64_t a1)
{
  sub_23321CD30(&qword_27DDE3368, type metadata accessor for Port, &unk_23329D250);
  sub_23321CD30(&qword_27DDE3370, type metadata accessor for Port, &unk_23329D1F8);

  return sub_23328E36C();
}

uint64_t sub_23321AE54(uint64_t a1)
{
  sub_23321CD30(&qword_27DDE3378, type metadata accessor for PolarPattern, &unk_23329D110);
  sub_23321CD30(&qword_27DDE3380, type metadata accessor for PolarPattern, &unk_23329D0B8);

  return sub_23328E36C();
}

uint64_t sub_23321AF10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23321BBE4(a1);

  *a2 = v3;
  return result;
}

void *sub_23321AF50(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3250, &qword_23329CE18);
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
    type metadata accessor for Port(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23321B078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3258, &unk_23329CE20);
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

unint64_t sub_23321B17C(char a1)
{
  sub_23328E61C();
  sub_23328DA3C();

  v2 = sub_23328E66C();

  return sub_23321B214(a1 & 1, v2);
}

unint64_t sub_23321B214(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = "recordingDidFinish";
    }

    else
    {
      v6 = "recordingWillStart";
    }

    v7 = (v6 - 32) | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? "recordingDidFinish" : "recordingWillStart";
      if (((v8 - 32) | 0x8000000000000000) == v7)
      {
        break;
      }

      v9 = sub_23328E54C();

      if ((v9 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23321B338(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3268, &qword_23329CE38);
  v31 = v4;
  result = sub_23328E34C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_23328E61C();
      sub_23328DA3C();

      result = sub_23328E66C();
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
      *(*(v7 + 48) + v15) = v20;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_23321B5EC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_23321B17C(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8](result);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_23321B734();
    result = v17;
    goto LABEL_8;
  }

  sub_23321B338(v14, a3 & 1);
  result = sub_23321B17C(v8);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_23328E5AC();
  __break(1u);
  return MEMORY[0x2821F96F8](result);
}

id sub_23321B734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3268, &qword_23329CE38);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

char *sub_23321B890(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23321B8B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23321B8B0(char *result, int64_t a2, char a3, char *a4)
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

void *sub_23321B9B4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_23321AF50(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for Port(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23321BAAC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_23321BB54(void *a1, uint64_t *a2)
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

uint64_t sub_23321BBE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_23321BC1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3268, &qword_23329CE38);
    v3 = sub_23328E35C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_23321B17C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23321BD10()
{
  result = qword_27DDE3110;
  if (!qword_27DDE3110)
  {
    sub_233144EEC(255, &qword_280D3A220, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3110);
  }

  return result;
}

void sub_23321BD78(uint64_t a1)
{
  v1 = sub_23328C92C();
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  *&v10 = sub_23328D98C();
  *(&v10 + 1) = v3;
  sub_23328E1EC();
  if (!*(v2 + 16) || (v4 = sub_2331EA6D0(v9), (v5 & 1) == 0))
  {

    sub_2331EACC8(v9);
LABEL_9:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_10;
  }

  sub_23311B0C0(*(v2 + 56) + 32 * v4, &v10);
  sub_2331EACC8(v9);

  if (!*(&v11 + 1))
  {
LABEL_10:
    sub_233121E04(&v10, &qword_27DDE2660, &qword_233298100);
    v6 = 0;
    goto LABEL_11;
  }

  type metadata accessor for RateDidChangeReason(0);
  if (swift_dynamicCast())
  {
    v6 = v9[0];
  }

  else
  {
    v6 = 0;
  }

LABEL_11:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_23321C6E8();
  }
}

void sub_23321BEC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_23328C91C();
    if (v6)
    {
      sub_233145134(&v5, &v7);
      sub_233144EEC(0, &qword_27DDE32D0, 0x277CB8388);
      swift_dynamicCast();
      v2 = v4;
      v3 = sub_233207C68();

      if (v2 == v3)
      {
        sub_233209940();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_23321C048()
{

  sub_23328D73C();
}

uint64_t sub_23321C09C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  sub_23315246C(&qword_27DDE3278, &qword_27DDE3270, &qword_23329CE40, MEMORY[0x277CBCE48]);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C148@<X0>(BOOL *a1@<X8>)
{

  sub_23328D73C();

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_23321C1E8()
{

  sub_23328D73C();
}

uint64_t sub_23321C23C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  sub_23315246C(&qword_27DDE3278, &qword_27DDE3270, &qword_23329CE40, MEMORY[0x277CBCE48]);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C2E8()
{

  sub_23328D73C();
}

uint64_t sub_23321C33C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE32A0, &qword_23329CE58);
  sub_23315246C(&qword_27DDE32A8, &qword_27DDE32A0, &qword_23329CE58, MEMORY[0x277CBCE48]);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C3E8()
{

  sub_23328D73C();
}

uint64_t sub_23321C43C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3290, &qword_23329CE50);
  sub_23315246C(&qword_27DDE3298, &qword_27DDE3290, &qword_23329CE50, MEMORY[0x277CBCE48]);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C4E8()
{

  sub_23328D73C();
}

uint64_t sub_23321C53C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3280, &qword_23329CE48);
  sub_23315246C(&qword_27DDE3288, &qword_27DDE3280, &qword_23329CE48, MEMORY[0x277CBCE48]);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C5E8()
{

  sub_23328D73C();
}

uint64_t sub_23321C63C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3270, &qword_23329CE40);
  sub_23315246C(&qword_27DDE3278, &qword_27DDE3270, &qword_23329CE40, MEMORY[0x277CBCE48]);
  result = sub_23328D76C();
  *a1 = result;
  return result;
}

uint64_t sub_23321C6E8()
{
  v1 = sub_23328D6EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23328D83C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5, v7);
  v11 = v10;
  LOBYTE(v10) = sub_23328D85C();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = sub_233225380();
    (*(v2 + 16))(v4, v13, v1);
    v14 = v0;
    v15 = sub_23328D6CC();
    v16 = sub_23328DE4C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = sub_233207EFC();
      [v18 rate];
      v20 = v19;

      *(v17 + 4) = v20;
      _os_log_impl(&dword_233109000, v15, v16, "Got player rate change: %f", v17, 0xCu);
      MEMORY[0x23839CFD0](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v21 = sub_233207EFC();
    [v21 rate];
    v23 = v22;

    if (v23 == 0.0)
    {
      [*&v14[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService____lazy_storage___playbackPlayer] replaceCurrentItemWithPlayerItem_];
    }

    v24[15] = v23 != 0.0;

    sub_23328D74C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyj6ChangeL0aypGSgSvSgtF_0(uint64_t a1, uint64_t a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D80C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (a1 == 0xD000000000000010 && 0x80000002332AAEC0 == a2 || (sub_23328E54C() & 1) != 0))
  {
    v18 = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    aBlock[4] = sub_23321E590;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_269;
    v14 = _Block_copy(aBlock);
    v15 = v2;
    sub_23328D7DC();
    v19 = MEMORY[0x277D84F90];
    sub_23321CD30(qword_280D3A270, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v17 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328, MEMORY[0x277D83970]);
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v12, v8, v14);
    _Block_release(v14);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v17);
  }
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23321CD30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23321CD84()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_23320CEE8(v3, v0 + v2, v5, v6);
}

uint64_t sub_23321CE24()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_23320E7B8(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 48), *(v0 + ((v4 + 79) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 79) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_23321CF58()
{
  result = qword_27DDE3180;
  if (!qword_27DDE3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3180);
  }

  return result;
}

uint64_t sub_23321CFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23321D028()
{
  result = qword_27DDE3188;
  if (!qword_27DDE3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3188);
  }

  return result;
}

unint64_t sub_23321D0C4()
{
  result = qword_27DDE31A0;
  if (!qword_27DDE31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE31A0);
  }

  return result;
}

unint64_t sub_23321D11C()
{
  result = qword_27DDE31A8;
  if (!qword_27DDE31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE31A8);
  }

  return result;
}

uint64_t sub_23321D1BC(uint64_t a1)
{
  result = type metadata accessor for TTSVBAudioQualityMeasurement();
  if (v2 <= 0x3F)
  {
    result = sub_23328CC9C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23321D264(uint64_t a1)
{
  sub_23321D31C(319);
  if (v1 <= 0x3F)
  {
    sub_23321D3F8(319);
    if (v2 <= 0x3F)
    {
      sub_23321D530(319);
      if (v3 <= 0x3F)
      {
        sub_23321D5B0(319);
        if (v4 <= 0x3F)
        {
          sub_23321D65C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23321D31C(uint64_t a1)
{
  if (!qword_27DDE31B0)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    type metadata accessor for InterruptionType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE31C0, &qword_23329CA38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE31C8, &qword_23329CA40);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27DDE31B0);
    }
  }
}

void sub_23321D3F8(uint64_t a1)
{
  if (!qword_27DDE31D0)
  {
    MEMORY[0x28223BE20](a1);
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    type metadata accessor for RouteChangeReason(255);
    sub_233144EEC(255, &qword_27DDE31D8, 0x277CB8418);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27DDE31D0);
    }
  }
}

void sub_23321D530(uint64_t a1)
{
  if (!qword_27DDE31E0)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DDE31E0);
    }
  }
}

void sub_23321D5B0(uint64_t a1)
{
  if (!qword_27DDE31E8)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    type metadata accessor for SilenceSecondaryAudioHintType(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DDE31E8);
    }
  }
}

void sub_23321D65C(uint64_t a1)
{
  if (!qword_27DDE31F0)
  {
    sub_233144EEC(255, &qword_27DDE31B8, 0x277CB83F8);
    sub_23328CE1C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DDE31F0);
    }
  }
}

void sub_23321D6F0(uint64_t a1)
{
  sub_23321D7B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23321D7B0(uint64_t a1)
{
  if (!qword_280D3A0D8)
  {
    sub_23328CC9C();
    v1 = sub_23328E00C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D3A0D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTSVBAudioService.RecordingStatus(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTSVBAudioService.RecordingStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23321D8C4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23321D8DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id sub_23321DA9C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[2] + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);
  v7 = 0;
  if ([v4 setCategory:v1 mode:v2 options:v3 error:&v7])
  {
    return v7;
  }

  v6 = v7;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_23321DB24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_23321DB84()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);
  v4 = 0;
  if ([v1 setActive:1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t sub_23321DC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23321DCC4()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_23321230C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v9), *(v0 + v9 + 8), *(v0 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_23321DDF0()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_233212A9C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_23321DEA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23321DF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23321DF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBAudioService.RecordingResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23321DFDC()
{
  v1 = *(type metadata accessor for TTSVBAudioService.RecordingResult(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_233213328(v2, v3, v4);
}

id sub_23321E054()
{
  v0 = sub_233207C68();
  v4 = 0;
  v1 = [v0 startAndReturnError_];

  if (v1)
  {
    return v4;
  }

  v3 = v4;
  sub_23328CA7C();

  return swift_willThrow();
}

void sub_23321E0DC(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_speechRecognitionService);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x1A8);
    v8 = v6;
    v7(a1);

    v9 = *(*&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state] + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory);

    v36.value = [a2 hostTime];
    v36.is_nil = 0;
    v10.n128_f64[0] = TTSVBTimestampInSeconds(when:)(v36);
    (*(*v9 + 264))(a1, v10);

    v11 = [a1 floatChannelData];
    if (!v11)
    {
LABEL_22:

      return;
    }

    v12 = *v11;
    v13 = [a1 frameLength];
    v14 = [a1 stride];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = sub_233215FD0(0, v13, v14, v12);
    v16 = *(v15 + 16);
    if (v16)
    {
      v35 = MEMORY[0x277D84F90];
      v17 = v15;
      sub_23321B890(0, v16, 0);
      v18 = v17;
      v19 = v35;
      v20 = *(v35 + 16);
      v21 = 32;
      do
      {
        v22 = *(v18 + v21);
        v23 = *(v35 + 24);
        if (v20 >= v23 >> 1)
        {
          sub_23321B890((v23 > 1), v20 + 1, 1);
          v18 = v17;
        }

        *(v35 + 16) = v20 + 1;
        *(v35 + 4 * v20 + 32) = v22 * v22;
        v21 += 4;
        ++v20;
        --v16;
      }

      while (v16);

      v24 = *(v35 + 16);
      if (v24)
      {
LABEL_10:
        if (v24 > 7)
        {
          v25 = v24 & 0x7FFFFFFFFFFFFFF8;
          v27 = v19 + 48;
          v26 = 0.0;
          v28 = v24 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v26 = (((((((v26 + COERCE_FLOAT(*(v27 - 16))) + COERCE_FLOAT(HIDWORD(*(v27 - 16)))) + COERCE_FLOAT(*(v27 - 8))) + COERCE_FLOAT(HIDWORD(*(v27 - 16)))) + COERCE_FLOAT(*v27)) + COERCE_FLOAT(HIDWORD(*v27))) + COERCE_FLOAT(*(v27 + 8))) + COERCE_FLOAT(HIDWORD(*v27));
            v27 += 32;
            v28 -= 8;
          }

          while (v28);
          if (v24 == v25)
          {
LABEL_19:

            log10f(sqrtf(v26 / [a1 frameLength]));
            v32 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_numberOfAudioMagnitudes;
            swift_beginAccess();
            if (*&v5[v32] > 0)
            {
              type metadata accessor for AudioPowerLevelNormalizer();

              v33 = sub_23316D364();
              (*(*v34 + 496))(v12, [a1 frameLength], *&v5[v32]);

              sub_23328D74C();
            }

            sub_23328D74C();

            goto LABEL_22;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0.0;
        }

        v29 = v24 - v25;
        v30 = (v19 + 4 * v25 + 32);
        do
        {
          v31 = *v30++;
          v26 = v26 + v31;
          --v29;
        }

        while (v29);
        goto LABEL_19;
      }
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
      v24 = *(MEMORY[0x277D84F90] + 16);
      if (v24)
      {
        goto LABEL_10;
      }
    }

    v26 = 0.0;
    goto LABEL_19;
  }
}

uint64_t objectdestroy_131Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23321E590()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);

  [v1 isInputAvailable];
  sub_23328D74C();
}

uint64_t static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496C65646F6DLL;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBLocalVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBLocalVoiceModelMO);
  v8 = v7;

  return v8;
}

uint64_t static TTSVBLocalVoiceModelMO.requireModelWithID(_:moc:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_233297630;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2331527DC();
  *(v7 + 32) = 0x44496C65646F6DLL;
  *(v7 + 40) = 0xE700000000000000;
  v8 = sub_23328CE4C();
  *(v7 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v7 + 104) = sub_233152824();
  *(v7 + 72) = v8;
  v9 = sub_23328DDCC();
  v10 = type metadata accessor for TTSVBLocalVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v9, v10, &protocol witness table for TTSVBLocalVoiceModelMO);
  v12 = v11;

  if (!v12)
  {
    v17[0] = 0;
    v17[1] = 0;
    v18 = 3;
    v13 = sub_23328CE8C();
    (*(*(v13 - 8) + 16))(v6, a1, v13);
    swift_storeEnumTagMultiPayload();
    v12 = type metadata accessor for TTSVBError(0);
    sub_23321EE10(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v17, v6, 0, v14);
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_23321EE10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_23321EE58()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_23321EF24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isDownloaded];
  *a2 = result;
  return result;
}

void sub_23321EF90(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_233121D34(a1, &v11 - v5, &qword_27DDE19B0, &qword_233290370);
  v7 = *a2;
  v8 = sub_23328CE8C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_23328CE4C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setModelID_];
}

id sub_23321F0E4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 status_];
  *a2 = result;
  return result;
}

uint64_t sub_23321F148@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_23321F20C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_233121D34(a1, &v15 - v9, &qword_27DDE1A18, &unk_233297730);
  v11 = *a2;
  v12 = sub_23328CE1C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_23328CD9C();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id sub_23321F360@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 trainingStatus_];
  *a2 = result;
  return result;
}

id sub_23321F3A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainingTaskProgress];
  *a2 = v4;
  return result;
}

id sub_23321F408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 files];
  *a2 = result;
  return result;
}

void sub_23321F458(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    goto LABEL_5;
  }

  v11 = [v2 voice];
  if (v11)
  {
    v10 = v11;
LABEL_5:
    v12 = a1;
    v13 = [v10 name];
    if (v13)
    {
      v14 = v13;
      v15 = sub_23328D98C();
      v17 = v16;

      v18 = [v10 voiceID];
      v19 = sub_23328CE8C();
      v20 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v18)
      {
        sub_23328CE6C();

        v23 = type metadata accessor for TTSVBLocalVoiceModelMO();
        v25 = sub_23321EE10(&qword_27DDE2840, v24, type metadata accessor for TTSVBLocalVoiceModelMO, &protocol conformance descriptor for TTSVBLocalVoiceModelMO);
        TTSVBCommonVoiceModelMO.immutableModel(voiceName:voiceID:)(v15, v17, v23, v25, a2);

        (*(v20 + 8))(v22, v19);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v26 = sub_233225440();
  (*(v6 + 16))(v9, v26, v5);
  v27 = sub_23328D6CC();
  v28 = sub_23328DE3C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_233109000, v27, v28, "Cannot return immutableModel. no related voice was found.", v29, 2u);
    MEMORY[0x23839CFD0](v29, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v30 = type metadata accessor for TTSVBVoiceModel(0);
  (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
}

uint64_t sub_23321F79C()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = [v0 voice];
  if (!v7)
  {
    (*(v2 + 56))(v15 - v6, 1, 1, v1);
LABEL_7:
    sub_233121E04(v15 - v6, &qword_27DDE19B0, &qword_233290370);
    return 0;
  }

  v8 = v7;
  v9 = [v7 voiceID];

  MEMORY[0x28223BE20](v10);
  if (v9)
  {
    sub_23328CE6C();

    (*(v2 + 56))(v15 - v6, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v15 - v6, 1, 1, v1);
  }

  sub_233121D9C(v15 - v6, v15 - v6, &qword_27DDE19B0, &qword_233290370);
  if ((*(v2 + 48))(v15 - v6, 1, v1) == 1)
  {
    goto LABEL_7;
  }

  (*(v2 + 32))(v4, v15 - v6, v1);
  v15[0] = sub_23328D98C();
  v15[1] = v12;
  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  v13 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v13);

  v14 = v15[0];
  (*(v2 + 8))(v4, v1);
  return v14;
}

id TTSVBLocalVoiceModelMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBLocalVoiceModelMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBLocalVoiceModelMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBLocalVoiceModelMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBLocalVoiceModelMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23321FBAC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TTSVBLocalVoiceModelMO();
  result = sub_23328E25C();
  *a2 = result;
  return result;
}

uint64_t (*sub_23321FC24(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FC94(v2);
  return sub_233154AEC;
}

void (*sub_23321FC94(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 creationDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_23321FDF4;
}

uint64_t (*sub_23321FE18(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FE88(v2);
  return sub_233153B3C;
}

void (*sub_23321FE88(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationDeviceModel];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_23321FF10;
}

uint64_t (*sub_23321FF34(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FFA4(v2);
  return sub_233154AEC;
}

void (*sub_23321FFA4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationDeviceName];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_23322002C;
}

uint64_t (*sub_233220050(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332200C0(v2);
  return sub_233154AEC;
}

void (*sub_2332200C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationDeviceUDID];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_233220148;
}

uint64_t (*sub_23322016C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332201DC(v2);
  return sub_233154AEC;
}

void (*sub_2332201DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationOSBuild];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_233220264;
}

id sub_233220270()
{
  v1 = [v0 isDownloaded];

  return v1;
}

void sub_2332202A8(void *a1)
{
  [v1 setIsDownloaded_];
}

void (*sub_2332202F0(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 isDownloaded];
  return sub_23322034C;
}

void sub_23322034C(id *a1)
{
  v1 = *a1;
  [a1[1] setIsDownloaded_];
}

uint64_t (*sub_2332203CC(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23322043C(v2);
  return sub_233154AEC;
}

void (*sub_23322043C(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 modelID];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CE6C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE8C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE19B0, &qword_233290370);
  return sub_23322059C;
}

void sub_23322059C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v3, v5, &qword_27DDE19B0, &qword_233290370);
    v6 = sub_23328CE8C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_23328CE4C();
      (*(v7 + 8))(v5, v6);
      v3 = *(a1 + 16);
    }

    v9 = *(a1 + 24);
    [*a1 setModelID_];

    free(v9);
    sub_233121E04(v3, &qword_27DDE19B0, &qword_233290370);
    free(v3);
  }

  else
  {
    v10 = sub_23328CE8C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_23328CE4C();
      (*(v11 + 8))(v3, v10);
      v3 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    [*a1 setModelID_];

    free(v13);

    free(v3);
  }
}

id (*sub_233220828(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 status_];
  return sub_23322087C;
}

uint64_t sub_2332208B0@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_233220984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), SEL *a6)
{
  v9 = v6;
  v11 = (a4)(0, a2, a3);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(a1, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = a5();
    (*(v12 + 8))(a1, v11);
    v14 = v15;
  }

  v16 = v14;
  [v9 *a6];
}

uint64_t (*sub_233220A90(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233220B00(v2);
  return sub_233154AEC;
}

void (*sub_233220B00(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 trainingFinishedDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_233220C60;
}

void sub_233220C6C(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 16);
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v5, v7, &qword_27DDE1A18, &unk_233297730);
    v8 = sub_23328CE1C();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v10 = sub_23328CD9C();
      (*(v9 + 8))(v7, v8);
      v5 = *(a1 + 16);
    }

    v11 = *(a1 + 24);
    [*a1 *a3];

    free(v11);
    sub_233121E04(v5, &qword_27DDE1A18, &unk_233297730);
    free(v5);
  }

  else
  {
    v12 = sub_23328CE1C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_23328CD9C();
      (*(v13 + 8))(v5, v12);
      v5 = *(a1 + 16);
    }

    v15 = *(a1 + 24);
    [*a1 *a3];

    free(v15);

    free(v5);
  }
}

uint64_t (*sub_233220ED4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233220F44(v2);
  return sub_233154AEC;
}

void (*sub_233220F44(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 trainingMode];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_233220FCC;
}

id (*sub_233221010(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 trainingStatus_];
  return sub_233221064;
}

id (*sub_23322109C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 trainingTaskProgress];
  *a1 = v3;
  return sub_2332210F0;
}

uint64_t (*sub_233221120(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233221190(v2);
  return sub_233154AEC;
}

void (*sub_233221190(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 version];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_233221218;
}

uint64_t (*sub_23322123C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332212AC(v2);
  return sub_233154AEC;
}

void (*sub_2332212AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 trainingLocaleID];
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

  *a1 = v5;
  a1[1] = v7;
  return sub_233221334;
}

uint64_t sub_233221340(uint64_t a1, uint64_t a2)
{
  result = sub_23321EE10(&qword_27DDE2970, a2, type metadata accessor for TTSVBLocalVoiceModelMO, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2332214CC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for TTSVBService();
    v1 = TTSVBService.__allocating_init()();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_233221534()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233224014;

  return v4();
}

uint64_t sub_233221644()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = sub_23328D07C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0) - 8);
  v1[9] = swift_task_alloc();
  v5 = (*(*v0 + 184) + **(*v0 + 184));
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_233221858;

  return v5();
}

uint64_t sub_233221858(uint64_t a1)
{
  v3 = *v2;
  v3[11] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[2];

    return MEMORY[0x2822009F8](sub_2332219C0, v6, 0);
  }
}

uint64_t sub_2332219C0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[6];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v19 = v4;
    v20 = (v4 + 32);
    v21 = *(v3 + 72);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v0[9];
      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[3];
      sub_233223F44(v5, v8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      sub_233221C4C(v11);
      sub_233222658(v11, v10);
      sub_233223FAC(v8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      if ((*v6)(v10, 1, v9) == 1)
      {
        sub_2332226C8(v0[4]);
      }

      else
      {
        v12 = *v20;
        (*v20)(v0[7], v0[4], v0[5]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2332237E8(0, *(v7 + 2) + 1, 1, v7, &qword_27DDE33B8, &unk_23329D720, MEMORY[0x277D702F8]);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_2332237E8((v13 > 1), v14 + 1, 1, v7, &qword_27DDE33B8, &unk_23329D720, MEMORY[0x277D702F8]);
        }

        v15 = v0[7];
        v16 = v0[5];
        *(v7 + 2) = v14 + 1;
        v12(&v7[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v14], v15, v16);
      }

      v5 += v21;
      --v2;
    }

    while (v2);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v17 = v0[1];

  return v17(v7);
}

uint64_t sub_233221C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23328D01C();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3390, &unk_23329D550);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = v56 - v8;
  v9 = type metadata accessor for TTSVBInstalledVoiceModel(0);
  v57 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328CFDC();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D04C();
  MEMORY[0x28223BE20](v14);
  v67 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23328D05C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v66 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23328D06C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v65 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation(0) + 20));
  if (!*(v22 + 16))
  {
    v44 = sub_23328D07C();
    v45 = *(*(v44 - 8) + 56);
    v46 = v44;
    v47 = a1;
LABEL_21:

    return v45(v47, 1, 1, v46);
  }

  v69 = a1;
  v23 = sub_23328E67C();
  if ((v23 & 0x100000000) != 0)
  {
    v48 = sub_23328D07C();
    v45 = *(*(v48 - 8) + 56);
    v46 = v48;
    v47 = v69;
    goto LABEL_21;
  }

  v56[1] = v23;
  v56[3] = TTSVBVoice.qualifiedVoiceIdentifier.getter();
  v56[2] = v24;
  v25 = v1[1];
  v56[5] = *v1;
  v56[6] = v1;
  (*(v20 + 104))(v65, *MEMORY[0x277D702D0], v19);
  (*(v17 + 104))(v66, *MEMORY[0x277D702C8], v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2848, &qword_233299290);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_233297630;
  v56[4] = v25;

  sub_23328D03C();
  sub_23328D02C();
  v74 = v26;
  sub_233223EFC(&qword_27DDE2850, 255, MEMORY[0x277D702B8], MEMORY[0x277D702C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2858, &qword_23329D560);
  sub_23315246C(&qword_27DDE2860, &qword_27DDE2858, &qword_23329D560, MEMORY[0x277D83970]);
  sub_23328E14C();
  (*(v63 + 104))(v68, *MEMORY[0x277D70250], v64);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  v28 = *(v22 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v30 = v22 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v31 = *(v57 + 72);
    while (1)
    {
      sub_233223F44(v30, v11, type metadata accessor for TTSVBInstalledVoiceModel);
      swift_getAtKeyPath();
      result = sub_233223FAC(v11, type metadata accessor for TTSVBInstalledVoiceModel);
      v33 = v74;
      v34 = v74[2];
      v35 = v29[2];
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v36 > v29[3] >> 1)
      {
        if (v35 <= v36)
        {
          v38 = v35 + v34;
        }

        else
        {
          v38 = v35;
        }

        v29 = sub_2332237E8(isUniquelyReferenced_nonNull_native, v38, 1, v29, &qword_27DDE2420, &qword_23329D710, MEMORY[0x28220C168]);
      }

      v39 = v69;
      if (v33[2])
      {
        v40 = (v29[3] >> 1) - v29[2];
        result = sub_23328CF0C();
        if (v40 < v34)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        v39 = v69;
        if (v34)
        {
          v41 = v29[2];
          v42 = __OFADD__(v41, v34);
          v43 = v41 + v34;
          if (v42)
          {
            goto LABEL_29;
          }

          v29[2] = v43;
        }
      }

      else
      {

        if (v34)
        {
          goto LABEL_27;
        }
      }

      v30 += v31;
      if (!--v28)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v39 = v69;
LABEL_25:

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3398, qword_23329D5C0);
    v75 = v49;
    v76 = sub_23315246C(&qword_27DDE33A0, &qword_27DDE3398, qword_23329D5C0, MEMORY[0x277D83988]);
    v73 = v76;
    v74 = v29;
    v72 = v49;
    v71 = MEMORY[0x277D84F90];
    TTSVBVoice.qualifiedVoiceIdentifier.getter();
    v50 = v58;
    sub_23328CFEC();
    v51 = sub_23328CFFC();
    v52 = *(*(v51 - 8) + 56);
    v52(v50, 0, 1, v51);
    v53 = v61;
    v54 = v62;
    *v62 = 0;
    (*(v60 + 104))(v54, *MEMORY[0x277D702A0], v53);
    v52(v59, 1, 1, v51);
    v70 = 1;
    sub_23328D00C();
    v55 = sub_23328D07C();
    return (*(*(v55 - 8) + 56))(v39, 0, 1, v55);
  }

  return result;
}

uint64_t sub_233222658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2332226C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233222750(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = sub_233223EFC(qword_280D3A010, a2, type metadata accessor for TTSVBVoiceLoader, &protocol conformance descriptor for TTSVBVoiceLoader);
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A20, &qword_233290630);
  *v5 = v2;
  v5[1] = sub_23322287C;
  v7 = *(v2 + 24);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0xD000000000000028, 0x80000002332AB590, sub_2332239E8, v7, v6);
}

uint64_t sub_23322287C()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_2332229A8;
  }

  else
  {
    v4 = sub_23319D5B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2332229C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_2332214CC();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  TTSVBService.fetchPersonalVoiceSystemRepresentation(completion:)();
}

uint64_t sub_233222B18(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1960, &unk_233290340);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - v6);
  sub_233223E8C(a1, &v11 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331D1E80(v7, v4);
    sub_233223EFC(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    v8 = swift_allocError();
    sub_233223F44(v4, v9, type metadata accessor for TTSVBError);
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
    sub_23328DC8C();
    return sub_233223FAC(v4, type metadata accessor for TTSVBError);
  }

  else
  {
    v12 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
    return sub_23328DC9C();
  }
}

uint64_t TTSVBVoiceLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t TTSVBVoiceLoader.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t TTSVBVoiceLoader.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TTSVBVoiceLoader.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_233222F64()
{
  v4 = (*(**v0 + 168) + **(**v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233224014;

  return v4();
}

uint64_t sub_233223078()
{
  v4 = (*(**v0 + 176) + **(**v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23322318C;

  return v4();
}

uint64_t sub_23322318C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_23322328C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TTSVBVoiceLoader();
  *v8 = v4;
  v8[1] = sub_233127268;

  return MEMORY[0x2821D6C90](a1, a2, v9, a4);
}

uint64_t sub_233223350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for TTSVBVoiceLoader();
  *v6 = v3;
  v6[1] = sub_233127268;

  return MEMORY[0x2821D6C98](a1, v7, a3);
}

uint64_t sub_233223404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for TTSVBVoiceLoader();
  *v6 = v3;
  v6[1] = sub_233126374;

  return MEMORY[0x2821D6C70](a1, v7, a3);
}

uint64_t sub_2332234B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for TTSVBVoiceLoader();
  *v6 = v3;
  v6[1] = sub_233127268;

  return MEMORY[0x2821D6C88](a1, v7, a3);
}

uint64_t sub_23322356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TTSVBVoiceLoader();
  *v8 = v4;
  v8[1] = sub_233127268;

  return MEMORY[0x2821D6C78](a1, a2, v9, a4);
}

uint64_t sub_233223630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for TTSVBVoiceLoader();
  *v8 = v4;
  v8[1] = sub_233127268;

  return MEMORY[0x2821D6C80](a1, a2, v9, a4);
}

void *sub_2332237A8@<X0>(void *a2@<X8>)
{
  result = TTSVBInstalledVoiceModel.subscript.getter();
  *a2 = v4;
  return result;
}

void *sub_2332237E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t dispatch thunk of TTSVBVoiceLoader.voices()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23322400C;

  return v4();
}

uint64_t dispatch thunk of TTSVBVoiceLoader.installedVoices()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233223D00;

  return v4();
}

uint64_t sub_233223D00(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_233223E10(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);

  return sub_233222B18(a1);
}

uint64_t sub_233223E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1960, &unk_233290340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233223EFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_233223F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_233223FAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_233224018()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t static TTSVBCloudVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = _s31TextToSpeechVoiceBankingSupport010TTSVBCloudD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(a1, a2, a3, a4);
  if (!result)
  {
    v15[0] = 0;
    v15[1] = 0;
    v16 = 3;
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_233225208(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError, &protocol conformance descriptor for TTSVBError);
    swift_allocError();
    v13 = v12;

    TTSVBError.init(_:_:_:)(v15, v10, 0, v13);
    return swift_willThrow();
  }

  return result;
}

void sub_2332241E4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_23312712C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_23328CE1C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_23328CD9C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setRecordingDate_];
}

id sub_233224310@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioFuture];
  *a2 = result;
  return result;
}

uint64_t sub_233224360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = [v2 voice];
  if (!v12)
  {
    v19 = sub_233225440();
    (*(v5 + 16))(v7, v19, v4);
    v20 = sub_23328D6CC();
    v21 = sub_23328DE3C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136315138;
      v24 = sub_23328E70C();
      v26 = sub_23311A8F4(v24, v25, &v38);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_233109000, v20, v21, "'voice' property on %s was unexpectedly nil", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23839CFD0](v23, -1, -1);
      MEMORY[0x23839CFD0](v22, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 voiceID];
  if (!v14)
  {
    v27 = sub_233225440();
    (*(v5 + 16))(v11, v27, v4);
    v28 = sub_23328D6CC();
    v29 = sub_23328DE3C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v30 = 136315138;
      v31 = sub_23328E70C();
      v33 = a1;
      v34 = sub_23311A8F4(v31, v32, &v38);

      *(v30 + 4) = v34;
      a1 = v33;
      _os_log_impl(&dword_233109000, v28, v29, "'voiceID' on voice for on %s was unexpectedly nil", v30, 0xCu);
      v35 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23839CFD0](v35, -1, -1);
      MEMORY[0x23839CFD0](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
LABEL_12:
    v36 = sub_23328CE8C();
    return (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
  }

  v15 = v14;
  sub_23328CE6C();

  v16 = sub_23328CE8C();
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 0, 1, v16);
}

id TTSVBCloudVoiceSampleMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBCloudVoiceSampleMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBCloudVoiceSampleMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBCloudVoiceSampleMO.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTSVBCloudVoiceSampleMO();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23322489C@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for TTSVBCloudVoiceSampleMO();
  result = sub_23328E25C();
  *a3 = result;
  return result;
}

uint64_t (*sub_2332248DC(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C55FC(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23322494C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C57A4(v2);
  return sub_233154AEC;
}

uint64_t (*sub_2332249BC(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5950(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224A2C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5A6C(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224A9C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5C14(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224B0C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5DC0(v2);
  return sub_233153B3C;
}

uint64_t (*sub_233224B7C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5EDC(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224BEC(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233224C5C(v2);
  return sub_233154AEC;
}

void (*sub_233224C5C(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 recordingDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_23315CA28(v10, v7);
  return sub_233224DAC;
}

void sub_233224DAC(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23312712C(v3, v5);
    v6 = sub_23328CE1C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_23328CD9C();
      (*(v7 + 8))(v5, v6);
      v3 = *(a1 + 16);
    }

    v9 = *(a1 + 24);
    [*a1 setRecordingDate_];

    free(v9);
    sub_233126838(v3);
    free(v3);
  }

  else
  {
    v10 = sub_23328CE1C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v3, 1, v10) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = sub_23328CD9C();
      (*(v11 + 8))(v3, v10);
      v3 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    [*a1 setRecordingDate_];

    free(v13);

    free(v3);
  }
}
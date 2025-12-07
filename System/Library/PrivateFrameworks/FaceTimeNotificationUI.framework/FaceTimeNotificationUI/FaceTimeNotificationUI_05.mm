uint64_t sub_24AAA15EC()
{
  result = [*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags) receptionistEnabled];
  if (result)
  {
    if (sub_24AAA1CF0() & 1) != 0 && (sub_24AAA1CF0() & 1) != 0 && (swift_getObjectType(), (sub_24AAB3984()) && (sub_24AAB3A14() & 1) == 0)
    {
      sub_24AAB3514();
      result = v2 != 0;
      if (v2)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AAA16B4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for LiveReplyButton(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  swift_weakInit();
  *v4 = xmmword_24AAB7080;
  v4[16] = 2;
  v6 = type metadata accessor for LiveReplyControl(0);

  sub_24AAB2B24();
  v7 = &v4[v6[6]];
  *v7 = 0xD00000000000001CLL;
  *(v7 + 1) = 0x800000024AAD35B0;
  v8 = v6[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v9 = &v4[v8];
  v10 = qword_27EF919F8;
  v11 = unk_27EF91A00;
  v12 = qword_27EF91A08;
  v13 = unk_27EF91A10;

  sub_24AA1B750(v12, v13);

  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  v4[v6[8]] = 0;
  v4[v6[9]] = 0;
  v14 = &v4[*(v2 + 20)];
  *v14 = sub_24AAA8410;
  v14[1] = v5;
  sub_24AAA7FFC(&qword_27EF87688, type metadata accessor for LiveReplyButton, "a1u7H,");
  return sub_24AAB4BD4();
}

double sub_24AAA18BC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24AAA1914();
  }

  return result;
}

uint64_t sub_24AAA1914()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v11);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD35D0, v11);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 342;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] didTapLiveReply", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  swift_getKeyPath();
  v11[0] = v1;
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v6 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap;
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v6 + 8);

    v8(v10);
    return sub_24AA16D74(v8, v9);
  }

  return result;
}

uint64_t sub_24AAA1B24()
{
  v0 = type metadata accessor for IncomingCallMoreMenuView(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v2 = xmmword_24AAB7080;
  v2[16] = 2;
  v3 = type metadata accessor for IncomingCallMoreMenuControl(0);
  sub_24AAB2B24();
  v4 = &v2[v3[6]];
  *v4 = 0x73697370696C6C65;
  *(v4 + 1) = 0xE800000000000000;
  v5 = v3[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v6 = &v2[v5];
  v7 = unk_27EF91A00;
  v8 = qword_27EF91A08;
  v9 = unk_27EF91A10;
  *v6 = qword_27EF919F8;
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  *(v6 + 3) = v9;
  v2[v3[8]] = 0;
  v2[v3[9]] = 0;
  v10 = &v2[*(v0 + 20)];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  v10[16] = 0;

  sub_24AA1B750(v8, v9);
  sub_24AAA7FFC(&qword_27EF87680, type metadata accessor for IncomingCallMoreMenuView, &unk_24AABE3A8);
  return sub_24AAB4BD4();
}

uint64_t sub_24AAA1CF0()
{
  v0 = TUCallScreeningEnabled();
  if (v0)
  {
    swift_getObjectType();
    if ((sub_24AAB3574() & 1) != 0 || (sub_24AAB3864() & 1) == 0)
    {
      LOBYTE(v0) = 0;
    }

    else
    {
      LOBYTE(v0) = sub_24AAB39B4();
    }
  }

  return v0 & 1;
}

uint64_t sub_24AAA1D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreeningTextField(0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CustomViewControl(0);
  v8 = *(v7 + 24);
  v9 = v4[5];
  v10 = sub_24AAB2B84();
  (*(*(v10 - 8) + 16))(&v6[v9], a1 + v8, v10);
  v11 = (a1 + *(v7 + 28));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];

  sub_24AA1B750(v14, v15);
  v16 = sub_24AAB3C94();
  v18 = v17;
  v20 = v19;
  *v6 = a2;
  v21 = &v6[v4[6]];
  *v21 = v12;
  *(v21 + 1) = v13;
  *(v21 + 2) = v14;
  *(v21 + 3) = v15;
  v22 = &v6[v4[7]];
  v26[1] = 0;
  v26[2] = 0xE000000000000000;

  sub_24AAB4B54();
  v23 = v28;
  *v22 = v27;
  *(v22 + 2) = v23;
  v24 = &v6[v4[8]];
  *v24 = v16 & 1;
  *(v24 + 1) = v18;
  v24[16] = v20 & 1;
  sub_24AAA7FFC(&qword_27EF87690, type metadata accessor for CallScreeningTextField, &unk_24AABE938);
  return sub_24AAB4BD4();
}

uint64_t sub_24AAA1F80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_24AAA93CC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_24AA16D2C(v5, v6);
}

double sub_24AAA208C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_24AAA9390;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v2, v3);
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v5, v4);

  return result;
}

uint64_t (*CallScreeningViewModel.prepareToShowCall.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA2350;
}

uint64_t sub_24AAA2370@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_24AAA93CC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_24AA16D2C(v5, v6);
}

double sub_24AAA247C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_24AAA9390;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v2, v3);
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v5, v4);

  return result;
}

uint64_t (*CallScreeningViewModel.onLiveReplyTap.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA2740;
}

uint64_t sub_24AAA2760(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;
  sub_24AA16D2C(*v4, v4[1]);
  return v5;
}

uint64_t sub_24AAA282C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = (v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_24AA68374;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_24AA16D2C(v5, v6);
}

double sub_24AAA2938(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_24AAA807C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA16D2C(v2, v3);
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CE4();
  sub_24AA16D74(v5, v4);

  return result;
}

uint64_t sub_24AAA2AB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a2;
  v6[1] = a3;
  sub_24AA16D2C(a2, a3);
  return sub_24AA16D74(v7, v8);
}

uint64_t (*CallScreeningViewModel.onReceptionistViewTap.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v4[4] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  return sub_24AAA2C7C;
}

void sub_24AAA2C88(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v3);
}

uint64_t sub_24AAA2D0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  v6 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_24AAB5474() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void sub_24AAA2E88(uint64_t a1, char a2)
{
  if (*(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == (a2 & 1))
  {
    *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CE4();
  }
}

Swift::Void __swiftcall CallScreeningViewModel.clearActivity()()
{
  v0 = sub_24AAB3A64();
  v1 = sub_24AAB5144();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4[0] = v3;
    *v2 = 136315650;
    *(v2 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v4);
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_24AA406B4(0x7463417261656C63, 0xEF29287974697669, v4);
    *(v2 + 22) = 2048;
    *(v2 + 24) = 213;
    _os_log_impl(&dword_24AA0F000, v0, v1, "[%s:%s:%ld] Clearing activity", v2, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v3, -1, -1);
    MEMORY[0x24C226630](v2, -1, -1);
  }

  MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
  sub_24AAB3E24();
}

double sub_24AAA3160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24AAB50F4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24AAB50C4();

  v6 = sub_24AAB50B4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_24AA336CC(0, 0, v4, &unk_24AABE0A0, v7);

  return result;
}

uint64_t sub_24AAA3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  sub_24AAB50C4();
  v4[10] = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AAA331C, v6, v5);
}

uint64_t sub_24AAA331C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = Strong, swift_getKeyPath(), *(v0 + 40) = v2, sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel), sub_24AAB2CF4(), , v3 = v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap, swift_beginAccess(), v5 = *v3, v4 = *(v3 + 8), sub_24AA16D2C(v5, v4), v6 = , v5))
  {
    v5(v6);
    sub_24AA16D74(v5, v4);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  **(v0 + 64) = v7;
  v8 = *(v0 + 8);

  return v8();
}

id sub_24AAA347C()
{
  v1 = v0;
  v2 = sub_24AAB3A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87630, &qword_24AABE080);
  v9 = MEMORY[0x28223BE20](v8);
  v12 = v50 - v11;
  v13 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController;
  v14 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController);
  if (v14)
  {
    v15 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController);
  }

  else
  {
    v53 = v10;
    v55 = v2;
    v56 = v9;
    v58 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
    v16 = sub_24AAB3A64();
    v17 = sub_24AAB5144();
    v18 = os_log_type_enabled(v16, v17);
    v54 = v3;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v60 = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v60);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_24AA406B4(0xD000000000000028, 0x800000024AAD34E0, &v60);
      *(v19 + 22) = 2048;
      *(v19 + 24) = 364;
      _os_log_impl(&dword_24AA0F000, v16, v17, "[%s:%s:%ld] Create transcript view", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v20, -1, -1);
      MEMORY[0x24C226630](v19, -1, -1);
    }

    v21 = [objc_allocWithZone(MEMORY[0x277CFCA40]) init];
    v22 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags);
    if (([v22 receptionistEnabled] & 1) != 0 || objc_msgSend(v22, sel_LVMEverywhere))
    {
      v57 = v13;
      v23 = [v21 makeViewComposer];
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        swift_unknownObjectRetain();
      }

      v25 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply;
      v26 = [v23 composeWithCall:v24 createTextField:0 liveReply:*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply)];

      swift_unknownObjectRelease();
      *(v1 + v25) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87638, &qword_24AABE088);
      v27 = swift_dynamicCastClass();
      v28 = v26;
      if (v27)
      {
        v29 = sub_24AAB2F74();
        v30 = sub_24AAB2FD4();
        v50[1] = v30;

        v60 = v30;
        v31 = [objc_opt_self() mainRunLoop];
        v59 = v31;
        v32 = sub_24AAB5234();
        (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
        v52 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87640, &qword_24AABE090);
        v51 = v21;
        sub_24AA442A0(0, &qword_27EF862E8, 0x277CBEB88);
        sub_24AA16A68(&qword_27EF87648, &qword_27EF87640, &qword_24AABE090, MEMORY[0x277CBCD90]);
        sub_24AA68274();
        sub_24AAB3C14();
        sub_24AA169C4(v7, &qword_27EF85BE0, &qword_24AAB8710);

        v33 = swift_allocObject();
        swift_weakInit();
        v35 = v54;
        v34 = v55;
        (*(v54 + 16))(v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + v58, v55);
        v36 = (*(v35 + 80) + 16) & ~*(v35 + 80);
        v37 = swift_allocObject();
        (*(v35 + 32))(v37 + v36, v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
        v28 = v52;
        *(v37 + ((v4 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
        sub_24AA16A68(&qword_27EF87650, &qword_27EF87630, &qword_24AABE080, MEMORY[0x277CBCD60]);
        v38 = v56;
        v39 = sub_24AAB3C44();

        (*(v53 + 8))(v12, v38);
        *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_userInputStateCancellable) = v39;

        v13 = v57;
      }

      else
      {
        v40 = sub_24AAB3A64();
        v41 = sub_24AAB5124();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v59 = v28;
          v60 = v43;
          *v42 = 136315138;
          sub_24AA442A0(0, &qword_27EF85918, 0x277D75D28);
          v28 = v28;
          v44 = sub_24AAB4F44();
          v46 = sub_24AA406B4(v44, v45, &v60);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_24AA0F000, v40, v41, "CallScreeningViewModel failed to create controller of type CallScreeningViewController and instead got %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x24C226630](v43, -1, -1);
          MEMORY[0x24C226630](v42, -1, -1);
        }

        v13 = v57;
      }
    }

    else
    {
      v28 = [objc_msgSend(v21 makeViewComposer)];

      swift_unknownObjectRelease();
    }

    v47 = *(v1 + v13);
    *(v1 + v13) = v28;
    v15 = v28;

    v14 = 0;
  }

  v48 = v14;
  return v15;
}

Swift::Void __swiftcall CallScreeningViewModel.updateBlockButtonVisibility(with:)(Swift::Bool with)
{
  v2 = v1;
  if (with)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRetain();
      v5 = [v4 contactIdentifiers];
      if (v5)
      {

        swift_unknownObjectRelease();
        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    v7 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening);
    v6 = 1;
    if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_5:
  v6 = 0;
  v7 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening);
  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening))
  {
LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13 = v2;
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CE4();

    goto LABEL_10;
  }

LABEL_9:
  *v7 = v6;
LABEL_10:

  v9 = sub_24AAB3A64();
  v10 = sub_24AAB5144();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_24AA406B4(0xD000000000000022, 0x800000024AAD3280, &v13);
    *(v11 + 22) = 2048;
    *(v11 + 24) = 203;
    *(v11 + 32) = 1024;
    swift_getKeyPath();
    sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
    sub_24AAB2CF4();

    *(v11 + 34) = *v7;

    _os_log_impl(&dword_24AA0F000, v9, v10, "[%s:%s:%ld] shouldShowBlockButtonForUnknownCallerWhileScreening set to %{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v12, -1, -1);
    MEMORY[0x24C226630](v11, -1, -1);
  }

  else
  {
  }
}

double sub_24AAA3FBC@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v5 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8);
  v6 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AA80F1C(v4, v5, v6);
}

double sub_24AAA407C(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CE4();

  return result;
}

double sub_24AAA415C(uint64_t a1)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CE4();

  return result;
}

uint64_t sub_24AAA4234@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  a2[1] = v4;
}

uint64_t sub_24AAA42EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24AAA2D0C(v1, v2);
}

uint64_t CallScreeningViewModel.supportAutomaticScreening.getter()
{
  swift_getObjectType();
  if ((sub_24AAB3574() & 1) != 0 || (sub_24AAB3864() & 1) == 0)
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_24AAB39B4();
  }

  return v0 & 1;
}

uint64_t sub_24AAA43B8(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_24AAA4414(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_24AAB50C4();
  v1[4] = sub_24AAB50B4();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_24AAA44CC;

  return CallScreeningViewModel.startScreening(manualScreening:receptionist:)(1, 0);
}

uint64_t sub_24AAA44CC(char a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AAA4610, v3, v2);
}

uint64_t sub_24AAA4610()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AAA4690(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  return *(v2 + *a2);
}

void sub_24AAA4744(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
  sub_24AAB2CF4();

  *a4 = *(v6 + *a3);
}

Swift::Void __swiftcall CallScreeningViewModel.startReceptionistReply()()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v6);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD32B0, &v6);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 297;
    _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] start receiptionist reply", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v5, -1, -1);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 24));
  sub_24AAB32F4();
}

Swift::Void __swiftcall CallScreeningViewModel.sendReceptionistReply(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315906;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v9);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD32D0, &v9);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 302;
    *(v7 + 32) = 2080;
    *(v7 + 34) = sub_24AA406B4(countAndFlagsBits, object, &v9);
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] send receiptionist reply: %s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter + 24));
  sub_24AAB32E4();
}

uint64_t CallScreeningViewModel.startLiveReply()()
{
  v1[2] = v0;
  sub_24AAB50C4();
  v1[3] = sub_24AAB50B4();
  v3 = sub_24AAB5094();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24AAA4C1C, v3, v2);
}

uint64_t sub_24AAA4C1C()
{
  v8 = v0;
  v0[6] = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v1 = sub_24AAB3A64();
  v2 = sub_24AAB5144();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315650;
    *(v3 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v7);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD32F0, &v7);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 347;
    _os_log_impl(&dword_24AA0F000, v1, v2, "[%s:%s:%ld] startLiveReply called", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v4, -1, -1);
    MEMORY[0x24C226630](v3, -1, -1);
  }

  *(v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply) = 1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_24AAA4E04;

  return CallScreeningViewModel.startScreening(manualScreening:receptionist:)(1, 1);
}

uint64_t sub_24AAA4E04(char a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_24AAA4F2C, v4, v3);
}

uint64_t sub_24AAA4F2C()
{
  v10 = v0;
  v1 = *(v0 + 64);

  v2 = sub_24AAB3A64();
  if (v1)
  {
    v3 = sub_24AAB5144();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD32F0, &v9);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 353;
    v6 = "[%s:%s:%ld] Successfully started live reply screening";
  }

  else
  {
    v3 = sub_24AAB5124();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315650;
    *(v4 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v9);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_24AA406B4(0xD000000000000010, 0x800000024AAD32F0, &v9);
    *(v4 + 22) = 2048;
    *(v4 + 24) = 351;
    v6 = "[%s:%s:%ld] Unable to start screening the call.";
  }

  _os_log_impl(&dword_24AA0F000, v2, v3, v6, v4, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C226630](v5, -1, -1);
  MEMORY[0x24C226630](v4, -1, -1);
LABEL_7:

  v7 = *(v0 + 8);

  return v7();
}

double sub_24AAA5188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24AAB3214();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-v9];
  (*(v5 + 16))(&v27[-v9], a1, v4);
  v11 = sub_24AAB3A64();
  v12 = sub_24AAB5144();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v8;
    v14 = v13;
    v29 = swift_slowAlloc();
    v32[0] = v29;
    *v14 = 136315906;
    *(v14 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, v32);
    v28 = v12;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_24AA406B4(0xD000000000000028, 0x800000024AAD34E0, v32);
    *(v14 + 22) = 2048;
    *(v14 + 24) = 376;
    *(v14 + 32) = 2080;
    sub_24AAA7FFC(&qword_27EF87658, MEMORY[0x277CFBA78], MEMORY[0x277CFBA80]);
    v15 = sub_24AAB5444();
    v17 = v16;
    v18 = *(v5 + 8);
    v18(v10, v4);
    v19 = sub_24AA406B4(v15, v17, v32);

    *(v14 + 34) = v19;
    _os_log_impl(&dword_24AA0F000, v11, v28, "[%s:%s:%ld] CallScreeningViewModel receiving userInputUpdate %s", v14, 0x2Au);
    v20 = v29;
    swift_arrayDestroy();
    MEMORY[0x24C226630](v20, -1, -1);
    v21 = v14;
    v8 = v30;
    MEMORY[0x24C226630](v21, -1, -1);
  }

  else
  {

    v18 = *(v5 + 8);
    v18(v10, v4);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    (*(v5 + 104))(v8, *MEMORY[0x277CFBA70], v4);
    v25 = sub_24AAB3204() & 1;
    v18(v8, v4);
    if (v25 == *(v24 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled))
    {
      *(v24 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled) = v25;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v27[-16] = v24;
      v27[-8] = v25;
      v31 = v24;
      sub_24AAA7FFC(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);
      sub_24AAB2CE4();
    }
  }

  return result;
}

uint64_t CallScreeningViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  v2 = sub_24AAB3A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24AA16D74(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall + 8));
  sub_24AA16D74(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap + 8));
  sub_24AA16D74(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap + 8));
  sub_24AAA7E34(*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 8), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity + 16));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter));

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CallScreeningViewModel.__deallocating_deinit()
{
  CallScreeningViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24AAA5790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v6 = type metadata accessor for LiveReplyButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B78, &qword_24AAB85F8);
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B80, &qword_24AAB8600);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  sub_24AAA8CC4(v2, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveReplyButton);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_24AAA9064(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LiveReplyButton);
  v35 = v2;
  sub_24AAB4BB4();
  v17 = type metadata accessor for LiveReplyControl(0);
  v18 = *(v17 + 28);
  if (*(v2 + *(v17 + 36)) == 1 && (v19 = *(v2 + v18 + 24)) != 0)
  {
    v20 = *(v2 + v18 + 16);
  }

  else
  {
    v21 = (v2 + v18);
    v20 = *v21;
    v19 = v21[1];
  }

  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v22 = v3[9];
  *&v5[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v23 = &v5[v3[10]];
  *v23 = v20;
  *(v23 + 1) = v19;
  v24 = &v5[v3[12]];
  *v24 = vdupq_n_s64(0x4041800000000000uLL);
  v24[1].i8[0] = 0;
  v25 = &v5[v3[13]];
  sub_24AA16A68(&qword_27EF85B90, &qword_27EF85B78, &qword_24AAB85F8, MEMORY[0x277CDF028]);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = v31;
  sub_24AAB47E4();
  sub_24AA169C4(v5, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v9 + 8))(v11, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B88, &qword_24AAB8608);
  v28 = v34;
  v29 = (v34 + *(v27 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10);
  sub_24AAB3F44();
  *v29 = swift_getKeyPath();
  return (*(v32 + 32))(v28, v14, v33);
}

void sub_24AAA5C3C(uint64_t *a2@<X8>)
{
  type metadata accessor for LiveReplyControl(0);
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  v4 = [objc_opt_self() configurationWithFont_];

  v5 = sub_24AAB4EE4();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v6)
  {
    v7 = [v6 imageWithRenderingMode_];

    *a2 = sub_24AAB4AB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AAA5E20@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87748, &qword_24AABE400);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87750, &unk_24AABE408);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v32 = v1;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87758, &unk_24AABE418);
  sub_24AA15964();
  sub_24AA16A68(&qword_27EF87760, &qword_27EF87758, &unk_24AABE418, MEMORY[0x277CE14C0]);
  sub_24AAB4624();
  v11 = type metadata accessor for IncomingCallMoreMenuControl(0);
  v12 = *(v11 + 28);
  if (*(v1 + *(v11 + 36)) == 1 && (v13 = *(v1 + v12 + 24)) != 0)
  {
    v14 = *(v1 + v12 + 16);
  }

  else
  {
    v15 = (v1 + v12);
    v14 = *v15;
    v13 = v15[1];
  }

  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v16 = v2[9];
  *&v4[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v17 = &v4[v2[10]];
  *v17 = v14;
  *(v17 + 1) = v13;
  v18 = &v4[v2[12]];
  *v18 = vdupq_n_s64(0x4041800000000000uLL);
  v18[1].i8[0] = 0;
  v19 = &v4[v2[13]];
  sub_24AA16A68(&qword_27EF87768, &qword_27EF87748, &qword_24AABE400, MEMORY[0x277CDE5B0]);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = v27;
  sub_24AAB47E4();
  sub_24AA169C4(v4, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v26 + 8))(v7, v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87770, &unk_24AABE490);
  v22 = v30;
  v23 = (v30 + *(v21 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10);
  sub_24AAB3F44();
  *v23 = swift_getKeyPath();
  return (*(v28 + 32))(v22, v10, v29);
}

uint64_t sub_24AAA6260@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a1;
  v67 = a2;
  v2 = type metadata accessor for IncomingCallMoreMenuView(0);
  v62 = *(v2 - 8);
  v3 = *(v62 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v68 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AAB4ED4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87778, &qword_24AABE500);
  v66 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v65 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = v52 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v63 = v52 - v20;
  MEMORY[0x28223BE20](v19);
  v70 = v52 - v21;
  sub_24AAB4E84();
  v22 = v11;
  v61 = *(v8 + 16);
  v56 = v8 + 16;
  v61(v11, v13, v7);
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v23 = qword_27EF919A8;
  v24 = qword_27EF919A8;
  v60 = v23;
  v25 = v24;
  sub_24AAB2CC4();
  v26 = v25;
  v57 = v22;
  v27 = sub_24AAB4F14();
  v29 = v28;
  v30 = *(v8 + 8);
  v54 = v8 + 8;
  v55 = v6;
  v59 = v30;
  v30(v13, v7);
  v58 = type metadata accessor for IncomingCallMoreMenuView;
  v31 = v68;
  sub_24AAA8CC4(v69, v68, type metadata accessor for IncomingCallMoreMenuView);
  v53 = v7;
  v32 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v33 = swift_allocObject();
  v62 = type metadata accessor for IncomingCallMoreMenuView;
  v34 = sub_24AAA9064(v31, v33 + v32, type metadata accessor for IncomingCallMoreMenuView);
  v52[1] = v52;
  v71 = v27;
  v72 = v29;
  MEMORY[0x28223BE20](v34);
  v52[-4] = &v71;
  strcpy(&v52[-3], "message.fill");
  BYTE5(v52[-2]) = 0;
  HIWORD(v52[-2]) = -5120;
  v52[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87780, &qword_24AABE508);
  sub_24AA16A68(&qword_27EF87788, &qword_27EF87780, &qword_24AABE508, MEMORY[0x277CDEFF0]);
  sub_24AAB4BB4();

  sub_24AAB4E84();
  v35 = v53;
  v61(v57, v13, v53);
  sub_24AAB2CC4();
  v36 = sub_24AAB4F14();
  v38 = v37;
  v59(v13, v35);
  v39 = v68;
  sub_24AAA8CC4(v69, v68, v58);
  v40 = swift_allocObject();
  v41 = sub_24AAA9064(v39, v40 + v32, v62);
  v71 = v36;
  v72 = v38;
  MEMORY[0x28223BE20](v41);
  v52[-4] = &v71;
  strcpy(&v52[-3], "recordingtape");
  HIWORD(v52[-2]) = -4864;
  v42 = v63;
  sub_24AAB4BB4();

  v43 = v66;
  v44 = *(v66 + 16);
  v45 = v64;
  v46 = v70;
  v44(v64, v70, v14);
  v47 = v65;
  v44(v65, v42, v14);
  v48 = v67;
  v44(v67, v45, v14);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87790, qword_24AABE510);
  v44(&v48[*(v49 + 48)], v47, v14);
  v50 = *(v43 + 8);
  v50(v42, v14);
  v50(v46, v14);
  v50(v47, v14);
  return (v50)(v45, v14);
}

double sub_24AAA69C0(uint64_t a1, __n128 a2)
{
  v12 = a2;
  v3 = sub_24AAB4094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for IncomingCallMoreMenuView(0) + 20);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
  }

  else
  {

    sub_24AAB5134();
    v10 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA15934(v9, v8, 0);
    (*(v4 + 8))(v6, v3);
    v9 = v13.n128_u64[0];
  }

  v13 = v12;
  v14 = 2;
  v9(&v13);

  return result;
}

uint64_t sub_24AAA6B58@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for IncomingCallMoreMenuControl(0);

  v3 = sub_24AAB4AC4();
  v4 = sub_24AAB45C4();
  result = swift_getKeyPath();
  *a2 = v3;
  a2[1] = result;
  a2[2] = v4;
  return result;
}

uint64_t sub_24AAA6BE8(uint64_t a1, uint64_t (*a2)(void))
{
  CallAction.hash(into:)(a1);
  v4 = a2(0);
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v5)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB4F64();
  v6 = (v2 + *(v4 + 28));
  v8 = v6[2];
  v7 = v6[3];
  if (*v6)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v7)
  {
    sub_24AAB5514();
    if (v8)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB5514();
  return sub_24AAB5514();
}

uint64_t sub_24AAA6DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_24AAB54F4();
  sub_24AAA6BE8(v5, a3);
  return sub_24AAB5524();
}

uint64_t sub_24AAA6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_24AAB54F4();
  sub_24AAA6BE8(v6, a4);
  return sub_24AAB5524();
}

uint64_t sub_24AAA6ED0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24AAA6F7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AAA6FD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24AAA2D0C(v1, v2);
}

void sub_24AAA7030(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_24AAA70A4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_24AA15894(a1, a2, a3);

  return sub_24AAB4B34();
}

uint64_t sub_24AAA7124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v22 = *a1;
  v23 = v6;
  v24 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v8;
  v21 = v9;
  sub_24AA15F10(v22, v6, v7);
  sub_24AA15F10(v19, v8, v9);
  v10 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v22, &v19);
  sub_24AA15ED0(v19, v20, v21);
  sub_24AA15ED0(v22, v23, v24);
  if (v10 & 1) != 0 && (v11 = a3(0), (MEMORY[0x24C2233A0](a1 + v11[5], a2 + v11[5])) && ((v12 = v11[6], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_24AAB5474()) && (v16 = v11[7], sub_24AAAA8E0(*(a1 + v16), *(a1 + v16 + 8), *(a1 + v16 + 16), *(a1 + v16 + 24), *(a2 + v16), *(a2 + v16 + 8), *(a2 + v16 + 16), *(a2 + v16 + 24))) && *(a1 + v11[8]) == *(a2 + v11[8]))
  {
    v17 = *(a1 + v11[9]) ^ *(a2 + v11[9]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24AAA7274(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v30 = a2;
  v31 = a4;
  v8 = sub_24AAB3A84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_27EF919D8);
  v14 = *(v9 + 16);
  v14(v5 + v12, v13, v8);
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__shouldShowBlockButtonForUnknownCallerWhileScreening) = 0;
  v15 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__prepareToShowCall);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onLiveReplyTap);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__onReceptionistViewTap);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  v19 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  *v19 = 0;
  v19[1] = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled) = 0;
  v20 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_featureFlags;
  *(v5 + v20) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_isLiveReply) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_userInputStateCancellable) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_transcriptViewController) = 0;
  sub_24AAB2D24();
  v14(v11, v5 + v12, v8);
  v21 = sub_24AAB3A64();
  v22 = sub_24AAB5144();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_24AA406B4(0xD000000000000033, 0x800000024AAD31B0, &v32);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_24AA406B4(0xD000000000000027, 0x800000024AAD34B0, &v32);
    *(v23 + 22) = 2048;
    *(v23 + 24) = 40;
    _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] Initializing CallScreeningViewModel", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v24, -1, -1);
    MEMORY[0x24C226630](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v25 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_call);
  v26 = v30;
  *v25 = a1;
  v25[1] = v26;
  sub_24AA16768(a3, v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_callCenter);
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel_answeringMachine) = v31;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = sub_24AAB3304();
  [v27 setWantsToScreenCalls_];
  [v27 save];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v5;
}

uint64_t _s22FaceTimeNotificationUI22CallScreeningViewModelC16changesPublisher7Combine03AnyJ0Vyyts5NeverOGvg_0()
{
  v0 = sub_24AAB51C4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A20, &qword_24AAB80C0);
  v31 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v32 = &v30 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A28, &unk_24AABE070);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x28223BE20](v15);
  v33 = &v30 - v17;
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  sub_24AAB51D4();

  v20 = [v18 &selRef_handle + 5];
  sub_24AAB51D4();

  sub_24AAA7FFC(&qword_27EF856F0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_24AAB3C04();
  v21 = *(v1 + 8);
  v21(v4, v0);
  v21(v6, v0);
  v22 = [v18 defaultCenter];
  sub_24AAB51D4();

  sub_24AAB3B04();
  v21(v6, v0);
  v23 = *(v31 + 8);
  v23(v10, v7);
  v24 = [v18 defaultCenter];
  sub_24AAB51D4();

  v25 = v32;
  sub_24AAB3B04();
  v21(v6, v0);
  v23(v13, v7);
  sub_24AA16A68(&qword_27EF85A30, &qword_27EF85A20, &qword_24AAB80C0, MEMORY[0x277CBCD48]);
  v26 = v33;
  sub_24AAB3BF4();
  v23(v25, v7);
  sub_24AA16A68(&qword_27EF85A38, &qword_27EF85A28, &unk_24AABE070, MEMORY[0x277CBCC08]);
  v27 = v34;
  v28 = sub_24AAB3BE4();
  (*(v35 + 8))(v26, v27);
  return v28;
}

uint64_t sub_24AAA7C24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AA43DBC;

  return sub_24AAA4414(a1);
}

uint64_t sub_24AAA7D04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

double sub_24AAA7E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_24AAA7E88(uint64_t a1)
{
  result = sub_24AAB3A84();
  if (v2 <= 0x3F)
  {
    result = sub_24AAB2D34();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24AAA7FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AAA8044()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AAA80A4()
{
  v1 = sub_24AAB3A84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

double sub_24AAA8140(uint64_t a1)
{
  v3 = *(sub_24AAB3A84() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24AAA5188(a1, v1 + v4, v5);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AAA821C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA44FD0;

  return sub_24AAA3284(a1, v4, v5, v6);
}

double sub_24AAA82D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__activity);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v1;
  v4[1] = v2;
  v4[2] = v3;
  sub_24AA80F1C(v1, v2, v3);
  return sub_24AAA7E34(v5, v6, v7);
}

uint64_t sub_24AAA834C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_24AAA847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LiveReplyControl(0);
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

uint64_t sub_24AAA854C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LiveReplyControl(0);
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

uint64_t sub_24AAA866C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IncomingCallMoreMenuControl(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24AAA873C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IncomingCallMoreMenuControl(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_24AAA8824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_24AAA88B4(uint64_t a1)
{
  if (!qword_27EF876D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF876E0, &qword_24AABE150);
    v1 = sub_24AAB3CF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF876D8);
    }
  }
}

uint64_t sub_24AAA8960(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF876F0, type metadata accessor for IncomingCallMoreMenuControl, &unk_24AABE180);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA89B8(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF876F8, type metadata accessor for IncomingCallMoreMenuControl, "iM4;\b.");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA8A10(void *a1)
{
  a1[1] = sub_24AAA7FFC(&qword_27EF87700, type metadata accessor for IncomingCallMoreMenuControl, &unk_24AABE204);
  a1[2] = sub_24AAA7FFC(&qword_27EF87708, type metadata accessor for IncomingCallMoreMenuControl, &unk_24AABE220);
  result = sub_24AAA7FFC(&qword_27EF87710, type metadata accessor for IncomingCallMoreMenuControl, &unk_24AABE1DC);
  a1[3] = result;
  return result;
}

uint64_t sub_24AAA8B04(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF87720, type metadata accessor for LiveReplyControl, &unk_24AABE280);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA8B5C(uint64_t a1)
{
  result = sub_24AAA7FFC(&qword_27EF87728, type metadata accessor for LiveReplyControl, &unk_24AABE2C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AAA8BB4(void *a1)
{
  a1[1] = sub_24AAA7FFC(&qword_27EF87730, type metadata accessor for LiveReplyControl, &unk_24AABE304);
  a1[2] = sub_24AAA7FFC(&qword_27EF87738, type metadata accessor for LiveReplyControl, "yG4;X,");
  result = sub_24AAA7FFC(&qword_27EF87740, type metadata accessor for LiveReplyControl, &unk_24AABE2DC);
  a1[3] = result;
  return result;
}

uint64_t sub_24AAA8CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_140Tm()
{
  v1 = type metadata accessor for IncomingCallMoreMenuView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for IncomingCallMoreMenuControl(0);
  v6 = *(v5 + 20);
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  v8 = v0 + v4 + *(v5 + 28);

  if (*(v8 + 24))
  {
  }

  sub_24AA15934(*(v0 + v4 + *(v1 + 20)), *(v0 + v4 + *(v1 + 20) + 8), *(v0 + v4 + *(v1 + 20) + 16));

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AAA8F10()
{
  v1 = *(type metadata accessor for LiveReplyButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for LiveReplyControl(0);
  v6 = *(v5 + 20);
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  v8 = v0 + v4 + *(v5 + 28);

  if (*(v8 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AAA9064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24AAA9144()
{
  result = qword_27EF87798;
  if (!qword_27EF87798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87770, &unk_24AABE490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87748, &qword_24AABE400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF87768, &qword_27EF87748, &qword_24AABE400, MEMORY[0x277CDE5B0]);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87798);
  }

  return result;
}

uint64_t sub_24AAA9470(uint64_t a1, int a2)
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

uint64_t sub_24AAA94B8(uint64_t result, int a2, int a3)
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

uint64_t sub_24AAA9504(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 40))();
  v5 = *(a2 + 24);
  if ((v4 & 1) == 0 || (v5(a1, a2), v7 = v6, v9 = v8, sub_24AA1B750(v6, v8), , , sub_24AAA9AC8(v7, v9), !v9))
  {
    v7 = v5(a1, a2);
    sub_24AAA9AC8(v10, v11);
  }

  return v7;
}

uint64_t sub_24AAA95E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1, 0, a3);
  }

  sub_24AAB4A04();
  if (!a5)
  {
    return sub_24AAB5514();
  }

  sub_24AAB5514();
  if (a4)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB4A04();
}

uint64_t sub_24AAA96BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24AAB54F4();
  if (a1)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (a4)
  {
    sub_24AAB5514();
    if (a3)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAA9798()
{
  v1 = *v0;
  sub_24AAB54F4();
  if (v1)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAA97FC(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x24C225D50](1);
  }

  MEMORY[0x24C225D50](0);

  return sub_24AAB4A04();
}

uint64_t sub_24AAA986C(uint64_t a1)
{
  v2 = *v1;
  sub_24AAB54F4();
  if (v2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAA98CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_24AAB49E4();
  }
}

uint64_t sub_24AAA98F8()
{
  v1 = *v0;
  sub_24AAB54F4();
  if (v1)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  return sub_24AAB5524();
}

uint64_t sub_24AAA9970(uint64_t a1)
{
  if (*v1)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  return sub_24AAB4A04();
}

uint64_t sub_24AAA99E0(uint64_t a1)
{
  v2 = *v1;
  sub_24AAB54F4();
  if (v2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  return sub_24AAB5524();
}

uint64_t sub_24AAA9A54(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v2 || (sub_24AAB49E4() & 1) == 0)
  {
    return 0;
  }

LABEL_4:

  return sub_24AAB49E4();
}

double sub_24AAA9AC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24AAA9B0C(uint64_t a1)
{
  v1 = sub_24AAB4A44();
  v2 = sub_24AAB4A44();
  result = sub_24AAB4A14();
  qword_27EF919F8 = 0;
  unk_27EF91A00 = v1;
  qword_27EF91A08 = v2;
  unk_27EF91A10 = result;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AAA9B58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AAA9BA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AAA9BFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24AAA9C50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_24AAA9CEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AAA9D78(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for MenuItem(uint64_t a1)
{
  result = qword_27EF877A0;
  if (!qword_27EF877A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AAA9E50(uint64_t a1)
{
  sub_24AAA9EA8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24AAA9EA8(uint64_t a1)
{
  if (!qword_27EF877B0)
  {
    sub_24AAB2B84();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EF877B0);
    }
  }
}

uint64_t sub_24AAA9F1C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24AAA9F6C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AAA9FC0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_24AAA9FD8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_24AAAA00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF877B8;
  if (!qword_27EF877B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF877B8);
  }

  return result;
}

uint64_t sub_24AAAA078(uint64_t a1)
{
  v2 = *v1;
  v4 = v1[2];
  v3 = v1[3];
  sub_24AAB54F4();
  if (v2)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v3)
  {
    sub_24AAB5514();
    if (v4)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAAA164(uint64_t a1)
{
  v2 = sub_24AAB2B84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = type metadata accessor for MenuItem(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA15E0C(v1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    return MEMORY[0x24C225D50](0);
  }

  sub_24AA15EC0(*&v11[*(v12 + 48)], *&v11[*(v12 + 48) + 8], v11[*(v12 + 48) + 16]);
  (*(v3 + 32))(v8, v11, v2);
  (*(v3 + 16))(v6, v8, v2);
  sub_24AAB4F24();
  sub_24AAB4F64();

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_24AAAA380()
{
  v1 = v0;
  v2 = sub_24AAB2B84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = type metadata accessor for MenuItem(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AAB54F4();
  sub_24AA15E0C(v1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    MEMORY[0x24C225D50](0);
  }

  else
  {
    sub_24AA15EC0(*&v11[*(v12 + 48)], *&v11[*(v12 + 48) + 8], v11[*(v12 + 48) + 16]);
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    sub_24AAB4F24();
    sub_24AAB4F64();

    (*(v3 + 8))(v8, v2);
  }

  return sub_24AAB5524();
}

uint64_t sub_24AAAA5B4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB2B84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AAB54F4();
  sub_24AA15E0C(v2, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    MEMORY[0x24C225D50](0);
  }

  else
  {
    sub_24AA15EC0(*&v12[*(v13 + 48)], *&v12[*(v13 + 48) + 8], v12[*(v13 + 48) + 16]);
    (*(v4 + 32))(v10, v12, v3);
    (*(v4 + 16))(v7, v10, v3);
    sub_24AAB4F24();
    sub_24AAB4F64();

    (*(v4 + 8))(v10, v3);
  }

  return sub_24AAB5524();
}

unint64_t sub_24AAAA830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF877C0;
  if (!qword_27EF877C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF877C0);
  }

  return result;
}

unint64_t sub_24AAAA888()
{
  result = qword_27EF877C8;
  if (!qword_27EF877C8)
  {
    type metadata accessor for MenuItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF877C8);
  }

  return result;
}

BOOL sub_24AAAA8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (!a5 || (sub_24AAB49E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if ((sub_24AAB49E4() & 1) == 0)
  {
    return 0;
  }

  if (!a4)
  {
    return !a8;
  }

  if (!a8)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    if (sub_24AAB49E4())
    {
      goto LABEL_19;
    }

LABEL_17:

    return 0;
  }

  if (a7)
  {
    sub_24AA1B750(a7, a8);
    goto LABEL_17;
  }

LABEL_19:
  v12 = sub_24AAB49E4();

  return (v12 & 1) != 0;
}

uint64_t sub_24AAAA9FC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24AAB2B84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AAAAABC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24AAB2B84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CallScreeningTextField(uint64_t a1)
{
  result = qword_27EF877D0;
  if (!qword_27EF877D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AAAABAC(uint64_t a1)
{
  type metadata accessor for CallScreeningViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_24AAB2B84();
    if (v2 <= 0x3F)
    {
      sub_24AAAAC68();
      if (v3 <= 0x3F)
      {
        sub_24AA5EB90();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AAAAC68()
{
  if (!qword_27EF877E0)
  {
    v0 = sub_24AAB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF877E0);
    }
  }
}

uint64_t sub_24AAAACD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v3 = sub_24AAB3E74();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CallScreeningTextField(0);
  v101 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v102 = v6;
  v103 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v7 - 8);
  v100 = sub_24AAB2B34();
  v8 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v10 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24AAB4ED4();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_24AAB2B84();
  MEMORY[0x28223BE20](v12 - 8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D80, &qword_24AAB8BE8);
  v13 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v15 = &v79 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877E8, &qword_24AABE990);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v81 = &v79 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877F0, &qword_24AABE998);
  MEMORY[0x28223BE20](v83);
  v90 = &v79 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877F8, &qword_24AABE9A0);
  MEMORY[0x28223BE20](v91);
  v92 = &v79 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87800, &qword_24AABE9A8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v79 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87808, &qword_24AABE9B0);
  MEMORY[0x28223BE20](v97);
  v96 = &v79 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87810, &qword_24AABE9B8);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v108 = &v79 - v21;
  sub_24AAB2B14();
  *v10 = type metadata accessor for BundleClass();
  (*(v8 + 104))(v10, *MEMORY[0x277CC9120], v100);
  sub_24AAB2CC4();
  sub_24AAB2B94();
  v22 = sub_24AAB4F24();
  v24 = v23;
  v25 = (v1 + *(v5 + 28));
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v87 = v26;
  v113 = v26;
  v114 = v27;
  v86 = v27;
  v85 = v28;
  v115 = v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D60, &unk_24AABE9C0);
  v29 = sub_24AAB4B84();
  v109 = v22;
  v110 = v24;
  sub_24AA15894(v29, v30, v31);
  sub_24AAB4DF4();
  v100 = v5;
  v32 = *(v5 + 24);
  v33 = v81;
  v34 = v1;
  v35 = (v1 + v32);
  v37 = *v35;
  v36 = v35[1];
  v109 = v37;
  v110 = v36;
  v38 = sub_24AA16A68(&qword_27EF85D78, &qword_27EF85D80, &qword_24AAB8BE8, MEMORY[0x277CDF1A8]);
  sub_24AAAC078(v38, v39, v40);
  v41 = v82;
  sub_24AAB4834();
  (*(v13 + 8))(v15, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AAB7D10;
  LOBYTE(v41) = sub_24AAB4504();
  *(inited + 32) = v41;
  v43 = sub_24AAB4524();
  *(inited + 33) = v43;
  v44 = sub_24AAB4514();
  sub_24AAB4514();
  if (sub_24AAB4514() != v41)
  {
    v44 = sub_24AAB4514();
  }

  sub_24AAB4514();
  if (sub_24AAB4514() != v43)
  {
    v44 = sub_24AAB4514();
  }

  sub_24AAB3C54();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v90;
  (*(v88 + 32))(v90, v33, v89);
  v54 = v53 + *(v83 + 36);
  *v54 = v44;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = *v2;
  swift_getKeyPath();
  v89 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel___observationRegistrar;
  v109 = v55;
  sub_24AAAC0D4();
  sub_24AAB2CF4();

  v56 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled;
  v57 = *(v55 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__typeToSpeakEnabled);
  KeyPath = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = (v57 & 1) == 0;
  v60 = v92;
  sub_24AAAC144(v53, v92);
  v61 = (v60 + *(v91 + 36));
  *v61 = KeyPath;
  v61[1] = sub_24AA56AD0;
  v61[2] = v59;
  v62 = v34 + *(v100 + 32);
  v80 = v34;
  v63 = *v62;
  v64 = *(v62 + 8);
  LOBYTE(v62) = *(v62 + 16);
  LOBYTE(v109) = v63;
  v110 = v64;
  LOBYTE(v111) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E70, &qword_24AAB8CF0);
  sub_24AAB3C84();
  sub_24AAAC1B4();
  v65 = v93;
  sub_24AAB48F4();

  sub_24AA169C4(v60, &qword_27EF877F8, &qword_24AABE9A0);
  swift_getKeyPath();
  v109 = v55;
  sub_24AAB2CF4();

  if (*(v55 + v56))
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = v96;
  (*(v94 + 32))(v96, v65, v95);
  v68 = v97;
  *(v67 + *(v97 + 36)) = v66;
  v109 = v87;
  v110 = v86;
  v111 = v85;
  sub_24AAB4B64();
  v109 = v113;
  v110 = v114;
  v69 = v34;
  v70 = v103;
  sub_24AAAC37C(v69, v103);
  v71 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v72 = swift_allocObject();
  sub_24AAAC3E0(v70, v72 + v71);
  v73 = sub_24AAAC4C4();
  sub_24AAB4954();

  sub_24AA169C4(v67, &qword_27EF87808, &qword_24AABE9B0);
  sub_24AAAC37C(v80, v70);
  v74 = swift_allocObject();
  sub_24AAAC3E0(v70, v74 + v71);
  v75 = v104;
  sub_24AAB3E64();
  v109 = v68;
  v110 = MEMORY[0x277D837D0];
  v111 = v73;
  v112 = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  v76 = v99;
  v77 = v108;
  sub_24AAB4964();

  (*(v106 + 8))(v75, v107);
  return (*(v98 + 8))(v77, v76);
}

void sub_24AAAB9C4(uint64_t *a1, void *a2, uint64_t *a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_24AAB5474() & 1) == 0 && sub_24AAB4F74() >= 1)
  {
    v5 = *a3;
    swift_getKeyPath();
    sub_24AAAC0D4();
    sub_24AAB2CF4();

    v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__receptionistReplyStarted;
    swift_beginAccess();
    if ((*(v5 + v6) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24AAB2CE4();

      CallScreeningViewModel.startReceptionistReply()();
    }
  }
}

uint64_t sub_24AAABB3C(uint64_t a1)
{
  type metadata accessor for CallScreeningTextField(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D60, &unk_24AABE9C0);
  sub_24AAB4B64();
  if (v3 == __PAIR128__(0xE000000000000000, 0))
  {
  }

  v2 = sub_24AAB5474();

  if ((v2 & 1) == 0)
  {
    sub_24AAB4B64();
    CallScreeningViewModel.sendReceptionistReply(_:)(v3);

    return sub_24AAB4B74();
  }

  return result;
}

uint64_t sub_24AAABC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87838, &qword_24AABEAB8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87840, &qword_24AABEAC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87848, &qword_24AABEAC8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AAB7D10;
  v13 = sub_24AAB4504();
  *(inited + 32) = v13;
  v14 = sub_24AAB4524();
  *(inited + 33) = v14;
  v15 = sub_24AAB4514();
  sub_24AAB4514();
  if (sub_24AAB4514() != v13)
  {
    v15 = sub_24AAB4514();
  }

  sub_24AAB4514();
  if (sub_24AAB4514() != v14)
  {
    v15 = sub_24AAB4514();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87850, &qword_24AABEAD0);
  (*(*(v16 - 8) + 16))(v5, v34, v16);
  v17 = &v5[*(v3 + 36)];
  *v17 = v15;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  sub_24AAB4D44();
  sub_24AAB3D54();
  sub_24AA1A25C(v5, v8, &qword_27EF87838, &qword_24AABEAB8);
  v18 = &v8[*(v6 + 36)];
  v19 = v38;
  *v18 = v37;
  *(v18 + 1) = v19;
  *(v18 + 2) = v39;
  v20 = &v11[*(v9 + 36)];
  *v20 = v35;
  v21 = type metadata accessor for ControlPlatter(0);
  v22 = *(v21 + 20);
  *(v20 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v23 = v20 + *(v21 + 24);
  *v23 = swift_getKeyPath();
  v23[8] = 0;

  v24 = sub_24AAB4D44();
  v26 = v25;
  v27 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85298, &unk_24AAB8FE0) + 36));
  *v27 = v24;
  v27[1] = v26;
  sub_24AA1A25C(v8, v11, &qword_27EF87840, &qword_24AABEAC0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87858, &qword_24AABEB40);
  v29 = v36;
  v30 = v36 + *(v28 + 36);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_24AAB4184();
  (*(*(v32 - 8) + 104))(v30, v31, v32);
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87860, &qword_24AABEB48) + 36)) = 256;
  return sub_24AA1A25C(v11, v29, &qword_27EF87848, &qword_24AABEAC8);
}

unint64_t sub_24AAAC078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF87818;
  if (!qword_27EF87818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87818);
  }

  return result;
}

unint64_t sub_24AAAC0D4()
{
  result = qword_27EF85610;
  if (!qword_27EF85610)
  {
    type metadata accessor for CallScreeningViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85610);
  }

  return result;
}

uint64_t sub_24AAAC144(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF877F0, &qword_24AABE998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AAAC1B4()
{
  result = qword_27EF87820;
  if (!qword_27EF87820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF877F8, &qword_24AABE9A0);
    sub_24AAAC26C();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87820);
  }

  return result;
}

unint64_t sub_24AAAC26C()
{
  result = qword_27EF87828;
  if (!qword_27EF87828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF877F0, &qword_24AABE998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85D80, &qword_24AAB8BE8);
    v3 = sub_24AA16A68(&qword_27EF85D78, &qword_27EF85D80, &qword_24AAB8BE8, MEMORY[0x277CDF1A8]);
    sub_24AAAC078(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87828);
  }

  return result;
}

uint64_t sub_24AAAC37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreeningTextField(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AAAC3E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallScreeningTextField(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24AAAC444(uint64_t *a1, void *a2)
{
  v5 = *(type metadata accessor for CallScreeningTextField(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_24AAAB9C4(a1, a2, v6);
}

unint64_t sub_24AAAC4C4()
{
  result = qword_27EF87830;
  if (!qword_27EF87830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87808, &qword_24AABE9B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF877F8, &qword_24AABE9A0);
    sub_24AAAC1B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87830);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for CallScreeningTextField(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  v6 = sub_24AAB2B84();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v0 + v3 + *(v1 + 24);

  if (*(v7 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AAAC6DC()
{
  v1 = *(type metadata accessor for CallScreeningTextField(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24AAABB3C(v2);
}

uint64_t sub_24AAAC774()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87810, &qword_24AABE9B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87808, &qword_24AABE9B0);
  sub_24AAAC4C4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AAAC858()
{
  result = qword_27EF87868;
  if (!qword_27EF87868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87858, &qword_24AABEB40);
    sub_24AAAC910();
    sub_24AA16A68(&qword_27EF87890, &qword_27EF87860, &qword_24AABEB48, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87868);
  }

  return result;
}

unint64_t sub_24AAAC910()
{
  result = qword_27EF87870;
  if (!qword_27EF87870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87848, &qword_24AABEAC8);
    sub_24AAAC9C8();
    sub_24AA16A68(&qword_27EF852F8, &qword_27EF85298, &unk_24AAB8FE0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87870);
  }

  return result;
}

unint64_t sub_24AAAC9C8()
{
  result = qword_27EF87878;
  if (!qword_27EF87878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87840, &qword_24AABEAC0);
    sub_24AAACA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87878);
  }

  return result;
}

unint64_t sub_24AAACA54()
{
  result = qword_27EF87880;
  if (!qword_27EF87880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87838, &qword_24AABEAB8);
    sub_24AA16A68(&qword_27EF87888, &qword_27EF87850, &qword_24AABEAD0, MEMORY[0x277CDF1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87880);
  }

  return result;
}

uint64_t CarPlayIncomingCallView.init(call:callCenter:onTap:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v69 - v13;
  v72 = type metadata accessor for CallSubtitle(0);
  v14 = MEMORY[0x28223BE20](v72);
  v70 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v82 = &v69 - v18;
  v19 = type metadata accessor for CallStatusViewModel(0);
  v20 = MEMORY[0x28223BE20](v19);
  v79 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = (&v69 - v22);
  v90 = 4;
  type metadata accessor for TUCallStatus(0);
  sub_24AAB4B54();
  v24 = v84;
  *(a6 + 72) = v83;
  *(a6 + 80) = v24;
  LOBYTE(v90) = 0;
  sub_24AAB4B54();
  v25 = v84;
  *(a6 + 88) = v83;
  *(a6 + 96) = v25;
  v26 = type metadata accessor for CarPlayIncomingCallView(0);
  sub_24AA165C8(v26, v27, v28);
  sub_24AAB3CA4();
  v78 = v26;
  v29 = a6 + *(v26 + 44);
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  v81 = a3;
  sub_24AA16768(a3, a6 + 16);
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  ObjectType = swift_getObjectType();
  v31 = *(a2 + 8);
  v85 = ObjectType;
  v86 = v31;
  v83 = a1;
  swift_unknownObjectRetain_n();
  v80 = a5;

  v32 = sub_24AAB39F4();
  v33 = v32;
  if (v32 == 4 || v32 == 1)
  {
    sub_24AAB3504();
    v34 = v88;
    if (v88)
    {
      v35 = v89;
      v36 = v87;

      if (v35)
      {
        v75 = v36;
        v76 = v34;
        goto LABEL_8;
      }
    }
  }

  v75 = sub_24AA87578(&v83, v33, 0, ObjectType, v31);
  v76 = v37;
LABEL_8:
  v38 = sub_24AA86BC8(&v83, v33, 1, ObjectType, v31);
  v39 = v82;
  v40 = v77;
  v74 = v38;
  v73 = v41;
  if (v33 > 2)
  {
    if ((v33 - 5) < 2)
    {
      sub_24AAB35B4();
      v43 = v92;
      if (v92)
      {
        v44 = v91;

        v45 = v44;
      }

      else
      {
        v55 = sub_24AAB34F4();
        if (v56)
        {
          v45 = v55;
        }

        else
        {
          v45 = 0;
        }

        if (v56)
        {
          v43 = v56;
        }

        else
        {
          v43 = 0xE000000000000000;
        }
      }

      v57 = v70;
      *v70 = v45;
      *(v57 + 8) = v43;
      swift_storeEnumTagMultiPayload();
      sub_24AAB0D18(v57, v40, type metadata accessor for CallSubtitle);
      goto LABEL_32;
    }

    if (v33 == 3)
    {
      *v40 = sub_24AAB34F4();
      *(v40 + 8) = v54;
    }

    else if (v33 == 4)
    {
      sub_24AA16768(&v83, v77);
      *(v40 + 40) = 4;
      *(v40 + 48) = sub_24AAB34F4();
      *(v40 + 56) = v42;
      *(v40 + 64) = 1;
    }

LABEL_22:
    swift_storeEnumTagMultiPayload();
LABEL_32:
    v53 = v81;
    goto LABEL_33;
  }

  if (v33 != 1)
  {
    goto LABEL_22;
  }

  v70 = a1;
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
  *v40 = sub_24AAB34F4();
  *(v40 + 8) = v46;
  v47 = v71;
  sub_24AAB34E4();
  v48 = sub_24AAB2C54();
  v49 = *(v48 - 8);
  v50 = v47;
  v51 = *(v49 + 48);
  if (v51(v50, 1, v48) == 1)
  {
    sub_24AAB2C34();
    v52 = v51(v71, 1, v48);
    v53 = v81;
    v39 = v82;
    if (v52 != 1)
    {
      sub_24AA169C4(v71, &qword_27EF855E8, &unk_24AABCB40);
    }
  }

  else
  {
    (*(v49 + 32))(v40 + v69, v71, v48);
    v53 = v81;
    v39 = v82;
  }

  swift_storeEnumTagMultiPayload();
LABEL_33:
  sub_24AAB0D18(v40, v39, type metadata accessor for CallSubtitle);
  v58 = sub_24AAB3564();
  if (v58 && (v59 = v58, v60 = [v58 shouldHideContactWithLockState_], v59, v60))
  {
    v61 = MEMORY[0x277D84F90];
  }

  else
  {
    v61 = sub_24AA86F34(&v83, ObjectType, v31);
  }

  v62 = sub_24AAB3554();
  v64 = v63;
  v65 = v76;
  *v23 = v75;
  v23[1] = v65;
  v66 = v73;
  v23[2] = v74;
  v23[3] = v66;
  sub_24AAB0D18(v39, v23 + v19[6], type metadata accessor for CallSubtitle);
  *(v23 + v19[7]) = v61;
  *(v23 + v19[8]) = 3;
  v67 = (v23 + v19[9]);
  *v67 = v62;
  v67[1] = v64;
  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  sub_24AAB0CAC(v23, v79, type metadata accessor for CallStatusViewModel);
  sub_24AAB4B54();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  return sub_24AA1B69C(v23);
}

uint64_t type metadata accessor for CarPlayIncomingCallView(uint64_t a1)
{
  result = qword_27EF87920;
  if (!qword_27EF87920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AAAD2EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AD8, qword_24AABEEA8);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - v9;
  sub_24AA16768(a1, &v65);
  v10 = swift_allocObject();
  sub_24AA16AF4(&v65, v10 + 16);
  *(v10 + 56) = 0x4044000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_24AAB4D44();
  sub_24AAB3D54();
  v85 = v80;
  v84 = v82;
  *&v65 = sub_24AAB2378;
  *(&v65 + 1) = v10;
  *&v66 = sub_24AA68374;
  *(&v66 + 1) = v11;
  *&v67 = v79;
  BYTE8(v67) = v80;
  *&v68 = v81;
  BYTE8(v68) = v82;
  v69 = v83;
  v12 = (v4 + *(type metadata accessor for CarPlayIncomingCallView(0) + 40));
  v13 = *v12;
  v40 = v12[1];
  v41 = v13;
  v39 = *(v12 + 16);
  v14 = v12[3];
  v37 = v12[4];
  v38 = v14;
  v36 = v12[5];
  HIDWORD(v35) = *(v12 + 48);
  *&v56 = v13;
  *(&v56 + 1) = v40;
  LOBYTE(v57) = v39;
  *(&v57 + 1) = v14;
  *&v58 = v37;
  *(&v58 + 1) = v36;
  LOBYTE(v59) = BYTE4(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A08, &unk_24AABEDD8);
  sub_24AAB3C84();
  v56 = v46[0];
  v57 = v46[1];
  LOBYTE(v58) = v47;
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(*(v15 + 8) + 16))(&v48, v16);
  v77 = v48;
  v78 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A80, &qword_24AABEE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87958, &unk_24AABEC88);
  sub_24AAB1EE0();
  sub_24AAB14E0();
  sub_24AAB48E4();
  sub_24AAB1B98(v77, *(&v77 + 1), v78);
  v17 = v57;
  LOBYTE(v16) = v58;

  sub_24AAB1B98(v17, *(&v17 + 1), v16);

  *&v65 = v41;
  *(&v65 + 1) = v40;
  LOBYTE(v66) = v39;
  *(&v66 + 1) = v38;
  *&v67 = v37;
  *(&v67 + 1) = v36;
  LOBYTE(v68) = BYTE4(v35);
  sub_24AAB3C64();
  v18 = v77;
  v19 = v78;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(*(v20 + 8) + 16))(&v75, v21);
  v22 = v75;
  v23 = v76;
  if (v19 == 255)
  {
    if (v76 == 255)
    {
      sub_24AAB1B98(v18, *(&v18 + 1), 255);
      v24 = 1;
      goto LABEL_8;
    }

LABEL_7:
    sub_24AAB1B98(v18, *(&v18 + 1), v19);
    sub_24AAB1B98(v22, *(&v22 + 1), v23);
    v24 = 0;
    goto LABEL_8;
  }

  v65 = v18;
  LOBYTE(v66) = v19;
  if (v76 == 255)
  {
    sub_24AAB1B84(v18, *(&v18 + 1), v19);
    sub_24AA15ED0(v18, *(&v18 + 1), v19);
    goto LABEL_7;
  }

  v56 = v75;
  LOBYTE(v57) = v76;
  sub_24AAB1B84(v18, *(&v18 + 1), v19);
  v24 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v65, &v56);
  sub_24AA15ED0(v56, *(&v56 + 1), v57);
  sub_24AA15ED0(v65, *(&v65 + 1), v66);
  sub_24AAB1B98(v18, *(&v18 + 1), v19);
LABEL_8:
  v25 = sub_24AAB4D44();
  v27 = v26;
  sub_24AAB098C(v24 & 1, &v48);
  v60 = v52;
  v61 = v53;
  v62 = v54;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  *&v63 = v55;
  *(&v63 + 1) = v25;
  v64 = v27;
  v28 = v44;
  (*(v42 + 32))(v44, v45, v43);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A40, &qword_24AABEE18) + 36);
  v30 = v63;
  *(v29 + 96) = v62;
  *(v29 + 112) = v30;
  *(v29 + 128) = v64;
  v31 = v59;
  *(v29 + 32) = v58;
  *(v29 + 48) = v31;
  v32 = v61;
  *(v29 + 64) = v60;
  *(v29 + 80) = v32;
  v33 = v57;
  *v29 = v56;
  *(v29 + 16) = v33;
  v69 = v52;
  v70 = v53;
  v71 = v54;
  v65 = v48;
  v66 = v49;
  v67 = v50;
  v68 = v51;
  v72 = v55;
  v73 = v25;
  v74 = v27;
  sub_24AA1695C(&v56, v46, &qword_27EF87AA8, &qword_24AABEE88);
  return sub_24AA169C4(&v65, &qword_27EF87AA8, &qword_24AABEE88);
}

uint64_t sub_24AAAD86C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  *(a2 + 48) = v5;
  *(a2 + 56) = *(v6 + 16);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a2 + 24));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v5);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 64) = a3;
  return result;
}

uint64_t CarPlayIncomingCallView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for CarPlayIncomingCallView(0);
  v87 = *(v3 - 8);
  v91 = *(v87 + 8);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24AAB4384();
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24AAB4AA4();
  v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87898, &qword_24AABEB98);
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878A0, &qword_24AABEBA0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878A8, &qword_24AABEBA8);
  MEMORY[0x28223BE20](v75);
  v18 = &v71 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878B0, &qword_24AABEBB0);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v88 = &v71 - v19;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878B8, &qword_24AABEBB8) - 8;
  MEMORY[0x28223BE20](v77);
  v89 = &v71 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878C0, &qword_24AABEBC0) - 8;
  MEMORY[0x28223BE20](v80);
  v79 = &v71 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878C8, &qword_24AABEBC8) - 8;
  MEMORY[0x28223BE20](v83);
  v90 = &v71 - v22;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878D0, &qword_24AABEBD0) - 8;
  MEMORY[0x28223BE20](v85);
  v84 = &v71 - v23;
  *v12 = sub_24AAB4104();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF878D8, &qword_24AABEBD8);
  sub_24AAAE4A8(v2, &v12[*(v24 + 44)]);
  v25 = sub_24AAB44D4();
  sub_24AAB3C54();
  v26 = &v12[*(v10 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_24AAB4A84();
  sub_24AAB4374();
  sub_24AAB0BF4();
  sub_24AAB1F98(&qword_27EF878F8, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
  sub_24AAB47F4();
  (*(v76 + 8))(v7, v5);
  (*(v73 + 8))(v9, v74);
  sub_24AA169C4(v12, &qword_27EF87898, &qword_24AABEB98);
  v31 = &v16[*(v14 + 44)];
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_24AAB4184();
  (*(*(v33 - 8) + 104))(v31, v32, v33);
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87860, &qword_24AABEB48) + 36)] = 256;
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v16, v18, &qword_27EF878A0, &qword_24AABEBA0);
  v34 = &v18[v75[9]];
  v35 = v97;
  *(v34 + 4) = v96;
  *(v34 + 5) = v35;
  *(v34 + 6) = v98;
  v36 = v93;
  *v34 = v92;
  *(v34 + 1) = v36;
  v37 = v95;
  *(v34 + 2) = v94;
  *(v34 + 3) = v37;
  v38 = v78;
  sub_24AAB0CAC(v2, v78, type metadata accessor for CarPlayIncomingCallView);
  v76 = *(v87 + 80);
  v39 = (v76 + 16) & ~v76;
  v40 = swift_allocObject();
  v87 = type metadata accessor for CarPlayIncomingCallView;
  sub_24AAB0D18(v38, v40 + v39, type metadata accessor for CarPlayIncomingCallView);
  sub_24AAB0DE4();
  sub_24AAB4814();

  sub_24AA169C4(v18, &qword_27EF878A8, &qword_24AABEBA8);
  v41 = objc_opt_self();
  v75 = v41;
  v42 = [v41 defaultCenter];
  v43 = v77;
  v44 = v89;
  sub_24AAB51D4();

  sub_24AAB0CAC(v2, v38, type metadata accessor for CarPlayIncomingCallView);
  v45 = swift_allocObject();
  v46 = v87;
  sub_24AAB0D18(v38, v45 + v39, v87);
  (*(v81 + 32))(v44, v88, v82);
  v47 = (v44 + *(v43 + 64));
  *v47 = sub_24AAB0FB4;
  v47[1] = v45;
  v48 = [v41 defaultCenter];
  v49 = v80;
  v50 = v79;
  sub_24AAB51D4();

  v72 = v2;
  v74 = type metadata accessor for CarPlayIncomingCallView;
  sub_24AAB0CAC(v2, v38, type metadata accessor for CarPlayIncomingCallView);
  v51 = swift_allocObject();
  sub_24AAB0D18(v38, v51 + v39, v46);
  sub_24AA1A25C(v89, v50, &qword_27EF878B8, &qword_24AABEBB8);
  v52 = (v50 + *(v49 + 64));
  *v52 = sub_24AAB23E4;
  v52[1] = v51;
  v53 = v75;
  v54 = [v75 defaultCenter];
  v55 = v83;
  v56 = v90;
  sub_24AAB51D4();

  sub_24AAB0CAC(v2, v38, type metadata accessor for CarPlayIncomingCallView);
  v57 = swift_allocObject();
  v58 = v87;
  sub_24AAB0D18(v38, v57 + v39, v87);
  sub_24AA1A25C(v50, v56, &qword_27EF878C0, &qword_24AABEBC0);
  v59 = (v56 + *(v55 + 64));
  *v59 = sub_24AAB23E4;
  v59[1] = v57;
  v60 = [v53 defaultCenter];
  v61 = v85;
  v62 = v84;
  sub_24AAB51D4();

  v63 = v72;
  v64 = v74;
  sub_24AAB0CAC(v72, v38, v74);
  v65 = swift_allocObject();
  sub_24AAB0D18(v38, v65 + v39, v58);
  sub_24AA1A25C(v90, v62, &qword_27EF878C8, &qword_24AABEBC8);
  v66 = (v62 + *(v61 + 64));
  *v66 = sub_24AAB1014;
  v66[1] = v65;
  sub_24AAB0CAC(v63, v38, v64);
  v67 = swift_allocObject();
  sub_24AAB0D18(v38, v67 + v39, v58);
  v68 = v86;
  sub_24AA1A25C(v62, v86, &qword_27EF878D0, &qword_24AABEBD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87918, &qword_24AABEBF0);
  v70 = (v68 + *(result + 36));
  *v70 = sub_24AAB1084;
  v70[1] = v67;
  v70[2] = 0;
  v70[3] = 0;
  return result;
}

uint64_t sub_24AAAE4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A18, &qword_24AABEDF0);
  MEMORY[0x28223BE20](v134);
  v121 = &v115 - v3;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A20, &qword_24AABEDF8);
  MEMORY[0x28223BE20](v117);
  v116 = &v115 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A28, &qword_24AABEE00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v120 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = (&v115 - v8);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A30, &qword_24AABEE08);
  MEMORY[0x28223BE20](v130);
  v133 = &v115 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A38, &qword_24AABEE10);
  MEMORY[0x28223BE20](v131);
  v119 = &v115 - v10;
  v11 = type metadata accessor for CarPlayIncomingCallView(0);
  v122 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v138 = v12;
  v124 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A40, &qword_24AABEE18);
  MEMORY[0x28223BE20](v137);
  v125 = &v115 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A48, &qword_24AABEE20);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v118 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v126 = &v115 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v127 = &v115 - v20;
  MEMORY[0x28223BE20](v19);
  v136 = (&v115 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A50, &unk_24AABEE28);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v132 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v139 = &v115 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EE8, &qword_24AABC7E0);
  MEMORY[0x28223BE20](v26);
  v28 = &v115 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A58, &qword_24AABEE38);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v129 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v115 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
  sub_24AAB4B84();
  LOBYTE(v148) = 0;
  sub_24AAB4C24();
  v34 = v155;
  v35 = v156;
  v36 = type metadata accessor for CallStatusView(0);
  *&v28[v36[9]] = 0;
  v37 = v36[10];
  *&v28[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v38 = &v28[v36[5]];
  *v38 = v34;
  v38[16] = v35;
  v28[v36[6]] = 1;
  v28[v36[7]] = 0;
  *&v28[v36[8]] = 0x4044000000000000;
  v28[*(v26 + 36)] = 0;
  sub_24AAB1BB4();
  v128 = v33;
  sub_24AAB48B4();
  sub_24AA169C4(v28, &qword_27EF86EE8, &qword_24AABC7E0);
  sub_24AAB4D44();
  sub_24AAB3F24();
  *&v146[55] = v151;
  *&v146[71] = v152;
  *&v146[87] = v153;
  *&v146[103] = v154;
  *&v146[7] = v148;
  *&v146[23] = v149;
  v147 = 0;
  *&v146[39] = v150;
  v39 = *(a1 + 80);
  LODWORD(v155) = *(a1 + 72);
  *(&v155 + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A10, &qword_24AABEDE8);
  sub_24AAB4B64();
  if (LODWORD(v141[0]) == 4)
  {
    v40 = type metadata accessor for DeclineControl(0);
    *(&v156 + 1) = v40;
    *&v157 = sub_24AAB1F98(&qword_27EF87678, type metadata accessor for DeclineControl, &unk_24AABB490);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v155);
    *boxed_opaque_existential_1Tm = xmmword_24AAB6FB0;
    *(boxed_opaque_existential_1Tm + 16) = 2;
    sub_24AAB2B24();
    v42 = (boxed_opaque_existential_1Tm + v40[6]);
    *v42 = 0x6F642E656E6F6870;
    v42[1] = 0xEF6C6C69662E6E77;
    v43 = (boxed_opaque_existential_1Tm + v40[7]);
    v44 = sub_24AAB49F4();
    v45 = sub_24AAB4A44();
    *v43 = v44;
    v43[1] = v45;
    v43[2] = 0;
    v43[3] = 0;
    *(boxed_opaque_existential_1Tm + v40[8]) = 0;
    *(boxed_opaque_existential_1Tm + v40[9]) = 0;
    v123 = type metadata accessor for CarPlayIncomingCallView;
    v46 = a1;
    v47 = a1;
    v48 = v124;
    sub_24AAB0CAC(v47, v124, type metadata accessor for CarPlayIncomingCallView);
    v49 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v50 = swift_allocObject();
    v122 = type metadata accessor for CarPlayIncomingCallView;
    sub_24AAB0D18(v48, v50 + v49, type metadata accessor for CarPlayIncomingCallView);
    v51 = v125;
    sub_24AAAD2EC(&v155, sub_24AAB23DC, v50, v125);

    __swift_destroy_boxed_opaque_existential_1Tm(&v155);
    v121 = sub_24AAB1DC0();
    sub_24AAB48B4();
    sub_24AA169C4(v51, &qword_27EF87A40, &qword_24AABEE18);
    sub_24AAB4D44();
    sub_24AAB3F24();
    *&v140[55] = v158;
    *&v140[71] = v159;
    *&v140[87] = v160;
    *&v140[103] = v161;
    *&v140[7] = v155;
    *&v140[23] = v156;
    v145 = 0;
    *&v140[39] = v157;
    v52 = type metadata accessor for AcceptControl(0);
    v142 = v52;
    v143 = sub_24AAB1F98(&qword_27EF85840, type metadata accessor for AcceptControl, &unk_24AABB474);
    v53 = __swift_allocate_boxed_opaque_existential_1Tm(v141);
    *v53 = 0;
    v53[1] = 0;
    v53[2] = 0;
    *(v53 + 24) = 2;
    sub_24AAB2B24();
    v54 = (v53 + v52[7]);
    v55 = sub_24AAB4A34();
    v56 = sub_24AAB4A44();
    *v54 = v55;
    v54[1] = v56;
    v54[2] = 0;
    v54[3] = 0;
    *(v53 + v52[8]) = 0;
    *(v53 + v52[9]) = 0;
    *(v53 + v52[10]) = 1;
    sub_24AAB0CAC(v46, v48, v123);
    v57 = swift_allocObject();
    sub_24AAB0D18(v48, v57 + v49, v122);
    sub_24AAAD2EC(v141, sub_24AAB22E4, v57, v51);

    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    v58 = v127;
    sub_24AAB48B4();
    sub_24AA169C4(v51, &qword_27EF87A40, &qword_24AABEE18);
    v59 = v126;
    sub_24AA1695C(v136, v126, &qword_27EF87A48, &qword_24AABEE20);
    v60 = v118;
    sub_24AA1695C(v58, v118, &qword_27EF87A48, &qword_24AABEE20);
    v61 = v119;
    sub_24AA1695C(v59, v119, &qword_27EF87A48, &qword_24AABEE20);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AD0, &qword_24AABEEA0);
    v63 = v61 + *(v62 + 48);
    v64 = *&v140[80];
    *(v63 + 73) = *&v140[64];
    *(v63 + 89) = v64;
    *(v63 + 105) = *&v140[96];
    v65 = *&v140[16];
    *(v63 + 9) = *v140;
    *(v63 + 25) = v65;
    v66 = *&v140[48];
    *(v63 + 41) = *&v140[32];
    *v63 = 0x4034000000000000;
    *(v63 + 8) = 0;
    *(v63 + 120) = *&v140[111];
    *(v63 + 57) = v66;
    sub_24AA1695C(v60, v61 + *(v62 + 64), &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v60, &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v59, &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA1695C(v61, v133, &qword_27EF87A38, &qword_24AABEE10);
    swift_storeEnumTagMultiPayload();
    v67 = MEMORY[0x277CE14C0];
    sub_24AA16A68(&qword_27EF87AB8, &qword_27EF87A38, &qword_24AABEE10, MEMORY[0x277CE14C0]);
    sub_24AA16A68(&qword_27EF87AC0, &qword_27EF87A18, &qword_24AABEDF0, v67);
    sub_24AAB42B4();
    sub_24AA169C4(v61, &qword_27EF87A38, &qword_24AABEE10);
    sub_24AA169C4(v58, &qword_27EF87A48, &qword_24AABEE20);
    v68 = v136;
    v69 = &qword_27EF87A48;
    v70 = &qword_24AABEE20;
  }

  else
  {
    LODWORD(v119) = *(a1 + 88);
    v71 = *(a1 + 96);
    LOBYTE(v155) = v119;
    *(&v155 + 1) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
    v72 = sub_24AAB4B64();
    v73 = v141[0];
    *(&v156 + 1) = &type metadata for MuteControl;
    *&v157 = sub_24AA44B08(v72, v74, v75);
    v76 = swift_allocObject();
    *&v155 = v76;
    *(v76 + 16) = xmmword_24AAB7000;
    *(v76 + 32) = 2;
    strcpy((v76 + 40), "mic.slash.fill");
    *(v76 + 55) = -18;
    v77 = sub_24AAB4A44();
    v78 = sub_24AAB4A44();
    v79 = [objc_opt_self() systemRedColor];
    v80 = sub_24AAB49C4();
    *(v76 + 56) = 0;
    *(v76 + 64) = v77;
    *(v76 + 72) = v78;
    *(v76 + 80) = v80;
    *(v76 + 88) = 0;
    *(v76 + 89) = v73;
    v136 = type metadata accessor for CarPlayIncomingCallView;
    v115 = a1;
    v81 = v124;
    sub_24AAB0CAC(a1, v124, type metadata accessor for CarPlayIncomingCallView);
    v82 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v83 = swift_allocObject();
    v122 = type metadata accessor for CarPlayIncomingCallView;
    sub_24AAB0D18(v81, v83 + v82, type metadata accessor for CarPlayIncomingCallView);
    v84 = v116;
    sub_24AAAD2EC(&v155, sub_24AAB1CDC, v83, v116);

    __swift_destroy_boxed_opaque_existential_1Tm(&v155);
    LOBYTE(v155) = v119;
    *(&v155 + 1) = v71;
    sub_24AAB4B64();
    *(v84 + *(v117 + 52)) = v141[0];
    sub_24AA16A68(&qword_27EF87A70, &qword_27EF87A20, &qword_24AABEDF8, MEMORY[0x277CE1148]);
    sub_24AAB48B4();
    sub_24AA169C4(v84, &qword_27EF87A20, &qword_24AABEDF8);
    sub_24AAB4D44();
    sub_24AAB3F24();
    *&v144[55] = v158;
    *&v144[71] = v159;
    *&v144[87] = v160;
    *&v144[103] = v161;
    *&v144[7] = v155;
    *&v144[23] = v156;
    v145 = 0;
    *&v144[39] = v157;
    v85 = type metadata accessor for DeclineControl(0);
    v142 = v85;
    v143 = sub_24AAB1F98(&qword_27EF87678, type metadata accessor for DeclineControl, &unk_24AABB490);
    v86 = __swift_allocate_boxed_opaque_existential_1Tm(v141);
    *v86 = xmmword_24AAB6FB0;
    *(v86 + 16) = 2;
    sub_24AAB2B24();
    v87 = (v86 + v85[6]);
    *v87 = 0x6F642E656E6F6870;
    v87[1] = 0xEF6C6C69662E6E77;
    v88 = (v86 + v85[7]);
    v89 = sub_24AAB49F4();
    v90 = sub_24AAB4A44();
    *v88 = v89;
    v88[1] = v90;
    v88[2] = 0;
    v88[3] = 0;
    *(v86 + v85[8]) = 0;
    *(v86 + v85[9]) = 0;
    sub_24AAB0CAC(v115, v81, v136);
    v91 = swift_allocObject();
    sub_24AAB0D18(v81, v91 + v82, v122);
    v92 = v125;
    sub_24AAAD2EC(v141, sub_24AAB1D68, v91, v125);

    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    sub_24AAB1DC0();
    v93 = v127;
    sub_24AAB48B4();
    sub_24AA169C4(v92, &qword_27EF87A40, &qword_24AABEE18);
    v94 = v123;
    v95 = v120;
    sub_24AA1695C(v123, v120, &qword_27EF87A28, &qword_24AABEE00);
    v96 = v126;
    sub_24AA1695C(v93, v126, &qword_27EF87A48, &qword_24AABEE20);
    v97 = v121;
    sub_24AA1695C(v95, v121, &qword_27EF87A28, &qword_24AABEE00);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AB0, &qword_24AABEE90);
    v99 = v97 + *(v98 + 48);
    v100 = *&v144[80];
    *(v99 + 73) = *&v144[64];
    *(v99 + 89) = v100;
    *(v99 + 105) = *&v144[96];
    v101 = *&v144[16];
    *(v99 + 9) = *v144;
    *(v99 + 25) = v101;
    v102 = *&v144[48];
    *(v99 + 41) = *&v144[32];
    *v99 = 0x4034000000000000;
    *(v99 + 8) = 0;
    *(v99 + 120) = *&v144[111];
    *(v99 + 57) = v102;
    sub_24AA1695C(v96, v97 + *(v98 + 64), &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v96, &qword_27EF87A48, &qword_24AABEE20);
    sub_24AA169C4(v95, &qword_27EF87A28, &qword_24AABEE00);
    sub_24AA1695C(v97, v133, &qword_27EF87A18, &qword_24AABEDF0);
    swift_storeEnumTagMultiPayload();
    v103 = MEMORY[0x277CE14C0];
    sub_24AA16A68(&qword_27EF87AB8, &qword_27EF87A38, &qword_24AABEE10, MEMORY[0x277CE14C0]);
    sub_24AA16A68(&qword_27EF87AC0, &qword_27EF87A18, &qword_24AABEDF0, v103);
    sub_24AAB42B4();
    sub_24AA169C4(v97, &qword_27EF87A18, &qword_24AABEDF0);
    sub_24AA169C4(v93, &qword_27EF87A48, &qword_24AABEE20);
    v68 = v94;
    v69 = &qword_27EF87A28;
    v70 = &qword_24AABEE00;
  }

  sub_24AA169C4(v68, v69, v70);
  v105 = v128;
  v104 = v129;
  sub_24AA1695C(v128, v129, &qword_27EF87A58, &qword_24AABEE38);
  v106 = v139;
  v107 = v132;
  sub_24AA1695C(v139, v132, &qword_27EF87A50, &unk_24AABEE28);
  v108 = v135;
  sub_24AA1695C(v104, v135, &qword_27EF87A58, &qword_24AABEE38);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87AC8, &qword_24AABEE98);
  v110 = v108 + *(v109 + 48);
  v111 = *&v146[80];
  *(v110 + 73) = *&v146[64];
  *(v110 + 89) = v111;
  *(v110 + 105) = *&v146[96];
  v112 = *&v146[16];
  *(v110 + 9) = *v146;
  *(v110 + 25) = v112;
  v113 = *&v146[48];
  *(v110 + 41) = *&v146[32];
  *v110 = 0x4024000000000000;
  *(v110 + 8) = 0;
  *(v110 + 120) = *&v146[111];
  *(v110 + 57) = v113;
  sub_24AA1695C(v107, v108 + *(v109 + 64), &qword_27EF87A50, &unk_24AABEE28);
  sub_24AA169C4(v106, &qword_27EF87A50, &unk_24AABEE28);
  sub_24AA169C4(v105, &qword_27EF87A58, &qword_24AABEE38);
  sub_24AA169C4(v107, &qword_27EF87A50, &unk_24AABEE28);
  return sub_24AA169C4(v104, &qword_27EF87A58, &qword_24AABEE38);
}

uint64_t sub_24AAAF934()
{
  swift_getObjectType();
  sub_24AAB38B4();
  sub_24AAB3574();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_24AAB3474();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_24AAB33E4();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_24AAAFA1C(void *a1)
{
  swift_getObjectType();
  v1 = sub_24AAB38D4();
  *v2 = !*v2;
  return v1(&v4, 0);
}

uint64_t sub_24AAAFA90(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  swift_getObjectType();
  return sub_24AAB3374();
}

uint64_t sub_24AAAFB00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v57 - v2;
  v68 = type metadata accessor for CallSubtitle(0);
  v3 = MEMORY[0x28223BE20](v68);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v57 - v7;
  MEMORY[0x28223BE20](v6);
  v67 = &v57 - v9;
  v10 = type metadata accessor for CallStatusViewModel(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v57 - v14);
  v16 = *v0;
  v17 = v0[1];
  ObjectType = swift_getObjectType();
  result = sub_24AAB39F4();
  if (result == 5)
  {
    return result;
  }

  result = sub_24AAB39F4();
  if (result == 6)
  {
    return result;
  }

  v63 = v10;
  v64 = v13;
  v20 = sub_24AAB39F4();
  v21 = *(v0 + 18);
  v65 = v0;
  v22 = v0[10];
  LODWORD(v69[0]) = v21;
  v69[1] = v22;
  LODWORD(v73) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A10, &qword_24AABEDE8);
  sub_24AAB4B74();
  v69[3] = ObjectType;
  v23 = *(v17 + 8);
  v69[4] = v23;
  v69[0] = v16;
  LODWORD(v73) = v21;
  v74 = v22;
  swift_unknownObjectRetain();
  sub_24AAB4B64();
  v24 = v70;
  v25 = v8;
  if (v70 == 4 || v70 == 1)
  {
    sub_24AAB3504();
    v26 = v71;
    if (v71)
    {
      v27 = v72;
      v28 = v70;

      if (v27)
      {
        goto LABEL_9;
      }
    }
  }

  v28 = sub_24AA87578(v69, v24, 0, ObjectType, v23);
  v26 = v29;
LABEL_9:
  v30 = sub_24AA86BC8(v69, v24, 1, ObjectType, v23);
  v31 = v63;
  v62 = v26;
  v61 = v28;
  v60 = v30;
  v59 = v32;
  if (v24 > 2)
  {
    if ((v24 - 5) < 2)
    {
      sub_24AAB35B4();
      v34 = v76;
      if (v76)
      {
        v35 = v75;
      }

      else
      {
        v45 = sub_24AAB34F4();
        if (v46)
        {
          v35 = v45;
        }

        else
        {
          v35 = 0;
        }

        if (v46)
        {
          v34 = v46;
        }

        else
        {
          v34 = 0xE000000000000000;
        }
      }

      v43 = v67;
      *v5 = v35;
      v5[1] = v34;
      swift_storeEnumTagMultiPayload();
      sub_24AAB0D18(v5, v25, type metadata accessor for CallSubtitle);
      goto LABEL_33;
    }

    if (v24 == 3)
    {
      *v25 = sub_24AAB34F4();
      *(v25 + 8) = v44;
    }

    else if (v24 == 4)
    {
      sub_24AA16768(v69, v25);
      *(v25 + 40) = 4;
      *(v25 + 48) = sub_24AAB34F4();
      *(v25 + 56) = v33;
      *(v25 + 64) = 1;
    }
  }

  else if (v24 == 1)
  {
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    *v25 = sub_24AAB34F4();
    *(v25 + 8) = v37;
    v38 = v66;
    v58 = v23;
    sub_24AAB34E4();
    v39 = sub_24AAB2C54();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (v41(v38, 1, v39) == 1)
    {
      sub_24AAB2C34();
      v42 = v41(v38, 1, v39);
      v43 = v67;
      if (v42 != 1)
      {
        sub_24AA169C4(v38, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v40 + 32))(v25 + v36, v38, v39);
      v43 = v67;
    }

    swift_storeEnumTagMultiPayload();
    v23 = v58;
    goto LABEL_33;
  }

  swift_storeEnumTagMultiPayload();
  v43 = v67;
LABEL_33:
  sub_24AAB0D18(v25, v43, type metadata accessor for CallSubtitle);
  v47 = sub_24AAB3564();
  if (v47 && (v48 = v47, v49 = [v47 shouldHideContactWithLockState_], v48, v49))
  {
    v50 = MEMORY[0x277D84F90];
  }

  else
  {
    v50 = sub_24AA86F34(v69, ObjectType, v23);
  }

  v51 = sub_24AAB3554();
  v53 = v52;
  v54 = v62;
  *v15 = v61;
  v15[1] = v54;
  v55 = v59;
  v15[2] = v60;
  v15[3] = v55;
  sub_24AAB0D18(v43, v15 + v31[6], type metadata accessor for CallSubtitle);
  *(v15 + v31[7]) = v50;
  *(v15 + v31[8]) = 3;
  v56 = (v15 + v31[9]);
  *v56 = v51;
  v56[1] = v53;
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  type metadata accessor for CarPlayIncomingCallView(0);
  sub_24AAB0CAC(v15, v64, type metadata accessor for CallStatusViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
  sub_24AAB4B74();
  return sub_24AA1B69C(v15);
}

uint64_t sub_24AAB01CC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_24AAB38E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87280, &qword_24AABDAC0);
  return sub_24AAB4B74();
}

uint64_t sub_24AAB024C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v63 - v3;
  v65 = type metadata accessor for CallSubtitle(0);
  v5 = MEMORY[0x28223BE20](v65);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v63 - v9;
  MEMORY[0x28223BE20](v8);
  v69 = &v63 - v11;
  v12 = type metadata accessor for CallStatusViewModel(0);
  v13 = MEMORY[0x28223BE20](v12);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v63 - v15);
  v17 = *a1;
  v18 = a1[1];
  v71 = a1;
  ObjectType = swift_getObjectType();
  v78 = ObjectType;
  v20 = *(v18 + 8);
  v79 = v20;
  v75 = v17;
  swift_unknownObjectRetain();
  v21 = sub_24AAB39F4();
  v22 = v21;
  if (v21 == 4 || v21 == 1)
  {
    sub_24AAB3504();
    v23 = v83;
    if (v83)
    {
      v24 = v84;
      v72 = v82;

      if (v24)
      {
        goto LABEL_7;
      }
    }
  }

  v72 = sub_24AA87578(&v75, v22, 0, ObjectType, v20);
  v23 = v25;
LABEL_7:
  v26 = sub_24AA86BC8(&v75, v22, 1, ObjectType, v20);
  v68 = v23;
  v67 = v26;
  v66 = v27;
  if (v22 > 2)
  {
    if ((v22 - 5) >= 2)
    {
      if (v22 == 3)
      {
        *v10 = sub_24AAB34F4();
        *(v10 + 1) = v37;
      }

      else if (v22 == 4)
      {
        sub_24AA16768(&v75, v10);
        *(v10 + 10) = 4;
        *(v10 + 6) = sub_24AAB34F4();
        *(v10 + 7) = v28;
        v10[64] = 1;
      }

      goto LABEL_21;
    }

    sub_24AAB35B4();
    v29 = v86;
    if (v86)
    {
      v30 = v85;
    }

    else
    {
      v38 = sub_24AAB34F4();
      if (v39)
      {
        v30 = v38;
      }

      else
      {
        v30 = 0;
      }

      if (v39)
      {
        v29 = v39;
      }

      else
      {
        v29 = 0xE000000000000000;
      }
    }

    v36 = v71;
    *v7 = v30;
    v7[1] = v29;
    swift_storeEnumTagMultiPayload();
    sub_24AAB0D18(v7, v10, type metadata accessor for CallSubtitle);
  }

  else
  {
    if (v22 != 1)
    {
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v36 = v71;
      goto LABEL_31;
    }

    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    *v10 = sub_24AAB34F4();
    *(v10 + 1) = v31;
    sub_24AAB34E4();
    v32 = sub_24AAB2C54();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v4, 1, v32) == 1)
    {
      sub_24AAB2C34();
      v35 = v34(v4, 1, v32);
      v36 = v71;
      if (v35 != 1)
      {
        sub_24AA169C4(v4, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v33 + 32))(&v10[v64], v4, v32);
      v36 = v71;
    }

    swift_storeEnumTagMultiPayload();
  }

LABEL_31:
  v40 = v69;
  sub_24AAB0D18(v10, v69, type metadata accessor for CallSubtitle);
  v41 = sub_24AAB3564();
  if (v41 && (v42 = v41, v43 = [v41 shouldHideContactWithLockState_], v42, v43))
  {
    v44 = MEMORY[0x277D84F90];
  }

  else
  {
    v44 = sub_24AA86F34(&v75, ObjectType, v20);
  }

  v45 = sub_24AAB3554();
  v47 = v46;
  v48 = v68;
  *v16 = v72;
  v16[1] = v48;
  v49 = v66;
  v16[2] = v67;
  v16[3] = v49;
  sub_24AAB0D18(v40, v16 + v12[6], type metadata accessor for CallSubtitle);
  *(v16 + v12[7]) = v44;
  *(v16 + v12[8]) = 3;
  v50 = (v16 + v12[9]);
  *v50 = v45;
  v50[1] = v47;
  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  v51 = type metadata accessor for CarPlayIncomingCallView(0);
  sub_24AAB0CAC(v16, v70, type metadata accessor for CallStatusViewModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
  sub_24AAB4B74();
  sub_24AA1B69C(v16);
  v52 = v36 + *(v51 + 40);
  v53 = *(v52 + 1);
  v54 = *(v52 + 3);
  v55 = *(v52 + 4);
  v56 = *(v52 + 5);
  v57 = v52[16];
  v58 = v52[48];
  v75 = *v52;
  v76 = v53;
  v77 = v57;
  v78 = v54;
  v79 = v55;
  v80 = v56;
  v81 = v58;
  v73 = xmmword_24AAB6FB0;
  v74 = 2;
  sub_24AAB1B84(v75, v53, v57);

  sub_24AAB1B84(v55, v56, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87A08, &unk_24AABEDD8);
  sub_24AAB3C74();
  v59 = v79;
  v60 = v80;
  v61 = v81;
  sub_24AAB1B98(v75, v76, v77);

  return sub_24AAB1B98(v59, v60, v61);
}

void sub_24AAB098C(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_24AAB4304();
    sub_24AAB3D04();
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
    v9 = sub_24AAB4D44();
    v11 = v10;
    v12 = sub_24AAB44D4();
    sub_24AAB3C54();
    *(&v14 + 1) = v13;
    *(&v16 + 1) = v15;
    v17 = v12;
    v18 = 0x10000000000;
    v19 = 0x3FE999999999999ALL;
    v20 = v3;
  }

  else
  {
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    v18 = 0;
    v5 = 0;
    v14 = 0uLL;
    v16 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v18 | v20;
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  *(a2 + 64) = v19;
  *(a2 + 72) = v17;
  *(a2 + 80) = v14;
  *(a2 + 96) = v16;
  *(a2 + 112) = 0;
}

uint64_t sub_24AAB0ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_24AAB0B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_24AAB0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_24AAB4284();
  __break(1u);
}

unint64_t sub_24AAB0BF4()
{
  result = qword_27EF878E0;
  if (!qword_27EF878E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87898, &qword_24AABEB98);
    sub_24AA16A68(&qword_27EF878E8, &qword_27EF878F0, &qword_24AABEBE0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF878E0);
  }

  return result;
}

uint64_t sub_24AAB0CAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AAB0D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24AAB0DE4()
{
  result = qword_27EF87908;
  if (!qword_27EF87908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF878A8, &qword_24AABEBA8);
    sub_24AAB0E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87908);
  }

  return result;
}

unint64_t sub_24AAB0E70()
{
  result = qword_27EF87910;
  if (!qword_27EF87910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF878A0, &qword_24AABEBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87898, &qword_24AABEB98);
    sub_24AAB4384();
    sub_24AAB0BF4();
    sub_24AAB1F98(&qword_27EF878F8, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF87890, &qword_27EF87860, &qword_24AABEB48, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87910);
  }

  return result;
}

uint64_t sub_24AAB1014(uint64_t a1)
{
  v3 = *(type metadata accessor for CarPlayIncomingCallView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24AAB01CC(a1, v4);
}

uint64_t sub_24AAB10CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24AAB119C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AAB124C(uint64_t a1)
{
  sub_24AAB13C0(319, &qword_27EF87930, MEMORY[0x277D07ED8], 0);
  if (v1 <= 0x3F)
  {
    sub_24AAB13C0(319, &qword_27EF87938, MEMORY[0x277D07E90], 1);
    if (v2 <= 0x3F)
    {
      sub_24AA55CA0();
      if (v3 <= 0x3F)
      {
        sub_24AAB141C(319, &qword_27EF87940, type metadata accessor for TUCallStatus);
        if (v4 <= 0x3F)
        {
          sub_24AA91B0C();
          if (v5 <= 0x3F)
          {
            sub_24AAB141C(319, &qword_27EF87948, type metadata accessor for CallStatusViewModel);
            if (v6 <= 0x3F)
            {
              sub_24AAB1470(319);
              if (v7 <= 0x3F)
              {
                sub_24AAA88B4(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24AAB13C0(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_24AAB141C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24AAB4B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24AAB1470(uint64_t a1)
{
  if (!qword_27EF87950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87958, &unk_24AABEC88);
    sub_24AAB14E0();
    v1 = sub_24AAB3CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF87950);
    }
  }
}

unint64_t sub_24AAB14E0()
{
  result = qword_27EF87960;
  if (!qword_27EF87960)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87958, &unk_24AABEC88);
    sub_24AA165C8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87960);
  }

  return result;
}

unint64_t sub_24AAB1568()
{
  result = qword_27EF87968;
  if (!qword_27EF87968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87918, &qword_24AABEBF0);
    sub_24AA16A68(qword_27EF87970, &qword_27EF878D0, &qword_24AABEBD0, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87968);
  }

  return result;
}

uint64_t sub_24AAB1620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24AAB165C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AAB16A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24AAB1718(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x28223BE20](a1);
  v9 = [objc_opt_self() buttonWithType_];
  sub_24AAB3EB4();
  a1();
  v10 = sub_24AAB3EA4();
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setUserInteractionEnabled_];
  v11 = v9;
  [v11 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87048, &qword_24AABD020);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24AABEB50;
  v13 = [v10 topAnchor];
  v14 = [v11 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v10 bottomAnchor];
  v17 = [v11 bottomAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v12 + 40) = v18;
  v19 = [v10 leadingAnchor];
  v20 = [v11 leadingAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v21;
  v22 = [v10 trailingAnchor];

  v23 = [v11 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 56) = v24;
  sub_24AA442A0(0, &qword_27EF879F8, 0x277CCAAD0);
  v25 = sub_24AAB5014();

  [v11 addConstraints_];

  sub_24AA442A0(0, &qword_27EF87A00, 0x277D750C8);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a1;
  v26[5] = a2;
  v26[6] = a3;
  v26[7] = a4;

  v27 = sub_24AAB5224();
  [v11 addAction:v27 forControlEvents:64];

  return v11;
}

uint64_t sub_24AAB1B1C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AAB1B84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24AA15F10(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24AAB1B98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24AA15ED0(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_24AAB1BB4()
{
  result = qword_27EF87A60;
  if (!qword_27EF87A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86EE8, &qword_24AABC7E0);
    sub_24AAB1F98(&qword_27EF87A68, type metadata accessor for CallStatusView, "q@u7 9");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87A60);
  }

  return result;
}

uint64_t sub_24AAB1C70()
{
  sub_24AA15ED0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 90, 7);
}

uint64_t sub_24AAB1CF4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CarPlayIncomingCallView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24AAB1DC0()
{
  result = qword_27EF87A78;
  if (!qword_27EF87A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87A40, &qword_24AABEE18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87A80, &qword_24AABEE78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87958, &unk_24AABEC88);
    sub_24AAB1EE0();
    sub_24AAB14E0();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF87AA0, &qword_27EF87AA8, &qword_24AABEE88, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87A78);
  }

  return result;
}

unint64_t sub_24AAB1EE0()
{
  result = qword_27EF87A88;
  if (!qword_27EF87A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF87A80, &qword_24AABEE78);
    sub_24AA16A68(&qword_27EF87A90, &qword_27EF87A98, &qword_24AABEE80, &unk_24AABECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF87A88);
  }

  return result;
}

uint64_t sub_24AAB1F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for CarPlayIncomingCallView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + 16));

  v5 = v0 + v3 + v1[9];

  v6 = (v5 + *(type metadata accessor for CallStatusViewModel(0) + 24));
  type metadata accessor for CallSubtitle(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {

          v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
          v9 = sub_24AAB2C54();
          (*(*(v9 - 8) + 8))(&v6[v8], v9);
        }

        goto LABEL_14;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
  {
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 5)
  {

    v19 = v0;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF870B0, &unk_24AABCB50) + 48);
    v11 = sub_24AAB2C54();
    v12 = *(v11 - 8);
    v18 = v10;
    v13 = &v6[v10];
    v0 = v19;
    if (!(*(v12 + 48))(v13, 1, v11))
    {
      (*(v12 + 8))(&v6[v18], v11);
    }
  }

LABEL_14:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87900, &qword_24AABEBE8);

  v14 = v4 + v1[10];
  v15 = *(v14 + 16);
  if (v15 != 255)
  {
    sub_24AA15ED0(*v14, *(v14 + 8), v15);
  }

  v16 = *(v14 + 48);
  if (v16 != 255)
  {
    sub_24AA15ED0(*(v14 + 32), *(v14 + 40), v16);
  }

  sub_24AA15934(*(v4 + v1[11]), *(v4 + v1[11] + 8), *(v4 + v1[11] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v20, v2 | 7);
}

uint64_t sub_24AAB2340()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AAB2384()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27EF91948 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27EF9193C > a2)
  {
    return 1;
  }

  if (dword_27EF9193C < a2)
  {
    return 0;
  }

  return dword_27EF91940 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27EF91950 == -1)
  {
    if (qword_27EF91958)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27EF91958)
    {
      return _availability_version_check();
    }
  }

  if (qword_27EF91948 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27EF9193C > a3)
      {
        return 1;
      }

      if (dword_27EF9193C >= a3)
      {
        return dword_27EF91940 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27EF91958;
  if (qword_27EF91958)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27EF91958 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x24C225F30](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27EF9193C, &dword_27EF91940);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}
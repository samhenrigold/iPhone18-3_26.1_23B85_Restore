uint64_t SharedSecureCaptureSessionActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264EF2EA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SharedSecureCaptureSessionActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_264EF2EF8(uint64_t *a1)
{
  qword_27FFBD920 = *a1;
}

id SecureCaptureSession.__allocating_init(sceneDelegate:)(void *a1)
{
  swift_allocObject();
  v2 = sub_264EF9E2C(a1);

  return v2;
}

id SecureCaptureSession.init(sceneDelegate:)(void *a1)
{
  v2 = sub_264EF9E2C(a1);

  return v2;
}

uint64_t sub_264EF2FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_264F13314();
  v5[4] = sub_264F13304();
  v7 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF304C, v7, v6);
}

uint64_t sub_264EF304C()
{
  v1 = *(v0 + 24);

  v2 = v1;
  sub_264F0F99C(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264EF30BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_264EFBAD4(a3, v25 - v10, &qword_27FFBD978, &qword_264F14E00);
  v12 = sub_264F13334();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_264EFB174(v11, &qword_27FFBD978, &qword_264F14E00);
  }

  else
  {
    sub_264F13324();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_264F132D4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_264F13234() + 32;
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

      sub_264EFB174(a3, &qword_27FFBD978, &qword_264F14E00);

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

  sub_264EFB174(a3, &qword_27FFBD978, &qword_264F14E00);
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

uint64_t SecureCaptureSession.sessionContentsURL.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EF33DC, 0, 0);
}

uint64_t sub_264EF33DC()
{
  v1 = [*(*(v0 + 24) + 16) url];
  sub_264F13004();

  v2 = *(v0 + 8);

  return v2();
}

id SecureCaptureSession._sceneDelegate.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

id SecureCaptureSession.sceneDelegate.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_264EF34F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  *a2 = v4;
}

void (*SecureCaptureSession.sceneDelegate.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_264EF35B0;
}

uint64_t SecureCaptureSession.urlsToOpen.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD968, &qword_264F15510);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = *(v0 + 24);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 24));
  v7 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_urlContexts;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v6[v7], v1);

  sub_264F13014();
  sub_264EFAF30(&qword_27FFBD970, &qword_27FFBD968, &qword_264F15510, MEMORY[0x277D857C0]);
  return sub_264F13674();
}

uint64_t sub_264EF3744(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_264EF3768, 0, 0);
}

uint64_t sub_264EF3768()
{
  v1 = [*(v0 + 24) URL];
  sub_264F13004();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264EF3808(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  if (!a3 && a2 >> 60 != 15)
  {
    v12 = sub_264F13334();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_264F13314();
    sub_264EFB7B4(a1, a2);

    v13 = sub_264F13304();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = a4;
    v14[5] = a1;
    v14[6] = a2;
    sub_264EF30BC(0, 0, v11, &unk_264F14D68, v14);
  }

  return result;
}

uint64_t sub_264EF3960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  sub_264F13314();
  v6[13] = sub_264F13304();
  v8 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF39FC, v8, v7);
}

uint64_t sub_264EF39FC()
{
  v1 = *(v0 + 80);

  v2 = *(v1 + 24);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v5 = *&v3[v4];
  v6 = v5;

  if (v5)
  {
    v7 = [v6 windowScene];

    if (v7)
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v9 = sub_264F13024();
      v10 = [v8 initWithData_];

      if (v10)
      {
        v11 = [objc_allocWithZone(SESecureCaptureOpenApplicationAction) initWithUserActivity:v10 responder:0];
        v12 = [v7 _FBSScene];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_264F147C0;
        *(inited + 32) = v11;
        v14 = v11;
        sub_264F02E9C(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        sub_264EFB470();
        v15 = sub_264F13364();

        [v12 sendActions_];
      }
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_264EF3C40(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_264F13034();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_264EFB958(v4, v8);
}

void sub_264EF3CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_264EFA0B8(MEMORY[0x277D84F90]);
  v8 = sub_264F131C4();

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v3;
  v9[5] = v7;
  v11[4] = sub_264EFB7A8;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264EF3C40;
  v11[3] = &block_descriptor_95;
  v10 = _Block_copy(v11);

  [a1 _createUserActivityDataWithOptions_completionHandler_];
  _Block_release(v10);
}

void sub_264EF3E58(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  if (a3 || a2 >> 60 == 15)
  {
    sub_264EFA8CC();
    v21 = swift_allocError();
    *v22 = 0;
    a4(v21, 1);
  }

  else
  {
    v17 = sub_264F13334();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    sub_264F13314();
    sub_264EFB7B4(a1, a2);
    sub_264EFB7B4(a1, a2);

    v18 = sub_264F13304();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = a6;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a4;
    v19[8] = a5;
    v19[9] = a7;
    sub_264EF30BC(0, 0, v16, &unk_264F14D58, v19);
    sub_264EFB958(a1, a2);
  }
}

uint64_t sub_264EF4054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v13;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  sub_264F13314();
  v8[22] = sub_264F13304();
  v10 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF40FC, v10, v9);
}

uint64_t sub_264EF40FC()
{
  v1 = v0[16];

  v2 = *(v1 + 24);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v5 = *&v3[v4];
  v6 = v5;

  if (v5)
  {
    v7 = [v6 windowScene];

    if (v7)
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCAE58]);
      v9 = sub_264F13024();
      v10 = [v8 initWithData_];

      if (v10)
      {
        v11 = v0[19];
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = *(v0 + 10);
        v0[6] = sub_264EFB9A4;
        v0[7] = v12;
        v0[2] = MEMORY[0x277D85DD0];
        v0[3] = 1107296256;
        v0[4] = sub_264F01334;
        v0[5] = &block_descriptor_105;
        v13 = _Block_copy(v0 + 2);
        v14 = objc_opt_self();

        v15 = [v14 responderWithHandler_];
        _Block_release(v13);

        v16 = [objc_allocWithZone(SESecureCaptureOpenApplicationAction) initWithUserActivity:v10 responder:v15];
        v17 = [v7 _FBSScene];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_264F147C0;
        *(inited + 32) = v16;
        v19 = v16;
        sub_264F02E9C(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        sub_264EFB470();
        v20 = sub_264F13364();

        [v17 sendActions_];

        goto LABEL_7;
      }
    }
  }

  v21 = v0[19];
  sub_264EFA8CC();
  v22 = swift_allocError();
  *v23 = 0;
  v21(v22, 1);

LABEL_7:
  v24 = v0[1];

  return v24();
}

void sub_264EF4468(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB8, &qword_264F153D0);
  if (swift_dynamicCast())
  {
    v4 = v21;
  }

  else
  {
    v20 = sub_264F12FC4();
    v5 = [v20 underlyingErrors];
    v6 = sub_264F13294();

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 + 8 * v8 + 32);
        v10 = v9;
        v11 = sub_264F12FC4();
        v12 = [v11 domain];

        v13 = sub_264F13214();
        v15 = v14;

        if (v13 == sub_264F13214() && v15 == v16)
        {
          break;
        }

        v18 = sub_264F136F4();

        if (v18)
        {
          goto LABEL_14;
        }

        ++v8;

        if (v7 == v8)
        {
          goto LABEL_12;
        }
      }

LABEL_14:

      sub_264EFB608(0, &qword_27FFBDF60, 0x277CCA9B8);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_19;
      }

      v19 = [v21 code];

      v4 = v19 == 4;
      if (v19 == 7)
      {
        v4 = 2;
      }
    }

    else
    {
LABEL_12:

LABEL_19:
      v4 = 0;
    }
  }

  *a2 = v4;
}

uint64_t sub_264EF46C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_264F13334();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_264F13314();

  v13 = a1;
  v14 = sub_264F13304();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v4;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = v13;
  v15[8] = v8;
  sub_264EF30BC(0, 0, v11, &unk_264F14D48, v15);
}

uint64_t sub_264EF4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  sub_264F13314();
  v8[21] = sub_264F13304();
  v10 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF48E4, v10, v9);
}

uint64_t sub_264EF48E4()
{
  v1 = v0[16];

  v2 = *(v1 + 24);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v5 = *&v3[v4];
  v6 = v5;

  if (v5 && (v7 = [v6 windowScene], v6, v7))
  {
    v8 = v0[19];
    v9 = v0[20];
    v11 = v0[17];
    v10 = v0[18];
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = v10;
    v12[4] = v9;
    v0[6] = sub_264EFBDA4;
    v0[7] = v12;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_264F01334;
    v0[5] = &block_descriptor_86;
    v13 = _Block_copy(v0 + 2);
    v14 = objc_opt_self();

    v15 = [v14 responderWithHandler_];
    _Block_release(v13);

    v16 = [objc_allocWithZone(SESecureCaptureOpenApplicationAfterTransitionCompletionAction) initWithUserActivity:v8 responder:v15];
    v17 = [v7 _FBSScene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_264F147C0;
    *(inited + 32) = v16;
    v19 = v16;
    sub_264F02E9C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    sub_264EFB470();
    v20 = sub_264F13364();

    [v17 sendActions_];
  }

  else
  {
    v21 = v0[17];
    sub_264EFA8CC();
    v22 = swift_allocError();
    *v23 = 0;
    v21(v22, 1);
  }

  v24 = v0[1];

  return v24();
}

void sub_264EF4BF4(void *a1, void (*a2)(void *, uint64_t))
{
  v3 = [a1 error];
  if (v3)
  {
    v6 = v3;
    sub_264EFA8CC();
    v4 = swift_allocError();
    sub_264EF4468(v6, v5);
    a2(v4, 1);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t SecureCaptureSession.openApplication(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EF4CE8, 0, 0);
}

uint64_t sub_264EF4CE8()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_264EF4DD8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264EF4DD8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_264EF4F0C;
  }

  else
  {

    v2 = sub_264EF4EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264EF4F0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SecureCaptureSession.openApplicationAfterTransitionCompletion(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_264F13314();
  v2[5] = sub_264F13304();
  v4 = sub_264F132D4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_264EF500C, v4, v3);
}

uint64_t sub_264EF500C(uint64_t a1)
{
  v5 = v1[1];
  v1[4].i64[0] = sub_264F13304();
  v2 = swift_task_alloc();
  v1[4].i64[1] = v2;
  v2[1] = vextq_s8(v5, v5, 8uLL);
  v3 = swift_task_alloc();
  v1[5].i64[0] = v3;
  *v3 = v1;
  v3[1] = sub_264EF5120;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264EF5120()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_264EF52A8;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_264EF5244;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_264EF5244()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EF52A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EF5320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  a6(a3, a5, v15);
}

uint64_t sub_264EF5478(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
    return sub_264F132E4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
    return sub_264F132F4();
  }
}

uint64_t sub_264EF550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_264F13314();
  v5[12] = sub_264F13304();
  v7 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EF55A4, v7, v6);
}

uint64_t sub_264EF55A4()
{
  v1 = *(v0 + 80);

  v2 = *(v1 + 24);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 24));
  v4 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_window;
  swift_beginAccess();
  v5 = *&v3[v4];
  v6 = v5;

  if (v5)
  {
    v7 = [v6 windowScene];

    if (v7)
    {
      v8 = objc_allocWithZone(SESecureCaptureOpenApplicationAction);
      v9 = sub_264F12FD4();
      v10 = [v8 initWithURL:v9 responder:0];

      v11 = [v7 _FBSScene];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC8, &qword_264F14D30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_264F147C0;
      *(inited + 32) = v10;
      v13 = v10;
      sub_264F02E9C(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();
      v14 = sub_264F13364();

      [v11 sendActions_];
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

void SecureCaptureSession.__allocating_init(delegate:)()
{
  if (![objc_opt_self() temporarySessionPathWithType_])
  {
    __break(1u);
  }

  sub_264F13684();
  __break(1u);
}

void SecureCaptureSession.init(delegate:)()
{
  v1 = [objc_opt_self() temporarySessionPathWithType_];
  if (!v1)
  {
    __break(1u);
  }

  *(v0 + 16) = v1;
  v2 = OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath;
  v3 = sub_264F13014();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  sub_264F13684();
  __break(1u);
}

void sub_264EF5988(void *a1, uint64_t a2, uint64_t a3)
{
  sub_264EFA0B8(MEMORY[0x277D84F90]);
  v7 = sub_264F131C4();

  v9[4] = a2;
  v10 = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_264EF3C40;
  v9[3] = a3;
  v8 = _Block_copy(v9);

  [a1 _createUserActivityDataWithOptions_completionHandler_];
  _Block_release(v8);
}

uint64_t sub_264EF5AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_264F13014();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_264F13334();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_264F13314();

  v14 = sub_264F13304();
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 2) = v14;
  *(v16 + 3) = v17;
  *(v16 + 4) = v5;
  (*(v8 + 32))(&v16[v15], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_264EF30BC(0, 0, v12, a3, v16);
}

unint64_t SecureCaptureSession.ApplicationLaunchError.failureReason.getter()
{
  v1 = 0xD00000000000002ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000063;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t SecureCaptureSession.ApplicationLaunchError.hashValue.getter()
{
  v1 = *v0;
  sub_264F137C4();
  MEMORY[0x266752E30](v1);
  return sub_264F137F4();
}

uint64_t sub_264EF5DB8()
{
  v1 = *v0;
  sub_264F137C4();
  MEMORY[0x266752E30](v1);
  return sub_264F137F4();
}

uint64_t sub_264EF5E2C(uint64_t a1)
{
  v2 = *v1;
  sub_264F137C4();
  MEMORY[0x266752E30](v2);
  return sub_264F137F4();
}

unint64_t sub_264EF5E9C()
{
  v1 = 0xD00000000000002ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000063;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_264EF5EFC(uint64_t a1)
{
  v2 = sub_264EFB018();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_264EF5F38(uint64_t a1)
{
  v2 = sub_264EFB018();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SecureCaptureSession.deinit()
{

  sub_264EFB174(v0 + OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath, &qword_27FFBD980, &qword_264F14820);
  return v0;
}

uint64_t SecureCaptureSession.__deallocating_deinit()
{

  sub_264EFB174(v0 + OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath, &qword_27FFBD980, &qword_264F14820);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_264EF6068(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  a2(a1);
  v4 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a3 = v4;
  return result;
}

uint64_t sub_264EF60F0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_264EF6154(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SharedSecureCaptureSessionStorageActor();

  return MEMORY[0x2822005F8](v3, a2);
}

void *sub_264EF618C()
{
  type metadata accessor for SecureCaptureSessionStorage(0);
  swift_allocObject();
  result = SecureCaptureSessionStorage.init()();
  if (result)
  {
    qword_27FFBD940 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264EF622C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_264EF62DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_264EF63CC()
{
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
}

uint64_t sub_264EF6488(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_264EF9784(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
    sub_264F13074();
  }
}

uint64_t sub_264EF65D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_264EF663C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  *v4 = v1;
  swift_getKeyPath();
  sub_264F130A4();

  v4[7] = sub_264EF628C(v4);
  return sub_264EF6778;
}

uint64_t sub_264EF6784()
{
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
}

uint64_t sub_264EF6840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_264EF6930(uint64_t a1)
{
  swift_beginAccess();

  sub_264EF999C(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
    sub_264F13074();
  }
}

uint64_t sub_264EF6A7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void *SecureCaptureSessionStorage.init()()
{
  v1 = v0;
  v19 = sub_264F13014();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[4] = 0;
  sub_264F130B4();
  v5 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v6 = sub_264F13294();

  if (v6 >> 62)
  {
    v7 = sub_264F13584();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
LABEL_13:
    v1[2] = v8;
    swift_bridgeObjectRetain_n();

    v1[4] = v8;
    v16 = sub_264EFA6B8(v8, v6);

    v1[3] = v16;
    return v1;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_264EF8FE4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v18 = v1;
    v10 = 0;
    v8 = v20;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266752CA0](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 url];
      sub_264F13004();

      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_264EF8FE4((v14 > 1), v15 + 1, 1);
        v8 = v20;
      }

      ++v10;
      *(v8 + 16) = v15 + 1;
      (*(v2 + 32))(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, v4, v19);
    }

    while (v7 != v10);
    v1 = v18;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_264EF6D84(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 32))
  {
    if (a1)
    {

      v4 = sub_264EF9784(v3, a1);

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
    sub_264F13074();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

void sub_264EF6EE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264F13014();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v1;
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    swift_getKeyPath();
    v17 = v1;
    sub_264F13084();

    v7 = *(v1 + 16);

    v8 = sub_264EF72F4(a1, v7);
    v10 = v9;

    swift_getKeyPath();
    v17 = v2;
    sub_264F13084();

    swift_beginAccess();
    v11 = *(v2 + 24);
    if (*(v11 + 16))
    {

      v12 = sub_264EF7F38(a1);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        if ((v10 & 1) == 0 && ([v14 isTemporaryPath] & 1) == 0)
        {
          [v14 invalidate];
          (*(v15 + 16))(v6, a1, v4);
          swift_getKeyPath();
          v16 = v2;
          sub_264F13084();

          v16 = v2;
          swift_getKeyPath();
          sub_264F130A4();

          swift_beginAccess();
          sub_264EF7418(0, v6);
          swift_endAccess();
          v16 = v2;
          swift_getKeyPath();
          sub_264F13094();

          swift_getKeyPath();
          v16 = v2;
          sub_264F13084();

          v16 = v2;
          swift_getKeyPath();
          sub_264F130A4();

          swift_beginAccess();
          sub_264EF75D8(v8, v6);
          (*(v15 + 8))(v6, v4);
          swift_endAccess();
          v16 = v2;
          swift_getKeyPath();
          sub_264F13094();
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_264EF72F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_264F13014() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_264EFA808(&qword_27FFBDAA8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v7 = 0;
  while ((sub_264F131F4() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_264EF7418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_264EF9500(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_264F13014();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_264EF7F38(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_264EF8990();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_264F13014();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_264EF91DC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_264F13014();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_264EF75D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264EFFC68(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_264F13014();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_264EF7734@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_264EF7824()
{
  swift_getKeyPath();
  sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  swift_beginAccess();
}

uint64_t sub_264EF78E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t (*sub_264EF7948(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_264EFA808(&unk_27FFBD990, 255, type metadata accessor for SecureCaptureSessionStorage, &protocol conformance descriptor for SecureCaptureSessionStorage);
  sub_264F13084();

  *v4 = v1;
  swift_getKeyPath();
  sub_264F130A4();

  v4[7] = sub_264EF76E0(v4);
  return sub_264EF7A84;
}

void sub_264EF7A90(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_264F13094();

  free(v3);
}

char *SecureCaptureSessionStorage.deinit()
{

  v1 = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  v2 = sub_264F130C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SecureCaptureSessionStorage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16SecureCaptureKit27SecureCaptureSessionStorage___observationRegistrar;
  v2 = sub_264F130C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

BOOL sub_264EF7C70(void *a1, uint64_t *a2)
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

void *sub_264EF7CC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_264EF7D04(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264EF7DFC;

  return v6(a1);
}

uint64_t sub_264EF7DFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_264EF7EF4(uint64_t a1)
{
  v2 = sub_264F135B4();

  return sub_264EF8090(a1, v2);
}

unint64_t sub_264EF7F38(uint64_t a1)
{
  sub_264F13014();
  sub_264EFA808(&qword_27FFBDAA0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_264F131D4();

  return sub_264EF8158(a1, v2);
}

unint64_t sub_264EF7FD4(uint64_t a1)
{
  v2 = sub_264F137B4();

  return sub_264EF831C(a1, v2);
}

unint64_t sub_264EF8018(uint64_t a1, uint64_t a2)
{
  sub_264F137C4();
  sub_264F13244();
  v4 = sub_264F137F4();

  return sub_264EF8388(a1, a2, v4);
}

unint64_t sub_264EF8090(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_264EFB06C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266752C20](v9, a1);
      sub_264EFB0C8(v9);
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

unint64_t sub_264EF8158(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_264F13014();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_264EFA808(&qword_27FFBDAA8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v15 = sub_264F131F4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_264EF831C(uint64_t a1, uint64_t a2)
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

unint64_t sub_264EF8388(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_264F136F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_264EF8440(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v54 = a4;
  v7 = sub_264F13014();
  v50 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB0, &unk_264F14D00);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = v42 - v13;
  v14 = *(a1 + 16);

  v51 = a2;

  v46 = v14;
  if (!v14)
  {
LABEL_28:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v15 = 0;
  v16 = v51 & 0xFFFFFFFFFFFFFF8;
  if (v51 < 0)
  {
    v17 = v51;
  }

  else
  {
    v17 = v51 & 0xFFFFFFFFFFFFFF8;
  }

  v42[1] = v17;
  v44 = a1;
  v45 = v51 & 0xC000000000000001;
  v18 = (v50 + 32);
  v47 = v51 >> 62;
  v48 = v50 + 16;
  v43 = v51 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      sub_264F13734();
      __break(1u);
      goto LABEL_36;
    }

    v19 = *(v50 + 72);
    (*(v50 + 16))(v11, a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v19 * v15, v7);
    if (v47)
    {
      if (v15 == sub_264F13584())
      {
LABEL_29:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        (*(v50 + 8))(v11, v7);
        return;
      }
    }

    else if (v15 == *(v16 + 16))
    {
      goto LABEL_29;
    }

    v52 = v19;
    if (v45)
    {
      v20 = MEMORY[0x266752CA0](v15, v51);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_33;
      }

      v20 = *(v51 + 8 * v15 + 32);
    }

    v53 = v20;
    v21 = *v18;
    v22 = v49;
    v23 = v11;
    (*v18)(v49, v11, v7);
    v24 = v55;
    v25 = v7;
    v21(v55, v22, v7);
    v26 = *v54;
    v28 = sub_264EF7F38(v24);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_32;
    }

    v32 = v27;
    if (v26[3] < v31)
    {
      break;
    }

    if (a3)
    {
      if (v27)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_264EF8990();
      if (v32)
      {
        goto LABEL_26;
      }
    }

LABEL_19:
    v35 = v55;
    v36 = *v54;
    *(*v54 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v7 = v25;
    v21((v36[6] + v28 * v52), v35, v25);
    *(v36[7] + 8 * v28) = v53;
    v37 = v36[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_34;
    }

    ++v15;
    v36[2] = v39;
    a3 = 1;
    v16 = v43;
    a1 = v44;
    v11 = v23;
    if (v46 == v15)
    {
      goto LABEL_28;
    }
  }

  sub_264EF8C04(v31, a3 & 1);
  v33 = sub_264EF7F38(v55);
  if ((v32 & 1) != (v34 & 1))
  {
    goto LABEL_35;
  }

  v28 = v33;
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_26:
  v40 = swift_allocError();
  swift_willThrow();
  v58 = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAB8, &qword_264F153D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v50 + 8))(v55, v25);

    return;
  }

LABEL_36:
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_264F13634();
  MEMORY[0x2667528B0](0xD00000000000001BLL, 0x8000000264F15AD0);
  sub_264F13664();
  MEMORY[0x2667528B0](39, 0xE100000000000000);
  sub_264F13684();
  __break(1u);
}

char *sub_264EF8990()
{
  v1 = v0;
  v31 = sub_264F13014();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA98, &qword_264F14CF8);
  v3 = *v0;
  v4 = sub_264F136A4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_264EF8C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_264F13014();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA98, &qword_264F14CF8);
  v39 = v4;
  result = sub_264F136B4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_264EFA808(&qword_27FFBDAA0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_264F131D4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_264EF8FE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_264EF9004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_264EF9004(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC0, &qword_264F14D10);
  v10 = *(sub_264F13014() - 8);
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
  v15 = *(sub_264F13014() - 8);
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

unint64_t sub_264EF91DC(int64_t a1, uint64_t a2)
{
  v40 = sub_264F13014();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_264F13554();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_264EFA808(&qword_27FFBDAA0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v23 = sub_264F131D4();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_264EF9500(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_264F13014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_264EF7F38(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_264EF8990();
      goto LABEL_7;
    }

    sub_264EF8C04(v17, a3 & 1);
    v23 = sub_264EF7F38(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_264EF96CC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_264F13734();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_264EF96CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_264F13014();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_264EF9784(uint64_t a1, uint64_t a2)
{
  v4 = sub_264F13014();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_264EFA808(&qword_27FFBDAA8, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v21 = sub_264F131F4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void sub_264EF999C(uint64_t a1, uint64_t a2)
{
  v58 = sub_264F13014();
  v53 = *(v58 - 8);
  v4 = MEMORY[0x28223BE20](v58);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA70, &qword_264F14CD8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = a2;
    v51 = v10;
    v12 = 0;
    v48 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v45 = (v16 + 63) >> 6;
    v46 = v14;
    v47 = v53 + 16;
    v55 = &v45 - v9;
    v56 = (v53 + 32);
    v49 = (v53 + 8);
    while (v18)
    {
      v57 = (v18 - 1) & v18;
      v19 = __clz(__rbit64(v18)) | (v12 << 6);
      v20 = v51;
LABEL_16:
      v25 = v48;
      v26 = v52;
      v27 = v53;
      v28 = v58;
      (*(v53 + 16))(v52, *(v48 + 48) + *(v53 + 72) * v19, v58);
      v29 = *(*(v25 + 56) + 8 * v19);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA78, &qword_264F14CE0);
      v31 = *(v30 + 48);
      (*(v27 + 32))(v20, v26, v28);
      *(v20 + v31) = v29;
      (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
      v32 = v29;
      v11 = v55;
LABEL_17:
      sub_264EFAFA8(v20, v11);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA78, &qword_264F14CE0);
      if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = v54;
      v36 = v58;
      (*v56)(v54, v11, v58);
      v37 = *&v11[v34];
      v38 = v50;
      v39 = sub_264EF7F38(v35);
      v41 = v40;
      (*v49)(v35, v36);
      if ((v41 & 1) == 0)
      {

        return;
      }

      sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
      v42 = *(*(v38 + 56) + 8 * v39);
      v43 = sub_264F13504();

      v11 = v55;
      v18 = v57;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v45 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v45;
    }

    v22 = v21 - 1;
    v20 = v51;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v45)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA78, &qword_264F14CE0);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v57 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v46 + 8 * v23);
      ++v12;
      if (v24)
      {
        v57 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

id sub_264EF9E2C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  result = [objc_opt_self() temporarySessionPathWithType_];
  if (result)
  {
    v8 = result;
    *(v2 + 16) = result;
    v9 = OBJC_IVAR____TtC16SecureCaptureKit20SecureCaptureSession_sessionContentsPath;
    v10 = sub_264F13014();
    (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
    v11 = sub_264F13334();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_264F13314();
    v12 = v8;
    v13 = a1;
    v14 = sub_264F13304();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    v15[5] = v12;
    sub_264EF30BC(0, 0, v6, &unk_264F14D88, v15);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDB00, &qword_264F14D90);
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    v18 = v13;

    *(v17 + 16) = v18;
    *(v2 + 24) = v17;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
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

unint64_t sub_264EFA0B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAF0, &qword_264F14D70);
    v3 = sub_264F136C4();
    v4 = a1 + 32;

    while (1)
    {
      sub_264EFBAD4(v4, v13, &qword_27FFBDAF8, &qword_264F14D78);
      result = sub_264EF7EF4(v13);
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
      result = sub_264EFBB3C(&v15, (v3[7] + 32 * result));
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264EFA2B0(uint64_t a1)
{
  v4 = *(sub_264F13014() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFBDA0;

  return sub_264EF550C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_264F13014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_264EFA4B0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA90, &qword_264F14CF0);
  v3 = sub_264F136C4();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_264EF7FD4(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_264EFB11C(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_264EF7FD4(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_264EFA5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA88, &qword_264F14CE8);
    v3 = sub_264F136C4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_264EF8018(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t sub_264EFA6B8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = sub_264F13584();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA98, &qword_264F14CF8);
    v6 = sub_264F136C4();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_264EF8440(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_264EFA808(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_264EFA878()
{
  result = qword_27FFBD9A8;
  if (!qword_27FFBD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBD9A8);
  }

  return result;
}

unint64_t sub_264EFA8CC()
{
  result = qword_27FFBD9B0;
  if (!qword_27FFBD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBD9B0);
  }

  return result;
}

uint64_t sub_264EFA9D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264EFAA08(uint64_t a1)
{
  sub_264EFAAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_264EFAAF4(uint64_t a1)
{
  if (!qword_27FFBD9D8)
  {
    sub_264F13014();
    v1 = sub_264F13514();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFBD9D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SecureCaptureSession.ApplicationLaunchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureCaptureSession.ApplicationLaunchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_264EFACDC(uint64_t a1)
{
  result = sub_264F130C4();
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

uint64_t sub_264EFAF30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_264EFAFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDA70, &qword_264F14CD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_264EFB018()
{
  result = qword_27FFBDA80;
  if (!qword_27FFBDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDA80);
  }

  return result;
}

uint64_t sub_264EFB11C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_264EFB174(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_264EFB1D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264EFB20C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264EFBDA0;

  return sub_264EF7D04(a1, v4);
}

uint64_t sub_264EFB2C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264EFB37C;

  return sub_264EF7D04(a1, v4);
}

uint64_t sub_264EFB37C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_264EFB470()
{
  result = qword_27FFBDCF0;
  if (!qword_27FFBDCF0)
  {
    sub_264EFB608(255, &unk_27FFBDAD0, 0x277CF0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFBDCF0);
  }

  return result;
}

uint64_t sub_264EFB4DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264EFB52C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264EFBDA0;

  return sub_264EF4844(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264EFB608(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_75Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDAE0, &qword_264F14D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264EFB768()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264EFB7B4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264EFB11C(result, a2);
  }

  return result;
}

uint64_t sub_264EFB7C8()
{
  swift_unknownObjectRelease();

  sub_264EFB818(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264EFB818(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_264EFB86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264EFBDA0;

  return sub_264EF4054(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264EFB958(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_264EFB818(result, a2);
  }

  return result;
}

uint64_t sub_264EFB96C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264EFB9C4()
{
  swift_unknownObjectRelease();

  sub_264EFB818(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264EFBA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFBDA0;

  return sub_264EF3960(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264EFBAD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_264EFBB3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_264EFBB4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264EFBB94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_264EFB37C;

  return sub_264EF2FB4(a1, v4, v5, v7, v6);
}

uint64_t sub_264EFBC60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264EFBC80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_264EFBCC8(uint64_t a1, int a2)
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

uint64_t sub_264EFBCE8(uint64_t result, int a2, int a3)
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

void sub_264EFBD24(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_264EFBDD0(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v54 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC00, &qword_264F14FE0);
  MEMORY[0x28223BE20](v62);
  v69 = &v54 - v11;
  v12 = type metadata accessor for SecureCaptureManager.URLUpdate(0);
  MEMORY[0x28223BE20](v12);
  v58 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_264F13014();
  v15 = *(v14 - 8);
  v67 = v14;
  v68 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v54 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC08, &qword_264F14FE8);
  v60 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v54 - v20;
  v21 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v22 = sub_264F13294();

  v64 = a2;
  v65 = a1;
  v63 = v6;
  if (v22 >> 62)
  {
    v23 = sub_264F13584();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  v56 = v9;
  v66 = v12;
  if (v23)
  {
    v25 = v22;
    v70[0] = MEMORY[0x277D84F90];
    result = sub_264EF8FE4(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
      return result;
    }

    v61 = v3;
    v27 = 0;
    v24 = v70[0];
    v28 = v25;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x266752CA0](v27, v28);
      }

      else
      {
        v29 = *(v28 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v29 url];
      sub_264F13004();

      v70[0] = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_264EF8FE4((v32 > 1), v33 + 1, 1);
        v24 = v70[0];
      }

      ++v27;
      *(v24 + 16) = v33 + 1;
      (*(v68 + 32))(v24 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v33, v19, v67);
      v28 = v25;
    }

    while (v23 != v27);
    v34 = v25;
    v3 = v61;
  }

  else
  {
    v34 = v22;
  }

  v36 = sub_264EFA6B8(v35, v34);

  v70[0] = v24;
  v70[4] = v3[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC18, &qword_264F14FF0);
  sub_264EFAF30(&unk_27FFBDC20, &qword_27FFBDC18, &qword_264F14FF0, MEMORY[0x277D83958]);
  sub_264F0010C(&qword_27FFBDAA8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v37 = v59;
  sub_264F131E4();
  v3[15] = v24;

  v3[16] = v36;

  v38 = v57;
  if (v3[14])
  {

    v39 = v69;
    (*(v60 + 16))(v69, v37, v38);
    v40 = *(v62 + 36);
    sub_264EFAF30(&qword_27FFBDC30, &qword_27FFBDC08, &qword_264F14FE8, MEMORY[0x277D84490]);
    sub_264F133B4();
    v41 = v39;
    sub_264F133C4();
    v42 = *&v39[v40];
    v43 = v55;
    v44 = v56;
    v45 = v58;
    v46 = v67;
    v47 = v38;
    v48 = v54;
    if (v42 != v70[0])
    {
      v61 = (v68 + 16);
      v62 = v68 + 32;
      v49 = (v68 + 8);
      do
      {
        v50 = sub_264F133E4();
        sub_264F001B0(v51, v43);
        v50(v70, 0);
        sub_264F133D4();
        sub_264F00220(v43, v44);
        swift_getEnumCaseMultiPayload();
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC38, &qword_264F14FF8);
        (*v62)(v48, v44 + *(v52 + 48), v46);
        (*v61)(v45, v48, v46);
        swift_storeEnumTagMultiPayload();
        v65(v45);
        sub_264F00154(v45);
        (*v49)(v48, v46);
        sub_264F133C4();
        v41 = v69;
      }

      while (*&v69[v40] != v70[0]);
    }

    sub_264F00290(v41);
    return (*(v60 + 8))(v59, v47);
  }

  else
  {
    v53 = v58;
    *v58 = v24;
    swift_storeEnumTagMultiPayload();
    v65(v53);
    sub_264F00154(v53);
    result = (*(v60 + 8))(v37, v38);
    *(v3 + 112) = 1;
  }

  return result;
}

void sub_264EFC58C(uint64_t a1)
{
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v4 = *(v1 + 128);

    sub_264EF72F4(a1, v2);
    v6 = v5;

    if (*(v4 + 16) && (v7 = sub_264EF7F38(a1), (v8 & 1) != 0))
    {
      v9 = *(*(v4 + 56) + 8 * v7);

      if ((v6 & 1) == 0 && ([v9 isTemporaryPath] & 1) == 0)
      {
        [v9 invalidate];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_264EFC698()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_264EFC6D8(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v3 = sub_264F13194();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264F131B4();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264F13464();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264F13014();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v2;
  if (*(v2 + 112))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_264F13484() & 1) == 0)
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v33 = sub_264F13154();
      __swift_project_value_buffer(v33, qword_27FFBE290);
      v56 = sub_264F13134();
      v34 = sub_264F133F4();
      if (os_log_type_enabled(v56, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_264EF1000, v56, v34, "Already observing directory changes when beginObservingChanges called, bailing.", v35, 2u);
        MEMORY[0x266753530](v35, -1, -1);
      }

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  v17 = objc_allocWithZone(MEMORY[0x277D243F8]);
  v18 = sub_264F13204();
  v56 = [v17 initWithTypeIdentifier_];

  v19 = [v56 finalizedSessionsContainerURLForCurrentApplication];
  if (v19)
  {
    v20 = v19;
    sub_264F13004();

    sub_264F12FF4();
    v21 = aBlock;
    if (aBlock == -1)
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v41 = sub_264F13154();
      __swift_project_value_buffer(v41, qword_27FFBE290);
      v42 = sub_264F13134();
      v43 = sub_264F13414();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_264EF1000, v42, v43, "Unable to acquire fd for session container URL", v44, 2u);
        MEMORY[0x266753530](v44, -1, -1);
      }

      (*(v14 + 8))(v16, v13);
    }

    else
    {
      v45 = sub_264EFB608(0, &qword_27FFBDBB8, 0x277D85CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBC0, &qword_264F14FB0);
      v48 = v13;
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_264F14DF0;
      sub_264F13454();
      aBlock = v22;
      sub_264F0010C(&qword_27FFBDBC8, MEMORY[0x277D85288], MEMORY[0x277D85290]);
      v47 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBD0, &qword_264F14FB8);
      v46 = v16;
      sub_264EFAF30(&qword_27FFBDBD8, &qword_27FFBDBD0, &qword_264F14FB8, MEMORY[0x277D83970]);
      sub_264F13544();
      v23 = sub_264F13474();
      (*(v10 + 8))(v12, v9);
      v24 = *(v55 + 136);
      swift_getObjectType();
      v25 = swift_allocObject();
      v25[2] = v23;
      v25[3] = v24;
      v26 = v50;
      v25[4] = v49;
      v25[5] = v26;
      v61 = sub_264EFFB1C;
      v62 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      LODWORD(v49) = v21;
      v59 = sub_264EFD564;
      v60 = &block_descriptor_0;
      v27 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_264F131A4();
      sub_264EFD698();
      sub_264F13494();
      _Block_release(v27);
      v28 = v54;
      v53 = *(v53 + 8);
      (v53)(v5, v54);
      v29 = v52;
      v30 = *(v51 + 8);
      v30(v8, v52);

      v31 = swift_allocObject();
      *(v31 + 16) = v49;
      v61 = sub_264EFFB50;
      v62 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v58 = 1107296256;
      v59 = sub_264EFD564;
      v60 = &block_descriptor_52;
      v32 = _Block_copy(&aBlock);
      sub_264F131A4();
      sub_264EFD698();
      sub_264F134A4();
      _Block_release(v32);
      (v53)(v5, v28);
      v30(v8, v29);

      sub_264F134C4();

      (*(v47 + 8))(v46, v48);
      *(v55 + 112) = v23;
      swift_unknownObjectRelease();
    }

    return;
  }

  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v36 = sub_264F13154();
  __swift_project_value_buffer(v36, qword_27FFBE290);
  v37 = sub_264F13134();
  v38 = sub_264F13414();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_264EF1000, v37, v38, "beginObservingChanges: Unable to build sessions container URL for current application.", v39, 2u);
    MEMORY[0x266753530](v39, -1, -1);
  }

LABEL_17:
  v40 = v56;
}

uint64_t sub_264EFCFEC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1)
  {
    result = sub_264F13164();
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v4 = sub_264F13154();
    __swift_project_value_buffer(v4, qword_27FFBE290);
    v5 = sub_264F13134();
    v6 = sub_264F13414();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_264EF1000, v5, v6, "unable to get fs path for sessionContainerURL", v7, 2u);
      MEMORY[0x266753530](v7, -1, -1);
    }

    result = 0xFFFFFFFFLL;
  }

  *a2 = result;
  return result;
}

uint64_t sub_264EFD0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_264F13464();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  swift_getObjectType();
  sub_264F134E4();
  sub_264F13454();
  sub_264F0010C(&qword_27FFBDBC8, MEMORY[0x277D85288], MEMORY[0x277D85290]);
  v17 = sub_264F13534();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (v17)
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v19 = sub_264F13154();
    __swift_project_value_buffer(v19, qword_27FFBE290);
    v20 = sub_264F13134();
    v21 = sub_264F13424();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = v18;
      v23 = a2;
      v24 = a4;
      v25 = a3;
      v26 = v22;
      *v22 = 0;
      _os_log_impl(&dword_264EF1000, v20, v21, "Write event received, refreshing session URLs", v22, 2u);
      v27 = v26;
      a3 = v25;
      a4 = v24;
      a2 = v23;
      v18 = v36;
      MEMORY[0x266753530](v27, -1, -1);
    }

    v28 = sub_264F13334();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = a2;
    v29[5] = a3;
    v29[6] = a4;

    sub_264EF30BC(0, 0, v9, &unk_264F14FD0, v29);
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v30 = sub_264F13154();
    __swift_project_value_buffer(v30, qword_27FFBE290);
    v31 = sub_264F13134();
    v32 = sub_264F13404();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_264EF1000, v31, v32, "Event received, was not a write (or self == nil), bailing", v33, 2u);
      MEMORY[0x266753530](v33, -1, -1);
    }
  }

  return (v18)(v16, v10);
}

uint64_t sub_264EFD4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_264EFD500, a4, 0);
}

uint64_t sub_264EFD500()
{
  sub_264EFBDD0(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EFD564(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_264EFD5A8(int a1)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v2 = sub_264F13154();
  __swift_project_value_buffer(v2, qword_27FFBE290);
  v3 = sub_264F13134();
  v4 = sub_264F13424();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264EF1000, v3, v4, "DispatchSource cancelled, closing file handle", v5, 2u);
    MEMORY[0x266753530](v5, -1, -1);
  }

  return close(a1);
}

uint64_t sub_264EFD698()
{
  sub_264F13194();
  sub_264F0010C(&unk_27FFBDBE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDF30, &qword_264F14FC0);
  sub_264EFAF30(&qword_27FFBDBF0, &unk_27FFBDF30, &qword_264F14FC0, MEMORY[0x277D83970]);
  return sub_264F13544();
}

uint64_t sub_264EFD784()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_264EFD7D4()
{
  type metadata accessor for SecureCaptureManager();
  v0 = swift_allocObject();
  result = sub_264EFD8AC();
  qword_27FFBDB80 = v0;
  return result;
}

uint64_t static SecureCaptureManager.shared.getter()
{
  if (qword_27FFBD948 != -1)
  {
    swift_once();
  }
}

uint64_t SecureCaptureManager.sessionContentURLs.getter()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void *sub_264EFD8AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v0 - 8);
  v40 = &v40 - v1;
  v44 = sub_264F13014();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC40, &qword_264F15000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC48, &qword_264F15008);
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v40 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC50, &qword_264F15010);
  v12 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v40 - v13;
  type metadata accessor for SecureCaptureManager.URLUpdate(0);
  v15 = v43;
  *(v43 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v5);
  sub_264F13344();
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v42);
  (*(v12 + 8))(v14, v41);
  v16 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v17 = sub_264F13294();

  if (v17 >> 62)
  {
    v18 = sub_264F13584();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_12:
    swift_bridgeObjectRetain_n();
    v27 = sub_264EFA6B8(v19, v17);

    type metadata accessor for CaptureManagerURLs();
    v28 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v28 + 112) = 1;
    *(v28 + 120) = v19;
    *(v28 + 128) = v27;
    v29 = v43;
    *(v43 + 40) = v28;
    type metadata accessor for CaptureManagerFSObserving();
    v30 = swift_allocObject();

    swift_defaultActor_initialize();
    v30[14] = 0;
    v30[15] = 0;
    v30[16] = 0;
    v30[17] = v28;
    *(v29 + 48) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC58, &qword_264F15018);
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 16) = v19;
    *(v29 + 32) = v31;
    v32 = sub_264F13334();
    v33 = *(*(v32 - 8) + 56);
    v34 = v40;
    v33(v40, 1, 1, v32);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v29;

    sub_264EF30BC(0, 0, v34, &unk_264F15028, v35);

    v33(v34, 1, 1, v32);
    sub_264F13314();

    v36 = sub_264F13304();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v29;
    sub_264EF30BC(0, 0, v34, &unk_264F15038, v37);

    v33(v34, 1, 1, v32);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v29;

    sub_264EF30BC(0, 0, v34, &unk_264F15048, v39);

    return v29;
  }

  v45 = MEMORY[0x277D84F90];
  result = sub_264EF8FE4(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v19 = v45;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x266752CA0](v21, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 url];
      sub_264F13004();

      v45 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_264EF8FE4((v25 > 1), v26 + 1, 1);
        v19 = v45;
      }

      ++v21;
      *(v19 + 16) = v26 + 1;
      (*(v2 + 32))(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26, v4, v44);
    }

    while (v18 != v21);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *SecureCaptureManager.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_264F13334();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_264EF30BC(0, 0, v4, &unk_264F14E10, v7);

  v6(v4, 1, 1, v5);
  sub_264F13314();

  v8 = sub_264F13304();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  sub_264EF30BC(0, 0, v4, &unk_264F14E20, v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t SecureCaptureManager.__deallocating_deinit()
{
  SecureCaptureManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_264EFE1C0()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_264EFE234, v1, 0);
}

uint64_t sub_264EFE234()
{
  sub_264F00514(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_264EFE2A0(uint64_t a1)
{
  v3 = sub_264F13014();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = type metadata accessor for SecureCaptureManager.URLUpdate(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_264F00CBC(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = (*(v4 + 32))(v9, v12, v3);
      v15 = *(v1 + 32);
      MEMORY[0x28223BE20](v14);
      *&v21[-16] = v9;
      os_unfair_lock_lock((v15 + 24));
      sub_264F00D3C((v15 + 16));
      os_unfair_lock_unlock((v15 + 24));
      return (*(v4 + 8))(v9, v3);
    }

    else
    {
      v19 = (*(v4 + 32))(v7, v12, v3);
      v20 = *(v1 + 32);
      MEMORY[0x28223BE20](v19);
      *&v21[-16] = v7;
      os_unfair_lock_lock(v20 + 6);
      sub_264F00D20(&v20[4]);
      os_unfair_lock_unlock(v20 + 6);
      return (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    v17 = *v12;
    v18 = *(v1 + 32);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *&v21[-16] = v17;
    os_unfair_lock_lock((v18 + 24));
    sub_264F00D58((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
  }
}

uint64_t sub_264EFE53C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_264F13014();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_264F039A4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_264F039A4((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  *a1 = v8;
  return result;
}

uint64_t sub_264EFE6B4(uint64_t a1, uint64_t a2)
{
  v5[2] = a2;
  result = sub_264EFFC7C(sub_264F00DA0, v5);
  v4 = *(*a1 + 16);
  if (v4 >= result)
  {
    return sub_264F00F18(result, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_264EFE73C()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_264EFE7B0, v1, 0);
}

uint64_t sub_264EFE7B0()
{
  sub_264EFC6D8(sub_264F01228, *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EFE830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_264F13314();
  *(v4 + 72) = sub_264F13304();
  v6 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EFE8C8, v6, v5);
}

uint64_t sub_264EFE8C8()
{
  v1 = v0[8];

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = *MEMORY[0x277D76660];
  v5 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_264F01010;
  v0[7] = v5;
  v6 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_264EFEC94;
  v0[5] = &block_descriptor_74;
  v7 = _Block_copy(v0 + 2);

  v8 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v9 = *(v1 + 16);
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = [v2 defaultCenter];
    [v10 removeObserver_];

    swift_unknownObjectRelease();
  }

  v11 = v0[8];
  *(v1 + 16) = v8;
  swift_unknownObjectRelease();
  v12 = [v2 defaultCenter];
  v13 = *MEMORY[0x277D76758];
  v14 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_264F01048;
  v0[7] = v14;
  v0[2] = v6;
  v0[3] = 1107296256;
  v0[4] = sub_264EFEC94;
  v0[5] = &block_descriptor_78;
  v15 = _Block_copy(v0 + 2);

  v16 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v15];
  _Block_release(v15);

  v17 = *(v11 + 24);
  if (v17)
  {
    swift_unknownObjectRetain();
    v18 = [v2 defaultCenter];
    [v18 removeObserver_];

    swift_unknownObjectRelease();
  }

  *(v11 + 24) = v16;
  swift_unknownObjectRelease();
  v19 = v0[1];

  return v19();
}

uint64_t sub_264EFEBE8()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EFEC0C, v1, 0);
}

uint64_t sub_264EFEC0C()
{
  if (*(*(v0 + 24) + 112))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_264F134D4();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EFEC94(uint64_t a1, uint64_t a2)
{
  v3 = sub_264F12F64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_264F12F54();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_264EFED88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_264F13334();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_264EF30BC(0, 0, v7, a4, v11);
  }

  return result;
}

uint64_t sub_264EFEEC4()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EFEEE8, v1, 0);
}

uint64_t sub_264EFEEE8()
{
  if (*(*(v0 + 24) + 112))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_264F134C4();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EFEF90()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264EFEFB4, v1, 0);
}

uint64_t sub_264EFEFB4()
{
  if (*(*(v0 + 24) + 112))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_264F134B4();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EFF040(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFEF70(a1, v4, v5, v6);
}

uint64_t sub_264EFF0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_264F13314();
  *(v4 + 24) = sub_264F13304();
  v6 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264EFF18C, v6, v5);
}

uint64_t sub_264EFF18C()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];

    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 16);
  *(v1 + 16) = 0;
  swift_unknownObjectRelease();
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v8 = [v7 defaultCenter];
    [v8 removeObserver_];

    swift_unknownObjectRelease();
  }

  *(v5 + 24) = 0;
  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_264EFF2D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFF0F4(a1, v4, v5, v6);
}

uint64_t SecureCaptureManager.invalidate(url:)(uint64_t a1)
{
  v3 = sub_264F13014();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_264F13334();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v1;
  (*(v4 + 32))(&v11[v10], &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_264EF30BC(0, 0, v8, &unk_264F14E30, v11);
}

uint64_t sub_264EFF564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_264EFF584, 0, 0);
}

uint64_t sub_264EFF584()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_264EFF5A8, v1, 0);
}

uint64_t sub_264EFF5A8()
{
  sub_264EFC58C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264EFF608()
{
  v1 = sub_264F13014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264EFF6D4(uint64_t a1)
{
  v4 = *(sub_264F13014() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFBDA0;

  return sub_264EFF564(a1, v6, v7, v8, v1 + v5);
}

Swift::Void __swiftcall SecureCaptureManager.applicationDidCompleteTransition()()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 applicationDidCompleteTransition];
}

uint64_t type metadata accessor for SecureCaptureManager.URLUpdate(uint64_t a1)
{
  result = qword_27FFBDB88;
  if (!qword_27FFBDB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264EFF94C(uint64_t a1)
{
  sub_264EFFA50(319, &qword_27FFBDB98, sub_264EFF9F8);
  if (v1 <= 0x3F)
  {
    sub_264EFFA50(319, &unk_27FFBDBA8, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_264EFF9F8(uint64_t a1)
{
  if (!qword_27FFBDBA0)
  {
    sub_264F13014();
    v1 = sub_264F132C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FFBDBA0);
    }
  }
}

void sub_264EFFA50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_264EFFAD4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264EFFB58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264EFFBA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_264EFB37C;

  return sub_264EFD4DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264EFFC7C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_264F13014();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_264F00020(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v9;
    v42 = v12;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_264EFFC68(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_264F00020(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_264F13014() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_264F0010C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264F00154(uint64_t a1)
{
  v2 = type metadata accessor for SecureCaptureManager.URLUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264F001B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F00220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F00290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC00, &qword_264F14FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264F002F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFE71C(a1, v4, v5, v6);
}

uint64_t sub_264F003AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFE830(a1, v4, v5, v6);
}

uint64_t sub_264F00460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFE1A0(a1, v4, v5, v6);
}

void *sub_264F00514(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = sub_264F13014();
  v66 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - v7;
  v9 = type metadata accessor for SecureCaptureManager.URLUpdate(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDBF8, &qword_264F14FD8);
  v13 = MEMORY[0x28223BE20](v12);
  v53 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v52 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC00, &qword_264F14FE0);
  MEMORY[0x28223BE20](v59);
  v67 = &v52 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC08, &qword_264F14FE8);
  v58 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v57 = &v52 - v17;
  v18 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_264EFB608(0, &qword_27FFBDC10, 0x277D243F0);
  v19 = sub_264F13294();

  v20 = v19;
  v63 = v9;
  v64 = a2;
  v54 = v8;
  v56 = v11;
  v62 = v12;
  if (v19 >> 62)
  {
    v21 = sub_264F13584();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  v65 = v3;
  if (v21)
  {
    v68[0] = MEMORY[0x277D84F90];
    result = sub_264EF8FE4(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return result;
    }

    v24 = 0;
    v22 = v68[0];
    v25 = v19;
    v26 = v19 & 0xC000000000000001;
    v27 = v19;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x266752CA0](v24, v25);
      }

      else
      {
        v28 = *(v25 + 8 * v24 + 32);
      }

      v29 = v28;
      v30 = [v28 url];
      sub_264F13004();

      v68[0] = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_264EF8FE4((v31 > 1), v32 + 1, 1);
        v22 = v68[0];
      }

      ++v24;
      *(v22 + 16) = v32 + 1;
      (*(v66 + 32))(v22 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v32, v6, v65);
      v25 = v27;
    }

    while (v21 != v24);
    v20 = v27;
  }

  v34 = sub_264EFA6B8(v33, v20);

  v68[0] = v22;
  v35 = v60;
  v68[4] = *(v60 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC18, &qword_264F14FF0);
  sub_264EFAF30(&unk_27FFBDC20, &qword_27FFBDC18, &qword_264F14FF0, MEMORY[0x277D83958]);
  sub_264F0010C(&qword_27FFBDAA8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = v57;
  sub_264F131E4();
  *(v35 + 120) = v22;

  *(v35 + 128) = v34;

  v37 = v55;
  if (*(v35 + 112) == 1)
  {

    v38 = v67;
    (*(v58 + 16))(v67, v36, v37);
    v39 = *(v59 + 36);
    sub_264EFAF30(&qword_27FFBDC30, &qword_27FFBDC08, &qword_264F14FE8, MEMORY[0x277D84490]);
    sub_264F133B4();
    v40 = v38;
    sub_264F133C4();
    v41 = *&v38[v39];
    v42 = v65;
    v43 = v53;
    v44 = v54;
    v45 = v56;
    if (v41 != v68[0])
    {
      v59 = v66 + 16;
      v60 = v66 + 32;
      v46 = (v66 + 8);
      do
      {
        v47 = sub_264F133E4();
        v48 = v61;
        sub_264F001B0(v49, v61);
        v47(v68, 0);
        sub_264F133D4();
        sub_264F00220(v48, v43);
        swift_getEnumCaseMultiPayload();
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC38, &qword_264F14FF8);
        (*v60)(v44, v43 + *(v50 + 48), v42);
        (*v59)(v45, v44, v42);
        swift_storeEnumTagMultiPayload();
        sub_264EFE2A0(v45);
        sub_264F00154(v45);
        (*v46)(v44, v42);
        sub_264F133C4();
        v40 = v67;
      }

      while (*&v67[v39] != v68[0]);
    }

    sub_264F00290(v40);
    return (*(v58 + 8))(v57, v37);
  }

  else
  {
    v51 = v56;
    *v56 = v22;
    swift_storeEnumTagMultiPayload();
    sub_264EFE2A0(v51);
    sub_264F00154(v51);
    result = (*(v58 + 8))(v36, v37);
    *(v35 + 112) = 1;
  }

  return result;
}

uint64_t sub_264F00CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCaptureManager.URLUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264F00D58(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

unint64_t sub_264F00DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_264F13014();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_264F00F18(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_264F039A4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_264F00DD0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_264F00FD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264F01080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFEEA4(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264F01174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264EFBDA0;

  return sub_264EFEBC8(a1, v4, v5, v6);
}

uint64_t sub_264F0125C()
{
  v0 = sub_264F13154();
  __swift_allocate_value_buffer(v0, qword_27FFBE290);
  __swift_project_value_buffer(v0, qword_27FFBE290);
  return sub_264F13144();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_264F01334(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(userActivity:responder:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUserActivity:a1 responder:a2];

  return v4;
}

{
  v22 = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_264F15080;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  [a1 setNeedsSave_];
  sub_264EFA0B8(MEMORY[0x277D84F90]);
  v6 = sub_264F131C4();

  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  aBlock[4] = sub_264F02E7C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264EF3C40;
  aBlock[3] = &block_descriptor_1;
  v8 = _Block_copy(aBlock);

  [a1 _createUserActivityDataWithOptions_completionHandler_];
  _Block_release(v8);

  swift_beginAccess();
  if (*(v5 + 16))
  {
    v9 = objc_msgSendSuper2(&v23, sel_initWithInfo_responder_, 0, 0, v22, v2, SESecureCaptureOpenApplicationAfterTransitionCompletionAction);
LABEL_5:
    v11 = v9;
    goto LABEL_6;
  }

  swift_beginAccess();
  v10 = *(v4 + 24);
  if (v10 >> 60 == 15)
  {
    v26.receiver = v2;
    v26.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
    v9 = objc_msgSendSuper2(&v26, sel_initWithInfo_responder_, 0, 0, v22, v23.receiver, v23.super_class);
    goto LABEL_5;
  }

  v14 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC60, &qword_264F15090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264F14DF0;
  *(inited + 32) = 7;
  v16 = inited + 32;
  *(inited + 40) = v14;
  *(inited + 48) = v10;
  v17 = sub_264EFA4B0(inited);
  swift_setDeallocating();
  sub_264EFB11C(v14, v10);
  sub_264EFB11C(v14, v10);
  sub_264EFB174(v16, &qword_27FFBDC68, &qword_264F15098);
  sub_264F01968(v17);

  v18 = objc_allocWithZone(MEMORY[0x277D750D8]);
  v19 = sub_264F131C4();

  v12 = [v18 initWithSettings_];

  if (v12)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    [v20 setObject:v12 forSetting:1];
    v24.receiver = v2;
    v24.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
    v21 = v20;
    v11 = objc_msgSendSuper2(&v24, sel_initWithInfo_responder_, v21, v22);
    sub_264EFB958(v14, v10);

    goto LABEL_7;
  }

  v25.receiver = v2;
  v25.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  v11 = objc_msgSendSuper2(&v25, sel_initWithInfo_responder_, 0, 0);
  sub_264EFB958(v14, v10);
LABEL_6:

  v12 = v22;
LABEL_7:

  return v11;
}

uint64_t sub_264F01838()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_264EFB818(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264F01880()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_264F018B8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_264EFB7B4(a1, a2);
  sub_264EFB958(v10, v11);
  swift_beginAccess();
  v12 = *(a5 + 16);
  *(a5 + 16) = a3;
  v13 = a3;
}

uint64_t sub_264F01968(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAF0, &qword_264F14D70);
    v2 = sub_264F136C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 56) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = *v13;
    v15 = v13[1];
    sub_264EFB11C(*v13, v15);
    swift_dynamicCast();
    *&v31[0] = v14;
    *(&v31[0] + 1) = v15;
    swift_dynamicCast();
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_264EFBB3C(&v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_264EFBB3C(v30, v31);
    result = sub_264F135B4();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_264EFBB3C(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(coder:)(void *a1)
{
  v4.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(xpcDictionary:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v3.super_class = SESecureCaptureOpenApplicationAfterTransitionCompletionAction;
  v1 = objc_msgSendSuper2(&v3, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v1)
  {
  }

  return v1;
}

uint64_t SESecureCaptureOpenApplicationAfterTransitionCompletionAction.launchActions.getter()
{
  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  v10 = v1;
  v2 = [v0 info];
  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_264EFB174(&v8, &qword_27FFBDC70, &qword_264F150A0);
    return v10;
  }

  v3 = v2;
  v4 = [v2 objectForSetting_];

  if (v4)
  {
    sub_264F13524();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  sub_264EFB608(0, &qword_27FFBDC78, 0x277D750D8);
  if (swift_dynamicCast())
  {
    sub_264F02294(&v8, v6);
  }

  return v10;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(info:responder:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 responder:a2];

  return v4;
}

id SESecureCaptureOpenApplicationAfterTransitionCompletionAction.init(info:timeout:forResponseOn:withHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_264F01334;
    v11[3] = &block_descriptor_9;
    v8 = _Block_copy(v11);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInfo:a1 timeout:a2 forResponseOnQueue:v8 withHandler:a5];
  _Block_release(v8);

  return v9;
}

uint64_t sub_264F02294(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_264F13594();

    if (v9)
    {

      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_264F13584();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_264F024CC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_264F026BC(v20 + 1);
    }

    v18 = v8;
    sub_264F028E4(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  v11 = sub_264F134F4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_264F02968(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_264F13504();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_264F024CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
    v2 = sub_264F13604();
    v15 = v2;
    sub_264F13574();
    if (sub_264F135A4())
    {
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_264F026BC(v9 + 1);
        }

        v2 = v15;
        result = sub_264F134F4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_264F135A4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_264F026BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
  result = sub_264F135F4();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_264F134F4();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_264F028E4(uint64_t a1, uint64_t a2)
{
  sub_264F134F4();
  result = sub_264F13564();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_264F02968(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_264F026BC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_264F02AD8();
      goto LABEL_12;
    }

    sub_264F02C28(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_264F134F4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_264F13504();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_264F13724();
  __break(1u);
}

id sub_264F02AD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
  v2 = *v0;
  v3 = sub_264F135E4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_264F02C28(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
  result = sub_264F135F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_264F134F4();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

        v2 = v24;
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

uint64_t sub_264F02E3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_264F02E9C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264F13584())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDC88, qword_264F150B0);
      v3 = sub_264F13614();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_264F13584();
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
      v8 = MEMORY[0x266752CA0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_264F134F4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_264F13504();

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
      v24 = sub_264F134F4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_264F13504();

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

void sub_264F033A0(void *a1, void *a2)
{
  v14 = [a1 clientSettings];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, (v6 = [a2 previousSettings]) != 0))
  {
    v13 = v6;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = OBJC_IVAR____TtC16SecureCaptureKit40SecureCaptureSceneStatusBarHostComponent_delegate;
      swift_beginAccess();
      sub_264EFBAD4(v2 + v9, v15, &qword_27FFBDCA0, &qword_264F15218);
      if (v16)
      {
        sub_264EFB174(v15, &qword_27FFBDCA0, &qword_264F15218);
        v10 = [v5 statusBarHidden];
        if (v10 != [v8 statusBarHidden])
        {
          v11 = [a2 transitionContext];
        }
      }

      else
      {

        sub_264EFB174(v15, &qword_27FFBDCA0, &qword_264F15218);
      }

      return;
    }

    v12 = v13;
  }

  else
  {
    v12 = v14;
  }
}

id sub_264F036CC(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_264F037F8(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = &a1[*a3];
  v6 = a4();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v8.receiver = a1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_init);
}

char *sub_264F03870(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  v6 = &a1[*a4];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v9.receiver = a1;
  v9.super_class = a5();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v9, sel_initWithScene_, a3);
  swift_unknownObjectRelease();
  if (v7)
  {
  }

  return v7;
}

id sub_264F03914(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_264F039A4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBDAC0, &qword_264F14D10);
  v10 = *(sub_264F13014() - 8);
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
  v15 = *(sub_264F13014() - 8);
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

char *sub_264F03B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDCB0, &qword_264F15228);
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

char *sub_264F03C80()
{
  v0 = sub_264F13204();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v3 = sub_264F03B7C(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_264F03B7C((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    *&v3[8 * v5 + 32] = ObjCClassMetadata;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_264F03B7C(0, *(v3 + 2) + 1, 1, v3);
  }

  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    v3 = sub_264F03B7C((v6 > 1), v7 + 1, 1, v3);
  }

  v9 = type metadata accessor for SecureCaptureSceneStatusBarHostComponent();
  *(v3 + 2) = v8;
  *&v3[8 * v7 + 32] = v9;
  v10 = *(v3 + 3);
  v11 = v7 + 2;
  if (v11 > (v10 >> 1))
  {
    v3 = sub_264F03B7C((v10 > 1), v11, 1, v3);
  }

  v12 = type metadata accessor for SecureCaptureSceneSessionPathHostComponent();
  *(v3 + 2) = v11;
  *&v3[8 * v8 + 32] = v12;
  return v3;
}

id sub_264F03DF4(void *a1)
{
  v3 = OBJC_IVAR____TtC16SecureCaptureKit40SecureCaptureSceneStatusBarHostComponent_delegate;
  swift_beginAccess();
  sub_264EFBAD4(v1 + v3, &v16, &qword_27FFBDCA0, &qword_264F15218);
  if (!v17)
  {
    return sub_264EFB174(&v16, &qword_27FFBDCA0, &qword_264F15218);
  }

  sub_264F043B0(&v16, v18);
  v4 = [a1 mutableSettings];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v6;
    v8 = *__swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v9 = OBJC_IVAR____TtC16SecureCaptureKit20CaptureSceneDelegate_rootViewController;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (!v10)
    {
      goto LABEL_11;
    }

    result = [v10 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = [result window];

    if (v13 && (v14 = [v13 windowScene], v13, v14) && (v15 = objc_msgSend(v14, sel_statusBarManager), v14, v15))
    {
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:1 forOrientation:?];
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:4 forOrientation:?];
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:3 forOrientation:?];
      [v15 defaultStatusBarHeightInOrientation_];
      [v7 setDefaultStatusBarHeight:2 forOrientation:?];
    }

    else
    {
LABEL_11:
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void sub_264F04034(void *a1)
{
  v3 = [a1 settings];
  if (v3)
  {
    v4 = v3;
    v25 = &unk_2876D00E8;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (!v5 || (v6 = v5, (v7 = [a1 previousSettings]) == 0))
    {

      return;
    }

    v8 = v7;
    v24 = &unk_2876D00E8;
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v9;
    v11 = [v6 captureSessionPath];
    v12 = [v10 captureSessionPath];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        sub_264F04364();
        v14 = sub_264F13504();

        if ((v14 & 1) == 0)
        {
LABEL_14:
          v15 = OBJC_IVAR____TtC16SecureCaptureKit42SecureCaptureSceneSessionPathHostComponent_delegate;
          swift_beginAccess();
          sub_264EFBAD4(v1 + v15, v22, &qword_27FFBDD20, &qword_264F15210);
          if (v23)
          {
            sub_264F04270(v22, v19);
            sub_264EFB174(v22, &qword_27FFBDD20, &qword_264F15210);
            v16 = v20;
            v17 = v21;
            __swift_project_boxed_opaque_existential_1(v19, v20);
            v18 = [v6 captureSessionPath];
            (*(v17 + 8))(v1, v18, v16, v17);

            __swift_destroy_boxed_opaque_existential_1(v19);
          }

          else
          {

            sub_264EFB174(v22, &qword_27FFBDD20, &qword_264F15210);
          }

          return;
        }

LABEL_11:

        return;
      }

      v13 = v11;
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }
}

uint64_t sub_264F04270(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_264F04364()
{
  result = qword_27FFBDC10;
  if (!qword_27FFBDC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FFBDC10);
  }

  return result;
}

uint64_t sub_264F043B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t PresentationMode.description.getter(int a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x70616E536576696CLL;
    case 1:
      return 1702259052;
  }

  result = sub_264F13714();
  __break(1u);
  return result;
}

unint64_t PresentationMode.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

uint64_t sub_264F044B0()
{
  sub_264F137C4();
  sub_264F137E4();
  return sub_264F137F4();
}

uint64_t sub_264F04524(uint64_t a1)
{
  sub_264F137C4();
  sub_264F137E4();
  return sub_264F137F4();
}

unsigned int *sub_264F04568@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_264F04590(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 1701736302;
  }

  if (v2 == 2)
  {
    return 0x70616E536576696CLL;
  }

  if (v2 == 1)
  {
    return 1702259052;
  }

  result = sub_264F13714();
  __break(1u);
  return result;
}

id sub_264F0461C()
{
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector;
  v2 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___clientSettingsDiffInspector);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75160]) init];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = sub_264F0E97C;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_264F048A0;
    v10[3] = &block_descriptor_32;
    v6 = _Block_copy(v10);

    [v4 observeIdleTimerDisabledWithBlock_];
    _Block_release(v6);
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_264F04748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
    if (v4)
    {
      v5 = v4;

      v3 = [v5 clientSettings];
      if (!v3)
      {
        return;
      }

      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        swift_beginAccess();
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          v10 = [v7 idleTimerDisabled];
          v11 = v9[OBJC_IVAR___SESecureCaptureSceneViewController__requestsIdleTimerDisabled];
          v9[OBJC_IVAR___SESecureCaptureSceneViewController__requestsIdleTimerDisabled] = v10;
          if (v10 != v11)
          {
            v12 = [v9 delegate];
            if (v12)
            {
              [v12 secureCaptureSceneViewController:v9 requestsIdleTimerDisabled:{objc_msgSend(v9, sel_requestsIdleTimerDisabled)}];
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_264F048A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_264F048F4()
{
  v1 = &v0[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___logIdentifier];
  if (*&v0[OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___logIdentifier + 8])
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_264F04970(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_264F04970(void *a1)
{
  v2 = sub_264F13064();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264F13054();
  v6 = sub_264F13044();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v14[0] = v6;
  v14[1] = v8;
  MEMORY[0x2667528B0](45, 0xE100000000000000);
  v9 = [objc_msgSend(a1 extensionProvider)];
  swift_unknownObjectRelease();
  v10 = sub_264F13214();
  v12 = v11;

  MEMORY[0x2667528B0](v10, v12);

  return v14[0];
}

id sub_264F04ACC()
{
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue;
  v2 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController____lazy_storage___queue);
  }

  else
  {
    v4 = sub_264F13204();
    Serial = BSDispatchQueueCreateSerial();

    v6 = *(v0 + v1);
    *(v0 + v1) = Serial;
    v3 = Serial;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *SESecureCaptureSceneViewController._scene.getter()
{
  v1 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
  v2 = v1;
  return v1;
}

void SESecureCaptureSceneViewController.presentationMode.setter(uint64_t a1)
{
  v1 = a1;
  BSDispatchQueueAssertMain();

  sub_264F04BE8(v1, 0);
}

void sub_264F04BE8(unsigned int a1, char a2)
{
  BSDispatchQueueAssertMain();
  if ((v2[OBJC_IVAR___SESecureCaptureSceneViewController_invalidated] & 1) != 0 || (a2 & 1) == 0 && *&v2[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] == a1)
  {
    return;
  }

  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v5 = sub_264F13154();
  __swift_project_value_buffer(v5, qword_27FFBE290);
  v6 = v2;
  v7 = sub_264F13134();
  v8 = sub_264F13424();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136446722;
    v11 = sub_264F048F4();
    v13 = sub_264F0C768(v11, v12, &v31);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    if (a1)
    {
      if (a1 == 2)
      {
        v14 = 0xEC000000746F6873;
        v15 = 0x70616E536576696CLL;
      }

      else
      {
        if (a1 != 1)
        {
LABEL_33:
          sub_264F13714();
          __break(1u);
          return;
        }

        v14 = 0xE400000000000000;
        v15 = 1702259052;
      }
    }

    else
    {
      v14 = 0xE400000000000000;
      v15 = 1701736302;
    }

    v16 = sub_264F0C768(v15, v14, &v31);

    *(v9 + 14) = v16;
    *(v9 + 22) = 1026;
    *(v9 + 24) = a2 & 1;
    _os_log_impl(&dword_264EF1000, v7, v8, "[%{public}s] Updating presentationMode to: %{public}s - (forced? %{BOOL,public}d).", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266753530](v10, -1, -1);
    MEMORY[0x266753530](v9, -1, -1);
  }

  else
  {
  }

  v17 = OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode;
  *&v6[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] = a1;
  if (a1 < 2)
  {
    sub_264F06348(0, 1);
    sub_264F0741C(a1 == 1, 0, 0);
    return;
  }

  if (a1 != 2)
  {
LABEL_32:
    LODWORD(v31) = a1;
    goto LABEL_33;
  }

  v18 = *&v6[OBJC_IVAR___SESecureCaptureSceneViewController_scene];
  if (v18)
  {
    v30 = v18;
    if ([v30 contentState]== 2)
    {
      BSDispatchQueueAssertMain();
      if (*&v6[v17] == 2)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v6;
        v20 = v6;
        sub_264F06830(sub_264F0EAAC, v19);

        return;
      }

      __break(1u);
      goto LABEL_32;
    }

    v28 = swift_allocObject();
    v28[2] = v6;
    v29 = v6;
    sub_264F0741C(1, sub_264F0EAA4, v28);
  }

  else
  {
    v21 = v6;
    v30 = sub_264F13134();
    v22 = sub_264F13414();

    if (os_log_type_enabled(v30, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446210;
      v25 = sub_264F048F4();
      v27 = sub_264F0C768(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_264EF1000, v30, v22, "[%{public}s] Snapshot failed because there is no scene found", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x266753530](v24, -1, -1);
      MEMORY[0x266753530](v23, -1, -1);

      return;
    }
  }
}

void (*SESecureCaptureSceneViewController.presentationMode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode);
  return sub_264F050E4;
}

void sub_264F050E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  BSDispatchQueueAssertMain();
  sub_264F04BE8(v1, 0);
}

uint64_t SESecureCaptureSceneViewController.__presentationMode.getter()
{
  result = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode);
  if (result >= 3)
  {
    result = sub_264F13714();
    __break(1u);
  }

  return result;
}

void SESecureCaptureSceneViewController.__presentationMode.setter(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  if (a1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = a1 == 1;
  }

  sub_264F04BE8(v2, 0);
}

unint64_t sub_264F05274()
{
  v1 = 0xD000000000000025;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t SESecureCaptureSceneViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t SESecureCaptureSceneViewController.extensionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SESecureCaptureSceneViewController_extensionProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id SESecureCaptureSceneViewController.init(provider:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProvider_];
  swift_unknownObjectRelease();
  return v1;
}

{
  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v3 = sub_264F13364();

  v4 = [v1 initWithProvider:a1 launchActions:v3];

  swift_unknownObjectRelease();
  return v4;
}

id SESecureCaptureSceneViewController.init(provider:launch:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
  sub_264EFB470();
  v4 = sub_264F13364();

  v5 = [v3 initWithProvider:a1 launchActions:v4];
  swift_unknownObjectRelease();

  return v5;
}

{
  v2 = sub_264F0CD10(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id SESecureCaptureSceneViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id sub_264F05990(void *a1)
{
  if (qword_27FFBD950 != -1)
  {
    swift_once();
  }

  v2 = sub_264F13154();
  __swift_project_value_buffer(v2, qword_27FFBE290);
  v3 = sub_264F13134();
  v4 = sub_264F13424();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264EF1000, v3, v4, "Capture Extension scene dealloc", v5, 2u);
    MEMORY[0x266753530](v5, -1, -1);
  }

  return [a1 invalidate];
}

uint64_t sub_264F05A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_264F13304();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_264F0E738();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_264F13634();
    MEMORY[0x2667528B0](0xD00000000000003FLL, 0x8000000264F164E0);
    v12 = sub_264F13804();
    MEMORY[0x2667528B0](v12);

    MEMORY[0x2667528B0](46, 0xE100000000000000);
    result = sub_264F13684();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SESecureCaptureSceneViewController.viewDidLoad()()
{
  BSDispatchQueueAssertMain();
  v22.receiver = v0;
  v22.super_class = SESecureCaptureSceneViewController;
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  sub_264F05FF4();
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionAssistant;
  [*&v0[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionAssistant] addObserver_];
  if ([*&v0[v1] shouldShield])
  {
    v2 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController;
    if (!*&v0[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController])
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D243C0]) initWithAssistant_];
      v4 = [v3 view];
      if (v4)
      {
        v5 = v4;
        v6 = [v0 view];
        if (v6)
        {
          v7 = v6;
          [v6 bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v5 setFrame_];
          v16 = [v3 view];
          if (v16)
          {
            v17 = v16;
            [v16 setAutoresizingMask_];

            v18 = [v0 view];
            if (v18)
            {
              v19 = v18;
              v20 = [v3 view];

              if (v20)
              {
                [v19 addSubview_];

                [v0 addChildViewController_];
                [v3 didMoveToParentViewController_];
                v21 = *&v0[v2];
                *&v0[v2] = v3;

                return;
              }

              goto LABEL_15;
            }

LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            return;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    sub_264F0629C();
  }
}

void sub_264F05FF4()
{
  BSDispatchQueueAssertMain();
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = [v1 layer];
  v3 = sub_264F13204();
  [v2 setName_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setFrame_];
  [v1 setClipsToBounds_];
  [v1 setAutoresizingMask_];
  v14 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController];
  if (!v14)
  {
    v20 = [v0 view];
    if (v20)
    {
      v19 = v20;
      [v20 addSubview_];
      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v15 view];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  [v17 insertSubview:v1 belowSubview:v18];

LABEL_8:
  v21 = OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView;
  v22 = *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  *&v0[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView] = v1;
  v25 = v1;

  BSDispatchQueueAssertMain();
  v23 = *&v0[v21];
  if (v23)
  {
    v24 = v23;
    sub_264F065A0(v0, v24, 0);
    [v24 setHidden_];
  }
}

void sub_264F0629C()
{
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController;
  v2 = *(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 removeFromSuperview];

      [v3 didMoveToParentViewController_];
      v6 = *(v0 + v1);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_264F06348(unsigned __int8 a1, char a2)
{
  BSDispatchQueueAssertMain();
  v5 = *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  if (!v5)
  {
    return;
  }

  v16 = *&v2[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  if (a1 != 2)
  {
    v6 = v5;
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v16;
    v9 = a1 & 1;
    *(v8 + 32) = a1 & 1;
    v21 = sub_264F0EA44;
    v22 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_264EFD564;
    v20 = &block_descriptor_54;
    v10 = _Block_copy(&aBlock);
    v11 = v16;
    v12 = v2;

    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v9;
    v21 = sub_264F0EA88;
    v22 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_264F066B8;
    v20 = &block_descriptor_60;
    v14 = _Block_copy(&aBlock);
    v15 = v11;

    [v7 animateWithDuration:v10 animations:v14 completion:0.4];

    _Block_release(v14);
    _Block_release(v10);
    return;
  }

  a1 = [v5 isHidden];
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_264F065A0(v2, v16, a1 & 1);
  [v16 setHidden_];
}

id sub_264F065A0(char *a1, void *a2, char a3)
{
  v5 = *&a1[OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController];
  if (!v5)
  {
    result = [a1 view];
    if (result)
    {
      v10 = result;
      [result bringSubviewToFront_];
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v7 = v5;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = [v7 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  [v9 insertSubview:a2 belowSubview:result];

LABEL_7:
  v11 = 0.0;
  if (a3)
  {
    v11 = 1.0;
  }

  return [a2 setAlpha_];
}

uint64_t sub_264F066B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_264F0670C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 capture];
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v5 = 2;
  }

  v8 = v6 ^ 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v11[4] = sub_264F0EB64;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_264EFD564;
  v11[3] = &block_descriptor_81;
  v10 = _Block_copy(v11);

  sub_264F0EB98(v5, v8);

  BSDispatchMain();
  _Block_release(v10);
  sub_264F0EB58(v5, v8);
}

uint64_t sub_264F06830(uint64_t a1, uint64_t a2)
{
  v5 = sub_264F13194();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264F131B4();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;

  v12 = v2;
  BSDispatchQueueAssertMain();
  v13 = *&v12[OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter];
  if (v13 && (v14 = *&v12[OBJC_IVAR___SESecureCaptureSceneViewController_scene]) != 0)
  {
    swift_unknownObjectRetain();
    v15 = v14;
    if ([v15 contentState] == 2)
    {
      v16 = [v13 newSnapshot];
      v23 = sub_264F04ACC();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = sub_264F0EAB8;
      v17[4] = v11;
      aBlock[4] = sub_264F0EB08;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264EFD564;
      aBlock[3] = &block_descriptor_75;
      v18 = _Block_copy(aBlock);
      v22 = v16;

      sub_264F131A4();
      v26 = MEMORY[0x277D84F90];
      sub_264F0E898(&unk_27FFBDBE0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FFBDF30, &qword_264F14FC0);
      sub_264F0E8E0();
      sub_264F13544();
      v19 = v23;
      MEMORY[0x266752AA0](0, v10, v7, v18);
      _Block_release(v18);

      swift_unknownObjectRelease();

      (*(v25 + 8))(v7, v5);
      (*(v24 + 8))(v10, v8);
    }

    sub_264F06C20(1, 1, v12, a1, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_264F06C20(0, 1, v12, a1, a2);
  }
}

void sub_264F06C20(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v9 = sub_264F13154();
    __swift_project_value_buffer(v9, qword_27FFBE290);
    v10 = a3;
    v11 = sub_264F13134();
    v12 = sub_264F13424();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v13 = 136446466;
      v14 = sub_264F048F4();
      v16 = sub_264F0C768(v14, v15, &aBlock);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      sub_264F0EC0C();
      v17 = sub_264F136E4();
      if (!v17)
      {
        v17 = swift_allocError();
        *v18 = a1;
      }

      v19 = v17;
      v20 = sub_264F12FC4();

      v21 = [v20 localizedDescription];
      v22 = sub_264F13214();
      v24 = v23;

      v25 = sub_264F0C768(v22, v24, &aBlock);

      *(v13 + 14) = v25;
      _os_log_impl(&dword_264EF1000, v11, v12, "[%{public}s] Snapshot failed - %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v30, -1, -1);
      MEMORY[0x266753530](v13, -1, -1);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    *(v26 + 32) = a1;
    v35 = sub_264F0EBDC;
    v36 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_264EFD564;
    v34 = &block_descriptor_87;
    v27 = _Block_copy(&aBlock);
  }

  else
  {
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = a1;
    v28[4] = a4;
    v28[5] = a5;
    v35 = sub_264F0ECA8;
    v36 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_264EFD564;
    v34 = &block_descriptor_93;
    v27 = _Block_copy(&aBlock);
    v29 = a3;
    sub_264F0EB98(a1, 0);
  }

  BSDispatchMain();
  _Block_release(v27);
}

void sub_264F06F9C(char *a1, void *a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] == 2)
  {
    v21[11] = v3;
    v22 = v4;
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v8 = sub_264F13154();
    __swift_project_value_buffer(v8, qword_27FFBE290);
    v9 = a1;
    v10 = sub_264F13134();
    v11 = sub_264F13424();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21[0] = v13;
      *v12 = 136446210;
      v14 = sub_264F048F4();
      v16 = sub_264F0C768(v14, v15, v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_264EF1000, v10, v11, "[%{public}s] Snapshot success - Updating layer.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x266753530](v13, -1, -1);
      MEMORY[0x266753530](v12, -1, -1);
    }

    v17 = [a2 IOSurface];
    if (!v17)
    {
      v17 = [a2 fallbackIOSurface];
    }

    v20 = v17;
    v18 = *&v9[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
    if (v18)
    {
      v19 = [v18 layer];
      [v19 setContents_];
    }

    a3(3);
  }
}

void sub_264F071BC(uint64_t a1, char *a2)
{
  v3 = a1;
  v4 = a1;
  BSDispatchQueueAssertMain();
  if (v4 == 3)
  {
    BSDispatchQueueAssertMain();
    v5 = *&a2[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      sub_264F065A0(a2, v6, v3 == 3);
      [v6 setHidden_];
    }
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v7 = sub_264F13154();
    __swift_project_value_buffer(v7, qword_27FFBE290);
    v8 = a2;
    v9 = sub_264F13134();
    v10 = sub_264F13414();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      v14 = sub_264F048F4();
      v16 = sub_264F0C768(v14, v15, &v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      sub_264F0EC0C();
      swift_allocError();
      *v17 = v3;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_264EF1000, v9, v10, "[%{public}s] Snapshot failed so backgrounding scene without updated snapshot: %{public}@", v11, 0x16u);
      sub_264EFB174(v12, &qword_27FFBDD30, &qword_264F15258);
      MEMORY[0x266753530](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x266753530](v13, -1, -1);
      MEMORY[0x266753530](v11, -1, -1);
    }

    BSDispatchQueueAssertMain();
    v5 = *&v8[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  sub_264F0741C(0, 0, 0);
}

void sub_264F0741C(uint64_t a1, void (*a2)(void), void *a3)
{
  LOBYTE(v9) = a1;
  BSDispatchQueueAssertMain();
  v10 = OBJC_IVAR___SESecureCaptureSceneViewController_scene;
  v11 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
  if (v11)
  {
    v12 = qword_27FFBD950;
    v13 = v11;
    if (v12 != -1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v14 = sub_264F13154();
      __swift_project_value_buffer(v14, qword_27FFBE290);
      v15 = v3;
      v16 = sub_264F13134();
      v17 = sub_264F13424();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = a3;
        v20 = swift_slowAlloc();
        aBlock = v20;
        *v18 = 136446466;
        v21 = sub_264F048F4();
        v15 = sub_264F0C768(v21, v22, &aBlock);

        *(v18 + 4) = v15;
        *(v18 + 12) = 2082;
        if (v9)
        {
          v23 = 0x756F726765726F66;
        }

        else
        {
          v23 = 0x756F72676B636162;
        }

        v24 = sub_264F0C768(v23, 0xEA0000000000646ELL, &aBlock);

        *(v18 + 14) = v24;
        _os_log_impl(&dword_264EF1000, v16, v17, "[%{public}s] Updating capture extension scene to %{public}s.", v18, 0x16u);
        swift_arrayDestroy();
        v25 = v20;
        a3 = v19;
        MEMORY[0x266753530](v25, -1, -1);
        MEMORY[0x266753530](v18, -1, -1);
      }

      v3 = swift_allocObject();
      *(v3 + 16) = v9 & 1;
      v26 = swift_allocObject();
      LOBYTE(v9) = v26;
      *(v26 + 16) = sub_264F0ED94;
      *(v26 + 24) = v3;
      v112 = sub_264F0EF7C;
      v113 = v26;
      aBlock = MEMORY[0x277D85DD0];
      *&v4 = 1107296256;
      v109 = 1107296256;
      v110 = sub_264F084DC;
      v111 = &block_descriptor_131;
      v27 = _Block_copy(&aBlock);

      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      *(v28 + 24) = a3;
      v112 = sub_264F0EDE4;
      v113 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v109 = 1107296256;
      v110 = sub_264F08548;
      v111 = &block_descriptor_137;
      v29 = _Block_copy(&aBlock);
      sub_264F0ED74(a2, a3);

      [v13 performUpdate:v27 withCompletion:v29];

      _Block_release(v29);
      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
LABEL_43:
      v84 = sub_264F13154();
      __swift_project_value_buffer(v84, qword_27FFBE290);
      v85 = v3;
      v86 = sub_264F13134();
      v87 = sub_264F13424();

      v105 = v15;
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        aBlock = v89;
        *v88 = 136446466;
        v90 = sub_264F048F4();
        v92 = sub_264F0C768(v90, v91, &aBlock);

        *(v88 + 4) = v92;
        *(v88 + 12) = 2082;
        if (v9)
        {
          v93 = 0x756F726765726F66;
        }

        else
        {
          v93 = 0x756F72676B636162;
        }

        v94 = sub_264F0C768(v93, 0xEA0000000000646ELL, &aBlock);

        *(v88 + 14) = v94;
        _os_log_impl(&dword_264EF1000, v86, v87, "[%{public}s] Creating capture scene to %{public}s.", v88, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266753530](v89, -1, -1);
        MEMORY[0x266753530](v88, -1, -1);
      }

      v3 = swift_allocObject();
      *(v3 + 16) = v85;
      *(v3 + 24) = v4;
      *(v3 + 32) = v5;
      v95 = v9 & 1;
      *(v3 + 40) = v9 & 1;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_264F0ECB4;
      *(v96 + 24) = v3;
      v112 = sub_264F0F00C;
      v113 = v96;
      aBlock = MEMORY[0x277D85DD0];
      v109 = v6;
      v110 = sub_264F0EFBC;
      v111 = &block_descriptor_105_0;
      v97 = _Block_copy(&aBlock);
      v98 = v85;

      [v107 configureParameters_];
      _Block_release(v97);
      LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

      if (v97)
      {
        __break(1u);
        goto LABEL_56;
      }

      v9 = swift_allocObject();
      *(v9 + 16) = v95;
      *(v9 + 24) = v98;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_264F0ED0C;
      *(v99 + 24) = v9;
      v112 = sub_264F0EF7C;
      v113 = v99;
      aBlock = MEMORY[0x277D85DD0];
      v109 = v6;
      v110 = sub_264F084DC;
      v111 = &block_descriptor_115;
      a3 = _Block_copy(&aBlock);
      v100 = v98;

      v101 = swift_allocObject();
      v101[2] = a2;
      v101[3] = v106;
      v101[4] = v100;
      v101[5] = v107;
      v112 = sub_264F0ED68;
      v113 = v101;
      aBlock = MEMORY[0x277D85DD0];
      v109 = v6;
      v110 = sub_264F08548;
      v111 = &block_descriptor_121;
      v13 = _Block_copy(&aBlock);
      v102 = v100;
      sub_264F0ED74(a2, v106);
      v103 = v107;

      [v103 performUpdate:a3 withCompletion:v13];

      swift_unknownObjectRelease();
      _Block_release(v13);
      _Block_release(a3);
      LOBYTE(v103) = swift_isEscapingClosureAtFileLocation();

      if ((v103 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_51:
      swift_once();
    }
  }

  v31 = sub_264F0F238([v3 extensionProvider]);
  swift_unknownObjectRelease();
  if (v31)
  {
    type metadata accessor for SecureCaptureSceneExtension();
    [v31 addExtension_];
    v32 = *(v3 + v10);
    *(v3 + v10) = v31;
    v107 = v31;

    [v107 setDelegate_];
    v33 = [v107 layerManager];
    [v33 addObserver_];

    v34 = [v107 uiPresentationManager];
    if (!v34)
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v70 = sub_264F13154();
      __swift_project_value_buffer(v70, qword_27FFBE290);
      v71 = v3;
      v72 = sub_264F13134();
      v73 = sub_264F13414();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        aBlock = v75;
        *v74 = 136446210;
        v76 = sub_264F048F4();
        v78 = sub_264F0C768(v76, v77, &aBlock);

        *(v74 + 4) = v78;
        _os_log_impl(&dword_264EF1000, v72, v73, "[%{public}s] Can't find the UI presentation manager", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x266753530](v75, -1, -1);
        MEMORY[0x266753530](v74, -1, -1);
      }

      if (a2)
      {
        a2();
      }

      return;
    }

    v15 = v34;
    v106 = a3;
    v35 = sub_264F13204();
    v36 = [v15 createPresenterWithIdentifier_];

    *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter) = v36;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v112 = sub_264F085C0;
    v113 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v109 = 1107296256;
    v110 = sub_264F0EFBC;
    v111 = &block_descriptor_96;
    v37 = _Block_copy(&aBlock);

    [v36 modifyPresentationContext_];
    _Block_release(v37);
    if (swift_isEscapingClosureAtFileLocation())
    {
      goto LABEL_53;
    }

    [v36 activate];
    v38 = [v36 presentationView];
    v39 = [v38 layer];
    [v39 setSecurityMode_];

    v40 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView);
    *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView) = v38;
    v41 = v38;

    v42 = [v3 view];
    if (v42)
    {
      v43 = v42;
      [v42 addSubview_];

      v44 = *(v3 + OBJC_IVAR___SESecureCaptureSceneViewController_appProtectionViewController);
      if (v44)
      {
        v45 = v41;
        v46 = v44;
        v47 = [v3 view];
        if (!v47)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v48 = v47;
        v49 = [v46 view];
        if (!v49)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v50 = v49;
        [v48 bringSubviewToFront_];

        v41 = v45;
      }

      v51 = [v3 view];
      if (v51)
      {
        v52 = v51;
        [v51 setNeedsLayout];

        [v41 setClipsToBounds_];
        v53 = [v41 layer];
        v54 = sub_264F13204();
        [v53 setName_];

        v55 = [v3 view];
        if (v55)
        {
          v56 = v55;
          v57 = [v55 window];

          if (v57)
          {
            v58 = [v57 screen];

            [v58 _referenceBounds];
            v4 = v59;
            v5 = v60;

            goto LABEL_42;
          }

          v79 = [v3 view];
          if (v79)
          {
            v80 = v79;
            [v79 bounds];
            v5 = v81;
            v83 = v82;

            if (v83 >= v5)
            {
              v4 = v5;
            }

            else
            {
              v4 = v83;
            }

            if (v5 <= v83)
            {
              v5 = v83;
            }

LABEL_42:
            v104 = v41;
            [v3 setPreferredContentSize_];
            if (qword_27FFBD950 == -1)
            {
              goto LABEL_43;
            }

            goto LABEL_54;
          }

LABEL_62:
          __break(1u);
          return;
        }

        goto LABEL_59;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (qword_27FFBD950 != -1)
  {
LABEL_56:
    swift_once();
  }

  v61 = sub_264F13154();
  __swift_project_value_buffer(v61, qword_27FFBE290);
  v62 = v3;
  v63 = sub_264F13134();
  v64 = sub_264F13414();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock = v66;
    *v65 = 136446210;
    v67 = sub_264F048F4();
    v69 = sub_264F0C768(v67, v68, &aBlock);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_264EF1000, v63, v64, "[%{public}s] Can't create a capture extension scene", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x266753530](v66, -1, -1);
    MEMORY[0x266753530](v65, -1, -1);
  }

  if (a2)
  {
    a2();
  }
}

void sub_264F08378(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_264F0EEBC;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_264EFD564;
  v5[3] = &block_descriptor_152;
  v3 = _Block_copy(v5);
  v4 = a1;

  BSDispatchMain();
  _Block_release(v3);
}

uint64_t sub_264F08444(char *a1)
{
  result = BSDispatchQueueAssertMain();
  if (*&a1[OBJC_IVAR___SESecureCaptureSceneViewController__presentationMode] == 2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v4 = a1;
    sub_264F06830(sub_264F0F014, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264F084DC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

void sub_264F08548(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_264F085C0(void *a1)
{
  [a1 setPresentedLayerTypes_];
  [a1 setAppearanceStyle_];
  [a1 setBackgroundColorWhileHosting_];
  [a1 setBackgroundColorWhileNotHosting_];
  [a1 setInheritsSecurity_];

  return [a1 setResizesHostedContext_];
}

uint64_t sub_264F08660(void *a1, void *a2, char a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a4;
  *(v10 + 32) = a5;
  *(v10 + 40) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_264F0EE4C;
  *(v11 + 24) = v10;
  v15[4] = sub_264F0EE5C;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_264F0EFBC;
  v15[3] = &block_descriptor_146;
  v12 = _Block_copy(v15);
  v13 = a2;

  [a1 updateSettingsWithBlock_];
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_264F087D4(void *a1, void *a2, char a3, double a4, double a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v28 = a1;
    BSRectWithSize();
    [v9 setFrame_];
    [v9 setInterfaceOrientation_];
    [v9 setInterfaceOrientationMode_];
    v10 = [objc_opt_self() mainConfiguration];
    [v9 setDisplayConfiguration_];

    [v9 setForeground_];
    [v9 setActivityMode_];

    v11 = [a2 traitCollection];
    v12 = [v11 userInterfaceStyle];

    [v9 setUserInterfaceStyle_];
    v13 = [v9 otherSettings];
    v14 = sub_264F13204();
    [v13 setObject:v14 forSetting:20211529];

    v15 = [a2 view];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = [v15 window];

    if (v17)
    {
      v18 = [v17 windowScene];

      if (v18)
      {
        v19 = [v18 statusBarManager];

        if (v19)
        {
          [v19 defaultStatusBarHeightInOrientation_];
          [v9 setDefaultStatusBarHeight:1 forOrientation:?];
        }
      }
    }
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v20 = sub_264F13154();
    __swift_project_value_buffer(v20, qword_27FFBE290);
    v21 = a2;
    v28 = sub_264F13134();
    v22 = sub_264F13414();

    if (os_log_type_enabled(v28, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136446210;
      v25 = sub_264F048F4();
      v27 = sub_264F0C768(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_264EF1000, v28, v22, "[%{public}s] Can't update Capture Extension mutable scene settings.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x266753530](v24, -1, -1);
      MEMORY[0x266753530](v23, -1, -1);
    }
  }
}

void sub_264F08B98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_264F08BE4(uint64_t a1, void *a2, char a3, char *a4)
{
  if (a3)
  {
    v6 = *&a4[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions];
    if ((v6 & 0xC000000000000001) != 0)
    {

      v7 = sub_264F13584();

      if (!v7)
      {
        return;
      }
    }

    else if (!*(v6 + 16))
    {
      return;
    }

    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v8 = sub_264F13154();
    __swift_project_value_buffer(v8, qword_27FFBE290);
    v9 = a4;
    v10 = sub_264F13134();
    v11 = sub_264F13424();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446466;
      v14 = sub_264F048F4();
      v16 = sub_264F0C768(v14, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();

      v17 = sub_264F13394();
      v19 = v18;

      v20 = sub_264F0C768(v17, v19, &v22);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_264EF1000, v10, v11, "[%{public}s] Setting transition context with launch actions: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v13, -1, -1);
      MEMORY[0x266753530](v12, -1, -1);
    }

    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    sub_264EFB470();

    v21 = sub_264F13364();

    [a2 setActions_];
  }
}

id sub_264F08EA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), int a4, id a5, uint64_t a6)
{
  if (a3)
  {
    a3(a1, a2);
  }

  result = [a5 delegate];
  if (result)
  {
    [result secureCaptureSceneViewController:a5 didCreateScene:a6];

    return swift_unknownObjectRelease();
  }

  return result;
}

void SESecureCaptureSceneViewController.reactivate(launchActions:)(uint64_t a1)
{
  v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR___SESecureCaptureSceneViewController_scene);
  if (v2)
  {
    if (*(isEscapingClosureAtFileLocation + OBJC_IVAR___SESecureCaptureSceneViewController_sceneActivated))
    {
      v3 = qword_27FFBD950;
      oslog = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v4 = sub_264F13154();
      __swift_project_value_buffer(v4, qword_27FFBE290);
      v5 = isEscapingClosureAtFileLocation;
      v6 = sub_264F13134();
      v7 = sub_264F13424();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        aBlock[0] = v9;
        *v8 = 136446210;
        v10 = sub_264F048F4();
        v12 = sub_264F0C768(v10, v11, aBlock);

        *(v8 + 4) = v12;
        v13 = "[%{public}s] Scene is already activated. Ignoring reactivation request.";
LABEL_18:
        _os_log_impl(&dword_264EF1000, v6, v7, v13, v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x266753530](v9, -1, -1);
        MEMORY[0x266753530](v8, -1, -1);

        goto LABEL_19;
      }
    }

    else
    {
      oslog = v2;
      v23 = [oslog settings];
      v24 = [v23 isForeground];

      if (v24)
      {
        *(isEscapingClosureAtFileLocation + OBJC_IVAR___SESecureCaptureSceneViewController_launchActions) = a1;

        [oslog activate:0];
        v25 = swift_allocObject();
        *(v25 + 16) = 1;
        *(v25 + 24) = a1;
        *(v25 + 32) = isEscapingClosureAtFileLocation;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_264F0CFEC;
        *(v26 + 24) = v25;
        aBlock[4] = sub_264F0CFF8;
        aBlock[5] = v26;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_264F084DC;
        aBlock[3] = &block_descriptor_2;
        v27 = _Block_copy(aBlock);

        v28 = isEscapingClosureAtFileLocation;

        [oslog performUpdate:v27];

        _Block_release(v27);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v29 = sub_264F13154();
      __swift_project_value_buffer(v29, qword_27FFBE290);
      v30 = isEscapingClosureAtFileLocation;
      v6 = sub_264F13134();
      v7 = sub_264F13424();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        aBlock[0] = v9;
        *v8 = 136446210;
        v31 = sub_264F048F4();
        v33 = sub_264F0C768(v31, v32, aBlock);

        *(v8 + 4) = v33;
        v13 = "[%{public}s] Scene is not in foreground. Ignoring reactivation request.";
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v14 = sub_264F13154();
    __swift_project_value_buffer(v14, qword_27FFBE290);
    v15 = isEscapingClosureAtFileLocation;
    oslog = sub_264F13134();
    v16 = sub_264F13424();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446210;
      v19 = sub_264F048F4();
      v21 = sub_264F0C768(v19, v20, aBlock);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_264EF1000, oslog, v16, "[%{public}s] Scene has not been initialized. Ignoring reactivation request.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x266753530](v18, -1, -1);
      MEMORY[0x266753530](v17, -1, -1);
LABEL_19:

      return;
    }
  }
}

void sub_264F0948C(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      if (!sub_264F13584())
      {
        return;
      }
    }

    else if (!*(a4 + 16))
    {
      return;
    }

    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v7 = sub_264F13154();
    __swift_project_value_buffer(v7, qword_27FFBE290);
    v8 = a5;
    v9 = sub_264F13134();
    v10 = sub_264F13424();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = sub_264F048F4();
      v15 = sub_264F0C768(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
      sub_264EFB470();

      v16 = sub_264F13394();
      v18 = v17;

      v19 = sub_264F0C768(v16, v18, &v21);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_264EF1000, v9, v10, "[%{public}s] Reactivation: Setting transition context with launch actions: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266753530](v12, -1, -1);
      MEMORY[0x266753530](v11, -1, -1);
    }

    sub_264EFB608(0, &unk_27FFBDAD0, 0x277CF0B58);
    sub_264EFB470();
    v20 = sub_264F13364();
    [a2 setActions_];
  }
}

void sub_264F097B0(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter;
  v3 = *&v1[OBJC_IVAR___SESecureCaptureSceneViewController_scenePresenter];
  if (v3)
  {
    [v3 invalidate];
  }

  *&v1[v2] = 0;
  swift_unknownObjectRelease();
  v1[OBJC_IVAR___SESecureCaptureSceneViewController_sceneForeground] = 0;
  v4 = OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView;
  v5 = *&v1[OBJC_IVAR___SESecureCaptureSceneViewController_activatedSceneView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v1[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v1[v4] = 0;

  v7 = OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView;
  v8 = *&v1[OBJC_IVAR___SESecureCaptureSceneViewController_liveSceneSnapshotView];
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[v7] = 0;

  v10 = OBJC_IVAR___SESecureCaptureSceneViewController_scene;
  v11 = *&v1[OBJC_IVAR___SESecureCaptureSceneViewController_scene];
  if (v11)
  {
    v12 = v11;
    v13 = [v12 layerManager];
    [v13 remove_];

    [v12 invalidate];
    [v12 setDelegate_];
    v14 = *&v1[v10];
    *&v1[v10] = 0;

    v15 = [v1 delegate];
    if (v15)
    {
      [v15 secureCaptureSceneViewController:v1 didDestroyScene:v12];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_264F13584())
  {
    sub_264F02E9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR___SESecureCaptureSceneViewController_launchActions] = v16;

  v17 = OBJC_IVAR___SESecureCaptureSceneViewController_assertion;
  v18 = *&v1[OBJC_IVAR___SESecureCaptureSceneViewController_assertion];
  if (v18)
  {
    [v18 invalidate];
    v19 = *&v1[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v1[v17] = 0;

  v1[OBJC_IVAR___SESecureCaptureSceneViewController_invalidated] = 1;
}

Swift::Void __swiftcall SESecureCaptureSceneViewController.invalidate()()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR___SESecureCaptureSceneViewController_invalidated;
  if ((*(v0 + OBJC_IVAR___SESecureCaptureSceneViewController_invalidated) & 1) == 0)
  {
    if (qword_27FFBD950 != -1)
    {
      swift_once();
    }

    v2 = sub_264F13154();
    __swift_project_value_buffer(v2, qword_27FFBE290);
    v3 = v0;
    v4 = sub_264F13134();
    v5 = sub_264F13424();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      v8 = sub_264F048F4();
      v10 = sub_264F0C768(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_264EF1000, v4, v5, "[%{public}s] Capture Extension Scene Invalidated", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x266753530](v7, -1, -1);
      MEMORY[0x266753530](v6, -1, -1);
    }

    *(v0 + v1) = 1;
    sub_264F097B0(v11);
  }
}

id SESecureCaptureSceneViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_264F13204();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

uint64_t sub_264F09C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_264F13314();
  v5[4] = sub_264F13304();
  v7 = sub_264F132D4();

  return MEMORY[0x2822009F8](sub_264F09CF4, v7, v6);
}

uint64_t sub_264F09CF4()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR___SESecureCaptureSceneViewController_currentPath);
  *(v2 + OBJC_IVAR___SESecureCaptureSceneViewController_currentPath) = v1;
  v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_264F09D78(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFBD978, &qword_264F14E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *v2;
  v8 = sub_264F13334();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_264F13314();
  v9 = a2;
  v10 = v7;
  v11 = sub_264F13304();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a2;
  sub_264EF30BC(0, 0, v6, &unk_264F153B8, v12);
}

void sub_264F09EA4(uint64_t a1, uint64_t a2)
{
  v5 = sub_264F13064();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___SESecureCaptureSceneViewController_assertion;
  if (!*&v2[OBJC_IVAR___SESecureCaptureSceneViewController_assertion])
  {
    v82 = v7;
    v11 = [v2 _scene];
    if (v11 && (v12 = v11, v13 = [v11 clientHandle], v12, v13) && (v14 = objc_msgSend(v13, sel_processHandle), v13, v14) && (v15 = objc_msgSend(v14, sel_identity), v14, v15))
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v16 = sub_264F13154();
      v17 = __swift_project_value_buffer(v16, qword_27FFBE290);
      v80 = v2;
      v18 = v2;
      v76 = v17;
      v19 = sub_264F13134();
      v20 = sub_264F13424();

      v21 = os_log_type_enabled(v19, v20);
      v81 = v15;
      v77 = a2;
      v75 = v18;
      if (v21)
      {
        v22 = v18;
        v23 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock = v79;
        *v23 = 136446466;
        v24 = sub_264F048F4();
        v26 = sub_264F0C768(v24, v25, &aBlock);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2080;
        v27 = [objc_msgSend(v22 extensionProvider)];
        swift_unknownObjectRelease();
        v28 = sub_264F13214();
        v30 = v29;

        v15 = v81;
        v31 = sub_264F0C768(v28, v30, &aBlock);

        *(v23 + 14) = v31;
        _os_log_impl(&dword_264EF1000, v19, v20, "[%{public}s] Acquiring secure capture process assertion for bundle identifier: %s", v23, 0x16u);
        v32 = v79;
        swift_arrayDestroy();
        MEMORY[0x266753530](v32, -1, -1);
        MEMORY[0x266753530](v23, -1, -1);
      }

      v79 = [objc_opt_self() targetWithProcessIdentity_];
      v89 = MEMORY[0x277D84F90];
      sub_264F13054();
      aBlock = 0;
      v84 = 0xE000000000000000;
      sub_264F13634();

      aBlock = 0xD000000000000018;
      v84 = 0x8000000264F16550;
      sub_264F0E898(&qword_27FFBDF40, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v33 = sub_264F136D4();
      MEMORY[0x2667528B0](v33);

      v34 = sub_264F13204();

      v35 = objc_opt_self();
      v36 = [v35 attributeWithTag_];

      MEMORY[0x2667528D0]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_264F132A4();
      }

      v78 = "com.apple.securecapture-";
      sub_264F132B4();
      sub_264EFA5BC(&unk_2876BFCB8);
      sub_264EFB174(&unk_2876BFCD8, &qword_27FFBDF48, &qword_264F153C8);
      v37 = sub_264F131C4();

      v38 = MKBGetDeviceLockState();

      if (v38 > 6 || ((1 << v38) & 0x46) == 0)
      {
        v39 = v75;
        v40 = sub_264F13134();
        v41 = sub_264F13424();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock = v43;
          *v42 = 136446210;
          LODWORD(v76) = v41;
          v44 = sub_264F048F4();
          v46 = sub_264F0C768(v44, v45, &aBlock);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_264EF1000, v40, v76, "[%{public}s] Adding unlocked attribute tag for the process assertion", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x266753530](v43, -1, -1);
          MEMORY[0x266753530](v42, -1, -1);
        }

        v47 = sub_264F13204();
        v48 = [v35 attributeWithTag_];

        MEMORY[0x2667528D0]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_264F132A4();
        }

        sub_264F132B4();
      }

      v49 = objc_allocWithZone(MEMORY[0x277D46DB8]);
      v50 = v79;
      v51 = sub_264F13204();
      sub_264EFB608(0, &unk_27FFBDF50, 0x277D46DD8);
      v52 = sub_264F13284();

      v53 = [v49 initWithExplanation:v51 target:v50 attributes:v52];

      v54 = v80;
      v55 = *&v80[v10];
      *&v80[v10] = v53;

      v56 = *&v54[v10];
      if (v56)
      {
        if (a1)
        {
          v57 = v77;
          v87 = a1;
          v88 = v77;
          aBlock = MEMORY[0x277D85DD0];
          v84 = 1107296256;
          v85 = sub_264F0A890;
          v86 = &block_descriptor_47;
          v58 = _Block_copy(&aBlock);
          v59 = v56;
          sub_264F0ED74(a1, v57);
        }

        else
        {
          v59 = v56;
          v58 = 0;
        }

        [v59 acquireWithInvalidationHandler_];
        _Block_release(v58);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v82);
    }

    else
    {
      if (qword_27FFBD950 != -1)
      {
        swift_once();
      }

      v60 = sub_264F13154();
      __swift_project_value_buffer(v60, qword_27FFBE290);
      v61 = v2;
      v82 = sub_264F13134();
      v62 = sub_264F13414();

      if (os_log_type_enabled(v82, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        aBlock = v64;
        *v63 = 136446466;
        v65 = sub_264F048F4();
        v67 = sub_264F0C768(v65, v66, &aBlock);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        v68 = [objc_msgSend(v61 extensionProvider)];
        swift_unknownObjectRelease();
        v69 = sub_264F13214();
        v71 = v70;

        v72 = sub_264F0C768(v69, v71, &aBlock);

        *(v63 + 14) = v72;
        _os_log_impl(&dword_264EF1000, v82, v62, "[%{public}s] Failed to acquire secure capture process assertion for bundle identifier: %s, no process identity found for the scene", v63, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266753530](v64, -1, -1);
        MEMORY[0x266753530](v63, -1, -1);
      }

      else
      {
        v73 = v82;
      }
    }
  }
}
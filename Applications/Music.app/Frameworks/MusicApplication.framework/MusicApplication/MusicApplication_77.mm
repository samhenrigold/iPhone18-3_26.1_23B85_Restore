void sub_6D91CC(void *a1, char a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    a3(a2 & 1, 0);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {

        if (v7 == a1)
        {
          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = *&v10[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper];
            *&v10[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
          }
        }
      }
    }
  }
}

double PlaybackController.displayAgeVerification(modelObject:completion:)(id a1, void (*a2)(void, void), uint64_t a3)
{
  if (a1)
  {
    a1 = MPModelObject.bestIdentifier(for:)(2, 1u);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  sub_6D8860(a1, v6, a2, a3);

  return result;
}

uint64_t PlaybackController.displayAgeVerification(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_AB9940();
  v2[5] = sub_AB9930();
  v4 = sub_AB98B0();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_6D93BC, v4, v3);
}

uint64_t sub_6D93BC(uint64_t a1)
{
  v6 = v1[1];
  v2 = sub_AB9930();
  v1[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v1[4].i64[1] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v4 = swift_task_alloc();
  v1[5].i64[0] = v4;
  *v4 = v1;
  v4[1] = sub_6D94D0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v2, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000000B70360, sub_6DC0E0, v3, &type metadata for () + 8);
}

uint64_t sub_6D94D0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_6D9658;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_6D95F4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6D95F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6D9658()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_6D96D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90, &unk_B21980);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v9 = sub_AB7FA0();
  v11 = v10;
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  sub_6D8860(v9, v11, sub_6DC604, v13);

  return result;
}

uint64_t sub_6D9860(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90, &unk_B21980);
    return sub_AB98C0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90, &unk_B21980);
    return sub_AB98D0();
  }
}

id sub_6D99C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion + 8];

    v3(0, 0);
    sub_17654(v3, v4);
  }

  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_6D9AF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = a4;
  v10 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DC47C, v8);

  return result;
}

char *sub_6D9BB4(char *result)
{
  v1 = &result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  v2 = *&result[OBJC_IVAR____TtCC9MusicCore30ExplicitRestrictionsControllerP33_49A4F392108DD8BCF77701E27C86571422AgeVerificationWrapper_completion];
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 1);
    *v1 = 0;
    *(v1 + 1) = 0;
    v5 = [objc_opt_self() defaultManager];
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v4;
    v6[4] = v3;
    v9[4] = sub_6DC410;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1546C;
    v9[3] = &block_descriptor_194;
    v7 = _Block_copy(v9);
    sub_307CC(v2, v4);
    v8 = v3;

    [v5 getAgeVerificationStateWithCompletion:v7];
    _Block_release(v7);

    return sub_17654(v2, v4);
  }

  return result;
}

uint64_t sub_6D9DF0()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, static Logger.playbackController);
  __swift_project_value_buffer(v0, static Logger.playbackController);
  return sub_AB4BB0();
}

uint64_t sub_6D9F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_6D9F30, 0, 0);
}

uint64_t sub_6D9F30()
{
  v1 = v0[2];
  if (v1)
  {
    v1(v0[4]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_6D9F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a3;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30, &unk_B15160);
  v6[7] = swift_task_alloc();
  v7 = sub_AB31C0();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = *(v8 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_6DA0E4, 0, 0);
}

uint64_t sub_6DA0E4()
{
  v1 = [*(v0 + 16) action];
  v2 = [v1 type];

  if (v2 != &dword_0 + 2 || (v3 = [*(v0 + 16) action], v4 = objc_msgSend(v3, "URLString"), v3, !v4))
  {
LABEL_5:
    v8 = *(v0 + 48);
    v9 = *(v0 + 16);
    v10 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    v11 = [objc_opt_self() activeAccount];
    v12 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v11];

    v13 = sub_AB9990();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v12;
    v15 = v9;
    sub_5E8FD0(0, 0, v8, &unk_B21A30, v14);

    v16 = *(v0 + 24);
    if (!v16)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  sub_AB92A0();

  sub_AB3180();

  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_12E1C(*(v0 + 56), &qword_E0DC30, &unk_B15160);
    goto LABEL_5;
  }

  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v22 = *(v0 + 64);
  v23 = *(v0 + 48);
  v24 = *(v21 + 32);
  v24(v19, *(v0 + 56), v22);
  v25 = sub_AB9990();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v21 + 16))(v20, v19, v22);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v24(v27 + v26, v20, v22);
  sub_5E8CD8(0, 0, v23, &unk_B21A40, v27);

  (*(v21 + 8))(v19, v22);
  v16 = *(v0 + 24);
  if (v16)
  {
LABEL_6:
    v16(*(v0 + 40));
  }

LABEL_7:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_6DA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 144) = a1;
  *(v4 + 152) = a4;
  return _swift_task_switch(sub_6DA4B0, 0, 0);
}

uint64_t sub_6DA4B0()
{
  *(v0 + 160) = objc_opt_self();
  sub_AB9940();
  *(v0 + 168) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_6DA554, v2, v1);
}

uint64_t sub_6DA554()
{
  v1 = *(v0 + 160);

  *(v0 + 176) = [v1 sharedApplication];

  return _swift_task_switch(sub_6DA5D8, 0, 0);
}

uint64_t sub_6DA5D8@<X0>(NSURL *x8_0@<X8>)
{
  v3 = v2[22];
  sub_AB30F0(x8_0);
  v5 = v4;
  v2[23] = v4;
  sub_52A314(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_6DCA54(&qword_E0DE20, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_B160E4);
  isa = sub_AB8FD0().super.isa;
  v2[24] = isa;

  v2[2] = v2;
  v2[7] = v2 + 25;
  v2[3] = sub_6DA798;
  v7 = swift_continuation_init();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12FE8, &qword_B21A48);
  v2[10] = _NSConcreteStackBlock;
  v2[11] = 1107296256;
  v2[12] = sub_6DA8F0;
  v2[13] = &block_descriptor_132_0;
  v2[14] = v7;
  [v3 openURL:v5 options:isa completionHandler:v2 + 10];

  return _swift_continuation_await(v2 + 2);
}

uint64_t sub_6DA798()
{

  return _swift_task_switch(sub_6DA878, 0, 0);
}

uint64_t sub_6DA878()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  **(v0 + 144) = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_6DA8F0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

uint64_t sub_6DA94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return _swift_task_switch(sub_6DA970, 0, 0);
}

uint64_t sub_6DA970()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 160) action];
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 192;
  *(v0 + 24) = sub_6DAABC;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12FF0, &unk_B21A50);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_6DACBC;
  *(v0 + 104) = &block_descriptor_135_1;
  *(v0 + 112) = v4;
  [v2 handleButtonAction:v3 usingRequestContext:v1 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_6DAABC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_6DAC38;
  }

  else
  {
    v2 = sub_6DABCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6DABCC()
{
  v1 = *(v0 + 192);

  **(v0 + 144) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6DAC38(__n128 a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  **(v1 + 144) = 2;
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_6DACBC(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_6DAD88(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

void sub_6DAE08(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_AB5510(&v6);

  v4 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v2;
  v5 = v3;

  sub_AB5520();
  sub_6E6D1C(v4);
}

unint64_t sub_6DAEFC()
{
  result = qword_E12E80;
  if (!qword_E12E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12E80);
  }

  return result;
}

unint64_t sub_6DAF50()
{
  result = qword_E12E88;
  if (!qword_E12E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E12E88);
  }

  return result;
}

double sub_6DAFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_6DAFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_6DB050(id a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_6DB074(a1);
    return result;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

void sub_6DB074(id a1)
{
  if (a1 >= 5)
  {
  }
}

double sub_6DB084(id a1, char a2, __n128 a3)
{
  if (a2 == 2)
  {
LABEL_4:
    sub_6DB0A8(a1);
    return result;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

id sub_6DB0A8(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

BOOL sub_6DB0B8(void *a1, uint64_t a2, uint64_t a3)
{
  v9[3] = &type metadata for Player.ReplaceCommand;
  v9[4] = &protocol witness table for Player.ReplaceCommand;
  v9[0] = a1;
  v9[1] = a2;
  __swift_project_boxed_opaque_existential_1(v9, &type metadata for Player.ReplaceCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_AB5510(&v8);

  v5 = v8;
  if (v8)
  {
    v6 = MPCPlayerResponse.canPerform(_:)(v9);
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

BOOL sub_6DB1D4(char a1, uint64_t a2)
{
  v6[3] = &type metadata for Player.PlaybackCommand;
  v6[4] = &protocol witness table for Player.PlaybackCommand;
  LOBYTE(v6[0]) = a1;
  __swift_project_boxed_opaque_existential_1(v6, &type metadata for Player.PlaybackCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v2 = v5;
  if (v5)
  {
    v3 = MPCPlayerResponse.canPerform(_:)(v6);
  }

  else
  {
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

BOOL sub_6DB2E8(void *a1, void *a2, uint64_t a3)
{
  v10[3] = &type metadata for Player.InsertCommand;
  v10[4] = &protocol witness table for Player.InsertCommand;
  v10[0] = a1;
  v10[1] = a2;
  __swift_project_boxed_opaque_existential_1(v10, &type metadata for Player.InsertCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  sub_537EFC(a2);
  sub_AB5510(&v9);

  v6 = v9;
  if (v9)
  {
    v7 = MPCPlayerResponse.canPerform(_:)(v10);
  }

  else
  {
    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

BOOL sub_6DB418(void *a1, uint64_t a2)
{
  v7[3] = &type metadata for Player.ChangeCommand;
  v7[4] = &protocol witness table for Player.ChangeCommand;
  v7[0] = a1;
  __swift_project_boxed_opaque_existential_1(v7, &type metadata for Player.ChangeCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_6DDA50(a1);
  sub_AB5510(&v6);

  v3 = v6;
  if (v6)
  {
    v4 = MPCPlayerResponse.canPerform(_:)(v7);
  }

  else
  {
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

BOOL sub_6DB538(uint64_t a1, uint64_t a2)
{
  v6[3] = &type metadata for Player.VocalsCommand;
  v6[4] = &protocol witness table for Player.VocalsCommand;
  LODWORD(v6[0]) = a1;
  BYTE4(v6[0]) = BYTE4(a1);
  BYTE5(v6[0]) = BYTE5(a1) & 1;
  __swift_project_boxed_opaque_existential_1(v6, &type metadata for Player.VocalsCommand);
  swift_getDynamicType();
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  v2 = v5;
  if (v5)
  {
    v3 = MPCPlayerResponse.canPerform(_:)(v6);
  }

  else
  {
    v3 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_6DB65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_6DB6BC(void *a1)
{
  v2 = v1;
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.sharedListening);
  v5 = a1;
  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v27[0] = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_AB92A0();
    v14 = v13;

    v15 = sub_500C84(v12, v14, v27);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_0, v6, v7, "Received MPCSharedListeningEvent=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v16 = v5;
  sub_75D030(v16, v25);
  if (v26 != 255)
  {
    v27[0] = v25[0];
    v27[1] = v25[1];
    v27[2] = v25[2];
    v28 = v26;
    v17 = (v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v18 = *(v2 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v19 + 40))(v18, v19);
    v20 = [v16 participant];
    v21 = [v20 externalIdentifier];

    v22 = sub_AB92A0();
    v24 = v23;

    GroupActivitiesManager.postEvent(_:participantID:)(v27, v22, v24);

    sub_12E1C(v25, &unk_E13080, &unk_B21AA0);
  }
}

double sub_6DB948(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v5 = &v21 - v4;
  if (qword_E0CF90 != -1)
  {
    swift_once();
  }

  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, static Logger.sharedListening);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F50();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = a1;
    v22 = v10;
    *v9 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60, &qword_B21A88);
    v11 = sub_AB9350();
    v13 = sub_500C84(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "Receiving didEndSharedListeningSessionWithError=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v14 = sub_AB9990();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_AB9940();
  v15 = v2;
  v16 = sub_AB9930();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  sub_5E89D8(0, 0, v5, &unk_B21A98, v17);

  if (a1)
  {
    sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    v20 = v15;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DD390, v19);
  }

  return result;
}

void sub_6DBC2C(void *a1)
{
  v2 = v1;
  if (qword_E0CEA0 != -1)
  {
    swift_once();
  }

  v4 = sub_AB4BC0();
  __swift_project_value_buffer(v4, static Logger.playbackController);
  swift_errorRetain();
  v5 = sub_AB4BA0();
  v6 = sub_AB9F30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = a1;
    v35[0] = v8;
    *v7 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60, &qword_B21A88);
    v9 = sub_AB9350();
    v11 = sub_500C84(v9, v10, v35);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v5, v6, "didPauseForLeaseEndWithError with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  if (a1)
  {
    v12 = sub_AB3040();
    v13 = [v12 userInfo];
    v14 = sub_AB8FF0();

    v15 = sub_AB92A0();
    if (*(v14 + 16))
    {
      v17 = sub_52215C(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_808B0(*(v14 + 56) + 32 * v17, v35);

        sub_13C80(0, &qword_E13068, ICMusicSubscriptionLeaseStatus_ptr);
        if (swift_dynamicCast())
        {
          v20 = [v34 stateReasonDialog];
          if (!v20)
          {

            return;
          }

          v21 = v20;
          v22 = [v12 userInfo];
          v23 = sub_AB8FF0();

          v24 = sub_AB92A0();
          if (*(v23 + 16))
          {
            v26 = sub_52215C(v24, v25);
            v28 = v27;

            if (v28)
            {
              sub_808B0(*(v23 + 56) + 32 * v26, v35);

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070, &unk_B1C590);
              if (swift_dynamicCast())
              {
                if (!v34[2] || (v29 = sub_52215C(0x736E6F6974706FLL, 0xE700000000000000), (v30 & 1) == 0))
                {

                  return;
                }

                sub_808B0(v34[7] + 32 * v29, v35);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0, &unk_B16BD0);
                if (swift_dynamicCast())
                {
                  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
                  v31 = swift_allocObject();
                  v31[2] = v2;
                  v31[3] = v21;
                  v31[4] = v34;
                  v31[5] = v34;
                  v32 = v2;
                  v33 = v21;
                  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_6DD204, v31);

                  return;
                }

                goto LABEL_19;
              }

              goto LABEL_24;
            }
          }

          else
          {
          }

LABEL_24:
        }

LABEL_19:

        return;
      }
    }

    else
    {
    }

    goto LABEL_19;
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A4Item_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_6DC10C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6DC148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_6DC198(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_6DC22C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6DC274(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO9AlertKindO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_6DC2E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6DC33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore18PlaybackControllerC12CommandError33_49A4F392108DD8BCF77701E27C865714LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_6DC3D0()
{

  return swift_deallocObject();
}

double block_copy_helper_194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6DC434()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

uint64_t sub_6DC570()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90, &unk_B21980);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_6DC604(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12F90, &unk_B21980);

  return sub_6D9860(a1, a2);
}

uint64_t sub_6DC6C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_6DC700()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DC754()
{

  return swift_deallocObject();
}

uint64_t sub_6DC794(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_17CF8;

  return sub_6D8378(a1, a2, v6, v7, v8);
}

uint64_t sub_6DC854()
{

  return swift_deallocObject();
}

uint64_t sub_6DC88C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_17CF8;

  return sub_6D8640(a1, a2, v7, v6);
}

uint64_t sub_6DC94C()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DC9A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 72);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D7120(a1, a2, v2 + 16, v6);
}

uint64_t sub_6DCA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6DCACC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DCB14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_17CF8;

  return sub_6D9F9C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_6DCBD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6DCC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_6DA94C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_6DCCF0()
{
  v1 = sub_AB31C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_6DCDB4(uint64_t a1)
{
  v4 = *(sub_AB31C0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6DA490(a1, v6, v7, v1 + v5);
}

uint64_t sub_6DCED0()
{

  return swift_deallocObject();
}

uint64_t sub_6DCF40()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DCF88(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_17CF8;

  return sub_6D9F0C(a1, a2, v6, v7, v8);
}

uint64_t sub_6DD048()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_6DD080()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_6DD100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_6D7388(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_6DD1B4()
{

  return swift_deallocObject();
}

uint64_t sub_6DD210()
{

  return swift_deallocObject();
}

uint64_t sub_6DD264()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6DD2A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17CF8;

  return sub_6D4080(a1, v4, v5, v6);
}

uint64_t sub_6DD358()
{

  return swift_deallocObject();
}

unint64_t sub_6DD3A0()
{
  result = qword_E13570;
  if (!qword_E13570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E15EA0, &qword_B21460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13570);
  }

  return result;
}

uint64_t sub_6DD404()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_6DD44C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_17CF8;

  return sub_6C36D4(a1, v4, v5, v7, v6);
}

unint64_t sub_6DD50C()
{
  result = qword_E130A0;
  if (!qword_E130A0)
  {
    sub_13C80(255, &qword_E13098, UISceneSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E130A0);
  }

  return result;
}

uint64_t sub_6DD59C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3C8C(a1, a2, v6);
}

uint64_t sub_6DD648(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3E90(a1, a2, v6);
}

uint64_t sub_6DD6F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3DE4(a1, a2, v6);
}

uint64_t sub_6DD7A0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D3D38(a1, a2, v6);
}

uint64_t sub_6DD84C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D08CC(a1, a2, v6);
}

uint64_t sub_6DD8F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D0974(a1, a2, v6);
}

uint64_t sub_6DD9A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D0A1C(a1, a2, v6);
}

id sub_6DDA50(id result)
{
  if (result >= 6)
  {
    return result;
  }

  return result;
}

uint64_t sub_6DDA68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D1E20(a1, a2, v6);
}

uint64_t sub_6DDB14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D1D80(a1, a2, v6);
}

uint64_t sub_6DDBC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17CF8;

  return sub_6D1210(a1, a2, v6);
}

uint64_t sub_6DDC6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_17BD0;

  return sub_6D12B0(a1, a2, v6);
}

double sub_6DDD18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_6DDE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MPCPlaybackIntent.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_6E05CC(a1, a2, a3, a4);

  sub_52C528(a1, a2, a3, a4);
}

uint64_t PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, void *a10, uint64_t a11)
{
  v44 = a7;
  v49 = a4;
  v50 = a11;
  v43 = sub_AB4C10();
  v48 = *(v43 - 8);
  __chkstk_darwin();
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v46 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PlaybackIntentDescriptor(0);
  v21 = a9 + v20[7];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v22 = a9 + v20[8];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(a9 + v20[9]) = 0;
  *(a9 + v20[10]) = 0;
  *(a9 + v20[11]) = 0;
  v51 = a1;
  sub_6DDE0C(a1, a9);
  if ((a6 & 1) == 0)
  {
    sub_6DECF0(a5, 0, &selRef_setShuffleMode_);
  }

  if ((a8 & 1) == 0)
  {
    sub_6DECF0(v44, 0, &selRef_setRepeatMode_);
  }

  v23 = a2;
  sub_58B5F0(a2, v21);
  *(a9 + v20[5]) = a3;
  v24 = v50;
  *(a9 + v20[6]) = v49;
  sub_15F84(v24, &v52, &qword_E0EA98, &unk_B239F0);
  if (v53)
  {
    sub_70DF8(&v52, v54);
  }

  else
  {
    if (a10)
    {
      v54[0] = a10;
      v25 = a10;
    }

    else
    {
      v54[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F4D8, &unk_B21CC0);
    }

    v26 = sub_AB9380();
    v54[3] = &type metadata for Player.CommandIssuerIdentity;
    v54[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v54[0] = v26;
    v54[1] = v27;
    if (v53)
    {
      sub_12E1C(&v52, &qword_E0EA98, &unk_B239F0);
    }
  }

  sub_160B4(v54, v22, &qword_E0EA98, &unk_B239F0);
  if (!a10)
  {
    goto LABEL_22;
  }

  v28 = [a10 combinedPlayActivityFeatureName];
  sub_AB92A0();

  v29 = UIViewController.inheritedPlayActivityRecommendationData(shouldIncludeForwardedRecommendationData:)(1);
  v31 = v30;
  sub_466A4(0, 0xF000000000000000);

  sub_9007C(v29, v31);

  sub_466A4(v29, v31);
  v32 = a9;
  v33 = v46;
  sub_6DDE0C(v32, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v33;

    v40 = sub_AB9260();

    [v39 setPlayActivityFeatureName:v40];

    if (v31 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      sub_90090(v29, v31);
      isa = sub_AB3250().super.isa;
      sub_466A4(v29, v31);
    }

    [v39 setPlayActivityRecommendationData:{isa, v43}];

    sub_466A4(v29, v31);
LABEL_22:
    sub_12E1C(v24, &qword_E0EA98, &unk_B239F0);
    sub_12E1C(v23, &qword_E130E0, &qword_B21BC0);
    return sub_52C574(v51);
  }

  v34 = v33;
  v35 = v43;
  (*(v48 + 32))(v47, v34, v43);
  v36 = sub_AB4BE0();

  v37 = sub_AB9260();

  [v36 setPlayActivityFeatureName:v37];

  if (v31 >> 60 == 15)
  {
    v38 = 0;
  }

  else
  {
    sub_90090(v29, v31);
    v38 = sub_AB3250().super.isa;
    sub_466A4(v29, v31);
  }

  [v36 setPlayActivityRecommendationData:{v38, v43}];

  sub_466A4(v29, v31);
  sub_12E1C(v24, &qword_E0EA98, &unk_B239F0);
  sub_12E1C(v23, &qword_E130E0, &qword_B21BC0);
  sub_52C574(v51);
  return (*(v48 + 8))(v47, v35);
}

void PlaybackIntentDescriptor.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_AB4C10();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6DDE0C(v5, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v15, v10);
    v16 = sub_AB4BE0();
    sub_6E05CC(a1, a2, a3, a4);
    sub_52C528(a1, a2, a3, a4);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = *v15;
    sub_6E05CC(a1, a2, a3, a4);
    sub_52C528(a1, a2, a3, a4);
  }
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO010underlyingD0So011MPCPlaybackD0Cvg_0()
{
  v1 = v0;
  v2 = sub_AB4C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6DDE0C(v1, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  v8 = sub_AB4BE0();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_466A4(0, 0xF000000000000000);

  sub_9007C(a3, a4);

  sub_466A4(a3, a4);
  return a1;
}

uint64_t PlaybackIntentDescriptor.IntentType.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6 = __chkstk_darwin();
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v8 = a1;
    v12 = v5;
    swift_storeEnumTagMultiPayload();
    sub_6E06E8(v8, a2);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v5 + 56);

    return v10(a2, 1, 1, v4, v6);
  }
}

{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v16 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB4C10();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_12E1C(a1, &qword_E0F4E8, &qword_B19CF0);
    v12 = *(v16 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, a1, v7);
    v14(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_6E06E8(v6, a2);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

id sub_6DEB58(SEL *a1)
{
  v3 = v1;
  v4 = sub_AB4C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6DDE0C(v3, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v9, v4);
    v10 = sub_AB4BE0();
    v11 = [v10 *a1];

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = *v9;
    v11 = [*v9 *a1];
  }

  return v11;
}

void sub_6DECF0(uint64_t a1, char a2, SEL *a3)
{
  v5 = v3;
  v8 = sub_AB4C10();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v18 - v13);
  if (a2)
  {
    v15 = -1;
  }

  else
  {
    v15 = a1;
  }

  sub_6DDE0C(v5, &v18 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    v16 = sub_AB4BE0();
    [v16 *a3];

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v17 = *v14;
    [*v14 *a3];
  }
}

uint64_t PlaybackIntentDescriptor.intentOptions.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.replaceIntent.setter(uint64_t a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.autoSing.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.isSiriIntent.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t PlaybackIntentDescriptor.playActivityInformation.getter()
{
  v1 = v0;
  v2 = sub_AB4C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6DDE0C(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = sub_AB4BE0();
    v9 = MPCPlaybackIntent.playActivityInformation.getter();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = *v7;
    v9 = MPCPlaybackIntent.playActivityInformation.getter();
  }

  return v9;
}

uint64_t MPCPlaybackIntent.playActivityInformation.getter()
{
  v1 = [v0 playActivityFeatureName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_AB92A0();

  v4 = [v0 playActivityRecommendationData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB3260();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  sub_466A4(0, 0xF000000000000000);

  sub_9007C(v6, v8);

  sub_466A4(v6, v8);
  return v3;
}

void (*PlaybackIntentDescriptor.playActivityInformation.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = sub_AB4C10();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[6] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[7] = v8;
  v10 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[8] = v10;
  v11 = *(*(v10 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[9] = swift_coroFrameAlloc();
    v4[10] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[9] = malloc(v11);
    v4[10] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[11] = v12;
  sub_6DDE0C(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v13, v5);
    v14 = sub_AB4BE0();
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v5);
  }

  else
  {
    v22 = *v13;
    v15 = MPCPlaybackIntent.playActivityInformation.getter();
    v17 = v23;
    v19 = v24;
    v21 = v25;
  }

  *v4 = v15;
  v4[1] = v17;
  v4[2] = v19;
  v4[3] = v21;
  return sub_6DF788;
}

void sub_6DF788(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_6DDE0C(v7, v2[9]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = v2[9];
    if (EnumCaseMultiPayload == 1)
    {
      v11 = v2[6];
      v10 = v2[7];
      v12 = v2[5];
      (*(v11 + 32))(v10, v9, v12);
      sub_52C4DC(v4, v3, v6, v5);
      v13 = sub_AB4BE0();
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      v20 = *v9;
      sub_52C4DC(v4, v3, v6, v5);
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
    sub_52C528(*v2, v2[1], v2[2], v2[3]);
  }

  else
  {
    sub_6DDE0C(v7, v2[10]);
    v14 = swift_getEnumCaseMultiPayload();
    v15 = v2[10];
    if (v14 == 1)
    {
      v17 = v2[6];
      v16 = v2[7];
      v18 = v2[5];
      (*(v17 + 32))(v16, v15, v18);
      v19 = sub_AB4BE0();
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);

      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v25 = *v15;
      sub_6E05CC(v4, v3, v6, v5);
      sub_52C528(v4, v3, v6, v5);
    }

    v22 = v2[10];
    v21 = v2[11];
    v23 = v2[9];
    v24 = v2[7];
  }

  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t PlaybackIntentDescriptor.forceSharePlayPrompt.setter(char a1)
{
  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.recommendationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_466A4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void (*MPCPlaybackIntent.playActivityInformation.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = MPCPlaybackIntent.playActivityInformation.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_6DFB80;
}

void sub_6DFB80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_52C4DC(v3, v4, v5, v6);
    sub_6E05CC(v3, v4, v5, v6);
    sub_52C528(v3, v4, v5, v6);
    v7 = *v2;
    v8 = v2[1];
    v9 = v2[2];
    v10 = v2[3];
  }

  else
  {
    sub_6E05CC(v3, v4, v5, v6);
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  sub_52C528(v7, v8, v9, v10);

  free(v2);
}

unint64_t PlaybackIntentDescriptor.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_AB4C10();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 0xD000000000000019;
  v25 = 0x8000000000B70990;
  strcpy(&v21, "intent=");
  v21._object = 0xE700000000000000;
  sub_6DDE0C(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v7, v2);
    v8 = sub_AB4BE0();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v8 = *v7;
  }

  v9 = [v8 description];
  v10 = sub_AB92A0();
  v12 = v11;

  v26._countAndFlagsBits = v10;
  v26._object = v12;
  sub_AB94A0(v26);

  v27._countAndFlagsBits = 8236;
  v27._object = 0xE200000000000000;
  sub_AB94A0(v27);
  sub_AB94A0(v21);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_ABAD90(16);

  strcpy(&v21, "shuffleMode=");
  BYTE5(v21._object) = 0;
  HIWORD(v21._object) = -5120;
  v19._countAndFlagsBits = sub_6DEB58(&selRef_shuffleMode);
  LOBYTE(v19._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13150, &qword_B21CD0);
  v28._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v28);

  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  sub_AB94A0(v29);
  sub_AB94A0(v21);

  strcpy(&v21, "repeatMode=");
  HIDWORD(v21._object) = -352321536;
  v19._countAndFlagsBits = sub_6DEB58(&selRef_repeatMode);
  LOBYTE(v19._object) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13158, &unk_B21CD8);
  v30._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v30);

  v31._countAndFlagsBits = 8236;
  v31._object = 0xE200000000000000;
  sub_AB94A0(v31);
  sub_AB94A0(v21);

  strcpy(&v21, "options=");
  BYTE1(v21._object) = 0;
  WORD1(v21._object) = 0;
  HIDWORD(v21._object) = -402653184;
  v13 = type metadata accessor for PlaybackIntentDescriptor(0);
  v19._countAndFlagsBits = *(v1 + v13[5]);
  type metadata accessor for MPCPlaybackIntentOptions(0);
  v32._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v32);

  v33._countAndFlagsBits = 8236;
  v33._object = 0xE200000000000000;
  sub_AB94A0(v33);
  sub_AB94A0(v21);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_ABAD90(19);

  v21._countAndFlagsBits = 0x206563616C706572;
  v21._object = 0xEF3D746E65746E69;
  v19._countAndFlagsBits = *(v1 + v13[6]);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v34._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v34);

  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  sub_AB94A0(v35);
  sub_AB94A0(v21);

  v36._object = 0x8000000000B709B0;
  v36._countAndFlagsBits = 0xD000000000000012;
  sub_AB94A0(v36);
  sub_15F84(v1 + v13[7], &v19, &qword_E130E0, &qword_B21BC0);
  if (v20)
  {
    sub_70DF8(&v19._countAndFlagsBits, &v21);
    sub_E8BA0(&v21, &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E130E8, &qword_B21BD0);
    v19._countAndFlagsBits = sub_AB9350();
    v19._object = v14;
    v37._countAndFlagsBits = 8236;
    v37._object = 0xE200000000000000;
    sub_AB94A0(v37);
    sub_AB94A0(v19);

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  else
  {
    sub_12E1C(&v19, &qword_E130E0, &qword_B21BC0);
    v38._countAndFlagsBits = 0x202C656E6F6ELL;
    v38._object = 0xE600000000000000;
    sub_AB94A0(v38);
  }

  v39._countAndFlagsBits = 0x3D726575737369;
  v39._object = 0xE700000000000000;
  sub_AB94A0(v39);
  sub_15F84(v1 + v13[8], &v19, &qword_E0EA98, &unk_B239F0);
  if (v20)
  {
    sub_70DF8(&v19._countAndFlagsBits, &v21);
    v15 = v22;
    v16 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    v19._countAndFlagsBits = (*(v16 + 8))(v15, v16);
    v19._object = v17;
    v40._countAndFlagsBits = 8236;
    v40._object = 0xE200000000000000;
    sub_AB94A0(v40);
    sub_AB94A0(v19);

    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  else
  {
    sub_12E1C(&v19, &qword_E0EA98, &unk_B239F0);
    v41._countAndFlagsBits = 0x6669636570736E75;
    v41._object = 0xEC0000003D646569;
    sub_AB94A0(v41);
  }

  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  sub_AB94A0(v42);
  return v24;
}

uint64_t _s9MusicCore24PlaybackIntentDescriptorV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB4C10();
  v27 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v26 - v7;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v26 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E132B8, &qword_B21E48);
  __chkstk_darwin();
  v14 = &v26 - v13;
  v16 = *(v15 + 56);
  sub_6DDE0C(a1, &v26 - v13);
  sub_6DDE0C(a2, &v14[v16]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_6DDE0C(v14, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v27;
      v18 = *(v27 + 32);
      v18(v8, v10, v4);
      v18(v6, &v14[v16], v4);
      sub_13C80(0, &qword_E112E0, NSObject_ptr);
      v19 = sub_AB4BE0();
      v20 = sub_AB4BE0();
      v21 = sub_ABA790();

      v22 = *(v17 + 8);
      v22(v6, v4);
      v22(v8, v4);
LABEL_9:
      sub_52C574(v14);
      return v21 & 1;
    }

    (*(v27 + 8))(v10, v4);
  }

  else
  {
    sub_6DDE0C(v14, v12);
    v23 = *v12;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *&v14[v16];
      sub_13C80(0, &qword_E112E0, NSObject_ptr);
      v21 = sub_ABA790();

      goto LABEL_9;
    }
  }

  sub_12E1C(v14, &qword_E132B8, &qword_B21E48);
  v21 = 0;
  return v21 & 1;
}

void sub_6E05CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    v7 = sub_AB9260();

    [v4 setPlayActivityFeatureName:v7];

    if (a4 >> 60 != 15)
    {
      sub_90090(a3, a4);
      isa = sub_AB3250().super.isa;
      sub_466A4(a3, a4);
      v8 = isa;
      goto LABEL_6;
    }
  }

  else
  {
    [v4 setPlayActivityFeatureName:{0, a4}];
  }

  v8 = 0;
LABEL_6:
  v10 = v8;
  [v4 setPlayActivityRecommendationData:?];
}

uint64_t sub_6E06E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6E0760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
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

uint64_t sub_6E0840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_6E08FC(uint64_t a1)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MPCPlaybackIntentOptions(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MPCPlayerTracklistReplaceIntent(319);
      if (v3 <= 0x3F)
      {
        sub_AFE18(319, &unk_E131C8, &qword_E130E8, &qword_B21BD0);
        if (v4 <= 0x3F)
        {
          sub_AFE18(319, &qword_E0EBF0, &unk_E0EBF8, &qword_B21D60);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_6E0A04(uint64_t a1)
{
  result = sub_13C80(319, &qword_E12D18, MPCPlaybackIntent_ptr);
  if (v2 <= 0x3F)
  {
    result = sub_AB4C10();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t PlaybackTimeObserver.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PlaybackTimeObserver.init(name:)(a1, a2);
  return v4;
}

uint64_t PlaybackTimeObserver.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = xmmword_AF89D0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_13C80(0, &qword_E132C8, CADisplayLink_ptr);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = CADisplayLink.init(handler:)(sub_6E0CD0, v6);
  swift_unownedRelease();
  v8 = [objc_opt_self() mainRunLoop];
  [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];

  [v7 setPaused:1];
  [v7 setPreferredFramesPerSecond:30];
  v9 = *(v3 + 128);
  *(v3 + 128) = v7;

  return v3;
}

uint64_t sub_6E0C98()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

double sub_6E0CD0()
{
  swift_unownedRetainStrong();
  sub_6E0D10();

  return result;
}

void sub_6E0D10()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 104);
  if (v2 == 2)
  {
    if (qword_E0CEB8 != -1)
    {
      swift_once();
    }

    v3 = sub_AB4BC0();
    __swift_project_value_buffer(v3, qword_E72038);

    v4 = sub_AB4BA0();
    v5 = sub_AB9F50();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v25[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_500C84(*(v1 + 16), *(v1 + 24), v25);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
LABEL_19:
      swift_getKeyPath();
      __chkstk_darwin();
      v25[0] = v1;
      sub_6E1C38();
      sub_AB3980();

      return;
    }

LABEL_14:
    *(v1 + 40) = 0;
    *(v1 + 48) = v8;
    return;
  }

  if (v2)
  {
    if (qword_E0CEB8 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_E72038);

    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_500C84(*(v1 + 16), *(v1 + 24), v25);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    v8 = *(v1 + 48);
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v14 = *(v0 + 80);
  v15 = *(v0 + 96);
  if (v14 <= 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    sub_AB32C0();
    v19 = v16 + (v18 - v17) * v15;
    if (v19 >= v14)
    {
      v19 = v14;
    }

    v20 = fmax(v19, 0.0) / v14;
  }

  sub_6E1CDC(*&v20, 0);
  sub_AB32C0();
  v22 = v21;
  swift_beginAccess();
  v23 = vabdd_f64(v22, *(v0 + 152));
  v24 = fabsf(v15);
  if (v24 <= 1.0)
  {
    v24 = 1.0;
  }

  if (v23 >= (1.0 / v24))
  {
    *(v0 + 152) = v22;
  }
}

uint64_t PlaybackTimeObserver.deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_AB39D0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t PlaybackTimeObserver.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = OBJC_IVAR____TtC9MusicCore20PlaybackTimeObserver___observationRegistrar;
  v3 = sub_AB39D0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_6E12CC()
{
  if (qword_E0CEB8 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, qword_E72038);

  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_500C84(*(v0 + 16), *(v0 + 24), v42);
    _os_log_impl(&dword_0, v2, v3, "📺 %{public}s: Updating DisplayLink…", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = sub_AB4BA0();
  v7 = sub_AB9F50();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = *(v0 + 120);

    _os_log_impl(&dword_0, v6, v7, "   — isBackgrounded: %{BOOL,public}d", v8, 8u);
  }

  else
  {
  }

  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    swift_beginAccess();
    *(v11 + 4) = *(v0 + 32);

    _os_log_impl(&dword_0, v9, v10, "   — automaticallyUpdates: %{BOOL,public}d", v11, 8u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v0 + 32) != 1 || (*(v0 + 120) & 1) != 0 || (swift_beginAccess(), v12 = *(v0 + 104), v12 == 2))
  {
    v13 = sub_AB4BA0();
    v14 = sub_AB9F50();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "   — Null Snapshot", v15, 2u);
    }

    v16 = 1;
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 56);
    v26 = sub_AB4BA0();
    v27 = sub_AB9F50();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136446210;
      v42[1] = v40;
      v42[0] = v41;
      v43 = v25;
      v44 = v24;
      v45 = v12 & 0x101;
      v46 = BYTE2(v12) & 1;
      type metadata accessor for MPCPlayerItemDurationSnapshot(0);
      v30 = sub_AB9350();
      v32 = sub_500C84(v30, v31, &v47);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v26, v27, "   — Snapshot: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
    }

    v33 = v24 & 0x7FFFFFFF;
    v34 = sub_AB4BA0();
    v35 = sub_AB9F50();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67240192;
      *(v36 + 4) = v12 & 1;
      _os_log_impl(&dword_0, v34, v35, "   — isLiveContent: %{BOOL,public}d", v36, 8u);
    }

    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67240192;
      *(v39 + 4) = v33 == 0;
      _os_log_impl(&dword_0, v37, v38, "   — isRateNull: %{BOOL,public}d", v39, 8u);
    }

    v16 = v12 | (v33 == 0);
  }

  v17 = sub_AB4BA0();
  v18 = sub_AB9F50();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67240192;
    *(v19 + 4) = v16 & 1;
    _os_log_impl(&dword_0, v17, v18, " -> should pause: %{BOOL,public}d", v19, 8u);
  }

  v20 = *(v0 + 128);
  if (v20)
  {
    [v20 setPaused:v16 & 1];
  }

  swift_beginAccess();
  if (!*(v0 + 112))
  {
    v21 = sub_AB4BA0();
    v22 = sub_AB9F30();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "No window scene associated! This could lead to a major power regression when the app is backgrounded!", v23, 2u);
    }
  }
}

void PlaybackTimeObserver.automaticallyUpdates.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 32);
  *(v1 + 32) = a1;
  if (v4 != v3)
  {
    sub_6E12CC();
  }
}

void (*PlaybackTimeObserver.automaticallyUpdates.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_6E1A84;
}

void sub_6E1A84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 32);
  *(v2 + 32) = v3;
  if (v3 != v4)
  {
    sub_6E12CC();
  }

  free(v1);
}

uint64_t PlaybackTimeObserver.effectiveElapsedTime.getter()
{
  swift_getKeyPath();
  sub_6E1C38();
  sub_AB3990();

  return *(v0 + 40);
}

void sub_6E1B4C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_6E1C38();
  sub_AB3990();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

unint64_t sub_6E1C38()
{
  result = qword_E132D0;
  if (!qword_E132D0)
  {
    type metadata accessor for PlaybackTimeObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E132D0);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackTimeObserver(uint64_t a1)
{
  result = qword_E13300;
  if (!qword_E13300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_6E1CDC(uint64_t a1, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 40);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&a1;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  __chkstk_darwin();
  sub_6E1C38();
  sub_AB3980();

  return result;
}

void sub_6E1DE4()
{
  v1 = v0;
  if (qword_E0CEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E72038);

  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E0, &qword_B21F80);
    v7 = sub_AB9350();
    v9 = sub_500C84(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v3, v4, "Received new snapshot=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  sub_AB32C0();
  v11 = v10;
  swift_beginAccess();
  *(v1 + 152) = v11;
  sub_6E0D10();
  sub_6E12CC();
}

__n128 PlaybackTimeObserver.durationSnapshot.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  result = *(v1 + 88);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void PlaybackTimeObserver.durationSnapshot.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 104) = *(a1 + 48);
  sub_6E1DE4();
}

void (*PlaybackTimeObserver.durationSnapshot.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6E20C4;
}

void sub_6E20C4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_6E1DE4();
  }
}

double sub_6E20F8(id a1)
{
  v2 = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  if (!v5)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (a1)
  {
    sub_13C80(0, &qword_E133D8, UIWindowScene_ptr);
    v6 = v5;
    a1 = a1;
    v7 = sub_ABA790();

    if (v7)
    {
      return result;
    }

    v5 = *(v2 + 112);
    if (!v5)
    {
LABEL_13:
      v27 = qword_E0CEB8;
      v28 = a1;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = sub_AB4BC0();
      __swift_project_value_buffer(v29, qword_E72038);
      v30 = v28;

      v31 = sub_AB4BA0();
      v32 = sub_AB9F50();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v33 = 136446466;
        *(v33 + 4) = sub_500C84(*(v2 + 16), *(v2 + 24), &v41);
        *(v33 + 12) = 2082;
        v34 = v30;
        v35 = [v34 description];
        v36 = sub_AB92A0();
        v38 = v37;

        v39 = sub_500C84(v36, v38, &v41);

        *(v33 + 14) = v39;
        _os_log_impl(&dword_0, v31, v32, "%{public}s: Removed windowScene=%{public}s", v33, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v40 = *(v2 + 120);
      *(v2 + 120) = 0;
      if (v40 == 1)
      {
        sub_6E12CC();
      }

      *(v2 + 136) = 0;

      v26 = 0;
      goto LABEL_21;
    }
  }

  v8 = qword_E0CEB8;
  v9 = v5;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, qword_E72038);
  v11 = v9;

  v12 = sub_AB4BA0();
  v13 = sub_AB9F50();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_500C84(*(v2 + 16), *(v2 + 24), &v41);
    *(v14 + 12) = 2082;
    v15 = v11;
    v16 = [v15 description];
    v17 = sub_AB92A0();
    v19 = v18;

    v20 = sub_500C84(v17, v19, &v41);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_0, v12, v13, "%{public}s: Received windowScene=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = [v11 activationState] == &dword_0 + 2;
  v22 = *(v2 + 120);
  *(v2 + 120) = v21;
  if (v21 != v22)
  {
    sub_6E12CC();
  }

  v23 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v24 = v11;
  *(v2 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, v5, 1, 1, sub_6E2AC0, v23);

  v25 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v26 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillEnterForegroundNotification, v5, 1, 1, sub_6E2AC8, v25);
LABEL_21:
  *(v2 + 144) = v26;

  return result;
}

double sub_6E2650(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 120);
    *(Strong + 120) = 1;
    if ((v4 & 1) == 0)
    {
      sub_6E12CC();
    }
  }

  return result;
}

double sub_6E26B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 120);
    *(Strong + 120) = 0;
    if (v4 == 1)
    {
      sub_6E12CC();
    }
  }

  return result;
}

void *PlaybackTimeObserver.windowScene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void PlaybackTimeObserver.windowScene.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;
  sub_6E20F8(v3);
}

void (*PlaybackTimeObserver.windowScene.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 112);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_6E285C;
}

void sub_6E285C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = *v5;
  v8 = v4;
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    sub_6E20F8(v7);

    v7 = *v5;
  }

  else
  {
    sub_6E20F8(v7);
  }

  free(v3);
}

uint64_t sub_6E2934(uint64_t a1, __n128 a2)
{
  result = sub_AB39D0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_6E2A0C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E72038);
  __swift_project_value_buffer(v0, qword_E72038);
  return sub_AB4BB0();
}

uint64_t sub_6E2A88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_6E2AD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

uint64_t static Player.CommandIssuer<>.reflection(of:)(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F4D8, &unk_B21CC0);
  }

  return sub_AB9380();
}

uint64_t Player.CommandIssuerIdentity.init(_:)(uint64_t a1)
{
  v2 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  v3 = sub_AB31C0();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F4D8, &unk_B21CC0);
  }

  return sub_AB9380();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8, &qword_B21F88);
  sub_6E2D18();
  v1 = sub_AB9140();

  return v1;
}

uint64_t sub_6E2CC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_6E2D18()
{
  result = qword_E133F0;
  if (!qword_E133F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E133E8, &qword_B21F88);
    sub_6E2D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E133F0);
  }

  return result;
}

unint64_t sub_6E2D9C()
{
  result = qword_E133F8;
  if (!qword_E133F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E13400, &qword_B21F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E133F8);
  }

  return result;
}

uint64_t Player.CommandIssuerIdentity.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13408, &qword_B21F98);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF85F0;
  *(v6 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v6 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  sub_E8BA0(a1, v6 + 72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8, &qword_B21F88);
  sub_6E2D18();
  v7 = sub_AB9140();

  return v7;
}

uint64_t Player.CommandIssuer.appending(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13408, &qword_B21F98);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF85F0;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v3, a2);
  sub_E8BA0(a1, v7 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8, &qword_B21F88);
  sub_6E2D18();
  v9 = sub_AB9140();

  return v9;
}

uint64_t static Player.CommandIssuer<>.url(_:)(uint64_t a1)
{
  v2 = sub_AB31C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t static Player.CommandIssuer<>.combining(_:)(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E133E8, &qword_B21F88);
  sub_6E2D18();
  v1 = sub_AB9140();

  return v1;
}

uint64_t Player.CommandIssuer<>.commandIssuingIdentifier.getter()
{
  sub_AB96D0();
  return v1;
}

{
  sub_ABADB0();
  return v1;
}

unint64_t sub_6E3224(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_ABAD90(29);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  sub_AB94A0(v9);
  v10._countAndFlagsBits = 0x3A656C746974202CLL;
  v10._object = 0xE800000000000000;
  sub_AB94A0(v10);
  v11._countAndFlagsBits = a3;
  v11._object = a4;
  sub_AB94A0(v11);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  return 0xD000000000000010;
}

unint64_t sub_6E32F0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  sub_ABAD90(29);

  v26 = 0xD000000000000010;
  v27 = 0x8000000000B70AE0;
  v28._countAndFlagsBits = a1;
  v28._object = a2;
  sub_AB94A0(v28);
  v29._countAndFlagsBits = 0x3A656C746974202CLL;
  v29._object = 0xE800000000000000;
  sub_AB94A0(v29);
  v30._countAndFlagsBits = a3;
  v30._object = a4;
  sub_AB94A0(v30);
  v31._countAndFlagsBits = 41;
  v31._object = 0xE100000000000000;
  sub_AB94A0(v31);
  v14 = 0xD000000000000010;
  if (a7[7])
  {
    v23 = a5;
    v24 = a6;
    v15 = a7[2];
    v16 = a7[3];
    v18 = *a7;
    v17 = a7[1];
    sub_ABAD90(26);

    strcpy(&v25, "Alert(title:");
    BYTE5(v25._object) = 0;
    HIWORD(v25._object) = -5120;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    v32._countAndFlagsBits = v18;
    v32._object = v19;
    sub_AB94A0(v32);

    v33._countAndFlagsBits = 0x67617373656D202CLL;
    v33._object = 0xEA00000000003A65;
    sub_AB94A0(v33);
    if (v16)
    {
      v20 = v15;
    }

    else
    {
      v20 = 0;
    }

    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v34._countAndFlagsBits = v20;
    v34._object = v21;
    sub_AB94A0(v34);

    sub_AB94A0(v25);

    sub_17654(v23, v24);

    sub_6E352C(a7);
    return v26;
  }

  else
  {

    sub_17654(a5, a6);
  }

  return v14;
}

uint64_t sub_6E352C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F9B0, &qword_B1EF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6E35BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_15F84(a3, v22 - v9, &qword_E0E340, &qword_B18550);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E0E340, &qword_B18550);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_AB93A0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_12E1C(a3, &qword_E0E340, &qword_B18550);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12E1C(a3, &qword_E0E340, &qword_B18550);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_6E3868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_15F84(a3, v21 - v8, &qword_E0E340, &qword_B18550);
  v10 = sub_AB9990();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_12E1C(v9, &qword_E0E340, &qword_B18550);
  }

  else
  {
    sub_AB9980();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_AB98B0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_AB93A0() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E08, &qword_B228D8);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_12E1C(a3, &qword_E0E340, &qword_B18550);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12E1C(a3, &qword_E0E340, &qword_B18550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E08, &qword_B228D8);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_6E3B24(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_ABAFB0();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13D88, &unk_B22870);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_522338(a1);
    if (v5)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

char *Player.state<A>(for:)(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_ABA0A0();
  type metadata accessor for MusicItemState(0, a2, a3, v8);

  v10 = sub_6FB254(a1, v7, v3, v9);

  return v10;
}

uint64_t sub_6E3C90()
{
  sub_AB7C10();
  sub_6FC5D8(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50, &qword_B1C580);
  sub_36A00(&qword_E13DA0, &unk_E11A50, &qword_B1C580, &protocol conformance descriptor for [A]);
  return sub_ABABB0();
}

uint64_t sub_6E3D7C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E72050);
  __swift_project_value_buffer(v0, qword_E72050);
  return sub_AB4BB0();
}

uint64_t Player.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine);
  v2 = [v1 playerID];
  v3 = sub_AB92A0();

  sub_6BDA80(v1);
  v4 = [v1 fallbackPlaybackIntent];
  return v3;
}

id Player.audioAnalyzer.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MusicCore6Player_engine) audioAnalyzer];

  return v1;
}

void *Player.sampleReceiver.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for SampleReceiver();
    v1 = swift_allocObject();
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = 0;
    *(v0 + 16) = v1;
  }

  return v1;
}

double Player.sampleReceiver.setter(uint64_t a1)
{
  *(v1 + 16) = a1;

  return result;
}

double (*Player.sampleReceiver.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Player.sampleReceiver.getter();
  return sub_6E3F74;
}

double sub_6E3F74(uint64_t *a1)
{
  *(a1[1] + 16) = *a1;

  return result;
}

uint64_t Player.__allocating_init()()
{
  v0 = swift_allocObject();
  Player.init()();
  return v0;
}

char *Player.init()()
{
  v1 = v0;
  v102 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v113 = &v89 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0F510, &qword_B19DB8);
  __chkstk_darwin();
  v112 = &v89 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13420, &qword_B22050);
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin();
  v103 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13428, &qword_B22058);
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin();
  v106 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13430, &unk_B22060);
  v110 = *(v8 - 8);
  v111 = v8;
  __chkstk_darwin();
  v107 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin();
  v98 = &v89 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13440, &qword_B22070);
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v89 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13448, &unk_B22078);
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v14 = &v89 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090, &qword_B21AB0);
  v15 = *(v97 - 8);
  __chkstk_darwin();
  v17 = &v89 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13458, &unk_B22088);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v89 - v20;
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  v101 = objc_opt_self();
  v22 = [v101 systemRoute];
  v23 = [v22 isDeviceRoute];
  v24 = objc_opt_self();
  v25 = v24;
  if (v23)
  {
    if (qword_E0CE90 != -1)
    {
      swift_once();
    }

    v26 = sub_AB9260();
    v27 = [v25 systemMusicPathWithRoute:v22 playerID:v26];
  }

  else
  {
    v27 = [v24 pathWithRoute:v22 bundleID:0 playerID:0];
  }

  v28 = OBJC_IVAR____TtC9MusicCore6Player__path;
  aBlock = v27;
  sub_13C80(0, &qword_E0E978, MPCPlayerPath_ptr);
  sub_AB54D0();
  (*(v19 + 32))(&v1[v28], v21, v18);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver] = 0;
  v29 = OBJC_IVAR____TtC9MusicCore6Player__nowPlaying;
  aBlock = 0;
  v30 = v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13480, &unk_B214D0);
  sub_AB54D0();
  v31 = *(v15 + 32);
  v32 = v97;
  v90 = v31;
  v31(&v1[v29], v17, v97);
  v33 = OBJC_IVAR____TtC9MusicCore6Player__nowPlayingPath;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13490, &qword_B22098);
  sub_AB54D0();
  (*(v92 + 32))(&v1[v33], v14, v93);
  v34 = OBJC_IVAR____TtC9MusicCore6Player__sharePlayTogetherSession;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E134A0, &unk_B220A0);
  v35 = v94;
  sub_AB54D0();
  (*(v95 + 32))(&v1[v34], v35, v96);
  v36 = OBJC_IVAR____TtC9MusicCore6Player__isHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  v37 = v98;
  sub_AB54D0();
  v38 = v100;
  v39 = *(v99 + 32);
  v39(&v1[v36], v37, v100);
  v40 = OBJC_IVAR____TtC9MusicCore6Player__isEligibleForHostingSharePlayTogetherSession;
  LOBYTE(aBlock) = 0;
  sub_AB54D0();
  v39(&v1[v40], v37, v38);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken] = 0;
  v41 = &v1[OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration];
  if (qword_E0CEC8 != -1)
  {
    swift_once();
  }

  v42 = qword_E13410;
  *v41 = qword_E13410;
  *(v41 + 1) = v42;
  *(v41 + 2) = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_routingController] = 0;
  v1[OBJC_IVAR____TtC9MusicCore6Player_engineState] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady] = _swiftEmptyArrayStorage;
  v43 = OBJC_IVAR____TtC9MusicCore6Player__playerResponse;
  aBlock = 0;
  v44 = v42;
  sub_AB54D0();
  v90(&v1[v43], v30, v32);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = 0;
  v45 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  *&v1[v45] = sub_52AED0(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = 0;
  v46 = OBJC_IVAR____TtC9MusicCore6Player_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v46] = UnfairLock.init()();
  if (qword_E0CE90 != -1)
  {
    swift_once();
  }

  v47 = qword_E71FE8;
  v48 = unk_E71FF0;
  v49 = objc_allocWithZone(MPCPlaybackEngine);
  v50 = sub_AB9260();
  v51 = [v49 initWithPlayerID:v50];

  v52 = v51;
  sub_6BDB68(v47, v48);

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine] = v52;
  [v52 becomeActive];
  v53 = OBJC_IVAR____TtC9MusicCore6Player_engine;
  v54 = *&v1[OBJC_IVAR____TtC9MusicCore6Player_engine];

  v55 = sub_6BDA80(v54);
  LOBYTE(v54) = sub_473110(4u, v55);

  if (v54)
  {
    v56 = *&v1[v53];
    v118 = sub_6E5258;
    v119 = 0;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_3FC190;
    v117 = &block_descriptor_15_4;
    v57 = _Block_copy(&aBlock);
    v58 = v56;
    [v58 restoreStateWithCompletion:v57];
    _Block_release(v57);
  }

  v59 = v101;
  v60 = [v101 systemRoute];
  v61 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v60 outputDeviceRoute:0];
  v62 = [objc_opt_self() sharedController];
  [v62 setActiveDataSource:v61];

  v63 = swift_allocObject();
  v64 = v102;
  *(v63 + 16) = v1;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_6FB2EC;
  *(v65 + 24) = v63;
  v118 = sub_6FB32C;
  v119 = v65;
  aBlock = _NSConcreteStackBlock;
  v115 = 1107296256;
  v116 = sub_780C4;
  v117 = &block_descriptor_195;
  v66 = _Block_copy(&aBlock);

  [v59 getActiveRouteWithTimeout:v66 completion:1.0];

  _Block_release(v66);
  v67 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v68 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *&v1[OBJC_IVAR____TtC9MusicCore6Player_activeSystemRouteDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v67, 0, 1, 1, sub_6FE224, v68);

  v69 = MRAVEndpointGroupSessionInfoDidChangeNotification;
  v70 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherSessionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v69, 0, 1, 1, sub_6FB34C, v70);

  v71 = MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification;
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = v71;

  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_sharePlayTogetherEligibilityObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v73, 0, 1, 1, sub_6FB384, v72);

  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13520, &unk_B1BFB8);
  v74 = v103;
  sub_AB54E0();
  swift_endAccess();
  sub_36A00(&unk_E13528, &qword_E13420, &qword_B22050, &protocol conformance descriptor for Published<A>.Publisher);
  v75 = v105;
  v76 = v106;
  sub_AB5570();
  (*(v104 + 8))(v74, v75);
  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v77 = sub_ABA150();
  aBlock = v77;
  v78 = sub_ABA130();
  v79 = v112;
  (*(*(v78 - 8) + 56))(v112, 1, 1, v78);
  sub_36A00(&qword_E13538, &qword_E13428, &qword_B22058, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_6FB3BC();
  v80 = v107;
  v81 = v109;
  sub_AB5590();
  sub_12E1C(v79, &qword_E0F510, &qword_B19DB8);

  (*(v108 + 8))(v76, v81);
  sub_36A00(&qword_E13548, &unk_E13430, &unk_B22060, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v82 = v111;
  v83 = sub_AB55C0();
  (*(v110 + 8))(v80, v82);
  *&v1[OBJC_IVAR____TtC9MusicCore6Player_ratingWarningThresholdSubscription] = v83;

  v84 = v113;
  sub_AB9960();
  v85 = sub_AB9990();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  sub_AB9940();

  v86 = sub_AB9930();
  v87 = swift_allocObject();
  v87[2] = v86;
  v87[3] = &protocol witness table for MainActor;
  v87[4] = v1;
  sub_50D600(0, 0, v84, &unk_B220B8, v87);

  sub_12E1C(v84, &qword_E0E340, &qword_B18550);
  return v1;
}

void sub_6E5258(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v2 = sub_AB4BC0();
    __swift_project_value_buffer(v2, qword_E72050);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v3 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E60, &qword_B21A88);
      v6 = sub_AB9350();
      v8 = sub_500C84(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_0, oslog, v3, "Restoration Failed with error=%{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_6E5400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_6E5498, v6, v5);
}

uint64_t sub_6E5498()
{

  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Got MRAVEndpointGroupSessionInfoDidChange notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_6F4E10();
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_6E55C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_AB9940();
  v9 = sub_AB9930();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = Strong;
  sub_5E89D8(0, 0, v6, a4, v10);

  return result;
}

uint64_t sub_6E5700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_6E5798, v6, v5);
}

uint64_t sub_6E5798()
{

  if (qword_E0CF28 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Got MRAVEndpointGroupSessionHostingEligibilityDidChangeNotification notification", v4, 2u);
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    sub_6F4E10();
  }

  v6 = *(v0 + 8);

  return v6();
}

double sub_6E58C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;

  return result;
}

void sub_6E5910(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t sub_6E59B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_AB9940();
  v4[4] = sub_AB9930();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_6E5A68;

  return Player.startEngineIfNeeded()();
}

uint64_t sub_6E5A68()
{

  v1 = sub_AB98B0();

  return _swift_task_switch(sub_6E5BA4, v1, v0);
}

uint64_t sub_6E5BA4()
{

  sub_6F4E10();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = sub_AB9940();
  v1[18] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_6E5CA8, v3, v2);
}

uint64_t sub_6E5CA8()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      sub_6F1420(0);
    }

    v3 = sub_AB9930();
    v0[21] = v3;
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return _swift_task_switch(sub_6E5DC4, v4, v6);
  }
}

uint64_t sub_6E5DC4()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_6E5F44;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_5069FC(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_5069FC((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_6FB4DC;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6E5F44()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_6E604C, v2, v1);
}

uint64_t sub_6E604C()
{

  v1 = *(v0 + 8);

  return v1();
}

double Player.engineDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [*(v1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:a1];
  swift_unknownObjectRelease();
  return result;
}

void (*Player.engineDelegate.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6E61B8;
}

void sub_6E61B8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_engine);
    v6 = *(v4 + 24);

    [v5 setDelegate:v6];
  }
}

void sub_6E621C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

double sub_6E629C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  sub_AB5520();
  return sub_6E6318();
}

double sub_6E6318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = sub_6F1B40();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v18);

  v5 = v18;
  v6 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
  v7 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
  *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
  sub_13C80(0, &qword_E0E978, MPCPlayerPath_ptr);
  v8 = v5;
  if ((sub_ABA790() & 1) == 0)
  {
    v9 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v10 = [v9 request];
    if (v10)
    {
      v11 = *&v4[v6];
      v12 = v10;
      [v10 setPlayerPath:v11];
    }

    [v9 setNeedsReloadForSignificantRequestChange];
  }

  v13 = sub_AB9990();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_AB9940();

  v14 = sub_AB9930();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v1;
  sub_5E89D8(0, 0, v3, &unk_B22920, v15);

  return result;
}

uint64_t sub_6E653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_6E65D4, v6, v5);
}

uint64_t sub_6E65D4()
{

  sub_6F4E10();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Player.path.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v1);

  return v1;
}

uint64_t sub_6E66AC(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13DC8, &unk_B228A0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13458, &unk_B22088);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Player.nowPlayingObserver.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingObserver);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Player.NowPlayingObserver(0);
    swift_allocObject();

    v2 = sub_6FB50C(v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t Player.NowPlayingObserver.__allocating_init(player:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_6FB50C(a1);

  return v2;
}

uint64_t sub_6E693C(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0, &qword_B21460);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090, &qword_B21AB0);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_6E6AF0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_AB5520();
}

uint64_t sub_6E6B7C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DC0, &qword_B22898);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13448, &unk_B22078);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_6E6D1C(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v5 = &v15 - v4;
  if (!a1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  sub_AB5510(&v16);

  v7 = v16;
  if (v16)
  {
    type metadata accessor for SharePlayTogetherSession(0);
    v8 = sub_ABA790();

    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = sub_AB9990();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_AB9940();
  v10 = v6;

  v11 = sub_AB9930();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v2;
  v12[5] = v10;
  sub_5E89D8(0, 0, v5, &unk_B22868, v12);

LABEL_7:

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v16);

  if (v16)
  {
    v13 = v16[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost];
  }

  else
  {
    v13 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16) = v13;

  return sub_AB5520();
}

uint64_t sub_6E6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_AB9940();
  v5[10] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_6E7028, v7, v6);
}

uint64_t sub_6E7028()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v0 + 2);

  v1 = v0[2];
  if (v1)
  {
    if (SharePlayTogetherSession.isEquivalent(to:)(v0[2]))
    {
      v2 = v0[9];
      v3 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
      swift_beginAccess();
      *(v2 + v3) = _swiftEmptyArrayStorage;

      v4 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
      swift_beginAccess();
      *(v2 + v4) = _swiftEmptyArrayStorage;

      goto LABEL_6;
    }
  }

  SharePlayTogetherSession.cleanup(notifyObservers:)(1);
LABEL_6:
  v5 = v0[1];

  return v5();
}

uint64_t sub_6E7178(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DB8, &qword_B22890);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13440, &qword_B22070);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_6E7354(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60, &qword_B24860);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

void sub_6E7508(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v5);

  *a4 = v5;
}

uint64_t sub_6E7598(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_6E761C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  return v3;
}

uint64_t sub_6E7688(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12B60, &qword_B24860);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  (v10)(&v12 - v8, a1, v3, v7);
  v10(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11FF8, &qword_B27800);
  sub_AB54F0();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id Player.supportsDelegation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v9);

  v0 = v9;
  v1 = [v9 route];

  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_12;
  }

  result = [v2 endpointObject];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result externalDevice];

  if (!v5 || (v6 = [v5 deviceInfo], v5, !v6))
  {
LABEL_12:

    return 0;
  }

  v7 = [v6 deviceClass];

  return (v7 == (&dword_4 + 3) || v7 == &dword_4);
}

void *Player.isInAnySharePlaySession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v4);

  v0 = v4;
  if (!v4 || (v1 = [v4 isSharedListeningSession], v0, (v1 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v4);

    v2 = v4;
    if (!v4)
    {
      return 0;
    }

    result = *(v4 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
    if (!result)
    {
      __break(1u);
      return result;
    }

    if ([result isPlaceholder])
    {

      return 0;
    }

    if (*(v2 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isHost) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_AB5510(&v4);

      return (v4 > 0);
    }
  }

  return &dword_0 + 1;
}

void Player.sharePlayTogether(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
  *(v4 + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken) = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = a2;
  v10[5] = a3;
  v13[4] = sub_6FBAA4;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_6E7D30;
  v13[3] = &block_descriptor_63_4;
  v11 = _Block_copy(v13);
  v12 = v8;
  sub_307CC(a2, a3);

  MRGroupSessionJoinSessionWithToken();
  _Block_release(v11);
}

double sub_6E7C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken;
    v13 = *(Strong + OBJC_IVAR____TtC9MusicCore6Player_currentSharePlayTogetherConnectionRequestToken);
    if (v13)
    {
      sub_13C80(0, &qword_E13E38, MRGroupSessionToken_ptr);
      v14 = a5;
      v15 = v13;
      v16 = sub_ABA790();

      if (v16)
      {
        v17 = *(v11 + v12);
        *(v11 + v12) = 0;

        if (a6)
        {
          a6(a3);
        }
      }
    }
  }

  return result;
}

void sub_6E7D30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_AB92A0();
  v7 = v6;

  v8 = a3;
  v4(v5, v7, a3);
}

void Player.requestSharePlayTogether(completion:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v13);

  v4 = v13[0];
  v5 = [v13[0] route];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 endpointObject];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
      v9 = sub_ABA150();
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = a1;
      v11[4] = a2;
      v13[4] = sub_6FBAF8;
      v13[5] = v11;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_6E8288;
      v13[3] = &block_descriptor_70_1;
      v12 = _Block_copy(v13);
      sub_307CC(a1, a2);

      [v8 requestGroupSessionWithQueue:v9 completion:v12];
      _Block_release(v12);

      v5 = v9;
    }
  }
}

double sub_6E7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v12 = &v19 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_AB9990();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
    sub_AB9940();

    sub_307CC(a5, a6);

    swift_errorRetain();
    v17 = sub_AB9930();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v15;
    v18[5] = a5;
    v18[6] = a6;
    v18[7] = a1;
    v18[8] = a2;
    v18[9] = a3;
    sub_5E89D8(0, 0, v12, &unk_B22900, v18);
  }

  return result;
}

uint64_t sub_6E8160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_AB9940();
  v8[8] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_6E8208, v10, v9);
}

uint64_t sub_6E8208()
{
  v1 = v0[3];

  sub_6F4E10();
  if (v1)
  {
    (v0[3])(v0[5], v0[6], v0[7]);
  }

  v2 = v0[1];

  return v2();
}

double sub_6E8288(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

uint64_t Player.getNowPlaying()()
{
  v1[17] = v0;
  v1[18] = sub_AB9940();
  v1[19] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_6E83BC, v3, v2);
}

uint64_t sub_6E83BC()
{
  v1 = sub_6F3694();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
  *(v0 + 176) = v2;
  v3 = v2;

  v4 = sub_AB9930();
  *(v0 + 184) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_AB98B0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return _swift_task_switch(sub_6E8474, v5, v7);
}

uint64_t sub_6E8474()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[22];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_6E85D0;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_6FBB04;
  v1[15] = v8;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_151E0;
  v1[13] = &block_descriptor_76_1;
  v9 = _Block_copy(v4);

  [v6 performWithCompletion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v3);
}

uint64_t sub_6E85D0(__n128 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 192) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_6E8928;
  }

  else
  {

    v2[25] = v2[16];
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_6E8720;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6E8720()
{
  v1 = *(v0 + 200);

  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = [v2 playerPath];
    v4 = [v3 isSystemMusicPath];

    if (v4 || (v5 = [v2 playerPath], v6 = objc_msgSend(v5, "representedBundleID"), v5, !v6))
    {
      v7 = *(v0 + 200);
    }

    else
    {

      v7 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = v7;

    sub_AB5520();
    v8 = [v2 playerPath];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 80) = 0;

    sub_AB5520();
    v8 = 0;
  }

  v9 = *(v0 + 176);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = v8;
  v10 = v8;

  sub_AB5520();

  v11 = *(v0 + 8);
  v12 = *(v0 + 200);

  return v11(v12);
}

uint64_t sub_6E8928()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6E8994(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    swift_allocError();
    *v4 = a2;
    swift_errorRetain();

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1;
    v6 = a1;

    return swift_continuation_throwingResume();
  }
}

void sub_6E8A58()
{
  v1 = sub_6F3694();
  v2 = *&v1[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

  v3 = (v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = *v3;
  v6 = v4;

  v8 = sub_6FBB0C(v7);
  v10 = v9;

  v11 = [v2 playingItemProperties];
  if (v11 && (v12 = v11, v13 = [v11 containsPropertySet:*v3], v12, v13) && (v14 = objc_msgSend(v2, "queueSectionProperties")) != 0)
  {
    v15 = v14;
    v16 = [v14 containsPropertySet:v3[1]];

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  if ([v2 tracklistRange] != v8 || (v17 & 1) != 0 || v18 != v10)
  {
    [v2 setPlayingItemProperties:*v3];
    [v2 setQueueItemProperties:*v3];
    [v2 setQueueSectionProperties:v3[1]];
    [v2 setTracklistRange:{v8, v10}];
    v19 = sub_6F1B40();
    v20 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];

    [v20 setPlayingItemProperties:*v3];
    v21 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v0 + v21) == 2)
    {
      v22 = *(*(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource) + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller);
      v23 = v22;
      v24 = &selRef_setNeedsReloadForSignificantRequestChange;
      if (!v17)
      {
        v24 = &selRef_setNeedsReload;
      }

      [v22 *v24];
    }
  }
}

id Player.nowPlayingConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = v3;

  return v2;
}

void Player.nowPlayingConfiguration.setter(void *a1, void *a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v10 = a1;
  v11 = a2;

  sub_6E8A58();
}

void (*Player.nowPlayingConfiguration.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_6E8E3C;
}

void sub_6E8E3C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_6E8A58();
  }
}

unint64_t sub_6E8E9C(Swift::UInt a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if (!*(v6 + 16) || (result = sub_2EC75C(a1, a2), (v8 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = 1;
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    v12 = v10;
LABEL_6:
    result = sub_5262F4(v12, a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t Player.NowPlayingConfiguration.BadCountedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB90A0();
  if (v11)
  {
    (*(v4 + 16))(v6, a1, v3);
    v7 = 1;
LABEL_4:
    v10 = v7;
    v11 = 0;
    sub_AB9080();
    return sub_AB90B0();
  }

  v8 = v10;
  result = (*(v4 + 16))(v6, a1, v3);
  v7 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

Swift::UInt sub_6E90E0(Swift::UInt result, Swift::UInt a2)
{
  v3 = v2;
  v4 = *v2;
  if (*(v4 + 16))
  {
    v5 = a2;
    v6 = result;
    result = sub_2EC75C(result, a2);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * result);
      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      if (v9 > 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v3;
        result = sub_5262F4(v9, v6, v5, isUniquelyReferenced_nonNull_native);
        *v3 = v15;
        return result;
      }

      result = sub_2EC75C(v6, v5);
      if (v11)
      {
        v5 = result;
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v3;
        v14 = *v3;
        if (v12)
        {
LABEL_8:
          result = sub_6F9F00(v5, v13);
          *v3 = v13;
          return result;
        }

LABEL_11:
        sub_527A88();
        v13 = v14;
        goto LABEL_8;
      }
    }
  }

  return result;
}

void *Player.NowPlayingConfiguration.BadCountedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_AB90A0();
  if (v10 != 1)
  {
    v8 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      (*(v4 + 16))(v6, a1, v3);
      if (v8 < 1)
      {
        v9 = 0;
        v10 = 1;
      }

      else
      {
        v9 = v8;
        v10 = 0;
      }

      sub_AB9080();
      return sub_AB90B0();
    }
  }

  return result;
}

double Player.NowPlayingConfiguration.BadCountedSet.makeIterator()@<D0>(uint64_t a3@<X8>, uint64_t x0_0@<X0>)
{
  sub_6FA6F8(x0_0, &v9);
  v12[0] = v9;
  v12[1] = v10;
  v13 = v11;
  v5 = sub_AB9060();
  (*(*(v5 - 8) + 16))(&v8, v12, v5);
  result = *&v9;
  v7 = v10;
  *a3 = v9;
  *(a3 + 16) = v7;
  *(a3 + 32) = v11;
  return result;
}

double sub_6E93D4@<D0>(uint64_t a2@<X8>)
{
  sub_6FA6F8(*v2, &v8);
  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  v4 = sub_AB9060();
  (*(*(v4 - 8) + 16))(&v7, v11, v4);

  result = *&v8;
  v6 = v9;
  *a2 = v8;
  *(a2 + 16) = v6;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_6E949C(uint64_t a1, uint64_t a2)
{
  v3 = sub_6FB2B0(v2, a1, a2);

  return v3;
}

BOOL Player.canPerform(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_6FA3F4(v4, v1, v2, v3);
}

uint64_t Player.canPerform(anyOf:)(uint64_t a1)
{
  swift_conformsToProtocol2();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v6);

  v2 = v6;
  if (v6)
  {
    v3 = swift_conformsToProtocol2();
    v4 = 0;
    if (v3 && a1)
    {
      v4 = (*(v3 + 16))(v2, a1, v3);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t Player.performWhenAvailable(_:options:issuer:timeout:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 376) = v6;
  *(v7 + 368) = a6;
  *(v7 + 352) = a4;
  *(v7 + 360) = a5;
  *(v7 + 608) = a3;
  *(v7 + 336) = a1;
  *(v7 + 344) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0, &qword_B21460);
  *(v7 + 400) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560, &qword_B22320);
  *(v7 + 408) = v8;
  v9 = *(v8 - 8);
  *(v7 + 416) = v9;
  *(v7 + 424) = *(v9 + 64);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = type metadata accessor for Player.CommandIssuance(0);
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = sub_AB9940();
  *(v7 + 496) = sub_AB9930();
  v11 = sub_AB98B0();
  *(v7 + 504) = v11;
  *(v7 + 512) = v10;

  return _swift_task_switch(sub_6E9854, v11, v10);
}

uint64_t sub_6E9854()
{
  v76 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  if (sub_6FA3F4(v5, v1, v3, v4))
  {
    v6 = *(v0 + 336);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
    v7 = swift_allocObject();
    *(v0 + 576) = v7;
    *(v7 + 16) = xmmword_AF4EC0;
    sub_E8BA0(v6, v7 + 32);
    v8 = swift_task_alloc();
    *(v0 + 584) = v8;
    *v8 = v0;
    v8[1] = sub_6EA68C;
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = *(v0 + 608);
    v12 = *(v0 + 344);

    return Player.perform(_:options:issuer:)(v7, v12, v11, v9, v10);
  }

  else
  {
    sub_15F84(*(v0 + 360), v0 + 80, &qword_E0EA98, &unk_B239F0);
    v14 = *(v0 + 104);
    if (v14)
    {
      v15 = *(v0 + 112);
      __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
      v16 = (*(v15 + 8))(v14, v15);
      v14 = v17;
      __swift_destroy_boxed_opaque_existential_0((v0 + 80));
    }

    else
    {
      sub_12E1C(v0 + 80, &qword_E0EA98, &unk_B239F0);
      v16 = 0;
    }

    v18 = *(v0 + 480);
    v19 = *(v0 + 448);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v20 = (v18 + *(v19 + 20));
    *v20 = v16;
    v20[1] = v14;
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v21 = sub_AB4BC0();
    *(v0 + 520) = __swift_project_value_buffer(v21, qword_E72050);
    v22 = sub_AB4BA0();
    v23 = sub_AB9F50();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "╭ ⏱️ Await for command", v24, 2u);
    }

    v26 = *(v0 + 472);
    v25 = *(v0 + 480);

    sub_6FBBDC(v25, v26);
    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 472);
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v75 = v32;
      *v31 = 136446210;
      v33 = Player.CommandIssuance.description.getter(v32);
      v35 = v34;
      sub_6FBC40(v30);
      v36 = sub_500C84(v33, v35, &v75);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_0, v27, v28, "| issuance=%{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {

      sub_6FBC40(v30);
    }

    v37 = *(v0 + 352);
    v38 = sub_AB4BA0();
    v39 = sub_AB9F50();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 608);
      v42 = *(v0 + 344);
      v41 = *(v0 + 352);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v75 = v44;
      *v43 = 136446210;
      v45 = Player.CommandOptions.description.getter(v42, v40, v41);
      v47 = sub_500C84(v45, v46, &v75);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v38, v39, "╰ options=%{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    sub_E8BA0(*(v0 + 336), v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13568, &qword_B22328);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 160));
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090, &qword_B21AB0);
    sub_AB54E0();
    swift_endAccess();
    v48 = *(v0 + 432);
    v49 = *(v0 + 440);
    v50 = *(v0 + 416);
    v71 = *(v0 + 424);
    v51 = *(v0 + 408);
    v68 = v51;
    v69 = v48;
    v52 = *(v0 + 384);
    v53 = *(v0 + 376);
    v70 = *(v0 + 360);
    v74 = *(v0 + 352);
    v73 = *(v0 + 608);
    v54 = *(v0 + 336);
    v72 = *(v0 + 344);
    sub_36A00(&qword_E13570, &unk_E15EA0, &qword_B21460, &protocol conformance descriptor for Published<A>.Publisher);
    sub_AB5480();
    v55 = sub_AB9990();
    *(v0 + 528) = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 56);
    *(v0 + 536) = v57;
    *(v0 + 544) = (v56 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v57(v52, 1, 1, v55);
    (*(v50 + 16))(v48, v49, v51);
    sub_E8BA0(v54, v0 + 200);
    sub_15F84(v70, v0 + 240, &qword_E0EA98, &unk_B239F0);
    v58 = v37;

    v59 = sub_AB9930();
    v60 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v61 = (v71 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 47) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    *(v64 + 24) = &protocol witness table for MainActor;
    (*(v50 + 32))(v64 + v60, v69, v68);
    sub_70DF8((v0 + 200), v64 + v61);
    *(v64 + v62) = v53;
    v65 = v64 + v63;
    *v65 = v72;
    *(v65 + 8) = v73;
    *(v65 + 16) = v74;
    v66 = v64 + ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
    v67 = *(v0 + 256);
    *v66 = *(v0 + 240);
    *(v66 + 16) = v67;
    *(v66 + 32) = *(v0 + 272);
    *(v0 + 552) = sub_6E3868(0, 0, v52, &unk_B22338, v64);

    return _swift_task_switch(sub_6E9FD8, 0, 0);
  }
}

uint64_t sub_6E9FD8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 41;
  v5 = v0[69];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[48];
  v9 = v1[46];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_6EA114;
  v10 = swift_continuation_init();
  v6(v8, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v9;
  v11[6] = v5;

  sub_6E3868(0, 0, v8, &unk_B22348, v11);

  return _swift_continuation_await(v3);
}

uint64_t sub_6EA114(__n128 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 560) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = v2[63];
    v5 = v2[64];
    v6 = sub_6EA478;
  }

  else
  {
    v2[71] = v2[41];
    v4 = v2[63];
    v5 = v2[64];
    v6 = sub_6EA238;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6EA238()
{
  v25 = v0;
  v1 = v0[60];
  v2 = v0[58];

  sub_6FBBDC(v1, v2);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[60];
  v7 = v0[58];
  v8 = v0[55];
  v10 = v0[51];
  v9 = v0[52];
  if (v5)
  {
    v23 = v0[51];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    v21 = v8;
    v22 = v6;
    v13 = Player.CommandIssuance.description.getter(v12);
    v15 = v14;
    sub_6FBC40(v7);
    v16 = sub_500C84(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v3, v4, "⏱️✅ Command became available (%{public}s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);

    (*(v9 + 8))(v21, v23);
    v17 = v22;
  }

  else
  {

    sub_6FBC40(v7);
    (*(v9 + 8))(v8, v10);
    v17 = v6;
  }

  sub_6FBC40(v17);
  v18 = v0[71];

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_6EA478()
{
  v20 = v0;
  v1 = v0[60];
  v2 = v0[57];

  sub_6FBBDC(v1, v2);
  v3 = sub_AB4BA0();
  v4 = sub_AB9F30();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[57];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = Player.CommandIssuance.description.getter(v8);
    v11 = v10;
    sub_6FBC40(v6);
    v12 = sub_500C84(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v3, v4, "⌛️❌ Timed out waiting for command (%{public}s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {

    sub_6FBC40(v6);
  }

  v13 = v0[60];
  v14 = v0[55];
  v15 = v0[51];
  v16 = v0[52];
  swift_willThrow();
  (*(v16 + 8))(v14, v15);
  sub_6FBC40(v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_6EA68C(uint64_t a1)
{
  v3 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_6EA904;
  }

  else
  {

    v4 = v3[63];
    v5 = v3[64];
    v6 = sub_6EA7AC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6EA7AC()
{
  v1 = *(v0 + 592);

  if (v1 >> 62)
  {
    result = sub_ABB060();
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
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 592) + 32);
  }

LABEL_9:

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_6EA904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6EA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 192) = v14;
  *(v8 + 200) = v15;
  *(v8 + 328) = a8;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 152) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DE8, &qword_B228B8);
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = sub_AB9940();
  *(v8 + 240) = sub_AB9930();
  v11 = sub_AB98B0();
  *(v8 + 248) = v11;
  *(v8 + 256) = v10;

  return _swift_task_switch(sub_6EAAF8, v11, v10);
}

uint64_t sub_6EAAF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560, &qword_B22320);
  sub_AB5470();
  v0[33] = sub_AB9930();
  v1 = sub_36A00(&qword_E13DF0, &qword_E13DE8, &qword_B228B8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_6EAC00;
  v3 = v0[26];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 17, v3, v1);
}

uint64_t sub_6EAC00()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6EB130;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6EAD98;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_6EAD98()
{

  v0[36] = v0[17];
  v1 = v0[31];
  v2 = v0[32];

  return _swift_task_switch(sub_6EAE04, v1, v2);
}

uint64_t sub_6EAE04(uint64_t a1)
{
  v2 = *(v1 + 288);
  if (v2)
  {
    if (v2 == &dword_0 + 1)
    {
      (*(*(v1 + 216) + 8))(*(v1 + 224), *(v1 + 208));

      **(v1 + 152) = 0;

      v3 = *(v1 + 8);

      return v3();
    }

    sub_E8BA0(*(v1 + 168), v1 + 56);
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13E20, &unk_B229F0);
    v6 = swift_dynamicCast();
    v7 = *(v1 + 288);
    if (v6)
    {
      sub_70DF8((v1 + 96), v1 + 16);
      v8 = *(v1 + 40);
      v9 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1((v1 + 16), v8);
      v10 = (*(v9 + 24))(v5, v8, v9);
      sub_D3144(v7);
      if (v10)
      {
        v11 = *(v1 + 168);

        __swift_destroy_boxed_opaque_existential_0((v1 + 16));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
        v12 = swift_allocObject();
        *(v1 + 296) = v12;
        *(v12 + 16) = xmmword_AF4EC0;
        sub_E8BA0(v11, v12 + 32);
        v13 = swift_task_alloc();
        *(v1 + 304) = v13;
        *v13 = v1;
        v13[1] = sub_6EB1BC;
        v14 = *(v1 + 192);
        v15 = *(v1 + 200);
        v16 = *(v1 + 328);
        v17 = *(v1 + 184);

        return Player.perform(_:options:issuer:)(v12, v17, v16, v14, v15);
      }

      sub_D3144(*(v1 + 288));
      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    }

    else
    {
      sub_D3144(*(v1 + 288));
      sub_D3144(v7);
      *(v1 + 128) = 0;
      *(v1 + 96) = 0u;
      *(v1 + 112) = 0u;
      sub_12E1C(v1 + 96, &qword_E13E28, &qword_B228F0);
    }
  }

  *(v1 + 264) = sub_AB9930();
  v18 = sub_36A00(&qword_E13DF0, &qword_E13DE8, &qword_B228B8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v19 = swift_task_alloc();
  *(v1 + 272) = v19;
  *v19 = v1;
  v19[1] = sub_6EAC00;
  v20 = *(v1 + 208);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 136, v20, v18);
}

uint64_t sub_6EB130()
{
  *(v0 + 144) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_6EB1BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 256);
  v6 = *(v3 + 248);
  if (v1)
  {
    v7 = sub_6EB450;
  }

  else
  {
    v7 = sub_6EB31C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_6EB31C()
{
  v1 = *(v0 + 312);

  if (v1 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = *(v0 + 288);

    sub_D3144(v5);
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
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 312) + 32);
  }

  v4 = *(v0 + 288);

  sub_D3144(v4);
LABEL_9:
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  **(v0 + 152) = v3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_6EB450()
{
  v1 = v0[36];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  sub_D3144(v1);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t Player.perform(_:options:issuer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  sub_AB9940();
  *(v6 + 56) = sub_AB9930();
  v8 = sub_AB98B0();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return _swift_task_switch(sub_6EB594, v8, v7);
}

{
  *(v6 + 272) = a5;
  *(v6 + 280) = v5;
  *(v6 + 256) = a2;
  *(v6 + 264) = a4;
  *(v6 + 512) = a3;
  *(v6 + 248) = a1;
  v7 = type metadata accessor for Player.CommandIssuance(0);
  *(v6 + 288) = v7;
  v8 = *(v7 - 8);
  *(v6 + 296) = v8;
  *(v6 + 304) = *(v8 + 64);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = sub_AB9940();
  *(v6 + 400) = sub_AB9930();
  v10 = sub_AB98B0();
  *(v6 + 408) = v10;
  *(v6 + 416) = v9;

  return _swift_task_switch(sub_6EBA68, v10, v9);
}

uint64_t sub_6EB594()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12E70, &unk_B16C10);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = xmmword_AF4EC0;
  sub_E8BA0(v1, v2 + 32);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_6EB674;
  v4 = *(v0 + 40);
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  return Player.perform(_:options:issuer:)(v2, v6, v5, v7, v4);
}

uint64_t sub_6EB674(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_6EB880;
  }

  else
  {

    v4 = v3[8];
    v5 = v3[9];
    v6 = sub_6EB790;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_6EB790()
{
  v1 = *(v0 + 96);

  if (v1 >> 62)
  {
    result = sub_ABB060();
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
    v3 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 96) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_6EB880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6EBA68()
{
  v77 = v0;
  v1 = *(*(v0 + 248) + 16);
  *(v0 + 424) = v1;
  if (v1)
  {
    sub_15F84(*(v0 + 272), v0 + 128, &qword_E0EA98, &unk_B239F0);
    v2 = *(v0 + 152);
    if (v2)
    {
      v3 = *(v0 + 160);
      __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
      v4 = (*(v3 + 8))(v2, v3);
      v2 = v5;
      __swift_destroy_boxed_opaque_existential_0((v0 + 128));
    }

    else
    {
      sub_12E1C(v0 + 128, &qword_E0EA98, &unk_B239F0);
      v4 = 0;
    }

    v8 = *(v0 + 384);
    v9 = *(v0 + 288);
    v10 = *(v0 + 248);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v11 = (v8 + *(v9 + 20));
    *v11 = v4;
    v11[1] = v2;
    *(v0 + 513) = sub_6EE740(v10) & 1;
    if (v1 == 1)
    {
      v12 = 0x646E616D6D6F63;
    }

    else
    {
      v12 = 0x73646E616D6D6F63;
    }

    if (v1 == 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v14 = sub_AB4BC0();
    *(v0 + 432) = __swift_project_value_buffer(v14, qword_E72050);

    v15 = sub_AB4BA0();
    v16 = sub_AB9F50();

    v75 = v12;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v76 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_500C84(v12, v13, &v76);
      _os_log_impl(&dword_0, v15, v16, "╭ Will perform %s…", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    sub_6FBBDC(*(v0 + 384), *(v0 + 376));
    v19 = sub_AB4BA0();
    v20 = sub_AB9F50();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 376);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v76 = v24;
      *v23 = 136446210;
      v25 = Player.CommandIssuance.description.getter(v24);
      v27 = v26;
      sub_6FBC40(v22);
      v28 = sub_500C84(v25, v27, &v76);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_0, v19, v20, "| issuance=%{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    else
    {

      sub_6FBC40(v22);
    }

    v29 = sub_AB4BA0();
    v30 = sub_AB9F50();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
      v33 = sub_AB9770();
      v35 = sub_500C84(v33, v34, &v76);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v29, v30, "| %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    v36 = *(v0 + 264);
    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 512);
      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v76 = v43;
      *v42 = 136446210;
      v44 = Player.CommandOptions.description.getter(v41, v39, v40);
      v46 = sub_500C84(v44, v45, &v76);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v37, v38, "╰ options=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    v47 = *(v0 + 280);
    v48 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v47 + v48) != 2)
    {

      v49 = sub_AB4BA0();
      v50 = sub_AB9F50();

      v74 = v47;
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v76 = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_500C84(v75, v13, &v76);
        _os_log_impl(&dword_0, v49, v50, "╭ 🕛 Pausing execution for %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
      }

      sub_6FBBDC(*(v0 + 384), *(v0 + 368));
      v53 = sub_AB4BA0();
      v54 = sub_AB9F50();
      v55 = os_log_type_enabled(v53, v54);
      v56 = *(v0 + 368);
      if (v55)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v76 = v58;
        *v57 = 136446210;
        v59 = Player.CommandIssuance.description.getter(v58);
        v61 = v60;
        sub_6FBC40(v56);
        v62 = sub_500C84(v59, v61, &v76);

        *(v57 + 4) = v62;
        _os_log_impl(&dword_0, v53, v54, "| issuance=%{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
      }

      else
      {

        sub_6FBC40(v56);
      }

      v63 = sub_AB4BA0();
      v64 = sub_AB9F50();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v76 = v66;
        *v65 = 136446210;
        if (*(v74 + v48) > 1u)
        {
          if (*(v74 + v48) == 2)
          {
            v67 = 0xA900000000000079;
            v68 = 0x6461655220859CE2;
          }

          else
          {
            v67 = 0xAE0064656C6C6174;
            v68 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v74 + v48))
        {
          v67 = 0xAD0000676E697472;
          v68 = 0x61745320809A9FF0;
        }

        else
        {
          v67 = 0xA700000000000000;
          v68 = 0x66664F208C9DE2;
        }

        v69 = sub_500C84(v68, v67, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_0, v63, v64, "| engine state=%{public}s)", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
      }

      v70 = sub_AB4BA0();
      v71 = sub_AB9F50();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_0, v70, v71, "╰ Awaiting on engine to be ready", v72, 2u);
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 440) = v73;
    *v73 = v0;
    v73[1] = sub_6EC474;

    return Player.startEngineIfNeeded()();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_6EC474()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_6EC594, v3, v2);
}

uint64_t sub_6EC594()
{
  v113 = v0;
  v1 = *(v0 + 264);
  if (v1)
  {
    v2 = 0xE800000000000000;
    v3 = objc_allocWithZone(MPCPlayerRequest);
    v4 = v1;
    v5 = [v3 init];
    *(v0 + 448) = v5;

    v6 = sub_AB4BA0();
    v7 = sub_AB9F50();

    if (os_log_type_enabled(v6, v7))
    {
      if (*(v0 + 424) == 1)
      {
        v8 = 0x646E616D6D6F63;
      }

      else
      {
        v8 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v2 = 0xE700000000000000;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v112[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_500C84(v8, v2, v112);
      _os_log_impl(&dword_0, v6, v7, "╭ 🔊 Resolving specified route for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    sub_6FBBDC(*(v0 + 384), *(v0 + 360));
    v11 = sub_AB4BA0();
    v12 = sub_AB9F50();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 360);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v112[0] = v16;
      *v15 = 136446210;
      v17 = Player.CommandIssuance.description.getter(v16);
      v19 = v18;
      sub_6FBC40(v14);
      v20 = sub_500C84(v17, v19, v112);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_0, v11, v12, "| issuance=%{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {

      sub_6FBC40(v14);
    }

    v40 = *(v0 + 264);
    v41 = sub_AB4BA0();
    v42 = sub_AB9F50();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 264);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v112[0] = v45;
      *v44 = 136446210;
      v46 = v43;
      v47 = [v46 description];
      v48 = sub_AB92A0();
      v50 = v49;

      v51 = sub_500C84(v48, v50, v112);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_0, v41, v42, "╰ 🔊 Route=%{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    v52 = *(v0 + 264);
    v53 = objc_opt_self();
    v54 = qword_E0CE90;
    v55 = v52;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 280);
    v57 = *(v0 + 264);
    v58 = sub_AB9260();
    v59 = [v53 systemMusicPathWithRoute:v57 playerID:v58];

    [v5 setPlayerPath:v59];
    v60 = OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
    swift_beginAccess();
    [v5 setPlayingItemProperties:*(v56 + v60)];
    v61 = sub_AB9930();
    *(v0 + 456) = v61;
    if (v61)
    {
      swift_getObjectType();
      v62 = sub_AB98B0();
      v64 = v63;
    }

    else
    {
      v62 = 0;
      v64 = 0;
    }

    return _swift_task_switch(sub_6ED24C, v62, v64);
  }

  else
  {
    if (*(v0 + 513))
    {
      v21 = 232;
    }

    else
    {
      v21 = 216;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510((v0 + v21));

    v22 = *(v0 + v21);
    *(v0 + 480) = v22;
    if (v22)
    {
      v23 = 0xE800000000000000;

      v24 = v22;
      v25 = sub_AB4BA0();
      v26 = sub_AB9F50();

      if (os_log_type_enabled(v25, v26))
      {
        if (*(v0 + 424) == 1)
        {
          v27 = 0x646E616D6D6F63;
        }

        else
        {
          v27 = 0x73646E616D6D6F63;
        }

        if (*(v0 + 424) == 1)
        {
          v23 = 0xE700000000000000;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v112[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_500C84(v27, v23, v112);
        _os_log_impl(&dword_0, v25, v26, "╭ Performing %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
      }

      sub_6FBBDC(*(v0 + 384), *(v0 + 344));
      v30 = sub_AB4BA0();
      v31 = sub_AB9F50();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 344);
      if (v32)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v112[0] = v35;
        *v34 = 136446210;
        v36 = Player.CommandIssuance.description.getter(v35);
        v38 = v37;
        sub_6FBC40(v33);
        v39 = sub_500C84(v36, v38, v112);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_0, v30, v31, "| issuance=%{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
      }

      else
      {

        sub_6FBC40(v33);
      }

      v80 = sub_AB4BA0();
      v81 = sub_AB9F50();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = *(v0 + 513);
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v112[0] = v84;
        *v83 = 136446210;
        if (v82)
        {
          v85 = 0xD000000000000014;
        }

        else
        {
          v85 = 0x5220726579616C50;
        }

        if (v82)
        {
          v86 = 0x8000000000B70B70;
        }

        else
        {
          v86 = 0xEF65736E6F707365;
        }

        v87 = sub_500C84(v85, v86, v112);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_0, v80, v81, "| on=%{public}s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v84);
      }

      v88 = v24;
      v89 = sub_AB4BA0();
      v90 = sub_AB9F50();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v112[0] = v92;
        *v91 = 136446210;
        v93 = [v88 playerPath];
        v94 = [v93 description];
        v95 = sub_AB92A0();
        v97 = v96;

        v98 = sub_500C84(v95, v97, v112);

        *(v91 + 4) = v98;
        _os_log_impl(&dword_0, v89, v90, "╰ playerPath=%{public}s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
      }

      v99 = *(v0 + 336);
      v100 = *(v0 + 288);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v101 = (v99 + *(v100 + 20));
      *v101 = 0;
      v101[1] = 0;
      v102 = swift_task_alloc();
      *(v0 + 488) = v102;
      *v102 = v0;
      v102[1] = sub_6EDEA4;
      v103 = *(v0 + 336);
      v104 = *(v0 + 512);
      v106 = *(v0 + 248);
      v105 = *(v0 + 256);

      return sub_701DFC(v106, v103, v105, v104);
    }

    else
    {
      v65 = *(v0 + 384);
      v66 = *(v0 + 312);

      v67 = 0xE700000000000000;
      sub_6FBBDC(v65, v66);

      v68 = sub_AB4BA0();
      v69 = sub_AB9F30();

      v70 = os_log_type_enabled(v68, v69);
      v71 = *(v0 + 312);
      if (v70)
      {
        if (*(v0 + 424) == 1)
        {
          v72 = 0x646E616D6D6F63;
        }

        else
        {
          v67 = 0xE800000000000000;
          v72 = 0x73646E616D6D6F63;
        }

        v73 = swift_slowAlloc();
        v112[0] = swift_slowAlloc();
        *v73 = 136315394;
        v74 = sub_500C84(v72, v67, v112);

        *(v73 + 4) = v74;
        *(v73 + 12) = 2082;
        v76 = Player.CommandIssuance.description.getter(v75);
        v78 = v77;
        sub_6FBC40(v71);
        v79 = sub_500C84(v76, v78, v112);

        *(v73 + 14) = v79;
        _os_log_impl(&dword_0, v68, v69, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v73, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_6FBC40(v71);
      }

      v107 = *(v0 + 248);
      sub_6FC02C();
      swift_allocError();
      *v108 = v107;
      *(v108 + 40) = 1;
      swift_willThrow();
      v109 = *(v0 + 384);

      sub_6FBC40(v109);

      v110 = *(v0 + 8);

      return v110();
    }
  }
}

uint64_t sub_6ED24C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 30;
  v23 = v0[56];
  v6 = v0[53];
  v7 = v0[48];
  v8 = v0[44];
  v11 = v0 + 37;
  v9 = v0[37];
  v10 = v11[1];
  v21 = v1[33];
  v22 = v3;
  if (v6 == 1)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v6 == 1)
  {
    v13 = 0x646E616D6D6F63;
  }

  else
  {
    v13 = 0x73646E616D6D6F63;
  }

  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_6ED478;
  v14 = swift_continuation_init();
  sub_6FBBDC(v7, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  sub_6FE074(v8, v17 + v15, type metadata accessor for Player.CommandIssuance);
  *(v17 + v16) = v21;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v1[14] = sub_6FC190;
  v1[15] = v17;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_151E0;
  v1[13] = &block_descriptor_105_1;
  v18 = _Block_copy(v4);

  v19 = v21;

  [v23 performWithCompletion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();

  return _swift_continuation_await(v22);
}

uint64_t sub_6ED478()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  if (v2)
  {

    swift_willThrow();

    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_6EDD98;
  }

  else
  {

    v1[59] = v1[30];
    v3 = v1[51];
    v4 = v1[52];
    v5 = sub_6ED5E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_6ED5E0()
{
  v68 = v0;
  v1 = *(v0 + 264);

  v2 = *(v0 + 472);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = 0xE800000000000000;

    v4 = v2;
    v5 = sub_AB4BA0();
    v6 = sub_AB9F50();

    if (os_log_type_enabled(v5, v6))
    {
      if (*(v0 + 424) == 1)
      {
        v7 = 0x646E616D6D6F63;
      }

      else
      {
        v7 = 0x73646E616D6D6F63;
      }

      if (*(v0 + 424) == 1)
      {
        v3 = 0xE700000000000000;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v67[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_500C84(v7, v3, v67);
      _os_log_impl(&dword_0, v5, v6, "╭ Performing %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    sub_6FBBDC(*(v0 + 384), *(v0 + 344));
    v10 = sub_AB4BA0();
    v11 = sub_AB9F50();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 344);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v67[0] = v15;
      *v14 = 136446210;
      v16 = Player.CommandIssuance.description.getter(v15);
      v18 = v17;
      sub_6FBC40(v13);
      v19 = sub_500C84(v16, v18, v67);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_0, v10, v11, "| issuance=%{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {

      sub_6FBC40(v13);
    }

    v35 = sub_AB4BA0();
    v36 = sub_AB9F50();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 513);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67[0] = v39;
      *v38 = 136446210;
      if (v37)
      {
        v40 = 0xD000000000000014;
      }

      else
      {
        v40 = 0x5220726579616C50;
      }

      if (v37)
      {
        v41 = 0x8000000000B70B70;
      }

      else
      {
        v41 = 0xEF65736E6F707365;
      }

      v42 = sub_500C84(v40, v41, v67);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_0, v35, v36, "| on=%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    v43 = v4;
    v44 = sub_AB4BA0();
    v45 = sub_AB9F50();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v67[0] = v47;
      *v46 = 136446210;
      v48 = [v43 playerPath];
      v49 = [v48 description];
      v50 = sub_AB92A0();
      v52 = v51;

      v53 = sub_500C84(v50, v52, v67);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_0, v44, v45, "╰ playerPath=%{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v54 = *(v0 + 336);
    v55 = *(v0 + 288);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v56 = (v54 + *(v55 + 20));
    *v56 = 0;
    v56[1] = 0;
    v57 = swift_task_alloc();
    *(v0 + 488) = v57;
    *v57 = v0;
    v57[1] = sub_6EDEA4;
    v58 = *(v0 + 336);
    v59 = *(v0 + 512);
    v61 = *(v0 + 248);
    v60 = *(v0 + 256);

    return sub_701DFC(v61, v58, v60, v59);
  }

  else
  {
    v20 = *(v0 + 384);
    v21 = *(v0 + 312);

    v22 = 0xE700000000000000;
    sub_6FBBDC(v20, v21);

    v23 = sub_AB4BA0();
    v24 = sub_AB9F30();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 312);
    if (v25)
    {
      if (*(v0 + 424) == 1)
      {
        v27 = 0x646E616D6D6F63;
      }

      else
      {
        v22 = 0xE800000000000000;
        v27 = 0x73646E616D6D6F63;
      }

      v28 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = sub_500C84(v27, v22, v67);

      *(v28 + 4) = v29;
      *(v28 + 12) = 2082;
      v31 = Player.CommandIssuance.description.getter(v30);
      v33 = v32;
      sub_6FBC40(v26);
      v34 = sub_500C84(v31, v33, v67);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_0, v23, v24, "╭ ❌ Unavailable %s\n| issuance=%{public}s\n╰ error=nil MPCPlayerResponse", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_6FBC40(v26);
    }

    v63 = *(v0 + 248);
    sub_6FC02C();
    swift_allocError();
    *v64 = v63;
    *(v64 + 40) = 1;
    swift_willThrow();
    v65 = *(v0 + 384);

    sub_6FBC40(v65);

    v66 = *(v0 + 8);

    return v66();
  }
}

uint64_t sub_6EDD98()
{
  v1 = *(v0 + 264);

  sub_6FBC40(*(v0 + 384));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6EDEA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[62] = a1;
  v4[63] = v1;

  sub_6FBC40(v3[42]);
  v5 = v3[52];
  v6 = v3[51];
  if (v1)
  {
    v7 = sub_6EE430;
  }

  else
  {
    v7 = sub_6EE000;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_6EE000()
{
  v34 = v0;

  v1 = sub_AB4BA0();
  v2 = sub_AB9F50();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[53];
  if (v3)
  {
    v5 = v4 == 1;
    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }

    if (v5)
    {
      v7 = 0x646E616D6D6F63;
    }

    else
    {
      v7 = 0x73646E616D6D6F63;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    v10 = sub_500C84(v7, v6, &v33);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_0, v1, v2, "╭ ✅ Successfully performed %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
  }

  sub_6FBBDC(v0[48], v0[40]);
  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[40];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446210;
    v17 = Player.CommandIssuance.description.getter(v16);
    v19 = v18;
    sub_6FBC40(v14);
    v20 = sub_500C84(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "| issuance=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {

    sub_6FBC40(v14);
  }

  v21 = sub_AB4BA0();
  v22 = sub_AB9F50();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[60];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136446210;
    sub_13C80(0, &qword_E13590, MPCPlayerCommandStatus_ptr);
    v26 = sub_AB9770();
    v28 = sub_500C84(v26, v27, &v33);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_0, v21, v22, "╰ statuses=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v29 = v0[60];
  }

  sub_6FBC40(v0[48]);
  v32 = v0[62];

  v30 = v0[1];

  return v30(v32);
}

uint64_t sub_6EE430()
{
  v24 = v0;
  v1 = v0[48];
  v2 = v0[41];

  v3 = 0xE800000000000000;
  sub_6FBBDC(v1, v2);

  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[63];
    v7 = v0[41];
    if (v0[53] == 1)
    {
      v3 = 0xE700000000000000;
      v8 = 0x646E616D6D6F63;
    }

    else
    {
      v8 = 0x73646E616D6D6F63;
    }

    v9 = swift_slowAlloc();
    v23[0] = swift_slowAlloc();
    *v9 = 136315650;
    v10 = sub_500C84(v8, v3, v23);

    *(v9 + 4) = v10;
    *(v9 + 12) = 2082;
    v12 = Player.CommandIssuance.description.getter(v11);
    v14 = v13;
    sub_6FBC40(v7);
    v15 = sub_500C84(v12, v14, v23);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2082;
    v0[28] = v6;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v16 = sub_AB9350();
    v18 = sub_500C84(v16, v17, v23);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_0, v4, v5, "╭ ❌ Failed to perform commands %s\n| issuance=%{public}s\n╰ error=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = v0[41];

    sub_6FBC40(v19);
  }

  v20 = v0[60];
  swift_willThrow();

  sub_6FBC40(v0[48]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_6EE740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_8:
    v6 = 0;
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  v2 = a1 + 32;
  while (1)
  {
    sub_E8BA0(v2, v9);
    sub_E8BA0(v9, &v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E12EA0, &qword_B21610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13568, &qword_B22328);
    if (swift_dynamicCast())
    {
      break;
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_12E1C(&v10, &qword_E13DF8, &qword_B228C0);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v9);
    v2 += 40;
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  v3 = *(&v11 + 1);
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
  v5 = (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(&v10);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_70DF8(v9, &v10);
  v6 = 1;
LABEL_9:
  sub_12E1C(&v10, &qword_E13E00, &qword_B228C8);
  return v6;
}

uint64_t sub_6EE8C0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v71 = a6;
  v72 = a7;
  type metadata accessor for Player.CommandIssuance(0);
  __chkstk_darwin();
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v70 - v14;
  if (a1)
  {
    v16 = qword_E0CEC0;
    v17 = a1;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_AB4BC0();
    __swift_project_value_buffer(v18, qword_E72050);

    v19 = sub_AB4BA0();
    v20 = sub_AB9F50();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v73 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_500C84(a3, a4, &v73);
      _os_log_impl(&dword_0, v19, v20, "╭ 🔊✅ Successfully resolved specified route for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    sub_6FBBDC(a5, v15);
    v23 = sub_AB4BA0();
    v24 = sub_AB9F50();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v73 = v26;
      *v25 = 136446210;
      v27 = Player.CommandIssuance.description.getter(v26);
      v29 = v28;
      sub_6FBC40(v15);
      v30 = sub_500C84(v27, v29, &v73);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_0, v23, v24, "| issuance=%{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    else
    {

      sub_6FBC40(v15);
    }

    v44 = v71;
    v45 = sub_AB4BA0();
    v46 = sub_AB9F50();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v73 = v48;
      *v47 = 136446210;
      v49 = v44;
      v50 = [v49 description];
      v51 = sub_AB92A0();
      v53 = v52;

      v54 = sub_500C84(v51, v53, &v73);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_0, v45, v46, "╰ 🔊 Route=%{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
    }

    **(*(v72 + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v31 = sub_AB4BC0();
    __swift_project_value_buffer(v31, qword_E72050);

    v32 = sub_AB4BA0();
    v33 = sub_AB9F30();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_500C84(a3, a4, &v73);
      _os_log_impl(&dword_0, v32, v33, "╭ 🔊❌ Failed to resolve specified route for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    sub_6FBBDC(a5, v13);
    v36 = sub_AB4BA0();
    v37 = sub_AB9F30();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v73 = v39;
      *v38 = 136446210;
      v40 = Player.CommandIssuance.description.getter(v39);
      v42 = v41;
      sub_6FBC40(v13);
      v43 = sub_500C84(v40, v42, &v73);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_0, v36, v37, "| issuance=%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    else
    {

      sub_6FBC40(v13);
    }

    v56 = v71;
    v57 = sub_AB4BA0();
    v58 = sub_AB9F30();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v73 = v60;
      *v59 = 136446210;
      v61 = v56;
      v62 = [v61 description];
      v63 = sub_AB92A0();
      v65 = v64;

      v66 = sub_500C84(v63, v65, &v73);

      *(v59 + 4) = v66;
      _os_log_impl(&dword_0, v57, v58, "╰ 🔊 Route=%{public}s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
    }

    if (a2)
    {
      v67 = a2;
    }

    else
    {
      sub_6FC02C();
      v67 = swift_allocError();
      *v68 = 0u;
      *(v68 + 16) = 0u;
      *(v68 + 32) = 0;
      *(v68 + 40) = 2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    swift_allocError();
    *v69 = v67;
    swift_errorRetain();
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t Player.prepareForBufferedAirPlay()()
{
  v1[60] = v0;
  v1[61] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  v1[62] = swift_task_alloc();
  v1[63] = sub_AB9940();
  v1[64] = sub_AB9930();
  v3 = sub_AB98B0();
  v1[65] = v3;
  v1[66] = v2;

  return _swift_task_switch(sub_6EF14C, v3, v2);
}

uint64_t sub_6EF14C()
{
  v35 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v0 + 56);

  v1 = v0[56];
  v2 = [v1 route];
  v0[67] = v2;

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      goto LABEL_9;
    }

    v4 = v3;
    v5 = v2;
    if ([v4 isDeviceRoute])
    {

LABEL_9:

      v10 = v0[1];

      return v10(v2);
    }

    v11 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
    v12 = objc_allocWithZone(MPAVRoutingController);
    v13 = sub_AB9260();
    v14 = [v12 initWithDataSource:v11 name:v13];
    v0[68] = v14;

    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v15 = sub_AB4BC0();
    v0[69] = __swift_project_value_buffer(v15, qword_E72050);
    v16 = v5;
    v17 = sub_AB4BA0();
    v18 = sub_AB9F50();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446210;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_AB92A0();
      v25 = v24;

      v26 = sub_500C84(v23, v25, &v34);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_0, v17, v18, "🚏 Switching to buffered AirPlay onto route=%{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    v27 = v0[60];
    v28 = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v0[70] = OBJC_IVAR____TtC9MusicCore6Player_routingController;
    v29 = *(v27 + v28);
    *(v27 + v28) = v14;
    v30 = v14;

    v31 = objc_opt_self();
    v0[71] = v31;
    v0[2] = v0;
    v0[3] = sub_6EF650;
    v32 = swift_continuation_init();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135A0, &unk_B1B518);
    v0[72] = v33;
    v0[41] = v33;
    v0[34] = _NSConcreteStackBlock;
    v0[35] = 1107296256;
    v0[36] = sub_5C75AC;
    v0[37] = &block_descriptor_109_1;
    v0[38] = v32;
    [v31 setActiveRoute:0 completion:v0 + 34];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v0 + 57);

    v6 = v0[57];
    sub_6FC24C();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_6EF650()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_6F0668;
  }

  else
  {
    v5 = sub_6EF780;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6EF780()
{
  v1 = v0[72];
  v2 = v0[68];
  v3 = v0[67];
  v0[10] = v0;
  v0[11] = sub_6EF890;
  v4 = swift_continuation_init();
  v0[49] = v1;
  v0[42] = _NSConcreteStackBlock;
  v0[43] = 1107296256;
  v0[44] = sub_5C75AC;
  v0[45] = &block_descriptor_112_0;
  v0[46] = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 42];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_6EF890()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 592) = v2;
  v3 = *(v1 + 528);
  v4 = *(v1 + 520);
  if (v2)
  {
    v5 = sub_6F08C8;
  }

  else
  {
    v5 = sub_6EF9C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6EF9C0(uint64_t a1)
{
  v2 = sub_AB9930();
  *(v1 + 600) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = sub_AB98B0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_6EFA54, v3, v5);
}

uint64_t sub_6EFA54()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 50;
  v5 = v0 + 59;
  v6 = v0[71];
  v1[18] = v2;
  v1[23] = v5;
  v1[19] = sub_6EFBA0;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[54] = sub_6FC2DC;
  v1[55] = v8;
  v1[50] = _NSConcreteStackBlock;
  v1[51] = 1107296256;
  v1[52] = sub_780C4;
  v1[53] = &block_descriptor_118_0;
  v9 = _Block_copy(v4);

  [v6 getActiveRouteWithTimeout:v9 completion:2.0];
  _Block_release(v9);

  return _swift_continuation_await(v3);
}

uint64_t sub_6EFBA0(__n128 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  *(*v1 + 608) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[66];
    v5 = v2[65];
    v6 = sub_6EFF74;
  }

  else
  {

    v2[77] = v2[59];
    v4 = v2[66];
    v5 = v2[65];
    v6 = sub_6EFCF8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_6EFCF8()
{
  v24 = v0;
  v1 = *(v0 + 616);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 616);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136446210;
    v7 = v4;
    v8 = [v7 description];
    v9 = sub_AB92A0();
    v11 = v10;

    v12 = sub_500C84(v9, v11, &v23);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "🚏 Awaiting updated player response for route=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v13 = *(v0 + 496);
  v14 = *(v0 + 480);
  v15 = *(v0 + 488);
  v16 = *(v0 + 616);

  sub_6F4700(v16, v14, v15);

  v17 = sub_AB9990();
  *(v0 + 624) = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  *(v0 + 632) = v19;
  *(v0 + 640) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v19(v13, 1, 1, v17);

  v20 = sub_AB9930();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v14;
  *(v0 + 648) = sub_5E89D8(0, 0, v13, &unk_B22388, v21);

  return _swift_task_switch(sub_6F0024, 0, 0);
}

uint64_t sub_6EFF74()
{
  v1 = v0[70];
  v2 = v0[60];

  v3 = *(v2 + v1);
  v4 = v0[68];
  if (v3 && v4 == v3)
  {
    v5 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v5 = v0[67];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_6F0024()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 26;
  v4 = v0[81];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[62];
  v1[26] = v2;
  v1[27] = sub_6F0158;
  v8 = swift_continuation_init();
  v5(v7, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = 0x4014000000000000;
  v9[6] = v4;

  sub_6E35BC(0, 0, v7, &unk_B22398, v9, &type metadata for () + 8);

  return _swift_continuation_await(v3);
}

uint64_t sub_6F0158()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 656) = v2;
  if (v2)
  {

    swift_willThrow();
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_6F0470;
  }

  else
  {
    v3 = *(v1 + 528);
    v4 = *(v1 + 520);
    v5 = sub_6F0284;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_6F0284()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = sub_AB4BA0();
  v4 = sub_AB9F50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[77];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v6 = v6;
    v9 = [v6 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, &v22);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "🚏✅ Successfully switched to buffered AirPlay onto route=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v14 = v0[70];
  v15 = v0[60];
  v16 = *(v15 + v14);
  v17 = v0[68];
  if (v16)
  {
    v18 = v0[67];
    if (v17 == v16)
    {
      *(v15 + v14) = 0;
    }
  }

  else
  {
    v18 = v0[67];
  }

  v19 = v0[77];

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_6F0470()
{
  v23 = v0;
  v1 = v0[77];

  v2 = v1;
  v3 = sub_AB4BA0();
  v4 = sub_AB9F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[77];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "🚏❌ Timed out waiting for a valid ReplaceCommand on route=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v14 = v0[77];
  v15 = v0[70];
  v16 = v0[60];
  swift_willThrow();

  v17 = *(v16 + v15);
  v18 = v0[68];
  if (v17 && v18 == v17)
  {
    v19 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v19 = v0[67];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_6F0668()
{
  v25 = v0;

  v1 = v0[73];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v14 = sub_AB9350();
    v16 = sub_500C84(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_0, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_6F08C8()
{
  v25 = v0;

  v1 = v0[74];
  v2 = v0[67];
  swift_willThrow();
  v3 = v2;
  swift_errorRetain();
  v4 = sub_AB4BA0();
  v5 = sub_AB9F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[67];
    v7 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v6;
    v9 = [v8 description];
    v10 = sub_AB92A0();
    v12 = v11;

    v13 = sub_500C84(v10, v12, v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    v0[58] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    v14 = sub_AB9350();
    v16 = sub_500C84(v14, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_0, v4, v5, "🚏❌ Failed switching to route=%{public}s with error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v17 = v0[70];
  v18 = v0[60];
  swift_willThrow();
  v19 = *(v18 + v17);
  v20 = v0[68];
  if (v19 && v20 == v19)
  {
    v21 = v0[67];
    *(v0[60] + v0[70]) = 0;
  }

  else
  {
    v21 = v0[67];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_6F0B28(void *a1, uint64_t a2, __n128 a3)
{
  if (a1)
  {
    **(*(a2 + 64) + 40) = a1;
    v3 = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    sub_6FC24C();
    v5 = swift_allocError();
    *v6 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
    swift_allocError();
    *v7 = v5;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_6F0BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E15EA0, &qword_B21460);
  v4[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13560, &qword_B22320);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DE8, &qword_B228B8);
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = sub_AB9940();
  v4[17] = sub_AB9930();
  v8 = sub_AB98B0();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_6F0DA4, v8, v7);
}

uint64_t sub_6F0DA4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13090, &qword_B21AB0);
  sub_AB54E0();
  swift_endAccess();
  sub_36A00(&qword_E13570, &unk_E15EA0, &qword_B21460, &protocol conformance descriptor for Published<A>.Publisher);
  sub_AB5480();
  sub_AB5470();
  (*(v2 + 8))(v1, v3);
  v0[20] = sub_AB9930();
  v4 = sub_36A00(&qword_E13DF0, &qword_E13DE8, &qword_B228B8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_6F0F60;
  v6 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v6, v4);
}

uint64_t sub_6F0F60()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6F1394;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_AB98B0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_6F10F8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_6F10F8()
{

  v0[23] = v0[5];
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_6F1164, v1, v2);
}

uint64_t sub_6F1164(uint64_t a1)
{
  v2 = *(v1 + 184);
  if (v2 == &dword_0 + 1)
  {
LABEL_6:
    (*(*(v1 + 112) + 8))(*(v1 + 120), *(v1 + 104));

    v10 = *(v1 + 8);

    return v10();
  }

  if (v2)
  {
    v3 = v2;
    v4 = [v3 tracklist];
    v5 = [v4 resetCommand];
    sub_D3144(v2);

    if (v5 && (swift_unknownObjectRelease(), v6 = [v3 playerPath], v7 = objc_msgSend(v6, "route"), v6, v7))
    {
      v8 = *(v1 + 184);
      v9 = [v7 isDeviceRoute];
      sub_D3144(v8);

      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_D3144(*(v1 + 184));
    }
  }

  *(v1 + 160) = sub_AB9930();
  v12 = sub_36A00(&qword_E13DF0, &qword_E13DE8, &qword_B228B8, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v13 = swift_task_alloc();
  *(v1 + 168) = v13;
  *v13 = v1;
  v13[1] = sub_6F0F60;
  v14 = *(v1 + 104);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 40, v14, v12);
}

uint64_t sub_6F1394()
{
  *(v0 + 48) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_6F1420(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    if (qword_E0CEC0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v5 = sub_AB4BC0();
      __swift_project_value_buffer(v5, qword_E72050);
      v6 = sub_AB4BA0();
      v7 = sub_AB9F50();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "╭ Updated Engine State", v8, 2u);
      }

      v9 = sub_AB4BA0();
      v10 = sub_AB9F50();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v38[0] = v12;
        *v11 = 136446210;
        if (*(v2 + v4) > 1u)
        {
          if (*(v2 + v4) == 2)
          {
            v13 = 0xA900000000000079;
            v14 = 0x6461655220859CE2;
          }

          else
          {
            v13 = 0xAE0064656C6C6174;
            v14 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v2 + v4))
        {
          v13 = 0xAD0000676E697472;
          v14 = 0x61745320809A9FF0;
        }

        else
        {
          v13 = 0xA700000000000000;
          v14 = 0x66664F208C9DE2;
        }

        v15 = sub_500C84(v14, v13, v38);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, v9, v10, "╰ %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      if (*(v2 + v4) <= 1u)
      {
        break;
      }

      if (*(v2 + v4) != 2)
      {
        return;
      }

      v26 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
      swift_beginAccess();
      v27 = *(v2 + v26);
      v28 = *(v27 + 16);

      if (!v28)
      {
LABEL_28:

        *(v2 + v26) = _swiftEmptyArrayStorage;

        return;
      }

      v29 = 0;
      v30 = v27 + 40;
      while (v29 < *(v27 + 16))
      {
        ++v29;
        v31 = *(v30 - 8);

        v31(v32);

        v30 += 16;
        if (v28 == v29)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    if (*(v2 + v4))
    {
      [*(v2 + OBJC_IVAR____TtC9MusicCore6Player_engine) start];
      v33 = sub_6F1B40();
      v34 = v33;
      v35 = v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if (v35 != 1)
      {
        [*&v33[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] beginAutomaticResponseLoading];
      }

      v22 = sub_6F3694();
      v36 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if ((v36 & 1) == 0)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "beginAutomaticResponseLoading";
        goto LABEL_34;
      }
    }

    else
    {
      v16 = sub_AB4BA0();
      v17 = sub_AB9F40();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_0, v16, v17, "❌ Stopped engine… which is not supposed to happen", v18, 2u);
      }

      v19 = sub_6F1B40();
      v20 = v19;
      v21 = v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v21)
      {
        [*&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller] endAutomaticResponseLoading];
      }

      v22 = sub_6F3694();
      v23 = v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v23)
      {
        v24 = *&v22[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v25 = "endAutomaticResponseLoading";
LABEL_34:
        v37 = v22;
        [v24 v25];

        return;
      }
    }
  }
}

uint64_t Player.engineState.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Player.EngineState.description.getter(unsigned __int8 a1)
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (a1 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (a1)
  {
    v1 = 0x61745320809A9FF0;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_6F19A8()
{
  v1 = 0x66664F208C9DE2;
  v2 = 0x6461655220859CE2;
  if (*v0 != 2)
  {
    v2 = 0x53208FB8EFA09AE2;
  }

  if (*v0)
  {
    v1 = 0x61745320809A9FF0;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_6F1A40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v6);

  v1 = v6[0];
  if (v6[0])
  {
    v2 = [v6[0] tracklist];
    v3 = [v2 resetCommand];

    if (v3)
    {
      swift_unknownObjectRelease();
      v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
      swift_beginAccess();
      v5 = *(v0 + v4);
      *(v0 + v4) = 2;
      sub_6F1420(v5);
    }
  }
}

char *sub_6F1B40()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  }

  else
  {
    v4 = v0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v28);

    v5 = v28[0];
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = type metadata accessor for Player.DataSource();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v10 = objc_allocWithZone(MPCPlayerRequest);

    *&v8[v9] = [v10 init];
    v8[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
    v11 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    *&v8[v11] = [objc_allocWithZone(MPRequestResponseController) init];
    *&v8[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v5;
    v12 = &v8[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged];
    *v12 = sub_6FD158;
    v12[1] = v6;
    v13 = &v8[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError];
    *v13 = sub_6FD160;
    v13[1] = v4;
    v29.receiver = v8;
    v29.super_class = v7;
    v27 = v5;

    v14 = objc_msgSendSuper2(&v29, "init");
    v15 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    v16 = *&v14[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v17 = v14;
    [v16 setDelegate:v17];
    v18 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v19 = qword_E0CEC8;
    v20 = *&v17[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
    if (v19 != -1)
    {
      swift_once();
    }

    [v20 setPlayingItemProperties:{qword_E13410, v6}];

    [*&v17[v18] setTracklistRange:{0, 0}];
    [*&v17[v18] setPlayerPath:v27];
    v21 = *&v17[v18];
    v28[0] = 0xD000000000000012;
    v28[1] = 0x8000000000B71070;
    v22 = v21;
    v30._countAndFlagsBits = 0x6B63616279616C50;
    v30._object = 0xEF646E616D6D6F43;
    sub_AB94A0(v30);
    v23 = sub_AB9260();

    [v22 setLabel:v23];

    [*&v14[v15] setRequest:*&v17[v18]];

    v24 = *(v4 + v1);
    *(v4 + v1) = v14;
    v3 = v17;

    v2 = 0;
  }

  v25 = v2;
  return v3;
}

double sub_6F1E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();

    UnfairLock.locked<A>(_:)(sub_6FD1CC);
  }

  return result;
}

void sub_6F1F64(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 playerPath];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = sub_6F91C4(v6);
    swift_endAccess();

    if (v7)
    {
      if (qword_E0CEC0 != -1)
      {
        swift_once();
      }

      v8 = sub_AB4BC0();
      __swift_project_value_buffer(v8, qword_E72050);
      v9 = sub_AB4BA0();
      v10 = sub_AB9F50();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_0, v9, v10, "| Cancelling ongoing timer for switching back to system route", v11, 2u);
      }

      swift_getObjectType();
      sub_ABA200();
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18[0] = a3;
    v12 = a3;

    sub_AB5520();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(v18);

    v13 = v18[0];
    if (v18[0])
    {
      v14 = [v18[0] tracklist];
      v15 = [v14 resetCommand];

      if (v15)
      {
        swift_unknownObjectRelease();
        v16 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
        swift_beginAccess();
        v17 = *(a1 + v16);
        *(a1 + v16) = 2;
        sub_6F1420(v17);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_6F21E8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 playerPath];
  if (v3)
  {
    v4 = v3;
    if (qword_E0CEC0 != -1)
    {
      swift_once();
    }

    v5 = sub_AB4BC0();
    __swift_project_value_buffer(v5, qword_E72050);
    swift_errorRetain();
    v6 = sub_AB4BA0();
    v7 = sub_AB9F30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136446210;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80, &qword_B16F10);
      v10 = sub_AB9350();
      v12 = sub_500C84(v10, v11, &v26);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v6, v7, "╭ Player Response failed to load with error=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
    }

    v13 = sub_AB3040();
    v14 = sub_6F2530();

    if (v14)
    {
      __chkstk_darwin();
      UnfairLock.locked<A>(_:)(sub_6FD168);
    }

    else
    {
      v15 = v4;
      v16 = sub_AB4BA0();
      v17 = sub_AB9F50();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136446210;
        v20 = v15;
        v21 = [v20 description];
        v22 = sub_AB92A0();
        v24 = v23;

        v25 = sub_500C84(v22, v24, &v26);

        *(v18 + 4) = v25;
        _os_log_impl(&dword_0, v16, v17, "╰ playerPath=%{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6F2530()
{
  v1 = v0;
  v2 = [v0 domain];
  v3 = sub_AB92A0();
  v5 = v4;

  v6 = [v1 code];
  if (sub_AB92A0() == v3 && v7 == v5)
  {

    if (v6 == &dword_0 + 2)
    {
LABEL_7:
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) != 0 && v6 == &dword_0 + 2)
    {
      goto LABEL_7;
    }
  }

  v35 = _swiftEmptyArrayStorage;
  v11 = [v1 userInfo];
  v12 = sub_AB8FF0();

  v13 = sub_AB92A0();
  if (!*(v12 + 16))
  {

    goto LABEL_14;
  }

  v15 = sub_52215C(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_808B0(*(v12 + 56) + 32 * v15, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13DB0, &unk_B22880);
  if (swift_dynamicCast())
  {
    sub_511528(v33);
  }

LABEL_15:
  v18 = [v1 userInfo];
  v19 = sub_AB8FF0();

  v20 = sub_AB92A0();
  if (*(v19 + 16))
  {
    v22 = sub_52215C(v20, v21);
    v24 = v23;

    if (v24)
    {
      sub_808B0(*(v19 + 56) + 32 * v22, v34);

      sub_13C80(0, &qword_E0E300, NSError_ptr);
      if (swift_dynamicCast())
      {
        v25 = v33;
        sub_AB9730();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

LABEL_23:
  v26 = v35;
  if (v35 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_ABAE20();
      }

      else
      {
        if (v28 >= *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v10 = sub_6F2530();

      if ((v10 & 1) == 0)
      {
        ++v28;
        if (v31 != i)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v10 = 0;
LABEL_38:

  return v10 & 1;
}

void sub_6F2904(void *a1, uint64_t a2)
{
  v4 = sub_AB7BE0();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin();
  v86 = (&v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v85 = (&v71 - v6);
  v89 = sub_AB7C80();
  v84 = *(v89 - 8);
  __chkstk_darwin();
  v82 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v71 - v8;
  v9 = sub_AB7C10();
  v81 = *(v9 - 8);
  __chkstk_darwin();
  v79 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_AB7C50();
  v78 = *(v80 - 8);
  __chkstk_darwin();
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_ABA1D0();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_E0CEC0 != -1)
  {
    swift_once();
  }

  v13 = sub_AB4BC0();
  v14 = __swift_project_value_buffer(v13, qword_E72050);
  v15 = a1;
  v16 = sub_AB4BA0();
  v17 = sub_AB9F50();

  v18 = os_log_type_enabled(v16, v17);
  v90 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v73 = v9;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136446210;
    v22 = v15;
    v23 = a2;
    v24 = v22;
    v25 = [v22 description];
    v72 = v14;
    v26 = v25;
    v27 = sub_AB92A0();
    v29 = v28;

    a2 = v23;
    v30 = sub_500C84(v27, v29, aBlock);

    *(v19 + 4) = v30;
    _os_log_impl(&dword_0, v16, v17, "| Invalid playerPath=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v9 = v73;
  }

  v31 = sub_AB4BA0();
  v32 = sub_AB9F50();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_0, v31, v32, "╰ Stalling engine while attempting to reload", v33, 2u);
  }

  v34 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  v35 = *(a2 + v34);
  *(a2 + v34) = 3;
  sub_6F1420(v35);
  v36 = OBJC_IVAR____TtC9MusicCore6Player_failingPlayerPathTimers;
  swift_beginAccess();
  v37 = *(a2 + v36);

  v38 = sub_6E3B24(v90, v37);

  if (v38)
  {
    goto LABEL_18;
  }

  v73 = v36;
  v39 = sub_AB4BA0();
  v40 = sub_AB9F50();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "╰ Switching back to system route in 5seconds.", v41, 2u);
  }

  sub_13C80(0, &unk_E11A20, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_6FC5D8(&unk_E11A30, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13D80, &unk_B1EE70);
  sub_36A00(&unk_E11A40, &qword_E13D80, &unk_B1EE70, &protocol conformance descriptor for [A]);
  v42 = v74;
  v43 = v76;
  sub_ABABB0();
  sub_13C80(0, &qword_E103C0, OS_dispatch_queue_ptr);
  v44 = sub_ABA150();
  v45 = sub_ABA1E0();

  v75[1](v42, v43);
  v72 = v45;
  ObjectType = swift_getObjectType();
  v47 = swift_allocObject();
  v71 = a2;
  swift_weakInit();
  v48 = swift_allocObject();
  v49 = v90;
  *(v48 + 16) = v47;
  *(v48 + 24) = v49;
  aBlock[4] = sub_6FD1C4;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_266_0;
  v50 = _Block_copy(aBlock);
  v75 = v49;

  v51 = v77;
  sub_AB7C30();
  v52 = v79;
  v76 = ObjectType;
  sub_6E3C90();
  sub_ABA1F0();
  _Block_release(v50);
  (*(v81 + 8))(v52, v9);
  (*(v78 + 8))(v51, v80);

  v53 = v82;
  sub_AB7C70();
  v54 = v85;
  *v85 = 5;
  v55 = v87;
  v56 = v88;
  v57 = *(v87 + 104);
  v57(v54, enum case for DispatchTimeInterval.seconds(_:), v88);
  v58 = v83;
  sub_AB7CD0();
  v90 = *(v55 + 8);
  (v90)(v54, v56);
  v59 = *(v84 + 8);
  v59(v53, v89);
  v57(v54, enum case for DispatchTimeInterval.never(_:), v56);
  v60 = v86;
  *v86 = 0;
  v57(v60, enum case for DispatchTimeInterval.nanoseconds(_:), v56);
  v61 = v72;
  sub_ABA3E0();
  v62 = v60;
  v63 = v90;
  (v90)(v62, v56);
  v63(v54, v56);
  v59(v58, v89);
  v64 = v71;
  v65 = v61;
  sub_ABA210();
  v66 = v73;
  swift_beginAccess();
  v67 = *(v64 + v66);
  if ((v67 & 0xC000000000000001) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_17;
  }

  if (v67 < 0)
  {
    v68 = *(v64 + v66);
  }

  else
  {
    v68 = v67 & 0xFFFFFFFFFFFFFF8;
  }

  swift_unknownObjectRetain();
  v69 = sub_ABAFA0();
  if (!__OFADD__(v69, 1))
  {
    *(v64 + v66) = sub_6F94C8(v68, v69 + 1);
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(v64 + v66);
    sub_526430(v65, v75, isUniquelyReferenced_nonNull_native);
    *(v64 + v66) = v92;
    swift_endAccess();
LABEL_18:
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}
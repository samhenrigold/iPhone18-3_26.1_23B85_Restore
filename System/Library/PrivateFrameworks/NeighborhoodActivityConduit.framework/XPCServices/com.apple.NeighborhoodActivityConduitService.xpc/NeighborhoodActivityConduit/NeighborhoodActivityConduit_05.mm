uint64_t sub_100082D40()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100082E58()
{
  v2 = *v1;

  v3 = *(v2 + 264);
  if (v0)
  {

    v4 = sub_1000AE1F8;
  }

  else
  {

    v4 = sub_100082FB4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100082FB4()
{
  v1 = *(v0 + 569);
  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  if (v1 == 1)
  {
    *(v0 + 571) = *(v0 + 570);
    v2 = swift_task_alloc();
    *(v0 + 544) = v2;
    *v2 = v0;
    v2[1] = sub_100083240;
    v3 = *(v0 + 88);

    return sub_1000BC98C(v3);
  }

  else if (*(v0 + 570))
  {
    v5 = swift_task_alloc();
    *(v0 + 552) = v5;
    *v5 = v0;
    v5[1] = sub_10008352C;
    v6 = *(v0 + 352);
    v7 = *(v0 + 80);

    return sub_10008470C(v7, v6, 0);
  }

  else
  {
    v8 = *(v0 + 280);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    swift_willThrow();

    v13 = *(v12 + 8);
    v13(v9, v11);
    v13(v10, v11);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100083240()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_100083350, v1, 0);
}

uint64_t sub_100083350(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 571) == 1)
  {
    v3 = swift_task_alloc();
    *(v2 + 552) = v3;
    *v3 = v2;
    v3[1] = sub_10008352C;
    v4 = *(v2 + 352);
    v5 = *(v2 + 80);

    return sub_10008470C(v5, v4, 0);
  }

  else
  {
    v7 = *(v2 + 280);
    v8 = *(v2 + 176);
    v9 = *(v2 + 184);
    v10 = *(v2 + 144);
    v11 = *(v2 + 152);
    swift_willThrow();

    v12 = *(v11 + 8);
    v12(v8, v10);
    v12(v9, v10);

    v13 = *(v2 + 8);

    return v13();
  }
}

uint64_t sub_10008352C()
{
  v2 = *v1;

  v3 = *(v2 + 264);
  if (v0)
  {

    v4 = sub_1000AE210;
  }

  else
  {
    v4 = sub_100083664;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100083664(uint64_t a1, uint64_t a2)
{
  v3 = v2[35];
  v4 = v2[22];
  v5 = v2[23];
  v6 = v2[18];
  v7 = v2[19];
  swift_willThrow();

  v8 = *(v7 + 8);
  v8(v4, v6);
  v8(v5, v6);

  v9 = v2[1];

  return v9();
}

uint64_t sub_1000837B0(uint64_t a1)
{
  v37 = v1;
  *(v1 + 520) = *(v1 + 384);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v36 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v1 + 564);
    v7 = *(v1 + 565);
    v8 = *(v1 + 566);
    if (*(v1 + 566))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    if (*(v1 + 565))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_10009EE2C(v10 | v6 | v9);
    v13 = sub_100029C70(v11, v12, &v36);

    *(v4 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Rolling back for %s.", v4, 0xCu);
    sub_10000E9DC(v5);

    if (v8)
    {
      *(v1 + 570) = v6;
      *(v1 + 569) = v7;
      v14 = *(v1 + 264);
      v15 = *(v1 + 216);
      v16 = *(v1 + 184);
      v17 = *(v1 + 72);
      v18 = [*(v1 + 280) groupUUID];
      sub_1000E0D38();

      v20 = sub_1000A75DC(&qword_100120020, v19, type metadata accessor for ConduitActor, &unk_1000F2250);
      v21 = swift_task_alloc();
      *(v1 + 528) = v21;
      v21[2] = v17;
      v21[3] = v15;
      v21[4] = v16;
      v22 = swift_task_alloc();
      *(v1 + 536) = v22;
      *v22 = v1;
      v22[1] = sub_100082E58;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v22, v14, v20, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v21, &type metadata for () + 8);
    }

    if (v7)
    {
      *(v1 + 571) = v6;
      v30 = swift_task_alloc();
      *(v1 + 544) = v30;
      *v30 = v1;
      v30[1] = sub_100083240;
      v31 = *(v1 + 88);

      return sub_1000BC98C(v31);
    }

    if (v6)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(v1 + 384))
    {
LABEL_21:
      v32 = swift_task_alloc();
      *(v1 + 552) = v32;
      *v32 = v1;
      v32[1] = sub_10008352C;
      v33 = *(v1 + 352);
      v34 = *(v1 + 80);

      return sub_10008470C(v34, v33, 0);
    }
  }

  v23 = *(v1 + 280);
  v24 = *(v1 + 176);
  v25 = *(v1 + 184);
  v26 = *(v1 + 144);
  v27 = *(v1 + 152);
  swift_willThrow();

  v28 = *(v27 + 8);
  v28(v24, v26);
  v28(v25, v26);

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_100083C80(uint64_t a1)
{
  v37 = v1;
  *(v1 + 520) = *(v1 + 400);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v36 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v1 + 564);
    v7 = *(v1 + 565);
    v8 = *(v1 + 566);
    if (*(v1 + 566))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    if (*(v1 + 565))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_10009EE2C(v10 | v6 | v9);
    v13 = sub_100029C70(v11, v12, &v36);

    *(v4 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[HandoffConversation] Rolling back for %s.", v4, 0xCu);
    sub_10000E9DC(v5);

    if (v8)
    {
      *(v1 + 570) = v6;
      *(v1 + 569) = v7;
      v14 = *(v1 + 264);
      v15 = *(v1 + 216);
      v16 = *(v1 + 184);
      v17 = *(v1 + 72);
      v18 = [*(v1 + 280) groupUUID];
      sub_1000E0D38();

      v20 = sub_1000A75DC(&qword_100120020, v19, type metadata accessor for ConduitActor, &unk_1000F2250);
      v21 = swift_task_alloc();
      *(v1 + 528) = v21;
      v21[2] = v17;
      v21[3] = v15;
      v21[4] = v16;
      v22 = swift_task_alloc();
      *(v1 + 536) = v22;
      *v22 = v1;
      v22[1] = sub_100082E58;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v22, v14, v20, 0xD00000000000001DLL, 0x80000001000EBCE0, sub_1000ACDA4, v21, &type metadata for () + 8);
    }

    if (v7)
    {
      *(v1 + 571) = v6;
      v30 = swift_task_alloc();
      *(v1 + 544) = v30;
      *v30 = v1;
      v30[1] = sub_100083240;
      v31 = *(v1 + 88);

      return sub_1000BC98C(v31);
    }

    if (v6)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(v1 + 384))
    {
LABEL_21:
      v32 = swift_task_alloc();
      *(v1 + 552) = v32;
      *v32 = v1;
      v32[1] = sub_10008352C;
      v33 = *(v1 + 352);
      v34 = *(v1 + 80);

      return sub_10008470C(v34, v33, 0);
    }
  }

  v23 = *(v1 + 280);
  v24 = *(v1 + 176);
  v25 = *(v1 + 184);
  v26 = *(v1 + 144);
  v27 = *(v1 + 152);
  swift_willThrow();

  v28 = *(v27 + 8);
  v28(v24, v26);
  v28(v25, v26);

  v29 = *(v1 + 8);

  return v29();
}

uint64_t sub_100084150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  v4[9] = swift_task_alloc();
  v5 = sub_1000E0D68();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v4[13] = qword_1001230F0;

  return _swift_task_switch(sub_100084284, v6, 0);
}

uint64_t sub_100084284()
{
  v1 = *(v0 + 56);
  v2 = [*(v0 + 48) groupUUID];
  sub_1000E0D38();

  if (v1)
  {
    LOBYTE(v1) = [*(v0 + 56) isAudioCallCapable];
  }

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = [*(v6 + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaAudioCallsEnabled] & v1;
  v9 = *(v6 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationUIStateObserver);
  v10 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
  swift_beginAccess();
  sub_10000CB64(v9 + v10, v5, &qword_10011E478, &unk_1000F0998);
  v12 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor, &unk_1000F2250);
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v4;
  *(v13 + 32) = v8;
  *(v13 + 40) = v7;
  *(v13 + 48) = v5;
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  v15 = sub_1000E0FE8();
  *v14 = v0;
  v14[1] = sub_100084488;
  v16 = *(v0 + 40);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v16, v3, v12, 0xD000000000000035, 0x80000001000EBD90, sub_1000AD3F0, v13, v15);
}

uint64_t sub_100084488()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_100084658;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1000845AC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000845AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1000033C8(v0[9], &qword_10011E478, &unk_1000F0998);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100084658()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  sub_1000033C8(v4, &qword_10011E478, &unk_1000F0998);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10008470C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1000E0D68();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  *(v4 + 72) = qword_1001230F0;

  return _swift_task_switch(sub_100084814, v7, 0);
}

uint64_t sub_100084814()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 120);
  v4 = [objc_allocWithZone(TUConversationPresentationContext) init];
  *(v0 + 80) = v4;
  [v4 setMode:v1];
  v5 = [objc_allocWithZone(TUConversationHandoffContext) init];
  *(v0 + 88) = v5;
  [v5 setPrefersToPlayDuringWombat:v1 != 2];
  v6 = [objc_opt_self() noNotificationInvitationPreferences];
  sub_10000CAAC(0, &qword_10011FCA8, TUConversationInvitationPreference_ptr);
  sub_10000EA70(&unk_10011FCB0, &qword_10011FCA8, TUConversationInvitationPreference_ptr, &protocol conformance descriptor for NSObject);
  sub_1000E25E8();

  isa = sub_1000E25D8().super.isa;

  [v5 setInvitationPreferences:isa];

  [v5 setPresentationContext:v4];
  [v5 setSetUplinkMuted:v3];
  v8 = *(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  v9 = sub_1000E0D18().super.isa;
  [v8 prepareConversationWithUUID:v9 withHandoffContext:v5];

  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  v15 = sub_1000E2DA8();
  v17 = v16;
  (*(v12 + 16))(v10, v14, v11);
  v18 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v0 + 96) = v19;
  *(v19 + 16) = v13;
  (*(v12 + 32))(v19 + v18, v10, v11);
  v20 = v13;
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_100084B44;

  return sub_10005CD04(sub_10005CD04, v15, v17, &unk_1000F2A70, v19);
}

uint64_t sub_100084B44()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_100084CE0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_100084C6C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100084C6C()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100084CE0()
{
  v1 = v0[11];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100084D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000E2B28();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v5[7] = qword_1001230F0;

  return _swift_task_switch(sub_100084E94, v7, 0);
}

uint64_t sub_100084E94()
{
  sub_1000E2CF8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100084F60;

  return sub_100003DA4(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100084F60()
{
  v2 = *v1;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_1000AE288;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = sub_10008510C;
  }

  return _swift_task_switch(v7, v3, 0);
}

uint64_t sub_10008510C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  [v1 updateLocalParticipantToAVLessWithPresentationMode:2 forConversationUUID:isa];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000851B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = sub_1000E13E8();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_1000E15C8();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_1000E0FE8();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_10000ADE4(&unk_10011FA80, &qword_1000F2660);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v8 = sub_1000E0D68();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for HandoffInfo(0);
  v4[29] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = qword_1001230F0;
  v4[30] = qword_1001230F0;

  return _swift_task_switch(sub_1000854B0, v9, 0);
}

uint64_t sub_1000854B0()
{
  v47 = v0;
  v1 = v0[27];
  v2 = v0[5];
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v3, v1, &qword_10011F888, &qword_1000F22B0);
  v4 = type metadata accessor for HandoffState(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = v0[27];
  if (v5 == 1)
  {
    sub_1000033C8(v0[27], &qword_10011F888, &qword_1000F22B0);
LABEL_22:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v38 = sub_1000E1F08();
    sub_1000049D0(v38, qword_100123128);

    v39 = sub_1000E1EE8();
    v40 = sub_1000E2678();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v0[6];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_100029C70(*(v41 + 16), *(v41 + 24), v46);
      _os_log_impl(&_mh_execute_header, v39, v40, "[PullConversationHandoff] Rejecting request because we don't have a session active with %s", v42, 0xCu);
      sub_10000E9DC(v43);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
LABEL_27:

    v44 = v0[1];

    return v44();
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = type metadata accessor for HandoffState;
    v8 = v6;
LABEL_21:
    sub_1000AD5EC(v8, v20);
    goto LABEL_22;
  }

  v7 = v0[29];
  sub_1000A877C(v6, v7, type metadata accessor for HandoffInfo);
  v8 = v0[29];
  if (*v7 != 1)
  {
LABEL_20:
    v20 = type metadata accessor for HandoffInfo;
    goto LABEL_21;
  }

  v9 = v0[6];
  v10 = *(v9 + 16) == *(v8 + 8) && *(v9 + 24) == *(v8 + 16);
  if (!v10 && (sub_1000E2C68() & 1) == 0)
  {
    v8 = v0[29];
    goto LABEL_20;
  }

  v11 = v0[5];
  v12 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v0[31] = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v13 = *(v11 + v12);
  isa = sub_1000E0D18().super.isa;
  v15 = [v13 activeConversationWithUUID:isa];
  v0[32] = v15;

  if (!v15)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v21 = v0[26];
    v22 = v0[23];
    v23 = v0[24];
    v24 = v0[7];
    v25 = sub_1000E1F08();
    sub_1000049D0(v25, qword_100123128);
    (*(v23 + 16))(v21, v24, v22);
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[26];
    v30 = v0[23];
    v31 = v0[24];
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46[0] = v33;
      *v32 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = sub_1000E2C18();
      v36 = v35;
      (*(v31 + 8))(v29, v30);
      v37 = sub_100029C70(v34, v36, v46);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "[PullConversationHandoff] Unable to find conversation with %s.", v32, 0xCu);
      sub_10000E9DC(v33);
    }

    else
    {

      (*(v31 + 8))(v29, v30);
    }

    v45 = v0[29];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000AD5EC(v45, type metadata accessor for HandoffInfo);
    goto LABEL_27;
  }

  v16 = swift_task_alloc();
  v0[33] = v16;
  *v16 = v0;
  v16[1] = sub_100085B18;
  v17 = v0[29];
  v18 = v0[22];

  return sub_100087148(v18, v17);
}

uint64_t sub_100085B18()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_100085C28, v1, 0);
}

uint64_t sub_100085C28()
{
  *(v0 + 272) = *(*(v0 + 40) + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230D0;

  return _swift_task_switch(sub_100085CD0, v1, 0);
}

uint64_t sub_100085CD0()
{
  v1 = *(v0 + 240);
  sub_10002E8E4(10.0);

  return _swift_task_switch(sub_100085D40, v1, 0);
}

uint64_t sub_100085D40()
{
  v26 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  sub_10000CB64(v0[22], v1, &unk_10011FA80, &qword_1000F2660);
  v4 = *(v3 + 48);
  v0[35] = v4;
  v0[36] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_1000033C8(v0[21], &unk_10011FA80, &qword_1000F2660);
LABEL_3:
    v5 = 2;
    goto LABEL_8;
  }

  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  (*(v8 + 32))(v6, v0[21], v7);
  sub_1000E0FB8();
  (*(v8 + 8))(v6, v7);
  (*(v12 + 32))(v10, v9, v11);
  v13 = (*(v12 + 88))(v10, v11);
  if (v13 == enum case for NCProtoConversationAVMode.none(_:))
  {
    v5 = 0;
  }

  else
  {
    if (v13 != enum case for NCProtoConversationAVMode.audio(_:))
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      goto LABEL_3;
    }

    v5 = 1;
  }

LABEL_8:
  v0[37] = v5;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v14 = sub_1000E1F08();
  v0[38] = sub_1000049D0(v14, qword_100123128);
  v15 = sub_1000E1EE8();
  v16 = sub_1000E2698();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = TUConversationAVMode.description.getter(v5);
    v21 = sub_100029C70(v19, v20, &v25);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "[PullConversationHandoff] Re-enabling Wombat priority and upgrading to %s.", v17, 0xCu);
    sub_10000E9DC(v18);
  }

  v22 = swift_task_alloc();
  v0[39] = v22;
  *v22 = v0;
  v22[1] = sub_100086058;
  v23 = v0[7];

  return sub_10008470C(v23, 0, 1);
}

uint64_t sub_100086058()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_100086FF8;
  }

  else
  {
    v4 = sub_100086184;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100086184()
{
  v1 = v0[37];
  v2 = *(v0[5] + v0[31]);
  isa = sub_1000E0D18().super.isa;
  [v2 setLocalParticipantAudioVideoMode:v1 forConversationUUID:isa];

  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[PullConversationHandoff] End handoff", v6, 2u);
  }

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  (*(v8 + 104))(v7, enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:), v9);
  v10 = sub_10006B2FC(v7);
  v0[41] = v10;
  (*(v8 + 8))(v7, v9);
  v11 = swift_task_alloc();
  v0[42] = v11;
  *v11 = v0;
  v11[1] = sub_100086344;

  return Task<>.value.getter(v11, v10, &type metadata for () + 8);
}

uint64_t sub_100086344()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_100086470, v1, 0);
}

uint64_t sub_100086470(uint64_t a1)
{
  v53 = v1;
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PullConversationHandoff] Exit Laguna Rapport Session", v4, 2u);
  }

  v5 = *(v1 + 280);
  v6 = *(v1 + 176);
  v7 = *(v1 + 160);
  v8 = *(v1 + 120);
  v9 = *(v1 + 40);

  v10 = *(v9 + OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery);
  v11 = sub_1000E2328();
  [v10 exitDiscoverySessionWithReason:v11];

  sub_10000CB64(v6, v7, &unk_10011FA80, &qword_1000F2660);
  if (v5(v7, 1, v8) == 1)
  {
    sub_1000033C8(*(v1 + 160), &unk_10011FA80, &qword_1000F2660);
    v12 = sub_1000E1EE8();
    v13 = sub_1000E2698();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "[PullConversationHandoff] Launch ICS", v14, 2u);
    }

    v15 = *(v1 + 240);

    v17 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor, &unk_1000F2250);
    v18 = swift_task_alloc();
    *(v1 + 368) = v18;
    *v18 = v1;
    v18[1] = sub_100086CBC;
    v19 = sub_100087E54;
    v20 = 0xD000000000000021;
    v21 = 0x80000001000EBDF0;
    v22 = &type metadata for () + 8;
    v23 = v15;
    v24 = v17;
    v25 = 0;
  }

  else
  {
    v27 = *(v1 + 136);
    v26 = *(v1 + 144);
    v28 = *(v1 + 120);
    v29 = *(v1 + 128);
    (*(v29 + 32))(v26, *(v1 + 160), v28);
    (*(v29 + 16))(v27, v26, v28);
    v30 = sub_1000E1EE8();
    v31 = sub_1000E2698();
    v32 = os_log_type_enabled(v30, v31);
    v34 = *(v1 + 128);
    v33 = *(v1 + 136);
    v35 = *(v1 + 120);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v37;
      *v36 = 136315138;
      v51 = NCProtoCallState.description.getter();
      v39 = v38;
      v40 = *(v34 + 8);
      v40(v33, v35);
      v41 = sub_100029C70(v51, v39, &v52);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[PullConversationHandoff] Setting callState to match TV callState: %s", v36, 0xCu);
      sub_10000E9DC(v37);
    }

    else
    {

      v40 = *(v34 + 8);
      v40(v33, v35);
    }

    *(v1 + 344) = v40;
    v42 = *(v1 + 240);
    v43 = *(v1 + 200);
    v44 = *(v1 + 144);
    v45 = *(v1 + 40);
    v46 = [*(v1 + 256) groupUUID];
    sub_1000E0D38();

    v48 = sub_1000A75DC(&qword_100120020, v47, type metadata accessor for ConduitActor, &unk_1000F2250);
    v49 = swift_task_alloc();
    *(v1 + 352) = v49;
    v49[2] = v45;
    v49[3] = v43;
    v49[4] = v44;
    v18 = swift_task_alloc();
    *(v1 + 360) = v18;
    *v18 = v1;
    v18[1] = sub_10008699C;
    v19 = sub_1000AE228;
    v20 = 0xD00000000000001DLL;
    v21 = 0x80000001000EBCE0;
    v22 = &type metadata for () + 8;
    v23 = v42;
    v24 = v48;
    v25 = v49;
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v18, v23, v24, v20, v21, v19, v25, v22);
}

uint64_t sub_10008699C()
{
  v2 = *v1;

  v3 = *(v2 + 240);
  if (v0)
  {

    v4 = sub_1000AE278;
  }

  else
  {

    v4 = sub_100086AF8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100086AF8()
{
  v1 = v0[43];
  v2 = v0[18];
  v3 = v0[15];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1(v2, v3);
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[PullConversationHandoff] Launch ICS", v6, 2u);
  }

  v7 = v0[30];

  v9 = sub_1000A75DC(&qword_100120020, v8, type metadata accessor for ConduitActor, &unk_1000F2250);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_100086CBC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v7, v9, 0xD000000000000021, 0x80000001000EBDF0, sub_100087E54, 0, &type metadata for () + 8);
}

uint64_t sub_100086CBC()
{
  v2 = *v1;

  v3 = *(v2 + 240);
  if (v0)
  {

    v4 = sub_1000AE22C;
  }

  else
  {
    v4 = sub_100086DF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100086DF4(uint64_t a1)
{
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PullConversationHandoff] Set SharePlay not handedOff", v4, 2u);
  }

  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[29];
  v8 = v1[22];
  v9 = v1[5];

  v10 = *(v9 + v5);
  isa = sub_1000E0D18().super.isa;
  [v10 setSharePlayHandedOff:0 onConversationWithUUID:isa];

  sub_1000033C8(v8, &unk_10011FA80, &qword_1000F2660);
  sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);

  v12 = v1[1];

  return v12();
}

uint64_t sub_100086FF8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);

  sub_1000033C8(v2, &unk_10011FA80, &qword_1000F2660);
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100087148(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E0FE8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1000E1358();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_1000E13B8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  type metadata accessor for HandoffInfo(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v3[18] = qword_1001230F0;

  return _swift_task_switch(sub_10008734C, v7, 0);
}

uint64_t sub_10008734C()
{
  v22 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[3];
  v3 = sub_1000E1F08();
  v0[19] = sub_1000049D0(v3, qword_100123128);
  sub_1000A87E4(v2, v1, type metadata accessor for HandoffInfo);
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = sub_1000DDC88();
    v12 = v11;
    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
    v13 = sub_100029C70(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Sending callState request for %s", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  else
  {

    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
  }

  v14 = v0[3];
  *(swift_task_alloc() + 16) = v14;
  sub_1000A75DC(&qword_100120270, 255, &type metadata accessor for NCProtoCallStateRequest, &protocol conformance descriptor for NCProtoCallStateRequest);
  sub_1000E0E38();

  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[20] = qword_1001230E0;
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_100087670;
  v18 = v0[14];
  v19 = v0[10];

  return sub_1000B6B1C(v18, 9, v19, v15, v16, 0);
}

uint64_t sub_100087670()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100087B40;
  }

  else
  {
    v4 = sub_10008779C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10008779C()
{
  v1 = v0[18];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100087818, v1, 0);
}

uint64_t sub_100087818()
{
  v32 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  sub_1000A87E4(v0[3], v0[16], type metadata accessor for HandoffInfo);
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  if (v7)
  {
    v30 = v6;
    v12 = v0[6];
    v13 = v0[7];
    v28 = v0[5];
    v29 = v0[11];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_1000DDC88();
    v17 = v16;
    sub_1000AD5EC(v8, type metadata accessor for HandoffInfo);
    v18 = sub_100029C70(v15, v17, &v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_1000E13A8();
    v19 = NCProtoCallState.description.getter();
    v21 = v20;
    (*(v12 + 8))(v13, v28);
    v22 = *(v10 + 8);
    v22(v9, v29);
    v23 = sub_100029C70(v19, v21, &v31);

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v5, v30, "CallState retrieved for associated TV with %s with result %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v22 = *(v10 + 8);
    v22(v9, v11);
    sub_1000AD5EC(v8, type metadata accessor for HandoffInfo);
  }

  v24 = v0[14];
  v25 = v0[11];
  sub_1000E13A8();
  v22(v24, v25);
  (*(v0[6] + 56))(v0[2], 0, 1, v0[5]);

  v26 = v0[1];

  return v26();
}

uint64_t sub_100087B40()
{
  v1 = v0[18];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100087BBC, v1, 0);
}

uint64_t sub_100087BBC()
{
  v16 = v0;
  sub_1000A87E4(v0[3], v0[15], type metadata accessor for HandoffInfo);
  swift_errorRetain();
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2678();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v5 = 136315394;
    v8 = sub_1000DDC88();
    v10 = v9;
    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
    v11 = sub_100029C70(v8, v10, &v15);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to retrieve CallState for associated TV for %s with error %@", v5, 0x16u);
    sub_1000033C8(v6, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v7);
  }

  else
  {

    sub_1000AD5EC(v4, type metadata accessor for HandoffInfo);
  }

  (*(v0[6] + 56))(v0[2], 1, 1, v0[5]);

  v13 = v0[1];

  return v13();
}

void sub_100087E54(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = sub_1000E0C38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() faceTimeShowInCallUIURL];
  if (v10)
  {
    v11 = v10;
    sub_1000E0C28();

    sub_1000E0BF8(v12);
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    (*(v3 + 16))(v5, a1, v2);
    v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v16 = swift_allocObject();
    (*(v3 + 32))(v16 + v15, v5, v2);
    aBlock[4] = sub_1000ADFEC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100088334;
    aBlock[3] = &unk_100115AE8;
    v17 = _Block_copy(aBlock);

    TUOpenURLWithCompletion();
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000880D8(uint64_t a1, void *a2)
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_100123128);

  swift_errorRetain();
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v9 = sub_1000E22C8();
    v11 = sub_100029C70(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v6 + 14) = v12;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[PullConversationHandoff] Launch ICS result:%s error:%@", v6, 0x16u);
    sub_1000033C8(v7, &unk_10011EAC0, &unk_1000F0E60);

    sub_10000E9DC(v8);
  }

  if (a2)
  {
    v15 = a2;
    swift_errorRetain();
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    return sub_1000E24C8();
  }

  else
  {
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    return sub_1000E24D8();
  }
}

void sub_100088334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1000E22B8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1000883D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v4 = sub_1000E0D68();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v6 = sub_10000ADE4(&qword_10011FBE0, &qword_1000F2850);
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v7 = sub_10000ADE4(&qword_10011FBE8, &qword_1000F2858);
  v3[13] = v7;
  v3[14] = *(v7 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v3[17] = qword_1001230F0;

  return _swift_task_switch(sub_1000885B4, v8, 0);
}

uint64_t sub_1000885B4()
{
  v1 = v0[13];
  v16 = v0[16];
  v17 = v0[14];
  v2 = v0[12];
  v14 = v0[15];
  v15 = v0[11];
  v3 = v0[7];
  v13 = v0[10];
  v11 = v0[6];
  v12 = v0[9];
  v10 = v0[5];
  v0[2] = *(*(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v0[3] = sub_1000E2028();
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000E2038();

  (*(v3 + 16))(v12, v10, v11);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  (*(v3 + 32))(v5 + v4, v12, v11);
  sub_100002C64(&qword_10011FBF0, &qword_10011FBE0, &qword_1000F2850, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_1000E2078();

  (*(v15 + 8))(v2, v13);
  sub_1000E1F28();
  v6 = *(v17 + 8);
  v6(v14, v1);
  sub_100002C64(&qword_10011FBF8, &qword_10011FBE8, &qword_1000F2858, &protocol conformance descriptor for Publishers.Filter<A>);
  v7 = sub_1000E2028();
  v0[18] = v7;
  v6(v16, v1);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_100088970;

  return sub_10009F290(v7);
}

uint64_t sub_100088970(void *a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  v5 = *(v4 + 136);
  if (v1)
  {
    v6 = sub_100088B40;
  }

  else
  {

    v6 = sub_100088AA8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100088AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100088B40()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_100088BD8(id *a1)
{
  v1 = [*a1 presentationContext];
  v2 = [v1 mode];

  return v2 == 2;
}

uint64_t sub_100088C2C(uint64_t a1, char *a2, uint64_t a3, int a4, void *a5, uint64_t a6)
{
  v43 = a1;
  v44 = a6;
  v48 = a5;
  v47 = a4;
  v42 = a3;
  v54 = a2;
  v50 = sub_1000E2118();
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E2148();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  v41 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v40 = &v37 - v10;
  v12 = sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
  v38 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v39 = &v37 - v15;
  v17 = sub_1000E0D68();
  v37 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [*&v54[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  (*(v18 + 16))(v20, v42, v17);
  (*(v13 + 16))(v16, v43, v12);
  sub_10000CB64(v44, v11, &qword_10011E478, &unk_1000F0998);
  v21 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v22 = (v19 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = v22 + v14;
  v24 = v23 & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v41 + 80) + (v23 & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  v27 = v54;
  *(v26 + 16) = v54;
  (*(v18 + 32))(v26 + v21, v20, v37);
  (*(v13 + 32))(v26 + v22, v39, v38);
  *(v26 + v23) = v47;
  v28 = v48;
  *(v26 + v24 + 8) = v48;
  sub_1000AD400(v40, v26 + v25, &qword_10011E478, &unk_1000F0998);
  aBlock[4] = sub_1000AD468;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115980;
  v29 = _Block_copy(aBlock);
  v30 = v27;
  v31 = v28;
  v32 = v46;
  sub_1000E2138();
  v55 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v34 = v49;
  v33 = v50;
  sub_1000E28C8();
  v35 = v45;
  sub_1000E2738();
  _Block_release(v29);

  (*(v53 + 8))(v34, v33);
  (*(v51 + 8))(v32, v52);
}

void sub_1000891F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1000E0FE8();
  __chkstk_darwin(v10);
  v11 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  isa = sub_1000E0D18().super.isa;
  v13 = [v11 callForConversationWithGroupUUID:isa];

  if (v13)
  {
    __chkstk_darwin(v14);
    *(&v15 - 4) = v13;
    *(&v15 - 24) = a4 & 1;
    *(&v15 - 2) = a5;
    *(&v15 - 1) = a6;
    sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
    sub_1000E0E38();
    sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
    sub_1000E24D8();
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
    sub_1000E24C8();
  }
}

uint64_t sub_1000893E4(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_1000E15C8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 isUplinkMuted];
  sub_1000E0F38();
  [a2 isSendingVideo];
  sub_1000E0F58();
  if (a3)
  {
    v16 = [a4 resolvedAudioVideoMode];
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = &enum case for NCProtoConversationAVMode.audio(_:);
      }

      else
      {
        v17 = &enum case for NCProtoConversationAVMode.video(_:);
      }
    }

    else
    {
      v17 = &enum case for NCProtoConversationAVMode.none(_:);
    }

    (*(v13 + 104))(v15, *v17, v12);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for NCProtoConversationAVMode.video(_:), v12);
  }

  sub_1000E0FC8();
  sub_10000CB64(a5, v11, &qword_10011E478, &unk_1000F0998);
  v18 = type metadata accessor for ConversationUIState(0);
  if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
  {
    sub_1000033C8(v11, &qword_10011E478, &unk_1000F0998);
  }

  else
  {
    sub_1000AD5EC(v11, type metadata accessor for ConversationUIState);
  }

  return sub_1000E0F98();
}

uint64_t sub_100089658(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v43 = a4;
  v41 = a3;
  v37 = a2;
  v47 = sub_1000E2118();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E2148();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v45 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E0FE8();
  v35 = v8;
  v39 = *(v8 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v36 = &v33 - v13;
  v15 = sub_1000E0D68();
  v33 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [*&a2[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
  (*(v16 + 16))(v18, v41, v15);
  (*(v11 + 16))(v14, v42, v10);
  v20 = v38;
  v19 = v39;
  (*(v39 + 16))(v38, v43, v8);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = (v17 + *(v11 + 80) + v21) & ~*(v11 + 80);
  v23 = (v12 + *(v19 + 80) + v22) & ~*(v19 + 80);
  v24 = swift_allocObject();
  v25 = v37;
  *(v24 + 16) = v37;
  (*(v16 + 32))(v24 + v21, v18, v33);
  (*(v11 + 32))(v24 + v22, v36, v34);
  (*(v19 + 32))(v24 + v23, v20, v35);
  aBlock[4] = sub_1000AD088;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001158E0;
  v26 = _Block_copy(aBlock);
  v27 = v25;
  v28 = v45;
  sub_1000E2138();
  v51 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v30 = v46;
  v29 = v47;
  sub_1000E28C8();
  v31 = v44;
  sub_1000E2738();
  _Block_release(v26);

  (*(v50 + 8))(v30, v29);
  (*(v48 + 8))(v28, v49);
}

void sub_100089C08(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  isa = sub_1000E0D18().super.isa;
  v3 = [v1 callForConversationWithGroupUUID:isa];

  if (v3)
  {
    [v3 setUplinkMuted:(sub_1000E0F28() & 1) == 0];
    [v3 setIsSendingVideo:sub_1000E0F48() & 1];
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24D8();
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24C8();
  }
}

void sub_100089D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter);
  v4 = [v3 frontmostAudioOrVideoCall];
  if (v4)
  {
    v5 = v4;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123128);
    v7 = v5;
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2080;
      v13 = v7;
      sub_10000ADE4(&qword_10011FA68, &qword_1000F25F0);
      v14 = sub_1000E2358();
      v16 = sub_100029C70(v14, v15, &v21);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Disconnect call %@ with reason: %s", v10, 0x16u);
      sub_1000033C8(v11, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v12);
    }

    if ((a2 & 0x100000000) != 0)
    {
      [v3 disconnectCall:v7];
    }

    else
    {
      [v3 disconnectCall:v7 withReason:a2];
    }
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v17 = sub_1000E1F08();
    sub_1000049D0(v17, qword_100123128);
    oslog = sub_1000E1EE8();
    v18 = sub_1000E2658();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "endCurrentCall executed but no frontmostAudioOrVideoCall to end", v19, 2u);
    }
  }
}

uint64_t sub_10008A04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v7 + 16) = v9;
  *v9 = v7;
  v9[1] = sub_100002E7C;

  return sub_100073144(a1, a5, 2);
}

uint64_t sub_10008A130(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a1;
  v25 = sub_1000E2118();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E2148();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 callFilterController];

  v16 = [*(a2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter) queue];
  (*(v11 + 16))(v13, v24, v10);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = a3;
  (*(v11 + 32))(v18 + v17, v13, v10);
  aBlock[4] = sub_1000AC0E4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115610;
  v19 = _Block_copy(aBlock);
  v20 = v15;
  v21 = a3;
  sub_1000E2138();
  v29 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v22 = v25;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v19);

  (*(v28 + 8))(v6, v22);
  (*(v26 + 8))(v9, v27);
}

uint64_t sub_10008A548(void *a1, uint64_t a2)
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_100123128);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[StartConversation] Checking if join request is restricted...", v7, 2u);
  }

  v8 = [a1 shouldRestrictJoinConversationRequest:a2 performSynchronously:1];
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "[StartConversation] Should restrict join request: %{BOOL}d.", v11, 8u);
  }

  sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  return sub_1000E24D8();
}

uint64_t sub_10008A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[142] = a5;
  v5[141] = a4;
  v5[135] = a3;
  v5[129] = a2;
  v5[123] = a1;
  v6 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v5[143] = v6;
  v5[144] = *(v6 + 64);
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  type metadata accessor for HandoffInfo(0);
  v5[147] = swift_task_alloc();
  v7 = sub_1000E0D68();
  v5[148] = v7;
  v8 = *(v7 - 8);
  v5[149] = v8;
  v5[150] = *(v8 + 64);
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  sub_10000ADE4(&unk_10011F878, &unk_1000F2290);
  v5[156] = swift_task_alloc();
  v5[157] = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = swift_task_alloc();
  sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v9 = sub_1000E2118();
  v5[164] = v9;
  v5[165] = *(v9 - 8);
  v5[166] = swift_task_alloc();
  v10 = sub_1000E2148();
  v5[167] = v10;
  v5[168] = *(v10 - 8);
  v5[169] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  v5[170] = qword_1001230F0;

  return _swift_task_switch(sub_10008AA78, v11, 0);
}

uint64_t sub_10008AA78()
{
  v21 = v0;
  if ([*(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled])
  {
    v1 = v0[135];
    v2 = v0[129];
    v3 = swift_allocObject();
    v0[171] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = v2;
    v5 = v1;
    swift_asyncLet_begin();
    if (![*&v4[OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport] isGreenTea] || ((v6 = v0[141], TUGreenTeaLagunaEnabled()) ? (v7 = v6 == 2) : (v7 = 0), v7))
    {
      sub_10005A5B8();
      v0[172] = 0;
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v10 = sub_1000E1F08();
      v0[173] = sub_1000049D0(v10, qword_100123128);
      v11 = sub_1000E1EE8();
      v12 = sub_1000E2698();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = v0[141];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        v16 = TUConversationAVMode.description.getter(v13);
        v18 = sub_100029C70(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v11, v12, "[StartConversation] Received request to start conversation with mode %s.", v14, 0xCu);
        sub_10000E9DC(v15);
      }

      v19 = *(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
      v0[174] = v19;

      return _swift_task_switch(sub_10008B030, v19, 0);
    }

    else
    {
      v0[196] = TUMakeNeighborhoodConduitError();
      swift_willThrow();

      return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D690, v0 + 136);
    }
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10008AECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008B030()
{
  v1 = *(v0 + 1360);
  sub_1000BA9C4(*(v0 + 1136), (v0 + 696));

  return _swift_task_switch(sub_10008B0A4, v1, 0);
}

uint64_t sub_10008B0A4()
{
  v8 = v0;
  if (v0[88])
  {
    sub_1000033C8((v0 + 87), &unk_10011FA58, &unk_1000F25E0);

    return _swift_asyncLet_get(v0 + 2, v0 + 198, sub_10008B268, v0 + 112);
  }

  else
  {

    v1 = sub_1000E1EE8();
    v2 = sub_1000E2678();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = v0[142];
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100029C70(*(v3 + 16), *(v3 + 24), &v7);
      _os_log_impl(&_mh_execute_header, v1, v2, "[StartConversation] Rejecting request because no session exists for %s.", v4, 0xCu);
      sub_10000E9DC(v5);
    }

    v0[195] = TUMakeNeighborhoodConduitError();
    swift_willThrow();

    return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D510, v0 + 104);
  }
}

uint64_t sub_10008B284(uint64_t a1)
{
  v2 = *(v1 + 1584);
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[StartConversation] Rejecting request becaused it's restricted by Screen Time settings.", v6, 2u);
    }

    v1[194] = TUMakeNeighborhoodConduitError();
    swift_willThrow();

    return _swift_asyncLet_finish(v1 + 2, v1 + 198, sub_10008D390, v1 + 130);
  }

  else
  {
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[StartConversation] Creating conversation and waiting to join.", v7, 2u);
    }

    v8 = v1[169];
    v25 = v1[168];
    v26 = v1[167];
    v9 = v1[166];
    v24 = v1[165];
    v10 = v1[164];
    v11 = v1[149];
    v27 = v1[163];
    v28 = v1[148];
    v12 = v1[135];
    v13 = v1[129];

    v23 = [*&v13[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] queue];
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v1[99] = sub_1000AC06C;
    v1[100] = v14;
    v1[95] = _NSConcreteStackBlock;
    v1[96] = 1107296256;
    v1[97] = sub_1000026A0;
    v1[98] = &unk_100115570;
    v15 = _Block_copy(v1 + 95);
    v16 = v13;
    v17 = v12;
    sub_1000E2138();
    v1[117] = _swiftEmptyArrayStorage;
    sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
    sub_1000E28C8();
    sub_1000E2738();
    _Block_release(v15);

    (*(v24 + 8))(v9, v10);
    (*(v25 + 8))(v8, v26);

    v18 = *(v11 + 56);
    v1[175] = v18;
    v1[176] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v18(v27, 1, 1, v28);
    if (_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
    {
      sub_1000E03A0(_swiftEmptyArrayStorage);
      v19 = v21;
    }

    else
    {
      v19 = &_swiftEmptySetSingleton;
    }

    v1[177] = v19;
    v20 = swift_task_alloc();
    v1[178] = v20;
    *v20 = v1;
    v20[1] = sub_10008B6D8;

    return sub_10008E344(v19);
  }
}

uint64_t sub_10008B6D8(uint64_t a1)
{
  v3 = *v2;
  v3[179] = a1;
  v3[180] = v1;

  if (v1)
  {
    v4 = v3[170];
    v5 = sub_10008D990;
  }

  else
  {
    v6 = v3[170];

    v5 = sub_10008B804;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10008B804()
{
  v87 = v0;
  v1 = *(v0 + 1440);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1296);
  v5 = *(v0 + 1184);
  v6 = [*(v0 + 1432) UUID];
  sub_1000E0D38();

  sub_1000033C8(v3, &unk_10011F0C0, &qword_1000F1670);
  v2(v4, 0, 1, v5);
  sub_1000AD400(v4, v3, &unk_10011F0C0, &qword_1000F1670);
  sub_1000E2588();
  *(v0 + 1448) = v1;
  if (v1)
  {

    *(v0 + 1576) = v1;
    swift_errorRetain();
    v7 = sub_1000E1EE8();
    v8 = sub_1000E2678();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "[StartConversation] Failed to start conversation due to %@.", v9, 0xCu);
      sub_1000033C8(v10, &unk_10011EAC0, &unk_1000F0E60);
    }

    v12 = *(v0 + 1304);
    v13 = *(v0 + 1288);
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1184);

    sub_10000CB64(v12, v13, &unk_10011F0C0, &qword_1000F1670);
    if ((*(v14 + 48))(v13, 1, v15) == 1)
    {
      v16 = *(v0 + 1032);
      sub_1000033C8(*(v0 + 1288), &unk_10011F0C0, &qword_1000F1670);
      v17 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
      v18 = [*(v16 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) avLessConversation];
      if (v18)
      {
        v19 = v18;
        if ([v18 isContinuitySession])
        {
          v20 = v19;
          v21 = sub_1000E1EE8();
          v22 = sub_1000E2698();

          if (os_log_type_enabled(v21, v22))
          {
            v83 = v22;
            v23 = *(v0 + 1240);
            v77 = *(v0 + 1192);
            v24 = *(v0 + 1184);
            buf = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v86[0] = v80;
            *buf = 136315138;
            v25 = [v20 UUID];
            sub_1000E0D38();

            sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v26 = sub_1000E2C18();
            v27 = v20;
            v29 = v28;
            (*(v77 + 8))(v23, v24);
            v30 = sub_100029C70(v26, v29, v86);
            v20 = v27;

            *(buf + 4) = v30;
            _os_log_impl(&_mh_execute_header, v21, v83, "[StartConversation] Leaving conversationManager avLess continuity conversation: %s", buf, 0xCu);
            sub_10000E9DC(v80);
          }

          v31 = *(v0 + 1240);
          v32 = *(v0 + 1192);
          v33 = *(v0 + 1184);
          v34 = *(v16 + v17);
          v35 = [v20 UUID];
          sub_1000E0D38();

          isa = sub_1000E0D18().super.isa;
          (*(v32 + 8))(v31, v33);
          [v34 leaveConversationWithUUID:isa];
        }

        else
        {
        }
      }
    }

    else
    {
      v52 = *(v0 + 1216);
      v53 = *(v0 + 1208);
      v54 = *(v0 + 1192);
      v55 = *(v0 + 1184);
      (*(v54 + 32))(v52, *(v0 + 1288), v55);
      (*(v54 + 16))(v53, v52, v55);
      v56 = sub_1000E1EE8();
      v57 = sub_1000E2698();
      v58 = os_log_type_enabled(v56, v57);
      v59 = *(v0 + 1208);
      v60 = *(v0 + 1192);
      v61 = *(v0 + 1184);
      if (v58)
      {
        v82 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v86[0] = v85;
        *v82 = 136315138;
        sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v79 = v57;
        v62 = sub_1000E2C18();
        v64 = v63;
        v65 = *(v60 + 8);
        v65(v59, v61);
        v66 = v65;
        v67 = sub_100029C70(v62, v64, v86);

        *(v82 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v56, v79, "[StartConversation] Leaving conversation: %s", v82, 0xCu);
        sub_10000E9DC(v85);
      }

      else
      {

        v68 = *(v60 + 8);
        v68(v59, v61);
        v66 = v68;
      }

      v69 = *(v0 + 1216);
      v70 = *(v0 + 1184);
      v71 = *(*(v0 + 1032) + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
      v72 = sub_1000E0D18().super.isa;
      [v71 leaveConversationWithUUID:v72];

      v66(v69, v70);
    }

    v73 = *(v0 + 1304);
    swift_willThrow();
    sub_1000033C8(v73, &unk_10011F0C0, &qword_1000F1670);

    return _swift_asyncLet_finish(v0 + 16, v0 + 1584, sub_10008D810, v0 + 944);
  }

  else
  {
    v37 = *(v0 + 1280);
    v38 = *(v0 + 1272);
    v39 = *(v0 + 1264);
    v40 = *(v0 + 1256);
    bufa = *(v0 + 1432);
    v78 = *(v0 + 1248);
    v41 = *(v0 + 1240);
    v42 = *(v0 + 1192);
    v81 = *(v0 + 1184);
    v84 = *(v0 + 1136);
    v43 = *(v0 + 1128);
    v44 = *(v0 + 1032);
    v45 = *(v40 + 48);
    sub_1000E0CD8();
    *(v37 + v45) = v43;
    sub_10000CB64(v37, v38, &qword_10011EBB0, &qword_1000F04F0);
    v46 = *(v40 + 48);
    v47 = *(v38 + v46);
    v48 = sub_1000E0CE8();
    (*(*(v48 - 8) + 32))(v39, v38, v48);
    *(v39 + v46) = v47;
    v49 = [(uint8_t *)bufa UUID];
    sub_1000E0D38();

    swift_beginAccess();
    sub_1000A5324(v39, v41, v78);
    swift_endAccess();
    v50 = *(v42 + 8);
    *(v0 + 1456) = v50;
    *(v0 + 1464) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v41, v81);
    sub_1000033C8(v78, &unk_10011F878, &unk_1000F2290);
    *(v0 + 1472) = *(v44 + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    *(v0 + 1480) = *(v84 + 16);
    *(v0 + 1488) = *(v84 + 24);
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v51 = qword_1001230D0;

    return _swift_task_switch(sub_10008C0E0, v51, 0);
  }
}

uint64_t sub_10008C0E0()
{
  v1 = v0[170];
  sub_100030E7C(0, v0[185], v0[186]);

  return _swift_task_switch(sub_10008C158, v1, 0);
}

uint64_t sub_10008C158(uint64_t a1)
{
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[StartConversation] Conversation joined, pushing to sender.", v4, 2u);
  }

  v5 = v1[179];
  v6 = v1[146];
  v7 = v1[141];

  v8 = [v5 UUID];
  sub_1000E0D38();

  v9 = sub_1000E0FE8();
  *(swift_task_alloc() + 16) = v7;
  sub_1000A75DC(&qword_10011FA98, 255, &type metadata accessor for NCProtoCallState, &protocol conformance descriptor for NCProtoCallState);
  sub_1000E0E38();

  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  v1[187] = sub_1000D605C(2);
  v10 = swift_allocObject();
  v1[188] = v10;
  v41 = v10;
  *(v10 + 16) = 0;
  if (qword_10011DCA8 != -1)
  {
    swift_once();
  }

  v11 = v1[155];
  v12 = v1[154];
  v13 = v1[150];
  v14 = v1[149];
  v15 = v1[148];
  v35 = v15;
  v36 = v11;
  v16 = v1[146];
  v17 = v1[145];
  v18 = v1[144];
  v19 = v1[143];
  v37 = v1[142];
  v38 = v1[129];
  v20 = sub_1000E2DA8();
  v39 = v21;
  v40 = v20;
  v22 = *(v14 + 16);
  v1[189] = v22;
  v1[190] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v11, v12, v15);
  sub_10000CB64(v16, v17, &unk_10011FA80, &qword_1000F2660);
  v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v19 + 80) + v25 + 9) & ~*(v19 + 80);
  v27 = v26 + v18;
  v28 = (v26 + v18) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v1[191] = v29;
  (*(v14 + 32))(v29 + v23, v36, v35);
  *(v29 + v24) = v37;
  v30 = v29 + v25;
  *v30 = v38;
  *(v30 + 8) = 1;
  sub_1000AD400(v17, v29 + v26, &unk_10011FA80, &qword_1000F2660);
  *(v29 + v27) = 1;
  *(v29 + v28 + 8) = 4;
  *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v31 = v38;

  v32 = swift_task_alloc();
  v1[192] = v32;
  *v32 = v1;
  v32[1] = sub_10008C570;
  v33 = v1[147];

  return sub_10005D2F4(v33, v40, v39, &unk_1000F2910, v29);
}

uint64_t sub_10008C570()
{
  v2 = *v1;
  *(*v1 + 1544) = v0;

  if (v0)
  {
    v3 = *(v2 + 1360);
    v4 = sub_10008C844;
  }

  else
  {
    v5 = *(v2 + 1360);

    v4 = sub_10008C698;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10008C698()
{
  v1 = *(v0 + 1496);
  v2 = *(v0 + 1456);
  v3 = *(v0 + 1232);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1168);

  sub_1000D6278(2, v1);

  sub_1000033C8(v5, &unk_10011FA80, &qword_1000F2660);
  v2(v3, v4);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[StartConversation] Conversation started and pushed successfully!", v8, 2u);
  }

  v9 = *(v0 + 1304);
  v10 = *(v0 + 1280);
  v11 = *(v0 + 1176);
  v12 = *(v0 + 984);

  sub_1000033C8(v10, &qword_10011EBB0, &qword_1000F04F0);
  sub_1000033C8(v9, &unk_10011F0C0, &qword_1000F1670);
  sub_1000A877C(v11, v12, type metadata accessor for HandoffInfo);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1584, sub_10008D214, v0 + 992);
}

uint64_t sub_10008C844()
{
  v95 = v0;
  v1 = v0[189];
  v2 = v0[154];
  v3 = v0[153];
  v4 = v0[148];

  v1(v3, v2, v4);

  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[186];
    v8 = v0[185];
    v87 = v0[182];
    v9 = v0[153];
    v10 = v0[148];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v94[0] = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_100029C70(v8, v7, v94);
    *(v11 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_1000E2C18();
    v15 = v14;
    v87(v9, v10);
    v16 = sub_100029C70(v13, v15, v94);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "[Handoff][Push] Failed to add %s to %s due to %@.", v11, 0x20u);
    sub_1000033C8(v12, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {
    v18 = v0[182];
    v19 = v0[153];
    v20 = v0[148];

    v18(v19, v20);
  }

  v21 = v0[188];
  swift_beginAccess();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[129];
    v24 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v25 = *(v23 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v26 = v22;
    isa = sub_1000E0D18().super.isa;
    v28 = [v25 activeConversationWithUUID:isa];

    if (v28)
    {
      [*(v23 + v24) kickMember:v26 conversation:v28];

      v26 = v28;
    }
  }

  v29 = v0[187];
  v30 = v0[182];
  v31 = v0[179];
  v91 = v0[160];
  v32 = v0[154];
  v33 = v0[148];
  v34 = v0[146];
  swift_willThrow();

  sub_1000D6278(2, v29);

  sub_1000033C8(v34, &unk_10011FA80, &qword_1000F2660);
  v30(v32, v33);

  sub_1000033C8(v91, &qword_10011EBB0, &qword_1000F04F0);
  v0[197] = v0[193];
  swift_errorRetain();
  v35 = sub_1000E1EE8();
  v36 = sub_1000E2678();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "[StartConversation] Failed to start conversation due to %@.", v37, 0xCu);
    sub_1000033C8(v38, &unk_10011EAC0, &unk_1000F0E60);
  }

  v40 = v0[163];
  v41 = v0[161];
  v42 = v0[149];
  v43 = v0[148];

  sub_10000CB64(v40, v41, &unk_10011F0C0, &qword_1000F1670);
  if ((*(v42 + 48))(v41, 1, v43) == 1)
  {
    v44 = v0[129];
    sub_1000033C8(v0[161], &unk_10011F0C0, &qword_1000F1670);
    v45 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v46 = [*(v44 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) avLessConversation];
    if (v46)
    {
      v47 = v46;
      if ([v46 isContinuitySession])
      {
        v47 = v47;
        v48 = sub_1000E1EE8();
        v49 = sub_1000E2698();

        if (os_log_type_enabled(v48, v49))
        {
          v92 = v49;
          v50 = v0[155];
          v88 = v0[149];
          v51 = v0[148];
          buf = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v94[0] = v89;
          *buf = 136315138;
          v52 = [v47 UUID];
          sub_1000E0D38();

          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v53 = sub_1000E2C18();
          v55 = v54;
          (*(v88 + 8))(v50, v51);
          v56 = sub_100029C70(v53, v55, v94);

          *(buf + 4) = v56;
          _os_log_impl(&_mh_execute_header, v48, v92, "[StartConversation] Leaving conversationManager avLess continuity conversation: %s", buf, 0xCu);
          sub_10000E9DC(v89);
        }

        v57 = v0[155];
        v58 = v0[149];
        v59 = v0[148];
        v60 = *(v44 + v45);
        v61 = [v47 UUID];
        sub_1000E0D38();

        v62 = sub_1000E0D18().super.isa;
        (*(v58 + 8))(v57, v59);
        [v60 leaveConversationWithUUID:v62];
      }
    }
  }

  else
  {
    v63 = v0[152];
    v64 = v0[151];
    v65 = v0[149];
    v66 = v0[148];
    (*(v65 + 32))(v63, v0[161], v66);
    (*(v65 + 16))(v64, v63, v66);
    v67 = sub_1000E1EE8();
    v68 = sub_1000E2698();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v0[151];
    v71 = v0[149];
    v72 = v0[148];
    if (v69)
    {
      v90 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94[0] = v93;
      *v90 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v73 = sub_1000E2C18();
      v75 = v74;
      v76 = *(v71 + 8);
      v76(v70, v72);
      v77 = v76;
      v78 = sub_100029C70(v73, v75, v94);

      *(v90 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v67, v68, "[StartConversation] Leaving conversation: %s", v90, 0xCu);
      sub_10000E9DC(v93);
    }

    else
    {

      v79 = *(v71 + 8);
      v79(v70, v72);
      v77 = v79;
    }

    v80 = v0[152];
    v81 = v0[148];
    v82 = *(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v83 = sub_1000E0D18().super.isa;
    [v82 leaveConversationWithUUID:v83];

    v77(v80, v81);
  }

  v84 = v0[163];
  swift_willThrow();
  sub_1000033C8(v84, &unk_10011F0C0, &qword_1000F1670);

  return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D810, v0 + 118);
}

uint64_t sub_10008D230()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008D3AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008D52C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008D6AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008D82C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008D990()
{
  v59 = v0;

  v0[197] = v0[180];
  swift_errorRetain();
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2678();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[StartConversation] Failed to start conversation due to %@.", v3, 0xCu);
    sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
  }

  v6 = v0[163];
  v7 = v0[161];
  v8 = v0[149];
  v9 = v0[148];

  sub_10000CB64(v6, v7, &unk_10011F0C0, &qword_1000F1670);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    v10 = v0[129];
    sub_1000033C8(v0[161], &unk_10011F0C0, &qword_1000F1670);
    v11 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v12 = [*(v10 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager) avLessConversation];
    if (v12)
    {
      v13 = v12;
      if ([v12 isContinuitySession])
      {
        v13 = v13;
        v14 = sub_1000E1EE8();
        v15 = sub_1000E2698();

        if (os_log_type_enabled(v14, v15))
        {
          v56 = v15;
          v16 = v0[155];
          v53 = v0[149];
          v17 = v0[148];
          buf = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v58[0] = v54;
          *buf = 136315138;
          v18 = [v13 UUID];
          sub_1000E0D38();

          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v19 = sub_1000E2C18();
          v21 = v20;
          (*(v53 + 8))(v16, v17);
          v22 = sub_100029C70(v19, v21, v58);

          *(buf + 4) = v22;
          _os_log_impl(&_mh_execute_header, v14, v56, "[StartConversation] Leaving conversationManager avLess continuity conversation: %s", buf, 0xCu);
          sub_10000E9DC(v54);
        }

        v23 = v0[155];
        v24 = v0[149];
        v25 = v0[148];
        v26 = *(v10 + v11);
        v27 = [v13 UUID];
        sub_1000E0D38();

        isa = sub_1000E0D18().super.isa;
        (*(v24 + 8))(v23, v25);
        [v26 leaveConversationWithUUID:isa];
      }
    }
  }

  else
  {
    v29 = v0[152];
    v30 = v0[151];
    v31 = v0[149];
    v32 = v0[148];
    (*(v31 + 32))(v29, v0[161], v32);
    (*(v31 + 16))(v30, v29, v32);
    v33 = sub_1000E1EE8();
    v34 = sub_1000E2698();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[151];
    v37 = v0[149];
    v38 = v0[148];
    if (v35)
    {
      v55 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58[0] = v57;
      *v55 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = sub_1000E2C18();
      v41 = v40;
      v42 = *(v37 + 8);
      v42(v36, v38);
      v43 = v42;
      v44 = sub_100029C70(v39, v41, v58);

      *(v55 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "[StartConversation] Leaving conversation: %s", v55, 0xCu);
      sub_10000E9DC(v57);
    }

    else
    {

      v45 = *(v37 + 8);
      v45(v36, v38);
      v43 = v45;
    }

    v46 = v0[152];
    v47 = v0[148];
    v48 = *(v0[129] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v49 = sub_1000E0D18().super.isa;
    [v48 leaveConversationWithUUID:v49];

    v43(v46, v47);
  }

  v50 = v0[163];
  swift_willThrow();
  sub_1000033C8(v50, &unk_10011F0C0, &qword_1000F1670);

  return _swift_asyncLet_finish(v0 + 2, v0 + 198, sub_10008D810, v0 + 118);
}

uint64_t sub_10008DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230F0;
  v3[5] = qword_1001230F0;

  return _swift_task_switch(sub_10008E09C, v4, 0);
}

uint64_t sub_10008E09C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = sub_1000A75DC(&qword_100120020, a2, type metadata accessor for ConduitActor, &unk_1000F2250);
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *(v5 + 16) = *(v2 + 24);
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *v6 = v2;
  v6[1] = sub_10008E1D0;

  return withCheckedContinuation<A>(isolation:function:_:)(v2 + 64, v3, v4, 0xD000000000000027, 0x80000001000EBC60, sub_1000AC0DC, v5, &type metadata for Bool);
}

uint64_t sub_10008E1D0()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10008E2FC, v1, 0);
}

uint64_t sub_10008E344(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10000ADE4(&qword_10011FBE0, &qword_1000F2850);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_10000ADE4(&qword_10011FBE8, &qword_1000F2858);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  v2[12] = qword_1001230F0;

  return _swift_task_switch(sub_10008E4B0, v5, 0);
}

uint64_t sub_10008E4B0()
{
  v1 = v0[8];
  v9 = v0[11];
  v10 = v0[9];
  v2 = v0[7];
  v8 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v11 = v0[10];
  v0[13] = sub_1000D605C(1);
  v0[2] = *(*(v3 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_joinedConversationSubject);
  sub_10000ADE4(&unk_100120850, &qword_1000F2488);
  sub_100002C64(&qword_10011F9A0, &unk_100120850, &qword_1000F2488, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v0[3] = sub_1000E2028();
  sub_10000ADE4(&qword_10011F9A8, &qword_1000F2490);
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_100002C64(&qword_10011F9B0, &qword_10011F9A8, &qword_1000F2490, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000E2038();

  *(swift_allocObject() + 16) = v4;
  sub_100002C64(&qword_10011FBF0, &qword_10011FBE0, &qword_1000F2850, &protocol conformance descriptor for Publishers.CompactMap<A, B>);

  sub_1000E2078();

  (*(v2 + 8))(v1, v8);
  sub_100002C64(&qword_10011FBF8, &qword_10011FBE8, &qword_1000F2858, &protocol conformance descriptor for Publishers.Filter<A>);
  v5 = sub_1000E2028();
  v0[14] = v5;
  (*(v11 + 8))(v9, v10);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_10008E7D4;

  return sub_10009F290(v5);
}

uint64_t sub_10008E7D4(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[12];
  if (v1)
  {
    v6 = sub_10008E9AC;
  }

  else
  {
    v4[17] = a1;
    v6 = sub_10008E910;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008E910()
{
  v1 = v0[13];

  sub_1000D6278(1, v1);

  v2 = v0[1];
  v3 = v0[17];

  return v2(v3);
}

uint64_t sub_10008E9AC()
{
  v1 = *(v0 + 104);

  sub_1000D6278(1, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10008EA44(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E15C8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E0F38();
  sub_1000E0F58();
  v7 = &enum case for NCProtoConversationAVMode.audio(_:);
  v8 = &enum case for NCProtoConversationAVMode.none(_:);
  if (a2)
  {
    v8 = &enum case for NCProtoConversationAVMode.video(_:);
  }

  if (a2 != 1)
  {
    v7 = v8;
  }

  (*(v4 + 104))(v6, *v7, v3);
  return sub_1000E0FC8();
}

uint64_t sub_10008EB5C(id *a1, uint64_t a2)
{
  v3 = [*a1 remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  v4 = sub_1000E25E8();

  sub_10008EC28(v4, a2);
  LOBYTE(a2) = v5;

  return a2 & 1;
}

void sub_10008EC28(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1000A55D4(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_1000E2808(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_1000E2818();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

id sub_10008EEA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v32._countAndFlagsBits = sub_1000E2338();
  v11 = sub_1000E2408(v32);

  if (!v11)
  {
    v19 = objc_opt_self();

    v20 = sub_1000E2328();
    v21 = [v19 normalizedHandleWithDestinationID:v20];

    if (v21)
    {

      *a5 = v21;
      return result;
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v28 = sub_1000E1F08();
    sub_1000049D0(v28, qword_100123128);

    v23 = sub_1000E1EE8();
    v24 = sub_1000E2678();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v25 = 136315394;
      v29 = sub_100029C70(v10, v9, &v31);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_100029C70(*(a3 + 16), *(a3 + 24), &v31);
      v27 = "[AddParticipants] Rejecting request to add conversation participant: %s from %s because it is an invalid handle.";
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  v12 = *(a2 + 48);
  v13 = *(v12 + 16);

  if (v13)
  {
    v14 = sub_10000B2D0(v10, v9);
    if (v15)
    {
      v16 = v14;

      v17 = *(*(v12 + 56) + 8 * v16);
      *a5 = v17;
      return v17;
    }
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v22 = sub_1000E1F08();
  sub_1000049D0(v22, qword_100123128);

  v23 = sub_1000E1EE8();
  v24 = sub_1000E2678();

  if (!os_log_type_enabled(v23, v24))
  {
    goto LABEL_16;
  }

  v25 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  *v25 = 136315394;
  v26 = sub_100029C70(v10, v9, &v31);

  *(v25 + 4) = v26;
  *(v25 + 12) = 2080;
  *(v25 + 14) = sub_100029C70(*(a3 + 16), *(a3 + 24), &v31);
  v27 = "[AddParticipants] Rejecting request to add conversation participant: %s from %s because it is an anonym without a handle.";
LABEL_15:
  _os_log_impl(&_mh_execute_header, v23, v24, v27, v25, 0x16u);
  swift_arrayDestroy();

LABEL_17:

  v30 = TUMakeNeighborhoodConduitError();
  result = swift_willThrow();
  *a4 = v30;
  return result;
}

uint64_t sub_10008F254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_1000E0D68();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_1000E2B28();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v5[11] = qword_1001230F0;

  return _swift_task_switch(sub_10008F3A8, v8, 0);
}

uint64_t sub_10008F3A8()
{
  sub_1000E2CF8();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10008F474;

  return sub_100003DA4(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10008F474()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_10008F8C0;
  }

  else
  {
    v7 = sub_10008F5FC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10008F5FC()
{
  sub_1000E1FF8();
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    type metadata accessor for HandoffInfo(0);
    v5 = [v1 UUID];
    sub_1000E0D38();

    LOBYTE(v5) = sub_1000E0D28();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = [v1 mergedRemoteMembers];
      sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
      sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
      v7 = sub_1000E25E8();

      v8 = (v7 & 0xC000000000000001) != 0 ? sub_1000E2968() : *(v7 + 16);

      if (!v8)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v9 = sub_1000E1F08();
        sub_1000049D0(v9, qword_100123128);
        v10 = sub_1000E1EE8();
        v11 = sub_1000E2698();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "[AddParticipants] Attempted to add a blocked contact but secondary member did not handle leaving the conversation so primary is leaving", v12, 2u);
        }

        v13 = v0[3];

        v14 = *(v13 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
        isa = sub_1000E0D18().super.isa;
        [v14 leaveConversationWithUUID:isa];
      }
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10008F8C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_1000E1398();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = sub_1000E0D68();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v9 = sub_1000E1338();
  v6[33] = v9;
  v6[34] = *(v9 - 8);
  v6[35] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  v6[36] = qword_1001230F0;

  return _swift_task_switch(sub_10008FB00, v10, 0);
}

uint64_t sub_10008FB00()
{
  v23 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[20];
  v5 = sub_1000E1F08();
  v0[37] = sub_1000049D0(v5, qword_100123128);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_1000E12E8();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100029C70(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Handoff][PullExpanse] Initiating pull task for %s.", v12, 0xCu);
    sub_10000E9DC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[38] = v18;
  *v18 = v0;
  v18[1] = sub_10008FD40;
  v19 = v0[22];
  v20 = v0[20];

  return sub_10009090C((v0 + 2), v20, v19);
}

uint64_t sub_10008FD40()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[36];

    return _swift_task_switch(sub_10008FEC0, v5, 0);
  }
}

uint64_t sub_10008FEC0()
{
  v32 = v0;
  v1 = *(v0 + 312);
  sub_100091CD0(v0 + 16);
  *(v0 + 320) = v2;
  if (v1)
  {
    sub_1000AB184(v0 + 16);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = *(v0 + 184);
    swift_beginAccess();
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;
    v8 = v5;

    sub_1000AB1B4(v0 + 16, v0 + 72);

    v9 = sub_1000E1EE8();
    v10 = sub_1000E2698();
    sub_1000AB184(v0 + 16);

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 256);
      v13 = *(v0 + 224);
      v12 = *(v0 + 232);
      v30 = *(v0 + 176);
      v14 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v14 = 136315394;
      v15 = [*(v0 + 48) UUID];
      sub_1000E0D38();

      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = sub_1000E2C18();
      v18 = v17;
      (*(v12 + 8))(v11, v13);
      v19 = sub_100029C70(v16, v18, v31);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100029C70(*(v30 + 16), *(v30 + 24), v31);
      _os_log_impl(&_mh_execute_header, v9, v10, "[Handoff][PullExpanse] Returning add member response for %s to %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *(v0 + 208);
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = *(v0 + 168);
    v24 = *(v0 + 176);
    v25 = swift_task_alloc();
    *(v25 + 16) = v0 + 16;
    *(v25 + 24) = v23;
    sub_1000A75DC(&qword_10011FC90, 255, &type metadata accessor for NCProtoAddMemberResponse, &protocol conformance descriptor for NCProtoAddMemberResponse);
    sub_1000E0E38();

    sub_1000E1FC8();
    (*(v20 + 8))(v21, v22);
    *(v0 + 328) = *(v24 + 16);
    *(v0 + 336) = *(v24 + 24);
    v26 = *(v0 + 48);

    v27 = [v26 UUID];
    sub_1000E0D38();

    v28 = [v26 groupUUID];
    sub_1000E0D38();

    v29 = swift_task_alloc();
    *(v0 + 344) = v29;
    *v29 = v0;
    v29[1] = sub_100090308;

    return sub_100014704();
  }
}

uint64_t sub_100090308(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = v4[36];
    v7 = v4[30];
    v6 = v4[31];
    v10 = v4 + 28;
    v8 = v4[28];
    v9 = v10[1];

    v11 = *(v9 + 8);
    v11(v7, v8);
    v11(v6, v8);
    v12 = sub_100090794;
    v13 = v5;
  }

  else
  {
    v13 = v4[36];
    v4[45] = a1;
    v12 = sub_10009047C;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_10009047C()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[19];
  *v9 = 0;
  *(v9 + 8) = v3;
  *(v9 + 16) = v2;
  v10 = type metadata accessor for HandoffInfo(0);
  v11 = *(v8 + 32);
  v11(v9 + v10[6], v6, v7);
  v11(v9 + v10[7], v5, v7);
  *(v9 + v10[8]) = v1;
  *(v9 + v10[9]) = v4;
  *(v9 + v10[10]) = &_swiftEmptySetSingleton;
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1000905BC;
  v13 = v0[19];

  return sub_100092690(v13);
}

uint64_t sub_1000905BC()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = sub_100090844;
  }

  else
  {
    v4 = sub_1000906E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000906E8()
{
  sub_1000AB184(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100090794()
{
  sub_1000AB184(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100090844()
{
  v1 = *(v0 + 152);
  sub_1000AB184(v0 + 16);
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009090C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000E1318();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  v4[9] = swift_task_alloc();
  v6 = sub_1000E0D68();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v4[16] = qword_1001230F0;

  return _swift_task_switch(sub_100090AC0, v7, 0);
}

uint64_t sub_100090AC0(uint64_t a1)
{
  v76 = v1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[9];
  sub_1000E12E8();
  sub_1000E0CF8();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000033C8(v1[9], &unk_10011F0C0, &qword_1000F1670);
LABEL_18:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E1F08();
    sub_1000049D0(v22, qword_100123128);
    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "[Handoff][PullExpanse] Invalid arguments for add member request.", v25, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_23;
  }

  (*(v1[11] + 32))(v1[15], v1[9], v1[10]);
  v5 = sub_1000E12C8();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    (*(v1[11] + 8))(v1[15], v1[10]);
    goto LABEL_18;
  }

  if ([*(v1[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport) isGreenTea] && !TUGreenTeaLagunaEnabled())
  {
    v44 = v1[15];
    v45 = v1[10];
    v46 = v1[11];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    (*(v46 + 8))(v44, v45);
LABEL_23:

    v26 = v1[1];

    return v26();
  }

  v9 = *(v1[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v11 = [v9 activeConversationWithUUID:isa];
  v1[17] = v11;

  if (!v11)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v27 = v1[15];
    v29 = v1[11];
    v28 = v1[12];
    v30 = v1[10];
    v31 = sub_1000E1F08();
    sub_1000049D0(v31, qword_100123128);
    (*(v29 + 16))(v28, v27, v30);
    v32 = sub_1000E1EE8();
    v33 = sub_1000E2698();
    v34 = os_log_type_enabled(v32, v33);
    v36 = v1[11];
    v35 = v1[12];
    v37 = v1[10];
    if (v34)
    {
      v38 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75[0] = v73;
      *v38 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      buf = v33;
      v39 = sub_1000E2C18();
      v41 = v40;
      v42 = *(v36 + 8);
      v42(v35, v37);
      v43 = sub_100029C70(v39, v41, v75);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v32, buf, "[Handoff][PullExpanse] Unable to find conversation with %s.", v38, 0xCu);
      sub_10000E9DC(v73);
    }

    else
    {

      v42 = *(v36 + 8);
      v42(v35, v37);
    }

    v47 = v1[15];
    v48 = v1[10];
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v42(v47, v48);
    goto LABEL_23;
  }

  v13 = v1[7];
  v12 = v1[8];
  v14 = v1[6];
  sub_1000E1328();
  v15 = sub_1000E1308();
  v1[18] = v15;
  (*(v13 + 8))(v12, v14);
  if (v15 != 1)
  {
    v16 = [v11 activitySessions];
    sub_10000CAAC(0, &qword_10011FBB8, TUConversationActivitySession_ptr);
    sub_10000EA70(&unk_10011FBC0, &qword_10011FBB8, TUConversationActivitySession_ptr, &protocol conformance descriptor for NSObject);
    v17 = sub_1000E25E8();

    v18 = sub_10005B1DC(v17);

    if (v18)
    {
      v19 = [v18 activity];
      v20 = [v19 isEligibleForHandoff];

      if (!v20)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v49 = v1[15];
        v50 = v1[13];
        v51 = v1[10];
        v52 = v1[11];
        v53 = sub_1000E1F08();
        sub_1000049D0(v53, qword_100123128);
        (*(v52 + 16))(v50, v49, v51);
        v54 = sub_1000E1EE8();
        v55 = sub_1000E2698();
        v56 = os_log_type_enabled(v54, v55);
        v57 = v1[13];
        v59 = v1[10];
        v58 = v1[11];
        if (v56)
        {
          bufa = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75[0] = v74;
          *bufa = 136315138;
          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v70 = v55;
          v60 = sub_1000E2C18();
          v62 = v61;
          v63 = *(v58 + 8);
          v63(v57, v59);
          v64 = v63;
          v65 = sub_100029C70(v60, v62, v75);

          *(bufa + 4) = v65;
          _os_log_impl(&_mh_execute_header, v54, v70, "[Handoff][PullExpanse] Unable to pull because conversation %s has an unsupported activity.", bufa, 0xCu);
          sub_10000E9DC(v74);
        }

        else
        {

          v66 = *(v58 + 8);
          v66(v57, v59);
          v64 = v66;
        }

        v67 = v1[15];
        v68 = v1[10];
        TUMakeNeighborhoodConduitError();
        swift_willThrow();

        v64(v67, v68);
        goto LABEL_23;
      }
    }
  }

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v21 = qword_1001230E0;
  v1[19] = qword_1001230E0;

  return _swift_task_switch(sub_1000913A0, v21, 0);
}

uint64_t sub_1000913A0()
{
  v1 = *(v0 + 128);
  *(v0 + 160) = sub_100012CD8();

  return _swift_task_switch(sub_100091410, v1, 0);
}

uint64_t sub_100091410()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[5];
  v6 = swift_task_alloc();
  v0[21] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v2;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *(v7 + 16) = v5;
  v9 = sub_1000A75DC(&qword_100120020, v8, type metadata accessor for ConduitActor, &unk_1000F2250);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_10009156C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 30, &unk_1000F29B8, v6, sub_1000AC9E8, v7, v4, v9, &type metadata for Bool);
}

uint64_t sub_10009156C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_100091A64;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_10009169C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10009169C()
{
  v38 = v0;

  if (*(v0 + 240) != 1)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 112);
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_100123128);
    (*(v6 + 16))(v3, v4, v5);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2698();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 112);
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v14 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_1000E2C18();
      v17 = v16;
      v18 = v13;
      v19 = *(v12 + 8);
      v19(v11, v18);
      v20 = sub_100029C70(v15, v17, &v37);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "[Handoff][PullExpanse] Split session approval denied for %s.", v14, 0xCu);
      sub_10000E9DC(v36);
    }

    else
    {

      v21 = v13;
      v19 = *(v12 + 8);
      v19(v11, v21);
    }

    v22 = *(v0 + 136);
    v23 = *(v0 + 120);
    v24 = *(v0 + 80);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v19(v23, v24);
    goto LABEL_10;
  }

  v1 = *(v0 + 192);
  sub_1000E2588();
  if (v1)
  {
    v2 = *(v0 + 136);
    (*(*(v0 + 88) + 8))(*(v0 + 120), *(v0 + 80));

LABEL_10:

    v25 = *(v0 + 8);

    return v25();
  }

  v27 = sub_1000E12C8();
  v29 = v28;
  if (sub_1000E12F8())
  {
    v30 = sub_1000E12D8();
    v32 = v31;
    isa = sub_1000E0C78().super.isa;
    v34 = [objc_opt_self() voucherFromMessagingData:isa];

    sub_100006660(v30, v32);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v0 + 152);
  *(v0 + 200) = v34;
  *(v0 + 208) = v29;
  *(v0 + 216) = v27;

  return _swift_task_switch(sub_100091B4C, v35, 0);
}

uint64_t sub_100091A64()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100091B4C()
{
  v1 = v0[16];
  v2 = v0[4];
  v0[28] = *(v2 + 48);
  v0[29] = *(v2 + 56);

  return _swift_task_switch(sub_100091BCC, v1, 0);
}

uint64_t sub_100091BCC()
{
  v8 = v0[28];
  v9 = v0[29];
  v1 = v0[27];
  v2 = v0[25];
  v6 = v0[17];
  v7 = v0[26];
  v3 = v0[2];
  (*(v0[11] + 8))(v0[15], v0[10]);

  *v3 = 0;
  *(v3 + 8) = v1;
  *(v3 + 16) = v7;
  *(v3 + 24) = v2;
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  *(v3 + 48) = v9;
  v4 = v0[1];

  return v4();
}

void sub_100091CD0(uint64_t a1)
{
  v4 = sub_1000E0D68();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = *(a1 + 8);
  v47 = *(a1 + 16);
  v8 = sub_1000E2328();
  v9 = [v6 normalizedGenericHandleForValue:v8];

  if (!v9)
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    return;
  }

  v45 = v1;
  v46 = v2;
  v10 = [objc_allocWithZone(TUConversationMember) initWithHandle:v9];
  v11 = *(a1 + 24);
  v51 = v11;
  if (v11)
  {
    v43 = v7;
    v44 = v4;
    v12 = v9;
    v13 = v9;
    sub_10000CB64(&v51, v50, &qword_10011FBB0, &qword_1000F2810);
    v14 = [v11 unsafeData];
    v15 = sub_1000E0C88();
    v17 = v16;

    isa = sub_1000E0C78().super.isa;
    v19 = [objc_opt_self() associationForHandle:v13 from:isa];

    sub_100006660(v15, v17);
    if (v19)
    {
      [v10 setValidationSource:2];
      [v10 setAssociationVoucher:v11];
      [v10 setAssociation:v19];
    }

    sub_1000033C8(&v51, &qword_10011FBB0, &qword_1000F2810);
    v9 = v12;
    v7 = v43;
    v4 = v44;
  }

  if (*a1)
  {
    [v10 setIsLightweightMember:0];
    v20 = [objc_allocWithZone(TULocalNicknameInfo) init];
    if (*(a1 + 48))
    {
      v21 = sub_1000E2328();
    }

    else
    {
      v21 = 0;
    }

    v24 = [v20 appleTVNicknameForDeviceName:v21];

    if (!v24)
    {
      sub_1000E2338();
      v24 = sub_1000E2328();
    }

    [v10 setNickname:v24];
  }

  else
  {
    [v10 setIsLightweightMember:1];
    v22 = *(a1 + 32);
    v23 = [v22 localMember];
    if (!v23)
    {
      TUMakeNeighborhoodConduitError();
      swift_willThrow();

      return;
    }

    v24 = v23;
    v25 = [v23 handle];
    [v10 setLightweightPrimary:v25];

    [v10 setLightweightPrimaryParticipantIdentifier:{objc_msgSend(v22, "localParticipantIdentifier")}];
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v26 = sub_1000E1F08();
  sub_1000049D0(v26, qword_100123128);
  sub_1000AB1B4(a1, v50);
  v27 = sub_1000E1EE8();
  v28 = sub_1000E2698();
  sub_1000AB184(a1);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v44 = v9;
    v50[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_100029C70(v7, v47, v50);
    *(v29 + 12) = 2080;
    v31 = [*(a1 + 32) UUID];
    v32 = v48;
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v33 = sub_1000E2C18();
    v34 = v4;
    v36 = v35;
    (*(v49 + 8))(v32, v34);
    v37 = sub_100029C70(v33, v36, v50);

    *(v29 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "[Handoff] Adding remote member %s to %s.", v29, 0x16u);
    swift_arrayDestroy();
    v9 = v44;
  }

  v38 = *(v45 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F0F40;
  *(inited + 32) = v10;
  v40 = v38;
  v10;
  sub_1000E03A0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  v41 = sub_1000E25D8().super.isa;

  [v40 addRemoteMembers:v41 toConversation:*(a1 + 32)];
}

uint64_t sub_1000923AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a3;
  v4 = sub_1000E21E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000E2248();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000E0D68();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(a2 + 32) groupUUID];
  sub_1000E0D38();

  sub_1000E2238();
  v22 = sub_1000E0D48();
  v23 = v15;
  sub_1000E2218();
  sub_1000E2228();
  sub_1000E21D8();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v19);
  (*(v11 + 8))(v13, v18);
  sub_1000E1388();
  sub_1000DABD8();
  return sub_1000E1378();
}

uint64_t sub_100092690(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v2[4] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for HandoffInfo(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230F0;
  v2[11] = qword_1001230F0;

  return _swift_task_switch(sub_100092810, v4, 0);
}

uint64_t sub_100092810()
{
  v23 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = sub_1000E1F08();
  *(v0 + 96) = sub_1000049D0(v3, qword_100123128);
  sub_1000A87E4(v2, v1, type metadata accessor for HandoffInfo);
  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = sub_1000DDC88();
    v12 = v11;
    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
    v13 = sub_100029C70(v10, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Handoff] Waiting for TV to join %s.", v8, 0xCu);
    sub_10000E9DC(v9);
  }

  else
  {

    sub_1000AD5EC(v7, type metadata accessor for HandoffInfo);
  }

  sub_10007E37C(*(v0 + 16), *(v0 + 40));
  v14 = *(v0 + 72);
  v15 = *(v0 + 40);
  (*(*(v0 + 56) + 56))(v15, 0, 1, *(v0 + 48));
  sub_1000A877C(v15, v14, type metadata accessor for HandoffInfo);
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);
  v18 = [*(v16 + *(v17 + 36)) handle];
  *(v0 + 104) = v18;
  v19 = *(v17 + 24);
  *(v0 + 152) = v19;
  v20 = swift_task_alloc();
  *(v0 + 112) = v20;
  *v20 = v0;
  v20[1] = sub_100092B2C;

  return sub_100096690(v18, v16 + v19);
}

uint64_t sub_100092B2C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 120) = v0;

  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1000931A0;
  }

  else
  {
    v5 = sub_100092C70;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100092C70(uint64_t a1)
{
  v32 = v1;
  v2 = v1[15];
  sub_1000E2588();
  if (v2)
  {
    sub_1000AD5EC(v1[9], type metadata accessor for HandoffInfo);

    v3 = v1[1];

    return v3();
  }

  else
  {
    sub_1000A87E4(v1[9], v1[8], type metadata accessor for HandoffInfo);
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2698();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v1[8];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v9 = 136315138;
      v11 = sub_1000DDC88();
      v13 = v12;
      sub_1000AD5EC(v8, type metadata accessor for HandoffInfo);
      v14 = sub_100029C70(v11, v13, &v31);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "[Handoff] TV successfully joined conversation: %s", v9, 0xCu);
      sub_10000E9DC(v10);
    }

    else
    {

      sub_1000AD5EC(v8, type metadata accessor for HandoffInfo);
    }

    v15 = v1[3];
    v16 = *(v15 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    isa = sub_1000E0D18().super.isa;
    [v16 setSharePlayHandedOff:1 onConversationWithUUID:isa];

    v18 = *(v15 + OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy);
    if (v18)
    {
      *(v18 + 72) = 0;

      sub_10000F7FC();
    }

    v19 = v1[11];
    v20 = v1[9];
    v22 = v1[3];
    v21 = v1[4];
    sub_10001112C(5);
    v23 = *(v20 + 8);
    v1[16] = v23;
    v24 = *(v20 + 16);
    v1[17] = v24;
    v25 = sub_1000E2538();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    v27 = sub_1000A75DC(&qword_100120020, v26, type metadata accessor for ConduitActor, &unk_1000F2250);
    v28 = swift_allocObject();
    v28[2] = v19;
    v28[3] = v27;
    v28[4] = v22;
    v28[5] = v23;
    v28[6] = v24;
    v29 = v22;

    sub_1000223DC(0, 0, v21, &unk_1000F26F8, v28);

    v1[18] = *&v29[OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController];
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v30 = qword_1001230D0;

    return _swift_task_switch(sub_100093074, v30, 0);
  }
}

uint64_t sub_100093074()
{
  v1 = v0[11];
  sub_100031358(v0[16], v0[17]);

  return _swift_task_switch(sub_1000930E4, v1, 0);
}

uint64_t sub_1000930E4()
{
  sub_1000AD5EC(*(v0 + 72), type metadata accessor for HandoffInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000931A0()
{
  sub_1000AD5EC(*(v0 + 72), type metadata accessor for HandoffInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v14;
  *(v8 + 409) = a7;
  *(v8 + 176) = a4;
  *(v8 + 184) = a6;
  *(v8 + 408) = a5;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  *(v8 + 152) = a1;
  v9 = sub_1000E1028();
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  v10 = sub_1000E0D68();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v11 = qword_1001230F0;
  *(v8 + 280) = qword_1001230F0;

  return _swift_task_switch(sub_1000933F0, v11, 0);
}

uint64_t sub_1000933F0()
{
  v28 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  v5 = sub_1000E1F08();
  *(v0 + 288) = sub_1000049D0(v5, qword_100123128);
  (*(v3 + 16))(v1, v4, v2);

  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 272);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  if (v8)
  {
    v26 = *(v0 + 168);
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = sub_1000E2C18();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100029C70(v13, v15, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100029C70(*(v26 + 16), *(v26 + 24), &v27);
    _os_log_impl(&_mh_execute_header, v6, v7, "[Handoff][Push] Initiating push of %s to %s.", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 296) = v16;
  v18 = *(v0 + 408);
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  v19[1] = sub_1000936C8;
  v20 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 409);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);

  return sub_10009463C(v0 + 16, v24, v23, v18 & 1, v20, v22, v21);
}

uint64_t sub_1000936C8()
{
  v2 = *v1;
  v2[39] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[35];

    return _swift_task_switch(sub_100093844, v5, 0);
  }
}

uint64_t sub_100093844()
{
  v29 = v0;
  v1 = *(v0 + 312);
  sub_100091CD0(v0 + 16);
  *(v0 + 320) = v2;
  if (v1)
  {
    sub_1000AB184(v0 + 16);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = *(v0 + 200);
    swift_beginAccess();
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;
    v8 = v5;

    sub_1000AB1B4(v0 + 16, v0 + 72);
    v9 = sub_1000E1EE8();
    v10 = sub_1000E2698();
    sub_1000AB184(v0 + 16);

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 264);
      v12 = *(v0 + 232);
      v26 = *(v0 + 296);
      v27 = *(v0 + 168);
      v13 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = [*(v0 + 48) UUID];
      sub_1000E0D38();

      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = sub_1000E2C18();
      v17 = v16;
      v26(v11, v12);
      v18 = sub_100029C70(v15, v17, v28);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100029C70(*(v27 + 16), *(v27 + 24), v28);
      _os_log_impl(&_mh_execute_header, v9, v10, "[Handoff][Push] Sending join event for %s to %s.", v13, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = swift_task_alloc();
    *(v21 + 16) = v0 + 16;
    *(v21 + 24) = v19;
    sub_1000A75DC(&qword_10011EDE8, 255, &type metadata accessor for NCProtoJoinEvent, &protocol conformance descriptor for NCProtoJoinEvent);
    sub_1000E0E38();

    v22 = *(v20 + 16);
    *(v0 + 328) = v22;
    v23 = *(v20 + 24);
    *(v0 + 336) = v23;
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    *(v0 + 344) = qword_1001230E0;
    v24 = swift_task_alloc();
    *(v0 + 352) = v24;
    *v24 = v0;
    v24[1] = sub_100093C70;
    v25 = *(v0 + 224);

    return sub_100026974(0, v25, v22, v23, 0);
  }
}

uint64_t sub_100093C70()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_100094088;
  }

  else
  {
    v4 = sub_100093D9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100093D9C()
{
  v1 = v0[35];
  (*(v0[27] + 8))(v0[28], v0[26]);

  return _swift_task_switch(sub_100093E18, v1, 0);
}

uint64_t sub_100093E18()
{
  v1 = *(v0 + 48);

  v2 = [v1 UUID];
  sub_1000E0D38();

  v3 = [v1 groupUUID];
  sub_1000E0D38();

  v4 = swift_task_alloc();
  *(v0 + 368) = v4;
  *v4 = v0;
  v4[1] = sub_100093F10;

  return sub_100014704();
}

uint64_t sub_100093F10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = v4[37];
    v6 = v4[35];
    v8 = v4[31];
    v7 = v4[32];
    v9 = v4[29];

    v5(v8, v9);
    v5(v7, v9);
    v10 = sub_1000944CC;
    v11 = v6;
  }

  else
  {
    v11 = v4[35];
    v4[48] = a1;
    v10 = sub_1000941B0;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100094088()
{
  v1 = v0[35];
  (*(v0[27] + 8))(v0[28], v0[26]);

  return _swift_task_switch(sub_100094104, v1, 0);
}

uint64_t sub_100094104()
{
  sub_1000AB184(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000941B0()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v4 = *(v0 + 320);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 152);
  *v9 = *(v0 + 408) & 1;
  *(v9 + 8) = v3;
  *(v9 + 16) = v2;
  v10 = type metadata accessor for HandoffInfo(0);
  v11 = *(v8 + 32);
  v11(v9 + v10[6], v6, v7);
  v11(v9 + v10[7], v5, v7);
  *(v9 + v10[8]) = v1;
  *(v9 + v10[9]) = v4;
  *(v9 + v10[10]) = &_swiftEmptySetSingleton;
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_1000942F8;
  v13 = *(v0 + 152);

  return sub_100092690(v13);
}

uint64_t sub_1000942F8()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_100094578;
  }

  else
  {
    v4 = sub_100094424;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100094424()
{
  sub_1000AB184(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000944CC()
{
  sub_1000AB184(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100094578()
{
  v1 = *(v0 + 152);
  sub_1000AB184(v0 + 16);
  sub_1000AD5EC(v1, type metadata accessor for HandoffInfo);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009463C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 289) = a6;
  *(v8 + 288) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1000E1638();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  v10 = sub_1000E1728();
  *(v8 + 88) = v10;
  *(v8 + 96) = *(v10 - 8);
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_1000E0D68();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  sub_10000ADE4(&qword_10011FA08, &unk_1000F2508);
  *(v8 + 168) = swift_task_alloc();
  v12 = sub_1000E1B18();
  *(v8 + 176) = v12;
  *(v8 + 184) = *(v12 - 8);
  *(v8 + 192) = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230F0;
  *(v8 + 200) = qword_1001230F0;

  return _swift_task_switch(sub_1000948C0, v13, 0);
}

uint64_t sub_1000948C0()
{
  v29 = v0;
  if ([*(v0[7] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport) isGreenTea] && !TUGreenTeaLagunaEnabled())
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E1F08();
    sub_1000049D0(v22, qword_100123128);
    v23 = sub_1000E1EE8();
    v24 = sub_1000E2698();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "[Handoff][Push] Unable to push conversation from Green Tea device.", v25, 2u);
    }
  }

  else
  {
    v1 = *(v0[7] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    isa = sub_1000E0D18().super.isa;
    v3 = [v1 activeConversationWithUUID:isa];
    v0[26] = v3;

    if (v3)
    {
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v4 = qword_1001230E0;
      v0[27] = qword_1001230E0;

      return _swift_task_switch(sub_100094D3C, v4, 0);
    }

    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[14];
    v8 = v0[3];
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123128);
    (*(v6 + 16))(v5, v8, v7);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[15];
    v13 = v0[16];
    v15 = v0[14];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = sub_1000E2C18();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_100029C70(v18, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff][Push] Unable to find conversation %s.", v16, 0xCu);
      sub_10000E9DC(v17);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }
  }

  TUMakeNeighborhoodConduitError();
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_100094D3C()
{
  v1 = *(v0 + 200);
  *(v0 + 224) = sub_100012CD8();

  return _swift_task_switch(sub_100094DAC, v1, 0);
}

uint64_t sub_100094DAC()
{
  v94 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = v2;
  v4 = sub_10006EE20(v1, v2);

  if ((v4 & 1) == 0)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 24);
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123128);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v93[0] = v17;
      *v16 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v18 = sub_1000E2C18();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = sub_100029C70(v18, v20, v93);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Handoff][Push] TV incapable of handoff for %s.", v16, 0xCu);
      sub_10000E9DC(v17);

LABEL_8:
      v22 = *(v0 + 208);
      v23 = TUMakeNeighborhoodConduitError();
LABEL_9:
      v23;
      swift_willThrow();

      v24 = *(v0 + 8);

      return v24();
    }

LABEL_7:

    (*(v15 + 8))(v13, v14);
    goto LABEL_8;
  }

  sub_1000E2588();
  if ((*(v0 + 288) & 1) == 0)
  {
    v26 = [*(v0 + 208) activitySessions];
    sub_10000CAAC(0, &qword_10011FBB8, TUConversationActivitySession_ptr);
    sub_10000EA70(&unk_10011FBC0, &qword_10011FBB8, TUConversationActivitySession_ptr, &protocol conformance descriptor for NSObject);
    v27 = sub_1000E25E8();

    v28 = sub_10005B1DC(v27);

    if (v28)
    {
      v29 = [v28 activity];
      v30 = [v29 isEligibleForHandoff];

      if (!v30)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v76 = *(v0 + 144);
        v77 = *(v0 + 112);
        v78 = *(v0 + 120);
        v79 = *(v0 + 24);
        v80 = sub_1000E1F08();
        sub_1000049D0(v80, qword_100123128);
        (*(v78 + 16))(v76, v79, v77);
        v81 = sub_1000E1EE8();
        v82 = sub_1000E2698();
        v83 = os_log_type_enabled(v81, v82);
        v84 = *(v0 + 144);
        v85 = *(v0 + 112);
        v86 = *(v0 + 120);
        if (v83)
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v93[0] = v88;
          *v87 = 136315138;
          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v89 = sub_1000E2C18();
          v91 = v90;
          (*(v86 + 8))(v84, v85);
          v92 = sub_100029C70(v89, v91, v93);

          *(v87 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v81, v82, "[Handoff][Push] Current activity does not support handoff %s.", v87, 0xCu);
          sub_10000E9DC(v88);
        }

        else
        {

          (*(v86 + 8))(v84, v85);
        }

        v22 = *(v0 + 208);
        sub_1000AB580();
        v23 = TUMakeNeighborhoodConduitError();
        goto LABEL_9;
      }
    }
  }

  v31 = *(v0 + 176);
  v32 = *(v0 + 184);
  v33 = *(v0 + 168);
  sub_10006F82C(v33);
  if ((*(v32 + 48))(v33, 1, v31) == 1)
  {
    sub_1000033C8(*(v0 + 168), &qword_10011FA08, &unk_1000F2508);
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 152);
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);
    v37 = *(v0 + 24);
    v38 = sub_1000E1F08();
    sub_1000049D0(v38, qword_100123128);
    (*(v36 + 16))(v34, v37, v35);
    v10 = sub_1000E1EE8();
    v39 = sub_1000E2698();
    v40 = os_log_type_enabled(v10, v39);
    v13 = *(v0 + 152);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v93[0] = v42;
      *v41 = 136315138;
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = sub_1000E2C18();
      v45 = v44;
      (*(v15 + 8))(v13, v14);
      v46 = sub_100029C70(v43, v45, v93);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v10, v39, "[Handoff][Push] Failed to generate member association primary info %s.", v41, 0xCu);
      sub_10000E9DC(v42);

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  v49 = *(v0 + 120);
  v50 = *(v0 + 24);
  v51 = sub_1000E1F08();
  sub_1000049D0(v51, qword_100123128);
  (*(v49 + 16))(v47, v50, v48);

  v52 = sub_1000E1EE8();
  v53 = sub_1000E2698();

  v54 = os_log_type_enabled(v52, v53);
  v55 = *(v0 + 160);
  v56 = *(v0 + 112);
  v57 = *(v0 + 120);
  if (v54)
  {
    v58 = *(v0 + 32);
    v59 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v59 = 136315394;
    *(v59 + 4) = sub_100029C70(*(v58 + 16), *(v58 + 24), v93);
    *(v59 + 12) = 2080;
    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v60 = sub_1000E2C18();
    v62 = v61;
    (*(v57 + 8))(v55, v56);
    v63 = sub_100029C70(v60, v62, v93);

    *(v59 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v52, v53, "[Handoff][Push] Requesting to get device token for %s to invite to %s.", v59, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v57 + 8))(v55, v56);
  }

  v64 = *(v0 + 192);
  v65 = *(v0 + 289);
  v67 = *(v0 + 40);
  v66 = *(v0 + 48);
  v68 = *(v0 + 24);
  v69 = *(v0 + 32);
  v70 = swift_task_alloc();
  *(v70 + 16) = v68;
  *(v70 + 24) = v64;
  *(v70 + 32) = v67;
  *(v70 + 40) = v65;
  *(v70 + 48) = v66;
  sub_1000A75DC(&qword_100120250, 255, &type metadata accessor for NCProtoDeviceTokenRequest, &protocol conformance descriptor for NCProtoDeviceTokenRequest);
  sub_1000E0E38();

  v71 = *(v69 + 16);
  v72 = *(v69 + 24);
  v73 = swift_task_alloc();
  *(v0 + 232) = v73;
  *v73 = v0;
  v73[1] = sub_1000958F0;
  v74 = *(v0 + 104);
  v75 = *(v0 + 80);

  return sub_1000B5788(v74, 0, v75, v71, v72, 0);
}

uint64_t sub_1000958F0()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_100095C7C;
  }

  else
  {
    v4 = sub_100095A1C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100095A1C()
{
  v1 = v0[25];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100095A98, v1, 0);
}

uint64_t sub_100095A98(uint64_t a1)
{
  v2 = v1[30];
  sub_1000E2588();
  if (v2)
  {
    v3 = v1[26];
    v5 = v1[23];
    v4 = v1[24];
    v6 = v1[22];
    (*(v1[12] + 8))(v1[13], v1[11]);

    (*(v5 + 8))(v4, v6);

    v7 = v1[1];

    return v7();
  }

  else
  {
    v9 = sub_1000E16F8();
    v11 = v10;
    if (sub_1000E1718())
    {
      v12 = sub_1000E1708();
      v14 = v13;
      isa = sub_1000E0C78().super.isa;
      v16 = [objc_opt_self() voucherFromMessagingData:isa];

      sub_100006660(v12, v14);
    }

    else
    {
      v16 = 0;
    }

    v17 = v1[27];
    v1[31] = v16;
    v1[32] = v11;
    v1[33] = v9;

    return _swift_task_switch(sub_100095DF8, v17, 0);
  }
}

uint64_t sub_100095C7C()
{
  v1 = v0[25];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_100095CF8, v1, 0);
}

uint64_t sub_100095CF8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100095DF8()
{
  v1 = v0[25];
  v2 = v0[4];
  v0[34] = *(v2 + 48);
  v0[35] = *(v2 + 56);

  return _swift_task_switch(sub_100095E78, v1, 0);
}

uint64_t sub_100095E78()
{
  v12 = *(v0 + 272);
  v13 = *(v0 + 280);
  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  v8 = *(v0 + 208);
  v9 = *(v0 + 248);
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v7 = *(v0 + 288);
  v4 = *(v0 + 16);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  (*(v2 + 8))(v1, v3);

  *v4 = v7 & 1;
  *(v4 + 8) = v11;
  *(v4 + 16) = v10;
  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  *(v4 + 40) = v12;
  *(v4 + 48) = v13;
  v5 = *(v0 + 8);

  return v5();
}

void sub_100095FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v4 = sub_1000E21E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000E2248();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E0D68();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*(a2 + 32) groupUUID];
  sub_1000E0D38();

  sub_1000E2238();
  v28 = sub_1000E0D48();
  v29 = v16;
  sub_1000E2218();
  sub_1000E2228();
  v17 = v20;
  sub_1000E21D8();
  v20 = v17;
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v19);
  (*(v12 + 8))(v14, v11);
  sub_1000E1008();
  sub_1000DABD8();
  sub_1000E0FF8();
  sub_100005524(&v23);
  if (v24)
  {
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = v26;
    v32 = v27;
    sub_100005F20();
    sub_1000E1018();
    sub_1000033C8(&v23, &qword_10011ECC0, &unk_1000F1120);
  }
}

uint64_t sub_100096310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v29 = a6;
  v27 = a5;
  v25 = a3;
  v26 = a4;
  v24 = a1;
  v6 = sub_1000E15F8();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&unk_10011FA80, &qword_1000F2660);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1000E0FE8();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = sub_1000E1B18();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E0D08();
  sub_1000E15E8();
  (*(v19 + 16))(v21, v25, v18);
  sub_1000E1618();
  sub_10000CB64(v26, v10, &unk_10011FA80, &qword_1000F2660);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000033C8(v10, &unk_10011FA80, &qword_1000F2660);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    sub_1000E1628();
    (*(v12 + 8))(v17, v11);
  }

  sub_1000E15D8();
  if ((v29 - 1) > 3)
  {
    v22 = &enum case for NCProtoDeviceTokenRequest.ConversationHandoffType.unknown(_:);
  }

  else
  {
    v22 = *(&off_100115C30 + v29 - 1);
  }

  (*(v30 + 104))(v28, *v22, v31);
  return sub_1000E1608();
}

uint64_t sub_100096690(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1000E0D68();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = sub_10000ADE4(&qword_10011FAC0, &qword_1000F2700);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_10000ADE4(&qword_10011FAC8, &qword_1000F2708);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_10000ADE4(&qword_10011FAD0, &qword_1000F2710);
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v9 = sub_10000ADE4(&qword_10011FAD8, &qword_1000F2718);
  v3[20] = v9;
  v3[21] = *(v9 - 8);
  v3[22] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v10 = qword_1001230F0;
  v3[23] = qword_1001230F0;

  return _swift_task_switch(sub_100096934, v10, 0);
}

uint64_t sub_100096934()
{
  v21 = v0[22];
  v23 = v0[20];
  v24 = v0[21];
  v17 = v0[19];
  v22 = v0[18];
  v20 = v0[17];
  v18 = v0[15];
  v16 = v0[14];
  v9 = v0[13];
  v14 = v0[16];
  v15 = v0[12];
  v13 = v0[11];
  v1 = v0[8];
  v11 = v0[7];
  v12 = v0[10];
  v2 = v0[6];
  v10 = v0[5];
  v19 = v0[4];
  v0[24] = sub_1000D605C(3);
  v0[2] = *(*(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_activeConversationsSubject);
  sub_10000ADE4(&qword_10011FAE0, &qword_1000F2720);
  sub_100002C64(&qword_10011FAE8, &qword_10011FAE0, &qword_1000F2720, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v0[3] = sub_1000E2028();
  sub_1000E1F58();
  sub_10000ADE4(&qword_10011FAF0, &qword_1000F2728);
  sub_10000ADE4(&qword_10011FAF8, &qword_1000F2730);
  sub_100002C64(&qword_10011FB00, &qword_10011FAF0, &qword_1000F2728, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100002C64(&qword_10011FB08, &qword_10011FAF8, &qword_1000F2730, &protocol conformance descriptor for Publishers.Sequence<A, B>);
  sub_1000E20F8();

  (*(v1 + 16))(v12, v10, v11);
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  (*(v1 + 32))(v4 + v3, v12, v11);
  sub_100002C64(&qword_10011FB10, &qword_10011FAC0, &qword_1000F2700, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_1000E2078();

  (*(v15 + 8))(v9, v13);
  sub_1000E1F58();
  sub_10000ADE4(&qword_10011FB18, &qword_1000F2738);
  sub_100002C64(&qword_10011FB20, &qword_10011FAC8, &qword_1000F2708, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_100002C64(&qword_10011FB28, &qword_10011FB18, &qword_1000F2738, &protocol conformance descriptor for Publishers.Sequence<A, B>);
  sub_1000E20F8();
  (*(v18 + 8))(v14, v16);
  *(swift_allocObject() + 16) = v19;
  sub_100002C64(&qword_10011FB30, &qword_10011FAD0, &qword_1000F2710, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v5 = v19;
  sub_1000E2078();

  (*(v22 + 8))(v17, v20);
  sub_100002C64(&qword_10011FB38, &qword_10011FAD8, &qword_1000F2718, &protocol conformance descriptor for Publishers.Filter<A>);
  v6 = sub_1000E2028();
  v0[25] = v6;
  (*(v24 + 8))(v21, v23);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_100096E84;

  return sub_10009F6C8(v6);
}

uint64_t sub_100096E84(void *a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  v5 = *(v4 + 184);
  if (v1)
  {
    v6 = sub_100097080;
  }

  else
  {

    v6 = sub_100096FBC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100096FBC()
{
  v1 = *(v0 + 192);

  sub_1000D6278(3, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100097080()
{
  v1 = *(v0 + 192);

  sub_1000D6278(3, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100097144()
{
  swift_getKeyPath();

  swift_getAtKeyPath();
}

uint64_t sub_1000971B8(id *a1, uint64_t a2)
{
  v3 = sub_1000E0D68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_1000E0D38();

  v8 = sub_1000E0D28();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

void sub_1000972BC()
{
  v1 = [v0 activeRemoteParticipants];
  sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr, &protocol conformance descriptor for NSObject);
  v2 = sub_1000E25E8();

  v3 = [v0 activeLightweightParticipants];
  v4 = sub_1000E25E8();

  sub_10005AFC8(v4, v2);
}

void sub_1000973B4(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 activeRemoteParticipants];
  sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr, &protocol conformance descriptor for NSObject);
  v5 = sub_1000E25E8();

  v6 = [v3 activeLightweightParticipants];
  v7 = sub_1000E25E8();

  sub_10005AFC8(v7, v5);
  *a2 = v8;
}

uint64_t sub_1000974AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  sub_10000ADE4(a4, a5);
  sub_100002C64(a6, a4, a5, &protocol conformance descriptor for Set<A>);
  return sub_1000E2428();
}

void sub_100097540(id *a1)
{
  swift_getKeyPath();
  v3 = *a1;
  swift_getAtKeyPath();
}

id sub_1000975B0(id *a1, uint64_t a2)
{
  v3 = [*a1 handle];
  v4 = [v3 isEqualToHandle:a2];

  return v4;
}

uint64_t sub_100097608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v5[7] = qword_1001230F0;

  return _swift_task_switch(sub_1000976AC, v6, 0);
}

uint64_t sub_1000976AC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  v5 = *(v2 + 40);
  v6 = sub_1000A75DC(&qword_100120020, a2, type metadata accessor for ConduitActor, &unk_1000F2250);
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  *(v7 + 16) = *(v2 + 24);
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  v8 = swift_task_alloc();
  *(v2 + 72) = v8;
  *v8 = v2;
  v8[1] = sub_1000977F0;
  v9 = *(v2 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, v3, v6, 0xD00000000000002ELL, 0x80000001000EBC90, sub_1000ACAA4, v7, &type metadata for Bool);
}

uint64_t sub_1000977F0()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[7];

    return _swift_task_switch(sub_10002BD60, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10009792C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v8 = sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = sub_1000E0D68();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v18 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection))
  {
    swift_unknownObjectRelease();
LABEL_12:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v49 = sub_1000E1F08();
    sub_1000049D0(v49, qword_100123128);
    v50 = sub_1000E1EE8();
    v51 = sub_1000E2678();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "[Handoff][PullExpanse] No clients registered to approve sessions.", v52, 2u);
    }

    aBlock[0] = TUMakeNeighborhoodConduitError();
    return sub_1000E24C8();
  }

  v60 = v15;
  v61 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection;
  v59 = a4;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E1F08();
  sub_1000049D0(v19, qword_100123128);
  v20 = a3;
  v21 = sub_1000E1EE8();
  v22 = sub_1000E2698();

  v23 = os_log_type_enabled(v21, v22);
  v57 = v20;
  v58 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v55 = v22;
    v25 = v24;
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v25 = 136315138;
    v26 = [v20 UUID];
    v56 = v8;
    v27 = v62;
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = sub_1000E2C18();
    v29 = v14;
    v30 = a5;
    v32 = v31;
    v33 = v27;
    v8 = v56;
    (*(v60 + 8))(v33, v29);
    v34 = sub_100029C70(v28, v32, aBlock);
    a5 = v30;

    *(v25 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, v55, "[Handoff][PullExpanse] Requesting split session approval for %s.", v25, 0xCu);
    sub_10000E9DC(v54);
  }

  v35 = *(v9 + 16);
  v35(v13, v64, v8);
  v36 = v63;
  v35(v63, v13, v8);
  v37 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v38 = swift_allocObject();
  (*(v9 + 32))(v38 + v37, v13, v8);
  v39 = *(v18 + v61);
  if (v39)
  {
    v40 = v39;
    v41 = [v40 remoteObjectProxy];
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_10000ADE4(&qword_10011FCA0, &qword_1000F29E0);
    if (swift_dynamicCast())
    {
      v42 = v66;
      if ([v66 respondsToSelector:"approveSplitSessionForConversation:requestedFromDevice:pullContext:completion:"])
      {
        v43 = *(v9 + 8);
        swift_unknownObjectRetain();
        v43(v36, v8);
        v44 = [v57 UUID];
        v45 = v62;
        sub_1000E0D38();

        isa = sub_1000E0D18().super.isa;
        aBlock[4] = sub_1000ACAB0;
        aBlock[5] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10005FC2C;
        aBlock[3] = &unk_1001157C8;
        v47 = _Block_copy(aBlock);

        [v42 approveSplitSessionForConversation:isa requestedFromDevice:v59 pullContext:a5 completion:v47];

        _Block_release(v47);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();

        (*(v60 + 8))(v45, v58);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v53 = TUMakeNeighborhoodConduitError();
  sub_100098048(0, v53);

  swift_unknownObjectRelease();

  return (*(v9 + 8))(v36, v8);
}

uint64_t sub_100098048(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100123128);
    swift_errorRetain();
    v3 = sub_1000E1EE8();
    v4 = sub_1000E2678();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[Handoff][PullExpanse] Failed to approve split session: %@.", v5, 0xCu);
      sub_1000033C8(v6, &unk_10011EAC0, &unk_1000F0E60);
    }

    sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0);
    return sub_1000E24C8();
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_100123128);
    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Handoff][PullExpanse] Split session approval result: %{BOOL}d.", v13, 8u);
    }

    sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0);
    return sub_1000E24D8();
  }
}

uint64_t sub_1000982CC(void *a1)
{
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v5 = sub_1000E1F08();
  sub_1000049D0(v5, qword_100123128);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Handoff][PullExpanse] Cancelling split session approval request.", v8, 2u);
  }

  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = qword_10011DC30;
  v12 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230F0;
  v14 = sub_1000A75DC(&qword_100120020, v11, type metadata accessor for ConduitActor, &unk_1000F2250);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v12;

  sub_100022F54(0, 0, v4, &unk_1000F29C8, v15);
}

uint64_t sub_10009850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_1000985A4, v5, 0);
}

uint64_t sub_1000985A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10001629C(sub_10001B050, 0);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_10009864C()
{
  v0 = TUBundle();
  if (v0)
  {
    v1 = v0;
    v15._countAndFlagsBits = 0x80000001000EBBE0;
    v20._countAndFlagsBits = 0xD000000000000019;
    v20._object = 0x80000001000EBBA0;
    v22.value._object = 0x80000001000EBBC0;
    v22.value._countAndFlagsBits = 0xD000000000000012;
    v2.super.isa = v1;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v3 = sub_1000E0B88(v20, v22, v2, v24, 0xD00000000000001FLL, v15);
    v5 = v4;
    v16._countAndFlagsBits = 0x80000001000EBC30;
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = 0x80000001000EBC00;
    v23.value._object = 0x80000001000EBBC0;
    v23.value._countAndFlagsBits = 0xD000000000000012;
    v6.super.isa = v1;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v7 = sub_1000E0B88(v21, v23, v6, v25, 0xD00000000000002DLL, v16);
    v9 = v8;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_100123128);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2668();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v3, v5, &v18);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100029C70(v7, v9, &v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "Presenting alert: %s / %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v14 = sub_1000E2328();

    alertMessage = sub_1000E2328();

    CFUserNotificationDisplayNotice(0.0, 1uLL, 0, 0, 0, v14, alertMessage, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100098918()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000989A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = type metadata accessor for HandoffInfo(0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6[7] = qword_1001230F0;
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_100098AC8;

  return sub_100098F60(a5, a6);
}

uint64_t sub_100098AC8()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100098BD8, v1, 0);
}

uint64_t sub_100098BD8()
{
  v30 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v3 = *(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v5 = [v3 activeConversationWithUUID:isa];

  if (v5)
  {
    v28 = v2;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_100123128);
    sub_1000A87E4(v8, v6, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v8, v7, type metadata accessor for HandoffInfo);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    if (v12)
    {
      v15 = v0[4];
      v25 = v11;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v16 = 138412546;
      v27 = v1;
      v18 = *(v13 + *(v15 + 36));
      sub_1000AD5EC(v13, type metadata accessor for HandoffInfo);
      *(v16 + 4) = v18;
      *v17 = v18;
      *(v16 + 12) = 2080;
      sub_1000E0D68();
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = sub_1000E2C18();
      v21 = v20;
      sub_1000AD5EC(v14, type metadata accessor for HandoffInfo);
      v22 = sub_100029C70(v19, v21, &v29);
      v1 = v27;

      *(v16 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v10, v25, "Kicking %@ from %s.", v16, 0x16u);
      sub_1000033C8(v17, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v26);
    }

    else
    {

      sub_1000AD5EC(v14, type metadata accessor for HandoffInfo);
      sub_1000AD5EC(v13, type metadata accessor for HandoffInfo);
    }

    [*(v1 + v28) kickMember:*(v0[3] + *(v0[4] + 36)) conversation:v5];
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_100098F60(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E1428();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1000E1658();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = sub_1000E13E8();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for HandoffInfo(0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v3[20] = qword_1001230F0;

  return _swift_task_switch(sub_10009917C, v7, 0);
}

uint64_t sub_10009917C()
{
  v33 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_1000E1F08();
  v0[21] = sub_1000049D0(v7, qword_100123128);
  sub_1000A87E4(v6, v1, type metadata accessor for HandoffInfo);
  v8 = *(v4 + 16);
  v0[22] = v8;
  v0[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v5, v3);
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[19];
  v13 = v0[16];
  v14 = v0[13];
  if (v11)
  {
    v30 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v15 = 136315394;
    v17 = sub_1000DDC88();
    v19 = v18;
    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
    v20 = sub_100029C70(v17, v19, &v32);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    v21 = sub_1000E13D8();
    v22 = *(v14 + 8);
    v22(v13, v30);
    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending disconnect request for %s with reason %ld", v15, 0x16u);
    sub_10000E9DC(v16);
  }

  else
  {
    v22 = *(v14 + 8);
    v22(v0[16], v0[12]);

    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
  }

  v0[24] = v22;
  v23 = swift_task_alloc();
  v31 = *(v0 + 1);
  *(v23 + 16) = v31;
  sub_1000A75DC(&unk_10011F8A0, 255, &type metadata accessor for NCProtoDisconnectRequest, &protocol conformance descriptor for NCProtoDisconnectRequest);
  sub_1000E0E38();

  v24 = *(v31 + 8);
  v25 = *(v31 + 16);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[25] = qword_1001230E0;
  v26 = swift_task_alloc();
  v0[26] = v26;
  *v26 = v0;
  v26[1] = sub_100099538;
  v27 = v0[11];
  v28 = v0[7];

  return sub_1000B5ED4(v27, 1, v28, v24, v25, 0);
}

uint64_t sub_100099538()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = sub_100099A10;
  }

  else
  {
    v4 = sub_100099664;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100099664()
{
  v1 = v0[20];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1000996E0, v1, 0);
}

uint64_t sub_1000996E0()
{
  v34 = v0;
  v1 = v0[22];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[3];
  sub_1000A87E4(v0[2], v0[18], type metadata accessor for HandoffInfo);
  v1(v2, v8, v3);
  (*(v6 + 16))(v5, v4, v7);
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[18];
  v13 = v0[15];
  v31 = v0[12];
  v32 = v0[24];
  v14 = v0[9];
  v15 = v0[10];
  if (v11)
  {
    v28 = v0[8];
    v30 = v10;
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v16 = 136315650;
    v17 = sub_1000DDC88();
    v19 = v18;
    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
    v20 = sub_100029C70(v17, v19, &v33);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    v21 = sub_1000E13D8();
    v32(v13, v31);
    *(v16 + 14) = v21;
    *(v16 + 22) = 1024;
    LODWORD(v21) = sub_1000E1648() & 1;
    v22 = *(v14 + 8);
    v22(v15, v28);
    *(v16 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v9, v30, "Disconnected from %s with reason %ld result %{BOOL}d", v16, 0x1Cu);
    sub_10000E9DC(v29);
  }

  else
  {
    v22 = *(v14 + 8);
    v22(v0[10], v0[8]);
    v32(v13, v31);

    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
  }

  v23 = v0[11];
  v24 = v0[8];
  v25 = sub_1000E1648();
  v22(v23, v24);

  v26 = v0[1];

  return v26(v25 & 1);
}

uint64_t sub_100099A10()
{
  v1 = v0[20];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_100099A8C, v1, 0);
}

uint64_t sub_100099A8C()
{
  v27 = v0;
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  sub_1000A87E4(v0[2], v0[17], type metadata accessor for HandoffInfo);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2678();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[12];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v12 = 136315650;
    v24 = v6;
    v13 = sub_1000DDC88();
    v15 = v14;
    sub_1000AD5EC(v9, type metadata accessor for HandoffInfo);
    v16 = sub_100029C70(v13, v15, &v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = NCProtoDisconnectRequest.DisconnectReason.description.getter();
    v19 = v18;
    v8(v10, v11);
    v20 = sub_100029C70(v17, v19, &v26);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v21;
    *v25 = v21;
    _os_log_impl(&_mh_execute_header, v5, v24, "Failed to disconnect from %s with reason %s. Error %@", v12, 0x20u);
    sub_1000033C8(v25, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {

    v8(v10, v11);
    sub_1000AD5EC(v9, type metadata accessor for HandoffInfo);
  }

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_100099DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a2;
  v22 = a1;
  v23 = a3;
  v3 = sub_1000E13E8();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E21E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E2248();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HandoffInfo(0);
  sub_1000E2238();
  v24 = sub_1000E0D48();
  v25 = v14;
  sub_1000E2218();
  sub_1000E2228();
  v15 = v20;
  sub_1000E21D8();
  v20 = v15;
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  sub_1000E13F8();
  v16 = v21;
  (*(v21 + 104))(v5, enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:), v3);
  sub_1000A75DC(&qword_10011F8B0, 255, &type metadata accessor for NCProtoDisconnectRequest.DisconnectReason, &protocol conformance descriptor for NCProtoDisconnectRequest.DisconnectReason);
  v17 = v23;
  sub_1000E2438();
  sub_1000E2438();
  (*(v16 + 8))(v5, v3);
  sub_1000E1418();
  (*(v16 + 16))(v5, v17, v3);
  return sub_1000E1408();
}

uint64_t sub_10009A154(uint64_t a1)
{
  v11[0] = a1;
  v1 = sub_1000E21E8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E2248();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HandoffInfo(0);
  sub_1000E2238();
  v11[1] = sub_1000E0D48();
  v11[2] = v9;
  sub_1000E2218();
  sub_1000E2228();
  sub_1000E21D8();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return sub_1000E1348();
}

void *sub_10009A378()
{
  if (![*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_vouchingEnablement) isEnabled])
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled];
  sub_10000ADE4(&unk_10011FA28, &qword_1000F2518);
  v2 = sub_1000E1AB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  if (v1)
  {
    *(v6 + 16) = xmmword_1000F1FC0;
    v7 = *(v3 + 104);
    v7(v6 + v5, enum case for NCProtoMemberAssociationPrimaryInfo.MemberAssociationType.identityClaiming(_:), v2);
    v7(v6 + v5 + v4, enum case for NCProtoMemberAssociationPrimaryInfo.MemberAssociationType.expanse(_:), v2);
  }

  else
  {
    *(v6 + 16) = xmmword_1000F07C0;
    (*(v3 + 104))(v6 + v5, enum case for NCProtoMemberAssociationPrimaryInfo.MemberAssociationType.expanse(_:), v2);
  }

  return v6;
}

uint64_t sub_10009A514(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a4;
  v17 = a6;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 groupUUID];
  sub_1000E0D38();

  sub_1000E0D08();
  (*(v9 + 8))(v11, v8);
  sub_1000E1B08();
  v13 = [a3 handle];
  v14 = [v13 messagingData];

  sub_1000E0C88();
  sub_1000E1AC8();
  [a2 localParticipantIdentifier];
  sub_1000E1AD8();

  sub_1000E1AE8();
  sub_10009A378();
  return sub_1000E1AF8();
}

uint64_t sub_10009A70C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v26 = a2;
  v25 = sub_1000E13E8();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E0D68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for HandoffInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CB64(a1, v11, &qword_10011F8B8, &qword_1000F22D8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000033C8(v11, &qword_10011F8B8, &qword_1000F22D8);
  }

  sub_1000A877C(v11, v15, type metadata accessor for HandoffInfo);
  v17 = [v26 UUID];
  sub_1000E0D38();

  LOBYTE(v17) = sub_1000E0D28();
  (*(v6 + 8))(v8, v5);
  if (v17)
  {
    v19 = v22;
    v18 = v23;
    v20 = v25;
    (*(v23 + 104))(v22, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v25);
    sub_10006B2FC(v19);

    (*(v18 + 8))(v19, v20);
  }

  return sub_1000AD5EC(v15, type metadata accessor for HandoffInfo);
}

uint64_t sub_10009AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 32) = qword_1001230F0;

  return _swift_task_switch(sub_10009AAF8, v5, 0);
}

uint64_t sub_10009AAF8()
{
  sub_1000E1FF8();
  v1 = v0[2];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  v3 = v0[3];

  v4 = OBJC_IVAR___CSDNeighborhoodActivityConduit_activeConversationBleDiscoveryAssertion;
  v0[5] = OBJC_IVAR___CSDNeighborhoodActivityConduit_activeConversationBleDiscoveryAssertion;
  v5 = *(v3 + v4);
  if (v2 <= 0)
  {
    if (v5)
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v12 = sub_1000E1F08();
      sub_1000049D0(v12, qword_100123128);
      v13 = sub_1000E1EE8();
      v14 = sub_1000E2698();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Releasing active conversation BLE assertion...", v15, 2u);
      }

      *(v0[3] + v0[5]) = 0;
    }
  }

  else if (!v5)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100123128);
    v7 = sub_1000E1EE8();
    v8 = sub_1000E2698();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Taking BLE assertion due to active conversation!", v9, 2u);
    }

    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_10009ADC4;

    return sub_10003FF60();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_10009ADC4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 32);
  if (v1)
  {

    v7 = sub_10009AF78;
  }

  else
  {
    *(v5 + 56) = a1;
    v7 = sub_10009AF08;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10009AF08()
{
  *(v0[3] + v0[5]) = v0[7];

  v1 = v0[1];

  return v1();
}

uint64_t sub_10009AF78()
{
  *(v0[3] + v0[5]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_10009B178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1000E13E8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5[10] = swift_task_alloc();
  v7 = sub_1000E0D68();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for HandoffInfo(0);
  v5[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v5[17] = qword_1001230F0;

  return _swift_task_switch(sub_10009B36C, v8, 0);
}

uint64_t sub_10009B36C()
{
  v58 = v0;
  v1 = v0[14];
  v2 = v0[5];
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v3, v1, &qword_10011F888, &qword_1000F22B0);
  v4 = type metadata accessor for HandoffState(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = v0[14];
  if (v5 == 1)
  {
    sub_1000033C8(v0[14], &qword_10011F888, &qword_1000F22B0);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = v0[6];
    sub_1000A877C(v6, v0[16], type metadata accessor for HandoffInfo);
    v11 = [v10 UUID];
    sub_1000E0D38();

    v12 = sub_1000E0D28();
    v13 = *(v8 + 8);
    v13(v7, v9);
    v6 = v0[16];
    if (v12)
    {
      v14 = v0[6];
      v15 = [v14 activeRemoteParticipants];
      sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
      sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr, &protocol conformance descriptor for NSObject);
      v16 = sub_1000E25E8();

      v17 = [v14 activeLightweightParticipants];
      v18 = sub_1000E25E8();

      sub_10005AFC8(v18, v16);
      v20 = v19;
      v21 = swift_task_alloc();
      *(v21 + 16) = v6;
      sub_1000D03FC(sub_1000A9394, v21, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v37 = v0[6];
        v38 = sub_1000E1F08();
        sub_1000049D0(v38, qword_100123128);
        v39 = v37;
        v40 = sub_1000E1EE8();
        v41 = sub_1000E2698();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = v0[13];
          v43 = v0[11];
          v56 = v13;
          v44 = v0[6];
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v57 = v46;
          *v45 = 136315138;
          v47 = [v44 UUID];
          sub_1000E0D38();

          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v48 = sub_1000E2C18();
          v50 = v49;
          v56(v42, v43);
          v51 = sub_100029C70(v48, v50, &v57);

          *(v45 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v40, v41, "Handoff member left conversation %s - ending handoff.", v45, 0xCu);
          sub_10000E9DC(v46);
        }

        v52 = v0[16];
        v54 = v0[8];
        v53 = v0[9];
        v55 = v0[7];
        (*(v54 + 104))(v53, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v55);
        sub_10006B2FC(v53);

        (*(v54 + 8))(v53, v55);
        v33 = type metadata accessor for HandoffInfo;
        v34 = v52;
        goto LABEL_10;
      }

      v6 = v0[16];
      v24 = v0[17];
      v25 = v0[10];
      v26 = v0[5];
      v27 = sub_1000E2538();
      (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
      v29 = sub_1000A75DC(&qword_100120020, v28, type metadata accessor for ConduitActor, &unk_1000F2250);
      v30 = swift_allocObject();
      v30[2] = v24;
      v30[3] = v29;
      v30[4] = v26;
      v31 = v26;

      sub_100022960(0, 0, v25, &unk_1000F23E0, v30);
    }

    v32 = type metadata accessor for HandoffInfo;
  }

  else
  {
    v32 = type metadata accessor for HandoffState;
  }

  v33 = v32;
  v34 = v6;
LABEL_10:
  sub_1000AD5EC(v34, v33);
LABEL_11:

  v35 = v0[1];

  return v35();
}

id sub_10009B9A4(id *a1, uint64_t a2)
{
  v3 = [*a1 handle];
  v4 = [*(a2 + *(type metadata accessor for HandoffInfo(0) + 36)) handle];
  v5 = [v3 isEquivalentToHandle:v4];

  return v5;
}

uint64_t sub_10009BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6[5] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v6[6] = qword_1001230F0;

  return _swift_task_switch(sub_10009BB30, v7, 0);
}

uint64_t sub_10009BB30()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1000E2538();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v8 = sub_1000A75DC(&qword_100120020, v7, type metadata accessor for ConduitActor, &unk_1000F2250);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v3;
  v10 = v5;

  sub_100022960(0, 0, v2, &unk_1000F23C0, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10009BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5[7] = swift_task_alloc();
  v6 = sub_1000E13E8();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_1000E0D68();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for HandoffInfo(0);
  v5[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v5[17] = qword_1001230F0;

  return _swift_task_switch(sub_10009C038, v8, 0);
}

uint64_t sub_10009C038()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v3, v1, &qword_10011F888, &qword_1000F22B0);
  v4 = type metadata accessor for HandoffState(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = *(v0 + 112);
  if (v5 == 1)
  {
    sub_1000033C8(*(v0 + 112), &qword_10011F888, &qword_1000F22B0);
LABEL_13:

    v24 = *(v0 + 8);

    return v24();
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = type metadata accessor for HandoffState;
LABEL_10:
    v22 = v21;
    v23 = v6;
LABEL_12:
    sub_1000AD5EC(v23, v22);
    goto LABEL_13;
  }

  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v10 = *(v0 + 48);
  sub_1000A877C(v6, *(v0 + 128), type metadata accessor for HandoffInfo);
  v11 = [v10 UUID];
  sub_1000E0D38();

  LOBYTE(v11) = sub_1000E0D28();
  (*(v8 + 8))(v7, v9);
  if ((v11 & 1) == 0)
  {
    v23 = *(v0 + 128);
    v22 = type metadata accessor for HandoffInfo;
    goto LABEL_12;
  }

  v12 = [*(v0 + 48) remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr, &protocol conformance descriptor for NSObject);
  v13 = sub_1000E25E8();

  v14 = sub_10001DBD4(v13);

  v15 = sub_1000D4F64(v14);

  sub_100020430(v15);
  LOBYTE(v14) = v16;

  if ((v14 & 1) == 0)
  {
    v6 = *(v0 + 128);
    v25 = *(v0 + 136);
    v26 = *(v0 + 56);
    v27 = *(v0 + 40);
    v28 = sub_1000E2538();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v30 = sub_1000A75DC(&qword_100120020, v29, type metadata accessor for ConduitActor, &unk_1000F2250);
    v31 = swift_allocObject();
    v31[2] = v25;
    v31[3] = v30;
    v31[4] = v27;
    v32 = v27;

    sub_100022960(0, 0, v26, &unk_1000F22C0, v31);

    v21 = type metadata accessor for HandoffInfo;
    goto LABEL_10;
  }

  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for NCProtoDisconnectRequest.DisconnectReason.blockedContact(_:), *(v0 + 64));
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *v17 = v0;
  v17[1] = sub_10009C4B0;
  v18 = *(v0 + 128);
  v19 = *(v0 + 80);

  return sub_100098F60(v18, v19);
}

uint64_t sub_10009C4B0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_10009C61C, v1, 0);
}

uint64_t sub_10009C61C()
{
  sub_1000AD5EC(*(v0 + 128), type metadata accessor for HandoffInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_10000ADE4(&unk_10011F878, &unk_1000F2290);
  v5[10] = swift_task_alloc();
  v6 = sub_1000E0D68();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v7 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;

  return _swift_task_switch(sub_10009C8B0, v8, 0);
}

uint64_t sub_10009C8B0()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 72) UUID];
  sub_1000E0D38();

  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_startedConversations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_10000B348(*(v0 + 112)), (v6 & 1) != 0))
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = *(v0 + 120);
    v33 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    sub_10000CB64(*(v4 + 56) + *(*(v0 + 128) + 72) * v5, v7, &qword_10011EBB0, &qword_1000F04F0);
    v12 = v8;
    sub_1000AD400(v7, v8, &qword_10011EBB0, &qword_1000F04F0);
    swift_endAccess();
    v13 = *(v11 + 8);
    v13(v33, v10);
    v14 = *(v9 + 48);
    if (*(v8 + v14) > 1uLL)
    {
      v17 = *(v0 + 160);
    }

    else
    {
      v15 = v9;
      v16 = [*(v0 + 72) resolvedAudioVideoMode];
      v17 = *(v0 + 160);
      if (v16 == 2)
      {
        v19 = *(v0 + 136);
        v18 = *(v0 + 144);
        v32 = *(v0 + 88);
        v34 = *(v0 + 160);
        v30 = *(v0 + 104);
        v31 = *(v0 + 80);
        v29 = *(v0 + 72);
        *(v12 + v14) = 2;
        sub_10000CB64(v17, v18, &qword_10011EBB0, &qword_1000F04F0);
        v20 = *(v15 + 48);
        v21 = *(v18 + v20);
        v22 = sub_1000E0CE8();
        (*(*(v22 - 8) + 32))(v19, v18, v22);
        *(v19 + v20) = v21;
        v23 = [v29 UUID];
        sub_1000E0D38();

        swift_beginAccess();
        sub_1000A5324(v19, v30, v31);
        swift_endAccess();
        v13(v30, v32);
        sub_1000033C8(v31, &unk_10011F878, &unk_1000F2290);
        v17 = v34;
      }
    }

    sub_1000033C8(v17, &qword_10011EBB0, &qword_1000F04F0);
  }

  else
  {
    v24 = *(v0 + 112);
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    swift_endAccess();
    (*(v26 + 8))(v24, v25);
  }

  v27 = *(v0 + 8);

  return v27();
}

void sub_10009CBF4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_1000E2538();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = qword_10011DC30;
  v14 = a4;
  v15 = a1;
  v17 = v14;
  if (v13 != -1)
  {
    swift_once();
  }

  v18 = qword_1001230F0;
  v19 = sub_1000A75DC(&qword_100120020, v16, type metadata accessor for ConduitActor, &unk_1000F2250);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = v15;
  v20[5] = v17;

  sub_100022960(0, 0, v11, a6, v20);
}

uint64_t sub_10009CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 48) = qword_1001230F0;

  return _swift_task_switch(sub_10009CE38, v5, 0);
}

uint64_t sub_10009CE38()
{
  if ([*(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor) firstUnlocked])
  {
    v0[7] = *(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v1 = qword_1001230D0;
    v0[8] = qword_1001230D0;

    return _swift_task_switch(sub_10009CF34, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10009CF34()
{
  if (*(*(v0 + 56) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning))
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_10009CF78, *(v0 + 64), 0);
  }
}

uint64_t sub_10009CF78()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_1000A75DC(&unk_10011F010, 255, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_10009D0A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, v1, v3, 0x6574617669746361, 0xEA00000000002928, sub_1000AA0DC, v4, &type metadata for () + 8);
}

uint64_t sub_10009D0A8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_10009D474;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10009D1CC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10009D1E8()
{
  *(v0 + 96) = *(*(v0 + 40) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10009D290, v1, 0);
}

uint64_t sub_10009D290()
{
  swift_beginAccess();

  v2 = sub_10005AA20(v1);
  *(v0 + 104) = v2;

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10009D364;

  return sub_10006DBA0(v2);
}

uint64_t sub_10009D364()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009D474()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10009D4E0, v1, 0);
}

uint64_t sub_10009D4E0()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  swift_errorRetain();
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error activating suggestion controller %@", v4, 0xCu);
    sub_1000033C8(v5, &unk_10011EAC0, &unk_1000F0E60);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

void sub_10009D684(uint64_t a1)
{
  v1 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_100123128);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received firstUnlock notification", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = qword_10011DC30;
    v13 = v9;
    if (v11 != -1)
    {
      swift_once();
    }

    v14 = qword_1001230F0;
    v15 = sub_1000A75DC(&qword_100120020, v12, type metadata accessor for ConduitActor, &unk_1000F2250);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v13;

    sub_100022960(0, 0, v3, &unk_1000F2558, v16);
  }
}

uint64_t sub_10009D8F0(uint64_t a1)
{
  v1 = *sub_1000036AC((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_10009D924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5[5] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v5[6] = qword_1001230F0;

  return _swift_task_switch(sub_10009D9FC, v6, 0);
}

uint64_t sub_10009D9FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1000E2538();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v8 = sub_1000A75DC(&qword_100120020, v7, type metadata accessor for ConduitActor, &unk_1000F2250);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v4;
  v9[5] = v3;
  v10 = v4;

  sub_100022960(0, 0, v2, &unk_1000F2628, v9);

  *v5 = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_10009DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_10009DBF8, v6, 0);
}

uint64_t sub_10009DBF8()
{
  sub_1000AA578();
  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_10009DCA0, 0, 0);
}

uint64_t sub_10009DCA0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_10009DCCC, v1, 0);
}

uint64_t sub_10009DCCC()
{
  v10 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100120060);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100029C70(*(v4 + 16), *(v4 + 24), &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "Handling EndLagunaSessionEvent from %s", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  sub_1000BE71C(*(*(v0 + 24) + 16), *(*(v0 + 24) + 24));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t TUConversationState.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x676E697469615728;
    }

    if (a1 == 1)
    {
      return 0x6972617065725028;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696E696F4A28;
      case 3:
        return 0x2964656E696F4A28;
      case 4:
        return 0x676E697661654C28;
    }
  }

  return 0x6E776F6E6B6E5528;
}

uint64_t sub_10009DF10()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x676E697469615728;
    }

    if (v1 == 1)
    {
      return 0x6972617065725028;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x676E696E696F4A28;
      case 3:
        return 0x2964656E696F4A28;
      case 4:
        return 0x676E697661654C28;
    }
  }

  return 0x6E776F6E6B6E5528;
}

uint64_t sub_10009DFD0(int a1, id a2)
{
  v3 = [a2 identifier];
  sub_1000E2338();

  sub_1000E1048();
  v4 = [a2 givenName];
  sub_1000E2338();

  sub_1000E10A8();
  v5 = [a2 middleName];
  sub_1000E2338();

  sub_1000E1058();
  v6 = [a2 familyName];
  sub_1000E2338();

  sub_1000E1038();
  v7 = [a2 namePrefix];
  sub_1000E2338();

  sub_1000E1068();
  v8 = [a2 nameSuffix];
  sub_1000E2338();

  sub_1000E1078();
  v9 = [a2 nickname];
  sub_1000E2338();

  sub_1000E1098();
  v10 = [a2 thumbnailImageData];
  if (v10)
  {
    v11 = v10;
    sub_1000E0C88();

    sub_1000E10B8();
  }

  v12 = [a2 organizationName];
  sub_1000E2338();

  return sub_1000E1088();
}

uint64_t sub_10009E208(int a1, id a2)
{
  v3 = [a2 identifier];
  sub_1000E2338();

  sub_1000E1048();
  v4 = [a2 givenName];
  sub_1000E2338();

  sub_1000E10A8();
  v5 = [a2 middleName];
  sub_1000E2338();

  sub_1000E1058();
  v6 = [a2 familyName];
  sub_1000E2338();

  sub_1000E1038();
  v7 = [a2 namePrefix];
  sub_1000E2338();

  sub_1000E1068();
  v8 = [a2 nameSuffix];
  sub_1000E2338();

  sub_1000E1078();
  v9 = [a2 nickname];
  sub_1000E2338();

  sub_1000E1098();
  v10 = [a2 organizationName];
  sub_1000E2338();

  return sub_1000E1088();
}

unint64_t RPRemoteDisplayDiscoveryState.description.getter(char a1)
{
  if (a1 == 1)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t NCProtoCallState.description.getter()
{
  v0 = sub_1000E15C8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0xD000000000000011;
  v19 = 0x80000001000EB540;
  if (sub_1000E0F68())
  {
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_1000E2A88(18);

    v17._countAndFlagsBits = 0x456F696475417369;
    v17._object = 0xEF3D64656C62616ELL;
    v4 = sub_1000E0F28();
    v5 = (v4 & 1) == 0;
    if (v4)
    {
      v6._countAndFlagsBits = 1702195828;
    }

    else
    {
      v6._countAndFlagsBits = 0x65736C6166;
    }

    if (v5)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    v6._object = v7;
    sub_1000E23A8(v6);

    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    sub_1000E23A8(v20);
    sub_1000E23A8(v17);
  }

  if (sub_1000E0F78())
  {
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_1000E2A88(18);

    v17._countAndFlagsBits = 0x456F656469567369;
    v17._object = 0xEF3D64656C62616ELL;
    v8 = sub_1000E0F48();
    v9 = (v8 & 1) == 0;
    if (v8)
    {
      v10._countAndFlagsBits = 1702195828;
    }

    else
    {
      v10._countAndFlagsBits = 0x65736C6166;
    }

    if (v9)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    v10._object = v11;
    sub_1000E23A8(v10);

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    sub_1000E23A8(v21);
    sub_1000E23A8(v17);
  }

  if (sub_1000E0FD8())
  {
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0x3D65646F4D7661;
    v22._object = 0xE700000000000000;
    sub_1000E23A8(v22);
    sub_1000E0FB8();
    sub_1000E2B48();
    (*(v1 + 8))(v3, v0);
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    sub_1000E23A8(v23);
    sub_1000E23A8(v17);
  }

  if (sub_1000E0FA8())
  {
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_1000E2A88(22);

    v17._countAndFlagsBits = 0xD000000000000014;
    v17._object = 0x80000001000EB560;
    v12 = sub_1000E0F88();
    v13 = (v12 & 1) == 0;
    if (v12)
    {
      v14._countAndFlagsBits = 1702195828;
    }

    else
    {
      v14._countAndFlagsBits = 0x65736C6166;
    }

    if (v13)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v14._object = v15;
    sub_1000E23A8(v14);

    sub_1000E23A8(v17);
  }

  v24._countAndFlagsBits = 41;
  v24._object = 0xE100000000000000;
  sub_1000E23A8(v24);
  return v18;
}

unint64_t TUConversationLetMeInRequestState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000029;
      }

      goto LABEL_8;
    }

    return 0xD00000000000002ALL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD00000000000002DLL;
      }

LABEL_8:
      sub_1000E2A88(44);

      v2._countAndFlagsBits = sub_1000E2C18();
      sub_1000E23A8(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      sub_1000E23A8(v3);
      return 0xD000000000000029;
    }

    return 0xD000000000000025;
  }
}

unint64_t NCProtoDisconnectRequest.DisconnectReason.description.getter()
{
  v1 = 0xD00000000000001ELL;
  v2 = sub_1000E13E8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v0, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for NCProtoDisconnectRequest.DisconnectReason.UNRECOGNIZED(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_1000E2A88(33);

    v11 = 0xD00000000000001ELL;
    v12 = 0x80000001000EB690;
    v10 = v7;
    v13._countAndFlagsBits = sub_1000E2C18();
    sub_1000E23A8(v13);

    v14._countAndFlagsBits = 41;
    v14._object = 0xE100000000000000;
    sub_1000E23A8(v14);
    return v11;
  }

  else if (v6 == enum case for NCProtoDisconnectRequest.DisconnectReason.unknown(_:))
  {
    return 0xD000000000000018;
  }

  else if (v6 != enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:))
  {
    if (v6 == enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:))
    {
      return 0xD000000000000023;
    }

    else if (v6 == enum case for NCProtoDisconnectRequest.DisconnectReason.blockedContact(_:))
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_1000E2A88(20);

      v11 = 0xD000000000000011;
      v12 = 0x80000001000EB670;
      v10 = sub_1000E13D8();
      v15._countAndFlagsBits = sub_1000E2C18();
      sub_1000E23A8(v15);

      v16._countAndFlagsBits = 41;
      v16._object = 0xE100000000000000;
      sub_1000E23A8(v16);
      v1 = v11;
      (*(v3 + 8))(v5, v2);
    }
  }

  return v1;
}

uint64_t type metadata accessor for NeighborhoodActivityConduit(uint64_t a1)
{
  result = qword_10011F860;
  if (!qword_10011F860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009EC64(uint64_t a1)
{
  sub_10009ED8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10009ED8C(uint64_t a1)
{
  if (!qword_10011F870)
  {
    type metadata accessor for HandoffState(255);
    v1 = sub_1000E2888();
    if (!v2)
    {
      atomic_store(v1, &qword_10011F870);
    }
  }
}

uint64_t sub_10009EE2C(int a1)
{
  sub_1000E2A88(117);
  v9._countAndFlagsBits = 0xD000000000000037;
  v9._object = 0x80000001000EBD00;
  sub_1000E23A8(v9);
  if (a1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_1000E23A8(v2);

  v10._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0x80000001000EBD40;
  sub_1000E23A8(v10);
  if ((a1 & 0x100) != 0)
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1000E23A8(v4);

  v11._object = 0x80000001000EBD70;
  v11._countAndFlagsBits = 0xD000000000000016;
  sub_1000E23A8(v11);
  if ((a1 & 0x10000) != 0)
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_1000E23A8(v6);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  sub_1000E23A8(v12);
  return 0;
}

uint64_t sub_10009EF7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009F03C, 0, 0);
}

uint64_t sub_10009F03C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_10000CAAC(0, &qword_10011FCC8, TUNearbySuggestionResult_ptr);
  *v6 = v0;
  v6[1] = sub_10009F16C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1000F2A98, v4, sub_1000AE220, v5, 0, 0, v7);
}

uint64_t sub_10009F16C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1000AE21C;
  }

  else
  {

    v2 = sub_1000AE1F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009F290(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009F350, 0, 0);
}

uint64_t sub_10009F350()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  *v6 = v0;
  v6[1] = sub_10009F480;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1000F2870, v4, sub_1000AE220, v5, 0, 0, v7);
}

uint64_t sub_10009F480()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10009F62C;
  }

  else
  {

    v2 = sub_10009F5A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009F5A4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10009F62C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009F6C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009F788, 0, 0);
}

uint64_t sub_10009F788()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  *v6 = v0;
  v6[1] = sub_10009F16C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1000F2750, v4, sub_1000AB3EC, v5, 0, 0, v7);
}

uint64_t sub_10009F8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10009F8DC, 0, 0);
}

uint64_t sub_10009F8DC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1000E1398();
  *v3 = v0;
  v3[1] = sub_10009F9E0;
  v5 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000AC340, v2, v4);
}

uint64_t sub_10009F9E0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10009FB1C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10009FB1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v28 = a1;
  v34 = sub_1000E2118();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000E2148();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&qword_10011FCD0, &qword_1000F2AA0);
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_1000E0D68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 16);
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, v28, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v14 + 32))(v20 + v17, v16, v13);
  (*(v9 + 32))(v20 + v18, v12, v27);
  *(v20 + v19) = v31;
  aBlock[4] = sub_1000AD890;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001159D0;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  sub_1000E2138();
  v37 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v21);
  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v22, v35);
}

uint64_t sub_1000A0034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v28 = a1;
  v34 = sub_1000E2118();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000E2148();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_1000E0D68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 16);
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, v28, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v14 + 32))(v20 + v17, v16, v13);
  (*(v9 + 32))(v20 + v18, v12, v27);
  *(v20 + v19) = v31;
  aBlock[4] = sub_1000AC34C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115688;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  sub_1000E2138();
  v37 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v21);
  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v22, v35);
}

uint64_t sub_1000A04E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v28 = a1;
  v34 = sub_1000E2118();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000E2148();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&qword_10011FC00, &qword_1000F2878);
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_1000E0D68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 16);
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, v28, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v14 + 32))(v20 + v17, v16, v13);
  (*(v9 + 32))(v20 + v18, v12, v27);
  *(v20 + v19) = v31;
  aBlock[4] = sub_1000ABC8C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115408;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  sub_1000E2138();
  v37 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v21);
  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v22, v35);
}

uint64_t sub_1000A099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v28 = a1;
  v34 = sub_1000E2118();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000E2148();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&unk_10011FB40, &qword_1000F2758);
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = sub_1000E0D68();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 16);
  (*(v14 + 16))(v16, a3, v13);
  (*(v9 + 16))(v12, v28, v8);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v14 + 32))(v20 + v17, v16, v13);
  (*(v9 + 32))(v20 + v18, v12, v27);
  *(v20 + v19) = v31;
  aBlock[4] = sub_1000AB400;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001152A0;
  v21 = _Block_copy(aBlock);

  v22 = v29;
  sub_1000E2138();
  v37 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v34;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v21);
  (*(v36 + 8))(v23, v24);
  (*(v33 + 8))(v22, v35);
}

uint64_t sub_1000A0E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a2;
  v82 = a3;
  v79 = a1;
  v68 = sub_10000ADE4(&qword_10011FCD0, &qword_1000F2AA0);
  v84 = *(v68 - 8);
  v80 = v84[8];
  v6 = __chkstk_darwin(v68);
  v72 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = v59 - v8;
  v64 = sub_1000E0D68();
  v83 = *(v64 - 8);
  v9 = *(v83 + 64);
  v10 = __chkstk_darwin(v64);
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v59 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  __chkstk_darwin(v12 - 8);
  v14 = v59 - v13;
  v65 = sub_10000ADE4(&qword_10011FCD8, &qword_1000F2AA8);
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = v59 - v15;
  v69 = sub_10000ADE4(&qword_10011FCE0, &qword_1000F2AB0);
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v78 = v59 - v16;
  v85 = a4;
  v17 = *(a1 + 16);
  v86 = v17;
  v18 = sub_1000E26D8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = v17;
  sub_10000ADE4(&qword_10011FCE8, &qword_1000F2AB8);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&qword_10011FCF0, &qword_10011FCE8, &qword_1000F2AB8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_1000E2088();
  sub_1000033C8(v14, &qword_10011E268, &qword_1000F2760);

  v20 = v83;
  v21 = *(v83 + 16);
  v61 = v83 + 16;
  v74 = v21;
  v22 = v63;
  v23 = v64;
  v21(v63, v81, v64);
  v24 = v84;
  v60 = v84[2];
  v73 = v84 + 2;
  v25 = v66;
  v26 = v68;
  v60(v66, v82, v68);
  v27 = *(v20 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = *(v24 + 80);
  v76 = v28;
  v59[1] = v27 | v29;
  v30 = (v9 + v29 + v28) & ~v29;
  v59[0] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v79;
  v32 = *(v20 + 32);
  v83 = v20 + 32;
  v77 = v32;
  v33 = v23;
  v32(v31 + v28, v22, v23);
  v34 = v84[4];
  v84 += 4;
  v75 = v34;
  v35 = v25;
  v36 = v26;
  v34(v31 + v30, v25, v26);
  sub_100002C64(&qword_10011FCF8, &qword_10011FCD8, &qword_1000F2AA8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v37 = v65;
  v38 = v62;
  sub_1000E2048();

  (*(v67 + 8))(v38, v37);
  v39 = v22;
  v40 = v81;
  v41 = v33;
  v74(v22, v81, v33);
  v42 = v35;
  v43 = v35;
  v44 = v36;
  v45 = v60;
  v60(v43, v82, v36);
  v46 = v59[0];
  v47 = swift_allocObject();
  *(v47 + 16) = v79;
  v77(v47 + v76, v39, v33);
  v48 = v46;
  v75(v47 + v46, v42, v44);
  v49 = v70;
  v74(v70, v40, v33);
  v50 = v72;
  v51 = v44;
  v45(v72, v82, v44);
  v52 = swift_allocObject();
  v53 = v79;
  *(v52 + 16) = v79;
  v77(v52 + v76, v49, v41);
  v75(v52 + v48, v50, v51);
  sub_100002C64(&unk_10011FD00, &qword_10011FCE0, &qword_1000F2AB0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  swift_retain_n();
  v54 = v69;
  v55 = v78;
  v56 = sub_1000E2068();

  (*(v71 + 8))(v55, v54);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(v53 + 24);
  *(v53 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v56, v81, isUniquelyReferenced_nonNull_native);
  *(v53 + 24) = v86;
  return swift_endAccess();
}

uint64_t sub_1000A16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a2;
  v82 = a3;
  v79 = a1;
  v68 = sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
  v84 = *(v68 - 8);
  v80 = v84[8];
  v6 = __chkstk_darwin(v68);
  v72 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = v59 - v8;
  v64 = sub_1000E0D68();
  v83 = *(v64 - 8);
  v9 = *(v83 + 64);
  v10 = __chkstk_darwin(v64);
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v59 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  __chkstk_darwin(v12 - 8);
  v14 = v59 - v13;
  v65 = sub_10000ADE4(&qword_10011FC58, &qword_1000F2960);
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = v59 - v15;
  v69 = sub_10000ADE4(&qword_10011FC60, &qword_1000F2968);
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v78 = v59 - v16;
  v85 = a4;
  v17 = *(a1 + 16);
  v86 = v17;
  v18 = sub_1000E26D8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = v17;
  sub_10000ADE4(&qword_10011FC68, &qword_1000F2970);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&qword_10011FC70, &qword_10011FC68, &qword_1000F2970, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_1000E2088();
  sub_1000033C8(v14, &qword_10011E268, &qword_1000F2760);

  v20 = v83;
  v21 = *(v83 + 16);
  v61 = v83 + 16;
  v74 = v21;
  v22 = v63;
  v23 = v64;
  v21(v63, v81, v64);
  v24 = v84;
  v60 = v84[2];
  v73 = v84 + 2;
  v25 = v66;
  v26 = v68;
  v60(v66, v82, v68);
  v27 = *(v20 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = *(v24 + 80);
  v76 = v28;
  v59[1] = v27 | v29;
  v30 = (v9 + v29 + v28) & ~v29;
  v59[0] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v79;
  v32 = *(v20 + 32);
  v83 = v20 + 32;
  v77 = v32;
  v33 = v23;
  v32(v31 + v28, v22, v23);
  v34 = v84[4];
  v84 += 4;
  v75 = v34;
  v35 = v25;
  v36 = v26;
  v34(v31 + v30, v25, v26);
  sub_100002C64(&qword_10011FC78, &qword_10011FC58, &qword_1000F2960, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v37 = v65;
  v38 = v62;
  sub_1000E2048();

  (*(v67 + 8))(v38, v37);
  v39 = v22;
  v40 = v81;
  v41 = v33;
  v74(v22, v81, v33);
  v42 = v35;
  v43 = v35;
  v44 = v36;
  v45 = v60;
  v60(v43, v82, v36);
  v46 = v59[0];
  v47 = swift_allocObject();
  *(v47 + 16) = v79;
  v77(v47 + v76, v39, v33);
  v48 = v46;
  v75(v47 + v46, v42, v44);
  v49 = v70;
  v74(v70, v40, v33);
  v50 = v72;
  v51 = v44;
  v45(v72, v82, v44);
  v52 = swift_allocObject();
  v53 = v79;
  *(v52 + 16) = v79;
  v77(v52 + v76, v49, v41);
  v75(v52 + v48, v50, v51);
  sub_100002C64(&qword_10011FC80, &qword_10011FC60, &qword_1000F2968, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  swift_retain_n();
  v54 = v69;
  v55 = v78;
  v56 = sub_1000E2068();

  (*(v71 + 8))(v55, v54);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(v53 + 24);
  *(v53 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v56, v81, isUniquelyReferenced_nonNull_native);
  *(v53 + 24) = v86;
  return swift_endAccess();
}

uint64_t sub_1000A1F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a2;
  v82 = a3;
  v79 = a1;
  v68 = sub_10000ADE4(&qword_10011FC00, &qword_1000F2878);
  v84 = *(v68 - 8);
  v80 = v84[8];
  v6 = __chkstk_darwin(v68);
  v72 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = v59 - v8;
  v64 = sub_1000E0D68();
  v83 = *(v64 - 8);
  v9 = *(v83 + 64);
  v10 = __chkstk_darwin(v64);
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v59 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  __chkstk_darwin(v12 - 8);
  v14 = v59 - v13;
  v65 = sub_10000ADE4(&qword_10011FC08, &qword_1000F2880);
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = v59 - v15;
  v69 = sub_10000ADE4(&qword_10011FC10, &qword_1000F2888);
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v78 = v59 - v16;
  v85 = a4;
  v17 = *(a1 + 16);
  v86 = v17;
  v18 = sub_1000E26D8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = v17;
  sub_10000ADE4(&qword_10011F978, &qword_1000F2438);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&unk_10011F980, &qword_10011F978, &qword_1000F2438, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_1000E2088();
  sub_1000033C8(v14, &qword_10011E268, &qword_1000F2760);

  v20 = v83;
  v21 = *(v83 + 16);
  v61 = v83 + 16;
  v74 = v21;
  v22 = v63;
  v23 = v64;
  v21(v63, v81, v64);
  v24 = v84;
  v60 = v84[2];
  v73 = v84 + 2;
  v25 = v66;
  v26 = v68;
  v60(v66, v82, v68);
  v27 = *(v20 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = *(v24 + 80);
  v76 = v28;
  v59[1] = v27 | v29;
  v30 = (v9 + v29 + v28) & ~v29;
  v59[0] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v79;
  v32 = *(v20 + 32);
  v83 = v20 + 32;
  v77 = v32;
  v33 = v23;
  v32(v31 + v28, v22, v23);
  v34 = v84[4];
  v84 += 4;
  v75 = v34;
  v35 = v25;
  v36 = v26;
  v34(v31 + v30, v25, v26);
  sub_100002C64(&qword_10011FC18, &qword_10011FC08, &qword_1000F2880, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v37 = v65;
  v38 = v62;
  sub_1000E2048();

  (*(v67 + 8))(v38, v37);
  v39 = v22;
  v40 = v81;
  v41 = v33;
  v74(v22, v81, v33);
  v42 = v35;
  v43 = v35;
  v44 = v36;
  v45 = v60;
  v60(v43, v82, v36);
  v46 = v59[0];
  v47 = swift_allocObject();
  *(v47 + 16) = v79;
  v77(v47 + v76, v39, v33);
  v48 = v46;
  v75(v47 + v46, v42, v44);
  v49 = v70;
  v74(v70, v40, v33);
  v50 = v72;
  v51 = v44;
  v45(v72, v82, v44);
  v52 = swift_allocObject();
  v53 = v79;
  *(v52 + 16) = v79;
  v77(v52 + v76, v49, v41);
  v75(v52 + v48, v50, v51);
  sub_100002C64(&qword_10011FC20, &qword_10011FC10, &qword_1000F2888, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  swift_retain_n();
  v54 = v69;
  v55 = v78;
  v56 = sub_1000E2068();

  (*(v71 + 8))(v55, v54);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(v53 + 24);
  *(v53 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v56, v81, isUniquelyReferenced_nonNull_native);
  *(v53 + 24) = v86;
  return swift_endAccess();
}

uint64_t sub_1000A283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a2;
  v82 = a3;
  v79 = a1;
  v68 = sub_10000ADE4(&unk_10011FB40, &qword_1000F2758);
  v84 = *(v68 - 8);
  v80 = v84[8];
  v6 = __chkstk_darwin(v68);
  v72 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = v59 - v8;
  v64 = sub_1000E0D68();
  v83 = *(v64 - 8);
  v9 = *(v83 + 64);
  v10 = __chkstk_darwin(v64);
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = v59 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  __chkstk_darwin(v12 - 8);
  v14 = v59 - v13;
  v65 = sub_10000ADE4(&qword_10011FB50, &qword_1000F2768);
  v67 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = v59 - v15;
  v69 = sub_10000ADE4(&qword_10011FB58, &qword_1000F2770);
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v78 = v59 - v16;
  v85 = a4;
  v17 = *(a1 + 16);
  v86 = v17;
  v18 = sub_1000E26D8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = v17;
  sub_10000ADE4(&qword_10011FB60, &qword_1000F2778);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&qword_10011FB68, &qword_10011FB60, &qword_1000F2778, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_1000E2088();
  sub_1000033C8(v14, &qword_10011E268, &qword_1000F2760);

  v20 = v83;
  v21 = *(v83 + 16);
  v61 = v83 + 16;
  v74 = v21;
  v22 = v63;
  v23 = v64;
  v21(v63, v81, v64);
  v24 = v84;
  v60 = v84[2];
  v73 = v84 + 2;
  v25 = v66;
  v26 = v68;
  v60(v66, v82, v68);
  v27 = *(v20 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = *(v24 + 80);
  v76 = v28;
  v59[1] = v27 | v29;
  v30 = (v9 + v29 + v28) & ~v29;
  v59[0] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v79;
  v32 = *(v20 + 32);
  v83 = v20 + 32;
  v77 = v32;
  v33 = v23;
  v32(v31 + v28, v22, v23);
  v34 = v84[4];
  v84 += 4;
  v75 = v34;
  v35 = v25;
  v36 = v26;
  v34(v31 + v30, v25, v26);
  sub_100002C64(&qword_10011FB78, &qword_10011FB50, &qword_1000F2768, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v37 = v65;
  v38 = v62;
  sub_1000E2048();

  (*(v67 + 8))(v38, v37);
  v39 = v22;
  v40 = v81;
  v41 = v33;
  v74(v22, v81, v33);
  v42 = v35;
  v43 = v35;
  v44 = v36;
  v45 = v60;
  v60(v43, v82, v36);
  v46 = v59[0];
  v47 = swift_allocObject();
  *(v47 + 16) = v79;
  v77(v47 + v76, v39, v33);
  v48 = v46;
  v75(v47 + v46, v42, v44);
  v49 = v70;
  v74(v70, v40, v33);
  v50 = v72;
  v51 = v44;
  v45(v72, v82, v44);
  v52 = swift_allocObject();
  v53 = v79;
  *(v52 + 16) = v79;
  v77(v52 + v76, v49, v41);
  v75(v52 + v48, v50, v51);
  sub_100002C64(&qword_10011FB80, &qword_10011FB58, &qword_1000F2770, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  swift_retain_n();
  v54 = v69;
  v55 = v78;
  v56 = sub_1000E2068();

  (*(v71 + 8))(v55, v54);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(v53 + 24);
  *(v53 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v56, v81, isUniquelyReferenced_nonNull_native);
  *(v53 + 24) = v86;
  return swift_endAccess();
}

uint64_t sub_1000A30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000E1398();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  __chkstk_darwin(v12);
  v14 = (v23 - v13);
  swift_beginAccess();
  v15 = sub_10000B348(a3);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  v23[1] = a4;
  v17 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a2 + 24);
  v24 = v19;
  *(a2 + 24) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB370();
    v19 = v24;
  }

  v20 = *(v19 + 48);
  v21 = sub_1000E0D68();
  (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v17, v21);
  sub_1000C9AE0(v17, v19);
  *(a2 + 24) = v19;
  swift_endAccess();
  sub_1000E1F88();
  sub_10000CB64(a1, v14, &qword_10011FC88, &qword_1000F2978);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v14;
    sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
    sub_1000E24C8();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
    sub_1000E24D8();
  }
}

uint64_t sub_1000A3374(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  swift_beginAccess();
  v13 = sub_10000B348(a4);
  if ((v14 & 1) == 0)
  {
    return swift_endAccess();
  }

  v15 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB370();
  }

  v18 = *(v17 + 48);
  v19 = sub_1000E0D68();
  (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
  sub_1000C9AE0(v15, v17);
  *(a3 + 24) = v17;
  swift_endAccess();
  sub_1000E1F88();
  if (a2)
  {
    swift_errorRetain();
    sub_10000ADE4(a6, a7);
    sub_1000E24C8();
  }

  else
  {
    v21 = a1;
    sub_10000ADE4(a6, a7);
    sub_1000E24D8();
  }
}

uint64_t sub_1000A34F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  __chkstk_darwin(v6);
  v8 = (&v11 - v7);
  sub_1000E24F8();
  sub_1000A75DC(&qword_10011FB88, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
  v9 = swift_allocError();
  sub_1000E2298();
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  sub_1000A30E0(v8, a1, a2, a3);
  return sub_1000033C8(v8, &qword_10011FC88, &qword_1000F2978);
}

uint64_t sub_1000A3634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000E24F8();
  sub_1000A75DC(&qword_10011FB88, 255, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
  v10 = swift_allocError();
  sub_1000E2298();
  sub_1000A3374(v10, 1, a1, a2, a3, a4, a5);
}

uint64_t sub_1000A370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  v9 = __chkstk_darwin(v8);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (v19 - v12);
  if (a1)
  {
    v19[1] = a1;
    swift_errorRetain();
    sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    v14 = sub_1000E2C38();
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = swift_allocError();
      *v17 = a1;
    }

    *v13 = v15;
    swift_storeEnumTagMultiPayload();
    sub_1000A30E0(v13, a2, a3, a4);
    v16 = v13;
  }

  else
  {
    *v11 = TUMakeNeighborhoodConduitError();
    swift_storeEnumTagMultiPayload();
    sub_1000A30E0(v11, a2, a3, a4);
    v16 = v11;
  }

  return sub_1000033C8(v16, &qword_10011FC88, &qword_1000F2978);
}

void sub_1000A38D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a1)
  {
    v12 = TUMakeNeighborhoodConduitError();
    sub_1000A3374(v12, 1, a2, a3, a4, a5, a6);
  }

  else
  {
    v11 = sub_1000E2C38();
    if (!v11)
    {
      v11 = swift_allocError();
    }

    sub_1000A3374(v11, 1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1000A39E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  v11 = sub_1000E1398();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  sub_1000A30E0(v10, a2, a3, a4);
  return sub_1000033C8(v10, &qword_10011FC88, &qword_1000F2978);
}

uint64_t sub_1000A3AFC(uint64_t a1, unint64_t a2)
{
  v2 = sub_1000E2418();
  v6 = sub_1000A3B7C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1000A3B7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000E2898();
    if (!v9 || (v10 = v9, v11 = sub_100029A84(v9, 0), v12 = sub_1000A3CD4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000E2388();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000E2388();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000E2AB8();
LABEL_4:

  return sub_1000E2388();
}

unint64_t sub_1000A3CD4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000A3EF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000E23E8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000E2AB8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000A3EF4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000E23C8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}
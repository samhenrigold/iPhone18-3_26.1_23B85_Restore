uint64_t sub_1DC38()
{

  return _swift_task_switch(sub_1DD34, 0, 0);
}

uint64_t sub_1DD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DE00()
{

  return _swift_task_switch(sub_1DEFC, 0, 0);
}

uint64_t sub_1DEFC()
{
  v19 = v0;
  (*(v0 + 240))(*(v0 + 168), *(v0 + 144));
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  v1 = sub_5B218();
  v2 = sub_5B4C8();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v7 = 136315138;
    sub_29850(&qword_71C10, &type metadata accessor for PluginAction, &protocol conformance descriptor for PluginAction);
    v8 = sub_5B798();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_2DC10(v8, v10, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_0, v1, v2, "AppShortcutEnablementFlow redirecting to resolved action %s", v7, 0xCu);
    sub_5D00(v17);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  v13 = *(v0 + 200);
  v14 = *(v0 + 176);
  sub_5A448();
  v11(v13, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E184(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[18] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = sub_5A718();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  sub_5B94(&qword_72530, &qword_5C660);
  v2[25] = swift_task_alloc();
  v5 = sub_59E38();
  v2[26] = v5;
  v2[27] = *(v5 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1E36C, 0, 0);
}

uint64_t sub_1E36C()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  *(v0 + 232) = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AppShortcutEnablementFlow attempting to render confirmation", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_1E4C4;

  return sub_1EDA0(v0 + 56);
}

uint64_t sub_1E4C4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1EBAC;
  }

  else
  {
    v2 = sub_1E5D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1E5D8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1BBFC((v0 + 56), v0 + 16);
  sub_5A308();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_5D4C(*(v0 + 200), &qword_72530, &qword_5C660);
    v4 = sub_5B218();
    v5 = sub_5B4B8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_0, v4, v5, "AppShortcutEnablementFlow could not extract loggingIds for action. SELF message was not emitted as a result.", v6, 2u);
    }
  }

  else
  {
    v8 = *(v0 + 216);
    v7 = *(v0 + 224);
    v9 = *(v0 + 208);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    (*(v8 + 32))(v7, *(v0 + 200), v9);
    sub_5A6B8();
    sub_5A6A8();
    sub_5B94(&unk_72540, &unk_5C670);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_5C390;
    (*(v8 + 16))(v14 + v13, v7, v9);
    (*(v11 + 104))(v10, enum case for CAMDisambiguationDialogType.shortcutEnablement(_:), v12);
    sub_5A688();

    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
  }

  v15 = *(v0 + 136);
  v16 = v15[31];
  v17 = v15[32];
  sub_5CBC(v15 + 28, v16);
  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = sub_1E8A0;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 16, v16, v17);
}

uint64_t sub_1E8A0()
{

  if (v0)
  {

    v1 = sub_29B68;
  }

  else
  {
    v1 = sub_1E9B8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1E9B8()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  sub_5CBC((v0[17] + 104), *(v0[17] + 128));
  sub_5A1E8();
  (*(v2 + 104))(v1, enum case for ActivityType.disambiguation(_:), v4);
  v5 = enum case for SiriKitReliabilityCodes.disambiguationShortcutVsOther(_:);
  v6 = sub_5A168();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_5A1C8();
  sub_5A158();

  sub_5A408();
  sub_5D00(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1EBAC()
{
  v11 = v0;
  swift_errorRetain();
  v1 = sub_5B218();
  v2 = sub_5B4C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = sub_5B7E8();
    v7 = sub_2DC10(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v1, v2, "AppShortcutEnablementFlow will redirect to fall back action. Error: %s", v3, 0xCu);
    sub_5D00(v4);
  }

  sub_5A448();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1EDA0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_59E68();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1EE60, 0, 0);
}

uint64_t sub_1EE60()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v0[8] = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutInvocation;
  sub_5CBC((v4 + 24), *(v4 + 48));
  sub_5A208();
  v5 = sub_59E48();
  v7 = v6;
  v0[9] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1EF7C;

  return AppShortcutInvocation.getAppShortcuts(siriLanguage:provider:)(v5, v7, v4 + 144);
}

uint64_t sub_1EF7C(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_1F09C, 0, 0);
}

uint64_t sub_1F09C()
{
  if (qword_71A58 != -1)
  {
LABEL_42:
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);

  v2 = sub_5B218();
  LOBYTE(v3) = sub_5B4B8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = p_weak_ivar_lyt[11];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5 >> 62)
    {
      goto LABEL_45;
    }

    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
    *(v6 + 4) = v7;

    _os_log_impl(&dword_0, v2, v3, "auto shortcuts count: %ld", v6, 0xCu);
  }

  else
  {
  }

  v8 = p_weak_ivar_lyt[11];
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
    v2 = sub_5B678();
    v8 = p_weak_ivar_lyt[11];
  }

  else
  {
    v2 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
  }

  v40 = p_weak_ivar_lyt;
  p_weak_ivar_lyt[12] = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v41 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v3 = 0;
  v10 = v5 & 0xC000000000000001;
  v11 = (v8 + 32);
  v41 = _swiftEmptyArrayStorage;
  p_weak_ivar_lyt = &GiveUpRepeatFlow.weak_ivar_lyt;
  do
  {
    v6 = v3;
    while (1)
    {
      if (v10)
      {
        v12 = sub_5B5B8();
      }

      else
      {
        if (v6 >= *(v9 + 16))
        {
          goto LABEL_41;
        }

        v12 = *&v11[8 * v6];
      }

      v5 = v12;
      v3 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v13 = [v12 orderedPhrases];
      sub_29480();
      v14 = sub_5B3D8();

      if (v14 >> 62)
      {
        break;
      }

      if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_22;
      }

LABEL_18:

      ++v6;
      if (v3 == v2)
      {
        goto LABEL_33;
      }
    }

    if (!sub_5B678())
    {
      goto LABEL_18;
    }

LABEL_22:
    if ((v14 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
      {
        v15 = *(v14 + 32);
        goto LABEL_25;
      }

      __break(1u);
LABEL_45:
      v7 = sub_5B678();
      goto LABEL_5;
    }

    v15 = sub_5B5B8();
LABEL_25:
    v16 = v15;

    v17 = [v16 localizedPhrase];

    v18 = sub_5B348();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_585F4(0, *(v41 + 2) + 1, 1, v41);
    }

    v22 = *(v41 + 2);
    v21 = *(v41 + 3);
    if (v22 >= v21 >> 1)
    {
      v41 = sub_585F4((v21 > 1), v22 + 1, 1, v41);
    }

    *(v41 + 2) = v22 + 1;
    v23 = &v41[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    v40[12] = v41;
  }

  while (v3 != v2);
LABEL_33:

  v24 = sub_5A628();
  v26 = sub_35C44(v24, v25);
  v28 = v27;

  v40[13] = v26;
  v40[14] = v28;
  v29 = v40[4];
  if (v28)
  {
    v30 = sub_5B94(&qword_728F0, &qword_5C8F0);
    v31 = swift_task_alloc();
    v40[15] = v31;
    *(v31 + 16) = v41;
    *(v31 + 24) = v29;
    v32 = sub_5B94(&qword_72500, &unk_5C640);
    v33 = swift_task_alloc();
    v40[16] = v33;
    *v33 = v40;
    v33[1] = sub_1F5DC;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v40 + 2, v30, v32, 0, 0, &unk_5C900, v31, v30);
  }

  else
  {

    v34 = sub_5A628();
    v36 = v35;
    sub_294CC();
    swift_allocError();
    *v37 = v34;
    v37[1] = v36;
    swift_willThrow();

    v38 = v40[1];

    return v38();
  }
}

uint64_t sub_1F5DC()
{

  return _swift_task_switch(sub_1F710, 0, 0);
}

uint64_t sub_1F710()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[17] = v2;
  sub_5CBC((v1 + 24), *(v1 + 48));
  if (sub_5A238())
  {
    v3 = v0[14];
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_1F910;
    v5 = v0[13];
    v6 = v0[3];

    return sub_1FCF4(v6, v5, v3, v2);
  }

  else
  {
    sub_5CBC((v0[4] + 24), *(v0[4] + 48));
    v8 = sub_5A228();
    v9 = v0[14];
    if (v8)
    {
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_1FA5C;
      v11 = v0[13];
      v12 = v0[3];

      return sub_205D4(v12, v11, v9, v2);
    }

    else
    {
      v13 = swift_task_alloc();
      v0[20] = v13;
      *v13 = v0;
      v13[1] = sub_1FBA8;
      v14 = v0[13];
      v15 = v0[3];

      return sub_2185C(v15, v14, v9, v2);
    }
  }
}

uint64_t sub_1F910()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1FA5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1FBA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  sub_5B94(&unk_72440, &unk_5C460);
  v5[34] = swift_task_alloc();
  v6 = sub_5A488();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v7 = sub_5A648();
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v8 = sub_5A588();
  v5[41] = v8;
  v5[42] = *(v8 - 8);
  v5[43] = swift_task_alloc();

  return _swift_task_switch(sub_1FEAC, 0, 0);
}

uint64_t sub_1FEAC()
{
  v1 = v0[32];
  v2 = v1[2];
  if (v2)
  {
    v4 = v1[4];
    v3 = v1[5];

    if (v2 == 1)
    {
      v14 = 0;
      v5 = 0xE000000000000000;
    }

    else
    {
      v5 = v1[7];
      v14 = v1[6];
    }

    v2 = v4;
  }

  else
  {
    v14 = 0;
    v3 = 0xE000000000000000;
    v5 = 0xE000000000000000;
  }

  v6 = v0[39];
  v15 = v0[38];
  v16 = v0[40];
  v7 = v0[30];
  v8 = v0[31];
  sub_5CBC((*(v0[33] + 264) + 16), *(*(v0[33] + 264) + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C780;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7268507473726966;
  *(inited + 88) = 0xEB00000000657361;
  *(inited + 96) = v2;
  *(inited + 104) = v3;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "secondPhrase");
  *(inited + 168) = &type metadata for String;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v14;
  *(inited + 152) = v5;

  v10 = sub_3802C(inited);
  v0[44] = v10;
  swift_setDeallocating();
  sub_5B94(&unk_72450, &unk_5C470);
  swift_arrayDestroy();
  (*(v6 + 104))(v16, enum case for BehaviorAfterSpeaking.listen(_:), v15);
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v11[1] = sub_20110;
  v12 = v0[43];

  return sub_3468C(v12, 0xD000000000000033, 0x800000000005EC00, v10);
}

uint64_t sub_20110()
{
  v2 = *(*v1 + 320);
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 304);
  *(*v1 + 368) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_202A4;
  }

  else
  {
    v5 = sub_20334;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_202A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20334(uint64_t a1)
{
  v2 = *(v1 + 344);
  v14 = *(v1 + 336);
  v15 = *(v1 + 328);
  v4 = *(v1 + 288);
  v3 = *(v1 + 296);
  v5 = *(v1 + 272);
  v16 = *(v1 + 280);
  v6 = *(v1 + 264);
  v7 = *(v1 + 232);
  sub_5A478();
  sub_5B94(&qword_72518, &unk_5C650);
  v8 = *(sub_5AA98() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5C390;
  sub_24F58(v10 + v9);
  sub_5A458();
  sub_5CBC((v6 + 24), *(v6 + 48));
  sub_5A218();
  sub_5A558(1);
  (*(v4 + 16))(v5, v3, v16);
  (*(v4 + 56))(v5, 0, 1, v16);
  v11 = sub_5A908();
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0;
  *(v1 + 192) = 0u;
  v7[3] = v11;
  v7[4] = &protocol witness table for AceOutput;
  sub_5F2C(v7);
  sub_5A3D8();
  sub_5D4C(v1 + 192, &qword_721D8, &qword_5C480);
  sub_5D4C(v5, &unk_72440, &unk_5C460);
  (*(v4 + 8))(v3, v16);
  (*(v14 + 8))(v2, v15);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_205D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  sub_5B94(&unk_72440, &unk_5C460);
  v5[29] = swift_task_alloc();
  sub_5A298();
  v5[30] = swift_task_alloc();
  v6 = sub_5A708();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  v7 = sub_5A048();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  v8 = sub_5A3B8();
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();
  v9 = sub_5A5B8();
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  v10 = sub_5A488();
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();
  v11 = sub_5A588();
  v5[46] = v11;
  v5[47] = *(v11 - 8);
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_208CC, 0, 0);
}

uint64_t sub_208CC()
{
  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_2096C;
  v2 = v0[48];
  v3 = v0[25];
  v4 = v0[26];

  return sub_302E4(v2, v3, v4);
}

uint64_t sub_2096C()
{
  v2 = *v1;
  *(v2 + 400) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_29B6C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 408) = v3;
    *v3 = v2;
    v3[1] = sub_20AD8;

    return sub_231FC();
  }
}

uint64_t sub_20AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[52] = a1;
  v6[53] = a2;
  v6[54] = a3;
  v6[55] = a4;
  v6[56] = v4;

  if (v4)
  {
    v7 = sub_29B70;
  }

  else
  {
    v7 = sub_20BF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_20BF4()
{
  v1 = *(*(v0 + 216) + 16);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_20C90;

  return sub_237E4(v1);
}

uint64_t sub_20C90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {

    v5 = sub_29B74;
  }

  else
  {
    v5 = sub_20DBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_20DBC(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v5 = v1[52];
  v4 = v1[53];
  v6 = v1[28];
  v1[61] = sub_5A628();
  v1[62] = v7;

  sub_5A478();
  sub_5B94(&qword_72518, &unk_5C650);
  v8 = *(sub_5AA98() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5C390;
  sub_25964(v5, v4, v3, v2, v10 + v9);
  sub_5A458();

  v11 = *sub_5CBC((v6 + 272), *(v6 + 296));

  v12 = swift_task_alloc();
  v1[63] = v12;
  *v12 = v1;
  v12[1] = sub_20FAC;
  v13 = v1[25];
  v14 = v1[26];

  return sub_2FF00(0, v11, v13, v14);
}

uint64_t sub_20FAC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {

    v4 = sub_29B7C;
  }

  else
  {
    v4 = sub_21114;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_21114()
{
  v1 = sub_5A578();
  if (*(v1 + 16))
  {
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);

    sub_5A5A8();
    (*(v3 + 8))(v2, v4);
    v8 = sub_5A3A8();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v13 = *(v0 + 440);
  v14 = *(v0 + 424);
  v15 = *(v0 + 416);
  *(v0 + 104) = *(v0 + 216);
  *(v0 + 112) = v15;
  *(v0 + 120) = v14;
  *(v0 + 136) = v13;
  *(v0 + 144) = *(v0 + 464);
  *(v0 + 160) = v8;
  *(v0 + 168) = v10;
  *(v0 + 176) = v12;
  *(v0 + 184) = v11;
  v16 = *(v0 + 136);
  v17 = *(v0 + 152);
  v18 = *(v0 + 168);
  *(v0 + 96) = v11;
  *(v0 + 64) = v17;
  *(v0 + 80) = v18;
  v19 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v16;
  *(v0 + 16) = v19;

  v20 = swift_task_alloc();
  *(v0 + 528) = v20;
  *v20 = v0;
  v20[1] = sub_212D0;
  v21 = *(v0 + 288);

  return sub_2AE90(v21);
}

uint64_t sub_212D0()
{
  v2 = *v1;
  *(v2 + 536) = v0;

  sub_2942C((v2 + 104));
  if (v0)
  {
    v3 = sub_29B80;
  }

  else
  {
    v3 = sub_213EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_213EC()
{
  v1 = *(v0 + 536);
  sub_29850(&qword_728D8, &type metadata accessor for Response, &protocol conformance descriptor for Response);
  v2 = sub_59FB8();
  if (v1)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 512);
    v13 = *(v0 + 352);
    v22 = *(v0 + 344);
    v23 = *(v0 + 360);
    v14 = *(v0 + 232);
    v15 = v2;
    v16 = v3;
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    isa = sub_59E08().super.isa;
    sub_293D8(v15, v16);
    [v12 setVisual:isa];

    sub_5A268();
    sub_5A6D8();
    sub_5A558(1);
    sub_5A6F8();
    (*(v13 + 16))(v14, v23, v22);
    (*(v13 + 56))(v14, 0, 1, v22);
    sub_5A6E8();
    sub_5A4A8();
    swift_allocObject();
    *(v0 + 544) = sub_5A498();
    v24 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:));
    v18 = swift_task_alloc();
    *(v0 + 552) = v18;
    *v18 = v0;
    v18[1] = sub_21728;
    v19 = *(v0 + 512);
    v20 = *(v0 + 264);
    v21 = *(v0 + 192);

    return v24(v21, v19, v20);
  }
}

uint64_t sub_21728()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_29B78;
  }

  else
  {
    v2 = sub_29B84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2185C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  sub_5B94(&unk_72440, &unk_5C460);
  v5[29] = swift_task_alloc();
  sub_5A298();
  v5[30] = swift_task_alloc();
  v6 = sub_5A708();
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  v7 = sub_5A048();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  v8 = sub_5A3B8();
  v5[37] = v8;
  v5[38] = *(v8 - 8);
  v5[39] = swift_task_alloc();
  v9 = sub_5A5B8();
  v5[40] = v9;
  v5[41] = *(v9 - 8);
  v5[42] = swift_task_alloc();
  v10 = sub_5A488();
  v5[43] = v10;
  v5[44] = *(v10 - 8);
  v5[45] = swift_task_alloc();
  v11 = sub_5A588();
  v5[46] = v11;
  v5[47] = *(v11 - 8);
  v5[48] = swift_task_alloc();

  return _swift_task_switch(sub_21B54, 0, 0);
}

uint64_t sub_21B54()
{
  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_21BF4;
  v2 = v0[48];
  v3 = v0[25];
  v4 = v0[26];

  return sub_302E4(v2, v3, v4);
}

uint64_t sub_21BF4()
{
  v2 = *v1;
  *(v2 + 400) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_21E7C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 408) = v3;
    *v3 = v2;
    v3[1] = sub_21D60;

    return sub_231FC();
  }
}

uint64_t sub_21D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[52] = a1;
  v6[53] = a2;
  v6[54] = a3;
  v6[55] = a4;
  v6[56] = v4;

  if (v4)
  {
    v7 = sub_22EFC;
  }

  else
  {
    v7 = sub_21F48;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_21E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21F48()
{
  v1 = *(*(v0 + 216) + 16);
  v2 = swift_task_alloc();
  *(v0 + 456) = v2;
  *v2 = v0;
  v2[1] = sub_21FE4;

  return sub_237E4(v1);
}

uint64_t sub_21FE4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {

    v5 = sub_22FE0;
  }

  else
  {
    v5 = sub_22110;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_22110(uint64_t a1)
{
  v3 = v1[54];
  v2 = v1[55];
  v5 = v1[52];
  v4 = v1[53];
  v6 = v1[28];
  v1[61] = sub_5A628();
  v1[62] = v7;

  sub_5A478();
  sub_5B94(&qword_72518, &unk_5C650);
  v8 = *(sub_5AA98() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_5C390;
  sub_25964(v5, v4, v3, v2, v10 + v9);
  sub_5A458();

  v11 = *sub_5CBC((v6 + 272), *(v6 + 296));

  v12 = swift_task_alloc();
  v1[63] = v12;
  *v12 = v1;
  v12[1] = sub_22300;
  v13 = v1[25];
  v14 = v1[26];

  return sub_2FF00(0, v11, v13, v14);
}

uint64_t sub_22300(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {

    v4 = sub_22624;
  }

  else
  {
    v4 = sub_22468;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_22468()
{
  v1 = sub_5A578();
  if (*(v1 + 16))
  {
    v3 = *(v0 + 328);
    v2 = *(v0 + 336);
    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    (*(v3 + 16))(v2, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v4);

    sub_5A5A8();
    (*(v3 + 8))(v2, v4);
    v8 = sub_5A3A8();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v13 = *(v0 + 440);
  v14 = *(v0 + 424);
  v15 = *(v0 + 416);
  *(v0 + 104) = *(v0 + 216);
  *(v0 + 112) = v15;
  *(v0 + 120) = v14;
  *(v0 + 136) = v13;
  *(v0 + 144) = *(v0 + 464);
  *(v0 + 160) = v8;
  *(v0 + 168) = v10;
  *(v0 + 176) = v12;
  *(v0 + 184) = v11;
  v16 = *(v0 + 136);
  v17 = *(v0 + 152);
  v18 = *(v0 + 168);
  *(v0 + 96) = v11;
  *(v0 + 64) = v17;
  *(v0 + 80) = v18;
  v19 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 120);
  *(v0 + 48) = v16;
  *(v0 + 16) = v19;

  v20 = swift_task_alloc();
  *(v0 + 528) = v20;
  *v20 = v0;
  v20[1] = sub_22724;
  v21 = *(v0 + 288);

  return sub_29B8C(v21);
}

uint64_t sub_22624()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  (*(v0[44] + 8))(v0[45], v0[43]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22724()
{
  v2 = *v1;
  *(v2 + 536) = v0;

  sub_29384((v2 + 104));
  if (v0)
  {
    v3 = sub_22B7C;
  }

  else
  {
    v3 = sub_22840;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_22840()
{
  v1 = *(v0 + 536);
  sub_29850(&qword_728D8, &type metadata accessor for Response, &protocol conformance descriptor for Response);
  v2 = sub_59FB8();
  if (v1)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v8 = *(v0 + 344);
    v9 = *(v0 + 352);

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 512);
    v13 = *(v0 + 352);
    v22 = *(v0 + 344);
    v23 = *(v0 + 360);
    v14 = *(v0 + 232);
    v15 = v2;
    v16 = v3;
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    isa = sub_59E08().super.isa;
    sub_293D8(v15, v16);
    [v12 setVisual:isa];

    sub_5A268();
    sub_5A6D8();
    sub_5A558(1);
    sub_5A6F8();
    (*(v13 + 16))(v14, v23, v22);
    (*(v13 + 56))(v14, 0, 1, v22);
    sub_5A6E8();
    sub_5A4A8();
    swift_allocObject();
    *(v0 + 544) = sub_5A498();
    v24 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(patternExecutionResult:outputGenerationManifest:));
    v18 = swift_task_alloc();
    *(v0 + 552) = v18;
    *v18 = v0;
    v18[1] = sub_22C8C;
    v19 = *(v0 + 512);
    v20 = *(v0 + 264);
    v21 = *(v0 + 192);

    return v24(v21, v19, v20);
  }
}

uint64_t sub_22B7C()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22C8C()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_230C4;
  }

  else
  {
    v2 = sub_22DC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_22DC0()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22EFC()
{
  (*(v0[47] + 8))(v0[48], v0[46]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FE0()
{
  (*(v0[47] + 8))(v0[48], v0[46]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230C4()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = *(v0 + 352);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v9 = *(v0 + 248);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_231FC()
{
  v1[2] = v0;
  v2 = sub_5A3B8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_5A5B8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_5A588();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_23374, 0, 0);
}

uint64_t sub_23374()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23410;
  v2 = *(v0 + 88);

  return sub_30714(v2);
}

uint64_t sub_23410()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_23768;
  }

  else
  {
    v2 = sub_23524;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23524()
{
  v1 = *(sub_5A578() + 16);

  if (v1 != 2)
  {
    v21 = 0;
    v17 = 0;
    v22 = 0xE000000000000000;
    v19 = 0xE000000000000000;
    goto LABEL_6;
  }

  result = sub_5A578();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v25 = *(v4 + 16);
  v25(v3, result + v9, v5);

  sub_5A5A8();
  v10 = *(v4 + 8);
  v10(v3, v5);
  v11 = sub_5A3A8();
  v26 = v12;
  v24 = *(v8 + 8);
  v24(v6, v7);
  result = sub_5A578();
  if (*(result + 16) < 2uLL)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  v27 = v11;
  v16 = v0[3];
  v25(v13, result + v9 + *(v0[7] + 72), v14);

  sub_5A5A8();
  v10(v13, v14);
  v17 = sub_5A3A8();
  v19 = v18;
  v20 = v16;
  v21 = v27;
  v24(v15, v20);
  v22 = v26;
LABEL_6:
  (*(v0[10] + 8))(v0[11], v0[9]);

  v23 = v0[1];

  return v23(v21, v22, v17, v19);
}

uint64_t sub_23768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_5A3B8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_5A5B8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_5A588();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_2395C, 0, 0);
}

uint64_t sub_2395C()
{
  v1 = v0[2];
  if (v1 < 4)
  {

    v6 = v0[1];

    return v6(0, 0);
  }

  else
  {
    v2 = (v1 - 3);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_23A78;
    v4 = v0[12];

    return sub_30B28(v4, v2);
  }
}

uint64_t sub_23A78()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23D18;
  }

  else
  {
    v2 = sub_23B8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_23B8C(uint64_t a1)
{
  v2 = sub_5A578();
  v4 = v1[11];
  v3 = v1[12];
  v5 = v1[10];
  if (*(v2 + 16))
  {
    v7 = v1[8];
    v6 = v1[9];
    v9 = v1[6];
    v8 = v1[7];
    v10 = v1[5];
    v16 = v1[4];
    (*(v7 + 16))(v6, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);

    sub_5A5A8();
    (*(v7 + 8))(v6, v8);
    v11 = sub_5A3A8();
    v13 = v12;
    (*(v10 + 8))(v9, v16);
    (*(v4 + 8))(v3, v5);
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v11 = 0;
    v13 = 0;
  }

  v14 = v1[1];

  return v14(v11, v13);
}

uint64_t sub_23D18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_5A3B8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_5A5B8();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_5B94(&qword_728F0, &qword_5C8F0);
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = sub_5A588();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  sub_5B94(&qword_73CA0, &qword_5C910);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_5B94(&qword_728F8, &qword_5C918);
  v4[28] = swift_task_alloc();
  v9 = sub_5B94(&qword_72900, &qword_5C920);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_2405C, 0, 0);
}

uint64_t sub_2405C()
{
  v1 = v0[12];
  v34 = *(v1 + 16);
  if (v34)
  {
    v30 = v0 + 2;
    v2 = 0;
    v33 = sub_5B468();
    v3 = *(v33 - 8);
    v32 = *(v3 + 56);
    v31 = (v3 + 48);
    v29 = (v3 + 8);
    v4 = (v1 + 40);
    v5 = &qword_73CA0;
    do
    {
      v9 = v0[26];
      v8 = v0[27];
      v10 = v0[13];
      v11 = v0;
      v12 = v5;
      v13 = v2;
      v14 = *(v4 - 1);
      v15 = *v4;
      v32(v8, 1, 1, v33);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v10;
      v16[5] = v14;
      v16[6] = v15;
      v17 = v13;
      v5 = v12;
      v0 = v11;
      v16[7] = v17;
      sub_1AE38(v8, v9, v5, &qword_5C910);
      LODWORD(v9) = (*v31)(v9, 1, v33);

      v18 = v11[26];
      if (v9 == 1)
      {
        sub_5D4C(v11[26], v5, &qword_5C910);
      }

      else
      {
        sub_5B458();
        (*v29)(v18, v33);
      }

      if (v16[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_5B418();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = *v11[11];
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_5C930;
      *(v23 + 24) = v16;

      if (v21 | v19)
      {
        v6 = v30;
        *v30 = 0;
        v30[1] = 0;
        v11[4] = v19;
        v11[5] = v21;
      }

      else
      {
        v6 = 0;
      }

      v2 = v17 + 1;
      v4 += 2;
      v7 = v11[27];
      v11[6] = 1;
      v11[7] = v6;
      v11[8] = v22;
      swift_task_create();

      sub_5D4C(v7, v5, &qword_5C910);
    }

    while (v34 != v2);
  }

  v24 = sub_38458(_swiftEmptyArrayStorage);
  sub_5B428();
  v0[32] = v24;
  v0[33] = v24;
  v25 = swift_task_alloc();
  v0[34] = v25;
  *v25 = v0;
  v25[1] = sub_243EC;
  v26 = v0[28];
  v27 = v0[29];

  return TaskGroup.Iterator.next(isolation:)(v26, 0, 0, v27);
}

uint64_t sub_243EC()
{

  return _swift_task_switch(sub_244E8, 0, 0);
}

uint64_t sub_244E8()
{
  v58 = v0;
  v1 = *(v0 + 224);
  if ((*(*(v0 + 168) + 48))(v1, 1, *(v0 + 160)) == 1)
  {
    v2 = *(v0 + 264);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    v3 = *(v2 + 16);
    v4 = _swiftEmptyArrayStorage;
    if (!v3 || (v5 = *(v0 + 264), v4 = sub_28560(v3, 0), v6 = sub_29078(&v57, v4 + 4, v3, v5), v7 = v57, , v8 = sub_297E0(v7), v6 == v3))
    {
      v57 = v4;
      sub_285F0(&v57);
      v28 = v57;
      v29 = v57[2];
      if (v29)
      {
        v56 = v0;
        v57 = _swiftEmptyArrayStorage;
        sub_37758(0, v29, 0);
        v30 = 0;
        v31 = v57;
        v32 = v57[2];
        v33 = 2 * v32;
        do
        {
          v34 = v28;
          v36 = v28[v30 + 5];
          v35 = v28[v30 + 6];
          v57 = v31;
          v37 = v31[3];
          v38 = v32 + 1;

          if (v32 >= v37 >> 1)
          {
            sub_37758((v37 > 1), v38, 1);
            v31 = v57;
          }

          v31[2] = v38;
          v39 = &v31[v33];
          v39[4] = v36;
          v39[5] = v35;
          v33 += 2;
          v30 += 3;
          ++v32;
          --v29;
          v28 = v34;
        }

        while (v29);
        v0 = v56;
      }

      else
      {

        v31 = _swiftEmptyArrayStorage;
      }

      **(v0 + 80) = v31;

      v46 = *(v0 + 8);

      return v46();
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = *(v0 + 176);
  sub_298FC(v1, v9, &qword_728F0, &qword_5C8F0);
  v10 = sub_5B94(&qword_72908, &qword_5C948);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_5D4C(*(v0 + 176), &qword_728F0, &qword_5C8F0);
    goto LABEL_32;
  }

  v11 = *(v0 + 176);
  v4 = *v11;
  (*(*(v0 + 192) + 32))(*(v0 + 200), &v11[*(v10 + 48)], *(v0 + 184));
  v12 = sub_5A578();
  if (!*(v12 + 16))
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v40 = *(v0 + 256);
LABEL_31:
    *(v0 + 256) = v40;
LABEL_32:
    v54 = swift_task_alloc();
    *(v0 + 272) = v54;
    *v54 = v0;
    v54[1] = sub_243EC;
    v48 = *(v0 + 224);
    v51 = *(v0 + 232);
    v49 = 0;
    v50 = 0;

    return TaskGroup.Iterator.next(isolation:)(v48, v49, v50, v51);
  }

  v13 = *(v0 + 256);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v7 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  (*(v15 + 16))(v14, v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v16);

  sub_5A5A8();
  (*(v15 + 8))(v14, v16);
  v6 = sub_5A3A8();
  v5 = v19;
  (*(v18 + 8))(v7, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v13;
  v8 = sub_37334(v4);
  v22 = *(v13 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    goto LABEL_36;
  }

  LOBYTE(v7) = v21;
  if (*(*(v0 + 256) + 24) >= v25)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_37:
      v55 = v8;
      sub_419B0();
      v8 = v55;
    }

LABEL_22:
    v41 = *(v0 + 72);
    v42 = *(v0 + 200);
    v43 = *(v0 + 184);
    v44 = (*(v0 + 192) + 8);
    if (v7)
    {
      v45 = (v41[7] + 16 * v8);
      *v45 = v6;
      v45[1] = v5;

      (*v44)(v42, v43);
    }

    else
    {
      v41[(v8 >> 6) + 8] |= 1 << v8;
      *(v41[6] + 8 * v8) = v4;
      v47 = (v41[7] + 16 * v8);
      *v47 = v6;
      v47[1] = v5;
      v48 = (*v44)(v42, v43);
      v52 = v41[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(v48, v49, v50, v51);
      }

      v41[2] = v53;
    }

    v40 = vdupq_n_s64(v41);
    goto LABEL_31;
  }

  sub_41588(v25, isUniquelyReferenced_nonNull_native);
  v8 = sub_37334(v4);
  if ((v7 & 1) == (v26 & 1))
  {
    goto LABEL_22;
  }

  return sub_5B7D8();
}

uint64_t sub_24B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_5A588();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_24BFC, 0, 0);
}

uint64_t sub_24BFC()
{
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_24C9C;
  v2 = v0[9];
  v3 = v0[4];
  v4 = v0[5];

  return sub_30FBC(v2, v3, v4);
}

uint64_t sub_24C9C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_24EA0;
  }

  else
  {
    v2 = sub_24DB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_24DB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[2];
  v6 = sub_5B94(&qword_72908, &qword_5C948);
  v7 = *(v6 + 48);
  *v5 = v4;
  (*(v2 + 32))(&v5[v7], v1, v3);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24EA0()
{
  v1 = *(v0 + 16);

  v2 = sub_5B94(&qword_72908, &qword_5C948);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F58@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v58 = sub_5A938();
  v57 = *(v58 - 8);
  v1 = __chkstk_darwin(v58);
  v56 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v50 - v3;
  v5 = sub_5A998();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v50 - v9;
  v68 = sub_5AA18();
  v61 = *(v68 - 8);
  v11 = __chkstk_darwin(v68);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v67 = sub_5AAF8();
  v60 = *(v67 - 8);
  v15 = __chkstk_darwin(v67);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v19 = sub_5B94(&qword_724B0, &unk_5C610);
  __chkstk_darwin(v19 - 8);
  v21 = &v50 - v20;
  v22 = sub_5AA98();
  v64 = *(v22 - 8);
  v65 = v22;
  __chkstk_darwin(v22);
  v59 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5AA88();
  sub_5ADF8();
  swift_allocObject();
  v24 = sub_5ADE8();
  sub_5B94(&qword_72460, &unk_5C5E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_5C4A0;
  *(v25 + 32) = v24;

  sub_5AC38();
  v26 = sub_5AC48();
  (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  sub_5AC28();

  sub_5D4C(v21, &qword_724B0, &unk_5C610);
  v27 = v18;
  sub_5AAE8();
  v28 = v14;
  sub_5AA08();
  v29 = v10;
  sub_5A988();
  sub_5AB78();
  v30 = v57;
  v31 = *(v57 + 16);
  v52 = v4;
  v31(v56, v4, v58);
  v53 = v27;
  sub_5AAD8();
  v32 = v60;
  (*(v60 + 16))(v54, v27, v67);
  v33 = v28;
  v51 = v28;
  sub_5A9E8();
  v34 = v61;
  (*(v61 + 16))(v55, v33, v68);
  sub_5A978();
  v36 = v62;
  v35 = v63;
  (*(v62 + 16))(v8, v29, v63);
  v37 = v59;
  sub_5AA78();

  (*(v30 + 8))(v52, v58);
  (*(v36 + 8))(v29, v35);
  (*(v34 + 8))(v51, v68);
  (*(v32 + 8))(v53, v67);
  v38 = v65;
  v39 = v64;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v40 = sub_5B228();
  sub_5B44(v40, qword_763B8);
  v41 = sub_5B218();
  v42 = sub_5B4B8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v43 = 136315394;
    *(v43 + 4) = sub_2DC10(0xD000000000000029, 0x800000000005EBD0, v70);
    *(v43 + 12) = 2080;
    sub_5AB48();
    swift_beginAccess();
    v69[3] = v38;
    v69[4] = sub_29850(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    v44 = sub_5F2C(v69);
    (*(v39 + 16))(v44, v37, v38);
    v45 = sub_5AB38();
    v47 = v46;
    sub_5D00(v69);
    v48 = sub_2DC10(v45, v47, v70);

    *(v43 + 14) = v48;
    _os_log_impl(&dword_0, v41, v42, "%s paraphrase systemDialogAct: %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  (*(v39 + 16))(v66, v37, v38);
  return (*(v39 + 8))(v37, v38);
}

uint64_t sub_25964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v9 = sub_5AAC8();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v59 - v13;
  v15 = sub_5AA18();
  v66 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v70 = v59 - v19;
  v67 = sub_5AA58();
  v69 = *(v67 - 8);
  v20 = __chkstk_darwin(v67);
  v68 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = v59 - v23;
  __chkstk_darwin(v22);
  v26 = v59 - v25;
  v27 = sub_5AA98();
  v72 = *(v27 - 8);
  v73 = v27;
  __chkstk_darwin(v27);
  v71 = v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5AA88();
  v29 = sub_291E8(a1, a2, 0x747065636361, 0xE600000000000000);
  v30 = sub_291E8(a3, a4, 0x7463656A6572, 0xE600000000000000);
  sub_2627C(v29, v26);
  v62 = v12;
  v61 = v14;
  v63 = v15;
  sub_5AA08();
  v31 = *(v69 + 16);
  v32 = v67;
  v31(v24, v26, v67);
  sub_5A9D8();
  sub_2627C(v30, v68);
  v60 = v18;
  sub_5AA08();
  v31(v24, v68, v32);
  v59[1] = v30;
  sub_5A9D8();
  v33 = v61;
  sub_5AAB8();
  sub_5B94(&unk_73CC0, &unk_5C8E0);
  v34 = v66;
  v35 = *(v66 + 72);
  v36 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_5C2D0;
  v38 = v37 + v36;
  v39 = *(v34 + 16);
  v40 = v63;
  v39(v38, v70, v63);
  v39(v38 + v35, v60, v40);
  sub_5AAA8();
  v42 = v64;
  v41 = v65;
  (*(v64 + 16))(v62, v33, v65);
  v43 = v71;
  sub_5AA68();

  (*(v42 + 8))(v33, v41);
  v44 = *(v34 + 8);
  v44(v60, v40);
  v45 = *(v69 + 8);
  v46 = v67;
  v45(v68, v67);
  v44(v70, v40);
  v45(v26, v46);
  v48 = v72;
  v47 = v73;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v49 = sub_5B228();
  sub_5B44(v49, qword_763B8);
  v50 = sub_5B218();
  v51 = sub_5B4B8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v52 = 136315394;
    *(v52 + 4) = sub_2DC10(0xD00000000000003ELL, 0x800000000005EB70, v76);
    *(v52 + 12) = 2080;
    sub_5AB48();
    swift_beginAccess();
    v75[3] = v47;
    v75[4] = sub_29850(&qword_724A8, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    v53 = sub_5F2C(v75);
    (*(v48 + 16))(v53, v43, v47);
    v54 = sub_5AB38();
    v56 = v55;
    sub_5D00(v75);
    v57 = sub_2DC10(v54, v56, v76);

    *(v52 + 14) = v57;
    _os_log_impl(&dword_0, v50, v51, "%s paraphrase systemDialogAct: %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  (*(v48 + 16))(v74, v43, v47);
  return (*(v48 + 8))(v43, v47);
}

uint64_t sub_2627C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_5A938();
  __chkstk_darwin(v5 - 8);
  v6 = sub_5B94(&qword_724B0, &unk_5C610);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_5B94(&qword_72460, &unk_5C5E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_5C4A0;
  *(v9 + 32) = a1;

  sub_5AC38();
  v10 = sub_5AC48();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_5AC28();

  sub_5D4C(v8, &qword_724B0, &unk_5C610);
  sub_5AA48();
  sub_5AB78();
  if (v2)
  {
    v11 = sub_5AA58();
    (*(*(v11 - 8) + 8))(a2, v11);
  }

  else
  {
    sub_5AA38();
  }
}

uint64_t sub_2647C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a3;
  v109 = a2;
  v111 = a4;
  v103 = sub_5B128();
  v88 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_5AB28();
  v104 = *(v110 - 8);
  __chkstk_darwin(v110);
  v112 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5A938();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_5AA58();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5A858();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5A7D8();
  v105 = *(v13 - 8);
  v106 = v13;
  __chkstk_darwin(v13);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_5A8E8();
  v99 = *(v16 - 8);
  v100 = v16;
  __chkstk_darwin(v16);
  v98 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_5B94(&qword_728D0, &unk_5C8D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v87 - v19;
  v21 = sub_5A968();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v96 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v87 - v25;
  v27 = sub_5AA18();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v89 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v87 - v31;
  v97 = a1;
  sub_5A8D8();
  sub_5A948();
  v33 = *(v22 + 8);
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v33(v34, v21);
  if ((*(v28 + 48))(v20, 1, v35) == 1)
  {
    sub_5D4C(v20, &qword_728D0, &unk_5C8D0);
LABEL_3:
    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v37 = sub_5B228();
    sub_5B44(v37, qword_763B8);
    v38 = sub_5B218();
    v39 = sub_5B4C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v113 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_2DC10(0xD000000000000028, 0x800000000005EB20, &v113);
      _os_log_impl(&dword_0, v38, v39, "%s could not resolve App Shortcut Ambiguous First Run response from USO parse", v40, 0xCu);
      sub_5D00(v41);
    }

LABEL_8:
    v42 = sub_5A318();
    return (*(*(v42 - 8) + 56))(v111, 1, 1, v42);
  }

  v87 = v33;
  (*(v28 + 32))(v32, v20, v35);
  v44 = v109;
  sub_5A2F8();
  sub_5A7C8();
  (*(v105 + 1))(v15, v106);
  v46 = v107;
  v45 = v108;
  v47 = v44;
  v48 = v32;
  if ((*(v107 + 88))(v12, v108) == enum case for Parse.uso(_:))
  {
    (*(v46 + 96))(v12, v45);
    v49 = v98;
    v50 = v99;
    v51 = v12;
    v52 = v100;
    (*(v99 + 32))(v98, v51, v100);
    v53 = sub_5A8A8();
    (*(v50 + 8))(v49, v52);
  }

  else
  {
    (*(v46 + 8))(v12, v45);
    v53 = 0;
  }

  if (sub_5A9A8())
  {
    (*(v36 + 8))(v48, v35);
    v54 = sub_5A318();
    v55 = *(v54 - 8);
    v56 = *(v55 + 16);
    if (v53)
    {
      v57 = v47;
    }

    else
    {
      v57 = v101;
    }

LABEL_20:
    v58 = v111;
    v56(v111, v57, v54);
    return (*(v55 + 56))(v58, 0, 1, v54);
  }

  if (sub_5A9B8())
  {
    (*(v36 + 8))(v48, v35);
    v54 = sub_5A318();
    v55 = *(v54 - 8);
    v56 = *(v55 + 16);
    if (v53)
    {
      v57 = v101;
    }

    else
    {
      v57 = v47;
    }

    goto LABEL_20;
  }

  v59 = v96;
  sub_5A8D8();
  v60 = sub_5A958();
  v87(v59, v21);
  if (!*(v60 + 16))
  {

    if (qword_71A58 != -1)
    {
LABEL_54:
      swift_once();
    }

    v79 = sub_5B228();
    sub_5B44(v79, qword_763B8);
    v80 = sub_5B218();
    v81 = sub_5B4B8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_0, v80, v81, ".appShortcutCollisionWithEnablement confirmation uso parse does not have identifiers", v82, 2u);
    }

    (*(v36 + 8))(v48, v35);
    goto LABEL_8;
  }

  v61 = v89;
  (*(v36 + 16))(v89, v60 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v35);

  v62 = v90;
  sub_5A9C8();
  v65 = *(v36 + 8);
  v64 = v36 + 8;
  v63 = v65;
  v65(v61, v35);
  v66 = v93;
  sub_5AA28();
  (*(v91 + 8))(v62, v92);
  v67 = sub_5A928();
  (*(v94 + 8))(v66, v95);
  v68 = *(v67 + 16);
  if (!v68)
  {

LABEL_44:
    v63(v48, v35);
    goto LABEL_3;
  }

  v100 = v63;
  LODWORD(v99) = v53;
  v105 = v48;
  v106 = v64;
  v69 = 0;
  v36 = 0x800000000005EB50;
  v70 = *(v104 + 80);
  v107 = v35;
  v108 = v67 + ((v70 + 32) & ~v70);
  v48 = (v88 + 8);
  v71 = (v104 + 8);
  while (1)
  {
    if (v69 >= *(v67 + 16))
    {
      __break(1u);
      goto LABEL_54;
    }

    (*(v104 + 16))(v112, v108 + *(v104 + 72) * v69, v110);
    v72 = v102;
    sub_5AB18();
    v73 = sub_5B118();
    v75 = v74;
    (*v48)(v72, v103);
    if (v73 == 0xD000000000000018 && 0x800000000005EB50 == v75)
    {
    }

    else
    {
      v35 = sub_5B7A8();

      if ((v35 & 1) == 0)
      {
        (*v71)(v112, v110);
        goto LABEL_25;
      }
    }

    if (sub_5AB08() == 0x747065636361 && v76 == 0xE600000000000000)
    {
      break;
    }

    v77 = sub_5B7A8();

    if (v77)
    {
      goto LABEL_46;
    }

    if (sub_5AB08() == 0x7463656A6572 && v78 == 0xE600000000000000)
    {

      (*v71)(v112, v110);
LABEL_50:
      v100(v105, v107);

      v54 = sub_5A318();
      v55 = *(v54 - 8);
      v56 = *(v55 + 16);
      if (v99)
      {
        v57 = v101;
      }

      else
      {
        v57 = v109;
      }

      goto LABEL_20;
    }

    v35 = sub_5B7A8();

    (*v71)(v112, v110);
    if (v35)
    {
      goto LABEL_50;
    }

LABEL_25:
    if (v68 == ++v69)
    {

      v35 = v107;
      v48 = v105;
      v63 = v100;
      goto LABEL_44;
    }
  }

LABEL_46:

  (*v71)(v112, v110);
  v100(v105, v107);
  if (v99)
  {
    v83 = v109;
  }

  else
  {
    v83 = v101;
  }

  v84 = sub_5A318();
  v85 = *(v84 - 8);
  v86 = v111;
  (*(v85 + 16))(v111, v83, v84);
  return (*(v85 + 56))(v86, 0, 1, v84);
}

char *sub_27338()
{
  sub_5D00(v0 + 3);
  sub_5D00(v0 + 8);
  sub_5D00(v0 + 13);
  sub_5D00(v0 + 18);
  sub_5D00(v0 + 23);
  sub_5D00(v0 + 28);

  sub_5D00(v0 + 34);
  v1 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutAction;
  v2 = sub_5A318();
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[v1], v2);
  v3(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_otherAction], v2);
  v4 = OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_appShortcutInvocation;
  v5 = sub_5A638();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_29964(&v0[OBJC_IVAR____TtC17CAMRootFlowPlugin25AppShortcutEnablementFlow_state]);
  return v0;
}

uint64_t sub_27458()
{
  sub_27338();

  return swift_deallocClassInstance();
}

uint64_t sub_274D8(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    result = sub_5A638();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AppShortcutEnablementFlow.State(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t *sub_27630(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    v12 = sub_5A318();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_277C0(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = sub_5A318();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_2787C(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_279D0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_5A318();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_5D4C(a1, &qword_71CA0, &unk_5C2B0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_27BAC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_5A318();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *sub_27D00(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_5A318();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = sub_5A318();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_5D4C(a1, &qword_71CA0, &unk_5C2B0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_27EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27F7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2800C(uint64_t a1)
{
  v2 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t sub_28080(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B94(&qword_71CA0, &unk_5C2B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t sub_280FC(uint64_t a1)
{
  result = sub_5A318();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_281FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_1D04C(a1);
}

uint64_t sub_28298(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppShortcutEnablementFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_282D4()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0xD000000000000025;
  }

  v2 = *v0;
  sub_5B5A8(22);

  v4._countAndFlagsBits = v2;
  v4._object = v1;
  sub_5B388(v4);
  return 0xD000000000000014;
}

uint64_t sub_28370(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_28468;

  return v6(a1);
}

uint64_t sub_28468()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_28560(uint64_t a1, uint64_t a2)
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

  sub_5B94(&qword_72918, &unk_5C960);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

Swift::Int sub_285F0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_291D4(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_5B788(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          *(v13 + 1) = *(v13 - 1);
          v13[4] = v13[1];
          *(v13 - 1) = v11;
          *v13 = v14;
          v13[1] = v15;
          v13 -= 3;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_5B94(&qword_72910, &qword_5C950);
      v7 = sub_5B3F8();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_2875C(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2875C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_28F60(v7);
      v7 = result;
    }

    v85 = v7 + 2;
    v86 = v7[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_28D24((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v14 = *v11;
      v13 = v11 + 6;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 3;
        v18 = (v9 < v12) ^ (v17 >= v16);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_28F74(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v38 = v7[2];
    v37 = v7[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_28F74((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v39;
    v40 = v7 + 4;
    v41 = &v7[2 * v38 + 4];
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = v7[4];
          v44 = v7[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[2 * v39];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[2 * v42];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[2 * v42 - 2];
        v81 = *v80;
        v82 = &v40[2 * v42];
        v83 = v82[1];
        sub_28D24((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > v7[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v7[2];
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove(&v40[2 * v42], v82 + 2, 16 * (v84 - 1 - v42));
        v7[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[2 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[2 * v39];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[2 * v42];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    v35 = *(v33 + 40);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_28D24(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 < *v16)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

char *sub_28F74(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&unk_73CF0, &qword_5C958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_29078(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      v11[1] = v22;
      v11[2] = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      v23 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v23)
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
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_291E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_5ABE8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5ADD8();
  swift_allocObject();
  sub_5ADC8();
  sub_5ADB8();

  sub_5ABB8();
  sub_5ABA8();
  (*(v5 + 8))(v7, v4);
  sub_5ADF8();
  swift_allocObject();
  v8 = sub_5ADE8();
  sub_5AE08();

  return v8;
}

uint64_t sub_293D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_29480()
{
  result = qword_728E0;
  if (!qword_728E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_728E0);
  }

  return result;
}

unint64_t sub_294CC()
{
  result = qword_728E8;
  if (!qword_728E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_728E8);
  }

  return result;
}

uint64_t sub_29520(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1BBF8;

  return sub_23D94(a1, a2, v7, v6);
}

uint64_t sub_295D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2961C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_5934;

  return sub_24B34(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_296F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5934;

  return sub_28370(a1, v4);
}

uint64_t sub_297EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_298FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5B94(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29964(uint64_t a1)
{
  v2 = type metadata accessor for AppShortcutEnablementFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_s17CAMRootFlowPlugin26AppShortcutEnablementErrorOwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for AppShortcutEnablementError(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

__n128 initializeWithTake for AppShortcutEnablementError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for AppShortcutEnablementError(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutEnablementError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AppShortcutEnablementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_29B20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_29B38(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_29B8C(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  sub_59F18();
  v2[30] = swift_task_alloc();
  v3 = sub_59FC8();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_59F38();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = sub_59FF8();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v6 = sub_59F98();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v7 = sub_59EF8();
  v2[43] = v7;
  v2[44] = *(v7 - 8);
  v2[45] = swift_task_alloc();
  v8 = sub_5A018();
  v2[46] = v8;
  v2[47] = *(v8 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v9 = sub_5A038();
  v2[52] = v9;
  v2[53] = *(v9 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v10 = sub_59F58();
  v2[56] = v10;
  v2[57] = *(v10 - 8);
  v2[58] = swift_task_alloc();
  sub_5B94(&qword_72920, &qword_5CA08);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  sub_5B94(&qword_72928, &qword_5CA10);
  v2[61] = swift_task_alloc();
  v11 = sub_59F68();
  v2[62] = v11;
  v2[63] = *(v11 - 8);
  v2[64] = swift_task_alloc();
  v12 = sub_59F88();
  v2[65] = v12;
  v2[66] = *(v12 - 8);
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_2A060, 0, 0);
}

uint64_t sub_2A060()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 232);
  *v2 = 0xD000000000000013;
  v2[1] = 0x800000000005EC90;
  (*(v1 + 104))(v2, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v3);
  v8 = sub_59FA8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_59FE8();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  v10(v6, 1, 1, v9);
  sub_59F78();
  v11 = *v7;
  v12 = v7[9];
  v13 = v7[10];
  v14 = v7[7];
  v15 = v7[8];
  v16 = *(v7 + 5);
  if (qword_71A68 != -1)
  {
    v72 = *(v7 + 5);
    swift_once();
    v16 = v72;
  }

  *(v0 + 16) = v11;
  *(v0 + 24) = 3;
  *(v0 + 32) = v12;
  *(v0 + 40) = v13;
  *(v0 + 48) = v14;
  *(v0 + 56) = v15;
  *(v0 + 64) = v16;
  sub_2AB10();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  sub_59DC8();
  v62 = *(v0 + 536);
  v65 = *(v0 + 528);
  v60 = *(v0 + 520);
  v50 = *(v0 + 464);
  v63 = *(v0 + 456);
  v61 = *(v0 + 448);
  v17 = *(v0 + 440);
  v53 = *(v0 + 432);
  v19 = *(v0 + 416);
  v18 = *(v0 + 424);
  v49 = v18;
  v70 = *(v0 + 408);
  v71 = *(v0 + 400);
  v57 = *(v0 + 392);
  v58 = *(v0 + 384);
  v64 = *(v0 + 376);
  v56 = *(v0 + 368);
  v20 = *(v0 + 352);
  v54 = *(v0 + 360);
  v21 = *(v0 + 344);
  v68 = *(v0 + 336);
  v66 = *(v0 + 328);
  v46 = *(v0 + 320);
  v69 = *(v0 + 312);
  v67 = *(v0 + 304);
  v45 = *(v0 + 296);
  v55 = *(v0 + 288);
  v48 = *(v0 + 280);
  v47 = *(v0 + 272);
  v59 = *(v0 + 264);
  v52 = *(v0 + 256);
  v51 = *(v0 + 248);
  BYTE2(v39) = 0;
  LOWORD(v39) = 0;
  sub_59F48();
  v22 = sub_5A1A8();
  v23 = [v22 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 128) = v19;
  *(v0 + 136) = &protocol witness table for Command;
  v24 = sub_5F2C((v0 + 104));
  v43 = *(v18 + 16);
  v43(v24, v17, v19);
  v44 = *(v20 + 104);
  v44(v54, enum case for ButtonRole.preferred(_:), v21);
  v42 = enum case for _ProtoButton.FormAction.none(_:);
  v41 = *(v66 + 104);
  v41(v68);
  v40 = enum case for Button.LabelStyle.automatic(_:);
  v25 = *(v67 + 104);
  v25(v69);

  sub_5A008();
  v26 = sub_5A198();
  v27 = [v26 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 168) = v19;
  *(v0 + 176) = &protocol witness table for Command;
  v28 = sub_5F2C((v0 + 144));
  v43(v28, v53, v19);
  (v41)(v68, v42, v46);
  (v25)(v69, v40, v45);
  v44(v54, enum case for ButtonRole.standard(_:), v21);

  sub_5A008();
  v29 = *(v64 + 16);
  v29(v57, v70, v56);
  v29(v58, v71, v56);
  sub_59F28();
  *(v0 + 208) = v47;
  *(v0 + 216) = &protocol witness table for BinaryButton;
  v30 = sub_5F2C((v0 + 184));
  (*(v48 + 16))(v30, v55, v47);
  sub_59F08();
  sub_59FD8();
  sub_5B94(&qword_72938, &qword_5CA18);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_5C780;
  *(v31 + 56) = v60;
  *(v31 + 64) = &protocol witness table for SashStandard;
  v32 = sub_5F2C((v31 + 32));
  (*(v65 + 16))(v32, v62, v60);
  *(v31 + 96) = v61;
  *(v31 + 104) = &protocol witness table for CustomCanvas;
  v33 = sub_5F2C((v31 + 72));
  (*(v63 + 16))(v33, v50, v61);
  *(v31 + 136) = v51;
  *(v31 + 144) = &protocol witness table for ComponentWrapper;
  v34 = sub_5F2C((v31 + 112));
  (*(v52 + 16))(v34, v59, v51);
  sub_5A058();
  (*(v52 + 8))(v59, v51);
  (*(v48 + 8))(v55, v47);
  v35 = *(v64 + 8);
  v35(v71, v56);
  v36 = *(v49 + 8);
  v36(v53, v19);
  v35(v70, v56);
  v36(v17, v19);
  (*(v63 + 8))(v50, v61);
  (*(v65 + 8))(v62, v60);

  v37 = *(v0 + 8);

  return v37();
}

unint64_t sub_2AB10()
{
  result = qword_72930;
  if (!qword_72930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72930);
  }

  return result;
}

uint64_t destroy for AppShortcutFirstRunVisual(void *a1)
{
}

uint64_t *initializeWithCopy for AppShortcutFirstRunVisual(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  a1[10] = a2[10];

  return a1;
}

uint64_t *assignWithCopy for AppShortcutFirstRunVisual(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];
  a1[6] = a2[6];

  a1[7] = a2[7];
  a1[8] = a2[8];

  a1[9] = a2[9];
  a1[10] = a2[10];

  return a1;
}

__n128 initializeWithTake for AppShortcutFirstRunVisual(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t *assignWithTake for AppShortcutFirstRunVisual(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  v6 = a2[6];
  a1[5] = a2[5];
  a1[6] = v6;

  v7 = a2[8];
  a1[7] = a2[7];
  a1[8] = v7;

  v8 = a2[10];
  a1[9] = a2[9];
  a1[10] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutFirstRunVisual(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for AppShortcutFirstRunVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2AE90(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  sub_59F18();
  v2[30] = swift_task_alloc();
  v3 = sub_59FC8();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v4 = sub_59F38();
  v2[34] = v4;
  v2[35] = *(v4 - 8);
  v2[36] = swift_task_alloc();
  v5 = sub_59FF8();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v6 = sub_59F98();
  v2[40] = v6;
  v2[41] = *(v6 - 8);
  v2[42] = swift_task_alloc();
  v7 = sub_59EF8();
  v2[43] = v7;
  v2[44] = *(v7 - 8);
  v2[45] = swift_task_alloc();
  v8 = sub_5A018();
  v2[46] = v8;
  v2[47] = *(v8 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v9 = sub_5A038();
  v2[52] = v9;
  v2[53] = *(v9 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v10 = sub_59F58();
  v2[56] = v10;
  v2[57] = *(v10 - 8);
  v2[58] = swift_task_alloc();
  sub_5B94(&qword_72920, &qword_5CA08);
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  sub_5B94(&qword_72928, &qword_5CA10);
  v2[61] = swift_task_alloc();
  v11 = sub_59F68();
  v2[62] = v11;
  v2[63] = *(v11 - 8);
  v2[64] = swift_task_alloc();
  v12 = sub_59F88();
  v2[65] = v12;
  v2[66] = *(v12 - 8);
  v2[67] = swift_task_alloc();

  return _swift_task_switch(sub_2B364, 0, 0);
}

uint64_t sub_2B364()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 232);
  *v2 = 0xD000000000000019;
  v2[1] = 0x800000000005ECF0;
  (*(v1 + 104))(v2, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v3);
  v8 = sub_59FA8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = sub_59FE8();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  v10(v6, 1, 1, v9);
  sub_59F78();
  v11 = *v7;
  v12 = v7[9];
  v13 = v7[10];
  v14 = v7[7];
  v15 = v7[8];
  v16 = *(v7 + 5);
  if (qword_71A68 != -1)
  {
    v72 = *(v7 + 5);
    swift_once();
    v16 = v72;
  }

  *(v0 + 16) = v11;
  *(v0 + 24) = 3;
  *(v0 + 32) = v12;
  *(v0 + 40) = v13;
  *(v0 + 48) = v14;
  *(v0 + 56) = v15;
  *(v0 + 64) = v16;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  sub_2AB10();
  sub_59DC8();
  v62 = *(v0 + 536);
  v65 = *(v0 + 528);
  v60 = *(v0 + 520);
  v50 = *(v0 + 464);
  v63 = *(v0 + 456);
  v61 = *(v0 + 448);
  v17 = *(v0 + 440);
  v53 = *(v0 + 432);
  v19 = *(v0 + 416);
  v18 = *(v0 + 424);
  v49 = v18;
  v70 = *(v0 + 408);
  v71 = *(v0 + 400);
  v57 = *(v0 + 392);
  v58 = *(v0 + 384);
  v64 = *(v0 + 376);
  v56 = *(v0 + 368);
  v20 = *(v0 + 352);
  v54 = *(v0 + 360);
  v21 = *(v0 + 344);
  v68 = *(v0 + 336);
  v66 = *(v0 + 328);
  v46 = *(v0 + 320);
  v69 = *(v0 + 312);
  v67 = *(v0 + 304);
  v45 = *(v0 + 296);
  v55 = *(v0 + 288);
  v48 = *(v0 + 280);
  v47 = *(v0 + 272);
  v59 = *(v0 + 264);
  v52 = *(v0 + 256);
  v51 = *(v0 + 248);
  BYTE2(v39) = 0;
  LOWORD(v39) = 0;
  sub_59F48();
  v22 = sub_5A1A8();
  v23 = [v22 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 128) = v19;
  *(v0 + 136) = &protocol witness table for Command;
  v24 = sub_5F2C((v0 + 104));
  v43 = *(v18 + 16);
  v43(v24, v17, v19);
  v44 = *(v20 + 104);
  v44(v54, enum case for ButtonRole.preferred(_:), v21);
  v42 = enum case for _ProtoButton.FormAction.none(_:);
  v41 = *(v66 + 104);
  v41(v68);
  v40 = enum case for Button.LabelStyle.automatic(_:);
  v25 = *(v67 + 104);
  v25(v69);

  sub_5A008();
  v26 = sub_5A198();
  v27 = [v26 identifier];

  sub_5B348();
  sub_38208(_swiftEmptyArrayStorage);
  sub_5A028();

  *(v0 + 168) = v19;
  *(v0 + 176) = &protocol witness table for Command;
  v28 = sub_5F2C((v0 + 144));
  v43(v28, v53, v19);
  (v41)(v68, v42, v46);
  (v25)(v69, v40, v45);
  v44(v54, enum case for ButtonRole.standard(_:), v21);

  sub_5A008();
  v29 = *(v64 + 16);
  v29(v57, v70, v56);
  v29(v58, v71, v56);
  sub_59F28();
  *(v0 + 208) = v47;
  *(v0 + 216) = &protocol witness table for BinaryButton;
  v30 = sub_5F2C((v0 + 184));
  (*(v48 + 16))(v30, v55, v47);
  sub_59F08();
  sub_59FD8();
  sub_5B94(&qword_72938, &qword_5CA18);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_5C780;
  *(v31 + 56) = v60;
  *(v31 + 64) = &protocol witness table for SashStandard;
  v32 = sub_5F2C((v31 + 32));
  (*(v65 + 16))(v32, v62, v60);
  *(v31 + 96) = v61;
  *(v31 + 104) = &protocol witness table for CustomCanvas;
  v33 = sub_5F2C((v31 + 72));
  (*(v63 + 16))(v33, v50, v61);
  *(v31 + 136) = v51;
  *(v31 + 144) = &protocol witness table for ComponentWrapper;
  v34 = sub_5F2C((v31 + 112));
  (*(v52 + 16))(v34, v59, v51);
  sub_5A058();
  (*(v52 + 8))(v59, v51);
  (*(v48 + 8))(v55, v47);
  v35 = *(v64 + 8);
  v35(v71, v56);
  v36 = *(v49 + 8);
  v36(v53, v19);
  v35(v70, v56);
  v36(v17, v19);
  (*(v63 + 8))(v50, v61);
  (*(v65 + 8))(v62, v60);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2BE2C(uint64_t a1)
{
  v74 = sub_5A8E8();
  v2 = *(v74 - 8);
  v3 = __chkstk_darwin(v74);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v58 = &v58 - v6;
  v7 = __chkstk_darwin(v5);
  v71 = &v58 - v8;
  __chkstk_darwin(v7);
  v62 = &v58 - v9;
  v69 = sub_5A7D8();
  v10 = *(v69 - 1);
  __chkstk_darwin(v69);
  v67 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_5A318();
  v12 = *(v68 - 8);
  __chkstk_darwin(v68);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_5A858();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v60 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v58 - v20;
  v22 = __chkstk_darwin(v19);
  v70 = &v58 - v23;
  v24 = *(a1 + 16);
  v25 = _swiftEmptyArrayStorage;
  v61 = v2;
  v72 = v22;
  if (v24)
  {
    v75 = _swiftEmptyArrayStorage;
    sub_375A8(0, v24, 0);
    v25 = v75;
    v27 = *(v12 + 16);
    v26 = v12 + 16;
    v28 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v64 = *(v26 + 56);
    v65 = v27;
    v66 = v26;
    v29 = (v26 - 8);
    v73 = v16;
    v63 = v16 + 32;
    do
    {
      v30 = v68;
      (v65)(v14, v28, v68);
      v31 = v67;
      sub_5A2F8();
      sub_5A7C8();
      (*(v10 + 8))(v31, v69);
      (*v29)(v14, v30);
      v75 = v25;
      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        sub_375A8((v32 > 1), v33 + 1, 1);
        v25 = v75;
      }

      v25[2] = v33 + 1;
      v34 = v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v33;
      v15 = v72;
      (*(v73 + 32))(v34, v21, v72);
      v28 += v64;
      --v24;
    }

    while (v24);
    v2 = v61;
    v16 = v73;
  }

  v35 = v25[2];
  if (v35)
  {
    v37 = *(v16 + 16);
    v36 = v16 + 16;
    v38 = v25 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v68 = *(v36 + 56);
    v69 = v37;
    v67 = (v36 + 16);
    v39 = (v36 + 72);
    LODWORD(v66) = enum case for Parse.uso(_:);
    v64 = (v36 + 80);
    v65 = (v36 - 8);
    v40 = (v2 + 32);
    v41 = _swiftEmptyArrayStorage;
    v42 = v60;
    v73 = v36;
    do
    {
      v43 = v70;
      v69(v70, v38, v15);
      (*v67)(v42, v43, v15);
      v44 = (*v39)(v42, v15);
      if (v44 == v66)
      {
        (*v64)(v42, v15);
        v45 = *v40;
        v46 = v59;
        v47 = v74;
        (*v40)(v59, v42, v74);
        v48 = v58;
        v45(v58, v46, v47);
        v45(v71, v48, v47);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_585A4(0, *(v41 + 2) + 1, 1, v41);
        }

        v50 = *(v41 + 2);
        v49 = *(v41 + 3);
        v42 = v60;
        if (v50 >= v49 >> 1)
        {
          v41 = sub_585A4((v49 > 1), v50 + 1, 1, v41);
        }

        *(v41 + 2) = v50 + 1;
        v45(&v41[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v50], v71, v74);
        v15 = v72;
      }

      else
      {
        (*v65)(v42, v15);
      }

      v38 += v68;
      --v35;
    }

    while (v35);

    v2 = v61;
  }

  else
  {

    v41 = _swiftEmptyArrayStorage;
  }

  v52 = 0;
  v53 = *(v41 + 2);
  v54 = v74;
  while (1)
  {
    v55 = v52;
    if (v53 == v52)
    {
LABEL_23:

      return v53 != v55;
    }

    if (v52 >= *(v41 + 2))
    {
      break;
    }

    v56 = v62;
    (*(v2 + 16))(v62, &v41[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v52++], v54);
    v57 = sub_5A8A8();
    result = (*(v2 + 8))(v56, v54);
    if (v57)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2C53C(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[40] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v2[44] = swift_task_alloc();
  v4 = sub_5A908();
  v2[45] = v4;
  v2[46] = *(v4 - 8);
  v2[47] = swift_task_alloc();
  v5 = sub_5A488();
  v2[48] = v5;
  v2[49] = *(v5 - 8);
  v2[50] = swift_task_alloc();
  v6 = sub_5A648();
  v2[51] = v6;
  v2[52] = *(v6 - 8);
  v2[53] = swift_task_alloc();
  v7 = sub_5A588();
  v2[54] = v7;
  v2[55] = *(v7 - 8);
  v2[56] = swift_task_alloc();
  sub_5B94(&qword_72A10, &unk_5CB40);
  v2[57] = swift_task_alloc();
  v8 = sub_5AA98();
  v2[58] = v8;
  v2[59] = *(v8 - 8);
  v2[60] = swift_task_alloc();

  return _swift_task_switch(sub_2C870, 0, 0);
}

uint64_t sub_2C870()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "AskRepeatFlow: execute called", v4, 2u);
  }

  v5 = v0[39];

  sub_5CBC((v5 + 16), *(v5 + 40));
  v6 = sub_38208(_swiftEmptyArrayStorage);
  v0[61] = v6;
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x65736E6F70736572;
  v8 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC00000065646F4DLL;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v9 = sub_3802C(inited);
  v0[62] = v9;
  swift_setDeallocating();
  sub_5D4C(v8, &unk_72450, &unk_5C470);
  v10 = swift_task_alloc();
  v0[63] = v10;
  *v10 = v0;
  v10[1] = sub_2CAA8;

  return sub_3419C(0xD000000000000015, 0x800000000005ED40, v6, v9);
}

uint64_t sub_2CAA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v4 = sub_2D200;
  }

  else
  {
    v4 = sub_2CC04;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2CC04()
{
  v37 = v0;
  v1 = sub_5A658();
  v2 = *(v0 + 464);
  v3 = *(v0 + 472);
  v4 = *(v0 + 456);
  if (v1)
  {
    swift_getObjectType();
    sub_5B4E8();
    swift_unknownObjectRelease();
    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v5 = *(v0 + 512);
      v6 = *(v0 + 472);
      v27 = *(v0 + 464);
      v28 = *(v0 + 480);
      v8 = *(v0 + 416);
      v7 = *(v0 + 424);
      v9 = *(v0 + 408);
      v26 = *(v0 + 400);
      v25 = *(v0 + 392);
      v30 = *(v0 + 384);
      v31 = *(v0 + 376);
      v33 = *(v0 + 360);
      v34 = *(v0 + 368);
      v29 = *(v0 + 352);
      v32 = *(v0 + 312);
      (*(v6 + 32))();
      v10 = [v5 speak];
      sub_5B3D8();

      v11 = [v5 print];
      sub_5B3D8();

      (*(v8 + 104))(v7, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v9);
      v12 = [v5 print];
      v13 = sub_5B3D8();

      v14 = *(v13 + 16);

      sub_41CC4(0, 0xE000000000000000, v14);
      v15 = [v5 meta];
      sub_5B2F8();

      sub_5A528();
      sub_5A478();
      sub_5B94(&qword_72518, &unk_5C650);
      v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_5C390;
      (*(v6 + 16))(v17 + v16, v28, v27);
      sub_5A458();
      sub_5A868();
      sub_5A868();
      sub_5CBC((v0 + 136), *(v0 + 160));
      sub_5A218();
      (*(v25 + 16))(v29, v26, v30);
      (*(v25 + 56))(v29, 0, 1, v30);
      *(v0 + 208) = 0;
      *(v0 + 192) = 0u;
      *(v0 + 176) = 0u;
      sub_5A3E8();
      sub_5D4C(v0 + 176, &qword_721D8, &qword_5C480);
      sub_5D4C(v29, &unk_72440, &unk_5C460);
      sub_5D00((v0 + 96));
      sub_5D00((v0 + 136));
      v18 = v32[10];
      v19 = v32[11];
      sub_5CBC(v32 + 7, v18);
      *(v0 + 240) = v33;
      *(v0 + 248) = &protocol witness table for AceOutput;
      v20 = sub_5F2C((v0 + 216));
      (*(v34 + 16))(v20, v31, v33);
      v21 = swift_task_alloc();
      *(v0 + 528) = v21;
      *v21 = v0;
      v21[1] = sub_2D3F0;

      return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 216, v18, v19);
    }
  }

  else
  {
    (*(v3 + 56))(*(v0 + 456), 1, 1, *(v0 + 464));
  }

  v22 = *(v0 + 512);
  sub_5D4C(*(v0 + 456), &qword_72A10, &unk_5CB40);
  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  *(v0 + 296) = sub_3147C(0xD00000000000002FLL, 0x800000000005ED90, v35, v36);
  sub_2EA8C(&qword_72550, type metadata accessor for CamErrorFlow, &unk_5CE08);
  sub_5A418();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2D200()
{
  v5 = v0;
  sub_5B5A8(43);

  v4[0] = 0xD000000000000029;
  v4[1] = 0x800000000005ED60;
  swift_getErrorValue();
  v7._countAndFlagsBits = sub_5B7E8();
  sub_5B388(v7);

  sub_5A6C8();
  sub_5A148();
  type metadata accessor for CamErrorFlow();
  swift_allocObject();
  *(v0 + 288) = sub_3147C(0xD000000000000029, 0x800000000005ED60, v3, v4);
  sub_2EA8C(&qword_72550, type metadata accessor for CamErrorFlow, &unk_5CE08);
  sub_5A418();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2D3F0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_2D7C4;
  }

  else
  {
    sub_5D00((v2 + 216));
    v3 = sub_2D51C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2D51C()
{
  v15 = v0[64];
  v22 = v0[60];
  v20 = v0[59];
  v21 = v0[58];
  v1 = v0[55];
  v18 = v0[54];
  v19 = v0[56];
  v2 = v0[49];
  v16 = v0[48];
  v17 = v0[50];
  v3 = v0[46];
  v13 = v0[45];
  v14 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  sub_5CBC((v0[39] + 96), *(v0[39] + 120));
  sub_5A1E8();
  (*(v5 + 104))(v4, enum case for ActivityType.askRepeat(_:), v7);
  v8 = enum case for SiriKitReliabilityCodes.normal(_:);
  v9 = sub_5A168();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v17, v16);
  (*(v1 + 8))(v19, v18);
  (*(v20 + 8))(v22, v21);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2D7C4()
{
  sub_5D00(v0 + 27);
  v15 = v0[64];
  v22 = v0[60];
  v20 = v0[59];
  v21 = v0[58];
  v1 = v0[55];
  v18 = v0[54];
  v19 = v0[56];
  v2 = v0[49];
  v16 = v0[48];
  v17 = v0[50];
  v3 = v0[46];
  v13 = v0[45];
  v14 = v0[47];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  sub_5CBC((v0[39] + 96), *(v0[39] + 120));
  sub_5A1E8();
  (*(v5 + 104))(v4, enum case for ActivityType.askRepeat(_:), v7);
  v8 = enum case for SiriKitReliabilityCodes.normal(_:);
  v9 = sub_5A168();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_5A1C8();
  sub_5A158();

  sub_5A438();

  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v17, v16);
  (*(v1 + 8))(v19, v18);
  (*(v20 + 8))(v22, v21);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2DB3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_2C53C(a1);
}

uint64_t sub_2DBD8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AskRepeatFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_2DC10(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2DCDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_C0A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5D00(v11);
  return v7;
}

unint64_t sub_2DCDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2DDE8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_5B5F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2DDE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2DE34(a1, a2);
  sub_2DF64(&off_6DBB8);
  return v3;
}

void *sub_2DE34(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_2E050(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_5B5F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_5B398();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2E050(v10, 0);
        result = sub_5B598();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2DF64(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2E0C4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2E050(uint64_t a1, uint64_t a2)
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

  sub_5B94(&qword_72A08, &qword_5CB28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2E0C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_72A08, &qword_5CB28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_2E1B8(uint64_t a1)
{
  v2 = sub_5B94(&qword_71C88, &qword_5C2A0);
  __chkstk_darwin(v2 - 8);
  v68 = &v54 - v3;
  v4 = type metadata accessor for CAMDirectInvocation(0);
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = __chkstk_darwin(v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v54 - v7;
  v8 = sub_5A858();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_5A838();
  v10 = *(v63 - 8);
  __chkstk_darwin(v63);
  v69 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_5A7D8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v62 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v18 = sub_5B228();
  v19 = sub_5B44(v18, qword_763B8);
  v59 = *(v13 + 16);
  v60 = v13 + 16;
  v59(v17, a1, v12);
  v65 = v19;
  v20 = sub_5B218();
  v21 = sub_5B4B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v70 = v12;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v10;
    v25 = v24;
    v71 = v24;
    *v23 = 136315138;
    sub_2EA8C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v26 = sub_5B798();
    v27 = a1;
    v29 = v28;
    v61 = *(v13 + 8);
    v61(v17, v70);
    v30 = sub_2DC10(v26, v29, &v71);
    a1 = v27;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_0, v20, v21, "AskRepeatFlow: on called with %s", v23, 0xCu);
    sub_5D00(v25);
    v10 = v54;

    v12 = v70;
  }

  else
  {

    v61 = *(v13 + 8);
    v61(v17, v12);
  }

  v31 = v64;
  sub_5A7C8();
  v33 = v66;
  v32 = v67;
  v34 = (*(v66 + 88))(v31, v67);
  v35 = v68;
  v36 = v69;
  if (v34 != enum case for Parse.directInvocation(_:))
  {
    (*(v33 + 8))(v31, v32);
    goto LABEL_10;
  }

  (*(v33 + 96))(v31, v32);
  (*(v10 + 32))(v36, v31, v63);
  sub_3601C(v35);
  if ((*(v57 + 48))(v35, 1, v58) == 1)
  {
    (*(v10 + 8))(v36, v63);
    sub_5D4C(v35, &qword_71C88, &qword_5C2A0);
LABEL_10:
    v37 = v62;
    v59(v62, a1, v12);
    v38 = sub_5B218();
    v39 = sub_5B4C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v71 = v41;
      *v40 = 136315138;
      sub_2EA8C(&qword_71C90, &type metadata accessor for Input, &protocol conformance descriptor for Input);
      v42 = sub_5B798();
      v44 = v43;
      v61(v37, v12);
      v45 = sub_2DC10(v42, v44, &v71);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_0, v38, v39, "AskRepeatFlow called with unexpected input %s", v40, 0xCu);
      sub_5D00(v41);
    }

    else
    {

      v61(v37, v12);
    }

    return 0;
  }

  v47 = v35;
  v48 = v56;
  sub_1AF04(v47, v56);
  v49 = v48;
  v50 = v55;
  sub_2E9CC(v49, v55);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2EA30(v56);
    (*(v10 + 8))(v36, v63);
    sub_2EA30(v50);
    goto LABEL_10;
  }

  sub_2EA30(v50);
  v51 = sub_5B218();
  v52 = sub_5B4B8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_0, v51, v52, "AskRepeatFlow: input accepted", v53, 2u);
  }

  sub_2EA30(v56);
  (*(v10 + 8))(v36, v63);
  return 1;
}

uint64_t sub_2E9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAMDirectInvocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2EA30(uint64_t a1)
{
  v2 = type metadata accessor for CAMDirectInvocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2EA8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t destroy for AutoShortcutAppPhrasesViewModel(void *a1)
{
}

uint64_t initializeWithCopy for AutoShortcutAppPhrasesViewModel(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  v3 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v3;
  v4 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v4;
  v5 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v5;
  *(a1 + 72) = a2[9];

  return a1;
}

uint64_t *assignWithCopy for AutoShortcutAppPhrasesViewModel(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  a1[8] = a2[8];
  a1[9] = a2[9];

  return a1;
}

__n128 initializeWithTake for AutoShortcutAppPhrasesViewModel(uint64_t a1, uint64_t a2)
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

uint64_t *assignWithTake for AutoShortcutAppPhrasesViewModel(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  a1[3] = a2[3];

  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;

  v5 = a2[7];
  a1[6] = a2[6];
  a1[7] = v5;

  v6 = a2[9];
  a1[8] = a2[8];
  a1[9] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel(uint64_t result, int a2, int a3)
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

Swift::Int sub_2EDDC()
{
  v1 = *v0;
  sub_5B848();
  sub_5B858(v1);
  return sub_5B868();
}

Swift::Int sub_2EE50(uint64_t a1)
{
  v2 = *v1;
  sub_5B848();
  sub_5B858(v2);
  return sub_5B868();
}

uint64_t sub_2EE94()
{
  v1 = *v0;
  v2 = 0x74756374726F6873;
  v3 = 0x74706D6F7270;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x65746F6E746F6F66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736172685078616DLL;
  if (v1 != 1)
  {
    v5 = 0x6449656C646E7562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2EF6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2F32C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2EFAC(uint64_t a1)
{
  v2 = sub_2F2D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2EFE8(uint64_t a1)
{
  v2 = sub_2F2D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2F024(void *a1)
{
  v3 = v1;
  v5 = sub_5B94(&qword_72A18, &unk_5CBC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_5CBC(a1, a1[3]);
  sub_2F2D8();
  sub_5B888();
  v11 = *v3;
  v10[7] = 0;
  sub_5B94(&qword_72500, &unk_5C640);
  sub_2F99C(&qword_72A28, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_5B778();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_5B768();
  v10[5] = 2;
  sub_5B758();
  v10[4] = 3;
  sub_5B758();
  v10[3] = 4;
  sub_5B748();
  v10[2] = 5;
  sub_5B748();
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_2F274@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2F544(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_2F2D8()
{
  result = qword_72A20;
  if (!qword_72A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A20);
  }

  return result;
}

uint64_t sub_2F32C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756374726F6873 && a2 == 0xEF73657361726850;
  if (v4 || (sub_5B7A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736172685078616DLL && a2 == 0xEA00000000007365 || (sub_5B7A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_5B7A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_5B7A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000000005EDF0 == a2 || (sub_5B7A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xED00006C6562614CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_5B7A8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_2F544@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_5B94(&qword_72A30, &qword_5CBD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_5CBC(a1, a1[3]);
  sub_2F2D8();
  sub_5B878();
  if (v2)
  {
    return sub_5D00(a1);
  }

  sub_5B94(&qword_72500, &unk_5C640);
  LOBYTE(v32) = 0;
  sub_2F99C(&qword_72A38, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_5B718();
  v9 = v37[0];
  LOBYTE(v37[0]) = 1;
  v10 = sub_5B708();
  LOBYTE(v37[0]) = 2;
  v29 = sub_5B6F8();
  v31 = v11;
  LOBYTE(v37[0]) = 3;
  v12 = sub_5B6F8();
  v30 = v13;
  v26 = v12;
  LOBYTE(v37[0]) = 4;
  v28 = 0;
  v25 = sub_5B6E8();
  v27 = v14;
  v38 = 5;
  v15 = sub_5B6E8();
  v16 = *(v6 + 8);
  v17 = v15;
  v28 = v18;
  v16(v8, v5);
  *&v32 = v9;
  *(&v32 + 1) = v10;
  *&v33 = v29;
  *(&v33 + 1) = v31;
  v19 = v30;
  *&v34 = v26;
  *(&v34 + 1) = v30;
  v20 = v27;
  *&v35 = v25;
  *(&v35 + 1) = v27;
  v21 = v28;
  *&v36 = v17;
  *(&v36 + 1) = v28;
  sub_2FA08(&v32, v37);
  sub_5D00(a1);
  v37[0] = v9;
  v37[1] = v10;
  v37[2] = v29;
  v37[3] = v31;
  v37[4] = v26;
  v37[5] = v19;
  v37[6] = v25;
  v37[7] = v20;
  v37[8] = v17;
  v37[9] = v21;
  result = sub_2FA40(v37);
  v23 = v35;
  a2[2] = v34;
  a2[3] = v23;
  a2[4] = v36;
  v24 = v33;
  *a2 = v32;
  a2[1] = v24;
  return result;
}

uint64_t sub_2F99C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A688(&qword_72500, &unk_5C640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoShortcutAppPhrasesViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2FBE4()
{
  result = qword_72A40;
  if (!qword_72A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A40);
  }

  return result;
}

unint64_t sub_2FC3C()
{
  result = qword_72A48;
  if (!qword_72A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A48);
  }

  return result;
}

unint64_t sub_2FC94()
{
  result = qword_72A50;
  if (!qword_72A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A50);
  }

  return result;
}

uint64_t sub_2FCE8()
{
  sub_5D00((v0 + 16));

  return swift_deallocClassInstance();
}

_OWORD *sub_2FD44(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_37278(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_4180C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_412D0(v16, a4 & 1);
    v11 = sub_37278(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_5B7D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_5D00(v22);

    return sub_302D4(a1, v22);
  }

  else
  {
    sub_2FE94(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2FE94(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_302D4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2FF00(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = a4;
  *(v4 + 160) = a2;
  *(v4 + 216) = a1;
  return _swift_task_switch(sub_2FF28, 0, 0);
}

uint64_t sub_2FF28()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 216);
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0xD000000000000017;
  v6 = inited + 32;
  *(inited + 40) = 0x800000000005EE50;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v4;
  v7 = sub_3802C(inited);
  swift_setDeallocating();
  sub_3026C(v6);
  *(v0 + 120) = &type metadata for String;
  *(v0 + 96) = v2;
  *(v0 + 104) = v1;
  sub_302D4((v0 + 96), (v0 + 128));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2FD44((v0 + 128), 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  sub_5CBC((v3 + 16), *(v3 + 40));
  v9 = sub_33ED4(v7);
  *(v0 + 184) = v9;

  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_300EC;

  return sub_350CC(0xD00000000000002CLL, 0x800000000005EE70, v9);
}

uint64_t sub_300EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_30254;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_30238;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3026C(uint64_t a1)
{
  v2 = sub_5B94(&unk_72450, &unk_5C470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_302D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_302E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_5A648();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_303A8, 0, 0);
}

uint64_t sub_303A8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  sub_5CBC((v0[15] + 16), *(v0[15] + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 7368801;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v7 = sub_3802C(inited);
  v0[19] = v7;
  swift_setDeallocating();
  sub_3026C(inited + 32);
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.listen(_:), v3);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_3053C;
  v9 = v0[12];

  return sub_3468C(v9, 0xD00000000000002CLL, 0x800000000005EE70, v7);
}

uint64_t sub_3053C()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_31478, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_30714(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_5A648();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_307D4, 0, 0);
}

uint64_t sub_307D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_5CBC((v0[3] + 16), *(v0[3] + 40));
  v4 = sub_3802C(_swiftEmptyArrayStorage);
  v0[7] = v4;
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_308EC;
  v6 = v0[2];

  return sub_3468C(v6, 0xD00000000000002ALL, 0x800000000005EF30, v4);
}

uint64_t sub_308EC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_30AC4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_30AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_30B28(uint64_t a1, double a2)
{
  *(v3 + 112) = v2;
  *(v3 + 104) = a2;
  *(v3 + 96) = a1;
  v4 = sub_5A648();
  *(v3 + 120) = v4;
  *(v3 + 128) = *(v4 - 8);
  *(v3 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_30BF0, 0, 0);
}

uint64_t sub_30BF0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  sub_5CBC((v0[14] + 16), *(v0[14] + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0xD000000000000011;
  v6 = inited + 32;
  *(inited + 40) = 0x800000000005EF10;
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = v4;
  v7 = sub_3802C(inited);
  v0[18] = v7;
  swift_setDeallocating();
  sub_3026C(v6);
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_30D80;
  v9 = v0[12];

  return sub_3468C(v9, 0xD00000000000001DLL, 0x800000000005EEF0, v7);
}

uint64_t sub_30D80()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_30F58, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_30F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_30FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_5A648();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_31080, 0, 0);
}

uint64_t sub_31080()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  sub_5CBC((v0[15] + 16), *(v0[15] + 40));
  sub_5B94(&qword_721C8, &unk_5CD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5C390;
  *(inited + 32) = 0x657361726870;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v7 = sub_3802C(inited);
  v0[19] = v7;
  swift_setDeallocating();
  sub_3026C(inited + 32);
  (*(v2 + 104))(v1, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v3);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_31218;
  v9 = v0[12];

  return sub_3468C(v9, 0xD00000000000001FLL, 0x800000000005EED0, v7);
}

uint64_t sub_31218()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_313F0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_313F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3147C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  sub_5F90(a3, v5 + 16);
  sub_5F90(a4, v5 + 56);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v10 = sub_5B228();
  sub_5B44(v10, qword_763B8);
  v11 = sub_5B218();
  v12 = sub_5B4B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "CamErrorFlow: new instance initialised", v13, 2u);
  }

  sub_5D00(a4);
  sub_5D00(a3);
  return v5;
}

uint64_t sub_315A0(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  sub_5B94(&unk_73CE0, &unk_5CB30);
  v2[24] = swift_task_alloc();
  v3 = sub_5A2A8();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  sub_5B94(&unk_72440, &unk_5C460);
  v2[28] = swift_task_alloc();
  v4 = sub_5A908();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  sub_5B94(&qword_72C90, &unk_5CE60);
  v2[32] = swift_task_alloc();
  v5 = sub_5A588();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_317C0, 0, 0);
}

uint64_t sub_317C0()
{
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  v0[36] = sub_5B44(v1, qword_763B8);
  v2 = sub_5B218();
  v3 = sub_5B4B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "CamErrorFlow: execute called", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_31918;
  v6 = v0[32];

  return static ErrorTemplates.genericError()(v6);
}

uint64_t sub_31918()
{

  if (v0)
  {

    v1 = sub_31F9C;
  }

  else
  {
    v1 = sub_31A30;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_31A30()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 184);
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_5A868();
  sub_5A868();
  sub_5CBC((v0 + 56), *(v0 + 80));
  sub_5A218();
  v10 = sub_5A488();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 96) = 0u;
  sub_5A3F8();
  sub_5D4C(v0 + 96, &qword_721D8, &qword_5C480);
  sub_5D4C(v8, &unk_72440, &unk_5C460);
  sub_5D00((v0 + 16));
  sub_5D00((v0 + 56));
  v11 = v9[5];
  v12 = v9[6];
  sub_5CBC(v9 + 2, v11);
  *(v0 + 160) = v7;
  *(v0 + 168) = &protocol witness table for AceOutput;
  v13 = sub_5F2C((v0 + 136));
  (*(v6 + 16))(v13, v5, v7);
  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  *v14 = v0;
  v14[1] = sub_31C7C;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 136, v11, v12);
}

uint64_t sub_31C7C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_320F8;
  }

  else
  {
    sub_5D00((v2 + 136));
    v3 = sub_31DA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_31DA8()
{
  v1 = v0[34];
  v12 = v0[33];
  v13 = v0[35];
  v2 = v0[30];
  v10 = v0[29];
  v11 = v0[31];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  sub_5CBC((v0[23] + 56), *(v0[23] + 80));
  sub_5A1E8();
  (*(v3 + 104))(v4, enum case for ActivityType.failed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);

  sub_5A1C8();
  sub_5A158();

  sub_5A438();
  (*(v2 + 8))(v11, v10);
  (*(v1 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_31F9C()
{
  v1 = v0[32];
  (*(v0[34] + 56))(v1, 1, 1, v0[33]);
  sub_5D4C(v1, &qword_72C90, &unk_5CE60);
  v2 = sub_5B218();
  v3 = sub_5B4C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Failure producing error dialog to present to user.", v4, 2u);
  }

  sub_5A438();

  v5 = v0[1];

  return v5();
}

uint64_t sub_320F8()
{
  sub_5D00(v0 + 17);
  v1 = v0[34];
  v12 = v0[33];
  v13 = v0[35];
  v2 = v0[30];
  v10 = v0[29];
  v11 = v0[31];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  sub_5CBC((v0[23] + 56), *(v0[23] + 80));
  sub_5A1E8();
  (*(v3 + 104))(v4, enum case for ActivityType.failed(_:), v6);
  v7 = sub_5A168();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);

  sub_5A1C8();
  sub_5A158();

  sub_5A438();
  (*(v2 + 8))(v11, v10);
  (*(v1 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_322F4()
{
  sub_5D00((v0 + 16));
  sub_5D00((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_323C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_5934;

  return sub_315A0(a1);
}

uint64_t sub_3245C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CamErrorFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_32494(uint64_t a1)
{
  v2 = sub_5A7D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v6 = sub_5B228();
  sub_5B44(v6, qword_763B8);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_5B218();
  v8 = sub_5B4B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_326D8();
    v11 = sub_5B798();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_2DC10(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "CamErrorFlow: on called with %s", v9, 0xCu);
    sub_5D00(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

unint64_t sub_326D8()
{
  result = qword_71C90;
  if (!qword_71C90)
  {
    sub_5A7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C90);
  }

  return result;
}

uint64_t sub_32774(uint64_t a1)
{
  v94 = a1;
  v1 = sub_5B94(&qword_71C88, &qword_5C2A0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v85 - v2);
  v89 = type metadata accessor for CAMDirectInvocation(0);
  v88 = *(v89 - 8);
  v4 = __chkstk_darwin(v89);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v85 - v7;
  v93 = sub_5A858();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5A838();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5B94(&qword_72D40, &unk_5CF10);
  __chkstk_darwin(v14 - 8);
  v16 = &v85 - v15;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v17 = sub_5B228();
  v90 = sub_5B44(v17, qword_763B8);
  v18 = sub_5B218();
  v19 = sub_5B4B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v87 = v6;
    v86 = v13;
    v21 = v8;
    v22 = v10;
    v23 = v20;
    v24 = swift_slowAlloc();
    *&v101 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_2DC10(0xD000000000000014, 0x800000000005EFC0, &v101);
    _os_log_impl(&dword_0, v18, v19, "%s", v23, 0xCu);
    sub_5D00(v24);

    v10 = v22;
    v8 = v21;
    v13 = v86;
    v6 = v87;
  }

  v25 = v94;
  sub_5A178();
  v26 = sub_5A188();
  v27 = (*(*(v26 - 8) + 48))(v16, 1, v26);
  sub_5D4C(v16, &qword_72D40, &unk_5CF10);
  if (v27 != 1)
  {
    sub_5A078();
    v103 = 0;
    v101 = 0u;
    v102 = 0u;
    v100 = 0;
    memset(v99, 0, sizeof(v99));
    *&v101 = sub_5A068();
LABEL_16:
    sub_5A088();

    sub_5A0E8();
  }

  if (sub_4916C(v25) != 3)
  {
    *(&v102 + 1) = &type metadata for CAMRootFlowPluginFeatureFlags;
    v103 = sub_339C4();
    v28 = sub_5A918();
    sub_5D00(&v101);
    if (v28)
    {
      sub_5A1F8();
      sub_5A6C8();
      v29 = type metadata accessor for DefaultCatExecutor();
      v30 = swift_allocObject();
      v97 = v29;
      v98 = &off_6E270;
      *&v96 = v30;
      type metadata accessor for RepeatRecentDialogFlow();
      v31 = swift_allocObject();
      v32 = sub_5EDC(&v96, v29);
      __chkstk_darwin(v32);
      v34 = (&v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v35 + 16))(v34);
      v36 = *v34;
      v31[15] = v29;
      v31[16] = &off_6E270;
      v31[12] = v36;
      v31[17] = 4;
      sub_5B7C(&v101, (v31 + 2));
      sub_5B7C(v99, (v31 + 7));
      v31[18] = sub_4464C;
      v31[19] = 0;
      sub_5D00(&v96);
      *&v101 = v31;
      v37 = &unk_72D80;
      v38 = type metadata accessor for RepeatRecentDialogFlow;
      v39 = &unk_5D758;
LABEL_15:
      sub_33A18(v37, 255, v38, v39);
      goto LABEL_16;
    }
  }

  if (sub_5A808() & 1) != 0 || (sub_5A7E8() & 1) != 0 || (sub_5A848() & 1) != 0 || (sub_5A7F8())
  {
    sub_5A1F8();
    sub_5A6C8();
    v40 = type metadata accessor for DefaultCatExecutor();
    v41 = swift_allocObject();
    sub_5A148();
    v95[3] = v40;
    v95[4] = &off_6E270;
    v95[0] = v41;
    type metadata accessor for UniversalActionTaskInterruptionFlow();
    v42 = swift_allocObject();
    v43 = sub_5EDC(v95, v40);
    __chkstk_darwin(v43);
    v45 = (&v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45);
    v47 = *v45;
    *(v42 + 120) = v40;
    *(v42 + 128) = &off_6E270;
    *(v42 + 96) = v47;
    swift_getKeyPath();
    sub_5B94(&qword_72D68, &unk_5CF50);
    swift_allocObject();
    *(v42 + 184) = sub_5AF18();
    sub_5B7C(&v101, v42 + 16);
    sub_5B7C(v99, v42 + 56);
    *(v42 + 176) = 2;
    sub_5B7C(&v96, v42 + 136);
    sub_5D00(v95);
    *&v101 = v42;
    v37 = &unk_72D70;
    v38 = type metadata accessor for UniversalActionTaskInterruptionFlow;
    v39 = &unk_5E100;
    goto LABEL_15;
  }

  v49 = v92;
  v50 = v91;
  v51 = v93;
  (*(v92 + 16))();
  if ((*(v49 + 88))(v50, v51) != enum case for Parse.directInvocation(_:))
  {
    (*(v49 + 8))(v50, v51);
    goto LABEL_21;
  }

  (*(v49 + 96))(v50, v51);
  (*(v11 + 32))(v13, v50, v10);
  sub_3601C(v3);
  if ((*(v88 + 48))(v3, 1, v89) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_5D4C(v3, &qword_71C88, &qword_5C2A0);
LABEL_21:
    v52 = sub_5B218();
    v53 = sub_5B4C8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v101 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_2DC10(0xD000000000000014, 0x800000000005EFC0, &v101);
      _os_log_impl(&dword_0, v52, v53, "%s: could not find any flow for this parse", v54, 0xCu);
      sub_5D00(v55);
    }

    return sub_5A0D8();
  }

  sub_1AF04(v3, v8);
  sub_2E9CC(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v62 = v13;
    if (EnumCaseMultiPayload)
    {
      v82 = sub_5B218();
      v83 = sub_5B4C8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_0, v82, v83, "CAMRootFlowPlugin does not offer new flows for .disambiguationResponse DI", v84, 2u);
      }

      sub_5A0D8();
      sub_2EA30(v8);
      return (*(v11 + 8))(v62, v10);
    }

    else
    {
      v63 = *(sub_5B94(&qword_71C98, &qword_5C2A8) + 48);
      type metadata accessor for ActionDisambiguationEntryFlow(0);
      swift_allocObject();
      *&v101 = sub_2290();
      sub_33A18(&qword_72D48, 255, type metadata accessor for ActionDisambiguationEntryFlow, &unk_5C238);
      sub_5A088();

      sub_5A0E8();

      sub_2EA30(v8);
      (*(v11 + 8))(v13, v10);
      v64 = sub_5A318();
      v65 = *(*(v64 - 8) + 8);
      v65(&v6[v63], v64);
      return (v65)(v6, v64);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v66 = type metadata accessor for DefaultCatExecutor();
      v57 = v13;
      v67 = swift_allocObject();
      sub_5A6C8();
      sub_5A148();
      v97 = v66;
      v98 = &off_6E270;
      *&v96 = v67;
      type metadata accessor for AskRepeatFlow();
      v68 = swift_allocObject();
      v69 = sub_5EDC(&v96, v66);
      __chkstk_darwin(v69);
      v71 = (&v85 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v72 + 16))(v71);
      v73 = sub_33814(*v71, &v101, v99, v68, "AskRepeatFlow: new instance initialised");
      sub_5D00(&v96);
      *&v101 = v73;
      v59 = &unk_72D60;
      v60 = type metadata accessor for AskRepeatFlow;
      v61 = &unk_5CAC8;
    }

    else
    {
      v57 = v13;
      if (EnumCaseMultiPayload == 3)
      {
        type metadata accessor for FallbackEntryFlow();
        v58 = swift_allocObject();
        *(v58 + 56) = 0;
        *(v58 + 16) = 0u;
        *(v58 + 32) = 0u;
        *(v58 + 48) = 0;
        *(v58 + 64) = 7;
        *&v101 = v58;
        v59 = &unk_72D50;
        v60 = type metadata accessor for FallbackEntryFlow;
        v61 = &unk_5D308;
      }

      else
      {
        v74 = type metadata accessor for DefaultCatExecutor();
        v75 = swift_allocObject();
        sub_5A6C8();
        sub_5A148();
        v97 = v74;
        v98 = &off_6E270;
        *&v96 = v75;
        type metadata accessor for GiveUpRepeatFlow();
        v76 = swift_allocObject();
        v77 = sub_5EDC(&v96, v74);
        __chkstk_darwin(v77);
        v79 = (&v85 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v80 + 16))(v79);
        v81 = sub_33814(*v79, &v101, v99, v76, "GiveUpRepeatFlow new instance initialised");
        sub_5D00(&v96);
        *&v101 = v81;
        v59 = &unk_72D58;
        v60 = type metadata accessor for GiveUpRepeatFlow;
        v61 = &unk_5D4F0;
      }
    }

    sub_33A18(v59, 255, v60, v61);
    sub_5A088();

    sub_5A0E8();

    sub_2EA30(v8);
    return (*(v11 + 8))(v57, v10);
  }
}

uint64_t sub_33784@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CAMRootFlowPlugin();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_33814(uint64_t a1, void *a2, void *a3, uint64_t a4, const char *a5)
{
  v15[3] = type metadata accessor for DefaultCatExecutor();
  v15[4] = &off_6E270;
  v15[0] = a1;
  sub_5F90(v15, a4 + 16);
  sub_5F90(a2, a4 + 56);
  sub_5F90(a3, a4 + 96);
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v10 = sub_5B228();
  sub_5B44(v10, qword_763B8);
  v11 = sub_5B218();
  v12 = sub_5B4B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a5, v13, 2u);
  }

  sub_5D00(a3);
  sub_5D00(a2);
  sub_5D00(v15);
  return a4;
}

uint64_t sub_3396C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5AE98();
  *a1 = result;
  return result;
}

unint64_t sub_339C4()
{
  result = qword_72D78;
  if (!qword_72D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D78);
  }

  return result;
}

uint64_t sub_33A18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for CAMRootFlowPluginFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CAMRootFlowPluginFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_33B4C()
{
  result = qword_72D88;
  if (!qword_72D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D88);
  }

  return result;
}

Swift::Int sub_33BA8()
{
  sub_5B848();
  sub_5B858(0);
  return sub_5B868();
}

Swift::Int sub_33C14(uint64_t a1)
{
  sub_5B848();
  sub_5B858(0);
  return sub_5B868();
}

unint64_t sub_33C7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5B94(&qword_72E78, &unk_5D0B0);
    v2 = sub_5B6A8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_302D4(&v22, v24);
        sub_302D4(v24, v25);
        sub_302D4(v25, &v23);
        result = sub_37278(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_5D00(v11);
          result = sub_302D4(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_302D4(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_33ED4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5B94(&qword_72E70, &qword_5D0A8);
    v2 = sub_5B6A8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_C0A0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_302D4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_302D4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_302D4(v31, v32);
    result = sub_5B548(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_302D4(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

uint64_t sub_3419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[22] = a4;
  v5[23] = v6;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_341E8, 0, 0);
}

uint64_t sub_341E8()
{
  v13 = v0;
  v1 = v0[22];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[24] = v3;
  v4 = sub_5B338();
  v0[25] = v4;
  isa = sub_5B2E8().super.isa;
  v0[26] = isa;
  v6 = sub_5A2B8();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v6;
  sub_357CC(v1, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v12);

  v8 = objc_opt_self();
  v9 = sub_5B2E8().super.isa;
  v0[27] = v9;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_3446C;
  v10 = swift_continuation_init();
  v0[17] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_35658;
  v0[13] = &unk_6E300;
  v0[14] = v10;
  [v8 execute:v3 catId:v4 parameters:isa globals:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_3446C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_34600;
  }

  else
  {
    v2 = sub_3457C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3457C()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_34600(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[25];
  v3 = v1[26];
  v5 = v1[24];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_3468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[22] = a4;
  v5[23] = v6;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  sub_5B94(&qword_724E8, &qword_5D090);
  v5[24] = swift_task_alloc();
  v7 = sub_5A3B8();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  v8 = sub_5A5B8();
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  v9 = sub_5A648();
  v5[31] = v9;
  v5[32] = *(v9 - 8);
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_34868, 0, 0);
}

uint64_t sub_34868()
{
  v16 = v0;
  v1 = sub_38344(&off_6DBE0);
  sub_35764(&unk_6DC00);
  v2 = sub_5A2B8();
  v3 = sub_33C7C(v1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v2;
  sub_357CC(v3, sub_41B18, 0, isUniquelyReferenced_nonNull_native, &v15);
  v0[34] = 0;

  v5 = v0[22];
  v14 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[35] = v7;
  v8 = sub_5B338();
  v0[36] = v8;
  sub_33ED4(v5);
  isa = sub_5B2E8().super.isa;
  v0[37] = isa;

  v10 = sub_5B2E8().super.isa;
  v0[38] = v10;

  v11 = CATDefaultMode;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_34B3C;
  v12 = swift_continuation_init();
  v0[17] = sub_5B94(&qword_721D0, &qword_5D0A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_35658;
  v0[13] = &unk_6E2D8;
  v0[14] = v12;
  [v14 execute:v7 catId:v8 parameters:isa globals:v10 callback:0 options:v11 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_34B3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_35000;
  }

  else
  {
    v2 = sub_34C4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_34C4C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 144);

  v5 = [v4 print];
  v6 = sub_5B3D8();

  v7 = [v4 speak];
  v8 = sub_5B3D8();

  v28 = v4;
  v9 = [v4 spokenOnly];
  sub_35ADC();
  v10 = sub_5B3D8();

  v11 = sub_135B4(v6, v8, v10);

  v12 = v11[2];
  if (v12)
  {
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    result = sub_376F4(0, v12, 0);
    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    v30 = (v14 + 56);
    v29 = v0;
    v18 = (v11 + 8);
    v31 = v11;
    while (v16 < v11[2])
    {
      v19 = *(v0 + 192);
      v32 = *(v0 + 200);
      v20 = v17;
      v21 = *v18;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v22 = v21;
      sub_5A398();
      (*v30)(v19, 1, 1, v32);
      [v22 BOOLValue];
      sub_5A598();

      v17 = v20;
      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        sub_376F4((v23 > 1), v24 + 1, 1);
        v17 = v20;
      }

      v25 = *(v29 + 240);
      v26 = *(v29 + 224);
      ++v16;
      v17[2] = v24 + 1;
      result = (*(v13 + 32))(v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, v25, v26);
      v18 += 5;
      v0 = v29;
      v11 = v31;
      if (v12 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    (*(*(v0 + 256) + 104))(*(v0 + 264), enum case for BehaviorAfterSpeaking.listen(_:), *(v0 + 248));

    sub_5A548();

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_35000(uint64_t a1)
{
  v2 = v1[38];
  v4 = v1[36];
  v3 = v1[37];
  v5 = v1[35];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_350CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v4[21] = a3;
  v4[22] = v5;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_35114, 0, 0);
}

uint64_t sub_35114()
{
  v18 = v0;
  if (qword_71A58 != -1)
  {
    swift_once();
  }

  v1 = sub_5B228();
  sub_5B44(v1, qword_763B8);

  v2 = sub_5B218();
  v3 = sub_5B4B8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2DC10(v5, v4, &v17);
    _os_log_impl(&dword_0, v2, v3, "Executing pattern %s", v6, 0xCu);
    sub_5D00(v7);
  }

  v8 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[23] = v10;
  v11 = sub_5B338();
  v0[24] = v11;
  isa = sub_5B2E8().super.isa;
  v0[25] = isa;
  sub_5A2B8();
  v13 = sub_5B2E8().super.isa;
  v0[26] = v13;

  v14 = CATDefaultMode;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_35438;
  v15 = swift_continuation_init();
  v0[17] = sub_5B94(&qword_72E60, &unk_5D080);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_35658;
  v0[13] = &unk_6E2B0;
  v0[14] = v15;
  [v8 execute:v10 patternId:v11 parameters:isa globals:v13 callback:0 options:v14 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_35438()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_355CC;
  }

  else
  {
    v2 = sub_35548;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_35548()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_355CC(uint64_t a1)
{
  v2 = v1[26];
  v4 = v1[24];
  v3 = v1[25];
  v5 = v1[23];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_35658(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_5CBC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_5B94(&qword_724C8, &qword_5E270);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_35764(uint64_t a1)
{
  v2 = sub_5B94(&qword_72E68, &qword_5D098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_357CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_41B64(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_302D4(v44, v42);
  v14 = *a5;
  result = sub_37278(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_412D0(v20, a4 & 1);
    result = sub_37278(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_5B7D8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_4180C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_5D00(v25);
    sub_302D4(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_302D4(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_41B64(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_302D4(v44, v42);
        v32 = *a5;
        result = sub_37278(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_412D0(v36, 1);
          result = sub_37278(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_5D00(v31);
          sub_302D4(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_302D4(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_41B64(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_297E0(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_35ADC()
{
  result = qword_72510;
  if (!qword_72510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_72510);
  }

  return result;
}

id sub_35B38(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_5B338();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    sub_59DF8();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_35C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_59E68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5AEF8();
  sub_5AEE8();
  sub_5AEB8();

  v8 = sub_5AF98();
  v10 = v9;

  if (!v10)
  {
    sub_59E58();
    v8 = sub_59E48();
    v10 = v11;
    (*(v5 + 8))(v7, v4);
  }

  sub_35FD0();

  v12 = sub_35B38(a1, a2, 0);
  sub_5B94(&qword_72F28, &unk_5D160);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_5C390;
  *(v13 + 32) = v8;
  *(v13 + 40) = v10;
  isa = sub_5B3C8().super.isa;

  v15 = [v12 localizedNameWithPreferredLocalizations:isa];

  v16 = sub_5B348();
  return v16;
}

unint64_t sub_35FD0()
{
  result = qword_72F20;
  if (!qword_72F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_72F20);
  }

  return result;
}

uint64_t sub_3601C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_5A838();
  v139 = *(v4 - 1);
  v140 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v133 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v133 - v12;
  __chkstk_darwin(v11);
  v15 = &v133 - v14;
  v16 = sub_5A318();
  v136 = *(v16 - 8);
  v137 = v16;
  v17 = __chkstk_darwin(v16);
  v135 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v133 - v19;
  v21 = sub_5A818();
  v23 = v22;
  if (sub_5A768() != v21 || v24 != v23)
  {
    v138 = a1;
    v25 = sub_5B7A8();

    if (v25)
    {
      a1 = v138;
      goto LABEL_6;
    }

    if (sub_5A778() == v21 && v29 == v23)
    {
      goto LABEL_9;
    }

    v30 = sub_5B7A8();

    if (v30)
    {
      goto LABEL_11;
    }

    if (sub_5A748() == v21 && v33 == v23)
    {
LABEL_9:

LABEL_11:

      v26 = type metadata accessor for CAMDirectInvocation(0);
      v31 = v138;
      swift_storeEnumTagMultiPayload();
      v27 = *(*(v26 - 8) + 56);
      v28 = v31;
      goto LABEL_12;
    }

    v34 = sub_5B7A8();

    if (v34)
    {
      goto LABEL_11;
    }

    if (sub_5A758() == v21 && v35 == v23)
    {

      goto LABEL_22;
    }

    v36 = sub_5B7A8();

    if (v36)
    {
LABEL_22:

      v37 = sub_5A828();
      v38 = v138;
      if (v37)
      {
        v39 = v37;
        if (!*(v37 + 16) || (v40 = sub_37278(1936750952, 0xE400000000000000), (v41 & 1) == 0))
        {
LABEL_35:

          goto LABEL_36;
        }

        sub_C0A0(*(v39 + 56) + 32 * v40, v142);

        sub_5B94(&qword_72F30, &qword_5D110);
        if (swift_dynamicCast())
        {
          v42 = v141;
          if (v141[2] == 2)
          {
            v142[0] = _swiftEmptyArrayStorage;
            sub_37564(0, 2, 0);
            if (v42[2])
            {
              v43 = v142[0];
              sub_3815C(v42[4], v42[5]);
              sub_5A2E8();
              v44 = v136;
              v46 = *(v43 + 16);
              v45 = *(v43 + 24);
              if (v46 >= v45 >> 1)
              {
                sub_37564((v45 > 1), v46 + 1, 1);
                v43 = v142[0];
              }

              *(v43 + 16) = v46 + 1;
              v47 = v44;
              v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
              v140 = *(v47 + 72);
              v49 = v43 + v48 + v140 * v46;
              v50 = *(v47 + 32);
              v50(v49, v20, v137);
              if (v42[2] >= 2uLL)
              {
                sub_3815C(v42[6], v42[7]);
                sub_5A2E8();
                v142[0] = v43;
                v101 = *(v43 + 16);
                v100 = *(v43 + 24);
                if (v101 >= v100 >> 1)
                {
                  sub_37564((v100 > 1), v101 + 1, 1);
                  v43 = v142[0];
                }

                *(v43 + 16) = v101 + 1;
                v134 = v43 + v48;
                v50(v43 + v48 + v140 * v101, v20, v137);

                if (qword_71A58 != -1)
                {
                  swift_once();
                }

                v102 = sub_5B228();
                v139 = sub_5B44(v102, qword_763B8);
                v103 = sub_5B218();
                v104 = sub_5B4B8();
                if (os_log_type_enabled(v103, v104))
                {
                  v105 = swift_slowAlloc();
                  v106 = swift_slowAlloc();
                  v142[0] = v106;
                  *v105 = 136315138;
                  *(v105 + 4) = sub_2DC10(0xD000000000000017, 0x800000000005F0D0, v142);
                  _os_log_impl(&dword_0, v103, v104, "%s: CAM outputs DisambiguateTopTwo with hyps:", v105, 0xCu);
                  sub_5D00(v106);
                }

                v107 = sub_5B218();
                v108 = sub_5B4B8();

                if (os_log_type_enabled(v107, v108))
                {
                  v109 = swift_slowAlloc();
                  v133 = swift_slowAlloc();
                  v142[0] = v133;
                  *v109 = 136315394;
                  result = sub_2DC10(0xD000000000000017, 0x800000000005F0D0, v142);
                  *(v109 + 4) = result;
                  *(v109 + 12) = 2080;
                  if (!*(v43 + 16))
                  {
                    goto LABEL_87;
                  }

                  v111 = v135;
                  v110 = v136;
                  v112 = v137;
                  (*(v136 + 16))(v135, v134, v137);
                  sub_381B0();
                  v113 = sub_5B798();
                  v115 = v114;
                  (*(v110 + 8))(v111, v112);
                  v116 = sub_2DC10(v113, v115, v142);

                  *(v109 + 14) = v116;
                  _os_log_impl(&dword_0, v107, v108, "%s: CAM outputs DisambiguateTopTwo with hyp 1: %s", v109, 0x16u);
                  swift_arrayDestroy();
                }

                v117 = sub_5B218();
                v118 = sub_5B4B8();

                if (os_log_type_enabled(v117, v118))
                {
                  v119 = swift_slowAlloc();
                  v139 = swift_slowAlloc();
                  v142[0] = v139;
                  *v119 = 136315394;
                  result = sub_2DC10(0xD000000000000017, 0x800000000005F0D0, v142);
                  *(v119 + 4) = result;
                  *(v119 + 12) = 2080;
                  if (*(v43 + 16) < 2uLL)
                  {
LABEL_88:
                    __break(1u);
                    return result;
                  }

                  v120 = v135;
                  v121 = v136;
                  v122 = v137;
                  (*(v136 + 16))(v135, v134 + v140, v137);
                  sub_381B0();
                  v123 = sub_5B798();
                  v125 = v124;
                  (*(v121 + 8))(v120, v122);
                  v126 = sub_2DC10(v123, v125, v142);

                  *(v119 + 14) = v126;
                  _os_log_impl(&dword_0, v117, v118, "%s: CAM outputs DisambiguateTopTwo with hyp 2: %s", v119, 0x16u);
                  swift_arrayDestroy();
                }

                result = sub_5B94(&qword_71C98, &qword_5C2A8);
                v127 = *(v43 + 16);
                if (v127)
                {
                  v128 = *(result + 48);
                  v129 = v137;
                  v130 = *(v136 + 16);
                  v131 = v138;
                  v132 = v134;
                  result = v130(v138, v134, v137);
                  if (v127 != 1)
                  {
                    v130((v131 + v128), v132 + v140, v129);

                    v76 = type metadata accessor for CAMDirectInvocation(0);
                    swift_storeEnumTagMultiPayload();
                    v67 = *(*(v76 - 8) + 56);
                    v68 = v131;
                    goto LABEL_83;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }
            }

            __break(1u);
            swift_once();
            v51 = sub_5B228();
            sub_5B44(v51, qword_763B8);
            v52 = sub_5B218();
            v53 = sub_5B4C8();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&dword_0, v52, v53, "CAM direct invocation could not deserialize PluginActions", v54, 2u);
            }

            goto LABEL_65;
          }

          goto LABEL_35;
        }
      }

LABEL_36:
      v56 = v139;
      v55 = v140;
      if (qword_71A58 != -1)
      {
        swift_once();
      }

      v57 = sub_5B228();
      sub_5B44(v57, qword_763B8);
      (*(v56 + 16))(v15, v2, v55);
      v58 = sub_5B218();
      v59 = sub_5B4C8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v142[0] = v61;
        *v60 = 136315138;
        if (!sub_5A828())
        {
          sub_3802C(_swiftEmptyArrayStorage);
        }

        v62 = sub_5B308();
        v64 = v63;

        (*(v56 + 8))(v15, v55);
        v65 = sub_2DC10(v62, v64, v142);

        *(v60 + 4) = v65;
        sub_5D00(v61);

        v38 = v138;
      }

      else
      {

        (*(v56 + 8))(v15, v55);
      }

      v66 = type metadata accessor for CAMDirectInvocation(0);
      v67 = *(*(v66 - 8) + 56);
      v68 = v38;
      goto LABEL_66;
    }

    if (v21 == 0xD000000000000024 && 0x800000000005F0A0 == v23)
    {

      v69 = v138;
      v70 = v140;
    }

    else
    {
      v71 = sub_5B7A8();

      v69 = v138;
      v70 = v140;
      if ((v71 & 1) == 0)
      {
        if (qword_71A58 != -1)
        {
          swift_once();
        }

        v87 = sub_5B228();
        sub_5B44(v87, qword_763B8);
        v88 = v139;
        v89 = *(v139 + 16);
        v89(v7, v2, v70);
        v90 = sub_5B218();
        v91 = sub_5B4C8();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = v70;
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v142[0] = v94;
          *v93 = 136315138;
          v89(v10, v7, v92);
          v95 = sub_5B358();
          v97 = v96;
          (*(v88 + 8))(v7, v92);
          v98 = sub_2DC10(v95, v97, v142);

          *(v93 + 4) = v98;
          _os_log_impl(&dword_0, v90, v91, "Couldn't parse direct invocation %s as CAMDirectInvocation", v93, 0xCu);
          sub_5D00(v94);
        }

        else
        {

          (*(v88 + 8))(v7, v70);
        }

LABEL_65:
        v66 = type metadata accessor for CAMDirectInvocation(0);
        v67 = *(*(v66 - 8) + 56);
        v68 = v138;
LABEL_66:
        v99 = 1;
        return v67(v68, v99, 1, v66);
      }
    }

    v72 = sub_5A828();
    if (v72)
    {
      v73 = v72;
      if (*(v72 + 16) && (v74 = sub_37278(0x7865646E69, 0xE500000000000000), (v75 & 1) != 0))
      {
        sub_C0A0(*(v73 + 56) + 32 * v74, v142);

        if (swift_dynamicCast())
        {
          *v69 = v141;
          v76 = type metadata accessor for CAMDirectInvocation(0);
          swift_storeEnumTagMultiPayload();
          v67 = *(*(v76 - 8) + 56);
          v68 = v69;
LABEL_83:
          v99 = 0;
          v66 = v76;
          return v67(v68, v99, 1, v66);
        }
      }

      else
      {
      }
    }

    if (qword_71A58 != -1)
    {
      swift_once();
    }

    v77 = sub_5B228();
    sub_5B44(v77, qword_763B8);
    v78 = v139;
    v79 = *(v139 + 16);
    v79(v13, v2, v70);
    v80 = sub_5B218();
    v81 = sub_5B4C8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v142[0] = v140;
      *v82 = 136315138;
      v79(v10, v13, v70);
      v83 = sub_5B358();
      v85 = v84;
      (*(v78 + 8))(v13, v70);
      v86 = sub_2DC10(v83, v85, v142);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_0, v80, v81, "Couldn't parse direct invocation %s as CAMDirectInvocation", v82, 0xCu);
      sub_5D00(v140);
    }

    else
    {

      (*(v78 + 8))(v13, v70);
    }

    goto LABEL_65;
  }

LABEL_6:

  v26 = type metadata accessor for CAMDirectInvocation(0);
  swift_storeEnumTagMultiPayload();
  v27 = *(*(v26 - 8) + 56);
  v28 = a1;
LABEL_12:

  return v27(v28, 0, 1, v26);
}

uint64_t type metadata accessor for CAMDirectInvocation(uint64_t a1)
{
  result = qword_73028;
  if (!qword_73028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_37278(uint64_t a1, uint64_t a2)
{
  sub_5B848();
  sub_5B378();
  v4 = sub_5B868();

  return sub_37378(a1, a2, v4);
}

unint64_t sub_372F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_5B548(*(v2 + 40));

  return sub_37430(a1, v4);
}

unint64_t sub_37334(uint64_t a1)
{
  v2 = sub_5B838();

  return sub_374F8(a1, v2);
}

unint64_t sub_37378(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_5B7A8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_37430(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_387B8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_5B558();
      sub_38814(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_374F8(uint64_t a1, uint64_t a2)
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

void *sub_37564(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_724F0, &qword_5C310, &type metadata accessor for PluginAction);
  *v3 = result;
  return result;
}

void *sub_375A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_72FB0, &unk_5D1C0, &type metadata accessor for Parse);
  *v3 = result;
  return result;
}

void *sub_375EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_72F90, &qword_5D198, &type metadata accessor for UsoIdentifier);
  *v3 = result;
  return result;
}

void *sub_37630(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37C68(a1, a2, a3, *v3, &qword_72FA8, &unk_5D1B0, &qword_72588, &qword_5C6A8);
  *v3 = result;
  return result;
}

void *sub_37670(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37EF8(a1, a2, a3, *v3, &qword_72F70, &qword_5D170, &qword_72F78, &unk_5D178);
  *v3 = result;
  return result;
}

void *sub_376B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37838(a1, a2, a3, *v3, &unk_73CC0, &unk_5C8E0, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  *v3 = result;
  return result;
}

void *sub_376F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37838(a1, a2, a3, *v3, &qword_72F48, &qword_5D140, &type metadata accessor for TemplatingSection);
  *v3 = result;
  return result;
}

void *sub_37738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37A14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_37758(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37B5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_37778(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37EF8(a1, a2, a3, *v3, &qword_72F80, &qword_5D188, &qword_72F88, &qword_5D190);
  *v3 = result;
  return result;
}

void *sub_377B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37C68(a1, a2, a3, *v3, &qword_72F98, &qword_5D1A0, &qword_72FA0, &qword_5D1A8);
  *v3 = result;
  return result;
}

void *sub_377F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_37EF8(a1, a2, a3, *v3, &qword_72F38, &qword_5D118, &qword_72F40, &unk_5D120);
  *v3 = result;
  return result;
}

void *sub_37838(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5B94(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_37A14(void *result, int64_t a2, char a3, void *a4)
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
    sub_5B94(&qword_72F50, &qword_5D148);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5B94(&qword_72F58, &qword_5D150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_37B5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_5B94(&qword_72F28, &unk_5D160);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_37C68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_5B94(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5B94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_37DB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_5B94(&qword_72918, &unk_5C960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5B94(&qword_72910, &qword_5C950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_37EF8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_5B94(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_5B94(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}
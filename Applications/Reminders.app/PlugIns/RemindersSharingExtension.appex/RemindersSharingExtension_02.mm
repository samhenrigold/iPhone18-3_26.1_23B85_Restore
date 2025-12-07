uint64_t sub_10003D1F0(uint64_t a1)
{
  v23 = sub_10004AD30();
  v2 = *(v23 - 8);
  v28 = *(v2 + 64);
  __chkstk_darwin(v23, v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B950();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5, v6);
  v27 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v24 = v2;
  v8 = *(v2 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = swift_allocObject();
  v22 = xmmword_1000528D0;
  *(v10 + 1) = xmmword_1000528D0;
  v11 = *(v2 + 16);
  v12 = v23;
  v11(&v10[v9], a1, v23);
  v13._rawValue = v10;
  v25 = sub_100049FF0(v13);

  v14 = swift_allocObject();
  *(v14 + 1) = v22;
  v11(&v14[v9], a1, v12);
  v15._rawValue = v14;
  sub_10004A270(v15);

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = v26;
  v11(v26, a1, v12);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v24 + 32))(v18 + ((v8 + 24) & ~v8), v17, v12);
  v19 = v27;
  sub_10004B940();
  v20 = sub_10004B970();
  (*(v29 + 8))(v19, v30);
  return v20;
}

uint64_t sub_10003D4FC(uint64_t a1)
{
  v61 = a1;
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v53 = v5;
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B870();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6, v7);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10004ABD0();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51, v9);
  v49 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003150(&qword_100068A70, &qword_1000541C8);
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v48 - v13;
  v15 = sub_10004BA30();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = v1;
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v62 = *(v3 + 80);
  v21 = swift_allocObject();
  v52 = xmmword_1000528D0;
  *(v21 + 16) = xmmword_1000528D0;
  v57 = v3;
  v58 = v2;
  v22 = v3;
  v23 = v61;
  v24 = v2;
  v25 = *(v22 + 16);
  v25(v21 + v20, v61, v24);
  sub_10004A130();

  v26 = (*(v16 + 88))(v19, v15);
  if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.allowed(_:))
  {
    (*(v16 + 96))(v19, v15);
    v27 = v19[1];
    v48 = *v19;

    sub_100049FE0();
    v28 = sub_10004A510();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v14, 1, v28) == 1)
    {
      sub_10000A138(v14, &qword_100068A70, &qword_1000541C8);
      v30 = 0;
    }

    else
    {
      v32 = v49;
      sub_10004A500();
      (*(v29 + 8))(v14, v28);
      v30 = sub_10004ABC0();
      (*(v50 + 8))(v32, v51);
    }

    sub_100003150(&qword_100068A78, &qword_1000541D0);
    inited = swift_initStackObject();
    *(inited + 16) = v52;
    *(inited + 32) = v30;
    *(inited + 40) = 1;
    v54 = v30;
    sub_100012978(inited);
    swift_setDeallocating();
    sub_10000A138(inited + 32, &qword_100068A80, &qword_1000541D8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = [Strong viewIfLoaded];
      if (v35)
      {
        v36 = v35;
        sub_10004CA20();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v37 = ~v62;
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = [v38 viewIfLoaded];
      if (v39)
      {
        v40 = v39;
        [v39 effectiveUserInterfaceLayoutDirection];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = v55;
    v43 = v58;
    v25(v55, v23, v58);
    v44 = (v62 + 24) & v37;
    v45 = swift_allocObject();
    *(v45 + 16) = v41;
    (*(v57 + 32))(v45 + v44, v42, v43);
    v46 = v56;
    sub_10004B860();
    v47 = sub_10004B900();

    (*(v59 + 8))(v46, v60);
    return v47;
  }

  else if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:))
  {
    return 0;
  }

  else
  {
    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DC08(uint64_t a1)
{
  v32 = a1;
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v24[1] = v5;
  v27 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10004B850();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30, v6);
  v26 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BA20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v1;
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v13 = *(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000528D0;
  v29 = v3;
  v15 = *(v3 + 16);
  v31 = v2;
  v15(v14 + ((v13 + 32) & ~v13), v32, v2);
  sub_10004A0F0();

  v16 = (*(v9 + 88))(v12, v8);
  if (v16 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.allowed(_:))
  {
    (*(v9 + 96))(v12, v8);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = v27;
    v19 = v31;
    v15(v27, v32, v31);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    (*(v29 + 32))(v20 + ((v13 + 24) & ~v13), v18, v19);
    v21 = v26;
    sub_10004B840();
    v22 = sub_10004B8F0();
    (*(v28 + 8))(v21, v30);
    return v22;
  }

  else if (v16 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:))
  {
    return 0;
  }

  else
  {
    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DFB4(uint64_t a1)
{
  v32 = a1;
  v2 = sub_10004AD30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v24[1] = v5;
  v27 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10004B8E0();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30, v6);
  v25 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004BA50();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1;
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v13 = *(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000528D0;
  v29 = v3;
  v15 = *(v3 + 16);
  v31 = v2;
  v15(v14 + ((v13 + 32) & ~v13), v32, v2);
  sub_10004A1D0();

  v16 = (*(v9 + 88))(v12, v8);
  if (v16 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.allowed(_:))
  {
    (*(v9 + 96))(v12, v8);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = v27;
    v19 = v31;
    v15(v27, v32, v31);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    (*(v29 + 32))(v20 + ((v13 + 24) & ~v13), v18, v19);
    v21 = v25;
    sub_10004B8D0();
    v22 = sub_10004B930();
    (*(v28 + 8))(v21, v30);
    return v22;
  }

  else if (v16 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:))
  {
    return 0;
  }

  else
  {
    result = sub_10004CDC0();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003E35C(uint64_t a1)
{
  v3 = sub_10004AD30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v17 = v1;
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v7 = *(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 1) = xmmword_1000528D0;
  v9 = *(v4 + 16);
  v9(&v8[(v7 + 32) & ~v7], a1, v3);
  v10._rawValue = v8;
  v11 = sub_10004A080(v10);

  result = 0;
  if (v11)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = v18;
    v9(v18, a1, v3);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v4 + 32))(v15 + ((v7 + 24) & ~v7), v14, v3);

    v16 = sub_10004B910();

    return v16;
  }

  return result;
}

Class sub_10003E578(uint64_t a1, uint64_t a2)
{
  sub_100009FF0(0, &qword_100067D60, UIMenu_ptr);
  swift_beginAccess();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0;
  v8.value._object = 0;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  v2.value = 0;
  return sub_10004CA10(v7, v8, v6, v2, 0xFFFFFFFFFFFFFFFFLL, v4, v5).super.super.isa;
}

uint64_t sub_10003E600(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003150(&qword_100067FD8, &unk_100053660);
  v7 = sub_10004AD30();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000528D0;
  (*(v8 + 16))(v10 + v9, a4, v7);
  sub_10004A120();
  v12 = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a1;
  result = sub_1000469A8(v12, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v15;
  return result;
}

uint64_t sub_10003E748(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_10004AF20() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_10003E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v5 = sub_10004AD30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v33 - v11;
  v13 = sub_10004AF20();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    (*(v14 + 16))(v17, a1, v13);
    v20 = (*(v14 + 88))(v17, v13);
    if (v20 == enum case for TTRRemindersListPostponeType.none(_:) || v20 == enum case for TTRRemindersListPostponeType.today(_:) || v20 == enum case for TTRRemindersListPostponeType.tomorrow(_:) || v20 == enum case for TTRRemindersListPostponeType.weekend(_:) || v20 == enum case for TTRRemindersListPostponeType.startOfWeekday(_:))
    {
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1000528D0;
      (*(v6 + 16))(v26 + v25, v33, v5);

      sub_10004A0A0();
    }

    else
    {
      if (v20 != enum case for TTRRemindersListPostponeType.custom(_:))
      {
        result = sub_10004CDC0();
        __break(1u);
        return result;
      }

      if (qword_100066F40 != -1)
      {
        swift_once();
      }

      v27 = sub_10004C1B0();
      sub_10000D49C(v27, qword_1000685E0);
      v28 = sub_100011BA4(_swiftEmptyArrayStorage);
      sub_100014D1C("Create Reminders Show Due Date Picker", 37, 2, v28);

      v29 = sub_10004C790();
      (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
      (*(v6 + 16))(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v5);
      sub_10004C770();

      v30 = sub_10004C760();
      v31 = (*(v6 + 80) + 40) & ~*(v6 + 80);
      v32 = swift_allocObject();
      *(v32 + 2) = v30;
      *(v32 + 3) = &protocol witness table for MainActor;
      *(v32 + 4) = v19;
      (*(v6 + 32))(&v32[v31], &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      sub_100034498(0, 0, v12, &unk_100054218, v32);
    }
  }

  return result;
}

uint64_t sub_10003EC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_10004C770();
  v5[3] = sub_10004C760();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10003ED58;

  return sub_10003A5FC(a5);
}

uint64_t sub_10003ED58()
{

  v1 = sub_10004C750();

  return _swift_task_switch(sub_10003EE94, v1, v0);
}

uint64_t sub_10003EE94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003EEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a3(_swiftEmptyArrayStorage);
  }

  sub_10004A200();
}

uint64_t sub_10003EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v5 = sub_10004AD30();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000528D0;
    (*(v6 + 16))(v8 + v7, a3, v5);
    sub_10004A110();
  }

  return result;
}

uint64_t sub_10003F0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = sub_10004C790();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_10004C770();

  v11 = sub_10004C760();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;

  sub_100034498(0, 0, v8, &unk_100054200, v12);
}

uint64_t sub_10003F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_10004C770();
  v6[8] = sub_10004C760();
  v8 = sub_10004C750();
  v6[9] = v8;
  v6[10] = v7;

  return _swift_task_switch(sub_10003F330, v8, v7);
}

uint64_t sub_10003F330()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 48);
    v2 = *(Strong + 56);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_10003F47C;

    return dispatch thunk of TTRSECreateRemindersInteractorType.fetchAllHashtagLabelsAsync()(ObjectType, v2);
  }

  else
  {

    (*(v0 + 48))(_swiftEmptyArrayStorage);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10003F47C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_10003F5C8, v4, v3);
}

uint64_t sub_10003F5C8()
{

  (*(v0 + 48))(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003F644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v5 = sub_10004C1B0();
    sub_10000D49C(v5, qword_1000685E0);
    v6 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014D1C("Create Reminders Show Hashtag Editor", 36, 2, v6);

    sub_10003BC04(a3);
  }

  return result;
}

void sub_10003F728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    switch(a3)
    {
      case 2:
        goto LABEL_6;
      case 1:

        v14._countAndFlagsBits = a1;
        v14._object = a2;
        v9._rawValue = a5;
        sub_10004A1A0(v14, v9);

LABEL_7:

        return;
      case 0:
LABEL_6:

        v15._countAndFlagsBits = a1;
        v15._object = a2;
        v10._rawValue = a5;
        sub_10004A1B0(v15, v10);

        goto LABEL_7;
    }

    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v11 = sub_10004C1B0();
    sub_10000D49C(v11, qword_1000685E0);
    v12 = sub_100011BA4(_swiftEmptyArrayStorage);
    v13 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014FC0("unknown menu item state", 23, 2, v12, v13);
    __break(1u);
  }
}

uint64_t sub_10003F88C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_10004A1C0();
  }

  return result;
}

uint64_t sub_10003F910(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v6 = sub_10004AD30();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1000528D0;
    (*(v7 + 16))(&v9[v8], a3, v6);

    v10._rawValue = v9;
    if (a1)
    {
      sub_10004A070(v10);
    }

    else
    {
      sub_10004A090(v10);
    }
  }

  return result;
}

uint64_t sub_10003FA7C(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v6 = sub_10004AD30();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1000528D0;
    (*(v7 + 16))(&v9[v8], a3, v6);
    v10._rawValue = v9;
    sub_10004A0E0(a1 & 1, v10);
  }

  return result;
}

uint64_t sub_10003FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v5 = sub_10004AD30();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000528D0;
    (*(v6 + 16))(v8 + v7, a3, v5);
    sub_10004A180();
  }

  return result;
}

uint64_t sub_10003FD1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100003150(&qword_100067FD8, &unk_100053660);
    v4 = sub_10004AD30();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 1) = xmmword_1000528D0;
    (*(v5 + 16))(&v7[v6], a2, v4);
    v8._rawValue = v7;
    sub_10004A060(v8);
  }

  return result;
}

uint64_t sub_10003FE58()
{
  sub_100003414(v0 + 16);
  sub_100003414(v0 + 32);
  swift_unknownObjectRelease();
  sub_10000343C((v0 + 64));

  sub_10000A138(v0 + 152, &qword_100067678, &qword_100052980);
  sub_10000343C((v0 + 200));
  v1 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_completionState;
  v2 = sub_10004B290();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000A138(v0 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler, &qword_1000680A8, &unk_100053710);

  return v0;
}

uint64_t sub_10003FF68()
{
  sub_10003FE58();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRISECreateRemindersPresenter(uint64_t a1)
{
  result = qword_100068640;
  if (!qword_100068640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100040014(uint64_t a1)
{
  result = sub_10004B290();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100040104@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10004B830();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (sub_100049F60())
  {
    swift_unknownObjectRelease();
    sub_1000351F8(v15);
    if (v15[3])
    {
      v14 = v16;
      sub_10000343C(v15);
    }

    else
    {
      sub_10000A138(v15, &qword_1000689F8, &qword_100054108);
      v14 = 0;
    }

    sub_10004BEE0();
    v13 = sub_10004BE80();
    v8 = sub_10004A0D0();
    v9 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
    (*(v3 + 16))(a1 + v9[7], v6, v2);
    v10 = sub_10004A1F0();
    v11 = sub_10004A160();
    v12 = sub_100031DC0(v8, v11);

    a1[3] = sub_100003150(&qword_100068538, &qword_100053B60);
    a1[4] = sub_100003364(&qword_100068540, &qword_100068538, &qword_100053B60, &protocol conformance descriptor for TTRMutableTreeStorage<A, B>);
    *a1 = v12;
    result = (*(v3 + 8))(v6, v2);
    a1[5] = v13;
    a1[6] = v8;
    *(a1 + v9[8]) = v14;
    *(a1 + v9[9]) = v10 & 1;
    *(a1 + v9[10]) = 0;
  }

  else
  {

    return sub_10002F8C0(a1);
  }

  return result;
}

uint64_t sub_100040370(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004B830();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BEE0();
  v8 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  return (*(v4 + 40))(a2 + *(v8 + 28), v7, v3);
}

uint64_t sub_100040450(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004BE80();

  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100040488(uint64_t a1, uint64_t a2)
{
  sub_1000351F8(v6);
  if (v6[3])
  {
    v3 = v7;
    sub_10000343C(v6);
  }

  else
  {
    sub_10000A138(v6, &qword_1000689F8, &qword_100054108);
    v3 = 0;
  }

  v4 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  *(a2 + *(v4 + 32)) = v3;
  result = sub_10004A1F0();
  *(a2 + *(v4 + 36)) = result & 1;
  return result;
}

uint64_t sub_10004051C()
{
  v0 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BF40();
  sub_10000DAC4(v3, v6);
  sub_10002BC80(v3);
  sub_10004A350();
  sub_10004565C(&qword_100068510, &type metadata accessor for TTRSECreateRemindersViewModel.Item, &protocol conformance descriptor for TTRSECreateRemindersViewModel.Item);
  sub_10004BEA0();
  return sub_10000343C(v6);
}

uint64_t sub_10004060C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for TTRISECreateRemindersViewController(0);
    sub_10002394C(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000406B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004A960();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v4 + 104))(v7, enum case for TTREditingStateOption.InputType.unspecified(_:), v3);
    sub_100022D84(a2, v7);
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_1000407D0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v4 = sub_10004AD30();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1000528D0;
    (*(v5 + 16))(v7 + v6, a2, v4);
    sub_100023250(v7);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    (*(v5 + 8))(v7 + v6, v4);

    return swift_deallocClassInstance();
  }

  return result;
}

void sub_100040940(void *a1, void *a2)
{
  v37 = sub_100049EF0();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004A620();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13._rawValue = a1;
  v41.value._rawValue = a2;
  sub_10004A230(v13, v41);
  if (a2)
  {
    v14 = a2[2];
    if (v14)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        v17 = [Strong collectionView];
        if (!v17)
        {
          goto LABEL_16;
        }

        v18 = v17;
        [v17 setAllowsSelectionDuringEditing:1];

        v19 = [v16 collectionView];
        if (v19)
        {
          v20 = v19;
          [v19 setAllowsMultipleSelectionDuringEditing:1];

          v36 = v16;
          v21 = [v16 collectionView];
          if (v21)
          {
            v22 = v21;
            sub_10004C8D0(1, 0);

            v23 = 0;
            v25 = *(v9 + 16);
            v24 = v9 + 16;
            v26 = a2 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
            v38 = *(v24 + 56);
            v39 = v25;
            v40 = v24;
            v27 = (v24 - 8);
            v28 = (v4 + 8);
            v29 = v7;
            while (1)
            {
              v39(v12, v26, v8);
              if (sub_10004A610())
              {
                sub_100049ED0();
                v30 = [v36 collectionView];
                if (!v30)
                {
                  __break(1u);
LABEL_16:
                  __break(1u);
                  goto LABEL_17;
                }

                v31 = v29;
                v32 = v30;
                isa = sub_100049EB0().super.isa;
                [v32 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

                (*v28)(v31, v37);
                v29 = v31;
              }

              v34 = (*v27)(v12, v8);
              if (!--v14)
              {
                sub_100021400(v34);
                swift_unknownObjectRelease();
                return;
              }

              ++v23;
              v26 += v38;
            }
          }
        }

        else
        {
LABEL_17:
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

void sub_100040C68(uint64_t a1)
{
  v3 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v24 - v5;
  v7 = sub_100049FA0();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v12, a1, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 == enum case for TTRSECreateRemindersTerminationReason.otherError(_:))
  {
    (*(v8 + 96))(v12, v7);
    v14 = *v12;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      swift_errorRetain();
      sub_100011DD8(v14, v16);

      swift_unknownObjectRelease();
    }
  }

  else if (v13 == enum case for TTRSECreateRemindersTerminationReason.noSupportedList(_:))
  {
    v17 = sub_10004C790();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_10004C770();

    v18 = v1;
    v19 = sub_10004C760();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    sub_1000219E8(0, 0, v6, &unk_100054140, v20);
  }

  else
  {
    if (qword_100066F40 != -1)
    {
      swift_once();
    }

    v21 = sub_10004C1B0();
    sub_10000D49C(v21, qword_1000685E0);
    v22 = sub_100011BA4(_swiftEmptyArrayStorage);
    v23 = sub_100011BA4(_swiftEmptyArrayStorage);
    sub_100014FC0("Unknown termination reason", 26, 2, v22, v23);
    __break(1u);
  }
}

uint64_t sub_100040F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10004C770();
  v4[3] = sub_10004C760();
  v6 = sub_10004C750();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100040FEC, v6, v5);
}

uint64_t sub_100040FEC(uint64_t a1)
{
  sub_10004A020();
  *(v1 + 48) = sub_10004A590();

  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_1000410A4;

  return Promise.get()();
}

uint64_t sub_1000410A4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_100041664;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1000411C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000411C0()
{
  v1 = *(v0 + 16);
  v9._object = 0x800000010004E4B0;
  v10._countAndFlagsBits = 0xD00000000000002FLL;
  v10._object = 0x800000010004E4D0;
  v9._countAndFlagsBits = 0xD000000000000016;
  sub_10004A790(v9, v10);
  sub_10004A9F0();
  v2 = sub_10004C680();

  v3 = sub_10004C680();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];
  *(v0 + 72) = v4;

  sub_1000032DC((v1 + 64), *(v1 + 88));
  sub_100003150(&qword_100068A20, &qword_100054148);
  sub_100003150(&qword_100068A28, &qword_100054150);
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = xmmword_1000528D0;
  sub_10004AA30();
  *(v0 + 96) = 1;
  sub_10004ACC0();
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_10004140C;

  return sub_100034798(v4, v5);
}

uint64_t sub_10004140C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100041550, v3, v2);
}

uint64_t sub_100041550()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong extensionContext];
    v3 = *(v0 + 72);
    if (v2)
    {
      v4 = v2;
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      v6 = sub_100049DD0();

      [v4 cancelRequestWithError:v6];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *(v0 + 72);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100041664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100041700(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10004A720();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  sub_10004C770();
  v3[9] = sub_10004C760();
  v6 = sub_10004C750();
  v3[10] = v6;
  v3[11] = v5;

  return _swift_task_switch(sub_100041804, v6, v5);
}

uint64_t sub_100041804()
{
  if (sub_10004B220())
  {
    sub_100041EA8();
    v1 = sub_10004C680();

    v2 = [objc_opt_self() alertControllerWithTitle:0 message:v1 preferredStyle:0];
    *(v0 + 96) = v2;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 56);
      v3 = *(v0 + 64);
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      v7 = sub_10001CA58();
      sub_10004A710();
      swift_unknownObjectRelease();

      (*(v6 + 32))(v3, v4, v5);
      sub_10004C950();
      (*(v6 + 8))(v3, v5);
    }

    sub_1000032DC((*(v0 + 32) + 64), *(*(v0 + 32) + 88));
    sub_100003150(&qword_100068A20, &qword_100054148);
    sub_100003150(&qword_100068A28, &qword_100054150);
    v8 = swift_allocObject();
    *(v0 + 104) = v8;
    *(v8 + 16) = xmmword_100052630;
    sub_10004AA50();
    *(v0 + 120) = 1;
    sub_10004ACC0();
    sub_10004AA40();
    *(v0 + 121) = 0;
    sub_10004ACC0();
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_100041BD8;

    return sub_100034798(v2, v8);
  }

  else
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = [Strong extensionContext];
      if (v12)
      {
        v13 = v12;
        v14 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
        v15 = sub_100049DD0();

        [v13 cancelRequestWithError:v15];
      }

      swift_unknownObjectRelease();
    }

    v16 = *(v0 + 16);
    v17 = enum case for TTRReminderDetailEditingResult.performed(_:);
    v18 = sub_10004B0B0();
    (*(*(v18 - 8) + 104))(v16, v17, v18);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100041BD8(char a1)
{
  v2 = *v1;
  *(*v1 + 122) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100041D24, v4, v3);
}

uint64_t sub_100041D24()
{
  v1 = *(v0 + 122);
  v2 = *(v0 + 96);

  if (v1 == 2 || (*(v0 + 122) & 1) == 0)
  {
    v8 = &enum case for TTRReminderDetailEditingResult.abortedByUser(_:);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = [Strong extensionContext];
      if (v4)
      {
        v5 = v4;
        v6 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
        v7 = sub_100049DD0();

        [v5 cancelRequestWithError:v7];
      }

      swift_unknownObjectRelease();
    }

    v8 = &enum case for TTRReminderDetailEditingResult.performed(_:);
  }

  v9 = *(v0 + 16);
  v10 = *v8;
  v11 = sub_10004B0B0();
  (*(*(v11 - 8) + 104))(v9, v10, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100041EA8()
{
  v49 = sub_10004AD30();
  v1 = *(v49 - 8);
  __chkstk_darwin(v49, v2);
  v48 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10004A330();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4, v5);
  v53 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004A350();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_100003150(&qword_100068020, &qword_100053B30);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v37[-v14];
  v16 = type metadata accessor for TTRISECreateRemindersPresentationTree(0);
  __chkstk_darwin(v16 - 8, v17);
  v19 = &v37[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = v0;
  sub_10004BF40();
  sub_10000DAC4(v19, v55);
  sub_10002BC80(v19);
  sub_1000032DC(v55, v55[3]);
  sub_10004AC40();
  v20 = sub_10004CD30();

  sub_10000343C(v55);
  v54 = v20;
  sub_10004CD90();
  v21 = *(v8 + 48);
  v22 = 0;
  if (v21(v15, 1, v7) == 1)
  {
LABEL_2:

    if ((sub_10004A140() & 1) == 0)
    {
      goto LABEL_22;
    }

    if (v22 < 2)
    {
      v23 = " these new reminders?";
      v24._countAndFlagsBits = 0xD00000000000002FLL;
    }

    else
    {
      v23 = "rt for recipe mode";
      v24._countAndFlagsBits = 0xD000000000000031;
    }

    v24._object = (v23 | 0x8000000000000000);
    v35._countAndFlagsBits = 0xD000000000000042;
    v35._object = 0x800000010004F9B0;
    return sub_10004A790(v24, v35);
  }

  v22 = 0;
  v25 = v1;
  v26 = *(v8 + 32);
  v27 = (v8 + 8);
  v47 = (v50 + 11);
  v46 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestedReminder(_:);
  v45 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.remindersListItem(_:);
  v44 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.listPicker(_:);
  v40 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionHeader(_:);
  v39 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.suggestionLoading(_:);
  v43 = v50 + 12;
  v42 = (v25 + 32);
  v41 = (v25 + 8);
  ++v50;
  v38 = enum case for TTRSECreateRemindersViewModel.Item.CasesForItemCells.unknown(_:);
  while (1)
  {
    v26(v11, v15, v7);
    if (v22 < 2)
    {
      sub_10004A340();
      v28 = v51;
      v29 = (*v47)(v53, v51);
      if (v29 == v46)
      {
        (*v27)(v11, v7);
        ++v22;
        (*v50)(v53, v28);
        goto LABEL_8;
      }

      if (v29 == v45)
      {
        (*v43)(v53, v28);
        (*v42)(v48, v53, v49);
        v30 = sub_10004A100();
        (*v41)(v48, v49);
        (*v27)(v11, v7);
        if (v30)
        {

          ++v22;
        }

        goto LABEL_8;
      }

      if (v29 != v44 && v29 != v40 && v29 != v39 && v29 != v38)
      {
        break;
      }
    }

    (*v27)(v11, v7);
LABEL_8:
    sub_10004CD90();
    if (v21(v15, 1, v7) == 1)
    {
      goto LABEL_2;
    }
  }

  if (qword_100066F40 != -1)
  {
    swift_once();
  }

  v31 = sub_10004C1B0();
  sub_10000D49C(v31, qword_1000685E0);
  v32 = sub_100011BA4(_swiftEmptyArrayStorage);
  v33 = sub_100011BA4(_swiftEmptyArrayStorage);
  sub_100014FC0("Unknown item type", 17, 2, v32, v33);
  __break(1u);
LABEL_22:
  if (v22 < 2)
  {
    v34 = " Show Due Date Picker";
    v24._countAndFlagsBits = 0xD000000000000033;
  }

  else
  {
    v34 = "confirmation alert";
    v24._countAndFlagsBits = 0xD000000000000035;
  }

  v24._object = (v34 | 0x8000000000000000);
  v35._object = 0x800000010004F900;
  v35._countAndFlagsBits = 0xD000000000000032;
  return sub_10004A790(v24, v35);
}

uint64_t sub_100042520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003C414(a1, a3);
  }

  return result;
}

uint64_t sub_100042594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_10004AD30();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v5[26] = *(v7 + 64);
  v5[27] = swift_task_alloc();
  sub_10004C770();
  v5[28] = sub_10004C760();
  v9 = sub_10004C750();
  v5[29] = v9;
  v5[30] = v8;

  return _swift_task_switch(sub_100042690, v9, v8);
}

uint64_t sub_100042690()
{
  v0[21] = *(v0[22] + 104);
  v1 = swift_task_alloc();
  v0[31] = v1;
  v2 = sub_10004A780();
  *v1 = v0;
  v1[1] = sub_10004274C;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10004274C()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_10004286C, v3, v2);
}

uint64_t sub_10004286C()
{
  v1 = *(v0 + 184);

  sub_100038F00(v1, v0 + 64);
  if (*(v0 + 64))
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 192);
    v4 = *(v0 + 200);
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v7;
    *(v0 + 48) = *(v0 + 96);
    v8 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(v2, v6, v3);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    (*(v4 + 32))(v10 + v9, v2, v3);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = type metadata accessor for ReminderDetailModuleDelegate();
    v13 = swift_allocObject();
    *(v0 + 112) = v13;
    *(v13 + 16) = sub_100047DE8;
    *(v13 + 24) = v10;
    *(v13 + 32) = sub_100047E00;
    *(v13 + 40) = v11;
    *(v0 + 136) = v12;
    v14 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(v0 + 112, v5 + v14);
    swift_endAccess();
    sub_1000032DC((v5 + 64), *(v5 + 88));
    v15 = *(v0 + 16);
    v16 = sub_10004565C(&qword_1000689D0, type metadata accessor for ReminderDetailModuleDelegate, &unk_100053F14);

    sub_10002BCE0(v15, v13, v16, (v0 + 24));

    v17 = &unk_1000689D8;
    v18 = &unk_1000540F0;
    v19 = v0 + 16;
  }

  else
  {
    v17 = &qword_1000689C8;
    v18 = &unk_1000540E0;
    v19 = v0 + 64;
  }

  sub_10000A138(v19, v17, v18);

  v20 = *(v0 + 8);

  return v20();
}

void sub_100042B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v8 = sub_10004B230();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004BCC0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v39 = v12;
    v40 = v9;
    v41 = a3;
    v42 = v8;
    sub_10004A9B0();
    v21 = v20;
    v22 = objc_opt_self();
    v38[0] = v21;
    v23 = sub_10004C680();
    v24 = swift_allocObject();
    v24[2] = v19;
    v24[3] = a1;
    v24[4] = a2;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100049038;
    *(v25 + 24) = v24;
    v38[1] = v24;
    aBlock[4] = sub_10004901C;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003415C;
    aBlock[3] = &unk_1000604E0;
    v26 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v22 withActionName:v23 block:v26];

    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      sub_100003150(&qword_1000689E0, &qword_1000540F8);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100052630;
      sub_10004BCB0();
      sub_10004BCA0();
      aBlock[0] = v27;
      sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
      sub_100003150(&qword_1000689E8, &qword_100054100);
      sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100, &protocol conformance descriptor for [A]);
      sub_10004CBC0();
      sub_100003150(&qword_100067FD8, &unk_100053660);
      v28 = sub_10004AD30();
      v29 = *(v28 - 8);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1000528D0;
      (*(v29 + 16))(v31 + v30, v43, v28);
      sub_10004A0B0();

      (*(v14 + 8))(v17, v13);
      sub_1000032DC((v19 + 64), *(v19 + 88));
      v33 = v39;
      v32 = v40;
      v34 = v42;
      (*(v40 + 16))(v39, v41, v42);
      v35 = (*(v32 + 88))(v33, v34);
      if (v35 == enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
      {

        return;
      }

      if (v35 == enum case for TTRIViewControllerDismissalState.requested(_:))
      {

        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {
          v37 = v36;
          [v36 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
        }

        return;
      }
    }

    sub_10004CDC0();
    __break(1u);
  }
}

uint64_t sub_1000430AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  sub_100003150(&qword_1000683A8, &qword_100053938);
  v5[25] = swift_task_alloc();
  v6 = sub_10004A720();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v7 = sub_10004AD30();
  v5[29] = v7;
  v8 = *(v7 - 8);
  v5[30] = v8;
  v5[31] = *(v8 + 64);
  v5[32] = swift_task_alloc();
  sub_10004C770();
  v5[33] = sub_10004C760();
  v10 = sub_10004C750();
  v5[34] = v10;
  v5[35] = v9;

  return _swift_task_switch(sub_10004323C, v10, v9);
}

uint64_t sub_10004323C()
{
  v1 = *(v0[23] + 104);
  v0[36] = v1;
  v0[21] = v1;

  v2 = swift_task_alloc();
  v0[37] = v2;
  v3 = sub_10004A780();
  v0[38] = v3;
  *v2 = v0;
  v2[1] = sub_100043308;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v3, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100043308()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v6 = *v0;

  v1[22] = v2;
  v1 += 22;
  v3 = swift_task_alloc();
  v1[17] = v3;
  *v3 = v6;
  v3[1] = sub_10004345C;
  v4 = v1[16];

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v4, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_10004345C()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_1000435A0, v3, v2);
}

uint64_t sub_1000435A0()
{
  v1 = *(v0 + 192);

  sub_100038F00(v1, v0 + 64);
  if (*(v0 + 64))
  {
    v2 = *(v0 + 256);
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 192);
    v28 = *(v0 + 200);
    v29 = *(v0 + 208);
    v7 = *(v0 + 184);
    v8 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v8;
    *(v0 + 48) = *(v0 + 96);
    v9 = swift_allocObject();
    swift_weakInit();
    (*(v3 + 16))(v2, v6, v4);
    v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    (*(v3 + 32))(v11 + v10, v2, v4);
    v12 = type metadata accessor for LocationPickerModuleDelegate();
    v13 = swift_allocObject();
    *(v0 + 112) = v13;
    *(v13 + 16) = sub_100047CD8;
    *(v13 + 24) = v11;
    *(v0 + 136) = v12;
    v14 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
    swift_beginAccess();

    sub_1000455EC(v0 + 112, v7 + v14);
    swift_endAccess();
    sub_1000032DC((v7 + 64), *(v7 + 88));
    sub_10004565C(&qword_100068A30, type metadata accessor for LocationPickerModuleDelegate, &unk_100053EBC);
    v15 = sub_10004B3F0();
    v16 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v15];
    sub_1000032DC((v0 + 24), *(v0 + 48));
    sub_10004BD00();
    if ((*(v5 + 48))(v28, 1, v29) == 1)
    {
      sub_10000A138(*(v0 + 200), &qword_1000683A8, &qword_100053938);
    }

    else
    {
      v21 = *(v0 + 216);
      v20 = *(v0 + 224);
      v22 = *(v0 + 208);
      (*(v21 + 32))(v20, *(v0 + 200), v22);
      sub_10004C950();
      (*(v21 + 8))(v20, v22);
    }

    swift_getObjectType();
    v23 = [v16 presentationController];
    sub_10004BB80();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      [Strong presentViewController:v16 animated:1 completion:0];
    }

    swift_unknownObjectRelease();
    v17 = &unk_1000689D8;
    v18 = &unk_1000540F0;
    v19 = v0 + 16;
  }

  else
  {
    v17 = &qword_1000689C8;
    v18 = &unk_1000540E0;
    v19 = v0 + 64;
  }

  sub_10000A138(v19, v17, v18);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10004397C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004BCC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_100003150(&qword_1000689E0, &qword_1000540F8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100052630;
    sub_10004BCB0();
    sub_10004BCA0();
    v14 = v9;
    sub_10004565C(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    sub_100003150(&qword_1000689E8, &qword_100054100);
    sub_100003364(&qword_1000689F0, &qword_1000689E8, &qword_100054100, &protocol conformance descriptor for [A]);
    sub_10004CBC0();
    sub_100003150(&qword_100067FD8, &unk_100053660);
    v10 = sub_10004AD30();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000528D0;
    (*(v11 + 16))(v13 + v12, a2, v10);
    sub_10004A0B0();

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t sub_100043C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10004AF30();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_10004A5A0();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_10004C770();
  v5[14] = sub_10004C760();
  v9 = sub_10004C750();
  v5[15] = v9;
  v5[16] = v8;

  return _swift_task_switch(sub_100043DA8, v9, v8);
}

uint64_t sub_100043DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 0;
  *(v3 + 136) = *(*(v3 + 48) + 16);
  v5 = enum case for TTRPrivacyType.location(_:);
  *(v3 + 192) = enum case for TTRPrivacyType.notifications(_:);
  *(v3 + 196) = v5;
  v6 = enum case for TTRPrivacyType.reminderDeletion(_:);
  *(v3 + 200) = enum case for TTRPrivacyType.contacts(_:);
  *(v3 + 204) = v6;
  v7 = enum case for TTRContactsAccessAlertFeature.location(_:);
  *(v3 + 208) = enum case for TTRPrivacyType.urgentAlarms(_:);
  *(v3 + 212) = v7;
  while (1)
  {
    v8 = *(v3 + 136);
    if (v4 == v8)
    {
      break;
    }

    if (v4 >= v8)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    *(v3 + 144) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_29;
    }

    v9 = *(v3 + 192);
    v11 = *(v3 + 96);
    v10 = *(v3 + 104);
    v12 = *(v3 + 88);
    (*(v11 + 16))(v10, *(v3 + 48) + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v4, v12);
    a1 = (*(v11 + 88))(v10, v12);
    if (a1 == v9)
    {
      *(v3 + 40) = *(*(v3 + 56) + 104);
      v16 = swift_task_alloc();
      *(v3 + 152) = v16;
      v17 = sub_10004A780();
      *v16 = v3;
      v16[1] = sub_100044204;

      return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v17, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 196))
    {
      *(v3 + 32) = *(*(v3 + 56) + 104);
      v18 = swift_task_alloc();
      *(v3 + 160) = v18;
      v19 = sub_10004A780();
      *v18 = v3;
      v18[1] = sub_100044720;

      return TTRPrivacyChecker.checkAndPromptLocationAccess()(v19, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 200))
    {
      v20 = *(v3 + 212);
      v22 = *(v3 + 72);
      v21 = *(v3 + 80);
      v23 = *(v3 + 64);
      v24 = *(*(v3 + 56) + 104);
      *(v3 + 168) = v24;
      *(v3 + 24) = v24;
      (*(v22 + 104))(v21, v20, v23);

      v25 = swift_task_alloc();
      *(v3 + 176) = v25;
      a2 = sub_10004A780();
      *v25 = v3;
      v25[1] = sub_100044840;
      a1 = *(v3 + 80);
      a3 = &protocol witness table for TTRIPrivacyChecker;

      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    ++v4;
    if (a1 != *(v3 + 204))
    {
      if (a1 == *(v3 + 208))
      {
        *(v3 + 16) = *(*(v3 + 56) + 104);
        v13 = swift_task_alloc();
        *(v3 + 184) = v13;
        v14 = sub_10004A780();
        *v13 = v3;
        v13[1] = sub_1000449E0;

        return TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(v14, &protocol witness table for TTRIPrivacyChecker);
      }

      else
      {

        return sub_10004CDC0();
      }
    }
  }

  v15 = *(v3 + 8);

  return v15();
}

uint64_t sub_100044204()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100044324, v3, v2);
}

uint64_t sub_100044324(uint64_t a1, uint64_t a2, void *a3)
{
  for (i = *(v3 + 144); ; ++i)
  {
    v5 = *(v3 + 136);
    if (i == v5)
    {
      break;
    }

    if (i >= v5)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    *(v3 + 144) = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v6 = *(v3 + 192);
    v8 = *(v3 + 96);
    v7 = *(v3 + 104);
    v9 = *(v3 + 88);
    (*(v8 + 16))(v7, *(v3 + 48) + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * i, v9);
    a1 = (*(v8 + 88))(v7, v9);
    if (a1 == v6)
    {
      *(v3 + 40) = *(*(v3 + 56) + 104);
      v13 = swift_task_alloc();
      *(v3 + 152) = v13;
      v14 = sub_10004A780();
      *v13 = v3;
      v13[1] = sub_100044204;

      return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v14, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 196))
    {
      *(v3 + 32) = *(*(v3 + 56) + 104);
      v15 = swift_task_alloc();
      *(v3 + 160) = v15;
      v16 = sub_10004A780();
      *v15 = v3;
      v15[1] = sub_100044720;

      return TTRPrivacyChecker.checkAndPromptLocationAccess()(v16, &protocol witness table for TTRIPrivacyChecker);
    }

    if (a1 == *(v3 + 200))
    {
      v17 = *(v3 + 212);
      v19 = *(v3 + 72);
      v18 = *(v3 + 80);
      v20 = *(v3 + 64);
      v21 = *(*(v3 + 56) + 104);
      *(v3 + 168) = v21;
      *(v3 + 24) = v21;
      (*(v19 + 104))(v18, v17, v20);

      v22 = swift_task_alloc();
      *(v3 + 176) = v22;
      a2 = sub_10004A780();
      *v22 = v3;
      v22[1] = sub_100044840;
      a1 = *(v3 + 80);
      a3 = &protocol witness table for TTRIPrivacyChecker;

      return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(a1, a2, a3);
    }

    if (a1 != *(v3 + 204))
    {
      if (a1 == *(v3 + 208))
      {
        *(v3 + 16) = *(*(v3 + 56) + 104);
        v10 = swift_task_alloc();
        *(v3 + 184) = v10;
        v11 = sub_10004A780();
        *v10 = v3;
        v10[1] = sub_1000449E0;

        return TTRPrivacyChecker.checkAndPromptUrgentAlarmAccess()(v11, &protocol witness table for TTRIPrivacyChecker);
      }

      else
      {

        return sub_10004CDC0();
      }
    }
  }

  v12 = *(v3 + 8);

  return v12();
}

uint64_t sub_100044720()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100049030, v3, v2);
}

uint64_t sub_100044840()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);

  (*(v3 + 8))(v2, v4);

  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return _swift_task_switch(sub_100049030, v6, v5);
}

uint64_t sub_1000449E0()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100049030, v3, v2);
}

void sub_100044B04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1000032DC((v4 + 64), *(v4 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:a3 animated:a4 & 1 completion:0];
  }
}

uint64_t sub_100044BA4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100022F14();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100044C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v11 = sub_10004AD30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v15 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v24 - v17;
  v19 = sub_10004C790();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  sub_10004C770();

  v20 = sub_10004C760();
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = v9;
  (*(v12 + 32))(&v22[v21], &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  sub_100034498(0, 0, v18, a7, v22);
}

void sub_100044E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000032DC((v3 + 64), *(v3 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong presentViewController:a3 animated:1 completion:0];
  }
}

uint64_t sub_100044EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = sub_10004AD30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A198(a5, v9, &qword_100067630, &qword_100052960);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000A138(v9, &qword_100067630, &qword_100052960);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = sub_10004A150();
    (*(v11 + 8))(v14, v10);
    return v16;
  }
}

uint64_t sub_100045094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_100003150(&unk_100067618, &qword_100052940);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = sub_10004C790();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10004C770();

  v11 = sub_10004C760();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a3;
  v12[5] = v4;
  sub_100034498(0, 0, v9, &unk_100054168, v12);
}

uint64_t sub_1000451C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000452D0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000453C0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000453F8()
{
  v1 = sub_10004AD30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_1000454DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10004AD30() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_1000392CC(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_100045598()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000455EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003150(&qword_1000680A8, &unk_100053710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004565C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000456B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000456C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000457C0;

  return v6(a1);
}

uint64_t sub_1000457C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000458B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100049018;

  return v6(a1);
}

id sub_1000459B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100009FF0(0, &qword_100068A68, UIMenuElement_ptr);
  v3 = sub_10004C720();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_100045A40(uint64_t *a1, void *a2)
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

    v9 = sub_10004CC00();

    if (v9)
    {

      sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_10004CBF0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100045C78(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100045E68(v20 + 1);
    }

    v18 = v8;
    sub_100046090(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
  v11 = sub_10004CA60(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100046114(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10004CA70();

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

Swift::Int sub_100045C78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003150(&qword_100068B08, &qword_100054270);
    v2 = sub_10004CC50();
    v15 = v2;
    sub_10004CBE0();
    if (sub_10004CC10())
    {
      sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100045E68(v9 + 1);
        }

        v2 = v15;
        result = sub_10004CA60(*(v15 + 40));
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

      while (sub_10004CC10());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100045E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003150(&qword_100068B08, &qword_100054270);
  result = sub_10004CC40();
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
      result = sub_10004CA60(*(v5 + 40));
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

unint64_t sub_100046090(uint64_t a1, void *a2)
{
  sub_10004CA60(a2[5]);
  result = sub_10004CBD0();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100046114(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100045E68(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100046284();
      goto LABEL_12;
    }

    sub_1000463D4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10004CA60(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10004CA70();

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
  sub_10004CDE0();
  __break(1u);
}

id sub_100046284()
{
  v1 = v0;
  sub_100003150(&qword_100068B08, &qword_100054270);
  v2 = *v0;
  v3 = sub_10004CC30();
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

uint64_t sub_1000463D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003150(&qword_100068B08, &qword_100054270);
  result = sub_10004CC40();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_10004CA60(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_1000465E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10004AF20();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100003150(&qword_100068AD0, &qword_100054228);
  v41 = v4;
  result = sub_10004CD70();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v37 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v19 = result + 64;
    v40 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v22 = (v17 - 1) & v17;
LABEL_15:
      v25 = v21 | (v13 << 6);
      v43 = v22;
      v26 = *(v6 + 72);
      v27 = *(v10 + 48) + v26 * v25;
      if (v41)
      {
        (*v42)(v44, v27, v5);
      }

      else
      {
        (*v38)(v44, v27, v5);
      }

      v28 = *(*(v10 + 56) + 8 * v25);
      sub_10004565C(&qword_100067928, &type metadata accessor for TTRRemindersListPostponeType, &protocol conformance descriptor for TTRRemindersListPostponeType);
      result = sub_10004C650();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v42)(*(v12 + 48) + v26 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v28;
      ++*(v12 + 16);
      v6 = v39;
      v10 = v40;
      v17 = v43;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v14, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1000469A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10004AF20();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100011790(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_100046BFC();
    goto LABEL_7;
  }

  sub_1000465E8(result, a3 & 1);
  result = sub_100011790(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_10004CDF0();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_100046B44(v15, v12, a1, v21);
}

uint64_t sub_100046B44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10004AF20();
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

char *sub_100046BFC()
{
  v1 = v0;
  v32 = sub_10004AF20();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003150(&qword_100068AD0, &qword_100054228);
  v4 = *v0;
  v5 = sub_10004CD60();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
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
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

uint64_t sub_100046E6C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
    sub_100048498(&qword_100068B00, &qword_100067920, REMObjectID_ptr);
    result = sub_10004C820();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10004CC90();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100045A40(&v9, v7);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_10004CD50();
  }

  v5 = result;
  v4 = sub_10004CD50();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100046FC4()
{
  v1 = v0;
  v2 = sub_100003150(&qword_100068A08, &qword_100054118);
  __chkstk_darwin(v2 - 8, v3);
  v49 = &v41 - v4;
  v5 = sub_100003150(&qword_100068A10, &qword_100054120);
  __chkstk_darwin(v5, v6);
  v8 = &v41 - v7;
  v9 = sub_10004A960();
  v46 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10004AD30();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003150(&qword_100067F70, &unk_1000535F0);
  v51 = *(v15 - 8);
  v52 = v15;
  __chkstk_darwin(v15, v16);
  v54 = &v41 - v17;
  v18 = sub_10004A2E0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  v53 = result;
  if (result)
  {
    v43 = v14;
    v44 = v5;
    v45 = v9;
    v24 = *(v1 + 120);
    sub_10004A020();
    sub_10004A570();

    sub_10004A2D0();
    v25 = (*(v19 + 88))(v22, v18);
    if (v25 == enum case for TTRSECreateRemindersTreeViewModelUpdateContext.ViewUpdateType.incremental(_:))
    {
      (*(v19 + 96))(v22, v18);
    }

    else if (v25 != enum case for TTRSECreateRemindersTreeViewModelUpdateContext.ViewUpdateType.reload(_:))
    {
      result = sub_10004CDC0();
      __break(1u);
      return result;
    }

    v26 = v49;
    v27 = v54;
    sub_10004BF80();
    type metadata accessor for TTRISECreateRemindersViewController(0);
    sub_10002394C(v27);
    sub_10004A2F0();
    v28 = sub_100003150(&qword_100068A18, &unk_100054128);
    if ((*(*(v28 - 8) + 48))(v26, 1, v28) == 1)
    {
      sub_10000A138(v26, &qword_100068A08, &qword_100054118);
    }

    else
    {
      v42 = *(v28 + 48);
      v30 = v46;
      v29 = v47;
      v49 = v24;
      v31 = v44;
      v32 = *(v44 + 48);
      v33 = *(v47 + 32);
      v34 = v50;
      v33(v8, v26, v50);
      v35 = *(v30 + 32);
      v36 = &v8[v32];
      v37 = v45;
      v35(v36, v26 + v42, v45);
      v44 = *(v31 + 48);
      v38 = v43;
      v33(v43, v8, v34);
      v39 = v48;
      v35(v48, &v8[v44], v37);
      sub_100022D84(v38, v39);
      (*(v30 + 8))(v39, v37);
      (*(v29 + 8))(v38, v50);
    }

    sub_10004A020();
    v40.value = 2;
    sub_10004A550(v40);
    swift_unknownObjectRelease();

    return (*(v51 + 8))(v54, v52);
  }

  return result;
}

uint64_t sub_100047564(uint64_t a1)
{
  v1 = sub_100003150(&qword_100067F70, &unk_1000535F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v7 - v4;
  sub_10004BF70();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRISECreateRemindersViewController(0);
    sub_10002394C(v5);
    swift_unknownObjectRelease();
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100047694(void *a1)
{
  v2 = sub_100003150(&qword_100067630, &qword_100052960);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_100003150(&qword_100067FA0, &qword_100053B50);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v15 - v8;
  sub_1000032DC(a1, a1[3]);
  sub_10004AEE0();
  v10 = sub_10004AD30();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_10000A138(v5, &qword_100067630, &qword_100052960);
    v12 = 1;
  }

  else
  {
    sub_10004ACF0();
    (*(v11 + 8))(v5, v10);
    v12 = 0;
  }

  v13 = sub_10004AD40();
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  return sub_10004BF00();
}

void *sub_10004787C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = [result viewIfLoaded];
    if (v1)
    {
      v2 = v1;
      sub_10004CA20();
      v4 = v3;

      swift_unknownObjectRelease();
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000478FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004793C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B5FC;

  return sub_100040F54(a1, v4, v5, v6);
}

uint64_t sub_100047A1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002A6A0;

  return sub_100043C58(a1, v4, v5, v7, v6);
}

uint64_t sub_100047ADC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002A6A0;

  return sub_1000458B8(a1, v4);
}

uint64_t sub_100047BDC(uint64_t a1)
{
  v4 = *(sub_10004AD30() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_1000430AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100047CF0(uint64_t a1)
{
  v4 = *(sub_10004AD30() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_100042594(a1, v6, v7, v8, v1 + v5);
}

id sub_100047E1C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ([result isViewLoaded])
    {
      v2 = [v1 collectionView];
      swift_unknownObjectRelease();
      return v2;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_100047E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10004AD30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v19 = [objc_allocWithZone(sub_10004B2F0()) init];
  v9 = sub_10004B2D0();
  if (v9)
  {
    v10 = v9;
    sub_100038F00(a1, v20);
    if (v20[0])
    {
      sub_10000A138(v20, &qword_1000689C8, &unk_1000540E0);
      v11 = swift_allocObject();
      swift_weakInit();
      (*(v6 + 16))(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16, a1, v5);
      v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      (*(v6 + 32))(v13 + v12, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16, v5);
      type metadata accessor for AttachmentImportingControllerDelegate();
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1000481C4;
      *(v14 + 24) = v13;
      v20[3] = sub_100003150(&qword_100068A38, &qword_1000541A8);
      v20[0] = v19;
      v20[1] = v14;
      v15 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler;
      swift_beginAccess();
      v16 = v19;

      sub_1000455EC(v20, v3 + v15);
      swift_endAccess();
      sub_10004565C(&qword_100068A40, type metadata accessor for AttachmentImportingControllerDelegate, &unk_100053EE4);

      sub_10004B2E0();
      sub_1000032DC((v3 + 64), *(v3 + 88));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        [Strong presentViewController:v10 animated:1 completion:0];
      }
    }

    else
    {

      sub_10000A138(v20, &qword_1000689C8, &unk_1000540E0);
    }
  }

  else
  {
  }
}

uint64_t sub_1000481DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048230(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10004AD30() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10003E82C(a1, a2, v6, v7);
}

uint64_t sub_1000482D4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_10004AD30() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_100048384(uint64_t a1)
{
  v3 = *(sub_10004AD30() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10003EFA8(a1, v4, v5);
}

uint64_t sub_100048410(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_10004AD30() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_100048498(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009FF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004854C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_10004AD30() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1000485D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004861C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_10003F294(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000486E4()
{
  v1 = sub_10004AD30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000487B0(uint64_t a1)
{
  v4 = *(sub_10004AD30() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002A6A0;

  return sub_10003EC9C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000488A8()
{
  v1 = sub_10004AD30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100048984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_10004AD30() - 8);
  v9 = *(v4 + 16);
  v10 = v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9, v10);
}

uint64_t sub_100048A24(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100048AAC(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48, 7);
}

uint64_t sub_100048B14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B5FC;

  return sub_100035C20(a1, v4, v5, v7, v6);
}

uint64_t sub_100048C54()
{
  v1 = sub_10004AB10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10004AD30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100048DA4(uint64_t a1, uint64_t a2, void (*a3)(BOOL), uint64_t a4)
{
  v9 = *(sub_10004AB10() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10004AD30() - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_100039A50(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_100048EAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048EE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002A6A0;

  return sub_1000456C8(a1, v4);
}

uint64_t sub_10004903C()
{
  v4[3] = swift_getObjectType();
  v4[0] = v0;
  v1 = v0;
  sub_10004CE80();
  sub_10004CC20();
  sub_10004C850();
  sub_1000496B0(v3);
  return sub_100049704(v4);
}

id sub_1000490D0(void *a1)
{
  v2 = v1;
  v4 = sub_10004A380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004CE80();
  v18 = v9;
  sub_10004CC20();
  sub_10004C840();
  sub_1000496B0(v19);
  v10 = v17;
  if (v17)
  {
    v11 = *(v5 + 16);
    v11(v8, v17 + OBJC_IVAR____TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem_itemID, v4);
    v12 = objc_allocWithZone(v2);
    v11(&v12[OBJC_IVAR____TtC25RemindersSharingExtension29TTRISECreateRemindersDragItem_itemID], v8, v4);
    v16.receiver = v12;
    v16.super_class = v2;
    v13 = objc_msgSendSuper2(&v16, "init");

    (*(v5 + 8))(v8, v4);
  }

  else
  {

    return 0;
  }

  return v13;
}

void sub_10004927C()
{
  sub_10004CC70(23);
  v0 = sub_10004AAA0();
  v2 = v1;

  v3._object = 0x800000010004FCC0;
  v3._countAndFlagsBits = 0xD000000000000015;
  sub_10004C6D0(v3);
  qword_100068B20 = v0;
  *algn_100068B28 = v2;
}

uint64_t type metadata accessor for TTRISECreateRemindersDragItem(uint64_t a1)
{
  result = qword_100068B58;
  if (!qword_100068B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000493F8(uint64_t a1)
{
  result = sub_10004A380();
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

Class sub_100049570()
{
  sub_100003150(&unk_100068C30, &qword_100053BB8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000528D0;
  if (qword_100066F48 != -1)
  {
    swift_once();
  }

  v1 = *algn_100068B28;
  *(v0 + 32) = qword_100068B20;
  *(v0 + 40) = v1;

  v2.super.isa = sub_10004C710().super.isa;

  return v2.super.isa;
}

uint64_t sub_100049704(uint64_t a1)
{
  v2 = sub_100003150(&qword_1000680A8, &unk_100053710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004976C(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_10004CC70(28);

  if (qword_100066F48 != -1)
  {
    swift_once();
  }

  sub_10004C6D0(xmmword_100068B20);
  v3 = sub_10004C680();

  v4 = [v2 internalErrorWithDebugDescription:{v3, 0xD00000000000001ALL, 0x800000010004FCE0}];

  v5 = sub_100049DD0();
  (*(a1 + 16))(a1, 0, v5);

  return 0;
}

uint64_t sub_10004989C@<X0>(uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v7 = sub_10004A3B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004BB40();
  swift_allocObject();
  v13 = sub_10004BB30();
  v21[3] = v12;
  v21[4] = &protocol witness table for TTRReminderTitleAttributesNoOpInteractor;
  v20 = 0;
  v21[0] = v13;
  memset(v19, 0, sizeof(v19));
  (*(v8 + 104))(v11, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v7);
  v14 = sub_10004AF50();
  v16 = v15;
  (*(v8 + 8))(v11, v7);
  sub_100049D14(v19);
  sub_10000343C(v21);
  *&v19[0] = v14;
  *(&v19[0] + 1) = v16;
  sub_100015848(v22, v21);
  sub_100003150(&qword_100068018, &qword_100053698);
  sub_10004AEF0();
  return sub_10000343C(v22);
}

uint64_t sub_100049A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_10004A3B0();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 104))(v11, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v6, v9);
  v12 = sub_10004AF40();
  v14 = v13;
  (*(v7 + 8))(v11, v6);
  v17 = v12;
  v18 = v14;
  sub_100015848(v19, v16);
  sub_100003150(&qword_100068000, &unk_100053680);
  sub_10004AEF0();
  return sub_10000343C(v19);
}

id TTRIExtensionCreateReminderAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIExtensionCreateReminderAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIExtensionCreateReminderAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100049D14(uint64_t a1)
{
  v2 = sub_100003150(&qword_100068010, &qword_100053690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}
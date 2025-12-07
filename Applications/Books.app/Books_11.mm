uint64_t sub_100227218()
{
  v1[74] = v0;
  v2 = sub_10079FF94();
  v1[75] = v2;
  v1[76] = *(v2 - 8);
  v1[77] = swift_task_alloc();
  v3 = *(sub_1001F1160(&qword_100AF2650, &qword_10083DDF0) - 8);
  v1[78] = v3;
  v1[79] = *(v3 + 64);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  v1[82] = swift_task_alloc();
  v4 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v1[83] = v4;
  v1[84] = *(v4 - 8);
  v1[85] = swift_task_alloc();
  v1[86] = sub_1007A26F4();
  v1[87] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v1[88] = v6;
  v1[89] = v5;

  return _swift_task_switch(sub_10022742C, v6, v5);
}

uint64_t sub_10022742C(uint64_t a1)
{
  sub_10022FB30((v1 + 16));
  v2 = *(v1 + 64);
  *(v1 + 304) = *(v1 + 48);
  *(v1 + 320) = v2;
  *(v1 + 329) = *(v1 + 73);
  v4 = *(v1 + 304);
  v3 = *(v1 + 312);
  *(v1 + 720) = v4;
  *(v1 + 728) = v3;
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  *(v1 + 736) = v5;
  *(v1 + 744) = v6;
  v7 = *(v1 + 336);
  *(v1 + 752) = v7;
  *(v1 + 346) = *(v1 + 344);
  if (v7)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v1 + 760) = Strong;
    if (Strong)
    {
      v9 = swift_weakLoadStrong();
      *(v1 + 768) = v9;
      if (v9)
      {
        sub_1000077D8(v1 + 304, v1 + 448, &qword_100AD6180, &unk_10082C9B0);
        v10 = swift_task_alloc();
        *(v1 + 776) = v10;
        *v10 = v1;
        v10[1] = sub_1002277A0;
        v11 = *(v1 + 656);

        return sub_100227ED0(v11, v5, v4, v3);
      }

      sub_1000077D8(v1 + 304, v1 + 400, &qword_100AD6180, &unk_10082C9B0);

      swift_unknownObjectRelease();
      *(v1 + 528) = v4;
      *(v1 + 536) = v3;
      sub_100007840(v1 + 528, &qword_100AD4F30, &unk_100816940);
      *(v1 + 576) = v5;
      sub_100007840(v1 + 576, &qword_100AD6188, &qword_100812760);
      *(v1 + 512) = v6;
      *(v1 + 520) = v7;
      v13 = v1 + 512;
    }

    else
    {
      sub_1000077D8(v1 + 304, v1 + 352, &qword_100AD6180, &unk_10082C9B0);

      *(v1 + 560) = v4;
      *(v1 + 568) = v3;
      sub_100007840(v1 + 560, &qword_100AD4F30, &unk_100816940);
      *(v1 + 584) = v5;
      sub_100007840(v1 + 584, &qword_100AD6188, &qword_100812760);
      *(v1 + 544) = v6;
      *(v1 + 552) = v7;
      v13 = v1 + 544;
    }

    sub_1002308AC(v13);
  }

  else
  {
  }

  if (qword_100AD12B8 != -1)
  {
    swift_once();
  }

  v14 = sub_10079ACE4();
  sub_100008B98(v14, qword_100AD5FB0);
  v15 = sub_10079ACC4();
  v16 = sub_1007A29B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Unable to perform lookup. Missing state, router, and/or source rect", v17, 2u);
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_1002277A0()
{
  v1 = *v0;

  v2 = *(v1 + 712);
  v3 = *(v1 + 704);

  return _swift_task_switch(sub_1002278C0, v3, v2);
}

uint64_t sub_1002278C0()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 752);
    v5 = *(v0 + 744);

    swift_unknownObjectRelease();

    *(v0 + 496) = v5;
    *(v0 + 504) = v4;
    sub_1002308AC(v0 + 496);
    sub_100007840(v3, &unk_100AD6170, &qword_10083DEE0);
    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AD5FB0);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to perform lookup. Missing state, router, and/or source rect", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 346);
    (*(v1 + 32))(*(v0 + 680), v3, v2);
    *(v0 + 345) = v12;
    *(v0 + 784) = sub_1007A26E4();
    v14 = sub_1007A2694();

    return _swift_task_switch(sub_100227B48, v14, v13);
  }
}

uint64_t sub_100227B48()
{
  v1 = *(v0 + 728);

  v2 = *(v0 + 345) != 1 || v1 == 0;
  if (v2 || !swift_weakLoadStrong())
  {
    v3 = *(v0 + 728);
    v7 = *(v0 + 648);
    v8 = sub_10079FFA4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    v3 = *(v0 + 728);
    v4 = *(v0 + 616);
    v5 = *(v0 + 608);
    v6 = *(v0 + 600);
    (*(v5 + 104))(v4, enum case for SelectionInfo.PresentationLifecycle.removeAfterDisplay(_:), v6);
    sub_10079EFE4();

    (*(v5 + 8))(v4, v6);
  }

  *(v0 + 792) = v3;
  v9 = *(v0 + 712);
  v10 = *(v0 + 704);

  return _swift_task_switch(sub_100227CB4, v10, v9);
}

uint64_t sub_100227CB4()
{
  v11 = v0[93];
  v12 = v0[94];
  v1 = v0[84];
  v13 = v0[83];
  v2 = v0[81];
  v10 = v0[85];
  v3 = v0[80];
  v4 = v0[78];

  sub_10079EFB4();
  v5 = swift_allocObject();
  swift_weakInit();
  sub_1000077D8(v2, v3, &qword_100AF2650, &qword_10083DDF0);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_100230900(v3, v7 + v6);

  sub_100567A64(v11, v12, v10, sub_100230970, v7);

  swift_unknownObjectRelease();

  sub_100007840(v2, &qword_100AF2650, &qword_10083DDF0);
  (*(v1 + 8))(v10, v13);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100227ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  sub_1001F1160(&unk_100AF1140, &unk_100812770);
  v5[8] = swift_task_alloc();
  v6 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  v5[12] = swift_task_alloc();
  sub_1007A26F4();
  v5[13] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_100228048, v8, v7);
}

uint64_t sub_100228048()
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  v1 = v0[4];
  if (!v1)
  {

    goto LABEL_6;
  }

  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v0[2] = v1;
  sub_1001F1160(&qword_100AD6198, &qword_100812788);
  sub_100005920(&unk_100AD61A0, &qword_100AD6198, &qword_100812788, &protocol conformance descriptor for [A]);
  sub_10079FEC4();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[8];

    sub_100007840(v5, &unk_100AF1140, &unk_100812770);
LABEL_6:
    v6 = v0[12];
    v7 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
LABEL_7:
    sub_100007840(v0[12], &unk_100AD6170, &qword_10083DEE0);
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_10022839C;
    v9 = v0[6];
    v10 = v0[5];
    v11 = v0[3];

    return sub_10022D1E4(v11, v10, v9);
  }

  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[9];
  v16 = v0[10];
  (*(v16 + 32))(v14, v0[8], v15);
  sub_10079EFA4();

  (*(v16 + 8))(v14, v15);
  v17 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  v19 = v0[12];
  v20 = v0[3];

  (*(v18 + 32))(v20, v19, v17);
  (*(v18 + 56))(v20, 0, 1, v17);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10022839C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1002284BC, v3, v2);
}

uint64_t sub_1002284BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100228538()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = sub_1005675C0();
    swift_unknownObjectRelease();
    return v0 & 1;
  }

  else
  {
    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AD5FB0);
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to perform translate. Missing state or router", v5, 2u);
    }

    return 0;
  }
}

uint64_t sub_10022863C()
{
  v1[63] = v0;
  v2 = sub_10079FF94();
  v1[64] = v2;
  v1[65] = *(v2 - 8);
  v1[66] = swift_task_alloc();
  v3 = *(sub_1001F1160(&qword_100AF2650, &qword_10083DDF0) - 8);
  v1[67] = v3;
  v1[68] = *(v3 + 64);
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  v1[71] = swift_task_alloc();
  v4 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v1[72] = v4;
  v1[73] = *(v4 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = sub_1007A26F4();
  v1[76] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v1[77] = v6;
  v1[78] = v5;

  return _swift_task_switch(sub_100228850, v6, v5);
}

uint64_t sub_100228850(uint64_t a1)
{
  sub_10022FB30((v1 + 16));
  v2 = *(v1 + 112);
  *(v1 + 304) = *(v1 + 96);
  *(v1 + 320) = v2;
  *(v1 + 329) = *(v1 + 121);
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  *(v1 + 632) = v3;
  *(v1 + 640) = v4;
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  *(v1 + 648) = v5;
  *(v1 + 656) = v6;
  v7 = *(v1 + 336);
  *(v1 + 664) = v7;
  *(v1 + 346) = *(v1 + 344);
  if (v7)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v1 + 672) = Strong;
    if (Strong)
    {
      sub_1000077D8(v1 + 304, v1 + 400, &unk_100AE7C40, &qword_100812798);
      v9 = swift_task_alloc();
      *(v1 + 680) = v9;
      *v9 = v1;
      v9[1] = sub_100228B28;
      v10 = *(v1 + 568);

      return sub_100227ED0(v10, v5, v3, v4);
    }

    sub_1000077D8(v1 + 304, v1 + 352, &unk_100AE7C40, &qword_100812798);

    *(v1 + 480) = v3;
    *(v1 + 488) = v4;
    sub_100007840(v1 + 480, &qword_100AD4F30, &unk_100816940);
    *(v1 + 496) = v5;
    sub_100007840(v1 + 496, &qword_100AD6188, &qword_100812760);
    *(v1 + 464) = v6;
    *(v1 + 472) = v7;
    sub_1002308AC(v1 + 464);
  }

  else
  {
  }

  if (qword_100AD12B8 != -1)
  {
    swift_once();
  }

  v12 = sub_10079ACE4();
  sub_100008B98(v12, qword_100AD5FB0);
  v13 = sub_10079ACC4();
  v14 = sub_1007A29B4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unable to perform translate. Missing state or router", v15, 2u);
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_100228B28()
{
  v1 = *v0;

  v2 = *(v1 + 624);
  v3 = *(v1 + 616);

  return _swift_task_switch(sub_100228C48, v3, v2);
}

uint64_t sub_100228C48()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 664);
    v5 = *(v0 + 656);

    swift_unknownObjectRelease();

    *(v0 + 448) = v5;
    *(v0 + 456) = v4;
    sub_1002308AC(v0 + 448);
    sub_100007840(v3, &unk_100AD6170, &qword_10083DEE0);
    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AD5FB0);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unable to perform translate. Missing state or router", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 346);
    (*(v1 + 32))(*(v0 + 592), v3, v2);
    *(v0 + 345) = v12;
    *(v0 + 688) = sub_1007A26E4();
    v14 = sub_1007A2694();

    return _swift_task_switch(sub_100228EB8, v14, v13);
  }
}

uint64_t sub_100228EB8()
{
  v1 = *(v0 + 640);

  v2 = *(v0 + 345) != 1 || v1 == 0;
  if (v2 || !swift_weakLoadStrong())
  {
    v3 = *(v0 + 640);
    v7 = *(v0 + 560);
    v8 = sub_10079FFA4();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    v3 = *(v0 + 640);
    v4 = *(v0 + 528);
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    (*(v5 + 104))(v4, enum case for SelectionInfo.PresentationLifecycle.removeAfterDisplay(_:), v6);
    sub_10079EFE4();

    (*(v5 + 8))(v4, v6);
  }

  *(v0 + 696) = v3;
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);

  return _swift_task_switch(sub_100229024, v10, v9);
}

uint64_t sub_100229024()
{
  v1 = v0[83];
  v12 = v0[82];
  v11 = v0[74];
  v2 = v0[73];
  v13 = v0[72];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[67];

  v6 = swift_allocObject();
  swift_weakInit();
  sub_1000077D8(v3, v4, &qword_100AF2650, &qword_10083DDF0);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v8[2].isa = v6;
  sub_100230900(v4, v8 + v7);

  sub_10056769C(v12, v1, v11, sub_10023097C, v8);
  swift_unknownObjectRelease();

  sub_100007840(v3, &qword_100AF2650, &qword_10083DDF0);
  (*(v2 + 8))(v11, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100229220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v5 = sub_1007A1D04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = v16 - v11;
  sub_1000077D8(a2, v16 - v11, &qword_100AF2650, &qword_10083DDF0);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_100230900(v12, v14 + v13);
  sub_100017E74();

  *v8 = sub_1007A2D74();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  LOBYTE(a1) = sub_1007A1D34();
  result = (*(v6 + 8))(v8, v5);
  if (a1)
  {

    sub_100230B1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100229440(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_10079FFA4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000077D8(a2, v5, &qword_100AF2650, &qword_10083DDF0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100007840(v5, &qword_100AF2650, &qword_10083DDF0);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      if (swift_weakLoadStrong())
      {
        sub_10079F014();
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_100229624()
{
  v1[102] = v0;
  sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  v1[103] = swift_task_alloc();
  v1[104] = type metadata accessor for QuoteSharingView(0);
  v1[105] = swift_task_alloc();
  v2 = sub_1007979F4();
  v1[106] = v2;
  v1[107] = *(v2 - 8);
  v1[108] = swift_task_alloc();
  v3 = sub_100796504();
  v1[109] = v3;
  v1[110] = *(v3 - 8);
  v1[111] = swift_task_alloc();
  v4 = sub_10079F364();
  v1[112] = v4;
  v1[113] = *(v4 - 8);
  v1[114] = swift_task_alloc();
  v5 = sub_100799004();
  v1[115] = v5;
  v1[116] = *(v5 - 8);
  v1[117] = swift_task_alloc();
  sub_1007A26F4();
  v1[118] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v1[119] = v7;
  v1[120] = v6;

  return _swift_task_switch(sub_100229898, v7, v6);
}

uint64_t sub_100229898(uint64_t a1)
{
  sub_10022FB30((v1 + 80));
  v2 = *(v1 + 224);
  *(v1 + 480) = *(v1 + 208);
  *(v1 + 496) = v2;
  *(v1 + 512) = *(v1 + 240);
  v3 = *(v1 + 480);
  v4 = *(v1 + 488);
  *(v1 + 968) = v3;
  *(v1 + 976) = v4;
  v6 = *(v1 + 496);
  v5 = *(v1 + 504);
  *(v1 + 984) = v6;
  *(v1 + 992) = v5;
  if (v5)
  {
    v7 = *(v1 + 816);
    *(v1 + 1000) = *(v1 + 512);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v1 + 1008) = Strong;
    *(v1 + 1016) = *(v7 + 24);
    if (Strong)
    {
      v9 = *(v1 + 936);
      v10 = *(v1 + 928);
      v11 = *(v1 + 920);
      (*(v10 + 104))(v9, enum case for BooksFeatureFlag.quoteSharing(_:), v11);
      sub_1000077D8(v1 + 480, v1 + 560, &unk_100AD61B0, &unk_1008127A8);
      v12 = sub_100799154();
      (*(v10 + 8))(v9, v11);
      if (v12)
      {
        v13 = *(*(v1 + 816) + 40);
        *(v1 + 1024) = v13;
        v14 = OBJC_IVAR___REBookProviderService_bookEntity;
        swift_beginAccess();
        sub_100009864(v13 + v14, v1 + 600);
        sub_10000E3E8((v1 + 600), *(v1 + 624));
        sub_10079ECA4();
        sub_1000074E0((v1 + 600));
        v15 = objc_allocWithZone(BICDescribedImage);
        v16 = sub_1007A2214();

        v17 = [v15 initWithIdentifier:v16];
        *(v1 + 1032) = v17;

        [v17 setProcessingOptions:0];
        CGSizeScaleToScreen();
        [v17 setImageSize:?];
        [v17 setPriority:4];
        v18 = [objc_opt_self() defaultCacheManager];
        *(v1 + 1040) = v18;
        *(v1 + 16) = v1;
        *(v1 + 56) = v1 + 800;
        *(v1 + 24) = sub_100229DFC;
        v19 = swift_continuation_init();
        *(v1 + 424) = sub_1001F1160(&unk_100AE1AC0, &qword_1008127B8);
        *(v1 + 368) = _NSConcreteStackBlock;
        *(v1 + 376) = 1107296256;
        *(v1 + 384) = sub_10022B374;
        *(v1 + 392) = &unk_100A0F660;
        *(v1 + 400) = v19;
        v20 = v17;
        [v18 fetchCGImageFor:v20 forRequest:v20 completion:v1 + 368];

        return _swift_continuation_await(v1 + 16);
      }

      else
      {
        v26 = swift_task_alloc();
        *(v1 + 1136) = v26;
        *v26 = v1;
        v26[1] = sub_10022AFC0;
        v27 = *(v1 + 824);

        return sub_100227ED0(v27, v6, v3, v4);
      }
    }

    sub_1000077D8(v1 + 480, v1 + 520, &unk_100AD61B0, &unk_1008127A8);

    *(v1 + 704) = v3;
    *(v1 + 712) = v4;
    sub_100007840(v1 + 704, &qword_100AD4F30, &unk_100816940);
    *(v1 + 792) = v6;
    sub_100007840(v1 + 792, &qword_100AD6188, &qword_100812760);
  }

  if (qword_100AD12B8 != -1)
  {
    swift_once();
  }

  v21 = sub_10079ACE4();
  sub_100008B98(v21, qword_100AD5FB0);
  v22 = sub_10079ACC4();
  v23 = sub_1007A29B4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Unable to perform share. Missing state and/or router", v24, 2u);
  }

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_100229DFC()
{
  v1 = *(*v0 + 960);
  v2 = *(*v0 + 952);

  return _swift_task_switch(sub_100229F04, v2, v1);
}

uint64_t sub_100229F04()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[102];
  v6 = v0[100];
  v0[131] = v6;

  v7 = OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection;
  swift_beginAccess();
  if (!(*(v3 + 48))(v5 + v7, 1, v4))
  {
    v45 = v6;
    v46 = v0[128];
    v8 = v0[114];
    v9 = v0[113];
    v10 = v0[112];
    v11 = v0[111];
    v12 = v0[110];
    v13 = v0[109];
    (*(v9 + 16))(v8, v5 + v7, v10);
    v0[90] = sub_10079F324();
    v0[91] = v14;
    sub_1007964E4();
    sub_100206ECC();
    v0[132] = sub_1007A3494();
    v0[133] = v15;
    (*(v12 + 8))(v11, v13);

    (*(v9 + 8))(v8, v10);
    v16 = OBJC_IVAR___REBookProviderService_bookInfo;
    v17 = *(v46 + OBJC_IVAR___REBookProviderService_bookInfo);
    if (v17)
    {
      v18 = [v17 bookTitle];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1007A2254();
        v22 = v21;

        v0[134] = v20;
        v0[135] = v22;
        v23 = *(v46 + v16);
        if (v23)
        {
          v24 = [v23 bookAuthor];
          if (v24)
          {
            v25 = v24;
            v26 = sub_1007A2254();
            v28 = v27;

            v0[136] = v26;
            v0[137] = v28;
            if (v45)
            {
              v29 = [v45 image];
              if (v29)
              {
                v30 = v29;
                v31 = [v29 CGImage];
                v0[138] = v31;

                if (v31)
                {
                  sub_1007979D4();
                  [objc_allocWithZone(UIImage) initWithCGImage:v31];
                  v32 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
                  sub_1007979E4();
                  v33 = swift_task_alloc();
                  v0[139] = v33;
                  *v33 = v0;
                  v33[1] = sub_10022A390;
                  v34 = v0[108];

                  return static Backdrop.CompositeRenderer.snapshot(configuration:)(v34);
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_100AD12B8 != -1)
  {
    swift_once();
  }

  v35 = sub_10079ACE4();
  sub_100008B98(v35, qword_100AD5FB0);
  v36 = sub_10079ACC4();
  v37 = sub_1007A29B4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Missing quote sharing data to render the template view", v38, 2u);
  }

  v39 = swift_task_alloc();
  v0[141] = v39;
  *v39 = v0;
  v39[1] = sub_10022AD58;
  v40 = v0[123];
  v41 = v0[122];
  v42 = v0[121];
  v43 = v0[103];

  return sub_100227ED0(v43, v40, v42, v41);
}

uint64_t sub_10022A390(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1120) = a1;

  if (v1)
  {
    v4 = v3[108];
    v5 = v3[107];
    v6 = v3[106];

    (*(v5 + 8))(v4, v6);
    v7 = v3[120];
    v8 = v3[119];
    v9 = sub_10022B20C;
  }

  else
  {
    (*(v3[107] + 8))(v3[108], v3[106]);
    v7 = v3[120];
    v8 = v3[119];
    v9 = sub_10022A530;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10022A530()
{
  v1 = [v0[140] CIImage];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(CIContext) init];
    [v2 extent];
    v4 = [v3 createCGImage:v2 fromRect:?];

    if (v4)
    {
      v5 = v0[138];
      v6 = v0[102];

      v59 = [objc_allocWithZone(UIImage) initWithCGImage:v5];
      v7 = objc_opt_self();
      v8 = v4;
      v9 = [v7 mainScreen];
      [v9 scale];
      v11 = v10;

      v12 = [objc_allocWithZone(UIImage) initWithCGImage:v8 scale:0 orientation:v11];
      v13 = *(v6 + 96);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 16);
      v16 = v15(ObjectType, v13);
      if ((v15(ObjectType, v13) & 1) == 0)
      {
        (*(*(v13 + 8) + 8))(ObjectType);
      }

      v61 = v0[140];
      v56 = v0[137];
      v55 = v0[136];
      v53 = *(v0 + 66);
      v54 = *(v0 + 67);
      v62 = v0[138];
      v63 = v0[129];
      v66 = v0[123];
      v64 = v0[121];
      v65 = v0[122];
      v17 = v0[105];
      v18 = v0[104];
      v19 = v0[102];
      v20 = swift_allocObject();
      *(v20 + 16) = v16 & 1;
      *(v20 + 24) = v19;
      v57 = *(v0 + 63);
      *v17 = swift_getKeyPath();
      sub_1001F1160(&qword_100AD61C8, &qword_1008127F0);
      swift_storeEnumTagMultiPayload();
      v21 = v17 + v18[5];
      *(v0 + 1144) = 0;
      v60 = v59;
      v58 = v12;

      sub_10079DFE4();
      v22 = v0[93];
      *v21 = *(v0 + 736);
      *(v21 + 1) = v22;
      v23 = v17 + v18[6];
      *(v0 + 1145) = 0;
      sub_10079DFE4();
      v24 = v0[95];
      *v23 = *(v0 + 752);
      *(v23 + 1) = v24;
      v25 = v18[7];
      v0[101] = 0;
      sub_10079DFE4();
      *(v17 + v25) = *(v0 + 48);
      v26 = v17 + v18[8];
      *v26 = v53;
      *(v26 + 1) = v54;
      *(v26 + 4) = v55;
      *(v26 + 5) = v56;
      *(v26 + 6) = v60;
      *(v26 + 7) = v58;
      *(v26 + 8) = sub_100230BBC;
      *(v26 + 9) = v20;
      v27 = objc_allocWithZone(sub_1001F1160(&qword_100AD61D0, &qword_1008127F8));
      v28 = sub_10079CBC4();
      v29 = sub_1007A2214();
      v30 = sub_1007A2214();
      v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

      v32 = sub_1007A2214();
      v33 = objc_opt_self();
      v34 = [v33 actionWithTitle:v32 style:1 handler:0];

      [v31 addAction:v34];
      v35 = swift_allocObject();
      *(v35 + 16) = v57;
      *(v35 + 32) = v28;
      swift_unknownObjectRetain();
      v36 = v28;
      v37 = sub_1007A2214();
      v0[58] = sub_100230C08;
      v0[59] = v35;
      v0[54] = _NSConcreteStackBlock;
      v0[55] = 1107296256;
      v0[56] = sub_100201C54;
      v0[57] = &unk_100A0F6D8;
      v38 = _Block_copy(v0 + 54);

      v39 = [v33 actionWithTitle:v37 style:0 handler:v38];
      _Block_release(v38);

      [v31 addAction:v39];
      sub_1005670B0(v31, 1, 0, 0);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v0[86] = v64;
      v0[87] = v65;
      sub_100007840((v0 + 86), &qword_100AD4F30, &unk_100816940);
      v0[98] = v66;
      sub_100007840((v0 + 98), &qword_100AD6188, &qword_100812760);

      v40 = v0[1];

      return v40();
    }

    v42 = v0[140];
    v43 = v0[138];
  }

  else
  {
    v42 = v0[140];
    v43 = v0[138];
  }

  if (qword_100AD12B8 != -1)
  {
    swift_once();
  }

  v44 = sub_10079ACE4();
  sub_100008B98(v44, qword_100AD5FB0);
  v45 = sub_10079ACC4();
  v46 = sub_1007A29B4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Missing quote sharing data to render the template view", v47, 2u);
  }

  v48 = swift_task_alloc();
  v0[141] = v48;
  *v48 = v0;
  v48[1] = sub_10022AD58;
  v49 = v0[123];
  v50 = v0[122];
  v51 = v0[121];
  v52 = v0[103];

  return sub_100227ED0(v52, v49, v51, v50);
}

uint64_t sub_10022AD58()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_10022AE78, v3, v2);
}

uint64_t sub_10022AE78()
{
  v1 = v0[129];
  v2 = v0[124];
  v3 = v0[103];

  v5 = v2(v4);
  sub_100568090(v5, v3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100007840(v3, &unk_100AD6170, &qword_10083DEE0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10022AFC0()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_10022B0E0, v3, v2);
}

uint64_t sub_10022B0E0()
{
  v1 = v0[124];
  v2 = v0[103];

  v4 = v1(v3);
  sub_100568090(v4, v2);
  swift_unknownObjectRelease();

  sub_100007840(v2, &unk_100AD6170, &qword_10083DEE0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10022B20C()
{
  if (qword_100AD12B8 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AD5FB0);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing quote sharing data to render the template view", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 1128) = v5;
  *v5 = v0;
  v5[1] = sub_10022AD58;
  v6 = *(v0 + 984);
  v7 = *(v0 + 976);
  v8 = *(v0 + 968);
  v9 = *(v0 + 824);

  return sub_100227ED0(v9, v6, v8, v7);
}

uint64_t sub_10022B374(uint64_t a1, uint64_t a2)
{
  **(*(*sub_10000E3E8((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  swift_unknownObjectRetain();

  return swift_continuation_resume();
}

uint64_t sub_10022B3DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100568090(a4, v7);
  return sub_100007840(v7, &unk_100AD6170, &qword_10083DEE0);
}

uint64_t sub_10022B4D0(char a1)
{
  *(v2 + 1056) = v1;
  *(v2 + 681) = a1;
  sub_1007A26F4();
  *(v2 + 1064) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 1072) = v4;
  *(v2 + 1080) = v3;

  return _swift_task_switch(sub_10022B570, v4, v3);
}

uint64_t sub_10022B570(uint64_t a1)
{
  sub_10022FB30((v1 + 304));
  v2 = *(v1 + 520);
  *(v1 + 624) = *(v1 + 504);
  *(v1 + 640) = v2;
  *(v1 + 656) = *(v1 + 536);
  *(v1 + 665) = *(v1 + 545);
  v3 = *(v1 + 488);
  *(v1 + 592) = *(v1 + 472);
  *(v1 + 608) = v3;
  if (!*(v1 + 616) || (v4 = *(v1 + 640), v5 = *(v1 + 648), Strong = swift_weakLoadStrong(), (*(v1 + 1088) = Strong) == 0))
  {

LABEL_8:
    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100AD5FB0);
    v10 = sub_10079ACC4();
    v11 = sub_1007A29B4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to perform add highlight. Missing state and/or annotation provider", v12, 2u);
    }

    goto LABEL_13;
  }

  v7 = *(v1 + 1056);
  v8 = swift_unknownObjectWeakLoadStrong();
  *(v1 + 1096) = v8;
  *(v1 + 1104) = *(v7 + 72);
  if (!v8)
  {
    sub_1000077D8(v1 + 592, v1 + 784, &unk_100AD60F0, &unk_100812710);

    sub_100007840(v1 + 592, &unk_100AD60F0, &unk_100812710);
    goto LABEL_8;
  }

  if (*(v1 + 681) == 6 && v5)
  {

    sub_10079EFB4();
    swift_unknownObjectRelease();

LABEL_14:
    v13 = *(v1 + 8);

    return v13(v4, v5);
  }

  v15 = *(v1 + 560);
  *(v1 + 992) = v15;
  *(v1 + 976) = *(v1 + 544);
  v16 = v15;
  if (v15 != 255)
  {
    v17 = *(v1 + 984);
    v18 = *(v1 + 976);
    sub_1000077D8(v1 + 976, v1 + 1000, &unk_100AD6100, &qword_100812720);
    v19 = swift_task_alloc();
    *(v1 + 1112) = v19;
    *v19 = v1;
    v19[1] = sub_10022BABC;

    return sub_10022C09C(v18, v17, v16 & 1);
  }

  sub_10022FB30((v1 + 16));
  v20 = *(v1 + 200);
  *(v1 + 761) = *(v1 + 257);
  v21 = *(v1 + 248);
  v22 = *(v1 + 216);
  *(v1 + 736) = *(v1 + 232);
  *(v1 + 752) = v21;
  *(v1 + 704) = v20;
  *(v1 + 720) = v22;
  *(v1 + 688) = *(v1 + 184);
  v23 = *(v1 + 712);
  if (!v23 || (v24 = *(v1 + 704), v25 = *(v1 + 720), v26 = *(v1 + 728), *(v1 + 1024) = *(v1 + 184), (v27 = *(v1 + 1032)) == 0))
  {

    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v30 = sub_10079ACE4();
    sub_100008B98(v30, qword_100AD5FB0);
    v31 = sub_10079ACC4();
    v32 = sub_1007A29B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to perform add highlight. Missing updated state or state CFI", v33, 2u);
    }

    sub_10079EFB4();
    swift_unknownObjectRelease();

LABEL_13:
    v4 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v35 = *(v1 + 1024);
  swift_getObjectType();
  sub_1000077D8(v1 + 688, v1 + 880, &unk_100AD60F0, &unk_100812710);
  sub_1000077D8(v1 + 1024, v1 + 1040, &qword_100AD4F30, &unk_100816940);
  v28 = swift_task_alloc();
  *(v1 + 1120) = v28;
  *v28 = v1;
  v28[1] = sub_10022BEB4;
  v29 = *(v1 + 681);

  return dispatch thunk of AnnotationProviding.highlight(location:selectedText:representativeText:style:mergeWithExisting:updateCurrentHighlightStyle:)(v35, v27, v24, v23, v25, v26, v29, 1);
}

uint64_t sub_10022BABC()
{
  v1 = *v0;

  sub_100007840(v1 + 976, &unk_100AD6100, &qword_100812720);
  v2 = *(v1 + 1080);
  v3 = *(v1 + 1072);

  return _swift_task_switch(sub_10022BBF8, v3, v2);
}

uint64_t sub_10022BBF8(uint64_t a1)
{
  sub_10022FB30((v1 + 16));
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  *(v1 + 720) = *(v1 + 216);
  *(v1 + 736) = v3;
  *(v1 + 752) = *(v1 + 248);
  *(v1 + 761) = *(v1 + 257);
  *(v1 + 688) = *(v1 + 184);
  *(v1 + 704) = v2;
  v4 = *(v1 + 712);
  if (v4 && (v5 = *(v1 + 704), v6 = *(v1 + 720), v7 = *(v1 + 728), *(v1 + 1024) = *(v1 + 184), (v8 = *(v1 + 1032)) != 0))
  {
    v18 = *(v1 + 1024);
    swift_getObjectType();
    sub_1000077D8(v1 + 688, v1 + 880, &unk_100AD60F0, &unk_100812710);
    sub_1000077D8(v1 + 1024, v1 + 1040, &qword_100AD4F30, &unk_100816940);
    v9 = swift_task_alloc();
    *(v1 + 1120) = v9;
    *v9 = v1;
    v9[1] = sub_10022BEB4;
    v10 = *(v1 + 681);

    return dispatch thunk of AnnotationProviding.highlight(location:selectedText:representativeText:style:mergeWithExisting:updateCurrentHighlightStyle:)(v18, v8, v5, v4, v6, v7, v10, 1);
  }

  else
  {

    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AD5FB0);
    v12 = sub_10079ACC4();
    v13 = sub_1007A29B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to perform add highlight. Missing updated state or state CFI", v14, 2u);
    }

    sub_10079EFB4();
    swift_unknownObjectRelease();

    v15 = *(v1 + 8);

    return v15(0, 0);
  }
}

uint64_t sub_10022BEB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1128) = a1;
  *(v4 + 1136) = a2;

  sub_100007840(v4 + 1024, &qword_100AD4F30, &unk_100816940);
  sub_100007840(v4 + 688, &unk_100AD60F0, &unk_100812710);
  v5 = *(v3 + 1080);
  v6 = *(v3 + 1072);

  return _swift_task_switch(sub_10022C018, v6, v5);
}

uint64_t sub_10022C018()
{

  sub_10079EFB4();
  swift_unknownObjectRelease();

  v1 = v0[142];
  v2 = v0[141];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_10022C09C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 88) = a3;
  *(v4 + 16) = a1;
  sub_1007A26F4();
  *(v4 + 40) = sub_1007A26E4();
  v6 = sub_1007A2694();
  *(v4 + 48) = v6;
  *(v4 + 56) = v5;

  return _swift_task_switch(sub_10022C13C, v6, v5);
}

uint64_t sub_10022C13C()
{
  v1 = *(v0 + 88);
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (v1)
  {
    if (Strong)
    {
      v3 = *(v0 + 24);
      v4 = swift_task_alloc();
      *(v0 + 80) = v4;
      *v4 = v0;
      v4[1] = sub_10022C454;
      v5 = *(v0 + 16);

      return BookContentModule.select(annotationID:)(v5, v3);
    }

    goto LABEL_10;
  }

  if (!Strong)
  {
LABEL_10:

    v9 = *(v0 + 8);

    return v9();
  }

  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_10022C2B0;
  v8 = *(v0 + 16);

  return BookContentModule.select(cfi:)(v8, v6);
}

uint64_t sub_10022C2B0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10022C3F4, v3, v2);
}

uint64_t sub_10022C3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022C454()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1002311FC, v3, v2);
}

uint64_t sub_10022C598()
{
  v1[42] = v0;
  sub_1007A26F4();
  v1[43] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[44] = v3;
  v1[45] = v2;

  return _swift_task_switch(sub_10022C630, v3, v2);
}

uint64_t sub_10022C630(uint64_t a1)
{
  sub_10022FB30((v1 + 16));
  v2 = *(v1 + 288);
  *(v1 + 312) = v2;
  v3 = *(v1 + 280);
  *(v1 + 304) = v3;
  *(v1 + 368) = v3;
  if (v3 && (v4 = *(v1 + 336), Strong = swift_unknownObjectWeakLoadStrong(), *(v1 + 376) = Strong, *(v1 + 384) = *(v4 + 72), Strong))
  {
    sub_1000077D8(v1 + 304, v1 + 320, &qword_100AD60D8, &qword_1008126E0);
    v6 = swift_task_alloc();
    *(v1 + 392) = v6;
    *v6 = v1;
    v6[1] = sub_10022C81C;

    return sub_10022FCF0(v2 & 1);
  }

  else
  {

    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AD5FB0);
    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to perform remove highlights. Missing state and/or annotation provider", v11, 2u);
    }

    v12 = *(v1 + 8);

    return v12();
  }
}

uint64_t sub_10022C81C(char a1)
{
  v2 = *v1;
  *(*v1 + 313) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return _swift_task_switch(sub_10022C944, v4, v3);
}

uint64_t sub_10022C944()
{
  v1 = *(v0 + 313);

  if (v1 == 1)
  {
    swift_getObjectType();
    sub_1007A08E4();
    sub_100007840(v0 + 304, &qword_100AD60D8, &qword_1008126E0);
  }

  else
  {
    sub_100007840(v0 + 304, &qword_100AD60D8, &qword_1008126E0);
    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AD5FB0);
    v3 = sub_10079ACC4();
    v4 = sub_1007A29D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "User cancelled remove highlights", v5, 2u);
    }
  }

  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10022CACC()
{
  v1[40] = v0;
  sub_1007A26F4();
  v1[41] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[42] = v3;
  v1[43] = v2;

  return _swift_task_switch(sub_10022CB64, v3, v2);
}

uint64_t sub_10022CB64(uint64_t a1)
{
  sub_10022FB30(v1 + 2);
  v2 = v1[37];
  v1[44] = v2;
  v1[38] = v2;
  if (v2 && (v3 = v1[40], Strong = swift_unknownObjectWeakLoadStrong(), v1[45] = Strong, v1[46] = *(v3 + 72), Strong))
  {
    sub_1000077D8((v1 + 38), (v1 + 39), &qword_100AD60E8, &qword_100812700);
    v5 = swift_task_alloc();
    v1[47] = v5;
    *v5 = v1;
    v5[1] = sub_10022CD40;

    return sub_100230318();
  }

  else
  {

    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AD5FB0);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to perform remove notes. Missing state and/or annotation provider", v10, 2u);
    }

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_10022CD40(char a1)
{
  v2 = *v1;
  *(*v1 + 392) = a1;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);

  return _swift_task_switch(sub_10022CE68, v4, v3);
}

uint64_t sub_10022CE68(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 392) == 1)
  {
    v3 = *(v2 + 352);
    ObjectType = swift_getObjectType();
    v5 = swift_task_alloc();
    *(v2 + 384) = v5;
    *v5 = v2;
    v5[1] = sub_10022D03C;
    v6 = *(v2 + 368);

    return dispatch thunk of AnnotationProviding.deleteAssociatedNotesFromAnnotationsWithUUIDs(_:)(v3, ObjectType, v6);
  }

  else
  {
    sub_100007840(v2 + 304, &qword_100AD60E8, &qword_100812700);

    if (qword_100AD12B8 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AD5FB0);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "User cancelled remove notes", v10, 2u);
    }

    swift_unknownObjectRelease();
    v11 = *(v2 + 8);

    return v11();
  }
}

uint64_t sub_10022D03C()
{
  v1 = *v0;

  sub_100007840(v1 + 304, &qword_100AD60E8, &qword_100812700);
  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_10022D178, v3, v2);
}

uint64_t sub_10022D178()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10022D1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_1001F1160(&unk_100AF1140, &unk_100812770);
  v4[7] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  sub_1007A26F4();
  v4[11] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_10022D320, v7, v6);
}

uint64_t sub_10022D320()
{
  if (v0[5] && (Strong = swift_weakLoadStrong(), (v0[14] = Strong) != 0))
  {
    v2 = v0[5];
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_10022D480;
    v4 = v0[4];

    return BookContentModule.rects(forCFI:clippedToBounds:)(v4, v2, 1);
  }

  else
  {

    v5 = v0[3];
    v6 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10022D480(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return _swift_task_switch(sub_10022D5A8, v4, v3);
}

uint64_t sub_10022D5A8()
{
  v1 = v0[16];

  if (!v1)
  {

    goto LABEL_5;
  }

  v0[2] = v0[16];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  sub_1001F1160(&qword_100AD6198, &qword_100812788);
  sub_100005920(&unk_100AD61A0, &qword_100AD6198, &qword_100812788, &protocol conformance descriptor for [A]);
  sub_10079FEC4();

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[7];

    sub_100007840(v5, &unk_100AF1140, &unk_100812770);
LABEL_5:
    v6 = v0[3];
    v7 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    goto LABEL_7;
  }

  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  (*(v9 + 32))(v8, v0[7], v10);
  sub_10079EFA4();

  (*(v9 + 8))(v8, v10);
LABEL_7:

  v11 = v0[1];

  return v11();
}

uint64_t sub_10022D7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1007A1714();
  if (v4)
  {
    v5 = v3;
    sub_1002060B4();
    v6 = sub_1007A28A4();
    swift_unknownObjectRelease();
    if (v6)
    {
      return v5;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10022D854@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v10 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = sub_10079F364();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v12, &qword_100AD61D8, &qword_100812800);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);

    swift_unknownObjectRelease();
    result = sub_100007840(v12, &qword_100AD61D8, &qword_100812800);
LABEL_11:
    v28 = 0;
    v31 = 0;
    v32 = 0;
    v22 = 0;
    v21 = 0;
    goto LABEL_12;
  }

  v18 = a2;
  v35 = a1;
  (*(v14 + 32))(v16, v12, v13);
  v19 = sub_1007A1714();
  v21 = v20;
  if (!v20)
  {

    swift_unknownObjectRelease();
    sub_100007840(v35, &qword_100AD61D8, &qword_100812800);
    result = (*(v14 + 8))(v16, v13);
    v28 = 0;
    v31 = 0;
    v32 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v22 = v19;
  v38 = sub_10079F324();
  v39 = v23;
  sub_1002060B4();
  v24 = sub_1007A28A4();

  v25 = v35;
  if ((v24 & 1) == 0)
  {

    swift_unknownObjectRelease();

    v33 = v25;
LABEL_10:
    sub_100007840(v33, &qword_100AD61D8, &qword_100812800);
    result = (*(v14 + 8))(v16, v13);
    goto LABEL_11;
  }

  v26 = v18;
  if ((BookProviderService.areCitationsAllowed.getter() & 1) == 0)
  {

    swift_unknownObjectRelease();

    v33 = v35;
    goto LABEL_10;
  }

  v27 = sub_10079F314();
  v37 = a3;
  v28 = v27;
  v29 = v26;
  v31 = v30;
  v32 = sub_10079F334();

  swift_unknownObjectRelease();
  sub_100007840(v35, &qword_100AD61D8, &qword_100812800);
  result = (*(v14 + 8))(v16, v13);
LABEL_12:
  *a6 = v28;
  *(a6 + 8) = v31;
  *(a6 + 16) = v32;
  *(a6 + 24) = v22;
  *(a6 + 32) = v21;
  *(a6 + 40) = 0;
  return result;
}

void *sub_10022DBC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  if (sub_1007A16F4() & 1) != 0 && (BookProviderService.areCitationsAllowed.getter())
  {
    v33 = a3;
    v34 = a4;
    v35 = a5;
    sub_1000077D8(a1, v17, &qword_100AD61D8, &qword_100812800);
    v18 = sub_10079F364();
    v19 = *(v18 - 8);
    v32 = *(v19 + 48);
    v20 = v32(v17, 1, v18);
    v31 = v19;
    if (v20 == 1)
    {
      sub_100007840(v17, &qword_100AD61D8, &qword_100812800);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = sub_10079F314();
      v22 = v26;
      (*(v19 + 8))(v17, v18);
    }

    sub_1000077D8(a1, v14, &qword_100AD61D8, &qword_100812800);
    if (v32(v14, 1, v18) == 1)
    {
      sub_100007840(a1, &qword_100AD61D8, &qword_100812800);

      sub_100007840(v14, &qword_100AD61D8, &qword_100812800);
      v23 = 0;
    }

    else
    {
      v27 = v18;
      v23 = sub_10079F334();

      sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
      (*(v31 + 8))(v14, v27);
    }

    v28 = v35;
    v29 = v33;
    result = swift_allocObject();
    result[2] = v34;
    result[3] = v28;
    result[4] = v29;
    v24 = sub_100230D0C;
  }

  else
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);

    swift_unknownObjectRelease();
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    result = 0;
  }

  *a6 = v21;
  a6[1] = v22;
  a6[2] = v23;
  a6[3] = v24;
  a6[4] = result;
  return result;
}

uint64_t sub_10022DED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v8 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v8 - 8);
  v10 = &v50[-v9];
  v11 = sub_10079F364();
  __chkstk_darwin(v11);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v14;
  sub_1000077D8(a1, v10, &qword_100AD61D8, &qword_100812800);
  if ((*(v15 + 48))(v10, 1, v11) == 1)
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    swift_unknownObjectRelease();
    result = sub_100007840(v10, &qword_100AD61D8, &qword_100812800);
LABEL_8:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_32;
  }

  (*(v15 + 32))(v13, v10, v11);
  v59 = sub_10079F324();
  v60 = v17;
  sub_1002060B4();
  v18 = sub_1007A28A4();

  if ((v18 & 1) == 0)
  {
    swift_unknownObjectRelease();
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    result = (*(v15 + 8))(v13, v11);
    goto LABEL_8;
  }

  sub_10079F344();
  if (v19 && (v20 = sub_1007A08A4(), , v20))
  {
    v21 = sub_1007A1A54();

    v53 = v21 & 1;
  }

  else
  {
    v53 = 0;
  }

  v34 = sub_10079F344();
  v56 = a2;
  v57 = a1;
  v54 = v15;
  v55 = v11;
  if (v35)
  {
    v52 = v35;
    v58 = v34;
    v36 = 1;
LABEL_24:
    v51 = v36;
    goto LABEL_25;
  }

  v37 = sub_10079F2F4();
  if (!v38)
  {
LABEL_23:
    v58 = 0;
    v52 = 0;
    v36 = 255;
    goto LABEL_24;
  }

  v58 = v37;
  v39 = v38;

  v40 = sub_10079F314();
  if (v41)
  {
    if (v58 == v40 && v39 == v41)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v43 = v39;
      v44 = sub_1007A3AB4();

      if ((v44 & 1) == 0)
      {
        v51 = 0;
        v52 = v43;
        goto LABEL_25;
      }
    }

    goto LABEL_23;
  }

  v52 = v39;

  v51 = 0;
LABEL_25:
  v22 = sub_10079F314();
  v23 = v45;
  v24 = sub_10079F324();
  v25 = v46;
  v47 = sub_10079F2E4();
  if (v48)
  {
    v26 = v47;
  }

  else
  {
    v26 = 0;
  }

  if (v48)
  {
    v27 = v48;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = sub_10079F344();
  v29 = v49;
  swift_unknownObjectRelease();
  sub_100007840(v57, &qword_100AD61D8, &qword_100812800);
  result = (*(v54 + 8))(v13, v55);
  v31 = v52;
  v33 = v53;
  v30 = v58;
  v32 = v51;
LABEL_32:
  *a5 = v22;
  *(a5 + 8) = v23;
  *(a5 + 16) = v24;
  *(a5 + 24) = v25;
  *(a5 + 32) = v26;
  *(a5 + 40) = v27;
  *(a5 + 48) = v28;
  *(a5 + 56) = v29;
  *(a5 + 64) = v33;
  *(a5 + 72) = v30;
  *(a5 + 80) = v31;
  *(a5 + 88) = v32;
  return result;
}

uint64_t sub_10022E2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_10079F364();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v8, &qword_100AD61D8, &qword_100812800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    swift_unknownObjectRelease();
    sub_100007840(v8, &qword_100AD61D8, &qword_100812800);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  v27[0] = sub_10079F354();
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AD6800, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v13 = sub_1007A28A4();

  if ((v13 & 1) == 0)
  {
    swift_unknownObjectRelease();
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  v23 = v9;
  v24 = a1;
  result = sub_10079F354();
  v15 = result;
  v16 = *(result + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (result + 40);
    while (v17 < *(v15 + 16))
    {
      v19 = *v18;
      v27[0] = *(v18 - 1);
      v27[1] = v19;

      v20 = sub_10022EBCC(v27, a2, v25, v26);

      if ((v20 & 1) == 0)
      {
        ++v17;
        v18 += 2;
        if (v16 != v17)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = sub_10079F354();
    swift_unknownObjectRelease();
    sub_100007840(v24, &qword_100AD61D8, &qword_100812800);
    (*(v10 + 8))(v12, v23);
    return v21;
  }

  return result;
}

uint64_t sub_10022E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v6 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10079F364();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v8, &qword_100AD61D8, &qword_100812800);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    swift_unknownObjectRelease();
    sub_100007840(v8, &qword_100AD61D8, &qword_100812800);
    return 0;
  }

  v29 = a1;
  v30 = a2;
  v27 = v10;
  v28 = v9;
  (*(v10 + 32))(v12, v8, v9);
  v26 = v12;
  result = sub_10079F354();
  v14 = result;
  v15 = *(result + 16);
  if (!v15)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_15:

    v34[0] = v18;
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_100005920(&qword_100AD6800, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
    v25 = sub_1007A28A4();
    swift_unknownObjectRelease();
    sub_100007840(v29, &qword_100AD61D8, &qword_100812800);
    (*(v27 + 8))(v26, v28);
    if (v25)
    {
      return v18;
    }

    return 0;
  }

  v16 = 0;
  v17 = (result + 40);
  v18 = _swiftEmptyArrayStorage;
  v19 = v30;
  v31 = *(result + 16);
  while (v16 < *(v14 + 16))
  {
    v21 = *(v17 - 1);
    v20 = *v17;
    v34[0] = v21;
    v34[1] = v20;

    if (sub_10022EBCC(v34, v19, v32, v33))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if ((result & 1) == 0)
      {
        result = sub_1003BD0CC(0, v18[2] + 1, 1);
        v19 = v30;
        v18 = v35;
      }

      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_1003BD0CC((v22 > 1), v23 + 1, 1);
        v19 = v30;
        v18 = v35;
      }

      v18[2] = v23 + 1;
      v24 = &v18[2 * v23];
      v24[4] = v21;
      v24[5] = v20;
      v15 = v31;
    }

    else
    {
    }

    ++v16;
    v17 += 2;
    if (v15 == v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_10022E9A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;

  sub_1001F1160(&qword_100AD6200, &qword_100812820);
  sub_100206ECC();
  sub_100005920(&unk_100AEA0C0, &qword_100AD6200, &qword_100812820, &protocol conformance descriptor for Range<A>);
  sub_1007A34A4();

  swift_beginAccess();
  v8 = *(v6 + 16);

  return v8 >= a1 && v8 <= a2;
}

uint64_t sub_10022EB38(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_1002060B4();
    v12 = sub_1007A28A4();
    if (v12)
    {
      v12 = swift_beginAccess();
      v13 = *(a8 + 16);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        *(a8 + 16) = v15;
        if (v15 > a10)
        {
          *a7 = 1;
        }
      }
    }
  }

  return v12;
}

uint64_t sub_10022EBCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1007A08A4();
  if (result)
  {
    v5 = sub_1007A1A54();

    return v5 & 1;
  }

  return result;
}

void sub_10022EC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a7;
  v56 = a8;
  v53 = a5;
  v54 = a6;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v49 = sub_100796CF4();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v46 = sub_1007A21D4();
  v14 = *(v46 - 8);
  __chkstk_darwin(v46);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = sub_1001F1160(&qword_100AD60E0, &qword_1008126E8);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v45 - v23;
  (*(v21 + 16))(&v45 - v23, a1, v20, v22);
  v25 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v48 = swift_allocObject();
  (*(v21 + 32))(v48 + v25, v24, v20);
  sub_1007A2154();
  sub_100796C94();
  v26 = v46;
  (*(v14 + 16))(v16, v19, v46);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v29 = v47;
  v30 = v49;
  (*(v9 + 16))(v47, v13, v49);
  sub_1007A22D4(v16, 0, 0, v28, v29, "Cancel button", 13, 2);
  (*(v9 + 8))(v13, v30);
  (*(v14 + 8))(v19, v26);
  v31 = sub_1007A2214();
  v32 = sub_1007A2214();
  v33 = [objc_opt_self() alertControllerWithTitle:v31 message:v32 preferredStyle:1];

  v34 = swift_allocObject();
  *(v34 + 16) = sub_100230284;
  v35 = v48;
  *(v34 + 24) = v48;
  v36 = v35;

  v37 = sub_1007A2214();

  v61 = sub_100230300;
  v62 = v34;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100201C54;
  v60 = &unk_100A0F520;
  v38 = _Block_copy(&aBlock);

  v39 = objc_opt_self();
  v40 = [v39 actionWithTitle:v37 style:1 handler:v38];
  _Block_release(v38);

  [v33 addAction:v40];
  v41 = swift_allocObject();
  *(v41 + 16) = sub_100230284;
  *(v41 + 24) = v36;

  v42 = sub_1007A2214();
  v61 = sub_100230310;
  v62 = v41;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100201C54;
  v60 = &unk_100A0F570;
  v43 = _Block_copy(&aBlock);

  v44 = [v39 actionWithTitle:v42 style:2 handler:v43];
  _Block_release(v43);

  [v33 addAction:v44];
  sub_1005670B0(v33, 1, 0, 0);
}

uint64_t sub_10022F200(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  v5 = sub_10079F364();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v4, &qword_100AD61D8, &qword_100812800);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    sub_100007840(v4, &qword_100AD61D8, &qword_100812800);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v13[0] = sub_10079F324();
    v13[1] = v9;
    sub_1002060B4();
    v10 = sub_1007A28A4();

    if (v10)
    {
      v11 = sub_10079F324();
      sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
      (*(v6 + 8))(v8, v5);
      return v11;
    }

    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

uint64_t sub_10022F458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796504();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_10079F364();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(a1, v9, &qword_100AD61D8, &qword_100812800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    result = sub_100007840(v9, &qword_100AD61D8, &qword_100812800);
LABEL_6:
    v30 = 0;
    v20 = 0;
    v22 = 0;
    v26 = 0;
    v28 = 0;
    v31 = 0;
    goto LABEL_7;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = sub_10079F324();
  v17 = sub_10022E9A4(1, 3, v15, v16);

  if (!v17)
  {
    sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
    result = (*(v11 + 8))(v13, v10);
    goto LABEL_6;
  }

  v18 = sub_10079F314();
  v35 = a1;
  v36 = v18;
  v34 = v4;
  v20 = v19;
  v21 = sub_10079F334();
  v33 = v5;
  v22 = v21;
  v23 = sub_10079F324();
  v32 = v24;
  v38 = v23;
  v39 = v24;
  v25 = v37;
  sub_1007964E4();
  sub_100206ECC();
  v26 = sub_1007A3494();
  v28 = v27;
  (*(v33 + 8))(v25, v34);

  v29 = sub_10079F304();
  sub_100007840(v35, &qword_100AD61D8, &qword_100812800);
  result = (*(v11 + 8))(v13, v10);
  v30 = v36;
  v31 = (v29 & 1) == 0;
LABEL_7:
  *a2 = v30;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28;
  *(a2 + 40) = v31;
  return result;
}

double sub_10022F7BC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50 = a8;
  v47 = a6;
  v16 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  sub_1000077D8(a1, &v39 - v17, &qword_100AD61D8, &qword_100812800);
  v49 = sub_10022F200(v18);
  v48 = v19;
  v20 = swift_unknownObjectRetain();
  v46 = sub_10022D7B4(v20, a5, a7);
  v45 = v21;
  sub_1000077D8(a1, v18, &qword_100AD61D8, &qword_100812800);
  sub_10022F458(v18, v51);
  v44 = v52;
  v43 = v53;
  sub_1000077D8(a1, v18, &qword_100AD61D8, &qword_100812800);
  swift_unknownObjectRetain();
  v22 = a2;
  sub_10022D854(v18, v22, a3, a5, a7, v54);
  v42 = v55;
  v41 = v56;
  sub_1000077D8(a1, v18, &qword_100AD61D8, &qword_100812800);
  swift_unknownObjectRetain();
  sub_10022DBC4(v18, v22, a3, a5, a7, v57);
  v40 = v58;
  sub_1000077D8(a1, v18, &qword_100AD61D8, &qword_100812800);
  swift_unknownObjectRetain();
  v23 = v47;
  v24 = v50;
  sub_10022DED0(v18, a4, v59);
  sub_1000077D8(a1, v18, &qword_100AD61D8, &qword_100812800);
  swift_unknownObjectRetain();
  v25 = sub_10022E2F4(v18, a4, v23, v24);
  LOBYTE(a7) = v26;
  sub_1000077D8(a1, v18, &qword_100AD61D8, &qword_100812800);
  v27 = sub_10022E638(v18, a4, v23, v24);
  sub_100007840(a1, &qword_100AD61D8, &qword_100812800);
  v28 = v51[0];
  v29 = v51[1];
  v30 = v54[0];
  v31 = v54[1];
  v32 = v57[0];
  v33 = v57[1];
  v34 = v48;
  *a9 = v49;
  *(a9 + 8) = v34;
  v35 = v45;
  *(a9 + 16) = v46;
  *(a9 + 24) = v35;
  *(a9 + 32) = v28;
  *(a9 + 48) = v29;
  *(a9 + 64) = v44;
  *(a9 + 72) = v43;
  *(a9 + 80) = v30;
  *(a9 + 96) = v31;
  *(a9 + 112) = v42;
  *(a9 + 120) = v41;
  *(a9 + 128) = v32;
  *(a9 + 144) = v33;
  *(a9 + 160) = v40;
  v36 = v59[3];
  *(a9 + 200) = v59[2];
  *(a9 + 216) = v36;
  *(a9 + 232) = *v60;
  *(a9 + 241) = *&v60[9];
  result = *v59;
  v38 = v59[1];
  *(a9 + 168) = v59[0];
  *(a9 + 184) = v38;
  *(a9 + 264) = v25;
  *(a9 + 272) = a7;
  *(a9 + 280) = v27;
  return result;
}

void *sub_10022FB30@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  if (swift_weakLoadStrong())
  {
    sub_10079F124();
  }

  else
  {
    v10 = sub_10079F364();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor_contentSelection;
  swift_beginAccess();
  sub_1000077D8(v2 + v11, v6, &qword_100AD61D8, &qword_100812800);
  swift_beginAccess();
  sub_100230C14(v9, v2 + v11);
  swift_endAccess();
  sub_100225944(v6);
  sub_100007840(v6, &qword_100AD61D8, &qword_100812800);
  sub_100007840(v9, &qword_100AD61D8, &qword_100812800);
  return memcpy(a1, (v2 + OBJC_IVAR____TtCC5Books19BookReaderPresenter26ContentSelectionInteractor__state), 0x120uLL);
}

uint64_t sub_10022FCF0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 161) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_10022FD90, v4, v3);
}

uint64_t sub_10022FD90()
{
  v11 = v0;
  v1 = *(v0 + 161);
  if (v1 == 1 && (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 56) = Strong) != 0))
  {
    sub_10051CB90(&v7);
    *(v0 + 64) = v7;
    *(v0 + 80) = v8;
    *(v0 + 88) = v9;
    *(v0 + 104) = v10;
    *(v0 + 112) = sub_1007A26E4();
    v4 = sub_1007A2694();
    *(v0 + 120) = v4;
    *(v0 + 128) = v3;

    return _swift_task_switch(sub_10022FEAC, v4, v3);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(v1 ^ 1u);
  }
}

uint64_t sub_10022FEAC(uint64_t a1)
{
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v7 = *(v1 + 64);
  v2 = *(v1 + 56);
  v3 = sub_1007A26E4();
  *(v1 + 136) = v3;
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 48) = v9;
  *(v4 + 64) = v2;
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  *v5 = v1;
  v5[1] = sub_10022FFE0;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 160, v3, &protocol witness table for MainActor, 0xD000000000000037, 0x80000001008C4E90, sub_100230280, v4, &type metadata for Bool);
}

uint64_t sub_10022FFE0()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1002301A4, v3, v2);
}

uint64_t sub_1002301A4()
{

  *(v0 + 162) = *(v0 + 160);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100230210, v1, v2);
}

uint64_t sub_100230210()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 162);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100230284(uint64_t a1)
{
  v1 = a1;
  sub_1001F1160(&qword_100AD60E0, &qword_1008126E8);

  return sub_1002E5F40(v1);
}

uint64_t sub_100230318()
{
  v1[2] = v0;
  v1[3] = sub_1007A26F4();
  v1[4] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1002303B4, v3, v2);
}

uint64_t sub_1002303B4()
{
  v10 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_10051CEA4(&v6);
    *(v0 + 64) = v6;
    *(v0 + 80) = v7;
    *(v0 + 88) = v8;
    *(v0 + 104) = v9;
    *(v0 + 112) = sub_1007A26E4();
    v3 = sub_1007A2694();
    *(v0 + 120) = v3;
    *(v0 + 128) = v2;

    return _swift_task_switch(sub_1002304C4, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(0);
  }
}

uint64_t sub_1002304C4(uint64_t a1)
{
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v7 = *(v1 + 64);
  v2 = *(v1 + 56);
  v3 = sub_1007A26E4();
  *(v1 + 136) = v3;
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 48) = v9;
  *(v4 + 64) = v2;
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  *v5 = v1;
  v5[1] = sub_1002305F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 160, v3, &protocol witness table for MainActor, 0xD000000000000037, 0x80000001008C4E90, sub_1002311E8, v4, &type metadata for Bool);
}

uint64_t sub_1002305F8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1002307BC, v3, v2);
}

uint64_t sub_1002307BC()
{

  *(v0 + 161) = *(v0 + 160);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100230828, v1, v2);
}

uint64_t sub_100230828()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 161);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100230900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF2650, &qword_10083DDF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002309FC()
{
  v1 = *(sub_1001F1160(&qword_100AF2650, &qword_10083DDF0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_10079FFA4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

void sub_100230BBC(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = *(*(v2 + 24) + 96);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 8))(ObjectType);
  }
}

uint64_t sub_100230C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD61D8, &qword_100812800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100230C84()
{
  result = qword_100AD61E8;
  if (!qword_100AD61E8)
  {
    sub_10079F364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD61E8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BookMovementState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100230D74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100230DBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t initializeBufferWithCopyOfBuffer for ScrubberPageViewState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100230E40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_100230E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100230ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100230EFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100230F44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100230FAC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100230FC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100231008(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_100231060(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100231084(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002310CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100231138(uint64_t a1, int a2)
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

uint64_t sub_100231180(uint64_t result, int a2, int a3)
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

uint64_t sub_100231200()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD6208);
  sub_100008B98(v0, qword_100AD6208);
  return sub_10079ACD4();
}

uint64_t sub_100231284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10079E764();
  isa = sub_1007A2024().super.isa;

  v7 = sub_1007A2214();
  v8 = [(objc_class *)isa valueForKeyPath:v7];

  if (v8)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_100007840(v16, &unk_100AD5B40, &unk_100811300);
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = v13;
LABEL_9:
  if (a1 == 0xD00000000000001DLL && 0x80000001008C5090 == a2)
  {
    v10 = v9;
  }

  else
  {
    v11 = sub_1007A3AB4();
    v10 = v11 & v9;
    if ((v11 & 1) == 0 && ((v9 ^ 1) & 1) == 0)
    {
      v10 = sub_100231284(0xD00000000000001DLL, 0x80000001008C5090, a3);
    }
  }

  return v10 & 1;
}

uint64_t sub_100231428@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1007A2214();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_100796BB4();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100007840(v11, &unk_100AD5B40, &unk_100811300);
    v8 = sub_100796BB4();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1002315AC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000077D8(a1, v4, &unk_100ADB5C0, &unk_100816880);
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = sub_100796AF4().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = sub_1007A2214();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_100007840(a1, &unk_100ADB5C0, &unk_100816880);
}

uint64_t sub_10023174C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1007A2214();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_100796BB4();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100007840(v11, &unk_100AD5B40, &unk_100811300);
    v8 = sub_100796BB4();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1002318D0(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_1000077D8(a1, v4, &unk_100ADB5C0, &unk_100816880);
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = sub_100796AF4().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = sub_1007A2214();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_100007840(a1, &unk_100ADB5C0, &unk_100816880);
}

uint64_t sub_100231A70()
{
  v1 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v1 - 8);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = sub_100796BB4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = *&v0[OBJC_IVAR___BKAppStoreReviewManager_remoteConfig];
  if ((sub_100231284(0xD00000000000001DLL, 0x80000001008C5090, v14) & 1) == 0)
  {
    goto LABEL_4;
  }

  v48 = v10;
  v15 = v14;
  sub_10023174C(v6);
  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    sub_100007840(v6, &unk_100ADB5C0, &unk_100816880);
    v14 = v15;
LABEL_4:
    if (qword_100AD12C0 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AD6208);
    v18 = v0;
    v19 = sub_10079ACC4();
    v20 = sub_1007A29D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = sub_100231284(0xD00000000000001DLL, 0x80000001008C5090, v14) & 1;

      _os_log_impl(&_mh_execute_header, v19, v20, "feature disabled %{BOOL}d", v21, 8u);
    }

    else
    {
    }

    v22 = 0;
    return v22 & 1;
  }

  v47 = v8;
  v24 = *(v8 + 32);
  v24(v13, v6, v7);
  sub_100231428(v3);
  if (v16(v3, 1, v7) == 1)
  {
    sub_100007840(v3, &unk_100ADB5C0, &unk_100816880);
    if (qword_100AD12C0 != -1)
    {
      swift_once();
    }

    v25 = sub_10079ACE4();
    sub_100008B98(v25, qword_100AD6208);
    v26 = sub_10079ACC4();
    v27 = sub_1007A29D4();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v47;
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "AppStore review never shown before", v30, 2u);
    }

    (*(v29 + 8))(v13, v7);
    v22 = 1;
  }

  else
  {
    v31 = v48;
    v24(v48, v3, v7);
    v32 = swift_unknownObjectWeakInit();
    v33 = sub_100232048(v32);
    swift_unknownObjectWeakDestroy();
    if (qword_100AD12C0 != -1)
    {
      swift_once();
    }

    v34 = sub_10079ACE4();
    sub_100008B98(v34, qword_100AD6208);
    v35 = v0;
    v36 = sub_10079ACC4();
    v37 = sub_1007A29D4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136315394;
      v40 = sub_100234750();
      if (v41)
      {
        v42 = v41;
      }

      else
      {
        v40 = 0x6E776F6E6B6E753CLL;
        v42 = 0xE90000000000003ELL;
      }

      v43 = sub_1000070F4(v40, v42, &v49);

      *(v38 + 4) = v43;
      *(v38 + 12) = 1024;
      *(v38 + 14) = v33 & 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "should attempt to present store view for location %s -- %{BOOL}d", v38, 0x12u);
      sub_1000074E0(v39);
    }

    v44 = v47;
    if (v33)
    {
      v22 = sub_100796B04();
    }

    else
    {
      v22 = 0;
    }

    v45 = *(v44 + 8);
    v45(v31, v7);
    v45(v13, v7);
  }

  return v22 & 1;
}

uint64_t sub_100232048(uint64_t a1)
{
  v1 = sub_1001F1160(&qword_100AD6268, &qword_100812B38);
  __chkstk_darwin(v1 - 8);
  v3 = &v36[-v2];
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  sub_100234750();
  if (!v12)
  {
    goto LABEL_5;
  }

  sub_100797E04();
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v7, v10, v4);
    v15 = (*(v5 + 88))(v7, v4);
    if (v15 == enum case for LocationType.postReading(_:) || v15 == enum case for LocationType.fromContextualActionSheet(_:) || v15 == enum case for LocationType.fromReadingNowFinish(_:) || v15 == enum case for LocationType.fromAddToFinishCollection(_:) || v15 == enum case for LocationType.fromLibraryFinish(_:))
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v20 + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);

        v23 = "BKLibraryAssetMarkedLocation";
        v24 = 0xD00000000000002ALL;
LABEL_26:
        v27 = v23 | 0x8000000000000000;
LABEL_27:
        v13 = sub_100231284(v24, v27, v22);

LABEL_39:
        (*(v5 + 8))(v10, v4);
        return v13 & 1;
      }
    }

    else
    {
      if (v15 != enum case for LocationType.postPurchase(_:))
      {
        if (v15 == enum case for LocationType.postWTR(_:))
        {
          swift_beginAccess();
          v28 = swift_unknownObjectWeakLoadStrong();
          if (!v28)
          {
            goto LABEL_38;
          }

          v29 = v28;
          v22 = *(v28 + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);

          v30 = "appStoreReview.addingToWTREnabled";
        }

        else
        {
          if (v15 == enum case for LocationType.postReadingGoalChange(_:))
          {
            swift_beginAccess();
            v31 = swift_unknownObjectWeakLoadStrong();
            if (v31)
            {
              v32 = v31;
              v22 = *(v31 + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);

              v23 = "ateContentEnabled";
              v24 = 0xD00000000000002DLL;
              goto LABEL_26;
            }

            goto LABEL_38;
          }

          if (v15 != enum case for LocationType.postRatingAContent(_:))
          {
            v35 = *(v5 + 8);
            v35(v10, v4);
            v35(v7, v4);
            v13 = 0;
            return v13 & 1;
          }

          swift_beginAccess();
          v33 = swift_unknownObjectWeakLoadStrong();
          if (!v33)
          {
            goto LABEL_38;
          }

          v34 = v33;
          v22 = *(v33 + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);

          v30 = "appStoreReview.rateContentEnabled";
        }

        v27 = (v30 - 32) | 0x8000000000000000;
        v24 = 0xD000000000000021;
        goto LABEL_27;
      }

      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        v22 = *(v25 + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig);

        v23 = "appStoreReview.featureEnabled";
        v24 = 0xD00000000000001ELL;
        goto LABEL_26;
      }
    }

LABEL_38:
    v13 = 0;
    goto LABEL_39;
  }

  sub_100007840(v3, &qword_100AD6268, &qword_100812B38);
LABEL_5:
  v13 = 1;
  return v13 & 1;
}

id AppStoreReviewManager.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___BKAppStoreReviewManager_remoteConfig;
  sub_10079E784();
  *&v0[v2] = sub_10079E774();
  v3 = [objc_opt_self() defaultBag];
  v4 = [objc_allocWithZone(AMSSharedStoreReview) initWithBag:v3];

  *&v1[OBJC_IVAR___BKAppStoreReviewManager_sharedStoreReview] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AppStoreReviewManager();
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_100233D8C();

  return v5;
}

void sub_1002326A0(void *a1, void *a2)
{
  if (sub_100231A70())
  {
    v5 = [*(v2 + OBJC_IVAR___BKAppStoreReviewManager_sharedStoreReview) shouldAttemptReview];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v11[4] = sub_1002346FC;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1002332B0;
    v11[3] = &unk_100A0FCC0;
    v8 = _Block_copy(v11);
    v9 = a2;
    v10 = a1;

    [v5 addFinishBlock:v8];
    _Block_release(v8);
  }
}

void sub_1002327E0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v56 = a5;
  v63 = a4;
  v6 = sub_1001F1160(&qword_100AD6268, &qword_100812B38);
  __chkstk_darwin(v6 - 8);
  v57 = &v51 - v7;
  v8 = sub_100797E24();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v51 - v11;
  v12 = sub_1007A1C54();
  v64 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007A1CA4();
  v61 = *(v15 - 8);
  v62 = v15;
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1007A1CC4();
  v60 = *(v65 - 8);
  __chkstk_darwin(v65);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v51 - v21;
  v23 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v23 - 8);
  v25 = &v51 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    sub_100796BA4();
    v28 = sub_100796BB4();
    (*(*(v28 - 8) + 56))(v25, 0, 1, v28);
    sub_1002315AC(v25);
  }

  if (a1)
  {
    v29 = a1;
    if (![v29 BOOLValue])
    {

      return;
    }

    v53 = v29;
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = *(v30 + OBJC_IVAR___BKAppStoreReviewManager_sharedStoreReview);

      [v32 didAttemptPromptReview];
    }

    sub_100017E74();
    v52 = sub_1007A2D74();
    sub_1007A1CB4();
    [objc_opt_self() noticeTotalDuration];
    sub_1007A1D24();
    v60 = *(v60 + 8);
    (v60)(v19, v65);
    v33 = swift_allocObject();
    v34 = v63;
    *(v33 + 16) = v63;
    aBlock[4] = sub_100234708;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A0FD10;
    v35 = _Block_copy(aBlock);
    v36 = v34;

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000227D4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    v37 = v52;
    sub_1007A2D04();
    _Block_release(v35);

    (*(v64 + 8))(v14, v12);
    (*(v61 + 8))(v17, v62);
    (v60)(v22, v65);
    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (!v38)
    {

      return;
    }

    sub_100234750();
    v39 = v53;
    if (v40)
    {
      v41 = v57;
      sub_100797E04();
      v43 = v58;
      v42 = v59;
      if ((*(v58 + 48))(v41, 1, v59) == 1)
      {

        sub_100007840(v41, &qword_100AD6268, &qword_100812B38);
        return;
      }

      v44 = *(v43 + 32);
      v45 = v55;
      v44(v55, v41, v42);
      v46 = v56;
      if (v56)
      {
        v47 = v54;
        (*(v43 + 16))(v54, v45, v42);
        v48 = (*(v43 + 80) + 16) & ~*(v43 + 80);
        v49 = swift_allocObject();
        v44((v49 + v48), v47, v42);
        v50 = v46;
        sub_1007983B4();

        (*(v43 + 8))(v45, v42);
        return;
      }

      (*(v43 + 8))(v45, v42);
    }
  }
}

uint64_t sub_100232F98(uint64_t a1, uint64_t a2)
{
  v3 = sub_100797E24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100797DF4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100797DE4();
  sub_1001F1160(&qword_100AD5B18, &qword_100811358);
  v12 = sub_100797B54();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10080B690;
  (*(v13 + 104))(v15 + v14, enum case for DataEventTrait.onlyOnce(_:), v12);
  sub_1000227D4(&qword_100AD6270, &type metadata accessor for LocationData, &protocol conformance descriptor for LocationData);
  sub_100797B34();

  (*(v8 + 8))(v11, v7);
  sub_100798294();
  sub_1000227D4(&qword_100AD6278, &type metadata accessor for AppReviewPromptRequestEvent, &protocol conformance descriptor for AppReviewPromptRequestEvent);
  memset(v17, 0, sizeof(v17));
  sub_100797B44();
  return sub_100007840(v17, &unk_100AD5B40, &unk_100811300);
}

void sub_1002332B0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1002334EC(void *a1)
{
  v2 = v1;
  v4 = sub_100797E24();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = [a1 userInfo];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_1007A2044();

  v12 = BLDownloadQueuePropertyIsPurchase;
  v18 = BLDownloadQueuePropertyIsPurchase;
  type metadata accessor for BLDownloadQueueProperty(0);
  sub_1000227D4(&qword_100AD3FD8, type metadata accessor for BLDownloadQueueProperty, &unk_10080E1DC);
  v13 = v12;
  sub_1007A36B4();
  if (!*(v11 + 16) || (v14 = sub_10000E2A4(v19), (v15 & 1) == 0))
  {

    sub_10002899C(v19);
LABEL_9:
    v20 = 0u;
    v21 = 0u;
    return sub_100007840(&v20, &unk_100AD5B40, &unk_100811300);
  }

  sub_100007484(*(v11 + 56) + 32 * v14, &v20);
  sub_10002899C(v19);

  if (!*(&v21 + 1))
  {
    return sub_100007840(&v20, &unk_100AD5B40, &unk_100811300);
  }

  result = swift_dynamicCast();
  if (result)
  {
    if (v19[0])
    {
      v17 = sub_100231284(0xD00000000000001ELL, 0x80000001008C50B0, *(v2 + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig));
      (*(v5 + 104))(v8, enum case for LocationType.postPurchase(_:), v4);
      sub_100233F24(v17 & 1, v8);
      return (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

uint64_t sub_100233A48(void *a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD6268, &qword_100812B38);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_100797E24();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 userInfo];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = sub_1007A2044();

  v22[1] = 0xD00000000000001CLL;
  v22[2] = 0x80000001008C5040;
  sub_1007A36B4();
  if (!*(v14 + 16) || (v15 = sub_10000E2A4(&v23), (v16 & 1) == 0))
  {

    sub_10002899C(&v23);
LABEL_9:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_10;
  }

  sub_100007484(*(v14 + 56) + 32 * v15, &v24);
  sub_10002899C(&v23);

  if (!*(&v25 + 1))
  {
LABEL_10:
    v18 = &unk_100AD5B40;
    v19 = &unk_100811300;
    v20 = &v24;
    return sub_100007840(v20, v18, v19);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_100797E04();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v11, v6, v7);
    v21 = sub_100231284(0xD00000000000002ALL, 0x80000001008C5060, *(v2 + OBJC_IVAR___BKAppStoreReviewManager_remoteConfig));
    sub_100233F24(v21 & 1, v11);
    return (*(v8 + 8))(v11, v7);
  }

  v18 = &qword_100AD6268;
  v19 = &qword_100812B38;
  v20 = v6;
  return sub_100007840(v20, v18, v19);
}

void sub_100233D8C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"userMarkedBookAsFinishedWithNotification:" name:BKLibraryAssetMarkedAsFinishedNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"userPurchasedContentWithNotification:" name:BLDownloadQueuePurchaseSucceededNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"userCustomizedReadingGolsWithNotification:" name:BCCustomizingReadingGoalsNotification object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:"userDidRateContentWithNotification:" name:BSUICloudAssetRateContentNotification object:0];

  v6 = [v1 defaultCenter];
  [v6 addObserver:v0 selector:"userAddContentToWTRCollectionWithNotification:" name:BKLibraryAssetAddToWTRCollectionNotification object:0];
}

void sub_100233F24(char a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_1007A1C54();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1007A1CA4();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100797E24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100017E74();
    v18 = sub_1007A2D74();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v9);
    v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v10 + 32))(v15 + v14, v12, v9);
    aBlock[4] = sub_10023462C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A0FC70;
    v16 = _Block_copy(aBlock);

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000227D4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    v17 = v18;
    sub_1007A2D94();
    _Block_release(v16);

    (*(v21 + 8))(v5, v3);
    (*(v6 + 8))(v8, v20);
  }
}

void sub_1002342C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100796BA4();
    v8 = sub_100796BB4();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    sub_1002318D0(v5);
    sub_100797E14();
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = sub_1007A2214();

    v11 = sub_1007A2214();
    [v9 setObject:v10 forKey:v11];

    sub_1001F1160(&qword_100AD6260, &qword_100812B30);
    v12 = sub_100797E24();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10080B690;
    (*(v13 + 104))(v15 + v14, enum case for LocationType.postReading(_:), v12);
    v16 = sub_1003F7B1C(a2, v15);
    swift_setDeallocating();
    (*(v13 + 8))(v15 + v14, v12);
    swift_deallocClassInstance();
    if (!v16)
    {
      v17 = [objc_opt_self() sceneManager];
      [v17 attemptToPresentStoreReview];

      v7 = v17;
    }
  }
}

id AppStoreReviewManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreReviewManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10023462C()
{
  v1 = *(sub_100797E24() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1002342C8(v2, v3);
}

unint64_t sub_100234698()
{
  result = qword_100ADA680;
  if (!qword_100ADA680)
  {
    sub_1001F1234(&unk_100AD7CA0, &unk_100812B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA680);
  }

  return result;
}

id sub_100234708()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 requestReviewInScene:v1];
}

uint64_t sub_100234750()
{
  v0 = sub_100797E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1007A2214();
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  sub_1000077D8(&v14, &v12, &unk_100AD5B40, &unk_100811300);
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v11 <= 3)
      {
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v7 = &enum case for LocationType.fromReadingNowFinish(_:);
          }

          else
          {
            v7 = &enum case for LocationType.fromLibraryFinish(_:);
          }

          goto LABEL_32;
        }

        if (!v11)
        {
          v7 = &enum case for LocationType.postReading(_:);
          goto LABEL_32;
        }

        if (v11 == 1)
        {
          v7 = &enum case for LocationType.fromContextualActionSheet(_:);
          goto LABEL_32;
        }
      }

      else
      {
        if (v11 <= 5)
        {
          if (v11 == 4)
          {
            v7 = &enum case for LocationType.fromAddToFinishCollection(_:);
          }

          else
          {
            v7 = &enum case for LocationType.postPurchase(_:);
          }

          goto LABEL_32;
        }

        switch(v11)
        {
          case 6:
            v7 = &enum case for LocationType.postWTR(_:);
            goto LABEL_32;
          case 7:
            v7 = &enum case for LocationType.postReadingGoalChange(_:);
            goto LABEL_32;
          case 8:
            v7 = &enum case for LocationType.postRatingAContent(_:);
LABEL_32:
            (*(v1 + 104))(v3, *v7, v0);
            v10 = sub_100797E14();
            (*(v1 + 8))(v3, v0);
            sub_100007840(&v14, &unk_100AD5B40, &unk_100811300);
            return v10;
        }
      }

      v9 = &v14;
LABEL_18:
      sub_100007840(v9, &unk_100AD5B40, &unk_100811300);
      return 0;
    }
  }

  else
  {
    sub_100007840(&v12, &unk_100AD5B40, &unk_100811300);
  }

  v12 = v14;
  v13 = v15;
  if (!*(&v15 + 1))
  {
    v9 = &v12;
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100234AA0(uint64_t a1)
{
  v3 = *(sub_100797E24() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100232F98(a1, v4);
}

NSString sub_100234C68()
{
  result = sub_1007A2214();
  qword_100AD6280 = result;
  return result;
}

NSString sub_100234CA0()
{
  result = sub_1007A2214();
  qword_100AD6288 = result;
  return result;
}

NSString sub_100234CD8()
{
  result = sub_1007A2214();
  qword_100AD6290 = result;
  return result;
}

NSString sub_100234D10()
{
  result = sub_1007A2214();
  qword_100AD6298 = result;
  return result;
}

NSString sub_100234D48()
{
  result = sub_1007A2214();
  qword_100AD62A0 = result;
  return result;
}

void *sub_100234D80()
{
  v1 = v0;
  v2 = sub_1007A1C14();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10079FD44();
  v42 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007A0F44();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_1007A0F74();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentSpread;
  swift_beginAccess();
  sub_1000077D8(v1 + v18, v17, &unk_100AEB380, &qword_100815DD0);
  if ((*(v12 + 48))(v17, 1, v11))
  {
    sub_100007840(v17, &unk_100AEB380, &qword_100815DD0);
    sub_1001F1160(&unk_100AEDDC0, &qword_100812CC8);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_10080B690;
    v20 = v49;
    sub_10079B904();
    v21 = sub_1007A1B94();
    (*(v50 + 8))(v20, v51);
    v19[4] = v21;
  }

  else
  {
    v51 = v10;
    v22 = v47;
    (*(v12 + 16))(v14, v17, v11);
    sub_100007840(v17, &unk_100AEB380, &qword_100815DD0);
    v23 = sub_1007A0F54();
    (*(v12 + 8))(v14, v11);
    v24 = *(v23 + 16);
    if (v24)
    {
      v26 = *(v22 + 16);
      v25 = v22 + 16;
      v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
      v41 = v23;
      v28 = v23 + v27;
      v49 = *(v25 + 56);
      v50 = v26;
      v29 = (v25 + 72);
      v48 = enum case for SpreadPaginationEntity.Column.location(_:);
      v30 = (v25 - 8);
      v43 = (v42 + 4);
      v44 = (v25 + 80);
      ++v42;
      v19 = _swiftEmptyArrayStorage;
      v31 = v51;
      v47 = v25;
      do
      {
        v33 = v50;
        (v50)(v31, v28, v5);
        v33(v7, v31, v5);
        v34 = (*v29)(v7, v5);
        if (v34 == v48)
        {
          (*v44)(v7, v5);
          v36 = v45;
          v35 = v46;
          (*v43)(v45, v7, v46);
          v37 = sub_10079FCF4();
          (*v42)(v36, v35);
          (*v30)(v51, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_10066A750(0, v19[2] + 1, 1, v19);
          }

          v39 = v19[2];
          v38 = v19[3];
          if (v39 >= v38 >> 1)
          {
            v19 = sub_10066A750((v38 > 1), v39 + 1, 1, v19);
          }

          v19[2] = v39 + 1;
          v19[v39 + 4] = v37;
          v31 = v51;
        }

        else
        {
          v32 = *v30;
          (*v30)(v31, v5);
          v32(v7, v5);
        }

        v28 += v49;
        --v24;
      }

      while (v24);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v19;
}

uint64_t sub_100235374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v93 = a1;
  v4 = sub_1001F1160(&unk_100AF2970, &qword_100812CD0);
  __chkstk_darwin(v4 - 8);
  v92 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v90 = &v77 - v7;
  v8 = sub_1007A0164();
  __chkstk_darwin(v8 - 8);
  v91 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&unk_100AF1140, &unk_100812770);
  __chkstk_darwin(v10 - 8);
  v85 = &v77 - v11;
  v12 = sub_1001F1160(&qword_100AD65A8, &unk_100812CB0);
  __chkstk_darwin(v12 - 8);
  v84 = &v77 - v13;
  v14 = sub_1001F1160(&unk_100AF4260, &qword_100812CD8);
  __chkstk_darwin(v14 - 8);
  v83 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v77 - v17;
  v18 = sub_1001F1160(&unk_100AD65C0, &unk_100812CE0);
  __chkstk_darwin(v18 - 8);
  v81 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v77 - v21;
  v23 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v23 - 8);
  v87 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v77 - v26;
  v28 = sub_1007A1C14();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v88 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v86 = &v77 - v32;
  __chkstk_darwin(v33);
  v35 = &v77 - v34;
  __chkstk_darwin(v36);
  v89 = &v77 - v37;
  v38 = sub_1007A1B34();
  __chkstk_darwin(v38 - 8);
  v39 = sub_100796BB4();
  __chkstk_darwin(v39 - 8);
  v40 = sub_1001F1160(&qword_100AD6580, &unk_100812CA0);
  __chkstk_darwin(v40 - 8);
  v41 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentSpread;
  v42 = sub_1007A0F74();
  (*(*(v42 - 8) + 56))(v2 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentDatedPageLocation;
  v44 = sub_1001F1160(&qword_100AD6328, &qword_100812B58);
  (*(*(v44 - 8) + 56))(v2 + v43, 1, 1, v44);
  (*(v29 + 56))(v2 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_configurationChangeResumeLocation, 1, 1, v28);
  v45 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_readingLocationDatedCFISubject;
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_100796A84();
  sub_10079FE04();
  sub_1001F1160(&qword_100AD6558, &qword_100812C68);
  swift_allocObject();
  *(v2 + v45) = sub_10079B924();
  v46 = (v2 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_pendingReadingLocationCFI);
  *v46 = 0;
  v46[1] = 0;
  v47 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_approximateVisibleCFIRangeSubject;
  sub_1007A1B14();
  sub_1001F1160(&qword_100AD6548, &qword_100812C60);
  swift_allocObject();
  *(v2 + v47) = sub_10079B924();
  v48 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_approximateVisibleCFIUpdatesSubject;
  v94 = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AD6538, &qword_100812C58);
  swift_allocObject();
  v49 = sub_10079B924();
  v50 = v93;
  *(v3 + v48) = v49;
  sub_1000077D8(v50, v27, &unk_100AD5A90, &unk_1008112F0);
  v51 = *(v29 + 48);
  if (v51(v27, 1, v28) != 1)
  {
    v79 = v29;
    v77 = *(v29 + 32);
    v77(v35, v27, v28);
    sub_1007A1BF4();
    v58 = sub_1007A1BC4();
    v78 = *(*(v58 - 8) + 48);
    v59 = v78(v22, 1, v58);
    sub_100007840(v22, &unk_100AD65C0, &unk_100812CE0);
    if (v59 == 1)
    {
      v60 = v80;
      sub_1007A1BA4();
      v61 = sub_1007A1B84();
      if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
      {
        v29 = v79;
        (*(v79 + 8))(v35, v28);
        sub_100007840(v60, &unk_100AF4260, &qword_100812CD8);
        v52 = v93;
        goto LABEL_3;
      }

      sub_100007840(v60, &unk_100AF4260, &qword_100812CD8);
    }

    v63 = v83;
    sub_1007A1BA4();
    v64 = sub_1007A1B84();
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64) == 1)
    {
      sub_100007840(v63, &unk_100AF4260, &qword_100812CD8);
    }

    else
    {
      sub_1007A1B74();
      (*(v65 + 8))(v63, v64);
      sub_1007A23F4();
      if ((v66 & 1) == 0)
      {
        v71 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
        (*(*(v71 - 8) + 56))(v84, 1, 1, v71);
        v72 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
        (*(*(v72 - 8) + 56))(v85, 1, 1, v72);
        v62 = v89;
        goto LABEL_20;
      }
    }

    v62 = v89;
    v67 = v81;
    sub_1007A1BF4();
    v68 = v78(v67, 1, v58);
    sub_100007840(v67, &unk_100AD65C0, &unk_100812CE0);
    if (v68 != 1)
    {
      v77(v62, v35, v28);
      v52 = v93;
      v29 = v79;
      goto LABEL_21;
    }

    sub_1007A1BE4();
    v69 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
    (*(*(v69 - 8) + 56))(v84, 1, 1, v69);
    v70 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
    (*(*(v70 - 8) + 56))(v85, 1, 1, v70);
LABEL_20:
    sub_1007A1BD4();
    v29 = v79;
    (*(v79 + 8))(v35, v28);
    v52 = v93;
    goto LABEL_21;
  }

  sub_100007840(v27, &unk_100AD5A90, &unk_1008112F0);
  v52 = v50;
LABEL_3:
  v53 = v87;
  sub_1000077D8(v52, v87, &unk_100AD5A90, &unk_1008112F0);
  v54 = v51(v53, 1, v28);
  v55 = v86;
  if (v54 == 1)
  {
    v56 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
    (*(*(v56 - 8) + 56))(v84, 1, 1, v56);
    v57 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
    (*(*(v57 - 8) + 56))(v85, 1, 1, v57);
    sub_1007A1BD4();
    if (v51(v53, 1, v28) != 1)
    {
      sub_100007840(v53, &unk_100AD5A90, &unk_1008112F0);
    }
  }

  else
  {
    (*(v29 + 32))(v86, v53, v28);
  }

  v62 = v89;
  (*(v29 + 32))(v89, v55, v28);
LABEL_21:
  (*(v29 + 16))(v88, v62, v28);
  sub_1001F1160(&qword_100AD6568, &unk_100812C70);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentLocationSubject) = sub_10079B924();
  v73 = sub_1007A0124();
  v74 = *(*(v73 - 8) + 56);
  v74(v90, 1, 1, v73);
  v74(v92, 1, 1, v73);
  sub_1007A0134();
  sub_1001F1160(&qword_100AD6528, &qword_100812C50);
  swift_allocObject();
  v75 = sub_10079B924();
  sub_100007840(v52, &unk_100AD5A90, &unk_1008112F0);
  (*(v29 + 8))(v62, v28);
  *(v3 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentHistorySubject) = v75;
  return v3;
}

uint64_t sub_1002361BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100796584();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  sub_1007A36B4();
  if (!*(v3 + 16) || (v4 = sub_10000E2A4(v8), (v5 & 1) == 0))
  {

    sub_10002899C(v8);
LABEL_9:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_10;
  }

  sub_100007484(*(v3 + 56) + 32 * v4, &v9);
  sub_10002899C(v8);

  if (!*(&v10 + 1))
  {
LABEL_10:
    result = sub_100007840(&v9, &unk_100AD5B40, &unk_100811300);
    *a1 = 0;
    v7 = 1;
    goto LABEL_11;
  }

  type metadata accessor for NavigationDirection(0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 0;
  }

  v7 = result ^ 1;
LABEL_11:
  *(a1 + 8) = v7;
  return result;
}

uint64_t sub_1002362DC()
{
  sub_100007840(v0 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentSpread, &unk_100AEB380, &qword_100815DD0);

  sub_100007840(v0 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentDatedPageLocation, &qword_100AD6578, &unk_100812C80);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_configurationChangeResumeLocation, &unk_100AD5A90, &unk_1008112F0);

  return v0;
}

uint64_t sub_1002363B8()
{
  sub_1002362DC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrentLocationProvider(uint64_t a1)
{
  result = qword_100AD6308;
  if (!qword_100AD6308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100236464(uint64_t a1)
{
  sub_100236628(319, &qword_100AD6318, &type metadata accessor for SpreadPaginationEntity);
  if (v1 <= 0x3F)
  {
    sub_1002365C4(319);
    if (v2 <= 0x3F)
    {
      sub_100236628(319, &unk_100AD6330, &type metadata accessor for Location);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002365C4(uint64_t a1)
{
  if (!qword_100AD6320)
  {
    sub_1001F1234(&qword_100AD6328, &qword_100812B58);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6320);
    }
  }
}

void sub_100236628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL sub_10023667C()
{
  v1 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_configurationChangeResumeLocation;
  swift_beginAccess();
  sub_1000077D8(v0 + v4, v3, &unk_100AD5A90, &unk_1008112F0);
  v5 = sub_1007A1C14();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_100007840(v3, &unk_100AD5A90, &unk_1008112F0);
  return v6;
}

uint64_t sub_1002367F4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1000077D8(v4 + v8, a4, a2, a3);
}

uint64_t sub_1002368D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  sub_1001F1160(a4, a5);
  sub_100005920(a6, a4, a5, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  return sub_10079BA14();
}

void sub_100236A64()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_100AD12D0 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 postNotificationName:qword_100AD6288 object:v0];
}

uint64_t sub_100236B74(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v19 = a5;
  v7 = sub_1007A2E74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD6518, &qword_100812C48);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v15 = [objc_opt_self() defaultCenter];
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_1007A2E84();

  sub_100017CB4(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10079BA74();
  (*(v8 + 8))(v10, v7);
  sub_100005920(&qword_100AD6520, &qword_100AD6518, &qword_100812C48, &protocol conformance descriptor for Publishers.Map<A, B>);
  v16 = sub_10079BA14();
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_100236E58()
{
  v0 = sub_1007A2E74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AD6508, &unk_100812C38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  v8 = [objc_opt_self() defaultCenter];
  if (qword_100AD12E8 != -1)
  {
    swift_once();
  }

  sub_1007A2E84();

  type metadata accessor for NavigationDirection(0);
  sub_100017CB4(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10079BA24();
  (*(v1 + 8))(v3, v0);
  sub_100005920(&qword_100AD6510, &qword_100AD6508, &unk_100812C38, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v9 = sub_10079BA14();
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_1002370E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v5 - 8);
  v89 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v84 - v8;
  v10 = sub_100796BB4();
  __chkstk_darwin(v10 - 8);
  v92 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10079FD44();
  __chkstk_darwin(v91);
  v90 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AD6578, &unk_100812C80);
  __chkstk_darwin(v13 - 8);
  v93 = &v84 - v14;
  v15 = sub_10079FD94();
  v107 = *(v15 - 8);
  v108 = v15;
  __chkstk_darwin(v15);
  v88 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v94 = &v84 - v18;
  __chkstk_darwin(v19);
  v21 = &v84 - v20;
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = sub_1007A1C14();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v84 - v30;
  v104 = v2;
  v102 = *(v2 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentLocationSubject);
  sub_10079B904();
  sub_100017CB4(&qword_100AD6588, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  v105 = a1;
  v32 = sub_1007A2124();
  v33 = *(v26 + 8);
  v103 = v31;
  v106 = v25;
  v101 = v33;
  v33(v31, v25);
  if (v32)
  {
    v34 = v108;
    (v107[13])(v24, enum case for UpdateReason.locationFulfillment(_:), v108);
    sub_100017CB4(&qword_100AD6590, &type metadata accessor for UpdateReason, &protocol conformance descriptor for UpdateReason);
    sub_1007A2574();
    sub_1007A2574();
    if (v113[0] == v109 && v113[1] == v110)
    {
      (v107[1])(v24, v34);
    }

    else
    {
      v35 = sub_1007A3AB4();
      v36 = v34;
      v37 = v35;
      (v107[1])(v24, v36);

      if ((v37 & 1) == 0)
      {
        return result;
      }
    }
  }

  v98 = v9;
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v39 = sub_10079ACE4();
  v40 = sub_100008B98(v39, qword_100AF40B0);
  v99 = v26;
  v41 = v106;
  v96 = *(v26 + 16);
  v97 = v26 + 16;
  v96(v28, v105, v106);
  v42 = v107;
  v43 = v108;
  v44 = v107[2];
  v45 = v21;
  v100 = a2;
  v86 = v107 + 2;
  v85 = v44;
  v44(v21, a2, v108);
  v87 = v40;
  v46 = sub_10079ACC4();
  v47 = sub_1007A2994();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v113[0] = v84;
    *v48 = 136315394;
    sub_100017CB4(&qword_100AD65A0, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v49 = sub_1007A3A74();
    v51 = v50;
    v101(v28, v106);
    v52 = sub_1000070F4(v49, v51, v113);
    v41 = v106;

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    sub_100017CB4(&qword_100AD6598, &type metadata accessor for UpdateReason, &protocol conformance descriptor for UpdateReason);
    v53 = v108;
    v54 = sub_1007A3A74();
    v56 = v55;
    v95 = v42[1];
    v95(v45, v53);
    v57 = sub_1000070F4(v54, v56, v113);

    *(v48 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v46, v47, "CurrentLocationProvider Updating #currentLoc to: %s  reason:%s", v48, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v95 = v42[1];
    v95(v21, v43);
    v101(v28, v41);
  }

  v58 = v105;
  v59 = sub_1007A1B44();
  v60 = v100;
  v61 = v98;
  if ((v59 & 1) == 0)
  {
    sub_1007A1B64();
    sub_100796BA4();
    v62 = v93;
    sub_10079FE04();
    v63 = sub_1001F1160(&qword_100AD6328, &qword_100812B58);
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    v64 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentDatedPageLocation;
    v65 = v104;
    swift_beginAccess();
    sub_1002391EC(v62, v65 + v64, &qword_100AD6578, &unk_100812C80);
    swift_endAccess();
  }

  v96(v103, v58, v41);
  sub_10079B914();
  v66 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_configurationChangeResumeLocation;
  v67 = v104;
  swift_beginAccess();
  sub_1000077D8(v67 + v66, v61, &unk_100AD5A90, &unk_1008112F0);
  v68 = v99;
  v69 = (*(v99 + 48))(v61, 1, v41);
  result = sub_100007840(v61, &unk_100AD5A90, &unk_1008112F0);
  if (v69 != 1)
  {
    v70 = v94;
    (v107[13])(v94, enum case for UpdateReason.userInteraction(_:), v108);
    sub_100017CB4(&qword_100AD6590, &type metadata accessor for UpdateReason, &protocol conformance descriptor for UpdateReason);
    sub_1007A2574();
    sub_1007A2574();
    if (v109 == v111 && v110 == v112)
    {
      v71 = 1;
    }

    else
    {
      v71 = sub_1007A3AB4();
    }

    v95(v70, v108);

    if (v71)
    {
      v72 = v88;
      v73 = v60;
      v74 = v108;
      v85(v88, v73, v108);
      v75 = sub_10079ACC4();
      v76 = sub_1007A29D4();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v109 = v107;
        *v77 = 136315138;
        sub_100017CB4(&qword_100AD6598, &type metadata accessor for UpdateReason, &protocol conformance descriptor for UpdateReason);
        v78 = sub_1007A3A74();
        v80 = v79;
        v95(v72, v74);
        v81 = sub_1000070F4(v78, v80, &v109);

        *(v77 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v75, v76, "CurrentLocationProvider #currentLoc cleared configurationChangeResumeLocation reason:%s", v77, 0xCu);
        sub_1000074E0(v107);
      }

      else
      {

        v95(v72, v74);
      }

      v82 = v89;
      (*(v68 + 56))(v89, 1, 1, v106);
      v83 = v104;
      swift_beginAccess();
      sub_1002391EC(v82, v83 + v66, &unk_100AD5A90, &unk_1008112F0);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100237D1C(uint64_t a1)
{
  v3 = sub_1007A0164();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentHistorySubject);
  sub_10079B904();
  sub_100017CB4(&qword_100AD65B0, &type metadata accessor for HistorySnapshot, &protocol conformance descriptor for HistorySnapshot);
  v11 = sub_1007A2124();
  v12 = *(v4 + 8);
  result = v12(v9, v3);
  if ((v11 & 1) == 0)
  {
    v27 = v10;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AF40B0);
    v26 = *(v4 + 16);
    v26(v6, a1, v3);
    v15 = sub_10079ACC4();
    v16 = sub_1007A2994();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = v17;
      v24 = swift_slowAlloc();
      v28 = v24;
      *v17 = 136315138;
      sub_100017CB4(&qword_100AD65B8, &type metadata accessor for HistorySnapshot, &protocol conformance descriptor for HistorySnapshot);
      v18 = sub_1007A3A74();
      v25 = a1;
      v20 = v19;
      v12(v6, v3);
      v21 = sub_1000070F4(v18, v20, &v28);
      a1 = v25;

      v22 = v23;
      *(v23 + 1) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "CurrentLocationProvider updating currentHistory %s", v22, 0xCu);
      sub_1000074E0(v24);
    }

    else
    {

      v12(v6, v3);
    }

    v26(v9, a1, v3);
    return sub_10079B914();
  }

  return result;
}

void sub_100238068()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AF1140, &unk_100812770);
  __chkstk_darwin(v2 - 8);
  v55 = v52 - v3;
  v4 = sub_1001F1160(&qword_100AD65A8, &unk_100812CB0);
  __chkstk_darwin(v4 - 8);
  v54 = v52 - v5;
  v6 = sub_10079FD94();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v57 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v8 - 8);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v52 - v12;
  v14 = sub_1007A1C14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v56 = v52 - v19;
  __chkstk_darwin(v20);
  v22 = v52 - v21;
  v23 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_configurationChangeResumeLocation;
  swift_beginAccess();
  sub_1000077D8(v1 + v23, v13, &unk_100AD5A90, &unk_1008112F0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007840(v13, &unk_100AD5A90, &unk_1008112F0);
    type metadata accessor for CurrentLocationProvider(0);
    sub_100017CB4(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);
    sub_1007A05E4();
    if (sub_1007A2414())
    {
      sub_10079B904();
      v52[1] = sub_1007A1BE4();
      v24 = *(v15 + 8);
      v52[2] = v15 + 8;
      v53 = v24;
      v24(v17, v14);
      v25 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
      (*(*(v25 - 8) + 56))(v54, 1, 1, v25);
      v26 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
      (*(*(v26 - 8) + 56))(v55, 1, 1, v26);

      v27 = v56;
      sub_1007A1BD4();
      (*(v15 + 16))(v10, v27, v14);
      (*(v15 + 56))(v10, 0, 1, v14);
      swift_beginAccess();
      sub_1002391EC(v10, v1 + v23, &unk_100AD5A90, &unk_1008112F0);
      swift_endAccess();
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v28 = sub_10079ACE4();
      sub_100008B98(v28, qword_100AF40B0);

      v29 = sub_10079ACC4();
      v30 = sub_1007A29D4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v60[0] = v32;
        *v31 = 136446210;
        v33 = sub_1007A23E4();
        v35 = v34;

        v36 = sub_1000070F4(v33, v35, v60);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "CurrentLocationProvider captured #currentLoc configurationChangeResumeLocation: %{public}s", v31, 0xCu);
        sub_1000074E0(v32);
      }

      else
      {
      }

      v49 = v57;
      v48 = v58;
      v50 = v59;
      (*(v58 + 104))(v57, enum case for UpdateReason.configurationChange(_:), v59);
      v51 = v56;
      sub_1002370E0(v56, v49);
      (*(v48 + 8))(v49, v50);
      v53(v51, v14);
    }

    else
    {

      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v44 = sub_10079ACE4();
      sub_100008B98(v44, qword_100AF40B0);
      v45 = sub_10079ACC4();
      v46 = sub_1007A2994();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "#currentLoc readingLocationCFI is invalid -- Skipping capture of configurationChangeResumeLocation", v47, 2u);
      }
    }
  }

  else
  {
    (*(v15 + 32))(v22, v13, v14);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v37 = sub_10079ACE4();
    sub_100008B98(v37, qword_100AF40B0);
    v38 = sub_10079ACC4();
    v39 = sub_1007A2994();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "#currentLoc configurationChangeResumeLocation is set -- Skipping capture of configurationChangeResumeLocation", v40, 2u);
    }

    v42 = v57;
    v41 = v58;
    v43 = v59;
    (*(v58 + 104))(v57, enum case for UpdateReason.configurationChange(_:), v59);
    sub_1002370E0(v22, v42);
    (*(v41 + 8))(v42, v43);
    (*(v15 + 8))(v22, v14);
  }
}

void sub_100238938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (sub_1007A2414())
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AF40B0);

    v7 = sub_10079ACC4();
    v8 = sub_1007A2994();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      v11 = sub_1007A23E4();
      v13 = sub_1000070F4(v11, v12, &v23);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "#visibleCFI CurrentLocationProvider: staging readingLocationCFI: %{public}s", v9, 0xCu);
      sub_1000074E0(v10);
    }

    v14 = (v3 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_pendingReadingLocationCFI);
    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AF40B0);

    oslog = sub_10079ACC4();
    v16 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136446210;
      v19 = sub_1007A23E4();
      v21 = sub_1000070F4(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v16, "#visibleCFI CurrentLocationProvider: Attempt to stage invalid CFI: %{public}s", v17, 0xCu);
      sub_1000074E0(v18);
    }
  }
}

void sub_100238C24()
{
  v1 = sub_1001F1160(&qword_100AD6580, &unk_100812CA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = (v0 + OBJC_IVAR____TtC5Books23CurrentLocationProvider_pendingReadingLocationCFI);
  v9 = *(&v0[1].isa + OBJC_IVAR____TtC5Books23CurrentLocationProvider_pendingReadingLocationCFI);
  if (!v9)
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AF40B0);
    v28 = sub_10079ACC4();
    v20 = sub_1007A29B4();
    if (!os_log_type_enabled(v28, v20))
    {
      goto LABEL_17;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "#visibleCFI CurrentLocationProvider: Attempt to commit without a CFI.";
    goto LABEL_16;
  }

  v10 = *v8;
  *v8 = 0;
  v8[1] = 0;
  if (sub_1007A2414())
  {
    v28 = v0;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AF40B0);

    v12 = sub_10079ACC4();
    v13 = sub_1007A2994();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27 = v13;
      v15 = v14;
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v15 = 136446210;
      v16 = sub_1007A23E4();
      v18 = sub_1000070F4(v16, v17, v29);

      *(v15 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v27, "#visibleCFI CurrentLocationProvider: adopting readingLocationCFI: %{public}s", v15, 0xCu);
      sub_1000074E0(v26);
    }

    v29[0] = v10;
    v29[1] = v9;
    sub_10079B904();
    sub_10079FDE4();
    (*(v2 + 16))(v4, v7, v1);
    sub_10079B914();
    (*(v2 + 8))(v7, v1);

    return;
  }

  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v23 = sub_10079ACE4();
  sub_100008B98(v23, qword_100AF40B0);
  v28 = sub_10079ACC4();
  v20 = sub_1007A29B4();
  if (os_log_type_enabled(v28, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "#visibleCFI CurrentLocationProvider: Attempt to commit an invalid CFI.";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v28, v20, v22, v21, 2u);
  }

LABEL_17:
  v24 = v28;
}

void sub_100239064(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  if (qword_100AD12E8 != -1)
  {
    swift_once();
  }

  v4 = qword_100AD62A0;
  sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  sub_1007A36B4();
  type metadata accessor for NavigationDirection(0);
  *(inited + 96) = v6;
  *(inited + 72) = a1;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50, &unk_10080B810);
  isa = sub_1007A2024().super.isa;

  [v3 postNotificationName:v4 object:v1 userInfo:isa];
}

uint64_t sub_1002391EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001F1160(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1002393C4(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = v1;
  return _swift_task_switch(sub_1002393E4, 0, 0);
}

uint64_t sub_1002393E4()
{
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_100239484;
  v2 = *(v0 + 296);

  return sub_100372DAC(v0 + 16, v2);
}

uint64_t sub_100239484()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_10023992C;
  }

  else
  {
    v2 = sub_100239598;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100239598()
{
  sub_100007484((v0 + 2), (v0 + 6));
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  if (swift_dynamicCast())
  {
    v1 = v0[34];
    if (*(v1 + 16))
    {
      v2 = sub_10000E53C(0x7365726F6373, 0xE600000000000000);
      if (v3)
      {
        sub_100007484(*(v1 + 56) + 32 * v2, (v0 + 14));
        sub_1000076D4((v0 + 14), (v0 + 10));
        sub_100007484((v0 + 10), (v0 + 18));
        sub_1001F1160(&unk_100AD6720, &qword_100812D78);
        if (swift_dynamicCast())
        {
          v4 = v0[35];
          if (*(v1 + 16))
          {
            v5 = sub_10000E53C(0x7364496D616461, 0xE700000000000000);
            if (v6)
            {
              sub_100007484(*(v1 + 56) + 32 * v5, (v0 + 26));

              sub_1000076D4((v0 + 26), (v0 + 22));
              sub_100007484((v0 + 22), (v0 + 30));
              sub_1001F1160(&unk_100AF23A0, &qword_100812D80);
              if (swift_dynamicCast())
              {
                if (*(v4 + 16) == *(v0[36] + 16))
                {
                  v7 = sub_100239944(v0[36], v4);

                  sub_1000074E0(v0 + 22);
                  sub_1000074E0(v0 + 10);
                  sub_1000074E0(v0 + 2);
                  v8 = v0[1];

                  return v8(v7);
                }

                sub_10023A6D0();
                swift_allocError();
                v16 = 5;
              }

              else
              {

                sub_10023A6D0();
                swift_allocError();
                v16 = 4;
              }

              *v15 = v16;
              swift_willThrow();
              sub_1000074E0(v0 + 22);
              goto LABEL_21;
            }
          }

          sub_10023A6D0();
          swift_allocError();
          v14 = 3;
        }

        else
        {

          sub_10023A6D0();
          swift_allocError();
          v14 = 2;
        }

        *v13 = v14;
        swift_willThrow();
LABEL_21:
        sub_1000074E0(v0 + 10);
        goto LABEL_15;
      }
    }

    sub_10023A6D0();
    swift_allocError();
    *v11 = 1;
  }

  else
  {
    sub_10023A6D0();
    swift_allocError();
    *v10 = 0;
  }

  swift_willThrow();
LABEL_15:
  sub_1000074E0(v0 + 2);
  v12 = v0[1];

  return v12();
}

void *sub_100239944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD6730, &qword_100812D88);
  __chkstk_darwin(v4 - 8);
  v68 = &v48 - v5;
  v6 = sub_1001F1160(&qword_100AD6738, &qword_100812D90);
  __chkstk_darwin(v6 - 8);
  v67 = &v48 - v7;
  v66 = sub_10079A734();
  v8 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079A7A4();
  __chkstk_darwin(v10 - 8);
  v64 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100799B14();
  v12 = *(v63 - 8);
  __chkstk_darwin(v63);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v52 = &v48 - v16;
  v17 = *(a1 + 16);
  v18 = *(a2 + 16);
  if (v18 >= v17)
  {
    v19 = *(a1 + 16);
  }

  else
  {
    v19 = *(a2 + 16);
  }

  v72 = _swiftEmptyArrayStorage;
  result = sub_1003BD14C(0, v19, 0);
  v21 = v72;
  v22 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
  v62 = v12;
  v54 = v17;
  v53 = v18;
  v51 = v19;
  v50 = a2;
  v49 = a1;
  if (v19)
  {
    v60 = v14;
    v23 = (a1 + 32);
    v24 = a2 + 32;
    LODWORD(v59) = enum case for Book.MediaType.ebook(_:);
    *&v58 = v8 + 13;
    v57 = enum case for RecommendationSource.siri(_:);
    v56 = v12 + 32;
    v55 = xmmword_10080B690;
    v61 = v8;
    while (v17)
    {
      if (!v18)
      {
        goto LABEL_24;
      }

      if ((*v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v69 = v19;
      v70 = v23;
      (*v58)(v65, v59, v66);
      sub_1001F1160(&unk_100AD6740, &qword_100812D98);
      v25 = sub_10079A1E4();
      v26 = *(v25 - 8);
      v71 = v21;
      v27 = v26;
      v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v55;
      (*(v27 + 104))(v29 + v28, v57, v25);
      v30 = sub_10079A774();
      (*(*(v30 - 8) + 56))(v67, 1, 1, v30);
      v31 = sub_10079A5B4();
      (*(*(v31 - 8) + 56))(v68, 1, 1, v31);
      v21 = v71;
      sub_10079A5E4();
      v32 = v60;
      sub_100799AD4();
      v72 = v21;
      v34 = v21[2];
      v33 = v21[3];
      if (v34 >= v33 >> 1)
      {
        sub_1003BD14C((v33 > 1), v34 + 1, 1);
        v21 = v72;
      }

      v21[2] = v34 + 1;
      v12 = v62;
      result = (*(v62 + 32))(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v34, v32, v63);
      --v18;
      --v17;
      v24 += 8;
      v23 = v70 + 1;
      v19 = v69 - 1;
      v8 = v61;
      v22 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
      if (v69 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_12:
    v35 = v54;
    v36 = v53;
    if (v54 <= v53)
    {
      return v21;
    }

    v71 = v49 + 32;
    v70 = (v50 + 32);
    LODWORD(v69) = enum case for Book.MediaType.ebook(_:);
    v61 = v8 + 13;
    LODWORD(v60) = enum case for RecommendationSource.siri(_:);
    v59 = v12 + 32;
    v58 = *&v22[210].entrysize;
    v37 = v51;
    while (v37 < v35)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_27;
      }

      if (v36 == v37)
      {
        return v21;
      }

      if (v37 >= v36)
      {
        goto LABEL_28;
      }

      if ((*(v71 + 8 * v37) & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      (*v61)(v65, v69, v66);
      sub_1001F1160(&unk_100AD6740, &qword_100812D98);
      v39 = sub_10079A1E4();
      v40 = *(v39 - 8);
      v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v58;
      (*(v40 + 104))(v42 + v41, v60, v39);
      v43 = sub_10079A774();
      (*(*(v43 - 8) + 56))(v67, 1, 1, v43);
      v44 = sub_10079A5B4();
      (*(*(v44 - 8) + 56))(v68, 1, 1, v44);
      v45 = v52;
      sub_10079A5E4();
      sub_100799AD4();
      v72 = v21;
      v47 = v21[2];
      v46 = v21[3];
      if (v47 >= v46 >> 1)
      {
        sub_1003BD14C((v46 > 1), v47 + 1, 1);
        v21 = v72;
      }

      v21[2] = v47 + 1;
      result = (*(v62 + 32))(v21 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v47, v45, v63);
      ++v37;
      v35 = v54;
      v36 = v53;
      if (v38 == v54)
      {
        return v21;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10023A184()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10023A20C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = sub_1004073B4();
  v4 = objc_allocWithZone(type metadata accessor for AMDCollectionService.Event());
  v6 = sub_10023A518(v3, v5);
  *(v2 + 24) = v6;

  v7 = swift_task_alloc();
  *(v2 + 32) = v7;
  *v7 = v2;
  v7[1] = sub_10023A324;

  return sub_1002393C4(v6);
}

uint64_t sub_10023A324(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_10023A4B4;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_10023A44C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10023A44C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_10023A4B4()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_10023A518(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCC5Books20AMDCollectionServiceP33_4EFD11BC7D3B203388E5898071D414945Event_data;
  *&v2[OBJC_IVAR____TtCC5Books20AMDCollectionServiceP33_4EFD11BC7D3B203388E5898071D414945Event_data] = 0;
  v6 = OBJC_IVAR____TtCC5Books20AMDCollectionServiceP33_4EFD11BC7D3B203388E5898071D414945Event_engagementData;
  *&v2[OBJC_IVAR____TtCC5Books20AMDCollectionServiceP33_4EFD11BC7D3B203388E5898071D414945Event_engagementData] = 0;
  sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100812CF0;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000016;
  *(inited + 56) = 0x80000001008C5580;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x65736163657375;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = 0x6974736567677573;
  *(inited + 104) = 0xEB00000000736E6FLL;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684632420;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 168) = sub_10023A724();
  *(inited + 144) = a1;
  v8 = a1;
  v9 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  swift_arrayDestroy();
  sub_10058096C(v9);
  *&v2[v5] = v10;

  sub_10058096C(v9);
  v12 = v11;

  *&v2[v6] = v12;

  v14.receiver = v2;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

unint64_t sub_10023A6D0()
{
  result = qword_100AD6718;
  if (!qword_100AD6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6718);
  }

  return result;
}

unint64_t sub_10023A724()
{
  result = qword_100AD6750;
  if (!qword_100AD6750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD6750);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AMDCollectionService.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AMDCollectionService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10023A8C4()
{
  result = qword_100AD6760;
  if (!qword_100AD6760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6760);
  }

  return result;
}

uint64_t sub_10023A918()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD6770);
  sub_100008B98(v0, qword_100AD6770);
  return sub_10079ACD4();
}

id sub_10023A9E0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if ([objc_opt_self() appKitBundleClass])
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v5 = objc_allocWithZone(ObjectType);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___BKAppGlobalActionHandler_sceneManager] = a1;
  *&v5[OBJC_IVAR___BKAppGlobalActionHandler_appKitBundle] = ObjCClassMetadata;
  v8.receiver = v5;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

void sub_10023AAE8(uint64_t a1)
{
  sub_10000AE20(a1, &v9);
  if (!*(&v10 + 1))
  {
    sub_100007840(&v9, &unk_100AD5B40, &unk_100811300);
    goto LABEL_6;
  }

  sub_10023D5EC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v11 = 0u;
    v12 = 0u;
LABEL_7:
    sub_100007840(&v11, &unk_100AD5B40, &unk_100811300);
    goto LABEL_8;
  }

  v2 = [v8 propertyList];

  if (v2)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v7 = [*(v1 + OBJC_IVAR___BKAppGlobalActionHandler_sceneManager) jsaLibraryManager];
    v4 = sub_1007A2214();

    [v7 openBook:v4 options:0];

    goto LABEL_12;
  }

LABEL_8:
  if (qword_100AD12F0 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AD6770);
  v4 = sub_10079ACC4();
  v5 = sub_1007A29B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to open recent book because the assetID could not be found", v6, 2u);
  }

LABEL_12:
}

void sub_10023AD94(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10023ADF0(a1);
  }
}

void sub_10023ADF0(void *a1)
{
  isa = [objc_opt_self() supportedFileImportTypes];
  if (!isa)
  {
    sub_10079AB24();
    sub_1007A25E4();
    isa = sub_1007A25D4().super.isa;
  }

  v6 = [objc_allocWithZone(UIDocumentPickerViewController) initForOpeningContentTypes:isa asCopy:1];

  [v6 setDelegate:v1];
  [v6 setAllowsMultipleSelection:1];
  v4 = [a1 rootBarCoordinator];
  if (v4)
  {
    v5 = [v4 rootViewController];
    swift_unknownObjectRelease();
    [v5 presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_10023B070(void *a1, uint64_t a2)
{
  v4 = [a1 rootBarCoordinator];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1007A2214();
    [v5 selectWithIdentifier:v6 isUserAction:0];

    swift_unknownObjectRelease();
  }

  v7 = *(v2 + OBJC_IVAR___BKAppGlobalActionHandler_sceneManager);
  sub_1007969B4();
  isa = sub_1007A25D4().super.isa;
  [v7 handleImportURLs:isa transaction:objc_msgSend(a1 perURLCompletion:"newShowURLTransaction") completion:{0, 0}];

  return swift_unknownObjectRelease();
}

void sub_10023B170()
{
  v0 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v0 - 8);
  v2 = &v55 - v1;
  v3 = sub_1007969B4();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v55 - v6;
  v7 = sub_100796CF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = sub_1007A21D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v55 - v19;
  sub_1007A2154();
  sub_100796C94();
  (*(v15 + 16))(v17, v20, v14);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v8 + 16))(v10, v13, v7);
  v23 = sub_1007A22D4(v17, 0, 0, v22, v10, "URL for Provide Books Feedback menu button for iOS", 50, 2);
  v25 = v24;
  v26 = v13;
  v27 = v59;
  (*(v8 + 8))(v26, v7);
  v28 = v14;
  v29 = v60;
  (*(v15 + 8))(v20, v28);
  sub_1007969A4();
  if ((*(v27 + 48))(v2, 1, v29) == 1)
  {
    sub_100007840(v2, &unk_100AD5AC0, &unk_100811090);
    if (qword_100AD12F0 != -1)
    {
      swift_once();
    }

    v30 = sub_10079ACE4();
    sub_100008B98(v30, qword_100AD6770);

    v31 = sub_10079ACC4();
    v32 = sub_1007A29B4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61[0] = v34;
      *v33 = 136315138;
      v35 = sub_1000070F4(v23, v25, v61);

      *(v33 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to create feedback URL from %s", v33, 0xCu);
      sub_1000074E0(v34);
    }

    else
    {
    }
  }

  else
  {

    v36 = v57;
    (*(v27 + 32))(v57, v2, v29);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      sub_100796944(v38);
      v41 = v40;
      [v39 appGlobalActionHandler:v58 open:v40];
      swift_unknownObjectRelease();

      (*(v27 + 8))(v36, v29);
    }

    else
    {
      if (qword_100AD12F0 != -1)
      {
        swift_once();
      }

      v42 = sub_10079ACE4();
      sub_100008B98(v42, qword_100AD6770);
      v43 = v56;
      (*(v27 + 16))(v56, v36, v29);
      v44 = sub_10079ACC4();
      v45 = sub_1007A29B4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v61[0] = v47;
        *v46 = 136315138;
        sub_10023D404(&qword_100AF26B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v48 = sub_1007A3A74();
        v49 = v43;
        v51 = v50;
        v52 = *(v27 + 8);
        v52(v49, v29);
        v53 = sub_1000070F4(v48, v51, v61);

        *(v46 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v44, v45, "Unable to open feedback URL %s without a delegate", v46, 0xCu);
        sub_1000074E0(v47);

        v52(v36, v29);
      }

      else
      {

        v54 = *(v27 + 8);
        v54(v43, v29);
        v54(v36, v29);
      }
    }
  }
}

void sub_10023B940()
{
  isa = BUOnboardingAllBundleIDs();
  if (!isa)
  {
    sub_1007A25E4();
    isa = sub_1007A25D4().super.isa;
  }

  v2 = sub_1007A25E4();
  v23 = v2;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_10023D44C();
  if ((sub_1007A28A4() & 1) == 0)
  {

    if (qword_100AD12F0 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AD6770);
    v12 = sub_10079ACC4();
    v13 = sub_1007A29B4();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "books_aboutPrivacy: BUOnboardingAllBundleIDs returned zero identifiers.";
    goto LABEL_23;
  }

  if (qword_100AD12F0 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AD6770);

  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v8 = sub_1007A25F4();
    v10 = sub_1000070F4(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "books_aboutPrivacy: bundleIdentifiers: %s", v6, 0xCu);
    sub_1000074E0(v7);
  }

  if (*(v2 + 16) == 1)
  {

    if (*(v2 + 16))
    {

      isa = sub_1007A2214();
    }

    else
    {
      isa = 0;
    }

    v16 = &selRef_presenterForPrivacySplashWithIdentifier_;
  }

  else
  {
    v16 = &selRef_presenterForPrivacyUnifiedAboutWithIdentifiers_;
  }

  v17 = [objc_opt_self() *v16];

  if (!v17)
  {

    v12 = sub_10079ACC4();
    v13 = sub_1007A29B4();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_24;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Unable to present privacy; OBPrivacyPresenter could not be created";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

    goto LABEL_24;
  }

  v18 = *(v0 + OBJC_IVAR___BKAppGlobalActionHandler_sceneManager);
  v12 = v17;
  v19 = [objc_msgSend(v18 "anySceneController")];
  swift_unknownObjectRelease();
  [v12 setUnderlineLinks:1];
  v20 = [v12 splashController];
  if (v20)
  {
    v21 = v20;

    [v21 setUnderlineLinks:1];

    v22 = [v19 presenterModalPresentingViewController];
    [v12 setPresentingViewController:v22];

    [v12 present];
    swift_unknownObjectRelease();

LABEL_24:
    return;
  }

  __break(1u);
}

uint64_t sub_10023BDD8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_100007840(v9, &unk_100AD5B40, &unk_100811300);
}

uint64_t sub_10023BEE8()
{
  sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  v0[39] = swift_task_alloc();
  v1 = sub_10079ACE4();
  v0[40] = v1;
  v0[41] = *(v1 - 8);
  v0[42] = swift_task_alloc();
  v2 = sub_1007969B4();
  v0[43] = v2;
  v0[44] = *(v2 - 8);
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  sub_1007A26F4();
  v0[47] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v0[48] = v4;
  v0[49] = v3;

  return _swift_task_switch(sub_10023C078, v4, v3);
}

uint64_t sub_10023C078()
{
  v1 = [objc_opt_self() defaultBag];
  v2 = [v1 booksServiceAndSupportURL];

  v3 = [v2 valuePromise];
  v0[50] = v3;

  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_10023C200;
  v4 = swift_continuation_init();
  v0[25] = sub_1001F1160(&qword_100AD67D8, &unk_100812EB0);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10023CCFC;
  v0[21] = &unk_100A0FE90;
  v0[22] = v4;
  [v3 resultWithTimeout:v0 + 18 completion:1.0];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10023C200()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_10023C900;
  }

  else
  {
    v5 = sub_10023C330;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10023C330()
{
  v1 = *(v0 + 296);

  sub_100796974();
  v2 = [objc_opt_self() sharedApplication];
  *(v0 + 416) = v2;
  sub_100796944(v3);
  v5 = v4;
  *(v0 + 424) = v4;
  sub_1001ED2F8(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10023D404(&qword_100AE01C0, type metadata accessor for OpenExternalURLOptionsKey, &unk_10080E21C);
  isa = sub_1007A2024().super.isa;
  *(v0 + 432) = isa;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 440;
  *(v0 + 88) = sub_10023C534;
  v7 = swift_continuation_init();
  *(v0 + 264) = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_100298E88;
  *(v0 + 232) = &unk_100A0FEB8;
  *(v0 + 240) = v7;
  [v2 openURL:v5 options:isa completionHandler:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_10023C534()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);

  return _swift_task_switch(sub_10023C63C, v2, v1);
}

uint64_t sub_10023C63C()
{
  v28 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);

  v4 = *(v0 + 440);

  if (v4)
  {
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
  }

  else
  {
    if (qword_100AD12F0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 360);
    v6 = *(v0 + 368);
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);
    sub_100008B98(*(v0 + 320), qword_100AD6770);
    (*(v8 + 16))(v5, v6, v7);
    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 360);
    v13 = *(v0 + 368);
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    if (v11)
    {
      v26 = *(v0 + 368);
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v16 = 136315138;
      sub_10023D404(&qword_100AF26B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v17 = sub_1007A3A74();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v12, v15);
      v21 = sub_1000070F4(v17, v19, &v27);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v9, v10, "UIApplication could not open %s", v16, 0xCu);
      sub_1000074E0(v25);

      v20(v26, v15);
    }

    else
    {

      v22 = *(v14 + 8);
      v22(v12, v15);
      v22(v13, v15);
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10023C900(uint64_t a1)
{
  v31 = v1;
  v2 = v1[50];
  swift_willThrow();

  sub_10079AC74();
  swift_errorRetain();
  v3 = sub_10079ACC4();
  v4 = sub_1007A29B4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v1[41];
    v5 = v1[42];
    v7 = v1[40];
    v8 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1000070F4(0xD000000000000021, 0x80000001008C5670, v30);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_1007A3B84();
    v11 = sub_1000070F4(v9, v10, v30);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Unable to retrieve booksServiceAndSupportURL from AMSBag due to %s", v8, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v13 = v1[41];
    v12 = v1[42];
    v14 = v1[40];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v1[43];
  v16 = v1[44];
  v17 = v1[39];
  sub_1007969A4();
  v18 = (*(v16 + 48))(v17, 1, v15);
  if (v18 == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = v1[46];
    v20 = v1[43];
    v21 = v1[44];
    v22 = v1[39];

    (*(v21 + 32))(v19, v22, v20);
    v23 = [objc_opt_self() sharedApplication];
    v1[52] = v23;
    sub_100796944(v24);
    v26 = v25;
    v1[53] = v25;
    sub_1001ED2F8(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10023D404(&qword_100AE01C0, type metadata accessor for OpenExternalURLOptionsKey, &unk_10080E21C);
    isa = sub_1007A2024().super.isa;
    v1[54] = isa;

    v1[10] = v1;
    v1[15] = v1 + 55;
    v1[11] = sub_10023C534;
    v28 = swift_continuation_init();
    v1[33] = sub_1001F1160(&unk_100AD67E0, &qword_1008168C0);
    v1[26] = _NSConcreteStackBlock;
    v1[27] = 1107296256;
    v1[28] = sub_100298E88;
    v1[29] = &unk_100A0FEB8;
    v1[30] = v28;
    [v23 openURL:v26 options:isa completionHandler:v1 + 26];
    v18 = (v1 + 10);
  }

  return _swift_continuation_await(v18);
}

uint64_t sub_10023CCFC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000E3E8((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

void sub_10023CFC8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10023B070(a1, a3);
  }
}

uint64_t sub_10023D340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_10023BEE8();
}

uint64_t sub_10023D404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10023D44C()
{
  result = qword_100AD6800;
  if (!qword_100AD6800)
  {
    sub_1001F1234(&unk_100AD61F0, &qword_10080FEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6800);
  }

  return result;
}

void sub_10023D4B0()
{
  if ([objc_opt_self() appKitBundleClass])
  {
    swift_getObjCClassMetadata();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    [ObjCClassFromMetadata openKeyboardShortcuts];
  }

  else
  {
    if (qword_100AD12F0 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AD6770);
    oslog = sub_10079ACC4();
    v2 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Unable to present keyboard shortcuts; BCAppKitBundle could not be loaded", v3, 2u);
    }
  }
}

unint64_t sub_10023D5EC()
{
  result = qword_100AECAB0;
  if (!qword_100AECAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AECAB0);
  }

  return result;
}

id sub_10023D6A8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for YearInReviewEligibilityService()) init];
  *a1 = result;
  return result;
}

uint64_t sub_10023D6EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(sub_10023D710, 0, 0);
}

uint64_t sub_10023D710()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_10023D830;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AD6968, &qword_100812F68);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10023D938;
  v0[13] = &unk_100A0FF68;
  v0[14] = v3;
  [v1 addNotificationRequest:v2 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10023D830(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_10023D938(uint64_t a1, void *a2)
{
  v3 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return _swift_continuation_throwingResumeWithError(v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10023DA08()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10023DB24;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AD6958, &qword_100812F60);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10023DC14;
  v0[13] = &unk_100A0FF40;
  v0[14] = v2;
  [v1 getPendingNotificationRequestsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10023DB24()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t sub_10023DC14(uint64_t a1, uint64_t a2)
{
  v2 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  sub_10000A7C4(0, &qword_100AD6960, UNNotificationRequest_ptr);
  **(*(v2 + 64) + 40) = sub_1007A25E4();

  return swift_continuation_resume();
}

void sub_10023DC98(uint64_t a1)
{
  v2 = *v1;
  isa = sub_1007A25D4().super.isa;
  [v2 removePendingNotificationRequestsWithIdentifiers:isa];
}

uint64_t sub_10023DD04()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD6808);
  sub_100008B98(v0, qword_100AD6808);
  return sub_10079ACD4();
}

uint64_t sub_10023DD84(uint64_t a1, void *a2)
{
  v48 = a1;
  v3 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  __chkstk_darwin(v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  sub_1005E361C(&v44 - v10);
  if (qword_100AD12F8 != -1)
  {
    swift_once();
  }

  v12 = sub_10079ACE4();
  sub_100008B98(v12, qword_100AD6808);
  sub_10023E328(v11, v8);
  v13 = sub_10079ACC4();
  v14 = sub_1007A29D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52[0] = v16;
    *v15 = 136315138;
    sub_10023E328(v8, v5);
    v17 = sub_1007A22E4();
    v19 = v18;
    sub_10023E398(v8);
    v20 = sub_1000070F4(v17, v19, v52);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Creating service with remote config: %s", v15, 0xCu);
    sub_1000074E0(v16);
  }

  else
  {

    sub_10023E398(v8);
  }

  v21 = [a2 readOnlyChildContext];
  sub_10023E328(v11, v5);
  v22 = type metadata accessor for YearInReviewEntryEligibilityProvider(0);
  v23 = swift_allocObject();
  v24 = v11;
  v25 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config;
  v26 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  v45 = *(*(v26 - 8) + 56);
  v47 = a2;
  v45(v23 + v25, 1, 1, v26);
  v27 = v21;
  v46 = v27;
  sub_100797904();
  v28 = [objc_opt_self() standardUserDefaults];
  v52[0] = 0;
  sub_100798F14();
  *(v23 + 16) = v27;
  v29 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config;
  swift_beginAccess();
  sub_10023E400(v5, v23 + v29);
  swift_endAccess();
  v30 = objc_opt_self();

  v31 = [v30 currentNotificationCenter];
  sub_10023E328(v24, v5);
  v52[3] = v22;
  v52[4] = &off_100A1F320;
  v52[0] = v23;
  v50 = sub_10000A7C4(0, &qword_100AD6950, UNUserNotificationCenter_ptr);
  v51 = &off_100A0FF08;
  *&v49 = v31;
  type metadata accessor for YearInReviewNotificationScheduler(0);
  v32 = swift_allocObject();
  v33 = sub_10022569C(v52, v22);
  v34 = __chkstk_darwin(v33);
  v36 = (&v44 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = *v36;
  v32[5] = v22;
  v32[6] = &off_100A1F320;
  v32[2] = v38;
  v45(v32 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_config, 1, 1, v26);
  *(v32 + OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_experienceSeenObserver) = 0;
  sub_1000077C0(&v49, (v32 + 7));
  v39 = OBJC_IVAR____TtC5Books33YearInReviewNotificationScheduler_config;
  swift_beginAccess();
  sub_10023E400(v5, v32 + v39);
  swift_endAccess();
  sub_1000074E0(v52);
  v40 = objc_allocWithZone(type metadata accessor for TopPicksCardConditionObserver());

  v41 = v47;
  v42 = sub_1004BAEE8(v41, v23);

  sub_1005E3AE8(v23, v32, v42);

  return sub_10023E398(v24);
}

uint64_t sub_10023E328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023E398(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10023E400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10023E494(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&v1[OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind];
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (qword_100AD1680 != -1)
    {
      swift_once();
    }

    v21 = sub_10079ACE4();
    sub_100008B98(v21, qword_100AE4D20);
    v22 = sub_10079ACC4();
    v23 = sub_1007A29D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_1000070F4(0xD000000000000012, 0x80000001008C5C90, &v69);
      v25 = 0xE400000000000000;
      *(v24 + 12) = 2080;
      v26 = 0x6F6F626F69647561;
      v27 = 0xEA0000000000736BLL;
      v28 = 0xE600000000000000;
      v29 = 0x686372616573;
      if (v3 != 4)
      {
        v29 = 0x61676E616DLL;
        v28 = 0xE500000000000000;
      }

      if (v3 != 3)
      {
        v26 = v29;
        v27 = v28;
      }

      v30 = 0xE700000000000000;
      v31 = 0x7972617262696CLL;
      if (v3 != 1)
      {
        v31 = 0x736B6F6F62;
        v30 = 0xE500000000000000;
      }

      if (v3)
      {
        v25 = v30;
      }

      else
      {
        v31 = 1701670760;
      }

      if (v3 <= 2u)
      {
        v32 = v31;
      }

      else
      {
        v32 = v26;
      }

      if (v3 <= 2u)
      {
        v33 = v25;
      }

      else
      {
        v33 = v27;
      }

      v34 = sub_1000070F4(v32, v33, &v69);

      *(v24 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: splitView identifier: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_78;
  }

  v5 = qword_100AD1680;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100AE4D20);
  v8 = sub_10079ACC4();
  v9 = sub_1007A29D4();
  if (os_log_type_enabled(v8, v9))
  {
    v68 = v6;
    v10 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_1000070F4(0xD000000000000012, 0x80000001008C5C90, &v69);
    v11 = 0xE400000000000000;
    *(v10 + 12) = 2080;
    v12 = 0x6F6F626F69647561;
    v13 = 0xEA0000000000736BLL;
    v14 = 0xE600000000000000;
    v15 = 0x686372616573;
    if (v3 != 4)
    {
      v15 = 0x61676E616DLL;
      v14 = 0xE500000000000000;
    }

    if (v3 != 3)
    {
      v12 = v15;
      v13 = v14;
    }

    v16 = 0xE700000000000000;
    v17 = 0x7972617262696CLL;
    if (v3 != 1)
    {
      v17 = 0x736B6F6F62;
      v16 = 0xE500000000000000;
    }

    if (v3)
    {
      v11 = v16;
    }

    else
    {
      v17 = 1701670760;
    }

    if (v3 <= 2u)
    {
      v18 = v17;
    }

    else
    {
      v18 = v12;
    }

    if (v3 <= 2u)
    {
      v19 = v11;
    }

    else
    {
      v19 = v13;
    }

    v20 = sub_1000070F4(v18, v19, &v69);

    *(v10 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: tabBar identifier: %s", v10, 0x16u);
    swift_arrayDestroy();

    v6 = v68;
  }

  else
  {
  }

  v35 = 0xE400000000000000;
  v36 = 0x6F6F626F69647561;
  v37 = 0xEA0000000000736BLL;
  v38 = 0xE600000000000000;
  v39 = 0x686372616573;
  if (v3 != 4)
  {
    v39 = 0x61676E616DLL;
    v38 = 0xE500000000000000;
  }

  if (v3 != 3)
  {
    v36 = v39;
    v37 = v38;
  }

  v40 = 0xE700000000000000;
  v41 = 0x7972617262696CLL;
  if (v3 != 1)
  {
    v41 = 0x736B6F6F62;
    v40 = 0xE500000000000000;
  }

  if (v3)
  {
    v35 = v40;
  }

  else
  {
    v41 = 1701670760;
  }

  if (v3 <= 2u)
  {
    v42 = v41;
  }

  else
  {
    v42 = v36;
  }

  if (v3 <= 2u)
  {
    v43 = v35;
  }

  else
  {
    v43 = v37;
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v44 = sub_1007A2D74();
  v45 = &_dispatch_main_q;
  if (v44 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_100586590(v42, v43);
  v47 = v46;

  if ((v47 & 1) == 0)
  {

LABEL_78:
    v62 = swift_allocObject();
    *(v62 + 16) = v2;
    *(v62 + 24) = v3;
    v63 = v2;
    sub_10023FDC0(sub_100242C20, v62);

    return;
  }

  v48 = sub_10079ACC4();
  v49 = sub_1007A29B4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = v6;
    v51 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v51 = 136315394;
    *(v51 + 4) = sub_1000070F4(0xD000000000000012, 0x80000001008C5C90, &v69);
    v52 = 0xE400000000000000;
    *(v51 + 12) = 2080;
    v53 = 0x6F6F626F69647561;
    v54 = 0xEA0000000000736BLL;
    v55 = 0xE600000000000000;
    v56 = 0x686372616573;
    if (v3 != 4)
    {
      v56 = 0x61676E616DLL;
      v55 = 0xE500000000000000;
    }

    if (v3 != 3)
    {
      v53 = v56;
      v54 = v55;
    }

    v57 = 0xE700000000000000;
    v58 = 0x7972617262696CLL;
    if (v3 != 1)
    {
      v58 = 0x736B6F6F62;
      v57 = 0xE500000000000000;
    }

    if (v3)
    {
      v52 = v57;
    }

    else
    {
      v58 = 1701670760;
    }

    if (v3 <= 2u)
    {
      v59 = v58;
    }

    else
    {
      v59 = v53;
    }

    if (v3 <= 2u)
    {
      v60 = v52;
    }

    else
    {
      v60 = v54;
    }

    v61 = sub_1000070F4(v59, v60, &v69);

    *(v51 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v48, v49, "%s: Invalid tabBar identifier: %s", v51, 0x16u);
    swift_arrayDestroy();

    v6 = v50;
  }

  else
  {
  }

  v64 = sub_1002437F0(v3);
  v66 = v65;
  sub_100242C2C();
  swift_allocError();
  *v67 = v64;
  v67[1] = v66;
  swift_willThrow();
}

uint64_t sub_10023EC48(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&v1[OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind];
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (qword_100AD1680 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AE4D20);
    v18 = sub_10079ACC4();
    v19 = sub_1007A29D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000070F4(0xD000000000000019, 0x80000001008C5C70, &v27);
      *(v20 + 12) = 2080;
      v21 = sub_10036D9C8(v3);
      v23 = sub_1000070F4(v21, v22, &v27);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s: splitView identifier: %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    *(v24 + 24) = v3;
    v25 = v2;
    sub_10023FDC0(sub_100242BB0, v24);
  }

  else
  {
    v5 = qword_100AD1680;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AE4D20);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29D4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v10 = 136315394;
      *(v10 + 4) = sub_1000070F4(0xD000000000000019, 0x80000001008C5C70, &v27);
      *(v10 + 12) = 2080;
      v11 = sub_10036D9C8(v3);
      v13 = sub_1000070F4(v11, v12, &v27);

      *(v10 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: tabBar identifier: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = v2;
    *(v14 + 32) = v6;
    v15 = v6;
    v16 = v2;
    sub_10023FDC0(sub_100242BBC, v14);
  }
}

uint64_t sub_10023EFE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
  return sub_1007A3184() & 1;
}

uint64_t sub_10023F05C(void *a1, uint64_t *a2)
{
  v2 = (*a1 + OBJC_IVAR___BKRootBarItem_identifier);
  if (*v2 == *(*a2 + OBJC_IVAR___BKRootBarItem_identifier) && v2[1] == *(*a2 + OBJC_IVAR___BKRootBarItem_identifier + 8))
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4();
  }
}

void sub_10023F09C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = v3;
  if (qword_100AD1300 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 postNotificationName:qword_100B22EF8 object:a2];
}

void sub_10023F148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1001F1160(&qword_100AD6A60, &qword_100813108);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v7 = sub_1007A1D04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v10 = sub_1007A2D74();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_1007A1D34();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      if ((BUIsRunningTests() & 1) == 0)
      {
        swift_beginAccess();
        sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
        sub_10079B974();
        swift_endAccess();
        sub_100005920(&unk_100AF0EB0, &qword_100AD6A60, &qword_100813108, &protocol conformance descriptor for Published<A>.Publisher);
        v14 = sub_10079BA14();
        (*(v4 + 8))(v6, v3);
        v15[0] = v14;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1001F1160(&unk_100ADFAA0, &qword_100813118);
        sub_100005920(&qword_100AD6A68, &unk_100ADFAA0, &qword_100813118, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_10079BB04();

        swift_beginAccess();
        sub_10079B854();
        swift_endAccess();

        RootBarStandardItemsManager.loadFromCache()();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10023F4BC(unint64_t *a1, char *a2)
{
  v4 = sub_1007A1D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v7 = sub_1007A2D74();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = sub_1007A1D34();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  if (v8 >> 62)
  {
LABEL_17:
    if (sub_1007A38D4())
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v11 = *&a2[OBJC_IVAR___BKRootBarCoordinator_splitViewController];
    if (v11)
    {
      v12 = *&v11[OBJC_IVAR___BKSplitViewController_contentHostingController];
      v13 = v11;
      v14 = v12;
      _s5Books33SplitViewContentHostingControllerC16setStandardItems_8animatedySayAA11RootBarItemCG_SbtF_0(v8);
    }

    v15 = *&a2[OBJC_IVAR___BKRootBarCoordinator_tabBarController];
    if (v15)
    {
      v16 = v15;
      v17 = [v16 viewControllers];
      if (v17)
      {
        v18 = v17;
        sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
        v19 = sub_1007A25E4();

        if (v19 >> 62)
        {
          v20 = sub_1007A38D4();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v21 = v20 != 0;
      }

      else
      {
        v21 = 0;
      }

      TabBarController.setStandardItems(_:animated:)(v8, v21);
    }
  }

LABEL_14:
}

void sub_10023F760(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = a1;
  }

  v3 = OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind;
  if (v2 != (*(v1 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind) & 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = a1;
    if (a1 < 0)
    {
      v5 = *(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    }

    [v5 undockMiniPlayer];
    swift_unknownObjectRelease();
    v6 = *(v1 + v3);
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    sub_100242960(a1, v6);

    if ((*(v1 + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden) & 1) == 0)
    {
      v8 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
      if (v8)
      {
        v9 = *(v1 + v3);
        if ((v9 & 0x8000000000000000) != 0)
        {
          v9 = *(*((v9 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
        }

        v10 = v9;
        v11 = v8;
        [v10 dockMiniPlayer:v11];

        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_10023F940(void *result)
{
  v2 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
  if (!v2)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v2 == result)
  {
    return result;
  }

  if (*(v1 + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden))
  {
LABEL_8:
    v6 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v6 = *(*((v6 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    }

    [v6 undockMiniPlayer];
    goto LABEL_11;
  }

  v3 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v3 = *(*((v3 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  }

  v4 = v3;
  v5 = v2;
  [v4 dockMiniPlayer:v5];

LABEL_11:

  return swift_unknownObjectRelease();
}

uint64_t sub_10023FACC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden) != (result & 1))
  {
    if (*(v1 + OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden))
    {
      v2 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
      if ((v2 & 0x8000000000000000) != 0)
      {
        v2 = *(*((v2 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
      }

      [v2 undockMiniPlayer];
    }

    else
    {
      v3 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
      if (!v3)
      {
        return result;
      }

      v4 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
      if ((v4 & 0x8000000000000000) != 0)
      {
        v4 = *(*((v4 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
      }

      v5 = v4;
      v6 = v3;
      [v5 dockMiniPlayer:v6];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10023FBE8(char *a1)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = a1;
    if (Strong)
    {
      swift_unknownObjectRelease();
      if (Strong == v1)
      {
        swift_unknownObjectWeakAssign();
      }
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRelease();
      if (v6 == v1)
      {
        swift_unknownObjectWeakAssign();
      }
    }

    v7 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
    if (v7)
    {
      v8 = [v7 view];
      if (!v8)
      {
        __break(1u);
        goto LABEL_23;
      }

      v9 = v8;
      [v8 removeInteraction:v4];
    }
  }

  v10 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerPaletteInteraction);
  if (!v10)
  {
    return;
  }

  v11 = OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController;
  v12 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
  v18 = *(v1 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerPaletteInteraction);
  if (v12)
  {
    v13 = v10;
    v14 = [v12 view];
    if (v14)
    {
      v15 = v14;
      [v14 addInteraction:v13];

      v16 = *(v1 + v11);
      if (v16)
      {
        [v16 addSpringLoadedInteractionWith:v13];
      }

      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return;
  }

  v17 = v10;
LABEL_19:
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
}

void sub_10023FDC0(void (*a1)(uint64_t), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 bookPresenter];
      v15 = v5;
      v9 = [v8 bookPresenterCurrentlyOpenBookForSingleScene:v15];

      v10 = swift_unknownObjectRelease();
      if (v9)
      {
        swift_unknownObjectRelease();
        v11 = [v15 newShowAssetTransaction];
        v12 = [v7 bookPresenter];
        v13 = swift_allocObject();
        *(v13 + 16) = a1;
        *(v13 + 24) = a2;
        aBlock[4] = sub_100242AB0;
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003323D0;
        aBlock[3] = &unk_100A100F8;
        v14 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        sub_1000260E8(a1, a2);

        [v12 closeAllPresentersForSingleSceneWithTransaction:v11 animated:1 completion:v14];
        _Block_release(v14);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {
        if (a1)
        {
          a1(v10);
        }

        swift_unknownObjectRelease();
      }

      return;
    }
  }

  if (a1)
  {
    (a1)();
  }
}

id sub_100240030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootBarCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002401E4()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v1 & 0x8000000000000000) != 0)
  {
    v6.receiver = *(*((v1 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    v6.super_class = type metadata accessor for MainContentViewController();
    v5 = objc_msgSendSuper2(&v6, "contentNavigationController");

    return v5;
  }

  else
  {
    v2 = v1;
    v3 = sub_10002112C();

    return v3;
  }
}

id sub_1002402D8()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v1 & 0x8000000000000000) != 0)
  {
    v8 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
    v12.receiver = *(*&v8[OBJC_IVAR___BKSplitViewController_contentHostingController] + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    v12.super_class = type metadata accessor for MainContentViewController();
    v2 = v8;
    v9 = objc_msgSendSuper2(&v12, "contentNavigationController");
    if (v9)
    {
      v6 = v9;
      v7 = [v9 topViewController];
      goto LABEL_8;
    }

LABEL_9:

    return 0;
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v2 = v1;
  v3 = sub_1007A2D74();
  v4 = &_dispatch_main_q;
  if (v3 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v5 = sub_10002112C();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 topViewController];
LABEL_8:
  v10 = v7;

  return v10;
}

void sub_10024042C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  if (qword_100AD1688 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100AE4D38);

  v9 = sub_10079ACC4();
  v10 = sub_1007A29D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136315650;
    *(v11 + 4) = sub_1000070F4(0xD000000000000020, 0x80000001008C5B70, &v26);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1000070F4(0xD000000000000012, 0x8000000100812F60, &v26);
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1000070F4(a1, a2, &v26);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s %s select tab with identifier %s", v11, 0x20u);
    swift_arrayDestroy();
  }

  v12 = *(v4 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v21 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController);
    v22 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = v21;
    v24._countAndFlagsBits = a1;
    v24._object = a2;
    v25 = v23;
    SplitViewContentHostingController.select(identifier:isUserAction:editNameOnSelect:)(v24, a3 & 1, 0);
  }

  else
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v25 = v12;
    v13 = sub_1007A2D74();
    v14 = &_dispatch_main_q;
    if (v13 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    v15 = sub_100586590(a1, a2);
    if ((v16 & 1) == 0)
    {
      v17 = v15;
      v18 = v25;
      if (*(v25 + OBJC_IVAR___BKTabBarController_isTransferingFromSidebar) & 1) == 0 && (a3)
      {
        v19 = [v25 bk_rootBarCoordinator];
        v18 = v25;
        if (v19)
        {
          v20 = [v19 rootViewController];
          swift_unknownObjectRelease();
          [v20 bc_dismissIfSafeAnimated:0];

          v18 = v25;
        }
      }

      [v18 bc_setSelectedIndex:{v17, v25}];
      sub_100020ED0();
    }
  }
}

uint64_t sub_1002407E0(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v5 & 0x8000000000000000) != 0)
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v12 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = sub_1007A2D74();
    v14 = &_dispatch_main_q;
    if (v13 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    v15 = sub_1002E7C04(a1, a2);
    if (v15)
    {

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v6 = v5;
    v7 = sub_1007A2D74();
    v8 = &_dispatch_main_q;
    if (v7 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    sub_100586590(a1, a2);
    v10 = v9;

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

id sub_1002409BC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v12 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = *&v12[OBJC_IVAR___BKSplitViewController_contentHostingController];
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v6 = v12;
    v14 = sub_1007A2D74();
    v15 = &_dispatch_main_q;
    if (v14 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    v16 = OBJC_IVAR___BKSplitViewContentHostingController_cachedControllers;
    swift_beginAccess();
    v17 = *(v13 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_10000E53C(a1, a2);
      if (v19)
      {
        v11 = *(*(v17 + 56) + 8 * v18);

        goto LABEL_11;
      }
    }
  }

  else
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v6 = v5;
    v7 = sub_1007A2D74();
    v8 = &_dispatch_main_q;
    if (v7 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    v9 = sub_100586590(a1, a2);
    if ((v10 & 1) == 0)
    {
      v11 = sub_100586864(v9);
LABEL_11:

      return v11;
    }
  }

  return 0;
}

void sub_100240D94()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_tabBarController);
  if (v1)
  {
    v5 = v1;
    sub_1005891A8();
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_splitViewController);
    if (!v2)
    {
      return;
    }

    v3 = *&v2[OBJC_IVAR___BKSplitViewController_contentHostingController];
    v4 = v2;
    v5 = v3;
    sub_1002E6938();
  }
}

void sub_100240E98(void *a1, double a2, double a3)
{
  v7 = [objc_opt_self() delegate];
  v8 = [v7 sceneManager];

  v9 = [v8 minifiedFlowController];
  [v9 viewWillTransitionToSize:a1 withTransitionCoordinator:{a2, a3}];

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v13[4] = sub_100242BA0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100569BDC;
  v13[3] = &unk_100A101E8;
  v11 = _Block_copy(v13);
  v12 = v3;

  [a1 animateAlongsideTransition:0 completion:v11];
  _Block_release(v11);
}

void sub_100241004(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 windowManager];

  v5 = [*(a2 + OBJC_IVAR___BKRootBarCoordinator_rootViewController) view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 window];

    [v4 updateWindowSizeIfNeeded:v7];
  }

  else
  {
    __break(1u);
  }
}

void sub_1002410E8(void *a1)
{
  v2 = OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController;
  v3 = *&v1[OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController];
  if (v3)
  {
    v4 = v3 == a1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    [v1 undockMiniPlayer];
    v6 = *&v1[v2];
    *&v1[v2] = a1;
    v7 = a1;
    sub_10023F940(v6);

    v8 = *&v1[OBJC_IVAR___BKRootBarCoordinator_miniPlayerInteraction];
    v10 = *&v1[OBJC_IVAR___BKRootBarCoordinator_miniPlayerPaletteInteraction];
    *&v1[OBJC_IVAR___BKRootBarCoordinator_miniPlayerPaletteInteraction] = v8;
    v9 = v8;
    sub_10023FBE8(v10);
  }
}

void sub_100241220()
{
  v1 = OBJC_IVAR___BKRootBarCoordinator_undockingMiniPlayer;
  if ((*(v0 + OBJC_IVAR___BKRootBarCoordinator_undockingMiniPlayer) & 1) == 0)
  {
    *(v0 + OBJC_IVAR___BKRootBarCoordinator_undockingMiniPlayer) = 1;
    v2 = OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController;
    v3 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController);
    if (v3)
    {
      [v3 willUndock];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;
    sub_10023F940(v4);

    v5 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerPaletteInteraction);
    *(v0 + OBJC_IVAR___BKRootBarCoordinator_miniPlayerPaletteInteraction) = 0;
    sub_10023FBE8(v5);

    v6 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController);
    *(v0 + OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController) = 0;

    *(v0 + v1) = 0;
  }
}

uint64_t sub_100241310(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*&v3[OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController])
  {
    v7 = sub_100411508();
    if (!v7)
    {
      v7 = sub_10041240C();
    }

    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    v10 = v8;
    if (v9)
    {
      v11 = [v9 assetViewController];
      if (v11)
      {
        v12 = v11;
        type metadata accessor for AudiobookNowPlayingTouchViewController();
        if (swift_dynamicCastClass() && swift_unknownObjectWeakLoadStrong())
        {

          swift_unknownObjectRelease();
          swift_unknownObjectWeakLoadStrong();
        }

        else
        {
        }
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_unknownObjectRelease();
      swift_unknownObjectWeakAssign();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    [v3 dockMiniPlayer:v10];
  }

  v13 = *&v3[OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController];
  *&v3[OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController] = a1;
  v14 = a1;

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_1000260E8(a2, a3);
  sub_1003443D4(sub_100242AB0, v15);
}

void sub_100241610(void (*a1)(void), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController];
  if (v5)
  {
    if (a1)
    {
      v14[4] = a1;
      v14[5] = a2;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1003323D0;
      v14[3] = &unk_100A10058;
      v6 = _Block_copy(v14);
      v7 = v5;
      sub_1000260E8(a1, a2);
    }

    else
    {
      v13 = v5;
      v6 = 0;
    }

    [v2 presentFullPlayer:v5 completion:v6];
    _Block_release(v6);
  }

  else
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AE4D38);
    v9 = sub_1007A29B4();
    v10 = sub_10079ACC4();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000070F4(0xD000000000000023, 0x80000001008C5B40, v14);
      _os_log_impl(&_mh_execute_header, v10, v9, "%s no full player to present", v11, 0xCu);
      sub_1000074E0(v12);
    }

    if (a1)
    {
      a1();
    }
  }
}

void sub_1002419CC(void *a1, unsigned __int8 a2)
{
  v3 = sub_1007A2214();

  [a1 selectWithIdentifier:v3 isUserAction:0];
}

uint64_t sub_100241AD8(uint64_t a1, char *a2, void *a3)
{
  if (!a1)
  {

LABEL_4:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = [Strong newShowURLTransaction];
    }

    else
    {
      v9 = 0;
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = [v16 libraryCollectionPresenter];
      swift_unknownObjectRelease();
      [v17 showLibraryWithTransaction:v9];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  v6 = sub_1007A3AB4();

  if (v6)
  {
    goto LABEL_4;
  }

  v10 = [a2 selectedItem];
  if (v10)
  {
    v12 = *&v10[OBJC_IVAR___BKRootBarItem_identifier];
    v11 = *&v10[OBJC_IVAR___BKRootBarItem_identifier + 8];
    v13 = v10;

    if (v12 == 0x7972617262696CLL && v11 == 0xE700000000000000)
    {

      goto LABEL_28;
    }

    v15 = sub_1007A3AB4();

    if (v15)
    {
LABEL_28:
      v21 = 5;
      goto LABEL_29;
    }
  }

  if (a1 <= 3u && a1 == 1)
  {
    goto LABEL_24;
  }

  v19 = sub_1007A3AB4();

  if ((v19 & 1) == 0)
  {
    if (a1 == 6)
    {
LABEL_24:

      goto LABEL_27;
    }

    v20 = sub_1007A3AB4();

    if (v20)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_27:
  v21 = 0;
LABEL_29:
  v22 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueSSvg_0(v21);
  v24 = v23;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v25 = sub_1007A2D74();
  v26 = &_dispatch_main_q;
  if (v25 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v27 = sub_100586590(v22, v24);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    [a3 bc_setSelectedIndex:v27];
    sub_100020ED0();
  }

  v30 = [a3 transitionCoordinator];
  if (v30)
  {
    v31 = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    *(v32 + 24) = a1;
    v35[4] = sub_100242BC8;
    v35[5] = v32;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 1107296256;
    v35[2] = sub_100569BDC;
    v35[3] = &unk_100A102B0;
    v33 = _Block_copy(v35);
    v34 = a2;

    [v31 animateAlongsideTransition:0 completion:v33];
    _Block_release(v33);
    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_10024211C(a2, a1);
  }
}

uint64_t sub_10024211C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong newShowURLTransaction];
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = [v6 libraryCollectionPresenter];
    swift_unknownObjectRelease();
    sub_10036DAE8(v2);
    v8 = sub_1007A2214();

    [v7 showLibraryCollectionInPlaceWithTransaction:v5 collectionID:v8 replaceExistingPresentedCollection:1];

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void sub_100242210(void *a1, unsigned __int8 a2)
{
  v3 = sub_1007A2214();

  [a1 selectWithIdentifier:v3 isUserAction:0];
}

uint64_t sub_100242394(uint64_t a1, unint64_t a2)
{
  if (qword_100AD1680 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AE4D20);

  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000070F4(0xD000000000000010, 0x80000001008C5C50, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1000070F4(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "RootBarCoordinator: %s: term: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_10023FDC0(sub_100242BA8, v8);
}

void sub_10024257C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_1007A2214();
  [v2 searchForTerm:v3];
}

id UIViewController.rootBarCoordinator.getter()
{
  v1 = [v0 splitViewController];
  if (!v1)
  {
    v1 = [v0 tabBarController];
  }

  v2 = v1;
  v3 = [v1 bk_rootBarCoordinator];

  return v3;
}

uint64_t sub_10024270C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100242768(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1002427FC()
{
  if (qword_100AD1688 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();
  sub_100008B98(v0, qword_100AE4D38);
  v1 = sub_10079ACC4();
  v2 = sub_1007A29D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "rootViewDidDisappear: Sending .rootViewControllerDidDisappear notification", v3, 2u);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_100AD1308 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_100B22F00 object:0];
}

uint64_t sub_100242960(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v4 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController);
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v6 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController);
  }

  else
  {
    v6 = a2;
  }

  v7 = v6;
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (v5 != v7)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      a2 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController);
      v9 = &protocol witness table for SplitViewContentHostingController;
    }

    else
    {
      v9 = &protocol witness table for TabBarController;
    }

    v10 = a2;
    if ((v3 & 0x8000000000000000) != 0)
    {
      v3 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR___BKSplitViewController_contentHostingController);
      v11 = &protocol witness table for SplitViewContentHostingController;
    }

    else
    {
      v11 = &protocol witness table for TabBarController;
    }

    v12 = v3;
    swift_getObjectType();
    (*(v9[2] + 1))(v12, v11[1]);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100242AB0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100242AE0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADFAD0, &unk_100818CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100242B48()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100242BC8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {

    return sub_10024211C(v2, v3);
  }

  return result;
}

unint64_t sub_100242C2C()
{
  result = qword_100AD6A70;
  if (!qword_100AD6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6A70);
  }

  return result;
}

id sub_100242CA0()
{
  v1 = OBJC_IVAR____TtC5Books24FloatingPlayerController____lazy_storage___floatingPlayerContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC5Books24FloatingPlayerController____lazy_storage___floatingPlayerContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books24FloatingPlayerController____lazy_storage___floatingPlayerContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for FloatingPlayerContainerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100242DAC(uint64_t a1, uint64_t a2)
{
  v53.receiver = v2;
  v53.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v53, "viewDidLoad");
  v3 = [v2 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden:1 animated:0];
  }

  v5 = *&v2[OBJC_IVAR____TtC5Books24FloatingPlayerController_mainContentViewController];
  [v2 addChildViewController:v5];
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v2 view];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 addSubview:v7];

  [v5 didMoveToParentViewController:v2];
  v10 = [v2 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  v12 = sub_100242CA0();
  [v11 addSubview:v12];

  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100813130;
  v14 = OBJC_IVAR____TtC5Books24FloatingPlayerController____lazy_storage___floatingPlayerContainerView;
  v15 = [*&v2[OBJC_IVAR____TtC5Books24FloatingPlayerController____lazy_storage___floatingPlayerContainerView] heightAnchor];
  v16 = [v15 constraintEqualToConstant:54.0];

  *(v13 + 32) = v16;
  v17 = [*&v2[v14] widthAnchor];
  v18 = [v17 constraintEqualToConstant:584.0];

  *(v13 + 40) = v18;
  v19 = [*&v2[v14] bottomAnchor];
  v20 = [v2 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:-5.0];
  *(v13 + 48) = v23;
  v24 = [*&v2[v14] centerXAnchor];
  v25 = [v7 safeAreaLayoutGuide];
  v26 = [v25 centerXAnchor];

  v27 = [v24 constraintEqualToAnchor:v26];
  *(v13 + 56) = v27;
  v28 = [v7 topAnchor];
  v29 = [v2 view];
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v13 + 64) = v32;
  v33 = [v7 leadingAnchor];
  v34 = [v2 view];
  if (!v34)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v13 + 72) = v37;
  v38 = [v7 trailingAnchor];
  v39 = [v2 view];
  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v13 + 80) = v42;
  v43 = [v7 bottomAnchor];
  v44 = [v2 view];
  if (!v44)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v45 bottomAnchor];

  v48 = [v43 constraintEqualToAnchor:v47];
  *(v13 + 88) = v48;
  sub_10002267C();
  isa = sub_1007A25D4().super.isa;

  [v46 activateConstraints:isa];

  [*&v2[v14] setHidden:1];
  v50 = [v2 view];
  if (v50)
  {
    v51 = v50;
    v52 = [objc_opt_self() clearColor];
    [v51 setBackgroundColor:v52];

    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Int sub_1002434A8(unsigned __int8 a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

Swift::Int sub_1002435B0(unsigned __int8 a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

Swift::Int sub_1002436D0(unsigned __int8 a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1002437F0(unsigned __int8 a1)
{
  v1 = 0xE400000000000000;
  v2 = 1701670760;
  v3 = 0xEA0000000000736BLL;
  v4 = 0x6F6F626F69647561;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (a1 != 4)
  {
    v6 = 0x61676E616DLL;
    v5 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7972617262696CLL;
  if (a1 != 1)
  {
    v8 = 0x736B6F6F62;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v2 = v8;
    v1 = v7;
  }

  if (a1 <= 2u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  if (a1 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v3;
  }

  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v9, v10);
  if (v11)
  {

    v12 = 14;
  }

  else
  {
    v12 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v9, v10);
    if (v12 == 16)
    {
      v12 = 15;
    }
  }

  sub_10047E894(v12, v15);
  if (!v15[1])
  {
    return 0x6E776F6E6B6E75;
  }

  v13 = v15[0];

  sub_100247AE4(v15);
  return v13;
}

uint64_t sub_10024394C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD6AC8);
  sub_100008B98(v0, qword_100AD6AC8);
  return sub_10079ACD4();
}

uint64_t sub_1002439CC()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v25 = &v19 - v1;
  v2 = sub_1007967F4();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100796CF4();
  v23 = *(v5 - 8);
  v24 = v5;
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v19 = sub_1007A21D4();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  v20 = sub_100796814();
  v15 = *(v20 - 8);
  __chkstk_darwin(v20);
  v16 = sub_100796314();
  sub_100009A38(v16, qword_100B22F08);
  sub_100008B98(v16, qword_100B22F08);
  sub_1007A2154();
  sub_100796C94();
  v17 = v19;
  (*(v9 + 16))(v11, v14, v19);
  *v4 = type metadata accessor for BundleFinder();
  (*(v21 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v22);
  sub_100796C94();
  sub_100796824();
  (*(v23 + 8))(v8, v24);
  (*(v9 + 8))(v14, v17);
  (*(v15 + 56))(v25, 1, 1, v20);
  return sub_100796304();
}

uint64_t sub_100243DCC()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v103 = &v70 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v96 = &v70 - v3;
  v4 = sub_1007967F4();
  v5 = *(v4 - 8);
  v104 = v4;
  v105 = v5;
  __chkstk_darwin(v4);
  v93 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_100796CF4();
  v7 = *(v78 - 8);
  __chkstk_darwin(v78);
  v102 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v70 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  v101 = sub_100796814();
  v71 = *(v101 - 8);
  v75 = v71;
  __chkstk_darwin(v101);
  v73 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v83 = &v70 - v21;
  sub_1001F1160(&qword_100AD6BB8, &qword_100813728);
  v22 = sub_1001F1160(&qword_100AD3B50, &qword_10080CCF0);
  v94 = v22;
  v23 = *(v22 - 8);
  v84 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v74 = v25;
  *(v25 + 16) = xmmword_100813170;
  v85 = v25 + v24;
  v72 = *(v22 + 48);
  *(v25 + v24) = 0;
  sub_1007A2154();
  sub_100796C94();
  v89 = *(v13 + 16);
  v90 = v13 + 16;
  v89(v15, v18, v12);
  v26 = *(v7 + 16);
  v92 = v7 + 16;
  v99 = v26;
  v27 = v78;
  v26(v102, v11, v78);
  v100 = type metadata accessor for BundleFinder();
  v28 = v93;
  *v93 = v100;
  v82 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v81 = *(v105 + 104);
  v105 += 104;
  v81(v28);
  sub_100796834();
  v29 = *(v7 + 8);
  v95 = v7 + 8;
  v86 = v29;
  v29(v11, v27);
  v30 = *(v13 + 8);
  v97 = v13 + 8;
  v98 = v30;
  v70 = v12;
  v30(v18, v12);
  v31 = v75;
  v32 = *(v75 + 56);
  v87 = v75 + 56;
  v88 = v32;
  v32(v96, 1, 1, v101);
  v91 = sub_100796104();
  v33 = *(v91 - 8);
  v79 = *(v33 + 56);
  v80 = v33 + 56;
  v79(v103, 1, 1, v91);
  sub_1001F1160(&qword_100AD4A80, &qword_1008119B0);
  v71 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10080B690;
  v76 = v18;
  sub_1007A2154();
  sub_100796C94();
  v77 = v15;
  v35 = v89;
  v89(v15, v18, v12);
  v99(v102, v11, v27);
  v36 = v93;
  *v93 = v100;
  v37 = v82;
  (v81)(v36, v82, v104);
  v38 = v73;
  sub_100796834();
  v86(v11, v27);
  v39 = v76;
  v40 = v70;
  v98(v76, v70);
  v41 = v38;
  v42 = v101;
  (*(v75 + 32))(v34 + v71, v41, v101);
  v43 = v85;
  sub_100796114();
  v73 = v43 + v84;
  v75 = *(v94 + 48);
  *v73 = 1;
  sub_1007A2154();
  sub_100796C94();
  v44 = v40;
  v35(v77, v39, v40);
  v45 = v78;
  v99(v102, v11, v78);
  v46 = v93;
  *v93 = v100;
  (v81)(v46, v37, v104);
  sub_100796834();
  v47 = v11;
  v48 = v86;
  v86(v47, v45);
  v49 = v76;
  v98(v76, v44);
  v88(v96, 1, 1, v42);
  v50 = v79;
  v79(v103, 1, 1, v91);
  sub_100796124();
  v75 = 2 * v84;
  v72 = v85 + 2 * v84;
  v73 = *(v94 + 48);
  *v72 = 2;
  sub_1007A2154();
  sub_100796C94();
  v89(v77, v49, v44);
  v51 = v78;
  v99(v102, v47, v78);
  *v46 = v100;
  (v81)(v46, v82, v104);
  sub_100796834();
  v48(v47, v51);
  v52 = v76;
  v98(v76, v44);
  v88(v96, 1, 1, v101);
  v50(v103, 1, 1, v91);
  sub_100796124();
  v73 = v85 + v75 + v84;
  v75 = *(v94 + 48);
  *v73 = 3;
  sub_1007A2154();
  sub_100796C94();
  v53 = v52;
  v89(v77, v52, v44);
  v54 = v47;
  v55 = v51;
  v99(v102, v47, v51);
  v56 = v93;
  *v93 = v100;
  v57 = v81;
  (v81)(v56, v82, v104);
  sub_100796834();
  v86(v54, v55);
  v58 = v53;
  v98(v53, v44);
  v88(v96, 1, 1, v101);
  v79(v103, 1, 1, v91);
  sub_100796124();
  v75 = 4 * v84;
  v59 = v85;
  v73 = v85 + 4 * v84;
  v72 = *(v94 + 48);
  *v73 = 4;
  sub_1007A2154();
  sub_100796C94();
  v60 = v77;
  v61 = v44;
  v89(v77, v58, v44);
  v99(v102, v54, v55);
  v62 = v93;
  *v93 = v100;
  (v57)(v62, v82, v104);
  sub_100796834();
  v86(v54, v55);
  v63 = v76;
  v98(v76, v44);
  v64 = v96;
  v88(v96, 1, 1, v101);
  v79(v103, 1, 1, v91);
  sub_100796124();
  v65 = (v59 + v75 + v84);
  v84 = *(v94 + 48);
  *v65 = 5;
  sub_1007A2154();
  sub_100796C94();
  v89(v60, v63, v61);
  v66 = v78;
  v99(v102, v54, v78);
  v67 = v93;
  *v93 = v100;
  (v81)(v67, v82, v104);
  sub_100796834();
  v86(v54, v66);
  v98(v63, v61);
  v88(v64, 1, 1, v101);
  v79(v103, 1, 1, v91);
  sub_100796124();
  v68 = sub_1001ED644(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B22F20 = v68;
  return result;
}
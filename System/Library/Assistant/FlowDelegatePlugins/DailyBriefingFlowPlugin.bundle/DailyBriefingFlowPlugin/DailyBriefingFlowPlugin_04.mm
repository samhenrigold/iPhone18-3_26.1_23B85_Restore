uint64_t type metadata accessor for CurrentWeatherForecast(uint64_t a1)
{
  result = qword_DE008;
  if (!qword_DE008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_58824(uint64_t a1)
{
  sub_588D0(319);
  if (v1 <= 0x3F)
  {
    sub_5896C(319);
    if (v2 <= 0x3F)
    {
      sub_A2EA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_588D0(uint64_t a1)
{
  if (!qword_DE018)
  {
    sub_58928();
    v1 = sub_A2B74();
    if (!v2)
    {
      atomic_store(v1, &qword_DE018);
    }
  }
}

unint64_t sub_58928()
{
  result = qword_DE020;
  if (!qword_DE020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE020);
  }

  return result;
}

void sub_5896C(uint64_t a1)
{
  if (!qword_DE028)
  {
    sub_1B4B0(&qword_DB768, &unk_A9650);
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_DE028);
    }
  }
}

uint64_t sub_589D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for CalendarEvent(0);
  v6 = v5;
  if (v4)
  {
    sub_106FC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_A924(a2, v7, 1, v6);
}

uint64_t sub_58A74@<X0>(uint64_t a1@<X8>)
{
  sub_4BF0(&qword_DE088, qword_A9A40);
  sub_1E530(&qword_DE090, &qword_DE088, qword_A9A40, &protocol conformance descriptor for Forecast<A>);
  sub_A48E4();
  sub_A4904();
  if (v10[4] == v10[0])
  {
    v2 = sub_A3074();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_A4924();
    v7 = v6;
    v8 = sub_A3074();
    (*(*(v8 - 8) + 16))(a1, v7, v8);
    v5(v10, 0);
    v3 = a1;
    v4 = 0;
    v2 = v8;
  }

  return sub_A924(v3, v4, 1, v2);
}

uint64_t sub_58BCC()
{
  v1 = sub_4BF0(&qword_DB760, qword_A6AE8);
  __chkstk_darwin(v1);
  v3 = &v22[-v2];
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_A4B54(16);

  strcpy(v23, "temperature: ");
  HIWORD(v23[1]) = -4864;
  sub_4BF0(&qword_DB768, &unk_A9650);
  sub_1E530(&qword_DE068, &qword_DB768, &unk_A9650, &protocol conformance descriptor for Measurement<A>);
  v24._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v24);

  sub_59ACC();
  v5 = v23[0];
  v4 = v23[1];
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_A4B54(20);

  v23[0] = 0xD000000000000011;
  v23[1] = 0x80000000000B1A60;
  v6 = type metadata accessor for CurrentWeatherForecast(0);
  sub_CEBC(v0 + v6[5], v3);
  sub_59AC0();
  v25._countAndFlagsBits = sub_A4644();
  sub_A46D4(v25);

  sub_59ACC();
  v7 = v23[0];
  v8 = v23[1];
  v23[0] = v5;
  v23[1] = v4;

  v26._countAndFlagsBits = v7;
  v26._object = v8;
  sub_A46D4(v26);

  v10 = v23[0];
  v9 = v23[1];
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_A4B54(19);

  v23[0] = 0xD000000000000010;
  v23[1] = 0x80000000000B1A80;
  sub_CEBC(v0 + v6[6], v3);
  sub_59AC0();
  v27._countAndFlagsBits = sub_A4644();
  sub_A46D4(v27);

  sub_59ACC();
  v11 = v23[0];
  v12 = v23[1];
  v23[0] = v10;
  v23[1] = v9;

  v28._countAndFlagsBits = v11;
  v28._object = v12;
  sub_A46D4(v28);

  v14 = v23[0];
  v13 = v23[1];
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  v29._countAndFlagsBits = 0x6F697469646E6F63;
  v29._object = 0xEB00000000203A6ELL;
  sub_A46D4(v29);
  v22[15] = *(v0 + v6[7]);
  sub_A4C44();
  sub_59ACC();
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = v14;
  v23[1] = v13;

  v30._countAndFlagsBits = v15;
  v30._object = v16;
  sub_A46D4(v30);

  v18 = v23[0];
  v17 = v23[1];
  strcpy(v23, "startTime: ");
  HIDWORD(v23[1]) = -352321536;
  sub_A2EA4();
  sub_29CFC();
  v31._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v31);

  v19 = v23[0];
  v20 = v23[1];
  v23[0] = v18;
  v23[1] = v17;

  v32._countAndFlagsBits = v19;
  v32._object = v20;
  sub_A46D4(v32);

  return v23[0];
}

uint64_t sub_58F50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v72 = a1;
  v78 = a2;
  sub_A3174();
  sub_591C();
  v76 = v3;
  v77 = v2;
  __chkstk_darwin(v2);
  sub_AA54();
  v75 = v5 - v4;
  v6 = sub_4BF0(&qword_DE080, &qword_A9A38);
  __chkstk_darwin(v6 - 8);
  sub_36194();
  v65 = v7 - v8;
  __chkstk_darwin(v9);
  v64 = &v64 - v10;
  sub_A3074();
  sub_591C();
  v66 = v12;
  v67 = v11;
  __chkstk_darwin(v11);
  sub_AA54();
  v15 = v14 - v13;
  v16 = sub_4BF0(&qword_DB760, qword_A6AE8);
  __chkstk_darwin(v16 - 8);
  sub_36194();
  v71 = v17 - v18;
  __chkstk_darwin(v19);
  v79 = &v64 - v20;
  v68 = sub_4BF0(&qword_DB768, &unk_A9650);
  sub_591C();
  v74 = v21;
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  v25 = sub_A2EA4();
  sub_591C();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_36194();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &v64 - v33;
  sub_A30D4();
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v35 = sub_A43D4();
  sub_48A4(v35, qword_E0BB8);
  v80[0] = 0;
  v80[1] = 0xE000000000000000;
  sub_A4B54(16);

  strcpy(v80, "current date: ");
  HIBYTE(v80[1]) = -18;
  sub_29CFC();
  v81._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v81);

  sub_810AC(v80[0], v80[1], 0xD000000000000034, 0x80000000000B1AA0, 0xD00000000000001CLL, 0x80000000000B1AE0);

  v36 = *(v27 + 16);
  v69 = v34;
  v73 = v25;
  v36(v31, v34, v25);
  v37 = sub_67C20(v31);
  sub_A30C4();
  v70 = v27;
  if (v37 == 1)
  {
    sub_4BF0(&qword_DE088, qword_A9A40);
    sub_A3254();
    v38 = v79;
    sub_A3064();
    v39 = v67;
    v40 = *(v66 + 8);
    v40(v15, v67);
    v41 = v68;
    sub_A924(v38, 0, 1, v68);
    v42 = v41;
    sub_4BF0(&qword_DE088, qword_A9A40);
    sub_A3254();
    v43 = v71;
    sub_A3054();
    v40(v15, v39);
    v44 = 0;
  }

  else
  {
    v45 = v64;
    sub_58A74(v64);
    v46 = v67;
    v47 = sub_CF2C(v45, 1, v67);
    v48 = v79;
    if (v47 == 1)
    {
      sub_AD70(v45, &qword_DE080, &qword_A9A38);
      v49 = 1;
    }

    else
    {
      sub_A3064();
      v50 = sub_59AC0();
      v51(v50);
      v49 = 0;
    }

    v52 = v65;
    v53 = v48;
    v42 = v68;
    sub_A924(v53, v49, 1, v68);
    sub_58A74(v52);
    if (sub_CF2C(v52, 1, v46) == 1)
    {
      sub_AD70(v52, &qword_DE080, &qword_A9A38);
      v44 = 1;
      v43 = v71;
    }

    else
    {
      v43 = v71;
      sub_A3054();
      v54 = sub_59AC0();
      v55(v54);
      v44 = 0;
    }

    v38 = v79;
  }

  sub_A924(v43, v44, 1, v42);
  v56 = v42;
  v57 = v75;
  sub_A30E4();
  v58 = v74;
  v59 = v78;
  (*(v74 + 16))(v78, v24, v56);
  v60 = v43;
  v61 = type metadata accessor for CurrentWeatherForecast(0);
  sub_CEBC(v38, v59 + v61[5]);
  sub_CEBC(v60, v59 + v61[6]);
  v62 = sub_3951C();
  (*(v76 + 8))(v57, v77);
  sub_AD70(v60, &qword_DB760, qword_A6AE8);
  sub_AD70(v38, &qword_DB760, qword_A6AE8);
  (*(v58 + 8))(v24, v56);
  *(v59 + v61[7]) = v62;
  return (*(v70 + 32))(v59 + v61[8], v69, v73);
}

void *sub_59680(uint64_t a1)
{
  v34 = sub_A3174();
  sub_591C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_AA54();
  v33 = v6 - v5;
  v32 = sub_A30B4();
  sub_591C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_AA54();
  v29 = v11 - v10;
  type metadata accessor for CurrentWeatherForecast(0);
  sub_591C();
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  sub_AA54();
  v16 = v15 - v14;
  sub_4BF0(&qword_DE070, &qword_A9A30);
  sub_1E530(&qword_DE078, &qword_DE070, &qword_A9A30, &protocol conformance descriptor for Forecast<A>);
  v17 = sub_A48F4();
  v18 = _swiftEmptyArrayStorage;
  if (!v17)
  {
    return v18;
  }

  v19 = v17;
  v36 = _swiftEmptyArrayStorage;
  sub_7AE88(0, v17 & ~(v17 >> 63), 0);
  v18 = _swiftEmptyArrayStorage;
  result = sub_A48E4();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v28 = (v8 + 16);
    v27 = (v8 + 8);
    do
    {
      v21 = sub_A4924();
      (*v28)(v29);
      v21(v35, 0);
      sub_A3084();
      v22 = a1;
      v23 = v30[5];
      v24 = sub_4BF0(&qword_DB768, &unk_A9650);
      sub_A924(v16 + v23, 1, 1, v24);
      sub_A924(v16 + v30[6], 1, 1, v24);
      sub_A30A4();
      LOBYTE(v23) = sub_3951C();
      (*(v3 + 8))(v33, v34);
      sub_A3094();
      (*v27)(v29, v32);
      *(v16 + v30[7]) = v23;
      v36 = v18;
      v26 = v18[2];
      v25 = v18[3];
      if (v26 >= v25 >> 1)
      {
        sub_7AE88((v25 > 1), v26 + 1, 1);
        v18 = v36;
      }

      v18[2] = v26 + 1;
      sub_59A5C(v16, v18 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26);
      sub_A4914();
      --v19;
      a1 = v22;
    }

    while (v19);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_59A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherForecast(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_59ACC()
{
  v1._countAndFlagsBits = 10;
  v1._object = 0xE100000000000000;

  sub_A46D4(v1);
}

uint64_t sub_59AE4()
{
  type metadata accessor for DBDateTimeRangeStore(0);
  v0 = swift_allocObject();
  result = sub_A4074();
  qword_E08E0 = v0;
  return result;
}

uint64_t sub_59B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_4BF0(&qword_DE158, qword_A9A88);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_A4054();
  sub_A924(v6, 1, 1, v7);
  sub_A4094();
  sub_A40A4();
  sub_59DE0();
  sub_A4544();
  v8 = sub_A4064();

  sub_59E38(v6);
  return v8 & 1;
}

uint64_t sub_59C60()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin20DBDateTimeRangeStore_store;
  v2 = sub_A4084();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DBDateTimeRangeStore(uint64_t a1)
{
  result = qword_DE0C8;
  if (!qword_DE0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_59D50(uint64_t a1)
{
  result = sub_A4084();
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

unint64_t sub_59DE0()
{
  result = qword_DE160;
  if (!qword_DE160)
  {
    sub_A4094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE160);
  }

  return result;
}

uint64_t sub_59E38(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DE158, qword_A9A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_59EB4()
{
  sub_5950();
  sub_4BF0(&qword_DDCB8, &unk_A9930);
  v1 = swift_allocObject();
  *(v0 + 24) = v1;
  *(v1 + 16) = xmmword_A6E60;
  *(v1 + 56) = &type metadata for WarningsDialogs;
  *(v1 + 64) = &off_D3020;
  *(v1 + 32) = 2;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 104) = &type metadata for PodcastsDialogs;
  *(v1 + 112) = &off_D3350;
  *(v1 + 80) = 1;
  *(v1 + 120) = _swiftEmptyArrayStorage;
  *(v1 + 152) = &type metadata for PodcastsDialogs;
  *(v1 + 160) = &off_D3350;
  *(v1 + 128) = 2;
  *(v1 + 168) = _swiftEmptyArrayStorage;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_59FD0;

  return sub_6BD4C();
}

uint64_t sub_59FD0()
{
  sub_5950();
  v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_5A0DC()
{
  sub_5950();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  v1[26] = swift_task_alloc();
  v4 = sub_A3784();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_5A1D4, 0, 0);
}

uint64_t sub_5A1D4()
{
  *(v0 + 64) = 0u;
  v1 = *(v0 + 192);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  sub_7584(v1, v1[3]);
  if (sub_A3464())
  {
    sub_5AB0C(v0 + 64);
    *(v0 + 64) = 1;
    *(v0 + 88) = &type metadata for WarningsDialogs;
    *(v0 + 96) = &off_D3020;
  }

  sub_5AA9C(v0 + 64, v0 + 144);
  if (*(v0 + 168))
  {
    sub_A814((v0 + 144), v0 + 104);
  }

  else
  {
    *(v0 + 128) = &type metadata for WarningsDialogs;
    *(v0 + 136) = &off_D3020;
    *(v0 + 104) = 0;
  }

  sub_A814((v0 + 104), v0 + 16);
  *(v0 + 56) = _swiftEmptyArrayStorage;
  sub_5551C();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4 >= *(v2 + 24) >> 1)
  {
    sub_5AE60();
    v3 = v13;
  }

  v5 = *(v0 + 192);
  *(v3 + 16) = v4 + 1;
  v6 = (v3 + 48 * v4);
  v7 = *(v0 + 16);
  v8 = *(v0 + 48);
  v6[3] = *(v0 + 32);
  v6[4] = v8;
  v6[2] = v7;
  sub_7584(v5, v1[3]);
  if (sub_A34C4())
  {
    v9 = *(v3 + 16);
    if (v9 >= *(v3 + 24) >> 1)
    {
      sub_5AE60();
      v3 = v14;
    }

    *(v3 + 16) = v9 + 1;
    v10 = v3 + 48 * v9;
    *(v10 + 32) = 6;
    *(v10 + 48) = *&v15[15];
    *(v10 + 56) = &type metadata for CommonDialogs;
    *(v10 + 33) = *v15;
    *(v10 + 64) = &off_D30C8;
    *(v10 + 72) = _swiftEmptyArrayStorage;
  }

  *(v0 + 240) = v3;
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_5A3F8;

  return sub_6BD4C();
}

uint64_t sub_5A3F8()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;
  *(v4 + 256) = v3;

  return _swift_task_switch(sub_5A50C, 0, 0);
}

void sub_5A50C()
{
  v1 = v0[32];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[28];
    v4 = *(v3 + 16);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v4(v0[29], v5, v0[27]);
    if (v2 == 1)
    {
      sub_5AB0C((v0 + 8));

      v6 = 1;
    }

    else
    {
      v4(v0[26], v5 + *(v0[28] + 72), v0[27]);

      sub_5AB0C((v0 + 8));
      v6 = 0;
    }

    v8 = v0[28];
    v7 = v0[29];
    v10 = v0[26];
    v9 = v0[27];
    v11 = v0[23];
    sub_A924(v10, v6, 1, v9);
    (*(v8 + 32))(v11, v7, v9);
    v12 = type metadata accessor for LocationWarningTemplatingResult(0);
    sub_5AB94(v10, v11 + *(v12 + 20));

    v13 = v0[1];

    v13();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5A664(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return sub_58F8();
}

uint64_t sub_5A67C()
{
  v1 = *(v0 + 88);
  *(v0 + 40) = &type metadata for WarningsDialogs;
  *(v0 + 48) = &off_D3020;
  *(v0 + 16) = 3;
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = xmmword_A6E70;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x80000000000B1B80;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_5A7AC;
  v4 = *(v0 + 56);

  return sub_6B4A0(v4, v0 + 16, v2);
}

uint64_t sub_5A7AC()
{
  sub_5950();
  v4 = *v0;
  sub_5930();
  *v1 = v4;

  sub_761C((v4 + 16));
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5A8B8(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25WarningsTemplatingService_logger;
  if (qword_DAA08 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0C48);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_5A980()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25WarningsTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_5A9DC()
{

  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin25WarningsTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_5AA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DE238, &qword_A9AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5AB0C(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DE238, &qword_A9AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5AB94(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5AC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A3784();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_CF2C(v8, a2, v7);
}

uint64_t sub_5ACD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_A3784();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_A924(v10, a2, a2, v9);
}

void sub_5AD84(uint64_t a1)
{
  sub_A3784();
  if (v1 <= 0x3F)
  {
    sub_5AE08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_5AE08(uint64_t a1)
{
  if (!qword_DE2A8)
  {
    sub_A3784();
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_DE2A8);
    }
  }
}

void sub_5AE60()
{

  sub_5551C();
}

uint64_t sub_5AE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_A2EA4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_CF2C(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_4BF0(&qword_DD220, qword_A9B20);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_5AF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_A2EA4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_4BF0(&qword_DD220, qword_A9B20);
    v10 = a1 + *(a4 + 24);
  }

  return sub_A924(v10, a2, a2, v9);
}

uint64_t type metadata accessor for DBCalendarState(uint64_t a1)
{
  result = qword_DE330;
  if (!qword_DE330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5B0AC(uint64_t a1)
{
  v1 = sub_A2EA4();
  if (v2 <= 0x3F)
  {
    sub_5B204(319, &qword_DE340, &type metadata accessor for URL, &type metadata accessor for Array);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_5B204(319, &qword_DE348, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_5B268();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_5B204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_5B268()
{
  if (!qword_DE350)
  {
    v0 = sub_A4A24();
    if (!v1)
    {
      atomic_store(v0, &qword_DE350);
    }
  }
}

uint64_t sub_5B2B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_A4E44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7261646E656C6163 && a2 == 0xEB00000000734449;
    if (v6 || (sub_A4E44() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_A4E44() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_A4E44() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756F436C61746F74 && a2 == 0xEA0000000000746ELL;
          if (v9 || (sub_A4E44() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000000000B1BA0 == a2;
            if (v10 || (sub_A4E44() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x80000000000B1BC0 == a2;
              if (v11 || (sub_A4E44() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000000000B1BE0 == a2;
                if (v12 || (sub_A4E44() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000012 && 0x80000000000B1C00 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_A4E44();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_5B59C(char a1)
{
  result = 0x697461636F766E69;
  switch(a1)
  {
    case 1:
      result = 0x7261646E656C6163;
      break;
    case 2:
      result = 0x7461447472617473;
      break;
    case 3:
      result = 0x746E756F63;
      break;
    case 4:
      result = 0x756F436C61746F74;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5B6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_A2EA4();
  sub_591C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_AA54();
  v10 = v9 - v8;
  v11 = sub_4BF0(&qword_DD220, qword_A9B20);
  __chkstk_darwin(v11 - 8);
  sub_36194();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v62 - v16;
  v18 = sub_4BF0(&qword_DD520, &qword_A9BD0);
  sub_7A14();
  __chkstk_darwin(v19);
  sub_36194();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v25 = &v62 - v24;
  if ((sub_A2E64() & 1) == 0)
  {
    return 0;
  }

  v65 = v22;
  v26 = type metadata accessor for DBCalendarState(0);
  if ((sub_1B950(*(a1 + *(v26 + 20)), *(a2 + *(v26 + 20))) & 1) == 0)
  {
    return 0;
  }

  v62 = v14;
  v63 = v26;
  v64 = v6;
  v27 = *(v26 + 24);
  v28 = *(v18 + 48);
  sub_4D1A4(a1 + v27, v25);
  sub_4D1A4(a2 + v27, &v25[v28]);
  sub_11FCC(v25);
  if (v29)
  {
    sub_11FCC(&v25[v28]);
    if (v29)
    {
      sub_11E34(v25, &qword_DD220, qword_A9B20);
      goto LABEL_14;
    }

LABEL_11:
    v32 = v25;
LABEL_12:
    sub_11E34(v32, &qword_DD520, &qword_A9BD0);
    return 0;
  }

  sub_4D1A4(v25, v17);
  sub_11FCC(&v25[v28]);
  if (v29)
  {
    v30 = sub_5CB30();
    v31(v30);
    goto LABEL_11;
  }

  v33 = v64;
  (*(v64 + 32))(v10, &v25[v28], v4);
  sub_5CAB8();
  v36 = sub_5C7DC(v34, v35, &protocol conformance descriptor for Date);
  v37 = sub_5CB70(v36);
  v38 = *(v33 + 8);
  v38(v10, v4);
  v39 = sub_5CB30();
  (v38)(v39);
  sub_11E34(v25, &qword_DD220, qword_A9B20);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v40 = v63;
  if (*(a1 + v63[7]) != *(a2 + v63[7]))
  {
    return 0;
  }

  sub_5CB5C();
  if (v42)
  {
    if (!v41)
    {
      return 0;
    }
  }

  else
  {
    sub_5CB3C();
    if (v43)
    {
      return 0;
    }
  }

  if (*(a1 + v40[9]) != *(a2 + v40[9]) || (sub_1B950(*(a1 + v40[10]), *(a2 + v40[10])) & 1) == 0)
  {
    return 0;
  }

  v44 = v40[11];
  v45 = *(v18 + 48);
  v46 = v65;
  sub_4D1A4(a1 + v44, v65);
  sub_4D1A4(a2 + v44, v46 + v45);
  sub_11FCC(v46);
  if (v29)
  {
    sub_11FCC(v46 + v45);
    if (v29)
    {
      sub_11E34(v46, &qword_DD220, qword_A9B20);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_4D1A4(v46, v62);
  sub_11FCC(v46 + v45);
  v48 = v46;
  if (v47)
  {
    v49 = sub_5CB30();
    v50(v49);
LABEL_29:
    v32 = v46;
    goto LABEL_12;
  }

  v51 = v64;
  (*(v64 + 32))(v10, v46 + v45, v4);
  sub_5CAB8();
  v54 = sub_5C7DC(v52, v53, &protocol conformance descriptor for Date);
  v55 = sub_5CB70(v54);
  v56 = *(v51 + 8);
  v56(v10, v4);
  v57 = sub_5CB30();
  (v56)(v57);
  sub_11E34(v48, &qword_DD220, qword_A9B20);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  sub_5CB5C();
  if (v59)
  {
    if ((v58 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_5CB3C();
    if (v61)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_5BBA8(void *a1)
{
  v3 = v1;
  v5 = sub_4BF0(&qword_DE3C8, &qword_A9BE8);
  sub_591C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  sub_7584(a1, a1[3]);
  sub_5C620();
  sub_A4F64();
  LOBYTE(v22) = 0;
  sub_A2EA4();
  sub_5CAB8();
  sub_5C7DC(v11, v12, &protocol conformance descriptor for Date);
  sub_5CAF4();
  sub_A4DF4();
  if (!v2)
  {
    v13 = type metadata accessor for DBCalendarState(0);
    v19 = v3;
    v20 = v13;
    v22 = *(v3 + *(v13 + 20));
    v21 = 1;
    v14 = sub_4BF0(&qword_DE3B0, &qword_A9BE0);
    v15 = sub_5C740(&qword_DE3D0, &qword_DE3D8, &protocol conformance descriptor for URL, &protocol conformance descriptor for <A> [A]);
    sub_5CB0C();
    sub_A4DF4();
    v18[1] = v15;
    v18[2] = v14;
    v16 = v19;
    LOBYTE(v22) = 2;
    sub_5CAF4();
    sub_A4DA4();
    sub_5CB50(3);
    sub_5CB0C();
    sub_A4DE4();
    LOBYTE(v22) = 4;
    sub_5CB0C();
    sub_A4D94();
    sub_5CB50(5);
    sub_5CB0C();
    sub_A4DE4();
    v22 = *(v16 + *(v20 + 40));
    v21 = 6;
    sub_5CB0C();
    sub_A4DF4();
    LOBYTE(v22) = 7;
    sub_5CAF4();
    sub_A4DA4();
    LOBYTE(v22) = 8;
    sub_5CB0C();
    sub_A4D94();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_5BEEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_4BF0(&qword_DD220, qword_A9B20);
  __chkstk_darwin(v3 - 8);
  sub_36194();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  v10 = sub_A2EA4();
  sub_591C();
  v46 = v11;
  __chkstk_darwin(v12);
  sub_AA54();
  v15 = v14 - v13;
  sub_4BF0(&qword_DE3A0, &qword_A9BD8);
  sub_591C();
  v43 = v17;
  v44 = v16;
  __chkstk_darwin(v16);
  v49 = type metadata accessor for DBCalendarState(0);
  sub_7A14();
  __chkstk_darwin(v18);
  sub_AA54();
  v48 = v20 - v19;
  v21 = a1[3];
  v50 = a1;
  sub_7584(a1, v21);
  sub_5C620();
  v22 = v47;
  sub_A4F54();
  v45 = v10;
  if (v22)
  {
    return sub_761C(v50);
  }

  v47 = v9;
  v41 = v6;
  LOBYTE(v52) = 0;
  sub_5CAB8();
  v25 = sub_5C7DC(v23, v24, &protocol conformance descriptor for Date);
  sub_A4D74();
  v40 = v25;
  v26 = v48;
  (*(v46 + 32))(v48, v15, v10);
  sub_4BF0(&qword_DE3B0, &qword_A9BE0);
  v51 = 1;
  sub_5C740(&qword_DE3B8, &qword_DE3C0, &protocol conformance descriptor for URL, &protocol conformance descriptor for <A> [A]);
  sub_5CB18();
  sub_A4D74();
  v27 = v49;
  *(v26 + *(v49 + 20)) = v52;
  sub_5CB50(2);
  v28 = v47;
  sub_A4D24();
  sub_5C674(v28, v26 + v27[6]);
  sub_5CAE0(3);
  *(v26 + v27[7]) = sub_A4D64();
  sub_5CAE0(4);
  v29 = sub_A4D14();
  v30 = v26 + v27[8];
  *v30 = v29;
  *(v30 + 8) = v31 & 1;
  sub_5CAE0(5);
  *(v26 + v27[9]) = sub_A4D64();
  v51 = 6;
  sub_5CB18();
  sub_A4D74();
  *(v26 + v27[10]) = v52;
  sub_5CB50(7);
  v32 = v41;
  sub_A4D24();
  sub_5C674(v32, v26 + v27[11]);
  sub_5CAE0(8);
  v33 = sub_A4D14();
  v35 = v34;
  v36 = sub_5CAD0();
  v37(v36);
  v38 = v26 + v27[12];
  *v38 = v33;
  *(v38 + 8) = v35 & 1;
  sub_2E43C(v26, v42);
  sub_761C(v50);
  return sub_5C6E4(v26);
}

uint64_t sub_5C524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_5B2B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5C54C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5B594();
  *a1 = result;
  return result;
}

uint64_t sub_5C574(uint64_t a1)
{
  v2 = sub_5C620();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5C5B0(uint64_t a1)
{
  v2 = sub_5C620();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_5C620()
{
  result = qword_DE3A8;
  if (!qword_DE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3A8);
  }

  return result;
}

uint64_t sub_5C674(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DD220, qword_A9B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C6E4(uint64_t a1)
{
  v2 = type metadata accessor for DBCalendarState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5C740(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B4B0(&qword_DE3B0, &qword_A9BE0);
    sub_5C7DC(a2, &type metadata accessor for URL, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5C7DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for DBCalendarState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBCalendarState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5C978);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5C9B4()
{
  result = qword_DE3E0;
  if (!qword_DE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3E0);
  }

  return result;
}

unint64_t sub_5CA0C()
{
  result = qword_DE3E8;
  if (!qword_DE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3E8);
  }

  return result;
}

unint64_t sub_5CA64()
{
  result = qword_DE3F0;
  if (!qword_DE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE3F0);
  }

  return result;
}

uint64_t sub_5CB70(uint64_t a1)
{

  return sub_A45B4();
}

uint64_t sub_5CB90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnsupportedFlow(0);
  sub_5DDD0();
  return sub_A3334();
}

uint64_t sub_5CBF0()
{
  sub_5950();
  v1[15] = v2;
  v1[16] = v0;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v1[17] = swift_task_alloc();
  v3 = sub_A3944();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  sub_A4354();
  v1[21] = swift_task_alloc();
  v4 = sub_A3784();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_5CD80()
{
  sub_59C4();
  v1 = *(v0 + 128);
  *(v0 + 216) = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
  sub_A4B54(20);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  v11._object = 0x80000000000B1C80;
  v11._countAndFlagsBits = 0xD000000000000012;
  sub_A46D4(v11);
  v2 = *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_unsupportedCode);
  *(v0 + 280) = v2;
  sub_A4C44();
  sub_810AC(*(v0 + 96), *(v0 + 104), 0xD00000000000002DLL, 0x80000000000B1CA0, 0x2865747563657865, 0xE900000000000029);

  type metadata accessor for DailyBriefingCommonCATs(0);
  sub_A4344();
  *(v0 + 224) = sub_A4284();
  if (v2)
  {
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 248) = v3;
    *v3 = v4;
    v3[1] = sub_5D208;
    v5 = *(v0 + 192);

    return sub_2C424(v5);
  }

  else
  {
    swift_task_alloc();
    sub_1A6A0();
    *(v0 + 232) = v7;
    *v7 = v8;
    v7[1] = sub_5CFA4;
    v9 = *(v0 + 200);

    return sub_2C26C(v9);
  }
}

uint64_t sub_5CFA4()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_5D0A4(uint64_t a1)
{
  v7 = sub_5DF40();
  v8(v7);
  sub_5DF90(OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
  v9 = sub_A3744();
  sub_A924(v4, 1, 1, v9);
  sub_5DF5C();
  sub_5DF10(v10, v11, v12, _swiftEmptyArrayStorage);
  sub_1085C(v5, &qword_DE4F0, &unk_AADA0);
  sub_1085C(v4, &qword_DB5A8, &unk_A67C0);
  sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync), *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync + 24));
  v3[10] = v18;
  v3[11] = &protocol witness table for AceOutput;
  v13 = sub_76B0(v3 + 7);
  (*(v6 + 16))(v13, v2);
  swift_task_alloc();
  sub_1A6A0();
  v3[33] = v14;
  *v14 = v15;
  v16 = sub_5DEBC(v14);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v16);
}

uint64_t sub_5D208()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_5D308(uint64_t a1)
{
  v7 = sub_5DF40();
  v8(v7);
  sub_5DF90(OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState);
  v9 = sub_A3744();
  sub_A924(v4, 1, 1, v9);
  sub_5DF5C();
  sub_5DF10(v10, v11, v12, _swiftEmptyArrayStorage);
  sub_1085C(v5, &qword_DE4F0, &unk_AADA0);
  sub_1085C(v4, &qword_DB5A8, &unk_A67C0);
  sub_7584((v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync), *(v1 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync + 24));
  v3[10] = v18;
  v3[11] = &protocol witness table for AceOutput;
  v13 = sub_76B0(v3 + 7);
  (*(v6 + 16))(v13, v2);
  swift_task_alloc();
  sub_1A6A0();
  v3[33] = v14;
  *v14 = v15;
  v16 = sub_5DEBC(v14);

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v16);
}

uint64_t sub_5D470()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  sub_40168();
  *v4 = v3;
  v5 = *v1;
  sub_5930();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
    sub_761C((v3 + 56));
  }

  sub_40210();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_5D570()
{
  v3 = sub_5DF78();
  v4(v3);
  v5 = (*(v2 + 8))(v1, v0);
  sub_5DE98(v5);

  sub_AA9C();

  return v6();
}

uint64_t sub_5D630()
{
  sub_59C4();

  sub_5DEEC();

  sub_5DE68();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v15._countAndFlagsBits = sub_A4644();
  sub_A46D4(v15);

  sub_5DE28(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13);

  sub_5DE98(v8);

  sub_AA9C();

  return v9();
}

uint64_t sub_5D748()
{
  sub_59C4();

  sub_5DEEC();

  sub_5DE68();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v15._countAndFlagsBits = sub_A4644();
  sub_A46D4(v15);

  sub_5DE28(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13);

  sub_5DE98(v8);

  sub_AA9C();

  return v9();
}

uint64_t sub_5D860()
{
  sub_59C4();
  v4 = sub_5DF78();
  v5(v4);
  (*(v2 + 8))(v1, v0);
  sub_761C((v3 + 56));
  sub_5DEEC();

  sub_5DE68();
  sub_4BF0(&qword_DBB90, &qword_A7540);
  v21._countAndFlagsBits = sub_A4644();
  sub_A46D4(v21);

  sub_5DE28(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);

  sub_5DE98(v14);

  sub_AA9C();

  return v15();
}

uint64_t sub_5D9A0()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_catProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_deviceState));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin15UnsupportedFlow_outputPublisherAsync));
  return v0;
}

uint64_t sub_5DA24()
{
  sub_5D9A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for UnsupportedFlow(uint64_t a1)
{
  result = qword_DE428;
  if (!qword_DE428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5DAD0(uint64_t a1)
{
  result = sub_A43D4();
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

_BYTE *storeEnumTagSinglePayload for UnsupportedFlow.UnsupportedError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5DC44);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5DC80()
{
  result = qword_DE4E8;
  if (!qword_DE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE4E8);
  }

  return result;
}

uint64_t sub_5DCF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A648;

  return sub_5CBF0();
}

uint64_t sub_5DD94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_5DDD0()
{
  result = qword_DD108;
  if (!qword_DD108)
  {
    type metadata accessor for UnsupportedFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DD108);
  }

  return result;
}

void sub_5DE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  sub_81094(a10, a11, v12 | 9, v11 | 0x8000000000000000, 0x2865747563657865, 0xE900000000000029);
}

uint64_t sub_5DE68()
{
  *(v1 + 112) = v0;

  return swift_errorRetain();
}

uint64_t sub_5DE98(uint64_t a1)
{

  return sub_A3664();
}

void sub_5DEEC()
{

  sub_A4B54(38);
}

uint64_t sub_5DF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)(v6, v7, v4 & 1, a4, 0, 1, v5, a4);
}

double sub_5DF5C()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_5DF90@<X0>(uint64_t a1@<X8>)
{
  sub_7584((v1 + a1), *(v1 + a1 + 24));

  return sub_A3494();
}

uint64_t sub_5DFD0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = *(v0 + 56);
    type metadata accessor for CommonTemplatingService();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_5E040()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    sub_A760(v0 + 16, v5);
    v3 = *(v0 + 56);
    type metadata accessor for WarningsTemplatingService(0);
    swift_allocObject();

    v1 = sub_5A8B8(v5, v3);
    *(v2 + 72) = v1;
  }

  return v1;
}

uint64_t sub_5E0E4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 56);
    type metadata accessor for PodcastTemplatingService();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_5E154(__int128 *a1, uint64_t a2)
{
  *(v2 + 112) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 64) = 0u;
  sub_AA3C(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

void *sub_5E194()
{
  sub_761C((v0 + 16));

  return v0;
}

uint64_t sub_5E1F4()
{
  sub_5E194();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_5E24C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_4BF0(&qword_DC748, &qword_A8330);
  __chkstk_darwin(v7 - 8);
  v9 = v73 - v8;
  sub_A2DB4();
  sub_14CB8();
  __chkstk_darwin(v10);
  if (!*(a3 + 16) || !a2)
  {
    goto LABEL_5;
  }

  v11 = *(a3 + 56);
  sub_2C0F0(a1, v9);
  if (sub_CF2C(v9, 1, v3) == 1)
  {
    sub_2C160(v9);
LABEL_5:
    if (qword_DA9E0 != -1)
    {
      sub_5ED34(&qword_DA9E0);
    }

    v12 = sub_A43D4();
    sub_48A4(v12, qword_E0BD0);
    sub_5ED54();
    sub_810C4(v13, v14, v15, v16, v17, v18);
    return 0;
  }

  v19 = sub_5ED9C();
  v20(v19);
  v21 = a2;
  v74 = sub_A2D94();
  v75 = v22;
  v23 = [v21 uniqueIdentifier];
  v24 = sub_A45F4();
  v26 = v25;

  v73[0] = v24;
  v73[1] = v26;
  sub_10760();
  LOBYTE(v23) = sub_A4A94();

  if ((v23 & 1) == 0 || (v27 = [v21 ETAForKey:@"MapsSuggestionsETAKey"]) == 0 || (v28 = v27, objc_msgSend(v27, "seconds"), v30 = v29, v28, (v31 = objc_msgSend(v11, "ETAForKey:", @"MapsSuggestionsETAKey")) == 0))
  {
    if (qword_DA9E0 != -1)
    {
      sub_5ED34(&qword_DA9E0);
    }

    v39 = sub_A43D4();
    sub_48A4(v39, qword_E0BD0);
    sub_5ED54();
    sub_810C4(v40, v41, v42, v43, v44, v45);

    v46 = sub_5ED8C();
    v47(v46);
    return 0;
  }

  v32 = v31;
  [v31 seconds];
  v34 = v33;

  v35 = [v21 geoMapItem];
  v36 = [v11 geoMapItem];
  v37 = v36;
  if (!v35)
  {
    if (!v36)
    {
      goto LABEL_21;
    }

LABEL_34:

LABEL_35:
    if (qword_DA9E0 != -1)
    {
      sub_5ED34(&qword_DA9E0);
    }

    v64 = sub_A43D4();
    sub_48A4(v64, qword_E0BD0);
    sub_5ED54();
    sub_810AC(v65, v66, v67, v68, v69, v70);

    v71 = sub_5ED8C();
    v72(v71);
    return 1;
  }

  if (!v36)
  {
    v37 = v35;
    goto LABEL_34;
  }

  sub_5ECF0();
  v38 = sub_A4A04();

  if ((v38 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  sub_5ED70();
  if (v51 ^ v52 | v50)
  {
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  if (qword_DA9E0 != -1)
  {
    sub_5ED34(&qword_DA9E0);
  }

  v53 = sub_A43D4();
  sub_48A4(v53, qword_E0BD0);
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_A4B54(19);

  v74 = 0xD000000000000011;
  v75 = 0x80000000000B1F50;
  if (v30 <= v34)
  {
    v54._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v54._countAndFlagsBits = 1702195828;
  }

  if (v30 <= v34)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  v54._object = v55;
  sub_A46D4(v54);

  sub_31578();
  sub_810C4(v56, v57, v58, v59, v60, v61);

  v62 = sub_5ED8C();
  v63(v62);
  return v48;
}

uint64_t sub_5E790(void *a1, uint64_t a2)
{
  if (!*(a2 + 16) || !a1)
  {
    if (qword_DA9E0 != -1)
    {
      sub_5ED34(&qword_DA9E0);
    }

    v14 = sub_A43D4();
    sub_48A4(v14, qword_E0BD0);
    sub_31578();
    sub_810C4(v15, v16, v17, v18, v19, v20);
    return 0;
  }

  v2 = *(a2 + 56);
  v3 = a1;
  v4 = [v3 uniqueIdentifier];
  v5 = sub_A45F4();
  v7 = v6;

  v8 = [v2 uniqueIdentifier];
  v9 = sub_A45F4();
  v11 = v10;

  v12 = v5 == v9 && v7 == v11;
  if (v12)
  {
  }

  else
  {
    v13 = sub_A4E44();

    if ((v13 & 1) == 0)
    {
LABEL_27:
      if (qword_DA9E0 != -1)
      {
        sub_5ED34(&qword_DA9E0);
      }

      v41 = sub_A43D4();
      sub_48A4(v41, qword_E0BD0);
      sub_31578();
      sub_810C4(v42, v43, v44, v45, v46, v47);

      return 0;
    }
  }

  v21 = [v3 ETAForKey:@"MapsSuggestionsETAKey"];
  if (!v21)
  {
    goto LABEL_27;
  }

  v22 = v21;
  [v21 seconds];
  v24 = v23;

  v25 = [v2 ETAForKey:@"MapsSuggestionsETAKey"];
  if (!v25)
  {
    goto LABEL_27;
  }

  v26 = v25;
  [v25 seconds];
  v28 = v27;

  sub_5ED70();
  if (v29 ^ v30 | v12)
  {
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  if (qword_DA9E0 != -1)
  {
    sub_5ED34(&qword_DA9E0);
  }

  v32 = sub_A43D4();
  sub_48A4(v32, qword_E0BD0);
  sub_A4B54(19);

  if (v24 <= v28)
  {
    v33._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v33._countAndFlagsBits = 1702195828;
  }

  if (v24 <= v28)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  v33._object = v34;
  sub_A46D4(v33);

  sub_31578();
  sub_810C4(v35, v36, v37, v38, v39, v40);

  return v31;
}

id sub_5EAFC(void *a1)
{
  sub_A2EA4();
  sub_14CB8();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  result = [a1 geoMapItem];
  if (result)
  {

    v13 = off_DDE58;

    v14 = sub_7B710([a1 type], v13);

    result = 0;
    if (v14)
    {
      if ([a1 type] != &dword_0 + 3)
      {
        return &dword_0 + 1;
      }

      v15 = [a1 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
      if (!v15)
      {
        return &dword_0 + 1;
      }

      v16 = v15;
      sub_A2E74();

      v17 = sub_5ED9C();
      v18(v17);
      sub_A2E94();
      v19 = sub_A2E14();
      v20 = *(v4 + 8);
      v20(v8, v1);
      v20(v11, v1);
      if ((v19 & 1) == 0)
      {
        return &dword_0 + 1;
      }
    }
  }

  return result;
}

unint64_t sub_5ECF0()
{
  result = qword_DE6C0;
  if (!qword_DE6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DE6C0);
  }

  return result;
}

uint64_t sub_5ED34(uint64_t a1)
{

  return swift_once();
}

uint64_t INTask.entityBuilder.getter()
{
  v1 = v0;
  sub_A2D04();
  sub_591C();
  v48 = v3;
  v49 = v2;
  __chkstk_darwin(v2);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5F35C();
  __chkstk_darwin(v5);
  v45 = &v44 - v6;
  sub_5F35C();
  __chkstk_darwin(v7);
  v46 = &v44 - v8;
  sub_5F35C();
  __chkstk_darwin(v9);
  v47 = &v44 - v10;
  sub_5F35C();
  v12 = __chkstk_darwin(v11);
  v14 = &v44 - v13;
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = sub_A3A84();
  sub_591C();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A3E94();
  swift_allocObject();
  v23 = sub_A3E84();
  v24 = [v0 title];
  v25 = [v24 spokenPhrase];

  sub_A45F4();
  sub_A3E74();
  v26 = v23;

  sub_A3AB4();
  swift_allocObject();
  sub_A3AA4();
  (*(v19 + 104))(v22, enum case for UsoEntity_commonNotebook_NotebookItemType.DefinedValues.commonNotebook_NotebookItemType_Reminder(_:), v17);
  sub_A3A94();
  v27 = v17;
  v28 = v1;
  (*(v19 + 8))(v22, v27);
  v30 = v48;
  v29 = v49;

  sub_A3E34();

  v31 = [v28 createdDateComponents];
  if (v31)
  {
    v32 = v31;
    sub_A2C54();

    (*(v30 + 32))(v16, v14, v29);
    if (sub_603E8())
    {
      sub_A3E54();
    }

    (*(v30 + 8))(v16, v29);
  }

  v33 = [v28 modifiedDateComponents];
  if (v33)
  {
    v34 = v33;
    v35 = v46;
    sub_A2C54();

    v36 = v47;
    (*(v30 + 32))(v47, v35, v29);
    if (sub_603E8())
    {
      sub_A3E64();
    }

    (*(v30 + 8))(v36, v29);
  }

  v37 = [v28 temporalEventTrigger];
  if (!v37)
  {
    goto LABEL_15;
  }

  v38 = v37;
  v39 = [v37 dateComponentsRange];
  v40 = [v39 startDateComponents];

  if (!v40)
  {
LABEL_14:

LABEL_15:

    return v26;
  }

  v41 = v44;
  sub_A2C54();

  v42 = v45;
  (*(v30 + 32))(v45, v41, v29);
  if (!sub_603E8())
  {
    (*(v30 + 8))(v42, v29);
    goto LABEL_14;
  }

  sub_A3E24();
  swift_allocObject();
  sub_A3E14();

  sub_A3E04();

  sub_A3E44();

  (*(v30 + 8))(v42, v29);
  return v26;
}

uint64_t sub_5F330@<X0>(uint64_t *a1@<X8>)
{
  result = INTask.entityBuilder.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CommonSpecs(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5F434);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SupportedFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5F538);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5F570()
{
  result = qword_DE6E8;
  if (!qword_DE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6E8);
  }

  return result;
}

uint64_t sub_5F5E8(char a1)
{
  result = 0x7261646E656C6163;
  switch(a1)
  {
    case 1:
      result = 0x7265646E696D6572;
      break;
    case 2:
      result = 0x72656874616577;
      break;
    case 3:
      result = 1936744813;
      break;
    case 4:
      result = 0x74736163646F70;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_5F6B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF8C0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5F704(char a1)
{
  result = 0x676E697465657267;
  switch(a1)
  {
    case 1:
      result = 0x676E696E726177;
      break;
    case 2:
      result = 0x6973756C636E6F63;
      break;
    case 3:
      result = 1702060386;
      break;
    case 4:
      result = 0x6C616974696E69;
      break;
    case 5:
      result = 0x6F5474706D6F7270;
      break;
    case 6:
      result = 0x766F6D6552646461;
      break;
    case 7:
      result = 0x6F6C466472617567;
      break;
    case 8:
      result = 0x656E696C66666FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_5F860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5F6B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_5F890@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5F704(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_5F8C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF9B8;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_5F928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_5F8C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_5F958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5F5E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_5FAA4()
{
  result = qword_DE6F0;
  if (!qword_DE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6F0);
  }

  return result;
}

unint64_t sub_5FAF8()
{
  result = qword_DE6F8;
  if (!qword_DE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE6F8);
  }

  return result;
}

id sub_5FB74()
{
  v0 = sub_A4964();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_AA54();
  v4 = v3 - v2;
  v5 = sub_A4954();
  __chkstk_darwin(v5);
  sub_AA54();
  v6 = sub_A44B4();
  __chkstk_darwin(v6 - 8);
  sub_AA54();
  sub_35BE0();
  sub_A4464();
  sub_5FF9C();
  sub_4BF0(&qword_DE7B0, &qword_AAFD0);
  sub_5FFF4();
  sub_A4AC4();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v7 = sub_A4994();
  v8 = objc_allocWithZone(AFNotifyObserver);
  result = sub_60058(0xD000000000000021, 0x80000000000B2070, 1, v7, 0);
  if (result)
  {
    *(v10 + 16) = result;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_5FDC0()
{
  v1 = [*(v0 + 16) state];
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v2 = sub_A43D4();
  sub_48A4(v2, qword_E0BA0);
  sub_A4B54(25);

  v3 = v1 == 0;
  v4 = v1 == 0;
  if (v3)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (v3)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_A46D4(v5);

  sub_812F4(0xD000000000000017, 0x80000000000B20D0, 0xD00000000000002ELL, 0x80000000000B20F0, 0x746E656C69537369, 0xEE00292865646F4DLL);

  return v4;
}

uint64_t sub_5FF18()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_5FF9C()
{
  result = qword_DE7A8;
  if (!qword_DE7A8)
  {
    sub_A4954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE7A8);
  }

  return result;
}

unint64_t sub_5FFF4()
{
  result = qword_DE7B8;
  if (!qword_DE7B8)
  {
    sub_1B4B0(&qword_DE7B0, &qword_AAFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE7B8);
  }

  return result;
}

id sub_60058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_A45C4();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithName:v10 options:a3 queue:a4 delegate:a5];

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_600EC()
{
  v24 = sub_A2D04();
  sub_591C();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_AA54();
  v5 = v4 - v3;
  v23 = sub_A3004();
  sub_591C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_AA54();
  v11 = v10 - v9;
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v12 = sub_A2FE4();
  sub_591C();
  v14 = v13;
  v16 = *(v15 + 72);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AA250;
  v19 = v18 + v17;
  v20 = *(v14 + 104);
  v20(v19, enum case for Calendar.Component.year(_:), v12);
  v20(v19 + v16, enum case for Calendar.Component.month(_:), v12);
  v20(v19 + 2 * v16, enum case for Calendar.Component.day(_:), v12);
  v20(v19 + 3 * v16, enum case for Calendar.Component.hour(_:), v12);
  v20(v19 + 4 * v16, enum case for Calendar.Component.minute(_:), v12);
  v20(v19 + 5 * v16, enum case for Calendar.Component.second(_:), v12);
  v20(v19 + 6 * v16, enum case for Calendar.Component.timeZone(_:), v12);
  sub_608AC(v18);
  sub_A2F74();

  v21 = sub_603E8();
  (*(v1 + 8))(v5, v24);
  (*(v7 + 8))(v11, v23);
  return v21;
}

uint64_t sub_603E8()
{
  sub_A2EA4();
  sub_591C();
  v38 = v1;
  v39 = v0;
  __chkstk_darwin(v0);
  sub_AA54();
  v37 = v3 - v2;
  v4 = sub_4BF0(&qword_DD970, &qword_A95B8);
  __chkstk_darwin(v4 - 8);
  v6 = v36 - v5;
  v7 = sub_A3D24();
  sub_5D78(v7);
  v8 = sub_A3D14();
  v9 = sub_A2C94();
  sub_6144C(v9, v10);
  sub_A3D04();
  sub_61430();
  v11 = sub_A3D14();
  v12 = sub_A2CA4();
  sub_6144C(v12, v13);
  sub_A3D04();
  v14 = sub_A3DE4();
  sub_5D78(v14);
  v15 = sub_A3DD4();

  sub_A3DC4();
  v41 = v11;

  sub_61430();
  v16 = sub_A3D14();
  v17 = sub_A2C64();
  sub_6144C(v17, v18);
  sub_A3D04();
  v19 = sub_A3C84();
  sub_5D78(v19);
  sub_A3C74();

  sub_A3C64();
  v42 = v8;

  sub_A3C54();
  v40 = v15;

  sub_A3C44();

  sub_61430();
  sub_A3D14();
  v20 = sub_A2C84();
  sub_6144C(v20, v21);
  sub_A3D04();
  sub_61430();
  sub_A3D14();
  v22 = sub_A2CB4();
  sub_6144C(v22, v23);
  sub_A3D04();
  sub_61430();
  sub_A3D14();
  v24 = sub_A2CC4();
  sub_6144C(v24, v25);
  sub_A3D04();
  v26 = sub_A3DA4();
  sub_5D78(v26);
  sub_A3D94();
  sub_A2CF4();
  v27 = sub_A3044();
  if (sub_CF2C(v6, 1, v27) == 1)
  {
    sub_613C8(v6);
LABEL_4:

    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_5;
  }

  v36[1] = v16;
  v28 = v37;
  sub_A2E94();
  v29 = sub_A3014();
  v31 = v30;
  (*(v38 + 8))(v28, v39);
  (*(*(v27 - 8) + 8))(v6, v27);
  if (!v31)
  {
    goto LABEL_4;
  }

LABEL_5:
  v43 = v29;
  v44 = v31;
  sub_A4704();
  sub_A3D84();

  v32 = sub_A3CE4();
  sub_5D78(v32);
  sub_A3CD4();

  sub_A3CA4();

  sub_A3CB4();

  sub_A3CC4();

  sub_A3C94();

  v33 = sub_A3D74();
  sub_5D78(v33);
  v34 = sub_A3D64();

  sub_A3D54();

  sub_A3D44();

  return v34;
}

_BYTE *sub_608AC(uint64_t a1)
{
  v2 = sub_A2FE4();
  sub_591C();
  v34 = v3;
  v5 = __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v29 - v8;
  if (!*(a1 + 16))
  {
    v10 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_4BF0(&qword_DE7C8, &qword_AA260);
  result = sub_61458();
  v10 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v37 = result + 56;
  v12 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v12 + 32) & ~v12);
  v36 = v34 + 16;
  v13 = (v34 + 8);
  v30 = (v34 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v34 + 72);
    v35 = v11 + 1;
    v15 = *(v34 + 16);
    v15(v38, v32 + v14 * v11, v2);
    sub_60BB0(&qword_DE7D0, &protocol conformance descriptor for Calendar.Component);
    v16 = sub_A4564();
    v17 = ~(-1 << v10[32]);
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *&v37[8 * v19];
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v10;
      v15(v7, *(v10 + 6) + v18 * v14, v2);
      sub_60BB0(&qword_DE7D8, &protocol conformance descriptor for Calendar.Component);
      v23 = sub_A45B4();
      v24 = *v13;
      (*v13)(v7, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v10 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v10 = v22;
    }

    v25 = v38;
    *&v37[8 * v19] = v21 | v20;
    result = (*v30)(*(v10 + 6) + v18 * v14, v25, v2);
    v26 = *(v10 + 2);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v10 + 2) = v28;
LABEL_12:
    v11 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_60BB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_A2FE4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_60BF4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_4BF0(&qword_DE7E8, &unk_AA270);
    v2 = sub_61458();
    v29 = *(v1 + 16);
    if (v29)
    {
      v3 = 0;
      v27 = v1;
      v28 = v1 + 32;
      do
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
LABEL_72:
          __break(1u);
          JUMPOUT(0x611D0);
        }

        v4 = *(v28 + v3);
        sub_A4F14();
        sub_13894(v4);
        sub_A46A4();

        v5 = sub_A4F44();
        v6 = ~(-1 << v2[32]);
        v7 = v5 & v6;
        sub_61474();
        if ((v10 & v9) != 0)
        {
          while (1)
          {
            v11 = 0xE900000000000065;
            v12 = 0x6E61636972727568;
            switch(*(*(v2 + 6) + v7))
            {
              case 1:
                v11 = 0xE700000000000000;
                v12 = 0x6F64616E726F74;
                break;
              case 2:
                v12 = 0x6C616369706F7274;
                v11 = 0xED00006D726F7453;
                break;
              case 3:
                v11 = 0xE800000000000000;
                v12 = 0x6472617A7A696C62;
                break;
              case 4:
                v11 = 0xE400000000000000;
                v12 = 1818845544;
                break;
              case 5:
                v12 = 0x737265646E756874;
                v13 = 1836216180;
                goto LABEL_30;
              case 6:
                v11 = 0xE500000000000000;
                v12 = 0x7465656C73;
                break;
              case 7:
                v11 = 0xE500000000000000;
                v14 = 2003791475;
                goto LABEL_26;
              case 8:
                v12 = 0x53676E69776F6C62;
                v15 = 7827310;
                goto LABEL_28;
              case 9:
                v11 = 0xE500000000000000;
                v14 = 1852399986;
                goto LABEL_26;
              case 0xA:
                v11 = 0xE500000000000000;
                v14 = 1802464627;
                goto LABEL_26;
              case 0xB:
                v11 = 0xE400000000000000;
                v12 = 1953723748;
                break;
              case 0xC:
                v11 = 0xE500000000000000;
                v14 = 1684957559;
                goto LABEL_26;
              case 0xD:
                v11 = 0xE500000000000000;
                v14 = 1734831974;
LABEL_26:
                v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
                break;
              case 0xE:
                v11 = 0xE400000000000000;
                v12 = 1702519144;
                break;
              case 0xF:
                v11 = 0xE600000000000000;
                v12 = 0x7964756F6C63;
                break;
              case 0x10:
                v12 = 0x6C43796C74726170;
                v13 = 2036626799;
                goto LABEL_30;
              case 0x11:
                v11 = 0xE500000000000000;
                v12 = 0x7261656C63;
                break;
              case 0x12:
                v11 = 0xE400000000000000;
                v12 = 1684828003;
                break;
              case 0x13:
                v11 = 0xE300000000000000;
                v12 = 7630696;
                break;
              case 0x14:
                v12 = 0x6F6C43646578696DLL;
                v15 = 7955573;
LABEL_28:
                v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 0x15:
                v12 = 0x656C43646578696DLL;
                v11 = 0xEA00000000007261;
                break;
              case 0x16:
                v12 = 0x6C69617641746F6ELL;
                v13 = 1701601889;
LABEL_30:
                v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              default:
                break;
            }

            v16 = 0x6E61636972727568;
            v17 = 0xE900000000000065;
            switch(v4)
            {
              case 1:
                v17 = 0xE700000000000000;
                v16 = 0x6F64616E726F74;
                break;
              case 2:
                v16 = 0x6C616369706F7274;
                v17 = 0xED00006D726F7453;
                break;
              case 3:
                v17 = 0xE800000000000000;
                v16 = 0x6472617A7A696C62;
                break;
              case 4:
                v17 = 0xE400000000000000;
                v16 = 1818845544;
                break;
              case 5:
                v16 = 0x737265646E756874;
                v18 = 1836216180;
                goto LABEL_56;
              case 6:
                v17 = 0xE500000000000000;
                v16 = 0x7465656C73;
                break;
              case 7:
                v17 = 0xE500000000000000;
                v19 = 2003791475;
                goto LABEL_52;
              case 8:
                v16 = 0x53676E69776F6C62;
                v20 = 7827310;
                goto LABEL_54;
              case 9:
                v17 = 0xE500000000000000;
                v19 = 1852399986;
                goto LABEL_52;
              case 10:
                v17 = 0xE500000000000000;
                v19 = 1802464627;
                goto LABEL_52;
              case 11:
                v17 = 0xE400000000000000;
                v16 = 1953723748;
                break;
              case 12:
                v17 = 0xE500000000000000;
                v19 = 1684957559;
                goto LABEL_52;
              case 13:
                v17 = 0xE500000000000000;
                v19 = 1734831974;
LABEL_52:
                v16 = v19 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
                break;
              case 14:
                v17 = 0xE400000000000000;
                v16 = 1702519144;
                break;
              case 15:
                v17 = 0xE600000000000000;
                v16 = 0x7964756F6C63;
                break;
              case 16:
                v16 = 0x6C43796C74726170;
                v18 = 2036626799;
                goto LABEL_56;
              case 17:
                v17 = 0xE500000000000000;
                v16 = 0x7261656C63;
                break;
              case 18:
                v17 = 0xE400000000000000;
                v16 = 1684828003;
                break;
              case 19:
                v17 = 0xE300000000000000;
                v16 = 7630696;
                break;
              case 20:
                v16 = 0x6F6C43646578696DLL;
                v20 = 7955573;
LABEL_54:
                v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 21:
                v16 = 0x656C43646578696DLL;
                v17 = 0xEA00000000007261;
                break;
              case 22:
                v16 = 0x6C69617641746F6ELL;
                v18 = 1701601889;
LABEL_56:
                v17 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              default:
                break;
            }

            if (v12 == v16 && v11 == v17)
            {
              break;
            }

            v22 = sub_A4E44();

            if (v22)
            {
              goto LABEL_67;
            }

            v7 = (v7 + 1) & v6;
            sub_61474();
            if ((v9 & v10) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
LABEL_64:
          *&v2[8 * v8 + 56] = v9 | v10;
          *(*(v2 + 6) + v7) = v4;
          v23 = *(v2 + 2);
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_72;
          }

          *(v2 + 2) = v25;
        }

LABEL_67:
        ++v3;
        v1 = v27;
      }

      while (v3 != v29);
    }
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_61288(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_4BF0(&qword_DE7E0, &qword_AA268);
  result = sub_61458();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 4 * v5++);
    sub_A4F14();
    sub_A4F34(v7);
    result = sub_A4F44();
    v8 = ~(-1 << v3[32]);
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 6) + 4 * v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 6) + 4 * v9) = v7;
    v13 = *(v3 + 2);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 2) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_613C8(uint64_t a1)
{
  v2 = sub_4BF0(&qword_DD970, &qword_A95B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_61430()
{

  return swift_allocObject();
}

uint64_t sub_6144C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_61458()
{

  return static _SetStorage.allocate(capacity:)(v0);
}

uint64_t sub_61488(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_614B0, 0, 0);
}

uint64_t sub_614B0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v3 = swift_allocObject();
  *(v0 + 40) = v3;
  *(v3 + 16) = xmmword_AA280;
  strcpy((v3 + 32), "transportType");
  *(v3 + 46) = -4864;
  v4 = *(v2 + 24);
  *(v3 + 48) = v4;
  *(v3 + 72) = &type metadata for Double;
  strcpy((v3 + 80), "suggestionType");
  *(v3 + 95) = -18;
  *(v3 + 96) = *(v2 + 48);
  *(v3 + 120) = &type metadata for Double;
  *(v3 + 128) = 6386789;
  *(v3 + 136) = 0xE300000000000000;
  v5 = sub_A4234();
  *(v3 + 144) = sub_8CD90();
  *(v3 + 168) = v5;
  *(v3 + 176) = 0x6E6F697461636F6CLL;
  *(v3 + 184) = 0xE800000000000000;
  *(v3 + 216) = sub_A42E4();
  sub_76B0((v3 + 192));

  sub_A42C4();
  strcpy((v3 + 224), "hasETAUpdated");
  *(v3 + 238) = -4864;
  *(v3 + 264) = &type metadata for Bool;
  *(v3 + 240) = v1;
  if (v4 == 1)
  {
    v6 = qword_DAA48;
    v7 = &qword_E0D38;
  }

  else if (v4)
  {
    v6 = qword_DAA60;
    v7 = &qword_E0D98;
  }

  else
  {
    v6 = qword_DAA40;
    v7 = &qword_E0D18;
  }

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 32);
  sub_7A124(1, *v7, v7[1], *(v7 + 16), v7[3]);
  v9 = *(v8 + 16);
  v10 = swift_task_alloc();
  *(v0 + 48) = v10;
  *v10 = v0;
  v10[1] = sub_61774;
  v11 = *(v0 + 24);

  return sub_6E710(v3, v11, v9);
}

uint64_t sub_61774(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_6188C(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsTemplatingService_logger;
  if (qword_DA9F8 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  v7 = sub_48A4(v6, qword_E0C18);
  (*(*(v6 - 8) + 16))(v2 + v5, v7, v6);
  sub_761C(a1);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_61954()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_619B0()
{

  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21MapsTemplatingService_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for MapsTemplatingService(uint64_t a1)
{
  result = qword_DE820;
  if (!qword_DE820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_61A9C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = type metadata accessor for CalendarEvent(0);
  v6 = sub_5940(v5);
  v8 = v7;
  v9 = __chkstk_darwin(v6);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v28 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v15 == v14)
    {

      return v28;
    }

    if (v14 >= *(a3 + 16))
    {
      break;
    }

    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = *(v8 + 72);
    sub_106FC(a3 + v16 + v17 * v14, v13);
    v18 = v29(v13);
    if (v3)
    {
      sub_662B8(v13);
      v24 = v28;

      return v24;
    }

    if (v18)
    {
      sub_66314(v13, v27);
      v19 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_7AD08(0, v19[2] + 1, 1);
        v19 = v31;
      }

      v22 = v19[2];
      v21 = v19[3];
      v23 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        v28 = (v22 + 1);
        v26 = v22;
        sub_7AD08((v21 > 1), v22 + 1, 1);
        v23 = v28;
        v22 = v26;
        v19 = v31;
      }

      ++v14;
      v19[2] = v23;
      v28 = v19;
      result = sub_66314(v27, v19 + v16 + v22 * v17);
    }

    else
    {
      result = sub_662B8(v13);
      ++v14;
    }
  }

  __break(1u);
  return result;
}

void sub_61CF0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a3;
  v15[2] = _swiftEmptyArrayStorage;
  v7 = a4(a3);
  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v13 = v5;
  v14 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      return;
    }

    if (v9)
    {
      v10 = sub_A4B74();
    }

    else
    {
      if (v8 >= *(v14 + 16))
      {
        goto LABEL_16;
      }

      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v15[0] = v10;
    v12 = a1(v15);
    if (v4)
    {

      return;
    }

    if (v12)
    {
      sub_A4BB4();
      sub_A4BE4();
      v5 = v13;
      sub_A4BF4();
      sub_A4BC4();
    }

    else
    {
    }

    ++v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_61E70()
{
  sub_5950();
  v0[16] = v1;
  v0[17] = v2;
  v0[14] = v3;
  v0[15] = v4;
  v0[12] = v5;
  v0[13] = v6;
  v7 = sub_A2EA4();
  v0[18] = v7;
  sub_5940(v7);
  v0[19] = v8;
  v0[20] = *(v9 + 64);
  v0[21] = swift_task_alloc();
  v0[22] = sub_4BF0(&qword_DD4B8, &qword_A9240);
  v0[23] = swift_task_alloc();
  v10 = sub_A43A4();
  v0[24] = v10;
  sub_5940(v10);
  v0[25] = v11;
  v0[26] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_61FC0()
{
  if (qword_DA8F0 != -1)
  {
    sub_66508(&qword_DA8F0);
  }

  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v20 = *(v0 + 136);
  v21 = *(v0 + 160);
  v19 = *(v0 + 128);
  v23 = *(v0 + 120);
  v22 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = *(&xmmword_DE8D0 + 1);
  *(v0 + 216) = xmmword_DE8D0;
  *(v0 + 224) = v5;
  *(v0 + 273) = byte_DE8E0;
  v6 = qword_DE8E8;
  *(v0 + 232) = qword_DE8E8;
  v7 = v6;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  v8 = v1;
  (*(v2 + 16))(v1, v4, v3);
  sub_A760(v19, v0 + 16);
  sub_A760(v20, v0 + 56);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = (v21 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 240) = v12;
  (*(v2 + 32))(v12 + v9, v8, v3);
  v13 = (v12 + v10);
  *v13 = v22;
  v13[1] = v23;
  sub_A814((v0 + 16), v12 + v11);
  sub_A814((v0 + 56), v12 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));

  v14 = swift_task_alloc();
  *(v0 + 248) = v14;
  v14[2] = 0x4018000000000000;
  v14[3] = &unk_AA2F0;
  v14[4] = v12;
  v14[5] = 0xD000000000000036;
  v14[6] = 0x80000000000B2160;
  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  *v15 = v0;
  v15[1] = sub_62250;
  sub_25660();

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v16);
}

uint64_t sub_62250()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v3 + 264) = v0;

  if (!v0)
  {
  }

  sub_40210();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_62360()
{
  sub_5950();
  v1 = v0[23];
  v2 = v0[12];
  (*(v0[25] + 8))(v0[26], v0[24]);
  sub_3FAE8(v1, v2, &qword_DD4B8, &qword_A9240);

  sub_AA9C();

  return v3();
}

uint64_t sub_62408()
{

  *(v0 + 272) = 3;
  sub_660C8();
  sub_A4EC4();
  sub_6657C();
  sub_664F8();
  sub_665B0(v1, v2, v3, v4);

  if (qword_DA8E8 != -1)
  {
    sub_664D8(&qword_DA8E8);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 96);
  v9 = sub_A43D4();
  sub_48A4(v9, qword_DE8B8);
  sub_81094(0xD000000000000026, 0x80000000000B21A0, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000036, 0x80000000000B2160);
  v10 = swift_allocError();
  *v11 = 3;

  (*(v6 + 8))(v5, v7);
  *v8 = v10;
  swift_storeEnumTagMultiPayload();

  sub_AA9C();

  return v12();
}

id sub_625E0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(SAReminderSiriKitInteraction) init];
  v5 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
  v6 = sub_65D60([a1 backingStore]);
  if (v7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v9 = v6;
    v10 = v7;
    isa = sub_A2DC4().super.isa;
    sub_65DDC(v9, v10);
  }

  [v5 setData:isa];

  v11 = [a1 typeName];
  v12 = sub_A45F4();
  v14 = v13;

  sub_1323C(v12, v14, v5, &selRef_setTypeName_);
  v15 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
  result = [a2 backingStore];
  if (result)
  {
    v17 = sub_65D60(result);
    if (v18 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v20 = v17;
      v21 = v18;
      v19 = sub_A2DC4().super.isa;
      sub_65DDC(v20, v21);
    }

    [v15 setData:v19];

    sub_5CDC(a2, &selRef__payloadResponseTypeName);
    if (v22)
    {
      v23 = sub_A45C4();
    }

    else
    {
      v23 = 0;
    }

    [v15 setTypeName:v23];

    [v4 setIntent:v5];
    [v4 setIntentResponse:v15];
    sub_4BF0(&qword_DBB70, &unk_A6E90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_A6E80;
    *(v24 + 32) = v4;

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6282C()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_DE8B8);
  v1 = sub_48A4(v0, qword_DE8B8);
  if (qword_DAA00 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0C30);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_628F4()
{
  if (qword_DA980 != -1)
  {
    swift_once();
  }

  v1 = qword_E0A78;
  xmmword_DE8D0 = xmmword_E0A60;
  byte_DE8E0 = byte_E0A70;
  qword_DE8E8 = qword_E0A78;

  return v1;
}

uint64_t sub_62970()
{
  result = sub_7B510(&off_CF0C0);
  qword_E0910 = result;
  return result;
}

uint64_t sub_62998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_A648;

  return sub_62A68(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_62A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_4BF0(&qword_DD970, &qword_A95B8);
  v6[6] = swift_task_alloc();
  sub_4BF0(&qword_DD988, &unk_AA310);
  v6[7] = swift_task_alloc();
  sub_4BF0(&qword_DD220, qword_A9B20);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v12 = sub_A2EA4();
  v6[10] = v12;
  v6[11] = *(v12 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[14] = v13;
  *v13 = v6;
  v13[1] = sub_62C50;

  return sub_63194(a2, a3, a4, a5, a6);
}

uint64_t sub_62C50()
{
  sub_5950();
  sub_AAA8();
  *(v1 + 120) = v0;
  *(v1 + 128) = v2;

  sub_40210();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_62D48(uint64_t a1)
{
  v2 = *(v1 + 120);
  if (*(v1 + 128))
  {
    sub_660C8();
    v3 = swift_allocError();
    *v4 = v2;
LABEL_3:
    v5 = *(v1 + 16);
    goto LABEL_9;
  }

  v6 = *(v1 + 104);
  v8 = *(v1 + 80);
  v7 = *(v1 + 88);
  v9 = *(v1 + 24);
  v10 = sub_63D30(v9, *(v1 + 120));
  sub_4F714(v9, v6);
  v11 = sub_63F34(v9, v6, v2);
  (*(v7 + 8))(v6, v8);
  if (!sub_1BF68() && !sub_1BF68())
  {

    if (qword_DA8E8 != -1)
    {
      sub_664D8(&qword_DA8E8);
    }

    v44 = *(v1 + 120);
    v45 = sub_A43D4();
    sub_48A4(v45, qword_DE8B8);
    sub_810AC(0xD000000000000025, 0x80000000000B2220, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000037, 0x80000000000B2250);
    sub_24824();
    v3 = swift_allocError();
    *v46 = 2;
    sub_6626C(v44, 0);
    goto LABEL_3;
  }

  v50 = v10;
  (*(*(v1 + 88) + 16))(*(v1 + 96), *(v1 + 24), *(v1 + 80));
  v12 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (v12)
  {
    v14 = *(v1 + 32);
    v13 = *(v1 + 40);
    sub_10944();
    v51 = v15;
    v16 = v12;
    v53._countAndFlagsBits = v14;
    v53._object = v13;
    sub_A46D4(v53);
    sub_1323C(0xD000000000000013, v51, v16, &selRef_setLaunchId_);
  }

  v49 = *(v1 + 96);
  v47 = *(v1 + 120);
  v48 = *(v1 + 88);
  v18 = *(v1 + 72);
  v17 = *(v1 + 80);
  v20 = *(v1 + 56);
  v19 = *(v1 + 64);
  v21 = *(v1 + 48);
  v22 = *(v1 + 16);
  v23 = *(v1 + 24);
  sub_4FE8C(v23, v18);
  sub_66544(v18);
  sub_4F714(v23, v19);
  sub_66544(v19);
  v24 = sub_A3004();
  sub_665D0(v20, v25, v26, v24);
  v27 = sub_A3044();
  sub_665D0(v21, v28, v29, v27);
  v30 = objc_allocWithZone(INDateComponentsRange);
  v31 = sub_66588();
  sub_64D6C(v31, v32, v33, v21);
  sub_29D54(0, &qword_DD7A8, INSearchForNotebookItemsIntent_ptr);
  v34 = sub_66528();
  v39 = sub_67DF4(v34, v35, v36, v37, v38, v12);

  sub_4B85C(v40);
  v3 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:3 userActivity:0];
  sub_661F0(v11, v3);
  sub_6626C(v47, 0);

  *v22 = v11;
  *(v22 + 1) = v50;
  v41 = type metadata accessor for RemindersPreprocessingResult(0);
  (*(v48 + 32))(&v22[v41[6]], v49, v17);
  *&v22[v41[7]] = v39;
  v5 = &v22[v41[8]];
LABEL_9:
  *v5 = v3;
  sub_4BF0(&qword_DD4B8, &qword_A9240);
  swift_storeEnumTagMultiPayload();

  sub_AA9C();

  return v42();
}

uint64_t sub_63194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a3;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a2;
  sub_4BF0(&qword_DD970, &qword_A95B8);
  v5[11] = swift_task_alloc();
  sub_4BF0(&qword_DD988, &unk_AA310);
  v5[12] = swift_task_alloc();
  sub_4BF0(&qword_DD220, qword_A9B20);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v6 = sub_A43A4();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_6330C, 0, 0);
}

uint64_t sub_6330C()
{
  if (qword_DA8F0 != -1)
  {
    sub_66508(&qword_DA8F0);
  }

  v1 = *(v0 + 80);
  v2 = *(&xmmword_DE8D0 + 1);
  *(v0 + 144) = xmmword_DE8D0;
  *(v0 + 152) = v2;
  *(v0 + 203) = byte_DE8E0;
  v3 = qword_DE8E8;
  *(v0 + 160) = qword_DE8E8;
  v4 = v3;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  sub_7584(v1, v1[3]);
  v5 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (v5)
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    sub_10944();
    v40 = v8;
    v9 = v5;
    v41._countAndFlagsBits = v7;
    v41._object = v6;
    sub_A46D4(v41);
    sub_1323C(0xD000000000000013, v40, v9, &selRef_setLaunchId_);
  }

  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 56);
  sub_4FE8C(v16, v10);
  sub_A2EA4();
  sub_66544(v10);
  sub_4F714(v16, v11);
  sub_66544(v11);
  v17 = sub_A3004();
  sub_665D0(v13, v18, v19, v17);
  v20 = sub_A3044();
  sub_665D0(v12, v21, v22, v20);
  v23 = objc_allocWithZone(INDateComponentsRange);
  v24 = sub_66588();
  sub_64D6C(v24, v25, v26, v12);
  sub_29D54(0, &qword_DD7A8, INSearchForNotebookItemsIntent_ptr);
  v27 = sub_66528();
  v32 = sub_67DF4(v27, v28, v29, v30, v31, v5);
  sub_29D54(0, &qword_DE8F8, SAIntentGroupHandleIntent_ptr);

  *(v0 + 168) = sub_67EAC(v32, v15, v14);
  v33 = swift_task_alloc();
  *(v0 + 176) = v33;
  sub_29D54(0, &qword_DE900, SAIntentGroupHandleIntentCompleted_ptr);
  *v33 = v0;
  v33[1] = sub_635D0;
  sub_25660();

  return AceServiceInvokerAsync.submit<A>(_:)(v34, v35, v36, v37);
}

uint64_t sub_635D0()
{
  sub_5950();
  sub_AAA8();
  v2 = v1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v0;

  if (!v0)
  {
  }

  sub_40210();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_636E0()
{
  v1 = sub_64138(*(v0 + 184));
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_8:
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    *(v0 + 201) = 1;
    v14 = *(v0 + 203);
    sub_660C8();
    sub_A4EC4();
    sub_6657C();
    sub_664F8();
    sub_7A58C(v15, v16, v17, v18, v13, v12, v14, v11);

    if (qword_DA8E8 != -1)
    {
      sub_664D8(&qword_DA8E8);
    }

    v19 = *(v0 + 184);
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 120);
    v23 = sub_A43D4();
    sub_48A4(v23, qword_DE8B8);
    sub_66560();
    sub_81094(v24, v25, v26, v27, v28, v29);

    (*(v21 + 8))(v20, v22);
    goto LABEL_11;
  }

  v4 = sub_66180(v3);
  if (!v4)
  {
    *(v0 + 202) = 2;
    sub_660C8();
    sub_A4EC4();
    sub_6657C();
    sub_664F8();
    sub_665B0(v33, v34, v35, v36);

    if (qword_DA8E8 != -1)
    {
      sub_664D8(&qword_DA8E8);
    }

    v37 = *(v0 + 184);
    v39 = *(v0 + 128);
    v38 = *(v0 + 136);
    v40 = *(v0 + 120);
    v41 = sub_A43D4();
    sub_48A4(v41, qword_DE8B8);
    sub_66560();
    sub_810AC(v42, v43, v44, v45, v46, v47);

    (*(v39 + 8))(v38, v40);
LABEL_11:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v5 = v4;
  if (qword_DA8E8 != -1)
  {
    sub_664D8(&qword_DA8E8);
  }

  v50 = *(v0 + 152);
  v51 = *(v0 + 160);
  v6 = *(v0 + 136);
  v49 = *(v0 + 144);
  v7 = *(v0 + 128);
  v52 = *(v0 + 120);
  v53 = *(v0 + 184);
  v48 = *(v0 + 203);
  v8 = sub_A43D4();
  sub_48A4(v8, qword_DE8B8);
  sub_A4B54(45);

  sub_10944();
  v54 = v9;
  v10 = sub_1BF68();
  *(v0 + 48) = v10;
  v56._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v56);

  v57._countAndFlagsBits = 0x65646E696D657220;
  v57._object = 0xEB000000002E7372;
  sub_A46D4(v57);
  sub_810AC(0xD000000000000020, v54, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000038, 0x80000000000B2350);

  sub_7A58C(v6, v10, 0, 0x6000u, v49, v50, v48, v51);

  (*(v7 + 8))(v6, v52);
LABEL_12:
  v30 = *(v0 + 192) != 0;

  v31 = *(v0 + 8);

  return v31(v5, v30);
}

void sub_63B20()
{
  if (qword_DA8E8 != -1)
  {
    sub_664D8(&qword_DA8E8);
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v15 = *(v0 + 120);
  v4 = *(v0 + 203);
  v5 = sub_A43D4();
  sub_48A4(v5, qword_DE8B8);
  sub_A4B54(28);

  sub_10944();
  v16 = v6;
  swift_getErrorValue();
  v17._countAndFlagsBits = sub_A4EC4();
  sub_A46D4(v17);

  sub_81094(0xD00000000000001ALL, v16, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000038, 0x80000000000B2350);

  *(v0 + 200) = 0;
  sub_660C8();
  sub_A4EC4();
  sub_6657C();
  sub_664F8();
  sub_7A58C(v7, v8, v9, v10, v2, v13, v4, v14);

  (*(v3 + 8))(v1, v15);

  sub_25660();

  __asm { BRAA            X3, X16 }
}

void *sub_63D30(uint64_t a1, uint64_t a2)
{
  v8[2] = a1;

  sub_61CF0(sub_66298, v8, a2, sub_1BF68);
  v4 = v3;
  if (sub_1BF68())
  {
    if (qword_DAA38 != -1)
    {
      swift_once();
    }

    sub_7A124(1, qword_E0CF8, unk_E0D00, byte_E0D08, qword_E0D10);
  }

  if (qword_DA8E8 != -1)
  {
    swift_once();
  }

  v5 = sub_A43D4();
  sub_48A4(v5, qword_DE8B8);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_A4B54(27);

  v9 = 0x20646E756F46;
  v10 = 0xE600000000000000;
  v8[4] = sub_1BF68();
  v11._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v11);

  v12._object = 0x80000000000B22E0;
  v12._countAndFlagsBits = 0xD000000000000013;
  sub_A46D4(v12);
  sub_810AC(v9, v10, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000022, 0x80000000000B2300);

  v6 = sub_645E8(v4);

  return v6;
}

void *sub_63F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[2] = a1;
  v9[3] = a2;

  sub_61CF0(sub_66278, v9, a3, sub_1BF68);
  v5 = v4;
  if (sub_1BF68())
  {
    if (qword_DAA30 != -1)
    {
      swift_once();
    }

    sub_7A124(1, qword_E0CD8, unk_E0CE0, byte_E0CE8, qword_E0CF0);
  }

  if (qword_DA8E8 != -1)
  {
    swift_once();
  }

  v6 = sub_A43D4();
  sub_48A4(v6, qword_DE8B8);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_A4B54(28);

  v10 = 0x20646E756F46;
  v11 = 0xE600000000000000;
  v9[4] = sub_1BF68();
  v12._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v12);

  v13._object = 0x80000000000B2290;
  v13._countAndFlagsBits = 0xD000000000000014;
  sub_A46D4(v13);
  sub_810AC(v10, v11, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000025, 0x80000000000B22B0);

  v7 = sub_645E8(v5);

  return v7;
}

id sub_64138(void *a1)
{
  v1 = [a1 intentResponse];
  if (v1)
  {
    v2 = v1;
    sub_5CDC(v1, &selRef_typeName);
    if (v3)
    {
      v4 = sub_A45C4();
    }

    else
    {
      v4 = 0;
    }

    v7 = sub_6611C(v2);
    if (v8 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v10 = v7;
      v11 = v8;
      isa = sub_A2DC4().super.isa;
      sub_65DDC(v10, v11);
    }

    v6 = INIntentResponseCreate();
  }

  else
  {
    if (qword_DA8E8 != -1)
    {
      swift_once();
    }

    v5 = sub_A43D4();
    sub_48A4(v5, qword_DE8B8);
    sub_81094(0xD000000000000059, 0x80000000000B2410, 0xD00000000000002BLL, 0x80000000000B21D0, 0xD000000000000029, 0x80000000000B2470);
    return 0;
  }

  return v6;
}

uint64_t sub_642A8(id *a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_A3004();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_4BF0(&qword_DD220, qword_A9B20);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_A2EA4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*a1 temporalEventTrigger];
  if (!v17)
  {
    sub_A924(v12, 1, 1, v13);
LABEL_7:
    sub_37774(v12);
    v22 = 0;
    return v22 & 1;
  }

  v18 = v17;
  v31 = v2;
  v19 = [v17 dateComponentsRange];

  v20 = [v19 startDate];
  if (v20)
  {
    sub_A2E74();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_A924(v10, v21, 1, v13);
  sub_3FAE8(v10, v12, &qword_DD220, qword_A9B20);
  if (sub_CF2C(v12, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  (*(v14 + 32))(v16, v12, v13);
  if (sub_4CAE4())
  {
    sub_A2FD4();
    v23 = sub_A2F54();
    (*(v28 + 8))(v6, v29);
    v24 = v23 ^ 1;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_A2E14();
  (*(v14 + 8))(v16, v13);
  v22 = v25 & v24;
  return v22 & 1;
}

void *sub_645E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_A4C94();
    if (v4)
    {
      v5 = v4;
      v2 = sub_55C7C();

      sub_29854((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v2 = _swiftEmptyArrayStorage;
    goto LABEL_3;
  }

  v2 = (a1 & 0xFFFFFFFFFFFFFF8);

LABEL_3:
  v8 = v2;
  sub_64FCC(&v8);
  return v8;
}

uint64_t sub_646B4(id *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v5 = sub_A3004();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4BF0(&qword_DD220, qword_A9B20);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v14 = sub_A2EA4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*a1 temporalEventTrigger];
  if (!v18)
  {
    sub_A924(v13, 1, 1, v14);
LABEL_7:
    sub_37774(v13);
    v23 = 0;
    return v23 & 1;
  }

  v19 = v18;
  v30 = v3;
  v20 = [v18 dateComponentsRange];

  v21 = [v20 startDate];
  if (v21)
  {
    sub_A2E74();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_A924(v11, v22, 1, v14);
  sub_3FAE8(v11, v13, &qword_DD220, qword_A9B20);
  if (sub_CF2C(v13, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  (*(v15 + 32))(v17, v13, v14);
  if (sub_4CAE4() & 1) != 0 && (sub_A2FD4(), v24 = sub_A2F54(), (*(v26 + 8))(v7, v27), (v24))
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_4FBDC(v28, v29);
  }

  (*(v15 + 8))(v17, v14);
  return v23 & 1;
}

uint64_t sub_649F0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 priority];
  if (v4 == [v3 priority])
  {
    if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
    {
      v5 = sub_4CAE4() ^ 1;
    }

    else
    {
      v5 = sub_4CD28(v3) == -1;
    }
  }

  else
  {
    v5 = [v2 priority] == &dword_0 + 2 && objc_msgSend(v3, "priority") != &dword_0 + 2;
  }

  return v5 & 1;
}

uint64_t sub_64AC8(char a1)
{
  sub_A4B54(17);

  v2 = 0xEF65736E6F707365;
  v3._countAndFlagsBits = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      break;
    case 2:
      v3._countAndFlagsBits = 0xD000000000000010;
      v2 = 0x80000000000AD1A0;
      break;
    case 3:
      sub_6659C();
      v3._countAndFlagsBits = v5 | 6;
      break;
    default:
      sub_6659C();
      v3._countAndFlagsBits = v4 | 3;
      break;
  }

  v3._object = v2;
  sub_A46D4(v3);

  return 0x7265646E696D6552;
}

unint64_t sub_64BE4(char a1)
{
  result = 0x5264696C61766E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_64C98(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFA50;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_64D08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_64C98(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_64D38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_64BE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_64D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_A2EA4();
  isa = 0;
  if (sub_CF2C(a1, 1, v10) != 1)
  {
    isa = sub_A2DF4().super.isa;
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  if (sub_CF2C(a2, 1, v10) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_A2DF4().super.isa;
    (*(*(v10 - 8) + 8))(a2, v10);
  }

  v13 = sub_A3004();
  v14 = 0;
  if (sub_CF2C(a3, 1, v13) != 1)
  {
    v14 = sub_A2F94().super.isa;
    (*(*(v13 - 8) + 8))(a3, v13);
  }

  v15 = sub_A3044();
  v16 = 0;
  if (sub_CF2C(a4, 1, v15) != 1)
  {
    v16 = sub_A3034().super.isa;
    (*(*(v15 - 8) + 8))(a4, v15);
  }

  v17 = [v5 initWithStartDate:isa endDate:v12 onCalendar:v14 inTimeZone:v16];

  return v17;
}

BOOL sub_64F80(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_64FCC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29DE8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_65048(v6);
  return sub_A4BC4();
}

void sub_65048(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_A4E14(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_2734C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_652A4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_65128(0, v3, 1, a1);
  }
}

void sub_65128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = a3;
  v5 = *a4;
  v6 = *a4 + 8 * a3 - 8;
  v7 = a1 - a3;
  while (2)
  {
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v20 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = [v11 priority];
      if (v13 == [v12 priority])
      {
        if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
        {
          v14 = sub_4CAE4();

          if (v14)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = sub_4CD28(v12);

          if (v16 != -1)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_13;
      }

      if ([v11 priority] != &dword_0 + 2)
      {
        break;
      }

      v15 = [v12 priority];

      if (v15 == &dword_0 + 2)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (!v5)
      {
        __break(1u);
        return;
      }

      v17 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v17;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    ++v4;
    v6 = v20 + 8;
    --v7;
    if (v4 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_652A4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_109;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_3:
  v8 = v6 + 1;
  if (v6 + 1 >= v5)
  {
    v17 = v6 + 1;
  }

  else
  {
    v100 = v5;
    v9 = *a3;
    v105 = *(*a3 + 8 * v8);
    v104 = *(v9 + 8 * v6);
    v10 = v104;
    v11 = v105;
    v4 = v10;
    v12 = sub_649F0(&v105, &v104);
    if (v103)
    {

      return;
    }

    v13 = v12;
    v94 = v7;

    v14 = v9 + 8 * v6;
    v15 = 8 * v6;
    v16 = (v14 + 16);
    v17 = v100;
    while (v8 + 1 < v17)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      v20 = v18;
      v4 = [v19 priority];
      if (v4 == [v20 priority])
      {
        if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
        {
          v4 = sub_4CAE4();

          v21 = v4 ^ 1;
        }

        else
        {
          v4 = sub_4CD28(v20);

          v21 = v4 == -1;
        }

        v17 = v100;
        if ((v13 ^ v21))
        {
          v17 = v8 + 1;
          break;
        }
      }

      else if ([v19 priority] == &dword_0 + 2)
      {
        v4 = [v20 priority];

        v17 = v100;
        if (((v13 ^ (v4 == 2)) & 1) == 0)
        {
          v17 = v8 + 1;
          break;
        }
      }

      else
      {

        v17 = v100;
        if (v13)
        {
          v17 = v8 + 1;
          v7 = v94;
          goto LABEL_22;
        }
      }

      ++v16;
      ++v8;
    }

    v7 = v94;
    if ((v13 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_22:
    if (v17 < v6)
    {
      goto LABEL_142;
    }

    if (v6 < v17)
    {
      v22 = 8 * v17 - 8;
      v23 = v17;
      v24 = v6;
      do
      {
        if (v24 != --v23)
        {
          v25 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v26 = *(v25 + v15);
          *(v25 + v15) = *(v25 + v22);
          *(v25 + v22) = v26;
        }

        ++v24;
        v22 -= 8;
        v15 += 8;
      }

      while (v24 < v23);
    }
  }

LABEL_29:
  v27 = a3[1];
  if (v17 >= v27)
  {
    goto LABEL_37;
  }

  if (__OFSUB__(v17, v6))
  {
    goto LABEL_141;
  }

  if (v17 - v6 >= a4)
  {
    goto LABEL_37;
  }

  v28 = v6 + a4;
  if (__OFADD__(v6, a4))
  {
    goto LABEL_143;
  }

  if (v28 >= v27)
  {
    v28 = a3[1];
  }

  if (v28 < v6)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    v7 = sub_29650(v7);
LABEL_111:
    v84 = v7;
    v85 = (v7 + 16);
    for (i = *(v7 + 2); ; *v85 = i)
    {
      v7 = (i - 2);
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_148;
      }

      v87 = &v84[16 * i];
      v88 = *v87;
      v89 = &v85[2 * i];
      v90 = *(v89 + 1);
      sub_65A0C((*a3 + 8 * *v87), (*a3 + 8 * *v89), (*a3 + 8 * v90), v4);
      if (v103)
      {
        break;
      }

      if (v90 < v88)
      {
        goto LABEL_136;
      }

      if (v7 >= *v85)
      {
        goto LABEL_137;
      }

      *v87 = v88;
      *(v87 + 1) = v90;
      v91 = *v85 - i;
      if (*v85 < i)
      {
        goto LABEL_138;
      }

      i = *v85 - 1;
      sub_29664(v89 + 16, v91, v89);
    }

LABEL_119:

    return;
  }

  if (v17 == v28)
  {
LABEL_37:
    v29 = v17;
    goto LABEL_38;
  }

  v93 = v6;
  v95 = v7;
  v71 = *a3;
  v72 = *a3 + 8 * v17 - 8;
  v73 = v6 - v17;
  v98 = v28;
LABEL_90:
  v102 = v17;
  v74 = *(v71 + 8 * v17);
  v75 = v73;
  v76 = v72;
  while (1)
  {
    v77 = *v76;
    v78 = v74;
    v79 = v77;
    v4 = [v78 priority];
    if (v4 == [v79 priority])
    {
      if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
      {
        v4 = sub_4CAE4();

        if (v4)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v4 = sub_4CD28(v79);

        if (v4 != -1)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      if ([v78 priority] != &dword_0 + 2)
      {

LABEL_105:
        v17 = v102 + 1;
        v72 += 8;
        --v73;
        v29 = v98;
        if (v102 + 1 != v98)
        {
          goto LABEL_90;
        }

        v6 = v93;
        v7 = v95;
LABEL_38:
        if (v29 < v6)
        {
          goto LABEL_140;
        }

        v97 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_551BC();
          v7 = v82;
        }

        v30 = *(v7 + 2);
        v31 = v30 + 1;
        v32 = v97;
        if (v30 >= *(v7 + 3) >> 1)
        {
          sub_551BC();
          v32 = v97;
          v7 = v83;
        }

        *(v7 + 2) = v31;
        v33 = v7 + 32;
        v34 = &v7[16 * v30 + 32];
        *v34 = v6;
        *(v34 + 1) = v32;
        v101 = *a1;
        if (!*a1)
        {
          goto LABEL_150;
        }

        if (v30)
        {
          while (2)
          {
            v35 = v31 - 1;
            v36 = &v33[16 * v31 - 16];
            v37 = &v7[16 * v31];
            if (v31 >= 4)
            {
              v42 = &v33[16 * v31];
              v43 = *(v42 - 8);
              v44 = *(v42 - 7);
              v48 = __OFSUB__(v44, v43);
              v45 = v44 - v43;
              if (v48)
              {
                goto LABEL_125;
              }

              v47 = *(v42 - 6);
              v46 = *(v42 - 5);
              v48 = __OFSUB__(v46, v47);
              v40 = v46 - v47;
              v41 = v48;
              if (v48)
              {
                goto LABEL_126;
              }

              v49 = *(v37 + 1);
              v50 = v49 - *v37;
              if (__OFSUB__(v49, *v37))
              {
                goto LABEL_128;
              }

              v48 = __OFADD__(v40, v50);
              v51 = v40 + v50;
              if (v48)
              {
                goto LABEL_131;
              }

              if (v51 >= v45)
              {
                v65 = *v36;
                v64 = *(v36 + 1);
                v48 = __OFSUB__(v64, v65);
                v66 = v64 - v65;
                if (v48)
                {
                  goto LABEL_139;
                }

                if (v40 < v66)
                {
                  v35 = v31 - 2;
                }
              }

              else
              {
LABEL_58:
                if (v41)
                {
                  goto LABEL_127;
                }

                v53 = *v37;
                v52 = *(v37 + 1);
                v54 = __OFSUB__(v52, v53);
                v55 = v52 - v53;
                v56 = v54;
                if (v54)
                {
                  goto LABEL_130;
                }

                v57 = *(v36 + 1);
                v58 = v57 - *v36;
                if (__OFSUB__(v57, *v36))
                {
                  goto LABEL_133;
                }

                if (__OFADD__(v55, v58))
                {
                  goto LABEL_135;
                }

                if (v55 + v58 < v40)
                {
                  goto LABEL_73;
                }

                if (v40 < v58)
                {
                  v35 = v31 - 2;
                }
              }
            }

            else
            {
              if (v31 == 3)
              {
                v38 = *(v7 + 4);
                v39 = *(v7 + 5);
                v48 = __OFSUB__(v39, v38);
                v40 = v39 - v38;
                v41 = v48;
                goto LABEL_58;
              }

              if (v31 < 2)
              {
                goto LABEL_129;
              }

              v60 = *v37;
              v59 = *(v37 + 1);
              v48 = __OFSUB__(v59, v60);
              v55 = v59 - v60;
              v56 = v48;
LABEL_73:
              if (v56)
              {
                goto LABEL_132;
              }

              v62 = *v36;
              v61 = *(v36 + 1);
              v48 = __OFSUB__(v61, v62);
              v63 = v61 - v62;
              if (v48)
              {
                goto LABEL_134;
              }

              if (v63 < v55)
              {
                break;
              }
            }

            if (v35 - 1 >= v31)
            {
              __break(1u);
LABEL_122:
              __break(1u);
LABEL_123:
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
LABEL_129:
              __break(1u);
LABEL_130:
              __break(1u);
LABEL_131:
              __break(1u);
LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            if (!*a3)
            {
              goto LABEL_147;
            }

            v4 = v7;
            v67 = &v33[16 * v35 - 16];
            v7 = *v67;
            v68 = &v33[16 * v35];
            v69 = *(v68 + 1);
            sub_65A0C((*a3 + 8 * *v67), (*a3 + 8 * *v68), (*a3 + 8 * v69), v101);
            if (v103)
            {
              goto LABEL_119;
            }

            if (v69 < v7)
            {
              goto LABEL_122;
            }

            v70 = *(v4 + 16);
            if (v35 > v70)
            {
              goto LABEL_123;
            }

            *v67 = v7;
            *(v67 + 1) = v69;
            if (v35 >= v70)
            {
              goto LABEL_124;
            }

            v31 = v70 - 1;
            sub_29664(v68 + 16, v70 - 1 - v35, &v33[16 * v35]);
            v7 = v4;
            *(v4 + 16) = v70 - 1;
            if (v70 <= 2)
            {
              break;
            }

            continue;
          }
        }

        v6 = v97;
        v5 = a3[1];
        if (v97 >= v5)
        {
LABEL_109:
          v4 = *a1;
          if (!*a1)
          {
            goto LABEL_151;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_111;
          }

          goto LABEL_145;
        }

        goto LABEL_3;
      }

      v4 = [v79 priority];

      if (v4 == 2)
      {
        goto LABEL_105;
      }
    }

    if (!v71)
    {
      break;
    }

    v80 = *v76;
    v74 = *(v76 + 8);
    *v76 = v74;
    *(v76 + 8) = v80;
    v76 -= 8;
    if (__CFADD__(v75++, 1))
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_65A0C(void **a1, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_55C74(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v23 = v7;
        goto LABEL_45;
      }

      v12 = v5;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 priority];
      if (v16 == [v15 priority])
      {
        if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
        {
          v17 = sub_4CAE4();

          if (v17)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v19 = sub_4CD28(v15);

          if (v19 != -1)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        if ([v14 priority] != &dword_0 + 2)
        {

LABEL_17:
          v20 = v4;
          v21 = v7 == v4++;
          goto LABEL_19;
        }

        v18 = [v15 priority];

        if (v18 == &dword_0 + 2)
        {
          goto LABEL_17;
        }
      }

      v20 = v6;
      v21 = v7 == v6++;
LABEL_19:
      v5 = v12;
      if (!v21)
      {
        *v7 = *v20;
      }

      ++v7;
    }
  }

  sub_55C74(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v22 = &unk_D9000;
  v38 = v7;
LABEL_23:
  v23 = v6;
  v39 = v6 - 1;
  v24 = v5 - 1;
  while (v10 > v4 && v23 > v7)
  {
    v26 = v24;
    v27 = v22;
    v28 = *v39;
    v29 = *(v10 - 1);
    v30 = v28;
    v31 = [v29 v27[194]];
    if (v31 == [v30 v27[194]])
    {
      if (sub_4CAE4() & 1) != 0 || (sub_4CAE4())
      {
        v32 = sub_4CAE4();

        if ((v32 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v34 = sub_4CD28(v30);

        if (v34 == -1)
        {
LABEL_42:
          v5 = v26;
          v21 = v26 + 1 == v23;
          v7 = v38;
          v6 = v39;
          v22 = &unk_D9000;
          if (!v21)
          {
            *v5 = *v39;
          }

          goto LABEL_23;
        }
      }
    }

    else if ([v29 v27[194]] == &dword_0 + 2)
    {
      v33 = [v30 v27[194]];

      if (v33 != &dword_0 + 2)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    if (v10 != v26 + 1)
    {
      *v26 = *(v10 - 1);
    }

    v24 = v26 - 1;
    --v10;
    v7 = v38;
    v22 = &unk_D9000;
  }

LABEL_45:
  v35 = v10 - v4;
  if (v23 != v4 || v23 >= &v4[v35])
  {
    memmove(v23, v4, 8 * v35);
  }

  return 1;
}

uint64_t sub_65D60(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_A2DD4();

  return v3;
}

uint64_t sub_65DDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2E38C(result, a2);
  }

  return result;
}

uint64_t sub_65DF0()
{
  v1 = sub_A2EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  sub_761C((v0 + v5));
  sub_761C((v0 + v6));

  return _swift_deallocObject(v0, v6 + 40, v3 | 7);
}

uint64_t sub_65EB8(uint64_t a1)
{
  v3 = v2;
  v5 = sub_A2EA4();
  sub_5940(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_A648;

  return sub_62998(a1, v1 + v7, v12, v13, v1 + v10, v1 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_65FF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_A648;

  return sub_3BDE8();
}

unint64_t sub_660C8()
{
  result = qword_DE8F0;
  if (!qword_DE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE8F0);
  }

  return result;
}

uint64_t sub_6611C(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_A2DD4();

  return v3;
}

uint64_t sub_66180(void *a1)
{
  v1 = [a1 tasks];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_29D54(0, &qword_DC1C8, INTask_ptr);
  v3 = sub_A4764();

  return v3;
}

void sub_661F0(uint64_t a1, void *a2)
{
  sub_29D54(0, &qword_DC1C8, INTask_ptr);
  isa = sub_A4754().super.isa;
  [a2 setTasks:isa];
}

uint64_t sub_6626C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_662B8(uint64_t a1)
{
  v2 = type metadata accessor for CalendarEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_66314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for RemindersError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x66444);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_66484()
{
  result = qword_DE908;
  if (!qword_DE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE908);
  }

  return result;
}

uint64_t sub_664D8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_66508(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_66544(uint64_t a1)
{

  return sub_A924(a1, 0, 1, v1);
}

uint64_t sub_665B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_7A58C(a1, a2, a3, a4, v6, v5, v7, v4);
}

uint64_t sub_665D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_A924(a1, 1, 1, a4);
}

uint64_t sub_665F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    return 0;
  }

  else
  {
    return dword_AA480[a1];
  }
}

uint64_t sub_66634()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin28WeatherConditionsInterpreter_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for WeatherConditionsInterpreter(uint64_t a1)
{
  result = qword_DE940;
  if (!qword_DE940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_66724(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_667B4()
{
  if (qword_DA888 != -1)
  {
    swift_once();
  }
}

uint64_t sub_66858(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for DailyBriefingNLv3Intent(0);
  v3 = sub_66DE8(&qword_DEAD0);
  sub_66E0C(v3);
  return v5;
}

unint64_t sub_668EC()
{
  if (qword_DA860 != -1)
  {
    swift_once();
  }

  type metadata accessor for DailyBriefingNLv3Intent(0);
  v0 = sub_66DE8(&qword_DEAD0);
  sub_66E0C(v0);
  return 0x600000203000200uLL >> (8 * v2);
}

uint64_t sub_6698C()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent;
  v2 = sub_A4004();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DailyBriefingNLv3Intent(uint64_t a1)
{
  result = qword_DEA00;
  if (!qword_DEA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_66A7C(uint64_t a1)
{
  result = sub_A4004();
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

uint64_t sub_66B0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin23DailyBriefingNLv3Intent_intent;
  v5 = sub_A4004();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_66C30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t sub_66C94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t sub_66CE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.description.getter(a1, WitnessTable);
}

uint64_t sub_66DA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DailyBriefingNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_66DE8(unint64_t *a1)
{

  return sub_66DA4(a1, &unk_AA550);
}

uint64_t sub_66E0C(uint64_t a1)
{

  return sub_A3C14();
}

void sub_66E30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_66E9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_66EC0, 0, 0);
}

uint64_t sub_66EC0()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_66FC4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD00000000000001BLL, 0x80000000000B2560, sub_6797C, v2, &type metadata for Bool);
}

uint64_t sub_66FC4()
{

  return _swift_task_switch(sub_670DC, 0, 0);
}

uint64_t sub_670F4(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = a3;
  v40 = a1;
  v6 = sub_4BF0(&qword_DEBC0, &unk_AA620);
  v41 = *(v6 - 8);
  v42 = v6;
  v39 = *(v41 + 64);
  __chkstk_darwin(v6);
  v44 = &v33 - v7;
  v38 = sub_A43A4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v38);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  if (qword_DA990 != -1)
  {
    swift_once();
  }

  v13 = qword_E0AB8;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  sub_810C4(0xD000000000000010, 0x80000000000B2580, 0xD000000000000031, 0x80000000000B25A0, 0xD00000000000001BLL, 0x80000000000B2560);
  v14 = *(a2 + 16);
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_A6E80;
  *(v15 + 32) = a4;
  sub_247E0();
  v37 = v14;
  v35 = a4;
  isa = sub_A4754().super.isa;

  v16 = v8;
  v17 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v38;
  (*(v8 + 16))(v17, v12, v38);
  v19 = v41;
  v20 = v42;
  (*(v41 + 16))(v44, v40, v42);
  v21 = *(v16 + 80);
  v34 = a2;
  v22 = (v21 + 16) & ~v21;
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v19 + 80) + v23 + 8) & ~*(v19 + 80);
  v40 = v12;
  v25 = (v39 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v16 + 32))(v26 + v22, v17, v18);
  *(v26 + v23) = v34;
  (*(v19 + 32))(v26 + v24, v44, v20);
  v27 = v35;
  *(v26 + v25) = v35;
  aBlock[4] = sub_67AEC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_66E30;
  aBlock[3] = &unk_D2290;
  v28 = _Block_copy(aBlock);
  v29 = v27;

  v31 = isa;
  v30 = v37;
  [v37 ETAsFromLocation:v43 toEntries:isa completion:v28];
  _Block_release(v28);

  return (*(v16 + 8))(v40, v18);
}

uint64_t sub_67568(uint64_t a1, uint64_t a2, int a3, int a4, id a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_DA990 != -1)
    {
      swift_once();
    }

    sub_7A58C(a2, 0xD000000000000014, 0x80000000000B2600, 0x9000u, qword_E0AA0, *algn_E0AA8, byte_E0AB0, qword_E0AB8);
    sub_A4B54(34);

    swift_getErrorValue();
    v11._countAndFlagsBits = sub_A4EC4();
    sub_A46D4(v11);

    sub_81094(0xD000000000000020, 0x80000000000B2620, 0xD000000000000031, 0x80000000000B25A0, 0xD00000000000001BLL, 0x80000000000B2560);

    sub_4BF0(&qword_DEBC0, &unk_AA620);
    sub_A47E4();
  }

  else
  {
    v7 = [a5 ETAForKey:@"MapsSuggestionsETAKey"];
    if (v7)
    {
      v8 = v7;
      [v7 seconds];
      v10 = v9;

      if (qword_DA990 != -1)
      {
        swift_once();
      }

      sub_7A58C(a2, v10, 0, 0x8000u, qword_E0AA0, *algn_E0AA8, byte_E0AB0, qword_E0AB8);
      sub_A4B54(25);
      v12._countAndFlagsBits = 0xD000000000000017;
      v12._object = 0x80000000000B25E0;
      sub_A46D4(v12);
      sub_A48A4();
      sub_810C4(0, 0xE000000000000000, 0xD000000000000031, 0x80000000000B25A0, 0xD00000000000001BLL, 0x80000000000B2560);
    }

    sub_4BF0(&qword_DEBC0, &unk_AA620);
    return sub_A47E4();
  }
}

uint64_t sub_67884()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin19ETARequesterService_logger;
  v2 = sub_A43D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ETARequesterService(uint64_t a1)
{
  result = qword_DEB10;
  if (!qword_DEB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_67988()
{
  v1 = sub_A43A4();
  sub_591C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_4BF0(&qword_DEBC0, &unk_AA620);
  sub_591C();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v16 + 8, v15 | 7);
}

uint64_t sub_67AEC(uint64_t a1)
{
  v3 = *(sub_A43A4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_4BF0(&qword_DEBC0, &unk_AA620) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_67568(a1, v1 + v4, v8, v1 + v7, v9);
}

uint64_t sub_67C08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_67C20(uint64_t a1)
{
  v2 = sub_A2FE4();
  sub_591C();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_A3004();
  sub_591C();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A2FD4();
  (*(v4 + 104))(v7, enum case for Calendar.Component.hour(_:), v2);
  v14 = sub_A2FF4();
  v15 = sub_A2EA4();
  (*(*(v15 - 8) + 8))(a1, v15);
  (*(v4 + 8))(v7, v2);
  (*(v10 + 8))(v13, v8);
  if (v14 - 24 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v14 <= 0xB)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

id sub_67DF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:0 content:0 itemType:a1 status:a2 location:0 locationSearchType:0 dateTime:a3 dateSearchType:a4 temporalEventTriggerTypes:a5 taskPriority:0 notebookItemIdentifier:0];
  [v8 _setMetadata:a6];

  return v8;
}

id sub_67EAC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_A2ED4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_A2EC4();
  v10 = sub_A2EB4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  sub_13230(v10, v12, v9);
  if (a3)
  {
    v13 = sub_A45C4();
  }

  else
  {
    v13 = 0;
  }

  [v9 setAppId:v13];

  sub_68158();
  v14 = a1;
  v15 = sub_68058(v14);
  [v9 setIntent:v15];

  return v9;
}

id sub_68058(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_65D60([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    isa = sub_A2DC4().super.isa;
    sub_65DDC(v6, v7);
  }

  [v2 setData:isa];

  v8 = [a1 typeName];
  v9 = sub_A45F4();
  v11 = v10;

  sub_65DD0(v9, v11, v2);
  return v2;
}

unint64_t sub_68158()
{
  result = qword_DEBC8;
  if (!qword_DEBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEBC8);
  }

  return result;
}

uint64_t sub_6819C()
{
  sub_5950();
  v0[7] = v1;
  v0[8] = v2;
  v3 = sub_A2EA4();
  v0[9] = v3;
  sub_5940(v3);
  v0[10] = v4;
  v0[11] = *(v5 + 64);
  v0[12] = swift_task_alloc();
  v6 = sub_A43A4();
  v0[13] = v6;
  sub_5940(v6);
  v0[14] = v7;
  v0[15] = *(v8 + 64);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  sub_40210();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_682BC()
{
  if (qword_DA908 != -1)
  {
    sub_69D14(&qword_DA908);
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v18 = *(v0 + 104);
  v19 = *(v0 + 128);
  v15 = *(v0 + 96);
  v3 = *(v0 + 80);
  v20 = *(v0 + 88);
  v4 = *(v0 + 72);
  v16 = v4;
  v17 = *(v0 + 64);
  v5 = *(v0 + 56);
  v6 = *(&xmmword_DEBE8 + 1);
  *(v0 + 144) = xmmword_DEBE8;
  *(v0 + 152) = v6;
  *(v0 + 200) = byte_DEBF8;
  v7 = qword_DEC00;
  *(v0 + 160) = qword_DEC00;
  v8 = v7;
  sub_A4384();
  sub_A49B4();
  sub_A4374();
  (*(v3 + 16))(v15, v5, v4);
  sub_A760(v17, v0 + 16);
  (*(v2 + 16))(v19, v1, v18);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v20 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v2 + 80) + v10 + 40) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v0 + 168) = v12;
  (*(v3 + 32))(v12 + v9, v15, v16);
  sub_AA3C((v0 + 16), v12 + v10);
  (*(v2 + 32))(v12 + v11, v19, v18);
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_68534;

  return sub_3B2C8(&unk_AA640, v12, 0xD000000000000023, 0x80000000000B2650, 6.0);
}

uint64_t sub_68534(uint64_t a1, char a2)
{
  sub_AAA8();
  v7 = v6;
  sub_25540();
  *v8 = v7;
  v9 = *v3;
  sub_25540();
  *v10 = v9;
  *(v7 + 184) = v2;

  if (!v2)
  {

    *(v7 + 201) = a2;
    *(v7 + 192) = a1;
  }

  sub_40210();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_68664()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 201);
  v3 = sub_69D54();
  v4(v3);

  sub_255F0();

  return v5(v1, v2 & 1);
}

uint64_t sub_68700()
{

  if (qword_DA900 != -1)
  {
    sub_69D34(&qword_DA900);
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 200);
  v6 = sub_A43D4();
  sub_48A4(v6, qword_DEBD0);
  sub_81094(0xD00000000000002FLL, 0x80000000000B2680, 0xD000000000000038, 0x80000000000B26B0, 0xD000000000000023, 0x80000000000B2650);
  sub_7A58C(v4, 0xD000000000000039, 0x80000000000B26F0, 0x9000u, v3, v2, v5, v1);
  v7 = sub_68F24();
  v8 = sub_394DC(&type metadata for CalendarError, v7);
  *v9 = 2;

  v10 = sub_69D54();
  v11(v10);

  sub_255F0();

  return v12(v8, 1);
}

uint64_t sub_68898()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_DEBD0);
  v1 = sub_48A4(v0, qword_DEBD0);
  if (qword_DA9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_68960()
{
  if (qword_DA978 != -1)
  {
    swift_once();
  }

  v1 = qword_E0A58;
  xmmword_DEBE8 = xmmword_E0A40;
  byte_DEBF8 = byte_E0A50;
  qword_DEC00 = qword_E0A58;

  return v1;
}

uint64_t sub_689DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_68A8C;

  return sub_68F78(a2, a3, a4);
}

uint64_t sub_68A8C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;

  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_68B80()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1 & 1;
  return (*(v0 + 8))();
}

uint64_t sub_68BAC()
{
  v1 = sub_A2EA4();
  sub_591C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_A43A4();
  sub_591C();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 40) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  sub_761C((v0 + v7));
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_68CF0(uint64_t a1)
{
  v3 = v2;
  v5 = sub_A2EA4();
  sub_5940(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_A43A4() - 8);
  v11 = (v9 + *(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_68E3C;

  return sub_689DC(a1, v1 + v7, v1 + v9, v1 + v11);
}

uint64_t sub_68E3C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_25540();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_68F24()
{
  result = qword_DEC08;
  if (!qword_DEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEC08);
  }

  return result;
}

uint64_t sub_68F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_A3004();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_A2EA4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_690A4, 0, 0);
}

uint64_t sub_690A4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[2];
  v8 = [objc_allocWithZone(SACalendarEventSearch) init];
  v0[12] = v8;
  sub_A2FD4();
  sub_A2F44();
  (*(v5 + 8))(v4, v6);
  isa = sub_A2DF4().super.isa;
  v10 = *(v3 + 8);
  v10(v1, v2);
  [v8 setStartDate:isa];

  v11 = (sub_79D74(v7) - 6);
  v12 = v0[10];
  v13 = v0[2];
  if (v11 >= 3)
  {
    sub_4F714(v13, v12);
  }

  else
  {
    sub_4F704(v13, v12);
  }

  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[3];
  v17 = sub_A2DF4().super.isa;
  v10(v14, v15);
  [v8 setEndDate:v17];

  v18 = v16[3];
  v19 = v16[4];
  sub_7584(v16, v18);
  v20 = swift_task_alloc();
  v0[13] = v20;
  v21 = sub_29D54(0, &qword_DEC10, SABaseCommand_ptr);
  *v20 = v0;
  v20[1] = sub_69298;

  return AceServiceInvokerAsync.submit<A>(_:)(v8, v18, v21, v19);
}

uint64_t sub_69298()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;
  *(v2 + 120) = v0;

  sub_40210();

  return _swift_task_switch(v5, v6, v7);
}

id sub_6939C()
{
  result = [*(v0 + 112) dictionary];
  if (result)
  {
    result = sub_A4514();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_69754()
{
  if (qword_DA900 != -1)
  {
    sub_69D34(&qword_DA900);
  }

  v1 = sub_A43D4();
  sub_48A4(v1, qword_DEBD0);
  sub_81094(0xD000000000000020, 0x80000000000B2730, 0xD000000000000038, 0x80000000000B26B0, 0xD00000000000002FLL, 0x80000000000B2760);
  if (qword_DA908 != -1)
  {
    sub_69D14(&qword_DA908);
  }

  v2 = *(v0 + 96);
  sub_7A58C(*(v0 + 32), 0xD00000000000003DLL, 0x80000000000B2790, 0x9000u, xmmword_DEBE8, *(&xmmword_DEBE8 + 1), byte_DEBF8, qword_DEC00);
  v3 = sub_68F24();
  v4 = sub_394DC(&type metadata for CalendarError, v3);
  *v5 = 0;

  sub_255F0();

  return v6(v4, 1);
}

uint64_t sub_698DC(char a1)
{
  sub_A4B54(16);

  strcpy(v9, "CalendarError.");
  HIBYTE(v9[1]) = -18;
  if (a1)
  {
    sub_69D6C();
    v3._countAndFlagsBits = sub_69D90(v2);
    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v3._countAndFlagsBits = 0xD000000000000012;
    v7 = 0x80000000000AD1E0;
  }

  v3._object = v7;
  sub_A46D4(v3);

  return v9[0];
}

unint64_t sub_69994(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  sub_69D6C();
  return sub_69D90(v1);
}

unint64_t sub_699F0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CFAD0;
  v6._object = a2;
  v4 = sub_A4CE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_69A60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_699F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_69A90@<X0>(unint64_t *a1@<X8>)
{
  result = sub_69994(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_69AC4(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_A4504().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithDictionary:v2.super.isa];

  return v3;
}

uint64_t sub_69B44(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_29D54(0, &qword_DC9F0, SACalendarEvent_ptr);
  v3 = sub_A4764();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for CalendarError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x69C80);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_69CC0()
{
  result = qword_DEC18;
  if (!qword_DEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEC18);
  }

  return result;
}

uint64_t sub_69D14(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_69D34(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_69D90@<X0>(int a1@<W8>)
{
  if (a1 == 1)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_69DC4()
{
  v0 = sub_A43D4();
  sub_13310(v0, qword_E0920);
  v1 = sub_48A4(v0, qword_E0920);
  if (qword_DA9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_48A4(v0, qword_E0BB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_69E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = sub_6A420(a1, a2, a3);
  sub_591C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_AA54();
  v9 = v8 - v7;
  sub_A2D04();
  sub_591C();
  __chkstk_darwin(v10);
  sub_AA54();
  v13 = v12 - v11;
  v29 = sub_A2EA4();
  sub_591C();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_AA54();
  v17 = sub_6A40C();
  sub_4F714(v17, v18);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v19 = sub_A2FE4();
  sub_591C();
  v21 = v20;
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_A6E70;
  (*(v21 + 104))(v23 + v22, enum case for Calendar.Component.hour(_:), v19);
  v24 = sub_608AC(v23);
  sub_6A3E8(v24);

  (*(v5 + 8))(v9, v30);
  sub_A2C84();
  v25 = sub_6A3D0();
  v26(v25);
  (*(v15 + 8))(v3, v29);
  if ((v5 + 8))
  {
    v27 = v31;
  }

  else
  {
    v27 = v13;
  }

  if (v27 >= v31)
  {
    return v31;
  }

  else
  {
    return v27;
  }
}

uint64_t sub_6A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = sub_6A420(a1, a2, a3);
  sub_591C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_AA54();
  v9 = v8 - v7;
  sub_A2D04();
  sub_591C();
  __chkstk_darwin(v10);
  sub_AA54();
  v13 = v12 - v11;
  v29 = sub_A2EA4();
  sub_591C();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_AA54();
  v17 = sub_6A40C();
  sub_4FE7C(v17, v18);
  sub_A2FD4();
  sub_4BF0(&qword_DE7C0, &qword_AC620);
  v19 = sub_A2FE4();
  sub_591C();
  v21 = v20;
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_A6E70;
  (*(v21 + 104))(v23 + v22, enum case for Calendar.Component.hour(_:), v19);
  v24 = sub_608AC(v23);
  sub_6A3E8(v24);

  (*(v5 + 8))(v9, v30);
  sub_A2C84();
  v25 = sub_6A3D0();
  v26(v25);
  (*(v15 + 8))(v3, v29);
  if (v22)
  {
    v27 = 0;
  }

  else
  {
    v27 = v13;
  }

  if (v27 >= v31)
  {
    return v31;
  }

  else
  {
    return v27;
  }
}

uint64_t sub_6A3E8(uint64_t a1)
{

  return sub_A2F64();
}

uint64_t sub_6A420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 88) = a3;
  *(v3 - 104) = a1;

  return sub_A3004();
}

uint64_t sub_6A440(uint64_t a1, uint64_t a2)
{
  v5 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_A3784();
  sub_AA64();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_AA54();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12, a1, v8);
  sub_6B368(a2, v7);
  sub_A760(v2 + 16, v39);
  sub_A3454();
  sub_A7C4(v39, v39[3]);
  sub_AA64();
  __chkstk_darwin(v15);
  sub_AA54();
  v18 = (v17 - v16);
  (*(v19 + 16))(v17 - v16);
  v20 = *v18;
  v21 = type metadata accessor for DailyBriefingOutputPublisher(0);
  v37[3] = v21;
  v37[4] = &off_D2D00;
  v37[0] = v20;
  type metadata accessor for AddViewsPublisherFlow(0);
  v22 = swift_allocObject();
  sub_A7C4(v37, v21);
  sub_AA64();
  __chkstk_darwin(v23);
  sub_AA54();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  v28 = *v26;
  v35 = v21;
  v36 = &off_D2D00;
  *&v34 = v28;
  v29 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_logger;
  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v30 = sub_A43D4();
  v31 = sub_48A4(v30, qword_E0BA0);
  (*(*(v30 - 8) + 16))(v22 + v29, v31, v30);
  v32 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dialogService;
  sub_A3584();
  swift_allocObject();
  *(v22 + v32) = sub_A3574();
  sub_A814(&v34, v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher);
  (*(v10 + 32))(v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_templatingResult, v14, v8);
  sub_6B430(v7, v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_nlContext);
  sub_A814(&v38, v22 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_aceService);
  sub_761C(v37);
  sub_761C(v39);
  return v22;
}

uint64_t sub_6A7EC()
{
  sub_761C((v0 + 16));
  sub_761C((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_6A850(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AddViewsPublisherFlow(0);
  sub_6B3D8();
  return sub_A3334();
}

uint64_t sub_6A8B0()
{
  sub_5950();
  v1[2] = v2;
  v1[3] = v0;
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  v1[4] = swift_task_alloc();
  v3 = sub_A3944();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_6A9A4, 0, 0);
}

uint64_t sub_6A9A4()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_810AC(0xD00000000000001ALL, 0x80000000000B2960, 0xD000000000000033, 0x80000000000B2980, 0x2865747563657865, 0xE900000000000029);
  v3 = sub_A3564();
  v0[8] = v3;
  sub_4BF0(&qword_DBB70, &unk_A6E90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A6E80;
  *(v4 + 32) = v3;
  sub_6B368(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_nlContext, v1);
  v5 = v3;
  sub_A3934();
  sub_7584((v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher), *(v2 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher + 24));
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_6AB64;
  v7 = v0[7];

  return sub_88BB4(v7);
}

uint64_t sub_6AB64()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  return _swift_task_switch(sub_6AC54, 0, 0);
}

uint64_t sub_6AC54(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[5];
  v5 = v1[6];
  sub_A3664();

  (*(v5 + 8))(v2, v4);

  v6 = v1[1];

  return v6();
}

uint64_t sub_6ACFC()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_logger;
  sub_A43D4();
  sub_5908();
  (*(v2 + 8))(v0 + v1);
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_dailyBriefingOutputPublisher));
  v3 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_templatingResult;
  sub_A3784();
  sub_5908();
  (*(v4 + 8))(v0 + v3);
  sub_A8B4(v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_nlContext);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin21AddViewsPublisherFlow_aceService));
  return v0;
}

uint64_t sub_6ADC4()
{
  sub_6ACFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AddViewsPublisherFlow(uint64_t a1)
{
  result = qword_DEDB8;
  if (!qword_DEDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6AE70(uint64_t a1)
{
  sub_A43D4();
  if (v1 <= 0x3F)
  {
    sub_A3784();
    if (v2 <= 0x3F)
    {
      sub_6AF8C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_6AF8C(uint64_t a1)
{
  if (!qword_DEDC8)
  {
    sub_A3744();
    v1 = sub_A4A24();
    if (!v2)
    {
      atomic_store(v1, &qword_DEDC8);
    }
  }
}

uint64_t sub_6AFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_6B094;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_6B094()
{
  sub_5950();
  v2 = v1;
  v3 = *v0;
  sub_5930();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_6B1A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6B244;

  return sub_6A8B0();
}

uint64_t sub_6B244()
{
  sub_5950();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_6B32C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AddViewsPublisherFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_6B368(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_6B3D8()
{
  result = qword_DEEA0;
  if (!qword_DEEA0)
  {
    type metadata accessor for AddViewsPublisherFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEEA0);
  }

  return result;
}

uint64_t sub_6B430(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DB5A8, &unk_A67C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_AA8C();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_6B4CC()
{
  v1 = v0[15];
  sub_A4B54(41);

  v2 = v1[3];
  v0[18] = v2;
  v3 = v1[4];
  v0[19] = v3;
  v0[20] = sub_7584(v1, v2);
  v4 = *(v3 + 16);
  v0[21] = v4;
  v0[22] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xEFBB000000000000;
  v5 = sub_25648();
  v20._countAndFlagsBits = v4(v5);
  sub_A46D4(v20);

  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v21._object = 0x80000000000B2C20;
  sub_A46D4(v21);
  sub_6DDDC();
  sub_810AC(v6, 0xED0000203A544143, v7, v8, 0xD000000000000018, v9);

  v10 = sub_25648();
  v11 = v4(v10);
  v13 = v12;
  v0[23] = v12;
  v18 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_6B6EC;
  v15 = v0[16];
  v16 = v0[14];

  return v18(v16, v11, v13, v15);
}

uint64_t sub_6B6EC()
{
  sub_5950();
  sub_AAA8();
  v3 = v2;
  v4 = *v1;
  sub_5930();
  *v5 = v4;
  *(v3 + 200) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_6B814, 0, 0);
  }

  else
  {

    sub_AA9C();

    return v6();
  }
}

void sub_6B814()
{
  v1 = v0;
  v2 = v0[25];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  sub_7584((v6 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender), *(v6 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender + 24));
  sub_A4B54(79);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000002CLL;
  v25._object = 0x80000000000B2C60;
  sub_A46D4(v25);
  v26._countAndFlagsBits = v3(v5, v4);
  sub_A46D4(v26);

  v27._countAndFlagsBits = 0xD00000000000001FLL;
  v27._object = 0x80000000000B2C90;
  sub_A46D4(v27);
  v0[11] = v2;
  sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_A4C44();
  v7 = v0[5];
  v8 = v0[6];

  v9 = sub_931E8(4, 3, v7, v8, 0x3BuLL);
  sub_4D424(v9);

  sub_A4B54(48);

  v28._countAndFlagsBits = v3(v5, v4);
  sub_A46D4(v28);

  v29._countAndFlagsBits = 8238;
  v29._object = 0xE200000000000000;
  sub_A46D4(v29);
  sub_A4B54(31);
  v1[7] = 0;
  v1[8] = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD00000000000001DLL;
  v30._object = 0x80000000000B2D20;
  sub_A46D4(v30);
  v1[12] = v2;
  sub_A4C44();
  v10 = v1[7];
  v11 = v1[8];

  v31._countAndFlagsBits = v10;
  v31._object = v11;
  sub_A46D4(v31);

  if (qword_DA9D0 != -1)
  {
    swift_once();
  }

  v23 = v1[25];
  v12 = v1[21];
  v13 = v1[19];
  v14 = v1[18];
  v15 = sub_A43D4();
  sub_48A4(v15, qword_E0BA0);
  sub_6DDDC();
  sub_81094(0xD00000000000002CLL, 0x80000000000B2C60, v16, v17, v18, v19);

  swift_beginAccess();
  v22 = static FatalError.fatalErrorClosure;

  sub_A4B54(48);

  v32._countAndFlagsBits = v12(v14, v13);
  sub_A46D4(v32);

  v33._countAndFlagsBits = 8238;
  v33._object = 0xE200000000000000;
  sub_A46D4(v33);
  sub_A4B54(31);
  v1[9] = 0;
  v1[10] = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x80000000000B2D20;
  sub_A46D4(v34);
  v1[13] = v23;
  sub_A4C44();
  v20 = v1[9];
  v21 = v1[10];

  v35._countAndFlagsBits = v20;
  v35._object = v21;
  sub_A46D4(v35);

  v22(0xD00000000000002CLL, 0x80000000000B2C60, "/Library/Caches/com.apple.xbs/Sources/SiriDailyBriefing/DailyBriefingFlowPlugin/BaseTemplatingService.swift", 107, 2, 111);
}

uint64_t sub_6BCA8(uint64_t a1, uint64_t a2)
{
  sub_4BF0(&qword_DB5A8, &unk_A67C0);
  sub_11FC0();
  __chkstk_darwin(v3);
  sub_4C704(a2, &v6 - v4, &qword_DB5A8, &unk_A67C0);
  return sub_A3854();
}

uint64_t sub_6BD4C()
{
  sub_5950();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_A3784();
  v1[7] = v3;
  sub_5940(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v5 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  sub_5940(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = sub_AA8C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_6BE60()
{
  sub_5950();
  if (qword_DA918 != -1)
  {
    sub_6DDAC(&qword_DA918);
  }

  v1 = v0[5];
  v0[13] = qword_E0940;
  v0[14] = *(v1 + 16);

  v2 = sub_6DDCC();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_6BEF8()
{
  sub_5950();
  sub_6D01C(*(v0 + 112));

  v1 = sub_AA8C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_6BF5C()
{
  sub_5950();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_6C03C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_6C03C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_6C13C()
{
  sub_5950();
  *(v0 + 136) = qword_E0940;

  v1 = sub_6DDCC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_6C1A8()
{
  sub_5950();
  v1 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 144) = *(v1 + 112);

  v2 = sub_AA8C();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_6C228()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = v0[8];
    v23 = *(v3 + 72);
    v5 = (v22 + 32);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[11];
      v7 = v0[12];
      v9 = v0[7];
      sub_4C704(v4, v7, &qword_DDCA0, &qword_A9AF0);
      sub_5AB94(v7, v8);
      if (sub_CF2C(v8, 1, v9) == 1)
      {
        sub_11E34(v0[11], &qword_DDCA0, &qword_A9AF0);
      }

      else
      {
        v10 = *v5;
        (*v5)(v0[9], v0[11], v0[7]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_55440();
          v6 = v14;
        }

        v11 = *(v6 + 2);
        if (v11 >= *(v6 + 3) >> 1)
        {
          sub_55440();
          v6 = v15;
        }

        v12 = v0[9];
        v13 = v0[7];
        *(v6 + 2) = v11 + 1;
        v10(&v6[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v11], v12, v13);
      }

      v4 += v23;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v25._countAndFlagsBits = sub_A4774();
  sub_A46D4(v25);

  sub_6DDDC();
  sub_810AC(v16, 0xEA00000000002067, v17, v18, 0xD000000000000014, v19);

  v20 = v0[1];

  return v20(v6);
}

uint64_t sub_6C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[16] = a2;
  sub_4BF0(&qword_DB5B8, &qword_AAD60);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_6C580, 0, 0);
}

uint64_t sub_6C580()
{
  v1 = 0;
  v2 = *(v0 + 136);
  v22 = *(v2 + 16);
  v3 = v2 + 32;
  while (v22 != v1)
  {
    *(v0 + 16) = v1;
    sub_6DB48(v3, v0 + 24);
    if (!*(v0 + 48))
    {
      break;
    }

    v26 = v3;
    v27 = v1;
    v4 = *(v0 + 16);
    v25 = *(v0 + 24);
    v5 = *(v0 + 56);
    v24 = *(v0 + 64);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v23 = *(v0 + 40);
    v10 = sub_A4814();
    sub_A924(v6, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v9;
    *(v11 + 40) = v4;
    *(v11 + 48) = v8;
    *(v11 + 72) = v23;
    *(v11 + 56) = v25;
    *(v11 + 88) = v5;
    *(v11 + 96) = v24;
    sub_4C704(v6, v7, &qword_DB5B8, &qword_AAD60);
    LODWORD(v7) = sub_CF2C(v7, 1, v10);

    v12 = *(v0 + 152);
    if (v7 == 1)
    {
      sub_11E34(*(v0 + 152), &qword_DB5B8, &qword_AAD60);
    }

    else
    {
      sub_A4804();
      (*(*(v10 - 8) + 8))(v12, v10);
    }

    if (*(v11 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_A47C4();
      v15 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = **(v0 + 128);
    v17 = swift_allocObject();
    *(v17 + 16) = &unk_AAA58;
    *(v17 + 24) = v11;

    if (v15 | v13)
    {
      v18 = v0 + 72;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = v13;
      *(v0 + 96) = v15;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 160);
    *(v0 + 104) = 1;
    *(v0 + 112) = v18;
    *(v0 + 120) = v16;
    swift_task_create();

    sub_11E34(v19, &qword_DB5B8, &qword_AAD60);
    v3 = v26 + 48;
    v1 = v27 + 1;
  }

  sub_AA9C();

  return v20();
}

uint64_t sub_6C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_A3784();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return _swift_task_switch(sub_6C954, 0, 0);
}

uint64_t sub_6C954()
{
  v1 = v0[5];
  sub_A4B54(32);

  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = v0[6];
    v3 = v0[7];
    v0[2] = v1 + 1;
    sub_25648();
    v10._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v10);

    v11._countAndFlagsBits = 543584032;
    v11._object = 0xE400000000000000;
    sub_A46D4(v11);
    v0[3] = *(v4 + 16);
    sub_25648();
    v12._countAndFlagsBits = sub_A4E24();
    sub_A46D4(v12);

    v13._object = 0x80000000000B2C00;
    v13._countAndFlagsBits = 0xD000000000000013;
    sub_A46D4(v13);
    sub_810AC(0x206B736154, 0xE500000000000000, 0xD000000000000033, 0x80000000000AFCC0, 0xD000000000000014, 0x80000000000B2BE0);

    v5 = *(v3 + 40);
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v6[1] = sub_6CB40;
    v7 = v0[10];
    v8 = v0[7];

    return sub_6B4A0(v7, v8, v5);
  }

  return result;
}

uint64_t sub_6CB40()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_AA8C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_6CC24()
{
  sub_5950();
  if (qword_DA918 != -1)
  {
    sub_6DDAC(&qword_DA918);
  }

  *(v0 + 96) = qword_E0940;

  v1 = sub_6DDCC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_6CCB0()
{
  sub_5950();
  sub_6D2EC(*(v0 + 80), *(v0 + 40));

  v1 = sub_AA8C();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_6CD1C()
{
  sub_5950();
  (*(v0[9] + 8))(v0[10], v0[8]);

  sub_AA9C();

  return v1();
}

uint64_t sub_6CD90()
{
  v1 = OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_logger;
  sub_A43D4();
  sub_7A14();
  (*(v2 + 8))(v0 + v1);

  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_siriKitEventSender));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_deviceState));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_addViewsFlowProvider));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_aceService));
  sub_761C((v0 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_featureFlags));
  return v0;
}

uint64_t sub_6CE88()
{
  sub_6CD90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_6CF08(uint64_t a1)
{
  result = sub_A43D4();
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

uint64_t sub_6CFD4()
{
  type metadata accessor for ExecutedCATsState();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = _swiftEmptyArrayStorage;
  qword_E0940 = v0;
  return result;
}

uint64_t sub_6D01C(uint64_t a1)
{
  v2 = v1;
  sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  sub_11FC0();
  __chkstk_darwin(v4);
  v6 = (&v16 - v5);
  if (qword_DAA10 != -1)
  {
    sub_6DD8C(&qword_DAA10);
  }

  v7 = sub_A43D4();
  sub_48A4(v7, qword_E0C60);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_A4B54(51);
  v19._countAndFlagsBits = 0xD000000000000030;
  v19._object = 0x80000000000B2B80;
  sub_A46D4(v19);
  v18 = a1;
  v20._countAndFlagsBits = sub_A4E24();
  sub_A46D4(v20);

  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  sub_A46D4(v21);
  v8 = v17;
  sub_6DDDC();
  sub_810C4(v9, v8, v10, v11, 0xD00000000000001FLL, v12);

  v13 = sub_A3784();
  sub_A924(v6, 1, 1, v13);
  v14 = sub_6D1E4(v6, a1);
  swift_beginAccess();
  *(v2 + 112) = v14;
}

void *sub_6D1E4(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_4BF0(&qword_DDCA0, &qword_A9AF0);
      v4 = sub_A4794();
      v4[2] = v2;
      v5 = *(sub_4BF0(&qword_DDCA0, &qword_A9AF0) - 8);
      for (i = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)); ; i += *(v5 + 72))
      {
        --v2;
        sub_4C704(v3, i, &qword_DDCA0, &qword_A9AF0);
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    sub_11E34(v3, &qword_DDCA0, &qword_A9AF0);
    return v4;
  }

  return result;
}

uint64_t sub_6D2EC(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v6 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  sub_5940(v6);
  v8 = v7;
  sub_11FC0();
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  swift_beginAccess();
  v12 = *(v3 + 112);
  if (*(v12 + 16) > a2)
  {
    v13 = sub_A3784();
    sub_7A14();
    (*(v14 + 16))(v11, a1, v13);
    sub_A924(v11, 0, 1, v13);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 112) = v12;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_6DA18();
      v12 = v24;
      *(v3 + 112) = v24;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (*(v12 + 16) <= a2)
        {
          __break(1u);
        }

        else
        {
          sub_6DA2C(v11, v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2);
          *(v3 + 112) = v12;
          swift_endAccess();
          if (qword_DAA10 == -1)
          {
LABEL_6:
            v16 = sub_A43D4();
            sub_48A4(v16, qword_E0C60);
            v27[0] = 0;
            v27[1] = 0xE000000000000000;
            sub_A4B54(21);

            strcpy(v27, "Added result ");
            HIWORD(v27[1]) = -4864;
            v26 = a2 + 1;
            v28._countAndFlagsBits = sub_A4E24();
            sub_A46D4(v28);

            v29._countAndFlagsBits = 543584032;
            v29._object = 0xE400000000000000;
            sub_A46D4(v29);
            v26 = *(*(v3 + 112) + 16);
            v30._countAndFlagsBits = sub_A4E24();
            sub_A46D4(v30);

            v17 = v27[1];
            sub_6DDDC();
            sub_810C4(v18, v17, v19, v20, 0xD00000000000001BLL, v21);
          }
        }

        sub_6DD8C(&qword_DAA10);
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_DAA10 != -1)
  {
LABEL_11:
    sub_6DD8C(&qword_DAA10);
  }

  v23 = sub_A43D4();
  sub_48A4(v23, qword_E0C60);
  return sub_82B54(0xD00000000000002DLL, 0x80000000000B2B30, 0xD000000000000033, 0x80000000000AFCC0, 0xD00000000000001BLL, 0x80000000000B2B60);
}

uint64_t sub_6D650()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_6D760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_A4354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BF0(&qword_DC748, &qword_A8330);
  sub_11FC0();
  __chkstk_darwin(v9);
  sub_4C704(a1, &v13 - v10, &qword_DC748, &qword_A8330);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_A4274();
  (*(v6 + 8))(a2, v5);
  sub_11E34(a1, &qword_DC748, &qword_A8330);
  return v11;
}

uint64_t sub_6D914(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v3 = swift_task_alloc();
  v4 = sub_18584(v3);
  *v4 = v5;
  v4[1] = sub_3D378;

  return v7(a1);
}

uint64_t sub_6DA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4BF0(&qword_DDCA0, &qword_A9AF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6DA9C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = swift_task_alloc();
  v8 = sub_18584(v7);
  *v8 = v9;
  v8[1] = sub_A648;

  return sub_6C4D4(a1, a2, v6, v5);
}

uint64_t sub_6DB80()
{
  swift_unknownObjectRelease();

  sub_761C((v0 + 56));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_6DBD8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_18584(v8);
  *v9 = v10;
  v9[1] = sub_18540;

  return sub_6C890(a1, v3, v4, v5, v6, v7, (v1 + 7));
}

uint64_t sub_6DCA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_6DCDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_6DCF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6DD30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6DD8C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_6DDAC(uint64_t a1)
{

  return swift_once();
}

void *sub_6DDE8(unint64_t a1)
{

  result = sub_1DDB8(3, a1);
  v4 = v3;
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
  v9 = v8 >> 1;
  while (1)
  {
    if (v9 == v6)
    {
      swift_unknownObjectRelease();
      return v7;
    }

    if (v6 >= v9)
    {
      break;
    }

    v10 = *(v4 + 8 * v6);
    type metadata accessor for DBReminder(0);
    v11 = v10;
    sub_8CE00(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, vars0, vars8);
    sub_A4744();
    if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_A4784();
    }

    result = sub_A47A4();
    v7 = v20;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_6DEE4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_58F8();
}

uint64_t sub_6DEFC()
{
  v1 = v0[2];
  sub_4BF0(&qword_DB968, &unk_A8F90);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_AA280;
  sub_10944();
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = v4;
  v5 = sub_6DDE8(*v1);
  v6 = sub_4BF0(&qword_DF288, &qword_AAAF0);
  *(v2 + 48) = v5;
  sub_10944();
  *(v2 + 72) = v7;
  *(v2 + 80) = 0xD000000000000016;
  *(v2 + 88) = v8;
  *(v2 + 96) = sub_1BF68();
  sub_10944();
  *(v2 + 120) = &type metadata for Double;
  *(v2 + 128) = 0xD000000000000010;
  *(v2 + 136) = v9;
  *(v2 + 144) = sub_6DDE8(v1[1]);
  sub_10944();
  *(v2 + 168) = v6;
  *(v2 + 176) = 0xD000000000000015;
  *(v2 + 184) = v10;
  *(v2 + 192) = sub_1BF68();
  sub_10944();
  *(v2 + 216) = &type metadata for Double;
  *(v2 + 224) = 0xD000000000000013;
  *(v2 + 232) = v11;
  v12 = sub_1BF68();
  result = sub_1BF68();
  if (__OFADD__(v12, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v0[4];
    *(v2 + 264) = &type metadata for Double;
    *(v2 + 240) = (v12 + result);
    v15 = *(v14 + 16);
    sub_2E790(&unk_AAAF8);
    v19 = v16;
    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v17[1] = sub_6E104;
    v18 = v0[3];

    return v19(v2, v18, v15);
  }

  return result;
}

uint64_t sub_6E104()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_595C();

  return v4(v3);
}

uint64_t sub_6E228(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 64) = a2;
  *(v4 + 120) = a1;
  return sub_58F8();
}

uint64_t sub_6E244()
{
  sub_25654();
  sub_71CCC();
  *(v2 + 40) = &type metadata for Features;
  v3 = sub_35DA4();
  sub_71B88(v3);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v4 = sub_AB4C(v0);
    sub_71FA8(v4);
    sub_2E790(&unk_AAB78);
    v16 = v5;
    v6 = swift_task_alloc();
    v7 = sub_71FC0(v6);
    *v7 = v8;
    sub_72054(v7);
    v9 = sub_71D2C();
    v10 = v1;
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB70);
    v16 = v11;
    v12 = swift_task_alloc();
    v13 = sub_71FCC(v12);
    *v13 = v14;
    sub_72054(v13);
    v9 = sub_71D2C();
  }

  return v16(v9, v10);
}

uint64_t sub_6E388()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  *v2 = *v0;
  sub_7203C(v3);
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_6E46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return sub_58F8();
}

uint64_t sub_6E484()
{
  sub_25654();
  sub_71CCC();
  *(v1 + 40) = &type metadata for Features;
  v2 = sub_35DA4();
  sub_71B88(v2);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v3 = sub_AB4C(v0);
    sub_71FA8(v3);
    sub_2E790(&unk_AAB48);
    v14 = v4;
    v5 = swift_task_alloc();
    v6 = sub_71FC0(v5);
    *v6 = v7;
    v8 = sub_71D64(v6);
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB40);
    v14 = v9;
    v10 = swift_task_alloc();
    v11 = sub_71FCC(v10);
    *v11 = v12;
    v8 = sub_71C64(v11);
  }

  return v14(v8);
}

uint64_t sub_6E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_6E5DC, 0, 0);
}

uint64_t sub_6E5DC()
{
  sub_25654();
  sub_71CCC();
  *(v1 + 40) = &type metadata for Features;
  v2 = sub_35DA4();
  sub_71B88(v2);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v3 = sub_AB4C(v0);
    sub_71FA8(v3);
    sub_2E790(&unk_AAB08);
    v14 = v4;
    v5 = swift_task_alloc();
    v6 = sub_71FC0(v5);
    *v6 = v7;
    v8 = sub_71D64(v6);
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB00);
    v14 = v9;
    v10 = swift_task_alloc();
    v11 = sub_71FCC(v10);
    *v11 = v12;
    v8 = sub_71C64(v11);
  }

  return v14(v8);
}

uint64_t sub_6E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return sub_58F8();
}

uint64_t sub_6E728()
{
  sub_25654();
  sub_71CCC();
  *(v1 + 40) = &type metadata for Features;
  v2 = sub_35DA4();
  sub_71B88(v2);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v3 = sub_AB4C(v0);
    sub_71FA8(v3);
    sub_2E790(&unk_AAB30);
    v14 = v4;
    v5 = swift_task_alloc();
    v6 = sub_71FC0(v5);
    *v6 = v7;
    v8 = sub_71D64(v6);
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB28);
    v14 = v9;
    v10 = swift_task_alloc();
    v11 = sub_71FCC(v10);
    *v11 = v12;
    v8 = sub_71C64(v11);
  }

  return v14(v8);
}

uint64_t sub_6E85C()
{
  sub_5950();
  sub_AAA8();
  v1 = *v0;
  sub_5930();
  *v2 = v1;

  v3 = sub_595C();

  return v4(v3);
}

uint64_t sub_6E95C()
{
  sub_5950();
  sub_AAA8();
  sub_25540();
  *v2 = v1;
  *v2 = *v0;
  sub_7203C(v3);
  v4 = sub_AA8C();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_6EA40()
{
  *(v0 + 56) = *(v0 + 112);
  type metadata accessor for AddViewsPublisherFlow(0);
  sub_6B3D8();
  sub_A3324();

  v1 = sub_595C();

  return v2(v1);
}

uint64_t sub_6EAD0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 64) = a2;
  *(v4 + 120) = a1;
  return sub_58F8();
}

uint64_t sub_6EAEC()
{
  sub_25654();
  sub_71CCC();
  *(v2 + 40) = &type metadata for Features;
  v3 = sub_35DA4();
  sub_71B88(v3);
  sub_71F24();
  if (v0)
  {
    sub_71A48();
    v4 = sub_AB4C(v0);
    sub_71FA8(v4);
    sub_2E790(&unk_AAB60);
    v16 = v5;
    v6 = swift_task_alloc();
    v7 = sub_71FC0(v6);
    *v7 = v8;
    sub_72054(v7);
    v9 = sub_71D2C();
    v10 = v1;
  }

  else
  {
    sub_71ABC();
    sub_2E790(&unk_AAB58);
    v16 = v11;
    v12 = swift_task_alloc();
    v13 = sub_71FCC(v12);
    *v13 = v14;
    sub_72054(v13);
    v9 = sub_71D2C();
  }

  return v16(v9, v10);
}

uint64_t sub_6EC30(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = a4;
  *(v4 + 248) = a2;
  *(v4 + 376) = a1;
  sub_A3544();
  *(v4 + 272) = swift_task_alloc();
  v6 = sub_A3864();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  v7 = sub_A4354();
  *(v4 + 304) = v7;
  *(v4 + 312) = *(v7 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 40) = &type metadata for CalendarDialogs;
  *(v4 + 48) = &off_D04E0;
  *(v4 + 16) = a1;

  return _swift_task_switch(sub_6ED9C, 0, 0);
}

uint64_t sub_6ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_40250();
  sub_40244();
  *(v17 + 80) = &type metadata for Features;
  v19 = sub_35DA4();
  sub_720A0(v19);
  sub_71F24();
  if (v16)
  {
    sub_71C34();
    sub_71F9C();
  }

  else
  {
    sub_71FF0();
    sub_71FE4();
    sub_71FD8();
    sub_71D78();
    sub_82B54(v20, v21, v22, v23, v24, v25);
  }

  v48 = *(v17 + 320);
  v26 = *(v17 + 376);
  sub_71C7C();

  sub_71A94();
  v27 = sub_7584((v17 + 16), &type metadata for CalendarDialogs);
  *(v17 + 328) = v27;
  v49._countAndFlagsBits = sub_5D9C(v26);
  sub_A46D4(v49);

  v28._countAndFlagsBits = 0xD000000000000018;
  sub_2E844(v28, "nlContextUpdate:)");
  sub_A4244();
  sub_A4534();
  sub_71FFC();
  v50._countAndFlagsBits = 0xD000000000000031;
  v50._object = v18;
  sub_A46D4(v50);

  sub_71D78();
  sub_810AC(v29, v30, v31, v32, v33, v34);

  sub_A42B4();
  sub_71C54();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v17 + 336) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v36 = sub_5D9C(*v27);
  sub_71DC0(v36, v37);
  v38 = swift_task_alloc();
  *(v17 + 352) = v38;
  *v38 = v17;
  sub_71D3C(v38);
  sub_25660();

  return static CATResponse.executePattern(bundle:patternId:parameters:globals:callback:options:)(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, v48, 0, a13, a14, a15, a16);
}

uint64_t sub_6F008()
{
  sub_71CBC();
  sub_5930();
  *v4 = v3;
  v5 = v3[42];
  *v4 = *v2;
  v3[45] = v1;

  sub_71F84();
  v7 = *(v6 + 320);
  v8 = v3[39];
  v9 = v3[38];
  if (!v1)
  {
    v3[46] = v0;
  }

  (*(v8 + 8))(v7, v9);
  sub_715C8((v3 + 12));
  sub_71C24();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_6F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_71EA4();
  sub_59C4();
  sub_71F5C();
  v15 = swift_task_alloc();
  sub_71FB4(v15);
  sub_71C9C();

  sub_A760(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider, v12 + 136);
  sub_71B4C((v12 + 136));

  v16 = sub_71C44();
  v17(v16);
  sub_761C((v12 + 136));
  sub_761C((v12 + 16));

  sub_595C();
  sub_59E4();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_6F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_71EC0();
  sub_71F90();
  sub_71DF4();
  sub_71D04();
  *(v15 + 200) = v19;
  v16[26] = v20;
  v40._countAndFlagsBits = v17 + 15;
  v40._object = 0x80000000000B2F30;
  sub_A46D4(v40);
  v41._countAndFlagsBits = sub_5D9C(*v14);
  sub_A46D4(v41);

  v42._object = 0x80000000000B2C90;
  sub_71EDC(v42);
  v16[29] = v18;
  v21 = sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_71D88(v21, v22, v23, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v24 = v16[45];
  v25 = v16[41];
  v26 = sub_A43D4();
  sub_48A4(v26, qword_E0BA0);
  sub_71B1C("Received the following error ");

  sub_71DA4(v27, (v16 + 22));
  sub_72080();
  sub_71EF4();
  sub_71D04();
  sub_72060(v28);
  v43._countAndFlagsBits = sub_5D9C(*v25);
  sub_A46D4(v43);

  v44._object = 0x80000000000B2C90;
  sub_71EDC(v44);
  v16[30] = v24;
  sub_71F0C((v16 + 30), v29, v30, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  sub_71B04();
  sub_1A6AC();

  return v37(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_6F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  sub_A3544();
  v3[29] = swift_task_alloc();
  v4 = sub_A3864();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v5 = sub_A4354();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_6F5A4, 0, 0);
}

uint64_t sub_6F7C8()
{
  sub_25654();
  sub_71CBC();
  sub_5930();
  *v4 = v3;
  v5 = v3[36];
  *v4 = *v2;
  v3[38] = v1;

  sub_71F84();
  v7 = *(v6 + 280);
  v8 = v3[34];
  v9 = v3[33];
  if (!v1)
  {
    v3[39] = v0;
  }

  (*(v8 + 8))(v7, v9);
  sub_715C8((v3 + 7));
  sub_71C24();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_6F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_71EA4();
  sub_59C4();
  sub_71CDC();
  v15 = swift_task_alloc();
  sub_71FB4(v15);
  sub_71C9C();

  sub_A760(v14 + OBJC_IVAR____TtC23DailyBriefingFlowPlugin17TemplatingService_patternFlowProvider, v12 + 96);
  sub_71B4C((v12 + 96));

  v16 = sub_71C44();
  v17(v16);
  sub_761C((v12 + 96));

  sub_595C();
  sub_59E4();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_6FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_71EC0();
  sub_71F90();
  v16 = v15[38];
  sub_71E24();
  sub_71D04();
  *(v14 + 160) = v17;
  v15[21] = v18;
  v37._countAndFlagsBits = 0xD00000000000002ELL;
  v37._object = 0x80000000000B2F30;
  sub_A46D4(v37);
  v38._countAndFlagsBits = 0xD000000000000023;
  v38._object = 0x80000000000AF260;
  sub_A46D4(v38);
  sub_71D10();
  v15[24] = v16;
  v19 = sub_4BF0(&qword_DBB90, &qword_A7540);
  sub_71D88(v19, v20, v21, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  if (qword_DA9D0 != -1)
  {
    sub_58D8(&qword_DA9D0);
  }

  v22 = v15[38];
  v23 = sub_A43D4();
  sub_48A4(v23, qword_E0BA0);
  sub_71B1C("Received the following error ");

  sub_71DA4(v24, (v15 + 17));
  sub_71E44();
  sub_71EF4();
  sub_71D04();
  sub_720C0(v25);
  v39._countAndFlagsBits = 0xD000000000000023;
  v39._object = 0x80000000000AF260;
  sub_A46D4(v39);
  sub_71D10();
  v15[25] = v22;
  sub_71F0C((v15 + 25), v26, v27, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  sub_71B04();
  sub_1A6AC();

  return v34(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}
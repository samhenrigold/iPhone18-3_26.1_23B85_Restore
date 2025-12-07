uint64_t sub_3658C()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_35F68(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_3662C()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_35B4C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_366D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_36718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_367A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_73390();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for WorkoutCancelCATPatternsExecutor(0);
  sub_368D4();
  v4 = sub_368EC();
  a1[3] = v1;
  a1[4] = &off_99388;
  *a1 = v4;
  type metadata accessor for WorkoutEndCATPatternsExecutor(0);
  sub_368D4();
  v5 = sub_368EC();
  a1[8] = v1;
  a1[9] = &off_9A450;
  a1[5] = v5;
  type metadata accessor for WorkoutPauseCATPatternsExecutor(0);
  sub_368D4();
  v6 = sub_368EC();
  a1[13] = v1;
  a1[14] = &off_9A790;
  a1[10] = v6;
  type metadata accessor for WorkoutResumeCATPatternsExecutor(0);
  sub_368D4();
  v7 = sub_368EC();
  a1[18] = v1;
  a1[19] = &off_9A5E0;
  a1[15] = v7;
  type metadata accessor for WorkoutStartCATPatternsExecutor(0);
  sub_368D4();
  v8 = sub_368EC();
  a1[23] = v1;
  a1[24] = &off_9A518;
  a1[20] = v8;
  type metadata accessor for WorkoutCATPatternsExecutor(0);
  sub_368D4();
  result = sub_368EC();
  a1[28] = v1;
  a1[29] = &off_99A48;
  a1[25] = result;
  return result;
}

uint64_t sub_368D4()
{

  return sub_73380();
}

uint64_t sub_368EC()
{

  return sub_732B0();
}

uint64_t type metadata accessor for HealthCATs(uint64_t a1)
{
  result = qword_A60C0;
  if (!qword_A60C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_369E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_2D9E0(a1);
  return v11;
}

uint64_t sub_36B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v79 = a2;
  v80 = sub_73720();
  sub_5394();
  v78 = v3;
  __chkstk_darwin(v4);
  sub_198CC();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  sub_117D0();
  v73 = v9;
  sub_115DC();
  sub_721F0();
  sub_5394();
  v70 = v11;
  v71 = v10;
  __chkstk_darwin(v10);
  sub_38618();
  v77 = v12;
  sub_115DC();
  v72 = sub_72B80();
  sub_5394();
  v69 = v13;
  __chkstk_darwin(v14);
  sub_38618();
  v75 = v15;
  sub_115DC();
  v76 = sub_72AE0();
  sub_5394();
  v74 = v16;
  __chkstk_darwin(v17);
  sub_198CC();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  sub_117D0();
  v23 = v22;
  v24 = sub_506C(&qword_A6110, &unk_77DB0);
  __chkstk_darwin(v24 - 8);
  v26 = &v65 - v25;
  v27 = sub_729C0();
  sub_5394();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_198CC();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  sub_117D0();
  v36 = v35;
  v37 = sub_38190(v2);
  if (!v37)
  {
LABEL_4:
    v39 = sub_736E0();
    swift_beginAccess();
    v40 = v78;
    v41 = v80;
    (*(v78 + 16))(v7, v39, v80);
    v42 = sub_73710();
    v43 = sub_73980();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "Failed to create protobuf UsoGraph from UsoTask", v44, 2u);
    }

    (*(v40 + 8))(v7, v41);
    return sub_721E0();
  }

  v38 = v37;
  sub_72CE0();
  if (sub_5124(v26, 1, v27) == 1)
  {

    sub_AEF4(v26, &qword_A6110, &unk_77DB0);
    goto LABEL_4;
  }

  v46 = v36;
  (*(v29 + 32))(v36, v26, v27);
  v47 = v23;
  sub_72AD0();
  v67 = v46;
  v68 = v29;
  (*(v29 + 16))(v33, v46, v27);
  sub_72AC0();
  v48 = v75;
  sub_72B70();
  (*(v74 + 16))(v20, v23, v76);
  sub_72B60();
  sub_721E0();
  sub_506C(&qword_A4FC0, &qword_76600);
  v49 = v69;
  v50 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_74B40;
  v52 = v72;
  (*(v49 + 16))(v51 + v50, v48, v72);
  sub_72160();
  v53 = sub_736E0();
  swift_beginAccess();
  v54 = v78;
  v55 = v73;
  v56 = v80;
  (*(v78 + 16))(v73, v53, v80);

  v57 = sub_73710();
  v58 = sub_73970();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v81 = v38;
    v82 = v60;
    v66 = v47;
    v61 = v60;
    *v59 = 136315138;
    sub_72CF0();

    v62 = sub_737A0();
    v64 = sub_19144(v62, v63, &v82);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_0, v57, v58, "Built nlContextUpdate with SystemPrompted for task: %s", v59, 0xCu);
    sub_AE38(v61);

    (*(v54 + 8))(v73, v80);
    (*(v49 + 8))(v75, v72);
    (*(v74 + 8))(v66, v76);
  }

  else
  {

    (*(v54 + 8))(v55, v56);
    (*(v49 + 8))(v75, v52);
    (*(v74 + 8))(v47, v76);
  }

  (*(v68 + 8))(v67, v27);
  return (*(v70 + 32))(v79, v77, v71);
}

uint64_t sub_3727C(uint64_t a1)
{
  sub_37344(a1);
  sub_72170();
  sub_506C(&qword_A4648, &qword_758E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_74F60;
  sub_32DAC(8);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_32DAC(3);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  sub_721C0();
  sub_37AF8(a1);
  return sub_72150();
}

uint64_t sub_37344(uint64_t a1)
{
  sub_721E0();
  sub_32DAC(0);
  sub_72190();
  sub_72180();
  sub_506C(&qword_A4648, &qword_758E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77300;
  sub_38648();
  sub_3862C();
  v3._countAndFlagsBits = sub_737C0();
  sub_73820(v3);

  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_38648();
  sub_3862C();
  v4._countAndFlagsBits = sub_737C0();
  sub_73820(v4);

  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  sub_38648();
  sub_3862C();
  v5._countAndFlagsBits = sub_737C0();
  sub_73820(v5);

  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  return sub_721B0();
}

void sub_37490(unint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_506C(&qword_A4FB8, &qword_765F8);
  __chkstk_darwin(v3 - 8);
  v41 = &v34 - v4;
  sub_115DC();
  v40 = sub_71FA0();
  sub_5394();
  v42 = v5;
  __chkstk_darwin(v6);
  sub_38618();
  v48 = v7;
  sub_115DC();
  v46 = sub_72040();
  sub_5394();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_198CC();
  v39 = (v11 - v12);
  v14 = __chkstk_darwin(v13);
  v47 = &v34 - v15;
  __chkstk_darwin(v14);
  sub_117D0();
  v45 = v16;
  if (!(a1 >> 62))
  {
    v17 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    v49 = _swiftEmptyArrayStorage;
    return;
  }

  v17 = sub_73CD0();
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v17 < 1)
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    v19 = a1 & 0xC000000000000001;
    v35 = (v9 + 8);
    v36 = (v9 + 16);
    v34 = v42 + 32;
    v49 = _swiftEmptyArrayStorage;
    v37 = a1 & 0xC000000000000001;
    v38 = v17;
    v43 = a1;
    do
    {
      if (v19)
      {
        sub_73B70();
      }

      else
      {
      }

      sub_723E0();
      swift_allocObject();

      sub_723D0();
      sub_733B0();
      if (v20)
      {
        sub_723C0();
        if (v21)
        {
          v22 = v45;
          sub_72030();
          v23 = v47;
          sub_72030();
          v24 = *v36;
          v25 = v41;
          v26 = v46;
          (*v36)(v41, v22, v46);
          sub_7CC4(v25, 0, 1, v26);
          v24(v39, v23, v26);
          sub_71F80();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_FDEC();
            v49 = v32;
          }

          v27 = v49[2];
          v19 = v37;
          v17 = v38;
          if (v27 >= v49[3] >> 1)
          {
            sub_FDEC();
            v49 = v33;
          }

          v28 = *v35;
          v29 = v46;
          (*v35)(v47, v46);
          v28(v45, v29);
          v30 = v48;
          v31 = v49;
          v49[2] = v27 + 1;
          (*(v42 + 32))(v31 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v27, v30, v40);
        }

        else
        {
        }
      }

      else
      {
      }

      ++v18;
    }

    while (v17 != v18);
  }
}

uint64_t sub_37918(uint64_t a1)
{
  sub_37344(a1);
  sub_506C(&qword_A4648, &qword_758E8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_74B40;
  sub_32DAC(8);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  return sub_721C0();
}

void sub_379A4()
{
  v0 = [objc_allocWithZone(SAAceConfirmationContext) init];
  v1 = sub_73790();
  sub_385B4(v1, v2, v0);
  sub_37918(v3);
  sub_506C(&unk_A63F0, &unk_760C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_752C0;
  *(v4 + 32) = v0;
  v5 = v0;
  sub_721A0();
  sub_72500();
  swift_allocObject();
  sub_724F0();
  sub_733B0();
  sub_724D0();

  sub_724E0();

  sub_721D0();
}

void *sub_37AF8(uint64_t a1)
{
  v2 = sub_72670();
  v52 = *(v2 - 8);
  v53 = v2;
  __chkstk_darwin(v2);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_506C(&qword_A4FB8, &qword_765F8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v51 - v8;
  v9 = sub_72040();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v66 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v63 = &v51 - v14;
  v15 = __chkstk_darwin(v13);
  v62 = &v51 - v16;
  __chkstk_darwin(v15);
  v61 = &v51 - v17;
  v69 = sub_71FA0();
  v18 = *(v69 - 8);
  v19 = __chkstk_darwin(v69);
  v65 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  v23 = *(a1 + 16);
  v24 = _swiftEmptyArrayStorage;
  v55 = v10;
  v56 = v7;
  if (v23)
  {
    v67 = v9;
    v71 = _swiftEmptyArrayStorage;
    sub_40240(0, v23, 0);
    v24 = v71;
    v59 = (v10 + 8);
    v60 = (v10 + 16);
    v57 = v22;
    v58 = v18 + 32;
    v25 = a1 + 40;
    v70 = v18;
    do
    {
      v68 = v23;
      swift_bridgeObjectRetain_n();
      v26 = v61;
      sub_72030();

      v27 = v62;
      sub_72030();
      v28 = *v60;
      v29 = v64;
      v30 = v67;
      (*v60)(v64, v26, v67);
      sub_7CC4(v29, 0, 1, v30);
      v28(v63, v27, v30);
      v31 = v57;
      sub_71F80();

      v32 = *v59;
      (*v59)(v27, v30);
      v32(v26, v30);
      v71 = v24;
      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        sub_40240(v33 > 1, v34 + 1, 1);
        v24 = v71;
      }

      v24[2] = v34 + 1;
      v18 = v70;
      (*(v70 + 32))(v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v34, v31, v69);
      v25 += 16;
      v23 = v68 - 1;
    }

    while (v68 != (&dword_0 + 1));
    v10 = v55;
    v7 = v56;
    v9 = v67;
  }

  sub_72650();
  v35 = v24[2];
  if (v35)
  {
    v37 = *(v18 + 16);
    v36 = v18 + 16;
    v38 = v24 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v67 = *(v36 + 56);
    v68 = v37;
    v70 = v36;
    v39 = (v36 - 8);
    v40 = (v10 + 32);
    v41 = _swiftEmptyArrayStorage;
    do
    {
      v42 = v65;
      v43 = v69;
      v68(v65, v38, v69);
      sub_71F90();
      (*v39)(v42, v43);
      if (sub_5124(v7, 1, v9) == 1)
      {
        sub_AEF4(v7, &qword_A4FB8, &qword_765F8);
      }

      else
      {
        v44 = *v40;
        (*v40)(v66, v7, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_FED0();
          v41 = v46;
        }

        v45 = *(v41 + 2);
        if (v45 >= *(v41 + 3) >> 1)
        {
          sub_FED0();
          v41 = v47;
        }

        *(v41 + 2) = v45 + 1;
        v44(&v41[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v45], v66, v9);
        v7 = v56;
      }

      v38 += v67;
      --v35;
    }

    while (v35);
  }

  v48 = v54;
  v49 = sub_72660();

  (*(v52 + 8))(v48, v53);
  v71 = v24;
  sub_3844C(v49);
  return v71;
}

uint64_t sub_38190(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_506C(&qword_A4A38, &qword_75D68);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_506C(&qword_A4A28, &unk_7A800);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_506C(&qword_A6118, &unk_7A7F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  switch(v1)
  {
    case 0:
      sub_731B0();
      v11 = sub_72FC0();
      sub_7CC4(v10, 1, 1, v11);
      v12 = sub_730B0();
      sub_7CC4(v7, 1, 1, v12);
      v13 = sub_72FF0();
      sub_7CC4(v4, 1, 1, v13);
      v14 = sub_73180();
      sub_AEF4(v4, &qword_A4A38, &qword_75D68);
      sub_AEF4(v7, &qword_A4A28, &unk_7A800);
      sub_AEF4(v10, &qword_A6118, &unk_7A7F0);
      return v14;
    case 1:
      sub_731B0();
      v15 = sub_73170();
      goto LABEL_7;
    case 2:
      sub_731B0();
      v15 = sub_73160();
      goto LABEL_7;
    case 3:
      sub_731B0();
      v15 = sub_731A0();
      goto LABEL_7;
    case 4:
      sub_731B0();
      v15 = sub_73190();
LABEL_7:
      v14 = v15;
      break;
    default:
      v14 = 0;
      break;
  }

  return v14;
}

uint64_t sub_3844C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_3854C(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_71FA0();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_3854C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_FDEC();
    *v1 = v5;
  }
}

void sub_385B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();

  [a3 setReason:v4];
}

void sub_3862C()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xE700000000000000;

  sub_73820(v2);
}

uint64_t sub_38648()
{

  return sub_32DAC(8);
}

void sub_38664(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = sub_38930(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *sub_734D0();
    v7 = sub_73970();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_74B40;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_73790();
    v13 = v12;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_5258();
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    sub_73610("Created INEndWorkoutIntent: %@", 30, 2, &dword_0, v6, v7, v8);

    v24 = v9;
    a3(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v14 = sub_B5BC(0);
    v15 = sub_73980();
    v16 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_74B40;
    v18 = v16;
    v19 = sub_B4FC();
    v21 = v20;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_5258();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_73620(v15, &dword_0, v18, "EndWorkout- RCHFlow Strategy: %@", 32, 2, v17);

    sub_39300(&qword_A3BB8, 255, type metadata accessor for HealthFlowError, &unk_7567C);
    v22 = swift_allocError();
    *v23 = v14;

    a3(v22, 1);
  }
}

id sub_38930(uint64_t a1)
{
  v41 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = __chkstk_darwin(v1 - 8);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v39 = &v38 - v4;
  v5 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_731D0();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_72830();
  sub_5394();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = *(v16 + 16);
  v23(&v38 - v21, v41, v14);
  v24 = sub_5388();
  v26 = v25(v24);
  if (v26 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v27 = sub_5388();
    v28(v27);
    (*(v10 + 32))(v13, v22, v8);
    (*(v10 + 16))(v7, v13, v8);
    sub_392BC();
    v29 = sub_5CD98(v7);
    sub_51F8(v7, type metadata accessor for HealthNLIntent);
    (*(v10 + 8))(v13, v8);
  }

  else if (v26 == enum case for Parse.directInvocation(_:))
  {
    v23(v20, v41, v14);
    v30 = v39;
    sub_6AFB0(v20, v39);
    v31 = v40;
    sub_50B4(v30, v40);
    v32 = type metadata accessor for DirectInvocationData(0);
    if (sub_5124(v31, 1, v32) == 1)
    {
      sub_514C(v30);
      sub_514C(v31);
      v29 = 0;
    }

    else
    {
      sub_6B824(v43);
      sub_514C(v30);
      sub_51F8(v31, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_392BC();
      if (swift_dynamicCast())
      {
        v29 = v42;
      }

      else
      {
        v29 = 0;
      }
    }

    v35 = sub_5388();
    v36(v35);
  }

  else
  {
    v33 = sub_5388();
    v34(v33);
    return 0;
  }

  return v29;
}

uint64_t sub_38D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_38E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_38F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_39004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EndWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_39050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for EndWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_390B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for EndWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_39120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for EndWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

unint64_t sub_392BC()
{
  result = qword_A4418;
  if (!qword_A4418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4418);
  }

  return result;
}

uint64_t sub_39300(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_39348(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v49 = a8;
  v50 = a7;
  v48 = a1;
  sub_72270();
  sub_5394();
  v46 = v11;
  v47 = v10;
  __chkstk_darwin(v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_73390();
  sub_5394();
  __chkstk_darwin(v14);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_506C(&unk_A6CD0, &unk_75B80);
  v18 = __chkstk_darwin(v17);
  v20 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v44[-v21];

  v23 = sub_453DC(a3, a4);
  if (v23 == 5)
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v25 = sub_B5BC(2);
    v26 = sub_73980();
    v27 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_74B40;
    v29 = v27;
    v30 = sub_B4FC();
    v32 = v31;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_5258();
    *(v28 + 32) = v30;
    *(v28 + 40) = v32;
    sub_73620(v26, &dword_0, v29, "StartWorkout- Unsupported Value Strategy: %@", 44, 2, v28);

    sub_14CF8(&qword_A3BB8, type metadata accessor for HealthFlowError, &unk_7567C);
    v33 = swift_allocError();
    *v34 = v25;
    v51[0] = v33;
    v52 = 1;

    v50(v51);

    v35 = &qword_A4810;
    v36 = &unk_760A0;
    v37 = v51;
  }

  else
  {
    v24 = v23;
    if (v23 == 4)
    {
      v45 = sub_739E0();
    }

    else
    {
      v45 = 0;
    }

    sub_73280();
    v38 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_74B40;
    sub_73380();
    v51[0] = v39;
    sub_14CF8(&unk_A6CE0, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    type metadata accessor for HealthCATWrapper(0);
    swift_allocObject();
    sub_4F648(v38, v16);
    sub_4FA6C(v48, v24, v45 & 1);

    sub_14DA4(v22, v20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v51[0] = *v20;
    }

    else
    {
      v42 = v46;
      v41 = v47;
      (*(v46 + 32))(v13, v20, v47);
      sub_39864(v51);
      (*(v42 + 8))(v13, v41);
    }

    v52 = EnumCaseMultiPayload == 1;
    v50(v51);
    sub_AEF4(v51, &qword_A4810, &unk_760A0);
    v35 = &unk_A6CD0;
    v36 = &unk_75B80;
    v37 = v22;
  }

  return sub_AEF4(v37, v35, v36);
}

uint64_t sub_39864@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a2[3] = v7;
  a2[4] = &protocol witness table for AceOutput;
  sub_5BAC(a2);
  sub_720E0();
  sub_AEF4(v9, &unk_A6D20, &qword_76D80);
  sub_AEF4(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_39A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutUnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_39AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutUnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t type metadata accessor for HealthWorkoutCancelCATs(uint64_t a1)
{
  result = qword_A62A0;
  if (!qword_A62A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_39C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_74F60;
  *(v10 + 32) = 1953459315;
  *(v10 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v9, &qword_A3F98, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v9, 1, v11) == 1)
  {
    sub_5B50(v9, &qword_A3F98, qword_75450);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_5BAC((v10 + 48));
    sub_5C0C();
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x4E74756F6B726F77;
  *(v10 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v7, &qword_A3F98, qword_75450);
  if (sub_5124(v7, 1, v11) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    sub_5BAC((v10 + 96));
    sub_5C0C();
    (*(v13 + 32))();
  }

  sub_732A0();
}

uint64_t sub_39EE0(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_74B40;
  *(v5 + 32) = 0x656D614E707061;
  *(v5 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v4, &qword_A3F98, qword_75450);
  v6 = sub_73350();
  if (sub_5124(v4, 1, v6) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    (*(v7 + 32))();
  }

  sub_732A0();
}

uint64_t sub_3A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v13 - v10, &qword_A3F90, &unk_74FC0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_3A264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_3A2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v9 = sub_72270();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_506C(&unk_A6CD0, &unk_75B80);
  v11 = __chkstk_darwin(v33);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;

  v19 = sub_72250();
  if (v19 && (v20 = v19, v21 = [v19 displayAppName], v20, v21))
  {
    sub_73790();
    v30 = v9;

    sub_737F0();
    v9 = v30;

    v22 = sub_73350();
    v23 = 0;
  }

  else
  {

    v22 = sub_73350();
    v23 = 1;
  }

  sub_7CC4(v18, v23, 1, v22);
  v24 = v7[3];
  v25 = v7[4];
  sub_7C78(v7, v24);
  (*(v25 + 24))(v18, v24, v25);
  sub_14DA4(v15, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v34[0] = *v13;
  }

  else
  {
    v28 = v31;
    v27 = v32;
    (*(v32 + 32))(v31, v13, v9);
    sub_3A614(v34);
    (*(v27 + 8))(v28, v9);
  }

  v35 = EnumCaseMultiPayload == 1;
  a7(v34);
  sub_AEF4(v34, &qword_A4810, &unk_760A0);
  sub_AEF4(v15, &unk_A6CD0, &unk_75B80);
  return sub_AEF4(v18, &qword_A3F98, qword_75450);
}

uint64_t sub_3A614@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a2[3] = v7;
  a2[4] = &protocol witness table for AceOutput;
  sub_5BAC(a2);
  sub_720E0();
  sub_AEF4(v9, &unk_A6D20, &qword_76D80);
  sub_AEF4(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_3A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_3A7F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3A84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_3A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  return sub_273C0();
}

uint64_t sub_3A8CC()
{
  sub_33058(v0[2], v0[3], v0[3], v0[4]);
  sub_273DC();

  return v1();
}

uint64_t sub_3A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_273C0();
}

uint64_t sub_3A964()
{
  sub_7F1C();
  v1 = *(v0 + 32);
  if (v1)
  {
    sub_71DF0();
    v2 = v1;
    v3 = sub_71DD0();
  }

  else
  {
    v3 = sub_45750(*(v0 + 16), *(v0 + 24));
  }

  sub_273DC();

  return v4(v3);
}

uint64_t sub_3A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  *v6 = v3;
  v6[1] = sub_3AA94;

  return sub_3A8B4(a1, v7, v8, v10, v9, v11);
}

uint64_t sub_3AA94()
{
  sub_7F1C();
  v3 = v2;
  v4 = *v1;
  sub_B044();
  *v5 = v4;

  sub_273DC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_3AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_16228;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t sub_3AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_16228;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_3AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_16228;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_3ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_16228;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_3AEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_15F8C;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_3AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_16228;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_3B068(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_3B114;

  return sub_3A94C(a1, a2, v6);
}

uint64_t sub_3B114()
{
  sub_7F1C();
  v2 = v1;
  v3 = *v0;
  sub_B044();
  *v4 = v3;

  sub_273DC();

  return v5(v2);
}

id sub_3B254(uint64_t a1, uint64_t a2)
{
  v4 = sub_71550();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(SAStartRequest) init];
  v9 = sub_73790();
  sub_3B854(v9, v10, v8, &selRef_setOrigin_);
  sub_3B77C(a1, a2, v8);
  v11 = [objc_allocWithZone(SASendCommands) init];
  sub_506C(&unk_A63F0, &unk_760C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_752C0;
  *(v12 + 32) = v8;
  v13 = v8;
  sub_3B7D4(v12, v11);
  v14 = v11;
  sub_71540();
  v15 = sub_71520();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  sub_3B854(v15, v17, v14, &selRef_setAceId_);

  return v14;
}

uint64_t sub_3B410(uint64_t a1)
{
  sub_72500();
  swift_allocObject();
  sub_724F0();
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      v9 = sub_724E0();

      return v9;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        sub_724D0();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

id sub_3B574(void *a1, void *a2, void *a3)
{
  v7 = [objc_allocWithZone(SAUIConfirmationView) init];
  v8 = sub_3B8C0(a1);
  if (v9)
  {
    sub_73780();
    v8 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v8, "setConfirmText:");

  v10 = sub_3B924(a1);
  if (v10)
  {
    sub_506C(&unk_A6D10, &unk_79340);
    sub_73860();
    v10 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v10, "setConfirmCommands:");

  v11 = sub_3B8C0(a2);
  if (v12)
  {
    sub_73780();
    v11 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v11, "setDenyText:");

  v13 = sub_3B924(a2);
  if (v13)
  {
    sub_506C(&unk_A6D10, &unk_79340);
    sub_73860();
    v13 = sub_3BA60();
  }

  else
  {
    v3 = 0;
  }

  sub_3BA48(v13, "setDenyCommands:");

  sub_506C(&unk_A63F0, &unk_760C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_78310;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v22 = v14;
  if (a3)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    sub_73850();
    if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v22 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_73890();
    }

    sub_738C0();
    v18 = v22;
  }

  else
  {
    v18 = v14;
    v19 = a1;
    v20 = a2;
  }

  sub_3B990(v18, v7);
  return v7;
}

void sub_3B77C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setUtterance:v4];
}

void sub_3B7D4(uint64_t a1, void *a2)
{
  sub_506C(&qword_A6408, &unk_78330);
  isa = sub_73860().super.isa;

  [a2 setCommands:isa];
}

void sub_3B854(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_73780();

  [a3 *a4];
}

uint64_t sub_3B8C0(void *a1)
{
  v1 = [a1 label];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_73790();

  return v3;
}

uint64_t sub_3B924(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_506C(&unk_A6D10, &unk_79340);
  v3 = sub_73870();

  return v3;
}

void sub_3B990(uint64_t a1, void *a2)
{
  sub_3BA04();
  isa = sub_73860().super.isa;

  [a2 setAllConfirmationOptions:isa];
}

unint64_t sub_3BA04()
{
  result = qword_A6400;
  if (!qword_A6400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A6400);
  }

  return result;
}

id sub_3BA48(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_3BA60()
{
}

_BYTE *storeEnumTagSinglePayload for GenericWorkoutIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x3BB44);
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

unint64_t sub_3BB7C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_3BBA4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3BB7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_3BBD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3BB8C(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_3BC00()
{
  result = qword_A6410;
  if (!qword_A6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6410);
  }

  return result;
}

uint64_t sub_3BC54(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 0:
      return v1;
    case 1:
      v1 = 1751346793;
      break;
    case 2:
      v1 = 0x726574656DLL;
      break;
    case 3:
      v1 = 1953460070;
      break;
    case 4:
      v1 = 1701603693;
      break;
    case 5:
      v1 = 1685217657;
      break;
    case 6:
      v1 = 0x646E6F636573;
      break;
    case 7:
      v1 = 0x6574756E696DLL;
      break;
    case 8:
      v1 = 1920298856;
      break;
    case 9:
      v1 = 0x656C756F6ALL;
      break;
    case 10:
      v1 = 0x6C6163206F6C696BLL;
      break;
    default:
      v2 = sub_73980();
      v3 = *sub_734D0();
      sub_506C(&qword_A3BA8, &unk_76BA0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_74B40;
      type metadata accessor for INWorkoutGoalUnitType(0);
      v5 = v3;
      sub_73C40();
      *(v4 + 56) = &type metadata for String;
      *(v4 + 64) = sub_5258();
      *(v4 + 32) = 0;
      *(v4 + 40) = 0xE000000000000000;
      sub_73620(v2, &dword_0, v5, "Unhandled INWorkoutGoalUnitType (%@), falling back to 'unknown'", 63, 2, v4);

      break;
  }

  return v1;
}

unint64_t sub_3BE90()
{
  v0 = sub_73720();
  sub_5394();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_C2A4();
  v6 = v5 - v4;
  sub_72840();
  sub_7C78(v13, v13[3]);
  v7 = sub_71F00();
  sub_AE38(v13);
  if (v7)
  {
    return 0x8000000000000002;
  }

  v9 = sub_736F0();
  sub_7EEC(v9, v13);
  (*(v2 + 16))(v6, v9, v0);
  v10 = sub_73710();
  v11 = sub_73970();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_22324();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "No Mindfulness override on this platform", v12, 2u);
    sub_7EBC(v12);
  }

  (*(v2 + 8))(v6, v0);
  return 0x8000000000000001;
}

uint64_t sub_3C018(uint64_t a1, uint64_t a2)
{
  v3 = sub_73720();
  sub_5394();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_C2A4();
  v9 = v8 - v7;
  if (sub_3BE90() == 0x8000000000000002)
  {
    v10 = sub_736F0();
    sub_7EEC(v10, v15);
    (*(v5 + 16))(v9, v10, v3);
    v11 = sub_73710();
    v12 = sub_73970();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_22324();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "This is an unsupported device.", v13, 2u);
      sub_7EBC(v13);
    }

    (*(v5 + 8))(v9, v3);
    a2 = sub_2AF64();
    sub_3E320(0x8000000000000002);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_3C190()
{
  v0 = swift_allocObject();
  sub_3C1C8();
  return v0;
}

uint64_t sub_3C1C8()
{
  v1 = sub_73720();
  sub_5394();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_C2A4();
  v7 = v6 - v5;
  v8 = sub_736F0();
  sub_7EEC(v8, v10);
  (*(v3 + 16))(v7, v8, v1);
  sub_73660();
  return v0;
}

void sub_3C2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11784();
  a19 = v20;
  a20 = v21;
  v22 = sub_73650();
  sub_5394();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_198CC();
  v28 = v26 - v27;
  __chkstk_darwin(v29);
  v31 = &a9 - v30;
  sub_73670();
  sub_73630();
  v32 = sub_73670();
  v33 = sub_739C0();
  if (sub_73A60())
  {
    v34 = sub_22324();
    *v34 = 0;
    v35 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v32, v33, v35, "pluginWarmUp", "", v34, 2u);
    sub_7EBC(v34);
  }

  (*(v24 + 16))(v28, v31, v22);
  sub_736C0();
  swift_allocObject();
  sub_736B0();
  sub_3D2E0();

  (*(v24 + 8))(v31, v22);
  sub_11754();
}

void sub_3C460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11784();
  a19 = v22;
  a20 = v23;
  v186 = v24;
  v25 = sub_506C(&qword_A3B90, &qword_76E00);
  v26 = sub_B1C0(v25);
  __chkstk_darwin(v26);
  v28 = sub_3E430(&v161 - v27);
  v162 = type metadata accessor for DirectInvocationData(v28);
  sub_1168C();
  __chkstk_darwin(v29);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v30);
  sub_3E430(&v161 - v31);
  v177 = sub_72820();
  sub_5394();
  v176 = v32;
  __chkstk_darwin(v33);
  sub_C2A4();
  v36 = sub_3E430(v35 - v34);
  v37 = type metadata accessor for FlowRouterX(v36);
  v38 = sub_B1C0(v37);
  __chkstk_darwin(v38);
  sub_C2A4();
  v41 = sub_3E430(v40 - v39);
  v42 = type metadata accessor for HealthNLIntent(v41);
  v43 = sub_B1C0(v42);
  __chkstk_darwin(v43);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v44);
  v180 = &v161 - v45;
  v181 = sub_731D0();
  sub_5394();
  v179 = v46;
  __chkstk_darwin(v47);
  sub_C2A4();
  sub_3E430(v49 - v48);
  sub_72830();
  sub_5394();
  v190 = v51;
  *&v191 = v50;
  __chkstk_darwin(v50);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v52);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v53);
  v55 = &v161 - v54;
  v187 = sub_73720();
  sub_5394();
  v189 = v56;
  __chkstk_darwin(v57);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v58);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v59);
  sub_3E4F0();
  v60 = sub_73650();
  sub_5394();
  v62 = v61;
  __chkstk_darwin(v63);
  sub_198CC();
  __chkstk_darwin(v64);
  v66 = &v161 - v65;
  v67 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin24HealthFlowDelegatePlugin_signposter;
  sub_73670();
  sub_73630();
  v185 = v20;
  v174 = v67;
  v68 = sub_73670();
  v69 = sub_739C0();
  v70 = sub_73A60();
  v188 = v66;
  if (v70)
  {
    v71 = sub_22324();
    *v71 = 0;
    v72 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v68, v69, v72, "makeFlow", "", v71, 2u);
    sub_7EBC(v71);
  }

  v183 = v62;
  v184 = v60;
  sub_3E518();
  v73();
  sub_736C0();
  swift_allocObject();
  v182 = sub_736B0();
  v74 = sub_736E0();
  sub_7EEC(v74, &v194);
  v75 = *(v189 + 16);
  v76 = v187;
  v168 = v189 + 16;
  v167 = v75;
  v75(v21, v74, v187);
  v78 = v190;
  v77 = v191;
  v79 = v21;
  v80 = *(v190 + 16);
  v81 = v186;
  sub_3E518();
  v80();
  v82 = sub_73710();
  v83 = sub_73970();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v193[0] = v85;
    *v84 = 136315138;
    (v80)(v173, v55, v77);
    v86 = sub_737A0();
    v88 = v87;
    v166 = *(v190 + 8);
    v166(v55, v191);
    v89 = v86;
    v81 = v186;
    v90 = sub_19144(v89, v88, v193);
    v77 = v191;

    *(v84 + 4) = v90;
    _os_log_impl(&dword_0, v82, v83, "Workout plugin activate with %s", v84, 0xCu);
    sub_AE38(v85);
    sub_7EBC(v85);
    v91 = v84;
    v78 = v190;
    sub_7EBC(v91);

    v92 = *(v189 + 8);
    v92(v79, v187);
  }

  else
  {

    v166 = *(v78 + 8);
    v166(v55, v77);
    v92 = *(v189 + 8);
    v92(v79, v76);
  }

  v93 = v177;
  v94 = v175;
  sub_3E518();
  v80();
  v95 = (*(v78 + 88))(v94, v77);
  v96 = v176;
  if (v95 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v78 + 96))(v94, v77);
    v97 = v179;
    v98 = v178;
    v99 = v94;
    v100 = v181;
    (*(v179 + 32))(v178, v99, v181);
    LODWORD(v190) = sub_73970();
    v101 = sub_734D0();
    v102 = *v101;
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v103 = swift_allocObject();
    v191 = xmmword_74B40;
    *(v103 + 16) = xmmword_74B40;
    sub_3E338(&qword_A4D08, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
    v104 = v102;
    v105 = sub_73DA0();
    v107 = v106;
    *(v103 + 56) = &type metadata for String;
    v108 = sub_5258();
    *(v103 + 64) = v108;
    *(v103 + 32) = v105;
    *(v103 + 40) = v107;
    sub_73620(v190, &dword_0, v104, "Parse had NL intent: %@", 23, 2, v103);

    (*(v97 + 16))(v180, v98, v100);
    v109 = sub_73970();
    v110 = *v101;
    v111 = swift_allocObject();
    *(v111 + 16) = v191;
    v112 = v110;
    v113 = sub_5A9F8();
    *(v111 + 56) = &type metadata for String;
    *(v111 + 64) = v108;
    *(v111 + 32) = v113;
    *(v111 + 40) = v114;
    sub_73620(v109, &dword_0, v112, "Converting NL Intent -> %@", 26, 2, v111);

    v115 = sub_73670();
    v116 = sub_739D0();
    v117 = sub_73A60();
    v118 = v188;
    if (v117)
    {
      v119 = sub_22324();
      *v119 = 0;
      v120 = sub_73640();
      _os_signpost_emit_with_name_impl(&dword_0, v115, v116, v120, "nlv3IntentConverted", "", v119, 2u);
      sub_7EBC(v119);
    }

    type metadata accessor for FlowRouter(0);
    v121 = v180;
    v122 = v172;
    sub_3E268(v180, v172, type metadata accessor for HealthNLIntent);
    sub_2A9E8(v122);
    sub_2AC00();
    v124 = v123;

    sub_3C018(v125, v124);

    sub_3E2C8(v121, type metadata accessor for HealthNLIntent);
    (*(v179 + 8))(v178, v181);
    goto LABEL_22;
  }

  if (v95 == enum case for Parse.directInvocation(_:))
  {
    *&v191 = v92;
    (*(v78 + 96))(v94, v77);
    v126 = v171;
    (*(v96 + 32))();
    sub_3D4F0(v126, v127, v128, v129, v130, v131, v132, v133, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
    v118 = v188;
    if (v134)
    {
      goto LABEL_21;
    }

    v149 = v173;
    sub_3E518();
    v80();
    v150 = v164;
    sub_6AFB0(v149, v164);
    if (sub_5124(v150, 1, v162) != 1)
    {
      v151 = v165;
      sub_3E204(v150, v165);
      type metadata accessor for FlowRouter(0);
      v152 = v163;
      sub_3E268(v151, v163, type metadata accessor for DirectInvocationData);
      sub_2AAF0(v152);
      sub_2AC00();

      sub_3E2C8(v151, type metadata accessor for DirectInvocationData);
LABEL_21:
      (*(v96 + 8))(v126, v93);
LABEL_22:
      sub_3D2E0();

      (*(v183 + 8))(v118, v184);
      sub_11754();
      return;
    }

    sub_10364(v150, &qword_A3B90, &qword_76E00);
    v153 = sub_736F0();
    sub_7EEC(v153, v193);
    v154 = sub_3E458(&v192);
    v155(v154);
    v156 = sub_73710();
    v157 = sub_73980();
    if (sub_3E4BC(v157))
    {
      v158 = sub_22324();
      sub_3E4D8(v158);
      sub_3E49C(&dword_0, v159, v160, "Workout plugin had no flows that can handle the invocation");
      sub_7EBC(v77);
    }

    (v191)(v161, v187);
  }

  else
  {
    v118 = v188;
    if (v95 == enum case for Parse.uso(_:))
    {
      v135 = v92;
      v136 = sub_736F0();
      sub_7EEC(v136, v193);
      v137 = sub_3E458(&a9);
      v138(v137);
      v139 = sub_73710();
      v140 = sub_73970();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = sub_22324();
        sub_3E4D8(v141);
        _os_log_impl(&dword_0, v139, v140, "Workout domain received NLv4", v77, 2u);
        sub_7EBC(v77);
      }

      v135(v79, v187);
      v142 = v170;
      sub_518DC(v170);
      v143 = sub_51A5C(v81);
      sub_3E2C8(v142, type metadata accessor for FlowRouterX);
      v144 = sub_73670();
      v145 = sub_739D0();
      if (sub_73A60())
      {
        v146 = sub_22324();
        *v146 = 0;
        v147 = sub_73640();
        _os_signpost_emit_with_name_impl(&dword_0, v144, v145, v147, "nlv4FlowBuilt", "", v146, 2u);
        sub_7EBC(v146);
      }

      sub_3C018(v148, v143);

      v166(v94, v191);
      goto LABEL_22;
    }
  }

  sub_73CC0();
  __break(1u);
}

void sub_3D2E0()
{
  sub_11784();
  v20 = v0;
  v1 = sub_73690();
  sub_5394();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_C2A4();
  v7 = v6 - v5;
  v8 = sub_73650();
  sub_5394();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_C2A4();
  v14 = v13 - v12;
  v15 = sub_73670();
  sub_736A0();
  v16 = sub_739B0();
  if (sub_73A60())
  {

    sub_736D0();

    if ((*(v3 + 88))(v7, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v17 = "";
    }

    v18 = sub_22324();
    *v18 = 0;
    v19 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v15, v16, v19, v20, v17, v18, 2u);
    sub_7EBC(v18);
  }

  (*(v10 + 8))(v14, v8);
  sub_11754();
}

void sub_3D4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11784();
  v22 = v21;
  v122[3] = sub_73560();
  sub_5394();
  v122[2] = v23;
  __chkstk_darwin(v24);
  sub_C2A4();
  sub_3E430(v26 - v25);
  v127 = sub_734F0();
  sub_5394();
  v126 = v27;
  __chkstk_darwin(v28);
  sub_C2A4();
  v125 = v30 - v29;
  v31 = sub_506C(&qword_A64E0, qword_784B0);
  v32 = sub_B1C0(v31);
  __chkstk_darwin(v32);
  sub_3E430(v122 - v33);
  v34 = sub_73530();
  sub_5394();
  v124 = v35;
  __chkstk_darwin(v36);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v37);
  sub_3E430(v122 - v38);
  v39 = sub_72820();
  sub_5394();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_198CC();
  v45 = v43 - v44;
  __chkstk_darwin(v46);
  sub_3E4F0();
  v47 = sub_73720();
  sub_5394();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_11544();
  sub_3E420();
  __chkstk_darwin(v51);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v52);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v53);
  v55 = v122 - v54;
  v56 = sub_736F0();
  sub_7EEC(v56, &v146);
  v137 = v56;
  v138 = v49;
  v57 = *(v49 + 16);
  v58 = v56;
  v59 = v39;
  v140 = v47;
  v136 = v49 + 16;
  v135 = v57;
  v57(v55, v58, v47);
  v60 = *(v41 + 16);
  v139 = v22;
  v60(v20, v22, v39);
  v61 = sub_73710();
  v62 = sub_73970();
  v63 = os_log_type_enabled(v61, v62);
  v133 = v34;
  v130 = v45;
  v129 = v41 + 16;
  v128 = v60;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v144[0] = v65;
    *v64 = 136315138;
    v60(v45, v20, v59);
    v66 = sub_737A0();
    v67 = v59;
    v68 = v66;
    v70 = v69;
    v71 = v20;
    v72 = v67;
    (*(v41 + 8))(v71, v67);
    v59 = sub_19144(v68, v70, v144);
    v73 = v140;

    *(v64 + 4) = v59;
    _os_log_impl(&dword_0, v61, v62, "Parse had DirectInvocation: %s", v64, 0xCu);
    sub_AE38(v65);
    sub_7EBC(v65);
    sub_7EBC(v64);

    v74 = sub_3E524();
    v75 = v73;
  }

  else
  {

    v76 = *(v41 + 8);
    v73 = v41 + 8;
    v77 = v20;
    v72 = v59;
    v76(v77, v59);
    v74 = sub_3E524();
    v75 = v140;
  }

  v59(v74, v75);
  v78 = v139;
  v79 = sub_72800();
  v81 = v80;
  if (v79 == sub_73540() && v81 == v82)
  {

    goto LABEL_17;
  }

  v84 = sub_73DB0();

  if (v84)
  {
LABEL_17:
    sub_3E47C(v85, &v145);
    v95 = v134;
    sub_3E440();
    v96();
    v97 = sub_73710();
    v98 = sub_73970();
    if (sub_3E4BC(v98))
    {
      v99 = sub_22324();
      *v99 = 0;
      _os_log_impl(&dword_0, v97, v95, "WorkoutReminderAnnouncementFlow can handle the direct invocation", v99, 2u);
      sub_7EBC(v99);
    }

    v59(v95, v140);
    sub_3E0BC(v144);
    v100 = sub_735E0();
    v101 = sub_735C0();
    v142 = v100;
    v143 = &protocol witness table for DeviceResolutionService;
    v141 = v101;
    sub_73510();
    swift_allocObject();
    v144[0] = sub_73500();
    sub_3E338(&qword_A64F8, &type metadata accessor for WorkoutReminderAnnouncementFlow, &protocol conformance descriptor for WorkoutReminderAnnouncementFlow);
    sub_71CF0();

    goto LABEL_20;
  }

  v128(v130, v78, v72);
  v86 = v132;
  sub_73520();
  v87 = v133;
  if (sub_5124(v86, 1, v133) == 1)
  {
    sub_10364(v86, &qword_A64E0, qword_784B0);
    v88 = sub_72800();
    v90 = v89;
    if (v88 == sub_73790() && v90 == v91)
    {
    }

    else
    {
      v93 = sub_73DB0();

      if ((v93 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_3E47C(v94, v144);
    v113 = v122[0];
    sub_3E440();
    v114();
    v115 = sub_73710();
    v116 = sub_73970();
    if (sub_3E4BC(v116))
    {
      v117 = sub_22324();
      sub_3E4D8(v117);
      sub_3E49C(&dword_0, v118, v119, "VoiceFeedbackAnnouncementFlow can handle the direct invocation");
      sub_7EBC(v73);
    }

    v59(v113, v140);
    sub_72810();
    sub_73550();
    sub_3E338(&qword_A64E8, &type metadata accessor for VoiceFeedbackAnnouncementFlow, &protocol conformance descriptor for VoiceFeedbackAnnouncementFlow);
    sub_71CF0();
    v120 = sub_3E504();
    v121(v120);
  }

  else
  {
    v102 = v124;
    v103 = v123;
    v104 = (*(v124 + 32))(v123, v86, v87);
    sub_3E47C(v104, v144);
    sub_3E440();
    v105();
    v106 = sub_73710();
    v107 = sub_73970();
    if (sub_3E4BC(v107))
    {
      v108 = sub_22324();
      sub_3E4D8(v108);
      sub_3E49C(&dword_0, v109, v110, "WorkoutReminderControlsFlow can handle the direct invocation");
      sub_7EBC(v73);
    }

    v59(v131, v140);
    (*(v102 + 16))(v122[4], v103, v87);
    sub_734E0();
    sub_3E338(&qword_A64F0, &type metadata accessor for WorkoutReminderControlsFlow, &protocol conformance descriptor for WorkoutReminderControlsFlow);
    sub_71CF0();
    v111 = sub_3E504();
    v112(v111);
    (*(v102 + 8))(v103, v87);
  }

LABEL_20:
  sub_11754();
}

uint64_t sub_3DEC8()
{
  v1 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin24HealthFlowDelegatePlugin_signposter;
  sub_73680();
  sub_1168C();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for HealthFlowDelegatePlugin(uint64_t a1)
{
  result = qword_A6448;
  if (!qword_A6448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3DFB0(uint64_t a1)
{
  result = sub_73680();
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

uint64_t sub_3E040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3C190();
  *a1 = result;
  return result;
}

uint64_t sub_3E0BC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  *a1 = swift_allocObject();
  return sub_73490();
}

uint64_t sub_3E170@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_3E204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3E268(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1168C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_3E2C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1168C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_3E320(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_3E338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3E380()
{
  if (v0[5])
  {
    sub_AE38(v0 + 2);
  }

  if (v0[10])
  {
    sub_AE38(v0 + 7);
  }

  if (v0[15])
  {
    sub_AE38(v0 + 12);
  }

  if (v0[20])
  {
    sub_AE38(v0 + 17);
  }

  if (v0[25])
  {
    sub_AE38(v0 + 22);
  }

  if (v0[30])
  {
    sub_AE38(v0 + 27);
  }

  if (v0[35])
  {
    sub_AE38(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_3E47C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_3E49C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_3E4BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_3E538(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_73BE0();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_14E68(v3, v5);
    sub_ADF8(0, &qword_A4058, INSpeakableString_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_73BB0();
    sub_73BF0();
    sub_73C00();
    sub_73BC0();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_3E644(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_3E684(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, int a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v10 = [a6 disambiguationItems];
  v11 = sub_73870();

  v12 = sub_3E538(v11);

  if (v12)
  {
    sub_506C(&qword_A4CF8, &qword_75FF0);
    swift_allocObject();
    v24 = sub_727A0();
    v25 = 0;
    a8(&v24);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v13 = sub_B5BC(6);
    v14 = sub_73980();
    v15 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_74B40;
    v17 = v15;
    v18 = sub_B4FC();
    v20 = v19;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_5258();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    sub_73620(v14, &dword_0, v17, "StartWorkout- Disambiguation Strategy: %@", 41, 2, v16);

    sub_401F0(&qword_A3BB8, 255, type metadata accessor for HealthFlowError, &unk_7567C);
    v21 = swift_allocError();
    *v22 = v13;
    v24 = v21;
    v25 = 1;

    a8(&v24);
  }
}

void sub_3E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v106 = a8;
  v99 = a10;
  v100 = a9;
  sub_506C(&qword_A4E20, &qword_763D0);
  sub_5394();
  v97 = v11;
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = v94 - v12;
  v13 = sub_506C(&qword_A65C0, &qword_78608);
  __chkstk_darwin(v13);
  v15 = (v94 - v14);
  v16 = type metadata accessor for HealthNLIntent(0);
  __chkstk_darwin(v16 - 8);
  sub_C2A4();
  v19 = v18 - v17;
  v20 = sub_72830();
  sub_5394();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_C2A4();
  v26 = v25 - v24;
  v27 = sub_731D0();
  sub_5394();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_C2A4();
  v33 = v32 - v31;
  sub_727E0();
  if ((*(v22 + 88))(v26, v20) == enum case for Parse.NLv3IntentOnly(_:))
  {
    v94[1] = v13;
    v95 = v15;
    (*(v22 + 96))(v26, v20);
    (*(v29 + 32))(v33, v26, v27);
    v34 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
    (*(v29 + 16))(v19, v33, v27);
    v94[0] = v34;
    v105 = sub_5C4C8(v19);
    sub_BFD8(v19);
    sub_506C(&qword_A4D00, &unk_760B0);
    v35 = sub_72440();
    v36 = sub_114FC(v35);
    v37 = 0;
    v103 = v35 & 0xC000000000000001;
    v104 = v36;
    v106 = v35;
    v101 = v29;
    v102 = v35 & 0xFFFFFFFFFFFFFF8;
    v38 = &unk_A2000;
    v39 = v29;
    while (1)
    {
      if (v104 == v37)
      {

        type metadata accessor for HealthFlowError();
        swift_allocObject();
        v71 = sub_B5BC(5);
        v72 = sub_73980();
        v73 = *sub_734D0();
        v74 = sub_506C(&qword_A3BA8, &unk_76BA0);
        v75 = sub_29ACC(v74);
        *(v75 + 16) = xmmword_74B40;
        v76 = v39;
        v77 = v27;
        v78 = v73;
        v79 = sub_B4FC();
        v81 = v80;
        *(v75 + 56) = &type metadata for String;
        *(v75 + 64) = sub_5258();
        *(v75 + 32) = v79;
        *(v75 + 40) = v81;
        sub_402D8(v72, &dword_0, v82, "StartWorkout- Disambiguation Strategy: %@");

        sub_402C0();
        v85 = sub_401F0(v83, 255, v84, &unk_7567C);
        v86 = sub_1B9B8(v85);
        *v87 = v71;
        v88 = v95;
        *v95 = v86;
        swift_storeEnumTagMultiPayload();

        v100(v88);

        sub_AEF4(v88, &qword_A65C0, &qword_78608);
        (*(v76 + 8))(v33, v77);
        return;
      }

      if (v103)
      {
        v40 = sub_73B70();
      }

      else
      {
        if (v37 >= *(v102 + 16))
        {
          goto LABEL_24;
        }

        v40 = *(v106 + 8 * v37 + 32);
      }

      v41 = v40;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v42 = [v40 v38[449]];
      v43 = sub_73790();
      v45 = v44;

      v46 = [v105 workoutName];
      if (v46)
      {
        v47 = v46;
        v48 = v33;
        v49 = v27;
        v50 = [v46 v38[449]];

        v51 = sub_73790();
        v53 = v52;

        if (v43 == v51 && v45 == v53)
        {

          v89 = v95;
          v27 = v49;
          v33 = v48;
          goto LABEL_21;
        }

        v55 = sub_73DB0();

        v27 = v49;
        v39 = v101;
        v33 = v48;
        if (v55)
        {
          v89 = v95;
LABEL_21:

          v109 = sub_506C(&qword_A4D10, qword_78610);
          v107 = v37;
          v108 = v41;
          v90 = v41;
          v91 = v105;
          v92 = v96;
          sub_722A0();
          v93 = v98;
          sub_72350();
          (*(v97 + 8))(v92, v93);
          swift_storeEnumTagMultiPayload();
          v100(v89);

          sub_AEF4(v89, &qword_A65C0, &qword_78608);
          (*(v101 + 8))(v33, v27);
          return;
        }
      }

      else
      {
      }

      ++v37;
      v38 = &unk_A2000;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    (*(v22 + 8))(v26, v20);
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v56 = sub_B5BC(0);
    v57 = sub_73980();
    v58 = *sub_734D0();
    v59 = sub_506C(&qword_A3BA8, &unk_76BA0);
    v60 = sub_29ACC(v59);
    *(v60 + 16) = xmmword_74B40;
    v61 = v58;
    v62 = sub_B4FC();
    v64 = v63;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_5258();
    *(v60 + 32) = v62;
    *(v60 + 40) = v64;
    sub_402D8(v57, &dword_0, v65, "StartWorkout- Disambiguation Strategy: %@");

    sub_402C0();
    v68 = sub_401F0(v66, 255, v67, &unk_7567C);
    v69 = sub_1B9B8(v68);
    *v70 = v56;
    *v15 = v69;
    swift_storeEnumTagMultiPayload();

    v100(v15);

    sub_AEF4(v15, &qword_A65C0, &qword_78608);
  }
}

void sub_3F0E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void **), uint64_t a9)
{
  v84 = a8;
  v82 = a1;
  v12 = sub_73390();
  sub_5394();
  v83 = v13;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v18 - 8);
  v20 = v73 - v19;
  v21 = sub_721F0();
  sub_5394();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_C2A4();
  v27 = v26 - v25;

  v28 = sub_453DC(a3, a4);
  if (v28 == 5)
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v29 = sub_B5BC(2);
    v30 = sub_73980();
    v31 = *sub_734D0();
    v32 = sub_506C(&qword_A3BA8, &unk_76BA0);
    v33 = sub_29ACC(v32);
    *(v33 + 16) = xmmword_74B40;
    v34 = v31;
    v35 = sub_B4FC();
    v37 = v36;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_5258();
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    sub_402D8(v30, &dword_0, v38, "StartWorkout- Disambiguation Strategy: %@");

    sub_402C0();
    sub_401F0(v39, 255, v40, &unk_7567C);
    v41 = swift_allocError();
    *v42 = v29;
    v86 = v41;
    v88 = 1;

    v84(&v86);

    sub_AEF4(&v86, &qword_A4810, &unk_760A0);
    return;
  }

  v43 = v28;
  v76 = v12;
  v77 = v17;
  v78 = v27;
  v79 = v23;
  v80 = v20;
  v44 = sub_73970();
  v45 = *sub_734D0();
  v46 = sub_506C(&qword_A3BA8, &unk_76BA0);
  v47 = sub_29ACC(v46);
  v75 = xmmword_74B40;
  *(v47 + 16) = xmmword_74B40;
  v86 = 0;
  v87 = 0xE000000000000000;
  v85 = v43;
  v48 = v45;
  sub_73C40();
  v49 = v86;
  v50 = v87;
  *(v47 + 56) = &type metadata for String;
  *(v47 + 64) = sub_5258();
  *(v47 + 32) = v49;
  *(v47 + 40) = v50;
  sub_73620(v44, &dword_0, v48, "Generating prompt to disambiguate : %@", 38, 2, v47);

  v51 = sub_506C(&qword_A4D00, &unk_760B0);
  v52 = sub_72440();
  v53 = sub_114FC(v52);
  v81 = a9;
  if (!v53)
  {

    v56 = _swiftEmptyArrayStorage;
    v66 = v78;
    v65 = v84;
LABEL_14:
    sub_3727C(v56);

    type metadata accessor for DisambiguationStrategyHelper();
    sub_72440();
    sub_72840();
    v67 = sub_31CE8();

    sub_AE38(&v86);
    sub_73280();
    v68 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v69 = swift_allocObject();
    *(v69 + 16) = v75;
    sub_73380();
    v86 = v69;
    sub_401F0(&unk_A6CE0, 255, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_D9A8(&qword_A6CF0, &qword_A4820, qword_77FF0, &protocol conformance descriptor for [A]);
    v70 = v77;
    sub_73B10();
    type metadata accessor for HealthCATWrapper(0);
    swift_allocObject();
    sub_4F648(v68, v70);
    v71 = v80;
    sub_4F9F0();

    __chkstk_darwin(v72);
    v73[-2] = v67;
    v73[-1] = v66;
    sub_541F4(sub_40238, &v86);
    v65(&v86);

    sub_AEF4(&v86, &qword_A4810, &unk_760A0);
    sub_AEF4(v71, &unk_A6CD0, &unk_75B80);
    (*(v79 + 8))(v66, v21);
    return;
  }

  v54 = v53;
  v86 = _swiftEmptyArrayStorage;
  sub_401D0();
  if ((v54 & 0x8000000000000000) == 0)
  {
    v73[1] = v51;
    v73[2] = a7;
    v74 = v21;
    v55 = 0;
    v56 = v86;
    do
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v57 = sub_73B70();
      }

      else
      {
        v57 = *(v52 + 8 * v55 + 32);
      }

      v58 = v57;
      v59 = [v57 spokenPhrase];
      v60 = sub_73790();
      v62 = v61;

      v86 = v56;
      v63 = v56[2];
      if (v63 >= v56[3] >> 1)
      {
        sub_401D0();
        v56 = v86;
      }

      ++v55;
      v56[2] = v63 + 1;
      v64 = &v56[2 * v63];
      v64[4] = v60;
      v64[5] = v62;
    }

    while (v54 != v55);

    v65 = v84;
    v21 = v74;
    v66 = v78;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_3F824@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v7 - 8);
  v9 = v15 - v8;
  sub_72840();
  sub_72840();
  sub_7C78(v17, v17[3]);
  sub_71ED0();
  sub_506C(&unk_A63F0, &unk_760C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_752C0;
  *(v10 + 32) = a2;
  v11 = sub_721F0();
  (*(*(v11 - 8) + 16))(v9, a3, v11);
  sub_7CC4(v9, 0, 1, v11);
  v12 = sub_72890();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  a4[3] = v12;
  a4[4] = &protocol witness table for AceOutput;
  sub_5BAC(a4);
  v13 = a2;
  sub_72100();

  sub_AEF4(v15, &unk_A6D20, &qword_76D80);
  sub_AEF4(v9, &qword_A4050, &unk_75290);
  sub_AE38(v18);
  return sub_AE38(v17);
}

uint64_t sub_3FA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for StartWorkoutDisambiguationStrategy();

  return sub_718A0();
}

uint64_t sub_3FAD8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v17 = *v8;

  return sub_3E684(a1, a2, a3, a4, a5, a6, v17, a7, a8);
}

uint64_t sub_3FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makeRepromptOnEmptyParse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_3FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:paginatedItems:_:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, started, a11);
}

uint64_t sub_3FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makePromptForDeviceUnlock(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_3FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return NeedsDisambiguationFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, started, a10);
}

uint64_t sub_3FE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for StartWorkoutDisambiguationStrategy();

  return sub_72690();
}

uint64_t sub_3FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, started, a9);
}

uint64_t sub_3FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_14A58;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, started, a7);
}

uint64_t sub_40050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  started = type metadata accessor for StartWorkoutDisambiguationStrategy();
  *v16 = v8;
  v16[1] = sub_14EC4;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, started, a8);
}

uint64_t sub_401F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_402D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return sub_73620(a1, a2, v5, a4, 41, 2, v4);
}

uint64_t defaultWorkoutApp(for:workoutName:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_731F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for DeviceIdiom.watch(_:), v3);
  v7 = sub_731E0();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) != 0 && v2 != 84)
  {
    return defaultWatchApp(for:)(v2);
  }

  else
  {
    return sub_73420();
  }
}

uint64_t defaultWatchApp(for:)(char a1)
{
  if (a1 == 79)
  {
    AFDeviceIsVictory();
  }

  return sub_73420();
}

uint64_t type metadata accessor for CancelWorkoutContinueInAppStrategy(uint64_t a1)
{
  result = qword_A65F0;
  if (!qword_A65F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FitnessCATs(uint64_t a1)
{
  result = qword_A66B8;
  if (!qword_A66B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_405A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_2D9E0(a1);
  return v11;
}

unint64_t sub_40714(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_983D0;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_40760(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t getEnumTagSinglePayload for HealthConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x408F4);
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

unint64_t sub_40930()
{
  result = qword_A6708;
  if (!qword_A6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6708);
  }

  return result;
}

unint64_t sub_409A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_40714(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_409D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_40760(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_40A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_40B1C();
  v5 = sub_40B70();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_40A70()
{
  result = qword_A6710;
  if (!qword_A6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6710);
  }

  return result;
}

unint64_t sub_40AC8()
{
  result = qword_A6718;
  if (!qword_A6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6718);
  }

  return result;
}

unint64_t sub_40B1C()
{
  result = qword_A6720;
  if (!qword_A6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6720);
  }

  return result;
}

unint64_t sub_40B70()
{
  result = qword_A6728[0];
  if (!qword_A6728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_A6728);
  }

  return result;
}

uint64_t sub_40BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_40C08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_40C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_40CEC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_7F10();
  return _swift_task_switch(v4);
}

uint64_t sub_40D1C()
{
  sub_7F1C();
  v1 = *(*(v0 + 32) + 240);
  if (v1)
  {
    sub_71DF0();
    v2 = v1;
    v3 = sub_71DD0();
  }

  else
  {
    v3 = sub_45750(*(v0 + 16), *(v0 + 24));
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_40DB0()
{
  sub_7F1C();
  v0[22] = v1;
  v0[23] = v2;
  v0[21] = v3;
  v4 = sub_73720();
  v0[24] = v4;
  sub_7E94(v4);
  v0[25] = v5;
  v0[26] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v6);
}

uint64_t sub_40E5C()
{
  v24 = v0;
  sub_72420();
  sub_72400();
  v1 = sub_733B0();
  v3 = v2;

  if (v3)
  {
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[24];
    v7 = [objc_allocWithZone(HKHealthStore) init];
    v0[27] = v7;
    v8 = sub_736F0();
    swift_beginAccess();
    (*(v4 + 16))(v5, v8, v6);

    v9 = sub_73710();
    v10 = sub_73990();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[25];
    v13 = v0[26];
    v14 = v0[24];
    if (v11)
    {
      v22 = v7;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_19144(v1, v3, &v23);
      _os_log_impl(&dword_0, v9, v10, "Notifying HealthKit %s is allowed to start a workout from background process", v15, 0xCu);
      sub_AE38(v16);
      sub_7EBC(v16);
      v17 = v15;
      v7 = v22;
      sub_7EBC(v17);
    }

    (*(v12 + 8))(v13, v14);
    v18 = sub_73780();
    v0[28] = v18;

    v0[2] = v0;
    v0[3] = sub_4116C;
    v19 = swift_continuation_init();
    v0[17] = sub_506C(&qword_A67B0, &unk_789D8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_41370;
    v0[13] = &unk_99940;
    v0[14] = v19;
    [v7 takeWorkoutBackgroundStartAssertionForApplicationIdentifier:v18 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_71FC0();
    sub_71FB0();

    sub_7EA4();

    return v20();
  }
}

uint64_t sub_4116C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  sub_7F10();

  return _swift_task_switch(v4);
}

uint64_t sub_41268()
{
  sub_7F1C();
  v1 = *(v0 + 224);

  sub_71FC0();
  sub_71FB0();

  sub_7EA4();

  return v2();
}

uint64_t sub_412EC()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  swift_willThrow();

  sub_7EA4();

  return v3();
}

uint64_t *sub_41370(uint64_t a1, int a2, void *a3)
{
  sub_ADF8(0, &qword_A67B8, INIntentResponse_ptr);
  result = sub_7C78((a1 + 32), *(a1 + 56));
  v7 = *result;
  if (a2)
  {
    v8 = *result;

    return j__swift_continuation_throwingResume(v8);
  }

  else if (a3)
  {
    v9 = a3;

    return sub_41414(v7, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_41414(uint64_t a1, uint64_t a2)
{
  sub_506C(&qword_A4828, qword_75BA0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_41484()
{
  sub_273D0();
  swift_task_alloc();
  sub_B144();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_44444(v1);

  return sub_4151C();
}

uint64_t sub_4151C()
{
  sub_7F1C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[9] = *(v2 + 16);
  v5 = sub_72420();
  v1[10] = v5;
  sub_7E94(v5);
  v1[11] = v6;
  v1[12] = sub_7ED4();
  v7 = sub_73720();
  v1[13] = v7;
  sub_7E94(v7);
  v1[14] = v8;
  v1[15] = sub_7ED4();
  sub_71F70();
  v1[16] = sub_7ED4();
  v9 = sub_72580();
  v1[17] = v9;
  sub_7E94(v9);
  v1[18] = v10;
  v1[19] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v11);
}

uint64_t sub_41690()
{
  v44 = v0;
  v1 = sub_723F0();
  v2 = [v1 _code];

  v3 = sub_3BB7C(v2);
  if ((v3 - 3) >= 3)
  {
    if (v3 == 9)
    {
      v8 = v0[14];
      v7 = v0[15];
      v10 = v0[12];
      v9 = v0[13];
      v11 = v0[10];
      v12 = v0[11];
      v13 = v0[6];
      v14 = sub_736E0();
      swift_beginAccess();
      (*(v8 + 16))(v7, v14, v9);
      (*(v12 + 16))(v10, v13, v11);
      v15 = sub_73710();
      v16 = sub_73980();
      v17 = os_log_type_enabled(v15, v16);
      v19 = v0[14];
      v18 = v0[15];
      v20 = v0[12];
      v21 = v0[13];
      v23 = v0[10];
      v22 = v0[11];
      if (v17)
      {
        v42 = v0[15];
        v39 = v16;
        v24 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43[0] = v40;
        *v24 = 136315650;
        v25 = sub_73ED0();
        v41 = v21;
        v27 = sub_19144(v25, v26, v43);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        v28 = sub_73ED0();
        v30 = sub_19144(v28, v29, v43);

        *(v24 + 14) = v30;
        *(v24 + 22) = 2048;
        v31 = sub_723F0();
        v32 = [v31 _code];

        (*(v22 + 8))(v20, v23);
        *(v24 + 24) = v32;
        _os_log_impl(&dword_0, v15, v39, "%s received %s unknown code: %ld", v24, 0x20u);
        swift_arrayDestroy();
        sub_7EBC(v40);
        sub_7EBC(v24);

        (*(v19 + 8))(v42, v41);
      }

      else
      {
        (*(v22 + 8))(v0[12], v0[10]);

        (*(v19 + 8))(v18, v21);
      }

      type metadata accessor for HealthFlowError();
      swift_allocObject();
      v35 = sub_B5BC(8);
      sub_7D5C();
      swift_allocError();
      *v36 = v35;
      swift_willThrow();

      sub_7EA4();
      sub_444B0();

      __asm { BRAA            X1, X16 }
    }

    v0[20] = sub_72400();
    v33 = swift_task_alloc();
    v0[21] = v33;
    *v33 = v0;
    v33[1] = sub_41ACC;
    sub_444B0();

    return sub_42D1C();
  }

  else
  {
    v0[23] = sub_72400();
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_41BE0;
    sub_444B0();

    return sub_42258();
  }
}

uint64_t sub_41ACC()
{
  sub_273D0();
  v3 = v2;
  sub_B0BC();
  v5 = v4;
  sub_44428();
  *v6 = v5;
  v7 = *v1;
  sub_B044();
  *v8 = v7;
  *(v5 + 176) = v0;

  if (!v0)
  {

    *(v5 + 216) = v3;
  }

  sub_7F10();

  return _swift_task_switch(v9);
}

uint64_t sub_41BE0()
{
  sub_273D0();
  v3 = v2;
  sub_B0BC();
  v5 = v4;
  sub_44428();
  *v6 = v5;
  v7 = *v1;
  sub_B044();
  *v8 = v7;
  *(v5 + 200) = v0;

  if (!v0)
  {

    *(v5 + 208) = v3;
  }

  sub_7F10();

  return _swift_task_switch(v9);
}

uint64_t sub_41CF4()
{
  sub_273D0();
  v2 = *(v0 + 208);
  sub_71F60();
  sub_443AC();
  sub_7C78((v1 + 248), *(v1 + 272));
  swift_task_alloc();
  sub_B144();
  *(v0 + 232) = v3;
  *v3 = v4;
  v5 = sub_44360(v3);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v5, v6, v7, v8, v9);
}

uint64_t sub_41D9C()
{
  sub_273D0();
  v2 = *(v0 + 216);
  sub_71F30();
  sub_443AC();
  sub_7C78((v1 + 248), *(v1 + 272));
  swift_task_alloc();
  sub_B144();
  *(v0 + 232) = v3;
  *v3 = v4;
  v5 = sub_44360(v3);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v5, v6, v7, v8, v9);
}

uint64_t sub_41E44()
{
  sub_273D0();
  v2 = *v1;
  sub_44428();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v0;

  sub_7F10();

  return _swift_task_switch(v5);
}

uint64_t sub_41F68()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);

  sub_7EA4();

  return v4();
}

uint64_t sub_42020()
{
  sub_273D0();

  sub_44468();

  sub_7EA4();

  return v0();
}

uint64_t sub_420A0()
{
  sub_273D0();

  sub_44468();

  sub_7EA4();

  return v0();
}

uint64_t sub_42120()
{
  sub_273D0();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v2 + 8))(v1, v3);
  sub_44468();

  sub_7EA4();

  return v4();
}

uint64_t sub_421C0()
{
  sub_273D0();
  swift_task_alloc();
  sub_B144();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_44444(v1);

  return sub_4151C();
}

uint64_t sub_42258()
{
  sub_7F1C();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 288) = v3;
  *(v1 + 136) = v4;
  sub_506C(&qword_A3F98, qword_75450);
  *(v1 + 160) = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v5);
}

void sub_422EC()
{

  v1 = sub_72250();
  if (v1 && (v2 = v1, v3 = [v1 displayAppName], v2, v3))
  {
    sub_73790();

    sub_737F0();

    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  v5 = *(v0 + 160);
  v6 = sub_73350();
  sub_7CC4(v5, v4, 1, v6);
  v7 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (sub_27420(v7))
  {
    v8 = sub_273E8(*(v0 + 152), *(*(v0 + 152) + 24));
    *(v0 + 168) = v8;
    sub_4439C(v8);
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_427A4;
    sub_44484();

    sub_2EE04();
  }

  else
  {
    v11 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_27420(v11))
    {
      sub_444A4();
      v13 = sub_273E8((v12 + 40), *(v12 + 64));
      *(v0 + 192) = v13;
      sub_4439C(v13);
      v14 = swift_task_alloc();
      *(v0 + 200) = v14;
      *v14 = v0;
      v14[1] = sub_428BC;
      sub_44484();

      sub_61DCC();
    }

    else
    {
      v16 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
      if (sub_27420(v16))
      {
        sub_444A4();
        v18 = sub_273E8((v17 + 80), *(v17 + 104));
        *(v0 + 216) = v18;
        sub_4439C(v18);
        v19 = swift_task_alloc();
        *(v0 + 224) = v19;
        *v19 = v0;
        v19[1] = sub_429D4;
        sub_44484();

        sub_69728();
      }

      else
      {
        v21 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
        if (sub_27420(v21))
        {
          sub_444A4();
          v23 = sub_273E8((v22 + 120), *(v22 + 144));
          *(v0 + 240) = v23;
          sub_4439C(v23);
          v24 = swift_task_alloc();
          *(v0 + 248) = v24;
          *v24 = v0;
          v24[1] = sub_42AEC;
          sub_44484();

          sub_6634C();
        }

        else
        {
          v26 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
          if (sub_27420(v26))
          {
            sub_444A4();
            v34 = sub_273E8((v33 + 160), *(v33 + 184));
            *(v0 + 264) = v34;
            sub_4439C(v34);
            v35 = swift_task_alloc();
            *(v0 + 272) = v35;
            *v35 = v0;
            v35[1] = sub_42C04;
            sub_44484();

            sub_644D8();
          }

          else
          {
            sub_443E4("Fatal error", v27, v28, v29, v30, "HealthFlowDelegatePlugin/WorkoutHandleIntentStrategyAsync.swift", v31, v32, 157, 0);
            sub_44484();
          }
        }
      }
    }
  }
}

uint64_t sub_427A4()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 184) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_428BC()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 208) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_429D4()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 232) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_42AEC()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 256) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_42C04()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 280) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_42D1C()
{
  sub_7F1C();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  sub_506C(&qword_A3F98, qword_75450);
  v1[20] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v4);
}

void sub_42DAC()
{

  v1 = sub_72250();
  if (v1 && (v2 = v1, v3 = [v1 displayAppName], v2, v3))
  {
    sub_73790();

    sub_737F0();

    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  v5 = *(v0 + 160);
  v6 = sub_73350();
  sub_7CC4(v5, v4, 1, v6);
  v7 = sub_ADF8(0, &qword_A4578, INCancelWorkoutIntent_ptr);
  if (sub_27420(v7))
  {
    sub_7C78(*(v0 + 152), *(*(v0 + 152) + 24));
    sub_733C0();
    v8 = sub_B1EC();
    *(v0 + 168) = v8;
    sub_44438(v8);
    swift_task_alloc();
    sub_B144();
    *(v0 + 176) = v9;
    *v9 = v10;
    v9[1] = sub_4329C;
    sub_4434C();
    sub_44484();

    sub_2F4FC();
  }

  else
  {
    v12 = sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    if (sub_27420(v12))
    {
      sub_44498();
      sub_7C78((v13 + 40), *(v13 + 64));
      sub_733C0();
      v14 = sub_B1EC();
      *(v0 + 192) = v14;
      sub_44438(v14);
      swift_task_alloc();
      sub_B144();
      *(v0 + 200) = v15;
      *v15 = v16;
      v15[1] = sub_43474;
      sub_4434C();
      sub_44484();

      sub_624C4();
    }

    else
    {
      v18 = sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
      if (sub_27420(v18))
      {
        sub_44498();
        sub_7C78((v19 + 80), *(v19 + 104));
        sub_733C0();
        v20 = sub_B1EC();
        *(v0 + 216) = v20;
        sub_44438(v20);
        swift_task_alloc();
        sub_B144();
        *(v0 + 224) = v21;
        *v21 = v22;
        v21[1] = sub_4364C;
        sub_4434C();
        sub_44484();

        sub_69DE8();
      }

      else
      {
        v24 = sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
        if (sub_27420(v24))
        {
          sub_44498();
          sub_7C78((v25 + 120), *(v25 + 144));
          sub_733C0();
          v26 = sub_B1EC();
          *(v0 + 240) = v26;
          sub_44438(v26);
          swift_task_alloc();
          sub_B144();
          *(v0 + 248) = v27;
          *v27 = v28;
          v27[1] = sub_43824;
          sub_4434C();
          sub_44484();

          sub_66A44();
        }

        else
        {
          v30 = sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
          if (sub_27420(v30))
          {
            sub_44498();
            sub_7C78((v37 + 160), *(v37 + 184));
            sub_733C0();
            v38 = sub_B1EC();
            *(v0 + 264) = v38;
            sub_44438(v38);
            swift_task_alloc();
            sub_B144();
            *(v0 + 272) = v39;
            *v39 = v40;
            v39[1] = sub_439FC;
            sub_44484();

            sub_64BF8();
          }

          else
          {
            sub_443E4("Fatal error", v31, v32, v33, v34, "HealthFlowDelegatePlugin/WorkoutHandleIntentStrategyAsync.swift", v35, v36, 112, 0);
            sub_44484();
          }
        }
      }
    }
  }
}

uint64_t sub_4329C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 184) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_433B4()
{
  sub_7F1C();
  sub_44410();

  v0 = sub_B030();

  return v1(v0);
}

uint64_t sub_43414()
{
  sub_7F1C();
  sub_44410();

  sub_7EA4();

  return v0();
}

uint64_t sub_43474()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 208) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_4358C()
{
  sub_7F1C();
  sub_44410();

  v0 = sub_B030();

  return v1(v0);
}

uint64_t sub_435EC()
{
  sub_7F1C();
  sub_44410();

  sub_7EA4();

  return v0();
}

uint64_t sub_4364C()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 232) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_43764()
{
  sub_7F1C();
  sub_44410();

  v0 = sub_B030();

  return v1(v0);
}

uint64_t sub_437C4()
{
  sub_7F1C();
  sub_44410();

  sub_7EA4();

  return v0();
}

uint64_t sub_43824()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 256) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_4393C()
{
  sub_7F1C();
  sub_44410();

  v0 = sub_B030();

  return v1(v0);
}

uint64_t sub_4399C()
{
  sub_7F1C();
  sub_44410();

  sub_7EA4();

  return v0();
}

uint64_t sub_439FC()
{
  sub_7F1C();
  sub_B0BC();
  sub_B054();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  sub_B15C();
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v7 + 280) = v0;

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_43B14()
{
  sub_7F1C();
  sub_44410();

  v0 = sub_B030();

  return v1(v0);
}

uint64_t sub_43B74()
{
  sub_7F1C();
  sub_44410();

  sub_7EA4();

  return v0();
}

uint64_t sub_43BD4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(void))
{
  v6 = a3;
  sub_AFA4(a2, a1);
  result = a4(0);
  v8 = a1 + *(result + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_43C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_43D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_43DC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_40DB0();
}

uint64_t sub_43E74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_41484();
}

uint64_t sub_43F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_43FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B014;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_440AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_421C0();
}

uint64_t sub_4415C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2CA00;

  return sub_40CEC(a1, a2);
}

uint64_t sub_4439C(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

uint64_t sub_443AC()
{
  *(v1 + 224) = v0;

  return sub_72530();
}

uint64_t sub_443E4(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_73CC0();
}

uint64_t sub_44410()
{
  v2 = *(v0 + 160);

  return sub_2733C(v2);
}

uint64_t sub_44468()
{
}

uint64_t type metadata accessor for HealthWorkoutStartCATs(uint64_t a1)
{
  result = qword_A67C0;
  if (!qword_A67C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_445AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_1828C(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_2D9E0(a1);
  return v11;
}

uint64_t sub_44740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_44764);
}

uint64_t sub_44764()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[5] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_72240();
  swift_allocObject();
  v0[6] = sub_72230();
  v2 = sub_17B28();
  v0[7] = v2;
  *v2 = v0;
  sub_17B14(v2);
  v3 = sub_17B00(18);

  return v4(v3);
}

uint64_t sub_448A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_506C(&qword_A4A08, &qword_75D10);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = sub_73910();
  sub_7CC4(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v7;
  v15[5] = a4;
  v15[6] = a5;

  sub_54390(0, 0, v13, a7, v15);
}

uint64_t sub_4499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_449C0);
}

uint64_t sub_449C0()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[5] = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_72240();
  swift_allocObject();
  v0[6] = sub_72230();
  v2 = sub_17B28();
  v0[7] = v2;
  *v2 = v0;
  sub_17B14(v2);
  v3 = sub_17B00(23);

  return v4(v3);
}

uint64_t sub_44B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_44DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_44E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_44E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_44EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CancelWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

unint64_t sub_44F30()
{
  result = qword_A68C0;
  if (!qword_A68C0)
  {
    type metadata accessor for CancelWorkoutHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A68C0);
  }

  return result;
}

uint64_t sub_44F88()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_4499C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_45028()
{
  sub_7F1C();
  v2 = v1;
  v0[25] = v3;
  v0[26] = v4;
  v0[23] = v5;
  v0[24] = v6;
  v0[22] = v7;
  v0[20] = sub_72240();
  v0[21] = &protocol witness table for ResponseFactory;
  v0[17] = v2;

  return _swift_task_switch(sub_450B8);
}

uint64_t sub_450B8()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  v4 = sub_73750();
  v0[2] = v3;
  v0[3] = v1;
  v0[4] = v2;
  sub_21FC0((v0 + 17), (v0 + 5));
  v0[10] = v4;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_451C8;

  return sub_2CCDC((v0 + 11), (v0 + 2), _swiftEmptyArrayStorage);
}

uint64_t sub_451C8()
{
  sub_7F1C();
  v1 = *v0;
  sub_B044();
  *v2 = v1;

  return _swift_task_switch(sub_452B8);
}

uint64_t sub_452B8()
{
  sub_7F1C();
  (*(v0 + 200))(v0 + 88);
  sub_16074(v0 + 88);
  sub_160DC(v0 + 16);
  sub_AE38((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_45334()
{
  sub_17AEC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_17AC8(v1);

  return sub_44740(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_453DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_97CE0;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_45428(char a1)
{
  result = 0x4E74756F6B726F77;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x756C61566C616F67;
      break;
    case 4:
      result = 0x6E456E65704F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SlotNames(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x45640);
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

unint64_t sub_4569C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_453DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_456CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_45428(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_456FC()
{
  result = qword_A68C8;
  if (!qword_A68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A68C8);
  }

  return result;
}

uint64_t sub_45750(uint64_t a1, void *a2)
{
  v3 = sub_73960();
  v4 = *sub_734D0();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = [a2 typeName];
    v9 = sub_73790();
    v11 = v10;

    v12 = sub_19144(v9, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_0, v5, v3, "Returning standard execution behavior for %s", v6, 0xCu);
    sub_AE38(v7);
  }

  sub_71DF0();
  return sub_71DE0();
}

uint64_t sub_45918()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_74F60;
  *(v7 + 32) = 1953459315;
  *(v7 + 40) = 0xE400000000000000;
  sub_5AEC(v0, v6, &qword_A3F98, qword_75450);
  v8 = sub_73350();
  if (sub_5124(v6, 1, v8) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    sub_5BAC((v7 + 48));
    sub_5C0C();
    (*(v9 + 32))();
  }

  *(v7 + 80) = 1651664246;
  *(v7 + 88) = 0xE400000000000000;
  v10 = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  sub_5AEC(v0 + *(v10 + 20), v4, &qword_A3F98, qword_75450);
  if (sub_5124(v4, 1, v8) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v8;
    sub_5BAC((v7 + 96));
    sub_5C0C();
    (*(v11 + 32))();
  }

  return v7;
}

void *sub_45B44()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A69B8, &qword_78D20);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_46524(v0, v14);
  return v2;
}

uint64_t sub_45DBC()
{
  sub_7F1C();
  *(v0 + 72) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  *(v0 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_45E50);
}

uint64_t sub_45E50()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 72);
  v4 = sub_73350();
  sub_7CC4(v1, 1, 1, v4);
  sub_7CC4(v1 + *(v2 + 20), 1, 1, v4);
  sub_7508(v1, v3);
  v5 = sub_45918();
  *(v0 + 40) = v5;
  v6 = sub_46728();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_45F64;

  return v8(0xD00000000000001ALL, 0x800000000007E910, v5);
}

uint64_t sub_45F64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_46120;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_460B0;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_460B0()
{
  sub_7F1C();
  sub_4658C(v0[4]);

  v1 = v0[1];
  v2 = v0[8];

  return v1(v2);
}

uint64_t sub_46120()
{
  sub_7F1C();
  sub_4658C(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_4618C()
{
  v1 = sub_46728();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_46240;

  return v3(0xD000000000000014, 0x800000000007E8F0, _swiftEmptyArrayStorage);
}

uint64_t sub_46240()
{
  sub_7F1C();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_46390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v13 - v10, &qword_A3F90, &unk_74FC0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

uint64_t sub_4658C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPromptForSlotValueParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_465FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);

  return sub_5124(a1, a2, v4);
}

uint64_t sub_46664(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);

  return sub_7CC4(a1, a2, a2, v4);
}

void sub_466BC(uint64_t a1)
{
  sub_3505C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_46728()
{

  return swift_task_alloc();
}

uint64_t sub_46748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_4678C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_467CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_46840@<X0>(uint64_t a2@<X8>)
{
  if (sub_72A60() & 1) != 0 || (sub_72A50())
  {
    v3 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_4:
    v4 = *v3;
    v5 = sub_72340();
    (*(*(v5 - 8) + 104))(a2, v4, v5);
    v6 = a2;
    v7 = 0;
    v8 = v5;
    goto LABEL_5;
  }

  if (sub_72A40())
  {
    v3 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_4;
  }

  v8 = sub_72340();
  v6 = a2;
  v7 = 1;
LABEL_5:

  return sub_7CC4(v6, v7, 1, v8);
}

uint64_t sub_46914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v114 = a2;
  v2 = sub_506C(&qword_A54E8, &qword_76BB0);
  v3 = sub_B1C0(v2);
  __chkstk_darwin(v3);
  v105 = &v91 - v4;
  v5 = sub_506C(&qword_A42E0, &unk_77840);
  v6 = sub_B1C0(v5);
  __chkstk_darwin(v6);
  sub_3E430(&v91 - v7);
  v99 = sub_729E0();
  sub_5394();
  v98 = v8;
  __chkstk_darwin(v9);
  sub_C2A4();
  sub_3E430(v11 - v10);
  v102 = sub_72AB0();
  sub_5394();
  v94 = v12;
  __chkstk_darwin(v13);
  sub_C2A4();
  sub_3E430(v15 - v14);
  sub_72880();
  sub_5394();
  v103 = v17;
  v104 = v16;
  __chkstk_darwin(v16);
  sub_C2A4();
  v101 = v19 - v18;
  v20 = sub_72820();
  sub_5394();
  v111 = v21;
  __chkstk_darwin(v22);
  sub_11544();
  v108 = v23;
  v25 = __chkstk_darwin(v24);
  v107 = &v91 - v26;
  __chkstk_darwin(v25);
  v109 = &v91 - v27;
  v112 = sub_72830();
  sub_5394();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_C2A4();
  v33 = v32 - v31;
  v34 = sub_73720();
  sub_5394();
  v36 = v35;
  __chkstk_darwin(v37);
  sub_11544();
  v106 = v38;
  __chkstk_darwin(v39);
  v41 = &v91 - v40;
  v42 = sub_736F0();
  swift_beginAccess();
  v43 = *(v36 + 16);
  v96 = v42;
  v95 = v43;
  v43(v41, v42, v34);
  v44 = sub_73710();
  v45 = sub_73970();
  v46 = os_log_type_enabled(v44, v45);
  v110 = v36;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v92 = v20;
    v49 = v48;
    v116[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_19144(0xD000000000000016, 0x800000000007E930, v116);
    _os_log_impl(&dword_0, v44, v45, "%s", v47, 0xCu);
    sub_AE38(v49);
    v50 = v49;
    v20 = v92;
    sub_7EBC(v50);
    sub_7EBC(v47);

    v51 = v110;
  }

  else
  {

    v51 = v36;
  }

  v52 = *(v51 + 8);
  v52(v41, v34);
  v53 = v34;
  sub_727E0();
  v54 = v112;
  v55 = (*(v29 + 88))(v33, v112);
  if (v55 != enum case for Parse.directInvocation(_:))
  {
    if (v55 != enum case for Parse.uso(_:))
    {
      sub_72070();
      return (*(v29 + 8))(v33, v54);
    }

    (*(v29 + 96))(v33, v54);
    v77 = v103;
    v76 = v104;
    v78 = v101;
    (*(v103 + 32))(v101, v33, v104);
    v79 = v97;
    sub_72870();
    v80 = sub_729D0();
    (*(v98 + 8))(v79, v99);
    v81 = v100;
    sub_5F1B0(v80, v100);

    v82 = v102;
    if (sub_5124(v81, 1, v102) == 1)
    {
      v83 = &qword_A42E0;
      v84 = &unk_77840;
      v85 = v81;
    }

    else
    {
      v87 = v94;
      v88 = v93;
      (*(v94 + 32))(v93, v81, v82);
      v89 = v105;
      sub_46840(v105);
      v90 = sub_72340();
      if (sub_5124(v89, 1, v90) != 1)
      {
        sub_AEF4(v105, &qword_A54E8, &qword_76BB0);
        sub_72060();
        (*(v87 + 8))(v88, v82);
        return (*(v77 + 8))(v78, v76);
      }

      (*(v87 + 8))(v88, v82);
      v83 = &qword_A54E8;
      v84 = &qword_76BB0;
      v85 = v105;
    }

    sub_AEF4(v85, v83, v84);
    sub_72070();
    return (*(v77 + 8))(v78, v76);
  }

  (*(v29 + 96))(v33, v54);
  v56 = v111;
  v57 = v109;
  (*(v111 + 32))(v109, v33, v20);
  v58 = *(v56 + 16);
  v59 = v107;
  v58(v107, v57, v20);
  if (sub_53D4C(v59) == 3)
  {
    v60 = v96;
    swift_beginAccess();
    v61 = v106;
    v95(v106, v60, v53);
    v58(v108, v57, v20);
    v62 = v61;
    v63 = sub_73710();
    v64 = sub_73980();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v115 = v66;
      *v65 = 136315138;
      v67 = v108;
      v112 = sub_72800();
      v113 = v53;
      v68 = v20;
      v70 = v69;
      v71 = *(v111 + 8);
      v71(v67, v68);
      v72 = sub_19144(v112, v70, &v115);
      v20 = v68;

      *(v65 + 4) = v72;
      _os_log_impl(&dword_0, v63, v64, "Unsupported DirectInvocation with identifier: %s", v65, 0xCu);
      sub_AE38(v66);
      sub_7EBC(v66);
      v73 = v65;
      v57 = v109;
      sub_7EBC(v73);

      v74 = v106;
      v75 = v113;
    }

    else
    {

      v71 = *(v111 + 8);
      v71(v108, v20);
      v74 = v62;
      v75 = v53;
    }

    v52(v74, v75);
    sub_72070();
    return (v71)(v57, v20);
  }

  else
  {
    sub_72060();
    return (*(v56 + 8))(v57, v20);
  }
}

uint64_t sub_4727C()
{
  sub_7F1C();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_506C(&qword_A42E0, &unk_77840);
  sub_B1C0(v3);
  v0[7] = sub_7ED4();
  v4 = sub_729E0();
  v0[8] = v4;
  sub_7E94(v4);
  v0[9] = v5;
  v0[10] = sub_7ED4();
  v6 = sub_72AB0();
  v0[11] = v6;
  sub_7E94(v6);
  v0[12] = v7;
  v0[13] = sub_7ED4();
  v8 = sub_72880();
  v0[14] = v8;
  sub_7E94(v8);
  v0[15] = v9;
  v0[16] = sub_7ED4();
  v10 = sub_73720();
  v0[17] = v10;
  sub_7E94(v10);
  v0[18] = v11;
  v0[19] = sub_7ED4();
  v12 = sub_506C(&qword_A54E8, &qword_76BB0);
  sub_B1C0(v12);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v13 = sub_72340();
  v0[23] = v13;
  sub_7E94(v13);
  v0[24] = v14;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v15 = sub_72820();
  v0[27] = v15;
  sub_7E94(v15);
  v0[28] = v16;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v17 = sub_72830();
  v0[32] = v17;
  sub_7E94(v17);
  v0[33] = v18;
  v0[34] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v19);
}

uint64_t sub_47598(uint64_t a1)
{
  v119 = v1;
  v3 = v1[33];
  v2 = v1[34];
  v4 = v1[32];
  sub_727E0();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == enum case for Parse.directInvocation(_:))
  {
    v7 = v1 + 31;
    v6 = v1[31];
    v8 = v1[34];
    v9 = v1[28];
    v10 = v1[30];
    v11 = v1[27];
    v117 = v1 + 27;
    (*(v1[33] + 96))(v8, v1[32]);
    v12 = sub_49CE8();
    v13(v12, v8, v11);
    v14 = *(v9 + 16);
    v14(v10, v6, v11);
    v15 = sub_53D4C(v10);
    if (v15 == 2)
    {
      v48 = v1[22];
      sub_7CC4(v48, 1, 1, v1[23]);
      sub_AEF4(v48, &qword_A54E8, &qword_76BB0);
    }

    else if (v15 != 3)
    {
      v17 = v1 + 26;
      v16 = v1[26];
      v18 = v1[24];
      v111 = v1 + 24;
      v114 = v1 + 28;
      v20 = v1 + 23;
      v19 = v1[23];
      v22 = v1[21];
      v21 = v1[22];
      v23 = &enum case for ConfirmationResponse.rejected(_:);
      if ((v15 & 1) == 0)
      {
        v23 = &enum case for ConfirmationResponse.confirmed(_:);
      }

      (*(v18 + 104))(v1[22], *v23, v1[23]);
      sub_49CCC(v21);
      v24 = sub_49CE8();
      v25(v24, v21, v19);
      (*(v18 + 16))(v22, v16, v19);
      sub_49CCC(v22);
      sub_727D0();
      goto LABEL_21;
    }

    v115 = v1[31];
    v49 = v1[29];
    v50 = v1[27];
    v51 = v1[18];
    v52 = v1[19];
    v53 = v1[17];
    v54 = sub_736F0();
    swift_beginAccess();
    (*(v51 + 16))(v52, v54, v53);
    v14(v49, v115, v50);
    v55 = sub_73710();
    v56 = sub_73980();
    v57 = os_log_type_enabled(v55, v56);
    v59 = v1[28];
    v58 = v1[29];
    v60 = v1[27];
    v62 = v1[18];
    v61 = v1[19];
    v63 = v1[17];
    if (v57)
    {
      v116 = v1[17];
      v64 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v118 = v110;
      *v64 = 136315138;
      v107 = sub_72800();
      v113 = v61;
      v66 = v65;
      v67 = v60;
      v68 = *(v59 + 8);
      v68(v58, v67);
      v69 = sub_19144(v107, v66, &v118);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_0, v55, v56, "Unsupported DirectInvocation with identifier: %s", v64, 0xCu);
      sub_AE38(v110);
      sub_7EBC(v110);
      sub_7EBC(v64);

      (*(v62 + 8))(v113, v116);
    }

    else
    {

      v70 = *(v59 + 8);
      v70(v58, v60);
      v68 = v70;
      (*(v62 + 8))(v61, v63);
    }

    sub_345F0();
    v71 = swift_allocError();
    sub_49C90(v71, v72, v73, v74, v75, v76, v77, v78, v106);
    v79 = sub_49CF4();
    (v68)(v79);
LABEL_19:

    sub_7EA4();
    goto LABEL_22;
  }

  v26 = v1[34];
  if (v5 != enum case for Parse.uso(_:))
  {
    sub_345F0();
    v38 = swift_allocError();
    sub_49C90(v38, v39, v40, v41, v42, v43, v44, v45, v106);
    v46 = sub_49CF4();
    v47(v46);
    goto LABEL_19;
  }

  v7 = v1 + 16;
  v27 = v1[16];
  v28 = v1[15];
  v114 = v1 + 15;
  v29 = v1[14];
  v117 = v1 + 14;
  v31 = v1[9];
  v30 = v1[10];
  v108 = v1[8];
  v109 = v1[7];
  v112 = v1[11];
  v32 = sub_49CF4();
  v33(v32);
  (*(v28 + 32))(v27, v26, v29);
  sub_72870();
  v34 = sub_729D0();
  (*(v31 + 8))(v30, v108);
  sub_5F1B0(v34, v109);

  if (sub_5124(v109, 1, v112) == 1)
  {
    v35 = v1[7];
    v36 = &qword_A42E0;
    v37 = &unk_77840;
LABEL_18:
    sub_AEF4(v35, v36, v37);
    sub_345F0();
    v85 = swift_allocError();
    sub_49C90(v85, v86, v87, v88, v89, v90, v91, v92, v106);
    v93 = sub_49CF4();
    v94(v93);
    goto LABEL_19;
  }

  v17 = v1 + 13;
  v80 = v1[23];
  v81 = v1[20];
  v82 = sub_49CE8();
  v83(v82);
  sub_46840(v81);
  if (sub_5124(v81, 1, v80) == 1)
  {
    v84 = v1[20];
    (*(v1[12] + 8))(v1[13], v1[11]);
    v36 = &qword_A54E8;
    v37 = &qword_76BB0;
    v35 = v84;
    goto LABEL_18;
  }

  v97 = v1[24];
  v96 = v1[25];
  v98 = v1[23];
  v99 = v1[21];
  v111 = v1 + 12;
  v100 = sub_49CE8();
  v101(v100);
  (*(v97 + 16))(v99, v96, v98);
  sub_49CCC(v99);
  sub_727D0();
  (*(v97 + 8))(v96, v98);
  v20 = v1 + 11;
LABEL_21:
  v102 = *v7;
  v103 = *v117;
  v104 = *v114;
  (*(*v111 + 8))(*v17, *v20);
  (*(v104 + 8))(v102, v103);

  sub_7EA4();
LABEL_22:

  return v95();
}

uint64_t sub_47DBC()
{
  sub_7F1C();
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v5 = sub_71F70();
  sub_B1C0(v5);
  v1[44] = sub_7ED4();
  v6 = sub_72580();
  v1[45] = v6;
  sub_7E94(v6);
  v1[46] = v7;
  v1[47] = sub_7ED4();
  v8 = sub_71560();
  v1[48] = v8;
  sub_7E94(v8);
  v1[49] = v9;
  v1[50] = sub_7ED4();
  v10 = sub_506C(&unk_A6CC0, &qword_78F60);
  sub_B1C0(v10);
  v1[51] = sub_7ED4();
  sub_7F10();

  return _swift_task_switch(v11);
}

uint64_t sub_47F00()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[43];
  sub_723E0();
  swift_allocObject();

  sub_723D0();
  sub_7C78(v4, v4[3]);
  sub_71E90();
  sub_723C0();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    sub_733C0();
    sub_733E0();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[51];
  v9 = v0[43];
  v10 = sub_733F0();
  sub_7CC4(v8, v7, 1, v10);
  sub_7C78((v9 + 80), *(v9 + 104));
  sub_21FC0(v9, (v0 + 26));
  v11 = sub_73750();
  v0[52] = v11;
  v12 = swift_task_alloc();
  v0[53] = v12;
  *v12 = v0;
  v12[1] = sub_480EC;
  v13 = v0[51];

  return TCCResponses.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:)(v13, v0 + 26, v11);
}

uint64_t sub_480EC()
{
  sub_273D0();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v5 = *v1;
  sub_B044();
  *v6 = v5;
  *(v3 + 432) = v7;
  *(v3 + 440) = v0;

  sub_AEF4(v3 + 208, &qword_A6AD0, &qword_78F68);

  sub_7F10();

  return _swift_task_switch(v8);
}

uint64_t sub_48224()
{
  sub_273D0();
  v1 = sub_53F48(*(v0 + 344), 0);
  v2 = sub_48BBC();
  v4 = v3;

  *(v0 + 448) = v2;
  *(v0 + 456) = v4;
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_482DC;

  return static LabelTemplates.yes()();
}

uint64_t sub_482DC()
{
  sub_7F1C();
  sub_B0BC();
  v3 = v2;
  sub_44428();
  *v4 = v3;
  v3[36] = v1;
  v3[37] = v5;
  v3[38] = v6;
  v3[39] = v0;
  v7 = *v1;
  sub_B044();
  *v8 = v7;
  v3[59] = v9;
  v3[60] = v0;

  if (v0)
  {
    sub_49A7C(v3[56], v3[57]);
  }

  sub_7F10();

  return _swift_task_switch(v10);
}

uint64_t sub_483E4()
{
  sub_273D0();
  v1 = sub_53F48(*(v0 + 344), 1u);
  v2 = sub_48BBC();
  v4 = v3;

  *(v0 + 488) = v2;
  *(v0 + 496) = v4;
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  *v5 = v0;
  v5[1] = sub_4849C;

  return static LabelTemplates.no()();
}

uint64_t sub_4849C()
{
  sub_273D0();
  v3 = v2;
  v5 = v4;
  sub_B0BC();
  v7 = v6;
  sub_44428();
  *v8 = v7;
  v9 = *v1;
  sub_B044();
  *v10 = v9;
  v7[64] = v0;

  if (v0)
  {
    v11 = v7[61];
    v12 = v7[62];
    sub_49A7C(v7[56], v7[57]);
    sub_49A7C(v11, v12);
  }

  else
  {
    v13 = v7[37];
    v7[65] = v3;
    v7[66] = v5;
    v7[67] = v13;
  }

  sub_7F10();

  return _swift_task_switch(v14);
}

uint64_t sub_485D8()
{
  sub_273D0();
  v1 = *(v0 + 408);

  sub_AEF4(v1, &unk_A6CC0, &qword_78F60);
  sub_49CB0();

  sub_7EA4();

  return v2();
}

uint64_t sub_48674()
{
  sub_273D0();
  sub_AEF4(*(v0 + 408), &unk_A6CC0, &qword_78F60);
  sub_49CB0();

  sub_7EA4();

  return v1();
}

uint64_t sub_48704()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 472);
  v5 = *(v0 + 432);
  v6 = *(v0 + 344);
  v7 = *(v0 + 336);
  *(v0 + 80) = *(v0 + 448);
  *(v0 + 96) = v1;
  *(v0 + 104) = v4;
  *(v0 + 112) = *(v0 + 488);
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  sub_71F40();
  v8 = swift_task_alloc();
  v8[2] = *(v7 + 16);
  v8[3] = *(v7 + 24);
  v8[4] = v6;
  sub_72530();

  sub_72240();
  swift_allocObject();
  *(v0 + 544) = sub_72230();
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v9;
  v11 = *(v0 + 128);
  *(v0 + 48) = v10;
  *(v0 + 64) = v11;
  *(v0 + 272) = &type metadata for HealthUIPluginModel;
  *(v0 + 280) = sub_49AE0();
  v12 = swift_allocObject();
  *(v0 + 248) = v12;
  sub_49B84(v0 + 16, v12 + 16);
  sub_506C(&unk_A63F0, &unk_760C0);
  v13 = swift_allocObject();
  *(v0 + 552) = v13;
  *(v13 + 16) = xmmword_752C0;
  *(v13 + 32) = v5;
  sub_49BE0(v0 + 80, v0 + 144);
  v19 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v14 = v5;
  v15 = swift_task_alloc();
  *(v0 + 560) = v15;
  *v15 = v0;
  v15[1] = sub_48924;
  v16 = *(v0 + 376);
  v17 = *(v0 + 320);

  return v19(v17, v0 + 248, v13, v16);
}

uint64_t sub_48924()
{
  sub_273D0();
  sub_B0BC();
  v2 = v1;
  sub_44428();
  *v3 = v2;
  v4 = *v0;
  sub_B044();
  *v5 = v4;

  sub_AE38((v2 + 248));
  sub_7F10();

  return _swift_task_switch(v6);
}

uint64_t sub_48A4C()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);

  sub_49C3C(v0 + 80);
  (*(v3 + 8))(v2, v4);
  sub_AEF4(v1, &unk_A6CC0, &qword_78F60);

  sub_7EA4();

  return v5();
}

uint64_t sub_48B20()
{
  sub_273D0();
  v1 = *(v0 + 408);

  sub_AEF4(v1, &unk_A6CC0, &qword_78F60);
  sub_49CB0();

  sub_7EA4();

  return v2();
}

uint64_t sub_48BBC()
{
  v1 = [v0 dictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v8 = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:&v8];
  v4 = v8;
  if (!v3)
  {
    v6 = v4;
    sub_714C0();

    swift_willThrow();

    return 0;
  }

  v5 = sub_71510();

  return v5;
}

uint64_t sub_48CC8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  sub_48DC0(&v10 - v6);
  v8 = sub_721F0();
  sub_7CC4(v7, 0, 1, v8);
  sub_72550();
  sub_7C78(a2, a2[3]);
  sub_71ED0();
  sub_72540();
  return sub_72570();
}

uint64_t sub_48DC0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_71550();
  v42 = *(v1 - 8);
  v43 = v1;
  __chkstk_darwin(v1);
  v39 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_506C(&qword_A6AE0, qword_78F70);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v4;
  v37 = sub_729A0();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_72B80();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_72A30();
  v36 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_72A00();
  __chkstk_darwin(v15 - 8);
  v16 = sub_72AB0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  sub_721E0();
  sub_72AA0();
  sub_729F0();
  sub_72A90();
  sub_72A20();
  v23 = *(v17 + 16);
  v40 = v16;
  v23(v20, v22, v16);
  v24 = v9;
  v25 = v36;
  sub_72A10();
  sub_72B70();
  (*(v25 + 16))(v12, v14, v24);
  v26 = v37;
  sub_72B50();
  v27 = v38;
  v28 = v39;
  sub_71540();
  sub_72BF0();
  (*(v42 + 8))(v28, v43);
  if (sub_5124(v27, 1, v26) == 1)
  {
    sub_72990();
    if (sub_5124(v27, 1, v26) != 1)
    {
      sub_AEF4(v27, &qword_A6AE0, qword_78F70);
    }
  }

  else
  {
    (*(v35 + 32))(v41, v27, v26);
  }

  sub_72B40();
  sub_506C(&qword_A4FC0, &qword_76600);
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_74B40;
  v31 = v30 + v29;
  v32 = v44;
  (*(v6 + 16))(v31, v8, v44);
  sub_72160();
  (*(v6 + 8))(v8, v32);
  (*(v25 + 8))(v14, v24);
  return (*(v17 + 8))(v22, v40);
}

uint64_t sub_49360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_4727C();
}

uint64_t sub_49400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCConfirmationRejectedResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_494CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeTCCCancelledResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_49598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_ACC4;

  return ClientHandledRequestTCCAcceptanceFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_49674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B014;

  return sub_47DBC();
}

uint64_t sub_49724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnEmptyParse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_497F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makeRepromptOnLowConfidence(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_498BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makePromptForDeviceUnlock(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_49988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_B014;

  return RequestTCCAcceptanceFlowStrategyAsync.makeHandoffForAuthenticationResponse(app:intent:)(a1, a2, a3, a4, a5);
}

uint64_t sub_49A7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_49AE0()
{
  result = qword_A6AD8;
  if (!qword_A6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6AD8);
  }

  return result;
}

uint64_t sub_49B34()
{
  sub_49A7C(*(v0 + 16), *(v0 + 24));

  sub_49A7C(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_49C90(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_49CB0()
{
}

uint64_t sub_49CCC(uint64_t a1)
{

  return sub_7CC4(a1, 0, 1, v1);
}

uint64_t type metadata accessor for HealthWorkoutPauseCATs(uint64_t a1)
{
  result = qword_A6AE8;
  if (!qword_A6AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_49DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A3F98, qword_75450);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_74F60;
  *(v10 + 32) = 1953459315;
  *(v10 + 40) = 0xE400000000000000;
  sub_5AEC(a1, v9, &qword_A3F98, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v9, 1, v11) == 1)
  {
    sub_5B50(v9, &qword_A3F98, qword_75450);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    sub_5BAC((v10 + 48));
    sub_5C0C();
    (*(v12 + 32))();
  }

  *(v10 + 80) = 0x4E74756F6B726F77;
  *(v10 + 88) = 0xEB00000000656D61;
  sub_5AEC(a2, v7, &qword_A3F98, qword_75450);
  if (sub_5124(v7, 1, v11) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    sub_5BAC((v10 + 96));
    sub_5C0C();
    (*(v13 + 32))();
  }

  sub_732A0();
}

uint64_t sub_4A090(uint64_t a1)
{
  v2 = sub_506C(&qword_A3F98, qword_75450);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_74B40;
  *(v5 + 32) = 0x656D614E707061;
  *(v5 + 40) = 0xE700000000000000;
  sub_5AEC(a1, v4, &qword_A3F98, qword_75450);
  v6 = sub_73350();
  if (sub_5124(v4, 1, v6) == 1)
  {
    sub_5B50(v4, &qword_A3F98, qword_75450);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v6;
    sub_5BAC((v5 + 48));
    sub_5C0C();
    (*(v7 + 32))();
  }

  sub_732A0();
}

uint64_t sub_4A280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_73390();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_506C(&qword_A3F90, &unk_74FC0);
  __chkstk_darwin(v9 - 8);
  sub_5AEC(a1, &v13 - v10, &qword_A3F90, &unk_74FC0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_73290();
  (*(v6 + 8))(a2, v5);
  sub_5B50(a1, &qword_A3F90, &unk_74FC0);
  return v11;
}

void sub_4A414()
{
  sub_11784();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_73720();
  sub_5394();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_C2A4();
  v13 = v12 - v11;
  if (!v4)
  {
    v25 = sub_29A54();
    sub_506C(&qword_A4528, &qword_75860);
    v6 = sub_737A0();
    v4 = v14;
  }

  *(v2 + 16) = v6;
  *(v2 + 24) = v4;
  v15 = sub_736E0();
  sub_7EEC(v15, &v25);
  (*(v9 + 16))(v13, v15, v7);

  v16 = sub_73710();
  v17 = sub_73970();

  if (os_log_type_enabled(v16, v17))
  {
    sub_221D8();
    v18 = sub_4C744();
    v24 = v18;
    *v1 = 136315138;
    v19 = *(v2 + 16);
    v20 = *(v2 + 24);

    v21 = sub_19144(v19, v20, &v24);

    *(v1 + 4) = v21;
    sub_4C7D0(&dword_0, v22, v23, "Starting to resolve apps for %s synchronously");
    sub_AE38(v18);
    sub_7EBC(v18);
    sub_4C70C();
  }

  (*(v9 + 8))(v13, v7);
  sub_11754();
}

void sub_4A5E4()
{
  sub_11784();
  v105 = v0;
  v107 = v1;
  v103 = sub_731F0();
  sub_5394();
  v102 = v2;
  __chkstk_darwin(v3);
  sub_C2A4();
  sub_3E430(v5 - v4);
  v6 = sub_72830();
  sub_5394();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_C2A4();
  v12 = v11 - v10;
  v13 = sub_73720();
  sub_5394();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_198CC();
  sub_3E420();
  __chkstk_darwin(v17);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v18);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v19);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v20);
  sub_3E4E4();
  sub_3E420();
  __chkstk_darwin(v21);
  v23 = v101 - v22;
  v24 = sub_736E0();
  sub_7EEC(v24, &v118);
  v25 = v15;
  v26 = v15 + 16;
  v27 = *(v15 + 16);
  v28 = v24;
  v29 = v13;
  v110 = v26;
  v109 = v27;
  v27(v23, v24, v13);
  v30 = sub_73710();
  v31 = sub_73970();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_22324();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "Begin app disambiguation resolveApp", v32, 2u);
    sub_4C728();
  }

  v111 = *(v25 + 8);
  v33 = v13;
  v108 = v25 + 8;
  v111(v23, v13);
  sub_727E0();
  sub_DDA8(v12);
  v35 = v34;
  v36 = *(v8 + 8);
  v37 = v36(v12, v6);
  if (v35)
  {
    sub_4C6F0(v37, v115);
    v38 = v106;
    v109(v106, v28, v29);

    v39 = sub_73710();
    v40 = sub_73970();

    if (os_log_type_enabled(v39, v40))
    {
      sub_221D8();
      v41 = sub_4C744();
      v117[0] = v41;
      *v12 = 136315138;
      v116[0] = v35;
      sub_733D0();
      sub_4C668();
      sub_4C608(v42, 255, v43, &protocol conformance descriptor for App);
      v44 = sub_73DA0();
      v46 = sub_19144(v44, v45, v117);

      *(v12 + 4) = v46;
      _os_log_impl(&dword_0, v39, v40, "Found app in intent, using that (%s)", v12, 0xCu);
      sub_AE38(v41);
      sub_7EBC(v41);
      sub_4C70C();
    }

    v111(v38, v33);
    sub_72300();
    sub_722F0();
  }

  else
  {
    sub_727E0();
    sub_ED34(v12);
    v48 = v47;
    v50 = v49;
    v51 = v36(v12, v6);
    sub_4C6F0(v51, v117);
    v52 = v104;
    sub_4C650();
    v53();

    v54 = v33;
    v55 = sub_73710();
    v56 = sub_73970();

    v57 = os_log_type_enabled(v55, v56);
    v107 = v48;
    if (v57)
    {
      sub_221D8();
      v58 = sub_4C744();
      v116[0] = v58;
      *v12 = 136315138;
      v115[0] = v48;
      v115[1] = v50;
      sub_506C(&qword_A6D00, &unk_75D30);
      v59 = sub_73A80();
      v61 = sub_19144(v59, v60, v116);

      *(v12 + 4) = v61;
      _os_log_impl(&dword_0, v55, v56, "Got a modality: %s", v12, 0xCu);
      sub_AE38(v58);
      sub_7EBC(v58);
      sub_4C70C();
    }

    v62 = v108;
    v111(v52, v54);

    sub_4C4BC(&off_97DB8);
    v63 = sub_73400();

    sub_4C6F0(v64, v116);
    sub_4C650();
    v65();

    v66 = sub_73710();
    v67 = sub_73970();
    if (sub_4C760(v67))
    {
      v68 = sub_221D8();
      *v68 = 134217984;
      *(v68 + 4) = sub_FB90(v63);

      sub_4C6A8();
      _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
      sub_4C728();
    }

    else
    {
    }

    sub_4C7C4();
    v74();
    sub_72840();
    sub_7C78(v115, v115[3]);
    sub_4C698();
    if (sub_71EF0())
    {
      v75 = v101[1];
      sub_73460();
      v76 = sub_73430();
      v77 = defaultWorkoutApp(for:workoutName:)(v75, v76);
      v78 = (*(v102 + 8))(v75, v103);
      sub_4C6F0(v78, v114);
      sub_4C650();
      v79();

      v80 = sub_73710();
      v81 = sub_73970();

      if (os_log_type_enabled(v80, v81))
      {
        sub_221D8();
        v82 = sub_4C744();
        v112 = v77;
        v113 = v82;
        *v62 = 136315138;
        sub_733D0();
        sub_4C668();
        sub_4C608(v83, 255, v84, &protocol conformance descriptor for App);
        v85 = sub_73DA0();
        v87 = sub_19144(v85, v86, &v113);

        *(v62 + 4) = v87;
        sub_4C7D0(&dword_0, v88, v89, "Picked the default app for this:  %s");
        sub_AE38(v82);
        sub_7EBC(v82);
        sub_4C70C();
      }

      sub_4C7C4();
      v90();
      sub_1DEF8(v77);
    }

    else
    {

      sub_4C6F0(v91, v114);
      sub_4C650();
      v92();
      v93 = sub_73710();
      v94 = sub_73970();
      if (sub_4C760(v94))
      {
        *sub_22324() = 0;
        sub_4C6A8();
        _os_log_impl(v95, v96, v97, v98, v99, 2u);
        sub_4C728();
      }

      sub_4C7C4();
      v100();
      sub_1DB18();
    }

    sub_AE38(v115);
  }

  sub_11754();
}

uint64_t sub_4AF34(uint64_t a1, void (*a2)(void *))
{
  sub_72090();
  swift_allocObject();
  v3 = sub_4C6B8();
  sub_4C680();
  sub_4C608(v4, 255, v5, &protocol conformance descriptor for CommandFailure);
  v6 = swift_allocError();
  *v7 = v3;
  v9[0] = v6;
  v10 = 1;
  a2(v9);
  return sub_AEF4(v9, &qword_A4810, &unk_760A0);
}

void sub_4AFFC()
{
  sub_11784();
  v1 = v0;
  v2 = sub_73720();
  sub_5394();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_198CC();
  v54 = (v6 - v7);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_72830();
  sub_5394();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_C2A4();
  v17 = v16 - v15;
  v57 = v1;
  sub_727E0();
  v56 = v11;
  v55 = sub_737A0();
  v19 = v18;
  v20 = sub_736E0();
  sub_7EEC(v20, &v60);
  v52 = *(v4 + 16);
  v53 = v20;
  v52(v10, v20, v2);

  v21 = sub_73710();
  LOBYTE(v11) = sub_73970();

  if (os_log_type_enabled(v21, v11))
  {
    sub_221D8();
    v51 = v2;
    v22 = sub_4C794();
    v50 = v4;
    v23 = v22;
    v59[0] = v22;
    *v2 = 136315138;
    v24 = sub_19144(v55, v19, v59);

    *(v2 + 4) = v24;
    sub_4C6A8();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_AE38(v23);
    v30 = v23;
    v4 = v50;
    sub_7EBC(v30);
    v31 = v2;
    v2 = v51;
    sub_7EBC(v31);
  }

  else
  {
  }

  v32 = *(v4 + 8);
  v32(v10, v2);
  sub_727E0();
  sub_DDA8(v17);
  v34 = v33;
  (*(v13 + 8))(v17, v56);
  if (v34)
  {
    sub_725B0();
    sub_725A0();
  }

  else
  {
    sub_727E0();
    v35 = sub_737A0();
    v37 = v36;
    v38 = v53;
    sub_7EEC(v53, v59);
    v39 = v54;
    v52(v54, v38, v2);
    v40 = sub_73710();
    v41 = sub_73980();
    if (sub_4C760(v41))
    {
      sub_221D8();
      v42 = sub_4C794();
      v58 = v42;
      *v2 = 136315138;
      v43 = sub_19144(v35, v37, &v58);

      *(v2 + 4) = v43;
      sub_4C6A8();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      sub_AE38(v42);
      sub_4C70C();
      sub_4C728();
    }

    else
    {
    }

    v32(v39, v2);
    sub_725B0();
    sub_72590();
  }

  sub_11754();
}

void sub_4B3DC()
{
  sub_11784();
  v106 = v0;
  v107 = v1;
  v2 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v2 - 8);
  sub_3E430(&v88 - v3);
  v94 = sub_72270();
  sub_5394();
  v93 = v4;
  __chkstk_darwin(v5);
  sub_C2A4();
  sub_3E430(v7 - v6);
  v8 = sub_72890();
  sub_5394();
  v96 = v9;
  __chkstk_darwin(v10);
  sub_C2A4();
  sub_3E430(v12 - v11);
  v99 = sub_73390();
  sub_5394();
  __chkstk_darwin(v13);
  sub_C2A4();
  v100 = (v15 - v14);
  v101 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v101);
  sub_198CC();
  sub_3E420();
  __chkstk_darwin(v16);
  v110 = (&v88 - v17);
  v18 = sub_71560();
  sub_5394();
  v98 = v19;
  __chkstk_darwin(v20);
  sub_C2A4();
  sub_3E430(v22 - v21);
  v23 = sub_73720();
  sub_5394();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_198CC();
  v29 = (v27 - v28);
  v31 = __chkstk_darwin(v30);
  v33 = &v88 - v32;
  __chkstk_darwin(v31);
  v35 = &v88 - v34;
  v36 = sub_736E0();
  sub_7EEC(v36, &v120);
  v37 = *(v25 + 16);
  v105 = v36;
  v111 = v23;
  v104 = v25 + 16;
  v103 = v37;
  v37(v35, v36, v23);

  v38 = sub_73710();
  v39 = sub_73970();

  v40 = os_log_type_enabled(v38, v39);
  v109 = v25;
  v92 = v33;
  v90 = v29;
  if (v40)
  {
    sub_221D8();
    v41 = sub_4C794();
    v89 = v8;
    v42 = v41;
    v114[0] = v41;
    *v25 = 136315138;
    sub_733D0();
    v43 = sub_73880();
    v45 = sub_19144(v43, v44, v114);

    *(v25 + 4) = v45;
    _os_log_impl(&dword_0, v38, v39, "Making disambiguation prompt for apps: %s", v25, 0xCu);
    sub_AE38(v42);
    v46 = v42;
    v8 = v89;
    sub_7EBC(v46);
    sub_4C728();

    v47 = *(v109 + 8);
  }

  else
  {

    v47 = *(v25 + 8);
  }

  v47(v35, v111);
  sub_72840();
  sub_7C78(v114, v115);
  v48 = v97;
  sub_4C698();
  sub_71E90();
  v49 = sub_72390();
  (*(v98 + 8))(v48, v18);
  sub_AE38(v114);
  sub_72840();
  sub_72840();
  sub_7C78(v118, v119);
  sub_4C698();
  sub_71EE0();
  sub_723A0();
  sub_AE38(v114);
  sub_AE38(v118);
  sub_73280();
  v50 = sub_73270();
  sub_506C(&qword_A4818, &unk_75B90);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_74B40;
  sub_73380();
  v114[0] = v51;
  sub_4C608(&unk_A6CE0, 255, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
  sub_506C(&qword_A4820, qword_77FF0);
  sub_14D40();
  v52 = v100;
  sub_73B10();
  type metadata accessor for HealthCATWrapper(0);
  swift_allocObject();
  sub_4F648(v50, v52);
  v53 = v110;
  sub_4F974();

  v54 = v53;
  v55 = v102;
  sub_14DA4(v54, v102);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v114[0] = *v55;
    sub_506C(&qword_A4828, qword_75BA0);
    swift_willThrowTypedImpl();
    sub_7EEC(v105, v118);
    v56 = v90;
    v57 = v111;
    sub_4C7B0();
    v58();
    v59 = sub_73710();
    v60 = sub_73980();
    if (sub_4C760(v60))
    {
      v61 = sub_22324();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v50, "Something failed with the clarification views", v61, 2u);
      sub_7EBC(v61);
    }

    v47(v56, v57);
    sub_72090();
    swift_allocObject();
    v62 = sub_4C6B8();
    sub_4C680();
    sub_4C608(v63, 255, v64, &protocol conformance descriptor for CommandFailure);
    v65 = swift_allocError();
    *v66 = v62;
    v114[0] = v65;
    v117 = 1;
    v67 = sub_4C77C();
    v68(v67);

    sub_AEF4(v114, &qword_A4810, &unk_760A0);
    v69 = &unk_A6CD0;
    v70 = &unk_75B80;
    v71 = v110;
  }

  else
  {
    v100 = v47;
    v101 = v49;
    v72 = v93;
    v73 = v91;
    v74 = v94;
    (*(v93 + 32))(v91, v55, v94);
    sub_72840();
    sub_72840();
    sub_7C78(v118, v119);
    sub_4C698();
    sub_71ED0();
    v75 = sub_721F0();
    v76 = v95;
    sub_7CC4(v95, 1, 1, v75);
    v113 = 0;
    memset(v112, 0, sizeof(v112));
    sub_72100();

    sub_AEF4(v112, &unk_A6D20, &qword_76D80);
    sub_AEF4(v76, &qword_A4050, &unk_75290);
    sub_AE38(v114);
    (*(v72 + 8))(v73, v74);
    sub_AE38(v118);
    sub_7EEC(v105, v118);
    v77 = v92;
    v78 = v111;
    sub_4C7B0();
    v79();
    v80 = sub_73710();
    v81 = sub_73970();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = sub_22324();
      *v82 = 0;
      _os_log_impl(&dword_0, v80, v81, "Building dialog and sending success", v82, 2u);
      sub_7EBC(v82);
    }

    v100(v77, v78);
    v115 = v8;
    v116 = &protocol witness table for AceOutput;
    v83 = sub_5BAC(v114);
    v84 = v96;
    v85 = v108;
    (*(v96 + 16))(v83, v108, v8);
    v117 = 0;
    v86 = sub_4C77C();
    v87(v86);

    (*(v84 + 8))(v85, v8);
    sub_AEF4(v110, &unk_A6CD0, &unk_75B80);
    v69 = &qword_A4810;
    v70 = &unk_760A0;
    v71 = v114;
  }

  sub_AEF4(v71, v69, v70);
  sub_11754();
}

uint64_t sub_4BF04()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_4BF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_14A58;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionSuccessfulResponse(app:)(a1, a2, a3, a4);
}

uint64_t sub_4C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_14EC4;

  return AppResolutionOnDeviceFlowStrategy.makeAppResolutionUnsuccessfulResponse(reason:)(a1, a2, a3, a4);
}

uint64_t sub_4C118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_14EC4;

  return AppResolutionOnDeviceFlowStrategy.makeErrorOutput(error:)(a1, a2, a3, a4);
}

void *sub_4C2D8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_4C2FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_4C32C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_506C(qword_A6C30, &qword_79158);
  result = sub_73B40();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_73E40();

    sub_73810();
    result = sub_73E60();
    v10 = ~(-1 << v3[32]);
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 6) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_73DB0() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 6) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 2);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 2) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_4C4BC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_14;
  }

  sub_506C(&qword_A6C28, &qword_79150);
  result = sub_73B40();
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
    v7 = *(a1 + 32 + 8 * v5++);
    sub_73E40();
    sub_73E50(v7);
    result = sub_73E60();
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

      if (*(*(v3 + 6) + 8 * v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 6) + 8 * v9) = v7;
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

uint64_t sub_4C608(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_4C6B8()
{

  return sub_72080();
}

uint64_t sub_4C6F0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_4C70C()
{
}

uint64_t sub_4C728()
{
}

uint64_t sub_4C744()
{

  return swift_slowAlloc();
}

BOOL sub_4C760(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_4C794()
{

  return swift_slowAlloc();
}

void sub_4C7D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_4C850(uint64_t a1)
{
  type metadata accessor for HealthNLIntent(0);
  sub_1168C();
  __chkstk_darwin(v2);
  sub_C2A4();
  v5 = v4 - v3;
  v6 = sub_731D0();
  sub_5394();
  v43 = v7;
  __chkstk_darwin(v8);
  sub_C2A4();
  v11 = v10 - v9;
  sub_72830();
  sub_5394();
  v45 = v13;
  v46 = v12;
  __chkstk_darwin(v12);
  sub_C2A4();
  v44 = v15 - v14;
  v16 = sub_727F0();
  sub_5394();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_C2A4();
  v22 = v21 - v20;
  v23 = sub_73970();
  v42 = sub_734D0();
  v24 = *v42;
  (*(v18 + 16))(v22, a1, v16);
  v25 = v23;
  if (os_log_type_enabled(v24, v23))
  {
    v39 = v24;
    v26 = swift_slowAlloc();
    v40 = v6;
    v27 = swift_slowAlloc();
    v47 = v27;
    *v26 = 136315138;
    sub_4F5B4(&unk_A6D40, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v28 = sub_73DA0();
    v29 = v11;
    v30 = v5;
    v32 = v31;
    (*(v18 + 8))(v22, v16);
    v33 = sub_19144(v28, v32, &v47);
    v5 = v30;
    v11 = v29;

    *(v26 + 4) = v33;
    _os_log_impl(&dword_0, v39, v25, "HealthTCC# received input: %s", v26, 0xCu);
    sub_AE38(v27);
    v6 = v40;
  }

  else
  {
    (*(v18 + 8))(v22, v16);
  }

  sub_727E0();
  if ((*(v45 + 88))(v44, v46) == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v45 + 96))(v44, v46);
    (*(v43 + 32))(v11, v44, v6);
    (*(v43 + 16))(v5, v11, v6);
    if (qword_A3930 != -1)
    {
      swift_once();
    }

    sub_4F5B4(&qword_A42E8, type metadata accessor for HealthNLIntent, &unk_7A328);
    sub_72E30();
    switch(v48)
    {
      case 1:
        *(v41 + 72) = 0;
        goto LABEL_13;
      case 2:
        sub_72050();
        break;
      case 3:
        v37 = sub_73970();
        v38 = *v42;
        sub_73620(v37, &dword_0, v38, "HealthTCC# NLv3 parse without confirmation -> ignore", 52, 2, _swiftEmptyArrayStorage);

        sub_72070();
        break;
      default:
        *(v41 + 72) = 1;
LABEL_13:
        sub_72060();
        break;
    }

    sub_BFD8(v5);
    return (*(v43 + 8))(v11, v6);
  }

  else
  {
    v34 = sub_73970();
    v35 = *v42;
    sub_73620(v34, &dword_0, v35, "HealthTCC# Unknown parse -> ignore", 34, 2, _swiftEmptyArrayStorage);

    sub_72070();
    return (*(v45 + 8))(v44, v46);
  }
}

uint64_t sub_4CDF8(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_506C(&qword_A54E8, &qword_76BB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  sub_506C(&unk_A6D30, &unk_79350);
  sub_1168C();
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = *(v2 + 72);
  v11 = sub_72340();
  sub_1168C();
  v13 = &enum case for ConfirmationResponse.confirmed(_:);
  if (!v10)
  {
    v13 = &enum case for ConfirmationResponse.rejected(_:);
  }

  (*(v12 + 104))(v6, *v13, v11);
  sub_72340();
  sub_7CC4(v6, 0, 1, v11);
  sub_727D0();
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_10364(v9, &unk_A6D30, &unk_79350);
}

uint64_t sub_4CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_721F0();
  sub_5394();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_C2A4();
  v13 = v12 - v11;
  sub_379A4();
  sub_4D4B8(a1, v13, a3, a4);
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_4D078(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;

  sub_72290();
}

uint64_t sub_4D104(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4)
{
  v25 = a4;
  v28 = a3;
  v29 = a2;
  v5 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_72890();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_72270();
  v11 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_506C(&unk_A6CD0, &unk_75B80);
  __chkstk_darwin(v14);
  v16 = (&v24 - v15);
  sub_4F008(a1, &v24 - v15, &unk_A6CD0, &unk_75B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v30 = *v16;
    v33 = 1;
    swift_errorRetain();
    v29(&v30);
  }

  else
  {
    v17 = v11;
    v18 = *(v11 + 32);
    v19 = v26;
    v18(v13, v16, v26);
    sub_7C78(v25 + 2, v25[5]);
    sub_71ED0();
    v20 = sub_721F0();
    sub_7CC4(v7, 1, 1, v20);
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_720E0();
    sub_10364(&v30, &unk_A6D20, &qword_76D80);
    sub_10364(v7, &qword_A4050, &unk_75290);
    *(&v31 + 1) = v8;
    v32 = &protocol witness table for AceOutput;
    v21 = sub_5BAC(&v30);
    v22 = v27;
    (*(v27 + 16))(v21, v10, v8);
    v33 = 0;
    v29(&v30);
    (*(v22 + 8))(v10, v8);
    (*(v17 + 8))(v13, v19);
  }

  return sub_10364(&v30, &qword_A4810, &unk_760A0);
}

uint64_t sub_4D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a3;
  v47 = a4;
  v42 = a2;
  v44 = *v4;
  v43 = sub_721F0();
  sub_5394();
  v8 = v7;
  __chkstk_darwin(v9);
  v40 = v10;
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_506C(&unk_A6CC0, &qword_78F60);
  sub_1168C();
  __chkstk_darwin(v11);
  v39 = &v37 - v12;
  v38 = sub_71560();
  sub_5394();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_C2A4();
  v18 = v17 - v16;
  v45 = swift_allocBox();
  v20 = v19;
  v37 = sub_733F0();
  sub_7CC4(v20, 1, 1, v37);
  sub_723E0();
  swift_allocObject();

  sub_723D0();
  sub_7C78(v5 + 2, v5[5]);
  sub_71E90();
  sub_723C0();
  v22 = v21;
  v23 = v20;

  v24 = v18;
  v25 = a1;
  v26 = v39;
  (*(v14 + 8))(v24, v38);
  if (v22)
  {
    sub_733C0();
    sub_733E0();
    sub_7CC4(v26, 0, 1, v37);
    sub_4EF98(v26, v20);
  }

  v27 = v41;
  v28 = v43;
  (*(v8 + 16))(v41, v42, v43);
  v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v30 = (v40 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = *(v44 + 80);
  *(v31 + 24) = v5;
  (*(v8 + 32))(v31 + v29, v27, v28);
  v32 = (v31 + v30);
  v34 = v46;
  v33 = v47;
  *v32 = v46;
  v32[1] = v33;
  sub_4F008(v23, v26, &unk_A6CC0, &qword_78F60);
  sub_21FC0((v5 + 2), v48);
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v33;
  v35[4] = v25;
  v35[5] = v5;
  v35[6] = sub_4EE78;
  v35[7] = v31;
  v35[8] = v45;
  swift_retain_n();
  swift_retain_n();

  sub_72000();

  sub_10364(v48, &qword_A6AD0, &qword_78F68);
  sub_10364(v26, &unk_A6CC0, &qword_78F60);
}

uint64_t sub_4D8E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v24 = a6;
  v25 = a5;
  v21[1] = a1;
  v22 = a4;
  v8 = sub_506C(&qword_A4050, &unk_75290);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  v23 = sub_72890();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7C78(a3 + 2, a3[5]);
  sub_71ED0();
  sub_506C(&unk_A63F0, &unk_760C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_752C0;
  *(v14 + 32) = a2;
  sub_7C78(a3 + 2, a3[5]);
  v15 = a2;
  v16 = sub_71F00();
  sub_72260((v16 & 1) == 0);
  v17 = sub_721F0();
  (*(*(v17 - 8) + 16))(v10, v22, v17);
  sub_7CC4(v10, 0, 1, v17);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_720F0();

  sub_10364(&v26, &unk_A6D20, &qword_76D80);
  sub_10364(v10, &qword_A4050, &unk_75290);
  v18 = v23;
  *(&v27 + 1) = v23;
  v28 = &protocol witness table for AceOutput;
  v19 = sub_5BAC(&v26);
  (*(v11 + 16))(v19, v13, v18);
  v29 = 0;
  v25(&v26);
  (*(v11 + 8))(v13, v18);
  return sub_10364(&v26, &qword_A4810, &unk_760A0);
}

uint64_t sub_4DBD4(uint64_t a1, void (*a2)(void *), uint64_t a3, void *a4, void *a5, void (*a6)(char *, id), uint64_t a7, uint64_t a8)
{
  v91 = a7;
  v90 = a6;
  v89 = a5;
  v95 = a4;
  v94 = a3;
  v93 = a2;
  v10 = sub_506C(&unk_A6CC0, &qword_78F60);
  __chkstk_darwin(v10 - 8);
  v92 = &v73 - v11;
  v12 = sub_73390();
  __chkstk_darwin(v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_72270();
  v96 = *(v97 - 8);
  v15 = __chkstk_darwin(v97);
  v84 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v16;
  __chkstk_darwin(v15);
  v98 = &v73 - v17;
  v18 = sub_506C(&unk_A6CD0, &unk_75B80);
  v19 = __chkstk_darwin(v18);
  v86 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v73 - v22;
  __chkstk_darwin(v21);
  v25 = &v73 - v24;
  v85 = a8;
  v26 = swift_projectBox();
  sub_4F008(a1, v25, &unk_A6CD0, &unk_75B80);
  v87 = v18;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v99[0] = *v25;
    v100 = 1;
    swift_errorRetain();
    v93(v99);

    return sub_10364(v99, &qword_A4810, &unk_760A0);
  }

  else
  {
    v74 = v26;
    v28 = *(v96 + 32);
    v76 = v96 + 32;
    v75 = v28;
    v28(v98, v25, v97);
    sub_73280();
    v29 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_74B40;
    sub_73380();
    v99[0] = v30;
    sub_4F5B4(&unk_A6CE0, &type metadata accessor for CATOption, &protocol conformance descriptor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    type metadata accessor for HealthCATWrapper(0);
    swift_allocObject();
    v88 = sub_4F648(v29, v14);
    v81 = sub_506C(&qword_A6CF8, &qword_79338);
    inited = swift_initStackObject();
    v80 = xmmword_74F60;
    *(inited + 16) = xmmword_74F60;
    v79 = 0x800000000007E0D0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000000007E0D0;
    v78 = xmmword_79170;
    *(inited + 48) = xmmword_79160;
    *(inited + 64) = xmmword_79170;
    *(inited + 80) = sub_733B0();
    *(inited + 88) = v32;
    sub_506C(&qword_A6D00, &unk_75D30);
    sub_4F068();
    v33 = sub_73750();
    v34 = sub_3B410(v33);
    v36 = v35;

    v37 = sub_3B254(v34, v36);

    sub_4F87C();
    v38 = sub_73E70();
    v40 = v39;
    sub_10364(v23, &unk_A6CD0, &unk_75B80);
    if (v40)
    {
      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    if (!v40)
    {
      v40 = 0xE000000000000000;
    }

    sub_506C(&unk_A63F0, &unk_760C0);
    v42 = swift_allocObject();
    v77 = xmmword_752C0;
    *(v42 + 16) = xmmword_752C0;
    *(v42 + 32) = v37;
    v43 = objc_allocWithZone(SAUIConfirmationOption);
    v82 = v37;
    v44 = [v43 init];
    sub_4F0E4(v41, v40, v44);

    sub_4F13C(v42, v44);
    v45 = swift_initStackObject();
    *(v45 + 16) = v80;
    *(v45 + 32) = 0xD000000000000012;
    *(v45 + 40) = v79;
    v46 = v78;
    *(v45 + 48) = xmmword_79180;
    *(v45 + 64) = v46;
    *(v45 + 80) = sub_733B0();
    *(v45 + 88) = v47;
    v48 = sub_73750();
    v49 = sub_3B410(v48);
    v51 = v50;

    v52 = sub_3B254(v49, v51);

    v53 = v86;
    sub_4F8F8();
    v54 = sub_73E70();
    v56 = v55;
    sub_10364(v53, &unk_A6CD0, &unk_75B80);
    if (!v56)
    {
      v54 = 0;
      v56 = 0xE000000000000000;
    }

    v57 = swift_allocObject();
    *(v57 + 16) = v77;
    *(v57 + 32) = v52;
    v58 = objc_allocWithZone(SAUIConfirmationOption);
    v59 = v52;
    v60 = [v58 init];
    sub_4F0E4(v54, v56, v60);

    sub_4F13C(v57, v60);
    v95 = v44;
    v61 = sub_3B574(v44, v60, 0);
    sub_7C78(v89 + 2, v89[5]);
    if (sub_71F00())
    {
      v62 = v74;
      swift_beginAccess();
      sub_4F008(v62, v92, &unk_A6CC0, &qword_78F60);
      v63 = v96;
      v64 = v84;
      v65 = v97;
      (*(v96 + 16))(v84, v98, v97);
      v66 = (*(v63 + 80) + 64) & ~*(v63 + 80);
      v67 = swift_allocObject();
      v68 = v94;
      *(v67 + 2) = v93;
      *(v67 + 3) = v68;
      v93 = v59;
      *(v67 + 4) = v85;
      *(v67 + 5) = v61;
      v69 = v91;
      *(v67 + 6) = v90;
      *(v67 + 7) = v69;
      v75(&v67[v66], v64, v65);

      v70 = v61;

      v71 = v92;
      sub_72020();

      sub_10364(v71, &unk_A6CC0, &qword_78F60);
      return (*(v63 + 8))(v98, v65);
    }

    else
    {
      v72 = v98;
      v90(v98, v61);

      return (*(v96 + 8))(v72, v97);
    }
  }
}

uint64_t sub_4E634(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *), void (*a5)(void *), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a8;
  v36 = a2;
  v37 = a4;
  v14 = sub_72270();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_506C(&unk_A6CC0, &qword_78F60);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - v19;
  if (a3)
  {
    v38[0] = a1;
    v39 = 1;
    swift_errorRetain();
    v37(v38);
    v21 = &qword_A4810;
    v22 = &unk_760A0;
    v23 = v38;
  }

  else
  {
    v24 = a7;
    v34 = a9;
    v25 = swift_projectBox();
    swift_beginAccess();
    sub_4F008(v25, v20, &unk_A6CC0, &qword_78F60);
    (*(v15 + 16))(&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a10, v14);
    v26 = (*(v15 + 80) + 72) & ~*(v15 + 80);
    v27 = swift_allocObject();
    v28 = v36;
    *(v27 + 2) = v37;
    *(v27 + 3) = a5;
    v37 = a5;
    v29 = v24;
    *(v27 + 4) = v24;
    *(v27 + 5) = a1;
    v31 = v34;
    v30 = v35;
    *(v27 + 6) = v28;
    *(v27 + 7) = v30;
    *(v27 + 8) = v31;
    (*(v15 + 32))(&v27[v26], v17, v14);
    sub_4F444(a1, v28, 0);

    v32 = v29;

    sub_72010();

    v23 = v20;
    v21 = &unk_A6CC0;
    v22 = &qword_78F60;
  }

  return sub_10364(v23, v21, v22);
}

uint64_t sub_4E8C0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    v20[0] = a1;
    v21 = 1;
    swift_errorRetain();
    a4(v20);
    return sub_10364(v20, &qword_A4810, &unk_760A0);
  }

  else
  {
    v18 = sub_73790();
    sub_4F454(v18, v19, a6);
    sub_4F4B8(a1, a2, a6);
    sub_4F510(a7, a8, a6);
    return a9(a11, a6);
  }
}

uint64_t sub_4E9AC()
{
  sub_AE38((v0 + 16));

  return v0;
}

uint64_t sub_4E9D4()
{
  sub_4E9AC();

  return _swift_deallocClassInstance(v0, 73, 7);
}

uint64_t sub_4EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for HealthTCCAcceptanceFlowStrategy(0, *(a5 + 80), a3, a4);

  return RequestTCCAcceptanceFlowStrategy.makeRepromptOnEmptyParse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for HealthTCCAcceptanceFlowStrategy(0, *(a5 + 80), a3, a4);

  return RequestTCCAcceptanceFlowStrategy.makeRepromptOnLowConfidence(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for HealthTCCAcceptanceFlowStrategy(0, *(a5 + 80), a3, a4);

  return RequestTCCAcceptanceFlowStrategy.makePromptForDeviceUnlock(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for HealthTCCAcceptanceFlowStrategy(0, *(a5 + 80), a3, a4);

  return RequestTCCAcceptanceFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4EC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for HealthTCCAcceptanceFlowStrategy(0, *(a5 + 80), a3, a4);

  return RequestTCCAcceptanceFlowStrategy.makeHandoffResponseForAuthenticationResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_4ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for HealthTCCAcceptanceFlowStrategy(0, *(a6 + 80), a3, a4);

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_4EDB0()
{
  sub_721F0();
  sub_5394();
  v2 = *(v1 + 80);
  v4 = (*(v3 + 64) + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_4F604();
  v6(v5);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_4EE78(uint64_t a1, void *a2)
{
  v5 = *(sub_721F0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_4D8E0(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_4EF2C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_4EF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&unk_A6CC0, &qword_78F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_4F008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_506C(a3, a4);
  sub_1168C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_4F068()
{
  result = qword_A6D08;
  if (!qword_A6D08)
  {
    sub_D850(&qword_A6D00, &unk_75D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6D08);
  }

  return result;
}

void sub_4F0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setLabel:v4];
}

void sub_4F13C(uint64_t a1, void *a2)
{
  sub_506C(&unk_A6D10, &unk_79340);
  isa = sub_73860().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_4F1BC()
{
  sub_72270();
  sub_5394();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = sub_4F604();
  v6(v5);

  return _swift_deallocObject(v0, ((v2 + 64) & ~v2) + v4, v2 | 7);
}

uint64_t sub_4F284()
{
  sub_4F628();
  sub_4F614();
  return sub_4E634(v3, v2, v0 & 1, v5, v6, v7, v8, v9, v10, v1 + v4);
}

uint64_t sub_4F2FC()
{
  sub_72270();
  sub_5394();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = sub_4F604();
  v6(v5);

  return _swift_deallocObject(v0, ((v2 + 72) & ~v2) + v4, v2 | 7);
}

uint64_t sub_4F3C4()
{
  sub_4F628();
  sub_4F614();
  return sub_4E8C0(v3, v2, v0 & 1, v5, v6, v7, v8, v9, v10, *(v1 + 64), v1 + v4);
}

uint64_t sub_4F444(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

void sub_4F454(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();

  [a3 setStyle:v4];
}

void sub_4F4B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setTitle:v4];
}

void sub_4F510(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setSubtitle:v4];
}

uint64_t sub_4F568()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4F5B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4F628()
{

  return sub_72270();
}

uint64_t sub_4F648(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthCATWrapper(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 16) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v2 + 24) = a1;
  v6 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin16HealthCATWrapper_options;
  sub_73390();
  sub_1168C();
  (*(v7 + 32))(v2 + v6, a2);
  return v2;
}

uint64_t sub_4F6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_73300();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_732F0();
  return sub_10364(v4, &qword_A56E0, qword_79400);
}

uint64_t sub_4F78C(char a1, char a2)
{
  sub_506C(&qword_A4A10, &qword_75D28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74F60;
  *(inited + 32) = 1953459315;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = sub_45428(a1);
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1651664246;
  *(inited + 88) = 0xE400000000000000;
  v6 = sub_5C64(a2);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v6;
  *(inited + 104) = v7;
  sub_73750();
  sub_5092C();
  sub_5094C(25, v8);
}

uint64_t sub_4F87C()
{
  sub_73750();
  sub_5093C();
  sub_5094C(22, v0);
}

uint64_t sub_4F8F8()
{
  sub_73750();
  sub_5093C();
  sub_5094C(21, v0);
}

uint64_t sub_4F974()
{
  sub_73750();
  sub_5092C();
  sub_5094C(31, v0);
}

uint64_t sub_4F9F0()
{
  sub_73750();
  sub_5093C();
  sub_5094C(40, v0);
}

uint64_t sub_4FA6C(uint64_t a1, char a2, char a3)
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77300;
  sub_50964();
  *(v6 + 32) = v7;
  *(v6 + 40) = 0xE700000000000000;

  v8 = sub_72250();
  if (v8 && (v9 = v8, v10 = [v8 displayAppName], v9, v10))
  {
    v11 = sub_73790();
    v13 = v12;

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v11;
    *(inited + 56) = v13;
  }

  else
  {

    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 80) = 1953459315;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_45428(a2);
  *(inited + 104) = v14;
  sub_50984();
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = v15;
  *(inited + 136) = 0xEB00000000646564;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = a3 & 1;
  sub_506C(&qword_A42F0, &qword_77260);
  v16 = sub_73750();
  sub_504B4(v16);

  sub_5092C();
  v17 = sub_50978(39);
  sub_4F6EC(v17, v18, v19);
}

uint64_t sub_4FC14(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_73A00();
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = v4;
  v8 = *&v4;
  v9 = [a2 workoutGoalUnitType];
  if (v9 == &dword_8)
  {
    sub_506C(&qword_A3FA0, qword_74FD0);
    inited = swift_initStackObject();
    v13 = sub_50914(inited, xmmword_74B40);
    v14 = 3600.0;
    goto LABEL_9;
  }

  if (v9 == (&dword_4 + 3))
  {
    sub_506C(&qword_A3FA0, qword_74FD0);
    v12 = swift_initStackObject();
    v13 = sub_50914(v12, xmmword_74B40);
    v14 = 60.0;
LABEL_9:
    v13[4].n128_u64[1] = &type metadata for Double;
    v13[3].n128_f64[0] = v8 * v14;
    goto LABEL_10;
  }

  if (v9 != (&dword_4 + 2))
  {
LABEL_2:
    v6 = 0;
    goto LABEL_11;
  }

  sub_506C(&qword_A3FA0, qword_74FD0);
  v10 = swift_initStackObject();
  v11 = sub_50914(v10, xmmword_74B40);
  v11[4].n128_u64[1] = &type metadata for Double;
  v11[3].n128_u64[0] = v7;
LABEL_10:
  sub_506C(&qword_A42F0, &qword_77260);
  v6 = sub_73750();
LABEL_11:
  sub_506C(&qword_A3FA0, qword_74FD0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_79360;
  *(v16 + 32) = 1953459315;
  *(v16 + 40) = 0xE400000000000000;
  *(v16 + 48) = sub_45428(v3);
  *(v16 + 56) = v17;
  *(v16 + 72) = &type metadata for String;
  *(v16 + 80) = 0x6E6F697461727564;
  *(v16 + 88) = 0xE800000000000000;
  if (v6)
  {
    v18 = sub_506C(&qword_A6F78, "\u07B2");
  }

  else
  {
    v18 = 0;
    *(v16 + 104) = 0;
    *(v16 + 112) = 0;
  }

  *(v16 + 96) = v6;
  *(v16 + 120) = v18;
  *(v16 + 128) = 0x4E74756F6B726F77;
  *(v16 + 136) = 0xEB00000000656D61;
  v19 = [a2 workoutName];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 spokenPhrase];

    v20 = sub_73790();
    v23 = v22;

    v24 = &type metadata for String;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    *(v16 + 160) = 0;
  }

  *(v16 + 144) = v20;
  *(v16 + 152) = v23;
  *(v16 + 168) = v24;
  *(v16 + 176) = 0x657079546C616F67;
  *(v16 + 184) = 0xE800000000000000;
  *(v16 + 192) = sub_3BC54([a2 workoutGoalUnitType]);
  *(v16 + 200) = v25;
  *(v16 + 216) = &type metadata for String;
  *(v16 + 224) = 0x756C61566C616F67;
  *(v16 + 232) = 0xE900000000000065;
  v26 = sub_73A00();
  if (v27)
  {
    *(v16 + 264) = &type metadata for Int;
    *(v16 + 240) = 0;
  }

  else
  {
    v40 = &type metadata for Double;
    *&v39 = v26;
    sub_1970C(&v39, (v16 + 240));
  }

  *(v16 + 272) = 0x6E6F697461636F6CLL;
  *(v16 + 280) = 0xE800000000000000;
  v28 = [a2 workoutLocationType];
  if (v28 == &dword_0 + 2)
  {
    v29 = 0xE600000000000000;
    v30 = 0x726F6F646E69;
    goto LABEL_24;
  }

  if (v28 == &dword_0 + 1)
  {
    v29 = 0xE700000000000000;
    v30 = 0x726F6F6474756FLL;
LABEL_24:
    *(v16 + 312) = &type metadata for String;
    *(v16 + 288) = v30;
    *(v16 + 296) = v29;
    goto LABEL_26;
  }

  *(v16 + 288) = 0u;
  *(v16 + 304) = 0u;
LABEL_26:
  sub_50984();
  *(v16 + 320) = v31;
  *(v16 + 328) = 0xEB00000000646564;
  v32 = sub_739E0();
  if (v32 == 2)
  {
    v33 = 0;
    *(v16 + 336) = 0;
    *(v16 + 344) = 0;
    *(v16 + 352) = 0;
  }

  else
  {
    *(v16 + 336) = v32 & 1;
    v33 = &type metadata for Bool;
  }

  *(v16 + 360) = v33;
  sub_506C(&qword_A42F0, &qword_77260);
  v34 = sub_73750();
  sub_504B4(v34);

  v35 = sub_50978(35);
  sub_4F6EC(v35, v36, v37);
}

uint64_t sub_50070(uint64_t a1, char a2)
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77300;
  strcpy((inited + 32), "isPunchingOut");
  *(inited + 46) = -4864;
  *(inited + 48) = a2;
  sub_50964();
  v5[9] = &type metadata for Bool;
  v5[10] = v6;
  v5[11] = 0xE700000000000000;
  if (a1)
  {

    v7 = sub_72250();
    if (v7 && (v8 = v7, v9 = [v7 displayAppName], v8, v9))
    {
      v10 = sub_73790();
      v12 = v11;

      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v10;
      *(inited + 104) = v12;
    }

    else
    {

      *(inited + 96) = 0u;
      *(inited + 112) = 0u;
    }

    *(inited + 128) = 0x5074737269467369;
    *(inited + 136) = 0xEF70704179747261;
    v13 = sub_733C0();
  }

  else
  {
    v13 = 0;
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
    *(inited + 128) = 0x5074737269467369;
    *(inited + 136) = 0xEF70704179747261;
  }

  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v13;
  sub_506C(&qword_A42F0, &qword_77260);
  v14 = sub_73750();
  sub_504B4(v14);

  v15 = sub_50978(41);
  sub_4F6EC(v15, v16, v17);
}

uint64_t sub_50260(uint64_t a1, uint64_t a2, char a3)
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77300;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;
  if (!a1)
  {
    goto LABEL_6;
  }

  v7 = sub_72250();
  if (!v7 || (v8 = v7, v9 = [v7 displayAppName], v8, !v9))
  {

LABEL_6:
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
    goto LABEL_7;
  }

  v10 = sub_73790();
  v12 = v11;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v10;
  *(inited + 104) = v12;
LABEL_7:
  *(inited + 128) = 0x656369766564;
  *(inited + 136) = 0xE600000000000000;
  sub_506C(&qword_A6F68, "ֲ");
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_74B40;
  *(v13 + 32) = 0x616C507261437369;
  *(v13 + 40) = 0xE900000000000079;
  *(v13 + 48) = a3 & 1;
  v14 = sub_73750();
  *(inited + 168) = sub_506C(&qword_A6F70, "ܲ");
  *(inited + 144) = v14;
  sub_506C(&qword_A42F0, &qword_77260);
  v15 = sub_73750();
  sub_504B4(v15);

  sub_5092C();
  v16 = sub_50978(33);
  sub_4F6EC(v16, v17, v18);
}

uint64_t sub_50498(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 - 3) >= 3)
  {
    return sub_50070(a1, 0);
  }

  else
  {
    return sub_50260(a1, a2, a3 & 1);
  }
}

void *sub_504B4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    sub_C210(*(a1 + 56) + 32 * v9, v32);
    v27 = v32[0];
    v29 = v32[1];

    if (!v11)
    {
LABEL_19:

      return _swiftEmptyDictionarySingleton;
    }

    v5 &= v5 - 1;
    v31[0] = v27;
    v31[1] = v29;
    if (*(&v29 + 1))
    {
      sub_1970C(v31, v32);
      sub_14E68(v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_6D330(v12, v11);
      v13 = _swiftEmptyDictionarySingleton[2];
      v30 = v14;
      v15 = (v14 & 1) == 0;
      v16 = v13 + v15;
      if (__OFADD__(v13, v15))
      {
        goto LABEL_21;
      }

      sub_506C(&qword_A6F60, "ڲ");
      if (sub_73C50(isUniquelyReferenced_nonNull_native, v16))
      {
        v17 = sub_6D330(v12, v11);
        if ((v30 & 1) != (v18 & 1))
        {
          goto LABEL_23;
        }

        v19 = v17;
        if (v30)
        {
          goto LABEL_18;
        }

LABEL_15:
        _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
        v20 = (_swiftEmptyDictionarySingleton[6] + 16 * v19);
        *v20 = v12;
        v20[1] = v11;
        sub_1970C(v31, (_swiftEmptyDictionarySingleton[7] + 32 * v19));
        sub_AE38(v32);
        v21 = _swiftEmptyDictionarySingleton[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_22;
        }

        _swiftEmptyDictionarySingleton[2] = v23;
      }

      else
      {
        v19 = v26;
        if ((v30 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_18:

        v24 = (_swiftEmptyDictionarySingleton[7] + 32 * v19);
        sub_AE38(v24);
        sub_1970C(v31, v24);
        sub_AE38(v32);
      }
    }

    else
    {

      sub_10364(v31, &qword_A42F0, &qword_77260);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      goto LABEL_19;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_73DE0();
  __break(1u);
  return result;
}

uint64_t sub_50760()
{
  v1 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin16HealthCATWrapper_options;
  sub_73390();
  sub_1168C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_507C8()
{
  sub_50760();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for HealthCATWrapper(uint64_t a1)
{
  result = qword_A6D80;
  if (!qword_A6D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_50874(uint64_t a1)
{
  result = sub_73390();
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

__n128 *sub_50914(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1935893875;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_5094C(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_4F6EC(v4, a2, v2);
}

_BYTE *storeEnumTagSinglePayload for HealthActivityUserMode(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x50A34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_50A70()
{
  result = qword_A6F80;
  if (!qword_A6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F80);
  }

  return result;
}

BOOL sub_50AC4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_98488;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  return v4 != 0;
}

BOOL sub_50B38@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_50AC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_50B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_50CA4();
  v5 = sub_50CF8();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_50BF8()
{
  result = qword_A6F88;
  if (!qword_A6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F88);
  }

  return result;
}

unint64_t sub_50C50()
{
  result = qword_A6F90;
  if (!qword_A6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F90);
  }

  return result;
}

unint64_t sub_50CA4()
{
  result = qword_A6F98;
  if (!qword_A6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F98);
  }

  return result;
}

unint64_t sub_50CF8()
{
  result = qword_A6FA0;
  if (!qword_A6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HealthActivityLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x50E18);
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
uint64_t sub_1000016F8()
{
  result = sub_100005BAC();
  qword_10000C370 = result;
  return result;
}

uint64_t sub_100001718()
{
  v0 = sub_100005A9C();
  sub_100001788(v0, qword_10000C378);
  sub_1000017EC(v0, qword_10000C378);
  return sub_100005A8C();
}

uint64_t *sub_100001788(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000017EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001888@<X0>(uint64_t a1@<X8>)
{
  sub_10000598C();
  v2 = sub_1000059FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1000018F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_10000467C(&qword_10000C228, &qword_1000066F0);
  v4[6] = swift_task_alloc();
  sub_10000467C(&qword_10000C138, &qword_1000065F8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v5 = sub_1000059FC();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100001A5C, 0, 0);
}

uint64_t sub_100001A5C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_10000596C();
  v4 = *(v2 + 48);
  v0[15] = v4;
  v0[16] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_100004EE8(v0[8], &qword_10000C138, &qword_1000065F8);
    sub_100005A6C();
    v0[21] = sub_100005A4C();
    v14 = (&async function pointer to dispatch thunk of Library.moods.getter + async function pointer to dispatch thunk of Library.moods.getter);
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_1000020C8;

    return v14();
  }

  else
  {
    v7 = v0[14];
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[8];
    v11 = *(v9 + 32);
    v0[17] = v11;
    v0[18] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v7, v10, v8);
    sub_100005A6C();
    v0[19] = sub_100005A4C();
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = sub_100001C38;
    v13 = v0[14];

    return Library.contains(playlist:)(v13);
  }
}

uint64_t sub_100001C38(char a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100001D58, 0, 0);
}

uint64_t sub_100001D58()
{
  v23 = v0;
  if (*(v0 + 192) == 1)
  {
    if (qword_10000C098 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = sub_100005A9C();
    sub_1000017EC(v5, qword_10000C378);
    (*(v4 + 16))(v1, v2, v3);
    v6 = sub_100005A7C();
    v7 = sub_100005CBC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      sub_100004FF4(&qword_10000C230, &type metadata accessor for Mood.Playlist, &protocol conformance descriptor for Mood.Playlist);
      v14 = sub_100005CEC();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_1000040D4(v14, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Returning selected playlist: %s", v12, 0xCu);
      sub_100004F48(v13);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    (*(v0 + 136))(*(v0 + 16), *(v0 + 112), *(v0 + 72));
    (*(*(v0 + 80) + 56))(*(v0 + 16), 0, 1, *(v0 + 72));

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 112), *(v0 + 72));
    sub_100005A6C();
    *(v0 + 168) = sub_100005A4C();
    v21 = (&async function pointer to dispatch thunk of Library.moods.getter + async function pointer to dispatch thunk of Library.moods.getter);
    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    v18[1] = sub_1000020C8;

    return v21();
  }
}

uint64_t sub_1000020C8(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_1000021E8, 0, 0);
}

uint64_t sub_1000021E8()
{
  v40 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v3;
  sub_1000028B8(sub_100004EC4, v1, v2);

  v5 = sub_100005A0C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    sub_100004EE8(*(v0 + 48), &qword_10000C228, &qword_1000066F0);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_4:
    sub_100004EE8(*(v0 + 56), &qword_10000C138, &qword_1000065F8);
    if (qword_10000C098 != -1)
    {
      swift_once();
    }

    v14 = sub_100005A9C();
    sub_1000017EC(v14, qword_10000C378);
    v15 = sub_100005A7C();
    v16 = sub_100005CAC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to retrieve default playlist, playback will not start", v17, 2u);
    }

    v18 = 1;
    goto LABEL_15;
  }

  v10 = *(v0 + 120);
  v11 = *(v0 + 72);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  sub_1000059BC();
  (*(v6 + 8))(v12, v5);
  if (v10(v13, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  v19 = *(*(v0 + 80) + 32);
  v19(*(v0 + 96), *(v0 + 56), *(v0 + 72));
  if (qword_10000C098 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 88);
  v21 = *(v0 + 96);
  v22 = *(v0 + 72);
  v23 = *(v0 + 80);
  v24 = sub_100005A9C();
  sub_1000017EC(v24, qword_10000C378);
  (*(v23 + 16))(v20, v21, v22);
  v25 = sub_100005A7C();
  v26 = sub_100005CBC();
  v27 = os_log_type_enabled(v25, v26);
  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  v30 = *(v0 + 72);
  if (v27)
  {
    v31 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v31 = 136315138;
    sub_100004FF4(&qword_10000C230, &type metadata accessor for Mood.Playlist, &protocol conformance descriptor for Mood.Playlist);
    v32 = sub_100005CEC();
    v34 = v33;
    (*(v29 + 8))(v28, v30);
    v35 = sub_1000040D4(v32, v34, &v39);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "Falling back to default playlist: %s", v31, 0xCu);
    sub_100004F48(v38);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
  }

  v19(*(v0 + 16), *(v0 + 96), *(v0 + 72));
  v18 = 0;
LABEL_15:
  (*(*(v0 + 80) + 56))(*(v0 + 16), v18, 1, *(v0 + 72));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1000026D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1000059CC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v14 - v9;
  sub_1000059DC();
  sub_10000597C();
  sub_100004FF4(&qword_10000C240, &type metadata accessor for Mood.ID, &protocol conformance descriptor for Mood.ID);
  sub_100005C8C();
  sub_100005C8C();
  if (v14[2] == v14[0] && v14[3] == v14[1])
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100005CFC();
  }

  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);

  return v11 & 1;
}

uint64_t sub_1000028B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_100005A0C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_100002A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *v7 = v3;
  v7[1] = sub_100002B40;

  return sub_1000018F8(a1, a2, v8, v9);
}

uint64_t sub_100002B40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100002C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v68 = a5;
  v9 = sub_10000590C();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v65 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003F90(&qword_10000C120, &qword_1000065E8);
  v64 = a4;
  v12 = *(a4 + 8);
  v13 = sub_100003F90(&qword_10000C128, &qword_1000065F0);
  v14 = sub_1000048F4(&qword_10000C130, &qword_10000C128, &qword_1000065F0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v69 = v13;
  v70 = v14;
  v15 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = a2;
  v70 = v11;
  v63 = v11;
  v71 = v12;
  v72 = OpaqueTypeConformance2;
  v58 = OpaqueTypeConformance2;
  v17 = sub_100005C6C();
  v62 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  WitnessTable = swift_getWitnessTable();
  v69 = v17;
  v70 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v59 = &v48 - v22;
  v23 = v17;
  v69 = v17;
  v70 = WitnessTable;
  v57 = WitnessTable;
  v24 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeMetadata2;
  v70 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v55 = *(v25 - 8);
  __chkstk_darwin(v25);
  v53 = &v48 - v26;
  v54 = v24;
  v61 = OpaqueTypeMetadata2;
  v69 = OpaqueTypeMetadata2;
  v70 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v56 = v25;
  v69 = v25;
  v70 = v27;
  v50 = v27;
  v52 = swift_getOpaqueTypeMetadata2();
  v51 = *(v52 - 8);
  v28 = __chkstk_darwin(v52);
  v48 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v49 = &v48 - v30;
  (*(a3 + 24))(a1, a3);
  v31 = swift_allocObject();
  v31[2] = a1;
  v31[3] = v15;
  v32 = v64;
  v31[4] = a3;
  v31[5] = v32;
  type metadata accessor for AdaptiveMusicControlValueProvider(0, v15, v32, v33);
  swift_getWitnessTable();
  sub_100005C5C();
  (*(a3 + 40))(a1, a3);
  v34 = v65;
  sub_1000058FC();
  v35 = v59;
  sub_100005B4C();
  v36 = v67;
  v37 = *(v66 + 8);
  v37(v34, v67);
  (*(v62 + 8))(v19, v23);
  (*(a3 + 48))(a1, a3);
  sub_1000058FC();
  v38 = v53;
  v39 = v61;
  sub_100005B3C();
  v37(v34, v36);
  (*(v60 + 8))(v35, v39);
  v40 = v48;
  v41 = v56;
  sub_100005B5C();
  (*(v55 + 8))(v38, v41);
  v42 = v51;
  v43 = *(v51 + 16);
  v44 = v49;
  v45 = v52;
  v43(v49, v40, v52);
  v46 = *(v42 + 8);
  v46(v40, v45);
  v43(v68, v44, v45);
  return (v46)(v44, v45);
}

uint64_t sub_100003360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v42 = a5;
  v47 = a6;
  v43 = sub_10000592C();
  __chkstk_darwin(v43);
  v40[2] = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000467C(&qword_10000C128, &qword_1000065F0);
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v44 = v40 - v11;
  v12 = sub_10000467C(&qword_10000C138, &qword_1000065F8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  v18 = sub_1000059FC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_1000046C4(a1, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100004EE8(v17, &qword_10000C138, &qword_1000065F8);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v25 = sub_10000493C(v21);
    v24 = v25;
    v23 = (v25 >> 8) & 1;
    (*(v19 + 8))(v21, v18);
  }

  if (qword_10000C098 != -1)
  {
    swift_once();
  }

  v26 = sub_100005A9C();
  sub_1000017EC(v26, qword_10000C378);
  v27 = sub_100005A7C();
  v28 = sub_100005C9C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109376;
    *(v29 + 4) = v24 & 1;
    *(v29 + 8) = 1024;
    *(v29 + 10) = v23;
    _os_log_impl(&_mh_execute_header, v27, v28, "Reloading the control with on: %{BOOL}d, loading: %{BOOL}d", v29, 0xEu);
  }

  (*(a4 + 32))(a2, a4);
  v40[1] = sub_100005B0C();
  sub_1000046C4(v22, v15);
  sub_100005A3C();
  sub_100005A2C();
  sub_10000591C();
  v30 = swift_allocObject();
  v32 = v41;
  v31 = v42;
  *(v30 + 16) = a2;
  *(v30 + 24) = v32;
  *(v30 + 32) = a4;
  *(v30 + 40) = v31;
  *(v30 + 48) = v23;
  sub_10000467C(&qword_10000C140, &qword_100006600);
  v33 = sub_100003F90(&qword_10000C148, &qword_100006608);
  v34 = sub_100003F90(&qword_10000C150, &qword_100006610);
  v35 = sub_100004754();
  v48 = v34;
  v49 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v33;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004FF4(&qword_10000C198, &type metadata accessor for ToggleMusicIntent, &protocol conformance descriptor for ToggleMusicIntent);
  v37 = v44;
  sub_100005C4C();
  if (qword_10000C090 != -1)
  {
    swift_once();
  }

  sub_1000048F4(&qword_10000C130, &qword_10000C128, &qword_1000065F0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v38 = v46;
  sub_100005B1C();
  return (*(v45 + 8))(v37, v38);
}

uint64_t sub_10000392C@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a5;
  v42 = a6;
  v40 = a4;
  v47 = a2;
  v8 = a1;
  v43 = a1;
  v50 = a7;
  v46 = sub_100005C3C();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005C1C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v39 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  v44 = sub_10000467C(&qword_10000C150, &qword_100006610);
  __chkstk_darwin(v44);
  v22 = &v39 - v21;
  v23 = sub_10000467C(&qword_10000C148, &qword_100006608);
  v24 = *(v23 - 8);
  v48 = v23;
  v49 = v24;
  __chkstk_darwin(v23);
  v45 = &v39 - v25;
  v55 = v8;
  v51 = a3;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  sub_100005BCC();
  sub_100005C0C();
  sub_100005BFC();
  v26 = *(v13 + 8);
  v26(v20, v12);
  sub_100005BEC();
  v26(v18, v12);
  v27 = v11;
  sub_100005C2C();
  v28 = &v22[*(sub_10000467C(&qword_10000C168, &qword_100006618) + 36)];
  v29 = sub_100005B6C();
  v30 = v11;
  v31 = v46;
  (*(v9 + 16))(&v28[*(v29 + 20)], v30, v46);
  sub_100004FF4(qword_10000C1A0, &type metadata accessor for BreatheSymbolEffect, &protocol conformance descriptor for BreatheSymbolEffect);
  v32 = v39;
  sub_100005BDC();
  (*(v9 + 8))(v27, v31);
  v26(v32, v12);
  v28[*(v29 + 24)] = v47;
  v33 = v44;
  v34 = &v22[*(v44 + 36)];
  sub_10000467C(&qword_10000C190, &qword_100006628);
  sub_100005ACC();
  *v34 = swift_getKeyPath();
  sub_100005B0C();
  v35 = sub_100004754();
  v36 = v45;
  sub_100005B9C();

  sub_100004EE8(v22, &qword_10000C150, &qword_100006610);
  sub_100005B0C();
  v56 = v33;
  v57 = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  sub_100005B8C();

  return (*(v49 + 8))(v36, v37);
}

uint64_t sub_100003EEC@<X0>(uint64_t a2@<X8>)
{
  sub_100005B0C();
  result = sub_100005B7C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100003F90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000400C(uint64_t a1)
{
  v2 = sub_100005ADC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100005AFC();
}

unint64_t sub_1000040D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000041A0(v11, 0, 0, 1, a1, a2);
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
    sub_100004F94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004F48(v11);
  return v7;
}

unint64_t sub_1000041A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000042AC(a5, a6);
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
    result = sub_100005CDC();
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

char *sub_1000042AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000042F8(a1, a2);
  sub_100004428(&off_100008690);
  return v3;
}

char *sub_1000042F8(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100004514(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100005CDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100005C7C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100004514(v10, 0);
        result = sub_100005CCC();
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

uint64_t sub_100004428(uint64_t result)
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

  result = sub_100004588(result, v11, 1, v3);
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

void *sub_100004514(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000467C(&qword_10000C238, qword_1000066F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004588(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000467C(&qword_10000C238, qword_1000066F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10000467C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000046C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000467C(&qword_10000C138, &qword_1000065F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100004754()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    sub_100003F90(&qword_10000C150, &qword_100006610);
    sub_10000480C();
    sub_1000048F4(&qword_10000C188, &qword_10000C190, &qword_100006628, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_10000480C()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    sub_100003F90(&qword_10000C168, &qword_100006618);
    sub_1000048F4(&qword_10000C170, &qword_10000C178, &qword_100006620, &protocol conformance descriptor for Label<A, B>);
    sub_100004FF4(&qword_10000C180, &type metadata accessor for _IndefiniteSymbolEffectModifier, &protocol conformance descriptor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_1000048F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100003F90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000493C(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_1000059FC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000595C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005A1C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059AC();
  sub_10000599C();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for Player.PlaybackStatus.loading(_:))
  {
    (*(v10 + 96))(v12, v9);
    (*(v6 + 32))(v8, v12, v5);
    sub_10000594C();
    v14 = sub_1000059EC();
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
    if (v14)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (v13 == enum case for Player.PlaybackStatus.playing(_:))
    {
      (*(v10 + 96))(v12, v9);
      (*(v6 + 32))(v8, v12, v5);
      sub_10000594C();
      v14 = sub_1000059EC();
      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v14 = 0;
    }

    v15 = 0;
  }

  return v15 | v14 & 1u;
}

uint64_t sub_100004C90@<X0>(uint64_t *a1@<X8>)
{
  (*(*(v1 + 32) + 8))();
  result = sub_100005BBC();
  *a1 = result;
  return result;
}

uint64_t sub_100004D0C(uint64_t a1)
{
  sub_100003F90(&qword_10000C120, &qword_1000065E8);
  sub_100003F90(&qword_10000C128, &qword_1000065F0);
  sub_1000048F4(&qword_10000C130, &qword_10000C128, &qword_1000065F0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  swift_getOpaqueTypeConformance2();
  sub_100005C6C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100004EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000467C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004F48(void *a1)
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

uint64_t sub_100004F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004FF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000506C@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v50 = sub_10000467C(&qword_10000C250, &qword_100006770);
  __chkstk_darwin(v50);
  v49 = &v40 - v1;
  v2 = sub_10000467C(&qword_10000C258, &qword_100006778);
  v3 = *(v2 - 8);
  v61 = v2;
  v62 = v3;
  v4 = __chkstk_darwin(v2);
  v58 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = &v40 - v6;
  v48 = sub_10000467C(&qword_10000C260, &qword_100006780);
  v57 = *(v48 - 8);
  v7 = __chkstk_darwin(v48);
  v60 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v40 - v9;
  v47 = sub_10000467C(&qword_10000C268, &qword_100006788);
  v55 = *(v47 - 8);
  v10 = __chkstk_darwin(v47);
  v54 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v59 = sub_10000467C(&qword_10000C270, &qword_100006790);
  v46 = *(v59 - 8);
  v14 = v46;
  v15 = __chkstk_darwin(v59);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v17;
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  sub_10000467C(&qword_10000C278, &qword_100006798);
  sub_1000048F4(&qword_10000C280, &qword_10000C278, &qword_100006798, &unk_1000065A8);
  v45 = v19;
  sub_100005B2C();
  sub_10000467C(&qword_10000C288, &qword_1000067A0);
  sub_1000048F4(&qword_10000C290, &qword_10000C288, &qword_1000067A0, &unk_1000065A8);
  v44 = v13;
  sub_100005B2C();
  sub_10000467C(&qword_10000C298, &qword_1000067A8);
  sub_1000048F4(&qword_10000C2A0, &qword_10000C298, &qword_1000067A8, &unk_1000065A8);
  v20 = v53;
  sub_100005B2C();
  sub_10000467C(&qword_10000C2A8, &qword_1000067B0);
  sub_1000048F4(&qword_10000C2B0, &qword_10000C2A8, &qword_1000067B0, &unk_1000065A8);
  v21 = v56;
  sub_100005B2C();
  v43 = *(v14 + 16);
  v43(v17, v19, v59);
  v22 = v54;
  v42 = *(v55 + 16);
  v23 = v47;
  v42(v54, v13, v47);
  v41 = *(v57 + 16);
  v24 = v48;
  v41(v60, v20, v48);
  v25 = *(v62 + 16);
  v26 = v58;
  v25(v58, v21, v61);
  v27 = v25;
  v28 = v49;
  v43(v49, v52, v59);
  v29 = v50;
  v42(&v28[*(v50 + 48)], v22, v23);
  v30 = v24;
  v41(&v28[*(v29 + 64)], v60, v24);
  v31 = v26;
  v32 = v61;
  v27(&v28[*(v29 + 80)], v31, v61);
  sub_100005AAC();
  v33 = *(v62 + 8);
  v62 += 8;
  v33(v56, v32);
  v34 = *(v57 + 8);
  v35 = v30;
  v34(v53, v30);
  v36 = *(v55 + 8);
  v36(v44, v23);
  v37 = *(v46 + 8);
  v38 = v59;
  v37(v45, v59);
  v33(v58, v61);
  v34(v60, v35);
  v36(v54, v23);
  return (v37)(v52, v38);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100005738();
  sub_100005ABC();
  return 0;
}

unint64_t sub_100005738()
{
  result = qword_10000C248;
  if (!qword_10000C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C248);
  }

  return result;
}

uint64_t sub_1000057FC()
{
  sub_10000467C(&qword_10000C2C8, &qword_100006828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000067C0;
  v1 = sub_10000593C();
  v2 = sub_100005870();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

unint64_t sub_100005870()
{
  result = qword_10000C2D0;
  if (!qword_10000C2D0)
  {
    sub_10000593C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D0);
  }

  return result;
}
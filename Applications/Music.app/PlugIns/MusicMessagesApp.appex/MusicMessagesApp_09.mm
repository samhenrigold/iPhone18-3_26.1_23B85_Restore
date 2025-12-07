unint64_t sub_1000E6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a2;
  v22[3] = a3;
  v5 = sub_1004DC6BC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004CB8(&qword_100635B38, &qword_100517318);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v22 - v11;
  sub_1004DC7AC();
  sub_1004DC79C();
  v13 = sub_1004DC5EC();

  if ((v13 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v22[1] = a4;
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_1004DD3FC();
  v16 = [v14 BOOLForKey:v15];

  if (!v16)
  {
    return 0xD000000000000018;
  }

  sub_1004D8C6C();
  sub_1004DC56C();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 88))(v12, v9) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v12, v9);
    v17 = sub_1004DC6AC();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v12, v17);
    v20 = enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:);
    (*(v18 + 8))(v12, v17);
    if (v19 == v20)
    {
      return 0;
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0xD000000000000011;
}

uint64_t sub_1000E67B8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id NSUserDefaults.showStarRatings.getter()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_1000E6918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  v9 = *(a6 - 8);
  v8[34] = v9;
  v8[35] = *(v9 + 64);
  v8[36] = swift_task_alloc();
  sub_1004D83FC();
  v8[37] = swift_task_alloc();
  v10 = sub_1004DD3EC();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  sub_1004DDA4C();
  v8[42] = sub_1004DDA3C();
  v12 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000E6AA4, v12, v11);
}

uint64_t sub_1000E6AA4()
{
  v1 = v0[41];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];

  sub_1004DD37C();
  v50 = *(v3 + 16);
  v50(v2, v1, v4);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v5 = v0[41];
  v48 = v0[40];
  v6 = v0[38];
  v7 = v0[39];
  v43 = v0[36];
  v46 = v0[30];
  v44 = v0[33];
  v45 = v0[29];
  v42 = v0[34];
  v39 = v0[28];
  v40 = v0[26];
  v8 = qword_100671958;
  v49 = *(v0 + 31);
  sub_1004D838C();
  v9 = v8;
  sub_1004DD4AC();
  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = sub_1004DD3FC();

  v37 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  sub_1004DD37C();
  v50(v48, v5, v6);
  sub_1004D838C();
  sub_1004DD4AC();
  v10(v5, v6);
  v12 = sub_1004DD3FC();

  v38 = objc_opt_self();
  v13 = [v38 actionWithTitle:v12 style:1 handler:0];

  v47 = v13;
  [v37 addAction:v13];
  v14 = v40(v39);
  v41 = v15;
  sub_1004DD37C();
  v50(v48, v5, v6);
  sub_1004D838C();
  sub_1004DD4AC();
  v10(v5, v6);
  (*(v42 + 16))(v43, v39, v49);
  v16 = (*(v42 + 80) + 64) & ~*(v42 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v49;
  *(v17 + 32) = v44;
  *(v17 + 40) = v14;
  *(v17 + 48) = v41;
  *(v17 + 56) = v45;
  (*(v42 + 32))(v17 + v16, v43, v49);
  v18 = v14;

  v19 = sub_1004DD3FC();

  v0[18] = sub_1000E77E4;
  v0[19] = v17;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100018634;
  v0[17] = &unk_1005DB5F8;
  v20 = _Block_copy(v0 + 14);

  v21 = [v38 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v37 addAction:v21];
  [v37 setPreferredAction:v21];
  [v37 setContentViewController:v18];
  v22 = *(v46 + 80);
  if (v22)
  {
    v23 = *(v46 + 88);
    v24 = qword_100633E08;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1004D966C();
    sub_100035430(v25, qword_10063B820);
    v26 = sub_1004D964C();
    v27 = sub_1004DDF9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Deferring presentation…", v28, 2u);
    }

    v29 = v0[30];

    v30 = objc_allocWithZone(MSVBlockGuard);
    v0[24] = sub_100257E18;
    v0[25] = 0;
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_100258DB8;
    v0[23] = &unk_1005DB620;
    v31 = _Block_copy(v0 + 20);
    v32 = [v30 initWithTimeout:v31 interruptionHandler:10.0];
    _Block_release(v31);

    sub_1000699E8(v29, (v0 + 2));
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    sub_10006A8BC((v0 + 2), v33 + 24);
    *(v33 + 120) = v37;
    *(v33 + 128) = 257;
    *(v33 + 136) = 0;
    *(v33 + 144) = 0;
    v34 = v32;
    v22(v29, v37, sub_100074484, v33);
    sub_10000DE74(v22, v23);
  }

  else
  {
    sub_1002562F8(v37, 1, 1, 0, 0);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1000E7240()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10006A898(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E7368()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v7 = (*(*(v2 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v0[6];
  v10 = *(v0 + v7);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100035B28;

  return sub_1000E6918(v5, v9, v0 + v6, v10, v0 + v8, v2, v3, v4);
}

uint64_t sub_1000E74C4()
{

  return swift_deallocObject();
}

double sub_1000E74FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = sub_1004DDA8C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v13 + 16))(v15, a5, a6);
  sub_1004DDA4C();
  v19 = a2;

  v20 = sub_1004DDA3C();
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  v24 = v26;
  v23 = v27;
  *(v22 + 4) = a6;
  *(v22 + 5) = v24;
  *(v22 + 6) = v23;
  *(v22 + 7) = v19;
  *(v22 + 8) = a3;
  *(v22 + 9) = a4;
  (*(v13 + 32))(&v22[v21], v15, a6);
  sub_10011F560(0, 0, v17, &unk_100519878, v22);

  return result;
}

uint64_t sub_1000E7720()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1000E7828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000E7840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v13;
  v8[9] = v14;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v8[10] = *(a8 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  sub_1004DDA4C();
  v8[13] = sub_1004DDA3C();
  v10 = sub_1004DD9BC();
  v8[14] = v10;
  v8[15] = v9;

  return _swift_task_switch(sub_1000E7948, v10, v9);
}

uint64_t sub_1000E7948()
{
  v1 = v0[8];
  v2 = v0[4];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  v0[16] = v4;
  v5 = v4 / 5.0;
  v6 = swift_task_alloc();
  v0[17] = v6;
  v7 = *(v1 + 8);
  *v6 = v0;
  v6[1] = sub_1000E7A30;
  v8 = v0[9];
  v10 = v0[6];
  v9 = v0[7];
  v11.n128_f64[0] = v5;

  return MusicLibrary.setUserRating<A>(_:for:)(v10, v9, v7, v8, v11);
}

uint64_t sub_1000E7A30()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1000E7BDC;
  }

  else
  {
    v5 = sub_1000E7B6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000E7B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E7BDC()
{
  v31 = v0;

  if (qword_100633A88 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_1004D966C();
  sub_100035430(v5, static Logger.actions);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  swift_errorRetain();
  v7 = sub_1004D964C();
  v8 = sub_1004DDF7C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  if (v9)
  {
    v12 = v0[11];
    v11 = v0[12];
    v29 = v8;
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[16] / 5.0;
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 134349570;
    *(v16 + 4) = v15;
    *(v16 + 12) = 2082;
    v6(v12, v11, v14);
    v17 = sub_1004DD4DC();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_1000343A8(v17, v19, &v30);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    v0[2] = v10;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v21 = sub_1004DD4DC();
    v23 = sub_1000343A8(v21, v22, &v30);

    *(v16 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v7, v29, "Failed to set userRating=%{public}f for item=%{public}s with error=%{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[12];
    v25 = v0[10];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_1000E7ED4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_10006A898(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E7F68()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000E8034(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  v5 = (*(*(v3 - 8) + 80) + 80) & ~*(*(v3 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100035B28;

  return sub_1000E7840(a1, v6, v7, v4, v8, v9, v1 + v5, v3);
}

double View.alertPresenting(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{

  sub_100004CB8(&qword_100636820, qword_100519880);
  sub_100042B08(&qword_100636828, &qword_100636820, qword_100519880, &protocol conformance descriptor for PresentedViewState<A>);
  sub_1004DA13C();
  v7 = sub_1000E824C();
  View.viewPresenting<A, B>(_:modifier:)(a1, a3, v7, x8_0);

  return result;
}

unint64_t sub_1000E824C()
{
  result = qword_100636830;
  if (!qword_100636830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636830);
  }

  return result;
}

uint64_t sub_1000E82A0(void *a1)
{
  sub_1004DA32C();
  sub_100008DE4(&qword_100636838, &qword_100519898);
  sub_1004DA32C();
  sub_1000E824C();
  swift_getWitnessTable();
  sub_100042B08(&qword_100636840, &qword_100636838, &qword_100519898, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_1000E8388(uint64_t a1, int a2)
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

uint64_t sub_1000E83D0(uint64_t result, int a2, int a3)
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

uint64_t sub_1000E8438@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_100004CB8(&qword_100636860, &qword_100519938);
  v56 = *(v5 - 8);
  __chkstk_darwin();
  v58 = &v44 - v6;
  v59 = sub_100004CB8(&qword_100636868, &qword_100519940);
  __chkstk_darwin();
  v60 = &v44 - v7;
  v8 = sub_100004CB8(&qword_100636870, &qword_100519948);
  v55 = *(v8 - 8);
  __chkstk_darwin();
  v57 = &v44 - v9;
  v10 = sub_100004CB8(&qword_100636878, &qword_100519950);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v61 = &v44 - v12;
  v13 = (a2 + *(*a2 + 96));
  swift_beginAccess();
  v14 = v13[3];
  v82 = v13[2];
  v83 = v14;
  v84 = *(v13 + 8);
  v15 = v13[1];
  v81[0] = *v13;
  v81[1] = v15;
  if (!*(&v83 + 1))
  {
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  v50 = v8;
  v51 = v11;
  v52 = v10;
  v53 = v5;
  v54 = a3;
  v16 = v82;
  v17 = v81[0];
  v75 = v81[0];
  *v78 = *(v13 + 33);
  v18 = v13[3];
  v73[2] = v13[2];
  v73[3] = v18;
  v19 = *v13;
  v76 = v13[1];
  v77 = v82;
  *&v78[15] = *(v13 + 6);
  v79 = *(&v83 + 1);
  v80 = v84;
  v74 = *(v13 + 8);
  v73[0] = v19;
  v73[1] = v76;
  sub_1000E9AD4(v73, &v65);
  v20 = sub_1004DB85C();
  if (*(&v17 + 1))
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0xE000000000000000;
  if (*(&v17 + 1))
  {
    v22 = *(&v17 + 1);
  }

  v48 = v22;
  v49 = v20;
  v63 = v22;
  v64 = v20;
  v62 = v21;

  sub_100004CB8(&qword_100636820, qword_100519880);
  sub_100042B08(&qword_100636828, &qword_100636820, qword_100519880, &protocol conformance descriptor for PresentedViewState<A>);
  sub_1004DA14C();
  swift_getKeyPath();
  sub_1004DA15C();

  if (v16)
  {
    v58 = &v44;
    LODWORD(v56) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v23 = sub_100004CB8(&qword_100636880, &qword_100519980);
    v24 = sub_100004CB8(&qword_100636888, &qword_100519988);
    v45 = sub_100030C58();
    v46 = sub_1000E9B8C();
    v47 = sub_1000E9C80();
    v25 = v57;
    sub_1004DB56C();

    v26 = v55;
    v27 = v50;
    (*(v55 + 16))(v60, v25, v50);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v23;
    v68 = v24;
    v28 = v23;
    v29 = v45;
    v30 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v31 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v28;
    v68 = v24;
    v69 = &protocol witness table for Color;
    v70 = v29;
    v71 = v30;
    v72 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    sub_1004DAADC();

    sub_10001074C(v81, &qword_1006368B0, &qword_10051DC20);
    (*(v26 + 8))(v57, v27);
  }

  else
  {
    v57 = &v44;
    LODWORD(v55) = v67;
    __chkstk_darwin();
    __chkstk_darwin();
    v34 = sub_100004CB8(&qword_100636880, &qword_100519980);
    v35 = sub_100004CB8(&qword_100636888, &qword_100519988);
    v45 = sub_100030C58();
    v46 = sub_1000E9B8C();
    v47 = sub_1000E9C80();
    v36 = v35;
    v37 = v58;
    sub_1004DB64C();

    v38 = v56;
    v39 = v53;
    (*(v56 + 16))(v60, v37, v53);
    swift_storeEnumTagMultiPayload();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v40 = v45;
    v41 = v46;
    v69 = &protocol witness table for Color;
    v70 = v45;
    v42 = v47;
    v71 = v46;
    v72 = v47;
    swift_getOpaqueTypeConformance2();
    v65 = &type metadata for Color;
    v66 = &type metadata for String;
    v67 = v34;
    v68 = v36;
    v69 = &protocol witness table for Color;
    v70 = v40;
    v71 = v41;
    v72 = v42;
    swift_getOpaqueTypeConformance2();
    v32 = v61;
    sub_1004DAADC();

    sub_10001074C(v81, &qword_1006368B0, &qword_10051DC20);
    (*(v38 + 8))(v58, v39);
  }

  v43 = v54;
  sub_1000E9CFC(v32, v54);
  return (*(v51 + 56))(v43, 0, 1, v52);
}

void sub_1000E8DE0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a2 = v3;
}

uint64_t sub_1000E8E78(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004D9B7C();
}

uint64_t sub_1000E8F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[9] = *(a1 + 56);
  swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(a1 + 64);
  v9 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = v7;

  sub_1000E9AD4(a1, v14);
  sub_100004CB8(&qword_1006368B8, &qword_1005199C0);
  sub_100004CB8(&qword_1006368C0, &qword_1005199C8);
  sub_1000E9DEC();
  v11 = sub_100008DE4(&qword_100636898, &qword_100519990);
  v12 = sub_100042B08(&qword_1006368A0, &qword_100636898, &qword_100519990, &protocol conformance descriptor for Button<A>);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  return sub_1004DBC1C();
}

uint64_t sub_1000E90A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24))
  {
    sub_100030C58();

    result = sub_1004DB34C();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1000E9128@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v28 = a4;
  sub_100004CB8(&qword_1006368E0, &qword_1005199D8);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_100004CB8(&qword_100635680, &qword_100516788);
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = sub_100004CB8(&qword_100636898, &qword_100519990);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  v32 = a2[1];
  v30 = a2[1];
  v14 = *(a2 + 32);
  if (v14 == 2)
  {
    v15 = sub_1004D9C7C();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  else
  {

    if (v14)
    {
      sub_1004D9C4C();
    }

    else
    {
      sub_1004D9C6C();
    }

    v16 = sub_1004D9C7C();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  }

  v31 = *a2;
  v18 = *(a2 + 5);
  v17 = *(a2 + 6);
  v19 = swift_allocObject();
  v20 = a2[1];
  *(v19 + 16) = *a2;
  *(v19 + 32) = v20;
  *(v19 + 48) = a2[2];
  v21 = *a3;
  *(v19 + 88) = a3[1];
  v22 = a3[3];
  *(v19 + 104) = a3[2];
  *(v19 + 120) = v22;
  *(v19 + 64) = *(a2 + 6);
  *(v19 + 136) = *(a3 + 8);
  *(v19 + 72) = v21;
  sub_100036140(&v32, v29);
  sub_100036140(&v31, v29);
  sub_10000DE64(v18, v17);
  sub_1000E9AD4(a3, v29);
  sub_100030C58();
  sub_1004DBA5C();
  v23 = 1;
  if ((a3[3] & 1) == 0 && *(a3 + 5) == v27)
  {
    sub_1004DA39C();
    v23 = 0;
  }

  v24 = sub_1004DA3AC();
  (*(*(v24 - 8) + 56))(v7, v23, 1, v24);
  sub_100042B08(&qword_1006368A0, &qword_100636898, &qword_100519990, &protocol conformance descriptor for Button<A>);
  sub_1004DB50C();
  sub_10001074C(v7, &qword_1006368E0, &qword_1005199D8);
  return (*(v11 + 8))(v13, v10);
}

double sub_1000E94F4(__int128 *a1, __int128 *a2)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v5 = &v17[-v4 - 8];
  v6 = sub_1004DDA8C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v18 = a1[1];
  v19 = v7;
  v8 = *(a1 + 5);
  v9 = *(a1 + 6);
  sub_1004DDA4C();
  sub_100036140(&v19, v17);
  sub_100036140(&v18, v17);
  sub_10000DE64(v8, v9);
  sub_1000E9AD4(a2, v17);
  v10 = sub_1004DDA3C();
  v11 = swift_allocObject();
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = a1[2];
  v13 = *a2;
  *(v11 + 104) = a2[1];
  v14 = a2[3];
  *(v11 + 120) = a2[2];
  *(v11 + 136) = v14;
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 80) = *(a1 + 6);
  *(v11 + 152) = *(a2 + 8);
  *(v11 + 88) = v13;
  sub_10011F560(0, 0, v5, &unk_1005199E8, v11);

  return result;
}

uint64_t sub_1000E9694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  *(v5 + 88) = sub_1004DDA4C();
  *(v5 + 96) = sub_1004DDA3C();
  v9 = *(a4 + 40);
  if (v9)
  {
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v5 + 104) = v10;
    *v10 = v5;
    v10[1] = sub_1000E9820;

    return v14(a4, v5 + 16);
  }

  else
  {
    v13 = sub_1004DD9BC();

    return _swift_task_switch(sub_1000E9964, v13, v12);
  }
}

uint64_t sub_1000E9820()
{

  v1 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000E9964, v1, v0);
}

uint64_t sub_1000E9964()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E99E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_1004DBD1C();
  v8 = v7;
  v9 = a2 + *(sub_100004CB8(&qword_100636848, &qword_100519920) + 36);
  sub_1000E8438(v5, v9);
  v10 = (v9 + *(sub_100004CB8(&qword_100636850, &qword_100519928) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_100004CB8(&qword_100636858, &qword_100519930);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

unint64_t sub_1000E9B8C()
{
  result = qword_100636890;
  if (!qword_100636890)
  {
    sub_100008DE4(&qword_100636880, &qword_100519980);
    sub_100008DE4(&qword_100636898, &qword_100519990);
    sub_100042B08(&qword_1006368A0, &qword_100636898, &qword_100519990, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636890);
  }

  return result;
}

unint64_t sub_1000E9C80()
{
  result = qword_1006368A8;
  if (!qword_1006368A8)
  {
    sub_100008DE4(&qword_100636888, &qword_100519988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006368A8);
  }

  return result;
}

uint64_t sub_1000E9CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100636878, &qword_100519950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E9DEC()
{
  result = qword_1006368C8;
  if (!qword_1006368C8)
  {
    sub_100008DE4(&qword_1006368B8, &qword_1005199C0);
    sub_100042B08(&qword_1006368D0, &qword_1006368D8, &qword_1005199D0, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006368C8);
  }

  return result;
}

uint64_t sub_1000E9E9C()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E9F18()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E9F90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_1000E9694(a1, v4, v5, v1 + 32, v1 + 88);
}

uint64_t sub_1000EA044()
{

  return swift_deallocObject();
}

uint64_t sub_1000EA094()
{

  return swift_deallocObject();
}

uint64_t sub_1000EA0CC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  v7 = a1[7];
  return v2(v3, v6);
}

unint64_t sub_1000EA148()
{
  result = qword_1006368E8;
  if (!qword_1006368E8)
  {
    sub_100008DE4(&qword_100636848, &qword_100519920);
    sub_100042B08(&qword_1006368F0, &qword_100636858, &qword_100519930, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_1006368F8, &qword_100636850, &qword_100519928, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006368E8);
  }

  return result;
}

double sub_1000EA254(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v6 = &v18[-v5 - 8];
  v7 = sub_1004DDA8C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *a2;
  v19 = a2[1];
  v20 = v8;
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  sub_1004DDA4C();
  sub_100036140(&v20, v18);
  sub_100036140(&v19, v18);
  sub_10000DE64(v9, v10);
  sub_1000E9AD4(a3, v18);
  v11 = sub_1004DDA3C();
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v13;
  *(v12 + 64) = a2[2];
  v14 = *a3;
  *(v12 + 104) = a3[1];
  v15 = a3[3];
  *(v12 + 120) = a3[2];
  *(v12 + 136) = v15;
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 80) = *(a2 + 6);
  *(v12 + 152) = *(a3 + 8);
  *(v12 + 88) = v14;
  sub_10011F560(0, 0, v6, &unk_100519A58, v12);

  return result;
}

id static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v40 = a7;
  v41 = a8;
  v42 = sub_1004D809C();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v17;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v38 - v20;
  if (qword_100634428 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_100165FA8(a1, a2, a3, a4, a5, a6, v40, v41, v21, a9 & 1);
    sub_1000EAC4C(v21, v19);
    v22 = v42;
    if ((*(v15 + 48))(v19, 1, v42) == 1)
    {
      sub_100031B48(v21);
      v23 = v19;
    }

    else
    {
      v24 = *(v15 + 32);
      v25 = v39;
      v24();
      v26 = [objc_opt_self() sharedApplication];
      sub_1004D7FDC(v27);
      v29 = v28;
      v30 = [v26 canOpenURL:v28];

      if (v30)
      {
        v31 = v38;
        (*(v15 + 16))(v38, v25, v22);
        v32 = (*(v15 + 80) + 16) & ~*(v15 + 80);
        v33 = swift_allocObject();
        (v24)(v33 + v32, v31, v22);
        v34 = sub_1004DD3FC();
        aBlock[4] = sub_1000EAD44;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100018634;
        aBlock[3] = &unk_1005DB830;
        v35 = _Block_copy(aBlock);

        v36 = [swift_getObjCClassFromMetadata() actionWithTitle:v34 style:0 handler:v35];
        _Block_release(v35);

        (*(v15 + 8))(v25, v22);
        sub_100031B48(v21);
        return v36;
      }

      (*(v15 + 8))(v25, v22);
      v23 = v21;
    }

    sub_100031B48(v23);
  }

  return 0;
}

void sub_1000EA814()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_1004D7FDC(v1);
  v3 = v2;
  sub_10005F120(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1000EADCC();
  isa = sub_1004DD1FC().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

id sub_1000EA900(__int128 *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    a2 = ~*(a1 + 32) & 1;
  }

  if (*(a1 + 1))
  {
    v5 = sub_1004DD3FC();
    if (*(a1 + 3))
    {
LABEL_5:
      v6 = sub_1004DD3FC();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (*(a1 + 3))
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_8:
  v29 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:a2];

  v7 = *(a1 + 7);
  v28 = *(v7 + 16);
  if (v28)
  {
    v8 = 0;
    v9 = (v7 + 80);
    do
    {
      v31 = v8;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v9 - 16);
      v15 = *(v9 - 4);
      v14 = *(v9 - 3);
      v16 = *(v9 - 6);
      v17 = *(v9 - 5);
      v18 = 1;
      if (v13)
      {
        v18 = 2;
      }

      if (v13 == 2)
      {
        v18 = 0;
      }

      v30 = v18;
      v19 = swift_allocObject();
      v20 = *a1;
      *(v19 + 88) = a1[1];
      v21 = a1[3];
      *(v19 + 104) = a1[2];
      *(v19 + 120) = v21;
      *(v19 + 16) = v16;
      *(v19 + 24) = v17;
      v22 = v12;
      v23 = v11;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 49) = *v33;
      *(v19 + 52) = *&v33[3];
      *(v19 + 56) = v11;
      *(v19 + 64) = v22;
      *(v19 + 136) = *(a1 + 8);
      *(v19 + 72) = v20;

      sub_10000DE64(v11, v22);

      sub_10000DE64(v11, v22);
      sub_1000E9AD4(a1, aBlock);
      v24 = sub_1004DD3FC();
      aBlock[4] = sub_1000EAE94;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100018634;
      aBlock[3] = &unk_1005DB880;
      v25 = _Block_copy(aBlock);

      v26 = [objc_opt_self() actionWithTitle:v24 style:v30 handler:v25];
      _Block_release(v25);

      [v29 addAction:v26];
      if (a1[3])
      {

        sub_10000DE74(v11, v22);
        v10 = v31;
      }

      else
      {
        v10 = v31;
        if (v31 == *(a1 + 5))
        {
          [v29 setPreferredAction:v26];

          sub_10000DE74(v23, v22);
        }

        else
        {

          sub_10000DE74(v23, v22);
        }
      }

      v8 = v10 + 1;
      v9 += 7;
    }

    while (v28 != v8);
  }

  return v29;
}

uint64_t sub_1000EAC4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100634B30, &unk_100513D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EACBC()
{
  v1 = sub_1004D809C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1000EAD44()
{
  sub_1004D809C();

  sub_1000EA814();
}

double sub_1000EADB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000EADCC()
{
  result = qword_100634D20;
  if (!qword_100634D20)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100634D20);
  }

  return result;
}

uint64_t sub_1000EAE24()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000EAEA0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000EAF18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_1000E9694(a1, v4, v5, v1 + 32, v1 + 88);
}

void Alert.Action.init(id:title:role:perform:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a7;
  v15 = sub_1004D82AC();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    a1 = sub_1004D827C();
    a2 = v19;
    (*(v16 + 8))(v18, v15);
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  v20 = v22;
  *(a8 + 40) = a6;
  *(a8 + 48) = v20;
}

void __swiftcall Alert.init(title:message:image:style:preferredActionIndex:actions:)(MusicCore::Alert *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, UIImage_optional image, MusicCore::Alert::Style style, Swift::Int_optional preferredActionIndex, Swift::OpaquePointer actions)
{
  retstr->title = title;
  retstr->message = message;
  retstr->style = image.is_nil;
  *(&retstr->preferredActionIndex.value + 7) = style;
  LOBYTE(retstr->actions._rawValue) = preferredActionIndex.value & 1;
  retstr->image.value.super.isa = *&preferredActionIndex.is_nil;
  *&retstr->image.is_nil = image.value.super.isa;
}

uint64_t Alert.Action.perform(from:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v8 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v2 + 16) = v5;
    *v5 = v2;
    v5[1] = sub_100035B28;

    return v8(v1, a1);
  }

  else
  {
    v7 = *(v2 + 8);

    return v7();
  }
}

void *Alert.image.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

unint64_t sub_1000EB2A4()
{
  result = qword_100636900;
  if (!qword_100636900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636900);
  }

  return result;
}

unint64_t sub_1000EB2FC()
{
  result = qword_100636908;
  if (!qword_100636908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636908);
  }

  return result;
}

uint64_t sub_1000EB350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000EB398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000EB408(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_1000EB454(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v38 = a2;
  ObjectType = swift_getObjectType();
  sub_1004D83FC();
  __chkstk_darwin();
  v7 = sub_1004DD3EC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v38 - v11;
  *&v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction] = 0;
  v13 = &v4[OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration];
  v14 = a1[3];
  *(v13 + 2) = a1[2];
  *(v13 + 3) = v14;
  *(v13 + 4) = a1[4];
  v15 = a1[1];
  *v13 = *a1;
  *(v13 + 1) = v15;
  sub_1000EC20C(a1, v42);
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);
  v17 = sub_1004DD3FC();
  [v16 setTitle:v17];

  if (*(a1 + 5))
  {

    v18 = sub_1004DD3FC();
  }

  else
  {
    v18 = 0;
  }

  [v16 setMessage:{v18, v38, v39}];

  v19 = v16;
  [v19 setPreferredStyle:1];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = *a1;
  *(v21 + 40) = a1[1];
  v23 = a1[3];
  *(v21 + 56) = a1[2];
  *(v21 + 72) = v23;
  *(v21 + 88) = a1[4];
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  aBlock[4] = sub_1000EC2E4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018634;
  aBlock[3] = &unk_1005DBBE8;
  v24 = _Block_copy(aBlock);
  sub_1000EC20C(a1, v42);

  [v19 addTextFieldWithConfigurationHandler:v24];
  _Block_release(v24);
  sub_1004DD37C();
  (*(v8 + 16))(v10, v12, v7);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v25 = qword_100671958;
  sub_1004D838C();
  sub_1004DD4AC();
  (*(v8 + 8))(v12, v7);
  v26 = sub_1004DD3FC();

  v27 = objc_opt_self();
  v28 = [v27 actionWithTitle:v26 style:1 handler:0];

  [v19 addAction:v28];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = swift_allocObject();
  v31 = v38;
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v39;

  v32 = sub_1004DD3FC();
  v42[4] = sub_1000EC348;
  v42[5] = v30;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 1107296256;
  v42[2] = sub_100018634;
  v42[3] = &unk_1005DBC38;
  v33 = _Block_copy(v42);

  v34 = [v27 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  sub_1000EC354(a1);
  [v34 setEnabled:0];
  v35 = *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  *(v19 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction) = v34;
  v36 = v34;

  [v19 addAction:v36];
  [v19 setPreferredAction:v36];

  return v19;
}

void sub_1000EBA48(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration);

    v9 = sub_1004DD3FC();
    sub_1000354D0(v8, v7);
LABEL_6:
    [a1 setText:v9];
  }

  if (*(a3 + 56))
  {
    v10 = sub_1004DD3FC();
  }

  else
  {
    v10 = 0;
  }

  [a1 setPlaceholder:v10];

  [a1 setAutocapitalizationType:2];
  [a1 setReturnKeyType:9];
  [a1 setDelegate:v6];
}

void sub_1000EBB84(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong textFields];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    sub_1000EC384();
    v8 = sub_1004DD87C();

    if (v8 >> 62)
    {
      if (sub_1004DED5C())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_1004DEB2C();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = [v10 text];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = sub_1004DD43C();
      v15 = v14;

      a3(v13, v15);
      goto LABEL_14;
    }

LABEL_14:
  }
}

uint64_t sub_1000EBD24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 text];
  if (v8)
  {
    v9 = v8;
    sub_1004DD43C();
  }

  v10 = objc_allocWithZone(NSString);
  v11 = sub_1004DD3FC();

  v12 = [v10 initWithString:v11];

  v13 = sub_1004DD3FC();
  v14 = [v12 stringByReplacingCharactersInRange:a2 withString:{a3, v13}];

  v15 = sub_1004DD43C();
  v17 = v16;

  v18 = String.trim()();

  v19 = v18._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v18._object & 0x2000000000000000) != 0)
  {
    v19 = (v18._object >> 56) & 0xF;
  }

  v20 = v19 != 0;
  v21 = *(v5 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration + 8);
  if (v21 == 1)
  {

    goto LABEL_14;
  }

  if (!v19)
  {
    goto LABEL_11;
  }

  if (v21)
  {
    if (v15 == *(v5 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_configuration) && v21 == v17)
    {
LABEL_11:

      v20 = 0;
      goto LABEL_14;
    }

    v22 = sub_1004DF08C();

    v20 = v22 ^ 1;
  }

  else
  {

    v20 = 1;
  }

LABEL_14:
  v23 = *(v5 + OBJC_IVAR____TtC9MusicCore14TextFieldAlert_submitAction);
  if (v23)
  {
    [v23 setEnabled:v20 & 1];
  }

  return 1;
}

id DeviceCapabilitiesObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000EC120(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1000EC144(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000EC160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000EC1A8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000EC244()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000EC27C()
{

  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

double sub_1000EC2F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000EC308()
{

  return swift_deallocObject();
}

unint64_t sub_1000EC384()
{
  result = qword_1006369A8[0];
  if (!qword_1006369A8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1006369A8);
  }

  return result;
}

uint64_t sub_1000EC3D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void *sub_1000EC42C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t ArtworkVideoReportingController.__allocating_init()()
{
  v0 = swift_allocObject();
  ArtworkVideoReportingController.init()();
  return v0;
}

uint64_t *ArtworkVideoReportingController.init()()
{
  v1 = *v0;
  *(v0 + 16) = 0;
  v0[3] = 0;
  v0[4] = 0;
  v2 = *(v1 + 80);
  swift_getTupleTypeMetadata2();
  v3 = sub_1004DD8DC();
  v4 = sub_1000EE74C(v3, v2, &type metadata for ComponentRenderEventSignposts, *(v1 + 88));

  v0[5] = v4;
  return v0;
}

uint64_t ArtworkVideoReportingController.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_10000DE64(v1, *(v0 + 32));
  return v1;
}

uint64_t BindingRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_10000DE74(v5, v6);
}

void ArtworkVideoReportingController.componentWillAppear(at:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v34 = *(v5 - 8);
  __chkstk_darwin();
  v36 = &v26[-v6];
  v7 = sub_1004D826C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v11 = *(v4 + 88);

  v35 = a1;
  v33 = v11;
  sub_1004DD27C();

  v12 = v37;
  if (v37 == 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v27 = 4;
LABEL_6:
    v18 = objc_opt_self();
    sub_1004D825C();
    isa = sub_1004D81CC().super.isa;
    (*(v8 + 8))(v10, v7);
    v20 = [v18 serverTimeFromDate:isa];

    (*(v34 + 16))(v36, v35, v5);
    v21 = v31;
    v22 = v32;
    v37 = v20;
    v38 = v31;
    v24 = v29;
    v23 = v30;
    v39 = v32;
    v40 = v30;
    v25 = v28;
    v41 = v29;
    v42 = v28;
    v43 = v27;
    swift_beginAccess();
    v35 = sub_1004DD25C();
    v12 = v20;
    v16 = v21;
    v17 = v22;
    v15 = v23;
    v13 = v24;
    v14 = v25;
    sub_1004DD28C();
    swift_endAccess();
    goto LABEL_7;
  }

  v13 = v41;
  v14 = v42;
  v15 = v40;
  if (!v37)
  {
    v27 = v43;
    v31 = v38;
    v32 = v39;
    v29 = v41;
    v30 = v40;
    v28 = v42;
    goto LABEL_6;
  }

  v16 = v38;
  v17 = v39;
LABEL_7:
}

void ArtworkVideoReportingController.placeholderDidAppear(at:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30[-v7];
  v9 = sub_1004D826C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (v2[16] == 1)
  {
    swift_beginAccess();
    v13 = *(v4 + 88);

    v33 = v13;
    v34 = a1;
    sub_1004DD27C();

    v14 = v38;
    if (v38 == 1)
    {
      v32 = v2;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v15 = 0;
      v14 = 0;
      v16 = 4;
    }

    else
    {
      v36 = v42;
      v37 = v43;
      v15 = v40;
      v35 = v41;
      v17 = v39;
      if (v39)
      {

        v18 = v37;
LABEL_8:

        return;
      }

      v32 = v2;
      v16 = v44;
    }

    v31 = v16;
    v19 = objc_opt_self();
    sub_1004D825C();
    isa = sub_1004D81CC().super.isa;
    (*(v10 + 8))(v12, v9);
    v21 = [v19 serverTimeFromDate:isa];

    (*(v6 + 16))(v8, v34, v5);
    v38 = v14;
    v39 = v21;
    v22 = v35;
    v23 = v36;
    v40 = v15;
    v41 = v35;
    v24 = v37;
    v42 = v36;
    v43 = v37;
    v44 = v31;
    swift_beginAccess();
    sub_1004DD25C();
    v18 = v14;
    v25 = v21;
    v26 = v15;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    sub_1004DD28C();
    swift_endAccess();

    goto LABEL_8;
  }
}

void ArtworkVideoReportingController.videoArtworkWasSelectedForPlayback(at:isReadyForDisplay:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v38 - v9;
  v11 = sub_1004D826C();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v39 = v4;
    swift_beginAccess();
    v15 = *(v6 + 88);

    v38[1] = v15;
    sub_1004DD27C();

    v16 = v41;
    v40 = a1;
    if (v41 == 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 4;
      v21 = 0uLL;
    }

    else
    {
      v20 = v45;
      v21 = v44;
      v19 = v43;
      v17 = v42;
      v18 = v43;
    }

    v46 = v16;
    v47 = v17;
    v48 = v19;
    v49 = v21;
    v50 = v20;
    v22 = objc_opt_self();
    sub_1004D825C();
    isa = sub_1004D81CC().super.isa;
    (*(v12 + 8))(v14, v11);
    v24 = [v22 serverTimeFromDate:isa];

    *&v48 = v24;
    sub_1000ED170(v39 & 1);
    (*(v8 + 16))(v10, v40, v7);
    v25 = v46;
    v26 = v47;
    v27 = v48;
    v28 = v49;
    v41 = v46;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    swift_beginAccess();
    sub_1004DD25C();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = *(&v27 + 1);
    v33 = v28;
    v34 = *(&v28 + 1);
    sub_1004DD28C();
    swift_endAccess();
    v35 = v47;
    v36 = v48;
    v37 = v49;
  }
}

uint64_t sub_1000ED170(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    v4 = sub_1004DF08C();

    if (v4)
    {
      return result;
    }
  }

  else if (v3 == 3)
  {
  }

  if (v2)
  {
    *(v1 + 48) = 0;
    return result;
  }

  if (*(v1 + 24))
  {
    v5 = 1;
  }

  else
  {
    if (!*(v1 + 8))
    {
      return result;
    }

    v5 = 2;
  }

  *(v1 + 48) = v5;
  return result;
}

void ArtworkVideoReportingController.videoArtworkWillBeginLoading(at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v30 - v8;
  v10 = sub_1004D826C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v36 = v9;
    swift_beginAccess();
    v14 = *(v5 + 88);

    v34 = v14;
    sub_1004DD27C();

    v15 = v37;
    v35 = a1;
    if (v37 == 1)
    {
      v15 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v16 = 0;
    }

    else
    {
      v32 = v41;
      v33 = v42;
      v16 = v40;
      v31 = v39;
      v30 = v38;
    }

    v17 = objc_opt_self();
    sub_1004D825C();
    isa = sub_1004D81CC().super.isa;
    (*(v11 + 8))(v13, v10);
    v19 = [v17 serverTimeFromDate:isa];

    (*(v7 + 16))(v36, v35, v6);
    v20 = v30;
    v37 = v15;
    v38 = v30;
    v21 = v31;
    v39 = v31;
    v40 = v19;
    v22 = v32;
    v23 = v33;
    v41 = v32;
    v42 = v33;
    v43 = 4;
    swift_beginAccess();
    sub_1004DD25C();
    v24 = v15;
    v25 = v20;
    v26 = v21;
    v27 = v19;
    v28 = v22;
    v29 = v23;
    sub_1004DD28C();
    swift_endAccess();
  }
}

void ArtworkVideoReportingController.videoArtworkDidCancelLoading(at:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v32 - v7;
  v9 = sub_1004D826C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v2[16] == 1)
  {
    swift_beginAccess();
    v13 = *(v4 + 88);

    v39 = v13;
    sub_1004DD27C();

    v14 = v40;
    if (v40 != 1)
    {
      v37 = v46;
      v32[0] = v45;
      v35 = v43;
      v36 = v44;
      v34 = v42;
      v33 = v41;
      v15 = objc_opt_self();
      sub_1004D825C();
      v32[1] = v2;
      v16.super.isa = sub_1004D81CC().super.isa;
      v17 = a1;
      v38 = a1;
      isa = v16.super.isa;
      (*(v10 + 8))(v12, v9);
      v19 = [v15 serverTimeFromDate:isa];

      (*(v6 + 16))(v8, v17, v5);
      v20 = v33;
      v40 = v14;
      v41 = v33;
      v21 = v34;
      v23 = v35;
      v22 = v36;
      v42 = v34;
      v43 = v35;
      v44 = v36;
      v45 = v19;
      v46 = v37;
      swift_beginAccess();
      sub_1004DD25C();
      v39 = v14;
      v24 = v20;
      v25 = v21;
      v26 = v23;
      v27 = v22;
      v28 = v19;
      sub_1004DD28C();
      swift_endAccess();
      v29 = v38;
      sub_1000EDD1C(v38, v30);
      _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(v29, v31);
    }
  }
}

void ArtworkVideoReportingController.videoArtworkDidStartPlayback(at:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v30 - v7;
  v9 = sub_1004D826C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (v2[16] == 1)
  {
    swift_beginAccess();
    v13 = *(v4 + 88);

    v37 = v13;
    sub_1004DD27C();

    v14 = v38;
    if (v38 != 1)
    {
      v35 = v44;
      v34 = v43;
      v30[0] = v42;
      v33 = v41;
      v32 = v40;
      v31 = v39;
      v15 = objc_opt_self();
      sub_1004D825C();
      v30[1] = v2;
      v16.super.isa = sub_1004D81CC().super.isa;
      v17 = a1;
      v36 = a1;
      isa = v16.super.isa;
      (*(v10 + 8))(v12, v9);
      v19 = [v15 serverTimeFromDate:isa];

      (*(v6 + 16))(v8, v17, v5);
      v20 = v31;
      v38 = v14;
      v39 = v31;
      v21 = v32;
      v23 = v33;
      v22 = v34;
      v40 = v32;
      v41 = v33;
      v42 = v19;
      v43 = v34;
      v44 = v35;
      swift_beginAccess();
      sub_1004DD25C();
      v37 = v14;
      v24 = v20;
      v25 = v21;
      v26 = v23;
      v27 = v19;
      v28 = v22;
      sub_1004DD28C();
      swift_endAccess();
      sub_1000EDD1C(v36, v29);
    }
  }
}

void sub_1000EDD1C(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v53[-v8];
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    swift_beginAccess();

    sub_1004DD27C();

    v10 = v82;
    if (v82 != 1)
    {
      v67 = a1;
      v60 = v7;
      v61 = v5;
      v65 = v9;
      v62 = v4;
      v11 = *(&v82 + 1);
      v12 = *(&v83 + 1);
      v13 = v83;
      v14 = *(&v84 + 1);
      v15 = v84;
      v16 = v85;
      v88[0] = v82;
      v88[1] = v83;
      v88[2] = v84;
      v89 = v85;
      swift_beginAccess();
      v17 = *(v2 + 24);
      if (v17)
      {
        v66 = v16;
        v18 = *(v2 + 32);

        v19 = v17(v67);
        v63 = v20;
        v64 = v19;
        v22 = v21;
        sub_10000DE74(v17, v18);
        v23 = v14;
        v24 = v10;
        v25 = v11;
        v26 = v13;
        v27 = v12;
        v28 = v15;
        sub_1000EEB9C(v88, v64, v63, v22, &v78);
        v76 = v80;
        v77[0] = *v81;
        *(v77 + 9) = *&v81[9];
        v74 = v78;
        v75 = v79;
        v29 = *v81;
        if (*v81)
        {
          v82 = v78;
          v83 = v79;
          v84 = v80;
          v85 = *v81;
          v86 = *&v81[8];
          v87 = v81[24];
          if (*&v81[8])
          {
            v56 = v11;
            v57 = v13;
            v58 = v10;
            v59 = v12;
            v63 = v15;
            v64 = v14;
            v30 = *&v81[8];
            [v30 doubleValue];
            v32 = v31;
            [v29 doubleValue];
            v34 = v33;
            if (qword_100633C88 != -1)
            {
              swift_once();
            }

            v35 = sub_1004D966C();
            sub_100035430(v35, static Logger.motion);
            v37 = v61;
            v36 = v62;
            v38 = *(v61 + 16);
            v39 = v65;
            v38(v65, v67, v62);
            v72[2] = v76;
            v73[0] = v77[0];
            *(v73 + 9) = *(v77 + 9);
            v72[0] = v74;
            v72[1] = v75;
            sub_1000EEE24(v72, v71);
            v40 = sub_1004D964C();
            v41 = sub_1004DDF6C();
            sub_1000EEDBC(&v78);
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v67 = v30;
              v43 = v37;
              v44 = v42;
              v55 = swift_slowAlloc();
              v70 = v55;
              *v44 = 136315650;
              v71[0] = v82;
              v69 = v82;
              v54 = v41;
              sub_1000108DC(v71, &v68, &unk_100639EB0, &qword_100518300);
              sub_100004CB8(&unk_100639EB0, &qword_100518300);
              v45 = sub_1004DD4DC();
              v47 = sub_1000343A8(v45, v46, &v70);

              *(v44 + 4) = v47;
              *(v44 + 12) = 2080;
              v48 = v65;
              v38(v60, v65, v36);
              v49 = sub_1004DD4DC();
              v51 = v50;
              (*(v43 + 8))(v48, v36);
              v52 = sub_1000343A8(v49, v51, &v70);

              *(v44 + 14) = v52;
              *(v44 + 22) = 2048;
              *(v44 + 24) = v32 - v34;
              _os_log_impl(&_mh_execute_header, v40, v54, "Item with id: %s at index: %s loaded enough data to start playback in %f ms.", v44, 0x20u);
              swift_arrayDestroy();
            }

            else
            {

              (*(v37 + 8))(v39, v36);
            }

            v15 = v63;
            v14 = v64;
            v10 = v58;
            v12 = v59;
            v11 = v56;
            v13 = v57;
          }

          if (qword_100633B50 != -1)
          {
            swift_once();
          }

          MetricsReportingController.recordComponentRenderEvent(_:)(&v82);
          sub_1000EEDBC(&v78);
        }
      }

      sub_1000EED48(v10, v11, v13, v12, v15, v14);
    }
  }
}

void _s9MusicCore31ArtworkVideoReportingControllerC05videoC15DidStopPlayback2atyx_tF_0(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - v6;
  swift_beginAccess();

  sub_1004DD27C();

  v8 = v20;
  if (v20 != 1)
  {
    v18 = v21;
    v9 = v24;
    v19 = v23;
    v10 = v25;
    v11 = v26;

    if (v9)
    {

      v11 = 3;
    }

    (*(v5 + 16))(v7, a1, v4);
    v13 = v18;
    v12 = v19;
    v20 = v8;
    v21 = v18;
    v22 = 0;
    v23 = v19;
    v24 = 0;
    v25 = 0;
    v26 = v11;
    swift_beginAccess();
    sub_1004DD25C();
    v14 = v8;
    v15 = v13;
    v16 = v12;
    sub_1004DD28C();
    swift_endAccess();
  }
}

uint64_t *ArtworkVideoReportingController.deinit()
{
  sub_10000DE74(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t ArtworkVideoReportingController.__deallocating_deinit()
{
  sub_10000DE74(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1000EE568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004DD2AC();

  return sub_1000EE5C4(a1, v6, a2, a3);
}

unint64_t sub_1000EE5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1004DD35C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1000EE74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (sub_1004DD91C())
  {
    sub_1004DEDCC();
    v13 = sub_1004DEDBC();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_1004DD97C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1004DD8FC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1004DEB1C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1000EE568(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

__n128 sub_1000EEAB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000EEACC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000EEB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000EEB9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1[3];
  v43 = v8;
  if (v8)
  {
    v11 = *a1;
    v41 = a1[1];
    v42 = v11;
    v12 = a1[2];
    v13 = a1[5];
    v39 = a1[4];
    v40 = v12;
    v38 = v13;
    sub_1000108DC(&v43, v29, &qword_100636A38, &unk_100519E00);
    sub_1000108DC(&v42, v29, &qword_100636A38, &unk_100519E00);
    sub_1000108DC(&v41, v29, &qword_100636A38, &unk_100519E00);
    sub_1000108DC(&v40, v29, &qword_100636A38, &unk_100519E00);
    sub_1000108DC(&v39, v29, &qword_100636A38, &unk_100519E00);
    sub_1000108DC(&v38, v29, &qword_100636A38, &unk_100519E00);
    sub_1000EEE80(a1);
    v14 = *(a1 + 48);
    *&v23 = a2;
    *(&v23 + 1) = a3;
    LOBYTE(v24) = a4;
    *(&v24 + 1) = v42;
    *&v25 = v41;
    *(&v25 + 1) = v40;
    *&v26 = v8;
    *(&v26 + 1) = v39;
    v27 = v38;
    v28 = v14;
    v29[0] = a2;
    v29[1] = a3;
    v30 = a4;
    v31 = v42;
    v32 = v41;
    v33 = v40;
    v34 = v8;
    v35 = v39;
    v36 = v38;
    v37 = v14;
    sub_1000EEE24(&v23, &v22);
    result = sub_1000EEEB0(v29);
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
  }

  else
  {

    result = sub_1000EEE80(a1);
    v20 = 0;
    v21 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a5 = v16;
  *(a5 + 16) = v17;
  *(a5 + 32) = v18;
  *(a5 + 48) = v19;
  *(a5 + 64) = v20;
  *(a5 + 72) = v21;
  return result;
}

void sub_1000EED48(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000EEDBC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100636A30, &unk_100519DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Library.Menu.Revision.selected.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CarNowPlayingMetrics.Data.init(timePlayed:tracksPlayed:rangeStartTime:sharedSessionIds:sharedSessionMaxParticipants:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a6;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_1000EEFF0()
{
  v1 = *v0;
  v2 = 0x79616C50656D6974;
  v3 = 0x61745365676E6172;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C50736B63617274;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000EF0A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F0CC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000EF0DC(uint64_t a1)
{
  v2 = sub_1000EF3AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF118(uint64_t a1)
{
  v2 = sub_1000EF3AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CarNowPlayingMetrics.Data.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100004CB8(&qword_100636A40, &qword_100519E10);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100008C70(a1, a1[3]);
  sub_1000EF3AC();
  sub_1004DF30C();
  v14 = 0;
  sub_1004DEF3C();
  if (!v2)
  {
    v13 = 1;
    sub_1004DEF4C();
    v12 = 2;
    sub_1004DEF3C();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_100004CB8(&qword_100636A50, &unk_100519E18);
    sub_1000F1974(&qword_100636A58, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    sub_1004DEF5C();
    v10[14] = 4;
    sub_1004DEF4C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000EF3AC()
{
  result = qword_100636A48;
  if (!qword_100636A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636A48);
  }

  return result;
}

double CarNowPlayingMetrics.Data.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000F0E94(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double static CarNowPlayingMetrics.persistedMetricsData(for:)@<D0>(uint64_t a2@<X8>)
{
  sub_1000F1120(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t Logger.carMetrics.unsafeMutableAddressor()
{
  if (qword_100633AA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.carMetrics);
}

void static CarNowPlayingMetrics.storeMetricsData(_:for:)(__int128 *a1, char a2)
{
  if (*(a1 + 3))
  {
    sub_1004D7ADC();
    swift_allocObject();
    sub_1004D7ACC();
    sub_1000F14C8();
    v3 = sub_1004D7ABC();
    v5 = v4;

    v6 = [objc_opt_self() standardUserDefaults];
    isa = sub_1004D80FC().super.isa;
    v8 = sub_1004DD3FC();

    [v6 setValue:isa forKey:v8];

    sub_100010598(v3, v5);
  }

  else
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v9 = sub_1004DD3FC();

    [v2 setValue:0 forKey:v9];
  }
}

void sub_1000EF8CC(int a1)
{
  v62 = *v1;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v61 = &v58 - v3;
  v4 = sub_1004D84CC();
  v59 = *(v4 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D826C();
  v64 = *(v6 - 8);
  __chkstk_darwin();
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v58 - v8;
  if (qword_100633AA8 != -1)
  {
    swift_once();
  }

  v10 = sub_1004D966C();
  sub_100035430(v10, static Logger.carMetrics);
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();
  v13 = os_log_type_enabled(v11, v12);
  v65 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v68 = v15;
    *v14 = 136446210;
    LOBYTE(v72[0]) = a1 & 1;
    v16 = sub_1004DD4DC();
    v18 = v9;
    v19 = sub_1000343A8(v16, v17, &v68);

    *(v14 + 4) = v19;
    v9 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reporting %{public}s playsSummary event if needed", v14, 0xCu);
    sub_100008D24(v15);
  }

  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v20 = COERCE_DOUBLE(sub_1000FD570());
  if (v21)
  {
    v22 = 86400000.0;
  }

  else
  {
    v22 = v20;
  }

  v23 = v65 & 1;
  sub_1000F1120(&v68);
  v24 = v70;
  if (v70)
  {
    v25 = v69;
    v26 = v71;
    *v72 = v68;
    sub_1004D823C();
    sub_1004D821C();
    v28 = v27;
    v29 = *(v64 + 8);
    v29(v9, v6);
    v30 = (v28 - v25) * 1000.0;
    if (v22 < v30)
    {
      sub_1004D823C();
      sub_1004D821C();
      v32 = v31;
      v29(v9, v6);
      v33 = v63;
      sub_1004D848C();
      v34 = v60;
      sub_1004D823C();
      sub_1004D842C();
      v29(v34, v6);
      (*(v59 + 8))(v33, v4);
      sub_1004D821C();
      v36 = v35;
      v29(v9, v6);
      v37 = sub_1004DDA8C();
      v38 = v61;
      (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
      sub_1004DDA4C();
      v39 = sub_1004DDA3C();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = &protocol witness table for MainActor;
      *(v40 + 32) = *v72;
      *(v40 + 48) = v25;
      *(v40 + 56) = v24;
      *(v40 + 64) = v26;
      *(v40 + 72) = v36;
      *(v40 + 80) = v23;
      *(v40 + 88) = v32;
      *(v40 + 96) = v62;
      sub_10011F560(0, 0, v38, &unk_10051A070, v40);

      return;
    }

    sub_10001074C(&v68, &qword_100636B28, &qword_10051A060);
    v41 = sub_1004D964C();
    v53 = sub_1004DDF9C();
    if (os_log_type_enabled(v41, v53))
    {
      v54 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v54 = 136446722;
      v66 = v23;
      v55 = sub_1004DD4DC();
      v57 = sub_1000343A8(v55, v56, &v67);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2050;
      *(v54 + 14) = v30;
      *(v54 + 22) = 2050;
      *(v54 + 24) = v22;
      v48 = "❌ Failed to configure %{public}s playsSummary event: range=%{public}f ms isn't greater than post frequency=%{public}f ms";
      v49 = v53;
      v50 = v41;
      v51 = v54;
      v52 = 32;
      goto LABEL_17;
    }
  }

  else
  {
    v41 = sub_1004D964C();
    v42 = sub_1004DDF9C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v72[0] = v44;
      *v43 = 136446210;
      LOBYTE(v67) = v23;
      v45 = sub_1004DD4DC();
      v47 = sub_1000343A8(v45, v46, v72);

      *(v43 + 4) = v47;
      v48 = "❌ Failed to configure %{public}s playsSummary event: no persisted metrics data";
      v49 = v42;
      v50 = v41;
      v51 = v43;
      v52 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v50, v49, v48, v51, v52);
      sub_100008D24(v44);
    }
  }
}

uint64_t sub_1000EFFD0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 624) = a2;
  *(v7 + 688) = a7;
  *(v7 + 616) = a1;
  *(v7 + 608) = a6;
  v8 = sub_1004D82AC();
  *(v7 + 632) = v8;
  *(v7 + 640) = *(v8 - 8);
  *(v7 + 648) = swift_task_alloc();
  v9 = sub_1004DBF6C();
  *(v7 + 656) = v9;
  *(v7 + 664) = *(v9 - 8);
  *(v7 + 672) = swift_task_alloc();
  sub_1004DDA4C();
  *(v7 + 680) = sub_1004DDA3C();
  v11 = sub_1004DD9BC();

  return _swift_task_switch(sub_1000F012C, v11, v10);
}

uint64_t sub_1000F012C()
{

  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 688);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v35 = static MetricsReportingController.shared;
  sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_1005127D0;
  strcpy((inited + 32), "totalDuration");
  *(inited + 46) = -4864;
  *(inited + 48) = round(*v7 * 1000.0);
  *(inited + 72) = &type metadata for Double;
  *(inited + 80) = 0x6E756F4379616C70;
  *(inited + 88) = 0xE900000000000074;
  *(inited + 96) = *(v7 + 8);
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6D6954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = round(v6 * 1000.0);
  *(inited + 168) = &type metadata for Double;
  *(inited + 176) = 0x707954746E657665;
  *(inited + 184) = 0xE900000000000065;
  strcpy((inited + 192), "playsSummary");
  *(inited + 205) = 0;
  *(inited + 206) = -5120;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F436E6F69746361;
  v10 = v5 & 1;
  v11 = 0x79616C50726143;
  if (v10)
  {
    v11 = 0x746F6F7465756C62;
  }

  v12 = 0xE900000000000068;
  if (!v10)
  {
    v12 = 0xE700000000000000;
  }

  *(inited + 232) = 0xED0000747865746ELL;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "rangeStartTime");
  *(inited + 287) = -18;
  *(inited + 288) = round(*(v7 + 16) * 1000.0);
  *(inited + 312) = &type metadata for Double;
  strcpy((inited + 320), "rangeEndTime");
  *(inited + 333) = 0;
  *(inited + 334) = -5120;
  *(inited + 336) = round(v4 * 1000.0);
  *(inited + 360) = &type metadata for Double;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x80000001004EBBD0;
  *(inited + 384) = *(*(v7 + 24) + 16);
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = 0x80000001004EBBF0;
  v13 = sub_1000FF18C(*(v7 + 32));
  v9[57] = &type metadata for String;
  v9[54] = v13;
  v9[55] = v14;
  sub_10005E644(v9);
  swift_setDeallocating();
  sub_100004CB8(&qword_100635958, &qword_100516C60);
  swift_arrayDestroy();
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  sub_1000C10F4();
  *v1 = sub_1004DE14C();
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v16 = sub_1004DBF9C();
  result = (*(v2 + 8))(v1, v3);
  if (v16)
  {
    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v34 = *(v0 + 632);
    v20 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_1004DD1FC().super.isa;

    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:0];
    [v20 setShouldSuppressDSIDHeader:0];

    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_100511DA0;
    strcpy((v22 + 32), "clientEventId");
    *(v22 + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_1004D827C();
    v25 = v24;
    (*(v19 + 8))(v18, v34);
    *(v22 + 72) = &type metadata for String;
    *(v22 + 48) = v23;
    *(v22 + 56) = v25;
    sub_10005E644(v22);
    swift_setDeallocating();
    sub_10001074C(v22 + 32, &qword_100635958, &qword_100516C60);
    v26 = sub_1004DD1FC().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v35[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v28[2] = v20;
    v28[3] = 0xD000000000000014;
    v28[4] = 0x80000001004EBBB0;
    v28[5] = v35;
    v28[6] = sub_1000F18A0;
    v28[7] = v15;
    *(v0 + 592) = sub_1000F18F8;
    *(v0 + 600) = v28;
    *(v0 + 560) = _NSConcreteStackBlock;
    *(v0 + 568) = 1107296256;
    *(v0 + 576) = sub_100012680;
    *(v0 + 584) = &unk_1005DC0B0;
    v29 = _Block_copy((v0 + 560));
    v30 = v27;
    v31 = v35;

    v32 = v20;

    [v32 setStandardPropertiesWith:v30 completionHandler:v29];
    _Block_release(v29);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F07E4(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100633AA8 != -1)
    {
      swift_once();
    }

    v2 = sub_1004D966C();
    sub_100035430(v2, static Logger.carMetrics);
    swift_errorRetain();
    v3 = sub_1004D964C();
    v4 = sub_1004DDF7C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v5 = 136446466;
      v6 = sub_1004DD4DC();
      v8 = sub_1000343A8(v6, v7, &v22);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      swift_errorRetain();
      sub_100004CB8(&qword_100638980, &qword_100515B30);
      v9 = sub_1004DD4DC();
      v11 = sub_1000343A8(v9, v10, &v22);

      *(v5 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "❌ Failed to report %{public}s playsSummary event with error=%{public}s", v5, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100633AA8 != -1)
    {
      swift_once();
    }

    v12 = sub_1004D966C();
    sub_100035430(v12, static Logger.carMetrics);
    v13 = sub_1004D964C();
    v14 = sub_1004DDF9C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136446210;
      v17 = sub_1004DD4DC();
      v19 = sub_1000343A8(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "✅ Reported %{public}s playsSummary event", v15, 0xCu);
      sub_100008D24(v16);
    }

    v20 = [objc_opt_self() standardUserDefaults];
    v21 = sub_1004DD3FC();

    [v20 setValue:0 forKey:v21];
  }
}

uint64_t sub_1000F0BA0()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.carMetrics);
  sub_100035430(v0, static Logger.carMetrics);
  return sub_1004D965C();
}

uint64_t static Logger.carMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.carMetrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000F0CC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79616C50656D6974 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C50736B63617274 && a2 == 0xEC00000064657961 || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61745365676E6172 && a2 == 0xEE00656D69547472 || (sub_1004DF08C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004EBB70 == a2 || (sub_1004DF08C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004EBB90 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1004DF08C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000F0E94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100004CB8(&qword_100636B38, &unk_10051A080);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - v7;
  sub_100008C70(a1, a1[3]);
  sub_1000EF3AC();
  sub_1004DF2FC();
  if (v2)
  {
    return sub_100008D24(a1);
  }

  v22 = 0;
  sub_1004DEEAC();
  v10 = v9;
  v21 = 1;
  v11 = sub_1004DEEBC();
  v20 = 2;
  sub_1004DEEAC();
  v13 = v12;
  sub_100004CB8(&qword_100636A50, &unk_100519E18);
  v19 = 3;
  sub_1000F1974(&qword_100636B40, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
  sub_1004DEECC();
  v14 = v17[1];
  v18 = 4;
  v15 = sub_1004DEEBC();
  (*(v6 + 8))(v8, v5);
  result = sub_100008D24(a1);
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

void sub_1000F1120(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1004DD3FC();

  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v10 = v15;
  v11 = v16;
  if (!*(&v16 + 1))
  {
    sub_10001074C(&v10, &qword_100638E60, &unk_10051A920);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v6 = 0uLL;
    goto LABEL_9;
  }

  sub_1004D7AAC();
  swift_allocObject();
  sub_1004D7A9C();
  sub_1000F1920();
  sub_1004D7A8C();
  sub_100010598(v13, v14);

  v6 = v10;
  v8 = *(&v11 + 1);
  v7 = v11;
  v9 = v12;
LABEL_9:
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
}

unint64_t sub_1000F14C8()
{
  result = qword_100636A60;
  if (!qword_100636A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636A60);
  }

  return result;
}

unint64_t sub_1000F1520()
{
  result = qword_100636A68;
  if (!qword_100636A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636A68);
  }

  return result;
}

uint64_t sub_1000F1594(uint64_t a1, int a2)
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

uint64_t sub_1000F15DC(uint64_t result, int a2, int a3)
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

unint64_t sub_1000F166C()
{
  result = qword_100636B10;
  if (!qword_100636B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636B10);
  }

  return result;
}

unint64_t sub_1000F16C4()
{
  result = qword_100636B18;
  if (!qword_100636B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636B18);
  }

  return result;
}

unint64_t sub_1000F171C()
{
  result = qword_100636B20;
  if (!qword_100636B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636B20);
  }

  return result;
}

uint64_t sub_1000F1770()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000F17B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035B28;

  return sub_1000EFFD0(v6, v8, a1, v4, v5, v1 + 32, v7);
}

uint64_t sub_1000F18A8()
{

  return swift_deallocObject();
}

double sub_1000F1908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000F1920()
{
  result = qword_100636B30;
  if (!qword_100636B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636B30);
  }

  return result;
}

uint64_t sub_1000F1974(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(&qword_100636A50, &unk_100519E18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *MPModelObject.metricsDictionary.getter()
{
  objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
  v1 = v0;
  v2 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 effectiveStorePlatformDictionary];

    if (v4)
    {
      v5 = sub_1004DD21C();

      return v5;
    }
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 anyObject];
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v7 = [v8 innerObject];
LABEL_8:
    v9 = v7;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  v9 = v1;
LABEL_10:
  v10 = v9;
  ObjectType = swift_getObjectType();
  v12 = [v10 identifiers];
  v13 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v12);
  v15 = v14;

  if (v15)
  {
    sub_100004CB8(&qword_100636B48, &unk_10051A090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    v30 = sub_1004DD43C();
    v31 = v17;
    sub_1004DEA4C();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v13;
    *(inited + 80) = v15;
    v5 = sub_10005F274(inited);
    swift_setDeallocating();
    sub_1000F21E8(inited + 32);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1004DD43C();
      sub_1004DEA4C();
      v29 = &type metadata for String;
      *&v28 = sub_1004DD43C();
      *(&v28 + 1) = v18;
      sub_100006F5C(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10005A538(v27, &v30, isUniquelyReferenced_nonNull_native);
      sub_1000105EC(&v30);
    }
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v20 = MPModelPropertyPlaylistType;
      v21 = v1;
      if ([v5 hasLoadedValueForKey:v20] && objc_msgSend(v5, "type") == 9)
      {
        sub_100004CB8(&qword_100636B48, &unk_10051A090);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_1005126C0;
        sub_1004DD43C();
        sub_1004DEA4C();
        *(v22 + 96) = &type metadata for String;
        strcpy((v22 + 72), "FavoriteSongs");
        *(v22 + 86) = -4864;
        v30 = sub_1004DD43C();
        v31 = v23;
        sub_1004DEA4C();
        v24 = sub_1004DD43C();
        *(v22 + 168) = &type metadata for String;
        *(v22 + 144) = v24;
        *(v22 + 152) = v25;
        v5 = sub_10005F274(v22);
        swift_setDeallocating();
        sub_100004CB8(&unk_100635970, &qword_100516C78);
        swift_arrayDestroy();
      }

      else
      {

        return 0;
      }
    }
  }

  return v5;
}

id static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v5 = a2;
  if (a3 > 1u)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        result = [a4 library];
        if (!result)
        {
          return result;
        }

        v10 = result;
        if (![result persistentID])
        {
          goto LABEL_55;
        }

        [v10 persistentID];
        v11.super.super.isa = sub_1004DF22C().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100006F10(0, &qword_100636B50, MPModelPlaylist_ptr);
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_27;
      }

      sub_100006F10(0, &unk_100637D80, MPModelSocialPerson_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (a2)
      {
        result = [a4 personalizedStore];
        if (!result)
        {
          return result;
        }

        v13 = result;
        if (![result cloudID])
        {
          goto LABEL_55;
        }

        [v13 cloudID];
        v11.super.super.isa = sub_1004DF2DC().super.super.isa;
        v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        goto LABEL_51;
      }

      sub_100006F10(0, &qword_100636B50, MPModelPlaylist_ptr);
      v8 = swift_dynamicCastMetatype();
      if (v8)
      {
        goto LABEL_27;
      }
    }

    sub_100006F10(v8, qword_100636B58, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

LABEL_43:
    result = [a4 radio];
    if (!result)
    {
      return result;
    }

    v23 = result;
    v24 = [result stationStringID];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1004DD43C();
      v28 = v27;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        goto LABEL_53;
      }
    }

    if (![v23 stationID])
    {
LABEL_55:
      swift_unknownObjectRelease();
      return 0;
    }

    [v23 stationID];
    v11.super.super.isa = sub_1004DF22C().super.super.isa;
    v12 = MPStoreItemMetadataStringNormalizeStoreIDValue();
LABEL_51:
    v30 = v12;

    if (v30)
    {
      v26 = sub_1004DD43C();

LABEL_53:
      swift_unknownObjectRelease();
      return v26;
    }

    goto LABEL_55;
  }

  sub_100006F10(0, &qword_100636B50, MPModelPlaylist_ptr);
  if (!swift_dynamicCastMetatype())
  {
    sub_100006F10(0, &unk_100637D80, MPModelSocialPerson_ptr);
    if (swift_dynamicCastMetatype())
    {
      if (v5)
      {
        result = MPIdentifierSet.bestLibraryIdentifier.getter();
        if (v9)
        {
          return result;
        }
      }

      if ((v5 & 2) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a4 universalStore];
      if (v17)
      {
        v15 = [v17 socialProfileID];
LABEL_36:
        v18 = v15;
        swift_unknownObjectRelease();
        if (v18)
        {
          v19 = sub_1004DD43C();
          v21 = v20;

          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = v19 & 0xFFFFFFFFFFFFLL;
          }

          if (v22)
          {
            return v19;
          }
        }
      }

      return MPIdentifierSet.bestStoreIdentifier.getter();
    }

    sub_100006F10(0, qword_100636B58, MPModelRadioStation_ptr);
    if (!swift_dynamicCastMetatype())
    {
      if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v16))
      {
        if ((v5 & 2) == 0)
        {
          return 0;
        }

        return MPIdentifierSet.bestStoreIdentifier.getter();
      }

      return result;
    }

    if ((v5 & 2) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  if ((v5 & 1) == 0 || (result = MPIdentifierSet.bestLibraryIdentifier.getter(), !v7))
  {
    if ((v5 & 2) == 0)
    {
      return 0;
    }

LABEL_27:
    v14 = [a4 universalStore];
    if (v14)
    {
      v15 = [v14 globalPlaylistID];
      goto LABEL_36;
    }

    return MPIdentifierSet.bestStoreIdentifier.getter();
  }

  return result;
}

uint64_t sub_1000F21E8(uint64_t a1)
{
  v2 = sub_100004CB8(&unk_100635970, &qword_100516C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F22B8()
{

  return swift_deallocClassInstance();
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unsigned __int16 a12, uint64_t a13, uint64_t a14)
{
  v69 = a8;
  v64 = a6;
  v65 = a7;
  v61 = a5;
  v60 = a4;
  v63 = a12;
  v62 = a10;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v67 = &v59[-v18];
  sub_100004CB8(&qword_100635248, &unk_100516140);
  __chkstk_darwin();
  v71 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v70 = &v59[-v20];
  __chkstk_darwin();
  v68 = &v59[-v21];
  __chkstk_darwin();
  v66 = &v59[-v22];
  __chkstk_darwin();
  v24 = &v59[-v23];
  __chkstk_darwin();
  v26 = &v59[-v25];
  __chkstk_darwin();
  v28 = &v59[-v27];
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = v60;
  sub_100047F38(v61, a9 + v29[7], &qword_100634B30, &unk_100513D70);
  v31 = v65;
  *(a9 + v29[8]) = v64;
  v32 = (a9 + v29[9]);
  v33 = v69;
  *v32 = v31;
  v32[1] = v33;
  v34 = a9 + v29[10];
  *v34 = v62;
  *(v34 + 16) = a11;
  *(v34 + 24) = v63;
  v69 = a13;
  sub_1000108DC(a13, v28, &qword_100635248, &unk_100516140);
  v35 = type metadata accessor for MetricsEvent.Page(0);
  v36 = *(*(v35 - 1) + 48);
  if (v36(v28, 1, v35) == 1)
  {
    sub_10001074C(v28, &qword_100635248, &unk_100516140);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v37 = *v28;
    v38 = v28[1];

    sub_1000FF570(v28, type metadata accessor for MetricsEvent.Page);
  }

  v39 = (a9 + v29[12]);
  *v39 = v37;
  v39[1] = v38;
  v40 = v69;
  sub_1000108DC(v69, v26, &qword_100635248, &unk_100516140);
  if (v36(v26, 1, v35) == 1)
  {
    sub_10001074C(v26, &qword_100635248, &unk_100516140);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v41 = *(v26 + 2);
    v42 = *(v26 + 3);

    sub_1000FF570(v26, type metadata accessor for MetricsEvent.Page);
  }

  v43 = (a9 + v29[13]);
  *v43 = v41;
  v43[1] = v42;
  sub_1000108DC(v40, v24, &qword_100635248, &unk_100516140);
  v44 = v36(v24, 1, v35);
  v45 = v67;
  if (v44 == 1)
  {
    sub_10001074C(v24, &qword_100635248, &unk_100516140);
    v46 = sub_1004D809C();
    (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  }

  else
  {
    sub_1000108DC(v24 + v35[6], v67, &qword_100634B30, &unk_100513D70);
    sub_1000FF570(v24, type metadata accessor for MetricsEvent.Page);
  }

  v47 = v70;
  v48 = v68;
  sub_100047F38(v45, a9 + v29[14], &qword_100634B30, &unk_100513D70);
  v49 = v66;
  sub_1000108DC(v40, v66, &qword_100635248, &unk_100516140);
  if (v36(v49, 1, v35) == 1)
  {
    sub_10001074C(v49, &qword_100635248, &unk_100516140);
    v50 = 0;
  }

  else
  {
    v50 = *(v49 + v35[7]);

    sub_1000FF570(v49, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[15]) = v50;
  sub_1000108DC(v40, v48, &qword_100635248, &unk_100516140);
  if (v36(v48, 1, v35) == 1)
  {
    sub_10001074C(v48, &qword_100635248, &unk_100516140);
    v51 = 1;
  }

  else
  {
    v51 = *(v48 + v35[9]);
    sub_1000FF570(v48, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[16]) = v51;
  sub_1000108DC(v40, v47, &qword_100635248, &unk_100516140);
  if (v36(v47, 1, v35) == 1)
  {
    sub_10001074C(v47, &qword_100635248, &unk_100516140);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = (v47 + v35[8]);
    v52 = *v54;
    v53 = v54[1];

    sub_1000FF570(v47, type metadata accessor for MetricsEvent.Page);
  }

  v55 = (a9 + v29[18]);
  *v55 = v52;
  v55[1] = v53;
  v56 = v71;
  sub_100047F38(v40, v71, &qword_100635248, &unk_100516140);
  if (v36(v56, 1, v35) == 1)
  {
    result = sub_10001074C(v56, &qword_100635248, &unk_100516140);
    v58 = 2;
  }

  else
  {
    v58 = *(v56 + v35[11]);
    result = sub_1000FF570(v56, type metadata accessor for MetricsEvent.Page);
  }

  *(a9 + v29[17]) = v58;
  *(a9 + v29[11]) = a14;
  return result;
}

uint64_t sub_1000F2A6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *MetricsReportingController.shared.unsafeMutableAddressor()
{
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  return &static MetricsReportingController.shared;
}

unint64_t MetricsEvent.Click.ActionContext.rawValue.getter(unint64_t a1, int64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v2 = 0x6E654D6570697773;
          goto LABEL_27;
        case 10:
          v2 = 0xD000000000000010;
          goto LABEL_27;
        case 11:
          v2 = 0x6E65746E49707061;
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      v2 = 0xD000000000000010;
    }

    else if (a2 == 7)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x6853686372616573;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          v2 = 0x6E6F74747562;
          goto LABEL_27;
        case 1:
          v2 = 0x6472616F6279656BLL;
          goto LABEL_27;
        case 2:
          v2 = 0x79726F7473;
          goto LABEL_27;
      }

LABEL_26:
      v2 = a1;
      goto LABEL_27;
    }

    if (a2 == 3)
    {
      v2 = 1701998445;
    }

    else if (a2 == 4)
    {
      v2 = 0x636972796CLL;
    }

    else
    {
      v2 = 0x6B63617274;
    }
  }

LABEL_27:
  sub_100046F24(a1, a2);
  return v2;
}

__n128 MetricsEvent.ComponentRender.init(componentIdentifier:componentType:componentAppearTime:componentPlaceholderAppearTime:componentMotionActivationTime:componentRequestTime:componentEndTime:componentInterruptTime:preloadStatus:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  *&v15 = a1;
  *(&v15 + 1) = a2;
  v16.n128_u8[0] = a3;
  v16.n128_u64[1] = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  *v18 = a7;
  *&v18[8] = a8;
  *&v18[16] = a10;
  v18[24] = a11;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  v27 = a11;
  sub_1000EEE24(&v15, &v14);
  sub_1000EEEB0(v19);
  v12 = *v18;
  *(a9 + 32) = v17;
  *(a9 + 48) = v12;
  *(a9 + 57) = *&v18[9];
  result = v16;
  *a9 = v15;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_1000F2D4C()
{
  v1 = v0;
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_1004D826C();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = sub_1001048F4();

  if (v17)
  {
    return 1;
  }

  v19 = sub_100104C4C();
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    sub_1004DDB8C();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_100104710();
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        sub_1004DDB8C();

        if ((v41 & 1) == 0)
        {
          sub_1004D825C();
          v24 = *(v1 + 16);
          sub_10010499C(v4);
          sub_100047F38(v4, v6, &qword_100636E60, &qword_10051A950);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_10001074C(v6, &qword_100636E60, &qword_10051A950);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_10001074C(v6, &qword_100636E60, &qword_10051A950);
            sub_1004D81BC();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = sub_1004D81EC();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_1000FEFA0(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              sub_1000108DC(v4, v37, &qword_100636E60, &qword_10051A950);
              sub_100104AB8(v34);
              swift_endAccess();
              sub_10001074C(v4, &qword_100636E60, &qword_10051A950);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t sub_1000F3234()
{
  v1 = v0;
  sub_100004CB8(&qword_100636E60, &qword_10051A950);
  __chkstk_darwin();
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v36 - v3;
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_1004D826C();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __chkstk_darwin();
  v13 = &v36 - v12;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  v16 = *(v0 + 16);
  v17 = sub_100105004();

  if (v17)
  {
    return 1;
  }

  v19 = sub_1000FEEC4(0xD000000000000023, 0x80000001004EC0B0);
  v18 = 1;
  if (v19)
  {
    v40 = 0.0;
    v41 = 1;
    v20 = v19;
    sub_1004DDB8C();

    if (v41 != 1)
    {
      v21 = v40;
      v22 = sub_1000FEEC4(0xD00000000000001BLL, 0x80000001004EC0E0);
      if (v22)
      {
        v40 = 0.0;
        v41 = 1;
        v23 = v22;
        sub_1004DDB8C();

        if ((v41 & 1) == 0)
        {
          sub_1004D825C();
          v24 = *(v1 + 16);
          sub_1001050AC(v4);
          sub_100047F38(v4, v6, &qword_100636E60, &qword_10051A950);

          v25 = v38;
          v26 = v39;
          if ((*(v38 + 48))(v6, 1, v39))
          {
            sub_10001074C(v6, &qword_100636E60, &qword_10051A950);
            v27 = v26;
            v28 = v25;
          }

          else
          {
            (*(v25 + 16))(v9, v6, v26);
            sub_10001074C(v6, &qword_100636E60, &qword_10051A950);
            sub_1004D81BC();
            v29 = v9;
            v30 = *(v25 + 8);
            v30(v29, v26);
            (*(v25 + 32))(v13, v11, v26);
            v31 = sub_1004D81EC();
            v30(v13, v26);
            v27 = v26;
            v28 = v25;
            if (v31)
            {
              v30(v15, v26);
              return 1;
            }
          }

          v32 = sub_1000FEFA0(0x20000000000001uLL);
          if (v32 == 0x20000000000000)
          {
            if (v21 >= 1.0)
            {
LABEL_17:
              (*(v28 + 16))(v4, v15, v27);
              v18 = 1;
              (*(v28 + 56))(v4, 0, 1, v27);
              swift_beginAccess();
              v34 = v37;
              sub_1000108DC(v4, v37, &qword_100636E60, &qword_10051A950);
              sub_1001051C8(v34);
              swift_endAccess();
              sub_10001074C(v4, &qword_100636E60, &qword_10051A950);
              (*(v28 + 8))(v15, v27);
              return v18;
            }
          }

          else
          {
            v33 = vcvtd_n_f64_u64(v32, 0x35uLL);
            if (v33 > 0.0 && v33 <= v21)
            {
              goto LABEL_17;
            }
          }

          (*(v28 + 8))(v15, v27);
          return 0;
        }
      }
    }
  }

  return v18;
}

uint64_t MetricsEvent.TargetType.init(contentItem:)(void *a1)
{
  v2 = [a1 itemType];
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 7)
      {

        return 21;
      }

      goto LABEL_8;
    }

    return 17;
  }

  else
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {

        return 3;
      }

LABEL_8:
      v4 = sub_1004DDF7C();
      sub_100004CB8(&qword_100636BE0, &qword_10051A170);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100511DA0;
      [a1 itemType];
      type metadata accessor for MPModelStoreBrowseContentItemType(0);
      v6 = sub_1004DD4DC();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_1000F811C();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      sub_100006F10(0, &qword_10063CE40, OS_os_log_ptr);
      v9 = sub_1004DE79C();
      sub_1004D953C(v4, &_mh_execute_header, v9, "MPModelStoreBrowseContentItem.Kind.targetType: Returning nil for [targetType for this kind not yet implemented] self=%@", 119, 2, v5);

      return 27;
    }

    return 0;
  }
}

unint64_t MetricsEvent.TargetType.rawValue.getter(char a1)
{
  result = 0x6D75626C41;
  switch(a1)
  {
    case 1:
      result = 0x7465446D75626C41;
      break;
    case 2:
      result = 7368801;
      break;
    case 3:
      result = 0x747369747241;
      break;
    case 4:
      result = 0x72656E6E6162;
      break;
    case 5:
      result = 0x6E6F74747562;
      break;
    case 6:
      result = 0x6954656C62627562;
      break;
    case 7:
      result = 1685217603;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7265746C6966;
      break;
    case 10:
      result = 0x7449726564616548;
      break;
    case 11:
      result = 0x7473694C746E6948;
      break;
    case 12:
      result = 7955819;
      break;
    case 13:
      result = 1802398060;
      break;
    case 14:
      result = 0x6E694C636972796CLL;
      break;
    case 15:
      result = 0x6D6574497473694CLL;
      break;
    case 16:
      result = 7235952;
      break;
    case 17:
    case 18:
      result = 0x7473696C79616C50;
      break;
    case 19:
      result = 0x4C746E65746E6F43;
      break;
    case 20:
      result = 0x726564696C73;
      break;
    case 21:
      result = 1735290707;
      break;
    case 22:
      result = 0x6974736567677573;
      break;
    case 23:
      result = 0x786F4274786574;
      break;
    case 24:
      result = 0x6C6C65737055;
      break;
    case 25:
      result = 0x657449666C656853;
      break;
    case 26:
      result = 0x6D65744964697247;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000F3C34@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::TargetType_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_1000F3C64@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsEvent.TargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v18 = type metadata accessor for MetricsEvent.Page(0);
  result = sub_100047F38(a5, a9 + v18[6], &qword_100634B30, &unk_100513D70);
  *(a9 + v18[7]) = a6;
  v20 = (a9 + v18[8]);
  *v20 = a7;
  v20[1] = a8;
  *(a9 + v18[9]) = a10 & 1;
  v21 = (a9 + v18[10]);
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v18[11]) = a13;
  return result;
}

uint64_t static MetricsEvent.Page.contextualActionMenu(storeID:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0x80000001004EBD00;
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = v6[6];
  v8 = sub_1004D809C();
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = v4;
  *(a3 + 1) = v5;
  *(a3 + 2) = 0xD000000000000014;
  *(a3 + 3) = 0x80000001004EBD00;
  *&a3[v6[7]] = 0;
  v9 = &a3[v6[8]];
  *v9 = 0;
  *(v9 + 1) = 0;
  a3[v6[9]] = 1;
  v10 = &a3[v6[10]];
  *v10 = 0;
  *(v10 + 1) = 0;
  a3[v6[11]] = 2;
}

uint64_t sub_1000F3E60()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryLanding);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryLanding);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x7972617262694CLL;
  *(v1 + 1) = 0xE700000000000000;
  *(v1 + 2) = 0x676E69646E614CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F3FA0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryMenuEdit);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryMenuEdit);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x4D7972617262694CLL;
  *(v1 + 1) = 0xEF74696445756E65;
  *(v1 + 2) = 0x72656B636950;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F40C8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MetricsEvent.Page(0);

  return sub_100035430(v4, a2);
}

uint64_t sub_1000F4140@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = sub_100035430(v6, a2);

  return sub_1000FF49C(v7, a4);
}

uint64_t sub_1000F41A0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryMadeForYou);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryMadeForYou);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x59726F466564614DLL;
  *(v1 + 1) = 0xEA0000000000756FLL;
  *(v1 + 2) = 0x7972617262694CLL;
  *(v1 + 3) = 0xE700000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F42E8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryAlbumsList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryAlbumsList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001004EC260;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4430()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryArtistsList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryArtistsList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001004EC240;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4578()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryCompilationsList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryCompilationsList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000017;
  *(v1 + 1) = 0x80000001004EC220;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F46C0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryComposersList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryComposersList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001004EC200;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4808()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryGenresList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryGenresList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000011;
  *(v1 + 1) = 0x80000001004EC1E0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4950()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryMusicVideosList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x80000001004EC1C0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4A98()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryPlaylistsList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000014;
  *(v1 + 1) = 0x80000001004EC1A0;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4BE0()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.librarySongsList);
  v1 = sub_100035430(v0, static MetricsEvent.Page.librarySongsList);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000010;
  *(v1 + 1) = 0x80000001004EC180;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4D28()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryRecentlyAdded);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000018;
  *(v1 + 1) = 0x80000001004EC160;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4E70()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryRecentlyDownloaded);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD00000000000001DLL;
  *(v1 + 1) = 0x80000001004EC140;
  *(v1 + 2) = 1836019538;
  *(v1 + 3) = 0xE400000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F4FB8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryAlbumDetail);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryAlbum");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + 16) = 0x6D75626C41;
  *(v1 + 24) = 0xE500000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_1000F5100()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryArtistDetail);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryArtistDetail);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "LibraryArtist");
  *(v1 + 14) = -4864;
  *(v1 + 16) = 0x747369747241;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 1;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t sub_1000F524C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryPlaylistDetail);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x507972617262694CLL;
  *(v1 + 1) = 0xEF7473696C79616CLL;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F539C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryComposerDetail);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryComposerDetail);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x437972617262694CLL;
  *(v1 + 1) = 0xEF7265736F706D6FLL;
  *(v1 + 2) = 0x747369747241;
  *(v1 + 3) = 0xE600000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F54E8()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.libraryGenreDetail);
  v1 = sub_100035430(v0, static MetricsEvent.Page.libraryGenreDetail);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0xD000000000000012;
  *(v1 + 1) = 0x80000001004EC120;
  *(v1 + 2) = 0x65726E6547;
  *(v1 + 3) = 0xE500000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F5634()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.playlistCreation);
  v1 = sub_100035430(v0, static MetricsEvent.Page.playlistCreation);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *v1 = 0x6C79616C5077654ELL;
  *(v1 + 1) = 0xEB00000000747369;
  *(v1 + 2) = 0x7473696C79616C50;
  *(v1 + 3) = 0xE800000000000000;
  *&v1[v0[7]] = 0;
  v5 = &v1[v0[8]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[v0[9]] = 0;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v1[v0[11]] = 2;
  return result;
}

uint64_t sub_1000F577C()
{
  v0 = type metadata accessor for MetricsEvent.Page(0);
  sub_100035718(v0, static MetricsEvent.Page.playlistPicker);
  v1 = sub_100035430(v0, static MetricsEvent.Page.playlistPicker);
  v2 = v0[6];
  v3 = sub_1004D809C();
  result = (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  strcpy(v1, "PlaylistPicker");
  *(v1 + 15) = -18;
  *(v1 + 16) = 0x72656B636950;
  *(v1 + 24) = 0xE600000000000000;
  *(v1 + v0[7]) = 0;
  v5 = (v1 + v0[8]);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + v0[9]) = 0;
  v6 = (v1 + v0[10]);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + v0[11]) = 2;
  return result;
}

uint64_t MetricsEvent.Page.metricsPageProperties.getter@<X0>(char *a1@<X8>)
{
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v5 = v1[1];
  v18 = *v1;
  v7 = v1[2];
  v6 = v1[3];
  v8 = type metadata accessor for MetricsEvent.Page(0);
  sub_1000108DC(v1 + v8[6], v4, &qword_100634B30, &unk_100513D70);
  v9 = *(v1 + v8[7]);
  v10 = (v1 + v8[10]);
  v11 = v10[1];
  v19 = *v10;
  v12 = type metadata accessor for MetricsPageProperties(0);
  v13 = v12[6];
  v14 = sub_1004D809C();
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v12[7];
  v16 = &a1[v12[8]];
  *a1 = v18;
  *(a1 + 1) = v5;
  *(a1 + 2) = v7;
  *(a1 + 3) = v6;

  result = sub_1000FF500(v4, &a1[v13]);
  *&a1[v15] = v9;
  *v16 = v19;
  *(v16 + 1) = v11;
  return result;
}

BOOL MetricsEvent.Page.DisplayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D1748;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  return v4 != 0;
}

Swift::Int sub_1000F5AA4()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

Swift::Int sub_1000F5B10()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

uint64_t sub_1000F5B60@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D1780;
  v7._object = v3;
  v5 = sub_1004DEE2C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = type metadata accessor for MetricsEvent.Click(0);
  *(a9 + v29[19]) = 0;
  v30 = (a9 + v29[20]);
  *v30 = 0;
  v30[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_100047F38(a5, a9 + v29[7], &qword_100634B30, &unk_100513D70);
  *(a9 + v29[8]) = a6;
  v31 = (a9 + v29[9]);
  *v31 = a7;
  v31[1] = a8;
  v32 = a9 + v29[10];
  *v32 = a10;
  *(v32 + 16) = a11;
  *(v32 + 24) = a12;
  v33 = (a9 + v29[12]);
  *v33 = a13;
  v33[1] = a14;
  v34 = (a9 + v29[13]);
  *v34 = a15;
  v34[1] = a16;
  result = sub_100047F38(a17, a9 + v29[14], &qword_100634B30, &unk_100513D70);
  *(a9 + v29[15]) = a18;
  *(a9 + v29[16]) = a19 & 1;
  *(a9 + v29[17]) = a20;
  *(a9 + v29[11]) = a21;
  v36 = (a9 + v29[18]);
  *v36 = a22;
  v36[1] = a23;
  return result;
}

__n128 MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, unint64_t a11, unsigned __int16 a12, uint64_t *a13, uint64_t a14)
{
  v18 = a13[1];
  v33 = *a13;
  v19 = a13[3];
  v35 = a13[2];
  v20 = type metadata accessor for MetricsPageProperties(0);
  v21 = *(v20 + 24);
  v22 = type metadata accessor for MetricsEvent.Click(0);
  sub_1000108DC(a13 + v21, a9 + v22[14], &qword_100634B30, &unk_100513D70);
  v23 = *(a13 + *(v20 + 28));

  sub_1000FF570(a13, type metadata accessor for MetricsPageProperties);
  *(a9 + v22[19]) = 0;
  v24 = (a9 + v22[20]);
  *v24 = 0;
  v24[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  sub_100047F38(a5, a9 + v22[7], &qword_100634B30, &unk_100513D70);
  *(a9 + v22[8]) = a6;
  v25 = (a9 + v22[9]);
  *v25 = a7;
  v25[1] = a8;
  v26 = (a9 + v22[10]);
  result = a10;
  *v26 = a10;
  v26[1].n128_u64[0] = a11;
  v26[1].n128_u16[4] = a12;
  v28 = (a9 + v22[12]);
  *v28 = v33;
  v28[1] = v18;
  v29 = (a9 + v22[13]);
  *v29 = v35;
  v29[1] = v19;
  *(a9 + v22[15]) = v23;
  *(a9 + v22[16]) = 1;
  *(a9 + v22[17]) = 2;
  *(a9 + v22[11]) = a14;
  v30 = (a9 + v22[18]);
  *v30 = 0;
  v30[1] = 0;
  return result;
}

uint64_t MetricsEvent.Click.isSharedContent.setter(char a1)
{
  result = type metadata accessor for MetricsEvent.Click(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  return v1;
}

uint64_t MetricsEvent.Click.dataRecoDataSetId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsEvent.Click(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MetricsEvent.Click.ActionType.rawValue.getter(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x68536E6F69746361;
    case 2:
      return 0x6574617669746361;
    case 3:
      return 6579297;
    case 4:
      return 0x73676E6F53646461;
    case 5:
      return 0x62694C6F54646461;
    case 6:
      return 0x6575516F54646461;
    case 7:
      return 0x7473756A6461;
    case 8:
      return 0x616C506E69676562;
    case 9:
      return 0x6C65636E6163;
    case 10:
      return 0x726F62616C6C6F63;
    case 11:
      return 0x657461657263;
    case 12:
      return 0x7453657461657263;
    case 13:
      v4 = 5;
      goto LABEL_64;
    case 14:
      return 0x64616F6C6E776F64;
    case 15:
      return 0x6176697463616564;
    case 16:
      return 0x6574656C6564;
    case 17:
      return 0x7463656C65736564;
    case 18:
      return 0x7470697263736564;
    case 19:
      return 0x7373696D736964;
    case 20:
      return 1953064037;
    case 21:
      return 0x65766F4374696465;
    case 22:
      return 0x657469726F766166;
    case 23:
      return 0x69726F7661666E75;
    case 24:
      return 1702125928;
    case 25:
      return 0x657461686E75;
    case 26:
      return 1953393000;
    case 27:
      return 0x7475706E69;
    case 28:
      return 0x657461676976616ELL;
    case 29:
      return 7235952;
    case 30:
      return 0x6E69706E75;
    case 31:
      return 2036427888;
    case 32:
      v3 = 0x664179616C70;
      goto LABEL_49;
    case 33:
      v3 = 0x614C79616C70;
LABEL_49:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
      break;
    case 34:
      result = 0x7478654E79616C70;
      break;
    case 35:
      result = 0x7463616572;
      break;
    case 36:
      result = 1868850546;
      break;
    case 37:
      result = 0x6F4465766F6D6572;
      break;
    case 38:
      v4 = 11;
LABEL_64:
      result = v4 | 0xD000000000000010;
      break;
    case 39:
      result = 0xD000000000000012;
      break;
    case 40:
      result = 0x726564726F6572;
      break;
    case 41:
      result = 0x6F4374726F706572;
      break;
    case 42:
      result = 0x686372616573;
      break;
    case 43:
      result = 1801807219;
      break;
    case 44:
      result = 0x7463656C6573;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
      result = 0x6572616873;
      break;
    case 49:
      result = 0x694C646572616873;
      break;
    case 50:
      result = 0x72794C6572616873;
      break;
    case 51:
      result = 0x6972794C776F6873;
      break;
    case 52:
      result = 0x72506E4F776F6873;
      break;
    case 53:
      result = 0x656C6666756873;
      break;
    case 54:
      result = 0x74696D627573;
      break;
    case 55:
      result = 0x656C67676F74;
      break;
    case 56:
      result = 1868852853;
      break;
    case 57:
      result = 0x75626C4177656976;
      break;
    case 58:
      result = 0x6974724177656976;
      break;
    case 59:
      result = 0x6465724377656976;
      break;
    case 60:
      result = 0x79616C5077656976;
      break;
    case 61:
      result = 0x77656976657270;
      break;
    case 62:
      result = 0x6573756170;
      break;
    case 63:
      result = 0x68736572666572;
      break;
    case 64:
      result = 1735289203;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F6850(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004DF08C();
  }

  return v12 & 1;
}

Swift::Int sub_1000F68FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004DF26C();
  a3(v5);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000F6980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1004DD55C();
}

Swift::Int sub_1000F69F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004DF26C();
  a4(v6);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1000F6A58@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::Click::ActionType_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000F6A88@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsEvent.Click.ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void MetricsEvent.Click.ActionContext.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 5)
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        v3 = 6;
      }

      else if (a3 == 7)
      {
        v3 = 7;
      }

      else
      {
        v3 = 8;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 9:
        v3 = 9;
        goto LABEL_26;
      case 10:
        v3 = 11;
        goto LABEL_26;
      case 11:
        v3 = 12;
        goto LABEL_26;
    }
  }

  else
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        v3 = 3;
      }

      else if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_26;
    }

    switch(a3)
    {
      case 0:
        v3 = 0;
        goto LABEL_26;
      case 1:
        v3 = 1;
        goto LABEL_26;
      case 2:
        v3 = 2;
LABEL_26:
        sub_1004DF27C(v3);
        return;
    }
  }

  sub_1004DF27C(0xAuLL);

  sub_1004DD55C();
}

Swift::Int MetricsEvent.Click.ActionContext.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004DF26C();
  MetricsEvent.Click.ActionContext.hash(into:)(v5, a1, a2);
  return sub_1004DF2BC();
}

Swift::Int sub_1000F6C40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004DF26C();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_1004DF2BC();
}

Swift::Int sub_1000F6C94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004DF26C();
  MetricsEvent.Click.ActionContext.hash(into:)(v4, v1, v2);
  return sub_1004DF2BC();
}

void *MetricsEvent.Click.ActionDetails.dictionary.getter(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (BYTE1(a4) > 1u)
  {
    if (BYTE1(a4) == 2)
    {
      if (!a2)
      {
        return 0;
      }

      sub_100004CB8(&unk_100639EA0, &qword_10051A178);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100511DA0;
      strcpy((inited + 32), "searchPrefix");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v4;
      *(inited + 56) = a2;
      sub_100047EC8(v4, a2, a3, a4, 2);
      v4 = sub_10005E51C(inited);
      swift_setDeallocating();
      v7 = (inited + 32);
    }

    else
    {
      if (BYTE1(a4) == 3)
      {

        return v4;
      }

      v4 = sub_10005E51C(&off_1005D0ED0);
      v7 = &unk_1005D0EF0;
    }

LABEL_10:
    sub_10001074C(v7, &qword_100636BF0, &qword_10051A180);
    return v4;
  }

  if (!BYTE1(a4))
  {
    sub_100004CB8(&unk_100639EA0, &qword_10051A178);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100511DA0;
    strcpy((v5 + 32), "actionSubType");
    *(v5 + 46) = -4864;
    *(v5 + 48) = MetricsEvent.Click.ActionType.rawValue.getter(v4);
    *(v5 + 56) = v6;
    v4 = sub_10005E51C(v5);
    swift_setDeallocating();
    v7 = (v5 + 32);
    goto LABEL_10;
  }

  v13 = a4;
  if (!a1)
  {
    v4 = sub_10005E51C(&off_1005D0E70);
    sub_100004CB8(&qword_100636BF0, &qword_10051A180);
    goto LABEL_37;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;

      v22 = [v21 artist];
      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();

      if (!v23)
      {
LABEL_26:
        v26 = 0;
        goto LABEL_27;
      }

      v22 = [v23 artist];
      if (!v22)
      {
LABEL_25:
        v23 = 0;
        goto LABEL_26;
      }
    }

    v24 = v22;
    v19 = [v22 name];

    if (v19)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v17 = v16;

  v18 = [v17 name];
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
LABEL_24:
  v23 = sub_1004DD43C();
  v26 = v25;

LABEL_27:
  sub_100004CB8(&unk_100639EA0, &qword_10051A178);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100511A40;
  *(v27 + 32) = 1684957547;
  *(v27 + 40) = 0xE400000000000000;
  v28 = sub_100101EA0(v4);
  *(v27 + 48) = MetricsContentType.rawValue.getter(v28);
  *(v27 + 56) = v29;
  *(v27 + 64) = 0x614E747369747261;
  *(v27 + 72) = 0xEA0000000000656DLL;
  v30 = 16718;
  if (v26)
  {
    v30 = v23;
  }

  v31 = 0xE200000000000000;
  if (v26)
  {
    v31 = v26;
  }

  *(v27 + 80) = v30;
  *(v27 + 88) = v31;
  strcpy((v27 + 96), "lyricSnippet");
  *(v27 + 109) = 0;
  *(v27 + 110) = -5120;
  if (a3)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (a3)
  {
    v33 = a3;
  }

  *(v27 + 112) = v32;
  *(v27 + 120) = v33;
  v4 = sub_10005E51C(v27);
  swift_setDeallocating();
  sub_100004CB8(&qword_100636BF0, &qword_10051A180);
LABEL_37:
  swift_arrayDestroy();
  if (v13 != 65)
  {
    v35 = MetricsEvent.Click.ActionType.rawValue.getter(v13);
    v36 = v34;
    if (v35 == 0xD000000000000015 && 0x80000001004E9250 == v34)
    {
    }

    else
    {
      v37 = sub_1004DF08C();

      if ((v37 & 1) == 0)
      {
        return v4;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10005A23C(v35, v36, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

void __swiftcall MetricsEvent.Dialog.init(dialogID:dialogType:title:message:messageCode:options:subjectID:targetID:actionType:)(MusicCore::MetricsEvent::Dialog *__return_ptr retstr, Swift::String dialogID, MusicCore::MetricsEvent::Dialog::Type dialogType, Swift::String_optional title, Swift::String_optional message, Swift::String messageCode, Swift::OpaquePointer options, Swift::String_optional subjectID, Swift::String targetID, MusicCore::MetricsEvent::Dialog::ActionType actionType)
{
  v17 = dialogID;
  LOBYTE(v18) = dialogType & 1;
  *(&v18 + 1) = title.value._countAndFlagsBits;
  *&v19 = title.value._object;
  *(&v19 + 1) = message.value._countAndFlagsBits;
  *&v20 = message.value._object;
  *(&v20 + 1) = messageCode._countAndFlagsBits;
  *&v21 = messageCode._object;
  *(&v21 + 1) = options;
  v22 = subjectID;
  v23 = targetID;
  v24 = actionType & 1;
  v25 = dialogID;
  v26 = dialogType & 1;
  v27 = title;
  v28 = message;
  v29 = messageCode;
  rawValue = options._rawValue;
  v31 = subjectID;
  v32 = targetID;
  v33 = actionType & 1;
  sub_1000FF624(&v17, v16);
  sub_1000FF65C(&v25);
  v11 = v22;
  v12 = v23;
  v13 = v20;
  *&retstr->messageCode._object = v21;
  retstr->subjectID = v11;
  retstr->targetID = v12;
  v14 = v18;
  v15 = v19;
  retstr->dialogID = v17;
  *&retstr->dialogType = v14;
  retstr->actionType = v24;
  *&retstr->title.value._object = v15;
  *&retstr->message.value._object = v13;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ApplicationCapabilities.RatingWarning.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MetricsEvent.Dialog.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.messageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t LibraryModelRequest.scopedContainers.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t MetricsEvent.Dialog.subjectID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.targetID.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t MetricsEvent.Dialog.targetID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MetricsEvent.Dialog.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C65636E61436B4FLL;
  }

  else
  {
    return 27471;
  }
}

uint64_t sub_1000F75FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v3 = 27471;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C65636E61436B4FLL;
  }

  else
  {
    v5 = 27471;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1000F7698()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000F7710(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_1000F7774()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

void sub_1000F77F4(uint64_t *a1@<X8>)
{
  v2 = 27471;
  if (*v1)
  {
    v2 = 0x6C65636E61436B4FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000F7834(uint64_t a1, void *a2, Swift::OpaquePointer a3)
{
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  v5 = sub_1004DEE2C(a3, v8);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Dialog.ActionType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C436C65636E6163;
  }

  else
  {
    return 27503;
  }
}

uint64_t sub_1000F78BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C436C65636E6163;
  }

  else
  {
    v3 = 27503;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xED000064656B6369;
  }

  if (*a2)
  {
    v5 = 0x6C436C65636E6163;
  }

  else
  {
    v5 = 27503;
  }

  if (*a2)
  {
    v6 = 0xED000064656B6369;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1000F7964()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000F79E8(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_1000F7A58()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000F7AE4@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1004DEE2C(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_1000F7B40(uint64_t *a1@<X8>)
{
  v2 = 27503;
  if (*v1)
  {
    v2 = 0x6C436C65636E6163;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xED000064656B6369;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t MetricsEvent.ComponentRender.PreloadStatus.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1819047270;
  v2 = 0x6C6F686563616C70;
  if (a1 != 2)
  {
    v2 = 0x73756F6976657270;
  }

  if (a1)
  {
    v1 = 0x6C616974726170;
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

Swift::Int sub_1000F7C18()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000F7CE8(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_1000F7DA4()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1000F7E70@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsEvent::ComponentRender::PreloadStatus_optional *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1000F7EA0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1819047270;
  v4 = 0xEB00000000726564;
  v5 = 0x6C6F686563616C70;
  if (*v1 != 2)
  {
    v5 = 0x73756F6976657270;
    v4 = 0xEF6E776F6853796CLL;
  }

  if (*v1)
  {
    v3 = 0x6C616974726170;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *Library.Menu.Request.mediaPickerConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentMotionActivationTime.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *MetricsEvent.ComponentRender.componentEndTime.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_1000F80EC()
{
  result = [objc_allocWithZone(type metadata accessor for MetricsReportingController()) init];
  static MetricsReportingController.shared = result;
  return result;
}

unint64_t sub_1000F811C()
{
  result = qword_100636BE8;
  if (!qword_100636BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636BE8);
  }

  return result;
}

id static MetricsReportingController.shared.getter()
{
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  v1 = static MetricsReportingController.shared;

  return v1;
}

void MetricsReportingController.recordPerformanceMetrics(for:)(void *a1)
{
  if (a1)
  {
    v1 = [a1 performanceMetrics];
    if (v1)
    {
      v2 = v1;
      sub_1000FF68C(v2, &v3);
      MetricsReportingController.recordLoadUrlEvent(_:)(&v3);
      sub_1000FFADC(&v3);
    }
  }
}

void MetricsReportingController.recordPageEvent(_:pageContext:sharedListeningContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v73 = a4;
  v70 = a5;
  v71 = a6;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v9 = &v70 - v8;
  v10 = sub_1004DBF6C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v13 = sub_1004DE14C();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_1004DBF9C();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v15 = [objc_allocWithZone(SSMetricsPageEvent) init];
    v16 = v15;
    if (a3)
    {
      v17 = sub_1004DD3FC();
    }

    else
    {
      v17 = 0;
    }

    [v15 setPageContext:{v17, v70, v71}];

    v19 = *a1;
    v18 = a1[1];
    v20 = sub_1004DD3FC();
    v21 = sub_1004DD3FC();
    [v15 setProperty:v20 forBodyKey:v21];

    v23 = a1[2];
    v22 = a1[3];
    v24 = sub_1004DD3FC();
    [v15 setPageType:v24];

    v72 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v25 = *&v74[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v25 || (sub_100004CB8(&qword_100636C00, &qword_10051A188), v26 = swift_allocObject(), *(v26 + 16) = xmmword_1005126C0, *(v26 + 32) = v23, *(v26 + 40) = v22, *(v26 + 88) = &type metadata for String, *(v26 + 56) = &type metadata for String, *(v26 + 64) = v19, *(v26 + 72) = v18, , , v27 = v25, isa = sub_1004DD85C().super.isa, , v29 = [v27 compoundStringWithElements:isa], v27, isa, !v29))
    {
      v29 = 0;
    }

    [v15 setPageDescription:v29];

    v30 = type metadata accessor for MetricsEvent.Page(0);
    sub_1000108DC(a1 + v30[6], v9, &qword_100634B30, &unk_100513D70);
    v31 = sub_1004D809C();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v9, 1, v31) == 1)
    {
      sub_10001074C(v9, &qword_100634B30, &unk_100513D70);
      v33 = 0;
    }

    else
    {
      sub_1004D7F9C();
      (*(v32 + 8))(v9, v31);
      v33 = sub_1004DD3FC();
    }

    [v15 setPageURL:v33];

    v34 = *(a1 + v30[7]);
    if (v34)
    {
      v35.super.isa = sub_1004DD1FC().super.isa;
    }

    else
    {
      v35.super.isa = 0;
    }

    v36 = sub_1004DD3FC();
    [v15 setProperty:v35.super.isa forBodyKey:v36];

    swift_unknownObjectRelease();
    v37 = (a1 + v30[8]);
    v38 = v37[1];
    v39 = &selRef_scaledValueForValue_;
    if (v38)
    {
      v40 = *v37;
      sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6554686372616573;
      *(inited + 16) = xmmword_100511DA0;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xEA00000000006D72;
      *(inited + 48) = v40;
      *(inited + 56) = v38;

      sub_10005E644(inited);
      swift_setDeallocating();
      v39 = &selRef_scaledValueForValue_;
      sub_10001074C(inited + 32, &qword_100635958, &qword_100516C60);
      v42 = sub_1004DD1FC().super.isa;

      [v15 addPropertiesWithDictionary:v42];
    }

    if ((*(a1 + v30[9]) & 1) == 0)
    {
      sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_100511DA0;
      *(v43 + 32) = 0x7073694465676170;
      v44 = v43 + 32;
      *(v43 + 72) = &type metadata for String;
      *(v43 + 40) = 0xEF6570795479616CLL;
      *(v43 + 48) = 0x7765695664726163;
      *(v43 + 56) = 0xE800000000000000;
      sub_10005E644(v43);
      swift_setDeallocating();
      sub_10001074C(v44, &qword_100635958, &qword_100516C60);
      v45 = sub_1004DD1FC().super.isa;
      v39 = &selRef_scaledValueForValue_;

      [v15 addPropertiesWithDictionary:v45];
    }

    v46 = *(a1 + v30[11]);
    if (v46 != 2)
    {
      sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_100511DA0;
      *(v47 + 32) = 0xD000000000000014;
      v48 = v47 + 32;
      *(v47 + 40) = 0x80000001004EBD20;
      *(v47 + 72) = &type metadata for Bool;
      *(v47 + 48) = v46 & 1;
      sub_10005E644(v47);
      swift_setDeallocating();
      sub_10001074C(v48, &qword_100635958, &qword_100516C60);
      v49 = sub_1004DD1FC().super.isa;
      v39 = &selRef_scaledValueForValue_;

      [v15 addPropertiesWithDictionary:v49];
    }

    if (v34)
    {
      if (*(v34 + 16))
      {
        v50 = sub_100056B84(0x4974655361746164, 0xE900000000000064);
        if (v51)
        {
          v52 = (*(v34 + 56) + 16 * v50);
          v54 = *v52;
          v53 = v52[1];
          sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_100511DA0;
          *(v55 + 32) = 0x4974655361746164;
          *(v55 + 72) = &type metadata for String;
          *(v55 + 40) = 0xE900000000000064;
          *(v55 + 48) = v54;
          *(v55 + 56) = v53;

          sub_10005E644(v55);
          swift_setDeallocating();
          v39 = &selRef_scaledValueForValue_;
          sub_10001074C(v55 + 32, &qword_100635958, &qword_100516C60);
          v56 = sub_1004DD1FC().super.isa;

          [v15 addPropertiesWithDictionary:v56];
        }
      }
    }

    if (v73 != 2 && sub_1000FF298(v73 & 1, v70, v71))
    {
      v57 = sub_1004DD1FC().super.isa;

      [v15 v39[207]];
    }

    v58 = (a1 + v30[10]);
    v59 = v58[1];
    if (v59)
    {
      v60 = *v58;
      sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
      v61 = swift_initStackObject();
      *(v61 + 32) = 0x7255666552747865;
      *(v61 + 16) = xmmword_100511DA0;
      *(v61 + 72) = &type metadata for String;
      *(v61 + 40) = 0xE90000000000006CLL;
      *(v61 + 48) = v60;
      *(v61 + 56) = v59;

      sub_10005E644(v61);
      swift_setDeallocating();
      sub_10001074C(v61 + 32, &qword_100635958, &qword_100516C60);
      v62 = sub_1004DD1FC().super.isa;

      [v15 v39[207]];
    }

    v63 = v74;
    v64 = *&v74[v72];
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    *(v65 + 24) = v15;
    aBlock[4] = sub_1000FFB4C;
    aBlock[5] = v65;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005DC1C8;
    v66 = _Block_copy(aBlock);
    v67 = v64;
    v68 = v63;
    v69 = v15;

    [v69 setStandardPropertiesWith:v67 completionHandler:v66];
    _Block_release(v66);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordImpressionsEvent(_:with:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v53 = a6;
  v57 = a5;
  v58 = a2;
  v56 = a1;
  sub_100004CB8(&qword_100636C08, &unk_10051A1A0);
  __chkstk_darwin();
  v54 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v11 = &v51 - v10;
  __chkstk_darwin();
  v13 = &v51 - v12;
  __chkstk_darwin();
  v15 = &v51 - v14;
  v16 = sub_1004DBF6C();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v19 = sub_1004DE14C();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = sub_1004DBF9C();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = [objc_allocWithZone(SSMetricsBaseEvent) init];
    v52 = a7;
    if (a4)
    {
      v22 = sub_1004DD3FC();
    }

    else
    {
      v22 = 0;
    }

    v23 = v58;
    [v21 setPageContext:v22];

    sub_1000108DC(v23, v15, &qword_100636C08, &unk_10051A1A0);
    v24 = type metadata accessor for MetricsPageProperties(0);
    v25 = *(*(v24 - 8) + 48);
    if (v25(v15, 1, v24) == 1)
    {
      sub_10001074C(v15, &qword_100636C08, &unk_10051A1A0);
      v26 = 0;
    }

    else
    {

      sub_1000FF570(v15, type metadata accessor for MetricsPageProperties);
      v26 = sub_1004DD3FC();
    }

    v27 = sub_1004DD3FC();
    [v21 setProperty:v26 forBodyKey:v27];
    swift_unknownObjectRelease();

    sub_1000108DC(v23, v13, &qword_100636C08, &unk_10051A1A0);
    if (v25(v13, 1, v24) == 1)
    {
      sub_10001074C(v13, &qword_100636C08, &unk_10051A1A0);
      v28 = 0;
    }

    else
    {

      sub_1000FF570(v13, type metadata accessor for MetricsPageProperties);
      v28 = sub_1004DD3FC();
    }

    [v21 setPageType:v28];

    v55 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
    v29 = *&v59[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    if (!v29)
    {
      goto LABEL_19;
    }

    sub_100004CB8(&qword_100636C00, &qword_10051A188);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1005126C0;
    v31 = sub_100004CB8(&unk_100639EB0, &qword_100518300);
    *(v30 + 56) = v31;
    sub_1000108DC(v23, v11, &qword_100636C08, &unk_10051A1A0);
    if (v25(v11, 1, v24) == 1)
    {
      v32 = v29;
      sub_10001074C(v11, &qword_100636C08, &unk_10051A1A0);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v33 = *(v11 + 2);
      v34 = *(v11 + 3);
      v35 = v29;

      sub_1000FF570(v11, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 32) = v33;
    *(v30 + 40) = v34;
    *(v30 + 88) = v31;
    v36 = v54;
    sub_1000108DC(v58, v54, &qword_100636C08, &unk_10051A1A0);
    if (v25(v36, 1, v24) == 1)
    {
      sub_10001074C(v36, &qword_100636C08, &unk_10051A1A0);
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v37 = *v36;
      v38 = v36[1];

      sub_1000FF570(v36, type metadata accessor for MetricsPageProperties);
    }

    *(v30 + 64) = v37;
    *(v30 + 72) = v38;
    isa = sub_1004DD85C().super.isa;

    v40 = [v29 compoundStringWithElements:isa];

    if (!v40)
    {
LABEL_19:
      v40 = 0;
    }

    [v21 setPageDescription:v40];

    [v21 setEventType:SSMetricsEventTypeImpressions];
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = sub_100004CB8(&qword_100635318, &qword_1005163B0);
    *(inited + 48) = v56;

    sub_10005E644(inited);
    swift_setDeallocating();
    sub_10001074C(inited + 32, &qword_100635958, &qword_100516C60);
    v42 = sub_1004DD1FC().super.isa;

    [v21 addPropertiesWithDictionary:v42];

    if (v57 != 2)
    {
      if (sub_1000FF298(v57 & 1, v53, v52))
      {
        v43 = sub_1004DD1FC().super.isa;

        [v21 addPropertiesWithDictionary:v43];
      }
    }

    v44 = v59;
    v45 = *&v59[v55];
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v21;
    aBlock[4] = sub_1000FFB9C;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005DC218;
    v47 = _Block_copy(aBlock);
    v48 = v45;
    v49 = v44;
    v50 = v21;

    [v50 setStandardPropertiesWith:v48 completionHandler:v47];
    _Block_release(v47);
  }

  else
  {
    __break(1u);
  }
}

double sub_1000F952C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = a1;
  v9 = a2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(a4, v7);

  return result;
}

void MetricsReportingController.recordSearchEvent(_:pageContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v8 = aBlock - v7;
  v9 = sub_1004DBF6C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v12 = sub_1004DE14C();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_1004DBF9C();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = [objc_allocWithZone(SSMetricsSearchEvent) init];
    v15 = v14;
    if (a3)
    {
      v16 = sub_1004DD3FC();
    }

    else
    {
      v16 = 0;
    }

    [v14 setPageContext:v16];

    v17 = type metadata accessor for MetricsEvent.Click(0);
    v18 = a1 + v17[10];
    v19 = *(v18 + 24);
    if (v19 >> 8 <= 0xFE && (v20 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v18, *(v18 + 8), *(v18 + 16), v19)) != 0)
    {
      aBlock[0] = v20;
      sub_100004CB8(&qword_100636C10, &unk_10051A1B0);
      v21 = sub_1004DF06C();
      sub_10001074C(aBlock, &qword_100636C10, &unk_10051A1B0);
    }

    else
    {
      v21 = 0;
    }

    [v14 setActionDetails:v21];
    swift_unknownObjectRelease();
    MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
    v22 = sub_1004DD3FC();

    [v14 setActionType:v22];

    v23 = sub_1004DD3FC();
    [v14 setTargetIdentifier:v23];

    sub_1000108DC(a1 + v17[7], v8, &qword_100634B30, &unk_100513D70);
    v24 = sub_1004D809C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v8, 1, v24) == 1)
    {
      sub_10001074C(v8, &qword_100634B30, &unk_100513D70);
      v26 = 0;
    }

    else
    {
      sub_1004D7F9C();
      (*(v25 + 8))(v8, v24);
      v26 = sub_1004DD3FC();
    }

    [v14 setTargetURL:v26];

    MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
    v27 = sub_1004DD3FC();

    [v14 setTargetType:v27];

    if (*(a1 + v17[13] + 8))
    {
      v28 = sub_1004DD3FC();
    }

    else
    {
      v28 = 0;
    }

    [v14 setPageType:v28];

    v29 = (a1 + v17[9]);
    v30 = v29[1];
    if (v30 == 12)
    {
      v31 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(*v29, v30);
      v31 = sub_1004DD3FC();
    }

    v32 = sub_1004DD3FC();
    [v14 setProperty:v31 forBodyKey:v32];

    swift_unknownObjectRelease();
    if (*(a1 + v17[15]))
    {
      v33.super.isa = sub_1004DD1FC().super.isa;
    }

    else
    {
      v33.super.isa = 0;
    }

    v34 = sub_1004DD3FC();
    [v14 setProperty:v33.super.isa forBodyKey:v34];

    swift_unknownObjectRelease();
    if (*(a1 + v17[12] + 8))
    {
      v35 = sub_1004DD3FC();
    }

    else
    {
      v35 = 0;
    }

    v36 = sub_1004DD3FC();
    [v14 setProperty:v35 forBodyKey:v36];

    swift_unknownObjectRelease();
    isa = *(a1 + v17[8]);
    if (isa)
    {
      sub_100004CB8(&unk_100639F70, &unk_10051B270);
      isa = sub_1004DD85C().super.isa;
    }

    v38 = sub_1004DD3FC();
    [v14 setProperty:isa forBodyKey:v38];

    swift_unknownObjectRelease();
    if (*(a1 + v17[18] + 8))
    {
      v39 = sub_1004DD3FC();
    }

    else
    {
      v39 = 0;
    }

    [v14 setSearchTerm:v39];

    v40 = *&v4[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v41 = swift_allocObject();
    *(v41 + 16) = v4;
    *(v41 + 24) = v14;
    aBlock[4] = sub_1000FFBD4;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005DC268;
    v42 = _Block_copy(aBlock);
    v43 = v40;
    v44 = v4;
    v45 = v14;

    [v45 setStandardPropertiesWith:v43 completionHandler:v42];
    _Block_release(v42);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v100 = a5;
  v101 = a6;
  v108 = a4;
  v102 = a2;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v99 - v12;
  v14 = sub_1004DBF6C();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v17 = sub_1004DE14C();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = sub_1004DBF9C();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    if (qword_100633B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v107 = v11;
  v19 = sub_1004D966C();
  sub_100035430(v19, qword_100671B78);
  v20 = sub_1004D964C();
  v21 = sub_1004DDF9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "[MetricsReportingController] Recording click event", v22, 2u);
  }

  v23 = [objc_allocWithZone(SSMetricsClickEvent) init];
  v24 = sub_1004DD3FC();
  [v23 setTargetIdentifier:v24];

  MetricsEvent.TargetType.rawValue.getter(*(a1 + 16));
  v25 = sub_1004DD3FC();

  [v23 setTargetType:v25];

  MetricsEvent.Click.ActionType.rawValue.getter(*(a1 + 17));
  v26 = sub_1004DD3FC();

  [v23 setActionType:v26];

  v27 = type metadata accessor for MetricsEvent.Click(0);
  sub_1000108DC(a1 + v27[7], v13, &qword_100634B30, &unk_100513D70);
  v28 = sub_1004D809C();
  v29 = *(v28 - 8);
  v104 = *(v29 + 48);
  v105 = v29 + 48;
  v30 = v104(v13, 1, v28);
  v106 = v28;
  v99 = v29;
  if (v30 == 1)
  {
    sub_10001074C(v13, &qword_100634B30, &unk_100513D70);
    v31 = 0;
  }

  else
  {
    sub_1004D7F9C();
    (*(v29 + 8))(v13, v28);
    v31 = sub_1004DD3FC();
  }

  [v23 setTargetURL:{v31, v99}];

  isa = *(a1 + v27[8]);
  v33 = v23;
  v34 = v33;
  if (isa)
  {
    sub_100004CB8(&unk_100639F70, &unk_10051B270);
    isa = sub_1004DD85C().super.isa;
  }

  v35 = sub_1004DD3FC();
  [v33 setProperty:isa forBodyKey:v35];
  swift_unknownObjectRelease();

  v36 = (a1 + v27[9]);
  v37 = v36[1];
  if (v37 == 12)
  {
    v38 = 0;
  }

  else
  {
    MetricsEvent.Click.ActionContext.rawValue.getter(*v36, v37);
    v38 = sub_1004DD3FC();
  }

  v39 = sub_1004DD3FC();
  [v33 setProperty:v38 forBodyKey:v39];

  swift_unknownObjectRelease();
  v40 = a1 + v27[10];
  v41 = *(v40 + 24);
  if (v41 >> 8 <= 0xFE && (v42 = MetricsEvent.Click.ActionDetails.dictionary.getter(*v40, *(v40 + 8), *(v40 + 16), v41)) != 0)
  {
    aBlock[0] = v42;
    sub_100004CB8(&qword_100636C10, &unk_10051A1B0);
    v43 = sub_1004DF06C();
    sub_10001074C(aBlock, &qword_100636C10, &unk_10051A1B0);
  }

  else
  {
    v43 = 0;
  }

  [v33 setActionDetails:v43];
  swift_unknownObjectRelease();
  v44 = *(a1 + v27[11]);
  v109 = v7;
  if (v44)
  {
    sub_100004CB8(&qword_100636C18, &qword_10051AB20);
    v44 = sub_1004DD85C().super.isa;
  }

  v103 = a3;
  [v33 setImpressions:v44];
  swift_unknownObjectRelease();
  if (*(a1 + v27[19]) == 1)
  {
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6F43646572616873;
    v46 = inited + 32;
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 40) = 0xED0000746E65746ELL;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    sub_10005E644(inited);
    swift_setDeallocating();
    sub_10001074C(v46, &qword_100635958, &qword_100516C60);
    v47 = sub_1004DD1FC().super.isa;

    [v33 addPropertiesWithDictionary:v47];
  }

  v48 = (a1 + v27[20]);
  v49 = v48[1];
  if (v49)
  {
    v50 = *v48;
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_100511DA0;
    *(v51 + 32) = 0xD000000000000013;
    *(v51 + 72) = &type metadata for String;
    *(v51 + 40) = 0x80000001004EBD40;
    *(v51 + 48) = v50;
    *(v51 + 56) = v49;

    sub_10005E644(v51);
    swift_setDeallocating();
    sub_10001074C(v51 + 32, &qword_100635958, &qword_100516C60);
    v52 = sub_1004DD1FC().super.isa;

    [v33 addPropertiesWithDictionary:v52];
  }

  v53 = (a1 + v27[18]);
  v54 = v53[1];
  if (v54)
  {
    v55 = *v53;
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    v56 = swift_initStackObject();
    *(v56 + 32) = 0x6554686372616573;
    *(v56 + 16) = xmmword_100511DA0;
    *(v56 + 72) = &type metadata for String;
    *(v56 + 40) = 0xEA00000000006D72;
    *(v56 + 48) = v55;
    *(v56 + 56) = v54;

    sub_10005E644(v56);
    swift_setDeallocating();
    sub_10001074C(v56 + 32, &qword_100635958, &qword_100516C60);
    v57 = sub_1004DD1FC().super.isa;

    [v33 addPropertiesWithDictionary:v57];
  }

  v58 = v103;
  if (v108 != 2 && sub_1000FF298(v108 & 1, v100, v101))
  {
    v59 = sub_1004DD1FC().super.isa;

    [v33 addPropertiesWithDictionary:v59];
  }

  v60 = v109;
  if (v58)
  {
    v61 = sub_1004DD3FC();
  }

  else
  {
    v61 = 0;
  }

  [v33 setPageContext:v61];

  v62 = (a1 + v27[12]);
  v64 = *v62;
  v63 = v62[1];
  v65 = v33;
  if (v63)
  {
    v66 = sub_1004DD3FC();
    v65 = sub_1004DD3FC();
    [v33 setProperty:v66 forBodyKey:v65];
  }

  v67 = (a1 + v27[13]);
  v69 = *v67;
  v68 = v67[1];
  v70 = v33;
  if (v68)
  {
    v70 = sub_1004DD3FC();
    [v33 setPageType:v70];
  }

  v108 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration;
  v71 = *&v60[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  if (!v71 || (sub_100004CB8(&qword_100636C00, &qword_10051A188), v72 = swift_allocObject(), *(v72 + 16) = xmmword_1005126C0, v73 = sub_100004CB8(&unk_100639EB0, &qword_100518300), *(v72 + 32) = v69, *(v72 + 40) = v68, *(v72 + 88) = v73, *(v72 + 56) = v73, *(v72 + 64) = v64, *(v72 + 72) = v63, , v74 = v71, , v75 = sub_1004DD85C().super.isa, , v76 = [v74 compoundStringWithElements:v75], v74, v75, !v76))
  {
    v76 = 0;
  }

  [v33 setPageDescription:v76];

  v77 = v107;
  sub_1000108DC(a1 + v27[14], v107, &qword_100634B30, &unk_100513D70);
  v78 = v106;
  if (v104(v77, 1, v106) == 1)
  {
    sub_10001074C(v77, &qword_100634B30, &unk_100513D70);
    v79 = 0;
  }

  else
  {
    sub_1004D7F9C();
    (*(v99 + 8))(v77, v78);
    v79 = sub_1004DD3FC();
  }

  v80 = v109;
  [v33 setPageURL:v79];

  if (*(a1 + v27[15]))
  {
    v81.super.isa = sub_1004DD1FC().super.isa;
  }

  else
  {
    v81.super.isa = 0;
  }

  v82 = sub_1004DD3FC();
  [v33 setProperty:v81.super.isa forBodyKey:v82];

  swift_unknownObjectRelease();
  if ((*(a1 + v27[16]) & 1) == 0)
  {
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    v83 = swift_initStackObject();
    *(v83 + 16) = xmmword_100511DA0;
    *(v83 + 32) = 0x7073694465676170;
    v84 = v83 + 32;
    *(v83 + 72) = &type metadata for String;
    *(v83 + 40) = 0xEF6570795479616CLL;
    *(v83 + 48) = 0x7765695664726163;
    *(v83 + 56) = 0xE800000000000000;
    sub_10005E644(v83);
    swift_setDeallocating();
    sub_10001074C(v84, &qword_100635958, &qword_100516C60);
    v85 = sub_1004DD1FC().super.isa;

    [v33 addPropertiesWithDictionary:v85];
  }

  v86 = *(a1 + v27[17]);
  if (v86 != 2)
  {
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_100511DA0;
    *(v87 + 32) = 0xD000000000000014;
    v88 = v87 + 32;
    *(v87 + 40) = 0x80000001004EBD20;
    *(v87 + 72) = &type metadata for Bool;
    *(v87 + 48) = v86 & 1;
    sub_10005E644(v87);
    swift_setDeallocating();
    sub_10001074C(v88, &qword_100635958, &qword_100516C60);
    v89 = sub_1004DD1FC().super.isa;

    [v33 addPropertiesWithDictionary:v89];
  }

  v90 = objc_allocWithZone(NSNumber);
  v91 = v33;
  v92 = [v90 initWithInteger:5];
  [v91 setEventVersion:v92];

  v93 = *&v80[v108];
  v94 = swift_allocObject();
  *(v94 + 16) = v80;
  *(v94 + 24) = v91;
  aBlock[4] = sub_1000FFC0C;
  aBlock[5] = v94;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005DC2B8;
  v95 = _Block_copy(aBlock);
  v96 = v93;
  v97 = v80;
  v98 = v91;

  [v98 setStandardPropertiesWith:v96 completionHandler:v95];
  _Block_release(v95);
}

Swift::Void __swiftcall MetricsReportingController.recordLoadUrlEvent(_:)(MusicCore::MetricsEvent::LoadUrl *a1)
{
  v3 = [objc_allocWithZone(SSMetricsLoadURLEvent) init];
  object_low = LOBYTE(a1->environmentDataCenter.value._object);
  [v3 setCachedResponse:object_low];
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  [v3 setOriginalApp:v6];
  if (a1->domainLookupStartTime.is_nil)
  {
    if (BYTE6(a1->connectionStartTime.value))
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v3 setDomainLookupStartTime:a1->domainLookupStartTime.value];
    if (BYTE6(a1->connectionStartTime.value))
    {
LABEL_3:
      if (BYTE4(a1->connectionEndTime.value))
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  [v3 setDomainLookupEndTime:*(&a1->domainLookupEndTime.value + 7)];
  if (BYTE4(a1->connectionEndTime.value))
  {
LABEL_4:
    if (BYTE2(a1->responseStartTime.value))
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setConnectionStartTime:*(&a1->secureConnectionStartTime.value + 5)];
  if (BYTE2(a1->responseStartTime.value))
  {
LABEL_5:
    if (LOBYTE(a1->fetchStartTime.value))
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setSecureConnectionStartTime:*(&a1->requestStartTime.value + 3)];
  if (LOBYTE(a1->fetchStartTime.value))
  {
LABEL_6:
    if ((a1->redirectCount.value & 0x100000000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setConnectionEndTime:*(&a1->responseEndTime.value + 1)];
  if ((a1->redirectCount.value & 0x100000000000000) != 0)
  {
LABEL_7:
    if (a1->requestUrl.value._object)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setRequestStartTime:*&a1->fetchStartTime.is_nil];
  if (a1->requestUrl.value._object)
  {
LABEL_8:
    if (a1->appleTimingApp.value._countAndFlagsBits)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setResponseStartTime:*&a1->requestUrl.value._countAndFlagsBits];
  if (a1->appleTimingApp.value._countAndFlagsBits)
  {
LABEL_9:
    if (a1->connectionType.value._countAndFlagsBits)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setResponseEndTime:*&a1->cachedResponse];
  if (a1->connectionType.value._countAndFlagsBits)
  {
LABEL_10:
    if (!a1->environmentDataCenter.value._countAndFlagsBits)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_38:
  [v3 setFetchStartTime:*&a1->appleTimingApp.value._object];
  if (a1->environmentDataCenter.value._countAndFlagsBits)
  {
LABEL_11:
    v7 = sub_1004DD3FC();
    [v3 setRequestURL:v7];
  }

LABEL_12:
  if ((a1->edgeNodeCacheStatus.value._countAndFlagsBits & 1) == 0)
  {
    if ((a1->connectionType.value._object & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    [v3 setRedirectCount:?];
  }

  if (a1->responseDate.value._object)
  {
    v8 = sub_1004DD3FC();
    [v3 setAppleTimingApp:v8];
  }

  if (a1->requestMessageSize)
  {
    v9 = sub_1004DD3FC();
    [v3 setConnectionType:v9];
  }

  if (a1->resolvedIPAddress.value._countAndFlagsBits)
  {
    v10 = sub_1004DD3FC();
    [v3 setEdgeNodeCacheStatus:v10];
  }

  if (*(&a1[1].domainLookupEndTime.value + 7))
  {
    v11 = sub_1004DD3FC();
    [v3 setResponseDate:v11];
  }

  if (*(&a1[1].responseStartTime.value + 2))
  {
    v12 = sub_1004DD3FC();
    [v3 setResolvedIPAddress:v12];
  }

  v24 = *&a1->resolvedIPAddress.value._object;
  v13 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v14 = v24;
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001004EBD60;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    sub_1000108DC(&v24, aBlock, &unk_100639EB0, &qword_100518300);
    sub_10005E644(inited);
    swift_setDeallocating();
    sub_10001074C(inited + 32, &qword_100635958, &qword_100516C60);
    isa = sub_1004DD1FC().super.isa;

    [v3 addPropertiesWithDictionary:isa];
  }

  [v3 setCachedResponse:object_low];
  [v3 setConnectionReused:BYTE1(a1->environmentDataCenter.value._object)];
  [v3 setStatusCode:*(&a1[1].connectionStartTime.value + 6)];
  if ((*(&a1[1].secureConnectionStartTime.value + 5) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v3 setRequestMessageSize:?];
    if ((*(&a1[1].connectionEndTime.value + 4) & 0x8000000000000000) == 0)
    {
      [v3 setResponseMessageSize:?];
      v17 = *&v1[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;
      aBlock[4] = sub_1000FFC44;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012680;
      aBlock[3] = &unk_1005DC308;
      v19 = _Block_copy(aBlock);
      v20 = v17;
      v21 = v3;
      v22 = v1;

      [v21 setStandardPropertiesWith:v20 completionHandler:v19];
      _Block_release(v19);

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1000FB1F8(void *a1)
{
  if (sub_10010268C())
  {
    sub_1000FE4CC(a1, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004DBF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v7 = sub_1004DE14C();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004DBF9C();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsComponentRenderEvent()) init];
    if (*(a1 + 8))
    {
      v10 = sub_1004DD3FC();
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_1004DD3FC();
    [v9 setProperty:v10 forBodyKey:v11];
    swift_unknownObjectRelease();

    v12 = *(a1 + 16);
    if (v12 == 27)
    {
      v13 = 0;
    }

    else
    {
      MetricsEvent.TargetType.rawValue.getter(v12);
      v13 = sub_1004DD3FC();
    }

    v14 = sub_1004DD3FC();
    [v9 setProperty:v13 forBodyKey:v14];
    swift_unknownObjectRelease();

    v15 = *(a1 + 24);
    v16 = sub_1004DD3FC();
    [v9 setProperty:v15 forBodyKey:v16];

    v17 = *(a1 + 32);
    v18 = sub_1004DD3FC();
    [v9 setProperty:v17 forBodyKey:v18];

    v19 = *(a1 + 40);
    v20 = sub_1004DD3FC();
    [v9 setProperty:v19 forBodyKey:v20];

    v21 = *(a1 + 48);
    v22 = sub_1004DD3FC();
    [v9 setProperty:v21 forBodyKey:v22];

    v23 = *(a1 + 56);
    v24 = sub_1004DD3FC();
    [v9 setProperty:v23 forBodyKey:v24];

    v25 = *(a1 + 64);
    v26 = sub_1004DD3FC();
    [v9 setProperty:v25 forBodyKey:v26];

    v27 = *(a1 + 72);
    if (v27 >= 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_1004DD3FC();
    }

    v29 = sub_1004DD3FC();
    [v9 setProperty:v28 forBodyKey:v29];
    swift_unknownObjectRelease();

    v30 = *&v2[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v9;
    aBlock[4] = sub_100100618;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005DC358;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    v34 = v2;
    v35 = v9;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v9 = &v99 - v8;
  v10 = sub_1004DBF6C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v13 = sub_1004DE14C();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_1004DBF9C();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v101 = v9;
    v100 = a2;
    v103 = v4;
    v15 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsPageRenderEvent()) init];
    swift_beginAccess();
    v16 = *(a1 + 16);
    swift_beginAccess();
    v17 = *(a1 + 32);
    v102 = a3;
    if (v17)
    {
      v18 = v16;
      v19 = 0;
    }

    else
    {
      v20 = *(a1 + 24);
      v21 = objc_opt_self();
      v22 = v16;
      v23 = [v21 serverTimeFromTimeInterval:v20];
      v24 = [v23 unsignedLongLongValue];

      v106[15] = v24;
      v19 = sub_1004DF11C();
    }

    v25 = sub_1004DD3FC();
    [v15 setProperty:v19 forBodyKey:v25];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v26 = 0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v27 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 40)];
      v28 = [v27 unsignedLongLongValue];

      v106[12] = v28;
      v26 = sub_1004DF11C();
    }

    v29 = sub_1004DD3FC();
    [v15 setProperty:v26 forBodyKey:v29];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v30 = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      v31 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 56)];
      v32 = [v31 unsignedLongLongValue];

      v106[9] = v32;
      v30 = sub_1004DF11C();
    }

    v33 = sub_1004DD3FC();
    [v15 setProperty:v30 forBodyKey:v33];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v34 = 0;
    if ((*(a1 + 80) & 1) == 0)
    {
      v35 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 72)];
      v36 = [v35 unsignedLongLongValue];

      v106[6] = v36;
      v34 = sub_1004DF11C();
    }

    v37 = sub_1004DD3FC();
    [v15 setProperty:v34 forBodyKey:v37];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v38 = 0;
    if ((*(a1 + 96) & 1) == 0)
    {
      v39 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 88)];
      v40 = [v39 unsignedLongLongValue];

      v106[3] = v40;
      v38 = sub_1004DF11C();
    }

    v41 = sub_1004DD3FC();
    [v15 setProperty:v38 forBodyKey:v41];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v42 = 0;
    if ((*(a1 + 112) & 1) == 0)
    {
      v43 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 104)];
      v44 = [v43 unsignedLongLongValue];

      v106[0] = v44;
      v42 = sub_1004DF11C();
    }

    v45 = sub_1004DD3FC();
    [v15 setProperty:v42 forBodyKey:v45];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v46 = 0;
    if ((*(a1 + 128) & 1) == 0)
    {
      v47 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 120)];
      v48 = [v47 unsignedLongLongValue];

      v104 = v48;
      v46 = sub_1004DF11C();
    }

    v49 = sub_1004DD3FC();
    [v15 setProperty:v46 forBodyKey:v49];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 requestStartTime];
      v51 = [objc_opt_self() serverTimeFromTimeInterval:v50];
      v52 = [v51 unsignedLongLongValue];

      v104 = v52;
      v53 = sub_1004DF11C();
    }

    else
    {
      v53 = 0;
    }

    v54 = sub_1004DD3FC();
    [v15 setProperty:v53 forBodyKey:v54];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 responseStartTime];
      v56 = [objc_opt_self() serverTimeFromTimeInterval:v55];
      v57 = [v56 unsignedLongLongValue];

      v104 = v57;
      v58 = sub_1004DF11C();
    }

    else
    {
      v58 = 0;
    }

    v59 = sub_1004DD3FC();
    [v15 setProperty:v58 forBodyKey:v59];
    swift_unknownObjectRelease();

    if (v16)
    {
      [v16 responseEndTime];
      v61 = [objc_opt_self() serverTimeFromTimeInterval:v60];
      v62 = [v61 unsignedLongLongValue];

      v104 = v62;
      v63 = sub_1004DF11C();
      v64 = sub_1004DD3FC();
      [v15 setProperty:v63 forBodyKey:v64];
      swift_unknownObjectRelease();

      v65 = [v16 cachedResponse];
    }

    else
    {
      v66 = sub_1004DD3FC();
      [v15 setProperty:0 forBodyKey:v66];

      v65 = 0;
    }

    LOBYTE(v104) = v65;
    v67 = sub_1004DF11C();
    v68 = sub_1004DD3FC();
    [v15 setProperty:v67 forBodyKey:v68];
    swift_unknownObjectRelease();

    v69 = (a1 + *(*a1 + 160));
    v70 = v69[1];
    v104 = *v69;
    v105 = v70;

    v71 = sub_1004DF11C();
    v72 = sub_1004DD3FC();
    [v15 setProperty:v71 forBodyKey:v72];
    swift_unknownObjectRelease();

    v73 = v69[3];
    v104 = v69[2];
    v105 = v73;

    v74 = sub_1004DF11C();
    v75 = sub_1004DD3FC();
    [v15 setProperty:v74 forBodyKey:v75];
    swift_unknownObjectRelease();

    v76 = type metadata accessor for MetricsPageProperties(0);
    v77 = v101;
    sub_1000108DC(v69 + *(v76 + 24), v101, &qword_100634B30, &unk_100513D70);
    v78 = sub_1004D809C();
    v79 = *(v78 - 8);
    if ((*(v79 + 48))(v77, 1, v78) == 1)
    {
      sub_10001074C(v77, &qword_100634B30, &unk_100513D70);
      v80 = 0;
    }

    else
    {
      v81 = sub_1004D7F9C();
      v83 = v82;
      (*(v79 + 8))(v77, v78);
      v104 = v81;
      v105 = v83;
      v80 = sub_1004DF11C();
    }

    v84 = v102;
    v85 = sub_1004DD3FC();
    [v15 setProperty:v80 forBodyKey:v85];
    swift_unknownObjectRelease();

    if (*(v69 + *(v76 + 28)))
    {
      v104 = *(v69 + *(v76 + 28));

      sub_100004CB8(&qword_100636C10, &unk_10051A1B0);
      v86 = sub_1004DF11C();
    }

    else
    {
      v86 = 0;
    }

    v87 = sub_1004DD3FC();
    [v15 setProperty:v86 forBodyKey:v87];
    swift_unknownObjectRelease();

    if (v84)
    {
      v104 = v100;
      v105 = v84;

      v88 = sub_1004DF11C();
    }

    else
    {
      v88 = 0;
    }

    v89 = sub_1004DD3FC();
    [v15 setProperty:v88 forBodyKey:v89];
    swift_unknownObjectRelease();

    v90 = v103;
    v91 = *&v103[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v15;
    v93 = v91;
    v94 = v15;
    v95 = v93;
    v96 = v94;

    v97 = v90;
    v98 = v96;
    sub_100105CA4(v91, v98, v98, v91, sub_100100650, v92);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FC528(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a4(a2))
  {
    sub_1000FE4CC(a2, CFRange.init(_:), 0);
  }
}

void MetricsReportingController.recordCustomEvent(with:properties:sharedListeningContext:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v22 = a5;
  v12 = sub_1004DBF6C();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v15 = sub_1004DE14C();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_1004DBF9C();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v18 = sub_1004DD3FC();
    [v17 setTopic:v18];

    isa = sub_1004DD1FC().super.isa;
    [v17 addPropertiesWithDictionary:isa];

    [v17 setShouldSuppressUserInfo:a7 & 1];
    [v17 setShouldSuppressDSIDHeader:a7 & 1];

    if (a4 != 2)
    {
      if (sub_1000FF298(a4 & 1, v22, v23))
      {
        v20 = sub_1004DD1FC().super.isa;

        [v17 addPropertiesWithDictionary:v20];
      }
    }

    sub_1000FE4CC(v17, a8, a9);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a2;
  v38 = a1;
  v37 = sub_1004D82AC();
  v10 = *(v37 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBF6C();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v16 = sub_1004DE14C();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_1004DBF9C();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v36 = a6;
    v19 = v7;
    v20 = v18;
    isa = sub_1004DD1FC().super.isa;
    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:a4 & 1];
    [v20 setShouldSuppressDSIDHeader:a4 & 1];

    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_1004D827C();
    v25 = v24;
    (*(v10 + 8))(v12, v37);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    sub_10005E644(inited);
    swift_setDeallocating();
    sub_10001074C(inited + 32, &qword_100635958, &qword_100516C60);
    v26 = sub_1004DD1FC().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v19[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v30 = v38;
    v29 = v39;
    v28[2] = v20;
    v28[3] = v30;
    v28[4] = v40;
    v28[5] = v19;
    v31 = v36;
    v28[6] = v29;
    v28[7] = v31;
    aBlock[4] = sub_1000F18F8;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012680;
    aBlock[3] = &unk_1005DC3D0;
    v32 = _Block_copy(aBlock);
    v33 = v27;

    v34 = v19;

    v35 = v20;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FCC6C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1004DD3FC();
  [a1 setTopic:v12];

  if (qword_100633AA8 != -1)
  {
    swift_once();
  }

  v13 = sub_1004D966C();
  sub_100035430(v13, static Logger.carMetrics);

  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000343A8(a2, a3, v20);
    _os_log_impl(&_mh_execute_header, v14, v15, "Inserting carPlay custom event with topic=%{public}s in metrics controller", v16, 0xCu);
    sub_100008D24(v17);
  }

  v18 = *(a4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
  v20[4] = a5;
  v20[5] = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100167E90;
  v20[3] = &unk_1005DCC00;
  v19 = _Block_copy(v20);

  [v18 insertEvent:a1 withCompletionHandler:v19];
  _Block_release(v19);
}

Swift::Void __swiftcall MetricsReportingController.reportEventForLocalEvaluation(with:)(Swift::OpaquePointer with)
{
  v1 = sub_1004DBF6C();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v4 = sub_1004DE14C();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = sub_1004DBF9C();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_1004DD1FC().super.isa;
    [v6 addPropertiesWithDictionary:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000FD034()
{
  if (qword_100633B58 != -1)
  {
    swift_once();
  }

  v1 = sub_1004D966C();
  v0[19] = sub_100035430(v1, qword_100671B78);
  v2 = sub_1004D964C();
  v3 = sub_1004DDF9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Attempting to flush unreported events", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v0[2] = v0;
  v0[3] = sub_1000FD208;
  v7 = swift_continuation_init();
  v0[17] = sub_100004CB8(&unk_10063A4A0, &unk_10051A1C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000FD4C4;
  v0[13] = &unk_1005DC3F8;
  v0[14] = v7;
  [v6 flushUnreportedEventsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000FD208()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1000FD32C;
  }

  else
  {
    v2 = sub_1000FD318;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FD32C(uint64_t a1)
{
  v13 = v1;
  swift_willThrow();
  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[20];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v1[10] = v4;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    v7 = sub_1004DD4DC();
    v9 = sub_1000343A8(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[MetricsReportingController] Failed to flush unreported events with error=%{public}s", v5, 0xCu);
    sub_100008D24(v6);
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1000FD4C4(uint64_t a1, void *a2)
{
  sub_100008C70((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100004CB8(&qword_100638980, &qword_100515B30);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000FD570()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_10001074C(&v8, &qword_100638E60, &unk_10051A920);
    return 0;
  }

  v2 = v1;
  v3 = sub_1004DD3FC();
  v4 = [v2 valueForConfigurationKey:v3];

  if (v4)
  {
    sub_1004DE8DC();
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

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

char *sub_1000FD6A0()
{
  v1 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_componentRenderEventSampler;
  sub_100004CB8(&qword_100634528, &unk_1005128D0);
  v2 = swift_allocObject();
  v3 = objc_opt_self();
  *(v2 + 16) = [v3 standardUserDefaults];
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageRenderEventSampler;
  sub_100004CB8(&unk_100634530, &unk_10051A930);
  v5 = swift_allocObject();
  *(v5 + 16) = [v3 standardUserDefaults];
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration] = 0;
  v6 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController;
  *&v0[v6] = [objc_allocWithZone(SSMetricsController) init];
  v7 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController;
  *&v0[v7] = [objc_allocWithZone(SSMetricsController) init];
  v8 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carMetricsReporter;
  type metadata accessor for CarNowPlayingMetrics.Reporter();
  *&v0[v8] = swift_allocObject();
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory] = _swiftEmptyArrayStorage;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MetricsReportingController();
  v9 = objc_msgSendSuper2(&v19, "init");
  v10 = qword_100633C28;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BagProvider.Observer();
  v13 = swift_allocObject();
  swift_weakInit();
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  swift_weakAssign();
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  *(v13 + 24) = sub_100101910;
  *(v13 + 32) = v12;
  swift_retain_n();
  sub_10000DE74(v14, v15);
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(sub_100101918);
  sub_10011C974(0);

  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = v13;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = UISceneDidEnterBackgroundNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_100101938, v16);

  return v11;
}

double sub_1000FDAC4(void *a1, uint64_t a2)
{
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100101C50, v4);

  return result;
}

void sub_1000FDB68(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000FE0CC(a2);
  }
}

uint64_t sub_1000FDBC4(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v3 = &v13 - v2;
  if (qword_100633B58 != -1)
  {
    swift_once();
  }

  v4 = sub_1004D966C();
  sub_100035430(v4, qword_100671B78);
  v5 = sub_1004D964C();
  v6 = sub_1004DDF9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
  }

  sub_1004DDA6C();
  v8 = sub_1004DDA8C();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  sub_100041790(0, 0, v3, &unk_10051A948, v11);

  return sub_10001074C(v3, &qword_100635240, &qword_1005171A0);
}

uint64_t sub_1000FDE0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_1000EF8CC(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;

    sub_1000EF8CC(1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1000FDF9C;

    return MetricsReportingController.flushUnreportedEvents()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000FDF9C()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1000FE0CC(void *a1)
{
  v2 = v1;
  v4 = sub_1004DBF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v7 = sub_1004DE14C();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_1004DBF9C();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = [a1 dictionaryForBagKey:SSMetricsURLBagKey];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1004DD21C();

    if (!*(v11 + 16))
    {

      return;
    }

    v12 = [a1 dictionaryForBagKey:SSVURLBagKeyMusicCommon];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1004DD21C();

      *&v27[0] = 0xD000000000000023;
      *(&v27[0] + 1) = 0x80000001004EC080;
      sub_1004DEA4C();
      if (*(v14 + 16))
      {
        v15 = sub_100028F3C(v28);
        if (v16)
        {
          sub_10000904C(*(v14 + 56) + 32 * v15, v27);
          sub_1000105EC(v28);

          sub_100006F5C(v27, v29);
          strcpy(v27, "postFrequency");
          HIWORD(v27[0]) = -4864;
          sub_1004DEA4C();
          sub_10000904C(v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v11;
          sub_10005A538(v27, v28, isUniquelyReferenced_nonNull_native);
          sub_1000105EC(v28);
          sub_100008D24(v29);
          v18 = 1;
          goto LABEL_11;
        }
      }

      sub_1000105EC(v28);
    }

    v18 = 0;
LABEL_11:
    v19 = objc_allocWithZone(SSMetricsConfiguration);
    isa = sub_1004DD1FC().super.isa;

    v21 = [v19 initWithGlobalConfiguration:isa];

    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
      *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration) = v21;
      v23 = v21;

      [v23 setDisableEventDecoration:{objc_msgSend(v23, "_decorateITMLEvents") ^ 1}];
      v24 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
      [v24 setGlobalConfiguration:v23];
      [v24 setFlushTimerEnabled:1];
      if (v18)
      {
        v25 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
        [v25 setGlobalConfiguration:v23];

        [v25 setFlushTimerEnabled:1];
      }

      else
      {
      }
    }
  }
}

void sub_1000FE4CC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_1004D82AC();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004DBF6C();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006F10(0, &qword_1006372C0, OS_dispatch_queue_ptr);
  *v14 = sub_1004DE14C();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_1004DBF9C();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_1000FE910(a1);
    sub_100004CB8(&unk_10063D0B0, &unk_10051A190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511DA0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v17 = sub_1004D827C();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_10005E644(inited);
    swift_setDeallocating();
    sub_10001074C(inited + 32, &qword_100635958, &qword_100516C60);
    isa = sub_1004DD1FC().super.isa;

    [a1 addPropertiesWithDictionary:isa];

    if (qword_100633B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = sub_1004D966C();
  sub_100035430(v21, qword_100671B78);
  v22 = sub_1004D964C();
  v23 = sub_1004DDF9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "[MetricsReportingController] Inserting main window related event.", v24, 2u);
  }

  v25 = *(v4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  *(v26 + 24) = a3;
  aBlock[4] = sub_100101AB8;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100167E90;
  aBlock[3] = &unk_1005DCC50;
  v27 = _Block_copy(aBlock);

  [v25 insertEvent:a1 withCompletionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_1000FE910(void *a1)
{
  v3 = [a1 eventType];
  if (!v3)
  {
    sub_1004DD43C();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_1004DD43C();
  v7 = v6;

  v8 = sub_1004DD43C();
  if (!v7)
  {
LABEL_10:
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_1004DF08C();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory;
  swift_beginAccess();

  isa = sub_1004DD85C().super.isa;

  v15 = sub_1004DD3FC();
  [a1 setProperty:isa forBodyKey:v15];

  v16 = v1;
  result = sub_10010280C();
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v20 = *(v16 + v13);
    if (*(v20 + 16) >= 5uLL)
    {

      *(v16 + v13) = sub_1000FEB88(4uLL, v20);
    }

    swift_beginAccess();
    v21 = *(v16 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v13) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_10003A134(0, *(v21 + 2) + 1, 1, v21);
      *(v16 + v13) = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v27 = v21;
      v28 = *(v21 + 2);
      v29 = sub_10003A134((v24 > 1), v23 + 1, 1, v27);
      v23 = v28;
      v21 = v29;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    *(v26 + 4) = v18;
    *(v26 + 5) = v19;
    *(v16 + v13) = v21;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_1000FEB88(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = result;
  if (result)
  {
    v4 = *(a2 + 16) >= result ? result : *(a2 + 16);
    result = sub_1000374EC(0, v4, 0);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = a2 + 40;
      v22 = *(a2 + 16);
      v21 = v5 - 1;
      do
      {
        v9 = (v8 + 16 * v6);
        while (1)
        {
          if (v6 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = v6 + 1;
          v13 = _swiftEmptyArrayStorage[2];
          if (v13 >= v3)
          {
            break;
          }

          v14 = _swiftEmptyArrayStorage[3];

          if (v13 >= v14 >> 1)
          {
            result = sub_1000374EC((v14 > 1), v13 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v13 + 1;
          v15 = &_swiftEmptyArrayStorage[2 * v13];
          v15[4] = v10;
          v15[5] = v11;
          v9 += 2;
          v6 = v12;
          if (v22 == v12)
          {
            goto LABEL_23;
          }
        }

        if (v7 >= v13)
        {
          goto LABEL_33;
        }

        v16 = &_swiftEmptyArrayStorage[2 * v7];
        v16[4] = v10;
        v16[5] = v11;

        if ((v7 + 1) < v3)
        {
          ++v7;
        }

        else
        {
          v7 = 0;
        }

        v8 = a2 + 40;
      }

      while (v21 != v6++);
LABEL_23:

      if (!v7)
      {
        return _swiftEmptyArrayStorage;
      }

      v18 = _swiftEmptyArrayStorage[2];
      result = sub_1000374EC(0, v18, 0);
      if (v18 >= v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        v19 = _swiftEmptyArrayStorage[2];
        if (v19 >= v7 && v19 >= v18)
        {

          sub_1000FFC7C(v20, &_swiftEmptyArrayStorage[4], v7, (2 * v18) | 1);

          sub_1000FFC7C(_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * v7) | 1);

          return _swiftEmptyArrayStorage;
        }

        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }
  }

  return _swiftEmptyArrayStorage;
}

id MetricsReportingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsReportingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FEEC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004DD3FC();
  v4 = [v2 propertyForBodyKey:v3];

  if (v4)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
    sub_100006F5C(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_100004CB8(&qword_100638E60, &unk_10051A920);
  sub_100006F10(0, &qword_100636E68, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000FEFA0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV13ActionContextO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 0xC)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1004DF08C();
  }
}
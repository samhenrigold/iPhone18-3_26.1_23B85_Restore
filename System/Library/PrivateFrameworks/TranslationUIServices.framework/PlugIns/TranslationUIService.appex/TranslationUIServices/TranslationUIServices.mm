__n128 sub_100002010(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002020(uint64_t a1, int a2)
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

uint64_t sub_100002040(uint64_t result, int a2, int a3)
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

uint64_t sub_100002090@<X0>(char *a1@<X8>)
{
  v2 = sub_1000035C4(&qword_10006A138, &qword_100052788);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100050938();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_100050948();
  sub_100050928();
  v16 = &v8[*(v3 + 44)];
  v17 = *(sub_1000035C4(&qword_10006A140, &qword_100052790) + 28);
  v18 = enum case for Image.Scale.large(_:);
  v19 = sub_100050EC8();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  v20 = *(v10 + 16);
  v20(v13, v15, v9);
  v27 = 1;
  sub_1000043D4(v8, v6);
  v20(a1, v13, v9);
  v21 = sub_1000035C4(&qword_10006A148, &qword_1000527C8);
  v22 = &a1[*(v21 + 48)];
  v23 = v27;
  *v22 = 0;
  v22[8] = v23;
  sub_1000043D4(v6, &a1[*(v21 + 64)]);
  sub_100004444(v8, &qword_10006A138, &qword_100052788);
  v24 = *(v10 + 8);
  v24(v15, v9);
  sub_100004444(v6, &qword_10006A138, &qword_100052788);
  return (v24)(v13, v9);
}

uint64_t sub_100002350()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TranslateActionButtonView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100051368();
    v7 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100003E6C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1000024A8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100050798();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_1000035C4(&qword_10006A130, &qword_100052780);
  return sub_100002090((a1 + *(v2 + 44)));
}

uint64_t sub_100002500@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_100050958();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000035C4(&qword_10006A078, &qword_1000526A0);
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v50 - v7;
  v50 = sub_1000035C4(&qword_10006A080, &qword_1000526A8);
  __chkstk_darwin(v50);
  v10 = &v50 - v9;
  v51 = sub_1000035C4(&qword_10006A088, &qword_1000526B0);
  __chkstk_darwin(v51);
  v12 = &v50 - v11;
  v53 = sub_1000035C4(&qword_10006A090, &qword_1000526B8);
  __chkstk_darwin(v53);
  v14 = &v50 - v13;
  v54 = sub_1000035C4(&qword_10006A098, &qword_1000526C0);
  __chkstk_darwin(v54);
  v58 = &v50 - v15;
  v56 = sub_1000035C4(&qword_10006A0A0, &qword_1000526C8);
  __chkstk_darwin(v56);
  v57 = &v50 - v16;
  v55 = sub_1000035C4(&qword_10006A0A8, &qword_1000526D0);
  __chkstk_darwin(v55);
  v18 = &v50 - v17;
  v59 = v1;
  sub_100050968();
  sub_10000337C(&qword_10006A0B0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
  sub_100003D24();
  sub_100050CB8();
  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = sub_100050A78();
  v19 = sub_100050AB8();
  sub_100050AB8();
  if (sub_100050AB8() != v2)
  {
    v19 = sub_100050AB8();
  }

  sub_100050368();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v6 + 32))(v10, v8, v52);
  v28 = &v10[*(v50 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  sub_100051078();
  sub_100050538();
  sub_10000360C(v10, v12, &qword_10006A080, &qword_1000526A8);
  v29 = &v12[*(v51 + 36)];
  v30 = v66;
  *(v29 + 4) = v65;
  *(v29 + 5) = v30;
  *(v29 + 6) = v67;
  v31 = v62;
  *v29 = v61;
  *(v29 + 1) = v31;
  v32 = v64;
  *(v29 + 2) = v63;
  *(v29 + 3) = v32;
  sub_10000360C(v12, v14, &qword_10006A088, &qword_1000526B0);
  v14[*(v53 + 36)] = 0;
  if (sub_100050978())
  {
    v33 = [objc_opt_self() tableCellDefaultSelectionTintColor];
    v34 = sub_100050E18();
  }

  else
  {
    v34 = sub_100050E58();
  }

  v35 = v34;
  v36 = sub_100050A88();
  v37 = v58;
  sub_10000360C(v14, v58, &qword_10006A090, &qword_1000526B8);
  v38 = v37 + *(v54 + 36);
  *v38 = v35;
  *(v38 + 8) = v36;
  LOBYTE(v35) = sub_100002350();
  v39 = objc_opt_self();
  v40 = &selRef_labelColor;
  if ((v35 & 1) == 0)
  {
    v40 = &selRef_secondaryLabelColor;
  }

  v41 = [v39 *v40];
  v42 = sub_100050E18();
  KeyPath = swift_getKeyPath();
  v44 = v57;
  sub_10000360C(v37, v57, &qword_10006A098, &qword_1000526C0);
  v45 = (v44 + *(v56 + 36));
  *v45 = KeyPath;
  v45[1] = v42;
  LOBYTE(v42) = sub_100050978();
  sub_10000360C(v44, v18, &qword_10006A0A0, &qword_1000526C8);
  v46 = &v18[*(v55 + 36)];
  *v46 = 0;
  v46[8] = v42 & 1;
  LOBYTE(v42) = sub_100002350();
  v47 = v60;
  sub_10000360C(v18, v60, &qword_10006A0A8, &qword_1000526D0);
  result = sub_1000035C4(&qword_10006A0C0, &qword_100052708);
  v49 = v47 + *(result + 36);
  *v49 = 0;
  *(v49 + 8) = v42 & 1;
  return result;
}

uint64_t sub_100002C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100050988();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  KeyPath = swift_getKeyPath();
  result = type metadata accessor for TranslateActionButtonView(0);
  v7 = a2 + *(result + 20);
  *v7 = KeyPath;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_100002C94@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v1 = sub_1000035C4(&qword_100069F68, &qword_100052560);
  __chkstk_darwin(v1 - 8);
  v3 = v33 - v2;
  v4 = sub_1000035C4(&qword_100069F70, &qword_100052568);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v33 - v6;
  v8 = sub_1000035C4(&qword_100069F78, &qword_100052570);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v33 - v10;
  v12 = sub_1000035C4(&qword_100069F80, &qword_100052578);
  __chkstk_darwin(v12);
  v14 = v33 - v13;
  *v3 = sub_100050888();
  *(v3 + 1) = 0;
  v3[16] = 0;
  sub_1000035C4(&qword_100069F88, &qword_100052580);
  sub_1000509B8();
  sub_100051078();
  sub_100050538();
  sub_10000360C(v3, v7, &qword_100069F68, &qword_100052560);
  v15 = &v7[*(v5 + 44)];
  v16 = v39;
  *(v15 + 4) = v38;
  *(v15 + 5) = v16;
  *(v15 + 6) = v40;
  v17 = v35;
  *v15 = v34;
  *(v15 + 1) = v17;
  v18 = v37;
  *(v15 + 2) = v36;
  *(v15 + 3) = v18;
  v19 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v20 = sub_100050E18();
  v21 = sub_100050A88();
  sub_10000360C(v7, v11, &qword_100069F70, &qword_100052568);
  v22 = &v11[*(v9 + 44)];
  *v22 = v20;
  v22[8] = v21;
  v23 = &v14[*(v12 + 36)];
  v24 = *(sub_100050528() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = sub_100050828();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  *&v23[*(sub_1000035C4(&qword_100069F90, &qword_100052588) + 36)] = 256;
  sub_10000360C(v11, v14, &qword_100069F78, &qword_100052570);
  sub_100003674();
  sub_1000038E4();
  sub_100050CD8();
  return sub_100004444(v14, &qword_100069F80, &qword_100052578);
}

uint64_t sub_100003020@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000506F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100003080(uint64_t a1, id *a2)
{
  result = sub_100051138();
  *a2 = 0;
  return result;
}

uint64_t sub_1000030F8(uint64_t a1, id *a2)
{
  v3 = sub_100051148();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003178@<X0>(uint64_t *a1@<X8>)
{
  sub_100051158();
  v2 = sub_100051128();

  *a1 = v2;
  return result;
}

uint64_t sub_1000031BC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100051128();

  *a2 = v3;
  return result;
}

uint64_t sub_100003204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100051158();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003230(uint64_t a1)
{
  v2 = sub_10000337C(&qword_100069F58, type metadata accessor for Key, &unk_100052454);
  v3 = sub_10000337C(&qword_100069F60, type metadata accessor for Key, &unk_1000523F4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000337C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000033C4()
{
  sub_100051158();
  v0 = sub_100051208();

  return v0;
}

uint64_t sub_100003400(uint64_t a1)
{
  sub_100051158();
  sub_1000511C8();
}

Swift::Int sub_100003454(uint64_t a1)
{
  sub_100051158();
  sub_1000516C8();
  sub_1000511C8();
  v1 = sub_1000516F8();

  return v1;
}

uint64_t sub_1000034C8(void *a1, uint64_t *a2)
{
  v2 = sub_100051158();
  v4 = v3;
  if (v2 == sub_100051158() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100051658();
  }

  return v7 & 1;
}

uint64_t sub_1000035C4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000360C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035C4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100003674()
{
  result = qword_100069F98;
  if (!qword_100069F98)
  {
    sub_10000372C(&qword_100069F80, &qword_100052578);
    sub_100003774();
    sub_1000044E8(&qword_100069FC8, &qword_100069F90, &qword_100052588, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069F98);
  }

  return result;
}

uint64_t sub_10000372C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003774()
{
  result = qword_100069FA0;
  if (!qword_100069FA0)
  {
    sub_10000372C(&qword_100069F78, &qword_100052570);
    sub_10000382C();
    sub_1000044E8(&qword_100069FB8, &qword_100069FC0, &unk_100052590, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069FA0);
  }

  return result;
}

unint64_t sub_10000382C()
{
  result = qword_100069FA8;
  if (!qword_100069FA8)
  {
    sub_10000372C(&qword_100069F70, &qword_100052568);
    sub_1000044E8(&qword_100069FB0, &qword_100069F68, &qword_100052560, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069FA8);
  }

  return result;
}

unint64_t sub_1000038E4()
{
  result = qword_100069FD0;
  if (!qword_100069FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069FD0);
  }

  return result;
}

uint64_t sub_100003948()
{
  sub_10000372C(&qword_100069F80, &qword_100052578);
  sub_100003674();
  sub_1000038E4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for TranslateActionButtonView(uint64_t a1)
{
  result = qword_10006A030;
  if (!qword_10006A030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100050988();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100003B0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100050988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_100003BC8(uint64_t a1)
{
  sub_100050988();
  if (v1 <= 0x3F)
  {
    sub_100003C70(319, &unk_10006A040, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003C70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100003D24()
{
  result = qword_10006A0B8;
  if (!qword_10006A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0B8);
  }

  return result;
}

uint64_t sub_100003D9C(uint64_t a1)
{
  v2 = sub_100050EC8();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000505C8();
}

uint64_t sub_100003E6C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100003E8C()
{
  result = qword_10006A0C8;
  if (!qword_10006A0C8)
  {
    sub_10000372C(&qword_10006A0C0, &qword_100052708);
    sub_100003F44();
    sub_1000044E8(&qword_10006A120, &qword_10006A128, &qword_100052740, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0C8);
  }

  return result;
}

unint64_t sub_100003F44()
{
  result = qword_10006A0D0;
  if (!qword_10006A0D0)
  {
    sub_10000372C(&qword_10006A0A8, &qword_1000526D0);
    sub_100003FFC();
    sub_1000044E8(&qword_10006A120, &qword_10006A128, &qword_100052740, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0D0);
  }

  return result;
}

unint64_t sub_100003FFC()
{
  result = qword_10006A0D8;
  if (!qword_10006A0D8)
  {
    sub_10000372C(&qword_10006A0A0, &qword_1000526C8);
    sub_1000040B4();
    sub_1000044E8(&qword_10006A110, &qword_10006A118, &qword_100052738, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0D8);
  }

  return result;
}

unint64_t sub_1000040B4()
{
  result = qword_10006A0E0;
  if (!qword_10006A0E0)
  {
    sub_10000372C(&qword_10006A098, &qword_1000526C0);
    sub_10000416C();
    sub_1000044E8(&qword_100069FB8, &qword_100069FC0, &unk_100052590, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0E0);
  }

  return result;
}

unint64_t sub_10000416C()
{
  result = qword_10006A0E8;
  if (!qword_10006A0E8)
  {
    sub_10000372C(&qword_10006A090, &qword_1000526B8);
    sub_100004224();
    sub_1000044E8(&qword_10006A100, &qword_10006A108, ".E", &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0E8);
  }

  return result;
}

unint64_t sub_100004224()
{
  result = qword_10006A0F0;
  if (!qword_10006A0F0)
  {
    sub_10000372C(&qword_10006A088, &qword_1000526B0);
    sub_1000042B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0F0);
  }

  return result;
}

unint64_t sub_1000042B0()
{
  result = qword_10006A0F8;
  if (!qword_10006A0F8)
  {
    sub_10000372C(&qword_10006A080, &qword_1000526A8);
    sub_100050958();
    sub_10000337C(&qword_10006A0B0, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100003D24();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A0F8);
  }

  return result;
}

uint64_t sub_1000043D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A138, &qword_100052788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004444(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000035C4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000044E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000372C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100004530()
{
  sub_1000035C4(&qword_10006A488, &unk_100052BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100052820;
  strcpy((inited + 32), "sourceEditable");
  *(inited + 47) = -18;
  sub_100009FC4(0, &qword_10006A490, NSNumber_ptr);
  *(inited + 48) = sub_100051498(*v0);
  *(inited + 56) = 0x6563697665446E6FLL;
  *(inited + 64) = 0xEF64656C62616E45;
  *(inited + 72) = sub_100051498(*(v0 + 1));
  *(inited + 80) = 0x4449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_100051128();
  *(inited + 104) = 0x756F436E656B6F74;
  *(inited + 112) = 0xEA0000000000746ELL;
  *(inited + 120) = sub_1000514A8(*(v0 + 8));
  v2 = sub_10004DF48(inited);
  swift_setDeallocating();
  sub_1000035C4(&qword_10006A498, &qword_1000557B0);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_100004698()
{
  v0 = sub_100051128();
  sub_1000048AC(v13);
  v1 = sub_100009F34(v13, v14);
  v2 = *(v1 + 1);
  v15 = *v1;
  v16 = v2;
  v17 = *(v1 + 16);
  sub_100004530();
  sub_100009FC4(0, &qword_10006A480, NSObject_ptr);
  isa = sub_1000510D8().super.isa;

  sub_100009F78(v13);
  AnalyticsSendEvent();

  if (qword_100069F10 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E078);
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "SELF Invocation log start for presenting system translation", v7, 2u);
  }

  sub_100004FF4();
  sub_1000048AC(v13);
  v8 = *(sub_100009F34(v13, v14) + 32);
  sub_100009F78(v13);
  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 1;
  }

  sub_1000048AC(v13);
  v10 = *(sub_100009F34(v13, v14) + 33);
  sub_100009F78(v13);
  if (v10)
  {
    v11 = 9;
  }

  else
  {
    v11 = 6;
  }

  sub_10002D384(3, v9, v11);
}

uint64_t sub_1000048AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1000035C4(&qword_10006A470, &qword_100052B78);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  sub_100044FF4([v1 extensionContext], &v33 - v13);
  if (*&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp])
  {
    v34 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    v16 = sub_100004FF4();
    v18 = *(v16 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
    v17 = *(v16 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier + 8);

    v19 = 1819047278;
    if (v17)
    {
      v19 = v18;
    }

    v34 = v19;
    v15 = 0xE400000000000000;
    if (v17)
    {
      v15 = v17;
    }
  }

  v33 = v15;
  sub_10000A00C(v14, v12, &qword_10006A470, &qword_100052B78);
  v20 = type metadata accessor for TranslationRequestContext(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v12, 1, v20) == 1)
  {
    sub_100004444(v12, &qword_10006A470, &qword_100052B78);
    v22 = 0;
  }

  else
  {
    v22 = v12[*(v20 + 36)];
    sub_100009EC0(v12);
  }

  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v23 = sub_100051388();
  v24 = sub_100051398();

  sub_10000A00C(v14, v9, &qword_10006A470, &qword_100052B78);
  if (v21(v9, 1, v20) == 1)
  {
    sub_100004444(v9, &qword_10006A470, &qword_100052B78);
    v25 = 0;
  }

  else
  {
    v26 = v9[*(v20 + 44)];
    sub_100009EC0(v9);
    v25 = v26 == 1;
  }

  sub_10000A00C(v14, v6, &qword_10006A470, &qword_100052B78);
  if (v21(v6, 1, v20) == 1)
  {
    sub_100004444(v6, &qword_10006A470, &qword_100052B78);
    v27 = 0;
  }

  else
  {
    v28 = v6[*(v20 + 44)];
    sub_100009EC0(v6);
    v27 = v28 == 2;
  }

  a1[3] = &type metadata for ActionViewController.Data;
  a1[4] = &off_100066658;
  v29 = swift_allocObject();
  *a1 = v29;
  *(v29 + 16) = v22;
  *(v29 + 17) = v24 & 1;
  v30 = v33;
  v31 = v34;
  *(v29 + 24) = 0;
  *(v29 + 32) = v31;
  *(v29 + 40) = v30;
  *(v29 + 48) = v25;
  *(v29 + 49) = v27;
  return sub_100004444(v14, &qword_10006A470, &qword_100052B78);
}

void sub_100004C40(uint64_t a1, uint64_t a2)
{
  sub_100004FF4();
  sub_10002D498(a1, a2);

  if (qword_100069F10 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E078);
  oslog = sub_100050248();
  v5 = sub_100051348();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "SELF Invocation log cancelled for presenting system translation", v6, 2u);
  }
}

uint64_t sub_100004F58()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext;
  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext);
  }

  else
  {
    type metadata accessor for TranslationContext(0);
    v2 = swift_allocObject();
    sub_1000502D8();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100004FF4()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel;
  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TranslationModel(0);
    swift_allocObject();
    v2 = sub_100031C44();
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100005070()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController;
  v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController);
  }

  else
  {
    v4 = v0;
    sub_100005210();
    v5 = objc_allocWithZone(sub_1000035C4(&qword_10006A458, &qword_100052B68));
    v6 = sub_100050118();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100005104()
{
  v1 = [v0 extensionContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 inputItems];

    v4 = sub_100051248();
    if (*(v4 + 16))
    {
      sub_1000091AC(v4 + 32, v8);

      sub_100009FC4(0, &qword_10006A450, NSExtensionItem_ptr);
      if (swift_dynamicCast())
      {
        v5 = [v7 attributedContentText];

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_100005210()
{
  v1 = v0;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E090);
  v3 = sub_100050248();
  v4 = sub_100051348();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "in rootView()", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = sub_100005104();
  if (!v8)
  {

LABEL_9:
    sub_100004FF4();
    sub_100004F58();
    KeyPath = swift_getKeyPath();
    type metadata accessor for TranslationModel(0);
    sub_10000929C(&qword_10006A340, 255, type metadata accessor for TranslationModel, &unk_1000548E0);
    v21 = sub_100050488();
    v37 = v22;
    v39 = v21;
    type metadata accessor for TranslationContext(0);
    sub_10000929C(&qword_10006A348, 255, type metadata accessor for TranslationContext, &unk_100054714);
    v35 = sub_100050488();
    v24 = v23;
    v25 = swift_getKeyPath();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_getKeyPath();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_getKeyPath();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_getKeyPath();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v43 = v39;
    *(&v43 + 1) = v37;
    *&v45 = v35;
    *(&v45 + 1) = v24;
    LOBYTE(v47) = 0;
    *(&v47 + 1) = v25;
    *&v50 = sub_10000931C;
    *(&v50 + 1) = v26;
    *&v52 = v27;
    *(&v52 + 1) = sub_10000A164;
    *&v54 = v28;
    *(&v54 + 1) = v29;
    *&v55 = sub_10000A168;
    *(&v55 + 1) = v30;
    *&v56 = v31;
    *(&v56 + 1) = sub_100009448;
    sub_1000035C4(&qword_10006A350, &qword_100052AD8);
    sub_100009450();
    v18 = sub_100050C88();
    v63 = v54;
    v64 = v55;
    v65 = v56;
    v66 = v32;
    v59 = KeyPath;
    v60 = v47;
    v61 = v50;
    v62 = v52;
    v57 = v43;
    v58 = v45;
    v19 = &qword_10006A350;
    v20 = &qword_100052AD8;
    goto LABEL_10;
  }

  v9 = v8;
  v10 = v7;
  v40 = sub_100004FF4();
  type metadata accessor for DefaultInterstitialModel(0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 32) = 0xD000000000000022;
  *(v11 + 40) = 0x800000010005EB40;
  v12 = v10;
  v38 = v9;
  sub_10004FE08();
  *(v11 + 16) = v12;
  sub_10000C904();
  v36 = swift_getKeyPath();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_getKeyPath();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_getKeyPath();
  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *&v42 = v12;
  *(&v42 + 1) = v40;
  *&v44 = v38;
  *(&v44 + 1) = v11;
  *&v46 = v36;
  *(&v46 + 1) = sub_10000A160;
  *&v48 = v13;
  *(&v48 + 1) = v34;
  *&v49 = sub_100009734;
  *(&v49 + 1) = v14;
  *&v51 = v15;
  *(&v51 + 1) = sub_100009750;
  *&v53 = v16;
  *(&v53 + 1) = v17;
  sub_1000035C4(&qword_10006A3D8, &qword_100052B40);
  sub_100009808();
  v18 = sub_100050C88();

  v61 = v49;
  v62 = v51;
  v63 = v53;
  LOBYTE(v64) = v57;
  v57 = v42;
  v58 = v44;
  v59 = v46;
  v60 = v48;
  v19 = &qword_10006A3D8;
  v20 = &qword_100052B40;
LABEL_10:
  sub_100004444(&v57, v19, v20);
  return v18;
}

double sub_1000058DC@<D0>(uint64_t (*a1)(void)@<X3>, _OWORD *a3@<X8>)
{
  a1();
  sub_100050758();
  result = *&v5;
  *a3 = v5;
  return result;
}

uint64_t sub_100005958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t), uint64_t a6)
{
  a5(a1, a2);

  return sub_100050768();
}

void *sub_1000059BC@<X0>(_BYTE *a1@<X8>)
{
  sub_100009B40();
  result = sub_100050758();
  *a1 = v3;
  return result;
}

void sub_100005A58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100004C40(0x657373696D736944, 0xE900000000000064);
    v3 = sub_100007350();
    if (v3)
    {
      [v3 dismiss];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100005AE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100006EC0();
  }
}

void sub_100005B38(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v5 = sub_100050268();
    sub_100008BA0(v5, qword_10006E090);
    v6 = a1;
    v7 = sub_100050248();
    v8 = sub_100051338();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = [v6 length];

      _os_log_impl(&_mh_execute_header, v7, v8, "Finish with replacement of length %{public}ld", v9, 0xCu);
    }

    else
    {

      v7 = v6;
    }

    v10 = sub_100007350();
    if (v10)
    {
      [v10 finishWithTranslation:v6];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100005CB8@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_100050598();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_100009BF4;
  a1[1] = result;
  return result;
}

uint64_t sub_100005D1C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1000505A8();
}

void sub_100005D88(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100007028();
  }
}

id sub_100005DDC()
{
  v1 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController;
  v2 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController);
  }

  else
  {
    v4 = sub_100005070();
    v5 = [objc_allocWithZone(type metadata accessor for SecureNavigationController()) initWithRootViewController:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_100005E78()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006A470, &qword_100052B78);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for TranslationRequestContext(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for ActionViewController();
  v47.receiver = v0;
  v47.super_class = v12;
  objc_msgSendSuper2(&v47, "_willAppearInRemoteViewController");
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v13 = sub_100050268();
  sub_100008BA0(v13, qword_10006E090);
  v14 = sub_100050248();
  v15 = sub_100051348();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "in _willAppearInRemoteViewController", v16, 2u);
  }

  sub_100044FF4([v1 extensionContext], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004444(v4, &qword_10006A470, &qword_100052B78);
    v17 = sub_100050248();
    v18 = sub_100051358();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No request context from NSExtensionItem", v19, 2u);
    }
  }

  else
  {
    sub_100009D80(v4, v11);
    if (v11[8] == 1)
    {
      v20 = sub_100004FF4();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = (v20 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler);
      v23 = *(v20 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler);
      v24 = *(v20 + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_consentHandler + 8);
      *v22 = sub_100009F1C;
      v22[1] = v21;

      sub_100009F24(v23, v24);
    }

    v25 = [v1 _hostApplicationBundleIdentifier];
    v45 = v9;
    if (v25)
    {
      v26 = v25;
      v27 = sub_100051158();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v44 = v27;
    v30 = (sub_100004FF4() + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_hostBundleIdentifier);
    *v30 = v27;
    v30[1] = v29;

    v31 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel;
    v32 = *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel];
    v33 = v5[8];
    v34 = OBJC_IVAR____TtC20TranslationUIService16TranslationModel_cplIntervalID;
    swift_beginAccess();

    sub_100009DE4(&v11[v33], v32 + v34);
    swift_endAccess();

    v35 = v11[v5[9]];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v46[0]) = v35;

    sub_100050308();
    *(*&v1[v31] + OBJC_IVAR____TtC20TranslationUIService16TranslationModel_requestOrigin) = v11[v5[11]];
    if (*&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp])
    {
    }

    else
    {
      v36 = v45;
      sub_100009E5C(v11, v45);

      v37 = sub_100050248();
      v38 = sub_100051378();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46[0] = v43;
        *v39 = 136446466;
        if (v29)
        {
          v40 = v44;
        }

        else
        {
          v40 = 7104878;
        }

        if (!v29)
        {
          v29 = 0xE300000000000000;
        }

        v41 = sub_100008C04(v40, v29, v46);

        *(v39 + 4) = v41;
        *(v39 + 12) = 1026;
        v42 = *(v36 + v5[11]) == 2;
        sub_100009EC0(v36);
        *(v39 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v37, v38, "System-wide translation invoked from bundleID: %{public}s, request developer-originated: %{BOOL,public}d", v39, 0x12u);
        sub_100009F78(v43);
      }

      else
      {
        sub_100009EC0(v36);
      }

      sub_10002D9A0(v11);
    }

    sub_100004698();
    sub_100009EC0(v11);
  }
}

void sub_100006494(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_100007350();

    if (v3)
    {
      [v3 confirmUserConsent];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100006550(uint64_t a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for ActionViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v1 view];
  if (!v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor:v5];

  v6 = sub_100005DDC();
  v7 = [v6 view];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = [v4 clearColor];
  [v7 setBackgroundColor:v8];

  v9 = sub_100005070();
  v10 = [v9 view];

  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = [v4 clearColor];
  [v10 setBackgroundColor:v11];

  v12 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController;
  v13 = [*&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController] view];
  if (v13)
  {
    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100009D50;
    *(v17 + 24) = v16;
    v19[4] = sub_100009BF4;
    v19[5] = v17;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100006CD0;
    v19[3] = &unk_100066578;
    v18 = _Block_copy(v19);

    [v15 performWithoutAnimation:v18];
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if ((v15 & 1) == 0)
    {
      [v1 addChildViewController:*&v1[v12]];

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

void sub_10000683C(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = sub_100005DDC();

  v5 = [v4 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v2 addSubview:v5];

  sub_1000035C4(&qword_10006A460, &qword_100052B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100052830;
  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = sub_100005DDC();

  v9 = [v8 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = [v9 topAnchor];

  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = [v11 view];

  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = [v12 topAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v6 + 32) = v14;
  v15 = swift_unknownObjectUnownedLoadStrong();
  v16 = sub_100005DDC();

  v17 = [v16 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = [v17 bottomAnchor];

  v19 = swift_unknownObjectUnownedLoadStrong();
  v20 = [v19 view];

  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = [v20 bottomAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v6 + 40) = v22;
  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = sub_100005DDC();

  v25 = [v24 view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = [v25 leadingAnchor];

  v27 = swift_unknownObjectUnownedLoadStrong();
  v28 = [v27 view];

  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = [v28 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v6 + 48) = v30;
  v31 = swift_unknownObjectUnownedLoadStrong();
  v32 = sub_100005DDC();

  v33 = [v32 view];
  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = [v33 trailingAnchor];

  v35 = swift_unknownObjectUnownedLoadStrong();
  v36 = [v35 view];

  if (!v36)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v37 = objc_opt_self();
  v38 = [v36 trailingAnchor];

  v39 = [v34 constraintEqualToAnchor:v38];
  *(v6 + 56) = v39;
  sub_100009FC4(0, &qword_10006A468, NSLayoutConstraint_ptr);
  isa = sub_100051238().super.isa;

  [v37 activateConstraints:isa];
}

void *sub_100006EC0()
{
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v0 = sub_100050268();
  sub_100008BA0(v0, qword_10006E090);
  v1 = sub_100050248();
  v2 = sub_100051338();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ask host to expand sheet if needed", v3, 2u);
  }

  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  if ((v5 & 1) == 0)
  {
    result = sub_100007350();
    if (result)
    {
      [result expandSheet];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100007028()
{
  v1 = v0;
  v2 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  __chkstk_darwin(v2 - 8);
  sub_100004F58();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
  v3 = sub_100051388();
  sub_100051398();

  v4 = objc_allocWithZone(sub_100050108());
  v5 = sub_1000500E8();
  sub_10000929C(&qword_10006A338, v6, type metadata accessor for ActionViewController, &unk_1000528A8);
  v7 = v1;
  sub_1000500F8();
  sub_100004FF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  sub_1000500C8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  sub_1000500D8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  if (v9 == 1)
  {
    v8 = sub_100005DDC();
    [v8 pushViewController:v5 animated:1];
  }

  else
  {
    v8 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v5];
    [v7 presentViewController:v8 animated:1 completion:0];
  }
}

uint64_t sub_100007350()
{
  if ([v0 _remoteViewControllerProxy])
  {
    sub_100051518();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000035C4(&qword_10006A330, &qword_1000529E0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100004444(v5, &qword_10006A2C8, &unk_1000529D0);
    return 0;
  }
}

id sub_100007438(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

id sub_100007484(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp;
  sub_10000E334();
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext] = 0;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel] = 0;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController] = 0;
  *&v3[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController] = 0;
  if (a2)
  {
    v8 = sub_100051128();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for ActionViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1000075B8(void *a1)
{
  v3 = OBJC_IVAR____TtC20TranslationUIService20ActionViewController_defaultApp;
  sub_10000E334();
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationContext] = 0;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___translationModel] = 0;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostController] = 0;
  *&v1[OBJC_IVAR____TtC20TranslationUIService20ActionViewController____lazy_storage___hostNavigationController] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ActionViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1000076A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100007778(uint64_t a1)
{
  v2 = sub_10004FDB8();
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000035C4(&qword_10006A298, &qword_100054E10);
  __chkstk_darwin(v51);
  v5 = &v45 - v4;
  v6 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v7 = __chkstk_darwin(v6 - 8);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v50 = &v45 - v10;
  v11 = __chkstk_darwin(v9);
  v53 = &v45 - v12;
  v13 = __chkstk_darwin(v11);
  v52 = &v45 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v20 = sub_100050268();
  sub_100008BA0(v20, qword_10006E090);
  sub_10000A00C(a1, v19, &qword_10006A2A0, &qword_1000528E0);
  v21 = sub_100050248();
  v22 = sub_100051338();
  if (os_log_type_enabled(v21, v22))
  {
    v47 = a1;
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v57 = v46;
    *v23 = 136446210;
    sub_10000A00C(v19, v17, &qword_10006A2A0, &qword_1000528E0);
    v24 = v2;
    v25 = v54;
    if ((*(v54 + 48))(v17, 1, v24) == 1)
    {
      sub_100004444(v17, &qword_10006A2A0, &qword_1000528E0);
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v26 = sub_10004FD28();
      v27 = v28;
      (*(v25 + 8))(v17, v24);
    }

    v2 = v24;
    v55 = v26;
    v56 = v27;
    sub_1000035C4(&qword_10006A2B8, &qword_100052930);
    v29 = sub_100051178();
    v31 = v30;
    sub_100004444(v19, &qword_10006A2A0, &qword_1000528E0);
    v32 = sub_100008C04(v29, v31, &v57);

    *(v23 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Source locale changed to %{public}s", v23, 0xCu);
    sub_100009F78(v46);

    a1 = v47;
  }

  else
  {

    sub_100004444(v19, &qword_10006A2A0, &qword_1000528E0);
  }

  sub_100004FF4();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v52;
  sub_1000502F8();

  v34 = *(v51 + 48);
  sub_10000A00C(a1, v5, &qword_10006A2A0, &qword_1000528E0);
  sub_10000A00C(v33, &v5[v34], &qword_10006A2A0, &qword_1000528E0);
  v35 = v54;
  v36 = *(v54 + 48);
  v37 = v36(v5, 1, v2);
  v38 = v53;
  if (v37 == 1)
  {
    sub_100004444(v33, &qword_10006A2A0, &qword_1000528E0);
    if (v36(&v5[v34], 1, v2) == 1)
    {
      v39 = v5;
      return sub_100004444(v39, &qword_10006A2A0, &qword_1000528E0);
    }

    goto LABEL_14;
  }

  sub_10000A00C(v5, v53, &qword_10006A2A0, &qword_1000528E0);
  if (v36(&v5[v34], 1, v2) == 1)
  {
    sub_100004444(v33, &qword_10006A2A0, &qword_1000528E0);
    (*(v35 + 8))(v38, v2);
LABEL_14:
    sub_100004444(v5, &qword_10006A298, &qword_100054E10);
LABEL_15:
    v40 = v50;
    sub_10000A00C(a1, v50, &qword_10006A2A0, &qword_1000528E0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v40, v49, &qword_10006A2A0, &qword_1000528E0);
    swift_retain_n();
    sub_100050308();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v55) = 0;
    sub_100050308();
    v39 = v40;
    return sub_100004444(v39, &qword_10006A2A0, &qword_1000528E0);
  }

  v42 = &v5[v34];
  v43 = v48;
  (*(v35 + 32))(v48, v42, v2);
  sub_10000929C(&qword_10006A2B0, 255, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  LODWORD(v51) = sub_100051118();
  v44 = *(v35 + 8);
  v44(v43, v2);
  sub_100004444(v33, &qword_10006A2A0, &qword_1000528E0);
  v44(v38, v2);
  result = sub_100004444(v5, &qword_10006A2A0, &qword_1000528E0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_100007F1C(uint64_t a1)
{
  v60 = sub_10004FDB8();
  v2 = *(v60 - 8);
  __chkstk_darwin(v60);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000035C4(&qword_10006A298, &qword_100054E10);
  __chkstk_darwin(v55);
  v6 = &v49 - v5;
  v7 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v8 = __chkstk_darwin(v7 - 8);
  v56 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v54 = &v49 - v11;
  v12 = __chkstk_darwin(v10);
  v53 = &v49 - v13;
  v14 = __chkstk_darwin(v12);
  v52 = &v49 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v49 - v20;
  __chkstk_darwin(v19);
  v23 = &v49 - v22;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v59 = v18;
  v24 = sub_100050268();
  sub_100008BA0(v24, qword_10006E090);
  v57 = a1;
  sub_10000A00C(a1, v23, &qword_10006A2A0, &qword_1000528E0);
  v25 = sub_100050248();
  v26 = sub_100051338();
  v27 = os_log_type_enabled(v25, v26);
  v58 = v2;
  v51 = v4;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v63 = v50;
    *v28 = 136446210;
    sub_10000A00C(v23, v21, &qword_10006A2A0, &qword_1000528E0);
    v29 = v60;
    if ((*(v2 + 48))(v21, 1, v60) == 1)
    {
      sub_100004444(v21, &qword_10006A2A0, &qword_1000528E0);
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v32 = v2;
      v30 = sub_10004FD28();
      v31 = v33;
      (*(v32 + 8))(v21, v29);
    }

    v61 = v30;
    v62 = v31;
    sub_1000035C4(&qword_10006A2B8, &qword_100052930);
    v34 = sub_100051178();
    v36 = v35;
    sub_100004444(v23, &qword_10006A2A0, &qword_1000528E0);
    v37 = sub_100008C04(v34, v36, &v63);

    *(v28 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "Target locale changed to %{public}s", v28, 0xCu);
    sub_100009F78(v50);

    v2 = v58;
  }

  else
  {

    sub_100004444(v23, &qword_10006A2A0, &qword_1000528E0);
  }

  sub_100004FF4();
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v59;
  sub_1000502F8();

  v39 = *(v55 + 48);
  v40 = v57;
  sub_10000A00C(v57, v6, &qword_10006A2A0, &qword_1000528E0);
  sub_10000A00C(v38, &v6[v39], &qword_10006A2A0, &qword_1000528E0);
  v41 = *(v2 + 48);
  if (v41(v6, 1, v60) == 1)
  {
    sub_100004444(v38, &qword_10006A2A0, &qword_1000528E0);
    if (v41(&v6[v39], 1, v60) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v42 = v52;
  sub_10000A00C(v6, v52, &qword_10006A2A0, &qword_1000528E0);
  if (v41(&v6[v39], 1, v60) == 1)
  {
    sub_100004444(v59, &qword_10006A2A0, &qword_1000528E0);
    (*(v2 + 8))(v42, v60);
LABEL_14:
    sub_100004444(v6, &qword_10006A298, &qword_100054E10);
LABEL_15:
    v43 = v53;
    sub_10000A00C(v40, v53, &qword_10006A2A0, &qword_1000528E0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10000A00C(v43, v54, &qword_10006A2A0, &qword_1000528E0);

    sub_100050308();
    v6 = v43;
LABEL_16:
    sub_100004444(v6, &qword_10006A2A0, &qword_1000528E0);
    goto LABEL_17;
  }

  v46 = v51;
  v47 = v60;
  (*(v2 + 32))(v51, &v6[v39], v60);
  sub_10000929C(&qword_10006A2B0, 255, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  LODWORD(v55) = sub_100051118();
  v48 = *(v2 + 8);
  v48(v46, v47);
  sub_100004444(v59, &qword_10006A2A0, &qword_1000528E0);
  v48(v42, v47);
  sub_100004444(v6, &qword_10006A2A0, &qword_1000528E0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_17:
  v44 = v56;
  sub_10000A00C(v40, v56, &qword_10006A2A0, &qword_1000528E0);
  if (v41(v44, 1, v60) == 1)
  {
    sub_100004444(v44, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    sub_10004FD28();
    (*(v58 + 8))(v44, v60);
    sub_100009FC4(0, &qword_10006A2A8, NSUserDefaults_ptr);
    v45 = sub_100051388();
    sub_1000513D8();
  }
}

uint64_t sub_100008768@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v4;
  return result;
}

uint64_t sub_1000087E8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100008870(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_10000A00C(a1, &v10[-v7], &qword_10006A2A0, &qword_1000528E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v8, v6, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  swift_getKeyPath();
  swift_getKeyPath();
  v10[15] = 0;

  sub_100050308();
  return sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
}

uint64_t sub_1000089F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();
}

uint64_t sub_100008A70(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_10000A00C(a1, &v10 - v7, &qword_10006A2A0, &qword_1000528E0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10000A00C(v8, v6, &qword_10006A2A0, &qword_1000528E0);

  sub_100050308();
  return sub_100004444(v8, &qword_10006A2A0, &qword_1000528E0);
}

uint64_t sub_100008BA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100008C04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008CD0(v11, 0, 0, 1, a1, a2);
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
    sub_1000091AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009F78(v11);
  return v7;
}

unint64_t sub_100008CD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008DDC(a5, a6);
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
    result = sub_1000515E8();
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

void *sub_100008DDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008E28(a1, a2);
  sub_100008F58(&off_100066360);
  return v3;
}

void *sub_100008E28(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009044(v5, 0);
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

  result = sub_1000515E8();
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
        v10 = sub_1000511F8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009044(v10, 0);
        result = sub_1000515B8();
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

uint64_t sub_100008F58(uint64_t result)
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

  result = sub_1000090B8(result, v11, 1, v3);
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

void *sub_100009044(uint64_t a1, uint64_t a2)
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

  sub_1000035C4(&qword_10006A2C0, &qword_100052938);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000090B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035C4(&qword_10006A2C0, &qword_100052938);
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

uint64_t sub_1000091AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000929C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1000092E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000093E0@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_100050598();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_100009BF4;
  a1[1] = result;
  return result;
}

unint64_t sub_100009450()
{
  result = qword_10006A358;
  if (!qword_10006A358)
  {
    sub_10000372C(&qword_10006A350, &qword_100052AD8);
    sub_1000094F4();
    sub_100009AEC(&qword_10006A3C8, &qword_10006A3D0, &qword_100052B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A358);
  }

  return result;
}

unint64_t sub_1000094F4()
{
  result = qword_10006A360;
  if (!qword_10006A360)
  {
    sub_10000372C(&qword_10006A368, &qword_100052AE0);
    sub_100009598();
    sub_100009AEC(&qword_10006A3B8, &qword_10006A3C0, &qword_100052B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A360);
  }

  return result;
}

unint64_t sub_100009598()
{
  result = qword_10006A370;
  if (!qword_10006A370)
  {
    sub_10000372C(&qword_10006A378, &qword_100052AE8);
    sub_10000963C();
    sub_100009AEC(&qword_10006A3A8, &qword_10006A3B0, &qword_100052B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A370);
  }

  return result;
}

unint64_t sub_10000963C()
{
  result = qword_10006A380;
  if (!qword_10006A380)
  {
    sub_10000372C(&qword_10006A388, &qword_100052AF0);
    sub_1000096E0();
    sub_100009AEC(&qword_10006A398, &qword_10006A3A0, &qword_100052AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A380);
  }

  return result;
}

unint64_t sub_1000096E0()
{
  result = qword_10006A390;
  if (!qword_10006A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A390);
  }

  return result;
}

void *sub_10000976C@<X0>(_BYTE *a1@<X8>)
{
  sub_100009B40();
  result = sub_100050758();
  *a1 = v3;
  return result;
}

unint64_t sub_100009808()
{
  result = qword_10006A3E0;
  if (!qword_10006A3E0)
  {
    sub_10000372C(&qword_10006A3D8, &qword_100052B40);
    sub_1000098AC();
    sub_100009AEC(&qword_10006A420, &qword_10006A428, &qword_100052B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A3E0);
  }

  return result;
}

unint64_t sub_1000098AC()
{
  result = qword_10006A3E8;
  if (!qword_10006A3E8)
  {
    sub_10000372C(&qword_10006A3F0, &qword_100052B48);
    sub_100009950();
    sub_100009AEC(&qword_10006A3B8, &qword_10006A3C0, &qword_100052B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A3E8);
  }

  return result;
}

unint64_t sub_100009950()
{
  result = qword_10006A3F8;
  if (!qword_10006A3F8)
  {
    sub_10000372C(&qword_10006A400, &qword_100052B50);
    sub_1000099F4();
    sub_100009AEC(&qword_10006A3A8, &qword_10006A3B0, &qword_100052B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A3F8);
  }

  return result;
}

unint64_t sub_1000099F4()
{
  result = qword_10006A408;
  if (!qword_10006A408)
  {
    sub_10000372C(&qword_10006A410, &qword_100052B58);
    sub_100009A98();
    sub_100009AEC(&qword_10006A398, &qword_10006A3A0, &qword_100052AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A408);
  }

  return result;
}

unint64_t sub_100009A98()
{
  result = qword_10006A418;
  if (!qword_10006A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A418);
  }

  return result;
}

uint64_t sub_100009AEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000372C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100009B40()
{
  result = qword_10006A430;
  if (!qword_10006A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A430);
  }

  return result;
}

uint64_t sub_100009B94()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100009C1C()
{
  result = qword_10006A438;
  if (!qword_10006A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A438);
  }

  return result;
}

unint64_t sub_100009C70()
{
  result = qword_10006A440;
  if (!qword_10006A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A440);
  }

  return result;
}

unint64_t sub_100009CC4()
{
  result = qword_10006A448;
  if (!qword_10006A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A448);
  }

  return result;
}

uint64_t sub_100009D18()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationRequestContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A478, &qword_100052B80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationRequestContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009EC0(uint64_t a1)
{
  v2 = type metadata accessor for TranslationRequestContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009F24(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_100009F34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009F78(void *a1)
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

uint64_t sub_100009FC4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000A00C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000035C4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A074()
{

  return _swift_deallocObject(v0, 50, 7);
}

__n128 sub_10000A0AC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A0C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_10000A108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranslationModel.TranslationAnnotation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranslationModel.TranslationAnnotation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10000A2E4@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_10000A44C(a1 & 1);
  LODWORD(v16) = sub_100050908();
  v3 = sub_100050BF8();
  v5 = v4;
  v7 = v6;

  sub_100050B58();
  v8 = sub_100050C18();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000A514(v3, v5, v7 & 1);

  sub_100051088();
  sub_100050538();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  *(a2 + 128) = v22;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  result = v19;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  return result;
}

uint64_t sub_10000A44C(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = "ation.SystemPresentation";
  if (a1)
  {
    v3 = "LOW_CONFIDENCE_TRANSLATION";
    v4._countAndFlagsBits = 0xD000000000000014;
  }

  else
  {
    v4._countAndFlagsBits = 0xD00000000000001ALL;
  }

  v8._countAndFlagsBits = 0xE000000000000000;
  v4._object = (v3 | 0x8000000000000000);
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v5.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v6 = sub_10004FC68(v4, v9, v5, v10, 0, v8);

  return v6;
}

uint64_t sub_10000A514(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000A528()
{
  result = qword_10006A4A0;
  if (!qword_10006A4A0)
  {
    sub_10000372C(&qword_10006A4A8, qword_100052CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A4A0);
  }

  return result;
}

id sub_10000A5AC(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_connection] = 0;
  v4 = &v1[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange];
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_identity;
  v6 = sub_1000501A8();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v7 = sub_100050268();
  sub_100008BA0(v7, qword_10006E010);
  v8 = sub_100050248();
  v9 = sub_100051348();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Host Coordinator initializing", v10, 2u);
  }

  sub_10000BA50(a1, &v2[OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_parent]);
  v11 = (a1 + *(type metadata accessor for AppExtensionHostView(0) + 24));
  v12 = *v11;
  v13 = v11[1];
  v14 = *v4;
  v15 = v4[1];
  *v4 = *v11;
  v4[1] = v13;
  sub_10000BAB4(v12, v13);
  sub_100009F24(v14, v15);
  v18.receiver = v2;
  v18.super_class = type metadata accessor for AppExtensionHostView.HostCoordinator(0);
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_10000BB28(a1, type metadata accessor for AppExtensionHostView);
  return v16;
}

void sub_10000A780(void *a1)
{
  v2 = v1;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E010);
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "host view controller did activate", v7, 2u);
  }

  v21 = 0;
  v8 = [a1 makeXPCConnectionWithError:&v21];
  v9 = v21;
  if (v8)
  {
    v10 = v8;
    v11 = v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_parent;
    v12 = *(v11 + *(type metadata accessor for AppExtensionHostView(0) + 20));
    v13 = v9;
    if ([v12 shouldAcceptWithConnection:v10])
    {
      v14 = v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange;
      v15 = *(v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
      if (v15)
      {
        v16 = *(v14 + 8);

        v15(1);
        sub_100009F24(v15, v16);
      }
    }
  }

  else
  {
    v17 = v21;
    sub_10004FC88();

    swift_willThrow();
    v18 = v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange;
    v19 = *(v2 + OBJC_IVAR____TtCV20TranslationUIService20AppExtensionHostView15HostCoordinator_remoteConnectionDidChange);
    if (v19)
    {
      v20 = *(v18 + 8);

      v19(0);
      sub_100009F24(v19, v20);
    }
  }
}

id sub_10000AAF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppExtensionHostView.HostCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000ABDC(uint64_t a1)
{
  type metadata accessor for AppExtensionHostView(319);
  if (v1 <= 0x3F)
  {
    sub_10000ACDC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000ACDC(uint64_t a1)
{
  if (!qword_10006A548)
  {
    sub_1000501A8();
    v1 = sub_1000514E8();
    if (!v2)
    {
      atomic_store(v1, &qword_10006A548);
    }
  }
}

uint64_t sub_10000AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000501A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000AE1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000501A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000AEF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AF30(uint64_t a1)
{
  result = sub_1000501A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000AFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000035C4(&qword_10006A5E0, &unk_100052D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000B094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000035C4(&qword_10006A5E0, &unk_100052D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10000B158(uint64_t a1)
{
  sub_10000B2B0(319, &qword_10006A650, &qword_10006A658, &qword_100052FA0, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_10000B24C();
    if (v2 <= 0x3F)
    {
      sub_10000B2B0(319, &qword_10006A668, &unk_10006A670, &unk_100052D40, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10000B24C()
{
  result = qword_10006A660;
  if (!qword_10006A660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10006A660);
  }

  return result;
}

void sub_10000B2B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000372C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10000B320(void *a1)
{
  v28 = sub_1000501A8();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000035C4(&qword_10006A6B0, &qword_100052E18);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = a1;
    sub_1000035C4(&qword_10006A6B8, &qword_100052E20);
    sub_100050A48();
    v19 = v29;
    [v17 setDelegate:v29];

    sub_1000035C4(&qword_10006A5E0, &unk_100052D10);
    sub_100050F68();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      v20 = &qword_10006A658;
      v21 = &qword_100052FA0;
      v22 = v11;
    }

    else
    {
      sub_10000BAC4(v11, v15);
      sub_100051458();
      v23 = sub_100051448();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v8, 1, v23) == 1)
      {
        sub_100004444(v8, &qword_10006A6B0, &qword_100052E18);
        (*(v26 + 16))(v27, v15, v28);

        sub_100051438();
        (*(v24 + 56))(v6, 0, 1, v23);
        sub_100051468();

        return sub_10000BB28(v15, type metadata accessor for AppExtensionHostView.Configuration);
      }

      sub_10000BB28(v15, type metadata accessor for AppExtensionHostView.Configuration);

      v20 = &qword_10006A6B0;
      v21 = &qword_100052E18;
      v22 = v8;
    }

    return sub_100004444(v22, v20, v21);
  }

  else
  {
    result = sub_1000515F8();
    __break(1u);
  }

  return result;
}

id sub_10000B780()
{
  v0 = [objc_allocWithZone(EXHostViewController) init];
  sub_1000035C4(&qword_10006A6B8, &qword_100052E20);
  sub_100050A48();
  [v0 setDelegate:v2];

  return v0;
}

id sub_10000B80C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA50(v2, v5);
  v6 = objc_allocWithZone(type metadata accessor for AppExtensionHostView.HostCoordinator(0));
  result = sub_10000A5AC(v5);
  *a2 = result;
  return result;
}

uint64_t sub_10000B8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000BB88(&qword_10006A6C0, &unk_100052DA0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000B958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000BB88(&qword_10006A6C0, &unk_100052DA0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000B9D8(uint64_t a1)
{
  sub_10000BB88(&qword_10006A6C0, &unk_100052DA0);
  sub_100050A28();
  __break(1u);
}

uint64_t sub_10000BA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BAB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000BAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionHostView.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BB28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000BB88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppExtensionHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BBCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a2;
  v61 = a3;
  v63 = a1;
  v7 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  __chkstk_darwin(v7 - 8);
  v62 = &v56 - v8;
  v9 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v66 = type metadata accessor for DefaultAppView(0);
  __chkstk_darwin(v66);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000035C4(&qword_10006A7C0, &qword_100052FA8);
  __chkstk_darwin(v64);
  v18 = &v56 - v17;
  v65 = type metadata accessor for DefaultAppNetworkAcceptance(0);
  __chkstk_darwin(v65);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v68 = a4;
  sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel, &unk_100052EA0);

  sub_10004FDD8();

  if (*(a4 + 24) == 1)
  {
    v21 = [v63 localizedName];
    v22 = sub_100051158();
    v24 = v23;

    KeyPath = swift_getKeyPath();
    v26 = swift_getKeyPath();
    *v20 = v22;
    v20[1] = v24;
    v20[2] = sub_10000DBB0;
    v20[3] = a4;
    v27 = v65;
    v28 = *(v65 + 24);
    *(v20 + v28) = swift_getKeyPath();
    sub_1000035C4(&qword_10006A7D8, &unk_100053038);
    swift_storeEnumTagMultiPayload();
    v29 = v20 + *(v27 + 28);
    *v29 = KeyPath;
    *(v29 + 1) = 0;
    v29[16] = 0;
    v30 = v20 + *(v27 + 32);
    *v30 = v26;
    v30[8] = 0;
    v31 = type metadata accessor for DefaultAppNetworkAcceptance;
    sub_10000DBEC(v20, v18, type metadata accessor for DefaultAppNetworkAcceptance);
    swift_storeEnumTagMultiPayload();
    sub_10000DB68(&qword_10006A7C8, type metadata accessor for DefaultAppNetworkAcceptance, &unk_1000530EC);
    sub_10000DB68(&qword_10006A7D0, type metadata accessor for DefaultAppView, &unk_1000536F0);
    sub_1000508A8();
    v32 = v20;
  }

  else
  {

    v33 = type metadata accessor for AppExtensionHostView.Configuration(0);
    v34 = *(v33 - 8);
    v58 = v16;
    v35 = *(v34 + 56);
    v59 = a5;
    v35(v14, 1, 1, v33);
    v36 = type metadata accessor for TranslationProviderHostModel(0);
    v37 = objc_allocWithZone(v36);
    v38 = objc_allocWithZone(NSAttributedString);
    v39 = sub_100051128();
    v40 = [v38 initWithString:v39];

    v41 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString;
    *&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString] = v40;
    v42 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
    v35(&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration], 1, 1, v33);
    v43 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote;
    v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote] = 0;
    v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand] = 0;
    *&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation] = 0;
    v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldDismiss] = 0;
    *&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions] = &_swiftEmptySetSingleton;
    *&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession] = 0;
    v44 = &v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID];
    *v44 = 0;
    v44[8] = 1;
    v45 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection;
    *&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection] = 0;
    sub_10004FE08();
    v46 = v63;
    *&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp] = v63;
    v57 = v18;
    *&v37[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel] = v60;
    sub_10000D838(v14, v12);
    v47 = v46;

    sub_10000D8A8(&v37[v42]);
    sub_10000D910(v12, &v37[v42]);
    v37[v43] = 0;

    *&v37[v45] = 0;
    objc_storeStrong(&v37[v41], v61);
    v67.receiver = v37;
    v67.super_class = v36;
    v48 = objc_msgSendSuper2(&v67, "init");
    v49 = sub_1000512F8();
    v50 = v62;
    (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
    sub_1000512D8();
    v51 = v48;
    v52 = sub_1000512C8();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = &protocol witness table for MainActor;
    v53[4] = v51;
    sub_10002EA44(0, 0, v50, &unk_100052FB0, v53);

    sub_10000D8A8(v14);
    v54 = v58;
    sub_100010A90(v51, v58);
    v31 = type metadata accessor for DefaultAppView;
    sub_10000DBEC(v54, v57, type metadata accessor for DefaultAppView);
    swift_storeEnumTagMultiPayload();
    sub_10000DB68(&qword_10006A7C8, type metadata accessor for DefaultAppNetworkAcceptance, &unk_1000530EC);
    sub_10000DB68(&qword_10006A7D0, type metadata accessor for DefaultAppView, &unk_1000536F0);
    sub_1000508A8();
    v32 = v54;
  }

  return sub_10000DC54(v32, v31);
}

uint64_t sub_10000C354()
{
  swift_getKeyPath();
  sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel, &unk_100052EA0);
  sub_10004FDD8();

  return *(v0 + 24);
}

void sub_10000C3F4()
{
  v1 = v0;
  if (qword_100069F18 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E090);

  v3 = sub_100050248();
  v4 = sub_100051338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136446210;
    v7 = [*(v1 + 16) bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      sub_100051158();
    }

    sub_1000035C4(&qword_10006A2B8, &qword_100052930);
    v9 = sub_100051178();
    v11 = sub_100008C04(v9, v10, &v28);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering default app first use acknowledgement for %{public}s", v5, 0xCu);
    sub_100009F78(v6);
  }

  sub_10000D074();
  v12 = sub_100051388();
  v13 = sub_100051128();
  v14 = [v12 arrayForKey:v13];

  if (!v14 || (v15 = sub_100051248(), v14, v16 = sub_10000CCA8(v15), , !v16))
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v17 = [*(v1 + 16) bundleIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100051158();
    v21 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_10000D0C0(0, *(v16 + 2) + 1, 1, v16);
    }

    v23 = *(v16 + 2);
    v22 = *(v16 + 3);
    if (v23 >= v22 >> 1)
    {
      v16 = sub_10000D0C0((v22 > 1), v23 + 1, 1, v16);
    }

    *(v16 + 2) = v23 + 1;
    v24 = &v16[16 * v23];
    *(v24 + 4) = v19;
    *(v24 + 5) = v21;
    v25 = sub_100051388();
    isa = sub_100051238().super.isa;

    v27 = sub_100051128();
    [v25 setObject:isa forKey:v27];

    sub_10000C904();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000C74C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel, &unk_100052EA0);
  sub_10004FDD8();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_10000C7F4(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel, &unk_100052EA0);
    sub_10004FDC8();
  }

  return result;
}

void sub_10000C904()
{
  v1 = v0;
  if (byte_10006E028 == 1)
  {
    sub_10000D074();
    v2 = sub_100051388();
    v3 = sub_100051128();
    v4 = [v2 arrayForKey:v3];

    if (!v4 || (v5 = sub_100051248(), v4, v6 = sub_10000CCA8(v5), , !v6))
    {

      v6 = _swiftEmptyArrayStorage;
    }

    v7 = [*(v1 + 16) bundleIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_100051158();
      v11 = v10;

      v12 = v6 + 5;
      v13 = v6[2] + 1;
      do
      {
        if (!--v13)
        {
          break;
        }

        if (*(v12 - 1) == v9 && *v12 == v11)
        {
          break;
        }

        v12 += 2;
      }

      while ((sub_100051658() & 1) == 0);

      if (((v13 == 0) ^ *(v1 + 24)))
      {
LABEL_20:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_10000DB68(&qword_10006A7A0, type metadata accessor for DefaultInterstitialModel, &unk_100052EA0);
        sub_10004FDC8();

        return;
      }

      *(v1 + 24) = v13 == 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100069F18 != -1)
    {
      swift_once();
    }

    v15 = sub_100050268();
    sub_100008BA0(v15, qword_10006E090);
    v16 = sub_100050248();
    v17 = sub_100051348();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Skipping first connect sheet: default app has not requested network access.", v18, 2u);
    }

    if (*(v1 + 24))
    {
      goto LABEL_20;
    }

    *(v1 + 24) = 0;
  }
}

unint64_t *sub_10000CCA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10000D3A4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000091AC(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000D3A4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10000CDBC()
{

  v1 = OBJC_IVAR____TtC20TranslationUIService24DefaultInterstitialModel___observationRegistrar;
  v2 = sub_10004FE18();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DefaultInterstitialModel(uint64_t a1)
{
  result = qword_10006A700;
  if (!qword_10006A700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CEBC(uint64_t a1)
{
  result = sub_10004FE18();
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

uint64_t sub_10000CF70(uint64_t a1)
{
  v2 = sub_100050428();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000506C8();
}

unint64_t sub_10000D074()
{
  result = qword_10006A2A8;
  if (!qword_10006A2A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006A2A8);
  }

  return result;
}

char *sub_10000D0C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035C4(&qword_10006A7A8, &qword_100052EE8);
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

void *sub_10000D1CC(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000035C4(&qword_10006A7F0, &qword_100053050);
  v10 = *(sub_10004FBD8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_10004FBD8() - 8);
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

char *sub_10000D3A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000D3C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D59C(a1, a2, a3, *v3, &qword_10006A800, &qword_100053060, type metadata accessor for TranslationModel.LocaleInfo);
  *v3 = result;
  return result;
}

void *sub_10000D408(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D59C(a1, a2, a3, *v3, &qword_10006A7F8, &qword_100053058, &type metadata accessor for LanguageModel);
  *v3 = result;
  return result;
}

void *sub_10000D44C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000D59C(a1, a2, a3, *v3, &qword_10006A7B0, &qword_100052EF0, &type metadata accessor for DisambiguationView.Item);
  *v3 = result;
  return result;
}

char *sub_10000D490(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000035C4(&qword_10006A7A8, &qword_100052EE8);
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

void *sub_10000D59C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000035C4(a5, a6);
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

__n128 sub_10000D778(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D784(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000D7CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000D838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D8A8(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D980()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DA74;

  return sub_100014260(a1, v4, v5, v6);
}

uint64_t sub_10000DA74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000DB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000DBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000DC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10000DCB8()
{
  result = qword_10006A7E0;
  if (!qword_10006A7E0)
  {
    sub_10000372C(&qword_10006A7E8, &qword_100053048);
    sub_10000DB68(&qword_10006A7C8, type metadata accessor for DefaultAppNetworkAcceptance, &unk_1000530EC);
    sub_10000DB68(&qword_10006A7D0, type metadata accessor for DefaultAppView, &unk_1000536F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A7E0);
  }

  return result;
}

uint64_t sub_10000DDBC()
{
  v0 = sub_100050268();
  sub_10000DE70(v0, qword_10006E010);
  sub_100008BA0(v0, qword_10006E010);
  return sub_100050258();
}

uint64_t *sub_10000DE70(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_10000DED4(void *a1)
{
  v1 = [a1 infoDictionary];
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E010);
  v3 = v1;
  v4 = sub_100050248();
  v5 = sub_100051348();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v34[0] = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = sub_100051158();
    v11 = v10;

    v12 = sub_100008C04(v9, v11, v34);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "App record info plist: %s", v6, 0xCu);
    sub_100009F78(v7);
  }

  v13 = sub_100051128();
  sub_10000E69C();
  v14 = [v3 objectForKey:v13 ofClass:swift_getObjCClassFromMetadata()];

  if (v14)
  {
    sub_100051518();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v15 = v31;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_10000E6E8(v34);
    v15 = 0;
  }

  v16 = v15;
  v17 = sub_100050248();
  v18 = sub_100051348();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v34[0] = v20;
    *v19 = 136315138;
    v21 = v16;
    sub_1000035C4(&qword_10006A8A0, &unk_1000530A0);
    v22 = sub_100051178();
    v24 = sub_100008C04(v22, v23, v34);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "value for network access property: %s", v19, 0xCu);
    sub_100009F78(v20);
  }

  if (v15 && [v16 BOOLValue])
  {
    v25 = sub_100050248();
    v26 = sub_100051348();
    if (!os_log_type_enabled(v25, v26))
    {
      v28 = 1;
      goto LABEL_24;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Networking will be allowed", v27, 2u);
    v28 = 1;
  }

  else
  {
    v25 = sub_100050248();
    v29 = sub_100051348();
    if (!os_log_type_enabled(v25, v29))
    {
      v28 = 0;
      goto LABEL_24;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v25, v29, "Networking will be disallowed", v30, 2u);
    v28 = 0;
  }

LABEL_24:

  byte_10006E028 = v28;
}

void sub_10000E334()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v27 = 0;
  v2 = [v0 defaultApplicationForCategory:6 error:&v27];

  if (!v2)
  {
    v11 = v27;
    sub_10004FC88();

    swift_willThrow();

    return;
  }

  v3 = v27;
  v4 = [v2 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100051158();
    v8 = v7;

    if (v6 == 0xD000000000000013 && 0x800000010005EE00 == v8)
    {

      return;
    }

    v10 = sub_100051658();

    if (v10)
    {

      return;
    }
  }

  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v12 = sub_100050268();
  sub_100008BA0(v12, qword_10006E010);
  v13 = v2;
  v14 = sub_100050248();
  v15 = sub_100051338();
  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_18;
  }

  v16 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v16 = 136315394;
  v17 = [v13 bundleIdentifier];

  if (v17)
  {
    v18 = sub_100051158();
    v20 = v19;

    v21 = sub_100008C04(v18, v20, &v27);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 localizedName];
    v23 = sub_100051158();
    v25 = v24;

    v26 = sub_100008C04(v23, v25, &v27);

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Default translation app %s with display name %s", v16, 0x16u);
    swift_arrayDestroy();

LABEL_18:

    sub_10000DED4(v13);
    return;
  }

  __break(1u);
}

unint64_t sub_10000E69C()
{
  result = qword_10006A490;
  if (!qword_10006A490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006A490);
  }

  return result;
}

uint64_t sub_10000E6E8(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A2C8, &unk_1000529D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000E834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000035C4(&qword_10006A8A8, &unk_1000530C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DefaultAppNetworkAcceptance(uint64_t a1)
{
  result = qword_10006A908;
  if (!qword_10006A908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E930(uint64_t a1)
{
  sub_10000EA14();
  if (v1 <= 0x3F)
  {
    sub_10000EA64(319);
    if (v2 <= 0x3F)
    {
      sub_10000EABC(319, &unk_10006A928, &type metadata for DismissAction);
      if (v3 <= 0x3F)
      {
        sub_10000EABC(319, &unk_10006A040, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10000EA14()
{
  result = qword_10006A918;
  if (!qword_10006A918)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10006A918);
  }

  return result;
}

void sub_10000EA64(uint64_t a1)
{
  if (!qword_10006A920)
  {
    sub_100050428();
    v1 = sub_1000503B8();
    if (!v2)
    {
      atomic_store(v1, &qword_10006A920);
    }
  }
}

void sub_10000EABC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000503B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000EB24()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for DefaultAppNetworkAcceptance(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100051368();
    v7 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100003E6C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10000EC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for DefaultAppNetworkAcceptance(0);
  v45 = *(v3 - 8);
  v44 = *(v45 + 64);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100050078();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006A968, &qword_100053140);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v41 = sub_1000035C4(&qword_10006A970, &qword_100053148);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v12 = &v39 - v11;
  *v10 = sub_100050888();
  *(v10 + 1) = 0x402E000000000000;
  v10[16] = 0;
  v13 = sub_1000035C4(&qword_10006A978, &qword_100053150);
  sub_10000F148(v2, &v10[*(v13 + 44)]);
  LOBYTE(v2) = sub_100050A78();
  sub_100050368();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v10[*(sub_1000035C4(&qword_10006A980, &qword_100053158) + 36)];
  *v22 = v2;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = &v10[*(sub_1000035C4(&qword_10006A988, &unk_100053160) + 36)];
  sub_100051048();
  v24 = sub_100050A88();
  v23[*(sub_1000035C4(&qword_10006AD40, &qword_100053760) + 36)] = v24;
  v25 = sub_1000504E8();
  v26 = sub_100050A88();
  v27 = &v10[*(v8 + 36)];
  *v27 = v25;
  v27[8] = v26;
  sub_100050808();
  v28 = sub_100010250();
  sub_100050D28();

  sub_10001044C(v10);
  v29 = v40;
  (*(v5 + 104))(v7, enum case for CloseButtonPosition.right(_:), v40);
  v30 = v39;
  sub_10000EB24();
  v31 = v42;
  sub_1000104B4(v30, v42);
  v32 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v33 = swift_allocObject();
  sub_100010528(v31, v33 + v32);
  v47 = v8;
  v48 = v28;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  v35 = v41;
  sub_100050C58();

  (*(v5 + 8))(v7, v29);
  (*(v43 + 8))(v12, v35);
  v36 = sub_1000504F8();
  LOBYTE(v10) = sub_100050A88();
  result = sub_1000035C4(&qword_10006A9C0, &qword_100053180);
  v38 = v34 + *(result + 36);
  *v38 = v36;
  *(v38 + 8) = v10;
  return result;
}

uint64_t sub_10000F148@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for DefaultAppNetworkAcceptance(0);
  v92 = *(v3 - 8);
  v91 = *(v92 + 64);
  __chkstk_darwin(v3 - 8);
  v90 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000035C4(&qword_10006A9C8, &qword_100053188) - 8;
  __chkstk_darwin(v95);
  v84 = &v83 - v5;
  v96 = sub_1000035C4(&qword_10006A9D0, &qword_100053190) - 8;
  v6 = __chkstk_darwin(v96);
  v97 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v94 = &v83 - v9;
  __chkstk_darwin(v8);
  v110 = &v83 - v10;
  v11 = sub_100050878();
  v12 = *(v11 - 8);
  v85 = v11;
  v86 = v12;
  __chkstk_darwin(v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000035C4(&qword_10006A9D8, &qword_100053198);
  __chkstk_darwin(v83);
  v16 = &v83 - v15;
  v93 = sub_1000035C4(&qword_10006A9E0, &qword_1000531A0);
  v111 = *(v93 - 8);
  v17 = __chkstk_darwin(v93);
  v108 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v99 = &v83 - v19;
  v20 = sub_100050EA8();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050E98();
  (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
  v109 = sub_100050ED8();

  (*(v21 + 8))(v23, v20);
  v89 = sub_100050B18();
  KeyPath = swift_getKeyPath();
  v88 = sub_100050908();
  v24 = [objc_opt_self() mainBundle];
  v82._countAndFlagsBits = 0xE000000000000000;
  v146._object = 0x800000010005EE60;
  v146._countAndFlagsBits = 0xD000000000000022;
  v147.value._countAndFlagsBits = 0;
  v147.value._object = 0;
  v25.super.isa = v24;
  v148._countAndFlagsBits = 0;
  v148._object = 0xE000000000000000;
  sub_10004FC68(v146, v147, v25, v148, 0, v82);

  sub_1000035C4(&qword_10006A9E8, &unk_100053E60);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000530B0;
  v28 = *a1;
  v27 = a1[1];
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_1000105AC();
  *(v26 + 32) = v28;
  *(v26 + 40) = v27;

  v29 = sub_100051168();
  v31 = v30;

  *&v139 = v29;
  *(&v139 + 1) = v31;
  sub_100010600();
  v32 = sub_100050C48();
  v104 = v33;
  v105 = v32;
  LOBYTE(v29) = v34;
  v107 = v35;
  v103 = swift_getKeyPath();
  v106 = sub_1000508F8();
  *(&v102 + 1) = sub_100050B58();
  *&v102 = swift_getKeyPath();
  v100 = v29 & 1;
  LOBYTE(v139) = v29 & 1;
  v101 = sub_100050AA8();
  sub_100050368();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  sub_100050F58();
  v44 = &v16[*(v83 + 36)];
  v45 = enum case for RoundedCornerStyle.continuous(_:);
  v46 = sub_100050828();
  (*(*(v46 - 8) + 104))(v44, v45, v46);
  sub_100050E48();
  v47 = sub_100050E68();

  v48 = sub_1000035C4(&qword_10006A9F8, &qword_100053210);
  *&v44[*(v48 + 52)] = v47;
  *&v44[*(v48 + 56)] = 256;
  v49 = sub_100051078();
  v51 = v50;
  v52 = &v44[*(sub_1000035C4(&qword_10006AA00, &qword_100053218) + 36)];
  *v52 = v49;
  v52[1] = v51;
  sub_100050868();
  sub_10001065C();
  sub_100010740();
  v53 = v99;
  v54 = v85;
  sub_100050CC8();
  (*(v86 + 8))(v14, v54);
  sub_100004444(v16, &qword_10006A9D8, &qword_100053198);
  v55 = v90;
  sub_1000104B4(a1, v90);
  v56 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v57 = swift_allocObject();
  sub_100010528(v55, v57 + v56);
  v58 = v84;
  sub_100050F58();
  v59 = sub_100050AE8();
  v60 = swift_getKeyPath();
  v61 = (v58 + *(sub_1000035C4(&qword_10006AA30, &qword_100053228) + 36));
  *v61 = v60;
  v61[1] = v59;
  *(v58 + *(v95 + 44)) = sub_100050E38();
  sub_100051078();
  sub_100050538();
  v62 = v94;
  sub_10000360C(v58, v94, &qword_10006A9C8, &qword_100053188);
  v63 = (v62 + *(v96 + 44));
  v64 = v144;
  v63[4] = v143;
  v63[5] = v64;
  v63[6] = v145;
  v65 = v140;
  *v63 = v139;
  v63[1] = v65;
  v66 = v142;
  v63[2] = v141;
  v63[3] = v66;
  v67 = v62;
  v68 = v110;
  sub_10000360C(v67, v110, &qword_10006A9D0, &qword_100053190);
  v69 = *(v111 + 16);
  v70 = v108;
  v71 = v93;
  v69(v108, v53, v93);
  v72 = v97;
  sub_10000A00C(v68, v97, &qword_10006A9D0, &qword_100053190);
  v73 = v98;
  *v98 = 0;
  *(v73 + 8) = 1;
  v74 = KeyPath;
  v73[2] = v109;
  v73[3] = v74;
  v73[4] = v89;
  *(v73 + 20) = 257;
  *(v73 + 11) = v88;
  *&v112 = v105;
  *(&v112 + 1) = v104;
  LOBYTE(v113) = v100;
  *(&v113 + 1) = v137[0];
  DWORD1(v113) = *(v137 + 3);
  *(&v113 + 1) = v107;
  *&v114 = v103;
  BYTE8(v114) = 1;
  *(&v114 + 9) = v135;
  BYTE11(v114) = v136;
  HIDWORD(v114) = v106;
  v115 = v102;
  LOBYTE(v116) = v101;
  DWORD1(v116) = *&v138[3];
  *(&v116 + 1) = *v138;
  *(&v116 + 1) = v37;
  *&v117[0] = v39;
  *(&v117[0] + 1) = v41;
  *&v117[1] = v43;
  BYTE8(v117[1]) = 0;
  v75 = v117[0];
  *(v73 + 7) = v116;
  *(v73 + 8) = v75;
  *(v73 + 137) = *(v117 + 9);
  v76 = v113;
  *(v73 + 3) = v112;
  *(v73 + 4) = v76;
  v77 = v115;
  *(v73 + 5) = v114;
  *(v73 + 6) = v77;
  v78 = sub_1000035C4(&qword_10006AA38, &qword_100053230);
  v69(v73 + v78[20], v70, v71);
  sub_10000A00C(v72, v73 + v78[24], &qword_10006A9D0, &qword_100053190);
  v79 = v73 + v78[28];
  *v79 = 0;
  v79[8] = 1;

  sub_10000A00C(&v112, v118, &qword_10006AA40, &qword_100053238);
  sub_100004444(v110, &qword_10006A9D0, &qword_100053190);
  v80 = *(v111 + 8);
  v80(v99, v71);
  sub_100004444(v72, &qword_10006A9D0, &qword_100053190);
  v80(v108, v71);
  v118[0] = v105;
  v118[1] = v104;
  v119 = v100;
  *v120 = v137[0];
  *&v120[3] = *(v137 + 3);
  v121 = v107;
  v122 = v103;
  v123 = 1;
  v124 = v135;
  v125 = v136;
  v126 = v106;
  v127 = v102;
  v128 = v101;
  *&v129[3] = *&v138[3];
  *v129 = *v138;
  v130 = v37;
  v131 = v39;
  v132 = v41;
  v133 = v43;
  v134 = 0;
  sub_100004444(v118, &qword_10006AA40, &qword_100053238);
}

uint64_t sub_10000FD1C@<X0>(uint64_t a1@<X8>)
{
  sub_100050808();
  v2 = sub_100050C38();
  v4 = v3;
  v6 = v5;
  sub_100050AE8();
  v7 = sub_100050C18();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10000A514(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_10000FE10()
{
  v0 = sub_100050428();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000035C4(&qword_10006AA48, &qword_100053240);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_10004FCB8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051158();
  sub_10004FCA8();

  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    type metadata accessor for DefaultAppNetworkAcceptance(0);
    sub_10004CCE4(v3);
    sub_100050418();
    (*(v1 + 8))(v3, v0);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100010054@<X0>(uint64_t a1@<X8>)
{
  sub_100050808();
  result = sub_100050C38();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000100CC(uint64_t a1)
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for DefaultAppNetworkAcceptance(0) + 28);
  v8 = *v6;
  v7 = *(v6 + 8);
  if (*(v6 + 16) == 1)
  {
  }

  else
  {

    sub_100051368();
    v10 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C(v8, v7, 0);
    v9 = (*(v3 + 8))(v5, v2);
    v8 = v12;
  }

  v8(v9);
}

unint64_t sub_100010250()
{
  result = qword_10006A990;
  if (!qword_10006A990)
  {
    sub_10000372C(&qword_10006A968, &qword_100053140);
    sub_1000102DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A990);
  }

  return result;
}

unint64_t sub_1000102DC()
{
  result = qword_10006A998;
  if (!qword_10006A998)
  {
    sub_10000372C(&qword_10006A988, &unk_100053160);
    sub_100010394();
    sub_1000044E8(&qword_10006A9B8, &qword_10006AD40, &qword_100053760, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A998);
  }

  return result;
}

unint64_t sub_100010394()
{
  result = qword_10006A9A0;
  if (!qword_10006A9A0)
  {
    sub_10000372C(&qword_10006A980, &qword_100053158);
    sub_1000044E8(&qword_10006A9A8, &qword_10006A9B0, &unk_100053170, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A9A0);
  }

  return result;
}

uint64_t sub_10001044C(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A968, &qword_100053140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000104B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppNetworkAcceptance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppNetworkAcceptance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000105AC()
{
  result = qword_10006B270;
  if (!qword_10006B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B270);
  }

  return result;
}

unint64_t sub_100010600()
{
  result = qword_10006A9F0;
  if (!qword_10006A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A9F0);
  }

  return result;
}

unint64_t sub_10001065C()
{
  result = qword_10006AA08;
  if (!qword_10006AA08)
  {
    sub_10000372C(&qword_10006A9D8, &qword_100053198);
    sub_1000044E8(&qword_10006AA10, &qword_10006AA18, &qword_100053220, &protocol conformance descriptor for Button<A>);
    sub_1000044E8(&qword_10006AA20, &qword_10006AA00, &qword_100053218, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AA08);
  }

  return result;
}

unint64_t sub_100010740()
{
  result = qword_10006AA28;
  if (!qword_10006AA28)
  {
    sub_100050878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AA28);
  }

  return result;
}

uint64_t sub_100010798()
{
  v1 = type metadata accessor for DefaultAppNetworkAcceptance(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  sub_1000035C4(&qword_10006A7D8, &unk_100053038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100050428();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_10001051C(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 16));
  sub_100003E6C(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100010908(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DefaultAppNetworkAcceptance(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100010980()
{
  result = qword_10006AA50;
  if (!qword_10006AA50)
  {
    sub_10000372C(&qword_10006A9C0, &qword_100053180);
    sub_10000372C(&qword_10006A970, &qword_100053148);
    sub_10000372C(&qword_10006A968, &qword_100053140);
    sub_100010250();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AA50);
  }

  return result;
}

void sub_100010A90(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = swift_getKeyPath();
  *(a2 + 80) = 0;
  *(a2 + 88) = sub_100050388() & 1;
  *(a2 + 96) = v4;
  *(a2 + 104) = v5 & 1;
  v6 = (a2 + *(type metadata accessor for DefaultAppView(0) + 40));

  sub_1000035C4(&qword_10006ABE8, &qword_1000536A0);
  sub_100050F08();
  *v6 = v8;
  v6[1] = v9;
  type metadata accessor for TranslationProviderHostModel(0);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  v7 = a1;
  sub_100051018();
  sub_1000035C4(&qword_10006ABF0, &qword_1000536A8);
  sub_100050378();
}

uint64_t sub_100010C40()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_100051368();
    v7 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_100010DA4()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
  }

  else
  {

    sub_100051368();
    v7 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_100010F08()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
  }

  else
  {

    sub_100051368();
    v7 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C(v6, v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v6;
}

uint64_t sub_10001106C()
{
  v1 = sub_100050748();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 72);
  if (*(v0 + 80) != 1)
  {

    sub_100051368();
    v6 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_100003E6C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1000111B4()
{
  v0 = sub_1000501A8();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  __chkstk_darwin(v8 - 8);
  v10 = v15 - v9;
  type metadata accessor for DefaultAppView(0);
  sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  sub_100050FF8();
  v11 = v16;
  swift_getKeyPath();
  v16 = v11;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v12 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  sub_10000D838(v11 + v12, v10);

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_100004444(v10, &qword_10006A658, &qword_100052FA0);
    v15[1] = 0x74616C736E617254;
    v15[2] = 0xE900000000000065;
    sub_100010600();
    return sub_100051508();
  }

  else
  {
    sub_10001875C(v10, v7, type metadata accessor for AppExtensionHostView.Configuration);
    sub_100004444(v10, &qword_10006A658, &qword_100052FA0);
    (*(v1 + 16))(v3, v7, v0);
    sub_100017564(v7);
    v14 = sub_100050198();
    (*(v1 + 8))(v3, v0);
    return v14;
  }
}

uint64_t sub_1000114FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for DefaultAppView(0);
  v41 = *(v3 - 8);
  v40 = *(v41 + 64);
  __chkstk_darwin(v3 - 8);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100050078();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035C4(&qword_10006AD20, &qword_100053740);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v35 = sub_1000035C4(&qword_10006AD28, &qword_100053748);
  __chkstk_darwin(v35);
  v11 = &v35 - v10;
  *v9 = sub_100050888();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = sub_1000035C4(&qword_10006AD30, &qword_100053750);
  sub_10001195C(v1, &v9[*(v12 + 44)]);
  v13 = sub_100051078();
  v15 = v14;
  v16 = &v9[*(v7 + 36)];
  v17 = sub_100050E58();
  v18 = v16 + *(sub_1000035C4(&qword_10006AD38, &qword_100053758) + 36);
  sub_100051048();
  v19 = sub_100050A88();
  v18[*(sub_1000035C4(&qword_10006AD40, &qword_100053760) + 36)] = v19;
  *v16 = v17;
  v20 = sub_1000504E8();
  LOBYTE(v18) = sub_100050A88();
  v21 = v16 + *(sub_1000035C4(&qword_10006AD48, &qword_100053768) + 36);
  *v21 = v20;
  v21[8] = v18;
  v22 = (v16 + *(sub_1000035C4(&qword_10006AD50, &qword_100053770) + 36));
  *v22 = v13;
  v22[1] = v15;
  v43 = sub_1000111B4();
  v44 = v23;
  sub_100018678();
  sub_100010600();
  sub_100050D48();

  sub_100004444(v9, &qword_10006AD20, &qword_100053740);
  v24 = sub_1000504F8();
  v25 = sub_100050A88();
  v26 = v36;
  v27 = &v11[*(v35 + 36)];
  *v27 = v24;
  v27[8] = v25;
  v29 = v37;
  v28 = v38;
  (*(v37 + 104))(v26, enum case for CloseButtonPosition.right(_:), v38);
  sub_10001106C();
  v30 = v2;
  v31 = v39;
  sub_10001875C(v30, v39, type metadata accessor for DefaultAppView);
  v32 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v33 = swift_allocObject();
  sub_1000187C8(v31, v33 + v32);
  sub_100018844();
  sub_100050C58();

  (*(v29 + 8))(v26, v28);
  return sub_100004444(v11, &qword_10006AD28, &qword_100053748);
}

uint64_t sub_10001195C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_10004FC58();
  __chkstk_darwin(v3 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DefaultAppView(0);
  v6 = v5 - 8;
  v39 = *(v5 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v46 = sub_1000035C4(&qword_10006AD88, &qword_100053780);
  __chkstk_darwin(v46);
  v13 = &v36 - v12;
  v14 = sub_1000035C4(&qword_10006AD90, &qword_100053788);
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v43 = *(v6 + 44);
  v44 = &v36 - v15;
  sub_100051008();
  swift_getKeyPath();
  sub_100051028();

  (*(v9 + 8))(v11, v8);
  v38 = v8;
  sub_100050FF8();
  v16 = v47;
  v37 = type metadata accessor for DefaultAppView;
  sub_10001875C(a1, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DefaultAppView);
  v17 = *(v39 + 80);
  v18 = (v17 + 16) & ~v17;
  v45 = v7;
  v19 = swift_allocObject();
  sub_1000187C8(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = type metadata accessor for AppExtensionHostView(0);
  *&v13[*(v20 + 20)] = v16;
  v21 = &v13[*(v20 + 24)];
  *v21 = sub_100018A6C;
  v21[1] = v19;
  v22 = a1;
  sub_10001875C(a1, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DefaultAppView);
  v23 = swift_allocObject();
  sub_1000187C8(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v18);
  v24 = &v13[*(v46 + 36)];
  *v24 = sub_100018ADC;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  sub_100050FF8();
  v25 = v47;
  swift_getKeyPath();
  v47 = v25;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  LOBYTE(v23) = v25[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand];

  LOBYTE(v47) = v23;
  sub_10001875C(v22, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v26 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v17;
  v27 = swift_allocObject();
  sub_1000187C8(v26, v27 + v18);
  v28 = sub_100018BE8();
  sub_100050DD8();

  sub_100004444(v13, &qword_10006AD88, &qword_100053780);
  sub_100050FF8();
  v29 = v47;
  swift_getKeyPath();
  v47 = v29;
  sub_10004FDD8();

  v30 = *&v29[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation];
  v31 = v30;

  if (!v30)
  {
    sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
    sub_10004FC48();
    v31 = sub_100051408();
  }

  v51 = v31;
  sub_10001875C(v22, v26, type metadata accessor for DefaultAppView);
  v32 = swift_allocObject();
  sub_1000187C8(v26, v32 + v18);
  sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
  v47 = v46;
  v48 = &type metadata for Bool;
  v49 = v28;
  v50 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_100018174(&qword_10006ADA8, &qword_10006ABD0, NSAttributedString_ptr, &protocol conformance descriptor for NSObject);
  v33 = v41;
  v34 = v44;
  sub_100050DD8();

  return (*(v40 + 8))(v34, v33);
}

uint64_t sub_100012048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  return sub_10000D838(v3 + v4, a2);
}

uint64_t sub_100012110(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_10000D838(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDC8();

  return sub_100004444(v6, &qword_10006A658, &qword_100052FA0);
}

void sub_100012258(char a1)
{
  v2 = a1 & 1;
  type metadata accessor for DefaultAppView(0);
  sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  sub_100050FF8();
  if (v4[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote] == v2)
  {
    v4[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote] = v2;

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDC8();

  if (a1)
  {
LABEL_5:
    sub_100050FF8();
    sub_100014BE8();
  }
}

void sub_1000123E8()
{
  type metadata accessor for DefaultAppView(0);
  sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  sub_100050FF8();
  sub_1000157B8();
}

void sub_100012448(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v3 = sub_100050268();
  sub_100008BA0(v3, qword_10006E010);
  v4 = sub_100050248();
  v5 = sub_100051348();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "in onChange of shouldExpand: %{BOOL}d", v6, 8u);
  }

  if (v2)
  {
    v7 = sub_100010DA4();
    v7();
  }
}

uint64_t sub_10001257C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v3 = sub_100050268();
  sub_100008BA0(v3, qword_10006E010);
  v4 = v2;
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = [v4 string];
    sub_100051158();

    v9 = sub_1000511D8();

    *(v7 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "in onChange of translation: %ld", v7, 0xCu);
  }

  else
  {

    v5 = v4;
  }

  v10 = [v4 string];
  sub_100051158();

  v11 = sub_1000511D8();

  if (v11 >= 1)
  {
    v12 = sub_100010F08();
    v12(v4);
  }

  v13 = sub_100010C40();
  v13();
}

uint64_t sub_100012770(void (**a1)(uint64_t))
{
  v2 = sub_100050748();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  if (*(a1 + 16) == 1)
  {
  }

  else
  {

    sub_100051368();
    v9 = sub_100050A58();
    sub_100050208();

    sub_100050738();
    swift_getAtKeyPath();
    sub_10001051C(v7, v6, 0);
    v8 = (*(v3 + 8))(v5, v2);
    v7 = v11;
  }

  v7(v8);
}

void sub_1000128F8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp);
  sub_100009FC4(0, &qword_10006ABD8, LSApplicationRecord_ptr);
  v6 = v5;
  v7 = sub_1000514B8();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();
  }
}

uint64_t sub_100012A6C()
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();
}

uint64_t sub_100012B18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  *a2 = *(v3 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel);
}

uint64_t sub_100012BCC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();
  }
}

id sub_100012D1C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_100012DCC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_100012E90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString);
  sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
  v6 = v5;
  v7 = sub_1000514B8();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();
  }
}

uint64_t sub_100013004@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v3 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  return sub_10000D838(v5 + v3, a1);
}

uint64_t sub_1000130CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_10000D838(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  sub_1000176C0(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_1000131E0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  return *(v2 + *a2);
}

uint64_t sub_100013280@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_10001335C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();
  }

  return result;
}

void sub_100013474(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000514B8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_10001360C()
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  swift_beginAccess();
}

uint64_t sub_1000136CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100013794(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions;
  swift_beginAccess();

  v5 = sub_1000179D8(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();
  }
}

uint64_t sub_1000138E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__subscriptions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_100013968(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009FC4(0, &qword_10006ABB8, NEPolicySession_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000514B8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100013B00()
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  return *(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID);
}

uint64_t sub_100013BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v5 = *(v3 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100013C6C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID;
  if ((*(v2 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDC8();
}

void sub_100013DAC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection;
  v5 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009FC4(0, &qword_10006ABA8, NSXPCConnection_ptr);
  v6 = v5;
  v7 = a1;
  v8 = sub_1000514B8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_100013F44()
{
  v1 = v0;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100050268();
  sub_100008BA0(v2, qword_10006E010);
  v3 = sub_100050248();
  v4 = sub_100051348();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Clearing policy session", v5, 2u);
  }

  swift_getKeyPath();
  v9 = v1;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v6 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession;
  [*&v1[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession] removeAllPolicies];
  swift_getKeyPath();
  v9 = v1;
  sub_10004FDD8();

  [*&v1[v6] apply];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TranslationProviderHostModel(0);
  return objc_msgSendSuper2(&v8, "dealloc");
}

uint64_t sub_100014260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  sub_1000035C4(&qword_10006ABF8, &qword_1000536B8);
  v4[14] = swift_task_alloc();
  v5 = sub_1000035C4(&qword_10006AC00, &qword_1000536C0);
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_1000035C4(&qword_10006AC08, &qword_1000536C8);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  sub_1000512D8();
  v4[21] = sub_1000512C8();
  v8 = sub_1000512B8();

  return _swift_task_switch(sub_100014400, v8, v7);
}

uint64_t sub_100014400()
{
  v10 = v0[18];
  v11 = v0[19];
  v1 = v0[16];
  v12 = v0[17];
  v13 = v0[20];
  v2 = v0[14];
  v9 = v0[15];
  v3 = v0[13];

  swift_getKeyPath();
  v0[8] = v3;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  swift_beginAccess();

  sub_1000035C4(&qword_10006AC10, &qword_1000536D0);
  sub_1000502E8();
  swift_endAccess();

  v4 = [objc_opt_self() mainRunLoop];
  v0[9] = v4;
  v5 = sub_1000514C8();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_100009FC4(0, &qword_10006AC18, NSRunLoop_ptr);
  sub_1000044E8(&qword_10006AC20, &qword_10006AC00, &qword_1000536C0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100018174(&qword_10006AC28, &qword_10006AC18, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
  sub_100050348();
  sub_100004444(v2, &qword_10006ABF8, &qword_1000536B8);

  (*(v1 + 8))(v12, v9);
  *(swift_allocObject() + 16) = v3;
  sub_1000044E8(&qword_10006AC30, &qword_10006AC08, &qword_1000536C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v6 = v3;
  sub_100050358();

  (*(v11 + 8))(v13, v10);
  swift_getKeyPath();
  v0[10] = v6;
  sub_10004FDD8();

  v0[11] = v6;
  swift_getKeyPath();
  sub_10004FDF8();

  swift_beginAccess();
  sub_100050278();
  swift_endAccess();

  v0[12] = v6;
  swift_getKeyPath();
  sub_10004FDE8();

  v7 = v0[1];

  return v7();
}

void sub_100014854(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation;
  v5 = *(a1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation);
  if (v5)
  {
    sub_100009FC4(0, &qword_10006ABD0, NSAttributedString_ptr);
    v6 = a2;
    v7 = v5;
    v8 = sub_1000514B8();

    if (v8)
    {
      v9 = *(a1 + v4);
      *(a1 + v4) = a2;

      return;
    }
  }

  else
  {
    v10 = a2;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDC8();
}

void sub_100014A88()
{
  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand) == 1)
  {
    *(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__shouldExpand) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();
  }
}

void sub_100014BE8()
{
  v1 = v0;
  swift_getKeyPath();
  v37 = v0;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  if (*(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__isConnectedToRemote) != 1)
  {
    if (qword_100069EF0 != -1)
    {
      swift_once();
    }

    v29 = sub_100050268();
    sub_100008BA0(v29, qword_10006E010);
    v30 = sub_100050248();
    v31 = sub_100051358();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_26;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Asked to translate without a remote connection";
    goto LABEL_25;
  }

  swift_getKeyPath();
  v37 = v0;
  sub_10004FDD8();

  v2 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString;
  v3 = [*(v0 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString) string];
  v4 = sub_100051158();
  v6 = v5;

  v7 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (!v7)
  {
    if (qword_100069EF0 != -1)
    {
      swift_once();
    }

    v34 = sub_100050268();
    sub_100008BA0(v34, qword_10006E010);
    v30 = sub_100050248();
    v31 = sub_100051358();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_26;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Asked to translate an empty string";
    goto LABEL_25;
  }

  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v8 = sub_100050268();
  sub_100008BA0(v8, qword_10006E010);
  v9 = sub_100050248();
  v10 = sub_100051348();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "translating", v11, 2u);
  }

  swift_getKeyPath();
  sub_10004FDD8();

  v12 = *(&v1->isa + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection);
  if (!v12 || (v13 = [v12 remoteObjectProxy], sub_100051518(), swift_unknownObjectRelease(), sub_1000035C4(&qword_10006ABB0, &qword_100053450), (swift_dynamicCast() & 1) == 0))
  {
    v30 = sub_100050248();
    v31 = sub_100051358();
    if (!os_log_type_enabled(v30, v31))
    {
LABEL_26:

      return;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "No xpc proxy connection";
LABEL_25:
    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

    goto LABEL_26;
  }

  v36 = v2;
  swift_unknownObjectRetain();
  v14 = sub_100050248();
  v15 = sub_100051348();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    swift_unknownObjectRetain();
    v18 = sub_100051178();
    v20 = sub_100008C04(v18, v19, &v37);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Connected to remote %s", v16, 0xCu);
    sub_100009F78(v17);
  }

  swift_getKeyPath();
  v37 = v1;
  sub_10004FDD8();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000502F8();

  v21 = v37;
  v22 = v1;
  v23 = sub_100050248();
  v24 = sub_100051348();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    swift_getKeyPath();
    v35 = v24;
    v37 = v22;
    sub_10004FDD8();

    v26 = v36;
    v27 = [*(&v1->isa + v36) string];
    sub_100051158();

    v21 = v21;
    v28 = sub_1000511D8();

    *(v25 + 4) = v28;

    *(v25 + 12) = 1024;
    *(v25 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v23, v35, "Will translate %ld characters, replacementAllowed: %{BOOL}d", v25, 0x12u);
  }

  else
  {

    v23 = v22;
    v26 = v36;
  }

  swift_getKeyPath();
  v37 = v22;
  sub_10004FDD8();

  [v1 translateWithText:*(&v1->isa + v26) replacementAllowed:v21];
  swift_unknownObjectRelease();
}

void *sub_100015328(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

uint64_t sub_1000153D0(void *a1)
{
  v2 = v1;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E010);
  v5 = sub_100050248();
  v6 = sub_100051348();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "should Accept XPC connection", v7, 2u);
  }

  if ([a1 delegate])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    [a1 setDelegate:v2];
  }

  [a1 setExportedObject:v2];
  v8 = objc_opt_self();
  v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationUIProvider26TranslationXPCHostProtocol_];
  [a1 setExportedInterface:v9];

  v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP21TranslationUIProvider28TranslationXPCRemoteProtocol_];
  [a1 setRemoteObjectInterface:v10];
  v14[4] = sub_100015654;
  v14[5] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10004E228;
  v14[3] = &unk_100066810;
  v11 = _Block_copy(v14);
  [a1 setInterruptionHandler:v11];
  _Block_release(v11);
  [a1 resume];
  v12 = a1;
  sub_100013DAC(a1);

  sub_100015674(&static os_log_type_t.debug.getter, "did Accept XPC connection");
  return 1;
}

void sub_100015674(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v4 = sub_100050268();
  sub_100008BA0(v4, qword_10006E010);
  oslog = sub_100050248();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000157B8()
{
  v0 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  v1 = __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - v5;
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v9 = sub_100050268();
  sub_100008BA0(v9, qword_10006E010);
  v10 = sub_100050248();
  v11 = sub_100051348();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Connecting to service...", v12, 2u);
  }

  sub_100015AA4(v8);
  sub_10000D838(v8, v6);
  v13 = sub_100050248();
  v14 = sub_100051348();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    sub_10000D838(v6, v3);
    v17 = sub_100051178();
    v19 = v18;
    sub_100004444(v6, &qword_10006A658, &qword_100052FA0);
    v20 = sub_100008C04(v17, v19, &v23);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Found extension configuration: %s", v15, 0xCu);
    sub_100009F78(v16);
  }

  else
  {

    sub_100004444(v6, &qword_10006A658, &qword_100052FA0);
  }

  sub_100016788();
  return sub_100004444(v8, &qword_10006A658, &qword_100052FA0);
}

uint64_t sub_100015AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v83 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  __chkstk_darwin(v83);
  v4 = &v82 - v3;
  v87 = sub_1000501C8();
  v86 = *(v87 - 8);
  v5 = __chkstk_darwin(v87);
  v84 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v85 = &v82 - v7;
  sub_1000501F8();
  v8 = objc_allocWithZone(_EXQuery);
  v9 = sub_100051128();

  isa = [v8 initWithExtensionPointIdentifier:v9];

  if (qword_100069EF0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v11 = sub_100050268();
  v12 = sub_100008BA0(v11, qword_10006E010);
  v13 = isa;
  v98 = v12;
  v14 = sub_100050248();
  v15 = sub_100051348();

  v16 = os_log_type_enabled(v14, v15);
  v94 = v2;
  v89 = v4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v101[0] = v18;
    *v17 = 136315138;
    v19 = v13;
    v20 = [v19 description];
    v21 = sub_100051158();
    v23 = v22;

    v24 = sub_100008C04(v21, v23, v101);
    v2 = v94;

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "Begin extension search with query: %s", v17, 0xCu);
    sub_100009F78(v18);
  }

  v25 = objc_opt_self();
  sub_1000035C4(&qword_10006A460, &qword_100052B70);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100053270;
  *(v26 + 32) = v13;
  sub_100009FC4(0, &qword_10006AB98, _EXQuery_ptr);
  v88 = v13;
  isa = sub_100051238().super.isa;

  v27 = [v25 executeQueries:isa];

  sub_100009FC4(0, &qword_10006ABA0, _EXExtensionIdentity_ptr);
  v4 = sub_100051248();

  v28 = sub_100050248();
  v29 = sub_100051338();

  v30 = os_log_type_enabled(v28, v29);
  v95 = v4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v101[0] = v32;
    *v31 = 136315138;
    v33 = sub_100051258();
    v35 = sub_100008C04(v33, v34, v101);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Got extension search results %s", v31, 0xCu);
    sub_100009F78(v32);

    v4 = v95;
  }

  if (v4 >> 62)
  {
    v37 = sub_100051608();
  }

  else
  {
    v37 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = v37;
  if (!v37)
  {
LABEL_22:

    v55 = sub_100050248();
    v56 = sub_100051358();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "No matching extensions found", v57, 2u);
    }

    v58 = type metadata accessor for AppExtensionHostView.Configuration(0);
    v59 = *(*(v58 - 8) + 56);
    v60 = v89;
    v59(v89, 1, 1, v58);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v82 - 2) = v2;
    *(&v82 - 1) = v60;
    v101[0] = v2;
    sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
    sub_10004FDC8();

    sub_100004444(v60, &qword_10006A658, &qword_100052FA0);
    return (v59)(v90, 1, 1, v58);
  }

  v38 = 0;
  v39 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel___observationRegistrar;
  v96 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp;
  v97 = v4 & 0xC000000000000001;
  v91 = v4 & 0xFFFFFFFFFFFFFF8;
  *&v36 = 136315138;
  v92 = v36;
  v40 = v93;
  while (1)
  {
    if (v97)
    {
      v41 = sub_1000515D8();
      v42 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v38 >= *(v91 + 16))
      {
        goto LABEL_29;
      }

      v41 = *(v4 + 8 * v38 + 32);
      v42 = (v38 + 1);
      if (__OFADD__(v38, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v99 = v42;
    v43 = v41;
    v44 = sub_100050248();
    v45 = sub_100051338();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v101[0] = v47;
      *v46 = v92;
      v48 = v39;
      v49 = [v43 bundleIdentifier];
      v50 = sub_100051158();
      isa = v51;

      v39 = v48;
      v4 = v95;
      v52 = sub_100008C04(v50, isa, v101);

      *(v46 + 4) = v52;
      v40 = v93;
      _os_log_impl(&_mh_execute_header, v44, v45, "Examining %s", v46, 0xCu);
      sub_100009F78(v47);
      v2 = v94;
    }

    v53 = [v43 containingBundleRecord];
    if (v53)
    {
      break;
    }

LABEL_10:

    ++v38;
    if (v99 == v40)
    {
      goto LABEL_22;
    }
  }

  v54 = v53;
  isa = swift_getKeyPath();
  v101[0] = v2;
  sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  if (![v54 isEqual:*&v2[v96]])
  {

    goto LABEL_10;
  }

  v63 = v43;
  v64 = v85;
  v99 = v63;
  sub_1000501D8();
  (*(v86 + 16))(v84, v64, v87);
  v65 = v89;
  sub_1000501B8();
  v66 = sub_1000501E8();
  v68 = v67;
  v69 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v70 = (v65 + *(v69 + 20));
  *v70 = v66;
  v70[1] = v68;
  (*(*(v69 - 8) + 56))(v65, 0, 1, v69);
  v71 = swift_getKeyPath();
  __chkstk_darwin(v71);
  *(&v82 - 2) = v2;
  *(&v82 - 1) = v65;
  v101[0] = v2;
  sub_10004FDC8();

  sub_100004444(v65, &qword_10006A658, &qword_100052FA0);
  v72 = v2;
  v73 = sub_100050248();
  v74 = sub_100051348();

  v75 = &off_10006A000;
  if (os_log_type_enabled(v73, v74))
  {
    v76 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v101[0] = v98;
    *v76 = v92;
    swift_getKeyPath();
    v100 = v72;
    sub_10004FDD8();

    v77 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
    swift_beginAccess();
    sub_10000D838(&v72[v77], v65);
    v78 = sub_100051178();
    v80 = sub_100008C04(v78, v79, v101);

    *(v76 + 4) = v80;
    v75 = &off_10006A000;
    _os_log_impl(&_mh_execute_header, v73, v74, "Using configuration: %s", v76, 0xCu);
    sub_100009F78(v98);
  }

  swift_getKeyPath();
  v101[0] = v72;
  sub_10004FDD8();

  (*(v86 + 8))(v85, v87);
  v81 = v75[335];
  swift_beginAccess();
  return sub_10000D838(v81 + v72, v90);
}

Swift::Int sub_1000166CC()
{
  sub_1000516C8();
  sub_1000516D8(0);
  return sub_1000516F8();
}

Swift::Int sub_100016738(uint64_t a1)
{
  sub_1000516C8();
  sub_1000516D8(0);
  return sub_1000516F8();
}

id sub_100016788()
{
  v1 = sub_100050168();
  __chkstk_darwin(v1 - 8);
  v81 = v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100050188();
  v4 = *(v3 - 8);
  v79 = v3;
  v80 = v4;
  __chkstk_darwin(v3);
  v82 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AppExtensionHostView.Configuration(0);
  v6 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  __chkstk_darwin(v8 - 8);
  v10 = v78 - v9;
  v11 = sub_1000501A8();
  v12 = *(v11 - 8);
  v84 = v11;
  v85 = v12;
  v13 = __chkstk_darwin(v11);
  v15 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v78 - v17;
  __chkstk_darwin(v16);
  v20 = v78 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel___observationRegistrar;
  *atoken.val = v0;
  v22 = sub_100017E1C(&qword_10006AB70, type metadata accessor for TranslationProviderHostModel, &unk_1000532F8);
  sub_10004FDD8();

  v23 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__extensionConfiguration;
  swift_beginAccess();
  sub_10000D838(v0 + v23, v10);
  if ((*(v6 + 48))(v10, 1, v86))
  {
    return sub_100004444(v10, &qword_10006A658, &qword_100052FA0);
  }

  v25 = v15;
  v78[0] = v22;
  v78[1] = v21;
  v86 = v0;
  v26 = v83;
  sub_10001875C(v10, v83, type metadata accessor for AppExtensionHostView.Configuration);
  sub_100004444(v10, &qword_10006A658, &qword_100052FA0);
  v28 = v84;
  v27 = v85;
  v29 = *(v85 + 16);
  v29(v18, v26, v84);
  sub_100017564(v26);
  (*(v27 + 32))(v20, v18, v28);
  if (byte_10006E028)
  {
    return (*(v27 + 8))(v20, v28);
  }

  swift_getKeyPath();
  v30 = v86;
  *atoken.val = v86;
  sub_10004FDD8();

  v31 = OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession;
  if (*(v30 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession))
  {
    if (qword_100069EF0 != -1)
    {
      swift_once();
    }

    v32 = sub_100050268();
    sub_100008BA0(v32, qword_10006E010);
    v33 = sub_100050248();
    v34 = sub_100051358();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "call to restrict network accdess when a policy session already exists.", v35, 2u);
    }

    return (*(v27 + 8))(v20, v28);
  }

  v29(v25, v20, v28);
  sub_100050158();
  sub_100050178();
  *atoken.val = sub_100050148();
  atoken.val[2] = v42;
  atoken.val[3] = v43;
  atoken.val[4] = v44;
  atoken.val[5] = v45;
  atoken.val[6] = v46;
  atoken.val[7] = v47;
  v48 = audit_token_to_pid(&atoken);
  v49 = v48;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v50 = sub_100050268();
  sub_100008BA0(v50, qword_10006E010);
  v51 = sub_100050248();
  v52 = sub_100051338();
  v53 = os_log_type_enabled(v51, v52);
  v55 = v79;
  v54 = v80;
  if (v53)
  {
    v56 = swift_slowAlloc();
    *v56 = 67109120;
    *(v56 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v51, v52, "Restricting network access for process %d", v56, 8u);
  }

  v57 = [objc_allocWithZone(NEPolicySession) init];
  v58 = v86;
  sub_100013968(v57);
  swift_getKeyPath();
  *atoken.val = v58;
  sub_10004FDD8();

  v59 = *(v58 + v31);
  if (v59)
  {
    v60 = v59;
    [v60 setPriority:300];
    sub_1000035C4(&qword_10006A460, &qword_100052B70);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100053280;
    v62 = objc_opt_self();
    result = [v62 allInterfaces];
    if (result)
    {
      *(v61 + 32) = result;
      result = [v62 effectivePID:v49];
      if (result)
      {
        *(v61 + 40) = result;
        v63 = [objc_opt_self() drop];
        v64 = objc_allocWithZone(NEPolicy);
        sub_100009FC4(0, &qword_10006AB90, NEPolicyCondition_ptr);
        isa = sub_100051238().super.isa;

        v66 = [v64 initWithOrder:0 result:v63 conditions:isa];

        v67 = [v60 addPolicy:v66];
        v68 = v86;
        sub_100013C6C(v67, 0);
        if ([v60 apply])
        {
          v69 = v68;
          v70 = sub_100050248();
          v71 = sub_100051338();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 134217984;
            swift_getKeyPath();
            *atoken.val = v69;
            sub_10004FDD8();

            if (v69[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID + 8])
            {
              v73 = 0;
            }

            else
            {
              v73 = *&v69[OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID];
            }

            *(v72 + 4) = v73;

            _os_log_impl(&_mh_execute_header, v70, v71, "Network restriction policy applied with active policy ID %ld (non-zero is success)", v72, 0xCu);
          }

          else
          {
          }

          (*(v80 + 8))(v82, v79);
        }

        else
        {
          v75 = sub_100050248();
          v76 = sub_100051358();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&_mh_execute_header, v75, v76, "Network restriction policy was not applied.", v77, 2u);
          }

          (*(v80 + 8))(v82, v55);
        }

        return (*(v85 + 8))(v20, v84);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_100017618();
  swift_allocError();
  swift_willThrow();
  (*(v54 + 8))(v82, v55);
  v74 = v84;
  if (qword_100069EF0 != -1)
  {
    swift_once();
  }

  v36 = sub_100050268();
  sub_100008BA0(v36, qword_10006E010);
  swift_errorRetain();
  v37 = sub_100050248();
  v38 = sub_100051358();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    swift_errorRetain();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "Unable to obtain an AppExtensionProcess or Policy Session: %@", v39, 0xCu);
    sub_100004444(v40, &qword_10006AB78, &unk_100053370);
  }

  else
  {
  }

  return (*(v85 + 8))(v20, v74);
}

void sub_100017318(uint64_t a1)
{
  sub_100018594(319, &unk_10006AB60, type metadata accessor for AppExtensionHostView.Configuration, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10004FE18();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100017464@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000502F8();

  *a2 = v4;
  return result;
}

uint64_t sub_1000174E4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100050308();
}

uint64_t sub_100017564(uint64_t a1)
{
  v2 = type metadata accessor for AppExtensionHostView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000175E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100013968(v1);
}

unint64_t sub_100017618()
{
  result = qword_10006AB80;
  if (!qword_10006AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AB80);
  }

  return result;
}

uint64_t sub_1000176C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000035C4(&qword_10006A658, &qword_100052FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000177C4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100013DAC(v1);
}

void sub_1000177F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__xpcConnection) = v2;
  v4 = v2;
}

void sub_100017978()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__activePolicyID;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

void sub_100017998()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__policySession) = v2;
  v4 = v2;
}

uint64_t sub_1000179D8(uint64_t a1, uint64_t a2)
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
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return __CocoaSet.isEqual(to:)(v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_100050298();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_10006ABC0;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_100017E1C(&qword_10006ABC0, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

          v19 = sub_1000510F8();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_100017E1C(&qword_10006ABC8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
          while ((sub_100051118() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_10006ABC0;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_100017D18(v8, v7);
}

uint64_t sub_100017D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_100051538();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_100051558();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100017E8C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100013474(v1);
}

void sub_100017EBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__translation) = v2;
  v4 = v2;
}

void sub_100017F14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__sourceString) = v2;
  v4 = v2;
}

uint64_t sub_100017F54()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__serviceModel) = *(v0 + 24);
}

void sub_100017F98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp);
  *(v1 + OBJC_IVAR____TtC20TranslationUIService28TranslationProviderHostModel__defaultApp) = v2;
  v4 = v2;
}

uint64_t getEnumTagSinglePayload for TranslationProviderHostModel.NetworkPolicyError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TranslationProviderHostModel.NetworkPolicyError(_WORD *result, int a2, int a3)
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

unint64_t sub_1000180E0()
{
  result = qword_10006ABE0;
  if (!qword_10006ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006ABE0);
  }

  return result;
}

uint64_t sub_100018174(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009FC4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000181B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100018308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_1000183D0(uint64_t a1)
{
  sub_10000EABC(319, &unk_10006A928, &type metadata for DismissAction);
  if (v1 <= 0x3F)
  {
    sub_10000EABC(319, &qword_10006ACB0, &type metadata for ExpandSheetAction);
    if (v2 <= 0x3F)
    {
      sub_10000EABC(319, &unk_10006ACB8, &type metadata for ReplaceAction);
      if (v3 <= 0x3F)
      {
        sub_10000EABC(319, &unk_10006A040, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10001853C();
          if (v5 <= 0x3F)
          {
            sub_100018594(319, &qword_10006ACD0, type metadata accessor for TranslationProviderHostModel, &type metadata accessor for Bindable);
            if (v6 <= 0x3F)
            {
              sub_1000185F8(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10001853C()
{
  if (!qword_10006ACC8)
  {
    v0 = sub_100050398();
    if (!v1)
    {
      atomic_store(v0, &qword_10006ACC8);
    }
  }
}

void sub_100018594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000185F8(uint64_t a1)
{
  if (!qword_10006ACD8)
  {
    sub_10000372C(&qword_10006ABE8, &qword_1000536A0);
    v1 = sub_100050F48();
    if (!v2)
    {
      atomic_store(v1, &qword_10006ACD8);
    }
  }
}

unint64_t sub_100018678()
{
  result = qword_10006AD58;
  if (!qword_10006AD58)
  {
    sub_10000372C(&qword_10006AD20, &qword_100053740);
    sub_1000044E8(&qword_10006AD60, &qword_10006AD68, &qword_100053778, &protocol conformance descriptor for VStack<A>);
    sub_1000044E8(&unk_10006AD70, &qword_10006AD50, &qword_100053770, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AD58);
  }

  return result;
}

uint64_t sub_10001875C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000187C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultAppView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100018844()
{
  result = qword_10006AD80;
  if (!qword_10006AD80)
  {
    sub_10000372C(&qword_10006AD28, &qword_100053748);
    sub_10000372C(&qword_10006AD20, &qword_100053740);
    sub_100018678();
    sub_100010600();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AD80);
  }

  return result;
}

uint64_t sub_100018928()
{
  v1 = (type metadata accessor for DefaultAppView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  sub_10001051C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));
  sub_10001051C(*(v5 + 24), *(v5 + 32), *(v5 + 40));
  sub_10001051C(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  sub_100003E6C(*(v5 + 72), *(v5 + 80));

  v6 = v1[11];
  v7 = sub_1000035C4(&qword_10006AC38, &qword_1000536D8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100018A6C(char a1)
{
  type metadata accessor for DefaultAppView(0);

  sub_100012258(a1);
}

uint64_t sub_100018AF4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DefaultAppView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_100018B68(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for DefaultAppView(0);

  sub_100012448(a1, a2);
}

unint64_t sub_100018BE8()
{
  result = qword_10006AD98;
  if (!qword_10006AD98)
  {
    sub_10000372C(&qword_10006AD88, &qword_100053780);
    sub_100017E1C(&qword_10006ADA0, type metadata accessor for AppExtensionHostView, &unk_100052D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006AD98);
  }

  return result;
}

uint64_t sub_100018CA4(uint64_t a1, void **a2)
{
  type metadata accessor for DefaultAppView(0);

  return sub_10001257C(a1, a2);
}

uint64_t sub_100018D24()
{
  sub_10000372C(&qword_10006AD28, &qword_100053748);
  sub_100018844();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100018E1C()
{
  sub_100009CC4();
  sub_100050758();
  return v1;
}

void (*EnvironmentValues._dismiss.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_100009CC4();
  sub_100050758();
  *v4 = v4[1];
  return sub_100018F2C;
}

void sub_100018F2C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_100050768();
  }

  else
  {
    sub_100050768();
  }

  free(v2);
}

uint64_t sub_100018FC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100019008(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10001907C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004FDB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001914C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004FDB8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100019224(uint64_t a1)
{
  result = sub_10004FDB8();
  if (v2 <= 0x3F)
  {
    result = sub_10000EA14();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000192C4()
{
  v0 = sub_10004FE28();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TranslationTaskHint.system(_:));
  sub_10004FF88();
  swift_allocObject();
  return sub_10004FF68();
}

uint64_t sub_10001939C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v83 = a2;
  v84 = a4;
  v76 = a3;
  v87 = a1;
  v6 = type metadata accessor for DownloadSelectionView_iOS(0);
  v79 = *(v6 - 8);
  v7 = v6 - 8;
  v80 = *(v79 + 64);
  v81 = v6 - 8;
  __chkstk_darwin(v6 - 8);
  v78 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004FDB8();
  v82 = *(v9 - 8);
  v10 = v82;
  v77 = *(v82 + 64);
  v11 = __chkstk_darwin(v9);
  v75 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = v71 - v13;
  v14 = sub_1000035C4(&qword_10006A7B8, &qword_100054AB0);
  __chkstk_darwin(v14 - 8);
  v86 = v71 - v15;
  v16 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v17 = __chkstk_darwin(v16);
  v19 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v71 - v20;
  v73 = a5 + *(v7 + 32);
  v22 = *(v10 + 56);
  v22(v71 - v20, 1, 1, v9);
  v72 = v22;
  v71[1] = v10 + 56;
  sub_10000A00C(v21, v19, &qword_10006A2A0, &qword_1000528E0);
  sub_100050F08();
  sub_100004444(v21, &qword_10006A2A0, &qword_1000528E0);
  v23 = v81;
  v74 = a5 + *(v81 + 36);
  v22(v21, 1, 1, v9);
  sub_10000A00C(v21, v19, &qword_10006A2A0, &qword_1000528E0);
  sub_100050F08();
  sub_100004444(v21, &qword_10006A2A0, &qword_1000528E0);
  v24 = v23;
  v25 = v23[10];
  v88 = 0;
  sub_1000035C4(&qword_10006AE48, &qword_100053898);
  sub_100050F08();
  *(a5 + v25) = v90;
  v26 = a5 + v23[11];
  v27 = [objc_opt_self() mainBundle];
  v70._countAndFlagsBits = 0xE000000000000000;
  v92._object = 0x800000010005F090;
  v92._countAndFlagsBits = 0xD000000000000012;
  v93.value._countAndFlagsBits = 0;
  v93.value._object = 0;
  v28.super.isa = v27;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v29 = sub_10004FC68(v92, v93, v28, v94, 0, v70);
  v31 = v30;

  v88 = v29;
  v89 = v31;
  sub_100050F08();
  v32 = v91;
  *v26 = v90;
  *(v26 + 16) = v32;
  v33 = a5 + v24[12];
  LOBYTE(v88) = 0;
  sub_100050F08();
  v34 = *(&v90 + 1);
  *v33 = v90;
  *(v33 + 8) = v34;
  v35 = a5 + v24[13];
  LOBYTE(v88) = 0;
  sub_100050F08();
  v36 = *(&v90 + 1);
  *v35 = v90;
  *(v35 + 8) = v36;
  v37 = a5 + v24[14];
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_100050F08();
  v38 = v91;
  *v37 = v90;
  *(v37 + 16) = v38;
  v39 = v24[15];
  v88 = 0;
  sub_100050F08();
  *(a5 + v39) = v90;
  v40 = (a5 + v24[16]);
  type metadata accessor for TranslationContext(0);
  sub_10001E44C(&qword_10006A348, type metadata accessor for TranslationContext, &unk_100054714);
  *v40 = sub_100050558();
  v40[1] = v41;
  v42 = a5 + v24[17];
  *v42 = sub_1000192C4;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  v43 = *(v82 + 16);
  v44 = a5;
  v45 = a5;
  v71[0] = a5;
  v46 = v87;
  v47 = v9;
  v43(v44, v87, v9);
  v48 = v83;
  v43(v45 + v24[7], v83, v47);
  v43(v21, v46, v47);
  v49 = v72;
  v72(v21, 0, 1, v47);
  v50 = v73;
  sub_100004444(v73, &qword_10006AE50, &qword_1000538A0);
  v51 = sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  *(v50 + *(v51 + 28)) = 0;
  sub_10000360C(v21, v50, &qword_10006A2A0, &qword_1000528E0);
  v52 = v48;
  v43(v21, v48, v47);
  v49(v21, 0, 1, v47);
  v53 = v74;
  sub_100004444(v74, &qword_10006AE50, &qword_1000538A0);
  *(v53 + *(v51 + 28)) = 0;
  sub_10000360C(v21, v53, &qword_10006A2A0, &qword_1000528E0);
  v54 = v71[0];
  v55 = (v71[0] + *(v81 + 72));
  v56 = v84;
  *v55 = v76;
  v55[1] = v56;
  v57 = sub_1000512F8();
  (*(*(v57 - 8) + 56))(v86, 1, 1, v57);
  v43(v85, v87, v47);
  v58 = v75;
  v43(v75, v52, v47);
  v59 = v78;
  sub_10001DF1C(v54, v78);
  sub_1000512D8();

  v60 = sub_1000512C8();
  v61 = v82;
  v62 = *(v82 + 80);
  v63 = (v62 + 32) & ~v62;
  v64 = (v77 + v62 + v63) & ~v62;
  v65 = (v77 + *(v79 + 80) + v64) & ~*(v79 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v60;
  *(v66 + 24) = &protocol witness table for MainActor;
  v67 = *(v61 + 32);
  v67(v66 + v63, v85, v47);
  v67(v66 + v64, v58, v47);
  sub_10001E280(v59, v66 + v65);
  sub_10002EA44(0, 0, v86, &unk_1000538B0, v66);

  v68 = *(v61 + 8);
  v68(v83, v47);
  return (v68)(v87, v47);
}

uint64_t sub_100019BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_10004FF08();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = sub_1000035C4(&qword_10006AE58, &qword_1000538B8);
  v6[14] = swift_task_alloc();
  sub_1000035C4(&qword_10006AE60, &qword_1000538C0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = sub_10004FDB8();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v9 = sub_10004FE78();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  sub_1000512D8();
  v6[25] = sub_1000512C8();
  v11 = sub_1000512B8();
  v6[26] = v11;
  v6[27] = v10;

  return _swift_task_switch(sub_100019E3C, v11, v10);
}

uint64_t sub_100019E3C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[8];
  v4 = *(v0[19] + 16);
  v4(v0[21], v0[7], v2);
  v4(v1, v3, v2);
  sub_10004FE38();
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_100019F40;
  v6 = v0[24];
  v7 = v0[17];

  return static LanguagesStatusService.languagePairState(_:)(v7, v6);
}

uint64_t sub_100019F40()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_10001A518;
  }

  else
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_10001A064;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10001A064()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[11];

  v7 = *(v6 + 56);
  v7(v1, 0, 1, v5);
  (*(v6 + 104))(v2, enum case for LanguageState.installed(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10000A00C(v1, v3, &qword_10006AE60, &qword_1000538C0);
  sub_10000A00C(v2, v3 + v8, &qword_10006AE60, &qword_1000538C0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) != 1)
  {
    v11 = v0[10];
    sub_10000A00C(v0[14], v0[15], &qword_10006AE60, &qword_1000538C0);
    v12 = v9(v3 + v8, 1, v11);
    v13 = v0[15];
    v14 = v0[16];
    if (v12 != 1)
    {
      v20 = v0[14];
      v22 = v0[11];
      v21 = v0[12];
      v23 = v0[10];
      (*(v22 + 32))(v21, v3 + v8, v23);
      sub_10001E44C(&qword_10006AE70, &type metadata accessor for LanguageState, &protocol conformance descriptor for LanguageState);
      v24 = sub_100051118();
      v25 = *(v22 + 8);
      v25(v21, v23);
      sub_100004444(v14, &qword_10006AE60, &qword_1000538C0);
      v25(v13, v23);
      sub_100004444(v20, &qword_10006AE60, &qword_1000538C0);
      if (v24)
      {
        goto LABEL_9;
      }

LABEL_7:
      v18 = v0[23];
      v17 = v0[24];
      v19 = v0[22];
      sub_100004444(v0[17], &qword_10006AE60, &qword_1000538C0);
      (*(v18 + 8))(v17, v19);
      goto LABEL_10;
    }

    v15 = v0[10];
    v16 = v0[11];
    sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
    (*(v16 + 8))(v13, v15);
LABEL_6:
    sub_100004444(v0[14], &qword_10006AE58, &qword_1000538B8);
    goto LABEL_7;
  }

  v10 = v0[10];
  sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
  if (v9(v3 + v8, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_100004444(v0[14], &qword_10006AE60, &qword_1000538C0);
LABEL_9:
  v27 = v0[23];
  v26 = v0[24];
  v28 = v0[22];
  v29 = v0[17];
  v30 = v0[9];
  v31 = [objc_opt_self() mainBundle];
  v41._countAndFlagsBits = 0xE000000000000000;
  v43._countAndFlagsBits = 0x54414C534E415254;
  v43._object = 0xE900000000000045;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v32.super.isa = v31;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v33 = sub_10004FC68(v43, v44, v32, v45, 0, v41);
  v35 = v34;

  v36 = (v30 + *(type metadata accessor for DownloadSelectionView_iOS(0) + 36));
  v37 = v36[1];
  v38 = v36[2];
  v0[2] = *v36;
  v0[3] = v37;
  v0[4] = v38;
  v0[5] = v33;
  v0[6] = v35;

  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F28();
  sub_100004444(v29, &qword_10006AE60, &qword_1000538C0);
  (*(v27 + 8))(v26, v28);

LABEL_10:

  v39 = v0[1];

  return v39();
}

uint64_t sub_10001A518()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[11];

  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  (*(v6 + 104))(v2, enum case for LanguageState.installed(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10000A00C(v1, v3, &qword_10006AE60, &qword_1000538C0);
  sub_10000A00C(v2, v3 + v8, &qword_10006AE60, &qword_1000538C0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) != 1)
  {
    v11 = v0[10];
    sub_10000A00C(v0[14], v0[15], &qword_10006AE60, &qword_1000538C0);
    v12 = v9(v3 + v8, 1, v11);
    v13 = v0[15];
    v14 = v0[16];
    if (v12 != 1)
    {
      v20 = v0[14];
      v22 = v0[11];
      v21 = v0[12];
      v23 = v0[10];
      (*(v22 + 32))(v21, v3 + v8, v23);
      sub_10001E44C(&qword_10006AE70, &type metadata accessor for LanguageState, &protocol conformance descriptor for LanguageState);
      v24 = sub_100051118();
      v25 = *(v22 + 8);
      v25(v21, v23);
      sub_100004444(v14, &qword_10006AE60, &qword_1000538C0);
      v25(v13, v23);
      sub_100004444(v20, &qword_10006AE60, &qword_1000538C0);
      if (v24)
      {
        goto LABEL_9;
      }

LABEL_7:
      v18 = v0[23];
      v17 = v0[24];
      v19 = v0[22];
      sub_100004444(v0[17], &qword_10006AE60, &qword_1000538C0);
      (*(v18 + 8))(v17, v19);
      goto LABEL_10;
    }

    v15 = v0[10];
    v16 = v0[11];
    sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
    (*(v16 + 8))(v13, v15);
LABEL_6:
    sub_100004444(v0[14], &qword_10006AE58, &qword_1000538B8);
    goto LABEL_7;
  }

  v10 = v0[10];
  sub_100004444(v0[16], &qword_10006AE60, &qword_1000538C0);
  if (v9(v3 + v8, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_100004444(v0[14], &qword_10006AE60, &qword_1000538C0);
LABEL_9:
  v27 = v0[23];
  v26 = v0[24];
  v28 = v0[22];
  v29 = v0[17];
  v30 = v0[9];
  v31 = [objc_opt_self() mainBundle];
  v41._countAndFlagsBits = 0xE000000000000000;
  v43._countAndFlagsBits = 0x54414C534E415254;
  v43._object = 0xE900000000000045;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v32.super.isa = v31;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v33 = sub_10004FC68(v43, v44, v32, v45, 0, v41);
  v35 = v34;

  v36 = (v30 + *(type metadata accessor for DownloadSelectionView_iOS(0) + 36));
  v37 = v36[1];
  v38 = v36[2];
  v0[2] = *v36;
  v0[3] = v37;
  v0[4] = v38;
  v0[5] = v33;
  v0[6] = v35;

  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F28();
  sub_100004444(v29, &qword_10006AE60, &qword_1000538C0);
  (*(v27 + 8))(v26, v28);

LABEL_10:

  v39 = v0[1];

  return v39();
}

uint64_t sub_10001A9CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for DownloadSelectionView_iOS(0);
  v4 = v3 - 8;
  v36 = *(v3 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10004FFA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000035C4(&qword_10006B000, &qword_100053988);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = v2 + *(v4 + 44);
  v15 = *v14;
  v16 = *(v14 + 16);
  v38 = v15;
  *&v39 = v16;
  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F18();
  sub_10001DF1C(v2, &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v18 = swift_allocObject();
  sub_10001E280(&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_10004FF98();
  sub_100051078();
  sub_100050538();
  (*(v7 + 32))(v13, v9, v6);
  v19 = &v13[*(v11 + 44)];
  v20 = v43;
  *(v19 + 4) = v42;
  *(v19 + 5) = v20;
  *(v19 + 6) = v44;
  v21 = v39;
  *v19 = v38;
  *(v19 + 1) = v21;
  v22 = v41;
  *(v19 + 2) = v40;
  *(v19 + 3) = v22;
  v23 = sub_100050AD8();
  sub_100050368();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v37;
  sub_10000360C(v13, v37, &qword_10006B000, &qword_100053988);
  result = sub_1000035C4(&qword_10006AFF0, &qword_100053980);
  v34 = v32 + *(result + 36);
  *v34 = v23;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_10001AD18(uint64_t a1)
{
  v2 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_10004FDB8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v20 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = type metadata accessor for DownloadSelectionView_iOS(0);
  sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  v21 = a1;
  sub_100050F18();
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    return sub_100004444(v6, &qword_10006A2A0, &qword_1000528E0);
  }

  v19 = *(v8 + 32);
  v19(v12, v6, v7);
  v16 = v22;
  sub_100050F18();
  if (v14(v16, 1, v7) == 1)
  {
    (*(v8 + 8))(v12, v7);
    return sub_100004444(v22, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    v17 = v20;
    v19(v20, v22, v7);
    (*(v21 + *(v13 + 64)))(v12, v17);
    v18 = *(v8 + 8);
    v18(v17, v7);
    return (v18)(v12, v7);
  }
}

uint64_t sub_10001AFE4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for DownloadSelectionView_iOS(0);
  v3 = *(v2 - 8);
  v57 = v2 - 8;
  v54 = v3;
  v53 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v52 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000035C4(&qword_10006AF80, &qword_100053940);
  __chkstk_darwin(v51);
  v49 = v42 - v5;
  v6 = sub_1000508C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000035C4(&qword_10006AF88, &qword_100053948);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v42 - v12;
  v14 = sub_1000035C4(&qword_10006AF90, &qword_100053950);
  v50 = v14;
  __chkstk_darwin(v14);
  v16 = v42 - v15;
  v58 = v1;
  sub_1000035C4(&qword_10006AF98, &qword_100053958);
  sub_10001EABC();
  sub_100050B78();
  sub_1000508B8();
  sub_1000044E8(&qword_10006B010, &qword_10006AF88, &qword_100053948, &protocol conformance descriptor for List<A, B>);
  sub_100050DF8();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v17 = sub_100050808();
  v47 = v18;
  v48 = v17;
  v45 = v19;
  v46 = v20;
  v21 = v56;
  sub_10001D0EC(v49);
  v22 = (v21 + *(v57 + 52));
  v23 = *v22;
  v24 = *(v22 + 1);
  v63 = v23;
  v64 = v24;
  sub_1000035C4(&qword_10006B018, &qword_100053990);
  sub_100050F38();
  v44 = v59;
  v43 = v60;
  v42[1] = v61;
  v25 = &v16[*(v14 + 36)];
  v26 = sub_10000372C(&qword_10006B020, &qword_100053998);
  v27 = sub_10000372C(&qword_10006B028, &qword_1000539A0);
  v28 = sub_1000044E8(&qword_10006B030, &qword_10006B028, &qword_1000539A0, &protocol conformance descriptor for List<A, B>);
  v59 = v27;
  v60 = v6;
  v61 = v28;
  v62 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v26;
  v60 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100050468();
  v30 = sub_100051068();
  v32 = v31;
  v33 = &v25[*(sub_1000035C4(&qword_10006B038, &qword_1000539A8) + 36)];
  *v33 = v30;
  v33[1] = v32;
  v34 = v56;
  v35 = v56 + *(v57 + 48);
  v36 = *v35;
  v37 = *(v35 + 8);
  v63 = v36;
  v64 = v37;
  sub_100050F38();
  v38 = v52;
  sub_10001DF1C(v34, v52);
  v39 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v40 = swift_allocObject();
  sub_10001E280(v38, v40 + v39);
  sub_1000035C4(&qword_10006B040, &qword_1000539B0);
  sub_10001EE80();
  sub_1000044E8(&qword_10006B058, &qword_10006B040, &qword_1000539B0, &protocol conformance descriptor for NavigationView<A>);
  sub_100050DC8();

  return sub_10001EFC8(v16);
}

uint64_t sub_10001B624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v28 = a2;
  v27 = sub_1000035C4(&qword_10006AFF0, &qword_100053980);
  __chkstk_darwin(v27);
  v25 = &v23 - v2;
  v24 = sub_1000035C4(&qword_10006AFB0, &qword_100053960);
  __chkstk_darwin(v24);
  v4 = &v23 - v3;
  sub_100050808();
  v5 = sub_100050C38();
  v7 = v6;
  v9 = v8;
  sub_100050E88();
  v10 = sub_100050BE8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10000A514(v5, v7, v9 & 1);

  LOBYTE(v7) = sub_100050AA8();
  v17 = v14 & 1;
  v31 = v14 & 1;
  v30 = 1;
  v18 = &v4[*(v24 + 36)];
  v19 = *(sub_1000035C4(&qword_10006AFD0, &qword_100053970) + 28);
  v20 = sub_100050C08();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *v18 = swift_getKeyPath();
  *v4 = v10;
  *(v4 + 1) = v12;
  v4[16] = v17;
  *(v4 + 17) = *v33;
  *(v4 + 5) = *&v33[3];
  *(v4 + 3) = v16;
  v4[32] = v7;
  *(v4 + 33) = *v32;
  *(v4 + 9) = *&v32[3];
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  v4[72] = 1;
  v21 = v26;
  sub_10001A9CC(v25);
  v29 = v21;
  sub_1000035C4(&qword_10006AFE0, &qword_100053978);
  sub_10001EB88();
  sub_1000044E8(&qword_10006AFD8, &qword_10006AFE0, &qword_100053978, &protocol conformance descriptor for TupleView<A>);
  sub_10001ECC4();
  return sub_100050FD8();
}

uint64_t sub_10001B930@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for DownloadSelectionView_iOS(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v29[1] = v5;
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000035C4(&qword_10006B090, &qword_100053A58);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v32 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v31 = v29 - v12;
  v13 = __chkstk_darwin(v11);
  v30 = v29 - v14;
  __chkstk_darwin(v13);
  v16 = v29 - v15;
  v29[0] = a1;
  sub_10001DF1C(a1, v6);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_10001E280(v6, v18 + v17);
  v35 = a1;
  sub_1000035C4(&qword_10006B098, &qword_100053A60);
  sub_1000044E8(&qword_10006B0A0, &qword_10006B098, &qword_100053A60, &protocol conformance descriptor for HStack<A>);
  sub_100050F58();
  v19 = v29[0];
  sub_10001DF1C(v29[0], v6);
  v20 = swift_allocObject();
  sub_10001E280(v6, v20 + v17);
  v34 = v19;
  v21 = v30;
  sub_100050F58();
  v22 = *(v8 + 16);
  v23 = v31;
  v22(v31, v16, v7);
  v24 = v32;
  v22(v32, v21, v7);
  v25 = v33;
  v22(v33, v23, v7);
  v26 = sub_1000035C4(&qword_10006B0A8, &qword_100053A68);
  v22(&v25[*(v26 + 48)], v24, v7);
  v27 = *(v8 + 8);
  v27(v21, v7);
  v27(v16, v7);
  v27(v24, v7);
  return (v27)(v23, v7);
}

uint64_t sub_10001BD14()
{
  v1 = v0;
  v2 = sub_1000510A8();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000510C8();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DownloadSelectionView_iOS(0);
  v29 = *(v8 - 1);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v10 = [objc_opt_self() mainBundle];
  v27._countAndFlagsBits = 0xE000000000000000;
  v41._countAndFlagsBits = 0x54414C534E415254;
  v41._object = 0xEE004D4F52465F45;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v11.super.isa = v10;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v12 = sub_10004FC68(v41, v42, v11, v43, 0, v27);
  v14 = v13;

  v15 = v1 + v8[12];
  v16 = *v15;
  v17 = *(v15 + 16);
  aBlock = v16;
  v35 = v17;
  v39 = v12;
  v40 = v14;
  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F28();
  aBlock = *(v1 + v8[13]);
  v39 = 0;
  sub_1000035C4(&qword_10006B080, &qword_100053A18);
  sub_100050F28();
  if (*(v1 + v8[14]))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000502F8();

    if (aBlock)
    {
      sub_10001F498();
      v18 = sub_1000513E8();
      sub_10001DF1C(v1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v20 = swift_allocObject();
      sub_10001E280(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
      v37 = sub_10001F4FC;
      v38 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v35 = sub_10004E228;
      v36 = &unk_100066B98;
      v21 = _Block_copy(&aBlock);

      sub_1000510B8();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_10001E44C(&qword_10006B0C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000035C4(&qword_10006B0C8, &qword_100055880);
      sub_1000044E8(&qword_10006B0D0, &qword_10006B0C8, &qword_100055880, &protocol conformance descriptor for [A]);
      v22 = v33;
      sub_100051528();
      sub_1000513F8();
      _Block_release(v21);

      (*(v32 + 8))(v4, v22);
      return (*(v30 + 8))(v7, v31);
    }

    else
    {
      v24 = v1 + v8[10];
      v25 = *v24;
      v26 = *(v24 + 8);
      LOBYTE(aBlock) = v25;
      *(&aBlock + 1) = v26;
      LOBYTE(v39) = 1;
      sub_1000035C4(&qword_10006B018, &qword_100053990);
      return sub_100050F28();
    }
  }

  else
  {
    type metadata accessor for TranslationContext(0);
    sub_10001E44C(&qword_10006A348, type metadata accessor for TranslationContext, &unk_100054714);
    result = sub_100050548();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001C280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = sub_10004FDB8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  sub_100050808();
  v12 = sub_100050C38();
  v14 = v13;
  v16 = v15;
  sub_100050E78();
  v17 = sub_100050BE8();
  v46 = v18;
  v47 = v17;
  v45 = v19;
  v48 = v20;

  sub_10000A514(v12, v14, v16 & 1);

  type metadata accessor for DownloadSelectionView_iOS(0);
  sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  sub_100050F18();
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_100004444(v11, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    (*(v4 + 16))(v8, v11, v3);
    sub_100004444(v11, &qword_10006A2A0, &qword_1000528E0);
    v25 = v43;
    sub_10004FDA8();
    v26 = sub_10004FD48();
    v28 = v27;
    v29 = *(v4 + 8);
    v29(v25, v3);
    v29(v8, v3);
    if (v28)
    {
      v49 = v26;
      v50 = v28;
      sub_100010600();

      v30 = sub_100050C48();
      v32 = v31;
      v34 = v33;
      sub_100050E28();
      v21 = sub_100050BE8();
      v22 = v35;
      LODWORD(v44) = v36;
      v24 = v37;

      sub_10000A514(v30, v32, v34 & 1);

      v23 = v44 & 1;
      goto LABEL_6;
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_6:
  v38 = v45 & 1;
  LOBYTE(v49) = v45 & 1;
  v51 = 1;
  v40 = v46;
  v39 = v47;
  *a2 = v47;
  *(a2 + 8) = v40;
  *(a2 + 16) = v38;
  *(a2 + 24) = v48;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v23;
  *(a2 + 72) = v24;
  sub_10001F400(v39, v40, v38);

  sub_10001F410(v21, v22, v23, v24);
  sub_10001F454(v21, v22, v23, v24);
  sub_10000A514(v39, v40, v38);
}

uint64_t sub_10001C680()
{
  v1 = v0;
  v2 = sub_1000510A8();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000510C8();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DownloadSelectionView_iOS(0);
  v29 = *(v8 - 1);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v10 = [objc_opt_self() mainBundle];
  v27._countAndFlagsBits = 0xE000000000000000;
  v41._countAndFlagsBits = 0x54414C534E415254;
  v41._object = 0xEC0000004F545F45;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v11.super.isa = v10;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v12 = sub_10004FC68(v41, v42, v11, v43, 0, v27);
  v14 = v13;

  v15 = v1 + v8[12];
  v16 = *v15;
  v17 = *(v15 + 16);
  aBlock = v16;
  v35 = v17;
  v39 = v12;
  v40 = v14;
  sub_1000035C4(&qword_10006AE68, &qword_1000538C8);
  sub_100050F28();
  aBlock = *(v1 + v8[13]);
  v39 = 1;
  sub_1000035C4(&qword_10006B080, &qword_100053A18);
  sub_100050F28();
  if (*(v1 + v8[14]))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000502F8();

    if (aBlock)
    {
      sub_10001F498();
      v18 = sub_1000513E8();
      sub_10001DF1C(v1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v19 = (*(v29 + 80) + 16) & ~*(v29 + 80);
      v20 = swift_allocObject();
      sub_10001E280(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
      v37 = sub_10001F6C0;
      v38 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v35 = sub_10004E228;
      v36 = &unk_100066B48;
      v21 = _Block_copy(&aBlock);

      sub_1000510B8();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_10001E44C(&qword_10006B0C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000035C4(&qword_10006B0C8, &qword_100055880);
      sub_1000044E8(&qword_10006B0D0, &qword_10006B0C8, &qword_100055880, &protocol conformance descriptor for [A]);
      v22 = v33;
      sub_100051528();
      sub_1000513F8();
      _Block_release(v21);

      (*(v32 + 8))(v4, v22);
      return (*(v30 + 8))(v7, v31);
    }

    else
    {
      v24 = v1 + v8[10];
      v25 = *v24;
      v26 = *(v24 + 8);
      LOBYTE(aBlock) = v25;
      *(&aBlock + 1) = v26;
      LOBYTE(v39) = 1;
      sub_1000035C4(&qword_10006B018, &qword_100053990);
      return sub_100050F28();
    }
  }

  else
  {
    type metadata accessor for TranslationContext(0);
    sub_10001E44C(&qword_10006A348, type metadata accessor for TranslationContext, &unk_100054714);
    result = sub_100050548();
    __break(1u);
  }

  return result;
}

double sub_10001CBEC@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100050798();
  v18 = 1;
  a2(&v12, a1);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_10000A00C(&v19, &v11, &qword_10006B0B0, &unk_100053A70);
  sub_100004444(v24, &qword_10006B0B0, &unk_100053A70);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v7;
  *(a3 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a3 + 17) = *v17;
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 96) = *&v17[79];
  *(a3 + 33) = v9;
  return result;
}

uint64_t sub_10001CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = sub_10004FDB8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = sub_1000035C4(&qword_10006A2A0, &qword_1000528E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  sub_100050808();
  v12 = sub_100050C38();
  v14 = v13;
  v16 = v15;
  sub_100050E78();
  v17 = sub_100050BE8();
  v46 = v18;
  v47 = v17;
  v45 = v19;
  v48 = v20;

  sub_10000A514(v12, v14, v16 & 1);

  type metadata accessor for DownloadSelectionView_iOS(0);
  sub_1000035C4(&qword_10006AE50, &qword_1000538A0);
  sub_100050F18();
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_100004444(v11, &qword_10006A2A0, &qword_1000528E0);
  }

  else
  {
    (*(v4 + 16))(v8, v11, v3);
    sub_100004444(v11, &qword_10006A2A0, &qword_1000528E0);
    v25 = v43;
    sub_10004FDA8();
    v26 = sub_10004FD48();
    v28 = v27;
    v29 = *(v4 + 8);
    v29(v25, v3);
    v29(v8, v3);
    if (v28)
    {
      v49 = v26;
      v50 = v28;
      sub_100010600();

      v30 = sub_100050C48();
      v32 = v31;
      v34 = v33;
      sub_100050E28();
      v21 = sub_100050BE8();
      v22 = v35;
      LODWORD(v44) = v36;
      v24 = v37;

      sub_10000A514(v30, v32, v34 & 1);

      v23 = v44 & 1;
      goto LABEL_6;
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_6:
  v38 = v45 & 1;
  LOBYTE(v49) = v45 & 1;
  v51 = 1;
  v40 = v46;
  v39 = v47;
  *a2 = v47;
  *(a2 + 8) = v40;
  *(a2 + 16) = v38;
  *(a2 + 24) = v48;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v21;
  *(a2 + 56) = v22;
  *(a2 + 64) = v23;
  *(a2 + 72) = v24;
  sub_10001F400(v39, v40, v38);

  sub_10001F410(v21, v22, v23, v24);
  sub_10001F454(v21, v22, v23, v24);
  sub_10000A514(v39, v40, v38);
}
__n128 sub_1000ABAC4@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a6@<X8>)
{
  v8 = sub_1000C65C4();
  a1(v11);
  *&v10[48] = *&v12[9];
  *&v10[39] = *v12;
  *&v10[23] = v11[1];
  *&v10[7] = v11[0];
  *(a6 + 17) = *v10;
  *(a6 + 33) = *&v10[16];
  result = *&v10[32];
  *(a6 + 49) = *&v10[32];
  *a6 = v8;
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  *(a6 + 65) = *&v10[48];
  return result;
}

uint64_t sub_1000ABB5C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v2, v3, v5 & 1);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000ABC44(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_1000C61C4();
  v8 = sub_1000C61F4();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_10008EC80(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000AF064(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_1000C6B24();
}

uint64_t sub_1000ABE08(uint64_t *a1)
{
  v1 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-v2];
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  v4 = sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  v9[15] = 1;

  sub_1000C60A4();
  v5 = sub_1000C6F44();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1000C6F14();

  v6 = sub_1000C6F04();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;
  sub_1000B82F8(0, 0, v3, &unk_1000CDDF0, v7);
}

uint64_t sub_1000ABFE8@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000AC064@<X0>(uint64_t a1@<X8>)
{
  sub_1000AC0C0();
  sub_1000383C8();
  result = sub_1000C68D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000AC0C0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v87._countAndFlagsBits = 0x1000000000000049;
  v70._countAndFlagsBits = 0x80000001000DD020;
  v87._object = 0x80000001000DCFD0;
  v100.value._countAndFlagsBits = 0;
  v100.value._object = 0;
  v2.super.isa = v1;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_1000C5B74(v87, v100, v2, v113, 0xD00000000000002ALL, v70);

  sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000CB170;
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_beginAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000382F4();
  *(v3 + 32) = v85;
  *(v3 + 40) = v86;
  v4 = sub_1000C6D54();
  v71._object = v5;
  v84 = v4;

  sub_10000FEB8(&qword_1001170C8, qword_1000CDDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CFF90;
  *(inited + 32) = 7;
  v7 = [v0 mainBundle];
  v71._countAndFlagsBits = 0x80000001000DD020;
  v88._countAndFlagsBits = 0xD00000000000007BLL;
  v88._object = 0x80000001000DD050;
  v101.value._countAndFlagsBits = 0;
  v101.value._object = 0;
  v8.super.isa = v7;
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  v9 = sub_1000C5B74(v88, v101, v8, v114, 0xD00000000000002ALL, v71);
  v11 = v10;

  *(inited + 40) = v9;
  *(inited + 48) = v11;
  *(inited + 56) = 8;
  v12 = [v0 mainBundle];
  v72._countAndFlagsBits = 0x80000001000DD170;
  v89._countAndFlagsBits = 0xD000000000000091;
  v89._object = 0x80000001000DD0D0;
  v102.value._countAndFlagsBits = 0;
  v102.value._object = 0;
  v13.super.isa = v12;
  v115._countAndFlagsBits = 0;
  v115._object = 0xE000000000000000;
  v14 = sub_1000C5B74(v89, v102, v13, v115, 0xD000000000000036, v72);
  v16 = v15;

  *(inited + 64) = v14;
  *(inited + 72) = v16;
  *(inited + 80) = 9;
  v17 = [v0 mainBundle];
  v73._countAndFlagsBits = 0x80000001000DD020;
  v90._countAndFlagsBits = 0xD00000000000007BLL;
  v90._object = 0x80000001000DD1B0;
  v103.value._countAndFlagsBits = 0;
  v103.value._object = 0;
  v18.super.isa = v17;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  v19 = sub_1000C5B74(v90, v103, v18, v116, 0xD00000000000002ALL, v73);
  v21 = v20;

  *(inited + 88) = v19;
  *(inited + 96) = v21;
  *(inited + 104) = 10;
  v22 = [v0 mainBundle];
  v74._countAndFlagsBits = 0x80000001000DD020;
  v91._countAndFlagsBits = 0xD000000000000080;
  v91._object = 0x80000001000DD230;
  v104.value._countAndFlagsBits = 0;
  v104.value._object = 0;
  v23.super.isa = v22;
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  v24 = sub_1000C5B74(v91, v104, v23, v117, 0xD00000000000002ALL, v74);
  v26 = v25;

  *(inited + 112) = v24;
  *(inited + 120) = v26;
  *(inited + 128) = 11;
  v27 = [v0 mainBundle];
  v75._countAndFlagsBits = 0x80000001000DD020;
  v92._countAndFlagsBits = 0xD00000000000007CLL;
  v92._object = 0x80000001000DD2C0;
  v105.value._countAndFlagsBits = 0;
  v105.value._object = 0;
  v28.super.isa = v27;
  v118._countAndFlagsBits = 0;
  v118._object = 0xE000000000000000;
  v29 = sub_1000C5B74(v92, v105, v28, v118, 0xD00000000000002ALL, v75);
  v31 = v30;

  *(inited + 136) = v29;
  *(inited + 144) = v31;
  *(inited + 152) = 0;
  v32 = [v0 mainBundle];
  v76._countAndFlagsBits = 0x80000001000DD020;
  v93._countAndFlagsBits = 0x10000000000000A2;
  v93._object = 0x80000001000DD340;
  v106.value._countAndFlagsBits = 0;
  v106.value._object = 0;
  v33.super.isa = v32;
  v119._countAndFlagsBits = 0;
  v119._object = 0xE000000000000000;
  v34 = sub_1000C5B74(v93, v106, v33, v119, 0xD00000000000002ALL, v76);
  v36 = v35;

  *(inited + 160) = v34;
  *(inited + 168) = v36;
  *(inited + 176) = 1;
  v37 = [v0 mainBundle];
  v77._countAndFlagsBits = 0x80000001000DD020;
  v94._countAndFlagsBits = 0x1000000000000090;
  v94._object = 0x80000001000DD3F0;
  v107.value._countAndFlagsBits = 0;
  v107.value._object = 0;
  v38.super.isa = v37;
  v120._countAndFlagsBits = 0;
  v120._object = 0xE000000000000000;
  v39 = sub_1000C5B74(v94, v107, v38, v120, 0xD00000000000002ALL, v77);
  v41 = v40;

  *(inited + 184) = v39;
  *(inited + 192) = v41;
  *(inited + 200) = 2;
  v42 = [v0 mainBundle];
  v78._countAndFlagsBits = 0x80000001000DD020;
  v95._countAndFlagsBits = 0x1000000000000093;
  v95._object = 0x80000001000DD490;
  v108.value._countAndFlagsBits = 0;
  v108.value._object = 0;
  v43.super.isa = v42;
  v121._countAndFlagsBits = 0;
  v121._object = 0xE000000000000000;
  v44 = sub_1000C5B74(v95, v108, v43, v121, 0xD00000000000002ALL, v78);
  v46 = v45;

  *(inited + 208) = v44;
  *(inited + 216) = v46;
  *(inited + 224) = 3;
  v47 = [v0 mainBundle];
  v79._countAndFlagsBits = 0x80000001000DD020;
  v96._countAndFlagsBits = 0x1000000000000094;
  v96._object = 0x80000001000DD530;
  v109.value._countAndFlagsBits = 0;
  v109.value._object = 0;
  v48.super.isa = v47;
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  v49 = sub_1000C5B74(v96, v109, v48, v122, 0xD00000000000002ALL, v79);
  v51 = v50;

  *(inited + 232) = v49;
  *(inited + 240) = v51;
  *(inited + 248) = 4;
  v52 = [v0 mainBundle];
  v80._countAndFlagsBits = 0x80000001000DD020;
  v97._object = 0x80000001000DD5D0;
  v97._countAndFlagsBits = 0x100000000000008DLL;
  v110.value._countAndFlagsBits = 0;
  v110.value._object = 0;
  v53.super.isa = v52;
  v123._countAndFlagsBits = 0;
  v123._object = 0xE000000000000000;
  v54 = sub_1000C5B74(v97, v110, v53, v123, 0xD00000000000002ALL, v80);
  v56 = v55;

  *(inited + 256) = v54;
  *(inited + 264) = v56;
  *(inited + 272) = 5;
  v57 = [v0 mainBundle];
  v81._countAndFlagsBits = 0x80000001000DD020;
  v98._object = 0x80000001000DD660;
  v98._countAndFlagsBits = 0x100000000000008DLL;
  v111.value._countAndFlagsBits = 0;
  v111.value._object = 0;
  v58.super.isa = v57;
  v124._countAndFlagsBits = 0;
  v124._object = 0xE000000000000000;
  v59 = sub_1000C5B74(v98, v111, v58, v124, 0xD00000000000002ALL, v81);
  v61 = v60;

  *(inited + 280) = v59;
  *(inited + 288) = v61;
  *(inited + 296) = 6;
  v62 = [v0 mainBundle];
  v99._countAndFlagsBits = 0x100000000000008BLL;
  v82._countAndFlagsBits = 0x80000001000DD020;
  v99._object = 0x80000001000DD6F0;
  v112.value._countAndFlagsBits = 0;
  v112.value._object = 0;
  v63.super.isa = v62;
  v125._countAndFlagsBits = 0;
  v125._object = 0xE000000000000000;
  v64 = sub_1000C5B74(v99, v112, v63, v125, 0xD00000000000002ALL, v82);
  v66 = v65;

  *(inited + 304) = v64;
  *(inited + 312) = v66;
  *(inited + 320) = 13;
  *(inited + 328) = v84;
  *(inited + 336) = v83;
  v67 = sub_100078E3C(inited);
  swift_setDeallocating();
  sub_10000FEB8(&unk_1001170D0, &qword_1000D1040);
  swift_arrayDestroy();
  sub_1000C6224();
  swift_beginAccess();

  v68 = sub_10003CC40(v67);

  return v68;
}

uint64_t sub_1000AC8D4(uint64_t a1)
{
  v2 = sub_1000C6654();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000FEB8(&qword_100119860, &qword_1000D4070);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000C6644();
  v9 = a1;
  sub_10000FEB8(&qword_100119890, &unk_1000D41D0);
  sub_10001E490(&qword_100119898, &qword_100119890, &unk_1000D41D0, &protocol conformance descriptor for Button<A>);
  sub_1000C6254();
  sub_10001E490(&qword_100119868, &qword_100119860, &qword_1000D4070, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_1000C6684();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000ACAC0(uint64_t a1)
{
  v2 = type metadata accessor for PeopleView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10000FEB8(qword_100118990, &unk_1000D1890);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_1000C61E4();
  v8 = sub_1000C61F4();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_10008EC80(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000AF064(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_10000FEB8(&qword_1001198A0, &qword_1000D41E0);
  sub_1000AF0E0();
  return sub_1000C6B24();
}

uint64_t sub_1000ACC98(uint64_t *a1)
{
  type metadata accessor for PeopleViewModel(0);
  sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
  sub_1000C6224();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_10000816C();
  v1 = sub_1000077D8();
  if (v1)
  {
    [v1 _dismissViewControllerWithError:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000ACDA0()
{
  sub_1000C6C34();
  sub_10000FEB8(&qword_1001198C0, &qword_1000D41F0);
  sub_100010624(&qword_1001198B0, &qword_1000D41E8);
  sub_10001E490(&qword_1001198B8, &qword_1001198B0, &qword_1000D41E8, &protocol conformance descriptor for Label<A, B>);
  swift_getOpaqueTypeConformance2();
  return sub_1000C6C44();
}

uint64_t sub_1000ACEC4()
{
  v0 = sub_10000FEB8(&qword_1001198B0, &qword_1000D41E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_1000C65D4();
  sub_1000C6AC4();
  sub_10001E490(&qword_1001198B8, &qword_1001198B0, &qword_1000D41E8, &protocol conformance descriptor for Label<A, B>);
  sub_1000C6984();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000AD00C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  v7 = sub_1000C68A4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1000500D8(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1000AD19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000AD278(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    v7 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000AD328(uint64_t a1)
{
  sub_1000AD404(319);
  if (v1 <= 0x3F)
  {
    sub_1000AD498(319);
    if (v2 <= 0x3F)
    {
      sub_1000847EC();
      if (v3 <= 0x3F)
      {
        sub_1000AD52C(319);
        if (v4 <= 0x3F)
        {
          sub_1000AD584(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000AD404(uint64_t a1)
{
  if (!qword_1001197A8)
  {
    type metadata accessor for PeopleViewModel(255);
    sub_1000B00B4(&qword_1001197B0, type metadata accessor for PeopleViewModel, &unk_1000CD1A8);
    v1 = sub_1000C6244();
    if (!v2)
    {
      atomic_store(v1, &qword_1001197A8);
    }
  }
}

void sub_1000AD498(uint64_t a1)
{
  if (!qword_1001197B8)
  {
    type metadata accessor for GlobalPermissionViewModel(255);
    sub_1000B00B4(&qword_100117130, type metadata accessor for GlobalPermissionViewModel, &unk_1000CEDAC);
    v1 = sub_1000C6244();
    if (!v2)
    {
      atomic_store(v1, &qword_1001197B8);
    }
  }
}

void sub_1000AD52C(uint64_t a1)
{
  if (!qword_1001197C0)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1000C6B14();
    if (!v2)
    {
      atomic_store(v1, &qword_1001197C0);
    }
  }
}

void sub_1000AD584(uint64_t a1)
{
  if (!qword_100117BC8)
  {
    sub_100010624(&unk_100117BD0, qword_1000CF980);
    v1 = sub_1000C6214();
    if (!v2)
    {
      atomic_store(v1, &qword_100117BC8);
    }
  }
}

uint64_t sub_1000AD604@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v2 = sub_1000C66B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FEB8(&qword_100119808, &qword_1000D4030);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - v8;
  v14 = v1;
  sub_10000FEB8(&qword_100119810, &qword_1000D4038);
  v10 = sub_100010624(&qword_100119818, &qword_1000D4040);
  v11 = sub_1000AD890();
  v15 = v10;
  v16 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1000C6394();
  sub_1000C66A4();
  sub_10001E490(&qword_100119870, &qword_100119808, &qword_1000D4030, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_1000B00B4(&qword_100119008, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  sub_1000C68E4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1000AD890()
{
  result = qword_100119820;
  if (!qword_100119820)
  {
    sub_100010624(&qword_100119818, &qword_1000D4040);
    sub_1000AD94C();
    sub_1000B00B4(&qword_100117168, type metadata accessor for AlertViewModelAlert, &unk_1000D32A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119820);
  }

  return result;
}

unint64_t sub_1000AD94C()
{
  result = qword_100119828;
  if (!qword_100119828)
  {
    sub_100010624(&qword_100119830, &qword_1000D4048);
    sub_100010624(&qword_100119838, &qword_1000D4050);
    sub_100010624(&qword_100119840, &qword_1000D4058);
    sub_100010624(&qword_100119848, &qword_1000D4060);
    sub_100010624(&qword_100119850, &qword_1000D4068);
    sub_1000C6674();
    sub_10001E490(&qword_100119858, &qword_100119850, &qword_1000D4068, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100010624(&qword_100119860, &qword_1000D4070);
    sub_10001E490(&qword_100119868, &qword_100119860, &qword_1000D4070, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000B00B4(&qword_100117168, type metadata accessor for AlertViewModelAlert, &unk_1000D32A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119828);
  }

  return result;
}

uint64_t sub_1000ADBB4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000C6C54();
  v27 = v4;
  v28 = v3;
  sub_1000ADE68(&v41);
  v26 = v41;
  HIDWORD(v24) = v42;
  v29 = BYTE1(v42);
  v30 = v43;
  v31 = v44;
  sub_1000C6C54();
  sub_1000C62C4();
  sub_1000C65D4();
  LOWORD(v24) = 256;
  v5 = sub_1000C68C4();
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() labelColor];
  sub_1000C6A64();
  v11 = sub_1000C6884();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_1000500D8(v5, v7, v9 & 1);

  *&v37 = v28;
  *(&v37 + 1) = v27;
  *&v38 = v26;
  BYTE8(v38) = v25;
  BYTE9(v38) = v29;
  v39 = v30;
  *v40 = v31;
  *&v40[8] = v32;
  *&v40[24] = v33;
  *&v40[40] = v34;
  v18 = v38;
  *a2 = v37;
  *(a2 + 16) = v18;
  v19 = v39;
  v20 = *v40;
  v21 = *&v40[32];
  v22 = *&v40[48];
  *(a2 + 64) = *&v40[16];
  *(a2 + 80) = v21;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 96) = v22;
  *(a2 + 104) = v11;
  *(a2 + 112) = v13;
  *(a2 + 120) = v15 & 1;
  *(a2 + 128) = v17;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  sub_100017574(&v37, &v41, &qword_100119BE0, &qword_1000D4CA0);
  sub_100050DE0(v11, v13, v15 & 1);

  sub_1000500D8(v11, v13, v15 & 1);

  v41 = v28;
  v42 = v27;
  *&v43 = v26;
  BYTE8(v43) = v25;
  BYTE9(v43) = v29;
  *(&v43 + 10) = v35;
  HIWORD(v43) = v36;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  return sub_100010F24(&v41, &qword_100119BE0, &qword_1000D4CA0);
}

uint64_t sub_1000ADE68@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 quaternaryLabelColor];
  v4 = sub_1000C6A64();
  v5 = sub_1000C6A84();
  v6 = [v2 labelColor];
  v7 = sub_1000C6A64();
  result = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = 256;
  *(a1 + 16) = v5;
  *(a1 + 24) = result;
  *(a1 + 32) = v7;
  return result;
}

double sub_1000ADF10@<D0>(uint64_t a6@<X8>)
{
  v7 = sub_1000C65C4();
  v26 = 1;
  sub_1000ADBB4(&v15);
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v27 = v15;
  v28 = v16;
  v37[6] = v21;
  v37[7] = v22;
  v37[8] = v23;
  v37[2] = v17;
  v37[3] = v18;
  v37[4] = v19;
  v37[5] = v20;
  v36 = v24;
  v38 = v24;
  v37[0] = v15;
  v37[1] = v16;
  sub_100017574(&v27, &v14, &qword_100119BD8, &qword_1000D4C98);
  sub_100010F24(v37, &qword_100119BD8, &qword_1000D4C98);
  *&v25[55] = v30;
  *&v25[39] = v29;
  *&v25[103] = v33;
  *&v25[119] = v34;
  *&v25[135] = v35;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[7] = v27;
  *&v25[23] = v28;
  v8 = *&v25[112];
  *(a6 + 113) = *&v25[96];
  *(a6 + 129) = v8;
  *(a6 + 145) = *&v25[128];
  v9 = *&v25[48];
  *(a6 + 49) = *&v25[32];
  *(a6 + 65) = v9;
  v10 = *&v25[80];
  *(a6 + 81) = *&v25[64];
  *(a6 + 97) = v10;
  result = *v25;
  v12 = *&v25[16];
  *(a6 + 17) = *v25;
  v25[151] = v36;
  v13 = v26;
  *a6 = v7;
  *(a6 + 8) = 0;
  *(a6 + 16) = v13;
  *(a6 + 161) = *&v25[144];
  *(a6 + 33) = v12;
  return result;
}

uint64_t sub_1000AE090@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_1000C65F4();
  v19 = 0;
  sub_1000AE270(__src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v21, __src, 0x109uLL);
  sub_100017574(__dst, v16, &qword_100119B80, &qword_1000D4BA8);
  sub_100010F24(v21, &qword_100119B80, &qword_1000D4BA8);
  memcpy(&v18[7], __dst, 0x109uLL);
  v7 = v19;
  v8 = (a4 + *(sub_10000FEB8(&qword_100119B88, &qword_1000D4BB0) + 36));
  v9 = *(sub_10000FEB8(&qword_100119B90, &qword_1000D4BB8) + 28);
  v10 = sub_1000C6894();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *v8 = swift_getKeyPath();
  *a4 = v6;
  *(a4 + 8) = 0x4020000000000000;
  *(a4 + 16) = v7;
  memcpy((a4 + 17), v18, 0x110uLL);
  KeyPath = swift_getKeyPath();
  v12 = a4 + *(sub_10000FEB8(&qword_100119B98, &qword_1000D4C20) + 36);
  *v12 = KeyPath;
  *(v12 + 8) = 1;
  v13 = sub_1000C6C64();
  v14 = (a4 + *(sub_10000FEB8(&qword_100119BA0, &qword_1000D4C28) + 36));
  *v14 = v13;
  v14[1] = a1;
}

uint64_t sub_1000AE270@<X0>(void *a6@<X8>)
{
  v10 = sub_1000C65C4();
  LOBYTE(v38[0]) = 1;
  sub_1000AE660(&v46);
  v21 = *&v47[80];
  v22 = *&v47[96];
  v17 = *&v47[16];
  v18 = *&v47[32];
  v19 = *&v47[48];
  v20 = *&v47[64];
  v15 = v46;
  v16 = *v47;
  v24[6] = *&v47[80];
  v24[7] = *&v47[96];
  v24[2] = *&v47[16];
  v24[3] = *&v47[32];
  v24[4] = *&v47[48];
  v24[5] = *&v47[64];
  v23 = v47[112];
  v25 = v47[112];
  v24[0] = v46;
  v24[1] = *v47;
  sub_100017574(&v15, &v34, &qword_100119BB0, &qword_1000D4C38);
  sub_100010F24(v24, &qword_100119BB0, &qword_1000D4C38);
  *&v14[87] = v20;
  *&v14[103] = v21;
  *&v14[119] = v22;
  *&v14[23] = v16;
  *&v14[39] = v17;
  *&v14[55] = v18;
  *&v14[71] = v19;
  v14[135] = v23;
  *&v14[7] = v15;
  v6 = v38[0];
  v7 = sub_1000C65C4();
  LOBYTE(v38[0]) = 1;
  sub_1000AE910(&v46);
  v28 = *&v47[16];
  v29 = *&v47[32];
  v30 = *&v47[48];
  v31 = v47[64];
  v26 = v46;
  v27 = *v47;
  v33 = v47[64];
  v32[2] = *&v47[16];
  v32[3] = *&v47[32];
  v32[4] = *&v47[48];
  v32[0] = v46;
  v32[1] = *v47;
  sub_100017574(&v26, &v34, &qword_100119BB8, &qword_1000D4C40);
  sub_100010F24(v32, &qword_100119BB8, &qword_1000D4C40);
  *&v13[39] = v28;
  *&v13[55] = v29;
  *&v13[71] = v30;
  v13[87] = v31;
  *&v13[7] = v26;
  *&v13[23] = v27;
  v8 = v38[0];
  v34 = v10;
  v35[0] = v6;
  *&v35[1] = *v14;
  *&v35[65] = *&v14[64];
  *&v35[49] = *&v14[48];
  *&v35[33] = *&v14[32];
  *&v35[17] = *&v14[16];
  *&v35[129] = *&v14[128];
  *&v35[113] = *&v14[112];
  *&v35[97] = *&v14[96];
  *&v35[81] = *&v14[80];
  __src[6] = *&v35[80];
  __src[7] = *&v35[96];
  v36 = v7;
  v37[0] = v38[0];
  *&v37[1] = *v13;
  __src[8] = *&v35[112];
  *(&__src[8] + 9) = *&v35[121];
  __src[2] = *&v35[16];
  __src[3] = *&v35[32];
  __src[4] = *&v35[48];
  __src[5] = *&v35[64];
  __src[0] = v10;
  __src[1] = *v35;
  *&v37[17] = *&v13[16];
  *&v37[81] = *&v13[80];
  *&v37[65] = *&v13[64];
  *&v37[49] = *&v13[48];
  *&v37[33] = *&v13[32];
  __src[11] = *v37;
  __src[12] = *&v37[16];
  __src[10] = v7;
  *(&__src[15] + 9) = *&v37[73];
  __src[14] = *&v37[48];
  __src[15] = *&v37[64];
  __src[13] = *&v37[32];
  memcpy(a6, __src, 0x109uLL);
  v42 = *&v13[32];
  v43 = *&v13[48];
  v44 = *&v13[64];
  v40 = *v13;
  v38[0] = v7;
  v38[1] = 0;
  v39 = v8;
  v45 = *&v13[80];
  v41 = *&v13[16];
  sub_100017574(&v34, &v46, &qword_100119BC0, &qword_1000D4C48);
  sub_100017574(&v36, &v46, &qword_100119BC8, &qword_1000D4C50);
  sub_100010F24(v38, &qword_100119BC8, &qword_1000D4C50);
  v46 = v10;
  v47[0] = v6;
  *&v47[81] = *&v14[80];
  *&v47[97] = *&v14[96];
  v48 = *&v14[112];
  v49 = *&v14[128];
  *&v47[17] = *&v14[16];
  *&v47[33] = *&v14[32];
  *&v47[49] = *&v14[48];
  *&v47[65] = *&v14[64];
  *&v47[1] = *v14;
  return sub_100010F24(&v46, &qword_100119BC0, &qword_1000D4C48);
}

uint64_t sub_1000AE660@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1000C6A94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = sub_1000C6AB4();
  (*(v4 + 8))(v6, v3);
  sub_1000C6C54();
  sub_1000C62C4();
  LOBYTE(v23[0]) = 1;
  *&v19[3] = *&v19[27];
  *&v19[11] = *&v19[35];
  *&v19[19] = *&v19[43];
  sub_1000C6A24();
  v8 = sub_1000C6A44();

  v18 = 1;
  v20[0] = v7;
  v20[1] = 0;
  LOWORD(v21[0]) = 1;
  *(&v21[2] + 2) = *&v19[16];
  *(&v21[1] + 2) = *&v19[8];
  *(v21 + 2) = *v19;
  *&v21[3] = *&v19[23];
  *(&v21[3] + 1) = v8;
  v21[4] = xmmword_1000D2900;
  v22 = 0x4010000000000000;
  *(&v17[6] + 7) = 0x4010000000000000;
  *(&v17[5] + 7) = xmmword_1000D2900;
  *(v17 + 7) = v7;
  *(&v17[3] + 7) = v21[2];
  *(&v17[4] + 7) = v21[3];
  *(&v17[1] + 7) = v21[0];
  *(&v17[2] + 7) = v21[1];
  v16[104] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v9 = v17[0];
  v10 = v17[1];
  v11 = v17[3];
  *(a2 + 41) = v17[2];
  *(a2 + 25) = v10;
  *(a2 + 9) = v9;
  v12 = v17[4];
  v13 = v17[5];
  *(a2 + 104) = *(&v17[5] + 15);
  *(a2 + 89) = v13;
  *(a2 + 73) = v12;
  *(a2 + 57) = v11;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v23[0] = v7;
  v23[1] = 0;
  v24 = 1;
  *&v27[14] = *&v19[23];
  v28 = v8;
  *v27 = *&v19[16];
  v26 = *&v19[8];
  v25 = *v19;
  v29 = xmmword_1000D2900;
  v30 = 0x4010000000000000;
  sub_100017574(v20, v16, &qword_100119BD0, &unk_1000D4C88);
  return sub_100010F24(v23, &qword_100119BD0, &unk_1000D4C88);
}

uint64_t sub_1000AE910@<X0>(uint64_t a3@<X8>)
{
  sub_1000383C8();

  v4 = sub_1000C68D4();
  v6 = v5;
  v8 = v7;
  sub_1000C67E4();
  sub_1000C6814();
  sub_1000C6844();

  v9 = sub_1000C68B4();
  v11 = v10;
  v13 = v12;

  sub_1000500D8(v4, v6, v8 & 1);

  v14 = [objc_opt_self() labelColor];
  sub_1000C6A64();
  v15 = sub_1000C6884();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1000500D8(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19 & 1;
  *(a3 + 40) = v21;
  *(a3 + 48) = KeyPath;
  *(a3 + 56) = 2;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  sub_100050DE0(v15, v17, v19 & 1);

  sub_1000500D8(v15, v17, v19 & 1);
}

uint64_t sub_1000AEBAC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_1000AEC2C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000AEDFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();
}

uint64_t sub_1000AEEB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_10000FEB8(&qword_100116C80, &unk_1000CE870);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  sub_100017574(a1, &v14 - v11, &qword_100116C80, &unk_1000CE870);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100017574(v12, v10, &qword_100116C80, &unk_1000CE870);

  sub_1000C60A4();
  return sub_100010F24(v12, &qword_100116C80, &unk_1000CE870);
}

uint64_t sub_1000AF064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000AF0E0()
{
  result = qword_1001198A8;
  if (!qword_1001198A8)
  {
    sub_100010624(&qword_1001198A0, &qword_1000D41E0);
    sub_100010624(&qword_1001198B0, &qword_1000D41E8);
    sub_10001E490(&qword_1001198B8, &qword_1001198B0, &qword_1000D41E8, &protocol conformance descriptor for Label<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001198A8);
  }

  return result;
}

unint64_t sub_1000AF1F8()
{
  result = qword_100119958;
  if (!qword_100119958)
  {
    sub_100010624(&qword_100119960, &qword_1000D42C8);
    sub_1000AF2D8(&qword_100119968, &qword_100119970, &qword_1000D42D0, sub_1000AF2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119958);
  }

  return result;
}

uint64_t sub_1000AF2D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000AF35C()
{
  result = qword_100119988;
  if (!qword_100119988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119988);
  }

  return result;
}

uint64_t sub_1000AF514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_1001198C8, &qword_1000D41F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AF58C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000AF608()
{
  result = qword_1001199E0;
  if (!qword_1001199E0)
  {
    sub_100010624(&qword_1001199E8, &qword_1000D4500);
    sub_10001E490(&qword_1001199F0, &qword_1001199F8, &unk_1000D4508, &protocol conformance descriptor for Button<A>);
    sub_10001E490(&qword_100117D30, &qword_100117D38, &qword_1000D2370, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001199E0);
  }

  return result;
}

uint64_t sub_1000AF76C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C6554();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000AF7D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6474();
  *a1 = result;
  return result;
}

uint64_t sub_1000AF830@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C6574();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000AF894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6514();
  *a1 = result;
  return result;
}

uint64_t sub_1000AF8C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6514();
  *a1 = result;
  return result;
}

uint64_t sub_1000AF944(uint64_t *a1)
{
  v3 = *(type metadata accessor for PeopleView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000A6D20(a1, v4);
}

uint64_t sub_1000AF9C4()
{
  v1 = (type metadata accessor for PeopleView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_100050264(*(v0 + v4), *(v0 + v4 + 8));
  sub_100050264(*(v5 + 24), *(v5 + 32));

  v6 = v1[13];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C6694();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000AFB7C()
{
  v1 = *(type metadata accessor for PeopleView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A6FFC((v0 + v2), v3);
}

unint64_t sub_1000AFC2C()
{
  result = qword_100119A50;
  if (!qword_100119A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119A50);
  }

  return result;
}

uint64_t sub_1000AFC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_10000FEB8(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100017574(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

unint64_t sub_1000AFDB4()
{
  result = qword_100119A78;
  if (!qword_100119A78)
  {
    sub_100010624(&qword_100119A70, &qword_1000D4788);
    sub_10001E490(&qword_100119A80, &qword_100119A88, &qword_1000D4790, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119A78);
  }

  return result;
}

uint64_t sub_1000AFE6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C6474();
  *a1 = result;
  return result;
}

uint64_t sub_1000AFEC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011080;

  return sub_100068DA0(a1, v4, v5, v6);
}

uint64_t sub_1000B00B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B01C8()
{
  result = qword_100119AE8;
  if (!qword_100119AE8)
  {
    sub_100010624(&qword_100119AE0, &qword_1000D49E0);
    sub_10001E490(&qword_100119AF0, &qword_100119AF8, &unk_1000D49E8, &protocol conformance descriptor for NavigationLink<A, B>);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119AE8);
  }

  return result;
}

uint64_t sub_1000B02CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PeopleView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000B0340()
{
  result = qword_100119B10;
  if (!qword_100119B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B10);
  }

  return result;
}

uint64_t sub_1000B0394(double a1, double a2, double a3, double a4)
{
  v9 = *(type metadata accessor for PeopleView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1000A8B0C(v10, a1, a2, a3, a4);
}

uint64_t sub_1000B0424()
{
  v1 = sub_1000C6374();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000B04AC(uint64_t *a1@<X8>)
{
  sub_1000C6374();

  sub_10008D974(a1);
}

uint64_t sub_1000B052C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B0594()
{
  v1 = (type metadata accessor for PeopleView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_100050264(*(v0 + v4), *(v0 + v4 + 8));
  sub_100050264(*(v5 + 24), *(v5 + 32));

  v6 = v1[13];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000C6694();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

double sub_1000B0738@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PeopleView(0);

  return sub_1000A8B6C(a1);
}

unint64_t sub_1000B07A8()
{
  result = qword_100119B20;
  if (!qword_100119B20)
  {
    sub_100010624(&qword_100119AC0, &qword_1000D4978);
    sub_1000B0860();
    sub_10001E490(&qword_100119B50, &qword_100119B58, &qword_1000D4A68, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B20);
  }

  return result;
}

unint64_t sub_1000B0860()
{
  result = qword_100119B28;
  if (!qword_100119B28)
  {
    sub_100010624(&qword_100119B18, &qword_1000D4A50);
    sub_10001E490(&qword_100119B30, &qword_100119B38, &qword_1000D4A58, &protocol conformance descriptor for Button<A>);
    sub_10001E490(&qword_100119B40, &qword_100119B48, &qword_1000D4A60, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B28);
  }

  return result;
}

unint64_t sub_1000B0968()
{
  result = qword_100119B70;
  if (!qword_100119B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119B70);
  }

  return result;
}

uint64_t sub_1000B09BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C6554();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000B0A5C()
{
  sub_100010624(&qword_100119808, &qword_1000D4030);
  sub_1000C66B4();
  sub_10001E490(&qword_100119870, &qword_100119808, &qword_1000D4030, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_1000B00B4(&qword_100119008, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B0BDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000C6574();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1000B0C44()
{
  result = qword_100119BE8;
  if (!qword_100119BE8)
  {
    sub_100010624(&qword_100119BA0, &qword_1000D4C28);
    sub_1000B0CFC();
    sub_10001E490(&qword_100119C28, &qword_100119C30, &qword_1000D4CB8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119BE8);
  }

  return result;
}

unint64_t sub_1000B0CFC()
{
  result = qword_100119BF0;
  if (!qword_100119BF0)
  {
    sub_100010624(&qword_100119B98, &qword_1000D4C20);
    sub_1000B0DB4();
    sub_10001E490(&qword_100119C18, &qword_100119C20, &qword_1000D4CB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119BF0);
  }

  return result;
}

unint64_t sub_1000B0DB4()
{
  result = qword_100119BF8;
  if (!qword_100119BF8)
  {
    sub_100010624(&qword_100119B88, &qword_1000D4BB0);
    sub_10001E490(&qword_100119C00, &qword_100119C08, &qword_1000D4CA8, &protocol conformance descriptor for VStack<A>);
    sub_10001E490(&qword_100119C10, &qword_100119B90, &qword_1000D4BB8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119BF8);
  }

  return result;
}

uint64_t sub_1000B0F08(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 40;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v3 + 16 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        v7 = *(v5 - 1);
        v8 = *v5;

        v9 = sub_1000B1E2C(v7, v8, 0x20uLL);
        if (v9)
        {
          break;
        }

        if (sub_1000B1E2C(v7, v8, 0x800uLL))
        {
          goto LABEL_13;
        }

        ++v6;
        v5 += 2;
        if (v2 == v1)
        {
          goto LABEL_18;
        }
      }

      v10 = sub_1000B10E4(v7, v8);
      if (v10[2])
      {
        v7 = v10[4];
        v11 = v10[5];

        v8 = v11;
      }

      else
      {
      }

LABEL_13:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000B1BE4(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v13 = v4[2];
      v12 = v4[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_1000B1BE4((v12 > 1), v13 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = (v13 + 1);
      v14 = &v4[3 * v13];
      v14[4] = v7;
      v14[5] = v8;
      *(v14 + 48) = (v9 ^ 1) & 1;
    }

    while (v2 != v1);
  }

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

id *sub_1000B10E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C5F74();
  __chkstk_darwin(v2);
  v23 = sub_1000C6D44();
  v3 = objc_allocWithZone(NSRegularExpression);
  v4 = sub_1000B19FC(0xD00000000000002FLL, 0x80000001000DD7A0, 1);
  v5 = sub_1000C6DE4();
  v6 = sub_1000C6D44();
  v7 = [v4 matchesInString:v6 options:1 range:{0, v5}];

  sub_1000B21A4();
  v8 = sub_1000C6E94();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v9 = sub_1000C72F4();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_1000B1D00(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_1000C7254();
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 range];
      v16 = [v23 substringWithRange:{v14, v15}];
      v17 = sub_1000C6D84();
      v19 = v18;

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000B1D00((v20 > 1), v21 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = (v21 + 1);
      v22 = &_swiftEmptyArrayStorage[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
    }

    while (v9 != v11);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B1544(void **a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000C5F74();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v16 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v22 = *a1;
  if (a2)
  {
    v23 = [v22 URL];
    if (v23)
    {
      v24 = v23;
      sub_1000C5D44();

      v25 = sub_1000C5D84();
      (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
    }

    else
    {
      v25 = sub_1000C5D84();
      (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    }

    sub_10000FF00(v19, v21);
    sub_1000C5D84();
    v35 = *(v25 - 8);
    if ((*(v35 + 48))(v21, 1, v25) == 1)
    {
      sub_10009CB18(v21);
      LOBYTE(v21) = 0;
    }

    else
    {
      v36 = sub_1000C5D64();
      v38 = v37;
      (*(v35 + 8))(v21, v25);
      if (v38)
      {
        if (v36 == 0x6F746C69616DLL && v38 == 0xE600000000000000)
        {

          LOBYTE(v21) = 1;
        }

        else
        {
          LOBYTE(v21) = sub_1000C73A4();
        }
      }

      else
      {
        LOBYTE(v21) = 0;
      }
    }

    sub_1000C5F54();
    v40 = sub_1000C5F64();
    v41 = sub_1000C6FF4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67109120;
      *(v42 + 4) = v21 & 1;
      _os_log_impl(&_mh_execute_header, v40, v41, "isValid(address...) is link, valid email: %{BOOL}d", v42, 8u);
    }

    (*(v44 + 8))(v15, v45);
  }

  else
  {
    LODWORD(v21) = [v22 range] == a3 && v26 == a4;
    sub_1000C5F54();
    v28 = sub_1000C5F64();
    v29 = sub_1000C6FF4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47 = v31;
      *v30 = 136315394;
      v46 = a5;
      type metadata accessor for CheckingType(0);
      v32 = sub_1000C6D94();
      v34 = sub_100071844(v32, v33, &v47);

      *(v30 + 4) = v34;
      *(v30 + 12) = 1024;
      *(v30 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v28, v29, "isValid(address...) is %s, valid: %{BOOL}d", v30, 0x12u);
      sub_100010544(v31);
    }

    (*(v44 + 8))(v13, v45);
  }

  return v21 & 1;
}

id sub_1000B19FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000C6D44();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_1000C5CE4();

    swift_willThrow();
  }

  return v6;
}

id *sub_1000B1AD8(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FEB8(&qword_100119C50, &qword_1000D4D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000B1BE4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FEB8(&qword_100119C58, qword_1000D4D18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 24));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000B1D00(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000B1D20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000B1D20(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000FEB8(&qword_100119C50, &qword_1000D4D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000B1E2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_1000C6E24();
  v30 = 0;
  v5 = [objc_allocWithZone(NSDataDetector) initWithTypes:a3 error:&v30];
  if (v5)
  {
    v6 = v5;
    v7 = v30;
    v8 = sub_1000C6D44();
    v28 = v6;
    v29 = v4;
    v9 = [v6 matchesInString:v8 options:0 range:{0, v4}];

    sub_1000B21A4();
    v10 = sub_1000C6E94();

    v30 = _swiftEmptyArrayStorage;
    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000C72F4())
    {
      v27 = a3;
      a3 = 0;
      v12 = v10 & 0xC000000000000001;
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v12)
        {
          v14 = sub_1000C7254();
        }

        else
        {
          if (a3 >= *(v13 + 16))
          {
            goto LABEL_16;
          }

          v14 = *(v10 + 8 * a3 + 32);
        }

        v15 = v14;
        v16 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        [v14 range];
        sub_1000C6FA4();
        if (v17)
        {
        }

        else
        {
          sub_1000C7284();
          sub_1000C72B4();
          sub_1000C72C4();
          sub_1000C7294();
          v12 = v10 & 0xC000000000000001;
          v13 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        ++a3;
        if (v16 == i)
        {
          v18 = v30;
          a3 = v27;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_19:

    if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
    {
      goto LABEL_34;
    }

    for (j = v18[2]; j; j = sub_1000C72F4())
    {
      v20 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = sub_1000C7254();
        }

        else
        {
          if (v20 >= v18[2])
          {
            goto LABEL_33;
          }

          v21 = v18[v20 + 4];
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v30 = v21;
        v24 = sub_1000B1544(&v30, a3 == 32, 0, v29, a3);

        if (v24)
        {

          return 1;
        }

        ++v20;
        if (v23 == j)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    return 0;
  }

  else
  {
    v26 = v30;
    sub_1000C5CE4();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000B21A4()
{
  result = qword_100119C48;
  if (!qword_100119C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100119C48);
  }

  return result;
}

uint64_t sub_1000B21F4()
{
  v1 = [v0 identifier];
  v2 = sub_1000C6D84();

  return v2;
}

void sub_1000B2250(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_1000C6D84();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_1000B22D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContactsObserver(uint64_t a1)
{
  result = qword_100119CB0;
  if (!qword_100119CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B241C(uint64_t a1)
{
  sub_1000B24C8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000B24C8(uint64_t a1)
{
  if (!qword_100119CC0)
  {
    sub_100010624(&qword_100119CC8, &qword_1000D4DD8);
    v1 = sub_1000C60B4();
    if (!v2)
    {
      atomic_store(v1, &qword_100119CC0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SaveStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for SaveStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000B26CC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000B26E8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddAddressesStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AddAddressesStage(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreateOrLoadStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CreateOrLoadStage(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_1000B29BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000B29D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000B2A18(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SharingStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B2C00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  if (*(*(v0 + 16) + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();
  }

  v1 = 0x10000000000;
  if (!v4)
  {
    v1 = 0;
  }

  v2 = 0x1000000000000;
  if (!v4)
  {
    v2 = 0;
  }

  return v4 | (v4 << 8) | (v4 << 16) | (v4 << 24) | (v4 << 32) | v1 | v2;
}

BOOL sub_1000B3010(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

LABEL_10:
      if ((v3 - 2) >= 4u)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1000B30A4()
{
  result = qword_100119CD8;
  if (!qword_100119CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CD8);
  }

  return result;
}

unint64_t sub_1000B30FC()
{
  result = qword_100119CE0;
  if (!qword_100119CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CE0);
  }

  return result;
}

unint64_t sub_1000B3154()
{
  result = qword_100119CE8;
  if (!qword_100119CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CE8);
  }

  return result;
}

unint64_t sub_1000B31AC()
{
  result = qword_100119CF0;
  if (!qword_100119CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CF0);
  }

  return result;
}

unint64_t sub_1000B3204()
{
  result = qword_100119CF8;
  if (!qword_100119CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119CF8);
  }

  return result;
}

uint64_t sub_1000B3300@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_1000B3380(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000B366C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_1000B36EC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000B37E4(char a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1000C60A4();
  }

  return result;
}

uint64_t sub_1000B389C()
{

  v1 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__readWritePermissions;
  v2 = sub_10000FEB8(&qword_100117658, &qword_1000CEDF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__readWritePermissionSelected;
  v4 = sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__personCanAddPeople;
  v6 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__personHasAddPeopleToggle, v6);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__savingInProgress, v6);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__shouldShowRemoveAccess, v6);
  v7(v0 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22RequesterInfoViewModel__shouldShowRemoveMe, v6);
  return v0;
}

uint64_t sub_1000B3A6C()
{
  sub_1000B389C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequesterInfoViewModel(uint64_t a1)
{
  result = qword_100119D60;
  if (!qword_100119D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B3B18(uint64_t a1)
{
  sub_10007C09C(319);
  if (v1 <= 0x3F)
  {
    sub_10001D1A8(319, &qword_100117490, &type metadata for GlobalPermissionViewModel.CanMakeChangesOrViewOnly);
    if (v2 <= 0x3F)
    {
      sub_10001D1A8(319, &qword_100117460, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000B3CA8(uint64_t a1, void *a2, uint64_t a3)
{
  v81 = a3;
  v6 = sub_10000FEB8(&unk_100117770, &unk_1000CEF10);
  __chkstk_darwin(v6 - 8);
  v72 = &v57 - v7;
  v77 = sub_10000FEB8(&unk_100116EE0, &unk_1000CD2A0);
  v80 = *(v77 - 8);
  v8 = __chkstk_darwin(v77);
  v75 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v57 - v10;
  v79 = sub_10000FEB8(&qword_100117760, &qword_1000CEF00);
  v73 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v57 - v11;
  v61 = sub_10000FEB8(&qword_1001177B8, &qword_1000CEF58);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v57 - v12;
  v64 = sub_10000FEB8(&qword_1001187D0, &qword_1000D1150);
  __chkstk_darwin(v64);
  v63 = &v57 - v13;
  v14 = sub_10000FEB8(&qword_1001187D8, &qword_1000D1158);
  v66 = *(v14 - 8);
  v67 = v14;
  __chkstk_darwin(v14);
  v65 = &v57 - v15;
  v16 = sub_10000FEB8(&qword_1001187E0, &qword_1000D1160);
  v70 = *(v16 - 8);
  v71 = v16;
  __chkstk_darwin(v16);
  v69 = &v57 - v17;
  if (_swiftEmptyArrayStorage >> 62 && sub_1000C72F4())
  {
    v18 = sub_1000727E4(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  v74 = v3;
  *(v3 + 16) = v18;
  v19 = (v3 + 16);
  v19[2] = a2;
  v19[3] = a1;
  v19[1] = v81;
  v20 = a2[3];
  v19[4] = a2[2];
  v19[5] = v20;
  v21 = a2[5];
  v19[6] = a2[4];
  v19[7] = v21;
  v22 = a2[14];
  v19[8] = a2[13];
  v19[9] = v22;
  v23 = a2[12];
  v19[10] = a2[11];
  v19[11] = v23;
  v24 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_contact);
  v68 = v19;
  v19[12] = v24;
  v25 = *(a2 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_role);
  KeyPath = swift_getKeyPath();
  v57 = swift_getKeyPath();

  v62 = a2;
  v26 = v25;

  v27 = v24;

  sub_1000C6094();

  LODWORD(v22) = v83[0];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v28 = v83[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LODWORD(v20) = v83[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v29 = _swiftEmptyArrayStorage;
  if ((v22 & v20 & ((~v28 & 0xC) == 0)) != 0)
  {
    v29 = &off_1001076E8;
  }

  if ((v83[0] & 0xFE) == 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = &off_1001076C0;
  }

  if (!v25 || (swift_getKeyPath(), swift_getKeyPath(), , sub_1000C6094(), , , , v83[0] != 2))
  {

    v30 = _swiftEmptyArrayStorage;
  }

  v31 = v74;
  swift_beginAccess();
  v82 = v30;
  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v62;
  sub_1000C6094();

  if (v83[0] == 3)
  {
    v33 = 1;
  }

  else
  {
    v33 = v83[0];
  }

  swift_beginAccess();
  LOBYTE(v82) = v33;
  sub_1000C6054();
  swift_endAccess();
  v34 = 0;
  v35 = 0;
  if (v26 && !v33)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v83[0] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      v35 = v83[0];
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }
  }

  swift_beginAccess();
  LOBYTE(v82) = v35;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v82) = v34;
  sub_1000C6054();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v36 = v83[0];
  swift_beginAccess();
  LOBYTE(v82) = v36;
  sub_1000C6054();
  swift_endAccess();
  if (v26 && (*(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v37 = v83[0];
  }

  else
  {
    v37 = 0;
  }

  swift_beginAccess();
  LOBYTE(v82) = v37 & 1;
  sub_1000C6054();
  swift_endAccess();
  if (v26)
  {
    v38 = *(v32 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing18PersonRowViewModel_isMe);
  }

  else
  {
    v38 = 0;
  }

  swift_beginAccess();
  LOBYTE(v82) = v38;
  sub_1000C6054();
  swift_endAccess();
  swift_beginAccess();
  sub_10000FEB8(&qword_100117660, &qword_1000CEE00);
  v39 = v59;
  sub_1000C6064();
  swift_endAccess();
  sub_10001E490(&qword_100117910, &qword_1001177B8, &qword_1000CEF58, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100042288();
  v40 = v61;
  sub_1000C6114();
  v60[1](v39, v40);
  swift_beginAccess();

  v62 = sub_10000FEB8(&qword_100117640, &unk_1000CC8B0);
  v41 = v76;
  sub_1000C6064();
  swift_endAccess();

  v61 = sub_10001E490(&unk_100116F20, &unk_100116EE0, &unk_1000CD2A0, &protocol conformance descriptor for Published<A>.Publisher);
  v42 = v77;
  sub_1000C6114();
  v43 = *(v80 + 8);
  v59 = (v80 + 8);
  v60 = v43;
  (v43)(v41, v42);
  sub_10001E490(&qword_1001187E8, &qword_1001187D0, &qword_1000D1150, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  KeyPath = sub_10001E490(&qword_100117890, &qword_100117760, &qword_1000CEF00, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v44 = v65;
  sub_1000C5F84();
  v45 = [objc_opt_self() mainRunLoop];
  *v83 = v45;
  v46 = sub_1000C71A4();
  v47 = v72;
  (*(*(v46 - 8) + 56))(v72, 1, 1, v46);
  sub_10007D210();
  sub_10001E490(&qword_1001187F0, &qword_1001187D8, &qword_1000D1158, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_10001E2AC();
  v48 = v69;
  v49 = v67;
  sub_1000C6104();
  sub_10001E314(v47);

  (*(v66 + 8))(v44, v49);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1000B4D4C;
  *(v51 + 24) = v50;
  sub_10001E490(qword_1001187F8, &qword_1001187E0, &qword_1000D1160, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v52 = v71;
  sub_1000C6124();

  (*(v70 + 8))(v48, v52);
  swift_beginAccess();
  sub_1000C6004();
  swift_endAccess();

  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v53 = v78;
  sub_1000C6114();
  v54 = v60;
  (v60)(v41, v42);
  swift_beginAccess();
  sub_1000C6064();
  swift_endAccess();
  v55 = v79;
  sub_1000C6134();
  (*(v73 + 8))(v53, v55);
  (*(v80 + 16))(v75, v41, v42);
  swift_beginAccess();
  sub_1000C6074();
  swift_endAccess();
  (v54)(v41, v42);
  return v31;
}

uint64_t sub_1000B4D14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B4D54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B4E74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_1000B4EBC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000B4F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1000383C8();

  v6 = sub_1000C68D4();
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() labelColor];
  sub_1000C6A64();
  v12 = sub_1000C6884();
  v14 = v13;
  v23 = v15;
  v17 = v16;

  sub_1000500D8(v6, v8, v10 & 1);

  if (a3 != 2 && a3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
  }

  else
  {
    sub_1000C6A84();
    sub_1000C6A04();
    swift_getKeyPath();
    sub_10000FEB8(&qword_100117D28, &unk_1000CFD10);
    sub_100050F24();
    sub_1000C6624();
    v18 = a1;
    v19 = a2;
    v20 = v26;
    v21 = v27;
    sub_1000B804C(a1, a2, v26);
  }

  sub_100050DE0(v12, v14, v23 & 1);

  sub_1000B8034(v18, v19, v20, v21);
  sub_1000B8094(v18, v19, v20, v21);
  *a4 = v12;
  *(a4 + 8) = v14;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v17;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v18;
  *(a4 + 56) = v19;
  *(a4 + 64) = v20;
  *(a4 + 72) = v21;
  sub_1000B8094(v18, v19, v20, v21);
  sub_1000500D8(v12, v14, v23 & 1);
}

double sub_1000B5208@<D0>(uint64_t a6@<X8>)
{
  v8 = *v6;
  v9 = *(v6 + 8);
  v10 = *(v6 + 16);
  v11 = sub_1000C65C4();
  v22 = 1;
  sub_1000B4F74(v8, v9, v10, &v17);
  v24 = v18;
  v25 = v19;
  v26[0] = v20[0];
  *(v26 + 9) = *(v20 + 9);
  v23 = v17;
  v27[2] = v19;
  v28[0] = v20[0];
  *(v28 + 9) = *(v20 + 9);
  v27[0] = v17;
  v27[1] = v18;
  sub_100017574(&v23, v16, &qword_100119F90, &qword_1000D5CC8);
  sub_100010F24(v27, &qword_100119F90, &qword_1000D5CC8);
  *&v21[7] = v23;
  *&v21[64] = *(v26 + 9);
  *&v21[55] = v26[0];
  *&v21[39] = v25;
  *&v21[23] = v24;
  v12 = *v21;
  *(a6 + 33) = *&v21[16];
  v13 = *&v21[48];
  *(a6 + 49) = *&v21[32];
  *(a6 + 65) = v13;
  result = *&v21[64];
  *(a6 + 81) = *&v21[64];
  v15 = v22;
  *a6 = v11;
  *(a6 + 8) = 0;
  *(a6 + 16) = v15;
  *(a6 + 17) = v12;
  return result;
}

uint64_t sub_1000B5340@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v123 = sub_10000FEB8(&qword_100119E80, &qword_1000D5AD0);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v117 = &v111 - v3;
  v4 = sub_10000FEB8(&qword_100119E88, &qword_1000D5AD8);
  v5 = __chkstk_darwin(v4 - 8);
  v125 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v111 - v7;
  v8 = sub_10000FEB8(&qword_100119E90, &qword_1000D5AE0);
  v9 = __chkstk_darwin(v8 - 8);
  v124 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v134 = &v111 - v11;
  v121 = sub_10000FEB8(&qword_100119E98, &qword_1000D5AE8);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v111 - v12;
  v13 = sub_10000FEB8(&qword_100119EA0, &qword_1000D5AF0);
  v14 = __chkstk_darwin(v13 - 8);
  v133 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v132 = &v111 - v16;
  v17 = sub_10000FEB8(&qword_100119EA8, &qword_1000D5AF8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v118 = &v111 - v19;
  v20 = sub_10000FEB8(&qword_100119EB0, &qword_1000D5B00);
  v21 = __chkstk_darwin(v20 - 8);
  v131 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v137 = &v111 - v23;
  v24 = sub_10000FEB8(&qword_100119EB8, &qword_1000D5B08);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v111 - v26);
  v28 = sub_10000FEB8(&qword_100119EC0, &unk_1000D5B10);
  v29 = __chkstk_darwin(v28 - 8);
  v130 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = a1[2];
  v32 = *(v31 + 16);
  v135 = a1;
  v136 = &v111 - v33;
  v127 = v18;
  v128 = v17;
  if (v32)
  {
    v114 = v25;
    v115 = v27;
    v116 = v24;
    sub_1000C65D4();
    v110 = 256;
    v109 = 0;
    v34 = sub_1000C68C4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v138 = *(a1 + 3);
    v139 = *(a1 + 40);
    sub_10000FEB8(&qword_100117138, &unk_1000CE1D0);
    v41 = sub_1000C6B84();
    v42 = v141[0];
    v44 = a1[6];
    v43 = a1[7];
    if (v44)
    {
      v41 = swift_allocObject();
      v45 = v41;
      *(v41 + 16) = v44;
      *(v41 + 24) = v43;
      v46 = sub_1000B7904;
    }

    else
    {
      v46 = 0;
      v45 = 0;
    }

    v112 = v46;
    v113 = &v111;
    v141[0] = v42;
    *&v138 = v34;
    *(&v138 + 1) = v36;
    v47 = v38 & 1;
    v139 = v47;
    v140 = v40;
    __chkstk_darwin(v41);
    *(&v111 - 6) = v31;
    *(&v111 - 5) = v48;
    a1 = v135;
    *(&v111 - 4) = v45;
    *(&v111 - 3) = a1;
    v109 = v141;
    sub_1000229B4(v44, v43);
    sub_100050DE0(v34, v36, v47);

    sub_10000FEB8(&qword_100119EC8, &qword_1000D5B20);
    sub_1000B74A4(&qword_100119ED0, &qword_100119EC8, &qword_1000D5B20);
    v49 = v115;
    sub_1000C6C04();
    sub_1000500D8(v34, v36, v47);

    sub_100010800(v112, v45);
    v50 = v114;
    v51 = v136;
    v52 = v116;
    (*(v114 + 32))(v136, v49, v116);
    (*(v50 + 56))(v51, 0, 1, v52);
    v18 = v127;
    v17 = v128;
  }

  else
  {
    (*(v25 + 56))();
  }

  v53 = a1[8];
  if (*(v53 + 16))
  {
    sub_1000C65D4();
    v110 = 256;
    v109 = 0;
    v54 = sub_1000C68C4();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v138 = *(a1 + 9);
    v139 = *(a1 + 88);
    sub_10000FEB8(&qword_100117140, &qword_1000D5B40);
    v61 = sub_1000C6B84();
    v62 = a1;
    v63 = v141[0];
    v64 = v62[12];
    v65 = v62[13];
    if (v64)
    {
      v61 = swift_allocObject();
      v66 = v61;
      *(v61 + 16) = v64;
      *(v61 + 24) = v65;
      v67 = sub_1000B78D8;
    }

    else
    {
      v67 = 0;
      v66 = 0;
    }

    v115 = v67;
    v116 = &v111;
    v141[0] = v63;
    *&v138 = v54;
    *(&v138 + 1) = v56;
    v70 = v58 & 1;
    v139 = v70;
    v140 = v60;
    __chkstk_darwin(v61);
    *(&v111 - 6) = v53;
    *(&v111 - 5) = v71;
    a1 = v135;
    *(&v111 - 4) = v66;
    *(&v111 - 3) = a1;
    v109 = v141;
    sub_1000229B4(v64, v65);
    sub_100050DE0(v54, v56, v70);

    sub_10000FEB8(&qword_100119EF8, &qword_1000D5B48);
    sub_1000B74A4(&qword_100119F00, &qword_100119EF8, &qword_1000D5B48);
    v72 = v118;
    sub_1000C6C04();
    sub_1000500D8(v54, v56, v70);

    sub_100010800(v115, v66);
    v18 = v127;
    v17 = v128;
    v69 = v137;
    (*(v127 + 32))(v137, v72, v128);
    v68 = 0;
  }

  else
  {
    v68 = 1;
    v69 = v137;
  }

  v73 = 1;
  (*(v18 + 56))(v69, v68, 1, v17);
  v74 = a1[14];
  if (*(v74 + 16))
  {
    sub_1000C65D4();
    v110 = 256;
    v109 = 0;
    v75 = sub_1000C68C4();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = a1[16];
    v84 = a1[17];
    if (v83)
    {
      v75 = swift_allocObject();
      v85 = v75;
      *(v75 + 16) = v83;
      *(v75 + 24) = v84;
      v86 = sub_1000B78AC;
    }

    else
    {
      v86 = 0;
      v85 = 0;
    }

    v128 = &v111;
    v141[0] = *(a1 + 120);
    *&v138 = v76;
    *(&v138 + 1) = v78;
    v90 = v80 & 1;
    v139 = v90;
    v140 = v82;
    __chkstk_darwin(v75);
    *(&v111 - 6) = v74;
    *(&v111 - 5) = v86;
    v91 = v135;
    *(&v111 - 4) = v85;
    *(&v111 - 3) = v91;
    v109 = v141;
    sub_1000229B4(v83, v84);
    sub_100050DE0(v76, v78, v90);

    sub_10000FEB8(&qword_100119F08, &qword_1000D5B50);
    sub_1000B74A4(&qword_100119F10, &qword_100119F08, &qword_1000D5B50);
    v92 = v119;
    a1 = v135;
    sub_1000C6C04();
    sub_1000500D8(v76, v78, v90);

    sub_100010800(v86, v85);
    v89 = v120;
    v87 = v132;
    v88 = v121;
    (*(v120 + 32))(v132, v92, v121);
    v73 = 0;
  }

  else
  {
    v87 = v132;
    v88 = v121;
    v89 = v120;
  }

  v93 = 1;
  (*(v89 + 56))(v87, v73, 1, v88);
  v94 = sub_10000FEB8(&qword_100119F18, &qword_1000D5B58);
  (*(*(v94 - 8) + 56))(v134, 1, 1, v94);
  v138 = *(a1 + 14);
  v139 = *(a1 + 240);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  v95 = v123;
  v96 = v122;
  if (v141[0] != 1)
  {
    goto LABEL_24;
  }

  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    if (v138)
    {
      __chkstk_darwin(v97);
      v109 = a1;
      sub_10000FEB8(&qword_100119F28, &qword_1000D5BB8);
      sub_1000B764C();
      v98 = v117;
      sub_1000C6C14();
      (*(v96 + 32))(v129, v98, v95);
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }

LABEL_24:
    v99 = v129;
    (*(v96 + 56))(v129, v93, 1, v95);
    v100 = v130;
    sub_100017574(v136, v130, &qword_100119EC0, &unk_1000D5B10);
    v101 = v131;
    sub_100017574(v137, v131, &qword_100119EB0, &qword_1000D5B00);
    v102 = v133;
    sub_100017574(v87, v133, &qword_100119EA0, &qword_1000D5AF0);
    v103 = v134;
    v104 = v124;
    sub_100017574(v134, v124, &qword_100119E90, &qword_1000D5AE0);
    v105 = v125;
    sub_100017574(v99, v125, &qword_100119E88, &qword_1000D5AD8);
    v106 = v126;
    sub_100017574(v100, v126, &qword_100119EC0, &unk_1000D5B10);
    v107 = sub_10000FEB8(&qword_100119F20, &qword_1000D5B68);
    sub_100017574(v101, v106 + v107[12], &qword_100119EB0, &qword_1000D5B00);
    sub_100017574(v102, v106 + v107[16], &qword_100119EA0, &qword_1000D5AF0);
    sub_100017574(v104, v106 + v107[20], &qword_100119E90, &qword_1000D5AE0);
    sub_100017574(v105, v106 + v107[24], &qword_100119E88, &qword_1000D5AD8);
    sub_100010F24(v99, &qword_100119E88, &qword_1000D5AD8);
    sub_100010F24(v103, &qword_100119E90, &qword_1000D5AE0);
    sub_100010F24(v132, &qword_100119EA0, &qword_1000D5AF0);
    sub_100010F24(v137, &qword_100119EB0, &qword_1000D5B00);
    sub_100010F24(v136, &qword_100119EC0, &unk_1000D5B10);
    sub_100010F24(v105, &qword_100119E88, &qword_1000D5AD8);
    sub_100010F24(v104, &qword_100119E90, &qword_1000D5AE0);
    sub_100010F24(v133, &qword_100119EA0, &qword_1000D5AF0);
    sub_100010F24(v131, &qword_100119EB0, &qword_1000D5B00);
    return sub_100010F24(v130, &qword_100119EC0, &unk_1000D5B10);
  }

  type metadata accessor for SharingModel(0);
  sub_1000B7B20(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  result = sub_1000C63F4();
  __break(1u);
  return result;
}

uint64_t sub_1000B63B8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  sub_1000229B4(a2, a3);
  sub_10000FEB8(&qword_100119F70, &unk_1000D5C20);
  sub_1000C6634();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_1000C6B34();
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  result = sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  v14 = (a6 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1000B81D0;
  v14[2] = v12;
  return result;
}

uint64_t sub_1000B65A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  sub_1000229B4(a2, a3);
  sub_10000FEB8(&qword_100119F70, &unk_1000D5C20);
  sub_1000C6634();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_1000C6B34();
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  result = sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  v14 = (a6 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1000B81D0;
  v14[2] = v12;
  return result;
}

uint64_t sub_1000B6798@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v9 = a1 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = v9;
  sub_1000229B4(a2, a3);
  sub_10000FEB8(&qword_100119F70, &unk_1000D5C20);
  sub_1000C6634();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_1000C6B34();
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  result = sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  v14 = (a6 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1000B81D0;
  v14[2] = v12;
  return result;
}

uint64_t sub_1000B698C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(uint64_t))
{
  v6 = a3;
  v7 = sub_1000C6634();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a4(a1);
  v13 = v6 != a1;
  if (v6 == 2)
  {
    v13 = 2;
  }

  v15[1] = v11;
  v15[2] = v12;
  v16 = v13;
  sub_1000C63E4();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  sub_1000C6924();
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000B6B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *(a1 + 272);
  v15 = v14;
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  sub_1000C6B04();
  sub_1000C6B54();
  v12 = *(a1 + 176);
  v13 = *(a1 + 192);
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v14;
  v6 = (a2 + *(sub_10000FEB8(&qword_100119F50, &qword_1000D5BC8) + 36));
  *v6 = KeyPath;
  v6[1] = sub_100050DD8;
  v6[2] = v5;
  v12 = v15;
  sub_1000C6AE4();
  v7 = swift_allocObject();
  memcpy((v7 + 16), a1, 0x120uLL);
  v8 = a2 + *(sub_10000FEB8(&qword_100119F40, &qword_1000D5BC0) + 36);
  *v8 = v14;
  *(v8 + 8) = sub_1000B794C;
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  memcpy((v9 + 16), a1, 0x120uLL);
  v10 = (a2 + *(sub_10000FEB8(&qword_100119F28, &qword_1000D5BB8) + 36));
  *v10 = sub_1000B7A88;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_10005051C(a1, &v12);
  return sub_10005051C(a1, &v12);
}

uint64_t sub_1000B6D30@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  result = sub_1000C68C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000B6DB0(uint64_t a1)
{
  sub_10000FEB8(&qword_100117150, &qword_1000D5B60);
  sub_1000C6B84();
  sub_10000FEB8(&qword_100118A30, &unk_1000D1920);
  return sub_1000C6AF4();
}

uint64_t sub_1000B6E3C()
{
  v1 = sub_1000C63B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000FEB8(&qword_100119E60, &qword_1000D5AC0);
  __chkstk_darwin(v5);
  v7 = &v10[-1] - v6;
  memcpy(v10, v0, 0x120uLL);
  sub_1000B5340(v10, v7);
  sub_1000C63A4();
  sub_1000B6FD4();
  sub_1000C69F4();
  (*(v2 + 8))(v4, v1);
  return sub_100010F24(v7, &qword_100119E60, &qword_1000D5AC0);
}

unint64_t sub_1000B6FD4()
{
  result = qword_100119E68;
  if (!qword_100119E68)
  {
    sub_100010624(&qword_100119E60, &qword_1000D5AC0);
    sub_10001E490(&qword_100119E70, &qword_100119E78, &qword_1000D5AC8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119E68);
  }

  return result;
}

uint64_t sub_1000B7084(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char *a5)
{
  v8 = *a5;
  v12 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  memcpy((v9 + 32), a4, 0x120uLL);
  *(v9 + 320) = v8;

  sub_1000229B4(a2, a3);
  sub_10005051C(a4, v11);
  sub_10000FEB8(&qword_1001174A0, &qword_1000CE888);
  sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  sub_10001E490(&qword_100119F68, &qword_1001174A0, &qword_1000CE888, &protocol conformance descriptor for [A]);
  sub_1000B7510();
  sub_100042514();
  return sub_1000C6BF4();
}

uint64_t sub_1000B71DC(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char *a5)
{
  v8 = *a5;
  v12 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  memcpy((v9 + 32), a4, 0x120uLL);
  *(v9 + 320) = v8;

  sub_1000229B4(a2, a3);
  sub_10005051C(a4, v11);
  sub_10000FEB8(&qword_100117488, &qword_1000CE880);
  sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  sub_10001E490(&qword_100119F80, &qword_100117488, &qword_1000CE880, &protocol conformance descriptor for [A]);
  sub_1000B7510();
  sub_1000422DC();
  return sub_1000C6BF4();
}

uint64_t sub_1000B7334(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, char *a5)
{
  v8 = *a5;
  v12 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  memcpy((v9 + 32), a4, 0x120uLL);
  *(v9 + 320) = v8;

  sub_1000229B4(a2, a3);
  sub_10005051C(a4, v11);
  sub_10000FEB8(&qword_100117470, &qword_1000D5C30);
  sub_10000FEB8(&qword_100119EE0, &qword_1000D5B28);
  sub_10001E490(&qword_100119F88, &qword_100117470, &qword_1000D5C30, &protocol conformance descriptor for [A]);
  sub_1000B7510();
  sub_1000423F8();
  return sub_1000C6BF4();
}

uint64_t sub_1000B74A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010624(a2, a3);
    sub_1000B7510();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B7510()
{
  result = qword_100119ED8;
  if (!qword_100119ED8)
  {
    sub_100010624(&qword_100119EE0, &qword_1000D5B28);
    sub_10001E490(&qword_100119EE8, &qword_100119EF0, &unk_1000D5B30, &protocol conformance descriptor for Button<A>);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119ED8);
  }

  return result;
}

unint64_t sub_1000B764C()
{
  result = qword_100119F30;
  if (!qword_100119F30)
  {
    sub_100010624(&qword_100119F28, &qword_1000D5BB8);
    sub_1000B76D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F30);
  }

  return result;
}

unint64_t sub_1000B76D8()
{
  result = qword_100119F38;
  if (!qword_100119F38)
  {
    sub_100010624(&qword_100119F40, &qword_1000D5BC0);
    sub_1000B7790();
    sub_10001E490(&qword_100119F58, &qword_100119F60, &unk_1000D5BD8, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F38);
  }

  return result;
}

unint64_t sub_1000B7790()
{
  result = qword_100119F48;
  if (!qword_100119F48)
  {
    sub_100010624(&qword_100119F50, &qword_1000D5BC8);
    sub_10001E490(&qword_100119AA8, &qword_100119A90, &qword_1000D5BD0, &protocol conformance descriptor for Toggle<A>);
    sub_10001E490(&qword_100117CC8, &qword_100117CD0, &qword_1000CFDD0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F48);
  }

  return result;
}

uint64_t sub_1000B7874()
{

  return _swift_deallocObject(v0, 32, 7);
}

_BYTE *sub_1000B794C(_BYTE *result)
{
  v2 = *(v1 + 144);
  if (v2)
  {
    return v2((*result & 1) == 0);
  }

  return result;
}

uint64_t sub_1000B7988()
{

  if (v0[8])
  {
  }

  if (v0[14])
  {
  }

  if (v0[18])
  {
  }

  if (v0[22])
  {
  }

  return _swift_deallocObject(v0, 304, 7);
}

unint64_t sub_1000B7ACC()
{
  result = qword_100119F78;
  if (!qword_100119F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119F78);
  }

  return result;
}

uint64_t sub_1000B7B20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B7B9C()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  if (v1)
  {
    return v1(&v3);
  }

  return result;
}

uint64_t sub_1000B7C24()
{
  if (v0[2])
  {
  }

  if (v0[10])
  {
  }

  if (v0[16])
  {
  }

  if (v0[20])
  {
  }

  if (v0[24])
  {
  }

  return _swift_deallocObject(v0, 321, 7);
}

uint64_t sub_1000B7D48()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000B7D88(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  v5 = sub_1000C6634();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  LOBYTE(a3) = *a3;
  v11[1] = sub_10003D43C(a1);
  v11[2] = v9;
  v12 = (a1 ^ a3) & 1;
  sub_1000C63E4();
  sub_1000B7ACC();
  sub_1000B7B20(&qword_100119AB0, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  sub_1000C6924();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000B7F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000B7F4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B7F9C()
{
  sub_100010624(&qword_100119E60, &qword_1000D5AC0);
  sub_1000C63B4();
  sub_1000B6FD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B8034(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000B804C(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000B804C(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t sub_1000B8094(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000B80AC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000B80AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

unint64_t sub_1000B8150()
{
  result = qword_100119FA8;
  if (!qword_100119FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119FA8);
  }

  return result;
}

uint64_t sub_1000B81D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "Board";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "presentComposeMessage";
      v4 = 0xD000000000000016;
    }

    else
    {
      v5 = "presentComposeCopyLink";
      v4 = 0xD000000000000018;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3)
    {
      v5 = "presentComposeMail";
    }

    else
    {
      v5 = "Board";
    }
  }

  if (a2 > 1u)
  {
    v2 = "presentComposeMessage";
    v6 = "presentComposeCopyLink";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = 0xD000000000000018;
    }
  }

  else
  {
    v6 = "presentComposeMail";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000015;
    }

    else
    {
      v8 = 0xD000000000000012;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1000C73A4();
  }

  return v10 & 1;
}

uint64_t sub_1000B82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100017574(a3, v22 - v9, &qword_1001164E0, &unk_1000CDD50);
  v11 = sub_1000C6F44();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100010F24(v10, &qword_1001164E0, &unk_1000CDD50);
  }

  else
  {
    sub_1000C6F34();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000C6ED4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000C6DB4() + 32;

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

      sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

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

  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000B85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100017574(a3, v22 - v9, &qword_1001164E0, &unk_1000CDD50);
  v11 = sub_1000C6F44();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100010F24(v10, &qword_1001164E0, &unk_1000CDD50);
  }

  else
  {
    sub_1000C6F34();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000C6ED4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000C6DB4() + 32;

      sub_10000FEB8(&unk_10011A240, &unk_1000D62A0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

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

  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
  sub_10000FEB8(&unk_10011A240, &unk_1000D62A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000B8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100017574(a3, v25 - v10, &qword_1001164E0, &unk_1000CDD50);
  v12 = sub_1000C6F44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100010F24(v11, &qword_1001164E0, &unk_1000CDD50);
  }

  else
  {
    sub_1000C6F34();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000C6ED4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000C6DB4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1000B8B8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = [*(v1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing22ActivityItemDataSource_share) URL];
  if (v9)
  {
    v10 = v9;
    sub_1000C5D44();

    v11 = sub_1000C5D84();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = sub_1000C5D84();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_10000FF00(v6, v8);
  sub_1000C5D84();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    result = sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v11;
    v14 = sub_100039C00(a1);
    return (*(v12 + 32))(v14, v8, v11);
  }

  return result;
}

Swift::Int sub_1000B8EDC()
{
  sub_1000C7464();
  sub_1000C6DD4();

  return sub_1000C7494();
}

uint64_t sub_1000B8F94(uint64_t a1)
{
  sub_1000C6DD4();
}

Swift::Int sub_1000B9038()
{
  sub_1000C7464();
  sub_1000C6DD4();

  return sub_1000C7494();
}

unint64_t sub_1000B90EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C01A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000B911C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "Board";
  v4 = "presentComposeMessage";
  v5 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000018;
    v4 = "presentComposeCopyLink";
  }

  if (*v1)
  {
    v2 = 0xD000000000000015;
    v3 = "presentComposeMail";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

id sub_1000B9194()
{
  v0 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_1000C5D84();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  sub_1000C5D74();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    v11 = sub_1000C73C4();
    (*(v4 + 8))(v9, v3);

    return v11;
  }

  return result;
}

uint64_t sub_1000B9370@<X0>(uint64_t *a1@<X8>)
{
  v15 = a1;
  v1 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  sub_10000FEB8(&unk_10011A220, &qword_1000D47E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000CB170;
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_1000C7244(38);

  v16 = 0xD000000000000024;
  v17 = 0x80000001000DDC10;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v18._countAndFlagsBits = sub_1000C6D94();
  sub_1000C6E04(v18);

  v6 = v16;
  v7 = v17;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000382F4();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1000C5DD4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1000C6094();

  v8 = sub_1000C5D84();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    result = sub_100010F24(v4, &qword_100116260, &qword_1000CD940);
    v11 = v15;
    *v15 = 0u;
    *(v11 + 1) = 0u;
  }

  else
  {
    v12 = v15;
    v15[3] = v8;
    v13 = sub_100039C00(v12);
    return (*(v9 + 32))(v13, v4, v8);
  }

  return result;
}

id sub_1000B9664(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *__return_ptr))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  a5(v18);

  v11 = v19;
  if (v19)
  {
    v12 = sub_100011818(v18, v19);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = sub_1000C7394();
    (*(v13 + 8))(v15, v11);
    sub_100010544(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id sub_1000B97C8(void *a1)
{
  if (!a1)
  {
    return [objc_allocWithZone(NSOperation) init];
  }

  type metadata accessor for UIActivityTransportViewController();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return [objc_allocWithZone(NSOperation) init];
  }

  v4 = v3;
  v5 = a1;
  v6 = [v4 activity];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v7;
    v8[4] = v1;
    v15[4] = sub_1000BFE18;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_10008EFD4;
    v15[3] = &unk_10010BAA8;
    v9 = _Block_copy(v15);
    v10 = objc_opt_self();
    v11 = v1;
    v12 = [v10 blockOperationWithBlock:v9];
    _Block_release(v9);

    return v12;
  }

  else
  {
    v14 = [objc_allocWithZone(NSOperation) init];

    return v14;
  }
}

void sub_1000B9948(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1000C5F74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v10 - 8);
  v12 = &v56 - v11;
  v13 = a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport;
  v14 = *(a1 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport);
  if (v14)
  {
    v15 = *(v13 + 8);

    v14(a2);
    sub_100010800(v14, v15);
  }

  v16 = dispatch_semaphore_create(0);
  v17 = sub_1000C6F44();
  v18 = *(v17 - 8);
  v60 = *(v18 + 56);
  v61 = v17;
  v59 = v18 + 56;
  v60(v12, 1, 1);
  v19 = sub_1000C6F14();
  v20 = a3;
  v21 = v16;
  v58 = v19;
  v22 = sub_1000C6F04();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = &protocol witness table for MainActor;
  v23[4] = v20;
  v23[5] = v21;
  sub_1000B8860(0, 0, v12, &unk_1000D60C8, v23);

  v62 = v21;
  sub_1000C7074();
  sub_1000C5F54();
  v24 = v20;
  v25 = sub_1000C5F64();
  v26 = sub_1000C6FD4();

  v27 = &OBJC_PROTOCOL___UIActivityItemSource;
  if (os_log_type_enabled(v25, v26))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v57 = v12;
    v30 = v7;
    v31 = v29;
    v69 = v29;
    *v28 = 136315138;
    v32 = *&v24[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 8];
    v33 = *&v24[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 16];
    v34 = *&v24[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 24];
    v35 = *&v24[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 32];
    v36 = v24[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 40];
    v63 = *&v24[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
    v64 = v32;
    v65 = v33;
    v66 = v34;
    v67 = v35;
    v68 = v36;
    sub_1000BFFF0(v63, v32, v33, v34, v35, v36);
    sub_10000FEB8(&qword_1001167F0, &qword_1000CC600);
    v37 = sub_1000C6D94();
    v39 = v6;
    v40 = sub_100071844(v37, v38, &v69);

    *(v28 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v25, v26, "UIActivityTransportView wait finished iosPrepareToShare, error: %s", v28, 0xCu);
    sub_100010544(v31);

    v41 = v39;
    v27 = &OBJC_PROTOCOL___UIActivityItemSource;
    (*(v30 + 8))(v9, v41);
    v12 = v57;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v42 = &v24[*&v27[2].cb];
  v43 = v42[40];
  if (v43 == 255)
  {
    goto LABEL_11;
  }

  v44 = *v42;
  v45 = *(v42 + 1);
  v46 = *(v42 + 2);
  v47 = *(v42 + 3);
  v48 = *(v42 + 4);
  v49 = objc_allocWithZone(NSError);
  sub_1000199B8(v44, v45, v46, v47, v48, v43);
  v50 = [v49 initWithDomain:CKErrorDomain code:1 userInfo:0];
  v51 = v50;
  if (v43 == 4)
  {

    if (!v46)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

  if (v43 == 1)
  {

    if (!v46)
    {
      __break(1u);
LABEL_11:

      return;
    }

LABEL_13:
    v51 = v46;
  }

  (v60)(v12, 1, 1, v61);
  v52 = v24;
  v53 = v51;
  v54 = sub_1000C6F04();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = &protocol witness table for MainActor;
  v55[4] = v52;
  v55[5] = v53;
  sub_1000B8860(0, 0, v12, &unk_1000D60D8, v55);

  sub_100099CE8(v44, v45, v46, v47, v48, v43);
}

uint64_t sub_1000B9E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v6 = sub_1000C5F74();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_1000C6F14();
  v5[21] = sub_1000C6F04();
  v8 = sub_1000C6ED4();
  v5[22] = v8;
  v5[23] = v7;

  return _swift_task_switch(sub_1000B9F44, v8, v7);
}

uint64_t sub_1000B9F44()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1000B9FE8;

  return sub_10006AE2C(v0 + 16);
}

uint64_t sub_1000B9FE8()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1000BA108, v3, v2);
}

uint64_t sub_1000BA108()
{
  v33 = v0;
  v1 = *(v0 + 128);

  v2 = &v1[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
  v3 = *&v1[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
  v4 = *&v1[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 8];
  v5 = *&v1[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 16];
  v6 = *&v1[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 24];
  v7 = *&v1[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error + 32];
  v8 = *(v0 + 41);
  v9 = *(v0 + 32);
  *v2 = *(v0 + 16);
  *(v2 + 1) = v9;
  v10 = v2[40];
  *(v2 + 25) = v8;
  sub_100099CE8(v3, v4, v5, v6, v7, v10);
  sub_1000C5F54();
  v11 = v1;
  v12 = sub_1000C5F64();
  v13 = sub_1000C6FD4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    v16 = v2[40];
    if (v16 == 255)
    {
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v17 = *(v2 + 4);
      v18 = *(v2 + 1);
      *(v0 + 64) = *v2;
      *(v0 + 80) = v18;
      *(v0 + 96) = v17;
      *(v0 + 104) = v16;
      sub_1000100B0();
      v19 = sub_1000C7404();
    }

    v25 = *(v0 + 152);
    v24 = *(v0 + 160);
    v26 = *(v0 + 144);
    *(v0 + 112) = v19;
    *(v0 + 120) = v20;
    sub_10000FEB8(&qword_100116310, &qword_1000CBBC0);
    v27 = sub_1000C6D94();
    v29 = sub_100071844(v27, v28, &v32);

    *(v14 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v12, v13, "UIActivityTransportView iosPrepareToShare (sharingURL attempt) error: %s", v14, 0xCu);
    sub_100010544(v15);

    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v23 = *(v0 + 144);

    (*(v22 + 8))(v21, v23);
  }

  sub_1000C7084();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000BA350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000C6F14();
  v5[4] = sub_1000C6F04();
  v7 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BA3E8, v7, v6);
}

uint64_t sub_1000BA3E8()
{
  v1 = *(v0 + 24);

  sub_100067838(3u, v1);
  v2 = *(v0 + 8);

  return v2();
}

id sub_1000BA4F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIActivityTransportView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BA5C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1000C6F14();
  v2[4] = sub_1000C6F04();
  v4 = sub_1000C6ED4();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1000BA658, v4, v3);
}

uint64_t sub_1000BA658(uint64_t a1)
{
  if (*(v1 + 16) < 1)
  {
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  *(v1 + 56) = **(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v1 + 96) - 2 > 3 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v1 + 97) == 2))
  {
    v2 = swift_task_alloc();
    *(v1 + 64) = v2;
    *v2 = v1;
    v2[1] = sub_1000BA848;
    a1 = 1000000000;

    return static Task<>.sleep(nanoseconds:)(a1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v3 = *(v1 + 98) - 3 < 2;
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t sub_1000BA848()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000BA96C;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000C0830;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000BA96C()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    goto LABEL_13;
  }

  *(v0 + 72) = v1;
  if (v1 < 2)
  {
    __break(1u);
LABEL_13:
    v3 = (v0 + 99);
    goto LABEL_9;
  }

  *(v0 + 80) = **(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  if (*(v0 + 96) - 2 > 3 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v0 + 97) == 2))
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1000BAB78;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }

  v3 = (v0 + 98);
LABEL_9:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v4 = *v3 - 3 < 2;
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1000BAB78()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000C07D8;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000BAC9C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000BAC9C(uint64_t a1)
{
  v2 = *(v1 + 72);
  if (v2 == 2)
  {
    v4 = (v1 + 99);
  }

  else
  {
    *(v1 + 72) = v2 - 1;
    if (v2 < 3)
    {
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(a1);
    }

    *(v1 + 80) = **(v1 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000C6094();

    if (*(v1 + 96) - 2 > 3 || (swift_getKeyPath(), swift_getKeyPath(), sub_1000C6094(), , , *(v1 + 97) == 2))
    {
      v3 = swift_task_alloc();
      *(v1 + 88) = v3;
      *v3 = v1;
      v3[1] = sub_1000BAB78;
      a1 = 1000000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v4 = (v1 + 98);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  v5 = *v4 - 3 < 2;
  v6 = *(v1 + 8);

  return v6(v5);
}

void sub_1000BAEAC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for ShareCopyLinkActivity(0)) init];
  sub_10000FEB8(&qword_100116370, &qword_1000CDD30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000CB170;
  *(v3 + 56) = type metadata accessor for UIActivityTransportView.Coordinator();
  sub_10000FEB8(&unk_10011A250, &unk_1000D62B0);
  sub_1000C6754();
  sub_10000FEB8(&qword_100116340, &unk_1000CDF80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CD0E0;
  *(v4 + 32) = v2;
  v5 = *v0;
  v6 = *(v0 + 144);
  v77[0] = *(v0 + 128);
  v77[1] = v6;
  v70 = v2;
  sub_10000FEB8(&unk_10011A210, &qword_1000D60B8);
  sub_1000C6BB4();
  v7 = aBlock;
  v8 = v72;
  v9 = v73;
  v10 = v74;
  v11 = type metadata accessor for UIActivityTransportViewController();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v12[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel] = v5;
  v14 = &v12[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion];
  *v14 = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;

  sub_1000229B4(v9, v10);
  isa = sub_1000C6E84().super.isa;

  sub_100010778(0, &qword_10011A260, UIActivity_ptr);
  v16 = sub_1000C6E84().super.isa;

  v78.receiver = v12;
  v78.super_class = v11;
  v17 = objc_msgSendSuper2(&v78, "initWithActivityItems:applicationActivities:", isa, v16);

  sub_100010800(v9, v10);

  v18 = v17;
  [v18 setAllowsEmbedding:1];
  [v18 setConfigureForCloudSharing:1];
  sub_10000FEB8(&qword_10011A268, &qword_1000D62C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000D5D80;
  *(v19 + 32) = UIActivityTypeAirDrop;
  *(v19 + 40) = UIActivityTypeAddToReadingList;
  v20 = UIActivityTypeCreateReminder;
  v21 = UIActivityTypeSaveToNotes;
  *(v19 + 48) = UIActivityTypeCreateReminder;
  *(v19 + 56) = v21;
  type metadata accessor for ActivityType(0);
  v22 = UIActivityTypeAirDrop;
  v23 = UIActivityTypeAddToReadingList;
  v24 = v20;
  v25 = v21;
  v26 = sub_1000C6E84().super.isa;

  [v18 setExcludedActivityTypes:v26];

  v27 = swift_allocObject();
  v28 = *(v1 + 112);
  *(v27 + 112) = *(v1 + 96);
  *(v27 + 128) = v28;
  v29 = *(v1 + 80);
  *(v27 + 80) = *(v1 + 64);
  *(v27 + 96) = v29;
  *(v27 + 192) = *(v1 + 176);
  v30 = *(v1 + 160);
  *(v27 + 160) = *(v1 + 144);
  *(v27 + 176) = v30;
  *(v27 + 144) = *(v1 + 128);
  v31 = *(v1 + 16);
  *(v27 + 16) = *v1;
  *(v27 + 32) = v31;
  v32 = *(v1 + 48);
  *(v27 + 48) = *(v1 + 32);
  *(v27 + 64) = v32;
  v33 = &v18[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport];
  v34 = *&v18[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport];
  v35 = *&v18[OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_userDidTapTransport + 8];
  *v33 = sub_1000C0354;
  v33[1] = v27;
  sub_1000C035C(v1, v77);
  sub_100010800(v34, v35);
  v36 = swift_allocObject();
  v37 = *(v1 + 144);
  *(v36 + 144) = *(v1 + 128);
  *(v36 + 160) = v37;
  *(v36 + 176) = *(v1 + 160);
  *(v36 + 192) = *(v1 + 176);
  v38 = *(v1 + 80);
  *(v36 + 80) = *(v1 + 64);
  *(v36 + 96) = v38;
  v39 = *(v1 + 112);
  *(v36 + 112) = *(v1 + 96);
  *(v36 + 128) = v39;
  v40 = *(v1 + 16);
  *(v36 + 16) = *v1;
  *(v36 + 32) = v40;
  v41 = *(v1 + 48);
  *(v36 + 48) = *(v1 + 32);
  *(v36 + 64) = v41;
  v75 = sub_1000C0450;
  v76 = v36;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_10009CD68;
  v74 = &unk_10010BCB8;
  v42 = _Block_copy(&aBlock);
  sub_1000C035C(v1, v77);

  [v18 setCompletionWithItemsHandler:v42];
  _Block_release(v42);

  v43 = qword_100119FB0;
  qword_100119FB0 = v18;
  v44 = v18;

  v45 = [v44 view];
  if (!v45)
  {
    goto LABEL_17;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = _swiftEmptyArrayStorage;
  v47 = (v46 + 16);
  sub_1000BECC4(v45, v46);

  swift_beginAccess();
  v48 = *v47;

  if (v48 >> 62)
  {
    v49 = sub_1000C72F4();
    if (!v49)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v49)
    {
      goto LABEL_13;
    }
  }

  if (v49 < 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  for (i = 0; i != v49; ++i)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      v51 = sub_1000C7254();
    }

    else
    {
      v51 = *(v48 + 8 * i + 32);
    }

    v52 = v51;
    [v51 setDirectionalLayoutMargins:{0.0, 20.0, 0.0, 20.0}];
    objc_opt_self();
    v53 = swift_dynamicCastObjCClass();
    if (v53)
    {
      v54 = v53;
      [v53 contentInset];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      [v54 setAlwaysBounceVertical:0];
      [v54 setScrollEnabled:0];
      [v54 setClipsToBounds:0];
      [v54 setContentInset:{v56, v58, -15.0, v60}];
    }
  }

LABEL_13:

  v61 = [objc_allocWithZone(UIViewController) init];
  v62 = [v61 view];
  if (!v62)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v63 = v62;
  [v62 setDirectionalLayoutMargins:{0.0, 0.0, -1.0, 0.0}];

  v64 = [v61 view];
  if (v64)
  {
    v65 = v64;
    [v64 setClipsToBounds:1];

    sub_100007B2C(v44);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1000D5D90;
    v67 = objc_opt_self();
    *(v66 + 32) = [v67 traitCollectionWithHorizontalSizeClass:1];
    *(v66 + 40) = [v67 traitCollectionWithVerticalSizeClass:1];
    sub_100010778(0, &qword_10011A270, UITraitCollection_ptr);
    v68 = sub_1000C6E84().super.isa;

    v69 = [v67 traitCollectionWithTraitsFromCollections:v68];

    [v61 setOverrideTraitCollection:v69 forChildViewController:v44];
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1000BB698(void *a1, uint64_t *a2)
{
  v4 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = [a1 activityType];
  if (!v7)
  {
    return;
  }

  v52 = v7;
  v8 = sub_1000C6D84();
  v10 = v9;
  if (v8 != sub_1000C6D84() || v10 != v11)
  {
    v13 = sub_1000C73A4();

    if (v13)
    {
LABEL_7:
      v14 = v52;

      return;
    }

    v15 = sub_1000C6D84();
    v17 = v16;
    if (v15 != sub_1000C6D84() || v17 != v18)
    {
      v20 = sub_1000C73A4();

      if (v20)
      {
        goto LABEL_7;
      }

      v21 = qword_100115F90;
      v22 = v52;
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_1000C6D84();
      v25 = v24;
      if (v23 == sub_1000C6D84() && v25 == v26)
      {
      }

      else
      {
        v27 = sub_1000C73A4();

        if ((v27 & 1) == 0)
        {
          type metadata accessor for GlobalPermissionViewModel(0);
          swift_allocObject();

          sub_100043774(v41);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000C6094();

          if (v53 == 1)
          {
            v42 = sub_1000C6F44();
            (*(*(v42 - 8) + 56))(v6, 1, 1, v42);
            sub_1000C6F14();
            sub_1000C035C(a2, &v53);
            v43 = sub_1000C6F04();
            v31 = swift_allocObject();
            *(v31 + 16) = v43;
            *(v31 + 24) = &protocol witness table for MainActor;
            v44 = *(a2 + 9);
            *(v31 + 160) = *(a2 + 8);
            *(v31 + 176) = v44;
            *(v31 + 192) = *(a2 + 10);
            *(v31 + 208) = *(a2 + 176);
            v45 = *(a2 + 5);
            *(v31 + 96) = *(a2 + 4);
            *(v31 + 112) = v45;
            v46 = *(a2 + 7);
            *(v31 + 128) = *(a2 + 6);
            *(v31 + 144) = v46;
            v47 = *(a2 + 1);
            *(v31 + 32) = *a2;
            *(v31 + 48) = v47;
            v48 = *(a2 + 3);
            *(v31 + 64) = *(a2 + 2);
            *(v31 + 80) = v48;
            v37 = &unk_1000D6320;
            goto LABEL_29;
          }

          v49 = a2[2];
          v50 = *(a2 + 24);
          v57 = a2[1];
          v53 = v57;
          v54 = v49;
          v55 = v50;
          v40 = 3;
LABEL_31:
          v56[15] = v40;
          sub_1000C0498(&v57, v56);

          sub_10000FEB8(&qword_10011A280, &qword_1000D6310);
          sub_1000C6B94();

          sub_1000C04F4(&v57);

          return;
        }
      }

      type metadata accessor for GlobalPermissionViewModel(0);
      swift_allocObject();

      sub_100043774(v28);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000C6094();

      if (v53 == 1)
      {
        v29 = sub_1000C6F44();
        (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
        sub_1000C6F14();
        sub_1000C035C(a2, &v53);
        v30 = sub_1000C6F04();
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = &protocol witness table for MainActor;
        v32 = *(a2 + 9);
        *(v31 + 160) = *(a2 + 8);
        *(v31 + 176) = v32;
        *(v31 + 192) = *(a2 + 10);
        *(v31 + 208) = *(a2 + 176);
        v33 = *(a2 + 5);
        *(v31 + 96) = *(a2 + 4);
        *(v31 + 112) = v33;
        v34 = *(a2 + 7);
        *(v31 + 128) = *(a2 + 6);
        *(v31 + 144) = v34;
        v35 = *(a2 + 1);
        *(v31 + 32) = *a2;
        *(v31 + 48) = v35;
        v36 = *(a2 + 3);
        *(v31 + 64) = *(a2 + 2);
        *(v31 + 80) = v36;
        v37 = &unk_1000D6330;
LABEL_29:
        sub_1000B8860(0, 0, v6, v37, v31);

        return;
      }

      v38 = a2[2];
      v39 = *(a2 + 24);
      v57 = a2[1];
      v53 = v57;
      v54 = v38;
      v55 = v39;
      v40 = 2;
      goto LABEL_31;
    }
  }
}

uint64_t sub_1000BBCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v5 = sub_1000C5D84();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000C6F14();
  v4[10] = sub_1000C6F04();
  v6 = swift_task_alloc();
  v4[11] = v6;
  *v6 = v4;
  v6[1] = sub_1000BBE2C;

  return sub_1000BA5C0(10);
}

uint64_t sub_1000BBE2C(char a1)
{
  *(*v1 + 96) = a1;

  v3 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BBF70, v3, v2);
}

uint64_t sub_1000BBF70()
{
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1000C6094();

    v5 = *(v3 + 48);
    if (v5(v4, 1, v2) == 1)
    {
      sub_100010F24(*(v0 + 40), &qword_100116260, &qword_1000CD940);
    }

    else
    {
      v8 = *(v0 + 56);
      v7 = *(v0 + 64);
      v9 = *(v0 + 48);
      v10 = *(v0 + 24);
      v11 = *(v0 + 32);
      (*(v8 + 32))(v7, *(v0 + 40), v9);
      (*(v8 + 16))(v11, v7, v9);
      (*(v8 + 56))(v11, 0, 1, v9);
      v12 = [objc_opt_self() generalPasteboard];
      sub_100017574(v11, v10, &qword_100116260, &qword_1000CD940);
      if (v5(v10, 1, v9) == 1)
      {
        v14 = 0;
      }

      else
      {
        v15 = *(v0 + 48);
        v16 = *(v0 + 56);
        v17 = *(v0 + 24);
        sub_1000C5D24(v13);
        v14 = v18;
        (*(v16 + 8))(v17, v15);
      }

      v20 = *(v0 + 56);
      v19 = *(v0 + 64);
      v21 = *(v0 + 48);
      v22 = *(v0 + 32);
      [v12 setURL:v14];

      sub_100010F24(v22, &qword_100116260, &qword_1000CD940);
      (*(v20 + 8))(v19, v21);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000816C();
      v23 = sub_1000077D8();
      if (v23)
      {
        [v23 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
    sub_100067838(3u, v6);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000BC2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = sub_1000C6F14();
  v4[10] = sub_1000C6F04();
  v5 = swift_task_alloc();
  v4[11] = v5;
  *v5 = v4;
  v5[1] = sub_1000BC364;

  return sub_10005E534(0, 0, 0);
}

uint64_t sub_1000BC364()
{

  v1 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BC4A0, v1, v0);
}

uint64_t sub_1000BC4A0()
{
  v1 = *(v0 + 64);

  v2 = *(v1 + 144);
  *(v0 + 16) = *(v1 + 128);
  *(v0 + 32) = v2;
  sub_10000FEB8(&unk_10011A210, &qword_1000D60B8);
  v3 = sub_1000C6B84();
  v4 = *(v0 + 48);
  if (v4)
  {
    v5 = *(v0 + 56);
    v4(v3);
    sub_100010800(v4, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1000BC54C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1)
  {
    return;
  }

  v6 = sub_1000C6D84();
  v8 = v7;
  if (v6 == sub_1000C6D84() && v8 == v9)
  {
    goto LABEL_22;
  }

  v11 = sub_1000C73A4();
  v25 = a1;

  if (v11)
  {
    goto LABEL_7;
  }

  v12 = sub_1000C6D84();
  v14 = v13;
  if (v12 == sub_1000C6D84() && v14 == v15)
  {

LABEL_22:

    goto LABEL_23;
  }

  v17 = sub_1000C73A4();

  if (v17)
  {
    goto LABEL_7;
  }

  v18 = qword_100115F90;
  v25 = v25;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_1000C6D84();
  v21 = v20;
  if (v19 == sub_1000C6D84() && v21 == v22)
  {

LABEL_23:

    return;
  }

  v23 = sub_1000C73A4();

  if ((v23 & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
LABEL_7:

    return;
  }

  sub_10000816C();
  v24 = sub_1000077D8();
  if (v24)
  {
    [v24 _dismissViewControllerWithError:0];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

void *sub_1000BC854@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for UIActivityTransportView.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_BRActivityTypeCopyShareLink];
  *v6 = 0xD00000000000002BLL;
  *(v6 + 1) = 0x80000001000DDCA0;
  v7 = &v5[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_error];
  *(v7 + 4) = 0;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[40] = -1;
  *&v5[OBJC_IVAR____TtCV37com_apple_CloudSharingUI_CloudSharing23UIActivityTransportView11Coordinator_sharingModel] = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_1000BC90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0778();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000BC970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0778();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000BC9D4(uint64_t a1)
{
  sub_1000C0778();
  sub_1000C6724();
  __break(1u);
}

uint64_t sub_1000BC9FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1000C6CB4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100010778(0, &qword_10011A200, OS_dispatch_queue_ptr);
  *v12 = sub_1000C7034();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = sub_1000C6CC4();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v15 = sub_1000C6F44();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v17 = a1;

    sub_1000B8860(0, 0, v8, &unk_1000D6048, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000BCC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000BCCB8, 0, 0);
}

uint64_t sub_1000BCCB8()
{
  v0[12] = *(v0[8] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel);
  v0[13] = sub_1000C6F14();
  v0[14] = sub_1000C6F04();
  v2 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BCD64, v2, v1);
}

uint64_t sub_1000BCD64()
{
  v1 = *(v0 + 96);

  *(v0 + 120) = *(v1 + 24);

  return _swift_task_switch(sub_1000BCDE0, 0, 0);
}

uint64_t sub_1000BCDE0(uint64_t a1)
{
  *(v1 + 128) = sub_1000C6F04();
  v3 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BCE6C, v3, v2);
}

uint64_t sub_1000BCE6C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  return _swift_task_switch(sub_1000BCF2C, 0, 0);
}

uint64_t sub_1000BCF2C()
{
  v1 = *(v0 + 88);
  v2 = sub_1000C5D84();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100010F24(v1, &qword_100116260, &qword_1000CD940);
  }

  else
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);
    sub_1000C5D04();

    (*(v3 + 8))(v1, v2);
    v7 = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion + 8);
    v8 = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion + 16);
    *(v0 + 16) = *(v6 + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController__transportPrepCompletion);
    *(v0 + 24) = v7;
    *(v0 + 32) = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v4;
    *(v0 + 48) = sub_1000BFDA8;
    *(v0 + 56) = v9;

    sub_10000FEB8(&unk_10011A210, &qword_1000D60B8);
    sub_1000C6B94();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000BD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v5[5] = sub_1000C6F14();
  v5[6] = sub_1000C6F04();
  v7 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BD590, v7, v6);
}

uint64_t sub_1000BD590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 56) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_1000C6E94();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v0 + 72) = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;

  return _swift_task_switch(sub_1000BD658, v6, v5);
}

uint64_t sub_1000BD658()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    sub_1000B0F08(v1);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1000BD778;

    return sub_10006D96C();
  }

  else
  {

    v4 = *(v0 + 56);
    if (v4)
    {
      v4[2](*(v0 + 56), 1);
      _Block_release(v4);
    }

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000BD778()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1000BD898, v3, v2);
}

uint64_t sub_1000BD898()
{

  v1 = *(v0 + 56);
  if (v1)
  {
    v1[2](*(v0 + 56), 1);
    _Block_release(v1);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BD930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1000C5F74();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_1000C6F14();
  v6[16] = sub_1000C6F04();
  v9 = sub_1000C6ED4();
  v6[17] = v9;
  v6[18] = v8;

  return _swift_task_switch(sub_1000BDA34, v9, v8);
}

uint64_t sub_1000BDA34()
{
  v0[19] = *(v0[9] + OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing33UIActivityTransportViewController_sharingModel);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1000BDAD4;

  return sub_100056B08();
}

uint64_t sub_1000BDAD4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1000BDC84;
  }

  else
  {
    v5 = sub_1000BDC10;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000BDC10()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000BDC84()
{
  v53 = v0;
  *(v0 + 64) = *(v0 + 168);
  swift_errorRetain();
  sub_10000FEB8(&qword_1001179B0, &qword_1000CBB80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    result = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
    v8 = result;
    v51 = v6;
    v50 = v3;
    if (v6 == 8)
    {
      v46 = v5;
      v48 = v4;
      if (!v3)
      {
        __break(1u);
        return result;
      }

      v9 = v3;

      v10 = v9;
      sub_1000C5F54();
      v8 = v10;

      v11 = sub_1000C5F64();
      v12 = sub_1000C6FD4();

      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 120);
      v15 = *(v0 + 96);
      v16 = *(v0 + 104);
      if (v13)
      {
        v42 = v2;
        v44 = *(v0 + 120);
        v17 = *(v0 + 80);
        v18 = *(v0 + 88);
        v40 = *(v0 + 96);
        v19 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v19 = 136315394;
        *(v19 + 4) = sub_100071844(v17, v18, &v52);
        *(v19 + 12) = 2080;
        v8 = v8;
        v20 = [v8 description];
        v21 = sub_1000C6D84();
        v22 = v1;
        v24 = v23;

        v25 = v21;
        v2 = v42;
        v26 = sub_100071844(v25, v24, &v52);
        v1 = v22;

        *(v19 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v11, v12, "mailComposeController %s delegate stopSharingError: %s", v19, 0x16u);
        swift_arrayDestroy();

        (*(v16 + 8))(v44, v40);
      }

      else
      {

        (*(v16 + 8))(v14, v15);
      }

      v5 = v46;
      v4 = v48;
    }

    else
    {

      sub_1000C5F54();

      v28 = sub_1000C5F64();
      v29 = sub_1000C6FD4();

      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 104);
      v32 = *(v0 + 112);
      v45 = *(v0 + 96);
      if (v30)
      {
        v49 = v4;
        v41 = *(v0 + 112);
        v33 = v1;
        v35 = *(v0 + 80);
        v34 = *(v0 + 88);
        v43 = v2;
        v36 = swift_slowAlloc();
        v47 = v5;
        v37 = swift_slowAlloc();
        v52 = v37;
        *v36 = 136315138;
        v38 = v35;
        v1 = v33;
        v39 = v34;
        v4 = v49;
        *(v36 + 4) = sub_100071844(v38, v39, &v52);
        _os_log_impl(&_mh_execute_header, v28, v29, "mailComposeController %s delegate unexpected internal error, returning CKError.internalError as best approximation", v36, 0xCu);
        sub_100010544(v37);
        v5 = v47;

        v2 = v43;

        (*(v31 + 8))(v41, v45);
      }

      else
      {

        (*(v31 + 8))(v32, v45);
      }
    }

    sub_100067838(3u, v8);
    sub_1000494BC(v1, v2, v50, v4, v5, v51);

    v27 = *(v0 + 8);
  }

  else
  {

    v27 = *(v0 + 8);
  }

  return v27();
}

void sub_1000BE148(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = [v3 activity];
  if (!v10)
  {
    return;
  }

  v19[0] = v10;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    if ([v11 respondsToSelector:"mailComposeController:didFinishWithResult:error:"])
    {
      v19[1] = a2;
      type metadata accessor for MFMailComposeResult(0);
      [v12 performSelector:"mailComposeController:didFinishWithResult:error:" withObject:a1 withObject:sub_1000C73C4()];
      swift_unknownObjectRelease();
    }

    if (a2 != 2 || a3)
    {
      v15 = sub_1000C6F44();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      sub_1000C6F14();
      v16 = v3;
      v17 = sub_1000C6F04();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = &protocol witness table for MainActor;
      *(v18 + 32) = v16;
      strcpy((v18 + 40), "didFinishWith");
      *(v18 + 54) = -4864;
      sub_1000B82F8(0, 0, v9, &unk_1000D6018, v18);
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000816C();
      v13 = sub_1000077D8();
      if (v13)
      {
        [v13 _dismissViewControllerWithError:0];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return;
    }

    return;
  }

  v14 = v19[0];
}

uint64_t sub_1000BE610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v5[5] = sub_1000C6F14();
  v5[6] = sub_1000C6F04();
  v7 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000BE6B0, v7, v6);
}

uint64_t sub_1000BE6B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 56) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_1000C6E94();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 64) = v3;
  v4 = *(v0 + 32);
  *(v0 + 72) = sub_1000C6F04();
  v6 = sub_1000C6ED4();
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;

  return _swift_task_switch(sub_1000BE778, v6, v5);
}

uint64_t sub_1000BE778()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    sub_1000B0F08(v1);
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1000BE898;

    return sub_10006D96C();
  }

  else
  {

    v4 = *(v0 + 56);
    if (v4)
    {
      v4[2](*(v0 + 56), 1);
      _Block_release(v4);
    }

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000BE898()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1000C0824, v3, v2);
}

void sub_1000BE9B8(uint64_t a1, void *a2)
{
  v5 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = [v2 activity];
  if (!v8)
  {
    return;
  }

  v17[0] = v8;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector:"messageComposeViewController:didFinishWithResult:"])
    {
      v17[1] = a2;
      type metadata accessor for MessageComposeResult(0);
      [v10 performSelector:"messageComposeViewController:didFinishWithResult:" withObject:a1 withObject:sub_1000C73C4()];
      swift_unknownObjectRelease();
    }

    if (a2 == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_10000816C();
        v11 = sub_1000077D8();
        if (v11)
        {
          [v11 _dismissViewControllerWithError:0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v13 = sub_1000C6F44();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
      sub_1000C6F14();
      v14 = v2;
      v15 = sub_1000C6F04();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = &protocol witness table for MainActor;
      *(v16 + 32) = v14;
      strcpy((v16 + 40), "didFinishWith");
      *(v16 + 54) = -4864;
      sub_1000B82F8(0, 0, v7, &unk_1000D5FC0, v16);
    }

    return;
  }

  v12 = v17[0];
}

uint64_t sub_1000BECC4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_1000C6E74();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000C6EC4();
    swift_endAccess();
    v5 = [v4 subviews];
    sub_100010778(0, &qword_10011A278, UIView_ptr);
    v6 = sub_1000C6E94();

    v7 = v6 >> 62 ? sub_1000C72F4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7 < 1)
    {
      return result;
    }

    v9 = [v4 subviews];
    v10 = sub_1000C6E94();

    if (v10 >> 62)
    {
      v4 = sub_1000C72F4();
      if (!v4)
      {
      }
    }

    else
    {
      v4 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = sub_1000C7254();
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(v10 + 8 * i + 32);
      }

      v13 = v12;
      v14 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1000BECC4(v12, a2);

      if (v14 == v4)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000C6EA4();
  }
}

uint64_t sub_1000BEEE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100017CBC;

  return sub_1000BD930(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BEFA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000BF0A0;

  return v6(a1);
}

uint64_t sub_1000BF0A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000BF198(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100017CBC;

  return v6();
}

uint64_t sub_1000BF280(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100011080;

  return v7();
}

uint64_t sub_1000BF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000FEB8(&qword_1001164E0, &unk_1000CDD50);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100017574(a3, v23 - v10, &qword_1001164E0, &unk_1000CDD50);
  v12 = sub_1000C6F44();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100010F24(v11, &qword_1001164E0, &unk_1000CDD50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000C6F34();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1000C6ED4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000C6DB4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);

    return v21;
  }

LABEL_8:
  sub_100010F24(a3, &qword_1001164E0, &unk_1000CDD50);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000BF664(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000C0810;

  return v6(a1);
}

uint64_t sub_1000BF760()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100017CBC;

  return sub_1000BE610(v2, v3, v4, v5, v6);
}

uint64_t sub_1000BF82C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BF864(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100017CBC;

  return sub_1000BF664(a1, v4);
}

uint64_t sub_1000BF91C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011080;

  return sub_1000BD930(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BF9E4()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BFA3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100017CBC;

  return sub_1000BD4F0(v2, v3, v4, v5, v6);
}

uint64_t sub_1000BFB04()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BFB4C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BFB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BFBC8(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 48));

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1000BFC20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100017CBC;

  return sub_1000BCC18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000BFCE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100017CBC;

  return sub_1000BEFA8(a1, v4);
}

uint64_t sub_1000BFDD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BFE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100017CBC;

  return sub_1000B9E50(a1, v4, v5, v7, v6);
}

uint64_t sub_1000BFEE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BFF30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100011080;

  return sub_1000BA350(a1, v4, v5, v7, v6);
}

void sub_1000BFFF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    sub_1000199B8(a1, a2, a3, a4, a5, a6);
  }
}

id sub_1000C0004(void *a1)
{
  if (!a1)
  {
    return [objc_allocWithZone(NSOperation) init];
  }

  v1 = a1;
  v2 = [v1 activity];
  if (v2)
  {

    v7[4] = nullsub_2;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10008EFD4;
    v7[3] = &unk_10010BB20;
    v3 = _Block_copy(v7);
    v4 = [objc_opt_self() blockOperationWithBlock:v3];

    _Block_release(v3);

    return v4;
  }

  else
  {
    v6 = [objc_allocWithZone(NSOperation) init];

    return v6;
  }
}

unint64_t sub_1000C0154()
{
  result = qword_10011A230;
  if (!qword_10011A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A230);
  }

  return result;
}

unint64_t sub_1000C01A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100107710;
  v6._object = a2;
  v4 = sub_1000C7344(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

__n128 sub_1000C01F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000C0230(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1000C0278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C02FC()
{
  result = qword_10011A238;
  if (!qword_10011A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A238);
  }

  return result;
}

uint64_t sub_1000C0394()
{

  if (v0[20])
  {
  }

  sub_100050264(v0[22], v0[23]);

  return _swift_deallocObject(v0, 193, 7);
}

uint64_t sub_1000C0458()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C054C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_1000BC2A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1000C05FC()
{
  swift_unknownObjectRelease();

  if (v0[22])
  {
  }

  sub_100050264(v0[24], v0[25]);

  return _swift_deallocObject(v0, 209, 7);
}

uint64_t sub_1000C06C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100017CBC;

  return sub_1000BBCCC(a1, v4, v5, v1 + 32);
}

unint64_t sub_1000C0778()
{
  result = qword_10011A288;
  if (!qword_10011A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A288);
  }

  return result;
}

uint64_t sub_1000C0848(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1000C0A04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000FEB8(&qword_100117B30, &qword_1000CF950);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_10000FEB8(&qword_100117B38, &qword_1000CF958);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_10000FEB8(&qword_100116A28, &qword_1000CCC40);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RequesterInfoView(uint64_t a1)
{
  result = qword_10011A2E8;
  if (!qword_10011A2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C0BEC(uint64_t a1)
{
  sub_10004C40C(319);
  if (v1 <= 0x3F)
  {
    sub_1000C0D3C(319);
    if (v2 <= 0x3F)
    {
      sub_10004C4F8(319, &qword_100117BC0, &qword_100117018, &qword_1000CD830, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10004C4F8(319, &qword_100117BC8, &unk_100117BD0, qword_1000CF980, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10004C4F8(319, &qword_100116A98, &qword_100116A20, &qword_1000CCB90, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000C0D3C(uint64_t a1)
{
  if (!qword_10011A2F8)
  {
    type metadata accessor for RequesterInfoViewModel(255);
    sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
    v1 = sub_1000C6244();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A2F8);
    }
  }
}

uint64_t sub_1000C0DEC@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v81 = sub_10000FEB8(&qword_10011A340, &qword_1000D6400);
  v68 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = &v63 - v2;
  v77 = sub_10000FEB8(&qword_10011A348, &qword_1000D6408);
  __chkstk_darwin(v77);
  v79 = &v63 - v3;
  v4 = sub_1000C65B4();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000FEB8(&qword_10011A350, &qword_1000D6410);
  v65 = *(v76 - 8);
  __chkstk_darwin(v76);
  v69 = &v63 - v6;
  v78 = sub_10000FEB8(&qword_10011A358, &unk_1000D6418);
  v66 = *(v78 - 8);
  __chkstk_darwin(v78);
  v70 = &v63 - v7;
  v8 = sub_1000C6694();
  v71 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000FEB8(&qword_100117C30, &qword_1000CFA00);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v14 = sub_10000FEB8(&unk_100117BD0, qword_1000CF980);
  v15 = __chkstk_darwin(v14 - 8);
  v67 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v63 - v18;
  __chkstk_darwin(v17);
  v21 = &v63 - v20;
  v83 = sub_10000FEB8(&qword_10011A360, &qword_1000D6428);
  v72 = *(v83 - 8);
  __chkstk_darwin(v83);
  v23 = &v63 - v22;
  v85 = v1;
  sub_10000FEB8(&qword_10011A368, &qword_1000D6430);
  sub_10001E490(&qword_10011A370, &qword_10011A368, &qword_1000D6430, &protocol conformance descriptor for TupleView<A>);
  v84 = v23;
  v24 = v71;
  sub_1000C6864();
  type metadata accessor for RequesterInfoView(0);
  sub_1000A36E0(v21);
  (*(v24 + 104))(v19, enum case for UserInterfaceSizeClass.regular(_:), v8);
  (*(v24 + 56))(v19, 0, 1, v8);
  v25 = *(v11 + 56);
  sub_100017574(v21, v13, &unk_100117BD0, qword_1000CF980);
  sub_100017574(v19, &v13[v25], &unk_100117BD0, qword_1000CF980);
  v26 = *(v24 + 48);
  if (v26(v13, 1, v8) == 1)
  {
    sub_100010F24(v19, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
    v27 = v26(&v13[v25], 1, v8);
    v28 = v83;
    if (v27 == 1)
    {
      sub_100010F24(v13, &unk_100117BD0, qword_1000CF980);
LABEL_9:
      sub_1000C6774();
      v47 = sub_10001E490(&qword_10011A378, &qword_10011A360, &qword_1000D6428, &protocol conformance descriptor for List<A, B>);
      v82 = v47;
      sub_1000C6934();
      sub_1000C65D4();
      v48 = sub_1000C68C4();
      v50 = v49;
      v52 = v51;
      v53 = v73;
      v54 = v74;
      v55 = v75;
      (*(v74 + 104))(v73, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v75);
      v86 = v83;
      v87 = v47;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v57 = v76;
      v58 = v69;
      sub_1000C6954();
      sub_1000500D8(v48, v50, v52 & 1);

      (*(v54 + 8))(v53, v55);
      v28 = v83;
      (*(v65 + 8))(v58, v57);
      v59 = v66;
      v60 = v78;
      v61 = v70;
      (*(v66 + 16))(v79, v70, v78);
      swift_storeEnumTagMultiPayload();
      v86 = v57;
      v87 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v86 = v28;
      v87 = v82;
      swift_getOpaqueTypeConformance2();
      sub_1000C6624();
      (*(v59 + 8))(v61, v60);
      return (*(v72 + 8))(v84, v28);
    }

    goto LABEL_6;
  }

  v29 = v67;
  sub_100017574(v13, v67, &unk_100117BD0, qword_1000CF980);
  if (v26(&v13[v25], 1, v8) == 1)
  {
    sub_100010F24(v19, &unk_100117BD0, qword_1000CF980);
    sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
    (*(v24 + 8))(v29, v8);
    v28 = v83;
LABEL_6:
    sub_100010F24(v13, &qword_100117C30, &qword_1000CFA00);
    goto LABEL_7;
  }

  v43 = &v13[v25];
  v44 = v64;
  (*(v24 + 32))(v64, v43, v8);
  sub_1000C455C(&qword_100117C58, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v45 = sub_1000C6D34();
  v46 = *(v24 + 8);
  v46(v44, v8);
  sub_100010F24(v19, &unk_100117BD0, qword_1000CF980);
  sub_100010F24(v21, &unk_100117BD0, qword_1000CF980);
  v46(v29, v8);
  sub_100010F24(v13, &unk_100117BD0, qword_1000CF980);
  v28 = v83;
  if (v45)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1000C65D4();
  v30 = sub_1000C68C4();
  v32 = v31;
  v34 = v33;
  v36 = v73;
  v35 = v74;
  v37 = v75;
  (*(v74 + 104))(v73, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v75);
  v38 = sub_10001E490(&qword_10011A378, &qword_10011A360, &qword_1000D6428, &protocol conformance descriptor for List<A, B>);
  sub_1000C6954();
  sub_1000500D8(v30, v32, v34 & 1);

  (*(v35 + 8))(v36, v37);
  v39 = v68;
  v40 = v81;
  v41 = v82;
  (*(v68 + 16))(v79, v82, v81);
  swift_storeEnumTagMultiPayload();
  v86 = v28;
  v87 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v86 = v76;
  v87 = v42;
  swift_getOpaqueTypeConformance2();
  v86 = v28;
  v87 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1000C6624();
  (*(v39 + 8))(v41, v40);
  return (*(v72 + 8))(v84, v28);
}

uint64_t sub_1000C1A28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v40 = sub_10000FEB8(&qword_10011A380, &qword_1000D6438);
  v71 = *(v40 - 8);
  v3 = __chkstk_darwin(v40);
  v68 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v34 - v5;
  v6 = sub_10000FEB8(&qword_100117C60, &qword_1000D6440);
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = __chkstk_darwin(v6);
  v69 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v34 - v9;
  v70 = sub_10000FEB8(&qword_10011A388, &qword_1000D6448);
  v39 = *(v70 - 8);
  v10 = v39;
  v11 = __chkstk_darwin(v70);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v100 = 0;
  LOBYTE(v101) = 0;
  v74 = a1;
  sub_10000FEB8(&qword_10011A390, &unk_1000D6450);
  sub_10001E490(&qword_10011A398, &qword_10011A390, &unk_1000D6450, &protocol conformance descriptor for TupleView<A>);
  v38 = v14;
  sub_1000C6C04();
  LOBYTE(v99[0]) = 1;
  sub_1000C6BD4();
  v47 = v100;
  v59 = v101;
  v58 = v102;
  LOBYTE(v87) = 1;
  sub_1000C6BD4();
  v53 = v99[1];
  v54 = v99[0];
  v52 = LOBYTE(v99[2]);
  LOBYTE(v84) = 0;
  sub_1000C6BD4();
  v60 = v87;
  v65 = v88;
  v64 = v89;
  LOBYTE(v81) = 0;
  sub_1000C6BD4();
  v62 = v85;
  v63 = v84;
  v61 = v86;
  LOBYTE(v78) = 0;
  sub_1000C6BD4();
  v56 = v82;
  v57 = v81;
  v55 = v83;
  v76 = 0;
  sub_1000C6BD4();
  v50 = v79;
  v51 = v78;
  v49 = v80;
  type metadata accessor for SharingModel(0);
  sub_1000C455C(&qword_100117158, type metadata accessor for SharingModel, &unk_1000D00B0);
  v15 = sub_1000C6404();
  v37 = v15;
  v44 = v16;
  v75 = 1;
  sub_1000C6AD4();
  v45 = v76;
  v48 = v77;
  v73 = a1;
  sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  sub_1000505FC();
  v17 = v42;
  sub_1000C6C14();
  v100 = 0;
  LOBYTE(v101) = 0;
  v72 = a1;
  v18 = v46;
  sub_1000C6C04();
  v19 = *(v10 + 16);
  v20 = v43;
  v21 = v70;
  v19(v43, v14, v70);
  v35 = *(v66 + 16);
  v35(v69, v17, v67);
  v34 = *(v71 + 16);
  v22 = v18;
  v23 = v40;
  v34(v68, v22, v40);
  v24 = v41;
  v19(v41, v20, v21);
  v25 = sub_10000FEB8(&qword_10011A3A0, &qword_1000D6460);
  v26 = v25[12];
  v99[0] = v15;
  v99[1] = v44;
  v99[2] = _swiftEmptyArrayStorage;
  v99[3] = v47;
  v99[4] = v59;
  LOBYTE(v99[5]) = v58;
  *(&v99[5] + 1) = *v98;
  HIDWORD(v99[5]) = *&v98[3];
  v99[7] = 0;
  v99[6] = 0;
  v99[8] = _swiftEmptyArrayStorage;
  v99[9] = v54;
  v99[10] = v53;
  LOBYTE(v99[11]) = v52;
  HIDWORD(v99[11]) = *&v97[3];
  *(&v99[11] + 1) = *v97;
  v99[13] = 0;
  v99[12] = 0;
  v99[14] = _swiftEmptyArrayStorage;
  LOBYTE(v99[15]) = 0;
  *(&v99[15] + 1) = *v96;
  HIDWORD(v99[15]) = *&v96[3];
  v99[16] = 0;
  v99[17] = 0;
  v99[18] = _swiftEmptyArrayStorage;
  LOBYTE(v99[19]) = 0;
  *(&v99[19] + 1) = *v95;
  HIDWORD(v99[19]) = *&v95[3];
  v36 = nullsub_2;
  v99[20] = nullsub_2;
  v99[21] = 0;
  v99[22] = v60;
  v99[23] = v65;
  LOBYTE(v99[24]) = v64;
  HIDWORD(v99[24]) = *&v94[3];
  *(&v99[24] + 1) = *v94;
  v99[25] = v63;
  v99[26] = v62;
  LOBYTE(v99[27]) = v61;
  HIDWORD(v99[27]) = *&v93[3];
  *(&v99[27] + 1) = *v93;
  v99[28] = v57;
  v99[29] = v56;
  LOBYTE(v99[30]) = v55;
  HIDWORD(v99[30]) = *&v92[3];
  *(&v99[30] + 1) = *v92;
  v99[31] = v51;
  v99[32] = v50;
  LOBYTE(v99[33]) = v49;
  *(&v99[33] + 1) = *v91;
  HIDWORD(v99[33]) = *&v91[3];
  LOBYTE(v99[34]) = v45;
  *(&v99[34] + 1) = *v90;
  HIDWORD(v99[34]) = *&v90[3];
  v99[35] = v48;
  memcpy(&v24[v26], v99, 0x120uLL);
  v27 = v67;
  v35(&v24[v25[16]], v69, v67);
  v28 = v68;
  v34(&v24[v25[20]], v68, v23);
  sub_10005051C(v99, &v100);
  v29 = *(v71 + 8);
  v71 += 8;
  v30 = v23;
  v29(v46, v23);
  v31 = *(v66 + 8);
  v31(v42, v27);
  v32 = *(v39 + 8);
  v32(v38, v70);
  v29(v28, v30);
  v31(v69, v27);
  v100 = v37;
  v101 = v44;
  v102 = _swiftEmptyArrayStorage;
  v103 = v47;
  v104 = v59;
  v105 = v58;
  *v106 = *v98;
  *&v106[3] = *&v98[3];
  v108 = 0;
  v107 = 0;
  v109 = _swiftEmptyArrayStorage;
  v110 = v54;
  v111 = v53;
  v112 = v52;
  *v113 = *v97;
  *&v113[3] = *&v97[3];
  v115 = 0;
  v114 = 0;
  v116 = _swiftEmptyArrayStorage;
  v117 = 0;
  *v118 = *v96;
  *&v118[3] = *&v96[3];
  v119 = 0;
  v120 = 0;
  v121 = _swiftEmptyArrayStorage;
  v122 = 0;
  *v123 = *v95;
  *&v123[3] = *&v95[3];
  v124 = v36;
  v125 = 0;
  v126 = v60;
  v127 = v65;
  v128 = v64;
  *&v129[3] = *&v94[3];
  *v129 = *v94;
  v130 = v63;
  v131 = v62;
  v132 = v61;
  *&v133[3] = *&v93[3];
  *v133 = *v93;
  v134 = v57;
  v135 = v56;
  v136 = v55;
  *&v137[3] = *&v92[3];
  *v137 = *v92;
  v138 = v51;
  v139 = v50;
  v140 = v49;
  *v141 = *v91;
  *&v141[3] = *&v91[3];
  v142 = v45;
  *v143 = *v90;
  *&v143[3] = *&v90[3];
  v144 = v48;
  sub_100050578(&v100);
  return (v32)(v43, v70);
}

uint64_t sub_1000C23F0@<X0>(uint64_t a1@<X0>, void *a6@<X8>)
{
  v33 = sub_1000C65C4();
  LOBYTE(v72) = 1;
  sub_1000C2AFC(a1, &v56);
  v86 = *&v57[48];
  v87 = *&v57[64];
  v88 = *&v57[80];
  v82 = v56;
  v83 = *v57;
  v85 = *&v57[32];
  v84 = *&v57[16];
  v89[0] = v56;
  v89[1] = *v57;
  v89[2] = *&v57[16];
  v89[3] = *&v57[32];
  v89[4] = *&v57[48];
  v89[5] = *&v57[64];
  v89[6] = *&v57[80];
  sub_100017574(&v82, &v44, &qword_100117CD8, &qword_1000CFCB0);
  sub_100010F24(v89, &qword_100117CD8, &qword_1000CFCB0);
  *&v81[55] = v85;
  *&v81[71] = v86;
  *&v81[87] = v87;
  *&v81[103] = v88;
  *&v81[7] = v82;
  *&v81[23] = v83;
  *&v81[39] = v84;
  v31 = v72;
  v32 = sub_1000C65E4();
  type metadata accessor for RequesterInfoView(0);
  type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  v7 = sub_1000C6224();
  v9 = *(v7 + 80);
  v8 = *(v7 + 88);

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = sub_1000C6604();
    LOBYTE(v56) = 1;
    sub_1000C302C(&v44);
    *&v71[7] = v44;
    *&v71[23] = *v45;
    *&v71[39] = *&v45[16];
    *&v71[55] = *&v45[32];
    v12 = v56;
    v13 = sub_1000C67B4();
    sub_1000C6204();
    *&v57[17] = *&v71[16];
    *&v57[33] = *&v71[32];
    *&v57[49] = *&v71[48];
    v56 = v11;
    v57[0] = v12;
    *&v57[64] = *&v71[63];
    *&v57[1] = *v71;
    v57[72] = v13;
    *&v57[80] = v14;
    *&v57[88] = v15;
    *&v57[96] = v16;
    *&v57[104] = v17;
    v57[112] = 0;
    nullsub_2();
    v78 = *&v57[80];
    v79 = *&v57[96];
    v80 = v57[112];
    v74 = *&v57[16];
    v75 = *&v57[32];
    v77 = *&v57[64];
    v76 = *&v57[48];
    v73 = *v57;
    v72 = v56;
  }

  else
  {
    sub_100050DF0(&v72);
  }

  v18 = sub_1000C6224();
  v19 = *(v18 + 96);
  v20 = *(v18 + 104);

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = sub_1000C6604();
    LOBYTE(v56) = 1;
    sub_1000C3298(&v44);
    *&v61[7] = v44;
    *&v61[23] = *v45;
    *&v61[39] = *&v45[16];
    *&v61[55] = *&v45[32];
    v23 = v56;
    v24 = sub_1000C67B4();
    sub_1000C6204();
    *&v57[17] = *&v61[16];
    *&v57[33] = *&v61[32];
    *&v57[49] = *&v61[48];
    v56 = v22;
    v57[0] = v23;
    *&v57[64] = *&v61[63];
    *&v57[1] = *v61;
    v57[72] = v24;
    *&v57[80] = v25;
    *&v57[88] = v26;
    *&v57[96] = v27;
    *&v57[104] = v28;
    v57[112] = 0;
    nullsub_2();
    v68 = *&v57[80];
    v69 = *&v57[96];
    v70 = v57[112];
    v64 = *&v57[16];
    v65 = *&v57[32];
    v67 = *&v57[64];
    v66 = *&v57[48];
    v63 = *v57;
    v62 = v56;
  }

  else
  {
    sub_100050DF0(&v62);
  }

  v41 = v78;
  v42 = v79;
  v43 = v80;
  v37 = v74;
  v38 = v75;
  v39 = v76;
  v40 = v77;
  v35 = v72;
  v36 = v73;
  v52[6] = v68;
  v52[7] = v69;
  v53 = v70;
  v52[2] = v64;
  v52[3] = v65;
  v52[5] = v67;
  v52[4] = v66;
  v52[1] = v63;
  v52[0] = v62;
  v44 = v33;
  v45[0] = v31;
  *&v45[65] = *&v81[64];
  *&v45[81] = *&v81[80];
  *&v45[97] = *&v81[96];
  *&v45[1] = *v81;
  *&v45[17] = *&v81[16];
  *&v45[33] = *&v81[32];
  *&v45[49] = *&v81[48];
  *&v45[112] = *&v81[111];
  *&v45[120] = v32;
  v46 = sub_1000C3024;
  v47 = 0;
  __src[6] = *&v45[80];
  __src[7] = *&v45[96];
  __src[2] = *&v45[16];
  __src[3] = *&v45[32];
  __src[4] = *&v45[48];
  __src[5] = *&v45[64];
  __src[0] = v33;
  __src[1] = *v45;
  __src[8] = *&v45[112];
  __src[9] = sub_1000C3024;
  v48[6] = v78;
  v48[7] = v79;
  v48[2] = v74;
  v48[3] = v75;
  v48[4] = v76;
  v48[5] = v77;
  v48[0] = v72;
  v48[1] = v73;
  __src[16] = v78;
  __src[17] = v79;
  __src[12] = v74;
  __src[13] = v75;
  __src[14] = v76;
  __src[15] = v77;
  __src[10] = v72;
  __src[11] = v73;
  v50[6] = v68;
  v50[7] = v69;
  v50[2] = v64;
  v50[3] = v65;
  v50[4] = v66;
  v50[5] = v67;
  v50[0] = v62;
  v50[1] = v63;
  *(&__src[24] + 8) = v68;
  *(&__src[25] + 8) = v69;
  *(&__src[20] + 8) = v64;
  *(&__src[21] + 8) = v65;
  *(&__src[22] + 8) = v66;
  *(&__src[23] + 8) = v67;
  v49 = v80;
  LOBYTE(__src[18]) = v80;
  v51 = v70;
  *(&__src[18] + 8) = v62;
  *(&__src[19] + 8) = v63;
  BYTE8(__src[26]) = v70;
  memcpy(a6, __src, 0x1A9uLL);
  sub_100017574(&v44, &v56, &qword_10011A3A8, &unk_1000D6510);
  sub_100017574(v48, &v56, &qword_100117CE8, &qword_1000CFCC0);
  sub_100017574(v50, &v56, &qword_100117CE8, &qword_1000CFCC0);
  sub_100010F24(v52, &qword_100117CE8, &qword_1000CFCC0);
  v54[6] = v41;
  v54[7] = v42;
  v55 = v43;
  v54[2] = v37;
  v54[3] = v38;
  v54[5] = v40;
  v54[4] = v39;
  v54[1] = v36;
  v54[0] = v35;
  sub_100010F24(v54, &qword_100117CE8, &qword_1000CFCC0);
  *&v57[65] = *&v81[64];
  *&v57[81] = *&v81[80];
  *&v57[97] = *&v81[96];
  *&v57[1] = *v81;
  *&v57[17] = *&v81[16];
  *&v57[33] = *&v81[32];
  v56 = v33;
  v57[0] = v31;
  *&v57[49] = *&v81[48];
  *&v57[112] = *&v81[111];
  v58 = v32;
  v59 = sub_1000C3024;
  v60 = 0;
  return sub_100010F24(&v56, &qword_10011A3A8, &unk_1000D6510);
}

uint64_t sub_1000C2AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C6A94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for RequesterInfoView(0) + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  v35 = v10;
  v36 = v9;
  v34 = v11;
  v33[1] = v12;
  v13 = *(sub_1000C6224() + 112);
  v14 = v13;

  if (v13)
  {
    v15 = v14;
    sub_1000C6C54();
    sub_1000C62C4();
    *(v44 + 6) = v46[4];
    *(&v44[1] + 6) = v46[5];
    *(&v44[2] + 6) = v47;
    v45 = v15;
    LOWORD(v46[0]) = 257;
    *(v46 + 2) = v44[0];
    *(&v46[1] + 2) = v44[1];
    *(&v46[2] + 2) = v44[2];
    *&v46[3] = *(&v47 + 1);
    v48 = v15;
    v49 = v46[0];
    v50 = v46[1];
    *v51 = v46[2];
    *&v51[16] = *(&v47 + 1);
    LOBYTE(v42[0]) = 0;
    v51[24] = 0;
    sub_100017574(&v45, v44, &qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_1000C4BD0();
    sub_1000C4C5C();
    sub_1000C6624();

    sub_100010F24(&v45, &qword_100117CF0, &unk_1000D6550);
    v49 = v44[1];
    v50 = v44[2];
    *v51 = v44[3];
    *&v51[9] = *(&v44[3] + 9);
    v48 = v44[0];
  }

  else
  {
    sub_1000C6A84();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v16 = sub_1000C6AB4();

    (*(v5 + 8))(v7, v4);
    v17 = sub_1000C6A54();
    KeyPath = swift_getKeyPath();
    sub_1000C6C54();
    sub_1000C62C4();
    LOBYTE(v45) = 1;
    *&v44[0] = v16;
    *(&v44[0] + 1) = KeyPath;
    *&v44[1] = v17;
    BYTE8(v44[4]) = 1;
    sub_10000FEB8(&qword_100117CF0, &unk_1000D6550);
    sub_10000FEB8(&qword_100117CF8, &unk_1000CFD00);
    sub_1000C4BD0();
    sub_1000C4C5C();
    sub_1000C6624();
  }

  v19 = sub_1000C6224();
  v21 = *(v19 + 64);
  v20 = *(v19 + 72);

  *&v44[0] = v21;
  *(&v44[0] + 1) = v20;
  sub_1000383C8();
  v22 = sub_1000C68D4();
  v24 = v23;
  v25 = v49;
  v40 = v50;
  v41[0] = *v51;
  *(v41 + 9) = *&v51[9];
  *(v43 + 9) = *&v51[9];
  v43[0] = *v51;
  v38 = v48;
  v39 = v49;
  v42[0] = v48;
  v42[1] = v49;
  v42[2] = v50;
  *(&v44[3] + 9) = *&v51[9];
  v44[2] = v50;
  v44[3] = *v51;
  v44[0] = v48;
  v44[1] = v49;
  v27 = v26 & 1;
  v37 = v26 & 1;
  v28 = v48;
  v29 = v50;
  v30 = v44[4];
  *(a2 + 48) = *v51;
  *(a2 + 64) = v30;
  *(a2 + 16) = v25;
  *(a2 + 32) = v29;
  *a2 = v28;
  *(a2 + 80) = v22;
  *(a2 + 88) = v23;
  *(a2 + 96) = v26 & 1;
  *(a2 + 104) = v31;
  sub_100017574(v42, &v45, &qword_100117D40, &qword_1000CFD20);
  sub_100050DE0(v22, v24, v27);

  sub_1000500D8(v22, v24, v27);

  v46[1] = v40;
  v46[2] = v41[0];
  *(&v46[2] + 9) = *(v41 + 9);
  v45 = v38;
  v46[0] = v39;
  return sub_100010F24(&v45, &qword_100117D40, &qword_1000CFD20);
}

uint64_t sub_1000C302C@<X0>(uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  type metadata accessor for RequesterInfoView(0);
  type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  sub_1000C6224();

  sub_1000383C8();
  v20 = sub_1000C68D4();
  v22 = v21;
  v23 = v17 & 1;
  v28 = v17 & 1;
  v25 = v24 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_100050DE0(v13, v15, v23);

  sub_100050DE0(v20, v22, v25);

  sub_1000500D8(v20, v22, v25);

  sub_1000500D8(v13, v15, v28);
}

uint64_t sub_1000C3298@<X0>(uint64_t a2@<X8>)
{
  sub_1000C65D4();
  v3 = sub_1000C68C4();
  v5 = v4;
  v7 = v6;
  sub_1000C6854();
  v8 = sub_1000C68B4();
  v10 = v9;
  v12 = v11;

  sub_1000500D8(v3, v5, v7 & 1);

  sub_1000C6A04();
  v13 = sub_1000C6884();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1000500D8(v8, v10, v12 & 1);

  type metadata accessor for RequesterInfoView(0);
  type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  sub_1000C6224();

  sub_1000383C8();
  v20 = sub_1000C68D4();
  v22 = v21;
  v23 = v17 & 1;
  v28 = v17 & 1;
  v25 = v24 & 1;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v23;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_100050DE0(v13, v15, v23);

  sub_100050DE0(v20, v22, v25);

  sub_1000500D8(v20, v22, v25);

  sub_1000500D8(v13, v15, v28);
}

uint64_t sub_1000C3504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequesterInfoView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000C61C4();
  v7 = sub_1000C61F4();
  (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  sub_1000C45B4(a1, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1000C461C(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v10 = sub_10000FEB8(&qword_100117CC0, &unk_1000CFC00);
  v11 = (a2 + v10[9]);
  *v11 = &unk_1000D6500;
  v11[1] = v9;
  v12 = (a2 + v10[10]);
  *v12 = sub_1000C3CF4;
  v12[1] = 0;
  v13 = a2 + v10[11];
  v19[15] = 0;
  sub_1000C6AD4();
  v14 = v21;
  *v13 = v20;
  *(v13 + 8) = v14;
  type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v13) = v20;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  result = sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_1000B81D0;
  v18[2] = v16;
  return result;
}

uint64_t sub_1000C37D8(uint64_t a1)
{
  v1[2] = a1;
  sub_1000C63D4();
  v1[3] = swift_task_alloc();
  v1[4] = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1000C6F14();
  v1[7] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_1000C38DC, v3, v2);
}

uint64_t sub_1000C38DC()
{
  v0[10] = type metadata accessor for RequesterInfoView(0);
  type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  v0[11] = sub_1000C6224();
  v0[12] = sub_1000C6F04();
  v2 = sub_1000C6ED4();
  v0[13] = v2;
  v0[14] = v1;

  return _swift_task_switch(sub_1000C39F4, v2, v1);
}

uint64_t sub_1000C39F4()
{
  v1 = *(*(v0 + 88) + 32);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000C3A8C;

  return sub_10002B7C8(v1);
}

uint64_t sub_1000C3A8C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1000C3BAC, v3, v2);
}

uint64_t sub_1000C3BAC()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1000C3C18, v1, v2);
}

uint64_t sub_1000C3C18()
{
  v1 = *(v0 + 40);

  sub_1000A36BC(v1);
  sub_1000C6B84();
  sub_1000C63C4();
  sub_1000C6B94();
  sub_100010F24(v1, &qword_100116A20, &qword_1000CCB90);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C3D0C@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5;
  sub_1000C6A04();
  v7 = sub_1000C6884();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1000500D8(v2, v4, v6 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11 & 1;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v7, v9, v11 & 1);

  sub_1000500D8(v7, v9, v11 & 1);
}

uint64_t sub_1000C3E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RequesterInfoView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000C61C4();
  v7 = sub_1000C61F4();
  (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  sub_1000C45B4(a1, &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1000C461C(&v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v10 = sub_10000FEB8(&qword_100117CC0, &unk_1000CFC00);
  v11 = (a2 + v10[9]);
  *v11 = &unk_1000D6478;
  v11[1] = v9;
  v12 = (a2 + v10[10]);
  *v12 = sub_1000C43B8;
  v12[1] = 0;
  v13 = a2 + v10[11];
  v19[15] = 0;
  sub_1000C6AD4();
  v14 = v21;
  *v13 = v20;
  *(v13 + 8) = v14;
  type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  sub_1000C6224();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  LOBYTE(v13) = v20;
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  result = sub_10000FEB8(&qword_100117CA8, &qword_1000CFBF8);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_100050DD8;
  v18[2] = v16;
  return result;
}

uint64_t sub_1000C4128(uint64_t a1)
{
  v1[2] = a1;
  sub_1000C63D4();
  v1[3] = swift_task_alloc();
  v1[4] = sub_10000FEB8(&qword_100116A20, &qword_1000CCB90);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1000C6F14();
  v1[7] = sub_1000C6F04();
  v3 = sub_1000C6ED4();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_1000C422C, v3, v2);
}

uint64_t sub_1000C422C()
{
  v0[10] = type metadata accessor for RequesterInfoView(0);
  type metadata accessor for RequesterInfoViewModel(0);
  sub_1000C455C(&unk_10011A300, type metadata accessor for RequesterInfoViewModel, &unk_1000D5560);
  v0[11] = sub_1000C6224();
  v0[12] = sub_1000C6F04();
  v2 = sub_1000C6ED4();

  return _swift_task_switch(sub_1000C4344, v2, v1);
}

uint64_t sub_1000C4344()
{
  v1 = v0[11];

  sub_10002D004(*(v1 + 32));

  v2 = v0[8];
  v3 = v0[9];

  return _swift_task_switch(sub_1000C4E4C, v2, v3);
}

__n128 sub_1000C43D0@<Q0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a6@<X8>)
{
  v8 = sub_1000C65C4();
  a1(v11);
  *&v10[48] = *&v12[9];
  *&v10[39] = *v12;
  *&v10[23] = v11[1];
  *&v10[7] = v11[0];
  *(a6 + 17) = *v10;
  *(a6 + 33) = *&v10[16];
  result = *&v10[32];
  *(a6 + 49) = *&v10[32];
  *a6 = v8;
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  *(a6 + 65) = *&v10[48];
  return result;
}

uint64_t sub_1000C4468@<X0>(uint64_t a1@<X8>)
{
  sub_1000C65D4();
  v2 = sub_1000C68C4();
  v4 = v3;
  v6 = v5 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5 & 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_100050DE0(v2, v3, v5 & 1);

  sub_1000500D8(v2, v4, v6);
}

uint64_t sub_1000C455C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C45B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequesterInfoView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C461C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequesterInfoView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C4680()
{
  v2 = *(type metadata accessor for RequesterInfoView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100017CBC;

  return sub_1000C4128(v0 + v3);
}

uint64_t sub_1000C474C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C6094();

  *a2 = v4;
  return result;
}

uint64_t sub_1000C47D0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000C60A4();
}

uint64_t sub_1000C4860()
{
  v1 = type metadata accessor for RequesterInfoView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_10000FEB8(&qword_100117C88, &unk_1000CFE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C62E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_100050264(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[7];
  sub_10000FEB8(&qword_100117C90, &unk_1000CFAB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000C6694();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v5 + v1[8];
  sub_10000FEB8(&qword_100116AF8, &qword_1000D6470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v12 = *(sub_10000FEB8(&qword_100116A20, &qword_1000CCB90) + 32);
    v13 = sub_1000C63D4();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C4AFC()
{
  v2 = *(type metadata accessor for RequesterInfoView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100011080;

  return sub_1000C37D8(v0 + v3);
}

unint64_t sub_1000C4BD0()
{
  result = qword_100117D00;
  if (!qword_100117D00)
  {
    sub_100010624(&qword_100117CF0, &unk_1000D6550);
    sub_100050E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D00);
  }

  return result;
}

unint64_t sub_1000C4C5C()
{
  result = qword_100117D18;
  if (!qword_100117D18)
  {
    sub_100010624(&qword_100117CF8, &unk_1000CFD00);
    sub_100050F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117D18);
  }

  return result;
}

unint64_t sub_1000C4CEC()
{
  result = qword_10011A3B0;
  if (!qword_10011A3B0)
  {
    sub_100010624(&qword_10011A3B8, &unk_1000D6570);
    sub_100010624(&qword_10011A350, &qword_1000D6410);
    sub_100010624(&qword_10011A360, &qword_1000D6428);
    sub_10001E490(&qword_10011A378, &qword_10011A360, &qword_1000D6428, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A3B0);
  }

  return result;
}

NSString sub_1000C4E50()
{
  result = sub_1000C6D44();
  qword_100120E98 = result;
  return result;
}

uint64_t sub_1000C50BC(uint64_t a1)
{
  v3 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    while (1)
    {
      sub_100038D8C(v7, v14);
      sub_100038D8C(v14, &v15);
      sub_1000C5878();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_100010544(v14);
      v7 += 32;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    sub_1000C58C4(v14, &v15);
  }

  else
  {
LABEL_5:
    v15 = 0u;
    v16 = 0u;
  }

  v14[0] = v15;
  v14[1] = v16;
  if (*(&v16 + 1))
  {
    v8 = sub_1000C5D84();
    v9 = swift_dynamicCast();
    (*(*(v8 - 8) + 56))(v5, v9 ^ 1u, 1, v8);
  }

  else
  {
    sub_100010F24(v14, &qword_1001161F0, &unk_1000CB6A0);
    v10 = sub_1000C5D84();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing21ShareCopyLinkActivity_urlToCopy;
  swift_beginAccess();
  sub_1000C58D4(v5, v1 + v11);
  return swift_endAccess();
}

id sub_1000C5320()
{
  v1 = v0;
  v2 = sub_1000C5F24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000C5D84();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC37com_apple_CloudSharingUI_CloudSharing21ShareCopyLinkActivity_urlToCopy;
  swift_beginAccess();
  sub_10000FF70(v1 + v13, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100010F24(v8, &qword_100116260, &qword_1000CD940);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = [objc_opt_self() generalPasteboard];
    sub_1000C5D24(v15);
    v17 = v16;
    sub_1000C5EA4();
    sub_1000C5E44();
    (*(v3 + 8))(v5, v2);
    v18 = sub_1000C6D44();

    [v14 setValue:v17 forPasteboardType:v18];

    (*(v10 + 8))(v12, v9);
  }

  return [v1 activityDidFinish:1];
}

id sub_1000C56D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareCopyLinkActivity(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ShareCopyLinkActivity(uint64_t a1)
{
  result = qword_10011A3F0;
  if (!qword_10011A3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C5790(uint64_t a1)
{
  sub_1000C5820(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000C5820(uint64_t a1)
{
  if (!qword_10011A400)
  {
    sub_1000C5D84();
    v1 = sub_1000C71C4();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A400);
    }
  }
}

unint64_t sub_1000C5878()
{
  result = qword_10011A408;
  if (!qword_10011A408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011A408);
  }

  return result;
}

_OWORD *sub_1000C58C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000C58D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FEB8(&qword_100116260, &qword_1000CD940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100038D8C(i, v6);
    sub_1000C58C4(v6, &v5);
    sub_1000C5878();
    if (swift_dynamicCast())
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}
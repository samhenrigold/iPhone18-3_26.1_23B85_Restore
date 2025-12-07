void sub_10037A560(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 32))();
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, v5);

  v6 = *(a2 + 40);
  v7 = v6(a1, a2);
  [v7 setAttributedText:0];

  v8 = v6(a1, a2);
  [v8 setText:0];
}

void sub_10037A640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076BF6C();
  v9 = __chkstk_darwin(v8 - 8);
  v24 = 0;
  if (!a1)
  {
LABEL_4:
    v13 = (*(a4 + 32))(a3, a4, v9);
    v14 = v13;
    v22 = v13;
    v26.value.super.isa = 0;
    v26.is_nil = 0;
    sub_10075FCEC(v26, v14);

    return;
  }

  v10 = sub_10037B7B4(&v24, v4, a3, a4);
  sub_10037B894(a1, v10);
  v12 = v11;

  if (v12)
  {

    a1 = v24;
    goto LABEL_4;
  }

  v15 = *(a4 + 32);
  v16 = v15(a3, a4);
  [v16 contentMode];

  sub_10076BFCC();
  v17 = v15(a3, a4);
  sub_10076BF7C();
  sub_10075FCCC();
  [v17 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    sub_100770D5C();
  }

  sub_10075FB8C();

  v18 = v15(a3, a4);
  sub_10075FD2C();
  sub_100760BCC();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v19;

  sub_100760B7C();

  sub_10000CFBC(v23, &qword_100943310, &unk_100784150);
  v21 = v24;
}

uint64_t sub_10037A9B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11 - 8];
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13 = *(v7 + 8);
  v13(v12, v6);
  if (v23)
  {
    sub_10000A5D4(&qword_1009575A0, &unk_100784980);
    sub_100760A4C();
    if (swift_dynamicCast())
    {
      sub_10076468C();
      swift_getKeyPath();
      sub_10076F49C();

      v13(v9, v6);
      if (v22[0] == 1)
      {

        v14 = sub_10076B8FC();

        if (v14)
        {
          v15 = (*(a2 + 56))(a1, a2);
          sub_10037B894(v14, v15);
          v17 = v16;

          if ((v17 & 1) == 0)
          {
            sub_10076BDBC();
            sub_100766E2C();

            v18 = 0;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    sub_10000CFBC(v22, &unk_10094F720, &unk_100785540);
  }

  v18 = 1;
LABEL_10:
  v19 = sub_100766E4C();
  return (*(*(v19 - 8) + 56))(a3, v18, 1, v19);
}

uint64_t sub_10037ACDC(uint64_t a1, void *a2)
{
  v73 = a2;
  v3 = sub_10000A5D4(&qword_100949DF0, &qword_10078C950);
  __chkstk_darwin(v3 - 8);
  v75 = &v60 - v4;
  v5 = sub_10000A5D4(&qword_100954450, &qword_10079DC98);
  __chkstk_darwin(v5 - 8);
  v76 = &v60 - v6;
  v77 = sub_10000A5D4(&qword_100954458, &unk_10079DCA0);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v60 - v7;
  v8 = sub_10075D9EC();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100760A5C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100954460, &unk_100790FF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_10000A5D4(&qword_100942698, &qword_10079DCB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_10075D99C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v71 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v70 = &v60 - v26;
  v27 = sub_1007609FC();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v68 = v27;
  v69 = v28;
  sub_100760A1C();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_100941350 != -1)
    {
      swift_once();
    }

    v60 = qword_1009A2700;
    if (qword_100941358 != -1)
    {
      swift_once();
    }

    v64 = qword_1009A2708;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v67 = a1;
    v66 = v20;
    v65 = v10;
    v62 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v63 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v63 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_10077156C();
            __break(1u);
            return result;
          }

          v63 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v61 = v33;
        goto LABEL_23;
      }

      v63 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v61 = v32;
LABEL_23:
    sub_10000A5D4(&unk_100954470, &qword_10079DCB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v69;
    *(inited + 48) = v68;
    *(inited + 56) = v35;

    v36 = sub_1000FD520(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &qword_100961DD0, &qword_10079DCC0);
    v80._object = (v63 | 0x8000000000000000);
    v80._countAndFlagsBits = v61;
    v37._rawValue = v36;
    sub_1007622DC(v80, v37);

    sub_10075D9DC();
    sub_10075D9AC();
    v38 = v73;
    v79[0] = v73;
    sub_100016BD0();
    v39 = v38;
    sub_10075D9BC();
    v40 = v64;
    v79[0] = v64;
    sub_10037C8FC();
    v41 = v40;
    sub_10075D9BC();
    v79[0] = v68;
    v79[1] = v35;
    v42 = sub_10075DE9C();
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_10037CD5C(&unk_100954490, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_10002564C();
    v44 = v76;
    sub_10075DA9C();
    sub_10000CFBC(v43, &qword_100949DF0, &qword_10078C950);
    if ((*(v74 + 48))(v44, 1, v77) == 1)
    {
      v45 = &qword_100954450;
      v46 = &qword_10079DC98;
      v47 = v44;
    }

    else
    {
      v48 = v72;
      sub_10037C950(v44, v72);
      v49 = v60;
      v50 = v60;
      sub_10037C9C0();
      v51 = sub_10075D9CC();
      v78 = v49;
      sub_10075DA2C();
      v51(v79, 0);
      v45 = &qword_100954458;
      v46 = &unk_10079DCA0;
      v47 = v48;
    }

    sub_10000CFBC(v47, v45, v46);
    v52 = v62;
    v53 = v66;
    v54 = *(v66 + 32);
    v54(v18, v24, v19);
    (*(v53 + 56))(v18, 0, 1, v19);
    (*(v65 + 8))(v15, v52);
    if ((*(v53 + 48))(v18, 1, v19) != 1)
    {

      v58 = v70;
      v54(v70, v18, v19);
      sub_100016F40(0, &qword_1009544A0, NSAttributedString_ptr);
      (*(v53 + 16))(v71, v58, v19);
      v59 = sub_10077076C();
      (*(v53 + 8))(v58, v19);
      return v59;
    }

    goto LABEL_27;
  }

  sub_10000CFBC(v15, &unk_100954460, &unk_100790FF0);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10000CFBC(v18, &qword_100942698, &qword_10079DCB0);
  v55 = sub_10076B8EC();
  if (!v56)
  {
    return v68;
  }

  v57 = v55;

  return v57;
}

id sub_10037B7B4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *a1;
  }

  else
  {
    v9 = (*(a4 + 32))(a3, a4);
    v10 = sub_10075FC2C();

    if (!v10)
    {
      v10 = (*(a4 + 56))(a3, a4);
    }

    swift_beginAccess();
    v11 = *a1;
    *a1 = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_10037B894(uint64_t a1, uint64_t a2)
{
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076BE0C();
  result = 0;
  if (v6)
  {
    sub_10076BE4C();
    (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
    sub_100770AAC();
    v9 = v8;
    (*(v3 + 8))(v5, v2);
    return v9;
  }

  return result;
}

double sub_10037B9E0(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = (*(a7 + 32))(a6, a7);
    v13.value.super.isa = a1;
    v13.is_nil = 0;
    sub_10075FC5C(v13, v12);

    (*(a7 + 80))(a6, a7);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10037BAA4(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v5 = (*(a3 + 56))(a2, a3);
  swift_getKeyPath();
  sub_10076338C();

  v6 = [v5 configurationWithTraitCollection:v8];

  v7 = sub_10076044C();
  *a4 = v7;
}

void *sub_10037BBB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v54 = a4;
  v47 = a3;
  v46 = a2;
  v50 = sub_10076C38C();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10076DA7C();
  v62 = *(v10 - 8);
  __chkstk_darwin(v10);
  v53 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v61 = &v43[-v13];
  v14 = sub_10076D7FC();
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_10076DD3C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  sub_100760A4C();
  sub_10037CD5C(&unk_100954440, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  result = sub_10076332C();
  v23 = v68;
  if (v68)
  {
    v45 = v18;
    v51 = v14;
    v57 = v10;
    swift_getKeyPath();
    sub_10076338C();

    v24 = v68;
    (*(a6 + 64))(v68, a5, a6);

    swift_getKeyPath();
    v52 = a1;
    sub_10076338C();

    v25 = v65;
    sub_10076D7EC();
    sub_10076DCAC();
    sub_10000CF78(&v68, v69);
    sub_10076D85C();
    sub_10076D7CC();
    sub_10000CD74(&v68);
    sub_10076DCEC();
    sub_10076D77C();
    sub_10076DCCC();
    sub_10076D75C();
    sub_10076DCDC();
    sub_10076D76C();
    sub_10076DCBC();
    sub_10076D74C();

    v26 = sub_10076D7BC();
    v27 = a5;
    v56 = sub_10037ACDC(v23, v26);
    v55 = v28;
    v30 = v29;
    v31 = ~v29;

    if (v31)
    {
      (*(v59 + 16))(v45, v21, v60);
      v44 = v30;
      if (v30)
      {
        sub_10037CA28(v56, v55, 1);
        sub_10076DA5C();
        v32 = v53;
        sub_10076DABC();
      }

      else
      {
        sub_10037CA28(v56, v55, 0);
        sub_10076DA5C();
        v32 = v53;
        sub_10076DA9C();
      }

      v33 = v57;
      (*(v62 + 32))(v61, v32, v57);

      v34 = sub_10076B8FC();

      if (v34 && (*&v65 = v34, sub_10037BAA4(v27, a6, &v68), , (v35 = v68) != 0))
      {
        [v68 size];
        v37 = v36;
        v39 = v38;

        *(&v66 + 1) = &type metadata for FixedSizedPlaceholder;
        v67 = sub_100016DD8();
        *&v65 = v37;
        *(&v65 + 1) = v39;
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      v64[3] = v33;
      v64[4] = &protocol witness table for LabelPlaceholder;
      v40 = sub_10000DB7C(v64);
      (*(v62 + 16))(v40, v61, v33);
      swift_getKeyPath();
      sub_10076338C();

      (*(a6 + 48))(&v68, &v65, v64, v63, v27, a6);
      swift_unknownObjectRelease();
      sub_10000CD74(v64);
      sub_10000CFBC(&v65, &unk_10094B230, &qword_100791150);
      sub_10000CF78(&v68, v69);
      if (v54)
      {
        swift_getKeyPath();
        v41 = v48;
        sub_10076338C();

        sub_10076C2FC();
        (*(v49 + 8))(v41, v50);
      }

      swift_getKeyPath();
      sub_10076338C();

      v42 = v65;
      sub_10076E0FC();

      sub_10037C8D4(v56, v55, v44);

      (*(v62 + 8))(v61, v57);
      (*(v58 + 8))(v16, v51);
      (*(v59 + 8))(v21, v60);
      return sub_10000CD74(&v68);
    }

    else
    {

      (*(v58 + 8))(v16, v51);
      return (*(v59 + 8))(v21, v60);
    }
  }

  return result;
}

double sub_10037C4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = sub_10076DD3C();
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D7FC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760A4C();
  sub_10037CD5C(&unk_100954440, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  sub_10076332C();
  v15 = v38[0];
  if (v38[0])
  {
    v34 = v11;
    v35 = v10;
    v33 = *(a3 + 40);
    v16 = v33(a2, a3);
    sub_10076D48C();

    v17 = [v4 traitCollection];
    sub_10076D7EC();
    sub_10076DCAC();
    v37 = v15;
    v32[1] = v4;
    sub_10000CF78(v38, v38[3]);
    v18 = a2;
    v19 = v37;
    sub_10076D85C();
    sub_10076D7CC();
    sub_10000CD74(v38);
    sub_10076DCEC();
    sub_10076D77C();
    sub_10076DCCC();
    sub_10076D75C();
    sub_10076DCDC();
    sub_10076D76C();
    sub_10076DCBC();
    sub_10076D74C();

    (*(v7 + 8))(v9, v36);
    v20 = sub_10076D7BC();
    v21 = sub_10037ACDC(v19, v20);
    v23 = v22;
    v25 = v24;
    LODWORD(v16) = ~v24;

    if (v16)
    {
      v26 = v33(v18, a3);
      v27 = v26;
      if (v25)
      {
        [v26 setAttributedText:v21];
      }

      else
      {
        v29 = sub_10076FF6C();
        [v27 setText:v29];

        v27 = v29;
      }

      v30 = v35;

      v31 = sub_10037C8D4(v21, v23, v25);
      (*(v34 + 8))(v13, v30, v31);
      (*(a3 + 80))(v18, a3);
    }

    else
    {
      v28 = v33(v18, a3);
      [v28 setText:0];

      (*(v34 + 8))(v13, v35);
      (*(a3 + 80))(v18, a3);
    }
  }

  return result;
}

double sub_10037C8D4(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10037C8EC(result, a2, a3 & 1);
  }

  return v3;
}

double sub_10037C8EC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_10037C8FC()
{
  result = qword_100954488;
  if (!qword_100954488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954488);
  }

  return result;
}

uint64_t sub_10037C950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100954458, &unk_10079DCA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10037C9C0()
{
  result = qword_1009544A8;
  if (!qword_1009544A8)
  {
    sub_10000CE78(&qword_100954458, &unk_10079DCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009544A8);
  }

  return result;
}

double sub_10037CA28(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

double sub_10037CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100760A4C();
  sub_10037CD5C(&unk_100954440, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  sub_10076332C();
  if (v14)
  {

    v7 = sub_10076B8FC();

    if (!v7)
    {
LABEL_5:

      return result;
    }

    v8 = (*(a4 + 56))(a3, a4);
    sub_10037B894(v7, v8);
    v10 = v9;

    if (v10)
    {

      goto LABEL_5;
    }

    v11 = sub_10076BFBC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007841E0;
    *(v12 + 32) = v11;

    v13._rawValue = v12;
    sub_100760BAC(v13);
  }

  return result;
}

void sub_10037CBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 32))(a2, a3);
  sub_10075FD2C();
  sub_10037CD5C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
}

uint64_t sub_10037CC98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10037CCD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10037CD5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10037CE00(void *a1, double a2, double a3)
{
  v6 = sub_100763ADC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076684C())
  {
    swift_getKeyPath();
    sub_10076338C();

    v10 = v14;
    v11 = [v14 userInterfaceIdiom];

    if (v11 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView(0);
      sub_1006C1A9C(v9);
      swift_getObjectType();
      a2 = sub_100262AD0(v9, a1, a2, a3);

      (*(v7 + 8))(v9, v6);
    }
  }

  return a2;
}

double sub_10037CFE0(uint64_t a1, __n128 a2)
{
  v4 = sub_1007693CC();
  __chkstk_darwin(v4 - 8);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007693EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076341C();
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v60 = v12;
  v61 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076C38C();
  v58 = *(v13 - 8);
  v59 = v13;
  __chkstk_darwin(v13);
  v57 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10076997C();
  v65 = *(v72 - 8);
  __chkstk_darwin(v72);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076686C();
  sub_10037DBE0(&unk_100963A20, &type metadata accessor for GameCenterReengagement, &protocol conformance descriptor for GameCenterReengagement);
  sub_10076332C();
  v17 = v89[0];
  if (!v89[0])
  {
    return 0.0;
  }

  v51 = v2;
  v53 = v6;
  v55 = v8;
  v52 = sub_100630CB4();
  v64 = sub_10076682C();
  v50[1] = v18;
  v19 = sub_10005312C();
  v71 = v17;
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v54 = v10;
  v56 = v7;
  v20 = sub_10076D3DC();
  sub_10000A61C(v20, qword_1009A2038);
  swift_getKeyPath();
  sub_10076338C();

  v21 = v89[0];
  sub_100770B3C();

  v22 = sub_10076C04C();
  v89[3] = v22;
  v69 = sub_10037DBE0(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v89[4] = v69;
  v23 = sub_10000DB7C(v89);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v70 = a1;
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = v24 + 104;
  v67 = v25;
  v25(v23);
  sub_10076C90C();
  sub_10000CD74(v89);
  sub_10076996C();
  sub_10076994C();
  v64 = v19;
  v65 = *(v65 + 8);
  (v65)(v16, v72);
  sub_10076683C();
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v20, qword_1009A2050);
  swift_getKeyPath();
  sub_10076338C();

  v26 = v88[0];
  sub_100770B3C();

  v88[3] = v22;
  v88[4] = v69;
  v27 = sub_10000DB7C(v88);
  v67(v27, v68, v22);
  sub_10076C90C();
  sub_10000CD74(v88);
  sub_10076996C();
  sub_10076994C();
  (v65)(v16, v72);
  sub_10076685C();
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v20, qword_1009A2068);
  swift_getKeyPath();
  v28 = v70;
  sub_10076338C();

  v29 = v87[0];
  sub_100770B3C();

  v87[3] = v22;
  v87[4] = v69;
  v30 = sub_10000DB7C(v87);
  v67(v30, v68, v22);
  sub_10076C90C();
  sub_10000CD74(v87);
  sub_10076996C();
  sub_10076994C();
  (v65)(v16, v72);
  swift_getKeyPath();
  v31 = v57;
  v32 = v28;
  sub_10076338C();

  sub_10076C2FC();
  (*(v58 + 8))(v31, v59);
  v33 = sub_10076DDDC();
  swift_allocObject();
  v34 = sub_10076DDAC();
  v36 = v61;
  v35 = v62;
  v37 = v63;
  (*(v62 + 16))(v61, v32, v63);
  v38 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v39 = (v60 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v71;
  (*(v35 + 32))(v40 + v38, v36, v37);
  *(v40 + v39) = v51;
  swift_allocObject();

  v41 = sub_10076DD9C();
  v42 = swift_unknownObjectRetain();
  sub_10013D454(v42, v53);
  swift_unknownObjectRelease();
  v86 = 0;
  *&v84[40] = 0u;
  v85 = 0u;
  sub_10000A570(v89, v84);
  sub_10000A570(v88, &v83);
  sub_10000A570(v87, &v82);
  v80 = v33;
  v81 = &protocol witness table for LayoutViewPlaceholder;
  v72 = v34;
  v79 = v34;
  swift_getKeyPath();

  sub_10076338C();

  v43 = v76;
  sub_10076E20C();

  swift_allocObject();
  v44 = sub_10076DDBC();
  v77 = v33;
  v78 = &protocol witness table for LayoutViewPlaceholder;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v76 = v44;
  v74 = v33;
  v73 = v41;

  v45 = v54;
  sub_1007693DC();
  swift_getKeyPath();
  sub_10076338C();

  sub_10037DBE0(&unk_1009544C0, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v46 = v56;
  sub_10076D2AC();
  v48 = v47;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v55 + 8))(v45, v46);
  sub_10000CD74(v87);
  sub_10000CD74(v88);
  sub_10000CD74(v89);
  return v48;
}

uint64_t sub_10037DA54()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_10037DB24(void *a1, double a2, double a3)
{
  sub_10076341C();

  return sub_10037CE00(a1, a2, a3);
}

uint64_t sub_10037DBE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10037DC28(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_10076BF6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100769FCC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075E7BC();
  if (v12)
  {
    v26 = v5;
    v27 = v12;
    if (sub_10076BB5C())
    {
      v25[1] = a2;
      v13 = [v2 traitCollection];
      sub_1002301BC(v11);

      sub_100769FBC();
      (*(v9 + 8))(v11, v8);
      sub_10076BF7C();
      sub_10076BF4C();
      (*(v26 + 8))(v7, v4);
      v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView];
      [v14 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v14 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_100760B7C();

      sub_10002CBB4(v28);
    }

    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_titleLabel];
    sub_10076BB6C();
    if (v16)
    {
      v17 = sub_10076FF6C();
    }

    else
    {
      v17 = 0;
    }

    [v15 setText:v17];

    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_subtitleLabel];
    sub_10076BA9C();
    if (v19)
    {
      v20 = sub_10076FF6C();
    }

    else
    {
      v20 = 0;
    }

    [v18 setText:v20];

    sub_10076BBFC();
    if (v21)
    {
      v22 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView];
      v23 = *&v22[OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel];
      v24 = sub_10076FF6C();
      [v23 setText:v24];

      [v22 setNeedsLayout];
      [v22 setNeedsDisplay];

      [v22 setHidden:0];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_ageRatingView] setHidden:1];
    }

    [v2 setNeedsLayout];
  }
}

void sub_10037E0C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension30InstallPageInstallingOfferView_iconView);

    v9 = a1;
    sub_10075FCAC();
  }
}

uint64_t sub_10037E14C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10037E18C(char a1)
{
  v2 = *(v1 + 25);
  *(v1 + 25) = a1;
  if (v2 != (a1 & 1) && swift_unknownObjectWeakLoadStrong())
  {
    sub_10074CA5C(a1 & 1);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10037E1F8()
{
  sub_10000CC8C(v0 + 32);

  return swift_deallocClassInstance();
}

double sub_10037E284(void *a1)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 16);
    [a1 _systemContentInset];
    v5 = v4;
    [a1 contentInset];
    v7 = v5 + v6;
    [a1 contentOffset];

    return sub_10037E18C(v7 + v8 <= v2);
  }

  return result;
}

void sub_10037E318(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ProductLockupCollectionViewCell(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView);
    if (v7)
    {
      sub_1000ACA5C();
      v15 = a1;
      v8 = v7;
      sub_1007709BC();

      if ((v17 & 1) == 0)
      {
        MaxY = CGRectGetMaxY(v16);
        *(v3 + 16) = MaxY;
        *(v3 + 24) = 0;
        [a3 _systemContentInset];
        v11 = v10;
        [a3 contentInset];
        v13 = v11 + v12;
        [a3 contentOffset];
        sub_10037E18C(v13 + v14 <= MaxY);
      }
    }
  }
}

double sub_10037E460@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v143 = a4;
  v149 = a5;
  v9 = sub_1007621EC();
  v10 = *(v9 - 8);
  v141 = v9;
  v142 = v10;
  __chkstk_darwin(v9);
  v150 = (&v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_10076469C();
  v13 = *(v12 - 8);
  v147 = v12;
  v148 = v13;
  __chkstk_darwin(v12);
  v144 = v14;
  v146 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v139 - v20;
  __chkstk_darwin(v22);
  v24 = &v139 - v23;
  if (sub_10076FF9C() == a1 && v25 == a2)
  {
  }

  else
  {
    v140 = a2;
    v27 = sub_10077167C();

    if ((v27 & 1) == 0)
    {
      if (sub_10076FF9C() == a1 && v28 == v140)
      {

        v29 = a3;
        goto LABEL_18;
      }

      v69 = sub_10077167C();

      v29 = a3;
      if (v69)
      {
LABEL_18:
        sub_10076468C();
        swift_getKeyPath();
        sub_10076F49C();

        (*(v16 + 8))(v18, v15);
        if (v152)
        {

          v70 = sub_10000A5D4(&qword_100954768, &unk_10079E240);
          v71 = v149;
          *(v149 + 24) = v70;
          v71[4] = sub_100120048(&qword_100954770, &qword_100954768, &unk_10079E240);
          v150 = sub_10000DB7C(v71);
          v149 = sub_10076FF9C();
          v142 = v72;
          type metadata accessor for ShelfFooterView();
          sub_1007708FC();
          v73 = swift_allocObject();
          swift_weakInit();
          v74 = v147;
          v75 = v148;
          v76 = v146;
          (*(v148 + 16))(v146, v29, v147);
          v77 = (*(v75 + 80) + 24) & ~*(v75 + 80);
          v78 = (v144 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
          v79 = swift_allocObject();
          *(v79 + 16) = v73;
          (*(v75 + 32))(v79 + v77, v76, v74);
          *(v79 + v78) = v143;
        }

        else
        {
          v80 = sub_10000A5D4(&qword_100950658, &unk_10079A078);
          v81 = v149;
          *(v149 + 24) = v80;
          v81[4] = sub_100120048(&unk_100950660, &qword_100950658, &unk_10079A078);
          sub_10000DB7C(v81);
          sub_10076FF9C();
          type metadata accessor for InfiniteScrollFooterView();
          sub_1007708FC();
        }

        goto LABEL_20;
      }

      type metadata accessor for GradientSectionBackgroundView();
      if (sub_1007708EC() == a1 && v82 == v140)
      {

LABEL_27:
        v84 = sub_10000A5D4(&qword_100954758, &unk_10079E230);
        v85 = v149;
        *(v149 + 24) = v84;
        v85[4] = sub_100120048(&qword_100954760, &qword_100954758, &unk_10079E230);
        v150 = sub_10000DB7C(v85);
        v149 = sub_1007708EC();
        sub_1007708FC();
        v86 = v147;
        v87 = v148;
        v88 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v89 = (*(v87 + 80) + 16) & ~*(v87 + 80);
        v90 = (v144 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
        v91 = swift_allocObject();
        (*(v87 + 32))(v91 + v89, v88, v86);
        *(v91 + v90) = v145;

        goto LABEL_20;
      }

      v83 = sub_10077167C();

      if (v83)
      {
        goto LABEL_27;
      }

      type metadata accessor for MaterialGradientSectionBackgroundView();
      if (sub_1007708EC() == a1 && v92 == v140)
      {

LABEL_33:
        v94 = sub_10000A5D4(&qword_100954748, &qword_10079E228);
        v95 = v149;
        *(v149 + 24) = v94;
        v95[4] = sub_100120048(&qword_100954750, &qword_100954748, &qword_10079E228);
        v150 = sub_10000DB7C(v95);
        v149 = sub_1007708EC();
        sub_1007708FC();
        v96 = v147;
        v97 = v148;
        v98 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v99 = (*(v97 + 80) + 16) & ~*(v97 + 80);
        v100 = (v144 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
        v101 = swift_allocObject();
        (*(v97 + 32))(v101 + v99, v98, v96);
        *(v101 + v100) = v145;

        goto LABEL_20;
      }

      v93 = sub_10077167C();

      if (v93)
      {
        goto LABEL_33;
      }

      type metadata accessor for ArtworkSectionBackgroundView();
      if (sub_1007708EC() == a1 && v102 == v140)
      {

LABEL_38:
        v104 = sub_10000A5D4(&qword_100954738, &qword_10079E220);
        v105 = v149;
        *(v149 + 24) = v104;
        v105[4] = sub_100120048(&qword_100954740, &qword_100954738, &qword_10079E220);
        v150 = sub_10000DB7C(v105);
        v149 = sub_1007708EC();
        sub_1007708FC();
        v106 = v147;
        v107 = v148;
        v108 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v109 = (*(v107 + 80) + 16) & ~*(v107 + 80);
        v110 = (v144 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
        v111 = swift_allocObject();
        (*(v107 + 32))(v111 + v109, v108, v106);
        *(v111 + v110) = v145;

        goto LABEL_20;
      }

      v103 = sub_10077167C();

      if (v103)
      {
        goto LABEL_38;
      }

      type metadata accessor for InteractiveSectionBackgroundView(0);
      if (sub_1007708EC() == a1 && v112 == v140)
      {

LABEL_43:
        v114 = sub_10000A5D4(&qword_100954728, &qword_10079E218);
        v115 = v149;
        *(v149 + 24) = v114;
        v115[4] = sub_100120048(&qword_100954730, &qword_100954728, &qword_10079E218);
        v150 = sub_10000DB7C(v115);
        v149 = sub_1007708EC();
        sub_1007708FC();
        v116 = swift_allocObject();
        swift_weakInit();
        v117 = v147;
        v118 = v148;
        v119 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v120 = (*(v118 + 80) + 24) & ~*(v118 + 80);
        v121 = swift_allocObject();
        *(v121 + 16) = v116;
        (*(v118 + 32))(v121 + v120, v119, v117);
        goto LABEL_20;
      }

      v113 = sub_10077167C();

      if (v113)
      {
        goto LABEL_43;
      }

      type metadata accessor for EditorsChoiceBackgroundView();
      if (sub_1007708EC() == a1 && v122 == v140)
      {

LABEL_48:
        v124 = sub_10000A5D4(&qword_100954718, &qword_10079E210);
        v125 = v149;
        *(v149 + 24) = v124;
        v125[4] = sub_100120048(&qword_100954720, &qword_100954718, &qword_10079E210);
        v150 = sub_10000DB7C(v125);
        v149 = sub_1007708EC();
        sub_1007708FC();
        v126 = v147;
        v127 = v148;
        v128 = v146;
        (*(v148 + 16))(v146, v29, v147);
        v129 = (*(v127 + 80) + 16) & ~*(v127 + 80);
        v130 = (v144 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
        v131 = swift_allocObject();
        (*(v127 + 32))(v131 + v129, v128, v126);
        *(v131 + v130) = v145;

        goto LABEL_20;
      }

      v123 = sub_10077167C();

      if (v123)
      {
        goto LABEL_48;
      }

      sub_10076529C();
      if (sub_10076527C() == a1 && v132 == v140)
      {
        goto LABEL_51;
      }

      v133 = sub_10077167C();

      if (v133)
      {
        goto LABEL_53;
      }

      if (sub_10076528C() == a1 && v136 == v140)
      {
LABEL_51:
      }

      else
      {
        v137 = sub_10077167C();

        if ((v137 & 1) == 0)
        {
          v138 = v149;
          *(v149 + 32) = 0;
          result = 0.0;
          *v138 = 0u;
          v138[1] = 0u;
          return result;
        }
      }

LABEL_53:
      v134 = sub_10000A5D4(&qword_10094A0E8, &qword_10078CE50);
      v135 = v149;
      *(v149 + 24) = v134;
      v135[4] = sub_100120048(&qword_10094A0F0, &qword_10094A0E8, &qword_10078CE50);
      sub_10000DB7C(v135);
      sub_10076526C();
      return result;
    }
  }

  v30 = a3;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v31 = *(v16 + 8);
  v31(v24, v15);
  if (!v151)
  {
    v33 = v141;
    v34 = v150;
    goto LABEL_14;
  }

  v32 = sub_10076028C();

  v33 = v141;
  v34 = v150;
  if ((v32 & 1) == 0)
  {
LABEL_14:
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v31(v21, v15);
    v45 = (*(v142 + 88))(v34, v33);
    v46 = v148;
    if (v45 != enum case for ShelfBackground.interactive(_:))
    {
      v56 = sub_10000A5D4(&qword_10094A0F8, qword_10078CE58);
      v57 = v149;
      *(v149 + 24) = v56;
      v57[4] = sub_100120048(&qword_10094A100, &qword_10094A0F8, qword_10078CE58);
      sub_10000DB7C(v57);
      v149 = sub_10076FF9C();
      v141 = v58;
      type metadata accessor for TitleHeaderView(0);
      v59 = sub_1007708FC();
      v139 = v60;
      v140 = v59;
      v61 = v30;
      v62 = swift_allocObject();
      swift_weakInit();
      v64 = v146;
      v63 = v147;
      (*(v46 + 16))(v146, v61, v147);
      v65 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v66 = (v144 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v62;
      (*(v46 + 32))(v67 + v65, v64, v63);
      *(v67 + v66) = v143;

      sub_10076A3BC();
      (*(v142 + 8))(v150, v33);
      return result;
    }

    v47 = sub_10000A5D4(&qword_100954778, &qword_10079E250);
    v48 = v149;
    *(v149 + 24) = v47;
    v48[4] = sub_100120048(&qword_100954780, &qword_100954778, &qword_10079E250);
    v150 = sub_10000DB7C(v48);
    v149 = sub_10076FF9C();
    v142 = v49;
    type metadata accessor for InteractiveTitleHeaderView(0);
    sub_1007708FC();
    v50 = swift_allocObject();
    swift_weakInit();
    v52 = v146;
    v51 = v147;
    (*(v46 + 16))(v146, v30, v147);
    v53 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v54 = (v144 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v50;
    (*(v46 + 32))(v55 + v53, v52, v51);
    *(v55 + v54) = v143;

    goto LABEL_20;
  }

  v35 = sub_10000A5D4(&qword_100954788, &qword_10079E258);
  v36 = v149;
  *(v149 + 24) = v35;
  v36[4] = sub_100120048(&qword_100954790, &qword_100954788, &qword_10079E258);
  v150 = sub_10000DB7C(v36);
  v149 = sub_10076FF9C();
  v142 = v37;
  type metadata accessor for ShelfHeaderView(0);
  sub_1007708FC();
  v38 = swift_allocObject();
  swift_weakInit();
  v40 = v147;
  v39 = v148;
  v41 = v146;
  (*(v148 + 16))(v146, v30, v147);
  v42 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v43 = (v144 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  (*(v39 + 32))(v44 + v42, v41, v40);
  *(v44 + v43) = v143;

LABEL_20:
  sub_10076A3BC();
  return result;
}

uint64_t sub_10037F5E8(uint64_t a1, int *a2)
{
  v56 = a2;
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076C38C();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v54 - v12;
  __chkstk_darwin(v13);
  v55 = &v54 - v14;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v27 = *(v9 + 8);
  v27(v26, v8);
  v28 = v68;
  if (!v68)
  {
    goto LABEL_16;
  }

  v29 = v67;

  v30 = (v28 >> 56) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_16:
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v23, v8);
    if (!v67)
    {
      return 0;
    }

    v31 = sub_1007603BC();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v33 = v32;
  v35 = v34;
  (*(v61 + 8))(v7, v62);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v27(v20, v8);
  v36 = v67;
  if (!v67)
  {
    goto LABEL_12;
  }

  if ((sub_10076028C() & 1) == 0)
  {

LABEL_12:
    v38 = sub_100382310(v33, v35);
    v40 = v39;
    v62 = type metadata accessor for TitleHeaderView(0);
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v17, v8);
    v61 = v67;
    v56 = v68;
    v41 = v55;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v41, v8);
    v42 = v66;
    v43 = v57;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v43, v8);
    v45 = v64;
    v44 = v65;
    v46 = v58;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v27(v46, v8);
    v47 = v63;
    v48 = sub_100382688();
    v49 = v60;
    (*(*v59 + 192))(a1);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v53 = sub_10076462C();
    swift_getObjectType();
    sub_1001963E0(v61, v56, v42, v45, v44, v47, 0, 0, v33, v35, v38, v40, UIEdgeInsetsZero.top, left, bottom, right, 0, 0, v48, v49, 1, v53);
    swift_unknownObjectRelease();

    sub_100384A74(v49, type metadata accessor for TitleHeaderView.Style);
    return *&v33;
  }

  type metadata accessor for ShelfHeaderView(0);
  v33 = sub_10042395C(v36, a1, v33, v35);

  return *&v33;
}

uint64_t sub_10037FCAC(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_1007621EC();
  v111 = *(v7 - 8);
  v112 = v7;
  __chkstk_darwin(v7);
  v110 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10076B5BC();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F9AC();
  v108 = *(v10 - 8);
  v109 = v10;
  __chkstk_darwin(v10);
  v102 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v88 - v13;
  __chkstk_darwin(v14);
  v107 = &v88 - v15;
  v97 = sub_10076469C();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v16;
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  v19 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v19 - 8);
  v90 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v89);
  v113 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076BEDC();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v104 = *(v24 - 8);
  __chkstk_darwin(v24);
  v100 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v88 - v27;
  v117 = a2;
  sub_10076468C();
  sub_100760C4C();
  sub_10076F64C();
  v98 = a3;
  sub_10076FC1C();
  v114 = v118;
  swift_getKeyPath();
  sub_10076F49C();

  v29 = v118;
  v30 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
  v31 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);

  sub_1001903B4(v29, v32);
  *(a1 + v30) = v29;

  sub_1001903C8(v31);

  swift_getKeyPath();
  v115 = v24;
  v116 = v28;
  sub_10076F49C();

  v33 = v118;
  v34 = v119;
  v35 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v37 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
  v36 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);

  sub_10018FD94(v33, v34);
  *v35 = v33;
  v35[1] = v34;

  sub_10018FE28(v37, v36);

  if (*(a1 + v30))
  {
    v38 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView);
    if (v38)
    {

      v39 = v38;
      sub_10076BEFC();
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v91 + 8))(v23, v92);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_100384AD4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }
  }

  swift_getKeyPath();
  sub_10076F49C();

  v40 = v118;
  v41 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
  v42 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);

  sub_100190554(v40, v43);
  *(a1 + v41) = v40;

  sub_100190668(v42);

  v44 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_10076F49C();

  if (v119)
  {
    v45 = sub_10076FF6C();
  }

  else
  {
    v45 = 0;
  }

  [v44 setText:v45];

  v46 = *(a1 + v41);
  if (v46)
  {
    v47 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
    if (v47)
    {
      v48 = v113;
      v49.n128_f64[0] = (*((swift_isaMask & *a1) + 0x1C0))();
      v50 = v90;
      sub_10011BA50(v48 + *(v89 + 20), v90, v49);

      v51 = v47;
      sub_100384A74(v48, type metadata accessor for TitleHeaderView.Style);
      sub_1006BA044(v46, v50, a1);
      sub_100384A74(v50, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v91 + 8))(v23, v92);
      sub_10076BFCC();
      sub_10075FD2C();
      sub_100384AD4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }
  }

  v52 = v96;
  v53 = *(v96 + 16);
  v54 = v93;
  v55 = v117;
  v56 = v97;
  v53(v93, v117, v97);
  v57 = v95;
  v53(v95, v54, v56);
  v58 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v59 = swift_allocObject();
  v60 = v99;
  *(v59 + 16) = v99;
  (*(v52 + 32))(v59 + v58, v54, v56);
  v61 = (a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v61 = sub_100384A08;
  v61[1] = v59;

  [v44 setNumberOfLines:sub_100382688()];

  (*(v52 + 8))(v57, v56);
  v62 = v113;
  (*(*v60 + 192))(v55);
  (*((swift_isaMask & *a1) + 0x1C8))(v62);
  v63 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
  if (v63)
  {
    swift_getKeyPath();
    v64 = v63;
    sub_10076F49C();

    if (v119)
    {
      v65 = sub_10076FF6C();
    }

    else
    {
      v65 = 0;
    }

    [v64 setText:v65];
  }

  sub_100380BBC(a1, v117, v98);
  v118 = sub_10076467C();
  v66 = sub_10077163C();
  v121[3] = &type metadata for String;
  v121[0] = v66;
  v121[1] = v67;
  sub_10076466C();
  v68 = sub_1007713CC();
  v70 = v69;
  sub_100016C74(&v118);
  v120 = &type metadata for String;
  v118 = v68;
  v119 = v70;
  v71 = v102;
  sub_10076F97C();
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v121, &unk_1009434C0, &qword_100783F60);
  swift_getKeyPath();
  v72 = v103;
  v73 = v115;
  v74 = v116;
  sub_10076F49C();

  v75 = sub_10076B5AC();
  v77 = v76;
  (*(v105 + 8))(v72, v106);
  v120 = &type metadata for String;
  v118 = v75;
  v119 = v77;
  v78 = v101;
  sub_10076F98C();
  v79 = v109;
  v80 = *(v108 + 8);
  v80(v71, v109);
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  swift_getKeyPath();
  sub_10076F49C();

  v81 = *(v121[0] + 16);

  v120 = &type metadata for Int;
  v118 = v81;
  v82 = v107;
  sub_10076F98C();
  v80(v78, v79);
  sub_10000CFBC(&v118, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();
  v80(v82, v79);
  v83 = v100;
  sub_10076468C();
  swift_getKeyPath();
  v84 = v110;
  sub_10076F49C();

  v85 = *(v104 + 8);
  v86.n128_f64[0] = v85(v83, v73);
  [a1 setOverrideUserInterfaceStyle:sub_1004751F8(v86)];
  (*(v111 + 8))(v84, v112);
  [a1 setNeedsLayout];

  return (v85)(v74, v73);
}

double sub_100380BBC(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a1;
  v4 = sub_10076F9AC();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076469C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  if (v49[0])
  {
    v41 = v15;
    v42 = v13;
    v16 = a2;
    sub_1003812BC(a2, v12);
    v17 = type metadata accessor for Accessory(0);
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = v47;
    (*((swift_isaMask & *v47) + 0x268))(v12, v46);
    sub_10000CFBC(v12, &qword_10094BB50, &qword_1007851D0);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v7 + 32))(v21 + v20, v9, v6);
    v22 = (v18 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
    v23 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
    v24 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction + 8);
    *v22 = sub_10038496C;
    v22[1] = v21;

    sub_1000167E0(v23, v24);

    v25 = *(v18 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
    if (v25)
    {
      v26 = v25;
      v27 = sub_10076467C();
      v50[3] = &type metadata for Int;
      v50[0] = v27;
      sub_10076466C();
      v28 = sub_1007713CC();
      v30 = v29;
      sub_100016C74(v49);
      v49[3] = &type metadata for String;
      v49[0] = v28;
      v49[1] = v30;
      v31 = v43;
      sub_10076F97C();
      sub_10000CFBC(v49, &unk_1009434C0, &qword_100783F60);
      sub_10000CFBC(v50, &unk_1009434C0, &qword_100783F60);
      sub_100770B9C();

      (*(v44 + 8))(v31, v45);
    }

    else
    {
    }

    (*(v48 + 8))(v41, v42);
  }

  else
  {
    v33 = v46;
    v32 = v47;
    swift_getKeyPath();
    sub_10076F49C();

    if (v49[0])
    {
      *v12 = v49[0];
      *(v12 + 8) = xmmword_10079E050;
      v34 = type metadata accessor for Accessory(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
      v35 = *((swift_isaMask & *v32) + 0x268);

      v35(v12, v33);

      sub_10000CFBC(v12, &qword_10094BB50, &qword_1007851D0);
      (*(v48 + 8))(v15, v13);
    }

    else
    {
      v37 = type metadata accessor for Accessory(0);
      (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
      (*((swift_isaMask & *v32) + 0x268))(v12, v33);
      sub_10000CFBC(v12, &qword_10094BB50, &qword_1007851D0);
      (*(v48 + 8))(v15, v13);
      v38 = (v32 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v39 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v40 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction + 8);
      *v38 = 0;
      v38[1] = 0;
      return sub_1000167E0(v39, v40);
    }
  }

  return result;
}

uint64_t sub_1003812BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10076B6EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = sub_10076B8EC();
  v23 = v16;
  v24 = v15;
  v25 = a1;
  sub_10076465C();
  sub_10076B6CC();
  sub_100384AD4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v17 = sub_10077124C();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = 0;
  if (v17)
  {
    sub_1000325F0();
    v19 = sub_100770CFC();
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v5 + 8))(v7, v4);
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  type metadata accessor for Accessory(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100381550(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_10077164C();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1007621EC();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15(v11, v8);
  if (v32 && (sub_1007603BC() & 1) != 0)
  {
    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D9AC();
    sub_10000A61C(v16, qword_1009A2350);
    sub_10076462C();
    sub_10076D17C();
    sub_10076D40C();
    bottom = v17;

    swift_unknownObjectRelease();
    (*(v28 + 8))(v4, v29);
    left = 0.0;
    top = 32.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v19.n128_f64[0] = top;
  v20.n128_f64[0] = left;
  v21.n128_f64[0] = bottom;
  v22.n128_f64[0] = right;
  v26 = sub_1006115B8(v7, v31, v19, v20, v21, v22);
  return (*(v5 + 8))(v7, v30, v26);
}

uint64_t sub_1003818EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B5EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_100381918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v10 + 8))(v12, v9);
    v16 = v18;
    if (v18)
    {
      v17 = swift_unknownObjectWeakLoadStrong();
      sub_1004267C8(v16, v17, *(v15 + 32), a6, a7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_100381AB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10037FCAC(a1, a6, a7, v10);
  }

  return v10.n128_f64[0];
}

double sub_100381B2C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100383D9C(a1, a6);
  }

  return result;
}

uint64_t sub_100381BA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10037FCAC(*&a1[OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_titleView], a6, a7, v15);
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_10076F64C();
    sub_10076FC1C();
    v16 = v20[0];
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    if (*(*(v16 + 16) + 16))
    {

      sub_10060FEFC(v20);
      if (v17)
      {

        sub_100016C74(v20);

        v20[3] = type metadata accessor for InteractiveTitleHeaderView(0);
        v20[4] = &off_1008A3180;
        v20[0] = a1;
        v18 = a1;
        sub_10043DED8(v20);

        return sub_10000CFBC(v20, &unk_1009575D0, &qword_10079E290);
      }
    }

    else
    {
    }

    return sub_100016C74(v20);
  }

  return result;
}

double sub_100381E08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_10076F64C();

    sub_10076FC1C();

    v11 = v15[0];
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    (*(v7 + 8))(v9, v6);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {

      sub_10060FEFC(v15);
      if (v12)
      {

        sub_100016C74(v15);

        v14[3] = type metadata accessor for InteractiveSectionBackgroundView(0);
        v14[4] = &off_10088D588;
        v14[0] = a1;
        v13 = a1;
        sub_10043DED8(v14);

        sub_10000CFBC(v14, &unk_1009575D0, &qword_10079E290);
        return result;
      }
    }

    sub_100016C74(v15);
  }

  return result;
}

void sub_10038205C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 32);

    if (v11)
    {
      ObjectType = swift_getObjectType();
      sub_10076468C();
      a4(v8, ObjectType, v12);
      swift_unknownObjectRelease();
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1003821B0()
{

  sub_10000CC8C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1003822A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GenericPageShelfSupplementaryProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 32) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 16) = a2;
  return v7;
}

double sub_100382310(double a1, double a2)
{
  v4 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v29)
  {
    v12 = sub_10076461C();
    sub_10076B8EC();
    v14 = v13;
    if (qword_10093F988 != -1)
    {
      swift_once();
    }

    v15 = qword_10094C0F0;
    if (v14)
    {
      v16 = sub_10076FF6C();
    }

    else
    {
      v16 = 0;
    }

    [v15 setTitle:v16 forState:0];

    [v15 setImage:0 forState:0];
    v19 = [v15 titleLabel];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = [v21 font];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];
      }

      else
      {
        v24 = 0;
      }

      [v21 setFont:v24];
    }

    [v15 sizeThatFits:{a1, a2}];
    v26 = v25;

    v18 = v26 + 0.0;
    [v15 setTitle:0 forState:0];
    [v15 setImage:0 forState:0];
  }

  else
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v11(v7, v4);
    if (v29 && (v17 = sub_1007603BC(), , (v17 & 1) != 0))
    {
      return 156.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v18;
}

uint64_t sub_100382688()
{
  v0 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10076461C();
  v8 = sub_10077071C();

  if (v8)
  {
    return 0;
  }

  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v13)
  {

    return 1;
  }

  else
  {
    sub_10076468C();
    swift_getKeyPath();
    sub_10076F49C();

    v10(v3, v0);
    if (v13 && (v11 = sub_1007603BC(), , (v11 & 1) != 0))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_100382860()
{
  v0 = sub_10000A5D4(&qword_100944530, &qword_10079E160);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v23 = sub_10076C38C();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = v25;
  if (!v25)
  {
    return 0;
  }

  v22 = v24;
  sub_10076464C();
  sub_10076C8BC();
  sub_10076C2FC();
  v16 = v15;
  v18 = v17;
  (*(v3 + 8))(v5, v23);
  v19 = sub_10076461C();
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v20 = v13(v9, v6);
  v20.n128_u64[0] = v16;
  sub_100181114(v22, v14, v19, v2, v20, v18);

  sub_10000CFBC(v2, &qword_100944530, &qword_10079E160);
  return v16;
}

void *sub_100382B5C(uint64_t a1, int *a2)
{
  v2 = COERCE_DOUBLE(sub_10037F5E8(a1, a2));
  if ((v4 & 1) != 0 || ((v5 = v2, v6 = v3, v3 >= v2) ? (v7 = v2) : (v7 = v3), v7 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 absoluteDimension:v5];
    v10 = [v8 estimatedDimension:v6];
    v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v11 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v13 = v12;
  }

  v14 = COERCE_DOUBLE(sub_100382860());
  if ((v16 & 1) != 0 || ((v17 = v14, v18 = v15, v15 >= v14) ? (v19 = v14) : (v19 = v15), v19 <= 0.0))
  {
    v24 = 0;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 absoluteDimension:v17];
    v22 = [v20 absoluteDimension:v18];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionFooter alignment:5];
    v25 = v24;
  }

  v26 = 0;
  v30[4] = v12;
  v30[5] = v24;
  while (v26 != 2)
  {
    v27 = v30[v26++ + 4];
    if (v27)
    {
      v28 = v27;
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }
  }

  sub_10000A5D4(&qword_100954710, &qword_10079E158);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *sub_100382E44(__n128 a1)
{
  v1 = sub_1007621EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v6 + 8))(v8, v5);
  v9 = (*(v2 + 88))(v4, v1);
  if (v9 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v2 + 96))(v4, v1);

    v10 = *(sub_10000A5D4(&qword_10094E098, qword_100795D80) + 48);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007841E0;
    v12 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_1007708EC();
    v13 = sub_10076FF6C();

    v14 = [v12 backgroundDecorationItemWithElementKind:v13];

    *(v11 + 32) = v14;
    v15 = sub_1007659CC();
    (*(*(v15 - 8) + 8))(&v4[v10], v15);
  }

  else if (v9 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v2 + 96))(v4, v1);

    v16 = sub_10000A5D4(&qword_10094B500, &qword_10079E1D0);
    v17 = v16[12];
    v18 = v16[16];
    v19 = v16[20];
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007841E0;
    v20 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_1007708EC();
    v21 = sub_10076FF6C();

    v22 = [v20 backgroundDecorationItemWithElementKind:v21];

    *(v11 + 32) = v22;
    v23 = sub_1007659CC();
    (*(*(v23 - 8) + 8))(&v4[v19], v23);
    v24 = sub_10076A05C();
    v25 = *(*(v24 - 8) + 8);
    v25(&v4[v18], v24);
    v25(&v4[v17], v24);
  }

  else if (v9 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v2 + 96))(v4, v1);
    v26 = *(sub_10000A5D4(qword_10094ADC0, &unk_1007A2D00) + 48);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007841E0;
    v27 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_1007708EC();
    v28 = sub_10076FF6C();

    v29 = [v27 backgroundDecorationItemWithElementKind:v28];

    *(v11 + 32) = v29;
    v30 = sub_1007659CC();
    (*(*(v30 - 8) + 8))(&v4[v26], v30);
    v31 = sub_10076AA6C();
    (*(*(v31 - 8) + 8))(v4, v31);
  }

  else if (v9 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else if (v9 == enum case for ShelfBackground.interactive(_:))
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007841E0;
    v32 = objc_opt_self();
    type metadata accessor for InteractiveSectionBackgroundView(0);
    sub_1007708EC();
    v33 = sub_10076FF6C();

    v34 = [v32 backgroundDecorationItemWithElementKind:v33];

    *(v11 + 32) = v34;
  }

  else
  {
    v35 = enum case for ShelfBackground.editorsChoice(_:);
    v36 = v9;
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007841E0;
    v37 = objc_opt_self();
    if (v36 == v35)
    {
      type metadata accessor for EditorsChoiceBackgroundView();
      sub_1007708EC();
      v38 = sub_10076FF6C();

      v39 = [v37 backgroundDecorationItemWithElementKind:v38];

      *(v11 + 32) = v39;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_1007708EC();
      v40 = sub_10076FF6C();

      v41 = [v37 backgroundDecorationItemWithElementKind:v40];

      *(v11 + 32) = v41;
      (*(v2 + 8))(v4, v1);
    }
  }

  return v11;
}

void *sub_100383578(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a2;
  v6 = sub_1007621EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  (*(v11 + 8))(v13, v10);
  v14 = (*(v7 + 88))(v9, v6);
  LODWORD(v11) = enum case for ShelfBackground.interactive(_:);
  (*(v7 + 8))(v9, v6);
  if (v14 != v11)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  sub_10076F64C();
  sub_10076FC1C();
  v15 = sub_1001485D0(a1, v19, a3);
  sub_10000A5D4(&qword_100944390, &qword_10079E150);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  v17 = sub_100384AD4(&qword_100954708, type metadata accessor for InteractiveSectionBackgroundScrollObserver, &unk_1007A3250);
  *(v16 + 32) = v15;
  *(v16 + 40) = v17;

  return v16;
}

uint64_t sub_10038381C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B5EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100383874()
{
  sub_10076469C();

  return sub_1003845C8();
}

uint64_t sub_1003838D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100383910(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10076469C();
  v9 = *(v4 + 16);

  return sub_100381E08(a1, a2, a3, a4, v9);
}

uint64_t sub_1003839AC()
{
  v1 = *(sub_10076469C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_100381550(v0 + v2, *(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_100383A58()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100383BCC()
{
  v1 = sub_10076469C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100383CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_10076469C() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

double sub_100383D9C(char *a1, uint64_t a2)
{
  v43 = a1;
  v3 = sub_10076469C();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v39 = v4;
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007621EC();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100944530, &qword_10079E160);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v45;
  v35 = v44;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v17(v13, v10);
  if (qword_10093F928 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ShelfFooterView.Style(0);
  v20 = sub_10000A61C(v19, qword_10099D618);
  v21 = v43;
  sub_100181FA0(v35, v18, v20, v9, a2);

  sub_10000CFBC(v9, &qword_100944530, &qword_10079E160);
  sub_10076468C();
  swift_getKeyPath();
  v22 = v36;
  sub_10076F49C();

  v23.n128_f64[0] = v17(v16, v10);
  v24 = sub_1004751F8(v23);
  (*(v37 + 8))(v22, v38);
  [v21 setOverrideUserInterfaceStyle:v24];
  v25 = swift_allocObject();
  swift_weakInit();
  v27 = v40;
  v26 = v41;
  v28 = v42;
  (*(v41 + 16))(v40, a2, v42);
  v29 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  (*(v26 + 32))(v30 + v29, v27, v28);
  v31 = &v21[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction];
  v32 = *&v21[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction];
  v33 = *&v21[OBJC_IVAR____TtC20ProductPageExtension15ShelfFooterView_footerAction + 8];
  *v31 = sub_100384254;
  v31[1] = v30;

  sub_1000167E0(v32, v33);

  return result;
}

uint64_t sub_10038426C(uint64_t a1, void (*a2)(char *, __n128))
{
  v21 = a2;
  v2 = sub_10077164C();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1007621EC();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v15(v11, v8);
  if (v22)
  {
    if (sub_1007603BC())
    {
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v16 = sub_10076D9AC();
      sub_10000A61C(v16, qword_1009A2350);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();

      swift_unknownObjectRelease();
      (*(v18 + 8))(v4, v19);
    }

    else
    {
    }
  }

  (v21)(v7);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_1003845C8()
{
  v0 = sub_10077164C();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007621EC();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13 = *(v7 + 8);
  v13(v12, v6);
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v13(v9, v6);
  if (v19)
  {
    if (sub_1007603BC())
    {
      if (qword_1009411F0 != -1)
      {
        swift_once();
      }

      v14 = sub_10076D9AC();
      sub_10000A61C(v14, qword_1009A2350);
      sub_10076462C();
      sub_10076D17C();
      sub_10076D40C();

      swift_unknownObjectRelease();
      (*(v16 + 8))(v2, v17);
    }

    else
    {
    }
  }

  return (*(v3 + 8))(v5, v18);
}

uint64_t sub_100384914@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B64C();
  *a1 = result;
  return result;
}

uint64_t sub_100384940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B65C();
  *a1 = result;
  return result;
}

uint64_t sub_100384A08()
{
  sub_10076469C();

  return sub_100382688();
}

uint64_t sub_100384A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100384AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100384B54(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
  sub_1007644CC();
  v3 = sub_10076FF6C();

  [v2 setText:v3];
}

double sub_100384C60(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_10076997C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007644CC();
  sub_10005312C();
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  sub_10000A61C(v11, qword_1009A1480);
  v12 = [a6 traitCollection];
  sub_100770B3C();

  v13 = sub_10076C04C();
  v20 = v13;
  v21 = sub_100384F04(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v14 = sub_10000DB7C(v19);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.measurement_with_labelplaceholder(_:), v13);
  sub_10076C90C();
  sub_10000CD74(v19);
  sub_10076996C();
  sub_10076994C();
  (*(v8 + 8))(v10, v7);
  sub_10000CF78(v19, v20);
  sub_10076D2BC();
  v16 = v15;
  sub_10000CD74(v19);
  return v16;
}

uint64_t sub_100384F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CrossLinkPresenter.adamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v4 = sub_10076B96C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CrossLinkPresenter.isVisible.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_100385020(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double CrossLinkPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*CrossLinkPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1003852AC;
}

void sub_1003852AC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t CrossLinkPresenter.__allocating_init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a6;
  v17 = swift_allocObject();
  CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(a1, a2, a3, a4, a5, v11, a7, a8, a9, a10);
  return v17;
}

void *CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v47 = a6;
  v52 = a5;
  v42 = a2;
  v43 = a4;
  v45 = a7;
  v46 = a10;
  v48 = *v10;
  v49 = a3;
  v14 = sub_10075EBAC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = v10 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view;
  *(v21 + 1) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v23 = sub_10076B96C();
  v50 = *(v23 - 8);
  v51 = v23;
  (*(v50 + 16))(v11 + v22, a1);
  swift_beginAccess();
  v44 = a8;
  *(v21 + 1) = a8;
  v24 = v45;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v53 = a9;
  v54 = a1;
  v25 = v47;
  v26 = sub_10075EE2C();
  v27 = (v11 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_stateMachine);
  *v27 = v26;
  v27[1] = v28;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10075ED2C();
  (*(v15 + 32))(v17, v20, v14);
  v29 = (*(v15 + 88))(v17, v14);
  if (v29 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_1007627AC();
LABEL_3:
    (*(*(v30 - 8) + 8))(v17, v30);
LABEL_6:
    v31 = 1;
    goto LABEL_7;
  }

  if (v29 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_6;
  }

  if (v29 == enum case for LegacyAppState.installing(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_10075EB1C();
    goto LABEL_3;
  }

  if (v29 == enum case for LegacyAppState.openable(_:))
  {
    (*(v15 + 96))(v17, v14);

    v30 = sub_100764E5C();
    goto LABEL_3;
  }

  (*(v15 + 8))(v17, v14);
  v31 = 0;
LABEL_7:
  v32 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible) = v31;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v25 & 1;
  *(v34 + 32) = v48;

  sub_10075ECEC();

  if (v24)
  {
    ObjectType = swift_getObjectType();
    v36 = v44;
    v37 = *(v44 + 40);
    swift_unknownObjectRetain();
    v48 = v26;
    v37(v42, v49, v43, v52, ObjectType, v36);

    swift_unknownObjectRelease();
    v38 = swift_getObjectType();
    swift_beginAccess();
    v39 = *(v11 + v32);
    v40 = *(v36 + 32);
    swift_unknownObjectRetain();
    v40(v39, 0, v38, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    (*(v50 + 8))(v54, v51);
  }

  else
  {

    (*(v50 + 8))(v54, v51);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v11;
}

uint64_t sub_1003859E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100385A18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_10075EBAC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    sub_10075ED2C();
    (*(v5 + 32))(v7, v10, v4);
    v12 = (*(v5 + 88))(v7, v4);
    if (v12 == enum case for LegacyAppState.waiting(_:))
    {
      (*(v5 + 96))(v7, v4);
      v13 = sub_1007627AC();
    }

    else
    {
      if (v12 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v5 + 8))(v7, v4);
        goto LABEL_7;
      }

      if (v12 == enum case for LegacyAppState.installing(_:))
      {
        (*(v5 + 96))(v7, v4);
        v13 = sub_10075EB1C();
      }

      else
      {
        if (v12 != enum case for LegacyAppState.openable(_:))
        {
          (*(v5 + 8))(v7, v4);
          v14 = 0;
          goto LABEL_8;
        }

        (*(v5 + 96))(v7, v4);

        v13 = sub_100764E5C();
      }
    }

    (*(*(v13 - 8) + 8))(v7, v13);
LABEL_7:
    v14 = 1;
LABEL_8:
    sub_100385020(v14);
  }

  return result;
}

uint64_t sub_100385CD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t CrossLinkPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10076B96C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000CC8C(v1 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CrossLinkPresenter.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10076B96C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000CC8C(v1 + OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_100385EF8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for CrossLinkPresenter(uint64_t a1)
{
  result = qword_100954818;
  if (!qword_100954818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100385FCC(uint64_t a1)
{
  result = sub_10076B96C();
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

void sub_100386168(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v174 = a3;
  v156 = a2;
  v170 = a1;
  ObjectType = swift_getObjectType();
  v159 = sub_1007679DC();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v6 - 8);
  v160 = &v156 - v7;
  v164 = sub_10000A5D4(&qword_1009548E8, &qword_10079E598);
  __chkstk_darwin(v164);
  v173 = &v156 - v8;
  v9 = sub_10000A5D4(&unk_100962490, qword_10079E5A0);
  __chkstk_darwin(v9 - 8);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v156 - v12;
  __chkstk_darwin(v13);
  v171 = &v156 - v14;
  v15 = sub_10076201C();
  v16 = *(v15 - 8);
  v167 = v15;
  v168 = v16;
  __chkstk_darwin(v15);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v163 = &v156 - v19;
  v20 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v20 - 8);
  v175 = &v156 - v21;
  v22 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v22 - 8);
  v172 = &v156 - v23;
  v24 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v27 - 8);
  v29 = &v156 - v28;
  v30 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v30 - 8);
  v32 = &v156 - v31;
  v33 = sub_10076A3AC();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  *&v38 = __chkstk_darwin(v37 - 8).n128_u64[0];
  v40 = &v156 - v39;
  v41 = [v3 traitCollection];
  LODWORD(v169) = sub_10077071C();

  v42 = *(v34 + 104);
  v42(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v33);
  v42(v32, enum case for OfferButtonPresenterViewAlignment.left(_:), v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_10038814C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v43 = v170;
  v44 = v4;
  sub_10076759C();
  v45 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  v46 = sub_10075F78C();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = sub_1007628DC();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
  v48 = sub_10076C54C();
  v49 = v172;
  (*(*(v48 - 8) + 56))(v172, 1, 1, v48);
  v50 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v51 = v175;
  (*(*(v50 - 8) + 56))(v175, 1, 1, v50);
  sub_1004D0A60(v43, v4, v40, v174, 0, (v169 & 1) == 0, v29, v26, v49, v51);
  sub_10000CFBC(v51, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v49, &unk_100949290, &unk_10078BBF0);
  sub_10000CFBC(v26, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v29, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v40, &unk_100946760, &unk_100787A20);
  sub_10076289C();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
  }

  v53 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  v54 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  v55 = v173;
  v56 = v171;
  if (v54 && ([v54 isHidden] & 1) == 0 && (v57 = *&v4[v53]) != 0)
  {
    LODWORD(v172) = [v57 hasContent];
  }

  else
  {
    LODWORD(v172) = 0;
  }

  v58 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v59 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v59 && ([v59 isHidden] & 1) == 0 && (v60 = *&v4[v58]) != 0)
  {
    LODWORD(v175) = [v60 hasContent];
  }

  else
  {
    LODWORD(v175) = 0;
  }

  if (sub_10076BB0C() && (v61 = sub_10076518C(), , v61))
  {
  }

  else
  {
    v62 = sub_10076C04C();
    v177 = v62;
    v178 = sub_10038814C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v63 = sub_10000DB7C(v176);
    (*(*(v62 - 8) + 104))(v63, enum case for Feature.search_tags(_:), v62);
    LOBYTE(v62) = sub_10076C90C();
    sub_10000CD74(v176);
    if ((v62 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v172)
  {
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    v64 = *&v4[v58];
    if (v64)
    {
      [v64 setHidden:1];
    }
  }

  else if (v175)
  {
    v65 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    LODWORD(v175) = 1;
    [v65 setHidden:1];
    goto LABEL_23;
  }

  LODWORD(v175) = 0;
LABEL_23:
  v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_useAdsLocale] = sub_10076BA3C() & 1;
  if (v52)
  {

    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = sub_1007627DC() & 1;
    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute] = sub_10076286C() & 1;
    v66 = sub_10076C04C();
    v177 = v66;
    v178 = sub_10038814C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v67 = sub_10000DB7C(v176);
    (*(*(v66 - 8) + 104))(v67, enum case for Feature.search_tags(_:), v66);
    LOBYTE(v66) = sub_10076C90C();
    sub_10000CD74(v176);
    if (v66 & 1) != 0 && (sub_1007627DC())
    {
      if (sub_10076BB3C())
      {
        v68 = v163;
        sub_100766A8C();
        v69 = v167;
        v70 = v168;
        v71 = v162;
        (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
        sub_10038814C(&unk_100958360, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
        v72 = sub_10076FF1C();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v68, v69);
        if ((v72 & 1) == 0)
        {
          v137 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
          v138 = 1.0;
          if (!v44[v137])
          {
            v138 = 0.0;
          }

          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v138, v156}];
          v139 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
          sub_100523700(v139);

          goto LABEL_98;
        }
      }

      v74 = sub_10076BB8C();
      if (v74)
      {
        v75 = v74;
        sub_10076BA1C();
        if (v76)
        {
          v77 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 1;
          v78 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView;
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:1.0];
          v79 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
          v80 = 0.0;
          if (v44[v77])
          {
            v80 = 1.0;
          }

          [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v80, v156}];
          v81 = *&v44[v78];
          [v75 floatValue];
          sub_100062020(v82);

          v83 = *&v44[v79];
          v84 = sub_10076FF6C();

          [v83 setText:v84];

          v85 = sub_10076BA8C();
          v86 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = v85 & 1;
          sub_100523700(v86);

          goto LABEL_98;
        }
      }

      v145 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
      v146 = 1.0;
      if (!v44[v145])
      {
        v146 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:v146];
      v147 = sub_10076BA8C();
      v148 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = v147 & 1;
      sub_100523700(v148);
      goto LABEL_98;
    }

    v169 = v52;
    v87 = v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_100523700(v87);
    v88 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
    v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v89 = 1.0;
    if (!v4[v88])
    {
      v89 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v89, v156}];
    if (sub_10076BB3C())
    {
      sub_100766A8C();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v98 = v166;
    v99 = v167;
    v100 = v168;
    v101 = *(v168 + 56);
    v101(v56, v90, 1, v167);
    (*(v100 + 104))(v98, enum case for OfferLabelStyle.arcadeComingSoon(_:), v99);
    v101(v98, 0, 1, v99);
    v102 = *(v164 + 48);
    sub_100016E2C(v56, v55, &unk_100962490, qword_10079E5A0);
    sub_100016E2C(v98, v55 + v102, &unk_100962490, qword_10079E5A0);
    v103 = *(v100 + 48);
    if (v103(v55, 1, v99) == 1)
    {
      sub_10000CFBC(v98, &unk_100962490, qword_10079E5A0);
      v55 = v173;
      sub_10000CFBC(v56, &unk_100962490, qword_10079E5A0);
      if (v103(v55 + v102, 1, v99) == 1)
      {
        sub_10000CFBC(v55, &unk_100962490, qword_10079E5A0);
LABEL_98:
        v149 = sub_10076284C();
        if (v149)
        {
          v150 = v149;
          if (sub_1000E99EC(v149, 0))
          {
            v151 = sub_10076286C();
            sub_1004ED4D8(v150, v151 & 1, v174);
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      v104 = v161;
      sub_100016E2C(v55, v161, &unk_100962490, qword_10079E5A0);
      if (v103(v55 + v102, 1, v99) != 1)
      {
        v106 = v56;
        v107 = v55;
        v108 = v168;
        v109 = v107 + v102;
        v110 = v163;
        (*(v168 + 32))(v163, v109, v99);
        sub_10038814C(&unk_100958360, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
        LODWORD(v170) = sub_10076FF1C();
        v111 = *(v108 + 8);
        v111(v110, v99);
        sub_10000CFBC(v166, &unk_100962490, qword_10079E5A0);
        sub_10000CFBC(v106, &unk_100962490, qword_10079E5A0);
        v111(v104, v99);
        sub_10000CFBC(v107, &unk_100962490, qword_10079E5A0);
        if (v170)
        {
          goto LABEL_98;
        }

LABEL_59:
        if (v172)
        {
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:0];
          v105 = *&v44[v58];
          if (v105)
          {
            [v105 setHidden:0];
          }
        }

        else if (v175)
        {
          [*&v44[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:0];
        }

        goto LABEL_98;
      }

      sub_10000CFBC(v166, &unk_100962490, qword_10079E5A0);
      sub_10000CFBC(v56, &unk_100962490, qword_10079E5A0);
      (*(v168 + 8))(v104, v99);
    }

    sub_10000CFBC(v55, &qword_1009548E8, &qword_10079E598);
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
LABEL_68:
    if (sub_10076BB3C())
    {
      v112 = v163;
      sub_100766A8C();
      v113 = v167;
      v114 = v168;
      v115 = v162;
      (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
      sub_10038814C(&unk_100958360, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
      v116 = sub_10076FF1C();
      v117 = *(v114 + 8);
      v117(v115, v113);
      v117(v112, v113);
      if ((v116 & 1) == 0)
      {
        v122 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
        v123 = 1.0;
        if (!v44[v122])
        {
          v123 = 0.0;
        }

        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v123, v156}];
        v124 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_100523700(v124);

        goto LABEL_108;
      }
    }

    if ((v172 | v175))
    {
      if (!sub_10076BB0C())
      {
        goto LABEL_104;
      }

      v118 = sub_10076518C();

      if (!v118)
      {
        goto LABEL_104;
      }
    }

    if (sub_10076BA8C())
    {
      v119 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
      v120 = 1.0;
      if (!v44[v119])
      {
        v120 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v120, v156}];
      v121 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 1;
LABEL_107:
      sub_100523700(v121);
LABEL_108:
      [v44 setNeedsLayout];

      return;
    }

    v125 = sub_10076BB8C();
    if (v125)
    {
      v126 = v125;
      sub_10076BA1C();
      if (v127)
      {
        v128 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_100523700(v128);
        v129 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 1;
        v130 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView;
        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:1.0];
        v131 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
        v132 = 0.0;
        if (v44[v129])
        {
          v132 = 1.0;
        }

        [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v132, v156}];
        v133 = *&v44[v130];
        [v126 floatValue];
        sub_100062020(v134);

        v135 = *&v44[v131];
        v136 = sub_10076FF6C();

        [v135 setText:v136];

        goto LABEL_108;
      }
    }

LABEL_104:
    v152 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
    v153 = 1.0;
    if (!v44[v152])
    {
      v153 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:v153];
    v121 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    goto LABEL_107;
  }

  v91 = sub_10076282C();
  if (!v91)
  {

    goto LABEL_68;
  }

  v92 = v91;
  if ((sub_1000E99EC(0, v91) & 1) == 0)
  {

    goto LABEL_68;
  }

  if (sub_10076280C() >> 62)
  {
    sub_10077158C();
  }

  v93 = sub_10076288C();
  v94 = v160;
  if (!(v93 >> 62))
  {
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_50:

    sub_100016E2C(v156, v94, &unk_1009428D0, &unk_100783DC0);
    v96 = sub_10076341C();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_10000CFBC(v94, &unk_1009428D0, &unk_100783DC0);
    }

    else
    {
      sub_100763F3C();
      sub_10038814C(&qword_1009548F0, &type metadata accessor for BundleSearchResult, &protocol conformance descriptor for SearchResult);
      sub_10076334C();
      (*(v97 + 8))(v94, v96);
    }

    v140 = v159;
    v141 = v157;
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    sub_10051F824(v92, v141, v174);

    (*(v158 + 8))(v141, v140);
    v142 = v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_100523700(v142);
    v143 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v144 = 1.0;
    if (!v44[v143])
    {
      v144 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v144, v156}];

    goto LABEL_108;
  }

  v154 = v93;
  v155 = sub_10077158C();
  v93 = v154;
  if (!v155)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((v93 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_48:

    v95 = sub_10076C41C();

    if (v95 >> 62)
    {
      sub_10077158C();
    }

    goto LABEL_50;
  }

  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_48;
  }

  __break(1u);
}

double sub_100387B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0));

    sub_100522C28([v6 init]);
    v7 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_10076C3FC();
      sub_10076B8EC();
      v11 = v10;

      if (v11)
      {
        v12 = sub_10076FF6C();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v16 = *&v3[v7];
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        *(v17 + 24) = a1;
        v18 = &v16[qword_10094CD78];
        v19 = *&v16[qword_10094CD78];
        v20 = *&v16[qword_10094CD78 + 8];
        *v18 = sub_100388144;
        v18[1] = v17;

        v21 = v16;

        sub_1000167E0(v19, v20);
      }
    }

    v22 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
    if (v22)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v23 = v22;
      v24 = sub_100770D1C();
      [v23 setTintColor:v24];
    }

    v25 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v26 = sub_100770D1C();
    [v25 setTextColor:v26];

    v27 = sub_10076C04C();
    v40[3] = v27;
    v40[4] = sub_10038814C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v28 = sub_10000DB7C(v40);
    (*(*(v27 - 8) + 104))(v28, enum case for Feature.search_tags(_:), v27);
    LOBYTE(v26) = sub_10076C90C();
    sub_10000CD74(v40);
    v29 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
    if (v26)
    {
      v30 = sub_100770D1C();
    }

    else
    {
      v30 = sub_100770D0C();
    }

    v31 = v30;
    [v29 setTextColor:v30];

    sub_10076C3EC();
    v33 = v32;
    v34 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
    v35 = [v34 superview];
    if (!v35 || (v36 = v35, sub_100016F40(0, &qword_1009441F0, UIView_ptr), v37 = v3, v38 = sub_100770EEC(), v36, v37, (v38 & 1) == 0))
    {
      [v3 addSubview:v34];
    }

    [v34 setHidden:v33 == 0];
    if (v33)
    {
      v39 = sub_10076FF6C();
    }

    else
    {
      v39 = 0;
    }

    [v34 setText:v39];

    [v3 setNeedsLayout];
    v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 1;
    sub_10052385C();
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 0;
    sub_10052385C();
    v13 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }

  return result;
}

uint64_t sub_100387F8C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943200, &unk_100785840);
  }

  v8 = sub_10076C3FC();
  sub_100263BF0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_100388104()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10038814C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ProductEditorsChoiceView(uint64_t a1)
{
  result = qword_100954918;
  if (!qword_100954918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10038823C@<X0>(char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_10076D65C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10076D63C();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v5;
  sub_10076D64C();

  v16 = *(v9 + 8);
  v16(v11, v8);
  a4[3] = v8;
  a4[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(a4);
  sub_10076D64C();
  return (v16)(v14, v8);
}

char *sub_1003883EC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076771C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v51 - v17;
  v19 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  v4[qword_100954910] = 0;
  v25 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
  v26 = sub_100040B8C(3, 0, 0, 0, 1u);
  v56 = v4;
  *&v4[qword_1009548F8] = v26;
  if (qword_100940C40 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A61C(v9, qword_1009A12B8);
  v52 = *(v10 + 16);
  v53 = v27;
  v52(v24, v27, v9);
  (*(v10 + 56))(v24, 0, 1, v9);
  (*(v13 + 104))(v18, enum case for DirectionalTextAlignment.none(_:), v12);
  v28 = objc_allocWithZone(type metadata accessor for FadeOutDynamicTypeLabel(0));
  v29 = qword_100966530;
  *&v28[v29] = [objc_allocWithZone(type metadata accessor for InvertedGradientLayer()) init];
  v30 = &v28[qword_100966538];
  *v30 = 0;
  v30[8] = 1;
  sub_100389394(v24, v21);
  (*(v13 + 16))(v15, v18, v12);
  v31 = sub_1007626AC();
  (*(v13 + 8))(v18, v12);
  sub_1000276DC(v24);
  v32 = v56;
  *&v56[qword_100954900] = v31;
  v33 = [objc_opt_self() clearColor];
  type metadata accessor for FadeInDynamicTypeButton(0);
  v34 = v54;
  v52(v54, v53, v9);
  v35 = v33;
  v36 = sub_1004CF028(v34, v35);

  v37 = v36;
  v58._countAndFlagsBits = 0x4D5F4E4F49544341;
  v58._object = 0xEB0000000045524FLL;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_1007622EC(v58, v59);
  v38 = sub_10076FF6C();

  [v37 setTitle:v38 forState:0];

  [v37 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v37 setAdjustsImageWhenHighlighted:0];

  *&v32[qword_100954908] = v37;
  v57.receiver = v32;
  v57.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v43 = v39;
  [v43 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v44 = qword_1009548F8;
  v45 = *&v43[qword_1009548F8];
  sub_1000325F0();
  v46 = v45;
  v47 = sub_100770CFC();
  [v46 setTintColor:v47];

  [v43 addSubview:*&v43[v44]];
  v48 = qword_100954900;
  [*&v43[qword_100954900] setLineBreakMode:0];
  [v43 addSubview:*&v43[v48]];
  v49 = qword_100954908;
  [*&v43[qword_100954908] setUserInteractionEnabled:0];
  [v43 addSubview:*&v43[v49]];

  return v43;
}

void sub_1003889FC(uint64_t a1)
{
  *(a1 + qword_100954910) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100388A64@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v8 = *(v1 + qword_1009548F8);
  type metadata accessor for EditorsChoiceView();
  sub_10076D2DC();
  v3 = *(v1 + qword_100954900);
  v6[3] = type metadata accessor for FadeOutDynamicTypeLabel(0);
  v6[4] = &protocol witness table for UILabel;
  v6[0] = v3;
  v4 = v3;
  sub_10038823C([v8 isHidden], a1);
  sub_10000CD74(v7);
  return sub_10000CD74(v6);
}

id sub_100388B38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1AC();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v4 = (&v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10076D9AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076DD3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v13 = sub_10076DA7C();
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D9FC();
  v16 = sub_10076DA0C();
  v16();
  if (v0[qword_100954910] == 1)
  {
    v17 = *&v0[qword_100954908];

    return [v17 setHidden:1];
  }

  else
  {
    v58 = v6;
    v59 = v5;
    v60 = *&v0[qword_100954900];
    v19 = [v60 text];
    if (v19)
    {
      v20 = v19;
      sub_10076FF9C();
    }

    sub_10076DD2C();
    if (qword_100940C40 != -1)
    {
      swift_once();
    }

    v21 = sub_10076D3DC();
    sub_10000A61C(v21, qword_1009A12B8);
    sub_10076DCFC();
    (*(v9 + 8))(v11, v8);
    sub_10076DA5C();
    v22 = v15;
    sub_10076DA9C();
    sub_10076422C();
    CGRectGetWidth(v69);
    v23 = [v1 traitCollection];
    sub_10076DA6C();
    v25 = v24;

    v26 = v60;
    [v60 frame];
    Height = CGRectGetHeight(v70);
    v28 = *&v1[qword_100954908];
    if (Height >= v25)
    {
      [*&v1[qword_100954908] setHidden:1];
    }

    else
    {
      [*&v1[qword_100954908] setHidden:0];
      sub_10076422C();
      [v28 sizeThatFits:{v29, v30}];
      v32 = v31;
      *v4 = UIFontTextStyleBody;
      v34 = v61;
      v33 = v62;
      (*(v61 + 104))(v4, enum case for FontSource.textStyle(_:), v62);
      v67[3] = v33;
      v67[4] = &protocol witness table for FontSource;
      v35 = sub_10000DB7C(v67);
      (*(v34 + 16))(v35, v4, v33);
      v36 = UIFontTextStyleBody;
      v37 = v63;
      sub_10076D9BC();
      (*(v34 + 8))(v4, v33);
      sub_10076422C();
      Width = CGRectGetWidth(v71);
      [v26 frame];
      v39 = v32 - (Width - CGRectGetWidth(v72));
      v40 = [v1 traitCollection];
      sub_10076DEDC();
      v41 = v26;
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007841E0;
      *(v42 + 32) = v40;
      v15 = v22;
      v43 = v40;
      v44 = sub_10076DEEC();
      v45 = v59;
      sub_10076D3EC();
      v47 = v46;

      v48 = &v41[qword_100966538];
      *v48 = v39 + v47;
      *(v48 + 8) = 0;
      [v41 setNeedsLayout];
      sub_10076422C();
      CGRectGetMaxX(v73);
      [v41 frame];
      CGRectGetMaxY(v74);
      v49 = [v1 traitCollection];
      sub_10076422C();
      sub_1007709CC();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      [v28 setFrame:{v51, v53, v55, v57}];
      (*(v58 + 8))(v37, v45);
    }

    return (*(v64 + 8))(v15, v65);
  }
}

void sub_10038926C()
{
  v1 = *(v0 + qword_100954908);
}

void sub_1003892BC(uint64_t a1)
{
  v2 = *(a1 + qword_100954908);
}

uint64_t sub_100389394(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100389404(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_itemLayoutContext;
  v12 = sub_10076341C();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v14 = sub_100770D2C();
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v13] = sub_10073C780(v14, 0.0, 0.0, 0.0, 0.0);
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension27ParagraphCollectionViewCell_expandableTextView]];

  return v18;
}

uint64_t type metadata accessor for ParagraphCollectionViewCell(uint64_t a1)
{
  result = qword_100954990;
  if (!qword_100954990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1003899C8(void *a1, char a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  if (a2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if (a1)
  {
    v22 = a9 >= a8 ? a8 : a9;
    if (v22 != 0.0)
    {
      v23 = a1;
      v24 = [a3 traitCollection];
      v25 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v27 = a4;
      v27[1] = a5;
      v27[2] = a6;
      v27[3] = a7;
      *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = v21;
      v28 = &v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v28 = a8;
      v28[1] = a9;
      *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v24;
      *&v26[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v23;
      v49.receiver = v26;
      v49.super_class = v25;
      v29 = objc_msgSendSuper2(&v49, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v30 = qword_1009678B0;
      v31 = [qword_1009678B0 objectForKey:v29];
      if (v31)
      {
        v32 = v31;

        a8 = *&v32[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v33 = qword_100941598;
        v32 = v23;
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = sub_10076D3DC();
        v35 = sub_10000A61C(v34, qword_100967898);
        v36 = *(v34 - 8);
        (*(v36 + 16))(v20, v35, v34);
        (*(v36 + 56))(v20, 0, 1, v34);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_10000CFBC(v20, &unk_100943250, &unk_1007841D0);
        v43 = type metadata accessor for ExpandableTextView.CacheValue();
        v44 = objc_allocWithZone(v43);
        v45 = &v44[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v45 = a8;
        v45[1] = a4 + a6 + v38;
        *(v45 + 2) = v40;
        *(v45 + 3) = v42;
        v48.receiver = v44;
        v48.super_class = v43;
        v46 = objc_msgSendSuper2(&v48, "init");
        [v30 setObject:v46 forKey:v29];
      }
    }
  }

  return a8;
}

void sub_100389D5C(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_1000325F0();
  a1 = a1;
  v4 = v7;
  v5 = sub_100770EEC();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_10038A0A4();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

double sub_100389E3C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!v2 || (v3 = , v4 = sub_1000CCE4C(v3, v2), , (v4 & 1) == 0))
  {
LABEL_6:
    sub_10038A1AC();
  }

  return result;
}

void sub_100389ED4(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchResultBackgroundView();
  objc_msgSendSuper2(&v10, "applyLayoutAttributes:", a1);
  type metadata accessor for SearchCollectionLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v1 layer];
    [v6 setCornerRadius:*(v4 + OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_cornerRadius)];

    [v1 setBackgroundColor:*(v4 + OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_backgroundColor)];
    v7 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension32SearchCollectionLayoutAttributes_borderColor);
    v8 = v7;
    sub_100389D5C(v7);

    sub_100389E3C(v9);
  }
}

void sub_10038A04C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_10038A0A4();
  sub_10038A1AC();
}

void sub_10038A0A4()
{
  v1 = [v0 layer];
  v2 = v1;
  v3 = OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor;
  v4 = 1.0;
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor])
  {
    v4 = 0.0;
  }

  [v1 setBorderWidth:v4];

  v5 = [v0 layer];
  v6 = *&v0[v3];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v5 setBorderColor:v7];

  v8 = [v0 layer];
  [v8 setNeedsDisplay];
}

char *sub_10038A1AC()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors];
  p_vtable = &OBJC_METACLASS____TtC20ProductPageExtension47SmallStoryCardShelfComponentTypeMappingProvider.vtable;
  if (!v1)
  {
    v5 = OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer;
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer];
    if (v6)
    {
      [v6 removeFromSuperlayer];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    goto LABEL_25;
  }

  v3 = OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer];
  if (v4)
  {
  }

  else
  {
    v8 = objc_allocWithZone(CAGradientLayer);

    v9 = [v8 init];
    v10 = [v0 layer];
    [v10 addSublayer:v9];

    v11 = *&v0[v3];
    *&v0[v3] = v9;

    v4 = *&v0[v3];
    if (!v4)
    {
LABEL_19:

      goto LABEL_25;
    }
  }

  v12 = v4;
  v13 = [v0 layer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v12 setFrame:{v15, v17, v19, v21}];
  v22 = *&v0[v3];
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v1 >> 62)
  {
    v23 = sub_10077158C();
    if (v23)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_10:
      v35 = v0;
      v38 = _swiftEmptyArrayStorage;
      v24 = v22;
      result = sub_1004BB874(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      v27 = v38;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v28 = sub_10077149C();
        }

        else
        {
          v28 = *(v1 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = [v28 CGColor];
        type metadata accessor for CGColor(0);
        v37 = v31;

        *&v36 = v30;
        v38 = v27;
        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          sub_1004BB874((v32 > 1), v33 + 1, 1);
          v0 = v35;
          v27 = v38;
        }

        ++v26;
        v27[2] = v33 + 1;
        sub_10000CD64(&v36, &v27[4 * v33 + 4]);
      }

      while (v23 != v26);

      p_vtable = (&OBJC_METACLASS____TtC20ProductPageExtension47SmallStoryCardShelfComponentTypeMappingProvider + 24);
      goto LABEL_24;
    }
  }

  v24 = v22;

LABEL_24:
  isa = sub_1007701AC().super.isa;

  [v24 setColors:isa];

LABEL_25:
  result = *(p_vtable[310] + v0);
  if (result)
  {
    return [result setNeedsDisplay];
  }

  return result;
}

id sub_10038A570(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchResultBackgroundView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10038A624(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchResultBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10038A724()
{
  v0 = sub_10076C38C();
  v51 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10076718C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007671AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10076997C();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007636DC();
  sub_10038AF0C(&qword_1009540C0, &type metadata accessor for PrivacyDefinition, &protocol conformance descriptor for PrivacyDefinition);
  sub_10076332C();
  v10 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v7;
  v43 = v5;
  v44 = v0;
  v45 = v4;
  v11 = sub_10005312C();
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  sub_10000A61C(v12, qword_1009A17F8);
  swift_getKeyPath();
  sub_10076338C();

  v13 = v56[0];
  v14 = sub_100770B3C();

  v52 = v10;
  sub_1007636CC();
  v15 = sub_10076C04C();
  v39 = v11;
  v16 = v15;
  v56[3] = v15;
  v38 = sub_10038AF0C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56[4] = v38;
  v17 = sub_10000DB7C(v56);
  v18 = *(v16 - 8);
  v19 = *(v18 + 104);
  v37 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v36 = v19;
  v35[1] = v18 + 104;
  v19(v17);
  v20 = v14;
  sub_10076C90C();
  sub_10000CD74(v56);
  v40 = v20;
  sub_10076996C();
  sub_10076994C();
  v21 = *(v46 + 8);
  v22 = v47;
  v21(v9, v47);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v12, qword_1009A1810);
  swift_getKeyPath();
  sub_10076338C();

  v23 = v55[0];
  v24 = sub_100770B3C();

  sub_1007636BC();
  v55[3] = v16;
  v55[4] = v38;
  v25 = sub_10000DB7C(v55);
  v36(v25, v37, v16);
  v26 = v24;
  sub_10076C90C();
  sub_10000CD74(v55);
  sub_10076996C();
  sub_10076994C();
  v21(v9, v22);
  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_10000A61C(v49, qword_10099F0D0);
  (*(v48 + 16))(v50, v28, v27);
  sub_10000A570(v56, v54);
  sub_10000A570(v55, v53);
  v29 = v42;
  sub_10076719C();
  swift_getKeyPath();
  v30 = v41;
  sub_10076338C();

  sub_10076C2FC();
  (*(v51 + 8))(v30, v44);
  sub_100630CB4();
  sub_10038AF0C(&qword_100954110, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v31 = v45;
  sub_10076D2AC();
  v33 = v32;

  swift_unknownObjectRelease();

  (*(v43 + 8))(v29, v31);
  sub_10000CD74(v55);
  sub_10000CD74(v56);
  return v33;
}

uint64_t sub_10038AF0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10038AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6, void *a7, char a8)
{
  v14 = a5;
  if (!a5)
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v17 = a8;
    v18 = sub_1006113DC();
    if ((v19 & 1) == 0)
    {
      return;
    }

    sub_10000CD08(*(a1 + 56) + 32 * v18, v33);
    sub_100016F40(0, &qword_100942F00, UIFont_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = v31;
    a5 = 0;
    a8 = v17;
    if (!v31)
    {
      return;
    }
  }

  v29 = a8;
  v15 = a5;
  v16 = [v14 fontDescriptor];
  if ([v16 objectForKey:UIFontDescriptorTextStyleAttribute])
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    type metadata accessor for TextStyle(0);
    if (swift_dynamicCast())
    {
      v8 = v30;
      a6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v30 compatibleWithTraitCollection:a6];
      v20 = [a6 fontDescriptorWithSymbolicTraits:{objc_msgSend(v16, "symbolicTraits")}];
      v21 = objc_opt_self();
      v22 = "fontWithDescriptor:size:";
      v23 = 0.0;
      if (v20)
      {
        v24 = [v21 fontWithDescriptor:v20 size:0.0];

        v8 = a6;
        a6 = v20;
LABEL_18:

        v21 = v24;
        goto LABEL_19;
      }

LABEL_17:
      v24 = [v21 v22];
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000258C0(v33);
  }

  v21 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:a6];
  if (!v21)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  v25 = v21;
  [a7 removeAttribute:NSFontAttributeName range:{a2, a3}];
  [a7 addAttribute:NSFontAttributeName value:v25 range:{a2, a3}];

  if (v29 & 1) != 0 && *(a1 + 16) && (v26 = sub_1006113DC(), (v27) && (sub_10000CD08(*(a1 + 56) + 32 * v26, v33), sub_100016F40(0, &qword_10094D748, NSParagraphStyle_ptr), (swift_dynamicCast()))
  {
    if (sub_10077056C())
    {
      v28 = sub_10077057C();
      [a7 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
      [a7 addAttribute:NSParagraphStyleAttributeName value:v28 range:{a2, a3}];
    }

    else
    {
    }
  }

  else
  {
  }
}

void *sub_10038B358(void *result, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  if (result[3])
  {
    return [a5 addAttribute:NSForegroundColorAttributeName value:a6 range:{a2, a3}];
  }

  return result;
}

uint64_t sub_10038B390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076944C();
  *a1 = result;
  return result;
}

void sub_10038B3BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v60 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_10000A5D4(&qword_10094D1E8, &qword_100793E38);
  v61 = *(v17 - 8);
  v62 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v60 - v19;
  v21 = [v8 contentView];
  [v21 setLayoutMargins:{a5, a6, a7, a8}];

  *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_objectGraph] = a3;

  v22 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  sub_10076946C();
  v23 = *(v22 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel);
  v24 = sub_10076FF6C();

  [v23 setText:v24];

  v25 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  sub_10076945C();
  v26 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_headingLabel);
  v27 = sub_10076FF6C();

  [v26 setText:v27];

  v28 = sub_10076942C();
  if (v28)
  {
    v29 = v28;
    sub_10076B8EC();
    if (v30)
    {
      v31 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton);
      v32 = sub_10076FF6C();

      [v31 setTitle:v32 forState:0];

      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = v29;
      v34 = (v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      v35 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
      v36 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler + 8);
      *v34 = sub_10038C4DC;
      v34[1] = v33;

      v37 = v35;
      v38 = v36;
      goto LABEL_6;
    }
  }

  [*(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButton) setTitle:0 forState:{0, v60}];
  v39 = (v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  v37 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler);
  v38 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension17SearchHeadingView_detailButtonHandler + 8);
  *v39 = 0;
  v39[1] = 0;
LABEL_6:
  sub_1000167E0(v37, v38);
  swift_getObjectType();
  v40 = sub_10038C370(a4);
  v42 = v41;
  v43 = v40;
  sub_1002C31CC(v40, v41);
  if (!*&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v44 = sub_10076944C();
  sub_10016E5A8(v44, v45);

  sub_10076AEAC();

  v46 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!v46)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v49 = v60;
  v48[2] = v47;
  v48[3] = v49;
  v48[4] = ObjectType;
  v50 = objc_allocWithZone(sub_10000A5D4(&unk_10094D1F0, &unk_100793E40));

  v51 = v46;
  v52 = sub_10076E72C();
  v53 = OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource;
  v54 = *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource];
  *&v9[OBJC_IVAR____TtC20ProductPageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = v52;
  v55 = v52;

  v56 = swift_allocObject();
  *(v56 + 16) = v43;
  *(v56 + 24) = v42;
  sub_10076E73C();

  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007841E0;
  *(v57 + 32) = a1;
  swift_getKeyPath();
  sub_10038C4E4(&qword_10094D200, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10038C4E4(&qword_10094D208, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

  sub_10076D47C();

  v58 = *&v9[v53];
  if (v58)
  {
    v59 = v58;
    sub_10076E76C();
  }

  [v9 setNeedsLayout];
  (*(v61 + 8))(v20, v62);
}

uint64_t sub_10038B958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void *sub_10038BA9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v58 = a3;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v9 - 8);
  v61 = v53 - v10;
  v11 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v14 - 8);
  v60 = v53 - v15;
  v16 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v16 - 8);
  v59 = v53 - v17;
  v18 = sub_10075F78C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  v25 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v25 - 8);
  v27 = v53 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v55 = v13;
  v57 = v27;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007708FC();
  v28 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v54 = a1;
  v30 = [a1 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:isa];

  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v53[1] = v8;
    sub_10000A5D4(&qword_10094D1C8, &qword_100793DD0);
    sub_10076F44C();
    v58 = v64;
    if (sub_10076BB3C())
    {
      sub_100766ABC();
      v31 = *(v19 + 104);
      v31(v21, enum case for OfferStyle.infer(_:), v18);
      v32 = sub_10075F77C();
      v33 = *(v19 + 8);
      v33(v21, v18);
      v33(v24, v18);
      if (v32 & 1) != 0 && (v34 = [v54 traitCollection], v35 = sub_1007706FC(), v34, (v35))
      {
        v36 = v57;
        v31(v57, enum case for OfferStyle.white(_:), v18);
        v37 = v36;
        (*(v19 + 56))(v36, 0, 1, v18);
      }

      else
      {
        v37 = v57;
        (*(v19 + 56))(v57, 1, 1, v18);
      }
    }

    else
    {
      v37 = v57;
      (*(v19 + 56))(v57, 1, 1, v18);
    }

    v38 = v56;
    v39 = *(v56 + OBJC_IVAR____TtC20ProductPageExtension35SmallSearchLockupCollectionViewCell_lockupView);
    v40 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = sub_1007628DC();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = sub_10076C54C();
    v47 = v61;
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    sub_1004D0A60(v58, v39, v41, Strong, 0, 0, v37, v43, v47, v45);
    sub_10000CFBC(v47, &unk_100949290, &unk_10078BBF0);
    v39[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v39 setNeedsLayout];
    sub_10000CFBC(v45, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v43, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v41, &unk_100946760, &unk_100787A20);
    v48 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v49 = *&v39[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    sub_10075FCAC();
    sub_10075FD2C();
    sub_10038C4E4(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760BFC();
    if (sub_10076BB5C())
    {
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v50 = sub_100763ADC();
      sub_10000A61C(v50, qword_10099DDA0);
      sub_1007639AC();
      [v49 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v49 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();
      v51 = *&v39[v48];
      sub_100760B8C();

      v38 = v56;
      v37 = v57;
    }

    [v38 setNeedsLayout];

    sub_10000CFBC(v37, &unk_10094D210, &qword_10078DE20);
  }

  else
  {

    return 0;
  }

  return v38;
}

BOOL sub_10038C370(void *a1)
{
  v1 = a1;
  v2 = [a1 traitCollection];
  sub_10077071C();

  v3 = [v1 traitCollection];
  LOBYTE(v1) = sub_1007706EC();

  return (v1 & 1) == 0;
}

uint64_t sub_10038C400()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10038C45C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076944C();
  *a1 = result;
  return result;
}

uint64_t sub_10038C490(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10038C4E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10038C52C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000A5D4(&qword_100954BC0, &qword_10079E9C8);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10076664C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_1003912D0(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_10077125C();
  v17 = v27;
  sub_1003912D0(&qword_100954BC8, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v25 = a2;
  v18 = sub_10076FF1C();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_10077129C();
  }

  v21 = v28;
  sub_100023AD0(v7, v28, &qword_100954BC0, &qword_10079E9C8);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10038C830(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000A5D4(&qword_100954260, &qword_10079E9C0);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10076CE0C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_1003912D0(&qword_100954270, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
  sub_10077125C();
  v17 = v27;
  sub_1003912D0(&qword_100954288, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
  v25 = a2;
  v18 = sub_10076FF1C();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_10077129C();
  }

  v21 = v28;
  sub_100023AD0(v7, v28, &qword_100954260, &qword_10079E9C0);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

uint64_t sub_10038CB34(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v27 = sub_10000A5D4(&qword_100954BA0, &qword_10079E948);
  __chkstk_darwin(v27);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1007611EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = *(v9 + 16);
  v26 = v2;
  v16(v11, v2, v8, v13);
  v24 = sub_1003912D0(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  sub_10077125C();
  v17 = v27;
  sub_1003912D0(&qword_100954BA8, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  v25 = a2;
  v18 = sub_10076FF1C();
  v19 = *(v17 + 48);
  *v7 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v9 + 32))(&v7[v19], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v20 = v25;
    (v16)(&v7[v19], v25, v8);
    (v16)(v11, v20, v8);
    sub_10077129C();
  }

  v21 = v28;
  sub_100023AD0(v7, v28, &qword_100954BA0, &qword_10079E948);
  v22 = *v21;
  (*(v9 + 32))(v29, &v21[*(v17 + 48)], v8);
  return v22;
}

void sub_10038CE38(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (Strong)
    {
      type metadata accessor for ProductLockupCollectionViewCell(0);
      v4 = Strong;
      v5 = sub_100770EEC();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    sub_10038F7C4();
    v4 = Strong;
LABEL_9:

    goto LABEL_10;
  }

  if (Strong)
  {
    goto LABEL_8;
  }

LABEL_10:
}

void sub_10038CF08(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_10099E390);

    if (a1)
    {
      sub_1003912D0(&qword_100954BB0, type metadata accessor for ChevronView, &unk_10079E7FC);
    }

    sub_10076667C();
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + qword_10099E390);

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      sub_1003912D0(&qword_100954BB0, type metadata accessor for ChevronView, &unk_10079E7FC);
    }

    sub_10076668C();
  }
}

uint64_t sub_10038D070()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ProductScrollObserver();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = 1;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 32) = sub_100391460;
    *(v1 + 40) = v2;
    *(v0 + 64) = v1;
  }

  return v1;
}

void sub_10038D124(uint64_t a1, char a2, uint64_t a3, double a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10038F34C(a1, a2 & 1, a4);
  }
}

double sub_10038D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10038D634(a4, a1, a2, a5);
  }

  return result;
}

void sub_10038D234(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      memset(v2, 0, sizeof(v2));
      sub_10076955C();

      sub_10000CFBC(v2, &unk_1009434C0, &qword_100783F60);
    }
  }
}

void sub_10038D2C8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a2;
  v7 = sub_1007611EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = sub_10000A5D4(&qword_100952D68, &qword_10079E940);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v29 - v21;
  v23 = *(v8 + 16);
  v23(a4, a1, v7, v20);
  sub_1007611BC();
  (v23)(v12, a4, v7);
  sub_1003912D0(&unk_1009603F0, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
  sub_10077125C();
  if (sub_10077127C())
  {
    v24 = *(v8 + 8);
    v24(v15, v7);
    v24(v18, v7);
    v25 = 1;
  }

  else
  {
    sub_10077128C();
    v24 = *(v8 + 8);
    v24(v18, v7);
    (*(v8 + 32))(v22, v15, v7);
    v25 = 0;
  }

  (*(v8 + 56))(v22, v25, 1, v7);
  sub_10000CFBC(v22, &qword_100952D68, &qword_10079E940);
  if (v32)
  {
    v26 = [v31 traitCollection];
    v27 = [v26 horizontalSizeClass];

    if (v27 == 2)
    {
      v28 = v30;
      sub_1007611DC();
      sub_10038CB34(v12, v28);
      v24(v28, v7);
      v24(v12, v7);
    }
  }
}

uint64_t sub_10038D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v88 = a1;
  v4 = sub_10000A5D4(&qword_1009451A0, &unk_100784A30);
  __chkstk_darwin(v4 - 8);
  v81 = &v75 - v5;
  v86 = sub_10075EB1C();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v87 = &v75 - v8;
  v9 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = sub_10075EBAC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v76 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v75 - v16;
  __chkstk_darwin(v17);
  v83 = &v75 - v18;
  __chkstk_darwin(v19);
  v21 = &v75 - v20;
  v91 = sub_10000A5D4(&qword_100954BB8, &unk_10079E950);
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v23 = &v75 - v22;
  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v79 = sub_10076138C();

  sub_10076FC1C();
  v75 = sub_1007613EC();

  sub_10000A5D4(&qword_100943FB0, &unk_100785D18);
  sub_10076F5CC();
  sub_10000CF78(v94, v94[3]);
  v78 = sub_10076184C();
  sub_10000CD74(v94);
  v24 = sub_1001B65D8();
  v92 = v23;
  v90 = v24;
  sub_10076339C();
  swift_getObjectType();
  v25 = v21;
  sub_10075ED1C();
  sub_10075ED3C();
  v26 = sub_10075DD7C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_10000CFBC(v11, &unk_10094FA00, &unk_100786640);
    v28 = 0.0;
  }

  else
  {
    sub_10075DD3C();
    v28 = v29;
    (*(v27 + 8))(v11, v26);
  }

  swift_getKeyPath();
  sub_10076F85C();

  v30 = v94[0];
  v31 = *(v13 + 16);
  v32 = v83;
  v31(v83, v21, v12);
  v33 = (*(v13 + 88))(v32, v12);
  v35 = v85;
  v34 = v86;
  if (v33 != enum case for LegacyAppState.downloading(_:))
  {
    if (v33 != enum case for LegacyAppState.installing(_:))
    {
      goto LABEL_12;
    }

    v40 = v76;
    v31(v76, v32, v12);
    (*(v13 + 96))(v40, v12);
    v41 = v77;
    (*(v89 + 32))(v77, v40, v34);
    v42 = v91;
    if ((v30 & 1) != 0 && (sub_10075EAFC() & 1) == 0)
    {
      v95._object = 0x80000001007E1C90;
      v95._countAndFlagsBits = 0xD000000000000024;
      v96._countAndFlagsBits = 0;
      v96._object = 0xE000000000000000;
      v55 = sub_1007622EC(v95, v96);
      v56 = v34;
      v44 = v55;
      v45 = v57;
      (*(v89 + 8))(v41, v56);
      goto LABEL_21;
    }

    (*(v89 + 8))(v41, v34);
LABEL_19:
    v43 = *(v13 + 8);
    v43(v25, v12);
    v44 = 0;
    v45 = 0;
    goto LABEL_22;
  }

  v36 = v79;
  v37 = v80;
  v31(v80, v32, v12);
  (*(v13 + 96))(v37, v12);
  (*(v89 + 32))(v87, v37, v34);
  if ((v78 & (v36 < -v28)) != 0)
  {
    *&v38 = COERCE_DOUBLE(sub_10075EB6C());
    if ((v39 & 1) == 0)
    {
      v46 = *&v38;
      v47 = sub_10075EAFC();
      v42 = v91;
      if ((v47 & 1) == 0 || (v48 = sub_10075EB0C()) == 0 || (v49 = v48, v50 = [v48 completedUnitCount], v49, v51 = v50 <= 0, v34 = v86, !v51))
      {
        if ((v75 < v46) | v30 & 1)
        {
          v52 = sub_10075EB7C();
          v53 = v34;
          v44 = v52;
          v45 = v54;
          (*(v89 + 8))(v87, v53);
LABEL_21:
          v43 = *(v13 + 8);
          v43(v25, v12);
          goto LABEL_22;
        }
      }

      (*(v89 + 8))(v87, v34);
      goto LABEL_19;
    }
  }

  (*(v89 + 8))(v87, v34);
LABEL_12:
  v43 = *(v13 + 8);
  v43(v25, v12);
  v44 = 0;
  v45 = 0;
  v42 = v91;
LABEL_22:
  v43(v32, v12);
  swift_getKeyPath();
  sub_10076F85C();

  if ((v45 != 0) == LOBYTE(v94[0]) || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v61 = 0;
  }

  else
  {
    v59 = Strong;
    v60 = [Strong traitCollection];

    v61 = sub_10077071C();
  }

  __chkstk_darwin(Strong);
  *(&v75 - 32) = v62;
  *(&v75 - 3) = v44;
  *(&v75 - 2) = v45;
  v63 = v92;
  sub_10076F83C();

  if (v61)
  {
    v64 = sub_1007702EC();
    v65 = v81;
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    sub_1007702CC();

    v66 = sub_1007702BC();
    v67 = swift_allocObject();
    v67[2] = v66;
    v67[3] = &protocol witness table for MainActor;
    v67[4] = v35;
    sub_100170140(0, 0, v65, &unk_10079EA18, v67);
  }

  else
  {
    v68 = swift_unknownObjectWeakLoadStrong();
    if (v68)
    {
      v69 = v68;
      swift_getKeyPath();
      sub_10076F85C();

      v70 = v94[0];
      v71 = v94[1];
      swift_getKeyPath();
      sub_10076F85C();

      v72 = v93;
      v73 = sub_100630CB4();
      swift_getObjectType();
      sub_10030B6DC(v70, v71, v72, v73, v69);
      swift_unknownObjectRelease();
    }
  }

  return (*(v84 + 8))(v63, v42);
}

uint64_t sub_10038E0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1007702CC();
  v4[4] = sub_1007702BC();
  v6 = sub_10077029C();

  return _swift_task_switch(sub_10038E158, v6, v5);
}

uint64_t sub_10038E158()
{

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1007694BC();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

double sub_10038E1E4(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v2 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v2 - 8);
  v104 = &v84 - v3;
  v4 = sub_100768FEC();
  v99 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v102 = *(v6 - 8);
  v103 = v6;
  __chkstk_darwin(v6);
  v100 = &v84 - v7;
  v8 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v8 - 8);
  v97 = &v84 - v9;
  v96 = sub_10076A3AC();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v11 - 8);
  v98 = &v84 - v12;
  v13 = sub_10000A5D4(&unk_100962490, qword_10079E5A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v84 - v14;
  v16 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v16 - 8);
  v18 = &v84 - v17;
  v19 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v19 - 8);
  v21 = &v84 - v20;
  v22 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v22 - 8);
  v109 = &v84 - v23;
  v24 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v24 - 8);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v84 - v28;
  v30 = sub_10076D39C();
  v107 = *(v30 - 8);
  v108 = v30;
  __chkstk_darwin(v30);
  v106 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100762BEC();
  sub_1003912D0(&qword_1009624A0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_10076332C();
  v33 = *&v110[0];
  if (*&v110[0])
  {
    v93 = v21;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v91 = v15;
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_unknownObjectWeakLoadStrong();
      if (v37)
      {
        v84 = v18;
        v90 = v4;
        v38 = v33;
        v39 = v37;
        v40 = *(v37 + qword_1009A3300);

        v85 = sub_100762BAC();
        v42 = v41;
        sub_1001B5A0C();
        v43 = v106;
        sub_10076D3AC();
        v92 = sub_10076959C();
        v87 = v38;
        v44 = v40;
        v86 = sub_100762AAC();
        v89 = v35;
        v45 = sub_10076954C();
        v46 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView;
        sub_1005D7450(v85, v42);
        v48 = v107;
        v47 = v108;
        (*(v107 + 16))(v29, v43, v108);
        (*(v48 + 56))(v29, 0, 1, v47);
        v49 = *&v44[v46];
        sub_1003911F0(v29, v26);
        v50 = OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconAspectRatio;
        swift_beginAccess();
        sub_100391260(v26, v49 + v50);
        swift_endAccess();
        [v49 setNeedsLayout];
        sub_10000CFBC(v26, &unk_1009467E0, qword_10078CB50);
        sub_10000CFBC(v29, &unk_1009467E0, qword_10078CB50);
        v51 = &v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler];
        v52 = *&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler];
        v53 = *&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapHandler + 8];
        *v51 = sub_1003911E8;
        v51[1] = v36;
        swift_retain_n();
        sub_1000167E0(v52, v53);
        v54 = *&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTapGestureRecognizer];

        [v54 setEnabled:1];

        v55 = OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton;
        LODWORD(v85) = [*&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButton] isHidden];
        *&v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_offerButtonMode] = v45;
        if (sub_100766B6C())
        {
          v56 = *&v44[v55];
          v57 = 1;
          v58 = v109;
        }

        else
        {
          v59 = sub_100767B7C();
          v60 = sub_100767B7C();
          v56 = *&v44[v55];
          v58 = v109;
          if (v59 == v60)
          {
            v57 = 1;
          }

          else
          {
            v57 = v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1];
          }
        }

        v61 = v92;
        [v56 setHidden:v57];
        v62 = sub_100766B5C();
        v88 = v36;
        if (v62)
        {
          v63 = enum case for OfferStyle.disabled(_:);
          v64 = sub_10075F78C();
          v65 = *(v64 - 8);
          (*(v65 + 104))(v58, v63, v64);
          (*(v65 + 56))(v58, 0, 1, v64);
          if (v61)
          {
            v66 = v84;
LABEL_16:
            v68 = sub_1007628DC();
            v69 = v93;
            (*(*(v68 - 8) + 56))(v93, 1, 1, v68);
            v70 = sub_10076C54C();
            (*(*(v70 - 8) + 56))(v66, 1, 1, v70);
            v71 = sub_10076201C();
            v72 = v91;
            (*(*(v71 - 8) + 56))(v91, 1, 1, v71);
            memset(v110, 0, 32);
            v73 = v66;
            v74 = sub_100766A5C();
            sub_10000CFBC(v110, &unk_1009434C0, &qword_100783F60);
            sub_10000CFBC(v72, &unk_100962490, qword_10079E5A0);
            sub_10000CFBC(v73, &unk_100949290, &unk_10078BBF0);
            sub_10000CFBC(v69, &unk_1009492A0, &unk_10078BC00);
LABEL_19:
            v76 = v94;
            v77 = v96;
            (*(v94 + 104))(v95, enum case for OfferButtonPresenterViewAlignment.right(_:), v96);
            v78 = 1;
            (*(v76 + 56))(v97, 1, 1, v77);
            sub_1003912D0(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
            v79 = v98;
            sub_10076759C();
            v80 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
            (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
            v81 = v99;
            v82 = v90;
            (*(v99 + 104))(v101, enum case for OfferButtonSubtitlePosition.left(_:), v90);
            (*(v81 + 56))(v104, 1, 1, v82);
            sub_1003912D0(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
            v83 = v100;
            sub_10076759C();
            sub_1001F12C8(v74, v86, 0, v79, v83, v105, 0, 0);
            (*(v102 + 8))(v83, v103);
            sub_10000CFBC(v79, &unk_100946760, &unk_100787A20);
            if ((v85 & 1) == 0)
            {
              v78 = v44[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_collisionVisibility + 1];
            }

            [*&v44[v55] setHidden:v78];

            sub_10000CFBC(v109, &unk_10094D210, &qword_10078DE20);
            (*(v107 + 8))(v106, v108);

            goto LABEL_22;
          }
        }

        else
        {
          v66 = v84;
          if (v61)
          {
            sub_100766ABC();
            v67 = sub_10075F78C();
            (*(*(v67 - 8) + 56))(v58, 0, 1, v67);
            goto LABEL_16;
          }

          v75 = sub_10075F78C();
          (*(*(v75 - 8) + 56))(v58, 1, 1, v75);
        }

        v74 = 0;
        goto LABEL_19;
      }
    }

LABEL_22:
  }

  return result;
}

void sub_10038EFC4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v2 = [Strong collectionView];

      if (v2)
      {
        [v2 _scrollToTopIfPossible:1];
      }
    }
  }
}

void sub_10038F064(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong collectionView];

    if (v4)
    {
      sub_100016F40(0, &qword_100954BD0, UIScrollView_ptr);
      v5 = a1;
      v6 = sub_100770EEC();

      if (v6)
      {
        sub_10038D070();
        sub_100609F80(v5);

        [v5 safeAreaInsets];
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
          if (v10 && v8 > 0.0)
          {
            v32 = v9;
            v11 = v10;
            [v5 bounds];
            v12 = CGRectGetHeight(v34) * -0.5;
            [*&v32[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView] frame];
            v13 = CGRectGetMinY(v35) + v12;
            [v5 contentOffset];
            v15 = v14 / v13;
            if (v14 / v13 < 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v14 / v13;
            }

            v17 = 1.0 - v16;
            [v5 contentOffset];
            v19 = v18 / v8;
            if (v19 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v19;
            }

            v21 = 1.0 - v20;
            sub_10000A5D4(&unk_100942870, &qword_100784460);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_100784DC0;
            v23 = objc_opt_self();
            *(v22 + 32) = [v23 blackColor];
            v24 = [v23 blackColor];
            v25 = v24;
            if (v15 >= 1.0)
            {
              v26 = 0.0;
            }

            else
            {
              v26 = v17;
            }

            v27 = [v24 colorWithAlphaComponent:v26];

            *(v22 + 40) = v27;
            v28 = [v23 blackColor];
            v29 = v28;
            if (v19 >= 1.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v21;
            }

            v31 = [v28 colorWithAlphaComponent:v30];

            *(v22 + 48) = v31;
            *&v11[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v22;

            sub_1001C05B8();

            v9 = v11;
          }
        }
      }
    }
  }
}

void sub_10038F34C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v7 = sub_10000A5D4(&qword_100942A80, &unk_1007B5CE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    HIDWORD(v29) = sub_1007694DC();
    v32 = sub_100767B7C();
    v31 = sub_100767B7C();
    if (a2)
    {
      v30 = sub_10060A0E0();
    }

    else
    {
      v30 = 0;
    }

    v12 = qword_1009A3300;
    v13 = sub_100766B6C();
    v14 = sub_100767B7C();
    if (v14 == sub_100767B7C())
    {
      v15 = [v11 navigationItem];
      v16 = [v15 rightBarButtonItems];

      if (v16)
      {
        sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
        v17 = sub_1007701BC();
      }

      else
      {
        v17 = 0;
      }

      *&v11[qword_1009A3308] = v17;
    }

    v18 = a2 ^ 1;
    v19 = *&v11[qword_1009A3308];
    if (v19)
    {
      if ((v13 & 1) == 0)
      {
        if (!a1)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v11;
          *(v22 + 24) = v19;

          v28 = v11;
          v19 = sub_1003911E0;
LABEL_21:
          v23 = *&v11[v12];
          v24 = v30;
          sub_1005D6BC8(a1, v30, v18 & 1, v19, v22);

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            sub_1007695BC();
            if (swift_weakLoadStrong())
            {
              sub_10076952C();
            }

            sub_10030CD58(v32 == v31, v24, v18 & 1, (v29 & 0x100000000) == 0, v9);

            sub_1000167E0(v19, v22);

            sub_10000CFBC(v9, &qword_100942A80, &unk_1007B5CE0);
          }

          else
          {
            v27 = v32 != v31;
            sub_1000167E0(v19, v22);

            *(v4 + 48) = v27;
          }

          return;
        }

        if (a1 == 1)
        {
          v20 = [v11 navigationItem];
          sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
          isa = sub_1007701AC().super.isa;
          [v20 setRightBarButtonItems:isa animated:0];
        }
      }

      v19 = 0;
    }

    v22 = 0;
    goto LABEL_21;
  }
}

void sub_10038F72C(void *a1, uint64_t a2)
{
  v2 = [a1 navigationItem];
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  isa = sub_1007701AC().super.isa;
  [v2 setRightBarButtonItems:isa animated:0];
}

void sub_10038F7C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 collectionView];

    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
      v4 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
      if (v4)
      {
        v5 = v3;
        v6 = v4;
        if (([v6 isHidden] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = v3;
      }

      v6 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
LABEL_12:
      v8 = v3;
      v9 = v6;
      if ([v8 isHidden])
      {
        v10 = [v9 isHidden];

        if ((v10 & 1) == 0)
        {

          v11 = v9;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v11 = v9;
      if ([v11 isHidden] || (v55.receiver = v8, v55.super_class = type metadata accessor for OfferButton(), objc_msgSendSuper2(&v55, "frame"), MaxY = CGRectGetMaxY(v57), objc_msgSend(v11, "frame"), MaxY >= CGRectGetMaxY(v58)))
      {

        v11 = v8;
      }

      else
      {
      }

LABEL_20:
      v13 = v11;
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v13 superview];

      [v2 convertRect:v22 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      MinY = CGRectGetMinY(v59);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = [v32 view];
      if (v34)
      {
        v35 = v34;
        type metadata accessor for InsetCollectionViewControllerContentView();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v37 = v36;

          v38 = *(v37 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);
          if (v38)
          {
LABEL_28:
            v52 = sub_10038D070();
            *(v52 + 16) = MinY;
            *(v52 + 24) = 0;
            v53 = *(v52 + 32);
            if (v53)
            {
              v53(*(v52 + 48), 0, *(v52 + 56));
            }

            return;
          }

LABEL_24:
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = 0.0;
          if (v39)
          {
            v41 = v39;
            v42 = [v39 navigationController];

            if (v42)
            {
              v43 = [v42 navigationBar];

              [v43 frame];
              v45 = v44;
              v47 = v46;
              v49 = v48;
              v51 = v50;

              v60.origin.x = v45;
              v60.origin.y = v47;
              v60.size.width = v49;
              v60.size.height = v51;
              v40 = CGRectGetMaxY(v60);
            }
          }

          MinY = MinY - v40;
          goto LABEL_28;
        }
      }

      __break(1u);
      return;
    }
  }
}

uint64_t sub_10038FB90()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10038FC30(void *a1)
{
  [a1 adjustedContentInset];
  v4 = v3;
  [a1 contentOffset];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate) = v4 + v5 <= 0.1;

  sub_10054E180();
}

uint64_t sub_10038FCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  sub_10076908C();
  swift_allocObject();
  *(v3 + 40) = sub_10076907C();
  return v3;
}

double sub_10038FD60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10075EBAC();
  v121 = *(v8 - 8);
  __chkstk_darwin(v8);
  v114 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &ObjectType - v11;
  v12 = sub_10000A5D4(&qword_100942A80, &unk_1007B5CE0);
  __chkstk_darwin(v12 - 8);
  v120 = &ObjectType - v13;
  v14 = sub_10076341C();
  v115 = *(v14 - 8);
  v15 = *(v115 + 64);
  __chkstk_darwin(v14);
  v16 = sub_10076B96C();
  v118 = *(v16 - 8);
  v119 = v16;
  __chkstk_darwin(v16);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductLockupCollectionViewCell(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v21 = v19;
    v113 = v8;
    v117 = a3;
    sub_100762BEC();
    v122 = a2;
    sub_1003912D0(&qword_1009624A0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
    v22 = a1;
    sub_10076332C();
    v23 = v126;
    if (!v126)
    {

      return result;
    }

    if (!swift_weakLoadStrong())
    {

LABEL_54:

      return result;
    }

    v110 = v22;
    v109 = v21;
    sub_10038CE38(v21);
    sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
    v108 = v14;
    v24 = v117;
    sub_10076F5CC();
    swift_getObjectType();
    v112 = v23;
    sub_100762BBC();
    v25 = sub_10075EE2C();
    v27 = v26;
    swift_unknownObjectRelease();
    (*(v118 + 8))(v18, v119);
    v28 = v122;
    sub_10038D634(v122, v25, v27, v24);
    ObjectType = swift_getObjectType();
    sub_10075ED0C();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = v115;
    v31 = v108;
    (*(v115 + 16))(&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v108);
    v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    (*(v30 + 32))(v33 + v32, &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
    *(v33 + ((v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v117;
    v34 = v109;

    v115 = v25;
    sub_10075ECEC();

    if ((*(v4 + 48) & 1) == 0)
    {
LABEL_28:
      v57 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow];
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v59 = v57;
      sub_10038CF08(Strong);

      v60 = swift_allocObject();
      swift_weakInit();
      v61 = &v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler];
      v62 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler];
      v63 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler + 8];
      *v61 = sub_100390BAC;
      v61[1] = v60;

      sub_1000167E0(v62, v63);

      sub_10038E1E4(v122, v117);
      v64 = swift_unknownObjectWeakLoadStrong();
      if (v64)
      {
        v65 = v64;
        v66 = *(v64 + qword_1009A3300);

        v67 = *(*&v66[OBJC_IVAR____TtC20ProductPageExtension16ProductTitleView_iconTitleView] + OBJC_IVAR____TtCC20ProductPageExtension16ProductTitleViewP33_24849062375234386F64CEF1B9BE749513IconTitleView_iconView);
      }

      else
      {
        v67 = 0;
      }

      sub_10076905C();

      v68 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
      sub_10076905C();

      sub_10076906C();
      v69 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
      v70 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
      if (!v70)
      {
        goto LABEL_52;
      }

      v71 = swift_unknownObjectWeakLoadStrong();
      v72 = v70;
      if (v71)
      {
        v73 = [v71 navigationItem];
      }

      else
      {
        v73 = 0;
      }

      v74 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem;
      v75 = *&v72[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
      if (v75)
      {
        v76 = v75;
        v77 = sub_10076FF6C();
        [v76 removeObserver:v72 forKeyPath:v77 context:&unk_10094DB60];

        v78 = *&v72[v74];
      }

      else
      {
        v78 = 0;
      }

      *&v72[v74] = v73;
      v79 = v73;

      v80 = *&v72[v74];
      if (v80)
      {
        v81 = v80;
        v82 = sub_10076FF6C();
        [v81 addObserver:v72 forKeyPath:v82 options:0 context:&unk_10094DB60];

        v83 = *&v72[v74];
        if (v83)
        {
          v83 = [v83 title];
          if (v83)
          {
            v84 = v83;
            v85 = sub_10076FF9C();
            v87 = v86;

            v88 = v87;
            v83 = v85;
          }

          else
          {
            v88 = 0;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v83 = 0;
      }

      v88 = 0;
LABEL_44:
      sub_100209360(v83, v88);

      v89 = *&v34[v69];
      if (v89)
      {
        v90 = swift_unknownObjectWeakLoadStrong();
        if (v90)
        {
          v91 = v90;
          v92 = *(v90 + qword_1009A3310);
          v93 = v89;
        }

        else
        {
          v94 = v89;
          v92 = 0;
        }

        swift_unknownObjectWeakAssign();
        sub_10020989C();

        v95 = *&v34[v69];
        if (v95)
        {
          v96 = *(*(*(v95 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
          if (v96)
          {
            type metadata accessor for VideoView(0);
            v97 = swift_dynamicCastClass();
            if (v97)
            {
              v98 = v97;
              v99 = swift_allocObject();
              v100 = v110;
              *(v99 + 16) = v110;
              v101 = (v98 + qword_1009A2528);
              v102 = *(v98 + qword_1009A2528);
              v103 = *(v98 + qword_1009A2528 + 8);
              *v101 = sub_100390BEC;
              v101[1] = v99;
              v104 = v100;
              v105 = v96;

              v106.n128_f64[0] = sub_1000167E0(v102, v103);
              sub_1005F41B0(v106);

              swift_unknownObjectRelease();

              goto LABEL_54;
            }
          }

          swift_unknownObjectRelease();

LABEL_53:

          goto LABEL_54;
        }
      }

LABEL_52:

      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    *(v4 + 48) = 0;
    v35 = sub_1007694DC();
    v36 = v120;
    sub_100762BBC();
    v37 = v118;
    v38 = v36;
    v39 = v119;
    (*(v118 + 56))(v38, 0, 1, v119);
    if (swift_weakLoadStrong())
    {
      sub_10076952C();
    }

    v40 = (*(v37 + 48))(v120, 1, v39);
    v41 = v113;
    if (v40 == 1 || !*&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
    {
      (*(v121 + 104))(v116, enum case for LegacyAppState.unknown(_:), v113);
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10075ED1C();
      swift_unknownObjectRelease();
    }

    v42 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
    [*(*&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton] + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView) setContentMode:1];
    if (v35)
    {
      v43 = 0;
    }

    else
    {
      v43 = *&v34[v42];
      v44 = v43;
    }

    v45 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
    v46 = v114;
    if (v45 && v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
    {
      goto LABEL_24;
    }

    (*(v121 + 16))(v114, v116, v41);
    v47 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
    v48 = [*&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel] text];
    if (v48)
    {
      v49 = v48;
      sub_10076FF9C();
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    v52 = sub_10075EB9C();
    (*(v121 + 8))(v46, v41);
    if (v52)
    {
      if (v51)
      {

        v45 = *&v34[v47];
LABEL_24:
        v53 = v45;
LABEL_27:
        v123 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
        v124 = v43;
        v125 = v45;
        v54 = v123;
        [v54 setAlpha:1.0];
        [v54 setHidden:0];

        v55 = v43;
        [v55 setAlpha:1.0];
        [v55 setHidden:0];

        v56 = v45;
        sub_10000A5D4(&qword_100949D48, &qword_10078D670);
        swift_arrayDestroy();
        [v56 setAlpha:1.0];
        [v56 setHidden:0];

        [v34 setNeedsLayout];
        (*(v121 + 8))(v116, v113);
        sub_10000CFBC(v120, &qword_100942A80, &unk_1007B5CE0);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v45 = 0;
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_1003909EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100390A24()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_100390AFC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10076341C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_10038D1A8(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100390BB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100390BF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10000A5D4(&qword_100954BB8, &unk_10079E950);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_10076341C();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.productTopLockup(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_10076338C();

      swift_getKeyPath();
      v29 = v46;
      sub_10076F49C();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_1003912D0(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      sub_10077018C();
      sub_10077018C();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_10077167C();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_10076336C();
    v24 = v33;
    sub_10076F87C();
    sub_1001B65D8();
    v25 = v34;
    sub_10076F83C();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_1003911A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003911F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100391260(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003912D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100391318(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t sub_10039136C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003913AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000257CC;

  return sub_10038E0C0(a1, v4, v5, v6);
}

void sub_100391480(void *a1, char a2)
{
  v2 = &unk_100882330;
  if ((a2 & 1) == 0)
  {
    v2 = &unk_1008822E8;
  }

  v3 = *v2;
  if (*v2)
  {
    v5 = a1;
    sub_1007714EC();
    if (a2)
    {
      v6 = &off_100882320;
    }

    else
    {
      v6 = &off_1008822D8;
    }

    v7 = (v6 + 4);
    for (i = v3 & ~(v3 >> 63); i; --i)
    {
      v9 = *v7++;
      v10 = [v5 colorWithAlphaComponent:v9];
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      if (!--v3)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

char *sub_1003915B0(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = sub_10076702C();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v46 = a1 & 1;
  v47 = a1;
  v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_style] = a1 & 1;
  v7 = type metadata accessor for GradientView();
  v8 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_overlayView] = v8;
  v9 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_plusDarkerView] = v9;
  v10 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView] = v10;
  result = [objc_opt_self() effectWithBlurRadius:35.0];
  if (result)
  {
    v12 = result;
    v48.receiver = v1;
    v48.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v48, "initWithEffect:", result);

    v14 = v13;
    [v14 setOverrideUserInterfaceStyle:2];
    [v14 setUserInteractionEnabled:0];
    [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v15 = v14;
    [v15 setClipsToBounds:0];
    v16 = [v15 contentView];
    v17 = [v16 layer];

    [v17 setAllowsGroupBlending:0];
    v18 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_overlayView;
    v19 = *&v15[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_overlayView];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 blackColor];
    sub_1007714EC();
    v23 = [v22 colorWithAlphaComponent:0.0];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v24 = [v22 colorWithAlphaComponent:0.2];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();

    *&v21[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C05B8();

    v25 = [v15 contentView];
    [v25 addSubview:*&v15[v18]];

    v26 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_plusDarkerView;
    v27 = *&v15[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_plusDarkerView];
    v28 = [v20 blackColor];
    sub_1007714EC();
    v29 = [v28 colorWithAlphaComponent:0.0];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v30 = [v28 colorWithAlphaComponent:0.2];
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();

    *&v27[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C05B8();

    v31 = [*&v15[v26] layer];
    [v31 setCompositingFilter:kCAFilterPlusD];

    v32 = [v15 contentView];
    [v32 addSubview:*&v15[v26]];

    v33 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView;
    v34 = *&v15[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
    v35 = [v20 blackColor];
    sub_100391480(v35, v46);
    v37 = v36;

    *&v34[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v37;

    sub_1001C05B8();

    v38 = *&v15[v33];
    if (v47)
    {
      v39 = &off_1008823B0;
    }

    else
    {
      v39 = &off_100882368;
    }

    if (v47)
    {
      v40 = &kCAGradientLayerRadial;
    }

    else
    {
      v40 = &kCAGradientLayerAxial;
    }

    sub_1001C0414(v39);

    v41 = *&v15[v33];
    v41[OBJC_IVAR____TtC20ProductPageExtension12GradientView_kind] = v46;
    v42 = v41;
    v43 = [v42 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:*v40];

    v44 = [v15 layer];
    v45 = [*&v15[v33] layer];
    objc_opt_self();
    [v44 setMask:swift_dynamicCastObjCClassUnconditional()];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100391D1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10076702C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_style] == 1)
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_alignment;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    v10 = [v1 traitCollection];
    sub_10076701C();

    v11 = *(v3 + 8);
    v11(v5, v2);
    v12 = (*(v3 + 88))(v8, v2);
    if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
    {
      v13 = 150.0;
      v14 = 500.0;
    }

    else
    {
      if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
      {
        sub_10076422C();
        v13 = CGRectGetWidth(v22) * 0.5;
        v15 = 350.0;
      }

      else
      {
        if (v12 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
        {
          v11(v8, v2);
          v14 = 0.0;
          v13 = 0.0;
          goto LABEL_10;
        }

        sub_10076422C();
        v13 = CGRectGetWidth(v23) + -150.0;
        v15 = -350.0;
      }

      v14 = v13 + v15;
    }

LABEL_10:
    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
    sub_10076422C();
    v17 = v13 / CGRectGetWidth(v24);
    v18 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v17, 1.0}];

    sub_10076422C();
    v19 = v14 / CGRectGetWidth(v25);
    v20 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v19, 0.0}];
  }
}

uint64_t type metadata accessor for ModuleOverlayGradientBlurView(uint64_t a1)
{
  result = qword_100954C28;
  if (!qword_100954C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100392240(uint64_t a1)
{
  result = sub_10076702C();
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

unint64_t sub_100392310()
{
  result = qword_100954C38;
  if (!qword_100954C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C38);
  }

  return result;
}

unint64_t sub_100392378()
{
  result = qword_100954C40;
  if (!qword_100954C40)
  {
    sub_100769BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C40);
  }

  return result;
}

uint64_t sub_1003923D0(void *a1)
{
  v2 = sub_10076F50C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10075F6CC();
    v6 = a1;
    sub_100769BDC();
    sub_10075F68C();

    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    sub_10076FCBC();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v8 = sub_10076FD4C();
    sub_10000A61C(v8, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_1003927B0();
    swift_allocError();
    sub_10076FCAC();
  }
}

uint64_t sub_100392680(uint64_t *a1)
{
  v1 = *a1;
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v2 = sub_10076FCEC();
  sub_10075F6CC();
  v5[3] = sub_100085204();
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = sub_10077068C();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_10075F67C();

  sub_10000CD74(v5);
  return v2;
}

uint64_t sub_100392768()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003927B0()
{
  result = qword_100954C48;
  if (!qword_100954C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C48);
  }

  return result;
}

unint64_t sub_100392818()
{
  result = qword_100954C50;
  if (!qword_100954C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100954C50);
  }

  return result;
}

id sub_100392964(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for VisualEffectContainerView();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25VisualEffectContainerView_embeddedView];
  [v1 bounds];
  [v2 sizeThatFits:{CGRectGetWidth(v11), 1.79769313e308}];
  v4 = v3;
  v6 = v5;
  [v1 bounds];
  Width = CGRectGetWidth(v12);
  if (Width < v4)
  {
    v4 = Width;
  }

  [v1 bounds];
  v8 = CGRectGetMidX(v13) - v4 * 0.5;
  [v1 bounds];
  return [v2 setFrame:{v8, CGRectGetMidY(v14) - v6 * 0.5, v4, v6}];
}

id sub_100392AF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VisualEffectContainerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100392B58(void *a1, double a2, double a3)
{
  v7 = *(*v3 + OBJC_IVAR____TtC20ProductPageExtension25VisualEffectContainerView_embeddedView);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007841E0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_10076DEEC();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t SubscriptionLockupPresenter.iapAdamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapAdamId;
  v4 = sub_10076B96C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionLockupPresenter.isIapVisible.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_100392D00(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double SubscriptionLockupPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return result;
}

void (*SubscriptionLockupPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100392F8C;
}

void sub_100392F8C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t SubscriptionLockupPresenter.__allocating_init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

char *SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v59 = a8;
  v60 = a5;
  v62 = a7;
  v63 = a4;
  v65 = a6;
  v61 = a1;
  v53 = *v8;
  v12 = sub_10076B96C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = v14;
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10075E56C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  v22 = &v8[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v56 = v13;
  v23 = *(v13 + 16);
  v64 = v12;
  v50 = v23;
  v23(&v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapAdamId], a3, v12);
  swift_beginAccess();
  *(v22 + 1) = v60;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v24 = sub_10075EE2C();
  v25 = &v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapStateMachine];
  *v25 = v24;
  v25[1] = v26;

  sub_10075E84C();
  v54 = a2;

  v27 = *(v16 + 16);
  v55 = v21;
  v27(v18, v21, v15);
  v58 = v15;
  v59 = v16;
  v28 = (*(v16 + 88))(v18, v15);
  v30 = v28 == enum case for InAppPurchaseState.buyable(_:) || v28 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v28 == enum case for InAppPurchaseState.unknown(_:);
  v31 = v30;
  if (!v30)
  {
    (*(v59 + 8))(v18, v58);
  }

  v49 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible] = v31;
  if (*&v9[OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapStateMachine])
  {
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();

    sub_10075ECEC();
  }

  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v52;
  v57 = a3;
  v34 = a3;
  v35 = v64;
  v50(v52, v34, v64);
  v36 = v56;
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = (v51 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v36 + 32))(v40 + v37, v33, v35);
  v41 = (v40 + v38);
  v42 = v54;
  *v41 = v61;
  v41[1] = v42;
  *(v40 + v39) = v32;
  *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

  sub_10075E82C();

  if (v63)
  {
    ObjectType = swift_getObjectType();
    v44 = v49;
    swift_beginAccess();
    v45 = v9[v44];
    v46 = v60;
    v47 = *(v60 + 32);
    swift_unknownObjectRetain();
    v47(v45, 0, ObjectType, v46);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v36 + 8))(v57, v64);
  (*(v59 + 8))(v55, v58);
  return v9;
}

uint64_t sub_1003936B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1003936EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10075EBAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075ED1C();
  if ((*(v4 + 88))(v6, v3) == enum case for LegacyAppState.purchased(_:))
  {
    (*(v4 + 96))(v6, v3);
    v7 = sub_10076093C();
    (*(*(v7 - 8) + 8))(v6, v7);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100392D00(0);
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100393888(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_10075E56C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_10075E84C();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v7 + 16))(v9, v12, v6);
    v13 = (*(v7 + 88))(v9, v6);
    v15 = v13 == enum case for InAppPurchaseState.buyable(_:) || v13 == enum case for InAppPurchaseState.indeterminateProgress(_:) || v13 == enum case for InAppPurchaseState.unknown(_:);
    v16 = v15;
    if (!v15)
    {
      (*(v7 + 8))(v9, v6);
    }

    sub_100392D00(v16);
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100393A6C()
{
  v1 = sub_10076B96C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100393B2C(uint64_t a1)
{
  v3 = *(sub_10076B96C() - 8);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);

  return sub_100393888(v4, a1, v1 + v5, v9, v10, v11);
}

uint64_t SubscriptionLockupPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapStateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED0C();
    swift_unknownObjectRelease();
  }

  sub_10075E1BC();
  if (sub_10075E19C())
  {
    sub_10075E83C();
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_iapAdamId;
  v3 = sub_10076B96C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000CC8C(v1 + OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SubscriptionLockupPresenter.__deallocating_deinit()
{
  SubscriptionLockupPresenter.deinit();

  return swift_deallocClassInstance();
}

void sub_100393D3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension27SubscriptionLockupPresenter_isIapVisible;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t type metadata accessor for SubscriptionLockupPresenter(uint64_t a1)
{
  result = qword_100954CB8;
  if (!qword_100954CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100393E10(uint64_t a1)
{
  result = sub_10076B96C();
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

void sub_100393EBC(char a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(a1 & 1);
  }
}

void sub_100393F6C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize;
  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = a3 & 1;
  *(v6 + 16) = a3 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(a1, a2, v7);
  }
}

void sub_100394040(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *((swift_isaMask & *Strong) + 0x110);
    v5 = Strong;

    v3(v4);
  }
}

void sub_100394110(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(a1);
  }
}

uint64_t sub_1003941C8(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
  swift_beginAccess();
  sub_100395BBC(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100016E2C(v1 + v6, v5, &unk_1009434A0, &unk_100787B90);
    (*((swift_isaMask & *v8) + 0x140))(v5);
  }

  return sub_10000CFBC(a1, &unk_1009434A0, &unk_100787B90);
}

double sub_10039431C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (v6 != Strong)
    {
      v7 = *(v4 + 8);
      swift_getObjectType();
      v8 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) image];
      (*(v7 + 8))();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_7:

  swift_unknownObjectRelease();
  return result;
}

void sub_10039442C(__n128 a1)
{
  v2 = sub_10076A75C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
  if ((v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16] & 1) == 0 && *&v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics])
  {
    v44 = v3;
    v18 = *v16;
    v17 = v16[1];
    v19 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016E2C(&v1[v19], v11, &unk_1009434A0, &unk_100787B90);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10000CFBC(v11, &unk_1009434A0, &unk_100787B90);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      v20 = v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory];
      if (v20 != 7)
      {

        v21 = v1;
        v22.n128_f64[0] = sub_1005B1CD8(v20);
        v23 = v44;
        v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v20 != 6)
        {
          v25 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v20 != 4)
        {
          v24 = v25;
        }

        (*(v44 + 104))(v5, *v24, v2, v22);
        (*(v23 + 32))(v8, v5, v2);
        v26 = sub_1007701CC();

        (*(v23 + 8))(v8, v2);
        v27 = v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded];
        [v21 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [v21 traitCollection];
        v37 = sub_1006C37A4(v36, v29, v31, v33, v35, v18, v17, v26, v27);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        [*&v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] setFrame:{v37, v39, v41, v43}];
      }

      (*(v13 + 8))(v15, v12);
    }
  }
}

char *sub_100394844(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory] = 7;
  v11 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
  v12 = sub_10076C38C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
  v14 = sub_10076BD9C();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  v16 = sub_10075DDBC();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for RevealingImageView(0);
  v17 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView;
  v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView];
  v20 = v17;
  [v19 setContentMode:2];
  v21 = *&v17[v18];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 setClipsToBounds:1];

  return v22;
}

void sub_100394AF0(void *a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView);
      v8 = Strong;
      v9 = [v7 image];
      v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize);
      v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 8);
      v12 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16);
      v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics);
      v14 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
      swift_beginAccess();
      sub_100016E2C(v1 + v14, v5, &unk_1009434A0, &unk_100787B90);
      v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory);

      sub_1003955EC(v9, v10, v11, v12, v13, v5, v15);

      sub_10000CFBC(v5, &unk_1009434A0, &unk_100787B90);
    }
  }
}

void sub_100394D18(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a10;
  v16 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v16 - 8);
  v51 = &v46 - v17;
  v18 = sub_10075DDBC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&qword_10094B038, &qword_100790DD8);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = sub_10000A5D4(&qword_10094B040, qword_100790DE0);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!a1)
    {

      return;
    }

    v47 = a9;
    v48 = a1;
    v32 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    (*(v19 + 16))(v29, a8, v18);
    (*(v19 + 56))(v29, 0, 1, v18);
    v33 = *(v21 + 48);
    sub_100016E2C(v31 + v32, v23, &qword_10094B040, qword_100790DE0);
    sub_100016E2C(v29, &v23[v33], &qword_10094B040, qword_100790DE0);
    v34 = *(v19 + 48);
    if (v34(v23, 1, v18) == 1)
    {
      v35 = v48;
      v36 = v48;
      sub_10000CFBC(v29, &qword_10094B040, qword_100790DE0);
      if (v34(&v23[v33], 1, v18) == 1)
      {
        sub_10000CFBC(v23, &qword_10094B040, qword_100790DE0);
LABEL_11:
        v42 = sub_10076C38C();
        v43 = *(v42 - 8);
        v44 = v51;
        (*(v43 + 16))(v51, v50, v42);
        (*(v43 + 56))(v44, 0, 1, v42);
        v45 = v35;
        sub_1003955EC(v35, *&a2, *&a3, 0, v47, v44, a11);

        sub_10000CFBC(v44, &unk_1009434A0, &unk_100787B90);
        return;
      }

LABEL_9:
      sub_10000CFBC(v23, &qword_10094B038, &qword_100790DD8);

      return;
    }

    sub_100016E2C(v23, v26, &qword_10094B040, qword_100790DE0);
    v37 = v34(&v23[v33], 1, v18);
    v35 = v48;
    if (v37 == 1)
    {
      v38 = v48;
      sub_10000CFBC(v29, &qword_10094B040, qword_100790DE0);
      (*(v19 + 8))(v26, v18);
      goto LABEL_9;
    }

    v39 = v49;
    (*(v19 + 32))(v49, &v23[v33], v18);
    sub_10039598C();
    v46 = v35;
    v40 = sub_10076FF1C();
    v41 = *(v19 + 8);
    v41(v39, v18);
    sub_10000CFBC(v29, &qword_10094B040, qword_100790DE0);
    v41(v26, v18);
    v35 = v48;
    sub_10000CFBC(v23, &qword_10094B040, qword_100790DE0);
    if (v40)
    {
      goto LABEL_11;
    }
  }
}

id sub_1003952A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingImageView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingImageView(uint64_t a1)
{
  result = qword_100954DC0;
  if (!qword_100954DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003953FC(uint64_t a1)
{
  sub_100395598(319, qword_100946AC0, &type metadata accessor for PageGrid);
  if (v1 <= 0x3F)
  {
    sub_100395598(319, &qword_100954DD0, &type metadata accessor for Artwork.URLTemplate);
    if (v2 <= 0x3F)
    {
      sub_100395598(319, &qword_100954DD8, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100395598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1003955EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a4;
  v15 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v44 - v17;
  v19 = *(v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView);
  v45 = a1;
  v46 = v19;
  [v19 setImage:{a1, v16}];
  v47 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics;
  *(v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics) = a5;

  v20 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *((swift_isaMask & *Strong) + 0x110);
    v44 = v20;
    swift_bridgeObjectRetain_n();
    v23(a5);
  }

  else
  {
  }

  v24 = v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize;
  *v24 = a2;
  *(v24 + 8) = a3;
  v25 = v48 & 1;
  *(v24 + 16) = v48 & 1;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    (*((swift_isaMask & *v26) + 0xF8))(a2, a3, v25);
  }

  sub_100016E2C(a6, v18, &unk_1009434A0, &unk_100787B90);
  sub_1003941C8(v18);
  v28 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory;
  *(v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = a7;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0x128))(a7);
  }

  v31 = v8 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v45, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v36 = v34;
    v37 = [v46 image];
    v38 = *v24;
    v39 = *(v24 + 8);
    v40 = *(v24 + 16);
    v41 = *(v8 + v47);
    v42 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016E2C(v8 + v42, v18, &unk_1009434A0, &unk_100787B90);
    v43 = *(v8 + v28);

    sub_1003955EC(v37, v38, v39, v40, v41, v18, v43);

    sub_10000CFBC(v18, &unk_1009434A0, &unk_100787B90);
  }

  sub_10039442C(v35);
}

unint64_t sub_10039598C()
{
  result = qword_10094B048;
  if (!qword_10094B048)
  {
    sub_10075DDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094B048);
  }

  return result;
}

void sub_1003959E4()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = 7;
  v3 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_pageGrid;
  v4 = sub_10076C38C();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
  v6 = sub_10076BD9C();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  v8 = sub_10075DDBC();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100395BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100395C2C()
{
  v0 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000DB18(v0, qword_10099F1E8);
  sub_10000A61C(v0, qword_10099F1E8);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_100395CDC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076640C();
  sub_10000DB18(v4, qword_10099F218);
  sub_10000A61C(v4, qword_10099F218);
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1018);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v12[3] = sub_10076D9AC();
  v12[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v12);
  v10 = v0;
  v11 = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v10 = sub_10076D67C();
  v11 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v9);
  sub_10076D66C();
  return sub_1007663FC();
}

uint64_t sub_100395F20(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = sub_10076640C();
  sub_10000DB18(v12, a4);
  v22 = sub_10000A61C(v12, a4);
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v19 = sub_10000A61C(v13, qword_1009A1018);
  v14 = *(*(v13 - 8) + 16);
  v14(v8, v19, v13);
  v15 = enum case for FontSource.useCase(_:);
  v16 = *(v6 + 104);
  v16(v8, enum case for FontSource.useCase(_:), v5);
  sub_10075FE6C();
  sub_10075FE2C();
  (*(v20 + 8))(v11, v21);
  v14(v8, v19, v13);
  v16(v8, v15, v5);
  v24[3] = sub_10076D9AC();
  v24[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v24);
  v23[3] = v5;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v23);
  (*(v6 + 16))(v17, v8, v5);
  sub_10076D9BC();
  (*(v6 + 8))(v8, v5);
  return sub_1007663FC();
}

char *sub_100396230(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v82 = sub_10076771C();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v74[-v12];
  v14 = sub_10076E1EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_10076E21C();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView;
  (*(v15 + 104))(v17, enum case for Separator.Position.bottom(_:), v14, v20);
  v87[3] = sub_10076D67C();
  v87[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v87);
  sub_10076D66C();
  sub_10076E1FC();
  v24 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v26 = *(v19 + 40);
  v27 = v24;
  v26(&v24[v25], v22, v18);
  swift_endAccess();

  *&v5[v23] = v27;
  v28 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  v84 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v29 = sub_100770D2C();
  v30 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v31 = sub_10073C780(v29, 0.0, 0.0, 0.0, 0.0);
  v83 = v5;
  *&v5[v28] = v31;
  v79 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  v33 = sub_10000A61C(v32, qword_1009A1018);
  v34 = *(v32 - 8);
  v77 = *(v34 + 16);
  v78 = v33;
  v77(v13, v33, v32);
  v76 = *(v34 + 56);
  v76(v13, 0, 1, v32);
  v75 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v81;
  v80 = *(v80 + 104);
  v36 = v82;
  (v80)(v81);
  v37 = sub_1007626BC();
  v38 = objc_allocWithZone(v37);
  v39 = sub_1007626AC();
  v40 = v83;
  v41 = v78;
  *&v83[v79] = v39;
  v79 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v77(v13, v41, v32);
  v76(v13, 0, 1, v32);
  (v80)(v35, v75, v36);
  v42 = objc_allocWithZone(v37);
  *&v40[v79] = sub_1007626AC();
  v43 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_itemLayoutContext;
  v44 = sub_10076341C();
  (*(*(v44 - 8) + 56))(&v40[v43], 1, 1, v44);
  v40[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] = 0;
  *&v40[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits] = 0;
  v45 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v86.receiver = v40;
  v86.super_class = v45;
  v46 = objc_msgSendSuper2(&v86, "initWithFrame:", a1, a2, a3, a4);
  v47 = [v46 contentView];
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v48 = [v46 contentView];
  v49 = sub_100770D2C();
  [v48 setBackgroundColor:v49];

  v50 = [v46 contentView];
  [v50 addSubview:*&v46[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView]];

  v51 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  v52 = *&v46[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  v53 = sub_100770D1C();
  [v52 setTextColor:v53];

  v54 = *&v46[v51];
  v55 = sub_100770D2C();
  [v54 setBackgroundColor:v55];

  [*&v46[v51] setNumberOfLines:1];
  v56 = [v46 contentView];
  [v56 addSubview:*&v46[v51]];

  v57 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v58 = *&v46[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  v60 = *&v46[v57];
  v61 = sub_100770D2C();
  [v60 setBackgroundColor:v61];

  v62 = v46;
  v63 = [v62 contentView];
  [v63 addSubview:*&v46[v57]];

  v64 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  v65 = qword_1009401F8;
  v66 = *&v62[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000A61C(v67, qword_10099F1E8);
  v85 = v62;
  sub_10075FDCC();

  v68 = v87[0];
  v69 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v70 = *&v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines] = v87[0];
  v71 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    [*&v66[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel] setNumberOfLines:?];
    v68 = *&v66[v69];
  }

  if (v68 != v70 && (v66[v71] & 1) != 0)
  {
    sub_10073D75C();
  }

  v72 = [v62 contentView];
  [v72 addSubview:*&v62[v64]];

  return v62;
}

id sub_100396B64()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] == 1)
  {
    if (qword_100940B68 != -1)
    {
      swift_once();
    }

    v6 = sub_10076D3DC();
    v7 = sub_10000A61C(v6, qword_1009A1030);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v4, v7, v6);
    (*(v8 + 56))(v4, 0, 1, v6);
    sub_1007625DC();
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v9 = sub_100770CFC();
  }

  else
  {
    if (qword_100940B60 != -1)
    {
      swift_once();
    }

    v10 = sub_10076D3DC();
    v11 = sub_10000A61C(v10, qword_1009A1018);
    v12 = *(v10 - 8);
    (*(v12 + 16))(v4, v11, v10);
    (*(v12 + 56))(v4, 0, 1, v10);
    sub_1007625DC();
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v9 = sub_100770D1C();
  }

  v13 = v9;
  [v5 setTextColor:v9];

  return [v1 setNeedsLayout];
}

void *sub_100396DEC()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076642C();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076640C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = sub_10076E21C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TitledParagraphCollectionViewCell(0);
  v77.receiver = v1;
  v77.super_class = v19;
  objc_msgSendSuper2(&v77, "layoutSubviews");
  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits];
  if (result)
  {
    v68 = v3;
    v69 = v2;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView];
    v70 = result;
    swift_unknownObjectRetain();
    [v1 bounds];
    v22 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    (*(v16 + 16))(v18, &v21[v22], v15);
    sub_10076E1CC();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v16 + 8))(v18, v15);
    [v21 setFrame:{v24, v26, v28, v30}];
    v31 = [v1 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = [v1 traitCollection];
    v41 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling;
    v42 = v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling];
    v67 = v40;
    if ((v42 & 1) != 0 || (sub_1007663BC() & 1) == 0)
    {
      v50 = sub_10077071C();
      v66 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:0];
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel] setTextAlignment:{v51, *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel]}];
      if (v1[v41] == 1)
      {
        v49 = v68;
        v46 = v14;
        if (qword_100940210 != -1)
        {
          swift_once();
        }

        v52 = qword_10099F230;
      }

      else
      {
        v49 = v68;
        v46 = v14;
        if (qword_100940200 != -1)
        {
          swift_once();
        }

        v52 = qword_10099F200;
      }

      v47 = v7;
      v53 = sub_10000A61C(v6, v52);
      v45 = *(v7 + 16);
      v45(v11, v53, v6);
      (*(v7 + 32))(v46, v11, v6);
    }

    else
    {
      v66 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:2];
      v65 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
      [v65 setTextAlignment:2];
      v78.origin.x = v33;
      v78.origin.y = v35;
      v78.size.width = v37;
      v78.size.height = v39;
      Width = CGRectGetWidth(v78);
      if (qword_100940208 != -1)
      {
        swift_once();
      }

      v44 = sub_10000A61C(v6, qword_10099F218);
      v45 = *(v7 + 16);
      v46 = v14;
      v47 = v7;
      v45(v46, v44, v6);
      v48 = v70;
      sub_100397DE4(v70, Width);
      sub_1007663DC();
      [v48 pageMarginInsets];
      sub_1007663EC();
      v49 = v68;
    }

    v45(v71, v46, v6);
    v54 = sub_1007626BC();
    v68 = v6;
    v55 = v46;
    v76[13] = v54;
    v76[14] = &protocol witness table for UIView;
    v56 = v66;
    v76[9] = &protocol witness table for UIView;
    v76[10] = v66;
    v76[8] = v54;
    v57 = v65;
    v76[5] = v65;
    v58 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
    v59 = type metadata accessor for ExpandableTextView();
    v76[4] = &protocol witness table for UIView;
    v76[3] = v59;
    v76[0] = v58;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v72;
    sub_10076641C();
    v64 = v74;
    sub_1007663CC();
    swift_unknownObjectRelease();

    (*(v49 + 8))(v64, v69);
    (*(v73 + 8))(v63, v75);
    return (*(v47 + 8))(v55, v68);
  }

  return result;
}

double sub_10039760C(void *a1, char a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v52 - v17;
  if (a2)
  {
    v19 = [a1 traitCollection];
    v20 = sub_1007663BC();

    if (v20)
    {
      v21 = sub_100397DE4(a6, a3);
      [a6 pageMarginInsets];
      a3 = a3 - (v21 + v22);
    }
  }

  if (a7)
  {
    v23 = a3 <= a4 ? a3 : a4;
    if (v23 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v27 = a7;
      v28 = [a1 traitCollection];
      v29 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v30 = objc_allocWithZone(v29);
      v31 = &v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_layoutMargins];
      *v31 = UIEdgeInsetsZero.top;
      v31[1] = left;
      v31[2] = bottom;
      v31[3] = right;
      *&v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_numberOfLines] = a8;
      v32 = &v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_fittingSize];
      *v32 = a3;
      v32[1] = a4;
      *&v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_traitCollection] = v28;
      *&v30[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D620MeasurementsCacheKey_attributedText] = v27;
      v53.receiver = v30;
      v53.super_class = v29;
      v33 = objc_msgSendSuper2(&v53, "init");
      if (qword_1009415A0 != -1)
      {
        swift_once();
      }

      v34 = qword_1009678B0;
      v35 = [qword_1009678B0 objectForKey:v33];
      if (v35)
      {
        v36 = v35;

        a3 = *&v36[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
      }

      else
      {
        v37 = qword_100941598;
        v36 = v27;
        if (v37 != -1)
        {
          swift_once();
        }

        v38 = sub_10076D3DC();
        v39 = sub_10000A61C(v38, qword_100967898);
        v40 = *(v38 - 8);
        (*(v40 + 16))(v18, v39, v38);
        (*(v40 + 56))(v18, 0, 1, v38);
        sub_10076D80C();
        sub_10076D82C();
        sub_10076D81C();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        sub_10000CFBC(v18, &unk_100943250, &unk_1007841D0);
        v47 = type metadata accessor for ExpandableTextView.CacheValue();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR____TtCC20ProductPageExtension18ExpandableTextViewP33_781A3C9D9766F06FE2FBFD638E0A64D610CacheValue_measurements];
        *v49 = a3;
        v49[1] = UIEdgeInsetsZero.top + bottom + v42;
        *(v49 + 2) = v44;
        *(v49 + 3) = v46;
        v52.receiver = v48;
        v52.super_class = v47;
        v50 = objc_msgSendSuper2(&v52, "init");
        [v34 setObject:v50 forKey:v33];
      }
    }
  }

  return a3;
}

void sub_100397A14(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  if (qword_1009401F8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000A61C(v4, qword_10099F1E8);
  v10 = v1;
  v5 = v1;
  sub_10075FDCC();

  v6 = v11;
  v7 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines;
  v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines);
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines) = v11;
  v9 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed) == 1)
  {
    [*(v3 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel) setNumberOfLines:v10];
    v6 = *(v3 + v7);
  }

  if (v6 != v8 && (*(v3 + v9) & 1) != 0)
  {
    sub_10073D75C();
  }
}

id sub_100397BF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell(uint64_t a1)
{
  result = qword_100954E28;
  if (!qword_100954E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100397D1C(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100397DE4(void *a1, double a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  [a1 pageMarginInsets];
  v13 = (a2 + v12 * -4.0) / 5.0;
  sub_10076D17C();
  v21 = v13;
  (*(v5 + 16))(v7, v11, v4);
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v15 = round(v13);
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return v15;
  }

  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v5 + 8))(v11, v4);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_10077035C();
    v19 = *(v5 + 8);
    v19(v11, v4);
    v19(v7, v4);
    return v21;
  }
}

void sub_100398054()
{
  v1 = v0;
  v46 = sub_10076771C();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v3 - 8);
  v43 = &v37[-v4];
  v5 = sub_10076E1EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10076E21C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_separatorView;
  (*(v6 + 104))(v8, enum case for Separator.Position.bottom(_:), v5, v11);
  v48[3] = sub_10076D67C();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v48);
  sub_10076D66C();
  sub_10076E1FC();
  v15 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v17 = *(v10 + 40);
  v18 = v15;
  v17(&v15[v16], v13, v9);
  swift_endAccess();

  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_bodyTextView;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v20 = sub_100770D2C();
  v21 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v22 = sub_10073C780(v20, 0.0, 0.0, 0.0, 0.0);
  v47 = v1;
  *(v1 + v19) = v22;
  v42 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_100940B60 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1018);
  v25 = *(v23 - 8);
  v40 = *(v25 + 16);
  v41 = v24;
  v26 = v43;
  v40(v43, v24, v23);
  v39 = *(v25 + 56);
  v39(v26, 0, 1, v23);
  v38 = enum case for DirectionalTextAlignment.none(_:);
  v27 = v45;
  v44 = *(v44 + 104);
  v28 = v46;
  (v44)(v45);
  v29 = sub_1007626BC();
  v30 = objc_allocWithZone(v29);
  v31 = sub_1007626AC();
  v32 = v47;
  v33 = v41;
  *(v47 + v42) = v31;
  v42 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v40(v26, v33, v23);
  v39(v26, 0, 1, v23);
  (v44)(v27, v38, v28);
  v34 = objc_allocWithZone(v29);
  *(v32 + v42) = sub_1007626AC();
  v35 = OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_itemLayoutContext;
  v36 = sub_10076341C();
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  *(v32 + OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling) = 0;
  *(v32 + OBJC_IVAR____TtC20ProductPageExtension33TitledParagraphCollectionViewCell_pageTraits) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003986B8()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_100954EA0);
  sub_10000A61C(v0, qword_100954EA0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

char *sub_100398754(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075E77C();
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_metrics;
  if (qword_100940928 != -1)
  {
    swift_once();
  }

  v21 = sub_10075E93C();
  v22 = sub_10000A61C(v21, qword_1009A09A0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  v61 = sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  *&v5[v23] = sub_100770D9C();
  if (qword_100940218 != -1)
  {
    swift_once();
  }

  v24 = sub_10076D3DC();
  v25 = sub_10000A61C(v24, qword_100954E40);
  v26 = *(v24 - 8);
  v66 = *(v26 + 16);
  v66(v19, v25, v24);
  v65 = *(v26 + 56);
  v65(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v27;
  v27(v16);
  v28 = sub_1007626BC();
  v62 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel] = sub_1007626AC();
  if (qword_100940220 != -1)
  {
    swift_once();
  }

  v31 = sub_10000A61C(v24, qword_100954E58);
  v66(v19, v31, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel] = sub_1007626AC();
  if (qword_100940228 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v24, qword_100954E70);
  v66(v19, v33, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel] = sub_1007626AC();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_offerButton] = sub_1001E89B8(0);
  sub_10075E6FC();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView] = sub_1005B7DD4(v12, 1);
  if (qword_100940230 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v24, qword_100954E88);
  v66(v19, v38, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription] = sub_1007626AC();
  v40 = type metadata accessor for InAppPurchaseSearchResultContentView(0);
  v68.receiver = v5;
  v68.super_class = v40;
  v41 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppPurchaseLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_titleLabel]];
  v47 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_subtitleLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_offerButton]];
  v48 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_body]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_iconView]];
  v49 = OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_inAppDescription]];
  v50 = [*&v45[v48] layer];
  [v50 setCornerRadius:20.0];

  v51 = *&v45[v46];
  v52 = [v45 tintColor];
  [v51 setTextColor:v52];

  v53 = *&v45[v47];
  v54 = sub_100770D1C();
  [v53 setTextColor:v54];

  [*&v45[v48] setBackgroundColor:*&v45[OBJC_IVAR____TtC20ProductPageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor]];
  v55 = qword_100940238;
  v56 = *&v45[v49];
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v57, qword_100954EA0);
  v67 = v45;
  sub_10075FDCC();

  sub_100770E7C();
  v58 = *&v45[v49];
  v59 = sub_100770D1C();
  [v58 setTextColor:v59];

  return v45;
}
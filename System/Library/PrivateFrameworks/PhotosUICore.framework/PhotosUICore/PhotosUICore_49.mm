unint64_t sub_1A425CE34()
{
  result = qword_1EB1231E8;
  if (!qword_1EB1231E8)
  {
    sub_1A4255924(255);
    sub_1A425CED4();
    sub_1A425D018(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1231E8);
  }

  return result;
}

unint64_t sub_1A425CED4()
{
  result = qword_1EB123410;
  if (!qword_1EB123410)
  {
    sub_1A42559DC(255);
    sub_1A425CF74();
    sub_1A425D018(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123410);
  }

  return result;
}

unint64_t sub_1A425CF74()
{
  result = qword_1EB123828;
  if (!qword_1EB123828)
  {
    sub_1A425524C(255, &qword_1EB1283D0, sub_1A3DF14C0, MEMORY[0x1E697EBE8]);
    sub_1A405D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123828);
  }

  return result;
}

uint64_t sub_1A425D018(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4255874(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A425D07C()
{
  result = qword_1EB122610;
  if (!qword_1EB122610)
  {
    sub_1A4256258(255);
    sub_1A4256044(&qword_1EB121890, sub_1A42562A0, MEMORY[0x1E69817F8]);
    sub_1A425CD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122610);
  }

  return result;
}

void sub_1A425D12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A425D1A8()
{
  result = qword_1EB124350;
  if (!qword_1EB124350)
  {
    sub_1A42557F4(255);
    swift_getOpaqueTypeConformance2();
    sub_1A425D018(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124350);
  }

  return result;
}

uint64_t sub_1A425D260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A425D2C8()
{
  v1 = *(type metadata accessor for LemonadeShelfPlaceholderView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A425BC70(v2);
}

uint64_t sub_1A425D328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A425D390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A425D420()
{
  result = qword_1EB171FF0[0];
  if (!qword_1EB171FF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB171FF0);
  }

  return result;
}

unint64_t sub_1A425D494()
{
  result = qword_1EB171B58[0];
  if (!qword_1EB171B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB171B58);
  }

  return result;
}

unint64_t sub_1A425D574()
{
  result = qword_1EB1B2170;
  if (!qword_1EB1B2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B2170);
  }

  return result;
}

uint64_t sub_1A425D5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content;
  swift_beginAccess();
  return sub_1A425D620(v1 + v3, a1);
}

uint64_t sub_1A425D620(uint64_t a1, uint64_t a2)
{
  sub_1A425D684(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A425D684(uint64_t a1)
{
  if (!qword_1EB129168)
  {
    sub_1A5242A14();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB129168);
    }
  }
}

uint64_t sub_1A425D6DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content;
  swift_beginAccess();
  sub_1A425D73C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A425D73C(uint64_t a1, uint64_t a2)
{
  sub_1A425D684(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A425D800()
{
  sub_1A425D684(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242A14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  (*(*v0 + 88))(v9);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A425D9E4(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v7, v11, v4);
    sub_1A425DEF8(0);
    v14 = objc_allocWithZone(v13);
    v15 = sub_1A52485F4();
    (*(v5 + 8))(v11, v4);
    return v15;
  }
}

uint64_t sub_1A425D9E4(uint64_t a1)
{
  sub_1A425D684(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A425DA40()
{
  sub_1A425D9E4(v0 + OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content);

  return swift_deallocClassInstance();
}

uint64_t sub_1A425DAA4()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content;
  v2 = sub_1A5242A14();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t type metadata accessor for PhotosNavigationItemPaletteContentContainer(uint64_t a1)
{
  result = qword_1EB171068;
  if (!qword_1EB171068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A425DB74(uint64_t a1)
{
  sub_1A425D684(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A425DCA0(void *a1, uint64_t a2)
{
  if (a2)
  {
    v14 = sub_1A425D800();
  }

  else
  {
    v14 = 0;
  }

  v3 = [a1 _bottomPalette];
  if (v3)
  {

    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    v11 = [a1 _bottomPalette];
    if (v11)
    {

      v12 = [a1 _bottomPalette];
      if (v12)
      {
        v13 = v12;
        [v12 removeFromSuperview];

        [a1 _setBottomPalette_];
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69DD5E0]);
  v5 = v14;
  v6 = [v4 initWithContentView_];
  [a1 _setBottomPalette_];

  v7 = [a1 _bottomPalette];
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  [v7 setClipsToBounds_];

  v9 = [a1 _bottomPalette];
  if (!v9)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setPreferredHeight_];

LABEL_14:
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [a1 setBackButtonDisplayMode_];
  }
}

id sub_1A425DE80(void *a1)
{
  v3 = *v1;
  [a1 setLargeTitleDisplayMode_];
  [a1 setStyle_];

  return [a1 setTitleView_];
}

void sub_1A425DEF8(uint64_t a1)
{
  if (!qword_1EB1288E0)
  {
    sub_1A5242A14();
    sub_1A425DF5C();
    v1 = sub_1A5248614();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1288E0);
    }
  }
}

unint64_t sub_1A425DF5C()
{
  result = qword_1EB129178;
  if (!qword_1EB129178)
  {
    sub_1A5242A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129178);
  }

  return result;
}

void RedactedShimmer.body(content:)(uint64_t a1@<X8>)
{
  v3 = sub_1A52489F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  HIDWORD(v15) = *(v1 + 24);
  sub_1A52489E4();
  sub_1A425E488(0, &qword_1EB127BA8, sub_1A425E210, &type metadata for RedactedShimmer);
  sub_1A425F3F4(&qword_1EB127BB0, &qword_1EB127BA8, sub_1A425E210, &type metadata for RedactedShimmer);
  sub_1A524B174();
  (*(v4 + 8))(v6, v3);
  v17 = v7;
  v18 = v8;
  sub_1A425EADC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v10 = v16;
  sub_1A425E264(0);
  *(a1 + *(v11 + 36)) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v9;
  *(v12 + 40) = BYTE4(v15);
  sub_1A425E414(0, &qword_1EB128340, sub_1A425E264, MEMORY[0x1E69805D8]);
  v14 = (a1 + *(v13 + 36));
  *v14 = sub_1A425E364;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
}

unint64_t sub_1A425E210()
{
  result = qword_1EB12A5D0;
  if (!qword_1EB12A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5D0);
  }

  return result;
}

void sub_1A425E28C(uint64_t a1)
{
  if (!qword_1EB127590)
  {
    sub_1A425E488(255, &qword_1EB127BA8, sub_1A425E210, &type metadata for RedactedShimmer);
    sub_1A425F3F4(&qword_1EB127BB0, &qword_1EB127BA8, sub_1A425E210, &type metadata for RedactedShimmer);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127590);
    }
  }
}

void sub_1A425E364()
{
  sub_1A524BCF4();
  sub_1A524BCC4();

  sub_1A52483D4();
}

void sub_1A425E414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_1A425E478(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

void sub_1A425E488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1A52499C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A425E4E8()
{
  result = qword_1EB12A5E8;
  if (!qword_1EB12A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5E8);
  }

  return result;
}

void sub_1A425E53C(uint64_t a1)
{
  if (!qword_1EB1287A0)
  {
    sub_1A425E488(255, &qword_1EB127BB8, sub_1A425E4E8, &type metadata for RedactedShimmer.AnimatedMask);
    sub_1A425E5C8(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1287A0);
    }
  }
}

void sub_1A425E5C8(uint64_t a1)
{
  if (!qword_1EB1289A8)
  {
    sub_1A425E62C();
    sub_1A425E684();
    v1 = sub_1A5247FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1289A8);
    }
  }
}

void sub_1A425E62C()
{
  if (!qword_1EB128878)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128878);
    }
  }
}

unint64_t sub_1A425E684()
{
  result = qword_1EB128880;
  if (!qword_1EB128880)
  {
    sub_1A425E62C();
    sub_1A425E704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128880);
  }

  return result;
}

unint64_t sub_1A425E704()
{
  result = qword_1EB12A5D8;
  if (!qword_1EB12A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5D8);
  }

  return result;
}

double sub_1A425E758(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1A425E764(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1A425F578;
}

uint64_t sub_1A425E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A425F49C();

  return MEMORY[0x1EEDDA6B0](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1A425E810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A425F49C();

  return MEMORY[0x1EEDDA6A8](a1, a2, a3, a4, a5, v10);
}

__n128 sub_1A425E88C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *v3;
  sub_1A524B404();
  v7 = sub_1A524B474();

  sub_1A524B404();
  v8 = sub_1A524B474();

  sub_1A524BE94();
  v10 = v9;
  v12 = v11;
  sub_1A425E488(0, &qword_1EB127BB8, sub_1A425E4E8, &type metadata for RedactedShimmer.AnimatedMask);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_1A425E53C(0);
  v15 = a2 + *(v14 + 36);
  *v15 = v6;
  *(v15 + 8) = v7;
  *(v15 + 16) = v8;
  __asm { FMOV            V0.2D, #3.0 }

  *(v15 + 24) = result;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  return result;
}

double sub_1A425E9A8@<D0>(uint64_t a2@<X8>)
{
  sub_1A425EADC(0, &qword_1EB126210, MEMORY[0x1E6981AA8], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FF950;
  swift_retain_n();
  *(v4 + 32) = sub_1A524BB34();
  *(v4 + 40) = v5;

  *(v4 + 48) = sub_1A524BB34();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_1A524BB34();
  *(v4 + 72) = v7;
  sub_1A524BB44();
  sub_1A524BE44();
  sub_1A524BE64();
  sub_1A5248434();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

void sub_1A425EADC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t View.redactedShimmer(active:duration:bounce:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v46 = a5;
  v47 = a4;
  v42 = a2;
  LODWORD(WitnessTable) = a1;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41[-v13];
  v15 = sub_1A5248804();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41[-v20];
  v22 = sub_1A5249754();
  v44 = *(v22 - 8);
  v45 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41[-v24];
  if (WitnessTable)
  {
    v52 = 0;
    sub_1A524B694();
    *&v50[2] = a6;
    v51 = v42 & 1;
    v26 = v47;
    MEMORY[0x1A5906490](v50, a3, &type metadata for RedactedShimmer, v47);

    v27 = sub_1A425E210();
    v48 = v26;
    v49 = v27;
    WitnessTable = swift_getWitnessTable();
    v28 = *(v16 + 16);
    v28(v21, v18, v15);
    v29 = *(v16 + 8);
    v29(v18, v15);
    v28(v18, v21, v15);
    sub_1A3DF4798(v18, v15, a3, WitnessTable, v26);
    v29(v18, v15);
    v29(v21, v15);
  }

  else
  {
    v30 = *(v9 + 16);
    v30(v14, v6, a3, v23);
    (v30)(v11, v14, a3);
    v31 = sub_1A425E210();
    v32 = v9;
    v33 = v47;
    v57 = v47;
    v58 = v31;
    v34 = swift_getWitnessTable();
    sub_1A3DF4890(v11, v15, a3, v34, v33);
    v35 = *(v32 + 8);
    v35(v11, a3);
    v35(v14, a3);
  }

  v36 = sub_1A425E210();
  v37 = v47;
  v55 = v47;
  v56 = v36;
  v53 = swift_getWitnessTable();
  v54 = v37;
  v38 = v45;
  swift_getWitnessTable();
  v39 = v44;
  (*(v44 + 16))(v46, v25, v38);
  return (*(v39 + 8))(v25, v38);
}

unint64_t sub_1A425EFB8()
{
  result = qword_1EB12A5F0;
  if (!qword_1EB12A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5F0);
  }

  return result;
}

unint64_t sub_1A425F014()
{
  result = qword_1EB12AF28;
  if (!qword_1EB12AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF28);
  }

  return result;
}

uint64_t sub_1A425F0BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1A425F118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A425F1A0()
{
  result = qword_1EB128348;
  if (!qword_1EB128348)
  {
    sub_1A425E414(255, &qword_1EB128340, sub_1A425E264, MEMORY[0x1E69805D8]);
    sub_1A425F244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128348);
  }

  return result;
}

unint64_t sub_1A425F244()
{
  result = qword_1EB128630;
  if (!qword_1EB128630)
  {
    sub_1A425E264(255);
    sub_1A425E488(255, &qword_1EB127BA8, sub_1A425E210, &type metadata for RedactedShimmer);
    sub_1A425F3F4(&qword_1EB127BB0, &qword_1EB127BA8, sub_1A425E210, &type metadata for RedactedShimmer);
    swift_getOpaqueTypeConformance2();
    sub_1A425E4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128630);
  }

  return result;
}

unint64_t sub_1A425F348()
{
  result = qword_1EB1287A8;
  if (!qword_1EB1287A8)
  {
    sub_1A425E53C(255);
    sub_1A425F3F4(&qword_1EB127BC0, &qword_1EB127BB8, sub_1A425E4E8, &type metadata for RedactedShimmer.AnimatedMask);
    sub_1A425F444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287A8);
  }

  return result;
}

uint64_t sub_1A425F3F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A425E488(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A425F444()
{
  result = qword_1EB1289B0;
  if (!qword_1EB1289B0)
  {
    sub_1A425E5C8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1289B0);
  }

  return result;
}

unint64_t sub_1A425F49C()
{
  result = qword_1EB12A5E0;
  if (!qword_1EB12A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5E0);
  }

  return result;
}

__n128 sub_1A425F58C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A426006C(0);
  sub_1A524B694();
  v7 = v35;
  sub_1A524B694();
  v9 = v35.n128_u64[1];
  v8 = v35.n128_u64[0];
  sub_1A524B694();
  v10 = v35;
  sub_1A524B694();
  v11 = v35;
  sub_1A524B694();
  v12 = v35;
  sub_1A524B694();
  v29 = v35;
  sub_1A524B694();
  v13 = v35;
  v38[0] = 0;
  sub_1A524B694();
  v14 = v35.n128_u64[1];
  v15 = v35.n128_u64[0];
  sub_1A524B694();
  v28 = v35.n128_u8[0];
  v27 = v35.n128_u64[1];
  v16 = sub_1A524BCB4();
  if (*(a1 + 384) == 1)
  {
    pixelBufferOut = 0;
    v25 = v16;
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    v26 = v35.n128_u64[1];
    v24 = sub_1A524C3D4();

    CVPixelBufferCreate(*MEMORY[0x1E695E480], 1uLL, 1uLL, 0x42475241u, v24, &pixelBufferOut);
    v17 = pixelBufferOut;
    v38[0] = pixelBufferOut;
    sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
    v18 = v17;
    sub_1A524B6B4();
    v37 = v35.n128_u64[1];
    v38[0] = v35.n128_u64[0];
    v34 = pixelBufferOut;
    v19 = v35.n128_u64[1];
    v20 = v35.n128_u64[0];
    v21 = pixelBufferOut;
    sub_1A42640D0(v38, v33, sub_1A426006C);
    sub_1A42640D0(&v37, v33, sub_1A4264138);
    sub_1A524B6B4();
    v14 = v26;

    v9 = v19;
    v8 = v20;
    sub_1A4264AC0(v38, sub_1A426006C);
    sub_1A4264AC0(&v37, sub_1A4264138);

    v16 = v25;
  }

  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *&v22 = v8;
  *(&v22 + 1) = v9;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v7;
  *(a5 + 48) = v22;
  *(a5 + 64) = v10;
  *(a5 + 80) = v11;
  result = v29;
  *(a5 + 96) = v12;
  *(a5 + 112) = v29;
  *(a5 + 128) = v13;
  *(a5 + 144) = v15;
  *(a5 + 152) = v14;
  *(a5 + 160) = v28;
  *(a5 + 168) = v27;
  *(a5 + 176) = v16;
  return result;
}

__n128 ParallaxAssetView.init(viewModel:animateLayers:overlapView:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1A426006C(0);
  sub_1A524B694();
  v14 = v106;
  sub_1A524B694();
  v48 = v106;
  sub_1A524B694();
  v47 = v106;
  sub_1A524B694();
  v46 = v106;
  sub_1A524B694();
  v45 = v106;
  sub_1A524B694();
  v44 = v106;
  sub_1A524B694();
  v15 = v106;
  *&v94[0] = 0;
  sub_1A524B694();
  v16 = *(&v106 + 1);
  v17 = v106;
  sub_1A524B694();
  v42 = v106;
  v43 = *(&v106 + 1);
  v18 = sub_1A524BCB4();
  v20 = a2 & 1;
  if (*(a1 + 384) == 1)
  {
    *&v55 = a1;
    BYTE8(v55) = a2 & 1;
    *(&v55 + 9) = *v68;
    HIDWORD(v55) = *&v68[3];
    v57 = v106;
    v58 = v106;
    *&v56 = a3;
    *(&v56 + 1) = a4;
    v59 = v106;
    v60 = v106;
    v61 = v106;
    v62 = v106;
    v63 = v106;
    v64 = v106;
    LOBYTE(v65) = v106;
    *(&v65 + 1) = *v67;
    DWORD1(v65) = *&v67[3];
    *(&v65 + 1) = *(&v106 + 1);
    v66 = v18;
    v51 = v106;
    v52 = v106;
    v53 = v65;
    v54 = v18;
    v49 = v55;
    v50 = v56;
    v38 = v18;
    v37 = a2 & 1;
    v21 = type metadata accessor for ParallaxAssetView(0, a5, a6, v19);
    v40 = a4;
    v41 = *(v21 - 8);
    v22 = *(v41 + 16);
    v22(&v106, &v55, v21);
    v35 = v22;
    v90 = v51;
    v91 = __PAIR128__(v16, v17);
    v92 = v53;
    v93 = v54;
    v86 = v47;
    v87 = v46;
    v88 = v45;
    v89 = v44;
    v82 = v49;
    v83 = v50;
    v84 = v14;
    v85 = v48;
    pixelBufferOut = 0;
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    v36 = sub_1A524C3D4();

    CVPixelBufferCreate(*MEMORY[0x1E695E480], 1uLL, 1uLL, 0x42475241u, v36, &pixelBufferOut);
    v23 = pixelBufferOut;
    v69 = v82;
    v70 = v83;
    v39 = v16;
    v25 = *(&v84 + 1);
    v24 = v84;
    v78 = v91;
    v79 = v92;
    v80 = v93;
    v74 = v87;
    v75 = v88;
    v76 = v89;
    v77 = v90;
    v72 = v85;
    v73 = v86;
    v26 = pixelBufferOut;
    v22(&v106, &v82, v21);
    v106 = __PAIR128__(v25, v24);
    *&v94[0] = v23;
    sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v94[0] = v69;
    v94[1] = v70;
    v95 = v24;
    v96 = v25;
    v103 = v78;
    v104 = v79;
    v105 = v80;
    v99 = v74;
    v100 = v75;
    v102 = v77;
    v101 = v76;
    v97 = v72;
    v98 = v73;
    v27 = *(v41 + 8);
    v27(v94, v21);
    v28 = pixelBufferOut;
    v69 = v82;
    v70 = v83;
    v29 = v85;
    v30 = a1;
    v31 = *(&v85 + 1);
    v76 = v90;
    v77 = v91;
    v78 = v92;
    *&v79 = v93;
    v71 = v84;
    v72 = v86;
    v73 = v87;
    v74 = v88;
    v75 = v89;
    v35(&v106, &v82, v21);
    v32 = v28;
    *&v106 = v29;
    *(&v106 + 1) = v31;
    v118[0] = v28;
    sub_1A524B6B4();

    v106 = v69;
    v107 = v70;
    v108 = v71;
    *&v109 = v29;
    *(&v109 + 1) = v31;
    a1 = v30;
    v114 = v76;
    v115 = v77;
    v116 = v78;
    v117 = v79;
    v110 = v72;
    v111 = v73;
    v112 = v74;
    v113 = v75;
    v27(&v106, v21);

    v114 = v51;
    v115 = v52;
    v116 = v53;
    v117 = v54;
    v110 = v47;
    v111 = v46;
    v112 = v45;
    v113 = v44;
    v106 = v49;
    v107 = v50;
    v108 = v14;
    v109 = v48;
    v27(&v106, v21);
    v20 = v37;
    v18 = v38;
    v16 = v39;
    a4 = v40;
  }

  *a7 = a1;
  *(a7 + 8) = v20;
  *(a7 + 9) = *v68;
  *(a7 + 12) = *&v68[3];
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v14;
  *(a7 + 48) = v48;
  *(a7 + 64) = v47;
  *(a7 + 80) = v46;
  result = v45;
  *(a7 + 96) = v45;
  *(a7 + 112) = v44;
  *(a7 + 128) = v15;
  *(a7 + 144) = v17;
  *(a7 + 152) = v16;
  *(a7 + 160) = v42;
  v34 = *v67;
  *(a7 + 164) = *&v67[3];
  *(a7 + 161) = v34;
  *(a7 + 168) = v43;
  *(a7 + 176) = v18;
  return result;
}

void ParallaxAssetView.body.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  sub_1A4260908(255);
  *&v65 = v4;
  v29 = *(a1 + 16);
  sub_1A41EF370(255);
  *(&v65 + 1) = sub_1A5248804();
  sub_1A4260C48(255);
  *&v66 = v5;
  sub_1A4260E88(255);
  *(&v66 + 1) = v6;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A524DF24();
  v51 = sub_1A4260FA0();
  WitnessTable = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v24[1] = swift_getWitnessTable();
  v7 = sub_1A524B8B4();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A5248804();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v26 = v24 - v9;
  v28 = v8;
  v10 = sub_1A5248804();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v32 = v24 - v11;
  sub_1A42645D4(255, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
  v13 = v12;
  v33 = v12;
  v25 = swift_getWitnessTable();
  v48 = v25;
  v49 = MEMORY[0x1E697E040];
  v27 = swift_getWitnessTable();
  v46 = v27;
  v47 = MEMORY[0x1E69805D0];
  v35 = v10;
  v14 = swift_getWitnessTable();
  v37 = v14;
  v36 = sub_1A4260FF4();
  *&v65 = v10;
  *(&v65 + 1) = v13;
  *&v66 = v14;
  *(&v66 + 1) = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v31 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v34 = v24 - v17;
  v18 = v2[9];
  v61 = v2[8];
  v62 = v18;
  v63 = v2[10];
  v64 = *(v2 + 22);
  v19 = v2[5];
  v57 = v2[4];
  v58 = v19;
  v20 = v2[7];
  v59 = v2[6];
  v60 = v20;
  v21 = v2[1];
  v53 = *v2;
  v54 = v21;
  v22 = v2[3];
  v55 = v2[2];
  v56 = v22;
  sub_1A524BC74();
  v23 = *(a1 + 24);
  v43 = v29;
  v44 = v23;
  v24[0] = v23;
  v45 = &v53;
  sub_1A524B8A4();
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  sub_1A426225C();
}

void sub_1A42609D4(uint64_t a1)
{
  if (!qword_1EB1362A8)
  {
    sub_1A4260A70(255);
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1362A8);
    }
  }
}

void sub_1A4260AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4264998(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1A524B8B4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4260BB0(uint64_t a1)
{
  if (!qword_1EB1362C8)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1362C8);
    }
  }
}

void sub_1A4260CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4260D4C(uint64_t a1)
{
  if (!qword_1EB136300)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A4260DDC();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136300);
    }
  }
}

unint64_t sub_1A4260DDC()
{
  result = qword_1EB136308;
  if (!qword_1EB136308)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A41CE100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136308);
  }

  return result;
}

void sub_1A4260EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41EF370(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4260F14(uint64_t a1)
{
  if (!qword_1EB136318)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136318);
    }
  }
}

unint64_t sub_1A4260FA0()
{
  result = qword_1EB136320;
  if (!qword_1EB136320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136320);
  }

  return result;
}

unint64_t sub_1A4260FF4()
{
  result = qword_1EB136328;
  if (!qword_1EB136328)
  {
    sub_1A42645D4(255, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
    sub_1A4261090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136328);
  }

  return result;
}

unint64_t sub_1A4261090()
{
  result = qword_1EB136330;
  if (!qword_1EB136330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136330);
  }

  return result;
}

uint64_t sub_1A42610E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, char *a4@<X8>)
{
  v88 = a3;
  v96 = a4;
  sub_1A4260908(255);
  v130[0] = v6;
  sub_1A41EF370(255);
  v130[1] = sub_1A5248804();
  sub_1A4260C48(255);
  v130[2] = v7;
  sub_1A4260E88(255);
  v130[3] = v8;
  swift_getTupleTypeMetadata();
  v9 = sub_1A524BE24();
  v90 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v69 - v10;
  v87 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v85 = a2;
  v86 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5248804();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v69 - v16;
  v17 = v9;
  v18 = sub_1A5249754();
  v95 = sub_1A524DF24();
  v19 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  v84 = a1;
  v25 = *a1;
  v26 = *(**a1 + 448);

  v28 = v26(v27);
  v97 = v9;
  if (v28)
  {
    ParallaxAssetDebugView.init(viewModel:)(v25, v130);
    v29 = sub_1A4260FA0();
    WitnessTable = swift_getWitnessTable();
    sub_1A3DF4798(v130, &type metadata for ParallaxAssetDebugView, v17, v29, WitnessTable);

    (*(*(v18 - 8) + 56))(v21, 0, 1, v18);
    v98 = v29;
    v99 = WitnessTable;
    swift_getWitnessTable();
    v31 = *(v19 + 16);
    v32 = v95;
    v31(v24, v21, v95);
    v33 = *(v19 + 8);
    v34 = v21;
    v35 = v31;
    v33(v34, v32);
    v36 = v32;
  }

  else
  {
    v80 = v21;
    v81 = v19;
    v82 = v24;
    v83 = v18;

    (*(*v25 + 544))(v129, v37);
    memcpy(v130, v129, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v130) != 1)
    {
      sub_1A42644DC(v129, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
      v41 = sub_1A524BC74();
      v73 = v42;
      v74 = v41;
      *&v70 = sub_1A524BC74();
      *(&v70 + 1) = v43;
      v44 = v84;
      v121[0] = *(v84 + 4);
      sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
      v46 = v45;
      sub_1A524B6A4();
      v47 = v105;
      v48 = sub_1A3C6E9EC();
      sub_1A41CE0F4(v47, v48, v121);
      v79 = v121[0];
      v121[0] = *(v44 + 5);
      sub_1A524B6A4();
      v49 = v105;
      v50 = sub_1A3C6E9EC();
      sub_1A41CE0F4(v49, v50, v121);
      v78 = v121[0];
      v121[0] = *(v44 + 2);
      v71 = v46;
      sub_1A524B6A4();
      v51 = v105;
      v52 = sub_1A3C6E9EC();
      v53 = sub_1A41CE0F4(v51, v52, v121);
      v54 = v121[0];
      v55 = (*(*v25 + 896))(v53);
      v56 = v44[16];
      v75 = v44[17];
      *&v121[0] = v56;
      *(&v121[0] + 1) = v75;
      v77 = MEMORY[0x1E6981790];
      sub_1A42645D4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      v72 = v57;
      sub_1A524B6A4();
      v58 = v105;
      v121[0] = *(v44 + 6);
      sub_1A524B6A4();
      v59 = v105;
      v60 = sub_1A3C6E9EC();
      sub_1A41CE0F4(v59, v60, &v105);
      v61 = v105;
      v62 = v44[18];
      v76 = v44[19];
      *&v121[0] = v62;
      *(&v121[0] + 1) = v76;
      sub_1A524B6A4();
      v63 = v100;
      v64 = v70;
      v105 = v70;
      v106 = v79;
      v107 = v78;
      v108 = v54;
      *&v109 = v55;
      *(&v109 + 1) = v58;
      v102 = v78;
      v103 = v54;
      v104 = v109;
      v100 = v70;
      v101 = v79;
      sub_1A42640D0(&v105, v121, sub_1A4260A70);
      v121[0] = v64;
      v121[2] = v78;
      v121[1] = v79;
      v121[3] = v54;
      v122 = v55;
      v123 = v58;
      sub_1A4264AC0(v121, sub_1A4260A70);
      v114 = v102;
      v115 = v103;
      v116 = v104;
      v113 = v101;
      v112 = v100;
      v117 = v61;
      v118 = v63;
      v119[4] = v104;
      v119[3] = v103;
      v119[2] = v102;
      v119[1] = v101;
      v119[0] = v100;
      v119[5] = v61;
      v120 = v63;
      sub_1A42640D0(&v112, v121, sub_1A42609A0);
      sub_1A4264AC0(v119, sub_1A42609A0);
      v109 = v116;
      v110 = v117;
      *&v111 = v118;
      v105 = v112;
      v106 = v113;
      v108 = v115;
      v107 = v114;
      sub_1A426225C();
    }

    v38 = v80;
    (*(*(v83 - 8) + 56))(v80, 1, 1, v83);
    v39 = sub_1A4260FA0();
    v40 = swift_getWitnessTable();
    v127 = v39;
    v128 = v40;
    swift_getWitnessTable();
    v65 = v81;
    v24 = v82;
    v35 = *(v81 + 16);
    v36 = v95;
    v35(v82, v38, v95);
    v33 = *(v65 + 8);
    v33(v38, v36);
  }

  v66 = sub_1A4260FA0();
  v67 = swift_getWitnessTable();
  v125 = v66;
  v126 = v67;
  v124 = swift_getWitnessTable();
  swift_getWitnessTable();
  v35(v96, v24, v36);
  return (v33)(v24, v36);
}

void sub_1A426225C()
{
  v1 = *v0;
  if ((*(*v1 + 752))())
  {
    (*(*v1 + 896))();
  }

  sub_1A3D86AA0();

  sub_1A524D9A4();
}

void sub_1A426232C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[8];
  v9 = v5[9];
  type metadata accessor for ParallaxAssetView(0, v6, v7, a4);
  __dst[0] = v8;
  __dst[1] = v9;
  sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
  v10 = sub_1A524B6A4();
  if (__src[0])
  {
  }

  else
  {
    (*(*v5[4] + 544))(__src, v10);
    memcpy(__dst, __src, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(__dst) != 1)
    {
      memcpy(v12, __src, 0x123uLL);
      sub_1A4069344(v13);
      memcpy(v11, v13, sizeof(v11));
      sub_1A4262490(v12);
      memcpy(v14, v12, 0x123uLL);
      sub_1A42644DC(v14, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
    }
  }
}

void sub_1A4262490(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  memcpy(v233, v6, sizeof(v233));
  memcpy(v234, v5, sizeof(v234));
  v7 = v1[9];
  v229 = v1[8];
  v230 = v7;
  v231 = v1[10];
  v8 = v1[5];
  v225 = v1[4];
  v226 = v8;
  v9 = v1[7];
  v227 = v1[6];
  v228 = v9;
  v10 = v1[1];
  v221 = *v1;
  v222 = v10;
  v11 = v1[3];
  v223 = v1[2];
  v232 = *(v1 + 22);
  v224 = v11;
  v220[0] = v223;
  sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v12 = v208[0];
  if (v208[0])
  {
  }

  v218 = v221;
  v219 = v222;
  v214 = v229;
  v215 = v230;
  v216 = v231;
  v210 = v225;
  v211 = v226;
  v212 = v227;
  v213 = v228;
  v13 = v223;
  v217 = v232;
  v209 = v224;
  memcpy(v220, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v220) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(&v220[0] + 1);
    v15 = *(&v220[0] + 1);
  }

  v16 = *(v3 - 8);
  v17 = *(v16 + 16);
  v17(v208, &v221, v3);
  *v208 = v13;
  v194[0] = v14;
  sub_1A524B6B4();
  v206[0] = v218;
  v206[1] = v219;
  v206[2] = v13;
  v206[8] = v214;
  v206[9] = v215;
  v206[10] = v216;
  v207 = v217;
  v206[4] = v210;
  v206[5] = v211;
  v206[6] = v212;
  v206[7] = v213;
  v206[3] = v209;
  v110 = *(v16 + 8);
  v110(v206, v3);
  v203 = v221;
  v204 = v222;
  v205 = v223;
  v18 = v224;
  v199 = v229;
  v200 = v230;
  v201 = v231;
  v202 = v232;
  v195 = v225;
  v196 = v226;
  v197 = v227;
  v198 = v228;
  memcpy(v208, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v208) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v208[2];
    v20 = v208[2];
  }

  v17(v194, &v221, v3);
  *v194 = v18;
  v180[0] = v19;
  sub_1A524B6B4();
  v192[0] = v203;
  v192[1] = v204;
  v192[2] = v205;
  v192[3] = v18;
  v192[8] = v199;
  v192[9] = v200;
  v192[10] = v201;
  v193 = v202;
  v192[4] = v195;
  v192[5] = v196;
  v192[6] = v197;
  v192[7] = v198;
  v110(v192, v3);
  v188 = v221;
  v189 = v222;
  v190 = v223;
  v191 = v224;
  v21 = v225;
  v184 = v229;
  v185 = v230;
  v186 = v231;
  v187 = v232;
  v181 = v226;
  v182 = v227;
  v183 = v228;
  memcpy(v194, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v194) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v194[3];
    v23 = v194[3];
  }

  v17(v180, &v221, v3);
  *v180 = v21;
  v166[0] = v22;
  sub_1A524B6B4();
  v178[0] = v188;
  v178[1] = v189;
  v178[2] = v190;
  v178[3] = v191;
  v178[4] = v21;
  v178[8] = v184;
  v178[9] = v185;
  v178[10] = v186;
  v179 = v187;
  v178[5] = v181;
  v178[6] = v182;
  v178[7] = v183;
  v110(v178, v3);
  v174 = v222;
  v175 = v223;
  v176 = v224;
  v177 = v225;
  v173 = v221;
  v24 = v226;
  v169 = v229;
  v170 = v230;
  v171 = v231;
  v172 = v232;
  v167 = v227;
  v168 = v228;
  memcpy(v180, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v180) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = v180[4];
    v26 = v180[4];
  }

  v17(v166, &v221, v3);
  *v166 = v24;
  v163[0] = v25;
  sub_1A524B6B4();
  v164[2] = v175;
  v164[3] = v176;
  v164[4] = v177;
  v164[0] = v173;
  v164[1] = v174;
  v164[5] = v24;
  v165 = v172;
  v164[9] = v170;
  v164[10] = v171;
  v164[7] = v168;
  v164[8] = v169;
  v164[6] = v167;
  v110(v164, v3);
  memcpy(v166, v233, 0x123uLL);
  v109 = v17;
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v166) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v166[0];
    v28 = v166[0];
  }

  memcpy(v163, v234, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v163) == 1)
  {
    if (!v27)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v29 = v163[0];
  v31 = v29;
  if (v27)
  {
    if (v29)
    {
      v32 = v3;
      sub_1A3DB58C8(0, v30);
      v33 = sub_1A524DBF4();

      v34 = 0;
      if (v12 && (BYTE8(v221) & 1) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

LABEL_26:
    v31 = v27;
    goto LABEL_28;
  }

  if (!v29)
  {
LABEL_31:
    v32 = v3;
    v34 = 0;
    if (v12 && (BYTE8(v221) & 1) != 0)
    {
      v33 = 1;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

LABEL_28:
  v32 = v3;

  v33 = 0;
  if (v12)
  {
    v34 = 0;
    if (BYTE8(v221))
    {
LABEL_34:
      v34 = v33 ^ 1;
    }
  }

  else
  {
    v34 = 0;
  }

LABEL_36:
  v106 = v34;
  *&v156[96] = v227;
  *&v156[112] = v228;
  *&v156[128] = v229;
  *&v156[144] = v230;
  *&v156[32] = v223;
  *&v156[48] = v224;
  *&v156[64] = v225;
  *&v156[80] = v226;
  *v156 = v221;
  *&v156[16] = v222;
  v35 = v231;
  LODWORD(v155[0]) = *(&v231 + 1);
  *(v155 + 3) = DWORD1(v231);
  v36 = *(&v231 + 1);
  v103 = v232;
  v37 = v221;
  v38 = *(*v221 + 592);
  v39 = v109(v157, &v221, v32);
  v40 = v38(v39);
  LOBYTE(v157[0]) = v35 & 1;
  v157[1] = v36;
  LOBYTE(v143[0]) = v40 & 1;
  sub_1A42645D4(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v158[6] = *&v156[96];
  v158[7] = *&v156[112];
  v158[8] = *&v156[128];
  v158[9] = *&v156[144];
  v158[3] = *&v156[48];
  v158[4] = *&v156[64];
  v158[5] = *&v156[80];
  v158[0] = *v156;
  v158[1] = *&v156[16];
  v158[2] = *&v156[32];
  v159 = v35;
  *v160 = v155[0];
  *&v160[3] = *(v155 + 3);
  v161 = v36;
  v162 = v103;
  v41 = (v110)(v158, v32);
  (*(*v37 + 616))(v41);
  if ((v106 & 1) == 0)
  {
    return;
  }

  v90 = v32;
  memcpy(v157, v233, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v157) == 1)
  {
    v89 = 0;
    v91 = 0;
    v93 = 0;
    v42 = 0;
    v43 = 0;
    v104 = 0;
    v107 = 0;
    v99 = 0;
    v101 = 0;
    v95 = 0;
    v97 = 0;
    v44 = 0;
  }

  else
  {
    v89 = v157[16];
    v42 = v157[18];
    v43 = v157[19];
    v91 = v157[20];
    v93 = v157[17];
    v104 = v157[22];
    v107 = v157[21];
    v99 = v157[24];
    v101 = v157[23];
    v95 = v157[26];
    v97 = v157[25];
    v44 = v157[27];
    sub_1A406BAA8(&v157[16], v156);
  }

  memcpy(v156, v234, sizeof(v156));
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v156) == 1)
  {
    v46 = v104;
    v45 = v107;
    v48 = v99;
    v47 = v101;
    v50 = v95;
    v49 = v97;
    v51 = v44;
    v52 = v89;
    v54 = v91;
    v53 = v93;
    if (v93)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v88 = 0;
LABEL_45:
      v92 = v54;
      v94 = v53;
      v105 = v46;
      v108 = v45;
      v100 = v48;
      v102 = v47;
      v96 = v50;
      v98 = v49;
      v81 = v51;
      *&v155[0] = v52;
      *(&v155[0] + 1) = v53;
      *&v155[1] = v42;
      *(&v155[1] + 1) = v43;
      *&v155[2] = v54;
      *(&v155[2] + 1) = v45;
      *&v155[3] = v46;
      *(&v155[3] + 1) = v47;
      *&v155[4] = v48;
      *(&v155[4] + 1) = v49;
      *&v155[5] = v50;
      BYTE8(v155[5]) = v51;
      v143[2] = v155[2];
      v143[3] = v155[3];
      v143[4] = v155[4];
      *(&v143[4] + 9) = *(&v155[4] + 9);
      v143[0] = v155[0];
      v143[1] = v155[1];
      if (v65)
      {
        *&v132 = v88;
        *(&v132 + 1) = v65;
        *&v133 = v64;
        *(&v133 + 1) = v63;
        *&v134 = v62;
        *(&v134 + 1) = v61;
        *&v135 = v60;
        *(&v135 + 1) = v59;
        *&v136[0] = v58;
        *(&v136[0] + 1) = v57;
        *&v136[1] = v56;
        BYTE8(v136[1]) = v55;
        sub_1A426454C(v155, &v111);
        sub_1A406BBAC();
        sub_1A524C594();
        v128 = v134;
        v129 = v135;
        v130[0] = v136[0];
        *(v130 + 9) = *(v136 + 9);
        v126 = v132;
        v127 = v133;
        sub_1A406BB58(&v126);
        v113 = v143[2];
        v114 = v143[3];
        v115[0] = v143[4];
        *(v115 + 9) = *(&v143[4] + 9);
        v111 = v143[0];
        v112 = v143[1];
        sub_1A406BB58(&v111);
        *&v132 = v52;
        *(&v132 + 1) = v94;
        *&v133 = v42;
        *(&v133 + 1) = v43;
        *&v134 = v92;
        *(&v134 + 1) = v108;
        *&v135 = v105;
        *(&v135 + 1) = v102;
        *&v136[0] = v100;
        *(&v136[0] + 1) = v98;
        *&v136[1] = v96;
        BYTE8(v136[1]) = v81;
        v66 = sub_1A42644DC(&v132, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration);
        goto LABEL_51;
      }

      *&v82 = v64;
      *(&v82 + 1) = v63;
      *&v83 = v62;
      *(&v83 + 1) = v61;
      *&v84 = v60;
      *(&v84 + 1) = v59;
      *&v85 = v58;
      *(&v85 + 1) = v57;
      v86 = v56;
      v87 = v55;
      v134 = v155[2];
      v135 = v155[3];
      v136[0] = v155[4];
      *(v136 + 9) = *(&v155[4] + 9);
      v132 = v155[0];
      v133 = v155[1];
      sub_1A426454C(v155, &v111);
      sub_1A406BB58(&v132);
      v54 = v92;
      v53 = v94;
      v46 = v105;
      v45 = v108;
      v48 = v100;
      v47 = v102;
      v50 = v96;
      v49 = v98;
      v51 = v81;
      goto LABEL_49;
    }
  }

  else
  {
    v88 = *&v156[128];
    v65 = *&v156[136];
    v82 = *&v156[144];
    v83 = *&v156[160];
    v84 = *&v156[176];
    v85 = *&v156[192];
    v86 = *&v156[208];
    v87 = v156[216];
    sub_1A406BAA8(&v156[128], v155);
    v53 = v93;
    if (v93)
    {
      v46 = v104;
      v45 = v107;
      v48 = v99;
      v47 = v101;
      v50 = v95;
      v49 = v97;
      v51 = v44;
      v52 = v89;
      v54 = v91;
      v55 = v87;
      v57 = *(&v85 + 1);
      v56 = v86;
      v59 = *(&v84 + 1);
      v58 = v85;
      v61 = *(&v83 + 1);
      v60 = v84;
      v63 = *(&v82 + 1);
      v62 = v83;
      v64 = v82;
      goto LABEL_45;
    }

    v46 = v104;
    v45 = v107;
    v48 = v99;
    v47 = v101;
    v50 = v95;
    v49 = v97;
    v51 = v44;
    v52 = v89;
    v54 = v91;
    if (v65)
    {
LABEL_49:
      *&v155[0] = v52;
      *(&v155[0] + 1) = v53;
      *&v155[1] = v42;
      *(&v155[1] + 1) = v43;
      *&v155[2] = v54;
      *(&v155[2] + 1) = v45;
      *&v155[3] = v46;
      *(&v155[3] + 1) = v47;
      *&v155[4] = v48;
      *(&v155[4] + 1) = v49;
      *&v155[5] = v50;
      BYTE8(v155[5]) = v51;
      *(&v155[5] + 9) = v149;
      HIDWORD(v155[5]) = *(&v149 + 3);
      *&v155[6] = v88;
      *(&v155[6] + 1) = v65;
      v155[7] = v82;
      v155[8] = v83;
      v155[9] = v84;
      v155[10] = v85;
      *&v155[11] = v86;
      BYTE8(v155[11]) = v87;
      v66 = sub_1A4264AC0(v155, sub_1A4264204);
      goto LABEL_51;
    }
  }

  v155[0] = v52;
  *&v155[1] = v42;
  *(&v155[1] + 1) = v43;
  *&v155[2] = v54;
  *(&v155[2] + 1) = v45;
  *&v155[3] = v46;
  *(&v155[3] + 1) = v47;
  *&v155[4] = v48;
  *(&v155[4] + 1) = v49;
  *&v155[5] = v50;
  BYTE8(v155[5]) = v51;
  v66 = sub_1A42644DC(v155, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration);
LABEL_51:
  (*(*v37 + 848))(v155, v66);
  LOBYTE(v143[0]) = 1;
  if (static ParallaxAssetViewModel.BacklightLuminance.== infix(_:_:)(v155, v143))
  {
    v151 = v223;
    v152 = v224;
    v153 = v225;
    v154 = v226;
    v149 = v221;
    v150 = v222;
    v67 = v227;
    v148 = v232;
    v146 = v230;
    v147 = v231;
    v144 = v228;
    v145 = v229;
    memcpy(v155, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v155) == 1)
    {
      v68 = 0;
    }

    else
    {
      v68 = *(&v155[1] + 1);
      v71 = *(&v155[1] + 1);
    }

    v109(v143, &v221, v90);
    v143[0] = v67;
    *&v132 = v68;
    sub_1A524B6B4();
    v134 = v151;
    v135 = v152;
    v136[0] = v153;
    v136[1] = v154;
    v132 = v149;
    v133 = v150;
    v137 = v67;
    v142 = v148;
    v140 = v146;
    v141 = v147;
    v138 = v144;
    v139 = v145;
    v72 = v110;
    v110(&v132, v90);
    v130[0] = v225;
    v130[1] = v226;
    v131 = v227;
    v126 = v221;
    v127 = v222;
    v128 = v223;
    v129 = v224;
    v73 = *(&v228 + 1);
    v74 = v228;
    v125 = v232;
    v123 = v230;
    v124 = v231;
    v122 = v229;
    memcpy(v143, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v143) != 1)
    {
      v75 = *&v143[2];
LABEL_63:
      v77 = v75;
      goto LABEL_64;
    }
  }

  else
  {
    v151 = v223;
    v152 = v224;
    v153 = v225;
    v154 = v226;
    v149 = v221;
    v150 = v222;
    v69 = v227;
    v148 = v232;
    v146 = v230;
    v147 = v231;
    v144 = v228;
    v145 = v229;
    memcpy(v155, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v155) == 1)
    {
      v70 = 0;
    }

    else
    {
      v70 = *(&v155[0] + 1);
      v76 = *(&v155[0] + 1);
    }

    v109(v143, &v221, v90);
    v143[0] = v69;
    *&v132 = v70;
    sub_1A524B6B4();
    v134 = v151;
    v135 = v152;
    v136[0] = v153;
    v136[1] = v154;
    v132 = v149;
    v133 = v150;
    v137 = v69;
    v142 = v148;
    v140 = v146;
    v141 = v147;
    v138 = v144;
    v139 = v145;
    v72 = v110;
    v110(&v132, v90);
    v130[0] = v225;
    v130[1] = v226;
    v131 = v227;
    v126 = v221;
    v127 = v222;
    v128 = v223;
    v129 = v224;
    v73 = *(&v228 + 1);
    v74 = v228;
    v125 = v232;
    v123 = v230;
    v124 = v231;
    v122 = v229;
    memcpy(v143, v234, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v143) != 1)
    {
      v75 = *&v143[1];
      goto LABEL_63;
    }
  }

  v75 = 0;
LABEL_64:
  v109(&v111, &v221, v90);
  *&v111 = v74;
  *(&v111 + 1) = v73;
  v235 = v75;
  sub_1A524B6B4();
  v115[0] = v130[0];
  v115[1] = v130[1];
  v115[2] = v131;
  v111 = v126;
  v112 = v127;
  v113 = v128;
  v114 = v129;
  v116 = v74;
  v117 = v73;
  v121 = v125;
  v119 = v123;
  v120 = v124;
  v118 = v122;
  v72(&v111, v90);
  v137 = v227;
  v138 = v228;
  v139 = v229;
  v134 = v223;
  v135 = v224;
  v136[0] = v225;
  v136[1] = v226;
  v132 = v221;
  v133 = v222;
  v78 = v230;
  v111 = v231;
  *&v112 = v232;
  v109(v155, &v221, v90);
  v155[0] = v78;
  *&v143[0] = 0x3FF0000000000000;
  sub_1A42645D4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v143[6] = v137;
  v143[7] = v138;
  v143[8] = v139;
  v143[2] = v134;
  v143[3] = v135;
  v143[4] = v136[0];
  v143[5] = v136[1];
  v143[0] = v132;
  v143[1] = v133;
  v143[9] = v78;
  v143[10] = v111;
  *&v143[11] = v112;
  v110(v143, v90);
  v136[0] = v225;
  v136[1] = v226;
  v137 = v227;
  v138 = v228;
  v132 = v221;
  v133 = v222;
  v134 = v223;
  v135 = v224;
  v79 = v229;
  *&v113 = v232;
  v111 = v230;
  v112 = v231;
  v109(v155, &v221, v90);
  v155[0] = v79;
  *&v126 = 0;
  sub_1A524B6B4();
  v155[4] = v136[0];
  v155[5] = v136[1];
  v155[6] = v137;
  v155[7] = v138;
  v155[0] = v132;
  v155[1] = v133;
  v155[2] = v134;
  v155[3] = v135;
  v155[8] = v79;
  *&v155[11] = v113;
  v155[9] = v111;
  v155[10] = v112;
  v110(v155, v90);
  v80 = sub_1A524BCD4();
  MEMORY[0x1EEE9AC00](v80);
  sub_1A52483D4();
}

uint64_t objectdestroyTm_39()
{

  return swift_deallocObject();
}

uint64_t sub_1A4263A58@<X0>(uint64_t a1@<X8>)
{
  sub_1A5249434();
  result = sub_1A524A444();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_1A4263ACC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A4263C00();
  sub_1A425F58C(v2, 0, sub_1A4263A58, 0, v9);
  v3 = v17;
  *(a1 + 128) = v16;
  *(a1 + 144) = v3;
  *(a1 + 160) = v18;
  *(a1 + 176) = v19;
  v4 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v4;
  v5 = v15;
  *(a1 + 96) = v14;
  *(a1 + 112) = v5;
  v6 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_1A4263B68(uint64_t a1)
{
  v2 = sub_1A426407C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4263BB4(uint64_t a1)
{
  v2 = sub_1A426407C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4263C00()
{
  type metadata accessor for ParallaxAssetViewModel(0);
  PXDisplayCollectionDetailedCountsMake();
  v1 = v0;
  v3 = v2;
  v4 = sub_1A3C5A374();
  v5 = sub_1A3C30368();
  v6 = ParallaxAssetViewModel.__allocating_init(viewSize:isForPreview:maxPreloadedAssetCount:)(v4 & 1, v5, v1, v3);
  sub_1A42645D4(0, &qword_1EB130E98, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  PXDisplayCollectionDetailedCountsMake();
  v9 = v8;
  v11 = v10;
  v12 = sub_1A3C30368();
  v13 = sub_1A3C30368();
  v14 = sub_1A43A1F8C();
  v16 = v15;
  v17 = sub_1A3C5A374();
  ParallaxOverlapViewConfiguration.init(name:size:position:overlapTestAreas:minSegmentationScore:disableParallaxIfNotAcceptable:usesParallax:headroomFractionRange:isFallbackLayout:)(0x77656976657270, 0xE700000000000000, MEMORY[0x1E69E7CC0], v12 & 1, v13 & 1, v17 & 1, v7 + 32, v9, v11, 120.0, 50.0, 0.0, v14, v16);
  (*(*v6 + 360))(v7, 0x77656976657270, 0xE700000000000000);

  return v6;
}

unint64_t sub_1A4263DF8()
{
  result = qword_1EB136338;
  if (!qword_1EB136338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136338);
  }

  return result;
}

uint64_t sub_1A4263E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1A4263EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1A4263F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4263FA4()
{
  result = qword_1EB136340;
  if (!qword_1EB136340)
  {
    sub_1A4264028(255, &qword_1EB136348, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for ParallaxAssetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136340);
  }

  return result;
}

void sub_1A4264028(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A426407C()
{
  result = qword_1EB136350;
  if (!qword_1EB136350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136350);
  }

  return result;
}

uint64_t sub_1A42640D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A42641A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4264204(uint64_t a1)
{
  if (!qword_1EB136370)
  {
    sub_1A42645D4(255, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB136370);
    }
  }
}

uint64_t sub_1A426428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v32 = *(v5 + 96);
  v34 = *(v5 + 112);
  v36 = *(v5 + 128);
  v24 = *(v5 + 32);
  v26 = *(v5 + 48);
  v28 = *(v5 + 64);
  v30 = *(v5 + 80);
  v20 = *v5;
  v22 = *(v5 + 16);
  v6 = *(v5 + 144);
  v7 = *(v5 + 152);
  v15 = *(v5 + 160);
  v17 = *(v5 + 176);
  v8 = type metadata accessor for ParallaxAssetView(0, v4[2], v4[3], a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v42, v5, v8);
  *&v42[0] = v6;
  *(&v42[0] + 1) = v7;
  sub_1A42645D4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v37[6] = v32;
  v37[7] = v34;
  v37[8] = v36;
  v37[2] = v24;
  v37[3] = v26;
  v37[4] = v28;
  v37[5] = v30;
  v37[0] = v20;
  v37[1] = v22;
  v38 = v6;
  v39 = v7;
  v40 = v15;
  v41 = v17;
  v11 = *(v9 + 8);
  v11(v37, v8);
  v29 = *(v5 + 64);
  v31 = *(v5 + 80);
  v33 = *(v5 + 96);
  v35 = *(v5 + 112);
  v21 = *v5;
  v23 = *(v5 + 16);
  v25 = *(v5 + 32);
  v27 = *(v5 + 48);
  v12 = *(v5 + 128);
  v13 = *(v5 + 136);
  v19 = *(v5 + 176);
  v16 = *(v5 + 144);
  v18 = *(v5 + 160);
  v10(v42, v5, v8);
  *&v42[0] = v12;
  *(&v42[0] + 1) = v13;
  v48 = 0x3FF0000000000000;
  sub_1A524B6B4();
  v42[4] = v29;
  v42[5] = v31;
  v42[6] = v33;
  v42[7] = v35;
  v42[0] = v21;
  v42[1] = v23;
  v42[2] = v25;
  v42[3] = v27;
  v43 = v12;
  v44 = v13;
  v47 = v19;
  v45 = v16;
  v46 = v18;
  return (v11)(v42, v8);
}

uint64_t sub_1A42644DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A42645D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A426454C(uint64_t a1, uint64_t a2)
{
  sub_1A42645D4(0, &qword_1EB136378, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A42645D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A4264624()
{
  result = qword_1EB136380;
  if (!qword_1EB136380)
  {
    sub_1A4260908(255);
    sub_1A42646D4();
    sub_1A4264998(&unk_1EB127C50, sub_1A41EF370, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136380);
  }

  return result;
}

unint64_t sub_1A42646D4()
{
  result = qword_1EB136388;
  if (!qword_1EB136388)
  {
    sub_1A4260928(255);
    sub_1A4264998(&qword_1EB136390, sub_1A4260964, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136388);
  }

  return result;
}

unint64_t sub_1A4264784()
{
  result = qword_1EB136398;
  if (!qword_1EB136398)
  {
    sub_1A4260C48(255);
    sub_1A4264864(&qword_1EB1363A0, sub_1A4260C68, sub_1A42648E8);
    sub_1A4264998(&unk_1EB127C50, sub_1A41EF370, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136398);
  }

  return result;
}

uint64_t sub_1A4264864(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A42648E8()
{
  result = qword_1EB1363A8;
  if (!qword_1EB1363A8)
  {
    sub_1A4260CA4(255);
    sub_1A4264998(&qword_1EB1363B0, sub_1A4260D4C, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363A8);
  }

  return result;
}

uint64_t sub_1A4264998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A42649E0()
{
  result = qword_1EB1363B8;
  if (!qword_1EB1363B8)
  {
    sub_1A4260E88(255);
    sub_1A4264864(&qword_1EB1363C0, sub_1A4260F14, sub_1A4260DDC);
    sub_1A4264998(&unk_1EB127C50, sub_1A41EF370, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363B8);
  }

  return result;
}

uint64_t sub_1A4264AC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4264B20()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B2408);
  __swift_project_value_buffer(v0, qword_1EB1B2408);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4264BA8()
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A4264C10(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A4264C5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a1;
  sub_1A3C4C0FC(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 1;
  v9 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  v20 = v9[5];
  v10 = sub_1A43A1980(12.0);
  v12 = v11;
  v13 = sub_1A3C47918();
  v15 = v14;
  v16 = sub_1A3C4ED50(v13);
  v22 = 1;
  *v8 = xmmword_1A5328F30;
  v8[16] = 1;
  *(v8 + 3) = 1;
  v8[32] = 1;
  *(v8 + 5) = v10;
  *(v8 + 6) = v12;
  *(v8 + 7) = v13;
  *(v8 + 8) = v15;
  *(v8 + 72) = xmmword_1A5317AF0;
  v8[88] = 0;
  v8[89] = v16;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v5);
  result = sub_1A3C52D78(v8, 5, v5, &a2[v20]);
  a2[v9[6]] = 1;
  v18 = &a2[v9[7]];
  *v18 = 0;
  v18[1] = 0;
  *&a2[v9[8]] = v21;
  return result;
}

uint64_t sub_1A4264E14()
{
  sub_1A42684DC(0);
  MEMORY[0x1EEE9AC00](v0);
  sub_1A4264F6C(v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4268560(255);
  v3 = v2;
  v4 = sub_1A42687BC();
  v6[0] = v3;
  v6[1] = v4;
  swift_getOpaqueTypeConformance2();
  return sub_1A524B8E4();
}

uint64_t sub_1A4264ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4264F40()
{
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);

  return sub_1A4264E14();
}

uint64_t sub_1A4264F6C@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = sub_1A52486A4();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v60 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A204();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4268560(0);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v67 = sub_1A3C38BD4(0xD000000000000021);
  *(&v67 + 1) = v10;
  sub_1A3D5F9DC();
  v11 = sub_1A524A464();
  v13 = v12;
  v15 = v14;
  v55 = v16;
  sub_1A524A254();
  sub_1A524A104();

  (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
  sub_1A524A234();

  (*(v4 + 8))(v6, v3);
  v17 = sub_1A524A3C4();
  v57 = v18;
  v58 = v17;
  LOBYTE(v4) = v19;
  v56 = v20;

  sub_1A3E04DF4(v11, v13, v15 & 1);

  LOBYTE(v3) = sub_1A524A054();
  sub_1A5247BC4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v4 & 1;
  LOBYTE(v67) = v4 & 1;
  v64 = 0;
  LOBYTE(v4) = sub_1A524A0C4();
  sub_1A5247BC4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v65 = 0;
  sub_1A524BC74();
  sub_1A5248AD4();
  *&v66[55] = v70;
  *&v66[71] = v71;
  *&v66[87] = v72;
  *&v66[103] = v73;
  *&v66[23] = v68;
  *&v66[39] = v69;
  *&v66[7] = v67;
  v38 = &v9[*(v59 + 36)];
  sub_1A42686D0(0);
  v40 = v39;
  v41 = *(v39 + 52);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_1A52494A4();
  (*(*(v43 - 8) + 104))(&v38[v41], v42, v43);
  *v38 = 2;
  *&v38[*(v40 + 56)] = 256;
  v44 = v57;
  *v9 = v58;
  *(v9 + 1) = v44;
  v9[16] = v29;
  *(v9 + 3) = v56;
  v9[32] = v3;
  *(v9 + 5) = v22;
  *(v9 + 6) = v24;
  *(v9 + 7) = v26;
  *(v9 + 8) = v28;
  v9[72] = 0;
  v9[80] = v4;
  *(v9 + 11) = v31;
  *(v9 + 12) = v33;
  *(v9 + 13) = v35;
  *(v9 + 14) = v37;
  v9[120] = 0;
  v45 = *v66;
  v46 = *&v66[16];
  v47 = *&v66[32];
  *(v9 + 169) = *&v66[48];
  *(v9 + 153) = v47;
  *(v9 + 137) = v46;
  *(v9 + 121) = v45;
  v48 = *&v66[64];
  v49 = *&v66[80];
  v50 = *&v66[96];
  *(v9 + 29) = *&v66[111];
  *(v9 + 217) = v50;
  *(v9 + 201) = v49;
  *(v9 + 185) = v48;
  v52 = v60;
  v51 = v61;
  v53 = v62;
  (*(v61 + 104))(v60, *MEMORY[0x1E697E6E8], v62);
  sub_1A42687BC();
  sub_1A524AB74();
  (*(v51 + 8))(v52, v53);
  return sub_1A4268990(v9);
}

uint64_t sub_1A42654A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A5243994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40[-v13];
  sub_1A4267934();
  v15 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v44 = a2;
    v16 = *(a1 + 16);
    if (v15 == 1)
    {

      SearchResultItem.value.getter(&v46);
      v17 = v46;
      if (v46)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1A4267C40(0);
          v18 = v44;

          v19 = sub_1A3C5A374();
          sub_1A4270314(v16, v18, v19 & 1, 0, a3);
        }
      }

      if (qword_1EB1B2400 != -1)
      {
        swift_once();
      }

      v23 = sub_1A5246F24();
      __swift_project_value_buffer(v23, qword_1EB1B2408);
      v24 = v17;
      v25 = sub_1A5246F04();
      v26 = sub_1A524D244();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v27 = 136315138;
        sub_1A3C2EF94(0x65756C6156, 0xE500000000000000, &v46);
      }

      v28 = v16[2];
      v29 = v28;
      sub_1A3D8E6B0(v28, 0, &v46);

      sub_1A4267BB4(v16, 1);
      v30 = v47;
      *a3 = v46;
      *(a3 + 8) = v30;
      type metadata accessor for LemonadeNavigationDestination(0);
      return swift_storeEnumTagMultiPayload();
    }

    v42 = a3;
    v43 = v3;

    SearchResultItem.collectionItemType.getter(v14);
    (*(v9 + 104))(v11, *MEMORY[0x1E69C26F8], v8);
    sub_1A4267B6C(&qword_1EB12D1B0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2730]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v46 == v45[0] && v47 == v45[1])
    {
      v21 = *(v9 + 8);
      v21(v11, v8);
      v21(v14, v8);

      v22 = v43;
    }

    else
    {
      v41 = sub_1A524EAB4();
      v31 = v16;
      v32 = *(v9 + 8);
      v32(v11, v8);
      v32(v14, v8);
      v16 = v31;

      v22 = v43;
      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v33 = v16[2];
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      LOBYTE(v45[0]) = 3;
      v46 = 0;
      v36 = v33;
      LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(v35);
      v37._countAndFlagsBits = sub_1A524C674();
      v45[0] = 0;
      v49.value.sourceIdentifiers._rawValue = v45;
      PhotosNavigationSourceInfo.init(sourceIdentifier:previousSourceInfo:)(v37, v49);
      v45[0] = v46;
      sub_1A4A04DA4(v45);
    }

LABEL_20:
    v38 = *(v22 + *(type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0) + 32));
    v39 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v38) + 0x188))();
    (*((*v39 & *v38) + 0xE0))();

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(v42);
  }

  type metadata accessor for LemonadeNavigationDestination(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4265B50()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4265BBC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 336))();

  *a2 = *(v3 + 24);

  return swift_unknownObjectRetain();
}

double sub_1A4265C48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 344))(KeyPath, sub_1A42689F0, v7, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1A4265CFC(void *a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0xE000000000000000;
  *(v2 + 56) = 0;
  *(v2 + 60) = 0;
  *(v2 + 64) = 1;
  sub_1A5241604();
  *(v2 + 16) = a1;
  v4 = *(*v2 + 328);
  v5 = a1;
  v4();
  v6 = *&v5[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_observable];
  swift_allocObject();
  swift_weakInit();
  v7 = v6;

  sub_1A524D1A4();
}

double sub_1A4265EC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[5] == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[5] = a1;
    v2[6] = a2;

    return result;
  }

  KeyPath = swift_getKeyPath();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v2 + 344))(v9);

  return result;
}

void sub_1A4266004(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[56] == v2)
  {
    v1[56] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 344))(v4);
  }
}

double sub_1A4266100(uint64_t a1)
{
  swift_beginAccess();
  if ((*(v1 + 64) & 1) == 0)
  {
    if ((a1 & 0x100000000) != 0 || *(v1 + 60) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 60) = a1;
    *(v1 + 64) = BYTE4(a1) & 1;
    return result;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 344))(v5);

  return result;
}

void sub_1A4266228()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42662B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A426636C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 336))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4267B6C(&qword_1EB1363D0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel, &unk_1A532911C);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C(v4);
  return sub_1A42664BC;
}

uint64_t sub_1A4266518()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  swift_beginAccess();
  return v0[56];
}

uint64_t sub_1A4266598@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4266640(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 336))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4267B6C(&qword_1EB1363D0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel, &unk_1A532911C);
  sub_1A52415F4();

  v4[7] = sub_1A42664C8(v4);
  return sub_1A4266790;
}

unint64_t sub_1A42667EC()
{
  swift_getKeyPath();
  (*(*v0 + 336))();

  swift_beginAccess();
  return *(v0 + 60) | (*(v0 + 64) << 32);
}

uint64_t sub_1A426687C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t (*sub_1A4266940(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 336))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4267B6C(&qword_1EB1363D0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel, &unk_1A532911C);
  sub_1A52415F4();

  v4[7] = sub_1A426679C(v4);
  return sub_1A4266A90;
}

uint64_t sub_1A4266A9C()
{
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8))())
  {
    v3 = (*((*v2 & *v1) + 0x280))();
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = (*(*v0 + 216))(v3, v4);
  v6 = ((*((*v2 & *v1) + 0x1A0))(v5) & 1) != 0 || (*((*v2 & *v1) + 0x288))() == 0;
  v7 = *(*v0 + 264);

  return v7(v6);
}

uint64_t sub_1A4266D80()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtCV12PhotosUICore44LemonadeSearchCollectionResultsShelfProvider24CollectionContainerModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4266F28@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel(0);
  sub_1A4267B6C(&qword_1EB1363E8, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel, &unk_1A53290AC);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A4266FA4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel(0);
  result = sub_1A524E434();
  *a2 = result;
  return result;
}

uint64_t sub_1A4266FF4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8))())
  {
    return (*((*v3 & *v2) + 0x280))();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A42670A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69C2418];
  v3 = sub_1A5243334();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1A426714C(uint64_t a1)
{
  v3 = *(v2 + *(a1 + 32));
  type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel(0);
  swift_allocObject();
  sub_1A4265CFC(v3);
}

uint64_t sub_1A42671E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  if (shouldUseNewCollectionsLayout()())
  {
    return 0x1FFFFFFFELL;
  }

  sub_1A4264ED8(v2, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1A4267BD8(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
  return 0x8000000000000001;
}

uint64_t sub_1A4267308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(v3 + *(a2 + 32));

  sub_1A3F3AB58(a1, v6, 0, v12);
  v7 = v12[3];
  a3[2] = v12[2];
  a3[3] = v7;
  a3[4] = v12[4];
  v8 = v12[1];
  *a3 = v12[0];
  a3[1] = v8;
  v9 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, 0, 1, v9);
}

uint64_t sub_1A42673D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24));
  v7 = *(v3 + *(a2 + 32));

  sub_1A3F3AB58(v6, v7, 0, v13);
  v8 = v13[3];
  a3[2] = v13[2];
  a3[3] = v8;
  a3[4] = v13[4];
  v9 = v13[1];
  *a3 = v13[0];
  a3[1] = v9;
  v10 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, 0, 1, v10);
}

id sub_1A42674C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 32));
  *a2 = v3;
  return v3;
}

void sub_1A42674D4(void **a1, uint64_t a2)
{
  sub_1A3C4C0FC(0, &qword_1EB129048, MEMORY[0x1E69C2718]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = *a1;
  type metadata accessor for SearchResultItemListManager(0);
  v8 = sub_1A5243994();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);

  SearchResultItemListManager.__allocating_init(photoLibraryContext:collectionSectionProvider:limitTo:)(a2, v7, v6);
}

uint64_t sub_1A42675CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5243CE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243C84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5243C94();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v13, *MEMORY[0x1E69C2898], v11);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C2880], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C28C0], v2);

  return sub_1A48F05F4(v15, v13, v9, v5, a1);
}

uint64_t sub_1A426782C()
{
  result = sub_1A52432D4();
  if (!v1)
  {
    return sub_1A3C38BD4(0xD000000000000023);
  }

  return result;
}

void *sub_1A426787C(uint64_t a1)
{
  if (!*(*a1 + 24))
  {
    return 0;
  }

  v1 = *(*(*a1 + 16) + 16);
  v2 = v1;
  return v1;
}

unint64_t sub_1A42678BC(uint64_t a1)
{
  v2 = sub_1A4267B6C(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider, &unk_1A53290E4);

  return sub_1A42E6E80(a1, v2);
}

void sub_1A4267934()
{
  v0 = sub_1A5243994();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  SearchResultItem.collectionItemType.getter(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x1E69C2700])
  {
    v5 = 3;
  }

  else if (v4 == *MEMORY[0x1E69C26F8])
  {
    v5 = 5;
  }

  else if (v4 == *MEMORY[0x1E69C26E8])
  {
    v5 = 4;
  }

  else if (v4 == *MEMORY[0x1E69C2710])
  {
    v5 = 2;
  }

  else if (v4 == *MEMORY[0x1E69C26E0] || v4 == *MEMORY[0x1E69C26F0])
  {
    v5 = 6;
  }

  else
  {
    if (v4 != *MEMORY[0x1E69C26D0] && v4 != *MEMORY[0x1E69C2708] && v4 != *MEMORY[0x1E69C26D8])
    {
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    v5 = 0;
  }

  v9 = [objc_opt_self() sharedSession];
  SearchResultItem.parsecIdentifier.getter();
  v10 = sub_1A524C634();

  [v9 reportSearchCollectionResultSelected:v10 type:v5];
}

uint64_t sub_1A4267B6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A4267BB4(id a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }

  return result;
}

uint64_t sub_1A4267BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4267C40(uint64_t a1)
{
  if (!qword_1EB125C30)
  {
    v2 = sub_1A3C52C70(255, &qword_1EB1265C0, 0x1E6978980);
    v5 = type metadata accessor for PhotoKitItem(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB125C30);
    }
  }
}

double sub_1A4267CA8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 328))(Strong);
  }

  return result;
}

void sub_1A4267D3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 56) = v2;
}

void sub_1A4267D90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  swift_beginAccess();
  *(v1 + 60) = v2;
  *(v1 + 64) = v3;
}

unint64_t sub_1A4267DF0()
{
  result = qword_1EB1363D8;
  if (!qword_1EB1363D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363D8);
  }

  return result;
}

uint64_t sub_1A4267E44(uint64_t a1)
{
  result = sub_1A4267B6C(&qword_1EB1363E0, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider.CollectionContainerModel, &unk_1A532906C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4267EE4(uint64_t a1)
{
  result = sub_1A4267B6C(&qword_1EB129348, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider, &unk_1A5329100);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4267FA4()
{
  result = qword_1EB1363F0;
  if (!qword_1EB1363F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1363F0);
  }

  return result;
}

void sub_1A4268040(uint64_t a1)
{
  if (!qword_1EB129100)
  {
    type metadata accessor for SearchResultItem();
    sub_1A4267B6C(&qword_1EB12A4A8, type metadata accessor for SearchResultItem, &protocol conformance descriptor for SearchResultItem);
    sub_1A4267B6C(&qword_1EB12A4C0, type metadata accessor for SearchResultItem, &protocol conformance descriptor for SearchResultItem);
    v1 = sub_1A52432F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB129100);
    }
  }
}

uint64_t sub_1A42681CC(uint64_t a1)
{
  result = sub_1A5241614();
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

uint64_t objectdestroyTm_40()
{
  v1 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = v2 + *(v1 + 20);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98(0);
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  v8 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
  v9 = sub_1A5241F84();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1A4268498()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1A42684DC(uint64_t a1)
{
  if (!qword_1EB1363F8)
  {
    sub_1A4268560(255);
    sub_1A42687BC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1363F8);
    }
  }
}

void sub_1A4268560(uint64_t a1)
{
  if (!qword_1EB136400)
  {
    sub_1A4268614(255, &qword_1EB136408, sub_1A42685EC, MEMORY[0x1E697EC00]);
    sub_1A42686D0(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136400);
    }
  }
}

void sub_1A4268614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4268678()
{
  if (!qword_1EB128720)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128720);
    }
  }
}

void sub_1A42686D0(uint64_t a1)
{
  if (!qword_1EB136410)
  {
    sub_1A42568D0(255);
    sub_1A524B984();
    sub_1A4267B6C(&qword_1EB127A30, sub_1A42568D0, MEMORY[0x1E69809C8]);
    sub_1A4267B6C(&qword_1EB1214C0, MEMORY[0x1E6981998], MEMORY[0x1E6981970]);
    v1 = sub_1A5249FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136410);
    }
  }
}

unint64_t sub_1A42687BC()
{
  result = qword_1EB136418;
  if (!qword_1EB136418)
  {
    sub_1A4268560(255);
    sub_1A426886C();
    sub_1A4267B6C(&qword_1EB136428, sub_1A42686D0, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136418);
  }

  return result;
}

unint64_t sub_1A426886C()
{
  result = qword_1EB136420;
  if (!qword_1EB136420)
  {
    sub_1A4268614(255, &qword_1EB136408, sub_1A42685EC, MEMORY[0x1E697EC00]);
    sub_1A4268910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136420);
  }

  return result;
}

unint64_t sub_1A4268910()
{
  result = qword_1EB128400;
  if (!qword_1EB128400)
  {
    sub_1A42685EC(255);
    sub_1A3E003FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128400);
  }

  return result;
}

uint64_t sub_1A4268990(uint64_t a1)
{
  sub_1A4268560(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4268A08(uint64_t a1)
{
  if (!qword_1EB136430)
  {
    sub_1A4268D44(255, &qword_1EB125870, MEMORY[0x1E69E6720]);
    v1 = sub_1A524B974();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136430);
    }
  }
}

void sub_1A4268A7C()
{
  v1 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(v0 + 8);
  sub_1A4268A08(0);
  MEMORY[0x1A5906C60](&v3);
  if (v3 != 24)
  {
    LOBYTE(v3) = v2;
    sub_1A3C4CDB0();
    if ((sub_1A524C594() & 1) == 0)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A4268CA8(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  sub_1A3C4CDB0();
  v3 = 0;
  while ((sub_1A524C594() & 1) == 0)
  {
    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

void sub_1A4268D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LemonadeShelfIdentifier);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4268D98()
{
  result = qword_1EB136438;
  if (!qword_1EB136438)
  {
    sub_1A4268D44(255, &qword_1EB120CE8, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136438);
  }

  return result;
}

uint64_t sub_1A4268E0C()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(v0 + 32);
  v11 = v0[2];
  v12 = v2;
  v13 = v3;
  sub_1A4268A08(0);
  MEMORY[0x1A5906C60](&v14);
  if (v14 != 24)
  {
    LOBYTE(v11) = v14;
    sub_1A3DD1890(&v10);
    v4 = (*(*v1 + 1104))();
    type metadata accessor for LemonadeAnalyticsCustomization();
    v5 = sub_1A47E502C();
    LOBYTE(v11) = 0;
    LemonadeCustomizationAction.rawValue.getter();
    v6 = sub_1A524CFC4();
    LemonadeCustomizationAnalyticsName.rawValue.getter(v6);
    v7 = sub_1A524CFC4();
    LOBYTE(v14) = 0;
    LemonadeCustomizationContentType.rawValue.getter(v7);
    v8 = sub_1A524CFC4();
    (*(*v5 + 136))(v6, 0, v7, v8, MEMORY[0x1E69E7CC0], v4);
  }

  return 1;
}

uint64_t sub_1A4268F74@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  *a5 = result;
  *(a5 + 8) = v5;
  *(a5 + 16) = v6;
  *(a5 + 24) = v7;
  *(a5 + 32) = v8;
  *(a5 + 40) = a4;
  return result;
}

uint64_t sub_1A4268FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5248294();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E697BF98], v3);
  sub_1A5248044();
  v6 = sub_1A5248054();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

uint64_t sub_1A42690C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A4269110(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A4269170@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_1A4269D94(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LemonadeCloudQuotaNotificationCell(0);
  *(a4 + v8[5]) = a1;
  *(a4 + v8[6]) = a2 & 1;
  v9 = v8[7];
  v10 = sub_1A5243934();
  v11 = *(*(v10 - 8) + 32);

  return v11(a4 + v9, a3, v10);
}

uint64_t type metadata accessor for LemonadeCloudQuotaNotificationCell(uint64_t a1)
{
  result = qword_1EB1B28F0;
  if (!qword_1EB1B28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A42692B0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeCloudQuotaNotificationCell(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + *(v4 + 28));

  sub_1A3FF29A0(v9);
  sub_1A426A108(v1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeCloudQuotaNotificationCell);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1A426A170(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadeCloudQuotaNotificationCell);
  sub_1A4269A14();
  sub_1A4269A68();
  sub_1A524B144();

  sub_1A4269D00(v9, sub_1A3D63A58);

  v25 = 2;
  sub_1A4269C44(0, &qword_1EB127A38, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E69809C0]);
  sub_1A3D6F4F8();
  v12 = sub_1A5248204();
  v13 = sub_1A524A064();
  sub_1A4269B10(0);
  v15 = a1 + *(v14 + 36);
  *v15 = v12;
  *(v15 + 8) = v13;
  sub_1A52438C4();
  v17 = v16;
  sub_1A4269C98(0);
  v19 = (a1 + *(v18 + 36));
  v20 = *(sub_1A5248A14() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A52494A4();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v17;
  *(v19 + 1) = v17;
  sub_1A3E42C88(0);
  *&v19[*(v23 + 36)] = 256;
}

double sub_1A42695B4(uint64_t a1)
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CloudQuotaNotificationItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeCloudQuotaNotificationCell(0);
  sub_1A444BA38(v7);
  v8 = *(v7 + 1);

  sub_1A4269D00(v7, type metadata accessor for CloudQuotaNotificationItem);
  sub_1A426A108(a1, v4, sub_1A3D63A58);
  sub_1A3D63A8C(0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A4269D00(v4, sub_1A3D63A58);
  (*(*v8 + 96))(0);

  return result;
}

id sub_1A42697B4()
{
  v0 = type metadata accessor for CloudQuotaNotificationItem(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A444BA38(v2);
  v3 = *v2;
  sub_1A4269D00(v2, type metadata accessor for CloudQuotaNotificationItem);
  return v3;
}

double sub_1A4269850(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if ((a2 & 1) == 0)
  {
    if (a4)
    {
      *&a3 = INFINITY;
    }

    [a5 sizeThatFits_];
  }

  return result;
}

uint64_t sub_1A42698B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A426A0B4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A4269918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A426A0B4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A426997C(uint64_t a1)
{
  sub_1A426A0B4();
  sub_1A52496F4();
  __break(1u);
}

double sub_1A42699A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadeCloudQuotaNotificationCell(0);

  return sub_1A42695B4(a2);
}

unint64_t sub_1A4269A14()
{
  result = qword_1EB136440;
  if (!qword_1EB136440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136440);
  }

  return result;
}

unint64_t sub_1A4269A68()
{
  result = qword_1EB128DE8;
  if (!qword_1EB128DE8)
  {
    sub_1A3D63A58(255);
    sub_1A426A06C(&qword_1EB128E08, sub_1A3D63A8C, off_1E7721060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128DE8);
  }

  return result;
}

void sub_1A4269B10(uint64_t a1)
{
  if (!qword_1EB136448)
  {
    sub_1A4269BA4(255);
    sub_1A4269C44(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136448);
    }
  }
}

void sub_1A4269BA4(uint64_t a1)
{
  if (!qword_1EB136450)
  {
    sub_1A3D63A58(255);
    sub_1A4269A14();
    sub_1A4269A68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136450);
    }
  }
}

void sub_1A4269C44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4269C98(uint64_t a1)
{
  if (!qword_1EB136458)
  {
    sub_1A4269B10(255);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136458);
    }
  }
}

uint64_t sub_1A4269D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4269D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4269E0C(uint64_t a1)
{
  sub_1A4269D94(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeCloudQuotaNotificationModel(319);
    if (v2 <= 0x3F)
    {
      sub_1A5243934();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A4269EF0()
{
  result = qword_1EB136460;
  if (!qword_1EB136460)
  {
    sub_1A4269C98(255);
    sub_1A4269FA0();
    sub_1A426A06C(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136460);
  }

  return result;
}

unint64_t sub_1A4269FA0()
{
  result = qword_1EB136468;
  if (!qword_1EB136468)
  {
    sub_1A4269B10(255);
    sub_1A3D63A58(255);
    sub_1A4269A14();
    sub_1A4269A68();
    swift_getOpaqueTypeConformance2();
    sub_1A400292C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136468);
  }

  return result;
}

uint64_t sub_1A426A06C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A426A0B4()
{
  result = qword_1EB136470;
  if (!qword_1EB136470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136470);
  }

  return result;
}

uint64_t sub_1A426A108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A426A170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LemonadeSearchBarWithSuggestionView.init(photoLibrary:style:updater:searchResultsDidChange:searchResultsContextualVideoThumbnailsDidChange:isScopedSearchDidChange:suggestionViewVisibilityDidChange:suggestionViewFrameDidChange:suggestionViewAdditionalOffsetXDidChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v22 = type metadata accessor for LemonadeSearchBarWithSuggestionView(0);
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A5247C74();
  *a9 = a1;
  v23 = v22[5];
  v24 = sub_1A5242074();
  result = (*(*(v24 - 8) + 32))(&a9[v23], a2, v24);
  *&a9[v22[6]] = a3;
  v26 = &a9[v22[7]];
  *v26 = a4;
  *(v26 + 1) = a5;
  v27 = &a9[v22[8]];
  *v27 = a6;
  *(v27 + 1) = a7;
  v28 = &a9[v22[9]];
  *v28 = a8;
  *(v28 + 1) = a10;
  v29 = &a9[v22[10]];
  *v29 = a11;
  *(v29 + 1) = a12;
  v30 = &a9[v22[11]];
  *v30 = a13;
  *(v30 + 1) = a14;
  v31 = &a9[v22[12]];
  *v31 = a15;
  *(v31 + 1) = a16;
  return result;
}

uint64_t type metadata accessor for LemonadeSearchBarWithSuggestionView(uint64_t a1)
{
  result = qword_1EB160360;
  if (!qword_1EB160360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LemonadeSearchBarWithSuggestionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  sub_1A426B3A4(0);
  v108 = *(v1 - 8);
  v109 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v106 = v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A426B4E0(0);
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v114 = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A426B5CC(0);
  v102 = *(v5 - 1);
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v110 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1A52437E4();
  v115 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v101 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for LemonadeSearchBarWithSuggestionView(0);
  v8 = *(v99 + 13);
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  v10 = v9;
  sub_1A5247CA4();
  v11 = v117;
  v12 = v118;
  v13 = v119;
  swift_getKeyPath();
  v145 = v11;
  v146 = v12;
  v147 = v13;
  v113 = MEMORY[0x1E6981948];
  sub_1A426B6F8(0, &qword_1EB135CC0, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v100 = v142;
  v97 = v144;
  v98 = v143;

  v14 = v116;
  sub_1A5247CA4();
  v15 = v117;
  v16 = v118;
  v17 = v119;
  swift_getKeyPath();
  v139 = v15;
  v140 = v16;
  v141 = v17;
  sub_1A524B914();

  v95 = v137;
  v96 = v136;
  v94 = v138;

  v18 = v14;
  sub_1A5247CA4();
  v19 = v117;
  v20 = v118;
  v21 = v119;
  swift_getKeyPath();
  v133 = v19;
  v134 = v20;
  v135 = v21;
  sub_1A524B914();

  v92 = v131;
  v93 = v130;
  v91 = v132;

  sub_1A5247CA4();
  v22 = v117;
  v23 = v118;
  v24 = v119;
  swift_getKeyPath();
  v127 = v22;
  v128 = v23;
  v129 = v24;
  sub_1A524B914();

  v148 = v124;
  v149 = v125;
  v150 = v126;

  sub_1A5247CA4();
  v26 = v117;
  v25 = v118;
  v27 = v119;
  swift_getKeyPath();
  v121 = v26;
  v122 = v25;
  v123 = v27;
  sub_1A426B6F8(0, &qword_1EB1214F8, MEMORY[0x1E69C1CD0], v113);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v90[3] = v90 - v29;
  sub_1A524B914();

  v30 = v18;
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.container.getter(&v117);

  v31 = PhotosSearchBarLocalizedPlaceholder(_:)(&v117);
  v90[1] = v32;
  v90[2] = v31;
  sub_1A3C30A1C(&v117, &qword_1EB129AC0, sub_1A3C295A0);
  v112 = v10;
  v113 = v8;
  sub_1A5247C84();
  sub_1A3EA5B84();

  v33 = v99;
  v34 = *(v18 + *(v99 + 12) + 8);

  v89 = v34;
  v35 = v101;
  sub_1A52437D4();
  v36 = sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650], MEMORY[0x1E69C2648]);
  v37 = v111;
  v100 = v36;
  sub_1A524A5A4();
  v38 = (*(v115 + 8))(v35, v37);
  v39 = *(v33 - 1);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1A426B75C(v30, v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A524CC54();
  v41 = sub_1A524CC44();
  v42 = *(v39 + 80);
  v43 = (v42 + 32) & ~v42;
  v101 = v40;
  v115 = v42;
  v44 = swift_allocObject();
  v45 = MEMORY[0x1E69E85E0];
  *(v44 + 16) = v41;
  *(v44 + 24) = v45;
  sub_1A426B7C0(v90 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v43);
  v46 = sub_1A524CCB4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v90 - v49;
  sub_1A524CC74();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v98 = sub_1A52485C4();
    v99 = v90;
    v97 = *(v98 - 8);
    MEMORY[0x1EEE9AC00](v98);
    v96 = v46;
    v52 = v90 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_1A524E404();

    v117 = 0xD000000000000041;
    v118 = 0x80000001A53CEEC0;
    *&v124 = 67;
    v53 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v53);

    v55 = MEMORY[0x1EEE9AC00](v54);
    v56 = v90 - v49;
    v57 = v90 - v49;
    v58 = v96;
    (*(v47 + 16))(v56, v57, v96, v55);
    sub_1A52485B4();
    (*(v47 + 8))(v50, v58);
    v59 = v103;
    v60 = v114;
    (*(v102 + 32))(v114, v110, v103);
    sub_1A426BFEC(0, &qword_1EB136498, MEMORY[0x1EEE7B8D0]);
    (*(v97 + 32))(&v60[*(v61 + 36)], v52, v98);
  }

  else
  {
    sub_1A426BFEC(0, &qword_1EB1364A0, MEMORY[0x1E697C028]);
    v63 = v114;
    v64 = &v114[*(v62 + 36)];
    v65 = sub_1A5248394();
    (*(v47 + 32))(&v64[*(v65 + 20)], v90 - v49, v46);
    *v64 = &unk_1A53295A0;
    *(v64 + 1) = v44;
    v59 = v103;
    (*(v102 + 32))(v63, v110, v103);
  }

  v66 = ~v115;
  sub_1A426B6F8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v69 = v90 - v68;
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.searchResults.getter(v69);

  v70 = type metadata accessor for PhotosSearchResults(0);
  if ((*(*(v70 - 8) + 48))(v69, 1, v70) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v71 = sub_1A3C30A1C(v69, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  v102 = 0;
  v103 = v90;
  *&v124 = 0;
  v72 = v101;
  MEMORY[0x1EEE9AC00](v71);
  v110 = ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = (v90 - v110);
  v74 = v116;
  sub_1A426B75C(v116, v90 - v110);
  v75 = (v115 + 16) & v66;
  v76 = swift_allocObject();
  sub_1A426B7C0(v73, v76 + v75);
  sub_1A40EF414(0);
  v99 = v77;
  v117 = v111;
  v118 = v100;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v117 = v59;
  v118 = OpaqueTypeConformance2;
  v111 = swift_getOpaqueTypeConformance2();
  v79 = sub_1A426B680();
  v80 = v105;
  v81 = v106;
  v82 = v114;
  sub_1A524B154();

  (*(v104 + 8))(v82, v80);
  sub_1A5247C84();
  active = LemonadeActiveSearchViewModel.isScopedSearch.getter();

  LOBYTE(v124) = active;
  MEMORY[0x1EEE9AC00](v84);
  v85 = (v90 - v110);
  sub_1A426B75C(v74, v90 - v110);
  v86 = swift_allocObject();
  sub_1A426B7C0(v85, v86 + v75);
  v117 = v80;
  v118 = v99;
  v119 = v111;
  v120 = v79;
  swift_getOpaqueTypeConformance2();
  v87 = v109;
  sub_1A524B154();

  return (*(v108 + 8))(v81, v87);
}

uint64_t sub_1A426B208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  sub_1A524CC54();
  *(v3 + 32) = sub_1A524CC44();
  v5 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A426B2A0, v5, v4);
}

uint64_t sub_1A426B2A0()
{
  v1 = *(v0 + 24);

  v2 = type metadata accessor for LemonadeSearchBarWithSuggestionView(0);
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  sub_1A3EA41E4(v3, *(v1 + *(v2 + 24)), 0, 0);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1A426B3A4(uint64_t a1)
{
  if (!qword_1EB136478)
  {
    sub_1A426B4E0(255);
    sub_1A40EF414(255);
    sub_1A426B5CC(255);
    sub_1A52437E4();
    sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650], MEMORY[0x1E69C2648]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A426B680();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136478);
    }
  }
}

void sub_1A426B4E0(uint64_t a1)
{
  if (!qword_1EB136480)
  {
    sub_1A426B5CC(255);
    sub_1A52437E4();
    sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650], MEMORY[0x1E69C2648]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136480);
    }
  }
}

void sub_1A426B5CC(uint64_t a1)
{
  if (!qword_1EB136488)
  {
    sub_1A52437E4();
    sub_1A426C0A8(&qword_1EB136490, MEMORY[0x1E69C2650], MEMORY[0x1E69C2648]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136488);
    }
  }
}

unint64_t sub_1A426B680()
{
  result = qword_1EB131F50;
  if (!qword_1EB131F50)
  {
    sub_1A40EF414(255);
    sub_1A403594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F50);
  }

  return result;
}

void sub_1A426B6F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A426B75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchBarWithSuggestionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A426B7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchBarWithSuggestionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A426B824()
{
  v2 = *(type metadata accessor for LemonadeSearchBarWithSuggestionView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A426B208(v4, v5, v0 + v3);
}

double sub_1A426B8EC(uint64_t a1)
{
  sub_1A426B6F8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for LemonadeSearchBarWithSuggestionView(0);
  v25 = *(a1 + *(v8 + 28));
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v9 = LemonadeActiveSearchViewModel.searchText.getter();

  v10 = [v9 string];

  v11 = sub_1A524C674();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v7);

    v15 = type metadata accessor for PhotosSearchResults(0);
    if ((*(*(v15 - 8) + 48))(v7, 1, v15) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C30A1C(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  }

  v25(0);

  v16 = *(a1 + *(v8 + 32));
  sub_1A5247C84();
  v17 = LemonadeActiveSearchViewModel.searchText.getter();

  v18 = [v17 string];

  v19 = sub_1A524C674();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v4);

    v23 = type metadata accessor for PhotosSearchResults(0);
    if ((*(*(v23 - 8) + 48))(v4, 1, v23) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C30A1C(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
  }

  v16(0);

  return result;
}

double sub_1A426BCA8()
{
  v1 = *(type metadata accessor for LemonadeSearchBarWithSuggestionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A426B8EC(v2);
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = (type metadata accessor for LemonadeSearchBarWithSuggestionView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = sub_1A5242074();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + v1[15];
  sub_1A426B6F8(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981E90]);
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1A426B6F8(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A426BF0C()
{
  v1 = type metadata accessor for LemonadeSearchBarWithSuggestionView(0);
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 36));
  sub_1A426B6F8(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  active = LemonadeActiveSearchViewModel.isScopedSearch.getter();

  return v2(active);
}

void sub_1A426BFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A426B5CC(255);
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A426C05C()
{
  result = qword_1EB140FF0;
  if (!qword_1EB140FF0)
  {
    sub_1A52485C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140FF0);
  }

  return result;
}

uint64_t sub_1A426C0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A426C138(uint64_t a1, uint64_t a2)
{
  sub_1A3C4B4AC(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A5242074();
    if (v3 <= 0x3F)
    {
      sub_1A426B6F8(319, &qword_1EB125650, type metadata accessor for LemonadeActiveSearchUpdater, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v5 <= 0x3F)
        {
          sub_1A426B6F8(319, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A426C2BC(uint64_t a1)
{
  if (!qword_1EB1364B8)
  {
    sub_1A426C378(255, &qword_1EB1364C0, sub_1A426C350, MEMORY[0x1E69805C0]);
    sub_1A426C844(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1364B8);
    }
  }
}

void sub_1A426C378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A426C3DC(uint64_t a1)
{
  if (!qword_1EB1364D0)
  {
    sub_1A426C470(255);
    sub_1A426C7FC(&qword_1EB136518, sub_1A426C470, MEMORY[0x1E69817F8]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1364D0);
    }
  }
}

void sub_1A426C470(uint64_t a1)
{
  if (!qword_1EB1364D8)
  {
    sub_1A426C504(255);
    sub_1A426C7FC(&qword_1EB136510, sub_1A426C504, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1364D8);
    }
  }
}

void sub_1A426C538(uint64_t a1)
{
  if (!qword_1EB1364E8)
  {
    sub_1A426C5C8(255);
    sub_1A426C664(255);
    sub_1A426C77C(255, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1364E8);
    }
  }
}

void sub_1A426C5C8(uint64_t a1)
{
  if (!qword_1EB1364F0)
  {
    sub_1A426C664(255);
    sub_1A405D488(255, &qword_1EB121CC0, MEMORY[0x1E6981748]);
    sub_1A426C6DC();
    sub_1A4176C5C(v1);
    v2 = sub_1A524B624();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1364F0);
    }
  }
}

void sub_1A426C664(uint64_t a1)
{
  if (!qword_1EB1364F8)
  {
    sub_1A405D430(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1364F8);
    }
  }
}

unint64_t sub_1A426C6DC()
{
  result = qword_1EB136500;
  if (!qword_1EB136500)
  {
    sub_1A426C664(255);
    sub_1A405D6B4(&qword_1EB127870, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136500);
  }

  return result;
}

void sub_1A426C77C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB136508)
  {
    sub_1A3DF1888(255, a2);
    sub_1A405D430(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB136508);
    }
  }
}

uint64_t sub_1A426C7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A426C844(uint64_t a1)
{
  if (!qword_1EB136520)
  {
    sub_1A426C378(255, &qword_1EB136528, sub_1A426C8C0, MEMORY[0x1E697EC00]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136520);
    }
  }
}

void sub_1A426C908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A426C988(uint64_t a1)
{
  if (!qword_1EB136538)
  {
    sub_1A426CA08();
    sub_1A405D430(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136538);
    }
  }
}

void sub_1A426CA08()
{
  if (!qword_1EB128710)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128710);
    }
  }
}

unint64_t sub_1A426CA60()
{
  result = qword_1EB123850;
  if (!qword_1EB123850)
  {
    sub_1A426C988(255);
    sub_1A3FCAD48();
    sub_1A405D6B4(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123850);
  }

  return result;
}

unint64_t sub_1A426CB00()
{
  result = qword_1EB136540;
  if (!qword_1EB136540)
  {
    sub_1A426C2BC(255);
    sub_1A426CB8C();
    sub_1A426CCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136540);
  }

  return result;
}

unint64_t sub_1A426CB8C()
{
  result = qword_1EB136548;
  if (!qword_1EB136548)
  {
    sub_1A426C378(255, &qword_1EB1364C0, sub_1A426C350, MEMORY[0x1E69805C0]);
    sub_1A426CC30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136548);
  }

  return result;
}

unint64_t sub_1A426CC30()
{
  result = qword_1EB136550;
  if (!qword_1EB136550)
  {
    sub_1A426C350(255);
    sub_1A426C7FC(&qword_1EB136558, sub_1A426C3DC, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136550);
  }

  return result;
}

unint64_t sub_1A426CCE0()
{
  result = qword_1EB136560;
  if (!qword_1EB136560)
  {
    sub_1A426C844(255);
    sub_1A426CD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136560);
  }

  return result;
}

unint64_t sub_1A426CD58()
{
  result = qword_1EB136568;
  if (!qword_1EB136568)
  {
    sub_1A426C378(255, &qword_1EB136528, sub_1A426C8C0, MEMORY[0x1E697EC00]);
    sub_1A426C7FC(&qword_1EB136570, sub_1A426C8C0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136568);
  }

  return result;
}

uint64_t sub_1A426CE2C(uint64_t a1, uint64_t a2)
{
  v9[0] = sub_1A3C38BD4(0xD000000000000022);
  v9[1] = v4;
  sub_1A3D5F9DC();
  v9[25] = sub_1A524A464();
  v9[26] = v5;
  v10 = v6 & 1;
  v11 = v7;
  sub_1A426D94C(a1, a2, v9);
  sub_1A426C378(0, &qword_1EB1364C0, sub_1A426C350, MEMORY[0x1E69805C0]);
  sub_1A426C844(0);
  sub_1A426CB8C();
  sub_1A426CCE0();
  return sub_1A524BA44();
}

void sub_1A426CF5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A426C350(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1;
  v25 = a2;
  sub_1A426C470(0);
  sub_1A426C7FC(&qword_1EB136518, sub_1A426C470, MEMORY[0x1E69817F8]);
  sub_1A524B704();
  v10 = sub_1A524A0C4();
  sub_1A5247BC4();
  v11 = &v9[*(v7 + 44)];
  *v11 = v10;
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  v11[40] = 0;
  v27 = a1;
  v28 = a2;
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v16 = sub_1A524B6A4();
  v17 = (*(*v26 + 344))(v16);

  if (v17 & 1) != 0 || (v27 = a1, v28 = a2, v18 = sub_1A524B6A4(), v19 = (*(*v26 + 200))(v18), , (v19))
  {
    v20 = 1;
  }

  else
  {
    v27 = a1;
    v28 = a2;
    v21 = sub_1A524B6A4();
    v20 = (*(*v26 + 248))(v21);
  }

  sub_1A3CEA9B0(v9, a3);
  sub_1A426C378(0, &qword_1EB1364C0, sub_1A426C350, MEMORY[0x1E69805C0]);
  *(a3 + *(v22 + 36)) = v20 & 1;
}

id sub_1A426D214(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();

  return [v2 navigateToDestination:6 completion:0];
}

void sub_1A426D254(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v66 = a3;
  v5 = sub_1A5242274();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1A5242264();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A426C77C(0, v11);
  v64 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  sub_1A426C5C8(0);
  v68 = *(v17 - 8);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v54 - v20;
  v70 = a1;
  v71 = a2;
  sub_1A426C664(0);
  sub_1A405D488(0, &qword_1EB121CC0, MEMORY[0x1E6981748]);
  sub_1A426C6DC();
  sub_1A4176C5C(v21);
  sub_1A524B5F4();
  v73 = a1;
  v74 = a2;
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v22 = sub_1A524B6A4();
  v23 = (*(*v72 + 536))(v22);
  v25 = v24;

  v73 = v23;
  v74 = v25;
  sub_1A3D5F9DC();
  v26 = sub_1A524A464();
  v58 = v27;
  v59 = v26;
  v57 = v28;
  v60 = v29;
  v30 = objc_opt_self();
  v31 = [v30 secondaryLabelColor];
  v32 = sub_1A524B284();
  KeyPath = swift_getKeyPath();
  v73 = v32;
  v55 = sub_1A5248204();
  *v10 = 0x2E6E6F7276656863;
  v10[1] = 0xEF64726177726F66;
  v33 = v61;
  (*(v8 + 104))(v10, *MEMORY[0x1E69C1D38], v61);
  v35 = v62;
  v34 = v63;
  (*(v62 + 104))(v7, *MEMORY[0x1E69C1D50], v63);
  sub_1A5242B64();
  (*(v35 + 8))(v7, v34);
  (*(v8 + 8))(v10, v33);
  v36 = [v30 systemGrayColor];
  v37 = sub_1A524B284();
  v38 = swift_getKeyPath();
  v73 = v37;
  v39 = sub_1A5248204();
  v40 = &v16[*(v64 + 44)];
  v41 = v16;
  *v40 = v38;
  v40[1] = v39;
  v42 = v67;
  v43 = *(v68 + 16);
  v44 = v69;
  v43(v67, v54, v69);
  LOBYTE(v73) = 1;
  LOBYTE(v72) = v57 & 1;
  v45 = v65;
  sub_1A3CEAA14(v41, v65);
  v46 = v66;
  v43(v66, v42, v44);
  sub_1A426C538(0);
  v48 = &v46[v47[12]];
  v49 = v73;
  *v48 = 0;
  v48[8] = v49;
  v50 = &v46[v47[16]];
  LOBYTE(v37) = v72;
  v52 = v58;
  v51 = v59;
  *v50 = v59;
  *(v50 + 1) = v52;
  v50[16] = v37;
  v53 = KeyPath;
  *(v50 + 3) = v60;
  *(v50 + 4) = v53;
  *(v50 + 5) = v55;
  sub_1A3CEAA14(v45, &v46[v47[20]]);
  sub_1A3E75E68(v51, v52, v37);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A426D8B8@<X0>(uint64_t *a2@<X8>)
{
  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  v5 = [v3 px:v4 imageNamed:?];

  if (v5)
  {
    result = sub_1A524B524();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

__n128 sub_1A426D94C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A52407E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v36 = a1;
  v37 = a2;
  sub_1A426DDA4(a1, a2);
  sub_1A5240714();
  sub_1A426C7FC(&qword_1EB136580, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
  LOBYTE(a2) = sub_1A524C594();
  v19 = *(v7 + 8);
  v19(v15, v6);
  v19(v18, v6);
  if (a2)
  {
    sub_1A426E3BC(&v47);
  }

  else
  {
    v35 = sub_1A5249574();
    v44 = 1;
    sub_1A426DDA4(v36, v37);
    sub_1A426DF24();
    sub_1A5240724();
    v19(v9, v6);
    v19(v12, v6);
    sub_1A426E020();
    sub_1A5240724();
    v19(v12, v6);
    v19(v15, v6);
    v20 = sub_1A524A454();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    KeyPath = swift_getKeyPath();
    v24 &= 1u;
    LOBYTE(v47) = v24;
    LOBYTE(v38) = 1;
    v28 = v44;
    sub_1A524BC84();
    sub_1A5248AD4();
    *(&v45[6] + 7) = *&v45[21];
    *(&v45[8] + 7) = *&v45[23];
    *(&v45[10] + 7) = *&v45[25];
    *(&v45[12] + 7) = v46;
    *(v45 + 7) = *&v45[15];
    *(&v45[2] + 7) = *&v45[17];
    *(&v45[4] + 7) = *&v45[19];
    *&v43[65] = *&v45[8];
    *&v43[81] = *&v45[10];
    *&v43[97] = *&v45[12];
    *&v43[1] = *v45;
    *&v43[17] = *&v45[2];
    *&v43[33] = *&v45[4];
    v38 = v35;
    v39.n128_u8[0] = v28;
    v39.n128_u64[1] = v20;
    *&v40 = v22;
    BYTE8(v40) = v24;
    *&v41 = v26;
    WORD4(v41) = 256;
    v42 = KeyPath;
    v43[0] = 1;
    *&v43[112] = *(&v46 + 1);
    *&v43[49] = *&v45[6];
    PXDisplayCollectionDetailedCountsMake();
    v57 = *&v43[80];
    v58 = *&v43[96];
    v59 = *&v43[112];
    v53 = *&v43[16];
    v54 = *&v43[32];
    v55 = *&v43[48];
    v56 = *&v43[64];
    v49 = v40;
    v50 = v41;
    v51 = v42;
    v52 = *v43;
    v47 = v38;
    v48 = v39;
  }

  v29 = v58;
  *(a3 + 160) = v57;
  *(a3 + 176) = v29;
  *(a3 + 192) = v59;
  v30 = v54;
  *(a3 + 96) = v53;
  *(a3 + 112) = v30;
  v31 = v56;
  *(a3 + 128) = v55;
  *(a3 + 144) = v31;
  v32 = v50;
  *(a3 + 32) = v49;
  *(a3 + 48) = v32;
  v33 = v52;
  *(a3 + 64) = v51;
  *(a3 + 80) = v33;
  result = v48;
  *a3 = v47;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1A426DDA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v3 = sub_1A524B6A4();
  (*(*v5 + 488))(v3);

  sub_1A52408B4();
  sub_1A52407F4();
  sub_1A524A254();
  sub_1A3EE43D8();
  sub_1A5240814();
  sub_1A524B3D4();
  sub_1A3EE4384();
  return sub_1A5240814();
}

uint64_t sub_1A426DF24()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3C38BD4(0xD000000000000030);
  sub_1A52408B4();
  sub_1A52407F4();
  sub_1A524A254();
  sub_1A3EE43D8();
  sub_1A5240814();
  sub_1A524B3D4();
  sub_1A3EE4384();
  return sub_1A5240814();
}

uint64_t sub_1A426E020()
{
  sub_1A426E3E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - v4;
  v6 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3C38BD4(0xD00000000000002ALL);
  sub_1A52408B4();
  sub_1A52407F4();
  v8 = PXSharedLibraryLearnMoreURLString(v7);
  sub_1A524C674();

  sub_1A5240E34();

  sub_1A426E444(v5, v2);
  sub_1A426E4D8();
  sub_1A5240814();
  sub_1A3D75F5C(v5);
  v10[1] = sub_1A524A254();
  sub_1A3EE43D8();
  return sub_1A5240814();
}

uint64_t sub_1A426E1FC(uint64_t a1)
{
  type metadata accessor for SharedLibraryStatusViewModel(0);
  sub_1A524B694();
  return v2;
}

uint64_t sub_1A426E254()
{
  sub_1A426C274(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v9 = *v0;
  v10 = v6;
  sub_1A426C2BC(0);
  sub_1A426CB00();
  sub_1A524A294();
  sub_1A426C7FC(&qword_1EB136578, sub_1A426C274, MEMORY[0x1E697CCF0]);
  sub_1A524ADD4();
  return (*(v3 + 8))(v5, v2);
}

double sub_1A426E3BC(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1A426E3E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A426E444(uint64_t a1, uint64_t a2)
{
  sub_1A426E3E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A426E4D8()
{
  result = qword_1EB136588;
  if (!qword_1EB136588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136588);
  }

  return result;
}

void sub_1A426E52C(uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A426E584(0);
  sub_1A426D254(v5, v4, (a2 + *(v6 + 44)));
}

void sub_1A426E584(uint64_t a1)
{
  if (!qword_1EB136590)
  {
    sub_1A426C504(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136590);
    }
  }
}

uint64_t sub_1A426E5EC@<X0>(uint64_t a1@<X8>)
{
  sub_1A426E3E0(0, &qword_1EB1364A8, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981790]);
  v2 = sub_1A524B6A4();
  (*(*v13 + 440))(v2);

  sub_1A3D5F9DC();
  v3 = sub_1A524A464();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [objc_opt_self() labelColor];
  sub_1A524B284();
  KeyPath = swift_getKeyPath();
  result = sub_1A5248204();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = result;
  return result;
}

char *sub_1A426E760()
{
  v1 = v0;
  sub_1A426EFF0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C2C4();
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A524C314();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 presentationEnvironment];
  if (v12)
  {
    v13 = v12;
    v24 = v11;
    v14 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_additionalPeopleToFilter;
    swift_beginAccess();
    v27 = *&v0[v14];
    if (v27)
    {
      v15 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_photoLibrary;
      swift_beginAccess();
      if (*&v0[v15])
      {
        v23 = v8;
        v21 = v13;
        if (v27 >> 62)
        {
          v22 = sub_1A524E2B4();
        }

        else
        {
          v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v16 = sub_1A524D244();
    v17 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v16, &dword_1A3C1C000, v17, "Not performing the add people to Social Group action because either additionalPeopleToFilter or photoLibrary is nil", 115, 2, MEMORY[0x1E69E7CC0]);

    [v1 completeUserInteractionTaskWithSuccess:0 error:0];
    return swift_unknownObjectRelease();
  }

  else
  {
    v19 = sub_1A524D244();
    v20 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Not performing the add people to Social Group action because presentationEnvironment is nil", 91, 2, MEMORY[0x1E69E7CC0]);

    return [v1 completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void sub_1A426EFF0(uint64_t a1)
{
  if (!qword_1EB120E50)
  {
    sub_1A524C314();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120E50);
    }
  }
}

void sub_1A426F048(uint64_t a1)
{
  v1 = sub_1A524D224();
  v2 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v1, &dword_1A3C1C000, v2, "Presented the add people to Social Group picker.", 48, 2, MEMORY[0x1E69E7CC0]);
}

char *sub_1A426F10C(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
        swift_dynamicCast();
        v14 = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A3D3E490((v7 > 1), v8 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v8 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v8 + 32));
      }
    }

    else
    {
      v9 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v14 = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1A3D3E490((v11 > 1), v12 + 1, 1);
          v4 = v14;
        }

        *(v4 + 16) = v12 + 1;
        sub_1A3C57128(v13, (v4 + 32 * v12 + 32));
        ++v9;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1A426F308(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_additionalPeopleToFilter] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_photoLibrary] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_peopleToAdd] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_error] = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_mutationActionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A426FD20(&unk_1EB1356B0, 255, type metadata accessor for PXActionParameterKey, &unk_1A5377DC0);
  v8 = sub_1A524C3D4();

  v11.receiver = v4;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithActionType_assetCollectionReference_parameters_, v7, a3, v8);

  return v9;
}

void *sub_1A426F59C(void *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for PeopleUtilities(0, a2);
    v3 = v2;
    v4 = sub_1A3C6E9EC();
    v5 = sub_1A3D782CC(v3, v4);
    v6 = *sub_1A468090C();
    v7 = [v5 count];

    return (v7 < v6);
  }

  return result;
}

id sub_1A426F658(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 socialGroups];
  if (!v6 || (v7 = v6, v8 = [v6 photoLibrary], v7, !v8))
  {
    v9 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_photoLibrary;
    swift_beginAccess();
    v10 = *&v3[v9];
    v11 = v10;
    if (!v10)
    {
      goto LABEL_18;
    }

    v8 = v11;
  }

  v12 = *(a2 + 16);
  if (v12)
  {
    v33 = a1;
    v13 = *(sub_1A524C214() - 8);
    v14 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = sub_1A524C204();
      if (v19)
      {
        v20 = v18;
        v21 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A3D3D914(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_1A3D3D914((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v17 = &v16[16 * v23];
        *(v17 + 4) = v20;
        *(v17 + 5) = v21;
      }

      v14 += v15;
      --v12;
    }

    while (v12);
    v24 = [v8 librarySpecificFetchOptions];
    v25 = [objc_opt_self() px_defaultDetectionTypes];
    if (!v25)
    {
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      sub_1A524CA34();
      v25 = sub_1A524CA14();
    }

    [v24 setIncludedDetectionTypes_];

    v26 = objc_opt_self();
    v27 = sub_1A524CA14();

    v28 = [v26 fetchPersonsWithLocalIdentifiers:v27 options:v24];

    v29 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_peopleToAdd;
    swift_beginAccess();
    v8 = *&v3[v29];
    *&v3[v29] = v28;
    a1 = v33;
  }

LABEL_18:
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A426FD68;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_3_2;
  v31 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v31];
  _Block_release(v31);
  return [v3 completeUserInteractionTaskWithSuccess:1 error:0];
}

uint64_t sub_1A426F9F4(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  v2 = [objc_opt_self() sortDescriptorsForManualSort];
  if (!v2)
  {
    sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
    sub_1A524CA34();
    v2 = sub_1A524CA14();
  }

  [v1 setSortDescriptors_];

  [v1 setPersonContext_];
  v3 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v3)
  {
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    sub_1A524CA34();
    v3 = sub_1A524CA14();
  }

  [v1 setIncludedDetectionTypes_];

  v4 = [objc_opt_self() fetchPersonsWithOptions_];
  v5 = [v4 fetchedObjects];
  if (v5)
  {
    v6 = v5;
    sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
    v7 = sub_1A524CA34();

    v4 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1A426FBC8(unint64_t a1, void *a2)
{
  type metadata accessor for PeopleUtilities(0, a2);
  v4 = sub_1A3D78460(a2);
  PeopleSorter.init(sortOrder:)(v4, &v14);
  sub_1A426F10C(a1, v5);
  v6 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v7 = sub_1A524CA14();

  v8 = [v6 initWithObjects:v7 photoLibrary:a2 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v9 = PeopleSorter.sort(fetchResult:)(v8);
  v10 = [v9 fetchedObjects];
  if (v10)
  {
    v11 = v10;
    sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
    v12 = sub_1A524CA34();

    v8 = v9;
    v9 = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1A426FD20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A426FD68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_peopleToAdd;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {
      v4 = &v1[OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_mutationActionDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        v7 = v3;
        v8 = [v1 success];
        v9 = OBJC_IVAR____TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer_error;
        swift_beginAccess();
        v10 = *&v1[v9];
        v11 = *(v5 + 8);
        v12 = v7;
        v13 = v10;
        v11(v8, v10, v3, ObjectType, v5);

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A426FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a7;
  *(a8 + 40) = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(a8 + 48) = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a8 + 16));
  result = (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a2, a6);
  *(a8 + 56) = a3;
  *(a8 + 64) = a4;
  return result;
}

id sub_1A426FFD0(char *a1, uint64_t a2)
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = *a1;
  v9 = *v2;
  v10 = *(v2 + 8);
  type metadata accessor for SearchResultItemListManager(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    sub_1A3C341C8(v2 + 16, v24);
    sub_1A3D8F9B8();
    type metadata accessor for SearchResultItem();
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v13 = v23;
      sub_1A4271E88(0, &qword_1EB1365C8, type metadata accessor for PhotosPagingViewConfiguration);
      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      *(v14 + 24) = a2;
      v24[0] = v8;
      swift_unknownObjectRetain();

      v15 = sub_1A41FE5EC();
      v16 = sub_1A3EA80D8(v12, sub_1A4271D60, v14, sub_1A4271E7C, v13, v15, 0);
      sub_1A4271E88(0, &qword_1EB1365D0, type metadata accessor for PhotosPagingViewController);

      sub_1A46535F0(v7);
      sub_1A4998CE0(v16, v7);
    }

    swift_unknownObjectRelease();
  }

  ObjectType = swift_getObjectType();
  v18 = *(v2 + 40);
  v19 = *(v2 + 48);
  v20 = __swift_project_boxed_opaque_existential_1((v2 + 16), v18);
  v21 = *(v2 + 56);
  v24[0] = v8;
  return sub_1A4270FC0(v9, v20, v21, v24, a2, *(v2 + 64), ObjectType, v18, v10, v19);
}

void sub_1A4270314(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SearchResultItem();
  v11 = swift_retain_n();
  v12 = sub_1A44B6AA8(v11, 1);
  *(a5 + 40) = v10;
  *(a5 + 48) = sub_1A4271F24(&qword_1EB12A4C0, type metadata accessor for SearchResultItem, &protocol conformance descriptor for SearchResultItem);
  *(a5 + 16) = v12;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  type metadata accessor for SearchResultItemListManager(0);
  SearchResultItemListManager.__allocating_init(photoLibraryContext:singlePersonItem:)(a2, a1);
}

id sub_1A4270424(void *a1)
{
  v5 = sub_1A524CA14();
  v6 = sub_1A524C634();
  result = [a1 photoLibrary];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:result];

    sub_1A4271F6C(0, &qword_1EB129F78, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager);
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    LOBYTE(v18) = 2;
    v10 = v9;
    sub_1A3C6C180(&v19);
    v27 = v19;
    v28 = v20;
    sub_1A3C6C18C(&v25);
    v23 = v25;
    v24 = v26;
    v11 = sub_1A3C5A374();
    v12 = sub_1A3C30368();
    v13 = sub_1A3C5A374();
    v14 = sub_1A3C5A374();
    v15 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v27, 0, &unk_1F1700E18, 0, 1, &v23, v11 & 1, &v18, v22, v12, v13 & 1, v14 & 1, v15 & 1, 0);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v17 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v10, 0, v29, v22, &v19, sub_1A4272534, v16);
  }

  __break(1u);
  return result;
}

id sub_1A4270930(void *a1)
{
  v5 = sub_1A524CA14();
  v6 = sub_1A524C634();
  result = [a1 photoLibrary];
  if (result)
  {
    v8 = result;
    v9 = [objc_opt_self() transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:result];

    sub_1A4271F6C(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    LOBYTE(v18) = 2;
    v10 = v9;
    sub_1A3C6C180(&v19);
    v27 = v19;
    v28 = v20;
    sub_1A3C6C18C(&v25);
    v23 = v25;
    v24 = v26;
    v11 = sub_1A3C5A374();
    v12 = sub_1A3C30368();
    v13 = sub_1A3C5A374();
    v14 = sub_1A3C5A374();
    v15 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v27, 0, &unk_1F1700E40, 0, 1, &v23, v11 & 1, &v18, v22, v12, v13 & 1, v14 & 1, v15 & 1, 0);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v17 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v10, 0, v29, v22, &v19, sub_1A42723F8, v16);
  }

  __break(1u);
  return result;
}

uint64_t static LemonadePeoplePhotosPagingGridConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_1A5246284();
  }

  return 0;
}

uint64_t LemonadePeoplePhotosPagingGridConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](*v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A4270EB4()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](*v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A4270EF8(uint64_t a1)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](*v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4270F38(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
    sub_1A5246284();
  }

  return 0;
}

id sub_1A4270FC0(uint64_t a1, char *a2, int a3, _BYTE *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v67 = a8;
  v68 = a4;
  v62 = a5;
  v63 = a6;
  v66 = a3;
  v64 = a1;
  v65 = a2;
  v61 = a10;
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  v19 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - v23;
  v25 = v67;
  LOBYTE(a7) = *v68;
  LODWORD(v68) = *v68;
  (*(v14 + 16))(v17, v65, v67, v22);
  swift_dynamicCast();
  v26 = v69;
  v58 = a9;
  v60 = type metadata accessor for PhotosPagingViewConfiguration(0, v69, a9, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  *(v28 + 32) = a9;
  v30 = v61;
  v29 = v62;
  *(v28 + 40) = v61;
  *(v28 + 48) = a7;
  v31 = v63;
  *(v28 + 56) = v29;
  *(v28 + 64) = v31;
  v32 = v59;
  v33 = *(v59 + 16);
  v65 = v24;
  v33(v20, v24, AssociatedTypeWitness);
  v34 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v36 = v67;
  *(v35 + 2) = v69;
  *(v35 + 3) = v36;
  v37 = AssociatedTypeWitness;
  v38 = v58;
  *(v35 + 4) = v58;
  *(v35 + 5) = v30;
  v39 = *(v32 + 32);
  v67 = v37;
  v39(&v35[v34], v20);
  v71 = v68;
  v40 = v31;
  v41 = v64;
  swift_unknownObjectRetain();

  v42 = sub_1A41FE5EC();
  v43 = v35;
  v44 = v66;
  v45 = sub_1A3EA80D8(v41, sub_1A4272774, v28, sub_1A427286C, v43, v42, 0);
  v47 = v45;
  if ((v44 & 1) == 0)
  {
    type metadata accessor for PhotosPagingViewController(0, v69, v38, v46);

    v53 = v57;
    sub_1A46535F0(v57);
    sub_1A4998CE0(v47, v53);
  }

  v48 = v65;
  v49 = (*(*v45 + 144))(v65);
  v50 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];

  if (sub_1A42714A8(v67))
  {
    PeopleUnifiedItem.title.getter();
    if (v51)
    {
      v52 = sub_1A524C634();
    }

    else
    {
      v52 = 0;
    }

    [v50 setTitle_];
  }

  v70 = v68;
  v54 = sub_1A472901C();
  v55 = sub_1A44AE5E0(v50, v54, v44 & 1);

  (*(v32 + 8))(v48, v67);
  return v55;
}

uint64_t sub_1A42714A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = *(v4 + 16);
  v12(&v19 - v13, v2, a1, v11);
  type metadata accessor for PeopleUnifiedItem();
  if (swift_dynamicCast())
  {
    return v20;
  }

  (v12)(v9, v2, a1);
  sub_1A4271F6C(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItem);
  if (swift_dynamicCast())
  {
    v15 = v20;
    v16 = sub_1A3C5A374();
    return sub_1A44B6AA8(v15, v16 & 1);
  }

  else
  {
    (v12)(v6, v2, a1);
    sub_1A4271F6C(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    if (swift_dynamicCast())
    {
      v17 = v20;
      v18 = sub_1A3C5A374();
      return sub_1A44B6AEC(v17, v18 & 1);
    }

    else
    {
      return 0;
    }
  }
}

__n128 sub_1A42716F0@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 72) = v4;
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_1A427174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A42723A4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A42717B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A42723A4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4271814(uint64_t a1)
{
  sub_1A42723A4();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A427183C(void *a1, void *a2)
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v15 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v14);
  v13[3] = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v8 = sub_1A524C634();
  v9 = [a2 photoLibrary];
  v10 = [v6 transientCollectionListWithCollections:v7 title:v8 identifier:0 photoLibrary:v9];

  sub_1A4271F6C(0, &qword_1EB129F78, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
  v12 = v10;
  v13[2] = v12;
  v13[1] = a2;
  sub_1A43FD8EC();
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v12, 0, v18, &v16, v17, sub_1A4272998, v11);
}

uint64_t sub_1A4271D60(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  SearchResultItem.value.getter(&v12);
  v4 = v12;
  if (v12)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for PeopleUnifiedItem();
      v7 = v4;
      v8 = sub_1A3C5A374();
      v9 = sub_1A44B6B34(v6, v8 & 1);
      v11 = v2;
      sub_1A3D8EB48(&v11, v3, v9, 0, 0x10000);
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

double sub_1A4271E7C@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

void sub_1A4271E88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchResultItemListManager(255);
    v7 = sub_1A4271F24(&qword_1EB129A78, type metadata accessor for SearchResultItemListManager, &protocol conformance descriptor for SearchResultItemListManager);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4271F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4271F6C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4271FD4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4271F6C(255, a2, &qword_1EB1265C0, 0x1E6978980, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A427202C()
{
  result = qword_1EB1365E8;
  if (!qword_1EB1365E8)
  {
    sub_1A4271F6C(255, &qword_1EB1365E0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1365E8);
  }

  return result;
}

unint64_t sub_1A42720B0()
{
  result = qword_1EB1365F0;
  if (!qword_1EB1365F0)
  {
    sub_1A4271F6C(255, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1365F0);
  }

  return result;
}

unint64_t sub_1A4272134()
{
  result = qword_1EB1365F8;
  if (!qword_1EB1365F8)
  {
    sub_1A4271F6C(255, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1365F8);
  }

  return result;
}

unint64_t sub_1A42721F4()
{
  result = qword_1EB136600;
  if (!qword_1EB136600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136600);
  }

  return result;
}

unint64_t sub_1A427224C()
{
  result = qword_1EB12AEC8;
  if (!qword_1EB12AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AEC8);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A42722F8(uint64_t *a1, int a2)
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

uint64_t sub_1A4272340(uint64_t result, int a2, int a3)
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

unint64_t sub_1A42723A4()
{
  result = qword_1EB136608;
  if (!qword_1EB136608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136608);
  }

  return result;
}

id sub_1A42723F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = objc_opt_self();
  sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F8E10;
  v6 = [v3 localIdentifier];
  v7 = sub_1A524C674();
  v9 = v8;

  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = sub_1A524CA14();

  sub_1A4271F6C(0, &qword_1EB12A010, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v11 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v12 = [v4 fetchSocialGroupsWithLocalIdentifiers:v10 options:v11];

  return v12;
}

id sub_1A4272534()
{
  v1 = *(v0 + 16);
  sub_1A4271F6C(0, &qword_1EB129FE8, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v2 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  [v2 copy];

  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A3C52C70(0, &unk_1EB126C00, 0x1E6978830);
  swift_dynamicCast();
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  [v1 detectionType];
  *(v3 + 32) = sub_1A524EC34();
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v4 = sub_1A524CA14();

  [v14 setIncludedDetectionTypes_];

  v5 = objc_opt_self();
  sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  v7 = [v1 localIdentifier];
  v8 = sub_1A524C674();
  v10 = v9;

  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = sub_1A524CA14();

  v12 = [v5 fetchPersonsWithLocalIdentifiers:v11 options:v14];

  return v12;
}

uint64_t sub_1A4272774()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1A42714A8(AssociatedTypeWitness);
  if (result)
  {
    v6 = result;
    v8 = v1;
    v7 = sub_1A3C6E9EC();
    sub_1A3D8EB48(&v8, v3, v6, v2, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A427286C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))(a1, v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80)), AssociatedTypeWitness);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, AssociatedTypeWitness);
}

void *sub_1A4272998()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1A42729C0(void *a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 40);
  }

  else
  {
    v4 = *(v1 + 16);
    v6 = *(v1 + 56);
    v5 = *(v1 + 64);
    if (!v4)
    {
      v10 = *(v1 + 8);
      v12 = *(v1 + 24);
      v11 = *(v1 + 32);
      v13 = *(v1 + 48);
      v45[0] = *v1;
      v45[1] = v10;
      v45[2] = 0;
      v46 = v12;
      v47 = v11;
      v48 = 0;
      v49 = v13;
      v50 = v6;
      v43 = v6;
      v51 = v5;
      v14 = *(v1 + 88);
      v52 = *(v1 + 72);
      v53 = v14;
      v15 = sub_1A48B4F68();
      v17 = v16;
      v18 = type metadata accessor for PhotosBarButtonItemTarget(v15, v16);
      v19 = objc_allocWithZone(v18);
      v20 = &v19[OBJC_IVAR____TtC12PhotosUICoreP33_2F41475DB669B278177E293B1734139625PhotosBarButtonItemTarget_primaryAction];
      *v20 = v15;
      v20[1] = v17;
      v44.receiver = v19;
      v44.super_class = v18;
      v21 = objc_msgSendSuper2(&v44, sel_init, v43);
      if (MEMORY[0x1A590D320]())
      {
        if (v11)
        {
          v46 = v18;
          v45[0] = v21;
          v22 = v21;
          v23 = sub_1A524C634();
          if (v18)
          {
            v24 = __swift_project_boxed_opaque_existential_1(v45, v18);
            v25 = *(v18 - 1);
            v26 = MEMORY[0x1EEE9AC00](v24);
            v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v25 + 16))(v28, v26);
            v29 = sub_1A524EA94();
            (*(v25 + 8))(v28, v18);
            __swift_destroy_boxed_opaque_existential_0(v45);
          }

          else
          {
            v29 = 0;
          }

          v34 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v23 style:0 target:v29 action:sel_performPrimaryAction_];

          swift_unknownObjectRelease();
        }

        else
        {
          v32 = sub_1A524C634();
          v33 = [objc_opt_self() _systemImageNamed_];

          v34 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v33 style:0 target:v21 action:sel_performPrimaryAction_];
        }

        v36 = v34;
        if (v5)
        {
          v37 = sub_1A524C634();
        }

        else
        {
          v37 = 0;
        }

        [v34 setAccessibilityIdentifier_];
      }

      else
      {
        if (v11)
        {
          v30 = sub_1A524C634();
          v31 = v21;
          if (v5)
          {
            v5 = sub_1A524C634();
          }

          v38 = [a1 createBarButtonItemWithTitle:v30 target:v21 action:sel_performPrimaryAction_ menuAction:0 accessibilityIdentifier:v5];
        }

        else
        {
          v30 = sub_1A524C634();
          v35 = v21;
          if (v5)
          {
            v5 = sub_1A524C634();
          }

          v38 = [a1 createBarButtonItemWithSystemIconName:v30 target:v21 action:sel_performPrimaryAction_ menuAction:0 accessibilityIdentifier:v5];
        }

        v39 = v38;

        v40 = v39;
      }

      if (qword_1EB191AC0 != -1)
      {
        swift_once();
      }

      sub_1A5246664();
    }

    v7 = v4;
    if (v5)
    {
      v8 = sub_1A524C634();
    }

    else
    {
      v8 = 0;
    }

    [v4 setAccessibilityIdentifier_];

    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
  }

  v41 = v2;
  return v3;
}

id sub_1A4272F84(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosBarButtonItemTarget(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A42730CC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A427312C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget_widgetInteractionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A4273264(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A42733A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1C0))(a2);
  }
}

void (*sub_1A4273434(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A427347C;
}

void sub_1A427347C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A4273264(v3);
  }

  else
  {
    sub_1A4273264(v2);
  }
}

id sub_1A42734E4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel(0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = sub_1A49449FC(v9, v10, v11);
  v13 = *((*v7 & *v2) + 0xE0);
  v14 = v12;
  v13(v12);
  sub_1A427367C(0);
  v15 = v14;
  sub_1A412D028(v6);
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v16;
}

void sub_1A427367C(uint64_t a1)
{
  if (!qword_1EB136630)
  {
    v2 = type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView(255);
    v3 = sub_1A4273B60(&qword_1EB132EB0, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetView, &unk_1A531CDEC);
    v5 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB136630);
    }
  }
}

void sub_1A427382C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  if (v2)
  {
    v8 = v2;
    type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel(0);
    if (swift_dynamicCastClass())
    {
      v3 = (*((*v1 & *v0) + 0x78))();
      if (v3)
      {
        v4 = v3;
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *(v5 + 24) = v0;
        aBlock[4] = sub_1A4273BA8;
        aBlock[5] = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_137;
        v6 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v7 = v0;

        [v4 widget:v7 animateChanges:v6 withAnimationOptions:0];
        _Block_release(v6);
        swift_unknownObjectRelease();
      }

      sub_1A4273B60(&qword_1EB136640, type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel, &unk_1A533DFE8);
      sub_1A52478D4();
      sub_1A5247964();
    }

    else
    {
    }
  }
}

uint64_t sub_1A4273AA0()
{
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore33PhotosDetailsKnowledgeGraphWidget_widgetInteractionDelegate);

  return swift_unknownObjectRelease();
}

id sub_1A4273AE0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosDetailsKnowledgeGraphWidget(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A4273B60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A4273BA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 widgetPreferredContentHeightForWidthDidChange_];

  return [v1 widgetHasLoadedContentDataDidChange_];
}

double PhotosComposedObservable<>.signalWillChange()()
{
  sub_1A52478C4();
  sub_1A5247964();

  return result;
}

uint64_t sub_1A4273C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[0] = a5;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  v23[4] = a10;
  v16 = type metadata accessor for LemonadeAlbumGridCell(0, v23);
  v17 = a9 + v16[17];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a9 + v16[18];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  (*(*(a5 - 8) + 32))(a9, a1, a5);
  v19 = v16[15];
  sub_1A52430A4();
  v20 = sub_1A524DF24();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a2, v20);
  v22 = (a9 + v16[16]);
  *v22 = a3;
  v22[1] = a4;
  return result;
}

uint64_t sub_1A4273DDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v216 = a2;
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v194 = v3;
  v184 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v193 = &v175 - v4;
  v219 = a1;
  v5 = *--a1;
  v190 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v188 = v7;
  v198 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_1A5243B94();
  v191 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v207 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[6];
  *&v233 = MEMORY[0x1E6981E70];
  *(&v233 + 1) = v9;
  *&v234 = MEMORY[0x1E6981E60];
  *(&v234 + 1) = v10;
  v11 = type metadata accessor for LemonadeMaterialTitleCell(0, &v233);
  v196 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v178 = &v175 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v195 = &v175 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v175 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v192 = &v175 - v20;
  v21 = sub_1A52430A4();
  v22 = sub_1A524DF24();
  v180 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v175 - v23;
  v208 = v21;
  v218 = *(v21 - 8);
  v25 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v175 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v197 = &v175 - v28;
  v209 = v10;
  v30 = type metadata accessor for LemonadeFolderMaterialTitleCell(255, v9, v10, v29);
  v31 = sub_1A5249754();
  v201 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v200 = &v175 - v32;
  sub_1A427677C(0, &unk_1EB129180, MEMORY[0x1E69C2060]);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v186 = &v175 - v34;
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v181 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v182 = &v175 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v185 = &v175 - v41;
  v213 = v30;
  v189 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v187 = &v175 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v206 = &v175 - v45;
  v179 = sub_1A5249234();
  v46 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v48 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1A5243284();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v183 = &v175 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v202 = &v175 - v51;
  v214 = v31;
  v52 = v203;
  v215 = v11;
  v212 = sub_1A5249754();
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v210 = &v175 - v53;
  v54 = a1[5];
  v55 = sub_1A5243D14();
  v217 = v9;
  if (v55)
  {
    v218 = v35;
    v56 = *(v54 + 8);
    *&v223 = sub_1A5241E54();
    v208 = v56;
    swift_getAssociatedTypeWitness();
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524D084();
    v223 = v233;
    v224 = v234;
    sub_1A524E0F4();
    swift_getWitnessTable();
    sub_1A524CB84();
    v57 = v219;
    v58 = v52 + *(v219 + 17);
    v59 = *v58;
    if (*(v58 + 8) == 1)
    {
      if (v59)
      {
LABEL_4:
        v60 = MEMORY[0x1E69C23D0];
        v61 = v218;
        goto LABEL_16;
      }
    }

    else
    {

      v104 = sub_1A524D254();
      v105 = sub_1A524A014();
      sub_1A5246DF4(v104, &dword_1A3C1C000, v105, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v59, 0);
      (*(v46 + 8))(v48, v179);
      if (v233)
      {
        goto LABEL_4;
      }
    }

    v106 = v52 + *(v57 + 18);
    v107 = *v106;
    if (*(v106 + 8) == 1)
    {
      v222 = *v106;
    }

    else
    {

      v153 = sub_1A524D254();
      v154 = sub_1A524A014();
      sub_1A5246DF4(v153, &dword_1A3C1C000, v154, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v107, 0);
      (*(v46 + 8))(v48, v179);
      LOBYTE(v107) = v222;
    }

    v221 = v107;
    v220 = 0;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    v61 = v218;
    if (v233 == v223)
    {

      v60 = MEMORY[0x1E69C23E0];
    }

    else
    {
      v155 = sub_1A524EAB4();

      v60 = MEMORY[0x1E69C23D8];
      if (v155)
      {
        v60 = MEMORY[0x1E69C23E0];
      }
    }

LABEL_16:
    v156 = v204;
    v157 = v202;
    v158 = v205;
    (*(v204 + 104))(v202, *v60, v205);
    v159 = v185;
    v160 = v217;
    (*(v61 + 16))(v185, v52, v217);
    sub_1A3D435C4();
    v161 = sub_1A524E614();

    v162 = v183;
    (*(v156 + 16))(v183, v157, v158);
    v163 = sub_1A52429A4();
    v164 = v186;
    (*(*(v163 - 8) + 56))(v186, 1, 1, v163);
    v165 = sub_1A5241E34();
    v167 = v166;
    v168 = v209;
    v169 = sub_1A43CAF68(v160);
    LemonadeFolderMaterialTitleCell.init(_:_:aspectRatio:specs:backgroundColor:placeholderBackgroundColor:title:)(v159, v161, v162, v169, v164, v165, v167, v160, v187, 1.0, v168);
  }

  v62 = v180;
  (*(v180 + 16))(v24, v52 + *(v219 + 15), v22);
  v63 = (v35 + 16);
  if ((*(v218 + 48))(v24, 1, v208) == 1)
  {
    (*(v62 + 8))(v24, v22);
    (*v63)(v181, v52, v9);
    v218 = sub_1A5241E34();
    v208 = v64;
    v65 = v9;
    sub_1A5241E44();
    v206 = v233;
    sub_1A4244368(0);
    v66 = (*(v184 + 80) + 32) & ~*(v184 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1A52F8E10;
    v68 = v52;
    v205 = v67 + v66;
    v69 = v191;
    v70 = v199;
    (*(v191 + 104))(v207, *MEMORY[0x1E69C2800], v199);
    v71 = v190;
    v72 = v198;
    v73 = v219;
    (*(v190 + 16))(v198, v68, v219);
    v74 = (*(v71 + 80) + 56) & ~*(v71 + 80);
    v75 = swift_allocObject();
    v76 = v73[3];
    *(v75 + 2) = v65;
    *(v75 + 3) = v76;
    v77 = v209;
    *(v75 + 4) = v54;
    *(v75 + 5) = v77;
    *(v75 + 6) = v73[6];
    (*(v71 + 32))(&v75[v74], v72, v73);
    v78 = *(v69 + 32);
    v79 = v193;
    v78(v193, v207, v70);
    v80 = v205;
    v78(v205, v79, v70);
    v81 = (v80 + *(v194 + 48));
    v82 = swift_allocObject();
    *(v82 + 16) = sub_1A4276004;
    *(v82 + 24) = v75;
    *v81 = sub_1A4244548;
    v81[1] = v82;
    v83 = sub_1A42762E8(v67);
    swift_setDeallocating();
    sub_1A42767D0(v80, &qword_1EB124D00, sub_1A3C3637C, sub_1A4275F8C);
    swift_deallocClassInstance();
    v84 = MEMORY[0x1E6981E70];
    v85 = v217;
    v86 = MEMORY[0x1E6981E60];
    v87 = sub_1A41F7694();
    LOBYTE(v67) = sub_1A3C5A374();
    v88 = sub_1A43C9BB4();
    v90 = v89;
    v91 = swift_allocObject();
    *(v91 + 16) = v88;
    *(v91 + 24) = v90;
    v92 = v176;
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v181, 0, 0, v218, v208, v206, v67 & 1, sub_1A3F8B548, v176, v87, v91, v83, v84, v85, v86, v77);
    v93 = v215;
    WitnessTable = swift_getWitnessTable();
    v95 = v196;
    v96 = *(v196 + 16);
    v97 = v178;
    v96(v178, v92, v93);
    v98 = *(v95 + 8);
    v98(v92, v93);
    v99 = v195;
    v96(v195, v97, v93);
    v231 = swift_getWitnessTable();
    v232 = WitnessTable;
    v100 = WitnessTable;
    v101 = v214;
    v102 = swift_getWitnessTable();
    v103 = v210;
    sub_1A3DF4890(v99, v101, v93, v102, v100);
    v98(v99, v93);
    v98(v97, v93);
  }

  else
  {
    v108 = *(v218 + 32);
    v189 = v218 + 32;
    v202 = v108;
    v109 = v24;
    v110 = v208;
    (v108)(v197, v109, v208);
    (*v63)(v182, v52, v9);
    v206 = sub_1A5241E34();
    v205 = v111;
    sub_1A5241E44();
    v204 = v233;
    sub_1A4244368(0);
    v112 = (*(v184 + 80) + 32) & ~*(v184 + 80);
    v113 = swift_allocObject();
    v187 = v113;
    *(v113 + 16) = xmmword_1A52F8E10;
    v186 = (v113 + v112);
    v114 = v191;
    (*(v191 + 104))(v207, *MEMORY[0x1E69C2810], v199);
    v115 = v190;
    v116 = v219;
    (*(v190 + 16))(v198, v52, v219);
    v117 = v218;
    v118 = v175;
    v119 = v110;
    (*(v218 + 16))(v175, v197, v110);
    v120 = (*(v115 + 80) + 56) & ~*(v115 + 80);
    v121 = (v188 + v120 + *(v117 + 80)) & ~*(v117 + 80);
    v122 = swift_allocObject();
    v123 = v116[3];
    *(v122 + 2) = v217;
    *(v122 + 3) = v123;
    v124 = v209;
    *(v122 + 4) = v54;
    *(v122 + 5) = v124;
    *(v122 + 6) = v116[6];
    (*(v115 + 32))(&v122[v120], v198, v116);
    (v202)(&v122[v121], v118, v119);
    v125 = *(v114 + 32);
    v126 = v193;
    v127 = v199;
    v125(v193, v207, v199);
    v128 = v186;
    v125(v186, v126, v127);
    v129 = (v128 + *(v194 + 48));
    v130 = swift_allocObject();
    *(v130 + 16) = sub_1A42764C0;
    *(v130 + 24) = v122;
    *v129 = sub_1A4276874;
    v129[1] = v130;
    v131 = sub_1A42762E8(v187);
    swift_setDeallocating();
    sub_1A42767D0(v128, &qword_1EB124D00, sub_1A3C3637C, sub_1A4275F8C);
    swift_deallocClassInstance();
    v132 = MEMORY[0x1E6981E70];
    v133 = v217;
    v134 = MEMORY[0x1E6981E60];
    v135 = sub_1A41F7694();
    LOBYTE(v127) = sub_1A3C5A374();
    v136 = sub_1A43C9BB4();
    v138 = v137;
    v139 = swift_allocObject();
    *(v139 + 16) = v136;
    *(v139 + 24) = v138;
    v140 = v177;
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(v182, 0, 0, v206, v205, v204, v127 & 1, sub_1A4276878, v177, v135, v139, v131, v132, v133, v134, v124);
    v141 = v215;
    v142 = swift_getWitnessTable();
    v143 = v196;
    v144 = *(v196 + 16);
    v145 = v192;
    v144(v192, v140, v141);
    v146 = *(v143 + 8);
    v146(v140, v141);
    v147 = v195;
    v144(v195, v145, v141);
    v148 = v213;
    v149 = swift_getWitnessTable();
    v150 = v200;
    sub_1A3DF4890(v147, v148, v141, v149, v142);
    v225 = v149;
    v226 = v142;
    v151 = v214;
    v152 = swift_getWitnessTable();
    v103 = v210;
    sub_1A3DF4798(v150, v151, v141, v152, v142);
    (*(v201 + 8))(v150, v151);
    v146(v147, v141);
    v146(v192, v141);
    (*(v218 + 8))(v197, v208);
  }

  v170 = swift_getWitnessTable();
  v171 = swift_getWitnessTable();
  v229 = v170;
  v230 = v171;
  v227 = swift_getWitnessTable();
  v228 = v171;
  v172 = v212;
  swift_getWitnessTable();
  v173 = v211;
  (*(v211 + 16))(v216, v103, v172);
  return (*(v173 + 8))(v103, v172);
}

uint64_t sub_1A427586C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v36 = a4;
  v37 = a1;
  v5 = sub_1A52430A4();
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = MEMORY[0x1E69C1D20];
  v40 = v34 - v6;
  sub_1A427677C(0, &qword_1EB124F80, MEMORY[0x1E69C1D20]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v34 - v8;
  v38 = MEMORY[0x1E69C1D18];
  sub_1A427677C(0, &qword_1EB136648, MEMORY[0x1E69C1D18]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v34 - v11;
  v35 = sub_1A5242224();
  v13 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5242234();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[1] = a3;
  v21 = sub_1A5242304();
  v44 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v34 - v22;
  v45 = sub_1A5248804();
  v24 = MEMORY[0x1EEE9AC00](v45);
  v41 = v34 - v25;
  (*(v17 + 16))(v20, v37, a3, v24);
  v26 = v35;
  (*(v13 + 104))(v15, *MEMORY[0x1E69C1D30], v35);
  v27 = sub_1A52421B4();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v28 = sub_1A52421C4();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  sub_1A52421E4();
  sub_1A42767D0(v9, &qword_1EB124F80, v39, sub_1A427677C);
  sub_1A42767D0(v12, &qword_1EB136648, v38, sub_1A427677C);
  (*(v13 + 8))(v15, v26);
  (*(v42 + 16))(v40, v46, v43);
  sub_1A52422F4();
  sub_1A3C75480(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v30 = sub_1A524A0B4();
  *(inited + 32) = v30;
  v31 = sub_1A524A084();
  *(inited + 33) = v31;
  sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v30)
  {
    sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v31)
  {
    sub_1A524A0A4();
  }

  WitnessTable = swift_getWitnessTable();
  sub_1A524B0D4();
  (*(v44 + 8))(v23, v21);
  v47 = WitnessTable;
  v48 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  return sub_1A524B8E4();
}

uint64_t sub_1A4275EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1EEE9AC00](a1);
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v12 = *(a1 + *(type metadata accessor for LemonadeAlbumGridCell(0, v14) + 64));
  LOBYTE(v14[0]) = 1;
  v12(v14);
  return sub_1A524B8E4();
}

void sub_1A4275F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A5243B94();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A4276004()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v9[0] = v0[2];
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v6 = *(type metadata accessor for LemonadeAlbumGridCell(0, v9) - 8);
  v7 = v0 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return sub_1A4275EC8(v7, v1, v2, v3, v4, v5);
}

unint64_t sub_1A42760B8(uint64_t a1)
{
  sub_1A5243B94();
  sub_1A4276830(&qword_1EB124D20, MEMORY[0x1E69C2820]);
  v2 = sub_1A524C4A4();

  return sub_1A427613C(a1, v2);
}

unint64_t sub_1A427613C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5243B94();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A4276830(&qword_1EB1398F0, MEMORY[0x1E69C2828]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1A42762E8(uint64_t a1)
{
  sub_1A4275F8C(0, &qword_1EB124D00, sub_1A3C3637C);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A3D71220(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A4217CF0(v10, v6);
      result = sub_1A42760B8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5243B94();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A42764C0()
{
  v1 = *(v0 + 32);
  v10 = *(v0 + 16);
  v9 = v10;
  v11 = v1;
  v12 = *(v0 + 40);
  v8 = v12;
  v2 = *(type metadata accessor for LemonadeAlbumGridCell(0, &v10) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_1A52430A4() - 8);
  v6 = v0 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_1A427586C(v0 + v3, v6, v9, v8);
}

void sub_1A4276628(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A52430A4();
    sub_1A524DF24();
    if (v2 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v3 <= 0x3F)
      {
        sub_1A3C75480(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A3C75480(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A427677C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A42767D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A4276830(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A5243B94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A427687C()
{
  sub_1A42768B8();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A42768B8()
{
  result = qword_1EB15AC20[0];
  if (!qword_1EB15AC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AC20);
  }

  return result;
}

void sub_1A427690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1A4276A50(0);
  sub_1A524A824();
}

void *sub_1A42769A0@<X0>(void *a1@<X8>)
{
  sub_1A42768B8();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A42769F0(uint64_t *a1)
{
  sub_1A42768B8();

  return sub_1A5249254();
}

void sub_1A4276A50(uint64_t a1)
{
  if (!qword_1EB136650)
  {
    sub_1A5249234();
    sub_1A4276AB8(255);
    v1 = sub_1A524E604();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB136650);
    }
  }
}

void sub_1A4276AB8(uint64_t a1)
{
  if (!qword_1EB136658)
  {
    sub_1A5245A94();
  }
}

id sub_1A4276B20()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList);

  return v1;
}

id sub_1A4276BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList);
  *a2 = v4;

  return v4;
}

uint64_t type metadata accessor for SharedAlbumsActivityEntryItemListManager(uint64_t a1)
{
  result = qword_1EB178080;
  if (!qword_1EB178080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A427710C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  return *(v2 + *a2);
}

void sub_1A42771C0(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  *a4 = *(v6 + *a3);
}

void sub_1A42772C0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
    sub_1A52415C4();
  }
}

id sub_1A42773DC()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v1 = *(*(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList) + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if (v1 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_1A4277508()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v1 = *(*(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList) + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v1 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return *(v1 + 8 * v3 + 32);
      }

      __break(1u);
      return result;
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1A42776DC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42777A8(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4277A0C(void *a1, uint64_t a2, int a3, int a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = a6;
  v16 = a5;
  v13 = a4;
  v14 = a3;
  v17 = a2;
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12[3] = v12 - v10;
  v18 = sub_1A5246F24();
  v12[5] = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v15 = v12 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245EC4();
}

uint64_t sub_1A427815C(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  sub_1A3C5DAA4(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A427FDB0(v6, a1);
  sub_1A3C42C50(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
    sub_1A52415C4();
  }

  else
  {
    swift_beginAccess();
    sub_1A4280C7C(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_1A3C42C50(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

double sub_1A4278378(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A4278484(int a1)
{
  LODWORD(v10) = a1;
  v1 = sub_1A524BEE4();
  v8 = *(v1 - 8);
  v9 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v6[8] = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v6[7] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v6[6] = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4);
  v6[4] = v6 - v5;
  sub_1A5245EC4();
}

void sub_1A4278D88()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  if (!*(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___lastSeenNotificationObserver))
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = [objc_opt_self() mainQueue];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A4280B88;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C7C848;
    aBlock[3] = &block_descriptor_42_1;
    v5 = _Block_copy(aBlock);

    [v2 addObserverForName:@"PXSharedAlbumsActivityLastSeenDateChangeNotification" object:0 queue:v3 usingBlock:v5];
    _Block_release(v5);

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v1;
    sub_1A52415C4();

    swift_unknownObjectRelease();
  }
}

double sub_1A4278FF0(uint64_t a1)
{
  sub_1A3C7D074(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;

  sub_1A3D4D930(0, 0, v3, &unk_1A5329EF0, v8);

  return result;
}

uint64_t sub_1A4279190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A5246F24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4279284, v7, v6);
}

uint64_t sub_1A4279284()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = sub_1A45318CC();
    (*(v4 + 16))(v3, v6, v5);
    v7 = v2;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D224();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    if (v10)
    {
      v14 = swift_slowAlloc();
      swift_slowAlloc();
      *v14 = 136446210;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    (*(v11 + 8))(v12, v13);
    sub_1A4278484(0);
  }

  v15 = v0[1];

  return v15();
}

void sub_1A42794F8()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_reverseSortOrder) == 1)
  {
    swift_getKeyPath();
    v20[0] = v0;
    sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
    sub_1A52415D4();

    v9 = *(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__canFetchMoreItems);
    v10 = sub_1A45318CC();
    v11 = *(v3 + 16);
    if (v9 == 1)
    {
      v11(v8, v10, v2);
      v12 = v1;
      v13 = sub_1A5246F04();
      v14 = sub_1A524D264();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v15 = 136446466;
        sub_1A3C2EF94(*&v12[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_logIdentifier], *&v12[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_logIdentifier + 8], &v21);
      }

      (*(v3 + 8))(v8, v2);
      sub_1A4278484(1);
    }

    v11(v5, v10, v2);
    v16 = v1;
    v17 = sub_1A5246F04();
    v18 = sub_1A524D264();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v19 = 136446210;
      sub_1A3C2EF94(*&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_logIdentifier], *&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_logIdentifier + 8], v20);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A42798D8()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF44();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4280BF0(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C7D074(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9ADB4(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1780B8 = result;
  return result;
}

uint64_t sub_1A4279B5C()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4280BF0(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C7D074(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9ADB4(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB15DC68 = result;
  return result;
}

uint64_t sub_1A4279DE0()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit);
}

void sub_1A4279E88(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit);
}

char *sub_1A4279F60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v41 = a2;
  v14 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v37 = v8;
    v38 = v6;
    v39 = v7;
    v40 = v4;
    v17 = *(**&result[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_sharedAlbumsAvailabilityObserver] + 136);

    v19 = v17(v18);

    v20 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v36 = v3;
      v22 = [*&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_photoLibrary] px_standardLibrarySpecificFetchOptions];
      [v22 setReverseSortOrder_];
      swift_getKeyPath();
      aBlock[0] = v16;
      sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
      sub_1A52415D4();

      v23 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit;
      if (*&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__batchFetchLimit] >= 1)
      {
        swift_getKeyPath();
        aBlock[0] = v16;
        sub_1A52415D4();

        [v22 setFetchLimit_];
      }

      swift_beginAccess();
      sub_1A3C5DAA4(v14, v13, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v24 = sub_1A5241144();
      v25 = *(v24 - 8);
      v26 = 0;
      if ((*(v25 + 48))(v13, 1, v24) != 1)
      {
        v26 = sub_1A5241074();
        (*(v25 + 8))(v13, v24);
      }

      v27 = [objc_opt_self() fetchRecentActivitiesWithOptions:v22 olderThanDate:v26 filter:*&v16[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_filter]];

      v28 = [v27 fetchedObjects];
      v3 = v36;
      v20 = MEMORY[0x1E69E7CC0];
      if (v28)
      {
        v29 = v28;
        sub_1A3C52C70(0, &qword_1EB126820, off_1E771F6B0);
        v21 = sub_1A524CA34();

        v22 = v27;
        v27 = v29;
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }
    }

    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v30 = sub_1A524D474();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v21;
    v32[4] = v41;
    aBlock[4] = sub_1A4280B68;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_32_1;
    v33 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = v20;
    sub_1A4280BF0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v34 = MEMORY[0x1E69E7F60];
    sub_1A3C7D074(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9ADB4(&qword_1EB12B1B0, &qword_1EB12B1C0, v34);
    v35 = v38;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v10, v35, v33);
    _Block_release(v33);

    (*(v40 + 8))(v35, v3);
    return (*(v37 + 8))(v10, v39);
  }

  return result;
}

void sub_1A427A614(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2 >> 62)
    {
      if (sub_1A524E2B4())
      {
        goto LABEL_11;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    v14 = sub_1A45318CC();
    (*(v8 + 16))(v10, v14, v7);
    v15 = v13;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v17;
      v19 = v18;
      v25 = swift_slowAlloc();
      v28 = v25;
      *v19 = 136446210;
      v24[2] = v16;
      v27 = v15;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    (*(v8 + 8))(v10, v7);
    if (*(v15 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__canFetchMoreItems))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v24[-2] = v15;
      LOBYTE(v24[-1]) = 0;
      v28 = v15;
      sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
      sub_1A52415C4();
    }

    else
    {
      *(v15 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__canFetchMoreItems) = 0;
    }

LABEL_11:
    swift_beginAccess();
    v21 = MEMORY[0x1E6969530];
    sub_1A3C5DAA4(v11, v6, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v22 = sub_1A5241144();
    v23 = (*(*(v22 - 8) + 48))(v6, 1, v22) != 1;
    sub_1A3C42C50(v6, &qword_1EB12AFE0, v21);
    sub_1A427AB54(a2, v23);
  }
}

uint64_t sub_1A427BC70@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  return sub_1A3C5DAA4(v5 + v3, a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

BOOL sub_1A427BD54(id *a1)
{
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 date];
  sub_1A52410F4();

  v8 = sub_1A5241074();
  (*(v3 + 8))(v6, v2);
  v9 = sub_1A5241074();
  IsUnread = PXSharedAlbumsActivityDateIsUnread(v8, v9);

  return IsUnread;
}

uint64_t sub_1A427BE78(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = a3;
  v20 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v9 = 0;
    v17 = v5 & 0xFFFFFFFFFFFFFF8;
    v18 = v5 & 0xC000000000000001;
    v16 = v5;
    while (1)
    {
      if (v18)
      {
        v10 = MEMORY[0x1A59097F0](v9, v5, a4);
      }

      else
      {
        if (v9 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v19 = v10;
      v13 = a2;
      v14 = a1(&v19);
      if (v4)
      {

        return v13;
      }

      if (v14)
      {
        sub_1A524E514();
        sub_1A524E564();
        v5 = v16;
        sub_1A524E574();
        sub_1A524E524();
      }

      else
      {
      }

      ++v9;
      if (v12 == i)
      {
        v13 = v20;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v13;
}

uint64_t sub_1A427C024(void **a1, void **a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = [v12 type];
  v15 = [v13 type];
  if ((v14 == 5) == (v15 == 5))
  {
    v18 = [v12 date];
    sub_1A52410F4();

    v19 = [v13 date];
    sub_1A52410F4();

    v17 = sub_1A5241084();
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v11, v4);
  }

  else
  {
    v17 = v14 == 5 && v15 != 5;
  }

  return v17 & 1;
}

void sub_1A427C1E0(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1A3E2AE98(v2, v3);
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v4;
  sub_1A427D890(v5);
  *a1 = v2;
}

void sub_1A427C2B8(void *a1)
{
  v1 = [a1 insertedObjectIDs];
  sub_1A3C52C70(0, &qword_1EB126AF0, 0x1E695D630);
  sub_1A3C3A220(&qword_1EB126AE0, &qword_1EB126AF0, 0x1E695D630, MEMORY[0x1E69E81B8]);
  sub_1A524CF44();

  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A427C878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  return sub_1A3C5DAA4(v3 + v4, a2, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A427C95C(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1A3C5DAA4(a1, &v7 - v4, &qword_1EB12AFE0, v2);
  return sub_1A427815C(v5);
}

uint64_t sub_1A427CA2C()
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A427CAD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___lastSeenNotificationObserver);
  return swift_unknownObjectRetain();
}

double sub_1A427CB8C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415C4();

  return result;
}

uint64_t sub_1A427CC58()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E99834(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1E6969530];
  sub_1A3C7D074(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = sub_1A5241144();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = PXSharedAlbumsActivityLastSeenDate();
  sub_1A52410F4();

  swift_getKeyPath();
  v57[1] = v1;
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v22 = OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager___cachedLastSeenUnreadDate;
  swift_beginAccess();
  v23 = v16[2];
  v56 = v20;
  v48 = v23;
  v23(v14, v20, v15);
  v47 = v16[7];
  v47(v14, 0, 1, v15);
  v24 = *(v5 + 56);
  v25 = v1 + v22;
  v26 = v16;
  v27 = v54;
  sub_1A3C5DAA4(v25, v7, &qword_1EB12AFE0, v54);
  sub_1A3C5DAA4(v14, &v7[v24], &qword_1EB12AFE0, v27);
  v28 = v16[6];
  if (v28(v7, 1, v15) != 1)
  {
    sub_1A3C5DAA4(v7, v55, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v28(&v7[v24], 1, v15) != 1)
    {
      v41 = v46;
      (v26[4])(v46, &v7[v24], v15);
      sub_1A4280BF0(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v42 = v55;
      LODWORD(v54) = sub_1A524C594();
      v43 = v26[1];
      v43(v41, v15);
      v44 = MEMORY[0x1E6969530];
      sub_1A3C42C50(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v43(v42, v15);
      sub_1A3C42C50(v7, &qword_1EB12AFE0, v44);
      if (v54)
      {
        return (v26[1])(v56, v15);
      }

LABEL_7:
      v29 = v50;
      v48(v50, v56, v15);
      v47(v29, 0, 1, v15);
      v30 = v29;
      v31 = v49;
      sub_1A427815C(v30);
      v32 = sub_1A45318CC();
      v34 = v51;
      v33 = v52;
      v35 = v53;
      (*(v52 + 16))(v51, v32, v53);
      v36 = v31;
      v37 = sub_1A5246F04();
      v38 = sub_1A524D224();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        *v39 = 136446210;
        sub_1A3C2EF94(*&v36[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_logIdentifier], *&v36[OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_logIdentifier + 8], v57);
      }

      (*(v33 + 8))(v34, v35);
      sub_1A4278484(0);
    }

    sub_1A3C42C50(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    (v26[1])(v55, v15);
LABEL_6:
    sub_1A402E2B4(v7);
    goto LABEL_7;
  }

  sub_1A3C42C50(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  if (v28(&v7[v24], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_1A3C42C50(v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  return (v26[1])(v56, v15);
}

id sub_1A427D50C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager_observable);
  *a1 = v2;
  return v2;
}

id sub_1A427D524@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A4280BF0(&qword_1EB129418, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329D88);
  sub_1A52415D4();

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore40SharedAlbumsActivityEntryItemListManager__itemList);
  *a1 = v3;

  return v3;
}

double sub_1A427D5E4()
{
  swift_beginAccess();

  return result;
}

void sub_1A427D62C()
{
  swift_getObjectType();

    ;
  }
}

void sub_1A427D678()
{
  swift_getObjectType();

    ;
  }
}

void sub_1A427D6D0()
{
  swift_getObjectType();

  sub_1A5245974();
}

void sub_1A427D70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4280BF0(&qword_1EB129430, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329CA0);

  sub_1A5245C54();
}

void sub_1A427D7A0(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A427FC04(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1A427D890(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3C52C70(0, &qword_1EB126820, off_1E771F6B0);
        v6 = sub_1A524CAC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1A427DC14(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A427D9A4(0, v2, 1, a1);
  }
}

void sub_1A427D9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v33 = a2;
  if (a3 != a2)
  {
    v39 = *a4;
    v13 = (v10 + 8);
    v14 = v39 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v35 = v14;
    v36 = a3;
    v16 = *(v39 + 8 * a3);
    v34 = v15;
    while (1)
    {
      v17 = *v14;
      v18 = v16;
      v19 = v17;
      v20 = [v18 type];
      v21 = [v19 type];
      if ((v20 == 5) != (v21 == 5))
      {
        v22 = v21;

        if (v22 == 5 || v20 != 5)
        {
LABEL_4:
          a3 = v36 + 1;
          v14 = v35 + 8;
          v15 = v34 - 1;
          if (v36 + 1 == v33)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v24 = [v18 date];
        sub_1A52410F4();

        v25 = [v19 date];
        v26 = v37;
        sub_1A52410F4();

        LOBYTE(v25) = sub_1A5241084();
        v27 = *v13;
        v28 = v26;
        v29 = v38;
        (*v13)(v28, v38);
        v27(v12, v29);

        if ((v25 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v39)
      {
        break;
      }

      v30 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v30;
      v14 -= 8;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A427DC14(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v130 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v115 - v11;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v12 = *v120;
    if (!*v120)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_136:
      v14 = sub_1A3D86884(v14);
    }

    v133 = v14;
    v111 = *(v14 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v14[16 * v111];
        v113 = *&v14[16 * v111 + 24];
        sub_1A427E4FC((*a3 + 8 * v112), (*a3 + 8 * *&v14[16 * v111 + 16]), (*a3 + 8 * v113), v12);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v113 < v112)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A3D86884(v14);
        }

        if (v111 - 2 >= *(v14 + 2))
        {
          goto LABEL_130;
        }

        v114 = &v14[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v133 = v14;
        sub_1A3D867F8(v111 - 1);
        v14 = v133;
        v111 = *(v133 + 2);
        if (v111 <= 1)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_140;
    }

LABEL_113:

    return;
  }

  v119 = a4;
  v13 = 0;
  v127 = (v10 + 8);
  v14 = MEMORY[0x1E69E7CC0];
  v121 = a3;
  while (1)
  {
    v15 = v13;
    if (v13 + 1 >= v12)
    {
      v125 = v13 + 1;
    }

    else
    {
      v16 = *a3;
      v17 = *(*a3 + 8 * (v13 + 1));
      v18 = v13;
      v131 = *(*a3 + 8 * v13);
      v19 = v131;
      v132 = v17;
      v20 = v17;
      v21 = v19;
      LODWORD(v126) = sub_1A427C024(&v132, &v131);
      if (v5)
      {

        return;
      }

      v125 = v18 + 2;
      v15 = v18;
      if (v18 + 2 < v12)
      {
        v118 = v18;
        v22 = (v16 + 8 * v18 + 16);
        v124 = v12;
        do
        {
          v30 = *(v22 - 1);
          v31 = *v22;
          v32 = v30;
          v33 = [v31 type];
          v34 = [v32 type];
          if ((v33 == 5) != (v34 == 5))
          {
            v12 = v34;

            if (v33 == 5)
            {
              if (((v126 ^ (v12 == 5)) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else if (v126)
            {
              v15 = v118;
              goto LABEL_20;
            }
          }

          else
          {
            v23 = [v31 date];
            v24 = v128;
            sub_1A52410F4();

            v25 = [v32 date];
            v26 = v129;
            sub_1A52410F4();

            LODWORD(v123) = sub_1A5241084();
            v27 = *v127;
            v28 = v26;
            v12 = v130;
            (*v127)(v28, v130);
            v29 = v24;
            a3 = v121;
            v27(v29, v12);

            if ((v126 ^ v123))
            {
              goto LABEL_18;
            }
          }

          v12 = v124;
          ++v22;
          ++v125;
        }

        while (v124 != v125);
        v125 = v124;
LABEL_18:
        v15 = v118;
      }

      if (v126)
      {
LABEL_20:
        v35 = v125;
        if (v125 < v15)
        {
          goto LABEL_133;
        }

        if (v15 < v125)
        {
          v36 = 8 * v125 - 8;
          v37 = 8 * v15;
          v38 = v15;
          do
          {
            if (v38 != --v35)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v39 = *(v40 + v37);
              *(v40 + v37) = *(v40 + v36);
              *(v40 + v36) = v39;
            }

            ++v38;
            v36 -= 8;
            v37 += 8;
          }

          while (v38 < v35);
        }
      }
    }

    v41 = a3[1];
    if (v125 < v41)
    {
      if (__OFSUB__(v125, v15))
      {
        goto LABEL_132;
      }

      if (v125 - v15 < v119)
      {
        if (__OFADD__(v15, v119))
        {
          goto LABEL_134;
        }

        if (v15 + v119 >= v41)
        {
          v42 = a3[1];
        }

        else
        {
          v42 = v15 + v119;
        }

        if (v42 < v15)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v125 != v42)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v125 < v15)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1A3D8598C(0, *(v14 + 2) + 1, 1, v14);
    }

    v65 = *(v14 + 2);
    v64 = *(v14 + 3);
    v12 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v14 = sub_1A3D8598C((v64 > 1), v65 + 1, 1, v14);
    }

    *(v14 + 2) = v12;
    v66 = &v14[16 * v65];
    v67 = v125;
    *(v66 + 4) = v15;
    *(v66 + 5) = v67;
    v68 = *v120;
    if (!*v120)
    {
      goto LABEL_141;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v12 - 1;
        if (v12 >= 4)
        {
          break;
        }

        if (v12 == 3)
        {
          v70 = *(v14 + 4);
          v71 = *(v14 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_72:
          if (v73)
          {
            goto LABEL_120;
          }

          v86 = &v14[16 * v12];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_123;
          }

          v92 = &v14[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_127;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v12 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v96 = &v14[16 * v12];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_86:
        if (v91)
        {
          goto LABEL_122;
        }

        v99 = &v14[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_125;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_93:
        v107 = v69 - 1;
        if (v69 - 1 >= v12)
        {
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
LABEL_121:
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
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v108 = *&v14[16 * v107 + 32];
        v109 = *&v14[16 * v69 + 40];
        sub_1A427E4FC((*a3 + 8 * v108), (*a3 + 8 * *&v14[16 * v69 + 32]), (*a3 + 8 * v109), v68);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v109 < v108)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A3D86884(v14);
        }

        if (v107 >= *(v14 + 2))
        {
          goto LABEL_117;
        }

        v110 = &v14[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v133 = v14;
        sub_1A3D867F8(v69);
        v14 = v133;
        v12 = *(v133 + 2);
        if (v12 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v14[16 * v12 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_118;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_119;
      }

      v81 = &v14[16 * v12];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_121;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_124;
      }

      if (v85 >= v77)
      {
        v103 = &v14[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_128;
        }

        if (v72 < v106)
        {
          v69 = v12 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v12 = a3[1];
    v13 = v125;
    if (v125 >= v12)
    {
      goto LABEL_103;
    }
  }

  v116 = v14;
  v117 = v5;
  v43 = *a3;
  v44 = *a3 + 8 * v125 - 8;
  v118 = v15;
  v45 = v15 - v125;
  v46 = v125;
  v122 = v42;
  v126 = v43;
LABEL_39:
  v124 = v44;
  v125 = v46;
  v47 = *(v43 + 8 * v46);
  v123 = v45;
  v48 = v44;
  while (1)
  {
    v49 = *v48;
    v50 = v47;
    v12 = v49;
    v51 = [v50 type];
    v52 = [v12 type];
    if ((v51 == 5) != (v52 == 5))
    {
      v53 = v52;

      if (v53 == 5 || v51 != 5)
      {
LABEL_38:
        v46 = v125 + 1;
        v44 = v124 + 8;
        v45 = v123 - 1;
        if (v125 + 1 != v122)
        {
          goto LABEL_39;
        }

        v125 = v122;
        v14 = v116;
        v5 = v117;
        a3 = v121;
        v15 = v118;
        goto LABEL_52;
      }
    }

    else
    {
      v55 = [v50 date];
      v56 = v128;
      sub_1A52410F4();

      v57 = [v12 date];
      v58 = v129;
      sub_1A52410F4();

      LOBYTE(v57) = sub_1A5241084();
      v59 = *v127;
      v60 = v58;
      v61 = v130;
      (*v127)(v60, v130);
      v59(v56, v61);
      v43 = v126;

      if ((v57 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (!v43)
    {
      break;
    }

    v62 = *v48;
    v47 = *(v48 + 8);
    *v48 = v47;
    *(v48 + 8) = v62;
    v48 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_38;
    }
  }

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
}
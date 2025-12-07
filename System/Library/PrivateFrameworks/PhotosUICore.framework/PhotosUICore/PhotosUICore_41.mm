uint64_t sub_1A4150880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a1;
  v3 = MEMORY[0x1E69E6370];
  v4 = MEMORY[0x1E6968D10];
  sub_1A4153160(0, &qword_1EB12B088, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = MEMORY[0x1E6968D98];
  sub_1A4153160(0, &qword_1EB12B010, v3, MEMORY[0x1E6968D98]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  sub_1A3CB7EF0(&qword_1EB12B018, &qword_1EB12B010, v10, MEMORY[0x1E6968DA8]);
  sub_1A5240AB4();
  v19 = 1;
  sub_1A5240AA4();
  sub_1A3CB7F40(0);
  a2[3] = v16;
  a2[4] = sub_1A3CB80BC();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1A3CB7EF0(&qword_1EB12B090, &qword_1EB12B088, v4, MEMORY[0x1E6968D20]);
  sub_1A5240A44();
  (*(v7 + 8))(v9, v6);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1A4150B0C()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

uint64_t sub_1A4150BA0()
{
  v0 = sub_1A524C634();
  v1 = PXMemoryCreationLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  return sub_1A524A464();
}

void sub_1A4150C50()
{
  sub_1A3CB4D08();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5247704();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB160D30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_1EB1EADC8);
  swift_beginAccess();
  (*(v2 + 16))(v4, v9, v1);
  sub_1A5247724();
  sub_1A52474F4();
  (*(v6 + 8))(v8, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4150E68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A4152DD4();
  result = MEMORY[0x1A59027B0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A4150EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A5247C74();
  v4 = type metadata accessor for AppleMusicPrivacyTipModifier(0);
  v5 = *(v4 + 24);
  v6 = sub_1A3C4A780();
  v7 = sub_1A5246F24();
  result = (*(*(v7 - 8) + 16))(a2 + v5, v6, v7);
  *(a2 + *(v4 + 20)) = a1;
  return result;
}

uint64_t sub_1A4150F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v61 = a2;
  v60 = sub_1A5247794();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AppleMusicPrivacyTipModifier(0);
  v4 = v3 - 8;
  v56 = *(v3 - 8);
  v55 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249B24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41528AC(0);
  v11 = v10;
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4152A3C(0);
  v47 = v14;
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4152B28(0);
  v18 = *(v17 - 8);
  v52 = v17;
  v53 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4152C58(0);
  v21 = *(v20 - 8);
  v57 = v20;
  v58 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4153160(0, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  v51 = v23;
  sub_1A5247C84();
  v69 = &type metadata for GenerativeStoryAppleMusicPrivacyTip;
  v50 = sub_1A4152DD4();
  v70 = v50;
  *v9 = sub_1A524B6E4();
  (*(v7 + 104))(v9, *MEMORY[0x1E697C8C0], v6);
  sub_1A4152960(0);
  v42 = v24;
  v43 = sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960, MEMORY[0x1E697FDF8]);
  sub_1A524A834();
  (*(v7 + 8))(v9, v6);
  sub_1A4152E28(&v66, &qword_1EB128BC8, sub_1A3CB4F50, MEMORY[0x1E69E6720], sub_1A41533A4);
  v66 = v42;
  v67 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524A844();
  (*(v46 + 8))(v13, v11);
  v65 = sub_1A524B334();
  v66 = v11;
  v67 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v47;
  sub_1A524A854();

  v28 = (*(v48 + 8))(v16, v27);
  v29 = v45;
  LOBYTE(v65) = (*(**(v45 + *(v4 + 28)) + 1768))(v28) & 1;
  v30 = v54;
  sub_1A4152E88(v29, v54);
  v31 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v32 = swift_allocObject();
  sub_1A4152EEC(v30, v32 + v31);
  v66 = v27;
  v67 = MEMORY[0x1E69815C0];
  v68 = v26;
  v69 = MEMORY[0x1E6981568];
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v63;
  v35 = v52;
  sub_1A524B154();

  (*(v53 + 8))(v34, v35);
  sub_1A5247C84();
  v36 = v59;
  sub_1A5247474();
  sub_1A4152E88(v29, v30);
  v37 = swift_allocObject();
  sub_1A4152EEC(v30, v37 + v31);
  v66 = v35;
  v67 = MEMORY[0x1E69E6370];
  v68 = v33;
  v69 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  sub_1A41529F4(&qword_1EB1249E0, MEMORY[0x1E6982B80], MEMORY[0x1E6982B88]);
  v38 = v60;
  v39 = v57;
  v40 = v64;
  sub_1A524B154();

  (*(v62 + 8))(v36, v38);
  return (*(v58 + 8))(v40, v39);
}

void sub_1A41517EC(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BEC4();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A524BFC4();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *(a1 + *(type metadata accessor for AppleMusicPrivacyTipModifier(0) + 20));
  if (((*(*v17 + 1768))() & 1) != 0 && (*(v17 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_launchedIntoGeneration) & 1) == 0)
  {
    v18 = (*(*v17 + 1304))();
    if (v18)
    {

      sub_1A3DB9B78(v18);
    }

    else if (sub_1A52455B4())
    {
      v19 = sub_1A5246F04();
      v20 = sub_1A524D264();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1A3C1C000, v19, v20, "Presenting Apple Music privacy tip", v21, 2u);
        MEMORY[0x1A590EEC0](v21, -1, -1);
      }

      sub_1A3C29A58(0, v22);
      v29 = sub_1A524D474();
      sub_1A524BFA4();
      *v10 = 400;
      v23 = v30;
      (*(v30 + 104))(v10, *MEMORY[0x1E69E7F38], v8);
      MEMORY[0x1A5907370](v13, v10);
      (*(v23 + 8))(v10, v8);
      v24 = *(v31 + 8);
      v24(v13, v11);
      aBlock[4] = sub_1A4151D84;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_109;
      v25 = _Block_copy(aBlock);
      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A41529F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A41533A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v26 = v35;
      sub_1A524E224();
      v27 = v29;
      MEMORY[0x1A5908790](v16, v7, v4, v25);
      _Block_release(v25);

      (*(v34 + 8))(v4, v26);
      (*(v32 + 8))(v7, v33);
      v24(v16, v11);
    }
  }
}

uint64_t sub_1A4151D84()
{
  if (qword_1EB160D30 != -1)
  {
    swift_once();
  }

  sub_1A3CB4D08();
  __swift_project_value_buffer(v0, qword_1EB1EADC8);
  swift_beginAccess();
  sub_1A52477A4();
  return swift_endAccess();
}

void sub_1A4151E20(double a1)
{
  v1 = sub_1A5247634();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v33 - v4;
  v5 = sub_1A5247794();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  sub_1A4153160(0, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A4152DD4();
  sub_1A5247474();
  v11 = *(v6 + 88);
  v12 = v11(v10, v5);
  v13 = *MEMORY[0x1E6982B78];
  v33 = v6;
  v14 = v10;
  v15 = *(v6 + 8);
  v15(v14, v5);
  if (v12 == v13 && (sub_1A52455B4() & 1) != 0)
  {
    type metadata accessor for AppleMusicPrivacyTipModifier(0);
    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A3C1C000, v16, v17, "Apple Music privacy tip was presented - marking disclosure as shown", v18, 2u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v20 = [v19 description];

    sub_1A524C674();
    sub_1A52455C4();
  }

  else
  {
    sub_1A5247C84();
    v21 = v38;
    sub_1A5247474();
    if (v11(v21, v5) == *MEMORY[0x1E6982B68])
    {
      (*(v33 + 96))(v21, v5);
      v23 = v35;
      v22 = v36;
      v24 = v37;
      (*(v36 + 32))(v35, v21, v37);
      v25 = v34;
      (*(v22 + 104))(v34, *MEMORY[0x1E6982AF0], v24);
      v26 = sub_1A5247624();
      v27 = *(v22 + 8);
      v27(v25, v24);
      if (v26 & 1) != 0 && (sub_1A52455B4())
      {
        type metadata accessor for AppleMusicPrivacyTipModifier(0);
        v28 = sub_1A5246F04();
        v29 = sub_1A524D264();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1A3C1C000, v28, v29, "Apple Music privacy tip invalidated due to cloud syncing dismissal - marking disclosure as shown", v30, 2u);
          MEMORY[0x1A590EEC0](v30, -1, -1);
        }

        v31 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
        v32 = [v31 description];

        sub_1A524C674();
        sub_1A52455C4();
      }

      v27(v23, v24);
    }

    else
    {
      v15(v21, v5);
    }
  }
}

uint64_t sub_1A4152324(double a1)
{
  sub_1A41531B0(0, a1);
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E485A4(0, v3);
  v40 = v5;
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5247584();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4153320(0, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88]);
  v37 = v11;
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1A52476E4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E6982B20];
  sub_1A4153320(0, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
  v20 = v19;
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  sub_1A52475D4();
  MEMORY[0x1A59028B0](v17, v14, v18);
  (*(v15 + 8))(v17, v14);
  sub_1A5247594();
  v23 = MEMORY[0x1E6982A88];
  MEMORY[0x1A59028B0](v10, v7, MEMORY[0x1E6982A88]);
  (*(v8 + 8))(v10, v7);
  v45 = v14;
  v46 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v38;
  MEMORY[0x1A59028E0](v22, v20, OpaqueTypeConformance2);
  v45 = v20;
  v46 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v45 = v7;
  v46 = v23;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v41;
  v29 = v25;
  v30 = v40;
  v31 = v37;
  sub_1A5247564();
  v45 = v30;
  v46 = v31;
  v47 = v26;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = sub_1A5247554();
  (*(v44 + 8))(v28, v32);
  (*(v42 + 8))(v29, v30);
  (*(v39 + 8))(v13, v31);
  (*(v36 + 8))(v22, v20);
  return v33;
}

uint64_t type metadata accessor for AppleMusicPrivacyTipModifier(uint64_t a1)
{
  result = qword_1EB165A50;
  if (!qword_1EB165A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A41528AC(uint64_t a1)
{
  if (!qword_1EB133478)
  {
    sub_1A4152960(255);
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960, MEMORY[0x1E697FDF8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133478);
    }
  }
}

void sub_1A4152960(uint64_t a1)
{
  if (!qword_1EB1222E0)
  {
    type metadata accessor for AppleMusicPrivacyTipModifier(255);
    sub_1A41529F4(&qword_1EB1255C8, type metadata accessor for AppleMusicPrivacyTipModifier, &unk_1A531E8C8);
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1222E0);
    }
  }
}

uint64_t sub_1A41529F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4152A3C(uint64_t a1)
{
  if (!qword_1EB133480)
  {
    sub_1A41528AC(255);
    sub_1A4152960(255);
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133480);
    }
  }
}

void sub_1A4152B28(uint64_t a1)
{
  if (!qword_1EB133488)
  {
    sub_1A4152A3C(255);
    sub_1A41528AC(255);
    sub_1A4152960(255);
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133488);
    }
  }
}

void sub_1A4152C58(uint64_t a1)
{
  if (!qword_1EB133490)
  {
    sub_1A4152B28(255);
    sub_1A4152A3C(255);
    sub_1A41528AC(255);
    sub_1A4152960(255);
    sub_1A41529F4(&qword_1EB1222E8, sub_1A4152960, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133490);
    }
  }
}

unint64_t sub_1A4152DD4()
{
  result = qword_1EB1252B8;
  if (!qword_1EB1252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252B8);
  }

  return result;
}

uint64_t sub_1A4152E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A4152E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicPrivacyTipModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4152EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicPrivacyTipModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4152F80(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppleMusicPrivacyTipModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A4152FF8()
{
  result = qword_1EB1252B0;
  if (!qword_1EB1252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252B0);
  }

  return result;
}

void sub_1A41530A0(uint64_t a1)
{
  sub_1A4153160(319, &qword_1EB133470, &type metadata for GenerativeStoryAppleMusicPrivacyTip, MEMORY[0x1E697DA80]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GenerativeStoryCreationViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1A5246F24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4153160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A41531B0(uint64_t a1, double a2)
{
  if (!qword_1EB124A00)
  {
    sub_1A3E485A4(255, a2);
    sub_1A4153320(255, &qword_1EB128BA0, MEMORY[0x1E6982A98], MEMORY[0x1E6982A88]);
    sub_1A4153320(255, &unk_1EB124A08, MEMORY[0x1E6982B28], MEMORY[0x1E6982B20]);
    sub_1A52476E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A5247584();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB124A00);
    }
  }
}

void sub_1A4153320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A41533A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4153444()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A41535A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A41536B0(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4153530(v4);
  return sub_1A4153868;
}

uint64_t sub_1A4153874()
{
  v1 = qword_1EB1334B0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A41538B8(char a1)
{
  v3 = qword_1EB1334B0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A415397C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4153A6C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4153908(v4);
  return sub_1A4153C24;
}

uint64_t sub_1A4153CC4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x220))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A4153DD0(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4153C50(v4);
  return sub_1A4153F88;
}

uint64_t sub_1A4153F94()
{
  v1 = qword_1EB1334C0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4153FD8(char a1)
{
  v3 = qword_1EB1334C0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A415409C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x250))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A415418C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4154028(v4);
  return sub_1A4154344;
}

uint64_t sub_1A41543D0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  v3 = (v0 + qword_1EB1334C8);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A41544B4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x280))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4154550(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x288);

  return v6(sub_1A3E30F88, v5);
}

double sub_1A4154610(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x948))(KeyPath, sub_1A4164A8C, &v10, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A4154724(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4154370(v4);
  return sub_1A41548DC;
}

uint64_t sub_1A41548E8()
{
  v1 = qword_1EB1334D0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A415492C(char a1)
{
  v3 = qword_1EB1334D0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41549F0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4154AE0(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415497C(v4);
  return sub_1A4154C98;
}

uint64_t sub_1A4154CA4()
{
  v1 = qword_1EB1334D8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4154CE8(char a1)
{
  v3 = qword_1EB1334D8;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4154DAC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4154E9C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4154D38(v4);
  return sub_1A4155054;
}

void sub_1A4155060(_BYTE *a1@<X8>)
{
  v3 = qword_1EB1334E0;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A41550B4(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB1334E0;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void *sub_1A4155178@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x310))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A41551EC(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x318))(&v4);
}

double sub_1A415525C(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB1334E0;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x948))(v9);
  }

  return result;
}

uint64_t (*sub_1A415540C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4155104(v4);
  return sub_1A41555C4;
}

void sub_1A41555D0(uint64_t a1)
{
  v3 = qword_1EB1334E8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A415569C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x340))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4155700(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x348);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*sub_1A4155798(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4155628(v4);
  return sub_1A4155950;
}

uint64_t sub_1A415595C()
{
  v1 = v0 + qword_1EB1334F0;
  swift_beginAccess();
  return *v1;
}

void sub_1A41559A8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB1334F0;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
}

uint64_t sub_1A4155A6C()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  v3 = v0 + qword_1EB1334F0;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A4155B44@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x370))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

double sub_1A4155C1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C2A2DC(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB1334F0;
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x948))(v13);
  }

  return result;
}

uint64_t (*sub_1A4155E30(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4155A0C(v4);
  return sub_1A4155FE8;
}

void sub_1A4156074()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4156148@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A0))();
  *a2 = result;
  return result;
}

double sub_1A4156218(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3DC9268(0);
  sub_1A3DC92EC();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB1334F8;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x948))(v9);
  }

  return result;
}

uint64_t (*sub_1A41563D8(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4156014(v4);
  return sub_1A4156590;
}

void sub_1A415659C(uint64_t a1)
{
  v3 = qword_1EB133500;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A4156668@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41566CC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3D8);
  v4 = *a1;
  return v3(v2);
}

void sub_1A415673C(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB133500;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x948))(v9);
  }
}

uint64_t (*sub_1A4156938(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A41565F4(v4);
  return sub_1A4156AF0;
}

uint64_t sub_1A4156AFC()
{
  v1 = qword_1EB133508;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4156B40(char a1)
{
  v3 = qword_1EB133508;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4156C04@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x400))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4156CF4(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4156B90(v4);
  return sub_1A4156EAC;
}

void sub_1A4156EB8(_BYTE *a1@<X8>)
{
  v3 = qword_1EB133510;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_1A4156F0C(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB133510;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void sub_1A4156FD0(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v6 & *v3) + 0x940))(KeyPath);

  v8 = *a2;
  swift_beginAccess();
  *a3 = *(v3 + v8);
}

void *sub_1A41570A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x430))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A415711C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x438))(&v4);
}

double sub_1A415718C(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB133510;
    swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x948))(v9);
  }

  return result;
}

uint64_t (*sub_1A415733C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4156F5C(v4);
  return sub_1A41574F4;
}

uint64_t sub_1A4157594@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x460))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A41576A0(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4157520(v4);
  return sub_1A4157858;
}

uint64_t sub_1A41578E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x490))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A41579DC(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4157870(v4);
  return sub_1A4157B94;
}

uint64_t sub_1A4157C20@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4C0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4157CC8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4C8);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A4157D98(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB133528);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x948))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A4157FD8(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4157BAC(v4);
  return sub_1A4158190;
}

void sub_1A415819C(uint64_t a1)
{
  v3 = qword_1EB133530;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1A4158268(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x940))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

uint64_t sub_1A4158338@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4F0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A415839C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4F8);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4158434(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4164BEC(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    swift_beginAccess();
    v10 = *(v5 + v9);
    *(v5 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x948))(v12);
  }
}

uint64_t (*sub_1A4158618(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A41581F4(v4);
  return sub_1A41587D0;
}

void sub_1A41587DC()
{
  v1 = v0;
  v2 = sub_1A52404F4();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x520);
  v20[1] = v8(v4);
  v20[2] = v9;
  sub_1A52404C4();
  sub_1A3D5F9DC();
  v10 = sub_1A524DFB4();
  v12 = v11;
  (*(v3 + 8))(v6, v2);

  v13 = (v1 + qword_1EB133538);
  swift_beginAccess();
  *v13 = v10;
  v13[1] = v12;

  v15 = (*((*v7 & *v1) + 0x3D0))(v14);
  if (v15)
  {
  }

  else
  {
    v16 = (v8)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    (*((*v7 & *v1) + 0x740))(v19 != 0);
  }
}

void sub_1A4158A30(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB133538);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_1A41587DC();
}

uint64_t (*sub_1A4158A94(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4158AF8;
}

uint64_t sub_1A4158B24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x520))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4158C08(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v6 = sub_1A524C594();
  if (v6)
  {
    sub_1A4158A30(a1, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v5 & *v2) + 0x948))(v9);
  }

  return result;
}

uint64_t (*sub_1A4158DBC(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4158A94(v4);
  return sub_1A4158F74;
}

uint64_t sub_1A4158F80()
{
  v1 = qword_1EB133540;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4158FC4(char a1)
{
  v3 = qword_1EB133540;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4159088@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x550))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4159178(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4159014(v4);
  return sub_1A4159330;
}

uint64_t sub_1A415933C()
{
  v1 = qword_1EB133548;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A4159380(char a1)
{
  v3 = qword_1EB133548;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4159444@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x580))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4159534(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A41593D0(v4);
  return sub_1A41596EC;
}

uint64_t sub_1A41596F8()
{
  v1 = qword_1EB133550;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A415973C(uint64_t a1)
{
  v3 = qword_1EB133550;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A4159800@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5B0))();
  *a2 = result;
  return result;
}

double sub_1A41598C4(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A3C29C0C(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType, &unk_1A5304CD0);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB133550;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x948))(v9);
  }

  return result;
}

uint64_t (*sub_1A4159AA4(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415978C(v4);
  return sub_1A4159C5C;
}

double sub_1A4159C68()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x5E0))();
  (*((*v1 & *v0) + 0x900))();

  return result;
}

double sub_1A4159D20(uint64_t a1)
{
  v3 = qword_1EB133558;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A4159C68();
}

uint64_t (*sub_1A4159D7C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4159DE0;
}

uint64_t sub_1A4159DF8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1A4159E50@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5E0))();
  *a2 = result;
  return result;
}

double sub_1A4159F20(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C2A2DC(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A4159D20(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*v3 & *v1) + 0x948))(v7);

  return result;
}

uint64_t (*sub_1A415A0EC(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4159D7C(v4);
  return sub_1A415A2A4;
}

uint64_t sub_1A415A330@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x610))();
  *a2 = result;
  return result;
}

double sub_1A415A400(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C2A2DC(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB133560;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x948))(v9);
  }

  return result;
}

uint64_t (*sub_1A415A5F0(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415A2BC(v4);
  return sub_1A415A7A8;
}

uint64_t sub_1A415A7B4()
{
  v1 = qword_1EB133568;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A415A7F8(char a1)
{
  v3 = qword_1EB133568;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A415A8BC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x640))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A415A9AC(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415A848(v4);
  return sub_1A415AB64;
}

uint64_t sub_1A415ABF0@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x670))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A415AC98(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x678);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A415AD68(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB133570);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x948))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A415AFA8(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415AB7C(v4);
  return sub_1A415B160;
}

uint64_t sub_1A415B18C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

void sub_1A415B264(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x940))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A415B340@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A415B44C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = (v4 + *a3);
    swift_beginAccess();
    *v10 = a1;
    v10[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x948))(v13);
  }

  return result;
}

uint64_t (*sub_1A415B614(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415B1F0(v4);
  return sub_1A415B7CC;
}

void sub_1A415B858(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v2) + 0x940))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A415B924@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6D0))();
  *a2 = result;
  return result;
}

double sub_1A415BA1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x948))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A415BB20(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415B7E4(v4);
  return sub_1A415BCD8;
}

uint64_t sub_1A415BCE4()
{
  v1 = qword_1EB133588;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A415BD28(uint64_t a1)
{
  v3 = qword_1EB133588;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A415BDEC(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x940))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A415BEB4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x700))();
  *a2 = result;
  return result;
}

double sub_1A415BF78(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB133588;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x948))(v9);
  }

  return result;
}

uint64_t (*sub_1A415C124(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415BD78(v4);
  return sub_1A415C2DC;
}

void sub_1A415C2E8()
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7F0))();
  (*((*v2 & *v1) + 0x820))(v3);
  sub_1A415FB8C();
}

uint64_t sub_1A415C3DC()
{
  v1 = qword_1EB133590;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A415C420(char a1)
{
  v3 = qword_1EB133590;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A415C4E4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x738))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A415C5D4(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415C470(v4);
  return sub_1A415C78C;
}

uint64_t sub_1A415C798()
{
  v1 = qword_1EB133598;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A415C7DC(char a1)
{
  v3 = qword_1EB133598;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A415C8A0(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x940))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A415C968@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x768))();
  *a2 = result & 1;
  return result;
}

double sub_1A415CA58(char a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = a1 & 1;
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = *a2;
    swift_beginAccess();
    *(v5 + v10) = v8;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v5) + 0x948))(v13);
  }

  return result;
}

uint64_t (*sub_1A415CC08(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415C82C(v4);
  return sub_1A415CDC0;
}

uint64_t sub_1A415CE4C(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x940))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6, v6[1]);
  return v7;
}

uint64_t sub_1A415CF2C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x798))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A415CFD4(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x7A0);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A415D0A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB1335A0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6, v7);
  sub_1A3C66EE8(a1, a2);
  sub_1A3C33378(v11, v10);
  v12 = sub_1A3C33378(v9, v8);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x948))(v14);
  sub_1A3C33378(a1, a2);

  return result;
}

uint64_t (*sub_1A415D2E4(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415CDD8(v4);
  return sub_1A415D49C;
}

uint64_t sub_1A415D4A8()
{
  v1 = qword_1EB133498;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A415D4EC(char a1)
{
  v3 = qword_1EB133498;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1A415D59C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x740))(0);
  if (a1)
  {
    (*((*v9 & *v4) + 0x7F0))(v10);
    (*((*v9 & *v4) + 0x520))();
    sub_1A415FB8C();
  }

  v11 = (*((*v9 & *v4) + 0x3D0))(v10);
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = v4;
    v13[3] = a3;
    v13[4] = a4;
    v14 = v4;
    sub_1A3C66EE8(a3, a4);
    v15 = v12;
    sub_1A4160F38(v15, a2, sub_1A4165020, v13);
  }

  else
  {

    sub_1A415D838(0, 0, v4, a3, a4);
  }
}

uint64_t sub_1A415D838(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A524BEE4();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A524BF64();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v23 = sub_1A524D474();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a1;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a2;
  aBlock[4] = sub_1A4165F84;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_198;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  sub_1A3C66EE8(a4, a5);
  v19 = a2;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29C0C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C2A2DC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  v20 = v23;
  MEMORY[0x1A5908800](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

void (*sub_1A415DB50(uint64_t a1, uint64_t (*a2)(void, void)))(void)
{
  sub_1A415E854(0);
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x798))();
  if (result)
  {
    v6 = v5;
    v7 = result;
    result();
    result = sub_1A3C33378(v7, v6);
  }

  if (a2)
  {
    return a2(0, 0);
  }

  return result;
}

void sub_1A415DBF8(uint64_t a1)
{
  v3 = qword_1EB1335C8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1A415DCB0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  v3 = qword_1EB1335C8;
  swift_beginAccess();
  v4 = *(v0 + v3);

  return v4;
}

uint64_t sub_1A415DD90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7F0))();
  *a2 = result;
  return result;
}

void sub_1A415DE60(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = qword_1EB1335C8;
  swift_beginAccess();
  v6 = *(v1 + v5);
  type metadata accessor for SharedAlbumActionViewModel(0);
  sub_1A3C29C0C(&qword_1EB1334A0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E69E81C0]);
  v13 = v6;
  v7 = sub_1A524C594();

  if (v7)
  {
    v9 = qword_1EB1335C8;
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v2) + 0x948))(v12);
  }
}

uint64_t (*sub_1A415E05C(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415DC50(v4);
  return sub_1A415E214;
}

uint64_t sub_1A415E240(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

double sub_1A415E2FC()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x940))(KeyPath);

  swift_beginAccess();

  return result;
}

uint64_t sub_1A415E3D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x820))();
  *a2 = result;
  return result;
}

uint64_t sub_1A415E434(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x828);

  return v2(v3);
}

double sub_1A415E4A0(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v11 = *((v5 & v3) + 0x50);
  KeyPath = swift_getKeyPath();
  v9 = v1;
  v10 = a1;
  (*((*v4 & *v1) + 0x948))(KeyPath, sub_1A41651D4, &v8, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t (*sub_1A415E5AC(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  v8 = *((v7 & v6) + 0x50);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x940))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v10);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v8, v11, v12);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A415E29C(v4);
  return sub_1A415E764;
}

void sub_1A415E770(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

void sub_1A415E854(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x7F0))();
  (*((*v3 & *v4) + 0x6E0))(a1, 0);
}

void sub_1A415E928(uint64_t a1)
{
  v2 = *(v1 + qword_1EB1335B0);
  *(v1 + qword_1EB1335B0) = a1;
}

void *sub_1A415E93C()
{
  v0 = sub_1A4165660(&unk_1A531F2F8, &qword_1EB1335B0);
  v1 = v0;
  return v0;
}

id sub_1A415E978@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4165660(&unk_1A531F2F8, &qword_1EB1335B0);
  *a1 = v2;

  return v2;
}

void sub_1A415E9C4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A415E9F4(v1);
}

void sub_1A415E9F4(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_1A524C594();
  if (v4)
  {
    v5 = *(v1 + qword_1EB1335B0);
    *(v1 + qword_1EB1335B0) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x948))(v7);
  }
}

uint64_t sub_1A415EBBC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EB1335B8;
  swift_beginAccess();
  return sub_1A4165AEC(v1 + v3, a1);
}

uint64_t sub_1A415EC14(uint64_t a1)
{
  v3 = qword_1EB1335B8;
  swift_beginAccess();
  sub_1A3C6F55C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A415EC74@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v3 & *v1) + 0x940))(KeyPath);

  v5 = qword_1EB1335B8;
  swift_beginAccess();
  return sub_1A4165AEC(v1 + v5, a1);
}

uint64_t sub_1A415EDB0(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = qword_1EB1335B8;
  swift_beginAccess();
  sub_1A4165AEC(v1 + v6, v13);
  sub_1A416523C(v13);
  v12 = *((v5 & v3) + 0x50);
  KeyPath = swift_getKeyPath();
  v10 = v1;
  v11 = a1;
  (*((*v4 & *v1) + 0x948))(KeyPath, sub_1A4165B80, &v9, MEMORY[0x1E69E7CA8] + 8);

  return sub_1A416523C(a1);
}

void sub_1A415EED0(uint64_t a1)
{
  v2 = *(v1 + qword_1EB1335C0);
  *(v1 + qword_1EB1335C0) = a1;
}

void *sub_1A415EEE4()
{
  v0 = sub_1A4165660(&unk_1A531F288, &qword_1EB1335C0);
  v1 = v0;
  return v0;
}

id sub_1A415EF20@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4165660(&unk_1A531F288, &qword_1EB1335C0);
  *a1 = v2;

  return v2;
}

void sub_1A415EF6C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A415EF9C(v1, v3);
}

void sub_1A415EF9C(void *a1, __n128 a2)
{
  v4 = MEMORY[0x1E69E7D40];
  sub_1A4164BEC(0, &qword_1EB133640, &qword_1EB133648, 0x1E69BE330, MEMORY[0x1E69E6720]);
  sub_1A41659E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = *(v2 + qword_1EB1335C0);
    *(v2 + qword_1EB1335C0) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v2) + 0x948))(v8);
  }
}

void *sub_1A415F194(void *a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v2;
  v8 = sub_1A3C38BD4(0xD000000000000027);
  v9 = &v2[qword_1EB1334A8];
  *v9 = v8;
  v9[1] = v10;
  v2[qword_1EB1334B0] = 0;
  v11 = &v2[qword_1EB1334B8];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v2[qword_1EB1334C0] = 0;
  v12 = &v2[qword_1EB1334C8];
  *v12 = PXDisplayCollectionDetailedCountsMake;
  v12[1] = 0;
  v2[qword_1EB1334D0] = 0;
  v2[qword_1EB1334D8] = 0;
  v2[qword_1EB1334E0] = 0;
  *&v2[qword_1EB1334E8] = 0;
  v13 = &v2[qword_1EB1334F0];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  *&v2[qword_1EB1334F8] = 0;
  *&v2[qword_1EB133500] = 0;
  v2[qword_1EB133508] = 1;
  v2[qword_1EB133510] = 0;
  v14 = sub_1A3C38BD4(0xD000000000000028);
  v15 = &v2[qword_1EB133518];
  *v15 = v14;
  v15[1] = v16;
  v17 = MEMORY[0x1E69E7CC0];
  *&v2[qword_1EB133520] = MEMORY[0x1E69E7CC0];
  v18 = &v2[qword_1EB133528];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v2[qword_1EB133530] = 0;
  v19 = &v2[qword_1EB133538];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  v2[qword_1EB133540] = 0;
  v2[qword_1EB133548] = 0;
  *&v2[qword_1EB133550] = 0;
  *&v2[qword_1EB133558] = v17;
  *&v2[qword_1EB133560] = v17;
  v2[qword_1EB133568] = 1;
  v20 = &v2[qword_1EB133570];
  *v20 = PXDisplayCollectionDetailedCountsMake;
  v20[1] = 0;
  v21 = sub_1A3C38BD4(0xD00000000000002DLL);
  v22 = &v2[qword_1EB133578];
  *v22 = v21;
  v22[1] = v23;
  *&v2[qword_1EB133580] = v17;
  *&v2[qword_1EB133588] = 0;
  v2[qword_1EB133590] = 0;
  v2[qword_1EB133598] = 0;
  v24 = &v2[qword_1EB1335A0];
  *v24 = 0;
  *(v24 + 1) = 0;
  v2[qword_1EB133498] = 0;
  v25 = qword_1EB1335A8;
  *&v2[qword_1EB1335A8] = 0;
  *&v2[qword_1EB1335B0] = 0;
  v26 = &v2[qword_1EB1335B8];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  *&v2[qword_1EB1335C0] = 0;
  sub_1A5241604();
  *&v2[qword_1EB1335C8] = a1;
  if (a2)
  {
    type metadata accessor for SharedAlbumObservableModel(0);
    v27 = a1;
    v28 = a2;
    v29 = sub_1A4831424(v28);
  }

  else
  {
    v32 = a1;

    v29 = 0;
    v28 = 0;
  }

  *&v3[v25] = v29;
  v33 = type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(0, *(v7 + 80), v30, v31);
  v45.receiver = v3;
  v45.super_class = v33;
  v34 = objc_msgSendSuper2(&v45, sel_init);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v36 = *((*v6 & *a1) + 0x438);
  v37 = v34;
  v36(sub_1A4165C8C, v35);
  v38 = v28;
  sub_1A415673C(a2);
  v39 = v38;
  sub_1A415E9F4(a2);
  sub_1A415C5AC(a2 != 0);
  if (a2)
  {
    v40 = 0;
  }

  else
  {
    v41 = sub_1A415F938();
    v42 = [v41 isSharedAlbumsEnabled];

    v40 = v42;
  }

  v43 = a2 == 0;
  sub_1A4154AB8(v40);
  sub_1A4154E74(v43);
  sub_1A415CA30(v43);
  sub_1A415FCC0();
  sub_1A415FF28();
  sub_1A4160C90();
  sub_1A4160D94();
  (*((*v6 & *v37) + 0x928))();

  return v37;
}

id sub_1A415F688()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x930))();
  v5 = type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel(0, *((v2 & v1) + 0x50), v3, v4);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A415F748(uint64_t a1)
{

  sub_1A3C33378(*(a1 + qword_1EB133528), *(a1 + qword_1EB133528 + 8));

  sub_1A3C33378(*(a1 + qword_1EB133570), *(a1 + qword_1EB133570 + 8));

  sub_1A3C33378(*(a1 + qword_1EB1335A0), *(a1 + qword_1EB1335A0 + 8));

  sub_1A416523C(a1 + qword_1EB1335B8);

  v2 = qword_1EB1AB720;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

id sub_1A415F938()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))();
  if (v2)
  {
    v3 = v2;
    result = [v2 photoLibrary];
    if (result)
    {
      v5 = result;

      return v5;
    }

    goto LABEL_16;
  }

  v6 = *((*v1 & *v0) + 0x7F0);
  v7 = v6();
  v8 = (*((*v1 & *v7) + 0x208))();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:

    v12 = (v6)(v11);
    v13 = (*((*v1 & *v12) + 0x148))();

    v14 = *(v13 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

    v15 = *(v14 + 16);

    return v15;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1A59097F0](0, v8);
LABEL_9:
    v10 = v9;

    result = [v10 photoLibrary];
    if (result)
    {
      v5 = result;

      return v5;
    }

    goto LABEL_17;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1A415FB8C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x7F0))();
  (*((*v1 & *v2) + 0x148))();

  sub_1A4654ADC();

  PXPresentationEnvironmentForSender();
}

id sub_1A415FC68()
{
  v0 = sub_1A415F938();
  v1 = [v0 librarySpecificFetchOptions];

  [v1 setIncludeGuestAssets_];
  return v1;
}

void sub_1A415FCC0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3D0))();
  if (v2)
  {
    v3 = v2;
    v4 = 0xE000000000000000;
    (*((*v1 & *v0) + 0x1C8))(0, 0xE000000000000000);
    v5 = [v3 localizedTitle];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1A524C674();
      v4 = v8;
    }

    else
    {
      v7 = 0;
    }

    (*((*v1 & *v0) + 0x528))(v7, v4);
    v9 = objc_opt_self();
    v14 = v3;
    (*((*v1 & *v0) + 0x408))([v9 sharedAlbumIsOwned_]);
    v10 = objc_opt_self();
    v11 = sub_1A415FC68();
    v12 = [v10 fetchAssetsInAssetCollection:v14 options:v11];

    v13 = [v12 count];
    (*((*v1 & *v0) + 0x708))(v13);
  }
}

uint64_t sub_1A415FF28()
{
  v2 = v1;
  v39 = sub_1A523FBB4();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v40 = &v33 - v8;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3D0))(v7);
  v38 = v1;
  if (!v10)
  {
    v23 = (*((*v9 & *v1) + 0x7F0))();
    v24 = (*((*v9 & *v23) + 0x208))();

    if (v24 >> 62)
    {
      v25 = sub_1A524E2B4();
      if (v25)
      {
LABEL_19:
        v26 = 0;
        v40 = (v24 & 0xC000000000000001);
        v37 = v24 & 0xFFFFFFFFFFFFFF8;
        v35 = v3 + 32;
        v18 = MEMORY[0x1E69E7CC0];
        v36 = v25;
        do
        {
          if (v40)
          {
            v27 = MEMORY[0x1A59097F0](v26, v24);
          }

          else
          {
            if (v26 >= *(v37 + 16))
            {
              goto LABEL_35;
            }

            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_34;
          }

          v30 = [v27 localIdentifier];
          sub_1A524C674();

          sub_1A523FB54();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1A3D5BB08(0, v18[2] + 1, 1, v18);
          }

          v2 = v38;
          v9 = MEMORY[0x1E69E7D40];
          v0 = v18[2];
          v31 = v18[3];
          if (v0 >= v31 >> 1)
          {
            v18 = sub_1A3D5BB08((v31 > 1), v0 + 1, 1, v18);
          }

          v18[2] = v0 + 1;
          (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0, v5, v39);
          ++v26;
        }

        while (v29 != v36);
        goto LABEL_41;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_19;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_41:

    return (*((*v9 & *v2) + 0x5E8))(v18);
  }

  v11 = v10;
  v12 = objc_opt_self();
  v0 = v11;
  v13 = sub_1A415FC68();
  v5 = [v12 fetchAssetsInAssetCollection:v0 options:v13];

  v14 = [v5 fetchedObjects];
  if (v14)
  {
    v15 = v14;
    sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
    v2 = sub_1A524CA34();

    if (v2 >> 62)
    {
      goto LABEL_36;
    }

    v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v5;
    for (i = v0; v16; i = v0)
    {
      v17 = 0;
      v36 = v2 & 0xFFFFFFFFFFFFFF8;
      v37 = v2 & 0xC000000000000001;
      v35 = v3 + 32;
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v37)
        {
          v19 = MEMORY[0x1A59097F0](v17, v2);
        }

        else
        {
          if (v17 >= *(v36 + 16))
          {
            goto LABEL_33;
          }

          v19 = *(v2 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v5 = [v19 localIdentifier];
        sub_1A524C674();

        sub_1A523FB54();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1A3D5BB08(0, v18[2] + 1, 1, v18);
        }

        v0 = v18[2];
        v22 = v18[3];
        if (v0 >= v22 >> 1)
        {
          v18 = sub_1A3D5BB08((v22 > 1), v0 + 1, 1, v18);
        }

        v18[2] = v0 + 1;
        (*(v3 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v0, v40, v39);
        ++v17;
        if (v21 == v16)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v16 = sub_1A524E2B4();
      v33 = v5;
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v2 = v38;
    v9 = MEMORY[0x1E69E7D40];
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  return (*((*v9 & *v2) + 0x5E8))(v18);
}

void sub_1A4160520(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = *(v3 + 16);
    v39[1] = v3 + 16;
    v40 = v9;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v12 = (v3 + 8);
    (v9)(v6, v10, v2, v4);
    while (1)
    {
      v14 = sub_1A523FB64();
      v16 = v15;
      (*v12)(v6, v2);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D3D914(0, *(v8 + 2) + 1, 1, v8);
        }

        v19 = *(v8 + 2);
        v18 = *(v8 + 3);
        v20 = v8;
        if (v19 >= v18 >> 1)
        {
          v20 = sub_1A3D3D914((v18 > 1), v19 + 1, 1, v8);
        }

        *(v20 + 2) = v19 + 1;
        v8 = v20;
        v13 = &v20[16 * v19];
        *(v13 + 4) = v14;
        *(v13 + 5) = v16;
      }

      v10 += v11;
      if (!--v7)
      {
        break;
      }

      (v40)(v6, v10, v2, v17);
    }
  }

  v21 = objc_opt_self();
  v22 = sub_1A524CA14();
  v23 = sub_1A415FC68();
  v24 = [v21 fetchAssetsWithLocalIdentifiers:v22 options:v23];

  v25 = [v24 fetchedObjects];
  if (!v25)
  {
    goto LABEL_22;
  }

  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v26 = sub_1A524CA34();

  v42 = MEMORY[0x1E69E7CC8];
  if (v26 >> 62)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A4165BCC(0, &qword_1EB1335D0, MEMORY[0x1E69E5E28]);
    sub_1A524C404();
    sub_1A4160A34(v26, &v42, v28);
    v40 = v8;
    v41 = v27;
    v29 = *(v8 + 2);
    if (!v29)
    {
      break;
    }

    v8 += 40;
    v30 = v8;
    v31 = 0;
    while (v31 < v29)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_24;
      }

      if (*(v42 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v31;
      v30 += 16;
      if (v32 == v29)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    sub_1A524E2B4();
  }

LABEL_20:
  v33 = v39[0];
  v34 = MEMORY[0x1E69E7D40];
  v35 = (*((*MEMORY[0x1E69E7D40] & *v39[0]) + 0x3A8))(v27);
  v36 = (*((*v34 & *v33) + 0x7F0))(v35);
  v37 = (*((*v34 & *v33) + 0x3A0))();
  if (v37)
  {
    v38 = v37;

    (*((*v34 & *v36) + 0x210))(v38);

LABEL_22:

    return;
  }

  __break(1u);
}

void sub_1A4160A34(unint64_t a1, uint64_t *a2, __n128 a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v5 = sub_1A524E2B4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v31 = v4 & 0xFFFFFFFFFFFFFF8;
      v32 = v4 & 0xC000000000000001;
      v29 = v5;
      v30 = v4;
      do
      {
        if (v32)
        {
          v9 = MEMORY[0x1A59097F0](v6, v4, a3);
        }

        else
        {
          if (v6 >= *(v31 + 16))
          {
            goto LABEL_23;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v33 = v6 + 1;
        v11 = [v9 localIdentifier];
        v12 = sub_1A524C674();
        v14 = v13;

        v15 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4 = *a2;
        v34 = *a2;
        v17 = a2;
        *a2 = 0x8000000000000000;
        v19 = sub_1A3C5DCA4(v12, v14);
        v20 = *(v4 + 16);
        v21 = (v18 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_24;
        }

        a2 = v18;
        if (*(v4 + 24) >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v4 = v34;
            if (v18)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1A4164878();
            v4 = v34;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1A41645C4(v22, isUniquelyReferenced_nonNull_native);
          v23 = sub_1A3C5DCA4(v12, v14);
          if ((a2 & 1) != (v24 & 1))
          {
            sub_1A524EB84();
            __break(1u);
            return;
          }

          v19 = v23;
          v4 = v34;
          if (a2)
          {
LABEL_4:
            v7 = *(v4 + 56);
            v8 = *(v7 + 8 * v19);
            *(v7 + 8 * v19) = v15;

            goto LABEL_5;
          }
        }

        *(v4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
        v25 = (*(v4 + 48) + 16 * v19);
        *v25 = v12;
        v25[1] = v14;
        *(*(v4 + 56) + 8 * v19) = v15;
        v26 = *(v4 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        *(v4 + 16) = v28;
LABEL_5:
        a2 = v17;
        *v17 = v4;

        ++v6;
        v4 = v30;
      }

      while (v33 != v29);
    }
  }
}

double sub_1A4160C90()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v3 & v1) + 0x50);
  *(v5 + 24) = v4;
  v6 = *((*v2 & *v0) + 0x678);

  v6(sub_1A416592C, v5);

  return result;
}

void sub_1A4160D94()
{
  v1 = sub_1A4165660(&unk_1A531F2F8, &qword_1EB1335B0);
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = MEMORY[0x1E69E7D40];
      v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x7F0);
      v7 = v2;
      v10 = v6();
      v8 = PXSharedAlbumFilteredParticipantsForCollectionShare(v4, 1);
      sub_1A3C52C70(0, &qword_1EB12C1B0, off_1E771F698);
      v9 = sub_1A524CA34();

      (*((*v5 & *v10) + 0x2B8))(v9);
    }
  }
}

double sub_1A4160F10()
{
  sub_1A415FF28();

  return sub_1A4160C90();
}

void sub_1A4160F38(void *a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x7F0))();
  v12 = *((*v10 & *v4) + 0x520);
  v13 = v12();
  (*((*v10 & *v11) + 0x2E8))(v13);

  v14 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v15 = v12();
  v17 = v16;

  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
LABEL_8:
    if (!(v14 >> 62))
    {
      goto LABEL_9;
    }

LABEL_14:
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  (v12)(v18);
  v20 = objc_allocWithZone(PXRenameCollectionAction);
  v21 = sub_1A524C634();

  v22 = [v20 initWithCollection:a1 title:v21];

  if (v22)
  {
    v23 = v22;
    MEMORY[0x1A5907D70]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v14 = v42;
    goto LABEL_8;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_10:
    v24 = objc_allocWithZone(PXActionGroup);
    sub_1A3C52C70(0, &qword_1EB12DBC0, off_1E771CF30);
    v25 = sub_1A524CA14();

    v26 = [v24 initWithActions_];

    v27 = sub_1A524C634();
    v28 = PXLocalizedString(v27);

    if (!v28)
    {
      sub_1A524C674();
      v28 = sub_1A524C634();
    }

    [v26 setLocalizedActionName_];

    v29 = swift_allocObject();
    v29[2] = v5;
    v29[3] = a1;
    v29[4] = a3;
    v29[5] = a4;
    aBlock[4] = sub_1A4165CB4;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_110;
    v30 = _Block_copy(aBlock);
    v31 = v5;
    v32 = a1;

    [v26 executeWithUndoManager:a2 completionHandler:v30];
    _Block_release(v30);

    return;
  }

LABEL_15:

  v33 = sub_1A524D224();
  v34 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v34, v33))
  {
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v36 = 136446210;
    v37 = [a1 localIdentifier];
    v38 = sub_1A524C674();
    v40 = v39;

    sub_1A3C2EF94(v38, v40, aBlock);
  }

  a3(1, a1);
}

void sub_1A4161438()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1A4165660(&unk_1A531F2F8, &qword_1EB1335B0);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 photoLibrary];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      v7[2] = *(v1 + 80);
      v7[3] = v6;
      v7[4] = v3;
      v8 = v3;

      PHPhotoLibrary.registerObserver(_:block:)(0, 0, sub_1A41652C8, v7, v9);

      sub_1A415EDB0(v9);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A416158C()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  return sub_1A415EDB0(v1);
}

void sub_1A41615BC(void *a1)
{
  v2 = sub_1A4165660(&unk_1A531F288, &qword_1EB1335C0);
  if (!v2)
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = [a1 album];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 objectID];

  v9 = v3;
  v7 = [v9 objectID];
  LODWORD(v5) = [v6 isEqual_];

  if (v5)
  {
    v8 = [v9 managedObjectContext];

    if (v8)
    {
      [v8 refreshObject:v9 mergeChanges:0];
    }

    if ([a1 invitationRecordsDidChange])
    {
      sub_1A4160D94();
    }
  }

  else
  {
  }
}

void sub_1A4161730(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1A41615BC(a3);
}

uint64_t sub_1A4161934@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3D0))();
  *a1 = result;
  return result;
}

void (*sub_1A41619F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3E0))();
  return sub_1A3E658B0;
}

void (*sub_1A4161C14(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1D0))();
  return sub_1A3E658B0;
}

void (*sub_1A4161D7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x200))();
  return sub_1A3E658B0;
}

void (*sub_1A4161EE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x230))();
  return sub_1A3E658B0;
}

void (*sub_1A4162044(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x290))();
  return sub_1A3E658B0;
}

void (*sub_1A41621AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x410))();
  return sub_1A3E658B0;
}

void (*sub_1A416236C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x530))();
  return sub_1A3E658B0;
}

void (*sub_1A41624E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x440))();
  return sub_1A3E658B0;
}

void (*sub_1A4162648(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4A0))();
  return sub_1A3E658B0;
}

void (*sub_1A41627AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4D0))();
  return sub_1A3E658B0;
}

void (*sub_1A4162910(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x500))();
  return sub_1A3E658B0;
}

void (*sub_1A4162B38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x350))();
  return sub_1A3E658B0;
}

void (*sub_1A4162CA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x380))();
  return sub_1A3E658B0;
}

void (*sub_1A4162E1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x320))();
  return sub_1A3E658B0;
}

void (*sub_1A4162FE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x560))();
  return sub_1A3E658B0;
}

void (*sub_1A4163148(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x590))();
  return sub_1A3E658B0;
}

void (*sub_1A41632B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x260))();
  return sub_1A3E658B0;
}

void (*sub_1A4163414(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5F0))();
  return sub_1A3E658B0;
}

void (*sub_1A4163578(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x620))();
  return sub_1A3E658B0;
}

void (*sub_1A41636DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5C0))();
  return sub_1A3E658B0;
}

void (*sub_1A4163844(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x650))();
  return sub_1A3E62A10;
}

void (*sub_1A41639A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x680))();
  return sub_1A3E658B0;
}

void (*sub_1A4163B0C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6B0))();
  return sub_1A3E658B0;
}

void (*sub_1A4163C70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6E0))();
  return sub_1A3E658B0;
}

void (*sub_1A4163E30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x710))();
  return sub_1A3E658B0;
}

void (*sub_1A4163F98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x748))();
  return sub_1A3E658B0;
}

void (*sub_1A4164100(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x778))();
  return sub_1A3E658B0;
}

void (*sub_1A4164264(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7A8))();
  return sub_1A3E658B0;
}

void (*sub_1A41643CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7C0))();
  return sub_1A3E658B0;
}

uint64_t sub_1A4164560@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x190))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A41645C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4165BCC(0, &qword_1EB133660, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4164878()
{
  v1 = v0;
  sub_1A4165BCC(0, &qword_1EB133660, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

double sub_1A4164A8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB1334C8);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return result;
}

void sub_1A4164B7C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB1334F0;
  swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
}

void sub_1A4164BEC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1A4164EF4(uint64_t (*a1)(uint64_t, uint64_t, double))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = sub_1A3C66EE8(v3, v4);
  return a1(v3, v4, v5);
}

uint64_t objectdestroy_134Tm()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_1A4165074(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x7F0))();
  v8 = (*((*v6 & *v7) + 0x1A8))();

  sub_1A415D838(a1, v8, v3, v4, v5);
}

void sub_1A416516C()
{
  v1 = *(v0 + 16);
  v2 = qword_1EB1335C8;
  v3 = *(v0 + 24);
  swift_beginAccess();
  v4 = *(v1 + v2);
  *(v1 + v2) = v3;
}

double sub_1A41651D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = qword_1EB1335A8;

  swift_beginAccess();
  *(v2 + v3) = v1;

  return result;
}

uint64_t sub_1A416523C(uint64_t a1)
{
  sub_1A3C2A2DC(0, &unk_1EB129F60, sub_1A3C6F5F0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A41652C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1A524DC34();
    v3 = v2;
    v4 = MEMORY[0x1E69E7D40];
    if (v2)
    {
      v5 = [v2 objectAfterChanges];
      if (v5)
      {
        v6 = *((*v4 & *v1) + 0x3D8);
        v7 = v5;
        v8 = v5;
        v6(v7);
        sub_1A415E9F4(v7);
      }
    }

    v23 = v3;
    v24 = v1;
    v9 = (*((*v4 & *v1) + 0x7F0))();
    v10 = (*((*v4 & *v9) + 0x2B0))();

    v25 = MEMORY[0x1E69E7CC0];
    v11 = (v10 & 0xFFFFFFFFFFFFFF8);
    if (v10 >> 62)
    {
LABEL_38:
      v12 = sub_1A524E2B4();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (v12 != v13)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1A59097F0](v13, v10);
      }

      else
      {
        if (v13 >= v11[2])
        {
          goto LABEL_35;
        }

        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 = [v15 shareParticipant];

      ++v13;
      if (v18)
      {
        MEMORY[0x1A5907D70]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        v14 = v25;
        v13 = v17;
      }
    }

    if (v14 >> 62)
    {
      v10 = sub_1A524E2B4();
    }

    else
    {
      v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (v10 != v19)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1A59097F0](v19, v14);
      }

      else
      {
        if (v19 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v20 = *(v14 + 8 * v19 + 32);
      }

      v11 = v20;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_36;
      }

      sub_1A3C52C70(0, &qword_1EB1209C8, 0x1E6978AC0);
      v21 = sub_1A524DC34();

      ++v19;
      if (v21)
      {

        v22 = v24;
        goto LABEL_31;
      }
    }

    v22 = v24;
    if (!v23)
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_1A4160D94();
LABEL_32:
  }
}

uint64_t sub_1A4165660(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x940))(KeyPath);

  return *(v2 + *a2);
}

unint64_t sub_1A4165748()
{
  result = qword_1EB1335D8;
  if (!qword_1EB1335D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1335D8);
  }

  return result;
}

uint64_t sub_1A416579C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41657F4(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1A416592C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x560))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

unint64_t sub_1A41659E8()
{
  result = qword_1EB133650;
  if (!qword_1EB133650)
  {
    sub_1A4164BEC(255, &qword_1EB133640, &qword_1EB133648, 0x1E69BE330, MEMORY[0x1E69E6720]);
    sub_1A3EBA020(&qword_1EB133658, &qword_1EB133648, 0x1E69BE330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133650);
  }

  return result;
}

void sub_1A4165AAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + qword_1EB1335C0);
  *(v1 + qword_1EB1335C0) = v2;
  v4 = v2;
}

uint64_t sub_1A4165AEC(uint64_t a1, uint64_t a2)
{
  sub_1A3C2A2DC(0, &unk_1EB129F60, sub_1A3C6F5F0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4165BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB126660, 0x1E6978630);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4165C4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + qword_1EB1335B0);
  *(v1 + qword_1EB1335B0) = v2;
  v4 = v2;
}

void sub_1A4165CB4(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (a1)
  {
    v6 = sub_1A415F938();
    v7 = [v4 localIdentifier];
    if (!v7)
    {
      sub_1A524C674();
      v7 = sub_1A524C634();
    }

    v8 = [v6 px:v7 assetCollectionWithLocalIdentifier:?];

    if (v8)
    {
      v9 = v8;
      v10 = v9;
      goto LABEL_14;
    }

    v20 = sub_1A524D244();
    v21 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v21, v20))
    {
      loga = v21;
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v22 = 136446210;
      v23 = [v4 localIdentifier];
      v24 = sub_1A524C674();
      v26 = v25;

      sub_1A3C2EF94(v24, v26, &v29);
    }
  }

  else
  {
    v12 = sub_1A524D244();
    v13 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_1A3C1C000, v14, v12, "Unable to update shared album: %@", v15, 0xCu);
      sub_1A3CB65E4(v16);
      MEMORY[0x1A590EEC0](v16, -1, -1);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }
  }

  v9 = v4;
  v10 = 0;
LABEL_14:
  log = v9;
  v5(v3 & 1);
}

void (*sub_1A4165F84())(void)
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  sub_1A415E854(v2);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x798))();
  if (result)
  {
    v7 = v6;
    v8 = result;
    result();
    result = sub_1A3C33378(v8, v7);
  }

  if (v3)
  {
    return v3(v2, v4);
  }

  return result;
}

uint64_t sub_1A4166058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for LemonadeShelvesSortButton(0) + 24);
  sub_1A524B694();
  *v6 = v9;
  *(v6 + 1) = v10;
  *a3 = a1;
  a3[1] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  type metadata accessor for SharedLibraryFilterViewModel(0);
  swift_unknownObjectRetain();
  return sub_1A5247C74();
}

void sub_1A4166154(uint64_t a1)
{
  if (!qword_1EB133668)
  {
    sub_1A41662D4(255);
    sub_1A41663D8(255);
    sub_1A3E429B4();
    sub_1A5249384();
    sub_1A416A9D4(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A416A9D4(&unk_1EB122E50, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    swift_getOpaqueTypeConformance2();
    sub_1A416806C(&qword_1EB133678, sub_1A41663D8, sub_1A416642C, MEMORY[0x1E6982090]);
    v1 = sub_1A524A2F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133668);
    }
  }
}

void sub_1A41662D4(uint64_t a1)
{
  if (!qword_1EB121F60)
  {
    sub_1A3E429B4();
    sub_1A5249384();
    sub_1A416A9D4(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A416A9D4(&unk_1EB122E50, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F60);
    }
  }
}

uint64_t sub_1A4166460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeShelvesSortButtonContent(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for LemonadeShelvesSortButton(0) + 24);
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v19) = v9;
  *(&v19 + 1) = v10;
  sub_1A416A574(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v18 == 1)
  {
    v11 = *a1;
    v12 = a1[1];
    sub_1A416AE3C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    swift_unknownObjectRetain();
    sub_1A5247C84();
    v13 = v19;
    v18 = 0;
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A524B694();
    *(v7 + 24) = v19;
    *v7 = v11;
    *(v7 + 1) = v12;
    *(v7 + 2) = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v12;
    type metadata accessor for SharedLibraryStatusViewModel(0);
    swift_unknownObjectRetain();
    sub_1A5247C74();
    sub_1A416AEA0(v7, a2, type metadata accessor for LemonadeShelvesSortButtonContent);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v5 + 56))(a2, v15, 1, v4);
}

uint64_t sub_1A41666C0()
{
  v0 = sub_1A5249384();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E429B4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeShelvesSortButton(0);
  sub_1A416AE3C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  v9 = sub_1A5247C84();
  v10 = (*(*v16[0] + 144))(v9);

  v11 = PXLibraryFilterItemTagFromViewMode(v10);
  if (v10)
  {
    v12 = PXLibraryFilterMenuImageNameForItemTagFilled(v11, 1);
    if (v12)
    {
      v13 = v12;
      sub_1A524C674();
    }
  }

  v16[0] = sub_1A3C38BD4(0xD000000000000028);
  v16[1] = v14;
  sub_1A3D5F9DC();
  sub_1A524B614();
  sub_1A5249374();
  sub_1A416A9D4(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
  sub_1A416A9D4(&unk_1EB122E50, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  sub_1A524A904();
  (*(v1 + 8))(v3, v0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A4166A08()
{
  v1 = *(v0 + 32);
  v2 = (v1 + *(type metadata accessor for LemonadeShelvesSortButton(0) + 24));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 40) = 1;
  sub_1A416A574(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A4166ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v20 = *(a1 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A4166154(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v3;
  v22 = v3;
  sub_1A41662D4(0);
  v19[1] = v10;
  sub_1A41663D8(0);
  sub_1A3E429B4();
  v12 = v11;
  v13 = sub_1A5249384();
  v14 = sub_1A416A9D4(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
  v15 = sub_1A416A9D4(&unk_1EB122E50, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1A416806C(&qword_1EB133678, sub_1A41663D8, sub_1A416642C, MEMORY[0x1E6982090]);
  sub_1A524A2E4();
  sub_1A416ADD4(v3, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeShelvesSortButton);
  v16 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v17 = swift_allocObject();
  sub_1A416AEA0(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LemonadeShelvesSortButton);
  sub_1A416A9D4(&qword_1EB133688, sub_1A4166154, MEMORY[0x1E697CD28]);
  sub_1A524A634();

  return (*(v7 + 8))(v9, v6);
}

void sub_1A4166E40(void x0_0, uint64_t a1)
{
  type metadata accessor for SharedLibraryStatusViewModel(0);
  ObjectType = swift_getObjectType();
  v4 = (*(a1 + 16))(ObjectType, a1);
  v5 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

  sub_1A3C62B88(v5);
}

uint64_t sub_1A4166EE4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  sub_1A4167868(0, &qword_1EB121448, sub_1A3D93850);
  v77 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v84 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = v71 - v7;
  sub_1A4167868(0, &qword_1EB121470, sub_1A3FF7760);
  v87 = v8;
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v86 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = v71 - v11;
  sub_1A41678C8(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4168210(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v71 - v20;
  sub_1A4167868(0, &qword_1EB121468, sub_1A4168244);
  v75 = v22;
  v81 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v80 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v71 - v25;
  v88 = v1;
  sub_1A4168244(0);
  sub_1A4168318(255);
  v28 = v27;
  v29 = sub_1A5249804();
  v30 = sub_1A416A9D4(&qword_1EB121830, sub_1A4168318, MEMORY[0x1E697D690]);
  v89 = v28;
  v90 = v29;
  v91 = v30;
  v92 = MEMORY[0x1E697C6A0];
  swift_getOpaqueTypeConformance2();
  v79 = v26;
  sub_1A524BA54();
  type metadata accessor for LemonadeShelvesSortButtonContent(0);
  sub_1A416AE3C(0, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
  v31 = sub_1A5247C84();
  LOBYTE(v29) = (*(*v89 + 200))(v31);

  if (v29 & 1) != 0 || (v33 = sub_1A5247C84(), v34 = (*(*v89 + 248))(v33), v32 = , (v34))
  {
    v73 = v71;
    MEMORY[0x1EEE9AC00](v32);
    v72 = &v71[-4];
    v71[-2] = v2;
    sub_1A41678E8(0);
    v71[1] = v35;
    sub_1A41679F0(255);
    v71[0] = v36;
    type metadata accessor for PXLibraryFilterViewMode();
    v37 = v16;
    v38 = v21;
    v39 = v2;
    v41 = v40;
    sub_1A4167AC4(255);
    v42 = v13;
    v44 = v43;
    v45 = v4;
    v46 = sub_1A4168110();
    v47 = v14;
    v48 = sub_1A416A9D4(&qword_1EB1207B8, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531AA80);
    v89 = v44;
    v90 = v41;
    v91 = v46;
    v92 = v48;
    v4 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v89 = v71[0];
    v90 = v41;
    v2 = v39;
    v21 = v38;
    v91 = OpaqueTypeConformance2;
    v92 = v48;
    v14 = v47;
    v13 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1A524BA54();
    (*(v47 + 32))(v38, v37, v42);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = (*(v14 + 56))(v21, v50, 1, v13);
  v74 = v21;
  MEMORY[0x1EEE9AC00](v51);
  v71[-2] = v2;
  sub_1A3FF7760(0);
  sub_1A416A9D4(&qword_1EB121040, sub_1A3FF7760, MEMORY[0x1E6981F48]);
  v52 = v82;
  v53 = sub_1A524BA54();
  MEMORY[0x1EEE9AC00](v53);
  v71[-2] = v2;
  sub_1A3D93850();
  sub_1A416A9D4(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
  v54 = v83;
  sub_1A524BA54();
  v55 = v80;
  v56 = *(v81 + 16);
  v57 = v75;
  v56(v80, v79, v75);
  sub_1A3CDED54(v21, v85);
  v58 = v76;
  v73 = *(v76 + 16);
  v73(v86, v52, v87);
  v72 = *(v4 + 16);
  v59 = v54;
  v60 = v77;
  v72(v84, v59, v77);
  v61 = v78;
  v56(v78, v55, v57);
  sub_1A4169C84(0);
  v63 = v62;
  sub_1A3CDED54(v85, &v61[*(v62 + 48)]);
  v64 = v87;
  v73(&v61[*(v63 + 64)], v86, v87);
  v65 = &v61[*(v63 + 80)];
  v66 = v84;
  v72(v65, v84, v60);
  v67 = *(v4 + 8);
  v67(v83, v60);
  v68 = *(v58 + 8);
  v68(v82, v64);
  sub_1A416B230(v74, sub_1A4168210);
  v69 = *(v81 + 8);
  v69(v79, v57);
  v67(v66, v60);
  v68(v86, v87);
  sub_1A416B230(v85, sub_1A4168210);
  return (v69)(v80, v57);
}

void sub_1A4167868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524BA74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A41678E8(uint64_t a1)
{
  if (!qword_1EB121D68)
  {
    sub_1A41679F0(255);
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A4167AC4(255);
    sub_1A4168110();
    sub_1A416A9D4(&qword_1EB1207B8, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531AA80);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D68);
    }
  }
}

void sub_1A41679F0(uint64_t a1)
{
  if (!qword_1EB121D90)
  {
    sub_1A4167AC4(255);
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A4168110();
    sub_1A416A9D4(&qword_1EB1207B8, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531AA80);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D90);
    }
  }
}

void sub_1A4167AC4(uint64_t a1)
{
  if (!qword_1EB123F18)
  {
    sub_1A4167B24(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123F18);
    }
  }
}

void sub_1A4167B24(uint64_t a1)
{
  if (!qword_1EB121E98)
  {
    sub_1A4167BF8(255);
    sub_1A5249274();
    sub_1A416A9D4(&qword_1EB121820, sub_1A4167BF8, MEMORY[0x1E697D690]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E98);
    }
  }
}

void sub_1A4167BF8(uint64_t a1)
{
  if (!qword_1EB121818)
  {
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A4167D0C(255);
    sub_1A416A9D4(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531D284);
    sub_1A416806C(&qword_1EB121480, sub_1A4167D0C, sub_1A41680DC, MEMORY[0x1E69819D0]);
    v1 = sub_1A524B824();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121818);
    }
  }
}

void sub_1A4167D0C(uint64_t a1)
{
  if (!qword_1EB121478)
  {
    sub_1A4167E10(255);
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A4167E44(255);
    sub_1A416A9D4(&qword_1EB120C28, sub_1A4167E10, MEMORY[0x1E69E6338]);
    sub_1A416A9D4(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531D284);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121478);
    }
  }
}

void sub_1A4167E44(uint64_t a1)
{
  if (!qword_1EB1219F0)
  {
    sub_1A4167F68(255);
    sub_1A3E429B4();
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A416A9D4(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A416A9D4(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531D284);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1219F0);
    }
  }
}

void sub_1A4167F68(uint64_t a1)
{
  if (!qword_1EB121DD0)
  {
    sub_1A3E429B4();
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A416A9D4(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A416A9D4(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531D284);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DD0);
    }
  }
}

uint64_t sub_1A416806C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A4168110()
{
  result = qword_1EB123F20;
  if (!qword_1EB123F20)
  {
    sub_1A4167AC4(255);
    sub_1A4167BF8(255);
    sub_1A5249274();
    sub_1A416A9D4(&qword_1EB121820, sub_1A4167BF8, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F20);
  }

  return result;
}

void sub_1A4168244(uint64_t a1)
{
  if (!qword_1EB121EA0)
  {
    sub_1A4168318(255);
    sub_1A5249804();
    sub_1A416A9D4(&qword_1EB121830, sub_1A4168318, MEMORY[0x1E697D690]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EA0);
    }
  }
}

void sub_1A4168318(uint64_t a1)
{
  if (!qword_1EB121828)
  {
    sub_1A41683E4(255);
    sub_1A4168520();
    sub_1A416A9D4(&qword_1EB121298, sub_1A41683E4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B824();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121828);
    }
  }
}

void sub_1A4168418(uint64_t a1)
{
  if (!qword_1EB121DD8)
  {
    sub_1A4168480(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB121DD8);
    }
  }
}

void sub_1A4168480(uint64_t a1)
{
  if (!qword_1EB121DE0)
  {
    sub_1A3FAAF54(255);
    sub_1A3FAAFB4();
    sub_1A4168520();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DE0);
    }
  }
}

unint64_t sub_1A4168520()
{
  result = qword_1EB125690;
  if (!qword_1EB125690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125690);
  }

  return result;
}

uint64_t sub_1A4168574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[3] = a2;
  v3 = sub_1A5249804();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4168318(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5249434();
  v17[1] = v13;
  v17[2] = v12;
  v14 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  sub_1A4670334(ObjectType, v14);
  v17[4] = v19;
  v17[5] = v20;
  v18 = v21;
  sub_1A41683E4(0);
  sub_1A4168520();
  sub_1A416A9D4(&qword_1EB121298, sub_1A41683E4, MEMORY[0x1E6981F48]);
  sub_1A524B804();
  sub_1A52497F4();
  sub_1A416A9D4(&qword_1EB121830, sub_1A4168318, MEMORY[0x1E697D690]);
  sub_1A524A9A4();
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A4168818@<X0>(char *a1@<X8>)
{
  v44 = a1;
  sub_1A3FAAF54(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4168480(0);
  v5 = v4;
  v39 = *(v4 - 8);
  v6 = v39;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v49 = sub_1A524B574();
  v47 = sub_1A3C38BD4(0xD000000000000022);
  v48 = v19;
  sub_1A3D5F9DC();
  sub_1A524AC94();

  v40 = v18;
  sub_1A416AEA0(v3, v18, sub_1A3FAAF54);
  sub_1A416A1B8(0, &qword_1EB123688, sub_1A3FAAF54, sub_1A416A15C);
  v21 = v20;
  *&v18[*(v20 + 36)] = 258;
  v49 = sub_1A524B574();
  v47 = sub_1A3C38BD4(0xD000000000000022);
  v48 = v22;
  sub_1A524AC94();

  v23 = v45;
  sub_1A416AEA0(v3, v45, sub_1A3FAAF54);
  *(v23 + *(v21 + 36)) = 257;
  v49 = sub_1A524B574();
  v47 = sub_1A3C38BD4(0xD000000000000022);
  v48 = v24;
  sub_1A524AC94();

  v25 = v3;
  v26 = v41;
  sub_1A416AEA0(v25, v41, sub_1A3FAAF54);
  *(v26 + *(v21 + 36)) = 256;
  v27 = *(v6 + 16);
  v28 = v46;
  v29 = v40;
  v27(v46, v40, v5);
  v30 = v42;
  v31 = v45;
  v27(v42, v45, v5);
  v32 = v43;
  v27(v43, v26, v5);
  v33 = v44;
  v27(v44, v28, v5);
  sub_1A4168418(0);
  v35 = v34;
  v27(&v33[*(v34 + 48)], v30, v5);
  v27(&v33[*(v35 + 64)], v32, v5);
  v36 = *(v39 + 8);
  v36(v26, v5);
  v36(v31, v5);
  v36(v29, v5);
  v36(v32, v5);
  v36(v30, v5);
  return (v36)(v46, v5);
}

uint64_t sub_1A4168D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for LemonadeShelvesSortButtonContent(0);
  v50 = *(v3 - 8);
  v55 = *(v50 + 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249274();
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4167BF8(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4167AC4(0);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41679F0(0);
  v18 = *(v17 - 8);
  v51 = v17;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A3C38BD4(0xD000000000000028);
  v65 = v20;
  v46 = *(a1 + 24);
  v45 = *(a1 + 32);
  v62 = v46;
  v63 = v45;
  sub_1A416AE3C(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
  v43 = v21;
  sub_1A524B6C4();
  v57 = a1;
  type metadata accessor for PXLibraryFilterViewMode();
  v42 = v22;
  sub_1A4167D0C(0);
  v44 = type metadata accessor for PXLibraryFilterViewMode;
  sub_1A416A9D4(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531D284);
  sub_1A416806C(&qword_1EB121480, sub_1A4167D0C, sub_1A41680DC, MEMORY[0x1E69819D0]);
  sub_1A3D5F9DC();
  sub_1A524B814();
  sub_1A5249264();
  sub_1A416A9D4(&qword_1EB121820, sub_1A4167BF8, MEMORY[0x1E697D690]);
  v23 = v54;
  v24 = v47;
  sub_1A524A9A4();
  (*(v48 + 1))(v9, v24);
  (*(v12 + 8))(v14, v11);
  v41 = a1;
  v48 = type metadata accessor for LemonadeShelvesSortButtonContent;
  sub_1A416ADD4(a1, v5, type metadata accessor for LemonadeShelvesSortButtonContent);
  v25 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v26 = swift_allocObject();
  v50 = type metadata accessor for LemonadeShelvesSortButtonContent;
  sub_1A416AEA0(v5, v26 + v25, type metadata accessor for LemonadeShelvesSortButtonContent);
  v27 = v49;
  v28 = &v23[*(v49 + 36)];
  *v28 = sub_1A416AF08;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  v58 = v46;
  v59 = v45;
  sub_1A524B6A4();
  sub_1A416ADD4(a1, v5, type metadata accessor for LemonadeShelvesSortButtonContent);
  v29 = swift_allocObject();
  v30 = v5;
  sub_1A416AEA0(v5, v29 + v25, type metadata accessor for LemonadeShelvesSortButtonContent);
  v31 = sub_1A4168110();
  v32 = sub_1A416A9D4(&qword_1EB1207B8, v44, &unk_1A531AA80);
  v33 = v42;
  v34 = v54;
  sub_1A524B144();

  v35 = sub_1A416B230(v34, sub_1A4167AC4);
  v36 = v41;
  v64 = (*(**(v41 + 16) + 144))(v35);
  sub_1A416ADD4(v36, v30, v48);
  v37 = swift_allocObject();
  sub_1A416AEA0(v30, v37 + v25, v50);
  v58 = v27;
  v59 = v33;
  v60 = v31;
  v61 = v32;
  swift_getOpaqueTypeConformance2();
  v38 = v51;
  v39 = v56;
  sub_1A524B144();

  return (*(v52 + 8))(v39, v38);
}

void sub_1A41694A8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3E429B4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = PXLibraryFilterItemTagFromViewMode(v9);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v11 = PXLibraryFilterTitleForItemTag(v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A524C674();
    v15 = v14;

    v22[0] = v13;
    v22[1] = v15;
    v16 = PXLibraryFilterMenuImageNameForItemTagFilled(v10, 1);
    if (v16)
    {
      v17 = v16;
      sub_1A416B378(0);
      v19 = a2 + *(v18 + 44);
      sub_1A524C674();

      sub_1A3D5F9DC();
      sub_1A524B614();
      (*(v6 + 32))(v19, v8, v5);
      sub_1A416A1B8(0, &qword_1EB133690, sub_1A3E429B4, sub_1A416A22C);
      v21 = v19 + *(v20 + 36);
      *v21 = v9;
      *(v21 + 8) = 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A4169690@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a1;
  v33 = a2;
  v3 = type metadata accessor for LemonadeShelvesSortButtonContent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3D93850();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  sub_1A416ADD4(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeShelvesSortButtonContent);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1A416AEA0(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for LemonadeShelvesSortButtonContent);
  sub_1A524B704();
  sub_1A416ADD4(v29, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeShelvesSortButtonContent);
  v19 = swift_allocObject();
  sub_1A416AEA0(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for LemonadeShelvesSortButtonContent);
  v20 = v30;
  sub_1A524B704();
  v21 = *(v8 + 16);
  v22 = v31;
  v21(v31, v16, v7);
  v23 = v32;
  v21(v32, v20, v7);
  v24 = v33;
  v21(v33, v22, v7);
  sub_1A3FF7794(0);
  v21(&v24[*(v25 + 48)], v23, v7);
  v26 = *(v8 + 8);
  v26(v20, v7);
  v26(v16, v7);
  v26(v23, v7);
  return (v26)(v22, v7);
}

uint64_t sub_1A4169A48@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C38BD4(0xD000000000000020);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A4169AB8@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C38BD4(0xD000000000000024);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A4169B28(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeShelvesSortButtonContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A416ADD4(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeShelvesSortButtonContent);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1A416AEA0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for LemonadeShelvesSortButtonContent);
  return sub_1A524B704();
}

void sub_1A4169C84(uint64_t a1)
{
  if (!qword_1EB121460)
  {
    sub_1A4167868(255, &qword_1EB121468, sub_1A4168244);
    sub_1A4168210(255);
    sub_1A4167868(255, &qword_1EB121470, sub_1A3FF7760);
    sub_1A4167868(255, &qword_1EB121448, sub_1A3D93850);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB121460);
    }
  }
}

uint64_t sub_1A4169D74@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C38BD4(0xD000000000000020);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t LemonadeShelvesSortButtonMac.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for LemonadeShelvesSortButtonMac(0);
  type metadata accessor for SharedLibraryFilterViewModel(0);
  swift_unknownObjectRetain();
  return sub_1A5247C74();
}

uint64_t LemonadeShelvesSortButtonMac.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for LemonadeShelvesSortButtonMac(0);
  sub_1A416AE3C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  type metadata accessor for PXLibraryFilterViewMode();
  sub_1A524B694();
  *(a1 + 24) = v7;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  type metadata accessor for LemonadeShelvesSortButtonContent(0);
  type metadata accessor for SharedLibraryStatusViewModel(0);
  swift_unknownObjectRetain_n();
  return sub_1A5247C74();
}

void sub_1A4169FA8()
{
  sub_1A3EFDF58();
  sub_1A52483D4();

  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4(0, v2);
  v3 = sub_1A524C3D4();

  [v0 sendEvent:v1 withPayload:v3];
}

uint64_t sub_1A416A0B4()
{
  v1 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1A5247B44();

  return MEMORY[0x1A5906A80](v3, sub_1A416B90C, v4);
}

void sub_1A416A15C(uint64_t a1)
{
  if (!qword_1EB1221E8)
  {
    sub_1A4168520();
    v1 = sub_1A5249C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1221E8);
    }
  }
}

void sub_1A416A1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A416A22C(uint64_t a1)
{
  if (!qword_1EB133698)
  {
    type metadata accessor for PXLibraryFilterViewMode();
    sub_1A416A9D4(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531D284);
    v1 = sub_1A5249C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133698);
    }
  }
}

uint64_t sub_1A416A2C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  type metadata accessor for SharedLibraryFilterViewModel(0);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  v6 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

  result = SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(v6);
  *a1 = result;
  return result;
}

void sub_1A416A424(uint64_t a1)
{
  sub_1A416A514();
  if (v1 <= 0x3F)
  {
    sub_1A416AE3C(319, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      sub_1A416A574(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A416A514()
{
  result = qword_1EB125030;
  if (!qword_1EB125030)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125030);
  }

  return result;
}

void sub_1A416A574(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A416A5EC(uint64_t a1)
{
  sub_1A416A514();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SharedLibraryFilterViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1A416AE3C(319, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A416AE3C(319, &qword_1EB124930, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E697DA80]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1A416AE3C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1A416AE3C(0, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1A416A8DC(uint64_t a1)
{
  sub_1A416A514();
  if (v1 <= 0x3F)
  {
    sub_1A416AE3C(319, &qword_1EB124940, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A416A9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_5Tm_0()
{
  v1 = (type metadata accessor for LemonadeShelvesSortButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v2 + v1[7];
  sub_1A416AE3C(0, &qword_1EB133680, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A416AE3C(0, &qword_1EB127228, type metadata accessor for SharedLibraryFilterViewModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A416AB88()
{
  v2 = *(type metadata accessor for LemonadeShelvesSortButton(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A41669E8(v0 + v3);
}

uint64_t sub_1A416AC54()
{
  v1 = *(v0 + 64);
  v3 = 0;
  return (*(*v1 + 640))(&v3);
}

uint64_t sub_1A416ACB8()
{
  swift_getKeyPath();
  sub_1A4167E10(0);
  sub_1A4167E44(0);
  sub_1A416A9D4(&qword_1EB120C28, sub_1A4167E10, MEMORY[0x1E69E6338]);
  sub_1A416A9D4(&qword_1EB1207C0, type metadata accessor for PXLibraryFilterViewMode, &unk_1A531D284);
  sub_1A41680DC();
  return sub_1A524B9B4();
}

uint64_t sub_1A416ADD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A416AE3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A416AEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A416AF08()
{
  v1 = *(type metadata accessor for LemonadeShelvesSortButtonContent(0) - 8);
  [*(*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 16) + 24) viewMode];
  sub_1A416AE3C(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t objectdestroy_64Tm()
{
  v1 = (type metadata accessor for LemonadeShelvesSortButtonContent(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();

  v3 = v2 + v1[9];
  sub_1A416AE3C(0, &qword_1EB121420, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A416AE3C(0, &qword_1EB127218, type metadata accessor for SharedLibraryStatusViewModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

void sub_1A416B134(void *a1, void *a2)
{
  v5 = *(type metadata accessor for LemonadeShelvesSortButtonContent(0) - 8);
  if (*a1 != *a2)
  {
    v6 = *(*(v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 16) + 24);
    sub_1A416AE3C(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
    v7 = v6;
    sub_1A524B6A4();
    [v7 setViewMode_];
  }
}

uint64_t sub_1A416B230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A416B290(void *a1, void *a2)
{
  v5 = type metadata accessor for LemonadeShelvesSortButtonContent(0);
  v8 = *(v5 - 8);
  result = v5 - 8;
  v7 = v8;
  if (*a1 != *a2)
  {
    [*(*(v2 + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 16) + 24) viewMode];
    sub_1A416AE3C(0, &qword_1EB121B98, type metadata accessor for PXLibraryFilterViewMode, MEMORY[0x1E6981790]);
    return sub_1A524B6B4();
  }

  return result;
}

void sub_1A416B378(uint64_t a1)
{
  if (!qword_1EB1336A0)
  {
    sub_1A4167F68(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1336A0);
    }
  }
}

void sub_1A416B3E0()
{
  type metadata accessor for LemonadeShelvesSortButtonContent(0);
  sub_1A3EFDF74();
  sub_1A52483D4();

  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4(0, v2);
  v3 = sub_1A524C3D4();

  [v0 sendEvent:v1 withPayload:v3];
}

uint64_t sub_1A416B518()
{
  v1 = *(*(v0 + 16) + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 64))(&v8, ObjectType, v1);
  v7 = v8;
  v6 = 1;
  if (static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v7, &v6))
  {
    v4 = 0;
    (*(v1 + 72))(&v4, ObjectType, v1);
    return (*(v1 + 48))(0, ObjectType, v1);
  }

  else
  {
    v5 = 1;
    return (*(v1 + 72))(&v5, ObjectType, v1);
  }
}

void sub_1A416B604()
{
  type metadata accessor for LemonadeShelvesSortButtonContent(0);
  sub_1A3EFDF58();
  sub_1A52483D4();

  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4(0, v2);
  v3 = sub_1A524C3D4();

  [v0 sendEvent:v1 withPayload:v3];
}

void sub_1A416B73C()
{
  type metadata accessor for LemonadeShelvesSortButtonContent(0);
  sub_1A3EFDF74();
  sub_1A52483D4();

  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4(0, v2);
  v3 = sub_1A524C3D4();

  [v0 sendEvent:v1 withPayload:v3];
}

uint64_t sub_1A416B8AC(uint64_t a1)
{
  v3 = *(*(v1 + 16) + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 48))(a1, ObjectType, v3);
}

uint64_t sub_1A416B920@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MapSnapshotViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(PXPlacesThumbnailManager) init];
  *(v2 + 24) = 0;
  result = sub_1A5241604();
  *a1 = v2;
  return result;
}

uint64_t sub_1A416B9A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DBD0];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A416C0E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for MapSnapshotView(0);
  sub_1A4171350(v1 + *(v12 + 28), v11, &qword_1EB128A70, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5247E04();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A416BC00(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v52 = sub_1A5247E04();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52482C4();
  v7 = *(v6 - 8);
  v56 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MapSnapshotView(0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A416F6AC(0, v12);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v15;
  v49 = a1;
  sub_1A52482B4();
  v46 = a2;
  sub_1A416C1AC(v15);
  v47 = *(a2 + 32);
  v16 = a2[1];
  v45 = *a2;
  v43 = v16;
  v50 = type metadata accessor for MapSnapshotView;
  v17 = a2;
  v18 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41713C0(v17, v18, type metadata accessor for MapSnapshotView);
  v48 = *(v7 + 16);
  v19 = v9;
  v20 = v9;
  v21 = v6;
  v48(v19, a1, v6);
  v22 = *(v44 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = *(v7 + 80);
  v25 = (v11 + v24 + v23) & ~v24;
  v44 = v22 | v24;
  v26 = swift_allocObject();
  sub_1A416C144(v18, v26 + v23);
  v42 = *(v7 + 32);
  v42(v26 + v25, v20, v21);
  v27 = &v55[*(v57 + 36)];
  sub_1A416F9FC(0);
  v29 = v28;
  sub_1A524CC74();
  v30 = &v27[*(v29 + 40)];
  v31 = v43;
  *v30 = v45;
  *(v30 + 1) = v31;
  v30[32] = v47;
  *v27 = &unk_1A531F6D8;
  *(v27 + 1) = v26;
  v32 = v51;
  v33 = v46;
  sub_1A416B9A8(v51);
  sub_1A41713C0(v33, v18, v50);
  v48(v20, v49, v21);
  v34 = swift_allocObject();
  sub_1A416C144(v18, v34 + v23);
  v35 = v42(v34 + v25, v20, v21);
  sub_1A416FBB0(v35);
  sub_1A416FB68(&qword_1EB128AA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v36 = v53;
  v37 = v32;
  v38 = v52;
  v39 = v55;
  sub_1A524B154();

  (*(v54 + 8))(v37, v38);
  sub_1A3C58FE0(v39, sub_1A416F6AC);
  sub_1A416F858(0, &qword_1EB123DE8, sub_1A416F5D8, &qword_1EB127C70, MEMORY[0x1E697FD48]);
  *(v36 + *(v40 + 36)) = 0;
}

void sub_1A416C0E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A416C144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapSnapshotView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A416C1AC@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v3 = sub_1A5243594();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A416F6F4(0, &qword_1EB122C10, sub_1A416F7C0, MEMORY[0x1E69C2520], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  sub_1A416F7C0(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapSnapshotView(0);
  sub_1A416C0E0(0, &qword_1EB124960, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v14 = v24;
  swift_getKeyPath();
  *&v24 = v14;
  sub_1A4170CC4();
  sub_1A52415D4();

  v15 = *(v14 + 24);
  v16 = v15;

  if (v15)
  {
    v17 = v16;
    sub_1A52425A4();
    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A416F8DC(0);
    v19 = &v13[*(v18 + 36)];
    v20 = v25;
    *v19 = v24;
    *(v19 + 1) = v20;
    *(v19 + 2) = v26;
    sub_1A416F858(0, &qword_1EB123980, sub_1A416F8DC, &qword_1EB1289C0, MEMORY[0x1E697DDA0]);
    *&v13[*(v21 + 36)] = 0;
    v13[*(v11 + 36)] = 0;
    sub_1A41713C0(v13, v9, sub_1A416F7C0);
    swift_storeEnumTagMultiPayload();
    sub_1A416FD10();
    sub_1A416FB68(&qword_1EB129098, MEMORY[0x1E69C2520], MEMORY[0x1E69C2518]);
    sub_1A5249744();

    return sub_1A3C58FE0(v13, sub_1A416F7C0);
  }

  else
  {
    sub_1A5243584();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_1A416FD10();
    sub_1A416FB68(&qword_1EB129098, MEMORY[0x1E69C2520], MEMORY[0x1E69C2518]);
    sub_1A5249744();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A416C600(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1A5247E04();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1A524CC54();
  v2[13] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A416C6F4, v5, v4);
}

uint64_t sub_1A416C6F4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  type metadata accessor for MapSnapshotView(0);
  sub_1A416C0E0(0, &qword_1EB124960, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  *(v0 + 128) = *(v0 + 56);
  sub_1A52482B4();
  v4 = v3;
  v6 = v5;
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  sub_1A416B9A8(v1);
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1A416C848;
  v12 = *(v0 + 96);

  return sub_1A416D5DC(v0 + 16, v12, v10, v9, v4, v6);
}

uint64_t sub_1A416C848()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A416C9E8, v6, v5);
}

uint64_t sub_1A416C9E8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A416CA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52482C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MapSnapshotView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A416C0E0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1A524CCB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1A41713C0(a1, v11, type metadata accessor for MapSnapshotView);
  (*(v5 + 16))(v7, a2, v4);
  sub_1A524CC54();
  v16 = sub_1A524CC44();
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_1A416C144(v11, v19 + v17);
  (*(v5 + 32))(v19 + v18, v7, v4);
  sub_1A3D4D930(0, 0, v14, &unk_1A531F6E8, v19);

  return result;
}

uint64_t sub_1A416CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1A5247E04();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1A524CC54();
  v5[13] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A416CE10, v8, v7);
}

uint64_t sub_1A416CE10()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  type metadata accessor for MapSnapshotView(0);
  sub_1A416C0E0(0, &qword_1EB124960, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  *(v0 + 128) = *(v0 + 56);
  sub_1A52482B4();
  v4 = v3;
  v6 = v5;
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  sub_1A416B9A8(v1);
  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_1A416CF64;
  v12 = *(v0 + 96);

  return sub_1A416D5DC(v0 + 16, v12, v10, v9, v4, v6);
}

uint64_t sub_1A416CF64()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A4171478, v6, v5);
}

uint64_t sub_1A416D104@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A416C0E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A416D188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v7;
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  v8 = type metadata accessor for MapSnapshotView(0);
  type metadata accessor for MapSnapshotViewModel(0);
  sub_1A5247C74();
  return sub_1A4170B9C(a4, a5 + *(v8 + 28), &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
}

uint64_t sub_1A416D244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A41713C0(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapSnapshotView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A416C144(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1A4171484;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  return result;
}

void *sub_1A416D34C()
{
  swift_getKeyPath();
  sub_1A4170CC4();
  sub_1A52415D4();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1A416D3C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4170CC4();
  sub_1A52415D4();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1A416D44C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A416D47C(v1);
}

void sub_1A416D47C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4170CC4();
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_1A416D5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v7 + 104) = a4;
  *(v7 + 112) = v6;
  *(v7 + 88) = a2;
  *(v7 + 96) = a3;
  *(v7 + 80) = a1;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 120) = *v6;
  v8 = sub_1A5247E04();
  *(v7 + 128) = v8;
  *(v7 + 136) = *(v8 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A416D6DC, 0, 0);
}

uint64_t sub_1A416D9B8()
{
  v1 = *(v0 + 192);

  v2 = v1;
  sub_1A416D47C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A416DA30, 0, 0);
}

uint64_t sub_1A416DA30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A416DAA0()
{
  v1 = *(v0 + 208);

  v2 = v1;
  sub_1A416D47C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A416DB18, 0, 0);
}

uint64_t sub_1A416DB18()
{
  v1 = *(v0 + 80);

  if (*(v1 + 32))
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v7 = *v1;
    v6 = *(v1 + 8);
    *(v0 + 240) = v5;
    *(v0 + 248) = v4;
    *(v0 + 224) = v7;
    *(v0 + 232) = v6;
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v8[1] = sub_1A416DC3C;
    v9 = *(v0 + 88);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);

    return sub_1A4170350(v9, v7, v6, v5, v4, v10, v11);
  }
}

uint64_t sub_1A416DC3C(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A416DD3C, 0, 0);
}

uint64_t sub_1A416DD3C()
{
  if (v0[33])
  {
    sub_1A524CC54();
    v0[34] = sub_1A524CC44();
    v2 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A416DE18, v2, v1);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1A416DE18()
{
  v1 = *(v0 + 264);

  v2 = v1;
  sub_1A416D47C(v1);

  return MEMORY[0x1EEE6DFA0](sub_1A416DE90, 0, 0);
}

uint64_t sub_1A416DE90()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 304);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  if (*(v0 + 308))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = *(*(v0 + 112) + 16);
  *(v0 + 280) = v15;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = v12;
  *(v0 + 56) = v13;
  [v15 cachePlacesThumbnailForBoundingRegion:v1 size:v14 snapshot:? interfaceStyle:?];
  v7(v9, v8, v11);
  v16 = sub_1A5247DF4();
  v6(v9, v11);
  if (v16)
  {
    v17 = *MEMORY[0x1E697DBB8];
  }

  else
  {
    v17 = v8;
  }

  v7(v10, v17, v11);
  v18 = swift_task_alloc();
  *(v0 + 288) = v18;
  *v18 = v0;
  v18[1] = sub_1A416DFF8;
  v19 = *(v0 + 240);
  v20 = *(v0 + 248);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v23 = *(v0 + 144);
  v24 = *(v0 + 64);
  v25 = *(v0 + 72);

  return sub_1A4170350(v23, v21, v22, v19, v20, v24, v25);
}

uint64_t sub_1A416DFF8(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A416E0F8, 0, 0);
}

uint64_t sub_1A416E0F8()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 280);
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);
    v11 = *(v0 + 128);
    (*(v0 + 160))(v10, *(v0 + 304), v11);
    v12 = sub_1A5247DF4();
    v9(v10, v11);
    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [v8 cachePlacesThumbnailForBoundingRegion:v1 size:v13 snapshot:v4 interfaceStyle:{v5, v6, v7, v2, v3}];
  }

  v14 = *(v0 + 264);
  v15 = *(v0 + 176);
  v16 = *(v0 + 144);
  v17 = *(v0 + 128);
  sub_1A416E504(v14, *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 64), *(v0 + 72));

  v15(v16, v17);

  v18 = *(v0 + 8);

  return v18();
}

id sub_1A416E254(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  sub_1A416C0E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1A5240E64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  if (!a2)
  {
    return 0;
  }

  sub_1A416EB6C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A3C68710(v12, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    return 0;
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_1A4170140(a1, a2, a3, a4, a5);
  sub_1A5240D84();

  sub_1A5240E14();
  v21 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v22 = sub_1A524C634();

  v23 = [v21 initWithContentsOfFile_];

  v24 = [v23 imageByPreparingForDisplay];
  v25 = *(v14 + 8);
  v25(v16, v13);
  v25(v19, v13);
  return v24;
}

void sub_1A416E504(UIImage *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v54 = a3;
  v55 = a2;
  v56 = a1;
  v57[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1A5246F24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  sub_1A416C0E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_1A5240E64();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  if (a4)
  {
    sub_1A416EB6C(v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_1A3C68710(v18, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    }

    else
    {
      v52 = v12;
      v53 = v10;
      (*(v20 + 32))(v25, v18, v19);
      v26 = [objc_opt_self() defaultManager];
      v27 = sub_1A5240D44();
      v57[0] = 0;
      v28 = [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v57];

      if (v28)
      {
        v29 = v57[0];
      }

      else
      {
        v30 = v57[0];
        v31 = sub_1A5240B84();

        swift_willThrow();
        v32 = sub_1A3C38A40();
        (*(v53 + 16))(v15, v32, v9);
        v33 = v31;
        v34 = sub_1A5246F04();
        v35 = sub_1A524D244();

        v51 = v34;
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v50 = v9;
          v37 = v36;
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          v39 = v31;
          v40 = _swift_stdlib_bridgeErrorToNSError();
          *(v37 + 4) = v40;
          *v38 = v40;
          v41 = v35;
          v42 = v51;
          _os_log_impl(&dword_1A3C1C000, v51, v41, "couldn't create cached map placeholder directory: %@", v37, 0xCu);
          sub_1A3C58FE0(v38, sub_1A3D3F118);
          MEMORY[0x1A590EEC0](v38, -1, -1);
          v43 = v37;
          v9 = v50;
          MEMORY[0x1A590EEC0](v43, -1, -1);
        }

        else
        {
        }

        (*(v53 + 8))(v15, v9);
      }

      sub_1A4170140(v54, a4, v55, a5, a6);
      sub_1A5240D84();

      v44 = UIImageHEICRepresentation(v56);
      if (v44)
      {
        v45 = v44;
        v46 = sub_1A5240EA4();
        v48 = v47;

        sub_1A5240EB4();
        sub_1A3C59280(v46, v48);
      }

      v49 = *(v20 + 8);
      v49(v22, v19);
      v49(v25, v19);
    }
  }
}

uint64_t sub_1A416EB6C@<X0>(uint64_t a1@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  sub_1A416C0E0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 bundleIdentifier];

  if (!v17)
  {
    v21 = *(v9 + 56);
    v21(a1, 1, 1, v8);
    goto LABEL_13;
  }

  v34 = v15;
  v35 = a1;
  v18 = sub_1A524C674();
  v20 = v19;

  if (v18 == 0xD000000000000019 && 0x80000001A53C9AD0 == v20)
  {
    v33 = *(v9 + 56);
    v33(v35, 1, 1, v8);
  }

  else
  {
    v22 = sub_1A524EAB4();
    v21 = *(v9 + 56);
    v21(v35, 1, 1, v8);
    if ((v22 & 1) == 0)
    {

      a1 = v35;
      goto LABEL_12;
    }

    v33 = v21;
  }

  v36[0] = 0;
  v23 = [v34 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:{v36, v33}];
  v24 = v36[0];
  if (!v23)
  {
    v28 = v36[0];

    v29 = sub_1A5240B84();

    swift_willThrow();
    v15 = v34;
    a1 = v35;
    v21 = v33;
    goto LABEL_13;
  }

  v25 = v23;
  sub_1A5240DE4();
  v26 = v24;

  (*(v9 + 32))(v14, v11, v8);
  sub_1A5240D74();

  (*(v9 + 8))(v14, v8);
  v27 = MEMORY[0x1E6968FB0];
  a1 = v35;
  sub_1A3C68710(v35, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v21 = v33;
  v33(v7, 0, 1, v8);
  sub_1A4170B9C(v7, a1, &unk_1EB12B250, v27, MEMORY[0x1E69E6720]);
LABEL_12:
  v15 = v34;
LABEL_13:
  sub_1A4171350(a1, v4, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    v30 = MEMORY[0x1E6968FB0];
    sub_1A3C68710(v4, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v31 = [v15 temporaryDirectory];
    sub_1A5240DE4();

    sub_1A3C68710(a1, &unk_1EB12B250, v30);
    v21(v7, 0, 1, v8);
    return sub_1A4170B9C(v7, a1, &unk_1EB12B250, v30, MEMORY[0x1E69E6720]);
  }

  else
  {

    return sub_1A3C68710(v4, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }
}

uint64_t sub_1A416F100()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_E64BD8AEC74FD591D186C85FF453C4C020MapSnapshotViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL static MKCoordinateRegion.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a4 != a8)
  {
    v8 = 0;
  }

  return a3 == a7 && v8;
}

void sub_1A416F250(uint64_t a1)
{
  sub_1A416C0E0(319, &unk_1EB126A50, type metadata accessor for MKCoordinateRegion, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A4171428(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A416C0E0(319, &qword_1EB124960, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E697DA80]);
      if (v3 <= 0x3F)
      {
        sub_1A416C0E0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A416F3C0(uint64_t a1)
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

unint64_t sub_1A416F468()
{
  result = qword_1EB1240A8;
  if (!qword_1EB1240A8)
  {
    sub_1A416F904(255, &qword_1EB1240A0, sub_1A416F53C, MEMORY[0x1E697CCE0]);
    sub_1A416FB68(&qword_1EB1243E0, sub_1A416F53C, MEMORY[0x1E697E378]);
    sub_1A3D41ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1240A8);
  }

  return result;
}

void sub_1A416F53C(uint64_t a1)
{
  if (!qword_1EB1243D8)
  {
    sub_1A416F858(255, &qword_1EB123DE8, sub_1A416F5D8, &qword_1EB127C70, MEMORY[0x1E697FD48]);
    sub_1A416FFD4();
    v1 = sub_1A5248414();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243D8);
    }
  }
}

void sub_1A416F5D8(uint64_t a1, double a2)
{
  if (!qword_1EB121D50)
  {
    sub_1A416F6AC(255, a2);
    sub_1A5247E04();
    sub_1A416FBB0(v2);
    sub_1A416FB68(&qword_1EB128AA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D50);
    }
  }
}

void sub_1A416F6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A416F7C0(uint64_t a1)
{
  if (!qword_1EB1234B8)
  {
    sub_1A416F858(255, &qword_1EB123980, sub_1A416F8DC, &qword_1EB1289C0, MEMORY[0x1E697DDA0]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1234B8);
    }
  }
}

void sub_1A416F858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A416FF70(255, a4, a5);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A416F904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A416F968(uint64_t a1)
{
  if (!qword_1EB124EF8)
  {
    sub_1A52436E4();
    sub_1A416FB68(&unk_1EB124D60, MEMORY[0x1E69C25A0], MEMORY[0x1E69C2598]);
    v1 = sub_1A52425B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124EF8);
    }
  }
}

void sub_1A416F9FC(uint64_t a1)
{
  if (!qword_1EB127FE8)
  {
    sub_1A416C0E0(255, &unk_1EB126A50, type metadata accessor for MKCoordinateRegion, MEMORY[0x1E69E6720]);
    sub_1A416FA90();
    v1 = sub_1A52494D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127FE8);
    }
  }
}

unint64_t sub_1A416FA90()
{
  result = qword_1EB126A48;
  if (!qword_1EB126A48)
  {
    sub_1A416C0E0(255, &unk_1EB126A50, type metadata accessor for MKCoordinateRegion, MEMORY[0x1E69E6720]);
    sub_1A416FB68(&qword_1EB126A68, type metadata accessor for MKCoordinateRegion, &protocol conformance descriptor for MKCoordinateRegion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126A48);
  }

  return result;
}

uint64_t sub_1A416FB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A416FBB0(double a1)
{
  result = qword_1EB124158;
  if (!qword_1EB124158)
  {
    sub_1A416F6AC(255, a1);
    sub_1A416FC60();
    sub_1A416FB68(&qword_1EB127FF0, sub_1A416F9FC, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124158);
  }

  return result;
}

unint64_t sub_1A416FC60()
{
  result = qword_1EB122770;
  if (!qword_1EB122770)
  {
    sub_1A416F778(255);
    sub_1A416FD10();
    sub_1A416FB68(&qword_1EB129098, MEMORY[0x1E69C2520], MEMORY[0x1E69C2518]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122770);
  }

  return result;
}

unint64_t sub_1A416FD10()
{
  result = qword_1EB1234C0;
  if (!qword_1EB1234C0)
  {
    sub_1A416F7C0(255);
    sub_1A416FD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1234C0);
  }

  return result;
}

unint64_t sub_1A416FD90()
{
  result = qword_1EB123988;
  if (!qword_1EB123988)
  {
    v1 = MEMORY[0x1E697DDA0];
    sub_1A416F858(255, &qword_1EB123980, sub_1A416F8DC, &qword_1EB1289C0, MEMORY[0x1E697DDA0]);
    sub_1A416FE7C();
    sub_1A416FF2C(&qword_1EB1289D0, &qword_1EB1289C0, v1, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123988);
  }

  return result;
}

unint64_t sub_1A416FE7C()
{
  result = qword_1EB124360;
  if (!qword_1EB124360)
  {
    sub_1A416F8DC(255);
    sub_1A416FB68(&qword_1EB124F00, sub_1A416F968, MEMORY[0x1E69C1ED8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124360);
  }

  return result;
}

uint64_t sub_1A416FF2C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A416FF70(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A416FF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3D6F4A4();
    v7 = a3(a1, MEMORY[0x1E6981EF8], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A416FFD4()
{
  result = qword_1EB123DF0;
  if (!qword_1EB123DF0)
  {
    v1 = MEMORY[0x1E697FD48];
    sub_1A416F858(255, &qword_1EB123DE8, sub_1A416F5D8, &qword_1EB127C70, MEMORY[0x1E697FD48]);
    sub_1A416F6AC(255, v2);
    sub_1A5247E04();
    sub_1A416FBB0(v3);
    sub_1A416FB68(&qword_1EB128AA8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
    swift_getOpaqueTypeConformance2();
    sub_1A416FF2C(&qword_1EB127C80, &qword_1EB127C70, v1, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123DF0);
  }

  return result;
}

unint64_t sub_1A4170140(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = sub_1A5247E04();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 120.0 || a4 > 120.0)
  {
    v14 = 0x656772616CLL;
  }

  else
  {
    v14 = 0x6C6C616D73;
  }

  (*(v10 + 104))(v12, *MEMORY[0x1E697DBB8], v9);
  v15 = sub_1A5247DF4();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v16 = 0x746867696CLL;
  }

  else
  {
    v16 = 1802658148;
  }

  if (v15)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1A524E404();

  v19 = 0xD000000000000024;
  v20 = 0x80000001A53C9AA0;
  MEMORY[0x1A5907B60](a1, a2);
  MEMORY[0x1A5907B60](45, 0xE100000000000000);
  MEMORY[0x1A5907B60](v16, v17);

  MEMORY[0x1A5907B60](45, 0xE100000000000000);
  MEMORY[0x1A5907B60](v14, 0xE500000000000000);

  MEMORY[0x1A5907B60](0x636965682ELL, 0xE500000000000000);
  return v19;
}

uint64_t sub_1A4170350(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 200) = a1;
  *(v7 + 184) = a6;
  *(v7 + 192) = a7;
  *(v7 + 168) = a4;
  *(v7 + 176) = a5;
  *(v7 + 152) = a2;
  *(v7 + 160) = a3;
  v8 = sub_1A524E5E4();
  *(v7 + 208) = v8;
  *(v7 + 216) = *(v8 - 8);
  *(v7 + 224) = swift_task_alloc();
  v9 = sub_1A5247E04();
  *(v7 + 232) = v9;
  *(v7 + 240) = *(v9 - 8);
  *(v7 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4170478, 0, 0);
}

uint64_t sub_1A4170478()
{
  v2 = *(v0 + 30);
  v1 = *(v0 + 31);
  v3 = *(v0 + 29);
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = [objc_allocWithZone(MEMORY[0x1E696F2B0]) init];
  *(v0 + 32) = v10;
  [v10 setSize_];
  [v10 setRegion_];
  (*(v2 + 104))(v1, *MEMORY[0x1E697DBA8], v3);
  v11 = sub_1A5247DF4();
  (*(v2 + 8))(v1, v3);
  if (v11)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  [v10 setTraitCollection_];

  *(v0 + 33) = [objc_allocWithZone(MEMORY[0x1E696F2B8]) initWithOptions_];
  sub_1A524EBB4();
  v14 = swift_task_alloc();
  *(v0 + 34) = v14;
  *v14 = v0;
  v14[1] = sub_1A417069C;

  return sub_1A3DCFAB0(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1A417069C()
{
  v2 = *v1;

  v3 = v2[28];
  v4 = v2[27];
  v5 = v2[26];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1A4171480;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1A4170834;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A4170834()
{
  v1 = v0[33];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A4170944;
  v2 = swift_continuation_init();
  sub_1A4170C0C(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4039D80;
  v0[13] = &block_descriptor_111;
  v0[14] = v2;
  [v1 startWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4170944()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1A4170AFC;
  }

  else
  {
    v2 = sub_1A4170A54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4170A54()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1A4170AFC(uint64_t a1)
{
  v2 = v1[35];
  v4 = v1[32];
  v3 = v1[33];
  swift_willThrow();

  v5 = v1[1];

  return v5(0);
}

uint64_t sub_1A4170B9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A416C0E0(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1A4170C0C(uint64_t a1)
{
  if (!qword_1EB120B88)
  {
    sub_1A3C52C70(255, &qword_1EB120AF8, 0x1E696F2A0);
    sub_1A3DBD9A0();
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120B88);
    }
  }
}

void sub_1A4170C8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_1A4170CC4()
{
  result = qword_1EB1886A8;
  if (!qword_1EB1886A8)
  {
    type metadata accessor for MapSnapshotViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1886A8);
  }

  return result;
}

void sub_1A4170D1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MapSnapshotView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1A416BC00(a1, v6, a2);
}

uint64_t sub_1A4170D9C()
{
  v2 = *(type metadata accessor for MapSnapshotView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A52482C4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A416C600(v0 + v3, v0 + v6);
}

uint64_t objectdestroy_36Tm()
{
  v1 = (type metadata accessor for MapSnapshotView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v11 = *(*v1 + 64);
  v3 = sub_1A52482C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);

  v6 = v0 + v2 + v1[8];
  sub_1A416C0E0(0, &qword_1EB1272D0, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E6981E90]);
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_1A416C0E0(0, &qword_1EB127268, type metadata accessor for MapSnapshotViewModel, MEMORY[0x1E6981E98]);

  v8 = v1[9];
  sub_1A416C0E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5247E04();
    (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v11 + v5) & ~v5), v3);

  return swift_deallocObject();
}

double sub_1A4171158()
{
  v1 = *(type metadata accessor for MapSnapshotView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1A52482C4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1A416CA50(v0 + v2, v5);
}

uint64_t sub_1A4171224()
{
  v2 = *(type metadata accessor for MapSnapshotView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A52482C4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A416CD1C(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_1A4171350(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A416C0E0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A41713C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4171428(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1A41714D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosSearchResultsCollectionsView(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1AB7D8), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1AB7D8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result searchResultsCollectionsViewSizeDidChange];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A41715BC(void *a1)
{
  v4 = a1;
  sub_1A41714D4(v4, v1, v2, v3);
}

uint64_t sub_1A4171608(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1A41719AC(a1);
  (*(*(*(v2 + qword_1EB1AB7D8) - 8) + 8))(a1);
  return v5;
}

id sub_1A4171688(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for PhotosSearchResultsCollectionsView(0, *(v3 + qword_1EB1AB7D8), *(v3 + qword_1EB1AB7D8 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1A41717C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosSearchResultsCollectionsView(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1AB7D8), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1AB7D8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_1A4171978(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosSearchResultsCollectionsViewFactory(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A41719AC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EB1AB7D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  return sub_1A52485F4();
}

void *sub_1A4171AC0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v46 = a4;
  v44 = a3;
  sub_1A4172040(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  v25 = a1;
  sub_1A4264C5C(v25, v24);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v26 = a2;
  sub_1A486B6E8(v15);
  v27 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  v47 = 4;
  type metadata accessor for LemonadePhotoLibraryContext(0, v28);
  v29 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(*&v25[OBJC_IVAR___PXPhotosSearchCollectionSectionProvider_photoLibrary], 0, 0);
  v30 = sub_1A3C799F0(v18, 0, 0, a2, v15, &v47, v29, 2);
  sub_1A5244244();
  swift_allocObject();
  v31 = sub_1A5244214();
  sub_1A52429E4();
  swift_allocObject();
  v32 = sub_1A52429D4();
  sub_1A41720D4(v24, v21, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
  v33 = sub_1A41721D0(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider, &unk_1A53290E4);

  v34 = v44;
  v35 = v44;
  v36 = v12;
  sub_1A45C4E2C(v21, v30, v31, v32, v34, v19, v33, v12);
  v37 = v12;
  v38 = v43;
  sub_1A41720D4(v37, v43, sub_1A4172040);
  sub_1A417213C(0);
  objc_allocWithZone(v39);
  swift_unknownObjectWeakInit();
  sub_1A41720D4(v38, v45, sub_1A4172040);
  v40 = sub_1A52485F4();

  sub_1A4172218(v38, sub_1A4172040);
  sub_1A4172218(v36, sub_1A4172040);
  sub_1A4172218(v24, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
  swift_unknownObjectWeakAssign();
  return v40;
}

void sub_1A4172040(uint64_t a1)
{
  if (!qword_1EB133718)
  {
    v2 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(255);
    v3 = sub_1A41721D0(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider, &unk_1A53290E4);
    v5 = type metadata accessor for LemonadeSearchCollectionResultShelfView(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB133718);
    }
  }
}

uint64_t sub_1A41720D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A417213C(uint64_t a1)
{
  if (!qword_1EB133720)
  {
    sub_1A4172040(255);
    v3 = v2;
    v4 = sub_1A41721D0(&qword_1EB133728, sub_1A4172040, &unk_1A534E154);
    v6 = type metadata accessor for PhotosSearchResultsCollectionsView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB133720);
    }
  }
}

uint64_t sub_1A41721D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4172218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4172318(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore29PhotosDetailsNoLocationWidget_contextObservation))
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

void sub_1A4172458(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x198))(a2);
  }
}

void (*sub_1A41724E8(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A4172530;
}

void sub_1A4172530(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A4172318(v3);
  }

  else
  {
    sub_1A4172318(v2);
  }
}

id sub_1A4172598(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsNoLocationWidgetViewModel(0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = sub_1A48C799C(v9, v10, v11);
  v13 = *((*v7 & *v2) + 0xE0);
  v14 = v12;
  v13(v12);
  sub_1A4172730(0);
  v15 = v14;
  sub_1A3EC2E88(v6);
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v16;
}

void sub_1A4172730(uint64_t a1)
{
  if (!qword_1EB133738)
  {
    v2 = type metadata accessor for PhotosDetailsNoLocationWidgetView(255);
    v3 = sub_1A4172794();
    v5 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB133738);
    }
  }
}

unint64_t sub_1A4172794()
{
  result = qword_1EB133740;
  if (!qword_1EB133740)
  {
    type metadata accessor for PhotosDetailsNoLocationWidgetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133740);
  }

  return result;
}

void *sub_1A4172908()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    v6[4] = sub_1A4112B94;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1A3C2E0D0;
    v6[3] = &block_descriptor_112;
    v4 = _Block_copy(v6);
    swift_unknownObjectRetain();
    v5 = v0;

    [v2 widget:v5 animateChanges:v4 withAnimationOptions:0];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A4172A94(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosDetailsNoLocationWidget(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A4172AD8()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(v3);
  v8 = [v7 photosDataSource];

  LOBYTE(v7) = PXPhotosDetailsContextHasLocationForDataSource(v8);
  if ((v7 & 1) == 0)
  {
    v9 = type metadata accessor for PhotosDetailsNoLocationWidgetView(0);
    v10 = (*((*v6 & *v0) + 0x108))();
    v11 = [v10 contentSizeCategory];

    sub_1A412028C(v11, v5);
    sub_1A4394B64(v5, v9, &off_1EE6D6B40);
    (*(v2 + 8))(v5, v1);
  }
}

void *sub_1A4172CBC()
{
  v1 = OBJC_IVAR___PXFlexMusicViewController_player;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4172D08(uint64_t a1)
{
  v3 = OBJC_IVAR___PXFlexMusicViewController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1A4172DC0(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___PXFlexMusicViewController_pickerView;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  sub_1A4172E48(v4, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
}

double sub_1A4172E48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a2;
    swift_unknownObjectRetain();

    return sub_1A3C66EE8(a3, a4);
  }

  return result;
}

uint64_t sub_1A4172EA4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___PXFlexMusicViewController_pickerView;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  *(v3 + 32) = *(a1 + 32);
  return sub_1A4172F0C(v4, v5, v6, v7);
}

uint64_t sub_1A4172F0C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return sub_1A3C33378(a3, a4);
  }

  return result;
}

void sub_1A4173078()
{
  v1 = v0;
  v2 = UIViewController.pxView.getter();
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = objc_allocWithZone(PXAudioPlayer);
  v5 = sub_1A524C634();
  v6 = [v4 initWithName_];

  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v6);
  v9 = (*((*v7 & *v1) + 0x60))(v8);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() sharedLibrary];
    v12 = [v11 fetchAllAssets];

    v23[0] = v12;
    v23[1] = v10;
    v23[2] = 0;
    v23[3] = 0;
    v24 = 1;
    v13 = (*((*v7 & *v1) + 0x80))(v23);
    (*((*v7 & *v1) + 0x78))(&v21, v13);
    v14 = v21;
    if (v21)
    {
      v20[0] = v22[0];
      *(v20 + 9) = *(v22 + 9);
      sub_1A4175E7C(0, &qword_1EB133760, sub_1A4173550, &type metadata for MusicPickerView, type metadata accessor for PXSwiftUIHostingViewController);
      v19 = v14;
      v15 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(&v19);
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v2;
      v17 = v15;
      v18 = v2;
      UIViewController.px_addChild(_:constraints:)(v17, sub_1A41773B4);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1A41734C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXFlexMusicViewController(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A4173550()
{
  result = qword_1EB133768;
  if (!qword_1EB133768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133768);
  }

  return result;
}

uint64_t sub_1A41735A4(uint64_t a1, uint64_t a2)
{
  sub_1A4175834(0, &qword_1EB133770, sub_1A4173638, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4173638(uint64_t a1, uint64_t a2)
{
  result = qword_1EB133778;
  if (!qword_1EB133778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB133778);
  }

  return result;
}

void sub_1A4173684()
{
  v20 = *v1;
  v2 = [*v1 count];
  v4 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = v2;
  if (!__OFADD__(v4, 1))
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A4175300(0, v2 & ~(v2 >> 63), 0, v3);
    if (v5 < 0)
    {
      goto LABEL_22;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (!__OFADD__(v6, 1))
    {
      v22 = v6 + 1;
      if (v8)
      {
        goto LABEL_23;
      }

      v9 = v5;
      v10 = [v20 objectAtIndexedSubscript_];
      objc_opt_self();
      v11 = swift_dynamicCastObjCClassUnconditional();
      v12 = *(v21 + 8);
      v13 = *(v23 + 16);
      v14 = *(v23 + 24);
      v15 = v12;
      if (v13 >= v14 >> 1)
      {
        v15 = sub_1A4175300((v14 > 1), v13 + 1, 1, v16);
      }

      *(v23 + 16) = v13 + 1;
      v17 = v23 + 16 * v13;
      *(v17 + 32) = v11;
      *(v17 + 40) = v12;
      v8 = v7 == v4;
      if (v7 == v4)
      {
        v7 = 0;
      }

      else if (__OFADD__(v7++, 1))
      {
        goto LABEL_18;
      }

      v5 = v9;
      ++v6;
      if (v22 == v9)
      {
        v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
        sub_1A4175428(0, v19);
        sub_1A41757B8(&qword_1EB1337B8, sub_1A4175428, MEMORY[0x1E697CD20]);
        sub_1A524BA54();

        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_1A41738BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v21[0] = type metadata accessor for MusicPickerRow(0);
  MEMORY[0x1EEE9AC00](v21[0]);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a2[1];
  v10 = v9;
  v11 = v7;
  v12 = v8;
  sub_1A4173A60(v11, v8, v9, v6);
  v13 = a2[2];
  v14 = a2[3];
  v15 = swift_allocObject();
  v16 = *(a2 + 1);
  *(v15 + 16) = *a2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a2 + 32);
  *(v15 + 56) = v11;
  *(v15 + 64) = v8;
  v17 = v11;
  v18 = v12;
  v19 = v10;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(v13, v14);
  sub_1A41757B8(&qword_1EB1337A0, type metadata accessor for MusicPickerRow, &unk_1A531F8A0);
  sub_1A524AA84();

  return sub_1A3C68780(v6, type metadata accessor for MusicPickerRow);
}

void sub_1A4173A60(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39[0] = a3;
  sub_1A4175800(0);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  v18 = type metadata accessor for MusicPickerRow(0);
  v19 = v18[6];
  v20 = sub_1A5240E64();
  v21 = *(v20 - 8);
  v40 = *(v21 + 56);
  v39[1] = v21 + 56;
  v40(v17, 1, 1, v20);
  sub_1A4176D24(v17, v14, sub_1A3EE53E0);
  v41 = v19;
  sub_1A524B694();
  sub_1A3C68780(v17, sub_1A3EE53E0);
  v22 = (a4 + v18[7]);
  v44 = 0;
  sub_1A524B694();
  v23 = v46;
  *v22 = v45;
  v39[2] = v23;
  v22[1] = v23;
  v24 = a4 + v18[8];
  LOBYTE(v44) = 0;
  sub_1A524B694();
  v25 = v46;
  *v24 = v45;
  *(v24 + 1) = v25;
  v26 = a4 + v18[9];
  LOBYTE(v44) = 0;
  sub_1A524B694();
  v27 = v46;
  *v26 = v45;
  *(v26 + 1) = v27;
  *(a4 + v18[11]) = 0x404E000000000000;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v39[0];
  v28 = objc_opt_self();
  v29 = a2;
  v30 = a1;
  v31 = [v28 sharedLibrary];
  LOBYTE(v26) = [v31 hasLocalResourceForAsset:v30 resourceType:2];

  *(a4 + v18[10]) = v26;
  v32 = [v30 artworkURL];
  if (v32)
  {
    v33 = v32;
    sub_1A5240DE4();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v40(v11, v34, 1, v20);
  v35 = v43;
  *&v43[*(v42 + 28)] = 0;
  sub_1A41760EC(v11, v35, sub_1A3EE53E0);
  sub_1A4175898(v35, a4 + v41);
  v36 = [v28 sharedLibrary];
  [v36 downloadProgressForAsset:v30 resourceType:2];
  v38 = v37;

  *v22 = v38;
  v22[1] = 0;
}

uint64_t sub_1A4173E84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MusicPickerRow(0);
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v5;
  v7 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A41758FC(0);
  sub_1A41742E0(v1, a1 + *(v8 + 44));
  sub_1A524BC84();
  sub_1A52481F4();
  sub_1A4175C18(0, &qword_1EB133848, sub_1A4175D2C);
  v10 = (a1 + *(v9 + 36));
  v11 = v51;
  *v10 = v50;
  v10[1] = v11;
  v10[2] = v52;
  sub_1A4175DC0(0);
  *(a1 + *(v12 + 36)) = 0;
  v13 = objc_opt_self();
  v49 = v13;
  v14 = [v13 defaultCenter];
  v15 = *MEMORY[0x1E699F668];
  sub_1A4175EE4(0);
  v17 = v16;
  v18 = v15;
  sub_1A524D6C4();

  v48 = type metadata accessor for MusicPickerRow;
  sub_1A4176D24(v2, v7, type metadata accessor for MusicPickerRow);
  v47 = *(v47 + 80);
  v19 = (v47 + 16) & ~v47;
  v44 = v6;
  v20 = swift_allocObject();
  v46 = type metadata accessor for MusicPickerRow;
  sub_1A41760EC(v7, v20 + v19, type metadata accessor for MusicPickerRow);
  v21 = (a1 + *(v17 + 56));
  *v21 = sub_1A4176154;
  v21[1] = v20;
  v22 = [v13 defaultCenter];
  v23 = *MEMORY[0x1E699F670];
  sub_1A417625C(0);
  v25 = v24;
  v26 = v23;
  sub_1A524D6C4();

  v27 = v2;
  v45 = v2;
  v28 = v2;
  v29 = v48;
  sub_1A4176D24(v28, v7, v48);
  v30 = swift_allocObject();
  v31 = v46;
  sub_1A41760EC(v7, v30 + v19, v46);
  v32 = (a1 + *(v25 + 56));
  *v32 = sub_1A4176298;
  v32[1] = v30;
  v33 = [v49 defaultCenter];
  sub_1A41762F8(0);
  v35 = v34;
  sub_1A524D6C4();

  sub_1A4176D24(v27, v7, v29);
  v36 = swift_allocObject();
  sub_1A41760EC(v7, v36 + v19, v31);
  v37 = (a1 + *(v35 + 56));
  *v37 = sub_1A4176424;
  v37[1] = v36;
  v38 = [v49 defaultCenter];
  sub_1A41765E8(0);
  v40 = v39;
  sub_1A524D6C4();

  sub_1A4176D24(v45, v7, v48);
  v41 = swift_allocObject();
  result = sub_1A41760EC(v7, v41 + v19, v31);
  v43 = (a1 + *(v40 + 56));
  *v43 = sub_1A41767B0;
  v43[1] = v41;
  return result;
}

id sub_1A41742E0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4175A58(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v33 - v9);
  *v10 = sub_1A524BC74();
  v10[1] = v11;
  sub_1A4176BF4(0);
  sub_1A417495C(a1, v10 + *(v12 + 44));
  v33[7] = type metadata accessor for MusicPickerRow(0);
  sub_1A524BC74();
  sub_1A52481F4();
  v13 = *(v5 + 44);
  v37 = v10;
  v14 = (v10 + v13);
  v15 = v43;
  *v14 = v42;
  v14[1] = v15;
  v14[2] = v44;
  v16 = sub_1A5249584();
  v41 = 0;
  v17 = *a1;
  result = [*a1 title];
  if (result)
  {
    v19 = result;
    v35 = v16;
    v36 = v7;
    v33[6] = a2;
    v20 = sub_1A524C674();
    v22 = v21;

    v39 = v20;
    v40 = v22;
    sub_1A3D5F9DC();
    v23 = sub_1A524A464();
    v25 = v24;
    v27 = v26;
    result = [v17 artistName];
    if (result)
    {
      v28 = result;
      v29 = sub_1A524C674();
      v31 = v30;

      v39 = 2128226;
      v40 = 0xE300000000000000;
      MEMORY[0x1A5907B60](v29, v31);

      sub_1A524A464();
      v45 = v27 & 1;
      LOBYTE(v39) = v27 & 1;
      LOBYTE(v38) = v32 & 1;
      v34 = v27 & 1;
      sub_1A3E75E68(v23, v25, v27 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A417495C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A411848C();
  v62 = v4;
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4175C74(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v51 - v9;
  v10 = sub_1A524B554();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A5240E64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MusicPickerRow(0);
  sub_1A4175800(0);
  sub_1A524B6A4();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1A3C68780(v16, sub_1A3EE53E0);
    v60 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v55 = 0;
    v54 = 0;
    v21 = 0;
    v22 = 0;
    v65 = 1;
LABEL_6:
    v28 = v56;
    goto LABEL_7;
  }

  v60 = v11;
  v52 = a1;
  (*(v18 + 32))(v20, v16, v17);
  sub_1A5240E14();
  v23 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v24 = sub_1A524C634();

  v25 = [v23 initWithContentsOfFile_];

  if (!v25)
  {
    (*(v18 + 8))(v20, v17);
    v65 = 0;
    v60 = 0;
    v59 = 0;
    v58 = 0;
    v57 = 0;
    v55 = 0;
    v54 = 0;
    v21 = 0;
    v22 = 0;
    a1 = v52;
    goto LABEL_6;
  }

  v26 = v25;
  sub_1A524B524();
  v27 = v60;
  (*(v60 + 104))(v13, *MEMORY[0x1E6981630], v10);
  v65 = sub_1A524B5C4();

  (*(v27 + 8))(v13, v10);
  v28 = v56;
  a1 = v52;
  sub_1A524BC74();
  sub_1A52481F4();

  (*(v18 + 8))(v20, v17);
  LOBYTE(v71) = 1;
  v60 = v80;
  v59 = v81;
  v58 = v82;
  v57 = v83;
  v55 = v84;
  v54 = v85;
  v22 = 256;
  v21 = 1;
LABEL_7:
  v29 = (a1 + *(v28 + 28));
  v30 = *v29;
  v31 = v29[1];
  v71 = *v29;
  v72 = v31;
  sub_1A4177624(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (*&v66 <= 0.0 || (v71 = v30, v72 = v31, sub_1A524B6A4(), *&v66 >= 1.0))
  {
    v38 = 1;
    v34 = v63;
    v37 = v62;
    v33 = v61;
  }

  else
  {
    v71 = v30;
    v72 = v31;
    sub_1A524B6A4();
    BYTE8(v66) = 0;
    v71 = 0x3FF0000000000000;
    sub_1A3F185D4();
    v32 = v53;
    sub_1A5248064();
    v33 = v61;
    v34 = v63;
    v35 = v32;
    v36 = v62;
    (*(v61 + 32))(v63, v35, v62);
    v37 = v36;
    v38 = 0;
  }

  (*(v33 + 56))(v34, v38, 1, v37);
  v39 = (v22 | v21);
  v63 = v39;
  v40 = v64;
  sub_1A4176D24(v34, v64, sub_1A4175C74);
  v66 = v65;
  *&v67 = v39;
  v41 = v60;
  *(&v67 + 1) = v60;
  v42 = v59;
  *&v68 = v59;
  v43 = v58;
  v44 = v57;
  *(&v68 + 1) = v58;
  *&v69 = v57;
  v45 = v55;
  v46 = v54;
  *(&v69 + 1) = v55;
  v70 = v54;
  *(a2 + 64) = v54;
  v47 = v69;
  *(a2 + 32) = v68;
  *(a2 + 48) = v47;
  v48 = v67;
  *a2 = v66;
  *(a2 + 16) = v48;
  sub_1A4175B40(0);
  sub_1A4176D24(v40, a2 + *(v49 + 48), sub_1A4175C74);
  sub_1A4176D24(&v66, &v71, sub_1A4175BB0);
  sub_1A3C68780(v34, sub_1A4175C74);
  sub_1A3C68780(v40, sub_1A4175C74);
  v71 = v65;
  v72 = 0;
  v73 = v63;
  v74 = v41;
  v75 = v42;
  v76 = v43;
  v77 = v44;
  v78 = v45;
  v79 = v46;
  return sub_1A3C68780(&v71, sub_1A4175BB0);
}
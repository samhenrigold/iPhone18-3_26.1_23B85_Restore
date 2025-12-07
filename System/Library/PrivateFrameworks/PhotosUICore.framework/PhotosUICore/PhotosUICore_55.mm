void sub_1A4311BC8(uint64_t a1, uint64_t a2)
{
  sub_1A3F63918(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A4312B18(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4311CA4(uint64_t a1, uint64_t a2)
{
  sub_1A3F63918(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for LemonadePeopleHomeView.SelectionState(319);
    if (v3 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v4 <= 0x3F)
      {
        sub_1A4312B18(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A4311E4C(uint64_t a1, double a2)
{
  if (!qword_1EB137DF0)
  {
    sub_1A4311EE0(255);
    sub_1A4312CD4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137DF0);
    }
  }
}

void sub_1A4311F00(uint64_t a1, double a2)
{
  if (!qword_1EB137E00)
  {
    sub_1A4311FB0(255);
    sub_1A4312E84(&qword_1EB137E30, sub_1A4311FB0, MEMORY[0x1E6981F48]);
    v2 = sub_1A524A2F4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB137E00);
    }
  }
}

void sub_1A4311FE4(uint64_t a1, double a2)
{
  if (!qword_1EB137E10)
  {
    sub_1A4312058(255);
    sub_1A4312078(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB137E10);
    }
  }
}

void sub_1A4312098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4312CD4(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4312128(uint64_t a1)
{
  if (!qword_1EB137E28)
  {
    sub_1A41CC66C(255);
    sub_1A4312E84(&qword_1EB134918, sub_1A41CC66C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137E28);
    }
  }
}

uint64_t sub_1A43121CC(uint64_t a1)
{
  sub_1A4312E84(&qword_1EB137EC0, type metadata accessor for PXActionType, &unk_1A532FA2C);
  sub_1A4312E84(&qword_1EB137EC8, type metadata accessor for PXActionType, &unk_1A532F9CC);

  return sub_1A524E7E4();
}

uint64_t sub_1A431231C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_38Tm()
{
  v1 = (type metadata accessor for LemonadePeopleHomeToolbar.EllipsisButton(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[10];
  sub_1A4312B18(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4312664(uint64_t (*a1)(void), void *a2)
{
  v4 = *(a1(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  return (*(v5 + 16))(*a2, *v5);
}

void sub_1A43126DC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  v5 = [*v3 firstObject];
  v6 = sub_1A524C634();
  v7 = [v4 locKeyForPersonOrPet:v5 key:v6];

  v8 = sub_1A524C674();
  sub_1A3C38BD4(v8);

  sub_1A3D5F9DC();
  v9 = sub_1A524A464();
  v11 = v10;
  LOBYTE(v6) = v12;
  v14 = v13;
  v15 = sub_1A524B544();
  *a1 = v9;
  *(a1 + 8) = v11;
  LOBYTE(v6) = v6 & 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  sub_1A3E75E68(v9, v11, v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A431288C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4312E84(a4, a5, MEMORY[0x1E6981F48]);
    v8 = sub_1A5248A84();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4312954(uint64_t a1)
{
  if (!qword_1EB137E58)
  {
    sub_1A4312CD4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A426CA08();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB137E58);
    }
  }
}

void sub_1A43129EC(uint64_t a1)
{
  if (!qword_1EB137E68)
  {
    sub_1A4312850(255);
    sub_1A4312E84(&qword_1EB137E70, sub_1A4312850, MEMORY[0x1E697C288]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137E68);
    }
  }
}

void sub_1A4312B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4312B7C(uint64_t a1)
{
  if (!qword_1EB137E88)
  {
    sub_1A4312CD4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A4312058(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137E88);
    }
  }
}

uint64_t sub_1A4312C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4312CD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_witness_table_qd__7SwiftUI14ToolbarContentHD2_AA0cD7BuilderV10buildBlockyQrxAaBRzlFZQOy_AA0C9ItemGroupVyAA9TupleViewVyAA6SpacerVSg_AA08ModifiedD0VyAA6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGAA32_EnvironmentKeyTransformModifierVySbGGtGGQo_HOTm(uint64_t a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  a2(255);
  sub_1A4312E84(a3, a4, MEMORY[0x1E697C288]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A4312E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4312EDC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4312EFC, 0, 0);
}

uint64_t sub_1A4312EFC()
{
  v1 = sub_1A3C3A99C(*(v0 + 16), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_1A4312F5C(void *a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for LemonadeBookmark(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  IsIPad = PLPhysicalDeviceIsIPad();
  if (!MEMORY[0x1A590D320]())
  {

    sub_1A43148A4(a1);
  }

  v70 = v11;
  v71 = v8;
  PXDisplayCollectionDetailedCountsMake();
  *v4 = v26;
  swift_storeEnumTagMultiPayload();
  v27 = sub_1A3FA19AC();
  sub_1A3F9DA60(v27, v28, 0, v4, v25);
  v29 = sub_1A3FA05D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v31 = v29[2];
  v30 = v29[3];
  v69 = v14;
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1A3FA05D8((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = *(v6 + 72);
  sub_1A3C5921C(v25, v29 + v32 + v33 * v31);
  PXDisplayCollectionDetailedCountsMake();
  *v4 = v34;
  swift_storeEnumTagMultiPayload();
  v35 = sub_1A3FA19AC();
  sub_1A3F9DA60(v35, v36, 7, v4, v22);
  v38 = v29[2];
  v37 = v29[3];
  if (v38 >= v37 >> 1)
  {
    v29 = sub_1A3FA05D8((v37 > 1), v38 + 1, 1, v29);
  }

  v39 = v71;
  v29[2] = v38 + 1;
  sub_1A3C5921C(v22, v29 + v32 + v38 * v33);
  swift_storeEnumTagMultiPayload();
  v40 = sub_1A3FA19AC();
  sub_1A3F9DA60(v40, v41, 10, v4, v19);
  v43 = v29[2];
  v42 = v29[3];
  if (v43 >= v42 >> 1)
  {
    v29 = sub_1A3FA05D8((v42 > 1), v43 + 1, 1, v29);
  }

  v29[2] = v43 + 1;
  v44 = v32;
  sub_1A3C5921C(v19, v29 + v32 + v43 * v33);
  PXDisplayCollectionDetailedCountsMake();
  *v4 = v45;
  swift_storeEnumTagMultiPayload();
  v46 = sub_1A3FA19AC();
  v47 = v72;
  sub_1A3F9DA60(v46, v48, 6, v4, v72);
  v50 = v29[2];
  v49 = v29[3];
  if (v50 >= v49 >> 1)
  {
    v29 = sub_1A3FA05D8((v49 > 1), v50 + 1, 1, v29);
  }

  v51 = v69;
  v29[2] = v50 + 1;
  sub_1A3C5921C(v47, v29 + v44 + v50 * v33);
  PXDisplayCollectionDetailedCountsMake();
  *v4 = v52;
  swift_storeEnumTagMultiPayload();
  v53 = sub_1A3FA19AC();
  sub_1A3F9DA60(v53, v54, 6, v4, v51);
  v56 = v29[2];
  v55 = v29[3];
  if (v56 >= v55 >> 1)
  {
    v29 = sub_1A3FA05D8((v55 > 1), v56 + 1, 1, v29);
  }

  v29[2] = v56 + 1;
  sub_1A3C5921C(v51, v29 + v44 + v56 * v33);
  if (IsIPad)
  {
    swift_storeEnumTagMultiPayload();
    v57 = sub_1A3FA19AC();
    sub_1A3F9DA60(v57, v58, 4, v4, v70);
    v60 = v29[2];
    v59 = v29[3];
    if (v60 >= v59 >> 1)
    {
      v29 = sub_1A3FA05D8((v59 > 1), v60 + 1, 1, v29);
    }

    v29[2] = v60 + 1;
    sub_1A3C5921C(v70, v29 + v44 + v60 * v33);
  }

  v61 = *MEMORY[0x1E69C1260];
  v62 = sub_1A5244EB4();
  (*(*(v62 - 8) + 104))(v4, v61, v62);
  swift_storeEnumTagMultiPayload();
  v63 = sub_1A3FA19AC();
  sub_1A3F9DA60(v63, v64, 7, v4, v39);
  v66 = v29[2];
  v65 = v29[3];
  if (v66 >= v65 >> 1)
  {
    v29 = sub_1A3FA05D8((v65 > 1), v66 + 1, 1, v29);
  }

  v29[2] = v66 + 1;
  sub_1A3C5921C(v39, v29 + v44 + v66 * v33);
  return v29;
}

id sub_1A4313510(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!PFIsPhotosPicker())
  {
    v16 = [a1 px_localDefaults];
    v17 = sub_1A524C634();
    v18 = [v16 dataForKey_];

    if (v18)
    {
      v19 = sub_1A5240EA4();

      return v19;
    }

    return 0;
  }

  v6 = [a1 assetsdClient];
  v7 = [v6 libraryInternalClient];

  result = PLPhotosAppBundleID();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  v33[0] = 0;
  v10 = [v7 readAppPrivateDataBelongingToBundleID:result error:v33];

  v11 = v33[0];
  if (!v10)
  {
    v20 = v33[0];
    v21 = sub_1A5240B84();

    swift_willThrow();
    v22 = sub_1A3C4A5F8();
    (*(v3 + 16))(v5, v22, v2);
    v23 = v21;
    v24 = sub_1A5246F04();
    v25 = sub_1A524D254();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_1A3C1C000, v24, v25, "failed to read app private data with error: %{public}@", v26, 0xCu);
      sub_1A3C59040(v27, sub_1A3D3F118);
      MEMORY[0x1A590EEC0](v27, -1, -1);
      MEMORY[0x1A590EEC0](v26, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v12 = sub_1A524C3E4();
  v13 = v11;

  v31 = 0xD000000000000011;
  v32 = 0x80000001A53D2250;
  sub_1A524E384();
  if (!*(v12 + 16) || (v14 = sub_1A3D5C0BC(v33), (v15 & 1) == 0))
  {

    sub_1A3D5FAFC(v33);
    return 0;
  }

  sub_1A3C2F0BC(*(v12 + 56) + 32 * v14, v34);

  sub_1A3D5FAFC(v33);

  if (swift_dynamicCast())
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4313958(uint64_t a1, void *a2, void *a3)
{
  v83 = a3;
  v84 = a1;
  v85 = a2;
  v3 = type metadata accessor for LemonadeBookmark(0);
  v91 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v87 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = v70 - v6;
  sub_1A3C9EB18(0);
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v89 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4317294(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = v70 - v12;
  v13 = sub_1A5246F24();
  v82 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v77 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v70 - v16;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v70 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v78 = v70 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v70 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v75 = v70 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v80 = v70 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = v70 - v33;
  v35 = MEMORY[0x1A590D320](v32);
  v93 = v3;
  v76 = v17;
  if (!v35)
  {
LABEL_20:
    v67 = sub_1A3C4A5F8();
    v68 = *(v82 + 16);
    v80 = (v82 + 16);
    v81 = v67;
    v79 = v68;
    v68(v21);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v70[0] = v26;
  v72 = v21;
  v36 = sub_1A3C4A5F8();
  v37 = *(v82 + 16);
  v79 = v36;
  v81 = v37;
  v37(v34);
  v38 = v85;
  v39 = sub_1A5246F04();
  v40 = sub_1A524D264();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v83;

    _os_log_impl(&dword_1A3C1C000, v39, v40, "Current migration check value: %ld", v41, 0xCu);
    MEMORY[0x1A590EEC0](v41, -1, -1);
  }

  else
  {

    v39 = v38;
  }

  v42 = *(v82 + 8);
  v73 = v82 + 8;
  v74 = v42;
  v42(v34, v13);
  v43 = [v38 px_localDefaults];
  v70[1] = "LemonadeBookmarks";
  v44 = sub_1A524C634();
  v45 = [v43 numberForKey_];

  v71 = v38;
  if (!v45)
  {
    v56 = v78;
    v81(v78, v79, v13);
    v57 = v38;
    v58 = sub_1A5246F04();
    v59 = sub_1A524D264();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v83;

      _os_log_impl(&dword_1A3C1C000, v58, v59, "Migration check value was not set, set to %ld", v60, 0xCu);
      MEMORY[0x1A590EEC0](v60, -1, -1);
    }

    else
    {

      v58 = v57;
    }

    v51 = v74;
LABEL_19:

    v51(v56, v13);
    v64 = [v71 px_localDefaults];
    v65 = Int.nsNumberValue.getter(v83);
    v66 = sub_1A524C634();
    [v64 setNumber:v65 forKey:v66];

    v21 = v72;
    goto LABEL_20;
  }

  v46 = [v45 integerValue];

  v47 = v80;
  v81(v80, v79, v13);
  v48 = sub_1A5246F04();
  v49 = sub_1A524D264();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v46;
    _os_log_impl(&dword_1A3C1C000, v48, v49, "Saved migration check value: %ld", v50, 0xCu);
    MEMORY[0x1A590EEC0](v50, -1, -1);
  }

  v51 = v74;
  v74(v47, v13);
  if (v46 != v83)
  {
    v81(v70[0], v79, v13);
    v58 = sub_1A5246F04();
    v61 = sub_1A524D264();
    if (os_log_type_enabled(v58, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = v46;
      _os_log_impl(&dword_1A3C1C000, v58, v61, "Migration check value was behind, updated to %ld", v62, 0xCu);
      v63 = v62;
      v51 = v74;
      MEMORY[0x1A590EEC0](v63, -1, -1);
    }

    v56 = v70[0];
    goto LABEL_19;
  }

  v52 = v75;
  v81(v75, v79, v13);
  v53 = sub_1A5246F04();
  v54 = sub_1A524D264();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = v83;
    _os_log_impl(&dword_1A3C1C000, v53, v54, "Migration has already been checked with value of %ld", v55, 0xCu);
    MEMORY[0x1A590EEC0](v55, -1, -1);
  }

  v51(v52, v13);
  return 0;
}

void sub_1A43148A4(void *a1)
{
  v66 = a1;
  v1 = sub_1A5244EB4();
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for LemonadeBookmark(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  IsIPad = PLPhysicalDeviceIsIPad();
  PXDisplayCollectionDetailedCountsMake();
  *v5 = v21;
  swift_storeEnumTagMultiPayload();
  v22 = sub_1A3FA19AC();
  sub_1A3F9DA60(v22, v23, 0, v5, v20);
  v24 = sub_1A3FA05D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1A3FA05D8((v25 > 1), v26 + 1, 1, v24);
  }

  v24[2] = v26 + 1;
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v28 = *(v7 + 72);
  sub_1A3C5921C(v20, v24 + v27 + v28 * v26);
  PXDisplayCollectionDetailedCountsMake();
  *v5 = v29;
  swift_storeEnumTagMultiPayload();
  v30 = sub_1A3FA19AC();
  sub_1A3F9DA60(v30, v31, 7, v5, v17);
  v33 = v24[2];
  v32 = v24[3];
  if (v33 >= v32 >> 1)
  {
    v24 = sub_1A3FA05D8((v32 > 1), v33 + 1, 1, v24);
  }

  v24[2] = v33 + 1;
  sub_1A3C5921C(v17, v24 + v27 + v33 * v28);
  swift_storeEnumTagMultiPayload();
  v34 = sub_1A3FA19AC();
  sub_1A3F9DA60(v34, v35, 10, v5, v14);
  v37 = v24[2];
  v36 = v24[3];
  if (v37 >= v36 >> 1)
  {
    v24 = sub_1A3FA05D8((v36 > 1), v37 + 1, 1, v24);
  }

  v24[2] = v37 + 1;
  sub_1A3C5921C(v14, v24 + v27 + v37 * v28);
  PXDisplayCollectionDetailedCountsMake();
  *v5 = v38;
  swift_storeEnumTagMultiPayload();
  v39 = sub_1A3FA19AC();
  sub_1A3F9DA60(v39, v40, 6, v5, v11);
  v42 = v24[2];
  v41 = v24[3];
  if (v42 >= v41 >> 1)
  {
    v24 = sub_1A3FA05D8((v41 > 1), v42 + 1, 1, v24);
  }

  v24[2] = v42 + 1;
  sub_1A3C5921C(v11, v24 + v27 + v42 * v28);
  PXDisplayCollectionDetailedCountsMake();
  *v5 = v43;
  swift_storeEnumTagMultiPayload();
  v44 = sub_1A3FA19AC();
  v45 = v68;
  sub_1A3F9DA60(v44, v46, 6, v5, v68);
  v48 = v24[2];
  v47 = v24[3];
  if (v48 >= v47 >> 1)
  {
    v24 = sub_1A3FA05D8((v47 > 1), v48 + 1, 1, v24);
  }

  v49 = swift_allocObject();
  v24[2] = v48 + 1;
  sub_1A3C5921C(v45, v24 + v27 + v48 * v28);
  *(v49 + 16) = v24;
  if (IsIPad)
  {
    v50 = v66;
    sub_1A43166E4(210, v49, v66);
    sub_1A43166E4(201, v49, v50);
    sub_1A43166E4(208, v49, v50);
    v51 = *MEMORY[0x1E69C1420];
    v52 = sub_1A5245154();
    v53 = v63;
    (*(*(v52 - 8) + 104))(v63, v51, v52);
    v55 = v64;
    v54 = v65;
    (*(v64 + 104))(v53, *MEMORY[0x1E69C1270], v65);
    sub_1A431523C(v53, v49);
    (*(v55 + 8))(v53, v54);
    v56 = sub_1A524C674();
    sub_1A43169E0(v56, v57, v49, v50);

    v58 = sub_1A524C674();
    sub_1A43169E0(v58, v59, v49, v50);

    v60 = sub_1A524C674();
    sub_1A43169E0(v60, v61, v49, v50);
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4314EB4(uint64_t a1, void *a2)
{
  v4 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A5240984();
  swift_allocObject();
  sub_1A5240974();
  sub_1A5240954();
  sub_1A3C583E8(a1, a2, sub_1A43159A4);
  sub_1A4316C2C();
  v5 = sub_1A5240964();
  v7 = v6;

  v8 = [a2 px_localDefaults];
  v9 = sub_1A5240E84();
  v10 = sub_1A524C634();
  [v8 setData:v9 forKey:v10];

  sub_1A3C59280(v5, v7);

  return result;
}

uint64_t sub_1A43151BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A43151DC, 0, 0);
}

uint64_t sub_1A43151DC()
{
  v1 = sub_1A4312F5C(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1A431523C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LemonadeBookmark(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(*(a2 + 16) + 16) <= 8uLL)
  {
    v11 = sub_1A5244EB4();
    (*(*(v11 - 8) + 16))(v6, a1, v11);
    swift_storeEnumTagMultiPayload();
    v12 = sub_1A3FA19AC();
    sub_1A3F9DA60(v12, v13, 7, v6, v10);
    swift_beginAccess();
    v14 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1A3FA05D8(0, v14[2] + 1, 1, v14);
      *(a2 + 16) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1A3FA05D8((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    sub_1A3C5921C(v10, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17);
    *(a2 + 16) = v14;
    swift_endAccess();
  }
}

uint64_t sub_1A4315464(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4315484, 0, 0);
}

void sub_1A43154FC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A3FA05D8(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for LemonadeBookmark(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1A4315628(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE900000000000073)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A431570C(uint64_t a1)
{
  v2 = sub_1A3C3B11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4315748(uint64_t a1)
{
  v2 = sub_1A3C3B11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4315784(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C4ACC8(0, &qword_1EB1262C0, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C3B11C();
  sub_1A524ED34();
  v14 = 0;
  sub_1A524E9C4();
  if (!v3)
  {
    v12[1] = a3;
    v13 = 1;
    sub_1A4317294(0, &qword_1EB126F50, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E62F8]);
    sub_1A3C3B5F4(&qword_1EB126F48, &qword_1EB12A548, &protocol conformance descriptor for LemonadeBookmark, MEMORY[0x1E69E6300]);
    sub_1A524E9D4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A43159A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v33 = a3;
  v4 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  v9 = sub_1A5246F24();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v27 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  sub_1A3C58DE8(a1 + *(v4 + 24), v27 - v18, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v32 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = v33;
  if (!EnumCaseMultiPayload)
  {
    v27[0] = v13;
    v27[1] = v8;
    v27[2] = v12;
    v27[3] = v9;
    sub_1A3C58DE8(v32, v16, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v23 = *v16;
    v24 = v16[1];
    v28 = a1;
    LOBYTE(v34) = *(a1 + 16);
    v39 = 0;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v37 == v35 && v38 == v36)
    {
    }

    else
    {
      v25 = sub_1A524EAB4();

      if ((v25 & 1) == 0)
      {

        v21 = v33;
        a1 = v28;
        goto LABEL_2;
      }
    }

    sub_1A3C4D548(0, &qword_1EB12B260, MEMORY[0x1E69E6158]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1A52F8E10;
    *(v26 + 32) = v23;
    *(v26 + 40) = v24;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_2:
  sub_1A3C58DE8(a1, v21, type metadata accessor for LemonadeBookmark);
  return sub_1A3C59040(v32, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
}

uint64_t sub_1A431634C(uint64_t a1)
{
  v2 = sub_1A524E234();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1A4316598(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void *sub_1A43163D4(uint64_t a1)
{
  v2 = sub_1A524E234();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1A4316640(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1A4316464()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A43151DC, 0, 0);
}

uint64_t sub_1A4316490()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A4315484, 0, 0);
}

uint64_t sub_1A43164F0()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A4312EFC, 0, 0);
}

uint64_t sub_1A4316534(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  return sub_1A524DBF4() & (v2 == v3);
}

uint64_t sub_1A4316598(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56) + 16 * a2;
    v6 = *(v5 + 8);
    *result = *v5;
    *(result + 8) = v6;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1A4316640(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    *(result + 16) = v9;
    v10 = v5;
    sub_1A4317484(v7, v8, v9);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1A43166E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for LemonadeBookmark(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a2 + 16) + 16) <= 8uLL)
  {
    v28 = v10;
    v13 = [a3 librarySpecificFetchOptions];
    v14 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:a1 options:v13];
    v15 = [v14 firstObject];

    if (v15)
    {
      v16 = objc_opt_self();
      v17 = [a3 librarySpecificFetchOptions];
      v18 = [v16 fetchKeyAssetsInAssetCollection:v15 options:v17];

      if (v18)
      {
        v19 = [v18 count];

        if (v19 >= 1)
        {
          PXDisplayCollectionDetailedCountsMake();
          *v8 = v20;
          swift_storeEnumTagMultiPayload();
          v21 = sub_1A3FA19AC();
          sub_1A3F9DA60(v21, v22, 6, v8, v12);
          swift_beginAccess();
          v23 = *(a2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_1A3FA05D8(0, v23[2] + 1, 1, v23);
            *(a2 + 16) = v23;
          }

          v26 = v23[2];
          v25 = v23[3];
          if (v26 >= v25 >> 1)
          {
            v23 = sub_1A3FA05D8((v25 > 1), v26 + 1, 1, v23);
          }

          v23[2] = v26 + 1;
          sub_1A3C5921C(v12, v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26);
          *(a2 + 16) = v23;
          swift_endAccess();
        }
      }
    }
  }
}

void sub_1A43169E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  swift_beginAccess();
  if (*(*(a3 + 16) + 16) <= 8uLL)
  {
    v12 = sub_1A524C634();
    v13 = [a4 px:v12 assetCollectionWithTransientIdentifier:?];

    if (v13)
    {

      *v10 = a1;
      v10[1] = a2;
      swift_storeEnumTagMultiPayload();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

unint64_t sub_1A4316C2C()
{
  result = qword_1EB177ED8[0];
  if (!qword_1EB177ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB177ED8);
  }

  return result;
}

void sub_1A4316C80(uint64_t a1)
{
  v8 = type metadata accessor for LemonadeBookmark(0);
  v2 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v12 = a1;
  v11 = a1;
  sub_1A4317294(0, &qword_1EB126280, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6F90]);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4317294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43172F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeBookmark(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A431733C()
{
  result = qword_1EB137ED0;
  if (!qword_1EB137ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137ED0);
  }

  return result;
}

void sub_1A4317390(uint64_t a1)
{
  if (!qword_1EB137EE0)
  {
    sub_1A3C52C70(255, &qword_1EB137EE8, 0x1E6978738);
    sub_1A3DBD9A0();
    v1 = sub_1A524ECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137EE0);
    }
  }
}

void sub_1A431741C(uint64_t a1)
{
  if (!qword_1EB137EF8)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524ECF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137EF8);
    }
  }
}

double sub_1A4317484(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = a1;
  return result;
}

uint64_t sub_1A4317494(uint64_t a1)
{
  sub_1A4317294(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A4317534()
{
  result = qword_1EB1B76E0;
  if (!qword_1EB1B76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B76E0);
  }

  return result;
}

id ImportSourceItem.value.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  a2[3] = sub_1A3D9E540(0, a1);
  *a2 = v5;

  return v5;
}

uint64_t sub_1A43175FC(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  v3 = sub_1A524C674();

  return v3;
}

uint64_t ImportSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1A4317770@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *(*v2 + 16);
  a2[3] = sub_1A3D9E540(0, a1);
  *a2 = v5;

  return v5;
}

void sub_1A43177C8(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1A4317824()
{
  v1 = [*(*v0 + 16) name];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A4317880()
{
  sub_1A43178F0(&qword_1EB12A5A8, &protocol conformance descriptor for ImportSourceItem);

    ;
  }
}

uint64_t sub_1A43178F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportSourceItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4317934@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  sub_1A4319D48(0);
  v110 = *(v2 - 8);
  v111 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v108 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4319F0C(0);
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A0A0(0);
  v113 = v6;
  v105 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A1E8(0);
  v102 = v8;
  v103 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A2B0(0);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A470(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A580(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v1;
  sub_1A43208C0(0, &qword_1EB137F50, sub_1A431A630, MEMORY[0x1E6981F40]);
  sub_1A431B9C8();
  sub_1A524A2C4();
  v22 = sub_1A52484F4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52484E4();
  sub_1A431A9A0(&qword_1EB1380C8, sub_1A431A580, MEMORY[0x1E697CD20]);
  sub_1A524B1E4();
  (*(v23 + 8))(v25, v22);
  (*(v19 + 8))(v21, v18);
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v14 + 36)];
  v28 = MEMORY[0x1E6980A08];
  sub_1A43208C0(0, &qword_1EB1220E0, sub_1A3D6D828, MEMORY[0x1E6980A08]);
  v30 = *(v29 + 28);
  v31 = sub_1A524BB24();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 104))(v35, *MEMORY[0x1E697D708], v31, v33);
  sub_1A524B954();
  (*(v32 + 8))(v35, v31);
  sub_1A3D6D85C(0);
  (*(*(v36 - 8) + 56))(v27 + v30, 0, 1, v36);
  *v27 = KeyPath;
  sub_1A431BA50();
  sub_1A524AEB4();
  sub_1A431F34C(v16, sub_1A431A470);
  v37 = sub_1A52493A4();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249394();
  sub_1A431A378(0, &qword_1EB137F28, sub_1A431A3EC, sub_1A3FF7EE8);
  v42 = *(v41 + 36);
  (*(v38 + 16))(&v12[v42], v40, v37);
  v43 = *(v38 + 56);
  v43(&v12[v42], 0, 1, v37);
  v44 = swift_getKeyPath();
  v45 = v99;
  v46 = &v12[*(v99 + 36)];
  sub_1A43208C0(0, &qword_1EB130238, sub_1A3FF7FB0, v28);
  v48 = *(v47 + 28);
  (*(v38 + 32))(v46 + v48, v40, v37);
  v43(v46 + v48, 0, 1, v37);
  *v46 = v44;
  v49 = sub_1A5249284();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v98 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 104))(v53, *MEMORY[0x1E697C438], v49, v51);
  v54 = sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
  v55 = v101;
  sub_1A524AF34();
  (*(v50 + 8))(v53, v49);
  sub_1A431F34C(v12, sub_1A431A2B0);
  v56 = v100;
  v114 = v100;
  sub_1A3D6DF58(0);
  v58 = v57;
  v116 = v45;
  v117 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
  v61 = v104;
  v62 = v102;
  sub_1A524B0F4();
  (*(v103 + 8))(v55, v62);
  v120 = sub_1A3C38BD4(0xD00000000000001CLL);
  v121 = v63;
  v116 = v62;
  v117 = v58;
  v118 = OpaqueTypeConformance2;
  v119 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_1A3D5F9DC();
  v66 = v113;
  v103 = v65;
  sub_1A524ABB4();

  (*(v105 + 8))(v61, v66);
  v67 = type metadata accessor for LemonadeBookmarksEditView(0);
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  sub_1A4320E88(v56, &v98 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  sub_1A524CC54();
  v70 = sub_1A524CC44();
  v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v72 = swift_allocObject();
  v73 = MEMORY[0x1E69E85E0];
  *(v72 + 16) = v70;
  *(v72 + 24) = v73;
  sub_1A43201E0(&v98 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v72 + v71, type metadata accessor for LemonadeBookmarksEditView);
  v74 = sub_1A524CCB4();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = &v98 - v77;
  sub_1A524CC74();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v102 = sub_1A52485C4();
    v104 = &v98;
    v101 = *(v102 - 8);
    MEMORY[0x1EEE9AC00](v102);
    v105 = v64;
    v80 = &v98 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116 = 0;
    v117 = 0xE000000000000000;
    sub_1A524E404();

    v116 = 0xD000000000000039;
    v117 = 0x80000001A53D22F0;
    v120 = 60;
    v81 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v81);

    v83 = MEMORY[0x1EEE9AC00](v82);
    (*(v75 + 16))(&v98 - v77, &v98 - v77, v74, v83);
    sub_1A52485B4();
    (*(v75 + 8))(&v98 - v77, v74);
    v84 = v107;
    v85 = v108;
    (*(v106 + 32))(v108, v112, v107);
    sub_1A431A378(0, &qword_1EB1380E8, sub_1A4319F0C, MEMORY[0x1EEE7B8C0]);
    v87 = v80;
    v64 = v105;
    (*(v101 + 4))(&v85[*(v86 + 36)], v87, v102);
  }

  else
  {
    sub_1A431A378(0, &qword_1EB1380F0, sub_1A4319F0C, MEMORY[0x1E697C028]);
    v85 = v108;
    v89 = &v108[*(v88 + 36)];
    v90 = sub_1A5248394();
    (*(v75 + 32))(&v89[*(v90 + 20)], v78, v74);
    *v89 = &unk_1A532FF28;
    *(v89 + 1) = v72;
    v84 = v107;
    (*(v106 + 32))(v85, v112, v107);
  }

  v91 = sub_1A5249A24();
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v98 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249494();
  v116 = v113;
  v117 = MEMORY[0x1E69E6158];
  v118 = v64;
  v119 = v103;
  v95 = swift_getOpaqueTypeConformance2();
  v116 = v84;
  v117 = v95;
  swift_getOpaqueTypeConformance2();
  v96 = v111;
  sub_1A524AD14();
  (*(v92 + 8))(v94, v91);
  return (*(v110 + 8))(v85, v96);
}

uint64_t sub_1A431899C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  sub_1A431B2E8(0);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A431B2E8;
  sub_1A431B050(0, &qword_1EB138020, sub_1A431B0CC, sub_1A431B2E8);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = &v59 - v9;
  sub_1A431AF9C(0, v8);
  v68 = v10;
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v59 - v13;
  sub_1A431AA7C(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431B050(0, &qword_1EB137F68, sub_1A431A754, sub_1A431AA7C);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v59 - v22;
  sub_1A431A6A0(0, v21);
  v60 = v24;
  v71 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v59 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v70 = &v59 - v27;
  v74 = a1;
  *v17 = sub_1A5249584();
  *(v17 + 1) = 0x4030000000000000;
  v17[16] = 0;
  sub_1A4320554(0, &qword_1EB138180, &qword_1EB137FB8, sub_1A431AAE0);
  sub_1A431C7B8(&v17[*(v28 + 44)]);
  v29 = sub_1A524A064();
  sub_1A5247BC4();
  v30 = &v17[*(v15 + 36)];
  *v30 = v29;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_1A431A754(0);
  sub_1A4321068(&qword_1EB137FE0, sub_1A431A754, sub_1A431AD9C, sub_1A431AF68);
  sub_1A431B928(&qword_1EB138008, sub_1A431AA7C, &qword_1EB138010, sub_1A431AAA4);
  sub_1A524BA64();
  sub_1A5248164();
  sub_1A431AC68(v35);
  v36 = v70;
  sub_1A524ADE4();
  (*(v20 + 8))(v23, v19);
  v73 = a1;
  *v5 = sub_1A5249584();
  *(v5 + 1) = 0x4030000000000000;
  v5[16] = 0;
  sub_1A4320554(0, &qword_1EB138188, &qword_1EB138050, sub_1A431B3D4);
  sub_1A431D83C(a1, &v5[*(v37 + 44)]);
  LOBYTE(v23) = sub_1A524A064();
  sub_1A5247BC4();
  v38 = &v5[*(v63 + 36)];
  *v38 = v23;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  sub_1A431B0CC(0);
  sub_1A431B884();
  sub_1A431B928(&qword_1EB1380B0, v62, &qword_1EB1380B8, sub_1A431B310);
  v43 = v61;
  sub_1A524BA64();
  sub_1A5248164();
  sub_1A431B794();
  v44 = v72;
  v45 = v66;
  sub_1A524ADE4();
  (*(v67 + 8))(v43, v45);
  v46 = *(v71 + 16);
  v48 = v59;
  v47 = v60;
  v46(v59, v36, v60);
  v49 = v64;
  v50 = v65;
  v51 = *(v65 + 16);
  v52 = v68;
  v51(v64, v44, v68);
  v53 = v69;
  v54 = v46(v69, v48, v47);
  sub_1A431A630(0, v54);
  v51(&v53[*(v55 + 48)], v49, v52);
  v56 = *(v50 + 8);
  v56(v72, v52);
  v57 = *(v71 + 8);
  v57(v70, v47);
  v56(v49, v52);
  return (v57)(v48, v47);
}

uint64_t sub_1A43190AC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmarksEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B24();
  sub_1A4320E88(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A43201E0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LemonadeBookmarksEditView);
  return MEMORY[0x1A5906A80](v7, sub_1A432052C, v9);
}

uint64_t sub_1A4319228(uint64_t a1)
{
  v2 = sub_1A5249234();
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697BF90];
  v6 = MEMORY[0x1E697DCB8];
  sub_1A43208C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_1A5248284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeBookmarksEditView(0);
  sub_1A432010C(a1 + *(v14 + 28), v9, &unk_1EB128A60, v5, v6, sub_1A43208C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v18 + 8))(v4, v19);
  }

  sub_1A5248274();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A43194EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4319584, v5, v4);
}

void sub_1A4319584()
{
  v1 = *(*(**(v0 + 80) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
  if (v1)
  {
    sub_1A3C341C8(v1 + 16, v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v5 = (*(v3 + 32) + **(v3 + 32));
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1A43196D8;

    v5(v2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A43196D8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1A4319800, v4, v3);
}

uint64_t sub_1A4319800()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  sub_1A4319928(sub_1A43204C0, v3, v1);
  v5 = v4;

  *(v0 + 56) = *(v2 + *(type metadata accessor for LemonadeBookmarksEditView(0) + 32));
  *(v0 + 72) = v5;
  sub_1A43208C0(0, &qword_1EB121C00, sub_1A431F49C, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v6 = *(v0 + 8);

  return v6();
}

void sub_1A4319928(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A431FD50(0, v5, 0);
    v8 = v15;
    v9 = *(type metadata accessor for LemonadeBookmark(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(v14, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v15 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A431FD50((v12 > 1), v13 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v13 + 1;
      sub_1A3C34460(v14, v8 + 40 * v13 + 32);
      v10 += v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1A4319A90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v23 = a1;
  v24 = a2;
  v6 = sub_1A52413E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52414C4();
  sub_1A431A9A0(&qword_1EB12AF60, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v10 = sub_1A524D004();
  if (v10)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1A3FD1D1C(0, v10 & ~(v10 >> 63), 0);
    v26 = v30;
    sub_1A524CFD4();
    if ((v10 & 0x8000000000000000) == 0)
    {
      v20 = v7;
      v21 = v6;
      v11 = 0;
      v22 = v10;
      while (!__OFADD__(v11, 1))
      {
        v25 = v11 + 1;
        v12 = v5;
        v5 = v9;
        v13 = sub_1A524D0C4();
        v27 = *v14;
        v13(v28, 0);
        v23(&v29, &v27);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        v15 = v29;
        v16 = v26;
        v30 = v26;
        v18 = *(v26 + 16);
        v17 = *(v26 + 24);
        if (v18 >= v17 >> 1)
        {
          v26 = v29;
          sub_1A3FD1D1C((v17 > 1), v18 + 1, 1);
          v15 = v26;
          v16 = v30;
        }

        *(v16 + 16) = v18 + 1;
        v26 = v16;
        *(v16 + 8 * v18 + 32) = v15;
        v9 = v5;
        v5 = v12;
        sub_1A524D044();
        ++v11;
        if (v25 == v22)
        {
          (*(v20 + 8))(v9, v21);
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*(v20 + 8))(v5, v21);

    __break(1u);
  }
}

void sub_1A4319D48(uint64_t a1)
{
  if (!qword_1EB137F00)
  {
    sub_1A4319F0C(255);
    sub_1A431A0A0(255);
    sub_1A431A1E8(255);
    sub_1A3D6DF58(255);
    sub_1A431A2B0(255);
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F00);
    }
  }
}

void sub_1A4319F0C(uint64_t a1)
{
  if (!qword_1EB137F08)
  {
    sub_1A431A0A0(255);
    sub_1A431A1E8(255);
    sub_1A3D6DF58(255);
    sub_1A431A2B0(255);
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F08);
    }
  }
}

void sub_1A431A0A0(uint64_t a1)
{
  if (!qword_1EB137F10)
  {
    sub_1A431A1E8(255);
    sub_1A3D6DF58(255);
    sub_1A431A2B0(255);
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F10);
    }
  }
}

void sub_1A431A1E8(uint64_t a1)
{
  if (!qword_1EB137F18)
  {
    sub_1A431A2B0(255);
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F18);
    }
  }
}

void sub_1A431A2B0(uint64_t a1)
{
  if (!qword_1EB137F20)
  {
    sub_1A431A378(255, &qword_1EB137F28, sub_1A431A3EC, sub_1A3FF7EE8);
    sub_1A43208C0(255, &qword_1EB130238, sub_1A3FF7FB0, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137F20);
    }
  }
}

void sub_1A431A378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A431A3EC(uint64_t a1, double a2)
{
  if (!qword_1EB137F30)
  {
    sub_1A431A470(255);
    sub_1A431BA50();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F30);
    }
  }
}

void sub_1A431A4AC(uint64_t a1, double a2)
{
  if (!qword_1EB137F40)
  {
    sub_1A431A580(255);
    sub_1A52484F4();
    sub_1A431A9A0(&qword_1EB1380C8, sub_1A431A580, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F40);
    }
  }
}

void sub_1A431A580(uint64_t a1)
{
  if (!qword_1EB137F48)
  {
    sub_1A43208C0(255, &qword_1EB137F50, sub_1A431A630, MEMORY[0x1E6981F40]);
    sub_1A431B9C8();
    v1 = sub_1A524A2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137F48);
    }
  }
}

void sub_1A431A630(uint64_t a1, double a2)
{
  if (!qword_1EB137F58)
  {
    sub_1A431A6A0(255, a2);
    sub_1A431AF9C(255, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137F58);
    }
  }
}

void sub_1A431A6A0(uint64_t a1, double a2)
{
  if (!qword_1EB137F60)
  {
    sub_1A431B050(255, &qword_1EB137F68, sub_1A431A754, sub_1A431AA7C);
    sub_1A431AC68(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F60);
    }
  }
}

void sub_1A431A7BC(uint64_t a1)
{
  if (!qword_1EB137F80)
  {
    sub_1A3C2DEB8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A43208C0(255, &qword_1EB137F88, sub_1A431A8A4, MEMORY[0x1E69E6720]);
    sub_1A4035564();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137F80);
    }
  }
}

void sub_1A431A8A4(uint64_t a1)
{
  if (!qword_1EB137F90)
  {
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    sub_1A431A948();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F90);
    }
  }
}

unint64_t sub_1A431A948()
{
  result = qword_1EB1B7800;
  if (!qword_1EB1B7800)
  {
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B7800);
  }

  return result;
}

uint64_t sub_1A431A9A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A431A9E8(uint64_t a1)
{
  if (!qword_1EB137F98)
  {
    sub_1A5248944();
    sub_1A431A9A0(&qword_1EB137FA0, MEMORY[0x1E697C230], MEMORY[0x1E697C228]);
    v1 = sub_1A52499B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB137F98);
    }
  }
}

void sub_1A431AAE0(uint64_t a1)
{
  if (!qword_1EB137FC0)
  {
    sub_1A43208C0(255, &qword_1EB137FC8, MEMORY[0x1E697D6D0], MEMORY[0x1E69E6720]);
    sub_1A431FCD4(255, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC, MEMORY[0x1E6981148]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137FC0);
    }
  }
}

unint64_t sub_1A431ABE0()
{
  result = qword_1EB137FD0;
  if (!qword_1EB137FD0)
  {
    sub_1A43208C0(255, &qword_1EB137FB8, sub_1A431AAE0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FD0);
  }

  return result;
}

unint64_t sub_1A431AC68(double a1)
{
  result = qword_1EB137FD8;
  if (!qword_1EB137FD8)
  {
    sub_1A431B050(255, &qword_1EB137F68, sub_1A431A754, sub_1A431AA7C);
    sub_1A4321068(&qword_1EB137FE0, sub_1A431A754, sub_1A431AD9C, sub_1A431AF68);
    sub_1A431B928(&qword_1EB138008, sub_1A431AA7C, &qword_1EB138010, sub_1A431AAA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FD8);
  }

  return result;
}

unint64_t sub_1A431ADE4()
{
  result = qword_1EB137FF0;
  if (!qword_1EB137FF0)
  {
    sub_1A431A7BC(255);
    sub_1A431AE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FF0);
  }

  return result;
}

unint64_t sub_1A431AE5C()
{
  result = qword_1EB137FF8;
  if (!qword_1EB137FF8)
  {
    sub_1A43208C0(255, &qword_1EB137F88, sub_1A431A8A4, MEMORY[0x1E69E6720]);
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    sub_1A431A948();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FF8);
  }

  return result;
}

void sub_1A431AF9C(uint64_t a1, double a2)
{
  if (!qword_1EB138018)
  {
    sub_1A431B050(255, &qword_1EB138020, sub_1A431B0CC, sub_1A431B2E8);
    sub_1A431B794();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138018);
    }
  }
}

void sub_1A431B050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A524BA74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A431B0CC(uint64_t a1)
{
  if (!qword_1EB138028)
  {
    sub_1A3C34398(255, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
    sub_1A431B190(255);
    sub_1A431B264();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138028);
    }
  }
}

void sub_1A431B190(uint64_t a1)
{
  if (!qword_1EB138030)
  {
    sub_1A431B210();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138030);
    }
  }
}

unint64_t sub_1A431B210()
{
  result = qword_1EB1B7808[0];
  if (!qword_1EB1B7808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B7808);
  }

  return result;
}

unint64_t sub_1A431B264()
{
  result = qword_1EB138038;
  if (!qword_1EB138038)
  {
    sub_1A3C34398(255, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138038);
  }

  return result;
}

void sub_1A431B34C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    a5();
    v7 = sub_1A524B894();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A431B3D4(uint64_t a1)
{
  if (!qword_1EB138058)
  {
    sub_1A524B9A4();
    sub_1A4320408(255, &qword_1EB138060, sub_1A431B468, MEMORY[0x1E697E5E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138058);
    }
  }
}

void sub_1A431B468(uint64_t a1)
{
  if (!qword_1EB138068)
  {
    sub_1A431B504(255, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
    sub_1A431B67C();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138068);
    }
  }
}

void sub_1A431B504(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    a5();
    v7 = sub_1A524B784();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A431B58C(uint64_t a1)
{
  if (!qword_1EB138080)
  {
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138080);
    }
  }
}

unint64_t sub_1A431B5F4()
{
  result = qword_1EB138088;
  if (!qword_1EB138088)
  {
    sub_1A43208C0(255, &qword_1EB138078, sub_1A431B58C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138088);
  }

  return result;
}

unint64_t sub_1A431B67C()
{
  result = qword_1EB138090;
  if (!qword_1EB138090)
  {
    sub_1A431B504(255, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138090);
  }

  return result;
}

unint64_t sub_1A431B70C()
{
  result = qword_1EB138098;
  if (!qword_1EB138098)
  {
    sub_1A43208C0(255, &qword_1EB138050, sub_1A431B3D4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138098);
  }

  return result;
}

unint64_t sub_1A431B794()
{
  result = qword_1EB1380A0;
  if (!qword_1EB1380A0)
  {
    sub_1A431B050(255, &qword_1EB138020, sub_1A431B0CC, sub_1A431B2E8);
    sub_1A431B884();
    sub_1A431B928(&qword_1EB1380B0, sub_1A431B2E8, &qword_1EB1380B8, sub_1A431B310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380A0);
  }

  return result;
}

unint64_t sub_1A431B884()
{
  result = qword_1EB1380A8;
  if (!qword_1EB1380A8)
  {
    sub_1A431B0CC(255);
    sub_1A431B210();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380A8);
  }

  return result;
}

uint64_t sub_1A431B928(unint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A431A9A0(a3, a4, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A431B9C8()
{
  result = qword_1EB1380C0;
  if (!qword_1EB1380C0)
  {
    sub_1A43208C0(255, &qword_1EB137F50, sub_1A431A630, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380C0);
  }

  return result;
}

unint64_t sub_1A431BA50()
{
  result = qword_1EB1380D0;
  if (!qword_1EB1380D0)
  {
    sub_1A431A470(255);
    sub_1A431A580(255);
    sub_1A52484F4();
    sub_1A431A9A0(&qword_1EB1380C8, sub_1A431A580, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1A431BB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380D0);
  }

  return result;
}

unint64_t sub_1A431BB50()
{
  result = qword_1EB1220E8;
  if (!qword_1EB1220E8)
  {
    sub_1A43208C0(255, &qword_1EB1220E0, sub_1A3D6D828, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1220E8);
  }

  return result;
}

unint64_t sub_1A431BBD8()
{
  result = qword_1EB1380E0;
  if (!qword_1EB1380E0)
  {
    sub_1A431A378(255, &qword_1EB137F28, sub_1A431A3EC, sub_1A3FF7EE8);
    sub_1A431A470(255);
    sub_1A431BA50();
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB130260, sub_1A3FF7EE8, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380E0);
  }

  return result;
}

void sub_1A431BCF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v4 = type metadata accessor for LemonadeBookmarksEditView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v22 = sub_1A5243164();
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for LemonadeBookmarksEditView;
  sub_1A4320E88(a1, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1A43201E0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A3C2DEB8(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A43208C0(0, &qword_1EB137F88, sub_1A431A8A4, MEMORY[0x1E69E6720]);
  sub_1A4035564();
  sub_1A431AE5C();
  sub_1A524B9B4();
  v10 = v20;
  v9 = v21;
  sub_1A4320E88(v21, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v11 = swift_allocObject();
  sub_1A43201E0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for LemonadeBookmarksEditView);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1A4320D30;
  *(v12 + 24) = v11;
  sub_1A431A788(0);
  v14 = (a2 + *(v13 + 36));
  *v14 = sub_1A3F36A00;
  v14[1] = v12;
  sub_1A4320E88(v9, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = swift_allocObject();
  sub_1A43201E0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v7, type metadata accessor for LemonadeBookmarksEditView);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1A4320DB0;
  *(v16 + 24) = v15;
  sub_1A431A754(0);
  v18 = (a2 + *(v17 + 36));
  *v18 = sub_1A4320E20;
  v18[1] = v16;
}

uint64_t sub_1A431C004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A274();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeBookmarksEditView.ItemLabel(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A431A8A4(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v35[0] = *a1;
  v35[1] = v15;
  v16 = sub_1A52431A4();
  if (v16)
  {
    v31[0] = v4;
    v31[1] = v7;
    v32 = v11;
    v33 = a2;
    v17 = *(*v16 + 160);
    v17(v35);
    v19 = v36;
    v18 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v20 = (*(v18 + 56))(v19, v18);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      sub_1A3F9670C(v35);
      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v25 = sub_1A3F9670C(v35);
    }

    (v17)(v35, v25);
    v27 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v22 = (*(v28 + 64))(v27, v28);
    v23 = v29;
    sub_1A3F9670C(v35);
LABEL_10:
    v35[0] = 0x4036000000000000;
    (*(v34 + 104))(v6, *MEMORY[0x1E6980F10], v31[0]);
    sub_1A3F185D4();
    sub_1A52480B4();
    *v9 = v22;
    v9[1] = v23;
    v9[2] = 0;
    v9[3] = 0;
    sub_1A5248164();
    sub_1A431A948();
    sub_1A524ABD4();

    sub_1A4320374(v9, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
    v11 = v32;
    a2 = v33;
    (*(v12 + 32))(v33, v14, v32);
    v26 = 0;
    return (*(v12 + 56))(a2, v26, 1, v11);
  }

  v26 = 1;
  return (*(v12 + 56))(a2, v26, 1, v11);
}

void sub_1A431C394(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = a2;
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v21 = a3;
  sub_1A4319A90(sub_1A43210F4, v20);
  v12 = v11;
  sub_1A431A9A0(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1A524E214();
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    do
    {
      v15 = *v14++;
      v22 = v15;
      sub_1A524E154();
      --v13;
    }

    while (v13);
  }

  (*(v5 + 32))(v10, v7, v4);
  sub_1A431EAEC(v19);
  if (*(*(*a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48))
  {
    v17 = v16;

    sub_1A42E2204(v10, v17);

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A431C5B4(uint64_t a1, void *a2)
{
  v3 = sub_1A52414C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v17 = a2;
  sub_1A4319A90(sub_1A4320E48, v16);
  v11 = v10;
  sub_1A431A9A0(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1A524E214();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      v18 = v14;
      sub_1A524E154();
      --v12;
    }

    while (v12);
  }

  result = (*(v4 + 32))(v9, v6, v3);
  if (*(*(*a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48))
  {

    sub_1A42E1E60(v9);

    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A431C7B8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A43208C0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v56 - v3;
  v57 = sub_1A524A274();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431FCD4(0, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC, MEMORY[0x1E6981148]);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v56 - v11;
  v12 = sub_1A524B9A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43208C0(0, &qword_1EB137FC8, MEMORY[0x1E697D6D0], v1);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = *(sub_1A5243164() + 16);

  v59 = v20;
  if (v21)
  {
    sub_1A524B994();
    (*(v13 + 32))(v20, v15, v12);
    (*(v13 + 56))(v20, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v20, 1, 1, v12);
  }

  v64 = sub_1A3C38BD4(0xD000000000000025);
  v65 = v22;
  sub_1A3D5F9DC();
  v23 = sub_1A524A464();
  v25 = v24;
  v27 = v26;
  v28 = v57;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980F38], v57);
  v29 = sub_1A524A154();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  sub_1A524A1C4();
  v30 = MEMORY[0x1E69E6720];
  v56 = sub_1A43208C0;
  sub_1A4320180(v4, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1A43208C0);
  (*(v5 + 8))(v7, v28);
  v31 = sub_1A524A3C4();
  v33 = v32;
  LOBYTE(v28) = v34;

  sub_1A3E04DF4(v23, v25, v27 & 1);

  sub_1A524B4A4();
  v35 = sub_1A524A364();
  v37 = v36;
  v39 = v38;
  v57 = v40;

  sub_1A3E04DF4(v31, v33, v28 & 1);

  v41 = v61;
  v42 = &v61[*(v58 + 36)];
  sub_1A43208C0(0, &unk_1EB127810, sub_1A431ABAC, MEMORY[0x1E6980A08]);
  v44 = *(v43 + 28);
  v45 = *MEMORY[0x1E6980FD8];
  v46 = sub_1A524A394();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v42 + v44, v45, v46);
  (*(v47 + 56))(v42 + v44, 0, 1, v46);
  *v42 = swift_getKeyPath();
  *v41 = v35;
  *(v41 + 8) = v37;
  *(v41 + 16) = v39 & 1;
  *(v41 + 24) = v57;
  v48 = MEMORY[0x1E697D6D0];
  v50 = v59;
  v49 = v60;
  sub_1A432010C(v59, v60, &qword_1EB137FC8, MEMORY[0x1E697D6D0], v30, sub_1A43208C0);
  v51 = v62;
  sub_1A4320B80(v41, v62);
  v52 = v63;
  sub_1A432010C(v49, v63, &qword_1EB137FC8, v48, v30, sub_1A43208C0);
  sub_1A431AAE0(0);
  sub_1A4320B80(v51, v52 + *(v53 + 48));
  sub_1A4320C10(v41);
  v54 = v56;
  sub_1A4320180(v50, &qword_1EB137FC8, v48, v30, v56);
  sub_1A4320C10(v51);
  return sub_1A4320180(v49, &qword_1EB137FC8, v48, v30, v54);
}

void sub_1A431CE98(uint64_t a1@<X8>)
{
  sub_1A43208C0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A524A274();
  MEMORY[0x1EEE9AC00](v4);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_1A43202F8(0, &qword_1EB138120, &qword_1EB138128, sub_1A431FC14);
  sub_1A431D108(v1, a1 + *(v5 + 44));
}

void sub_1A431D108(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  sub_1A431FCAC(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A43208C0(0, &qword_1EB138138, sub_1A431FCAC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  if (a1[3])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v5 + 56))(v11 - v8, 1, 1, v4);
  if (a1[1])
  {
    v9 = *a1;
    v10 = a1[1];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11[2] = v9;
  v11[3] = v10;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A431D54C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmarksEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v16 = *(a1 + *(v5 + 40));
  sub_1A43208C0(0, &qword_1EB121C00, sub_1A431F49C, MEMORY[0x1E6981790]);
  v6 = sub_1A524B6A4();
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v6);
    OpaqueTypeConformance2 = a1;
    v8 = sub_1A431E714(sub_1A4320B20, (&v14 - 4), v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v15 = v8;
  swift_getKeyPath();
  sub_1A4320E88(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A43201E0(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A3C34398(0, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
  sub_1A431B190(0);
  sub_1A431B264();
  v11 = sub_1A431B210();
  *&v16 = &type metadata for LemonadeBookmarksEditView.SuggestionItem;
  *(&v16 + 1) = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_1A524B9B4();
}

uint64_t sub_1A431D7E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A431D83C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for LemonadeBookmarksEditView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = sub_1A431B468;
  sub_1A4320408(0, &qword_1EB138060, sub_1A431B468, MEMORY[0x1E697E5E0]);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1A524B9A4();
  v40 = *(v12 - 8);
  v13 = v40;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v39 = &v37 - v17;
  sub_1A524B994();
  sub_1A4320E88(a1, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1A43201E0(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A431B504(0, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
  sub_1A431B67C();
  sub_1A524B704();
  v21 = sub_1A524A084();
  sub_1A5247BC4();
  v22 = &v11[*(v7 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = *(v13 + 16);
  v38 = v15;
  v28 = v18;
  v29 = v41;
  v27(v15, v28, v41);
  v31 = v42;
  v30 = v43;
  sub_1A432010C(v11, v42, &qword_1EB138060, v43, MEMORY[0x1E697E5E0], sub_1A4320408);
  v32 = v44;
  v27(v44, v15, v29);
  sub_1A431B3D4(0);
  v34 = MEMORY[0x1E697E5E0];
  sub_1A432010C(v31, &v32[*(v33 + 48)], &qword_1EB138060, v30, MEMORY[0x1E697E5E0], sub_1A4320408);
  sub_1A4320180(v11, &qword_1EB138060, v30, v34, sub_1A4320408);
  v35 = *(v40 + 8);
  v35(v39, v29);
  sub_1A4320180(v31, &qword_1EB138060, v30, v34, sub_1A4320408);
  return (v35)(v38, v29);
}

double sub_1A431DC68(uint64_t *a1)
{
  v2 = type metadata accessor for LemonadeBookmarksEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *a1;
  sub_1A4320E88(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1A43201E0(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A4429F18(v5, sub_1A432085C, v7);

  return result;
}

double sub_1A431DD9C@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  sub_1A43202F8(0, &qword_1EB138160, &qword_1EB138078, sub_1A431B58C);
  return sub_1A431DE04((a2 + *(v3 + 44)));
}

double sub_1A431DE04@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524A274();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeBookmarksEditView.ItemLabel(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v18 - v10);
  v12 = sub_1A524B384();
  v13 = sub_1A3C38BD4(0xD000000000000025);
  v15 = v14;
  v18[1] = 0x4036000000000000;
  (*(v3 + 104))(v5, *MEMORY[0x1E6980F10], v2);
  sub_1A3F185D4();
  sub_1A52480B4();
  *v11 = v13;
  v11[1] = v15;
  v11[2] = 0;
  v11[3] = 0;
  sub_1A4320E88(v11, v8, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  *a1 = v12;
  sub_1A431B58C(0);
  sub_1A4320E88(v8, a1 + *(v16 + 48), type metadata accessor for LemonadeBookmarksEditView.ItemLabel);

  sub_1A4320374(v11, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  sub_1A4320374(v8, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);

  return result;
}

uint64_t sub_1A431E030(void *a1)
{
  v2 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[4];
  v6 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v5 + 48))(v6, v5);
  sub_1A42E0F5C(v4);
  return sub_1A4320374(v4, type metadata accessor for LemonadeBookmark);
}

double sub_1A431E108@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22[0] = a2;
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeBookmarksEditView.ItemLabel(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v22 - v11);
  v13 = sub_1A524B424();
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 56))(v14, v15);
  v18 = v17;
  v22[1] = 0x4036000000000000;
  (*(v4 + 104))(v6, *MEMORY[0x1E6980F10], v3);
  sub_1A3F185D4();
  sub_1A52480B4();
  *v12 = v16;
  v12[1] = v18;
  v12[2] = 0;
  v12[3] = 0;
  sub_1A4320E88(v12, v9, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  v19 = v22[0];
  *v22[0] = v13;
  sub_1A431B58C(0);
  sub_1A4320E88(v9, v19 + *(v20 + 48), type metadata accessor for LemonadeBookmarksEditView.ItemLabel);

  sub_1A4320374(v12, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  sub_1A4320374(v9, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);

  return result;
}

uint64_t sub_1A431E350()
{
  sub_1A4320248(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  v1[1] = v4[0];
  v1[2] = v2;
  v1[3] = v4[2];
  sub_1A431B504(0, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
  sub_1A431B67C();
  return sub_1A524B704();
}

void sub_1A431E440(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1A524B544();
  sub_1A3EE213C(0);
  v6 = (a1 + *(v5 + 36));
  sub_1A43208C0(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x1E69816C0];
  v10 = sub_1A524B5B4();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *v6 = swift_getKeyPath();
  *a1 = v4;
  sub_1A43203D4(0);
  *(a1 + *(v11 + 36)) = v3;

  LOBYTE(v3) = sub_1A524A094();
  sub_1A5247BC4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1A4320408(0, &qword_1EB138168, sub_1A43203D4, MEMORY[0x1E697E5E0]);
  v21 = a1 + *(v20 + 36);
  *v21 = v3;
  *(v21 + 1) = v13;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  v21[40] = 0;
}

void sub_1A431E5C8(void *a1, void *a2)
{
  v4 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(*a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
  if (v7)
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = *(v9 + 48);

    v10(v8, v9);
    (*(*v7 + 368))(v6);

    sub_1A4320374(v6, type metadata accessor for LemonadeBookmark);
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1A431E714(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1A3C341C8(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1A3C34460(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A431FD50(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1A431FD50((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_1A3C34460(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_1A431E88C(uint64_t a1)
{
  sub_1A43208C0(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for LemonadeBookmark(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4320924(a1, &v13);
  if (!v14)
  {
    return sub_1A43209B4(&v13);
  }

  sub_1A3C34460(&v13, v15);
  sub_1A3C341C8(v15, &v13);
  v10 = sub_1A3FA19AC();
  sub_1A3F9DD48(v10, v11, &v13, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
    return sub_1A4320180(v5, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720], sub_1A43208C0);
  }

  else
  {
    result = sub_1A43201E0(v5, v9, type metadata accessor for LemonadeBookmark);
    if (*(*(*v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48))
    {

      sub_1A42E0F5C(v9);

      sub_1A4320374(v9, type metadata accessor for LemonadeBookmark);
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1A431EAEC(int64_t a1)
{
  v3 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(sub_1A5243164() + 16);

  if (v4 <= a1)
  {
    v6 = *(*(*v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
    if (v6)
    {
      v7 = *(*v6 + 328);

      v7(v8);

      return;
    }
  }

  else
  {
    v5 = sub_1A5243164();
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*(v5 + 16) > a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  __break(1u);
  __break(1u);
}

double sub_1A431ED94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = type metadata accessor for LemonadeBookmarksEditView(0);
  v5 = v4[6];
  *(a3 + v5) = swift_getKeyPath();
  v6 = MEMORY[0x1E697DCB8];
  sub_1A43208C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A43208C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], v6);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  sub_1A431F49C(0);
  sub_1A524B694();
  result = *&v10;
  *(a3 + v8) = v10;
  return result;
}

void sub_1A431EEAC()
{
  sub_1A43208C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = [objc_opt_self() sharedPhotoLibrary];
  type metadata accessor for LemonadeBookmarksManager(0);
  v4 = type metadata accessor for LemonadeMockBookmarksDataSource();
  v5 = v3;
  v6 = sub_1A495E4AC();
  v8 = v4;
  v9 = sub_1A431A9A0(&qword_1EB13D0D0, type metadata accessor for LemonadeMockBookmarksDataSource, &unk_1A5376B80);
  *&v7 = v6;
  LemonadeBookmarksManager.__allocating_init(photoLibrary:dataSource:)(v5, &v7);
}

uint64_t sub_1A431F2B4(uint64_t a1)
{
  v2 = sub_1A432046C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A431F300(uint64_t a1)
{
  v2 = sub_1A432046C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A431F34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A431F3D4()
{
  v2 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A43194EC(v4, v5, v0 + v3);
}

void sub_1A431F49C(uint64_t a1)
{
  if (!qword_1EB120CA0)
  {
    sub_1A3C34398(255, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120CA0);
    }
  }
}

void sub_1A431F55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A43208C0(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A431F650()
{
  result = qword_1EB138108;
  if (!qword_1EB138108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138108);
  }

  return result;
}

void sub_1A431F6E8(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v1 <= 0x3F)
  {
    sub_1A40EE918(319, v1);
    if (v2 <= 0x3F)
    {
      sub_1A43208C0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A43208C0(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A43208C0(319, &qword_1EB121C00, sub_1A431F49C, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A431F8D0()
{
  result = qword_1EB127950;
  if (!qword_1EB127950)
  {
    sub_1A43208C0(255, &qword_1EB127948, sub_1A3D639F0, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127950);
  }

  return result;
}

unint64_t sub_1A431F958()
{
  result = qword_1EB127780;
  if (!qword_1EB127780)
  {
    sub_1A43208C0(255, &unk_1EB127770, sub_1A3E7D368, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127780);
  }

  return result;
}

uint64_t sub_1A431F9F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A431FA38(uint64_t result, int a2, int a3)
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

void sub_1A431FAA8(uint64_t a1)
{
  if (!qword_1EB128978)
  {
    sub_1A3F185D4();
    v1 = sub_1A52480E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128978);
    }
  }
}

void sub_1A431FB18(uint64_t a1)
{
  sub_1A3C2DEB8(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A431FAA8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A431FC14(uint64_t a1)
{
  if (!qword_1EB138130)
  {
    sub_1A43208C0(255, &qword_1EB138138, sub_1A431FCAC, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138130);
    }
  }
}

void sub_1A431FCD4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6980A08]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void *sub_1A431FD50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A431FD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A431FD70(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A3C34398(0, &qword_1EB138178, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C34400(0, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A431FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *, double), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v15 - v12;
  a6(a1, &v15 - v12, v11);
  return a7(v13);
}

void sub_1A431FFE4(uint64_t a1)
{
  if (!qword_1EB138148)
  {
    sub_1A431B504(255, &qword_1EB138150, &qword_1EB138128, sub_1A431FC14, sub_1A4320084);
    sub_1A3EC18C4(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138148);
    }
  }
}

unint64_t sub_1A4320084()
{
  result = qword_1EB138158;
  if (!qword_1EB138158)
  {
    sub_1A43208C0(255, &qword_1EB138128, sub_1A431FC14, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138158);
  }

  return result;
}

uint64_t sub_1A432010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4320180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A43201E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1A4320288@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0x402E000000000000;
  *(a2 + 16) = 0;
  sub_1A43202F8(0, &qword_1EB138160, &qword_1EB138078, sub_1A431B58C);
  return sub_1A431E108(v4, (a2 + *(v5 + 44)));
}

void sub_1A43202F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4320374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4320408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1A432046C()
{
  result = qword_1EB138170;
  if (!qword_1EB138170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138170);
  }

  return result;
}

void sub_1A43204C0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(**(v2 + 16) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  sub_1A3CA015C(a1, v5, a2);
}

void sub_1A4320554(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for LemonadeBookmarksEditView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_1A43208C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  sub_1A43208C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A43207E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A43208C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4320924(uint64_t a1, uint64_t a2)
{
  sub_1A3C34398(0, &qword_1EB124AA0, &qword_1EB128C70, off_1E77211E8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43209B4(uint64_t a1)
{
  sub_1A3C34398(0, &qword_1EB124AA0, &qword_1EB128C70, off_1E77211E8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4320A3C(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_1A3C341C8(a1, v7);
  v6 = *(*(*(v1 + v4) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
  if (v6)
  {
    sub_1A3C34460(v7, v8);
    v9 = v6;

    sub_1A5248164();
    sub_1A431B210();
    sub_1A524ABD4();
    return sub_1A4320B50(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4320B80(uint64_t a1, uint64_t a2)
{
  sub_1A431FCD4(0, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC, MEMORY[0x1E6981148]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4320C10(uint64_t a1)
{
  sub_1A431FCD4(0, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC, MEMORY[0x1E6981148]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4320CB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LemonadeBookmarksEditView(0);

  return sub_1A431C004(a1, a2);
}

void sub_1A4320D30(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1A431C394(a1, a2, v6);
}

uint64_t sub_1A4320DB0(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A431C5B4(a1, v4);
}

uint64_t sub_1A4320E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4320EF0()
{
  result = qword_1EB138198;
  if (!qword_1EB138198)
  {
    sub_1A431B504(255, &qword_1EB138150, &qword_1EB138128, sub_1A431FC14, sub_1A4320084);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138198);
  }

  return result;
}

unint64_t sub_1A4320F80()
{
  result = qword_1EB1381A8;
  if (!qword_1EB1381A8)
  {
    sub_1A4320408(255, &qword_1EB138168, sub_1A43203D4, MEMORY[0x1E697E5E0]);
    sub_1A4321068(&qword_1EB123698, sub_1A43203D4, sub_1A3F37498, sub_1A3F33024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1381A8);
  }

  return result;
}

uint64_t sub_1A4321068(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A432110C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *sub_1A43D435C();

  return result;
}

uint64_t sub_1A4321148()
{
  sub_1A4321CC4(0, &qword_1EB127F08, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v18 - v1);
  sub_1A4321478(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1A5242264();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0x662E6E6F73726570;
  v10[1] = 0xEB000000006C6C69;
  (*(v7 + 104))(v10, *MEMORY[0x1E69C1D38], v6, v8);
  v11 = sub_1A5242B94();
  (*(v7 + 8))(v10, v6);
  sub_1A3C7E8B0(0, v12);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v10) = [v13 allowProfileIcon];

  if (v10 && (sub_1A43216B4(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]), sub_1A5247C84(), v14 = sub_1A43D35A4(), , v14))
  {
    *v5 = sub_1A524BC74();
    v5[1] = v15;
    sub_1A4321948(0);
    sub_1A4321718(v11, v5 + *(v16 + 44));
    sub_1A43219E0(v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1A432165C();
    sub_1A5249744();

    return sub_1A4321A44(v5);
  }

  else
  {
    *v2 = v11;
    swift_storeEnumTagMultiPayload();
    sub_1A432165C();
    return sub_1A5249744();
  }
}

void sub_1A4321478(uint64_t a1)
{
  if (!qword_1EB127348)
  {
    sub_1A43216B4(255, &qword_1EB127128, sub_1A432150C, MEMORY[0x1E6981F40]);
    sub_1A43215D4();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127348);
    }
  }
}

void sub_1A432150C(uint64_t a1)
{
  if (!qword_1EB128598)
  {
    sub_1A432157C();
    type metadata accessor for PersonFaceView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB128598);
    }
  }
}

void sub_1A432157C()
{
  if (!qword_1EB1285A0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1285A0);
    }
  }
}

unint64_t sub_1A43215D4()
{
  result = qword_1EB127130;
  if (!qword_1EB127130)
  {
    sub_1A43216B4(255, &qword_1EB127128, sub_1A432150C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127130);
  }

  return result;
}

unint64_t sub_1A432165C()
{
  result = qword_1EB127350;
  if (!qword_1EB127350)
  {
    sub_1A4321478(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127350);
  }

  return result;
}

void sub_1A43216B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1A4321718@<D0>(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = sub_1A5243624();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersonFaceView(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v21 - v15);
  (*(v6 + 104))(v8, *MEMORY[0x1E69C2530], v5, v14);

  LOBYTE(v5) = sub_1A3C5A374();
  swift_unknownObjectRetain();
  sub_1A4308C80(v8, 0, v5 & 1, v16);
  v17 = *(v10 + 16);
  v17(v12, v16, v9);
  *a3 = a1;
  sub_1A432150C(0);
  v17(&a3[*(v18 + 48)], v12, v9);
  v19 = *(v10 + 8);

  v19(v16, v9);
  v19(v12, v9);

  return result;
}

void sub_1A4321948(uint64_t a1)
{
  if (!qword_1EB124420)
  {
    sub_1A43216B4(255, &qword_1EB127128, sub_1A432150C, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124420);
    }
  }
}

uint64_t sub_1A43219E0(uint64_t a1, uint64_t a2)
{
  sub_1A4321478(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4321A44(uint64_t a1)
{
  sub_1A4321478(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4321AA0()
{
  type metadata accessor for LemonadeUserInfoViewModel(0);

  return sub_1A5247C74();
}

uint64_t type metadata accessor for LemonadeProfileIconView(uint64_t a1)
{
  result = qword_1EB185C80;
  if (!qword_1EB185C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4321B8C(uint64_t a1)
{
  sub_1A43216B4(319, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A4321C28()
{
  result = qword_1EB127D08;
  if (!qword_1EB127D08)
  {
    sub_1A4321CC4(255, &qword_1EB127D00, MEMORY[0x1E697F960]);
    sub_1A432165C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D08);
  }

  return result;
}

void sub_1A4321CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A4321478(255);
    v7 = a3(a1, v6, MEMORY[0x1E6981748]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id PXUpdateBookmarksOrderAction.init(photoLibrary:orderedCollections:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhotoLibrary:a1 orderedCollections:a2];

  swift_unknownObjectRelease();
  return v3;
}

{
  *(v2 + OBJC_IVAR___PXUpdateBookmarksOrderAction_undoOrderedBookmarks) = 0;
  *(v2 + OBJC_IVAR___PXUpdateBookmarksOrderAction_redoOrderedBookmarks) = 0;
  *(v2 + OBJC_IVAR___PXUpdateBookmarksOrderAction_orderedCollections) = a2;
  v6.super_class = PXUpdateBookmarksOrderAction;
  v4 = objc_msgSendSuper2(&v6, sel_initWithPhotoLibrary_, a1);

  return v4;
}

void PXUpdateBookmarksOrderAction.perform(_:)(uint64_t (*a1)(uint64_t, void))
{
  v2 = v1;
  v3 = sub_1A3F9ECF0([v1 orderedCollections]);
  swift_unknownObjectRelease();
  v4 = [v1 photoLibrary];
  v5 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v8[4] = sub_1A432214C;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3C2E0D0;
  v8[3] = &block_descriptor_159;
  _Block_copy(v8);
  v7 = v2;

  px_dispatch_on_main_queue();
}

void sub_1A4322098(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + OBJC_IVAR___PXUpdateBookmarksOrderAction_undoOrderedBookmarks) = (*(*a2 + 328))();

  sub_1A42E25CC(a3);
}

unint64_t type metadata accessor for PXUpdateBookmarksOrderAction()
{
  result = qword_1EB1B7968[0];
  if (!qword_1EB1B7968[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB1B7968);
  }

  return result;
}

void sub_1A43223D4(void *a1, uint64_t a2)
{
  v3 = sub_1A3F9ECF0([a1 orderedCollections]);
  swift_unknownObjectRelease();
  v4 = [a1 photoLibrary];
  v5 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v5;
  v6[4] = v3;
  v8[4] = sub_1A4322584;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3C2E0D0;
  v8[3] = &block_descriptor_33_2;
  _Block_copy(v8);
  v7 = a1;

  px_dispatch_on_main_queue();
}

uint64_t objectdestroyTm_45()
{

  return swift_deallocObject();
}

uint64_t PhotosTabBadgesModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  sub_1A5241604();
  return v0;
}

uint64_t PhotosTabBadgesModel.init()(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  sub_1A5241604();
  return v1;
}

void sub_1A432260C(void *a1, unsigned __int8 *a2)
{
  v20 = a1;
  v3 = *a2;
  swift_getKeyPath();
  v4 = *(*v2 + 176);
  v5 = *v2 + 176;
  v4();

  v6 = swift_beginAccess();
  v7 = *(v2[2] + 16);
  v19 = v3;
  v18 = v4;
  v17[3] = v5;
  if (v7)
  {
    v6 = sub_1A3C345C4(v3);
    if (v8)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  v17[2] = v17;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v9 + 2;
  if (v9[2])
  {
    sub_1A43231A4(v9 + 4);
  }

  v11 = *v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = v9;
  if (!isUniquelyReferenced_nonNull_native || v12 > v9[3] >> 1)
  {
    if (v11 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v9 = sub_1A3C3422C(isUniquelyReferenced_nonNull_native, v14, 1, v9);
    *&v22 = v9;
  }

  v15 = v18;
  sub_1A43233C8(v12, v11, 0);
  swift_getKeyPath();
  v15();

  *&v23 = v2;
  swift_getKeyPath();
  sub_1A3C34170();
  sub_1A52415F4();

  swift_beginAccess();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v2[2];
  v2[2] = 0x8000000000000000;
  sub_1A3C34478(v9, v19, v16);
  v2[2] = v21;
  swift_endAccess();
  *&v23 = v2;
  swift_getKeyPath();
  sub_1A52415E4();
}

void sub_1A4322C24()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4322CA0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 176))();

  swift_beginAccess();
  *a2 = v3[2];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4322D30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  (*(*v2 + 184))();

  return result;
}

uint64_t PhotosTabBadgesModel.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosTabBadgesModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosTabBadgesModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosTabBadgesModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t PhotosBadgableTabIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t PhotosTabBadgeValue.localizedString.getter()
{
  v1 = PXLocalizedStringFromInteger(*v0);
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A4323054()
{
  v1 = v0;
  sub_1A3C34630(0);
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
        v17 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + v16) = *(*(v2 + 48) + v16);
        *(*(v4 + 56) + 8 * v16) = v17;
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

void sub_1A43231A4(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1A524E424();
  v3 = AssociatedTypeWitness;
  v4 = AssociatedConformanceWitness;
  v5 = __swift_project_boxed_opaque_existential_1(v15, AssociatedTypeWitness);
  v18[3] = v3;
  v18[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1A524E424();
  v7 = v12;
  v8 = v13;
  v9 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v14[3] = v7;
  v14[4] = *(v8 + 8);
  v10 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  sub_1A5246794();
}

unint64_t sub_1A43233C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_1A3C34400(0, &qword_1EB125F68, &protocol descriptor for PhotosTabBadgeSource);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A43234B8(uint64_t a1)
{
  sub_1A3C34398(0, &qword_1EB126FA8, &unk_1EB126FB0, MEMORY[0x1E69E6028], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A43235AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void Image.makeSharedCollectionPreview()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3, v5);
  v8 = sub_1A524B5C4();
  (*(v4 + 8))(v7, v3);
  sub_1A524BC74();
  sub_1A52481F4();
  v32 = 1;
  *&v31[8] = v33;
  *&v31[24] = v34;
  *&v31[40] = v35;
  sub_1A432388C(0);
  v10 = (a2 + *(v9 + 36));
  v11 = *(sub_1A5248A14() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1A52494A4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #20.0 }

  *v10 = _Q0;
  sub_1A3E42C88(0);
  *&v10[*(v19 + 36)] = 256;
  v20 = *&v31[18];
  *(a2 + 18) = *&v31[2];
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 257;
  *(a2 + 34) = v20;
  *(a2 + 50) = *&v31[34];
  *(a2 + 64) = *&v31[48];
  LOBYTE(v8) = sub_1A524A074();
  sub_1A5247BC4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1A4323920(0);
  v30 = a2 + *(v29 + 36);
  *v30 = v8;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
}

void sub_1A432388C(uint64_t a1)
{
  if (!qword_1EB1381D0)
  {
    sub_1A43263CC(255, &qword_1EB1282F0, &qword_1EB128580, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1381D0);
    }
  }
}

void sub_1A432395C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A43239C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A4323A30(a1, a2 + *(v4 + 44));
}

uint64_t sub_1A4323A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v37[-v13];
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3, v12);
  v15 = sub_1A524B5C4();
  (*(v4 + 8))(v6, v3);
  sub_1A524BC74();
  sub_1A52481F4();
  v39 = 1;
  *&v38[6] = v40;
  *&v38[22] = v41;
  *&v38[38] = v42;
  sub_1A432388C(0);
  v17 = &v14[*(v16 + 36)];
  v18 = *(sub_1A5248A14() + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1A52494A4();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #20.0 }

  *v17 = _Q0;
  sub_1A3E42C88(0);
  *&v17[*(v26 + 36)] = 256;
  v27 = *&v38[16];
  *(v14 + 18) = *v38;
  *v14 = v15;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  *(v14 + 34) = v27;
  *(v14 + 50) = *&v38[32];
  *(v14 + 8) = *&v38[46];
  LOBYTE(v15) = sub_1A524A074();
  sub_1A5247BC4();
  v28 = &v14[*(v8 + 44)];
  *v28 = v15;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_1A4328120(v14, v10, sub_1A4323920);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A4327B34(0);
  v34 = v33;
  sub_1A4328120(v10, a2 + *(v33 + 48), sub_1A4323920);
  v35 = a2 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1A4327C20(v14, sub_1A4323920);
  return sub_1A4327C20(v10, sub_1A4323920);
}

uint64_t sub_1A4323D60@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5242264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0x6F746F6870;
  v6[1] = 0xE500000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x1E69C1D38], v2, v4);
  v7 = sub_1A5242B94();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_1A4323E70@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1A5243834();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243844();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[0] = sub_1A5243374();
  MEMORY[0x1EEE9AC00](v12[0]);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 32);
  swift_unknownObjectRetain_n();
  sub_1A5243384();
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2680], v2);
  swift_unknownObjectRetain();
  v10 = v9;
  sub_1A5243814();
  sub_1A4327924(v7, v8);
  sub_1A4327A6C(0);
  sub_1A4326434(&qword_1EB138418, MEMORY[0x1E69C2440], MEMORY[0x1E69C2438]);
  sub_1A4326434(&qword_1EB138420, sub_1A4327A6C, MEMORY[0x1E69817F8]);
  return sub_1A5241E04();
}

uint64_t sub_1A4324134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42[-v13];
  v15 = a1;
  sub_1A524B524();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v16 = sub_1A524B5C4();
  (*(v5 + 8))(v7, v4);
  sub_1A524BC74();
  sub_1A52481F4();
  v44 = 1;
  *&v43[6] = v45;
  *&v43[22] = v46;
  *&v43[38] = v47;
  sub_1A432388C(0);
  v18 = &v14[*(v17 + 36)];
  v19 = *(sub_1A5248A14() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A52494A4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v18 = _Q0;
  sub_1A3E42C88(0);
  *&v18[*(v27 + 36)] = 256;
  v28 = *&v43[16];
  *(v14 + 18) = *v43;
  *v14 = v16;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  *(v14 + 34) = v28;
  *(v14 + 50) = *&v43[32];
  *(v14 + 8) = *&v43[46];
  LOBYTE(v16) = sub_1A524A074();
  sub_1A5247BC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = &v14[*(v9 + 44)];
  *v37 = v16;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_1A4328120(v14, v11, sub_1A4323920);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A4327B34(0);
  v39 = v38;
  sub_1A4328120(v11, a2 + *(v38 + 48), sub_1A4323920);
  v40 = a2 + *(v39 + 64);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1A4327C20(v14, sub_1A4323920);
  return sub_1A4327C20(v11, sub_1A4323920);
}

uint64_t sub_1A4324498@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DBD0];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A4324810(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1A4328188(v2, &v17 - v11, &qword_1EB128A70, v8, v9, sub_1A4324810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5247E04();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A43246D8@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A4324134(v4, a2 + *(v5 + 44));
}

uint64_t SharedCollectionPreviewsSection.viewModel.getter()
{
  type metadata accessor for SharedCollectionPreviewsSection(0);
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t type metadata accessor for SharedCollectionPreviewsSection(uint64_t a1)
{
  result = qword_1EB1B7AA0;
  if (!qword_1EB1B7AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4324810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1A4324874@<X0>(void *a2@<X8>)
{
  type metadata accessor for SharedCollectionPreviewsSection(0);
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a2 = v4;
  return result;
}

uint64_t sub_1A432490C(void **a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for SharedCollectionPreviewsSection(0);
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v3 = v2;
  return sub_1A524B6B4();
}

uint64_t SharedCollectionPreviewsSection.viewModel.setter(uint64_t a1)
{
  type metadata accessor for SharedCollectionPreviewsSection(0);
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedCollectionPreviewsSection.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SharedCollectionPreviewsSection(0) + 20);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedCollectionPreviewsSection.$viewModel.getter()
{
  type metadata accessor for SharedCollectionPreviewsSection(0);
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void SharedCollectionPreviewsSection.body.getter(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = type metadata accessor for SharedCollectionPreviewsSection(0);
  v3 = v2 - 8;
  v16 = *(v2 - 8);
  v15[4] = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v15[3] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  v15[0] = sub_1A5249314();
  v18 = 1;
  v5 = (v1 + *(v3 + 28));
  v7 = v5[1];
  v19 = *v5;
  v6 = v19;
  v20 = v7;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v8 = sub_1A524B6A4();
  v9 = v21;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x4C0))(v8);

  v19 = v6;
  v20 = v7;
  v12 = sub_1A524B6A4();
  v13 = v21;
  v14 = (*((*v10 & *v21) + 0x338))(v12);

  PXLocalizedAssetCountForUsage(v11, v14, 0, 0);
}

uint64_t sub_1A43250E0(uint64_t a1)
{
  sub_1A432647C(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4326288(0, &qword_1EB138438, sub_1A4326158, sub_1A432647C, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  sub_1A4326158(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for SharedCollectionPreviewsSection(0) + 20));
  v13 = *v11;
  v12 = v11[1];
  v25 = v13;
  v26 = v12;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v14 = sub_1A524B6A4();
  v15 = v24;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x4C0))(v14);

  if (v16 <= 0)
  {
    *v10 = sub_1A5249314();
    *(v10 + 1) = 0;
    v10[16] = 1;
    sub_1A4327BBC(0, &qword_1EB138440, sub_1A43261EC);
    sub_1A432551C(a1, &v10[*(v21 + 44)]);
    sub_1A4328120(v10, v7, sub_1A4326158);
    swift_storeEnumTagMultiPayload();
    sub_1A4326434(&qword_1EB13E360, sub_1A4326158, MEMORY[0x1E69817F8]);
    sub_1A4326434(&unk_1EB138310, sub_1A432647C, MEMORY[0x1E6981880]);
    sub_1A5249744();
    v19 = sub_1A4326158;
    v20 = v10;
  }

  else
  {
    *v4 = sub_1A524BC74();
    v4[1] = v17;
    sub_1A4327C80(0);
    sub_1A4325980(a1, v4 + *(v18 + 44));
    sub_1A4328120(v4, v7, sub_1A432647C);
    swift_storeEnumTagMultiPayload();
    sub_1A4326434(&qword_1EB13E360, sub_1A4326158, MEMORY[0x1E69817F8]);
    sub_1A4326434(&unk_1EB138310, sub_1A432647C, MEMORY[0x1E6981880]);
    sub_1A5249744();
    v19 = sub_1A432647C;
    v20 = v4;
  }

  return sub_1A4327C20(v20, v19);
}

uint64_t sub_1A432551C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a1;
  v47 = a2;
  v2 = sub_1A5247E04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = sub_1A5242264();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4326240(0, v11);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v45 = sub_1A5249574();
  *v13 = 0x6F746F6870;
  v13[1] = 0xE500000000000000;
  (*(v10 + 104))(v13, *MEMORY[0x1E69C1D38], v9);
  v43 = sub_1A5242B94();
  (*(v10 + 8))(v13, v9);
  sub_1A524BC74();
  sub_1A52481F4();
  v48 = 1;
  sub_1A4324498(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB8], v2);
  LOBYTE(v9) = sub_1A5247DF4();
  v23 = *(v3 + 8);
  v23(v5, v2);
  v23(v8, v2);
  if (v9)
  {
    v24 = sub_1A524B2E4();
  }

  else
  {
    v24 = sub_1A524B2A4();
  }

  v25 = v24;
  v26 = sub_1A524A064();
  v27 = &v19[*(v44 + 36)];
  v28 = *(sub_1A5248A14() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1A52494A4();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #20.0 }

  *v27 = _Q0;
  sub_1A3E42C88(0);
  *&v27[*(v36 + 36)] = 256;
  *v19 = v45;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v19 + 3) = v43;
  v37 = v50;
  *(v19 + 2) = v49;
  *(v19 + 3) = v37;
  *(v19 + 4) = v51;
  *(v19 + 10) = v25;
  v19[88] = v26;
  sub_1A43280B8(v19, v22, sub_1A4326240);
  sub_1A4328120(v22, v16, sub_1A4326240);
  v38 = v47;
  *v47 = 0;
  *(v38 + 8) = 1;
  sub_1A4326220(0);
  v40 = v39;
  sub_1A4328120(v16, v38 + *(v39 + 48), sub_1A4326240);
  v41 = v38 + *(v40 + 64);
  *v41 = 0;
  v41[8] = 1;
  sub_1A4327C20(v22, sub_1A4326240);
  return sub_1A4327C20(v16, sub_1A4326240);
}

unint64_t sub_1A4325980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1A4326568(0);
  v47 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4326288(0, &unk_1EB138450, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F948]);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - v6;
  v7 = type metadata accessor for SharedCollectionPreviewsSection(0);
  v8 = v7 - 8;
  v39 = *(v7 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A4326524(0);
  v44 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = (a1 + *(v8 + 28));
  v16 = *v14;
  v15 = v14[1];
  v49 = *v14;
  v50 = v15;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v17 = sub_1A524B6A4();
  v18 = v48;
  v19 = MEMORY[0x1E69E7D40];
  v20 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x140))(v17);

  if (v20)
  {

    v49 = v16;
    v50 = v15;
    v21 = sub_1A524B6A4();
    v22 = v48;
    v23 = (*((*v19 & *v48) + 0x368))(v21);

    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
      if (v24 >= 3)
      {
        v25 = 3;
      }

      else
      {
        v25 = v24;
      }

      v49 = 0;
      v50 = v25;
      swift_getKeyPath();
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      sub_1A4326768(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      sub_1A4326650(0);
      sub_1A3DE77C8();
      sub_1A4326AB0();
      v27 = v41;
      sub_1A524B9B4();
      v28 = v42;
      v29 = v47;
      (*(v42 + 16))(v45, v27, v47);
      swift_storeEnumTagMultiPayload();
      sub_1A4326A34(&qword_1EB138298, sub_1A4326524, sub_1A43268E0);
      sub_1A4326A34(&qword_1EB1382C0, sub_1A4326568, sub_1A4326AB0);
      sub_1A5249744();
      return (*(v28 + 8))(v27, v29);
    }

    v24 = sub_1A524E2B4();
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_17;
  }

  v23 = v13;
  v42 = v12;
  v13 = v40;
  v49 = v16;
  v50 = v15;
  v31 = sub_1A524B6A4();
  v32 = v48;
  v12 = (*((*v19 & *v48) + 0x1D0))(v31);

  if (v12 >> 62)
  {
LABEL_17:
    result = sub_1A524E2B4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v33 = v39;
  if (result >= 3)
  {
    v34 = 3;
  }

  else
  {
    v34 = result;
  }

  v49 = 0;
  v50 = v34;
  swift_getKeyPath();
  sub_1A4328120(v23, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionPreviewsSection);
  v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v12;
  sub_1A43280B8(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for SharedCollectionPreviewsSection);
  *(v36 + ((v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  sub_1A4326768(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1A4326544(0);
  sub_1A3DE77C8();
  sub_1A43268E0();
  v37 = v42;
  sub_1A524B9B4();
  v38 = v44;
  (*(v13 + 16))(v45, v37, v44);
  swift_storeEnumTagMultiPayload();
  sub_1A4326A34(&qword_1EB138298, sub_1A4326524, sub_1A43268E0);
  sub_1A4326A34(&qword_1EB1382C0, sub_1A4326568, sub_1A4326AB0);
  sub_1A5249744();
  return (*(v13 + 8))(v37, v38);
}

void sub_1A4326158(uint64_t a1)
{
  if (!qword_1EB1381E8)
  {
    sub_1A43261EC(255);
    sub_1A4326434(&qword_1EB138228, sub_1A43261EC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1381E8);
    }
  }
}

void sub_1A4326288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A432630C(uint64_t a1)
{
  if (!qword_1EB138208)
  {
    sub_1A43263CC(255, &qword_1EB138210, &unk_1EB138218, MEMORY[0x1E6981710], MEMORY[0x1E6981860]);
    sub_1A4326768(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138208);
    }
  }
}

void sub_1A43263CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4326768(255, a3, MEMORY[0x1E6981748], a4, a5);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4326434(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A432647C(uint64_t a1)
{
  if (!qword_1EB138230)
  {
    sub_1A4326288(255, &qword_1EB138238, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F960]);
    sub_1A43267BC();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138230);
    }
  }
}

void sub_1A4326588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4326768(255, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    a3(255);
    sub_1A3DE77C8();
    v5 = sub_1A524B9D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4326674(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A43266E8(255, a3, a4, a5);
    sub_1A41EF370(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A43266E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4326768(255, a3, a4, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4326768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A43267BC()
{
  result = qword_1EB138290;
  if (!qword_1EB138290)
  {
    sub_1A4326288(255, &qword_1EB138238, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F960]);
    sub_1A4326A34(&qword_1EB138298, sub_1A4326524, sub_1A43268E0);
    sub_1A4326A34(&qword_1EB1382C0, sub_1A4326568, sub_1A4326AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138290);
  }

  return result;
}

unint64_t sub_1A4326914()
{
  result = qword_1EB1382A8;
  if (!qword_1EB1382A8)
  {
    sub_1A43266E8(255, &qword_1EB138258, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview);
    sub_1A4326C64(&unk_1EB1382B0, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview, sub_1A43269E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1382A8);
  }

  return result;
}

unint64_t sub_1A43269E0()
{
  result = qword_1EB1B7A08;
  if (!qword_1EB1B7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B7A08);
  }

  return result;
}

uint64_t sub_1A4326A34(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A4326AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A4326434(&unk_1EB127C50, sub_1A41EF370, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4326B98()
{
  result = qword_1EB1382D0;
  if (!qword_1EB1382D0)
  {
    sub_1A43266E8(255, &qword_1EB138280, &qword_1EB138288, &type metadata for SharedCollectionSourcePreview);
    sub_1A4326C64(&qword_1EB1382D8, &qword_1EB138288, &type metadata for SharedCollectionSourcePreview, sub_1A4326D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1382D0);
  }

  return result;
}

uint64_t sub_1A4326C64(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4326768(255, a2, a3, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4326D00()
{
  result = qword_1EB1B7A10[0];
  if (!qword_1EB1B7A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B7A10);
  }

  return result;
}

unint64_t sub_1A4326D54()
{
  result = qword_1EB138300;
  if (!qword_1EB138300)
  {
    sub_1A4326288(255, &qword_1EB1381E0, sub_1A4326158, sub_1A432647C, MEMORY[0x1E697F960]);
    sub_1A4326434(&qword_1EB13E360, sub_1A4326158, MEMORY[0x1E69817F8]);
    sub_1A4326434(&unk_1EB138310, sub_1A432647C, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138300);
  }

  return result;
}

void sub_1A4326EC0(uint64_t a1)
{
  if (!qword_1EB138328)
  {
    sub_1A4326288(255, &qword_1EB1381E0, sub_1A4326158, sub_1A432647C, MEMORY[0x1E697F960]);
    sub_1A3FF7634(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138328);
    }
  }
}

void sub_1A4326FBC()
{
  type metadata accessor for SharedCollectionPreviewsSection(0);
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4C8))(v0);
}

id sub_1A43270C0@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A4324810(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for SharedCollectionPreviewsSection(0);
  v4 = (a2 + v3[5]);
  type metadata accessor for SharedCollectionActionViewModel(0);
  sub_1A524B694();
  *v4 = v11;
  v4[1] = v12;
  v5 = v3[6];
  v6 = [objc_allocWithZone(MEMORY[0x1E6978718]) init];
  v7 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *(a2 + v5) = v7;
  v8 = v3[7];
  v9 = [objc_allocWithZone(off_1E7721750) init];
  [v9 setNetworkAccessAllowed_];
  [v9 setAllowSecondaryDegradedImage_];
  result = [v9 setDeliveryMode_];
  *(a2 + v8) = v9;
  return result;
}

void sub_1A4327274(uint64_t a1)
{
  sub_1A4324810(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A4324810(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A4327388();
      if (v3 <= 0x3F)
      {
        sub_1A43273EC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A4327388()
{
  result = qword_1EB126A80;
  if (!qword_1EB126A80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126A80);
  }

  return result;
}

unint64_t sub_1A43273EC()
{
  result = qword_1EB13E380;
  if (!qword_1EB13E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB13E380);
  }

  return result;
}

unint64_t sub_1A4327438()
{
  result = qword_1EB1383B0;
  if (!qword_1EB1383B0)
  {
    sub_1A4323920(255);
    sub_1A43274B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383B0);
  }

  return result;
}

unint64_t sub_1A43274B8()
{
  result = qword_1EB1383B8;
  if (!qword_1EB1383B8)
  {
    sub_1A432388C(255);
    sub_1A3E44BC8();
    sub_1A4326434(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383B8);
  }

  return result;
}

unint64_t sub_1A4327568()
{
  result = qword_1EB1383C8;
  if (!qword_1EB1383C8)
  {
    sub_1A432395C(255, &qword_1EB138348, sub_1A4326F74, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A4327620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383C8);
  }

  return result;
}

unint64_t sub_1A4327620()
{
  result = qword_1EB1383D0;
  if (!qword_1EB1383D0)
  {
    sub_1A4326F74(255);
    sub_1A43276D0();
    sub_1A4326434(&qword_1EB1383F0, sub_1A3F332F4, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383D0);
  }

  return result;
}

unint64_t sub_1A43276D0()
{
  result = qword_1EB1383D8;
  if (!qword_1EB1383D8)
  {
    sub_1A4326E78(255);
    sub_1A4327780();
    sub_1A4326434(&qword_1EB1302A0, sub_1A3F33AEC, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383D8);
  }

  return result;
}

unint64_t sub_1A4327780()
{
  result = qword_1EB1383E0;
  if (!qword_1EB1383E0)
  {
    sub_1A4326EC0(255);
    sub_1A4326D54();
    sub_1A4326434(&qword_1EB13AFA0, sub_1A3FF7634, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383E0);
  }

  return result;
}

uint64_t sub_1A432784C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A4327894(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_1A4327924(uint64_t a1, char a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = sub_1A524D254();
  v10 = sub_1A524A014();
  sub_1A5246DF4(v9, &dword_1A3C1C000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A3DD15BC(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v11[1];
}

void sub_1A4327A6C(uint64_t a1)
{
  if (!qword_1EB1383F8)
  {
    sub_1A4327B00(255);
    sub_1A4326434(&qword_1EB138410, sub_1A4327B00, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1383F8);
    }
  }
}

void sub_1A4327B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A4327BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4327C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4327C80(uint64_t a1)
{
  if (!qword_1EB138448)
  {
    sub_1A4326288(255, &qword_1EB138238, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F960]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138448);
    }
  }
}

uint64_t sub_1A4327D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharedCollectionPreviewsSection(0);
  v6 = result;
  v7 = (*(*(result - 8) + 80) + 24) & ~*(*(result - 8) + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(*(result - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A59097F0](*a1);
  }

  else
  {
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = *(v8 + 8 * v10 + 32);
  }

  v12 = v11;
  v13 = *(v6 + 28);
  v14 = *(v2 + v7 + *(v6 + 24));
  v15 = *(v2 + v7 + v13);
  result = swift_getKeyPath();
  v16 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (!v17)
  {
    v19 = result;
    v20 = v10 * -0.1 + 1.0;
    v21 = v18;
    v22 = v10 * 10.0 * -2.0;
    swift_unknownObjectRetain();
    v23 = v15;
    sub_1A524BE94();
    v28[88] = 0;
    *&v29 = v19;
    BYTE8(v29) = 0;
    *&v30 = v12;
    *(&v30 + 1) = v14;
    v31 = v23;
    *&v32 = v22;
    *(&v32 + 1) = v20;
    *&v33 = v20;
    *(&v33 + 1) = v24;
    v34 = v25;
    v46 = v29;
    v47 = v30;
    v51 = v25;
    v49 = v32;
    v50 = v33;
    v48 = v23;
    v35 = v19;
    v36 = 0;
    v37 = v12;
    v38 = v14;
    v39 = v23;
    v40 = 0;
    v41 = v22;
    v42 = v20;
    v43 = v20;
    v44 = v24;
    v45 = v25;
    sub_1A4328188(&v29, v28, &qword_1EB138258, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview, sub_1A43266E8);
    result = sub_1A4328044(&v35);
    v26 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v26;
    *(a2 + 64) = v50;
    *(a2 + 80) = v51;
    v27 = v47;
    *a2 = v46;
    *(a2 + 16) = v27;
    *(a2 + 88) = v21;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1A4327F6C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1A59097F0](*a1);
  }

  else
  {
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v7 = *(v4 + 8 * v6 + 32);
  }

  v8 = v7;
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (!v10)
  {
    v12 = v6 * -0.1 + 1.0;
    v13 = v11;
    sub_1A524BE94();
    *a2 = v8;
    *(a2 + 8) = 0;
    *(a2 + 16) = v6 * 10.0 * -2.0;
    *(a2 + 24) = v12;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;
    *(a2 + 56) = v13;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1A4328044(uint64_t a1)
{
  sub_1A43266E8(0, &qword_1EB138258, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A43280B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4328120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4328188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A43281FC(uint64_t a1)
{
  if (!qword_1EB138460)
  {
    sub_1A432395C(255, &unk_1EB13E3D0, sub_1A43282F0, MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    sub_1A5243374();
    sub_1A432832C();
    sub_1A4326434(&qword_1EB138418, MEMORY[0x1E69C2440], MEMORY[0x1E69C2438]);
    v1 = sub_1A5241E14();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138460);
    }
  }
}

unint64_t sub_1A432832C()
{
  result = qword_1EB13E3E0;
  if (!qword_1EB13E3E0)
  {
    sub_1A432395C(255, &unk_1EB13E3D0, sub_1A43282F0, MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    sub_1A43283E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E3E0);
  }

  return result;
}

unint64_t sub_1A43283E4()
{
  result = qword_1EB138480;
  if (!qword_1EB138480)
  {
    sub_1A43282F0(255);
    sub_1A4326434(&qword_1EB138420, sub_1A4327A6C, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138480);
  }

  return result;
}

unint64_t sub_1A4328494(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A4328534(Strong);
  v4 = v3;
  if (sub_1A3DEFF08(v3, v5))
  {
    sub_1A4329AB0(a1, v4);
  }

  swift_unknownObjectRelease();
  return v4;
}

void sub_1A4328534(void *a1)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_1A5246F24();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = v72 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v72 - v8;
  v10 = sub_1A524BFF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  *v13 = sub_1A524D474();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = sub_1A524C024();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v97[0] = MEMORY[0x1E69E7CC0];
  if ([v81 respondsToSelector_])
  {
    v95 = 0;
    v96 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
    v75 = objc_opt_self();
    [v75 timeIntervalSinceReferenceDate];
    v15 = swift_allocObject();
    v15[2] = v2;
    v15[3] = v97;
    v15[4] = &v96;
    v15[5] = &v86;
    v15[6] = &v95;
    v15[7] = &v85;
    v15[8] = &v88;
    v15[9] = &v84;
    v15[10] = &v87;
    v15[11] = &v83;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1A432C160;
    *(v16 + 24) = v15;
    v93 = sub_1A432C19C;
    v94 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1A432C3A8;
    v92 = &block_descriptor_30_3;
    v17 = _Block_copy(&aBlock);

    [v81 appIntentsEnumerateAssetCollections_];
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      v18 = v96;
      if (v96 < 1)
      {
        v74 = 0x6D75626C61206F6ELL;
      }

      else
      {
        v19 = v86;
        if (v86 < 1)
        {
          v82 = v96;
          aBlock = sub_1A524EA44();
          v90 = v24;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v22 = 0x736D75626C61;
          v23 = 0xE600000000000000;
        }

        else
        {
          aBlock = 0;
          v90 = 0xE000000000000000;
          sub_1A524E404();

          v82 = v18;
          aBlock = sub_1A524EA44();
          v90 = v20;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x736D75626C61, 0xE600000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v82 = v19;
          v21 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v21);

          v22 = 0x657463656C657320;
          v23 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v22, v23);
        v74 = aBlock;
      }

      v25 = v95;
      if (v95 < 1)
      {
        v31 = 0x80000001A53D25E0;
        v73 = 0xD000000000000010;
      }

      else
      {
        v26 = v85;
        if (v85 <= 0)
        {
          v82 = v95;
          aBlock = sub_1A524EA44();
          v90 = v32;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v29 = 0x6120646572616873;
          v30 = 0xED0000736D75626CLL;
        }

        else
        {
          aBlock = 0;
          v90 = 0xE000000000000000;
          sub_1A524E404();

          v82 = v25;
          aBlock = sub_1A524EA44();
          v90 = v27;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x6120646572616873, 0xED0000736D75626CLL);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v82 = v26;
          v28 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v28);

          v29 = 0x657463656C657320;
          v30 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v29, v30);
        v73 = aBlock;
        v31 = v90;
      }

      v76 = v31;
      v33 = v88;
      if (v88 < 1)
      {
        v39 = 0x726F6D656D206F6ELL;
      }

      else
      {
        v34 = v84;
        if (v84 < 1)
        {
          v82 = v88;
          aBlock = sub_1A524EA44();
          v90 = v40;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v37 = 0x736569726F6D656DLL;
          v38 = 0xE800000000000000;
        }

        else
        {
          aBlock = 0;
          v90 = 0xE000000000000000;
          sub_1A524E404();

          v82 = v33;
          aBlock = sub_1A524EA44();
          v90 = v35;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x736569726F6D656DLL, 0xE800000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v82 = v34;
          v36 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v36);

          v37 = 0x657463656C657320;
          v38 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v37, v38);
        v39 = aBlock;
      }

      v72[4] = v39;
      v41 = v87;
      if (v87 < 1)
      {
        v47 = 0x726568746F206F6ELL;
      }

      else
      {
        v42 = v83;
        if (v83 < 1)
        {
          v82 = v87;
          aBlock = sub_1A524EA44();
          v90 = v48;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v45 = 0x726568746FLL;
          v46 = 0xE500000000000000;
        }

        else
        {
          aBlock = 0;
          v90 = 0xE000000000000000;
          sub_1A524E404();

          v82 = v41;
          aBlock = sub_1A524EA44();
          v90 = v43;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x726568746FLL, 0xE500000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v82 = v42;
          v44 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v44);

          v45 = 0x657463656C657320;
          v46 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v45, v46);
        v47 = aBlock;
      }

      v72[3] = v47;
      v49 = sub_1A3CB648C();
      (*(v79 + 16))(v9, v49, v80);
      swift_unknownObjectRetain();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_51;
  }

  if ([v81 respondsToSelector_])
  {
    v95 = 0;
    v96 = 0;
    [objc_opt_self() timeIntervalSinceReferenceDate];
    v50 = swift_allocObject();
    v50[2] = v97;
    v50[3] = &v96;
    v50[4] = &v95;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1A432C110;
    *(v51 + 24) = v50;
    v76 = v50;
    v93 = sub_1A432C3A4;
    v94 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v90 = 1107296256;
    v91 = sub_1A432C3A8;
    v92 = &block_descriptor_21_6;
    v52 = _Block_copy(&aBlock);

    [v81 appIntentsEnumerateAssets_];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if ((v52 & 1) == 0)
    {
      v53 = v96;
      if (v96 >= 1)
      {
        v54 = v95;
        if (v95 < 1)
        {
          v88 = v96;
          aBlock = sub_1A524EA44();
          v90 = v59;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v57 = 0x737465737361;
          v58 = 0xE600000000000000;
        }

        else
        {
          aBlock = 0;
          v90 = 0xE000000000000000;
          sub_1A524E404();

          v88 = v53;
          aBlock = sub_1A524EA44();
          v90 = v55;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x737465737361, 0xE600000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v88 = v54;
          v56 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v56);

          v57 = 0x657463656C657320;
          v58 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v57, v58);
      }

      v60 = sub_1A3CB648C();
      (*(v79 + 16))(v78, v60, v80);
      swift_unknownObjectRetain();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_52;
  }

  if (![v81 respondsToSelector_])
  {
    sub_1A3C33378(0, 0);
    sub_1A3C33378(0, 0);
    sub_1A3C33378(0, 0);
    return;
  }

  v78 = 0;
  v95 = 0;
  v96 = 0;
  [objc_opt_self() timeIntervalSinceReferenceDate];
  v61 = swift_allocObject();
  v61[2] = v97;
  v61[3] = &v96;
  v61[4] = &v95;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1A432C0C0;
  *(v62 + 24) = v61;
  v93 = sub_1A432C3A4;
  v94 = v62;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = sub_1A432C3A8;
  v92 = &block_descriptor_160;
  v63 = _Block_copy(&aBlock);

  [v81 appIntentsEnumeratePersons_];
  _Block_release(v63);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if ((v63 & 1) == 0)
  {
    v64 = v96;
    if (v96 >= 1)
    {
      v65 = v95;
      if (v95 < 1)
      {
        v88 = v96;
        aBlock = sub_1A524EA44();
        v90 = v70;
        MEMORY[0x1A5907B60](32, 0xE100000000000000);
        v68 = 0x736E6F73726570;
        v69 = 0xE700000000000000;
      }

      else
      {
        aBlock = 0;
        v90 = 0xE000000000000000;
        sub_1A524E404();

        v88 = v64;
        aBlock = sub_1A524EA44();
        v90 = v66;
        MEMORY[0x1A5907B60](32, 0xE100000000000000);
        MEMORY[0x1A5907B60](0x736E6F73726570, 0xE700000000000000);
        MEMORY[0x1A5907B60](10272, 0xE200000000000000);
        v88 = v65;
        v67 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v67);

        v68 = 0x657463656C657320;
        v69 = 0xEA00000000002964;
      }

      MEMORY[0x1A5907B60](v68, v69);
    }

    v71 = sub_1A3CB648C();
    (*(v79 + 16))(v77, v71, v80);
    swift_unknownObjectRetain();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_1A4329AB0(void *a1, unint64_t a2)
{
  v63 = a2;
  v3 = sub_1A5240E64();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v56 - v6;
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v65 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v56 - v12;
  v14 = sub_1A3CB648C();
  v15 = v8;
  v58 = *(v9 + 16);
  v58(v13, v14, v8);
  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v9;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A3C1C000, v16, v17, "⎡ Generating view annotations debug snapshot...", v19, 2u);
    v20 = v19;
    v9 = v18;
    MEMORY[0x1A590EEC0](v20, -1, -1);
  }

  v21 = *(v9 + 8);
  v22 = v15;
  v60 = v9 + 8;
  v21(v13, v15);
  type metadata accessor for PXGraphicsImageRenderer();
  [a1 bounds];
  v25 = sub_1A4A048F0(v23, v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v63;
  v26 = v64;
  v56[-4] = a1;
  v56[-3] = v27;
  v56[-2] = v26;
  sub_1A4A04928(sub_1A432B9BC, &v56[-6]);
  v29 = v28;

  v30 = DCIM_newPNGRepresentationWithPLImage();
  if (v30)
  {
    v31 = v30;
    v64 = v29;
    v32 = sub_1A5240EA4();
    v34 = v33;

    v35 = NSTemporaryDirectory();
    v36 = sub_1A524C674();
    v38 = v37;

    strcpy(v68, "snapshot.png");
    BYTE5(v68[1]) = 0;
    HIWORD(v68[1]) = -5120;
    v66 = v36;
    v67 = v38;
    v66 = sub_1A524C8D4();
    v67 = v39;
    sub_1A524C7D4();
    sub_1A5240D14();

    v57 = v32;
    v63 = v34;
    sub_1A5240EB4();
    v40 = v65;
    v58(v65, v14, v22);
    v42 = v61;
    v41 = v62;
    v43 = v59;
    (*(v61 + 16))(v59, v7, v62);
    v44 = sub_1A5246F04();
    v45 = sub_1A524D264();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v43;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v58 = v22;
      v68[0] = v48;
      *v47 = 136315138;
      sub_1A3F6D3EC();
      v49 = sub_1A524EA44();
      v56[0] = v7;
      v56[1] = v21;
      v50 = v49;
      v51 = v41;
      v53 = v52;
      (*(v42 + 8))(v46, v51);
      sub_1A3C2EF94(v50, v53, v68);
    }

    sub_1A3C59280(v57, v63);

    v54 = *(v42 + 8);
    v54(v43, v41);
    v21(v40, v22);
    return (v54)(v7, v41);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A432A074(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, void *a8, double a9, double a10, double a11, double a12, uint64_t *a13, void *a14, uint64_t *a15)
{
  v53 = a8;
  v54 = a7;
  v51 = a4;
  v52 = a6;
  v17 = a2;
  v23 = sub_1A523FC74();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v47 - v28;
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v47 - v34;
  v36 = sub_1A432A478(&v47 - v34, a1, v17, a9, a10, a11, a12);
  sub_1A432C224(v35, v32);
  if ((*(v24 + 48))(v32, 1, v23) == 1)
  {
    sub_1A432C2A4(v35);
    result = sub_1A432C2A4(v32);
  }

  else
  {
    v49 = a5;
    v47 = *(v24 + 32);
    v47(v29, v32, v23);
    (*(v24 + 16))(v26, v29, v23);
    v38 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v38;
    v50 = a3;
    v48 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = sub_1A432B5CC(0, v38[2] + 1, 1, v38, v40);
      *v50 = v38;
    }

    v42 = v38[2];
    v41 = v38[3];
    if (v42 >= v41 >> 1)
    {
      v46 = sub_1A432B5CC((v41 > 1), v42 + 1, 1, v38, v40);
      *v50 = v46;
    }

    (*(v24 + 8))(v29, v23);
    sub_1A432C2A4(v35);
    v43 = *v50;
    *(v43 + 16) = v42 + 1;
    result = (v47)(v43 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v42, v26, v23);
    a5 = v49;
    LOBYTE(v17) = v48;
  }

  v44 = v54;
  LODWORD(v45) = v36;
  if (v36 <= 1u)
  {
    if (v36)
    {
      goto LABEL_21;
    }

    if (__OFADD__(*v51, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    ++*v51;
    if ((v17 & 1) == 0)
    {
      return result;
    }

    v45 = *a5 + 1;
    if (!__OFADD__(*a5, 1))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v45 == 2)
  {
    if (!__OFADD__(*v53, 1))
    {
      ++*v53;
      if ((v17 & 1) == 0)
      {
        return result;
      }

      a5 = a13;
      v45 = *a13 + 1;
      if (!__OFADD__(*a13, 1))
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_21:
      if (!__OFADD__(*v52, 1))
      {
        ++*v52;
        if ((v17 & 1) == 0)
        {
          return result;
        }

        v45 = *v44 + 1;
        if (!__OFADD__(*v44, 1))
        {
          a5 = v44;
          goto LABEL_28;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (__OFADD__(*a14, 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  ++*a14;
  if ((v17 & 1) == 0)
  {
    return result;
  }

  a5 = a15;
  v45 = *a15 + 1;
  if (__OFADD__(*a15, 1))
  {
LABEL_35:
    __break(1u);
    return result;
  }

LABEL_28:
  *a5 = v45;
  return result;
}

uint64_t sub_1A432A478(uint64_t a1, void *a2, int a3, double a4, double a5, double a6, double a7)
{
  v46 = a3;
  v42 = sub_1A523FC44();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1A5240084();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v40 - v23;
  v25 = sub_1A523FC74();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v47 = a1;
  v44 = v27;
  v45 = v25;
  v43 = v26 + 56;
  (v27)(a1, 1, 1);
  if ([a2 px_isRegularAlbum])
  {
    v48 = sub_1A46722CC(a2);
    v49 = v28;
    sub_1A3DB3554();
    sub_1A5240074();
    sub_1A523FC24();
    (*(v16 + 16))(v18, v21, v15);
    v29 = v42;
    (*(v9 + 16))(v11, v14, v42);
    sub_1A523FC04();
    (*(v9 + 8))(v14, v29);
    (*(v16 + 8))(v21, v15);
    sub_1A432C2A4(v47);
    v30 = 0;
  }

  else
  {
    v41 = v24;
    v31 = v11;
    if ([a2 px_isSharedAlbum])
    {
      v48 = sub_1A46722CC(a2);
      v49 = v32;
      sub_1A3DB3554();
      v33 = v21;
      sub_1A5240074();
      sub_1A523FC24();
      (*(v16 + 16))(v18, v21, v15);
      v34 = v42;
      (*(v9 + 16))(v11, v14, v42);
      v24 = v41;
      sub_1A523FC04();
      (*(v9 + 8))(v14, v34);
      (*(v16 + 8))(v33, v15);
      sub_1A432C2A4(v47);
      v30 = 1;
    }

    else
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (!v35)
      {
        return 3;
      }

      v36 = v35;
      v40 = a2;
      v48 = sub_1A46722CC(v36);
      v49 = v37;
      sub_1A4105350();
      sub_1A5240074();
      sub_1A523FC24();
      (*(v16 + 16))(v18, v21, v15);
      v38 = v42;
      (*(v9 + 16))(v31, v14, v42);
      v24 = v41;
      sub_1A523FC04();

      (*(v9 + 8))(v14, v38);
      (*(v16 + 8))(v21, v15);
      sub_1A432C2A4(v47);
      v30 = 2;
    }
  }

  v44(v24, 0, 1, v45);
  sub_1A432C31C(v24, v47);
  return v30;
}

uint64_t sub_1A432AA1C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t (*a6)(uint64_t, double), uint64_t (*a7)(void), uint64_t a8, double a9, double a10, double a11, double a12)
{
  v52 = a8;
  v49 = a1;
  v50 = a6;
  v46 = a5;
  v54 = a3;
  v55 = a4;
  v13 = a2;
  v53 = sub_1A523FC44();
  v14 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;
  v19 = sub_1A5240084();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v48 = sub_1A523FC74();
  v26 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v46 - v30;
  v56 = v50(v49, v29);
  v57 = v32;
  a7();
  sub_1A5240074();
  LODWORD(v52) = v13;
  sub_1A523FC24();
  v33 = v19;
  (*(v20 + 16))(v22, v25, v19);
  v34 = v53;
  (*(v14 + 16))(v51, v18, v53);
  sub_1A523FC04();
  (*(v14 + 8))(v18, v34);
  v36 = v47;
  v35 = v48;
  v37 = v25;
  v38 = v54;
  (*(v20 + 8))(v37, v33);
  (*(v26 + 16))(v36, v31, v35);
  v39 = *v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v38 = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_1A432B5CC(0, v39[2] + 1, 1, v39, v41);
    *v38 = v39;
  }

  v43 = v39[2];
  v42 = v39[3];
  if (v43 >= v42 >> 1)
  {
    *v38 = sub_1A432B5CC((v42 > 1), v43 + 1, 1, v39, v41);
  }

  (*(v26 + 8))(v31, v35);
  v44 = *v38;
  v44[2] = v43 + 1;
  result = (*(v26 + 32))(v44 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v43, v36, v35);
  if (__OFADD__(*v55, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  ++*v55;
  if ((v52 & 1) == 0)
  {
    return result;
  }

  if (__OFADD__(*v46, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  ++*v46;
  return result;
}

void sub_1A432AE6C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = *(a1 + 32);
  v11 = a2;
  v10(a3, a4, a5, a6);
}

void sub_1A432AEF8(CGContext *a1, void *a2, uint64_t a3, double a4)
{
  v57 = a3;
  v6 = sub_1A5240084();
  v56 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5246F24();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A523FC74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  [a2 bounds];
  [a2 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v58 = a1;
  CGContextSetLineWidth(a1, 2.0);
  v21 = *(v57 + 16);
  if (v21)
  {
    v52 = *(v13 + 16);
    v22 = v57 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v23 = *(v13 + 72);
    v50 = (v55 + 16);
    v51 = v23;
    v57 = v13 + 8;
    v48 = (v56 + 8);
    v49 = (v55 + 8);
    *&v20 = 136446210;
    v43 = v20;
    v53 = v15;
    v46 = v11;
    v47 = v6;
    v45 = v9;
    v44 = v19;
    v55 = v22;
    v56 = v21;
    v24 = v52;
    (v52)(v19);
    v25 = sub_1A3CB648C();
    (*v50)(v11, v25, v9);
    v24(v15, v19, v12);
    v26 = sub_1A5246F04();
    v27 = sub_1A524D264();
    if (os_log_type_enabled(v26, v27))
    {
      v29 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      v30 = *&v43;
      *v29 = v43;
      v31 = sub_1A432B9C4(v30);
      v33 = v32;
      v54 = *v57;
      v54(v15, v12);
      sub_1A3C2EF94(v31, v33, v59);
    }

    v54 = *v57;
    v54(v15, v12);
    v34 = (*v49)(v11, v9);
    v35 = sub_1A432BC94(v34);
    CGContextSetStrokeColorWithColor(v58, v35);

    sub_1A523FC64();
    sub_1A523FC14();
    v36 = sub_1A5240054();
    v38 = v37;
    (*v48)(v8, v6);
    v59[0] = v36;
    v59[1] = v38;
    sub_1A432BF3C();
    v39 = sub_1A524C714();
    v41 = v40;
    v59[0] = &type metadata for AssetEntity;
    sub_1A432BFE8();
    if (sub_1A524C714() == v39 && v42 == v41)
    {
    }

    else
    {
      sub_1A524EAB4();
    }

    sub_1A524D1E4();
  }
}

id sub_1A432B598(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXAppIntentsViewAnnotationsBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1A432B5CC(void *result, int64_t a2, char a3, void *a4, double a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A432C1C4(0, &qword_1EB138528, MEMORY[0x1E69E6F90]);
  v11 = *(sub_1A523FC74() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v13) == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v9;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  v16 = *(sub_1A523FC74() - 8);
  if (v6)
  {
    if (v14 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= a4 + v17 + *(v16 + 72) * v9))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void _s12PhotosUICore27PXAppIntentsViewAnnotationsC13clearDelegate3forySo6UIViewCSg_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = sub_1A3CB648C();
    (*(v3 + 16))(v5, v7, v2);
    v8 = v6;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = a1;
      v13 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Unregister delegate for view: %{public}@", v11, 0xCu);
      sub_1A3CB65E4(v12);
      MEMORY[0x1A590EEC0](v12, -1, -1);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_1A524DB14();
  }
}

uint64_t sub_1A432B9C4(double a1)
{
  v1 = sub_1A5240084();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A523FC44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A523FC54();
  v9 = sub_1A523FC34();
  (*(v6 + 8))(v8, v5);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  if (v9)
  {
    v10 = 0x8FB8EF9198E2;
  }

  else
  {
    v10 = 32;
  }

  if (v9)
  {
    v11 = 0xA600000000000000;
  }

  else
  {
    v11 = 0xE100000000000000;
  }

  if (v9)
  {
    v12 = 0x63656C65735B202CLL;
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 0xEC0000005D646574;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x1A5907B60](v10, v11);

  MEMORY[0x1A5907B60](8224, 0xE200000000000000);
  sub_1A523FC14();
  v14 = sub_1A5240064();
  v16 = v15;
  (*(v2 + 8))(v4, v1);
  MEMORY[0x1A5907B60](v14, v16);

  MEMORY[0x1A5907B60](8236, 0xE200000000000000);
  sub_1A523FC64();
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v17, v18, v19, v20];
  v22 = sub_1A524C674();
  v24 = v23;

  MEMORY[0x1A5907B60](v22, v24);

  MEMORY[0x1A5907B60](v12, v13);

  return v26[0];
}

id sub_1A432BC94(double a1)
{
  v1 = sub_1A5240084();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A523FC14();
  v5 = sub_1A5240054();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v21[0] = v5;
  v21[1] = v7;
  sub_1A432BF3C();
  v8 = sub_1A524C714();
  v10 = v9;
  v21[0] = &type metadata for AssetEntity;
  sub_1A432BFE8();
  if (sub_1A524C714() == v8 && v11 == v10)
  {
    v12 = &selRef_blueColor;
LABEL_4:

LABEL_7:

    goto LABEL_8;
  }

  v13 = sub_1A524EAB4();

  if (v13)
  {
    v12 = &selRef_blueColor;
    goto LABEL_7;
  }

  v21[0] = &type metadata for MemoryEntity;
  sub_1A432C030();
  if (sub_1A524C714() == v8 && v17 == v10)
  {
    v12 = &selRef_orangeColor;
    goto LABEL_4;
  }

  v18 = sub_1A524EAB4();

  if (v18)
  {
    v12 = &selRef_orangeColor;
    goto LABEL_7;
  }

  v21[0] = &type metadata for PersonEntity;
  sub_1A432C078();
  v12 = &selRef_greenColor;
  if (sub_1A524C714() == v8 && v19 == v10)
  {
    goto LABEL_4;
  }

  v20 = sub_1A524EAB4();

  if ((v20 & 1) == 0)
  {
    v12 = &selRef_redColor;
  }

LABEL_8:
  v14 = [objc_opt_self() *v12];
  v15 = [v14 CGColor];

  return v15;
}

unint64_t sub_1A432BF3C()
{
  result = qword_1EB1384F0;
  if (!qword_1EB1384F0)
  {
    sub_1A432BF84();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB1384F0);
  }

  return result;
}

unint64_t sub_1A432BF84()
{
  result = qword_1EB1384F8;
  if (!qword_1EB1384F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1384F8);
  }

  return result;
}

unint64_t sub_1A432BFE8()
{
  result = qword_1EB138500;
  if (!qword_1EB138500)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138500);
  }

  return result;
}

unint64_t sub_1A432C030()
{
  result = qword_1EB138508;
  if (!qword_1EB138508)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138508);
  }

  return result;
}

unint64_t sub_1A432C078()
{
  result = qword_1EB138510;
  if (!qword_1EB138510)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138510);
  }

  return result;
}

void sub_1A432C1C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A523FC74();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A432C224(uint64_t a1, uint64_t a2)
{
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A432C2A4(uint64_t a1)
{
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A432C31C(uint64_t a1, uint64_t a2)
{
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A432C3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a10;
  v20[7] = a11;
  result = type metadata accessor for LemonadePickerShelfProviderAdapter(0, v20);
  *(a9 + *(result + 84)) = a2;
  return result;
}

uint64_t sub_1A432C4DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C150(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31[-v6];
  v8 = *(a1 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (shouldUseNewCollectionsLayout()())
  {
    v14 = sub_1A3DC1AF8();
    v16 = v15;
    v17 = sub_1A3C5A374();

    return sub_1A42E7F0C(v14, v16 & 1, v17, a2);
  }

  else
  {
    (*(v8 + 16))(&v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
    v19 = (*(v8 + 80) + 80) & ~*(v8 + 80);
    v20 = swift_allocObject();
    v21 = a1[2];
    *(v20 + 1) = a1[1];
    *(v20 + 2) = v21;
    v22 = a1[4];
    *(v20 + 3) = a1[3];
    *(v20 + 4) = v22;
    (*(v8 + 32))(&v20[v19], &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
    v23 = sub_1A3C47918();
    v25 = v24;
    v26 = sub_1A3C52D68();
    v28 = v27;
    LOBYTE(v19) = v29;
    v30 = sub_1A3C4ED50(v26);
    v31[8] = 1;
    *v13 = sub_1A432C994;
    *(v13 + 1) = v20;
    v13[16] = 2;
    *(v13 + 3) = 0;
    v13[32] = 1;
    *(v13 + 5) = v23;
    *(v13 + 6) = v25;
    *(v13 + 7) = 0;
    *(v13 + 8) = 0;
    *(v13 + 9) = v26;
    *(v13 + 10) = v28;
    v13[88] = v19;
    v13[89] = v30;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v7);
    return sub_1A3C52D78(v13, 0, v7, a2);
  }
}

uint64_t sub_1A432C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a2;
  v17 = sub_1A5242D14();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x1E69C21F0])
  {
    return 15;
  }

  if (v22 == *MEMORY[0x1E69C2210])
  {
    v27[0] = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    v27[4] = a7;
    v27[5] = a8;
    v27[6] = a9;
    v27[7] = a10;
    v24 = type metadata accessor for LemonadePickerShelfProviderAdapter(0, v27);
    if ((*((*MEMORY[0x1E69E7D40] & **(v26 + *(v24 + 84))) + 0x468))())
    {
      return 26;
    }

    else
    {
      return 30;
    }
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    return 30;
  }
}

uint64_t sub_1A432C994(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v13[7] = v10;
  v11 = *(type metadata accessor for LemonadePickerShelfProviderAdapter(0, v13) - 8);
  return sub_1A432C7A4(a1, v1 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1A432CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(a5 + 8) + 96))(a1, a2, a3, *(a5 + 8));
  v10 = *(a2 + 40);
  if (v10)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v10) + 0x600))(v9))
    {
      (*(a4 + 88))(a1, a2, a3, a4);
    }
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246004();
}

uint64_t sub_1A432CC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(*(a2 + 32) + 8);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v5 + 224))(a1, v6, v5, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A432CDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int8 *a3@<X8>)
{
  v39 = a3;
  v40 = a1;
  v5 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 16);
  v37 = *(v8 - 8);
  v9 = v37;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34.i8[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.i64[0] = v8;
  v42 = *(a2 + 72);
  v13 = v42;
  v36 = *(a2 + 24);
  v15 = *(a2 + 56);
  v34 = *(a2 + 40);
  v35 = v15;
  *&v41[48] = v15.i64[1];
  *v41 = vzip1q_s64(v14, v36);
  *&v41[16] = vzip1q_s64(vdupq_laneq_s64(v36, 1), v34);
  *&v41[32] = vextq_s8(v34, v15, 8uLL);
  v16 = type metadata accessor for LemonadePickerContentView(0, v41);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34.i8[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v38 = &v34.i8[-v22];
  (*(v9 + 16))(v12, v3, v8, v21);

  sub_1A432C4DC(a2, v7);
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v19[32] = 0;
  *(v19 + 5) = swift_getKeyPath();
  v19[48] = 0;
  *(v19 + 7) = swift_getKeyPath();
  v19[64] = 0;
  *v41 = v8;
  *&v41[8] = v36;
  *&v41[40] = v35;
  *&v41[24] = v34;
  v42 = v13;
  v23 = type metadata accessor for LemonadePickerContentView(0, v41);
  v24 = v23[23];
  *&v19[v24] = swift_getKeyPath();
  v25 = MEMORY[0x1E697DCB8];
  sub_1A3C4C150(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v26 = &v19[v23[24]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v19[v23[25]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v23[26];
  *&v19[v28] = swift_getKeyPath();
  sub_1A3C4C150(0, &qword_1EB128A50, MEMORY[0x1E697E730], v25);
  swift_storeEnumTagMultiPayload();
  v29 = &v19[v23[27]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *&v19[v23[28]] = v40;
  (*(v37 + 32))(&v19[v23[29]], v12, v8);
  sub_1A43315CC(v7, &v19[v23[30]]);
  swift_getWitnessTable();
  v30 = *(v17 + 16);
  v31 = v38;
  v30(v38, v19, v16);
  v32 = *(v17 + 8);
  v32(v19, v16);
  v30(v39, v31, v16);
  return (v32)(v31, v16);
}

void sub_1A432D2AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v13[1] = a2;
  v13[6] = a1;
  v13[9] = a4;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v13[2] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13[0] = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  swift_getAssociatedTypeWitness();
  v13[4] = v5;
  v13[5] = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13[16] = AssociatedTypeWitness;
  v13[17] = v10;
  v13[18] = v10;
  v13[19] = AssociatedConformanceWitness;
  v13[20] = v12;
  v13[21] = v12;
  sub_1A5245A24();
}

uint64_t sub_1A432DB20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = a8;
  v17[6] = a10;
  v17[7] = a11;
  v13 = *((*MEMORY[0x1E69E7D40] & **(a2 + *(type metadata accessor for LemonadePickerShelfProviderAdapter(0, v17) + 84))) + 0x2D0);
  v14 = a1;
  v15 = v13();
  sub_1A47A9538(v14, 0, 0, 0, v18, v15, 0, a9);
  type metadata accessor for LemonadeNavigationDestination(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A432DC20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a10, uint64_t a11, void (*a12)(id, uint64_t, uint64_t, uint64_t))
{
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v20 = a10;
  v21 = a11;
  v14 = *((*MEMORY[0x1E69E7D40] & **(a3 + *(type metadata accessor for LemonadePickerShelfProviderAdapter(0, v19) + 84))) + 0x2D0);
  v15 = a1;

  v17 = v14(v16);
  a12(v15, a2, 1, v17);
  type metadata accessor for LemonadeNavigationDestination(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1A432DD28(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v7 = a2;
  v5 = a1;
  v6 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  sub_1A5245A24();
}

void sub_1A432E128(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = AssociatedTypeWitness;
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  sub_1A5245A24();
}

uint64_t sub_1A432E58C()
{
  result = sub_1A52437B4();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A432E610(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A432E720(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1A42E6E80(a1, WitnessTable);
}

uint64_t sub_1A432E774(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PickerConfiguration(319, v2);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A432E7FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1A432E938(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1A432EAEC(uint64_t a1)
{
  sub_1A3C9FF7C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A3C9FF7C(319, &unk_1EB124808, &type metadata for LemonadeCellSpec, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A3C9FF7C(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C4C150(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A3C9FF7C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1A3C4C150(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1A3C4C150(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A3C9FF7C(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedConformanceWitness();
                  sub_1A5245A24();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A432EFF4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1A5242D14() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v46 = v7;
  v8 = *(sub_1A52486A4() - 8);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v8 + 64);
  }

  v12 = *(v10 + 84);
  v13 = *(sub_1A5242C84() - 8);
  v14 = *(v13 + 80);
  v15 = ((v14 + 41) & ~v14) + *(v13 + 64);
  if (v15 <= 0x5A)
  {
    v16 = 90;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(sub_1A5241F84() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  if (v20 <= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v10 + 80);
  v24 = *(v17 + 80);
  v25 = *(v17 + 64);
  if (v19)
  {
    v26 = -2;
  }

  else
  {
    v26 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v6 | 7;
  v28 = *(v8 + 80) & 0xF8 | 7;
  v29 = v11 + 24;
  v30 = v14 | v24 | 7;
  v31 = v30 + *(v10 + 64);
  v32 = v16 + v24;
  if (a2 <= v22)
  {
    goto LABEL_44;
  }

  v33 = v26 + v25 - ((-3 - v32) | v24) - ((((((((((((-66 - v27) | v27) - v46 - 24) | 7) - v28 - 9) | v28) - v29) | 7) - v23 - 8) | v23) - v31) | v30);
  v34 = 8 * v33;
  if (v33 <= 3)
  {
    v37 = ((a2 - v22 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v37))
    {
      v35 = *(a1 + v33);
      if (!v35)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v37 > 0xFF)
    {
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v37 < 2)
    {
LABEL_44:
      v41 = ((v29 + (((((((a1 & 0xFFFFFFFFFFFFFFF8) + v27 + 65) & ~v27) + v46) & 0xFFFFFFFFFFFFFFF8) + v28 + 33) & ~v28)) & 0xFFFFFFFFFFFFFFF8);
      if ((v21 & 0x80000000) != 0)
      {
        v43 = (v41 + v23 + 8) & ~v23;
        if (v12 == v22)
        {
          v44 = *(v10 + 48);

          return v44(v43, v12, v9);
        }

        else
        {
          v45 = (*(v18 + 48))((v32 + ((v31 + v43) & ~v30) + 2) & ~v24);
          if (v45 >= 2)
          {
            return v45 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v42 = *v41;
        if (*v41 >= 0xFFFFFFFF)
        {
          LODWORD(v42) = -1;
        }

        return (v42 + 1);
      }
    }
  }

  v35 = *(a1 + v33);
  if (!*(a1 + v33))
  {
    goto LABEL_44;
  }

LABEL_31:
  v38 = (v35 - 1) << v34;
  if (v33 > 3)
  {
    v38 = 0;
  }

  if (v33)
  {
    if (v33 <= 3)
    {
      v39 = v33;
    }

    else
    {
      v39 = 4;
    }

    if (v39 > 2)
    {
      if (v39 == 3)
      {
        v40 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v40 = *a1;
      }
    }

    else if (v39 == 1)
    {
      v40 = *a1;
    }

    else
    {
      v40 = *a1;
    }
  }

  else
  {
    v40 = 0;
  }

  return v22 + (v40 | v38) + 1;
}

void sub_1A432F47C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1A5242D14() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (((v6 + 16) & ~v6) + v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = ((v6 + 16) & ~v6) + v7;
  }

  v9 = *(sub_1A52486A4() - 8);
  v48 = *(a4 + 16);
  v10 = *(v48 - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v9 + 64);
  }

  v12 = *(v10 + 84);
  v13 = *(sub_1A5242C84() - 8);
  v14 = *(v13 + 80);
  v15 = ((v14 + 41) & ~v14) + *(v13 + 64);
  if (v15 <= 0x5A)
  {
    v16 = 90;
  }

  else
  {
    v16 = v15;
  }

  v17 = 0;
  v18 = *(sub_1A5241F84() - 8);
  v19 = v18;
  v20 = *(v18 + 84);
  if (v20)
  {
    v21 = v20 - 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v10 + 80);
  v23 = *(v18 + 80);
  v24 = *(v18 + 64);
  if (v21 <= 0xFE)
  {
    v25 = 254;
  }

  else
  {
    v25 = v21;
  }

  if (v12 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v12;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v9 + 80) & 0xF8 | 7;
  v29 = v14 | v23 | 7;
  v30 = v29 + *(v10 + 64);
  v31 = v16 + v23 + 2;
  if (!v20)
  {
    ++v24;
  }

  v32 = (v31 & ~v23) + v24;
  v33 = ((v30 + ((v22 + 8 + ((v11 + 24 + ((v28 + ((v8 + (((v6 | 7) + 65) & ~(v6 | 7)) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v28)) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v29) + v32;
  if (a3 > v27)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v27 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
      if (HIWORD(v34))
      {
        v17 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v17 = v35;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  if (v27 < a2)
  {
    v36 = ~v27 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> (8 * v33)) + 1;
      if (v33)
      {
        v38 = v36 & ~(-1 << (8 * v33));
        bzero(a1, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *a1 = v38;
            if (v17 > 1)
            {
LABEL_78:
              if (v17 == 2)
              {
                *(a1 + v33) = v37;
              }

              else
              {
                *(a1 + v33) = v37;
              }

              return;
            }
          }

          else
          {
            *a1 = v36;
            if (v17 > 1)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_75;
        }

        *a1 = v38;
        *(a1 + 2) = BYTE2(v38);
      }

      if (v17 > 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v36;
      v37 = 1;
      if (v17 > 1)
      {
        goto LABEL_78;
      }
    }

LABEL_75:
    if (v17)
    {
      *(a1 + v33) = v37;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    *(a1 + v33) = 0;
LABEL_50:
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (!v17)
  {
    goto LABEL_50;
  }

  *(a1 + v33) = 0;
  if (!a2)
  {
    return;
  }

LABEL_51:
  v39 = ((v11 + 24 + (((((((a1 & 0xFFFFFFFFFFFFFFF8) + (v6 | 7) + 65) & ~(v6 | 7)) + v8) & 0xFFFFFFFFFFFFFFF8) + v28 + 33) & ~v28)) & 0xFFFFFFFFFFFFFFF8);
  if ((v26 & 0x80000000) != 0)
  {
    v41 = (v39 + v22 + 8) & ~v22;
    if (v12 == v27)
    {
      v42 = *(v10 + 56);

      v42(v41, a2, v12, v48);
    }

    else
    {
      v43 = (v30 + v41) & ~v29;
      if (v25 >= a2)
      {
        v47 = *(v19 + 56);

        v47((v31 + v43) & ~v23, a2 + 1);
      }

      else
      {
        if (v32 <= 3)
        {
          v44 = ~(-1 << (8 * v32));
        }

        else
        {
          v44 = -1;
        }

        if (v32)
        {
          v45 = v44 & (~v25 + a2);
          if (v32 <= 3)
          {
            v46 = v32;
          }

          else
          {
            v46 = 4;
          }

          bzero(((v30 + v41) & ~v29), v32);
          if (v46 > 2)
          {
            if (v46 == 3)
            {
              *v43 = v45;
              *(v43 + 2) = BYTE2(v45);
            }

            else
            {
              *v43 = v45;
            }
          }

          else if (v46 == 1)
          {
            *v43 = v45;
          }

          else
          {
            *v43 = v45;
          }
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v40 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v40 = a2 - 1;
    }

    *v39 = v40;
  }
}

double sub_1A432FA74@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = sub_1A524D254();
  v9 = sub_1A524A014();
  sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();
  v10 = sub_1A3F1B54C(v7, 0);
  (*(v4 + 8))(v6, v3, v10);
  sub_1A40B1C00(0, v12[1], a1);

  return result;
}

uint64_t sub_1A432FBE4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_1A5244084();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 48);
  v4 = v30;
  v31 = (a1 + 40);
  v5 = *(a1 + 32);
  v39 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = AssociatedTypeWitness;
  v54 = v7;
  v55 = v4;
  v56 = AssociatedConformanceWitness;
  sub_1A5242A94();
  sub_1A5243134();
  sub_1A5249754();
  sub_1A5249754();
  v9 = sub_1A524B514();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  sub_1A4178698(255);
  v12 = sub_1A5248804();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v29 - v17;
  *&v18 = v5;
  *(&v18 + 1) = *v31;
  v40 = v39;
  v41 = v18;
  v42 = v30;
  v43 = *(a1 + 56);
  v44 = *(a1 + 72);
  v45 = v33;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1A433148C(&qword_1EB138540, MEMORY[0x1E69C23B0], MEMORY[0x1E69C23A8]);
  v51 = WitnessTable;
  v52 = v20;
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x1E6982070];
  v21 = swift_getWitnessTable();
  sub_1A524B504();
  swift_getKeyPath();
  v22 = v35;
  sub_1A432FA74(v35);
  v48 = v21;
  v23 = swift_getWitnessTable();
  sub_1A524A964();

  (*(v36 + 8))(v22, v37);
  (*(v34 + 8))(v11, v9);
  v24 = sub_1A433148C(&qword_1EB1279C8, sub_1A4178698, MEMORY[0x1E6980A18]);
  v46 = v23;
  v47 = v24;
  swift_getWitnessTable();
  v25 = *(v13 + 16);
  v26 = v32;
  v25(v32, v15, v12);
  v27 = *(v13 + 8);
  v27(v15, v12);
  v25(v38, v26, v12);
  return (v27)(v26, v12);
}

void sub_1A4330158(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v65 = a8;
  v64 = a7;
  v66 = a1;
  v56 = a9;
  v15 = sub_1A5243134();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = AssociatedTypeWitness;
  v69 = v18;
  v45 = v18;
  v70 = a6;
  v71 = AssociatedConformanceWitness;
  v42 = AssociatedConformanceWitness;
  v20 = sub_1A5242A94();
  v62 = v15;
  v67 = sub_1A5249754();
  v61 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = v36 - v21;
  v39 = sub_1A5243284();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a2;
  v69 = a3;
  v47 = a4;
  v70 = a4;
  v71 = a5;
  v48 = a5;
  v49 = a6;
  v72 = a6;
  v73 = v64;
  v74 = v65;
  v75 = a10;
  v59 = a10;
  v52 = type metadata accessor for LemonadePickerContentView(0, &v68);
  v37 = *(v52 - 8);
  v36[6] = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v36[7] = v36 - v23;
  v63 = v20;
  v41 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v44 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v43 = v36 - v27;
  v28 = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedTypeWitness();
  v54 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v36[4] = v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v53 = v36 - v32;
  swift_getAssociatedTypeWitness();
  v58 = a3;
  v57 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedTypeWitness();
  v36[5] = v28;
  v46 = AssociatedTypeWitness;
  v34 = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v55 = v29;
  v68 = v29;
  v69 = v33;
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v73 = v35;
  sub_1A5245A24();
}

uint64_t sub_1A4331290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a7;
  v27 = a8;
  v28 = a1;
  v29 = a2;
  v30 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v31[3] = a6;
  v31[4] = v26;
  v31[5] = v27;
  v31[6] = a10;
  v31[7] = a11;
  type metadata accessor for LemonadePickerContentView(0, v31);
  (*(a4 + 104))(v29, a3, a4);
  v22 = *(v16 + 16);
  v22(v21, v18, AssociatedTypeWitness);
  v23 = *(v16 + 8);
  v23(v18, AssociatedTypeWitness);
  v22(v30, v21, AssociatedTypeWitness);
  return (v23)(v21, AssociatedTypeWitness);
}

uint64_t sub_1A433148C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A43314D4@<X0>(char *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v14[0] = v1[2];
  v3 = v14[0];
  v14[1] = v4;
  v14[2] = v5;
  v14[3] = v6;
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v9;
  v14[7] = v10;
  v11 = *(type metadata accessor for LemonadePickerContentView(0, v14) - 8);
  v12 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  return sub_1A4331290(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6, v7, v8, a1, v9, v10);
}

uint64_t sub_1A43315CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeShelfBodyStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A4331630(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A5244EE4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 setFetchLimit_];
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  v11 = *(a2 + 16);
  (*(v6 + 104))(v9, *MEMORY[0x1E69C12A8], v5);
  sub_1A5244EF4();
  swift_allocObject();
  v12 = v11;
  v13 = a3;
  sub_1A5244ED4();
  v14 = [v10 tripsSource];
  if (v14 == 2)
  {
    sub_1A5244B94();
    v15 = sub_1A5244B84();
  }

  else if (v14 == 1)
  {
    sub_1A5244D04();
    v15 = sub_1A5245014();
  }

  else
  {
    if (v14)
    {
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    sub_1A52445A4();
    v15 = sub_1A5244594();
  }

  v16 = v15;
  v17 = [v15 firstObject];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v17 options:v13];
    if (v19)
    {
      v20 = v19;
      v21 = [v12 px_virtualCollections];
      v22 = [v21 featuredTripsCollectionsWithAssetFetchResult_];

      return v22;
    }
  }

  else
  {
  }

  return 0;
}

double sub_1A4331940@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4(0xD00000000000001DLL);
  v6 = v5;
  sub_1A4335E5C(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v7 = sub_1A5244EE4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x1E69C12A8], v7);
  v11 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_1A4331AD4@<X0>(uint64_t a1@<X8>)
{
  sub_1A4335E5C(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3DC1AF8();
    v10 = v9 & 1;

    return sub_1A42E7F0C(v8, v10, 2, a1);
  }

  else
  {
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C47918();
    v17 = v16;
    v18 = sub_1A3C52D68();
    v20 = v19;
    v24 = a1;
    v22 = v21;
    v23 = sub_1A3C4ED50(v18);
    v25 = 1;
    *v7 = sub_1A4331CBC;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v12;
    *(v7 + 6) = v14;
    *(v7 + 7) = v15;
    *(v7 + 8) = v17;
    *(v7 + 9) = v18;
    *(v7 + 10) = v20;
    v7[88] = v22;
    v7[89] = v23;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 0, v4, v24);
  }
}

uint64_t sub_1A4331CBC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 2;
}

uint64_t sub_1A4331DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v54 = a3;
  v9 = sub_1A5244EE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v44 - v16;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 simulateEmptyShelves];

  if (!v18)
  {
    v49 = a4;
    v50 = a5;
    v22 = objc_opt_self();
    v23 = sub_1A524CA14();
    v24 = sub_1A524C634();
    v51 = a1;
    v48 = [v22 transientCollectionListWithCollections:v23 title:v24 identifier:0 photoLibrary:a1];

    v45 = a2;
    v52 = *(a2 + 24);
    v25 = *(v10 + 104);
    v25(v14, *MEMORY[0x1E69C12B0], v9);
    sub_1A4335DB4(&qword_1EB128F98, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12E0]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v59[0] == v67)
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_1A524EAB4();
    }

    v27 = *(v10 + 8);
    v47 = v10 + 8;
    v46 = v27;
    v27(v14, v9);

    if (v26)
    {
      sub_1A5244D04();
      v28 = sub_1A5244CF4();
      v25(v55, *MEMORY[0x1E69C12A8], v9);
      v29 = v28;
    }

    else
    {
      (*(v10 + 16))(v55, v54, v9);
      v29 = 0;
    }

    LODWORD(v54) = v26 ^ 1;
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    v66 = 2;
    v30 = *(v45 + 40);
    if (v30)
    {
      v31 = (*((*MEMORY[0x1E69E7D40] & *v30) + 0x258))(v52);
    }

    else
    {
      v32 = v52;
      v31 = 0;
    }

    sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    sub_1A3C6C180(&v56);
    v64 = v56;
    v65 = v57;
    sub_1A3C6C18C(&v62);
    v60 = v62;
    v61 = v63;
    v33 = sub_1A3C5A374();
    v34 = sub_1A3C30368();
    v35 = sub_1A3C5A374();
    v36 = sub_1A3C5A374();
    v37 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v64, 0, &unk_1F1706C00, v29, v54 & 1, &v60, v33 & 1, &v66, v59, v34, v35 & 1, v36 & 1, v37 & 1, v31);
    v57 = 0;
    v56 = 0;
    v58 = 0;
    v38 = v53;
    (*(v10 + 16))(v53, v55, v9);
    v39 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v40 = swift_allocObject();
    (*(v10 + 32))(v40 + v39, v38, v9);
    v41 = v40 + ((v39 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v41 = v49;
    *(v41 + 8) = v50 & 1;
    v42 = v51;
    *(v40 + ((v39 + v11 + 23) & 0xFFFFFFFFFFFFFFF8)) = v51;
    v43 = v42;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v48, v52, &v67, v59, &v56, sub_1A433B714, v40);
  }

  sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  v19 = *(a2 + 16);
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v57 = 0;
  v56 = 0;
  v58 = 0;
  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v20 = v19;
  sub_1A43FD8EC();
  return PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v20, 0, &v67);
}

void sub_1A43324F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  sub_1A43390C4(0, &qword_1EB127F50, MEMORY[0x1E697F948]);
  v11[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v11[0] = v11 - v4;
  v12 = type metadata accessor for LemonadeShelfPlaceholderView(0);
  MEMORY[0x1EEE9AC00](v12);
  v5 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  [v5 isCloudPhotoLibraryEnabled];
  v6 = sub_1A524C634();
  v7 = PXLemonadeLocalizedString(v6);

  sub_1A524C674();
  v8 = sub_1A524C634();

  v9 = PXLemonadeLocalizedString(v8);

  sub_1A524C674();
  sub_1A3C38BD4(0xD000000000000026);
  v10 = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4332864(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isTripsVirtualCollection])
  {
    v5 = sub_1A3C38BD4(0xD00000000000001DLL);
    v7 = v6;
    sub_1A4335E5C(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
    v8 = sub_1A5244EE4();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69C12A8], v8);
    v12 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
    *a3 = a2;
    *(a3 + 8) = 0;
    *(a3 + 16) = v5;
    *(a3 + 24) = v7;
    *(a3 + 32) = v11;
    *(a3 + 40) = v12;
    *(a3 + 48) = v13;
    v14 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for LemonadeNavigationDestination(0);
    v16 = *(*(v15 - 8) + 56);

    v16(a3, 1, 1, v15);
  }
}

void sub_1A4332AAC(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for LemonadeNavigationDestination(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 97) == 1)
  {

    sub_1A3C6E9EC();
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(a6);
  }

  if (MEMORY[0x1A590D320](v12))
  {
    v15 = *(a1 + 16);
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v14);
  }

  v18[0] = a3;
  v18[1] = a4;
  v19 = a5;
  v16 = sub_1A3C51FF0();
  sub_1A3C66934(v18, &type metadata for LemonadeTripsFeature.ShelfProvider, v16);

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(v14);
}

uint64_t sub_1A4332C78()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4335E5C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A5242E54();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A4332E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = sub_1A5241144();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A5244EE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A4338F3C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v14 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v15 = *(a2 + 16);
  (*(v10 + 104))(v12, *MEMORY[0x1E69C12A8], v9);
  sub_1A5244EF4();
  swift_allocObject();
  v16 = v15;
  v17 = v14;
  v18 = v37;
  sub_1A5244ED4();
  sub_1A433B638(v18, v8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v20 = v35;
    v21 = v36;
    (*(v35 + 32))(v5, v8, v36);
    sub_1A5244E64();
    v22 = sub_1A5244E54();

    (*(v20 + 8))(v5, v21);
    return v22;
  }

  if (EnumCaseMultiPayload)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1A524E404();

    v38 = 0xD00000000000001BLL;
    v39 = 0x80000001A53B42A0;
    sub_1A4335DB4(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C618);
    v34 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v34);
  }

  else
  {
    v24 = *v8;
    v23 = v8[1];
    v25 = v13;
    v26 = [v13 tripsSource];
    if (v26 == 2)
    {
      sub_1A5244B94();
      sub_1A3C37150(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = v24;
      v30 = inited + 32;
      *(inited + 40) = v23;
      sub_1A3DD76A0(inited);
      swift_setDeallocating();
      sub_1A3C651B8(v30);
      goto LABEL_10;
    }

    if (v26 == 1)
    {
      sub_1A5244D04();
      sub_1A3C37150(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1A52F8E10;
      *(v27 + 32) = v24;
      v28 = v27 + 32;
      *(v27 + 40) = v23;
      sub_1A3DD76A0(v27);
      swift_setDeallocating();
      sub_1A3C651B8(v28);
LABEL_10:
      v22 = sub_1A5244E74();

      return v22;
    }

    if (!v26)
    {
      sub_1A52445A4();
      sub_1A3C37150(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_1A52F8E10;
      *(v31 + 32) = v24;
      v32 = v31 + 32;
      *(v31 + 40) = v23;
      sub_1A3DD76A0(v31);
      swift_setDeallocating();
      sub_1A3C651B8(v32);
      goto LABEL_10;
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}
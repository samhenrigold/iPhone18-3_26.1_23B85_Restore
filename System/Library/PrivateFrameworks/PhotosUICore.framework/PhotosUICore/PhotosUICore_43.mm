void sub_1A4192BE8(uint64_t a1)
{
  if (!qword_1EB129888)
  {
    type metadata accessor for LemonadeNavigationDestination(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB129888);
    }
  }
}

uint64_t sub_1A4192C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4192D54(uint64_t a3@<X8>)
{
  type metadata accessor for SharedLibrarySuggestionsItemList(0);
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  sub_1A52458F4();
}

uint64_t type metadata accessor for SharedLibrarySuggestionsItemList(uint64_t a1)
{
  result = qword_1EB17BAD0;
  if (!qword_1EB17BAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4192F48(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a1)
  {
    v3 = *v2 + 48 * a1;
    v4 = *(v3 + 40);
    v6 = *(v3 + 64);
    v5 = *(v3 + 72);
    *a2 = *(v3 + 32);
    *(a2 + 8) = v4;
    *(a2 + 16) = *(v3 + 48);
    *(a2 + 32) = v6;
    *(a2 + 40) = v5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
}

unint64_t sub_1A4193060()
{
  result = qword_1EB129670;
  if (!qword_1EB129670)
  {
    type metadata accessor for SharedLibrarySuggestionsItemList(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129670);
  }

  return result;
}

void sub_1A41930E0(uint64_t a1)
{
  sub_1A4193220(319, &unk_1EB120CB0, &type metadata for SharedLibrarySuggestionItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1A3DB7EF8(319);
    if (v2 <= 0x3F)
    {
      sub_1A4193220(319, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1A4193220(319, &qword_1EB1255E8, &type metadata for SharedLibrarySuggestionItem, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A5245EC4();
        }
      }
    }
  }
}

void sub_1A4193220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A419327C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  v7 = MEMORY[0x1E697DCC0];
  sub_1A419B518(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v12 - v9);
  *v10 = swift_getKeyPath();
  sub_1A419B518(0, &qword_1EB128AA0, v6, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1A419685C(v10, v5);
  sub_1A419B714(v10, &qword_1EB124870, v6, v7, sub_1A419B518);
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x1E69C2210])
  {
    *a1 = 1;
  }

  else
  {
    *a1 = 0;
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t static LemonadeSegmentedControlPickerStyle.platformDefault.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  v7 = MEMORY[0x1E697DCC0];
  sub_1A419B518(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v12 - v9);
  *v10 = swift_getKeyPath();
  sub_1A419B518(0, &qword_1EB128AA0, v6, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1A419685C(v10, v5);
  sub_1A419B714(v10, &qword_1EB124870, v6, v7, sub_1A419B518);
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x1E69C2210])
  {
    *a1 = 1;
  }

  else
  {
    *a1 = 0;
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

int *LemonadeSegmentedControl.init(pickedItem:availableItems:disabledItems:onItemRepicked:pickerStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = *a6;
  v18 = sub_1A524B974();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  result = type metadata accessor for LemonadeSegmentedControl(0, a7, a8, v19);
  *(a9 + result[9]) = a2;
  *(a9 + result[10]) = a3;
  v21 = (a9 + result[11]);
  *v21 = a4;
  v21[1] = a5;
  *(a9 + result[12]) = v17;
  return result;
}

uint64_t LemonadeSegmentedControl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v66 = a2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for LemonadeSegmentedControl.PillPicker(0, v5, v6, a3);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v53 - v11;
  v13 = type metadata accessor for LemonadeSegmentedControl.StandardPicker(255, v5, v6, v12);
  v65 = v7;
  v14 = sub_1A5249754();
  v59 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v53 - v15;
  v16 = sub_1A524B974();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - v18;
  v63 = v13;
  v54 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v53 - v24;
  v64 = v14;
  v25 = sub_1A5249754();
  v61 = *(v25 - 8);
  v62 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v60 = &v53 - v26;
  if (!*(v3 + *(a1 + 48)))
  {
    sub_1A524B924();
    v38 = *(v3 + *(a1 + 36));
    v39 = swift_allocObject();
    *(v39 + 16) = v5;
    *(v39 + 24) = v6;
    (*(v17 + 32))(v22, v19, v16);
    v41 = type metadata accessor for LemonadeSegmentedControl.StandardPicker(0, v5, v6, v40);
    *&v22[*(v41 + 36)] = v38;
    v42 = &v22[*(v41 + 40)];
    *v42 = sub_1A4199270;
    v42[1] = v39;
    v43 = v63;
    swift_getWitnessTable();
    (*(v54 + 16))(v56, v22, v43);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(v3 + *(a1 + 48)) != 1)
  {
    sub_1A524B924();
    v44 = *(v3 + *(a1 + 36));
    (*(v17 + 32))(v9, v19, v16);
    v45 = v65;
    *&v9[*(v65 + 36)] = v44;
    swift_getWitnessTable();
    (*(v55 + 16))(v57, v9, v45);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A5249434();
  v27 = sub_1A524A444();
  v29 = v28;
  v73[0] = v27;
  v73[1] = v28;
  v31 = v30 & 1;
  v74 = v30 & 1;
  v75 = v32;
  WitnessTable = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v71 = WitnessTable;
  v72 = v34;
  v35 = v64;
  v36 = swift_getWitnessTable();
  v37 = v60;
  sub_1A3DF4890(v73, v35, MEMORY[0x1E6981148], v36, MEMORY[0x1E6981138]);
  sub_1A3E04DF4(v27, v29, v31);

  v46 = v66;
  v48 = v61;
  v47 = v62;
  v49 = MEMORY[0x1E6981138];
  v50 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v69 = v50;
  v70 = v51;
  v67 = swift_getWitnessTable();
  v68 = v49;
  swift_getWitnessTable();
  (*(v48 + 16))(v46, v37, v47);
  return (*(v48 + 8))(v37, v47);
}

uint64_t sub_1A4194020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_1A5249804();
  v60 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v59 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = sub_1A524CB74();
  v7 = *(a1 + 24);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x1E6981148];
  v74 = MEMORY[0x1E6981148];
  v75 = v5;
  v10 = MEMORY[0x1E6981138];
  v76 = MEMORY[0x1E6981138];
  v77 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v74 = v6;
  v75 = v5;
  v76 = OpaqueTypeMetadata2;
  v77 = WitnessTable;
  v78 = v8;
  v13 = sub_1A524B9D4();
  v74 = v9;
  v75 = v5;
  v76 = v10;
  v77 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable();
  v74 = v9;
  v75 = v5;
  v56 = v13;
  v76 = v13;
  v77 = v10;
  v58 = v8;
  v78 = v8;
  v79 = v14;
  v51[1] = v14;
  v15 = sub_1A524B824();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v52 = v51 - v16;
  v17 = swift_getWitnessTable();
  v67 = v15;
  v68 = v3;
  v74 = v15;
  v75 = v3;
  v71 = v17;
  v76 = v17;
  v77 = MEMORY[0x1E697C6A0];
  v18 = swift_getOpaqueTypeMetadata2();
  v57 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v55 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v53 = v51 - v21;
  v22 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v51[0] = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v24);
  v70 = v51 - v25;
  v64 = v7;
  v27 = type metadata accessor for UIKitSegmentedControl(0, v5, v7, v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v66 = v18;
  v65 = sub_1A5249754();
  v63 = *(v65 - 8);
  v29 = MEMORY[0x1EEE9AC00](v65);
  v61 = v51 - v30;
  if (MEMORY[0x1A590D320](v29))
  {
    v59 = *(v62 + *(a1 + 36));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A5249434();
  v31 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v31);
  v32 = v52;
  sub_1A524B804();
  v33 = v59;
  sub_1A52497F4();
  v34 = v55;
  v36 = v67;
  v35 = v68;
  v37 = v71;
  v38 = MEMORY[0x1E697C6A0];
  sub_1A524A9A4();
  (*(v60 + 8))(v33, v35);
  (*(v54 + 8))(v32, v36);
  v74 = v36;
  v75 = v35;
  v76 = v37;
  v77 = v38;
  v70 = swift_getOpaqueTypeConformance2();
  v39 = v57;
  v40 = *(v57 + 16);
  v41 = v53;
  v42 = v66;
  v40(v53, v34, v66);
  v43 = *(v39 + 8);
  v43(v34, v42);
  v40(v34, v41, v42);
  v44 = swift_getWitnessTable();
  v45 = v61;
  sub_1A3DF4890(v34, v27, v42, v44, v70);
  v43(v34, v42);
  v43(v41, v42);
  v46 = swift_getWitnessTable();
  v74 = v36;
  v75 = v35;
  v76 = v71;
  v77 = MEMORY[0x1E697C6A0];
  v47 = swift_getOpaqueTypeConformance2();
  v72 = v46;
  v73 = v47;
  v48 = v65;
  swift_getWitnessTable();
  v49 = v63;
  (*(v63 + 16))(v69, v45, v48);
  return (*(v49 + 8))(v45, v48);
}

id sub_1A4194A24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_1A524DF24();
  v11 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v29 = type metadata accessor for LemonadeSegmentedControl.StandardPicker(0, a3, a4, v16);
  v30 = a2;
  v38[1] = *(a2 + *(v29 + 36));
  v31 = a3;
  v17 = sub_1A524CB74();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5907CC0](v38, v17, WitnessTable);
  v37 = v38[0];
  sub_1A524E734();
  sub_1A524E704();
  v19 = sub_1A524E724();
  v20 = (v11 + 32);
  v32 = TupleTypeMetadata2 - 8;
  v33 = v19;
  v21 = (v7 + 32);
  v22 = (v7 + 8);
  for (i = v31; ; (*v22)(v9, i))
  {
    v24 = v34;
    sub_1A524E714();
    (*v20)(v15, v24, v35);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v25 = *v15;
    (*v21)(v9, &v15[*(TupleTypeMetadata2 + 48)], i);
    (*(v30 + *(v29 + 40)))(v9);
    v26 = sub_1A524C634();

    [v36 setTitle:v26 forSegmentAtIndex:v25];
  }

  return [v36 _setUseGlass_];
}

void sub_1A4194D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A524CB74();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v6 = sub_1A524B9D4();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for LemonadeSegmentedControl.StandardPicker(0, a2, a3, v8);
  swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4195024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v6 = *(a3 + 8);
  v26 = a1;
  v27 = v6;
  v29 = MEMORY[0x1E6981148];
  v30 = a2;
  v31 = MEMORY[0x1E6981138];
  v32 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v29 = (*(a3 + 16))(a2, a3, v12);
  v30 = v15;
  sub_1A3D5F9DC();
  v16 = sub_1A524A464();
  v18 = v17;
  v29 = v16;
  v30 = v17;
  v20 = v19 & 1;
  LOBYTE(v31) = v19 & 1;
  v32 = v21;
  sub_1A4195244(v26, 1, MEMORY[0x1E6981148], a2, MEMORY[0x1E6981138]);
  sub_1A3E04DF4(v16, v18, v20);

  v22 = *(v8 + 16);
  v22(v14, v10, OpaqueTypeMetadata2);
  v23 = *(v8 + 8);
  v23(v10, OpaqueTypeMetadata2);
  v22(v28, v14, OpaqueTypeMetadata2);
  return (v23)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1A4195244(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5249C74();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x1A5906490](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1A4195400@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = *(a1 + 16);
  v4 = sub_1A524CB74();
  sub_1A419A278(255, &qword_1EB133DC8, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F960]);
  v6 = v5;
  WitnessTable = swift_getWitnessTable();
  v25 = *(a1 + 24);
  v8 = *(v25 + 8);
  v33 = v4;
  v34 = v3;
  v35 = v6;
  v36 = WitnessTable;
  v37 = v8;
  sub_1A524B9D4();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v9 = sub_1A524B784();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = sub_1A5248804();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1A5249314();
  v28 = v3;
  v29 = v25;
  v30 = v26;
  sub_1A524B774();
  sub_1A524A064();
  v20 = swift_getWitnessTable();
  sub_1A524B0D4();
  (*(v10 + 8))(v12, v9);
  v31 = v20;
  v32 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v21 = *(v14 + 16);
  v21(v19, v16, v13);
  v22 = *(v14 + 8);
  v22(v16, v13);
  v21(v27, v19, v13);
  return (v22)(v19, v13);
}

void sub_1A4195790(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v30 = a4;
  v8 = type metadata accessor for LemonadeSegmentedControl.PillPicker(0, a2, a3, a5);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v21 - v10;
  v11 = sub_1A524CB74();
  v29 = v11;
  sub_1A419A278(255, &qword_1EB133DC8, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F960]);
  v13 = v12;
  v28 = v12;
  WitnessTable = swift_getWitnessTable();
  v26 = *(a3 + 8);
  v22 = a3;
  v33 = v11;
  v34 = a2;
  v35 = v13;
  v36 = WitnessTable;
  v37 = v26;
  v14 = sub_1A524B9D4();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v25 = &v21 - v16;
  v33 = *(a1 + *(v8 + 36));
  v31 = a2;
  v32 = a3;
  KeyPath = swift_getKeyPath();
  v17 = v24;
  (*(v9 + 16))(v24, a1, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v22;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v9 + 32))(v19 + v18, v17, v8);
  sub_1A419A764();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4195BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v103 = a5;
  v9 = sub_1A5249544();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A419A54C(0);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A419A278(0, &qword_1EB133E20, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F948]);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v77 - v14;
  v15 = sub_1A5249524();
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1A5249E64();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeSegmentedControl.PillPicker(0, a3, a4, v18);
  v20 = *(v19 - 8);
  v91 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v77 - v21;
  sub_1A419B6C0(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v96 = *(v22 - 8);
  v97 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v77 - v23;
  sub_1A419A2FC(0);
  v81 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A419A230(0);
  v99 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a3 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v94 = v19;
  v31 = sub_1A524B974();
  v93 = a2;
  MEMORY[0x1A5906C60](v31);
  v32 = sub_1A524C594();
  (*(v28 + 8))(&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v33 = *(a4 + 16);
  v98 = a4;
  v104 = v33(a3);
  v105 = v34;
  v35 = v92;
  if (v32)
  {
    v36 = v94;
    (*(v20 + 16))(v92, v93, v94);
    (*(v28 + 16))(&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v37 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v38 = (v91 + *(v28 + 80) + v37) & ~*(v28 + 80);
    v39 = swift_allocObject();
    v40 = v98;
    *(v39 + 16) = a3;
    *(v39 + 24) = v40;
    (*(v20 + 32))(v39 + v37, v35, v36);
    (*(v28 + 32))(v39 + v38, &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_1A3D5F9DC();
    v41 = v95;
    sub_1A524B754();
    v42 = v78;
    sub_1A5249E54();
    sub_1A3D6E520();
    sub_1A419A504(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    v43 = v82;
    v44 = v97;
    v45 = v80;
    sub_1A524A934();
    (*(v79 + 8))(v42, v45);
    (*(v96 + 8))(v41, v44);
    sub_1A419A3D0(0);
    v47 = (v43 + *(v46 + 36));
    v48 = MEMORY[0x1E6980A08];
    sub_1A419B518(0, &qword_1EB127838, MEMORY[0x1E697C2B0], MEMORY[0x1E6980A08]);
    sub_1A5248B14();
    *v47 = swift_getKeyPath();
    v49 = (v43 + *(v81 + 36));
    sub_1A419B518(0, &qword_1EB127880, MEMORY[0x1E697DC30], v48);
    v51 = *(v50 + 28);
    v52 = *MEMORY[0x1E697DC28];
    v53 = sub_1A5247E14();
    (*(*(v53 - 8) + 104))(v49 + v51, v52, v53);
    *v49 = swift_getKeyPath();
    v54 = v87;
    sub_1A52494E4();
    sub_1A419AB6C(&qword_1EB133E00, sub_1A419A2FC, sub_1A419A938);
    v55 = v83;
    sub_1A524AAF4();
    (*(v88 + 8))(v54, v89);
    sub_1A419AF44(v43, sub_1A419A2FC);
    sub_1A419AFA4(v55, v101, sub_1A419A230);
    swift_storeEnumTagMultiPayload();
    sub_1A419A858();
    sub_1A419AB6C(&qword_1EB133E10, sub_1A419A54C, sub_1A419ABF0);
    sub_1A5249744();
    v56 = sub_1A419A230;
    v57 = v55;
  }

  else
  {
    v58 = v94;
    (*(v20 + 16))(v92, v93, v94);
    (*(v28 + 16))(&v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v59 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v60 = (v91 + *(v28 + 80) + v59) & ~*(v28 + 80);
    v61 = swift_allocObject();
    v62 = v98;
    *(v61 + 16) = a3;
    *(v61 + 24) = v62;
    (*(v20 + 32))(v61 + v59, v35, v58);
    (*(v28 + 32))(v61 + v60, &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_1A3D5F9DC();
    v63 = v95;
    sub_1A524B754();
    v64 = v84;
    sub_1A5249534();
    sub_1A3D6E520();
    sub_1A419A504(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    v65 = v90;
    v66 = v97;
    v67 = v86;
    sub_1A524A934();
    (*(v85 + 8))(v64, v67);
    (*(v96 + 8))(v63, v66);
    sub_1A419A588(0);
    v69 = (v65 + *(v68 + 36));
    v70 = MEMORY[0x1E6980A08];
    sub_1A419B518(0, &qword_1EB127838, MEMORY[0x1E697C2B0], MEMORY[0x1E6980A08]);
    sub_1A5248B14();
    *v69 = swift_getKeyPath();
    v71 = (v65 + *(v102 + 36));
    sub_1A419B518(0, &qword_1EB127880, MEMORY[0x1E697DC30], v70);
    v73 = *(v72 + 28);
    v74 = *MEMORY[0x1E697DC28];
    v75 = sub_1A5247E14();
    (*(*(v75 - 8) + 104))(v71 + v73, v74, v75);
    *v71 = swift_getKeyPath();
    sub_1A419AFA4(v65, v101, sub_1A419A54C);
    swift_storeEnumTagMultiPayload();
    sub_1A419A858();
    sub_1A419AB6C(&qword_1EB133E10, sub_1A419A54C, sub_1A419ABF0);
    sub_1A5249744();
    v56 = sub_1A419A54C;
    v57 = v65;
  }

  return sub_1A419AF44(v57, v56);
}

uint64_t sub_1A419685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1A5249234();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  v7 = MEMORY[0x1E697DCB8];
  sub_1A419B518(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = MEMORY[0x1E697DCC0];
  sub_1A419B518(0, &qword_1EB124870, v6, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  sub_1A419B220(a1, &v19 - v13, &qword_1EB124870, v6, v11, sub_1A419B518);
  sub_1A419B220(v14, v10, &qword_1EB128AA0, v6, v7, sub_1A419B518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A419B714(v14, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0], sub_1A419B518);
    v15 = sub_1A5242D14();
    return (*(*(v15 - 8) + 32))(v22, v10, v15);
  }

  else
  {
    v17 = sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v20 + 8))(v5, v21);
    return sub_1A419B714(v14, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0], sub_1A419B518);
  }
}

uint64_t LemonadeSegmentedControlPickerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

double sub_1A4196C44()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[2];
}

void sub_1A4196D58(double a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 440))(v4);
  }
}

uint64_t (*sub_1A4196E5C(uint64_t *a1))()
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
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel, &unk_1A5321628);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A4196FAC;
}

uint64_t sub_1A4196FB8()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[24];
}

uint64_t sub_1A4197038@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

void sub_1A41970D0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[24] == v2)
  {
    v1[24] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 440))(v4);
  }
}

uint64_t (*sub_1A41971CC(uint64_t *a1))()
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
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel, &unk_1A5321628);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A419731C;
}

uint64_t sub_1A4197378()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[25];
}

uint64_t sub_1A41973F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

void sub_1A41974A0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[25] == v2)
  {
    v1[25] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 440))(v4);
  }
}

uint64_t (*sub_1A419759C(uint64_t *a1))()
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
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel, &unk_1A5321628);
  sub_1A52415F4();

  v4[7] = sub_1A4197328(v4);
  return sub_1A41976EC;
}

uint64_t sub_1A4197748()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[26];
}

uint64_t sub_1A41977C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result & 1;
  return result;
}

void sub_1A4197870(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[26] == v2)
  {
    v1[26] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 440))(v4);
  }
}

uint64_t (*sub_1A419796C(uint64_t *a1))()
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
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel, &unk_1A5321628);
  sub_1A52415F4();

  v4[7] = sub_1A41976F8(v4);
  return sub_1A4197ABC;
}

uint64_t sub_1A4197B18()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_1A4197B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

double sub_1A4197C3C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[4] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 440))(v5);
  }

  return result;
}

uint64_t (*sub_1A4197D34(uint64_t *a1))()
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
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel, &unk_1A5321628);
  sub_1A52415F4();

  v4[7] = sub_1A4197AC8(v4);
  return sub_1A4197E84;
}

uint64_t sub_1A4197E90()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_1A4197F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

double sub_1A4197FB4(uint64_t a1)
{
  swift_beginAccess();
  if (v1[5] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 440))(v5);
  }

  return result;
}

uint64_t (*sub_1A41980AC(uint64_t *a1))()
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
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel, &unk_1A5321628);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C(v4);
  return sub_1A41981FC;
}

uint64_t sub_1A4198208()
{
  (*(*v0 + 168))(1.0);
  (*(*v0 + 216))(1);
  (*(*v0 + 312))(0);
  (*(*v0 + 360))(0);
  v1 = *(*v0 + 408);

  return v1(0);
}

uint64_t sub_1A419846C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4198508()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x3FF0000000000000;
  *(v0 + 24) = 1;
  *(v0 + 26) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A4198564@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1A5249574();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A419B7FC(0, &qword_1EB133E28, &qword_1EB133E30, sub_1A419B0DC, &qword_1EB133E40);
  a1[3] = v4;
  a1[4] = sub_1A419B19C();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = 0;
  *(result + 48) = v6;
  *(result + 56) = v7;
  *(result + 64) = 2;
  *(result + 72) = v6;
  *(result + 80) = v7;
  return result;
}

double sub_1A41986EC@<D0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v22 = sub_1A5249574();
  v24 = 1;
  sub_1A419B9F4(0, &qword_1EB133E88, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v5 = v47;
  v6 = v48;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0x20746E6572727543, 0xEE00203A6D657469);
  sub_1A524B6A4();
  sub_1A524E624();
  v7 = sub_1A524A064();
  v40 = v47;
  LOBYTE(v41) = v48;
  *(&v41 + 1) = v32;
  DWORD1(v41) = *(&v32 + 3);
  v8 = MEMORY[0x1E69E7CC0];
  *(&v41 + 1) = &unk_1F16FA738;
  *v42 = MEMORY[0x1E69E7CC0];
  *&v42[16] = 0;
  v42[24] = v4;
  *&v63[9] = *&v42[9];
  v61 = v47;
  v62 = v41;
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  v26[0] = 0;
  *&v26[4] = *(v69 + 3);
  *&v26[1] = v69[0];
  *&v26[8] = MEMORY[0x1E69E7CC0];
  v26[16] = v7;
  *&v26[20] = *&v68[3];
  *&v26[17] = *v68;
  memset(&v26[24], 0, 32);
  v26[56] = 1;
  *v63 = MEMORY[0x1E69E7CC0];
  v64 = v25;
  v65 = *v26;
  *(v67 + 9) = *&v26[41];
  v66 = *&v26[16];
  v67[0] = *&v26[32];
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  LOBYTE(v48) = 0;
  DWORD1(v48) = *(v69 + 3);
  *(&v48 + 1) = v69[0];
  *(&v48 + 1) = MEMORY[0x1E69E7CC0];
  v49[0] = v7;
  *&v49[4] = *&v68[3];
  *&v49[1] = *v68;
  memset(&v49[8], 0, 32);
  v49[40] = 1;
  sub_1A419B89C(&v40, v23, sub_1A419B610);
  v9 = MEMORY[0x1E697E5E0];
  v10 = MEMORY[0x1E697E830];
  sub_1A419B220(&v25, v23, &qword_1EB128720, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830], sub_1A419B6C0);
  sub_1A419B714(&v47, &qword_1EB128720, v9, v10, sub_1A419B6C0);
  *v23 = v5;
  v23[16] = v6;
  *&v23[17] = v32;
  *&v23[20] = *(&v32 + 3);
  *&v23[24] = &unk_1F16FA738;
  *&v23[32] = v8;
  *&v23[48] = 0;
  v23[56] = v4;
  sub_1A419B994(v23, sub_1A419B610);
  v38 = v66;
  v39[0] = v67[0];
  *(v39 + 9) = *(v67 + 9);
  v34 = *v63;
  v35 = *&v63[16];
  v36 = v64;
  v37 = v65;
  v32 = v61;
  v33 = v62;
  v45 = v66;
  v46[0] = v67[0];
  *(v46 + 9) = *(v67 + 9);
  *v42 = *v63;
  *&v42[16] = *&v63[16];
  v43 = v64;
  v44 = v65;
  v40 = v61;
  v41 = v62;
  v11 = MEMORY[0x1E6981F40];
  sub_1A419B220(&v32, &v47, &qword_1EB133E60, sub_1A419B57C, MEMORY[0x1E6981F40], sub_1A419B518);
  sub_1A419B714(&v40, &qword_1EB133E60, sub_1A419B57C, v11, sub_1A419B518);
  *&v23[103] = v38;
  *&v23[87] = v37;
  *&v23[39] = v34;
  *&v23[23] = v33;
  *&v23[119] = v39[0];
  *&v23[128] = *(v39 + 9);
  *&v23[55] = v35;
  *&v23[71] = v36;
  *&v23[7] = v32;
  v28 = *&v23[80];
  v29 = *&v23[96];
  v30 = *&v23[112];
  v31 = *(v39 + 9);
  *&v26[17] = *&v23[16];
  *&v26[33] = *&v23[32];
  *&v26[49] = *&v23[48];
  v27 = *&v23[64];
  v25 = v22;
  v26[0] = v24;
  *&v26[1] = *v23;
  v12 = sub_1A524B454();
  sub_1A4198C10(v12, &v47);

  sub_1A419B774(&v25);
  v13 = sub_1A524A064();
  v14 = v58;
  *(a1 + 192) = v57;
  *(a1 + 208) = v14;
  *(a1 + 224) = v59;
  *(a1 + 240) = v60;
  v15 = v54;
  *(a1 + 128) = v53;
  *(a1 + 144) = v15;
  v16 = v56;
  *(a1 + 160) = v55;
  *(a1 + 176) = v16;
  v17 = v50;
  *(a1 + 64) = *&v49[32];
  *(a1 + 80) = v17;
  v18 = v52;
  *(a1 + 96) = v51;
  *(a1 + 112) = v18;
  v19 = v48;
  *a1 = v47;
  *(a1 + 16) = v19;
  v20 = *&v49[16];
  *(a1 + 32) = *v49;
  *(a1 + 48) = v20;
  *(a1 + 248) = v13;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1;
  return result;
}

uint64_t sub_1A4198C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A5247EE4();
  v6 = v38;
  v7 = v38 * 0.5;
  v8 = v39;
  v9 = DWORD1(v39);
  v10 = *(&v39 + 1);
  v11 = v40;
  v12 = v41;

  v13 = sub_1A524BC74();
  *v42 = v38 * 0.5;
  *(v42 + 1) = v38;
  v42[1] = v39;
  *v43 = v40;
  *&v43[8] = v41;
  *&v43[16] = a1;
  *&v43[24] = 256;
  v36 = v39;
  v37[0] = *v43;
  *(v37 + 10) = *&v43[10];
  v35 = v42[0];
  v14 = v37[0];
  v46 = v37[0];
  v47 = v37[1];
  v44 = v42[0];
  v45 = v39;
  *&v48 = v13;
  *(&v48 + 1) = v15;
  v16 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v16;
  v17 = *(v3 + 32);
  v18 = *(v3 + 48);
  v19 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v19;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  v20 = *(v3 + 96);
  v21 = *(v3 + 112);
  v22 = *(v3 + 128);
  v23 = *(v3 + 144);
  *(a2 + 160) = *(v3 + 160);
  *(a2 + 128) = v22;
  *(a2 + 144) = v23;
  *(a2 + 96) = v20;
  *(a2 + 112) = v21;
  v24 = v44;
  *(a2 + 184) = v45;
  v25 = v47;
  *(a2 + 200) = v46;
  *(a2 + 216) = v25;
  *(a2 + 232) = v48;
  *(a2 + 168) = v24;
  v49[0] = v35;
  v49[1] = v36;
  v49[2] = v14;
  v49[3] = v37[1];
  v50 = v13;
  v51 = v15;
  sub_1A419B89C(v42, v27, sub_1A3E73AC0);
  sub_1A419B904(v3, v27);
  sub_1A419B89C(&v44, v27, sub_1A3E73A2C);
  sub_1A419B994(v49, sub_1A3E73A2C);
  *v27 = v7;
  *&v27[1] = v6;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = a1;
  v34 = 256;
  return sub_1A419B994(v27, sub_1A3E73AC0);
}

uint64_t sub_1A4198E0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x657469726F766166;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x64657461657263;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x657469726F766166;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x64657461657263;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A4198F10()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A4198FB0(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A419903C(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A41990D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A419B4CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A4199108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x657469726F766166;
  if (v2 != 1)
  {
    v5 = 0x64657461657263;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A4199174()
{
  sub_1A3D5F9DC();
  v0 = sub_1A524DF94();

  return v0;
}

void sub_1A41992AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

void sub_1A4199300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 25) = v2;
}

void sub_1A4199354()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 26) = v2;
}

void sub_1A41993A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 32) = v1;
}

void sub_1A41993F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 40) = v1;
}

unint64_t sub_1A4199490()
{
  result = qword_1EB133DC0;
  if (!qword_1EB133DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DC0);
  }

  return result;
}

void sub_1A41994E4(uint64_t a1)
{
  sub_1A524B974();
  if (v1 <= 0x3F)
  {
    sub_1A524CB74();
    if (v2 <= 0x3F)
    {
      sub_1A419B518(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A41995C4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1A419973C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);

        v19((v17 + v9 + 8) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *v17 = v18;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_1A4199978(uint64_t a1)
{
  result = sub_1A524B974();
  if (v2 <= 0x3F)
  {
    result = sub_1A524CB74();
    if (v3 <= 0x3F)
    {
      result = sub_1A3C3637C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4199A20(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A4199B78(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
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

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1A4199D54(uint64_t a1)
{
  result = sub_1A524B974();
  if (v2 <= 0x3F)
  {
    result = sub_1A524CB74();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A4199DE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A4199F34(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
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

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

id sub_1A419A19C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for LemonadeSegmentedControl.StandardPicker(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1A4194A24(a1, v9, v6, v7);
}

void sub_1A419A278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A419A338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A419B518(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A419A40C(uint64_t a1, double a2)
{
  if (!qword_1EB121F50)
  {
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249E64();
    sub_1A3D6E520();
    sub_1A419A504(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F50);
    }
  }
}

uint64_t sub_1A419A504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A419A5C4(uint64_t a1, double a2)
{
  if (!qword_1EB13E210)
  {
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249544();
    sub_1A3D6E520();
    sub_1A419A504(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E210);
    }
  }
}

uint64_t sub_1A419A6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for LemonadeSegmentedControl.PillPicker(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1A4195BB8(a1, v9, v6, v7, a3);
}

unint64_t sub_1A419A764()
{
  result = qword_1EB133DF0;
  if (!qword_1EB133DF0)
  {
    sub_1A419A278(255, &qword_1EB133DC8, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F960]);
    sub_1A419A858();
    sub_1A419AB6C(&qword_1EB133E10, sub_1A419A54C, sub_1A419ABF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DF0);
  }

  return result;
}

unint64_t sub_1A419A858()
{
  result = qword_1EB133DF8;
  if (!qword_1EB133DF8)
  {
    sub_1A419A230(255);
    sub_1A419AB6C(&qword_1EB133E00, sub_1A419A2FC, sub_1A419A938);
    sub_1A419A504(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DF8);
  }

  return result;
}

unint64_t sub_1A419A938()
{
  result = qword_1EB133E08;
  if (!qword_1EB133E08)
  {
    sub_1A419A3D0(255);
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249E64();
    sub_1A3D6E520();
    sub_1A419A504(&qword_1EB127A50, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1A419AA5C(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E08);
  }

  return result;
}

unint64_t sub_1A419AA5C(double a1)
{
  result = qword_1EB1220F0;
  if (!qword_1EB1220F0)
  {
    sub_1A419B518(255, &qword_1EB127838, MEMORY[0x1E697C2B0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1220F0);
  }

  return result;
}

unint64_t sub_1A419AAE4(double a1)
{
  result = qword_1EB127888;
  if (!qword_1EB127888)
  {
    sub_1A419B518(255, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127888);
  }

  return result;
}

uint64_t sub_1A419AB6C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A419AAE4(v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A419ABF0()
{
  result = qword_1EB133E18;
  if (!qword_1EB133E18)
  {
    sub_1A419A588(255);
    sub_1A419B6C0(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249544();
    sub_1A3D6E520();
    sub_1A419A504(&unk_1EB122DF0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_1A419AA5C(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E18);
  }

  return result;
}

uint64_t objectdestroy_70Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for LemonadeSegmentedControl.PillPicker(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v5 - 8);
  v9 = (v7 + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v4 + v7;

  v11 = sub_1A524B974();
  v12 = *(v8 + 8);
  v12(v10 + *(v11 + 32), v5);

  v12(v4 + v9, v5);

  return swift_deallocObject();
}

uint64_t sub_1A419AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeSegmentedControl.PillPicker(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  return sub_1A419B00C(v4 + ((((v7 + 32) & ~v7) + *(*(v6 - 8) + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)), v6);
}

uint64_t sub_1A419AF44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A419AFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A419B00C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  sub_1A524B974();
  return sub_1A524B904();
}

void sub_1A419B0DC()
{
  if (!qword_1EB133E38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133E38);
    }
  }
}

uint64_t sub_1A419B138(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A419B518(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A419B19C()
{
  result = qword_1EB133E48;
  if (!qword_1EB133E48)
  {
    sub_1A419B7FC(255, &qword_1EB133E28, &qword_1EB133E30, sub_1A419B0DC, &qword_1EB133E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E48);
  }

  return result;
}

uint64_t sub_1A419B220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A419B2A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1A419B300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1A419B380(uint64_t a1)
{
  result = sub_1A419B3A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A419B3A8()
{
  result = qword_1EB1AC8C0[0];
  if (!qword_1EB1AC8C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1AC8C0);
  }

  return result;
}

unint64_t sub_1A419B400()
{
  result = qword_1EB133E50;
  if (!qword_1EB133E50)
  {
    sub_1A419B9F4(255, &qword_1EB133E58, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E50);
  }

  return result;
}

unint64_t sub_1A419B478()
{
  result = qword_1EB1ACA50[0];
  if (!qword_1EB1ACA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1ACA50);
  }

  return result;
}

unint64_t sub_1A419B4CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524E824();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1A419B518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A419B57C(uint64_t a1)
{
  if (!qword_1EB133E68)
  {
    sub_1A419B610(255);
    sub_1A419B6C0(255, &qword_1EB128720, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133E68);
    }
  }
}

void sub_1A419B610(uint64_t a1)
{
  if (!qword_1EB133E70)
  {
    v2 = sub_1A419B66C();
    v4 = type metadata accessor for LemonadeSegmentedControl(a1, &type metadata for PreviewItem, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB133E70);
    }
  }
}

unint64_t sub_1A419B66C()
{
  result = qword_1EB1ACB60[0];
  if (!qword_1EB1ACB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1ACB60);
  }

  return result;
}

void sub_1A419B6C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E6981148], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A419B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A419B774(uint64_t a1)
{
  sub_1A419B7FC(0, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A419B7FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A419B518(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A419B138(a5, a3, a4, v9);
    v10 = sub_1A524B894();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A419B89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A419B904(uint64_t a1, uint64_t a2)
{
  sub_1A419B7FC(0, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A419B994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A419B9F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PreviewItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A419BA48()
{
  result = qword_1EB133E90;
  if (!qword_1EB133E90)
  {
    sub_1A419BAC8(255);
    sub_1A419BBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133E90);
  }

  return result;
}

void sub_1A419BAC8(uint64_t a1)
{
  if (!qword_1EB133E98)
  {
    sub_1A419BB28(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133E98);
    }
  }
}

void sub_1A419BB28(uint64_t a1)
{
  if (!qword_1EB133EA0)
  {
    sub_1A419B7FC(255, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
    sub_1A3E73A2C(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB133EA0);
    }
  }
}

unint64_t sub_1A419BBBC()
{
  result = qword_1EB133EA8;
  if (!qword_1EB133EA8)
  {
    sub_1A419BB28(255);
    sub_1A419BC6C();
    sub_1A419A504(&qword_1EB128040, sub_1A3E73A2C, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133EA8);
  }

  return result;
}

unint64_t sub_1A419BC6C()
{
  result = qword_1EB133EB0;
  if (!qword_1EB133EB0)
  {
    sub_1A419B7FC(255, &qword_1EB133E78, &qword_1EB133E60, sub_1A419B57C, &qword_1EB133E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133EB0);
  }

  return result;
}

uint64_t sub_1A419BCF8()
{
  v0 = sub_1A419BDA8();
  v5 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v2 = v0;
    MEMORY[0x1A5907D70]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    v1 = v4;
  }

  sub_1A419BF78(&v5);
  return v1;
}

uint64_t sub_1A419BDA8()
{
  sub_1A419C0AC(0, &unk_1EB134160, off_1E7721310);
  if (([v0 allowsPreviewHeader] & 1) == 0 && MEMORY[0x1A590D320]())
  {
    sub_1A524C184();
  }

  return 0;
}

uint64_t sub_1A419BF78(uint64_t a1)
{
  sub_1A419C0AC(0, &qword_1EB133EB8, sub_1A419BFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A419BFF0(uint64_t a1)
{
  if (!qword_1EB133EC0)
  {
    sub_1A524C184();
  }
}

uint64_t sub_1A419C054()
{
  result = qword_1EB134170;
  if (!qword_1EB134170)
  {
    sub_1A524C184();
  }

  return result;
}

void sub_1A419C0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1A419C100()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    aBlock[4] = sub_1A40178A4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_115;
    v2 = _Block_copy(aBlock);
    [v1 performChanges_];
    _Block_release(v2);
  }
}

unint64_t sub_1A419C1CC()
{
  result = qword_1EB12AC38;
  if (!qword_1EB12AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AC38);
  }

  return result;
}

uint64_t sub_1A419C220@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

BOOL sub_1A419C230(uint64_t *a1, uint64_t *a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  sub_1A419C1CC();
  sub_1A524C9C4();
  sub_1A524C9C4();
  return v4 == v3;
}

uint64_t sub_1A419C2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  return sub_1A3C34460(a3, a4 + 24);
}

id sub_1A419C314(void *a1)
{
  result = [a1 containerCollection];
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1A419C37C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 container])
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      *a2 = result;
      v5 = 2;
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 container])
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      *a2 = result;
      v5 = 3;
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  result = [a1 containerCollection];
  if (result)
  {
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      result = [v6 px_isFeaturedPhotosCollection];
      if (!result)
      {
        *a2 = v7;
        *(a2 + 8) = 0;
        return result;
      }
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = 0;
  v5 = -1;
LABEL_14:
  *(a2 + 8) = v5;
  return result;
}

void sub_1A419C4B8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v3 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
  if (v3)
  {
    v4 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = objc_opt_self();
    v7 = v3;
    v8 = [v6 currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v15.receiver = v1;
      v15.super_class = ObjectType;
      objc_msgSendSuper2(&v15, sel_safeAreaInsets);
      sub_1A524D1D4();
    }

    v10 = v7;
    [v1 bounds];
    [v10 setFrame_];
  }
}

id sub_1A419C76C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A41A96F4(a1, v3 + OBJC_IVAR____TtCC12PhotosUICore23PhotosDynamicHeaderView8UserData_configuration);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A41A972C(a1);
  return v4;
}

id sub_1A419C7E0@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  a1[3] = type metadata accessor for PhotosDynamicHeaderView.UserData(a2, a3);
  *a1 = v5;

  return v5;
}

uint64_t sub_1A419C968()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_userData;
  v2 = swift_beginAccess();
  if (*&v0[v1] && (type metadata accessor for PhotosDynamicHeaderView.UserData(v2, v3), (v4 = swift_dynamicCastClass()) != 0))
  {
    sub_1A41A96F4(v4 + OBJC_IVAR____TtCC12PhotosUICore23PhotosDynamicHeaderView8UserData_configuration, v48);
  }

  else
  {
    memset(v48, 0, sizeof(v48));
  }

  v5 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_configuration;
  swift_beginAccess();
  sub_1A41AB3F8(&v0[v5], v47, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  swift_beginAccess();
  sub_1A41AC610(v48, &v0[v5], &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration, MEMORY[0x1E69E6720], sub_1A41ACB80);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_configuration;
  swift_beginAccess();
  sub_1A41AB3F8(&v0[v6], &v57, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  sub_1A41AB3F8(v47, v59, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (!v57)
  {
    if (!*&v59[0])
    {
      sub_1A41AA7D0(&v57, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
      goto LABEL_43;
    }

    goto LABEL_12;
  }

  sub_1A41AB3F8(&v57, &v53, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (!*&v59[0])
  {
    sub_1A41A972C(&v53);
LABEL_12:
    sub_1A41AC4E8(&v57, sub_1A41AC548);
    goto LABEL_13;
  }

  v49 = v59[0];
  v50 = v59[1];
  v51 = v59[2];
  v52 = v59[3];
  v7 = sub_1A41A93B0(&v53, &v49);
  sub_1A41A972C(&v49);
  sub_1A41A972C(&v53);
  sub_1A41AA7D0(&v57, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (v7)
  {
    goto LABEL_43;
  }

LABEL_13:
  sub_1A41AB3F8(&v0[v6], &v53, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  if (v53)
  {
    v57 = v53;
    v58[0] = v54;
    v58[1] = v55;
    v58[2] = v56;
    v8 = [v53 fullscreenOverlayControllers];
    if (v8)
    {

      v9 = BYTE8(v57);
      v10 = *&v58[0];
      v11 = v57;
      sub_1A49107E4(v10, v12, &v53);
      v13 = v53;
      v14 = BYTE8(v53);
      v15 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView;
      v16 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
      if (v16)
      {
        v17 = v16 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v46 = *v17;
        swift_unknownObjectRetain();
        if (v18)
        {
          *&v53 = v18;
          *(&v53 + 1) = v19;
          *&v54 = v20;
          BYTE8(v54) = v21;
          if (v11)
          {
            *&v49 = v11;
            BYTE8(v49) = v9;
            *&v50 = v13;
            BYTE8(v50) = v14;
            swift_unknownObjectRetain();
            v22 = v11;
            v45 = v14;
            v23 = v11;
            v24 = v9;
            v9 = v22;
            sub_1A41AC684(v18, v19, v20);
            v44 = sub_1A41AA388(&v53, &v49);

            LOBYTE(v9) = v24;
            v11 = v23;
            v14 = v45;
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            sub_1A41AC5D0(v18, v19, v20);
            if ((v44 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_32:
            v34 = *&v0[v15];
            if (v34)
            {
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          swift_unknownObjectRetain();
          sub_1A41AC684(v18, v19, v20);

          swift_unknownObjectRelease();
          goto LABEL_35;
        }
      }

      else
      {
        v20 = 0;
        v19 = 0;
      }

      swift_unknownObjectRetain();
      if (!v11)
      {
        sub_1A41AC5D0(0, v19, v20);
        goto LABEL_32;
      }

      v33 = v11;
      v18 = 0;
LABEL_35:
      sub_1A41AC5D0(v18, v19, v20);
      sub_1A41AC5D0(v11, v9, v13);
LABEL_36:
      v35 = *&v0[v15];
      *&v0[v15] = 0;
      if (v35)
      {
        [v35 removeFromSuperview];
        v36 = *&v0[v15];
        if (v36)
        {
          v37 = v14;
          v38 = v11;
          v39 = v9;
          v9 = v36;
          [v0 addSubview_];
          [v0 setNeedsLayout];

          LOBYTE(v9) = v39;
          v11 = v38;
          v14 = v37;
        }

        v34 = *&v0[v15];
        if (v34)
        {
LABEL_40:
          sub_1A3C341C8(v58 + 8, &v53);
          v41 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets;
          swift_beginAccess();
          sub_1A3C5DA30(v34 + v41, &v49, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
          swift_beginAccess();
          v42 = v34;
          sub_1A41AC610(&v53, v34 + v41, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
          swift_endAccess();
          sub_1A419E1B0(&v49);
        }
      }

LABEL_41:
      *&v53 = v11;
      BYTE8(v53) = v9;
      *&v54 = v13;
      BYTE8(v54) = v14;
      objc_allocWithZone(type metadata accessor for PhotosDynamicHeaderContentView(0));
      swift_unknownObjectRetain();
      v40 = v11;
      sub_1A419D554(&v53);
    }

    v29 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView;
    v30 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
    *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView] = 0;
    if (v30)
    {
      [v30 removeFromSuperview];
      v31 = *&v0[v29];
      if (v31)
      {
        v32 = v31;
        [v0 addSubview_];
        [v0 setNeedsLayout];
      }
    }

    sub_1A41A972C(&v57);
  }

  else
  {
    sub_1A41AA7D0(&v53, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
    v25 = OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView;
    v26 = *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView];
    *&v0[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView] = 0;
    if (v26)
    {
      [v26 removeFromSuperview];
      v27 = *&v0[v25];
      if (v27)
      {
        v28 = v27;
        [v0 addSubview_];
        [v0 setNeedsLayout];
      }
    }
  }

LABEL_43:
  sub_1A41AA7D0(v47, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
  return sub_1A41AA7D0(v48, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration);
}

id sub_1A419D400(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_configuration];
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  *&v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_contentView] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_userData] = 0;
  v5 = &v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_clippingRect];
  *v5 = 0u;
  v5[1] = 0u;
  v1[OBJC_IVAR____TtC12PhotosUICore23PhotosDynamicHeaderView_isFloating] = 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_1A419E1B0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets);
  swift_beginAccess();
  v4 = v3[3];
  if (v4)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    *(&v25 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v24);
    sub_1A524E424();
    (*(v6 + 8))(v9, v4);
    v10 = *(&v25 + 1);
    v11 = AssociatedConformanceWitness;
    v12 = __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
    *(&v28 + 1) = v10;
    v29 = *(v11 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
    __swift_destroy_boxed_opaque_existential_0(&v24);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  sub_1A3C5DA30(a1, v22, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v22, v23);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_1A524E424();
    v14 = AssociatedTypeWitness;
    v15 = v21;
    v16 = __swift_project_boxed_opaque_existential_1(v19, AssociatedTypeWitness);
    *(&v25 + 1) = v14;
    AssociatedConformanceWitness = *(v15 + 8);
    v17 = __swift_allocate_boxed_opaque_existential_1(&v24);
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    __swift_destroy_boxed_opaque_existential_0(v19);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    sub_1A41AB614(v22, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
    v24 = 0u;
    v25 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_1A5246794();
}

id sub_1A419E648(id result)
{
  v2 = &v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding];
  v3 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding];
  v4 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding + 16];
  v5 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding + 32];
  v6 = *(result + 1);
  *v2 = *result;
  *(v2 + 1) = v6;
  v7 = *(result + 32);
  v2[32] = v7;
  if (v7)
  {
    if (v5)
    {
      return result;
    }

    return [v1 setNeedsLayout];
  }

  if (v5)
  {
    return [v1 setNeedsLayout];
  }

  v4 = vceqq_f64(*(result + 1), v4);
  *&v3.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(*result, v3), v4));
  LOWORD(v3.f64[0]) = vminv_u16(*&v3.f64[0]);
  if ((LOBYTE(v3.f64[0]) & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1A419E6B0(uint64_t a1)
{
  if ((a1 & 0x1000) == 0)
  {
    goto LABEL_11;
  }

  v3 = [*&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel] appearState];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 1;
LABEL_10:
      sub_1A419E868(v4);
      goto LABEL_11;
    }

    if (v3 != 3)
    {
LABEL_21:
      type metadata accessor for PXViewControllerAppearState(0);
      sub_1A524EB44();
      __break(1u);
      return;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 != 1)
  {
    goto LABEL_21;
  }

LABEL_11:
  if ((a1 & 0x2000000000000) == 0 || !sub_1A419F578(1, 0))
  {
LABEL_16:
    if ((a1 & 0x800000000000) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

  v7 = v5;

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 viewModel];
    swift_unknownObjectRelease();
    if (v9)
    {
      v11[4] = sub_1A41ACC14;
      v11[5] = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1A3D59380;
      v11[3] = &block_descriptor_338;
      v10 = _Block_copy(v11);
      [v9 performChanges_];
      _Block_release(v10);
    }

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  if ((a1 & 0x800000000000) != 0)
  {
LABEL_17:
    [v1 setNeedsLayout];
  }
}

uint64_t sub_1A419E868(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear);
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear) = result;
  if (v2 != (result & 1))
  {
    v3 = ([*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationState) visibilityState] != 3) & result;
    if (sub_1A419F578(1, 0))
    {
      v6 = v4;

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = [v7 viewModel];
        swift_unknownObjectRelease();
        if (v8)
        {
          v9 = [v8 isPerformingAnyExportOperation];

          v3 = (v9 ^ 1) & v3;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return sub_1A419E980(v3);
  }

  return result;
}

uint64_t sub_1A419E980(uint64_t result)
{
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive;
  v3 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive];
  v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive] = result;
  if (v3 != (result & 1))
  {
    result = [v1 setNeedsLayout];
    if (v1[v2] != 1)
    {
      if (sub_1A419F578(0, 0))
      {
        v7 = v4;
        v8 = v5;

        ObjectType = swift_getObjectType();
        (*(v7 + 48))(0, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      result = sub_1A419F578(1, 0);
      if (result)
      {
        v13 = v10;
        v14 = v11;

        v15 = swift_getObjectType();
        (*(v13 + 48))(0, v15, v13);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1A419F484()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___allowedMovieChromeItems);
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___allowedMovieChromeItems + 8) != 1)
  {
    return *v1;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 movieCurationAffordance];

  if (v3 == 1)
  {
    result = 3158227968;
  }

  else
  {
    result = 3024010240;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_1A419F530()
{
  if (*v0)
  {
    return 0x6569766F4DLL;
  }

  else
  {
    return 0x77656976657250;
  }
}

uint64_t sub_1A419F578(char a1, char a2)
{
  v3 = v2;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 enableSolariumDetailsView];

  if (v7 && (a1 & 1) != 0)
  {
    if (qword_1EB15B6F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1A5246F24();
    __swift_project_value_buffer(v8, qword_1EB15B6F8);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "unexpectedly attempting to load movie", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    return 0;
  }

  v12 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_storyContentsByKind;
  swift_beginAccess();
  v13 = *(v3 + v12);
  if (!*(v13 + 16) || (v14 = sub_1A3C345C4(a1 & 1), (v15 & 1) == 0))
  {
    if (a2)
    {
      sub_1A419EAA8((a1 & 1));
    }

    return 0;
  }

  v16 = *(v13 + 56) + 32 * v14;
  v17 = *v16;
  v18 = *(v16 + 24);
  v19 = *(v16 + 16);
  v20 = v18;
  swift_unknownObjectRetain();
  return v17;
}

uint64_t sub_1A419F8BC()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_storyContentsByKind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v21 = *(v0 + v1);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(v21 + 56) + ((v12 << 11) | (32 * __clz(__rbit64(v8)))));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      ObjectType = swift_getObjectType();
      v22 = *(v15 + 40);
      v23 = ObjectType;
      v19 = v16;
      v20 = v17;
      swift_unknownObjectRetain();
      if (v22(v23, v15))
      {
        break;
      }

      v8 &= v8 - 1;

      result = swift_unknownObjectRelease();
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return 0;
      }

      v8 = *(v4 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

double sub_1A419FA80(uint64_t a1)
{
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
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

  sub_1A3EA52F4(0, 0, v3, &unk_1A53221D0, v8);

  return result;
}

uint64_t sub_1A419FC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A419FCB8, v6, v5);
}

uint64_t sub_1A419FCB8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong setNeedsLayout];
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_1A419FDFC()
{
  v1 = v0;
  v2 = sub_1A5247CF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v161 - v7;
  v9 = sub_1A52425F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v173 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v161 - v13;
  v15 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets;
  swift_beginAccess();
  sub_1A3C5DA30(&v1[v15], &aBlock, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
  if (!v177)
  {
    sub_1A41AB614(&aBlock, &qword_1EB12AC08, &qword_1EB12AC10, &protocol descriptor for PhotosDynamicHeaderInsets, sub_1A3E792C4);
    return;
  }

  v170 = v8;
  v167 = v5;
  v168 = v3;
  v169 = v2;
  sub_1A3C34460(&aBlock, v180);
  v16 = [v1 bounds];
  v17 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_overlayController];
  v18 = *(*v17 + 152);
  v172 = v19;
  v171 = v20;
  v18(v16, v19, v20);
  v21 = v181;
  v22 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v23 = (*(v22 + 24))(v21, v22);
  (*(*v17 + 176))(v23);
  v24 = v181;
  v25 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v26 = (*(v25 + 32))(v24, v25);
  (*(*v17 + 200))(v26);
  v27 = v181;
  v28 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v29 = (*(v28 + 40))(v27, v28);
  (*(*v17 + 224))(v29);
  v30 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 8];
  LOBYTE(v27) = [objc_opt_self() isReduceTransparencyEnabled];
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v31 = [swift_getObjCClassFromMetadata() sharedInstance];
  v32 = [v31 enableSolariumDetailsView];

  if (v27)
  {
    v33 = v30;
    (*(*v17 + 248))(0);
  }

  else
  {
    v33 = v30;
    v35 = v30 == 0;
    v36 = v32 ^ 1;
    if (v35)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    (*(*v17 + 248))(v37);
    v38 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel];
    v39 = [v38 currentDataSource];
    v40 = [v39 containsAnyItems];

    if ((v40 & 1) != 0 || (v41 = [v1 traitCollection], v42 = objc_msgSend(v41, sel_userInterfaceStyle), v41, v42 == 2))
    {
      v34 = ([v38 allowsPreviewHeader] | v36) & (v33 == 0);
      goto LABEL_12;
    }
  }

  v34 = 0;
LABEL_12:
  v43 = (*(*v17 + 272))(v34);
  v44 = (*(*v17 + 288))(v43);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = (*(*v17 + 296))();
  v52 = v51;
  if (v51 <= 0.0)
  {
    v53 = v181;
    v54 = v182;
    __swift_project_boxed_opaque_existential_1(v180, v181);
    (*(v54 + 40))(v53, v54);
    v51 = 0.0;
    if (v55 >= 0.0)
    {
      v51 = 1.0 - v48 / v55;
    }
  }

  v56 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model];
  *&aBlock = v51;
  BYTE8(aBlock) = v52 <= 0.0;
  (*(*v56 + 304))(&aBlock);
  v57 = (*(*v56 + 328))(1);
  v58 = 0.0;
  if (MEMORY[0x1A590D320](v57))
  {
    v59 = v181;
    v60 = v182;
    __swift_project_boxed_opaque_existential_1(v180, v181);
    (*(v60 + 24))(v59, v60);
    v62 = v61;
    v63 = v181;
    v64 = v182;
    __swift_project_boxed_opaque_existential_1(v180, v181);
    (*(v64 + 32))(v63, v64);
    if (v62 - v65 <= 0.0)
    {
      v58 = v62 - v65;
    }

    else
    {
      v58 = 0.0;
    }
  }

  [v1 bounds];
  v185.origin.x = UIEdgeInsetsInsetRect(v66, v67, v68, v69, v44, v46);
  v186 = CGRectOffset(v185, 0.0, v58);
  v71 = *MEMORY[0x1E69DDCE0];
  v72 = *(MEMORY[0x1E69DDCE0] + 8);
  v73 = *(MEMORY[0x1E69DDCE0] + 16);
  v74 = *(MEMORY[0x1E69DDCE0] + 24);
  v75 = v44 == *MEMORY[0x1E69DDCE0];
  if (v46 != v72)
  {
    v75 = 0;
  }

  if (v48 != v73)
  {
    v75 = 0;
  }

  y = v186.origin.y;
  height = v186.size.height;
  v78 = v75 && v50 == v74;
  if (v78)
  {
    v79 = -1;
  }

  else
  {
    v79 = 0;
  }

  v80 = vdupq_n_s64(v79);
  v183[0] = vbicq_s8(v186.origin, v80);
  v183[1] = vbicq_s8(v186.size, v80);
  v184 = v78 & 1;
  LODWORD(v81) = v33;
  if (!v33)
  {
    (*(*v56 + 464))();
    v82 = sub_1A52425C4();
    v83 = sub_1A419F578(0, v82 & 1);
    v165 = v9;
    if (v83)
    {
      v87 = v84;
      v163 = v85;
      v164 = 0;
      v166 = v10;
      v88 = v86;
      [v1 bounds];
      [v88 setFrame_];
      [v88 setAlpha_];
      ObjectType = swift_getObjectType();
      v90 = *(v87 + 24);
      swift_unknownObjectRetain();
      v90(v183, ObjectType, v87);
      if ((sub_1A52425E4() & 1) != 0 && v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive] == 1)
      {
        sub_1A5243304();
        sub_1A52427D4();

        v91 = v168;
        v92 = v167;
        (*(v168 + 104))(v167, *MEMORY[0x1E697BE38], v169);
        v93 = sub_1A5247CE4();
        v162 = v14;
        v94 = *(v91 + 8);
        v95 = v92;
        v96 = v169;
        v94(v95, v169);
        v94(v170, v96);
        v14 = v162;
      }

      else
      {
        v93 = 0;
      }

      v9 = v165;
      LODWORD(v81) = v164;
      (*(v87 + 48))(v93 & 1, ObjectType, v87);
      swift_unknownObjectRelease_n();

      v10 = v166;
    }

    v99 = *(v10 + 8);
    v98 = v10 + 8;
    v97 = v99;
    v100 = v99(v14, v9);
    v101 = (*(*v56 + 512))(v100);
    v102 = v173;
    (*(*v56 + 560))();
    v103 = sub_1A52425C4();
    if (sub_1A419F578(1, v103 & 1))
    {
      v107 = v104;
      v162 = v105;
      v163 = v97;
      v166 = v98;
      v108 = v106;
      [v1 bounds];
      [v108 setFrame_];
      [v108 setAlpha_];
      v109 = swift_getObjectType();
      v110 = *(v107 + 24);
      swift_unknownObjectRetain();
      v110(v183, v109, v107);
      v102 = v173;
      if ((sub_1A52425E4() & 1) != 0 && v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive] == 1)
      {
        sub_1A5243304();
        sub_1A52427D4();

        v111 = *MEMORY[0x1E697BE38];
        v164 = v81;
        v81 = v168;
        v112 = v167;
        v113 = v169;
        (*(v168 + 104))(v167, v111, v169);
        v114 = sub_1A5247CE4();
        v115 = *(v81 + 8);
        v115(v112, v113);
        v116 = v113;
        v102 = v173;
        v115(v170, v116);
        LOBYTE(v81) = v164;
      }

      else
      {
        v114 = 0;
      }

      v9 = v165;
      (*(v107 + 48))(v114 & 1, v109, v107);
      swift_unknownObjectRelease_n();

      v97 = v163;
    }

    v70 = (v97)(v102, v9);
  }

  if ((*(*v56 + 416))(v70))
  {
    LOBYTE(aBlock) = v81;
    v174 = 1;
    sub_1A41ABE60();
    v117 = sub_1A524C594() ^ 1;
  }

  else
  {
    v117 = 0;
  }

  v118 = (*(*v56 + 608))();
  if (sub_1A419F578(1, 0))
  {
    v121 = v119;

    objc_opt_self();
    v122 = swift_dynamicCastObjCClass();
    v123 = v122;
    if (v122)
    {
      [v122 setDisableGestures_];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v123 = 0;
  }

  v124 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel];
  v125 = swift_allocObject();
  *(v125 + 16) = v117 & 1;
  *(v125 + 24) = v1;
  *(v125 + 32) = v118;
  *(v125 + 40) = v123;
  v178 = sub_1A41AB674;
  v179 = v125;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v176 = COERCE_DOUBLE(sub_1A3D7692C);
  v177 = &block_descriptor_316;
  v126 = _Block_copy(&aBlock);
  v127 = v123;
  v128 = v1;

  [v124 performChanges_];
  _Block_release(v126);
  v129 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_playbackOverlayController];
  if (v129)
  {
    if (v117)
    {
      v130 = sub_1A41A1A4C();
    }

    else
    {
      v130 = 0;
    }

    (*(*v129 + 152))(v130 & 1);
  }

  v131 = v181;
  v132 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v133 = (*(v132 + 32))(v131, v132);
  v135 = v134;
  *&aBlock = v133;
  *(&aBlock + 1) = v136;
  v177 = v137;
  v138 = v181;
  v139 = v182;
  __swift_project_boxed_opaque_existential_1(v180, v181);
  v140 = (*(v139 + 48))(v138, v139);
  v176 = v135 - v141;
  v142 = &v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding];
  if ((v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding + 32] & 1) == 0)
  {
    v143 = *(v142 + 3);
    *(&aBlock + 1) = *(v142 + 1);
    v177 = v143;
  }

  MEMORY[0x1EEE9AC00](v140);
  *(&v161 - 6) = v128;
  *(&v161 - 40) = v117 & 1;
  *(&v161 - 4) = &aBlock;
  v144 = v171;
  *(&v161 - 3) = v172;
  *(&v161 - 2) = v144;
  *(&v161 - 1) = v118;
  sub_1A4016ABC(sub_1A41ABDF0);
  v145 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_overlayViewController];
  v146 = UIViewController.pxView.getter();
  [v128 bounds];
  [v146 setFrame_];
  v147 = [v145 parentViewController];
  if (!v147)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_59;
    }

    v149 = Strong;
    [Strong addChildViewController_];
    [v128 addSubview_];
    [v145 didMoveToParentViewController_];
    v147 = v149;
  }

LABEL_59:
  v150 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_movieStoryViewController];
  if (v150)
  {
    v151 = v150;
    v152 = [v151 navigationController];
    if (v152)
    {
      v153 = v152;
      v154 = [v152 view];

      if (!v154)
      {
        __break(1u);
        return;
      }

      [v154 safeAreaInsets];
      v71 = v155;
      v72 = v156;
      v73 = v157;
      v74 = v158;
    }

    [v151 setAdditionalSafeAreaInsets_];
  }

  v159 = *&v128[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_previewHeaderContentView];
  if (v159)
  {
    v160 = v159;
    [v160 setHidden_];
  }

  __swift_destroy_boxed_opaque_existential_0(v180);
}

BOOL sub_1A41A1008(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] != 3)
  {
    return 0;
  }

  [a1 locationInView_];
  v37.value.super.isa = 0;
  if (!UIView.point(inside:withEvent:)(__PAIR128__(v10, v9), v37))
  {
    return 0;
  }

  if ((*(**(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 416))())
  {
    if (sub_1A419F578(1, 0))
    {
      v13 = v11;

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 viewModel];
        swift_unknownObjectRelease();
        if (v15)
        {
          v35 = sub_1A41A1600;
          v36 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v32 = 1107296256;
          v33 = sub_1A3D59380;
          v34 = &block_descriptor_310;
          v16 = _Block_copy(&aBlock);
          [v15 performChanges_];

          _Block_release(v16);
          return 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (qword_1EB1579C0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EB1579C8;
    sub_1A5246F34();
    v25 = sub_1A5246F04();
    v26 = sub_1A524D244();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v27 = 136315138;
      sub_1A3C2EF94(0xD00000000000001FLL, 0x80000001A53CB270, &aBlock);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  v18 = sub_1A41A169C();
  if (v18 == 2)
  {
    return 1;
  }

  if ((v18 & 1) == 0)
  {
    v22 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel);
    v35 = sub_1A41A14F8;
    v36 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1A3D7692C;
    v34 = &block_descriptor_307;
    v23 = _Block_copy(&aBlock);
    [v22 performChanges_];
    _Block_release(v23);
    return 1;
  }

  v19 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_previewHeaderContentView);
  if (!v19)
  {
    if (qword_1EB15B6F0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_1EB15B6F8);
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1A3C1C000, v28, v29, "can't navigate to 1-up because header isn't displaying any asset", v30, 2u);
      MEMORY[0x1A590EEC0](v30, -1, -1);
    }

    return 0;
  }

  v20 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel);
  v21 = v19;
  LOBYTE(v20) = sub_1A48E15E0(v20);

  return (v20 & 1) != 0;
}

id sub_1A41A1600(void *a1)
{
  v2 = [a1 wantsChromeVisible] ^ 1;

  return [a1 setWantsChromeVisible_];
}

uint64_t sub_1A41A169C()
{
  (*(**(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 296))(&v4);
  if ((v5 & 1) == 0 && v4 > 0.001)
  {
    return 2;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v2 enableSolariumDetailsView];

  return v1;
}

void sub_1A41A176C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosDynamicHeaderContentView(0);
  objc_msgSendSuper2(&v3, sel_willMoveToWindow_, a1);
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A41A1970()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    if ([v5 viewMode] == 2 && objc_msgSend(v5, sel_isInSelectMode))
    {

      return 0;
    }

    v6 = [v5 wantsChromeVisible];

    return v6;
  }

  return result;
}

id sub_1A41A1A4C()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v4 = v2;

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 viewModel];
      swift_unknownObjectRelease();
      if (v6)
      {
        if (([v6 chromeItemsToBeDisplayedExternally] & 4) != 0)
        {
          v7 = [*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModel) currentDataSource];
          v8 = [v7 containsAnyItems];

          return v8;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

__n128 sub_1A41A1B3C()
{
  if (!sub_1A419F578(1, 0))
  {
    return result;
  }

  v3 = v0;

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return result;
  }

  v5 = [v4 viewModel];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return result;
  }

  if (([v5 chromeItemsToBeDisplayedExternally] & 0x200) != 0)
  {
    v7 = sub_1A41A328C();
    v8 = sub_1A3C5A374();
    PhotosBarButtonItem.init(id:customView:alwaysVisible:accessibilityIdentifier:)(0xD00000000000001DLL, 0x80000001A53CB230, v7, v8 & 1, 0xD00000000000001DLL, 0x80000001A53CB250, &v26);
    v9 = sub_1A41A8B08(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1A41A8B08((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v6 = v9;
    v12 = &v9[104 * v11];
    v13 = v31;
    *(v12 + 6) = v30;
    *(v12 + 7) = v13;
    *(v12 + 16) = v32;
    v14 = v27;
    *(v12 + 2) = v26;
    *(v12 + 3) = v14;
    v15 = v29;
    *(v12 + 4) = v28;
    *(v12 + 5) = v15;
    if (!MEMORY[0x1A590D320]())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!MEMORY[0x1A590D320]())
    {
      goto LABEL_16;
    }
  }

  v16 = [v5 viewMode];
  if (v16 == 2)
  {
    if (([v5 chromeItems] & 0x20000) != 0)
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0x747475426B636162, 0xEA00000000006E6FLL, 0xD000000000000010, 0x80000001A53CB1B0, 1, 0x747475426B636142, 0xEA00000000006E6FLL, sub_1A41AB478, &v26, v18);
      goto LABEL_18;
    }

LABEL_16:

    return result;
  }

  if (v16 != 4)
  {
    goto LABEL_16;
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000013, 0x80000001A53CB1D0, 0xD000000000000016, 0x80000001A53CB1F0, 1, 0xD000000000000015, 0x80000001A53CB210, sub_1A41AB498, &v26, v17);
LABEL_18:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1A41A8B08(0, *(v6 + 2) + 1, 1, v6);
  }

  v20 = *(v6 + 2);
  v19 = *(v6 + 3);
  if (v20 >= v19 >> 1)
  {
    v6 = sub_1A41A8B08((v19 > 1), v20 + 1, 1, v6);
  }

  *(v6 + 2) = v20 + 1;
  v21 = &v6[104 * v20];
  v22 = v26;
  v23 = v28;
  *(v21 + 3) = v27;
  *(v21 + 4) = v23;
  *(v21 + 2) = v22;
  result = v29;
  v24 = v30;
  v25 = v31;
  *(v21 + 16) = v32;
  *(v21 + 6) = v24;
  *(v21 + 7) = v25;
  *(v21 + 5) = result;
  return result;
}

id sub_1A41A1EEC(void *a1)
{
  [a1 setViewMode_];

  return [a1 rewindToBeginningOfCurrentSegment];
}

char *sub_1A41A1F38()
{
  if (!sub_1A419F578(1, 0))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0;

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v4 = [v3 viewModel];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (sub_1A419F578(1, 0))
  {
    v7 = v5;

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 viewModel];
      swift_unknownObjectRelease();
      v10 = [v9 actionPerformer];

      if (v10)
      {
        v11 = [v4 chromeItemsToBeDisplayedExternally];
        if ((v11 & 0x40000000) != 0 && (v12 = sub_1A41A354C()) != 0)
        {
          v13 = v12;
          v14 = sub_1A3C5A374();
          PhotosBarButtonItem.init(id:customView:alwaysVisible:accessibilityIdentifier:)(0xD000000000000013, 0x80000001A53CB170, v13, v14 & 1, 0xD000000000000013, 0x80000001A53CB190, &v89);
          v15 = sub_1A41A8B08(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v17 = *(v15 + 2);
          v16 = *(v15 + 3);
          if (v17 >= v16 >> 1)
          {
            v15 = sub_1A41A8B08((v16 > 1), v17 + 1, 1, v15);
          }

          *(v15 + 2) = v17 + 1;
          v18 = &v15[104 * v17];
          v19 = v94;
          *(v18 + 6) = v93;
          *(v18 + 7) = v19;
          *(v18 + 16) = v95;
          v20 = v90;
          *(v18 + 2) = v89;
          *(v18 + 3) = v20;
          v21 = v92;
          *(v18 + 4) = v91;
          *(v18 + 5) = v21;
          if ((v11 & 0x1000000) == 0)
          {
LABEL_12:
            if ((v11 & 0x10000) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v15 = MEMORY[0x1E69E7CC0];
          if ((v11 & 0x1000000) == 0)
          {
            goto LABEL_12;
          }
        }

        if ([v4 isMuted])
        {
          v22 = 0xED00006873616C73;
        }

        else
        {
          v22 = 0xEE00322E65766177;
        }

        v23 = swift_allocObject();
        *(v23 + 16) = v10;
        swift_unknownObjectRetain();
        PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000010, 0x80000001A53CB130, 0x2E72656B61657073, v22, 1, 0xD000000000000010, 0x80000001A53CB150, sub_1A41AB3E8, &v89, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
        }

        v25 = *(v15 + 2);
        v24 = *(v15 + 3);
        if (v25 >= v24 >> 1)
        {
          v15 = sub_1A41A8B08((v24 > 1), v25 + 1, 1, v15);
        }

        *(v15 + 2) = v25 + 1;
        v26 = &v15[104 * v25];
        v27 = v89;
        v28 = v91;
        *(v26 + 3) = v90;
        *(v26 + 4) = v28;
        *(v26 + 2) = v27;
        v29 = v92;
        v30 = v93;
        v31 = v94;
        *(v26 + 16) = v95;
        *(v26 + 6) = v30;
        *(v26 + 7) = v31;
        *(v26 + 5) = v29;
        if ((v11 & 0x10000) == 0)
        {
LABEL_13:
          if ((sub_1A419F484() & 0x2000000) == 0)
          {
LABEL_38:
            v53 = [objc_opt_self() isMemoryCreationButtonInWatchNextEnabled];
            if ((v11 & 0x100000000) != 0)
            {
              if (v53)
              {
                v54 = [v4 generativeStoryInWatchNextController];
                sub_1A524E0B4();
                swift_unknownObjectRelease();
                type metadata accessor for GenerativeStoryInWatchNextController(0);
                v53 = swift_dynamicCast();
                if (v53)
                {
                  v55 = sub_1A524C634();
                  v56 = PXMemoryCreationLocalizedString(v55);

                  v57 = sub_1A524C674();
                  v59 = v58;

                  v60 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  PhotosBarButtonItem.init(id:title:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000014, 0x80000001A53BACB0, v57, v59, 1, 0xD000000000000032, 0x80000001A53CB070, sub_1A41AB378, &v89, v60);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
                  }

                  v62 = *(v15 + 2);
                  v61 = *(v15 + 3);
                  if (v62 >= v61 >> 1)
                  {
                    v15 = sub_1A41A8B08((v61 > 1), v62 + 1, 1, v15);
                  }

                  *(v15 + 2) = v62 + 1;
                  v63 = &v15[104 * v62];
                  v64 = v89;
                  v65 = v91;
                  *(v63 + 3) = v90;
                  *(v63 + 4) = v65;
                  *(v63 + 2) = v64;
                  v66 = v92;
                  v67 = v93;
                  v68 = v94;
                  *(v63 + 16) = v95;
                  *(v63 + 6) = v67;
                  *(v63 + 7) = v68;
                  *(v63 + 5) = v66;
                }
              }
            }

            if (!MEMORY[0x1A590D320](v53) || [v4 viewMode] != 2)
            {
              goto LABEL_55;
            }

            if (([v4 chromeItems] & 0x80000000) != 0)
            {
              v69 = swift_allocObject();
              *(v69 + 16) = v10;
              swift_unknownObjectRetain();
              PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000012, 0x80000001A53CB030, 0x72616D6B63656863, 0xE90000000000006BLL, 1, 0x73417463656C6553, 0xEC00000073746573, sub_1A41AB358, &v89, v69);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
              }

              v71 = *(v15 + 2);
              v70 = *(v15 + 3);
              if (v71 >= v70 >> 1)
              {
                v15 = sub_1A41A8B08((v70 > 1), v71 + 1, 1, v15);
              }

              *(v15 + 2) = v71 + 1;
              v72 = &v15[104 * v71];
              v73 = v89;
              v74 = v91;
              *(v72 + 3) = v90;
              *(v72 + 4) = v74;
              *(v72 + 2) = v73;
              v75 = v92;
              v76 = v93;
              v77 = v94;
              *(v72 + 16) = v95;
              *(v72 + 6) = v76;
              *(v72 + 7) = v77;
              *(v72 + 5) = v75;
            }

            if (([v4 chromeItems] & 0x20000000) != 0)
            {
              v79 = swift_allocObject();
              *(v79 + 16) = v10;
              swift_unknownObjectRetain();
              PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0x6F746F6850646461, 0xEF6E6F7474754273, 1937075312, 0xE400000000000000, 1, 0x7465737341646441, 0xE900000000000073, sub_1A41AB338, &v89, v79);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
              }

              v81 = *(v15 + 2);
              v80 = *(v15 + 3);
              if (v81 >= v80 >> 1)
              {
                v15 = sub_1A41A8B08((v80 > 1), v81 + 1, 1, v15);
              }

              swift_unknownObjectRelease();

              *(v15 + 2) = v81 + 1;
              v82 = &v15[104 * v81];
              v83 = v89;
              v84 = v91;
              *(v82 + 3) = v90;
              *(v82 + 4) = v84;
              *(v82 + 2) = v83;
              v85 = v92;
              v86 = v93;
              v87 = v94;
              *(v82 + 16) = v95;
              *(v82 + 6) = v86;
              *(v82 + 7) = v87;
              *(v82 + 5) = v85;
            }

            else
            {
LABEL_55:

              swift_unknownObjectRelease();
            }

            return v15;
          }

LABEL_31:
          sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
          v41 = [swift_getObjCClassFromMetadata() sharedInstance];
          v42 = [v41 centralizedFeedbackUI];

          if (!v42)
          {
            v43 = sub_1A41A37D4(0);
            if (v43)
            {
              v44 = v43;
              PhotosBarButtonItem.init(id:customView:alwaysVisible:accessibilityIdentifier:)(0xD000000000000015, 0x80000001A53CB0B0, v44, 0, 0xD000000000000018, 0x80000001A53CB0D0, &v89);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
              }

              v46 = *(v15 + 2);
              v45 = *(v15 + 3);
              if (v46 >= v45 >> 1)
              {
                v15 = sub_1A41A8B08((v45 > 1), v46 + 1, 1, v15);
              }

              *(v15 + 2) = v46 + 1;
              v47 = &v15[104 * v46];
              v48 = v89;
              v49 = v91;
              *(v47 + 3) = v90;
              *(v47 + 4) = v49;
              *(v47 + 2) = v48;
              v50 = v92;
              v51 = v93;
              v52 = v94;
              *(v47 + 16) = v95;
              *(v47 + 6) = v51;
              *(v47 + 7) = v52;
              *(v47 + 5) = v50;
            }
          }

          goto LABEL_38;
        }

LABEL_26:
        v32 = swift_allocObject();
        *(v32 + 16) = v10;
        swift_unknownObjectRetain();
        PhotosBarButtonItem.init(id:symbolName:alwaysVisible:accessibilityIdentifier:action:)(0xD000000000000014, 0x80000001A53CB0F0, 0x74616D616C637865, 0xEF6B72616D6E6F69, 1, 0xD000000000000014, 0x80000001A53CB110, sub_1A41AB3C8, &v89, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1A41A8B08(0, *(v15 + 2) + 1, 1, v15);
        }

        v34 = *(v15 + 2);
        v33 = *(v15 + 3);
        if (v34 >= v33 >> 1)
        {
          v15 = sub_1A41A8B08((v33 > 1), v34 + 1, 1, v15);
        }

        *(v15 + 2) = v34 + 1;
        v35 = &v15[104 * v34];
        v36 = v89;
        v37 = v91;
        *(v35 + 3) = v90;
        *(v35 + 4) = v37;
        *(v35 + 2) = v36;
        v38 = v92;
        v39 = v93;
        v40 = v94;
        *(v35 + 16) = v95;
        *(v35 + 6) = v39;
        *(v35 + 7) = v40;
        *(v35 + 5) = v38;
        if ((sub_1A419F484() & 0x2000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A41A29E0(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  sub_1A41AB3F8(a1, v14, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1A524EA94();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v12 = 0;
  }

  [a2 performActionForChromeActionMenuItem:a3 withValue:0 sender:v12 presentationSource:0];
  return swift_unknownObjectRelease();
}

void *sub_1A41A2B48()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 viewModel];
      swift_unknownObjectRelease();
      if (!v5)
      {
        return 0;
      }

      v6 = [v5 viewMode];
      if (v6 == 2 || v6 == 4)
      {
LABEL_6:

        return 0;
      }

      sub_1A41A1970();
      v7 = [v5 wantsRelatedOverlayVisible];

      if (v7)
      {
        return 0;
      }

      result = sub_1A419F578(1, 0);
      if (!result)
      {
        return result;
      }

      v10 = v8;

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v5 = [v11 viewModel];
        swift_unknownObjectRelease();
        if (!v5)
        {
          return 0;
        }

        if (([v5 chromeItemsToBeDisplayedExternally] & 0x200) == 0)
        {
          v12 = sub_1A41A328C();

          return v12;
        }

        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

id sub_1A41A2CA8()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 viewMode];
    if (v6 == 2 || v6 == 4)
    {
LABEL_6:

      return 0;
    }

    sub_1A41A1970();
    v7 = [v5 wantsRelatedOverlayVisible];

    if (v7)
    {
      return 0;
    }

    v8 = sub_1A41A354C();
    if (v8)
    {
      v5 = v8;
      if (!sub_1A419F578(1, 0))
      {
        goto LABEL_6;
      }

      v11 = v9;

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [v12 viewModel];
        swift_unknownObjectRelease();
        if (v13)
        {
          v14 = [v13 chromeItemsToBeDisplayedExternally];

          if ((v14 & 0x40000000) == 0)
          {
            return v5;
          }
        }

        goto LABEL_6;
      }

LABEL_17:
      swift_unknownObjectRelease();
      return 0;
    }

    result = sub_1A41A37D4(1);
    if (!result)
    {
      return sub_1A41A3218();
    }
  }

  return result;
}

id sub_1A41A2E28()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
LABEL_7:
      swift_unknownObjectRelease();
      return 0;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 viewMode];
    if (v6 == 2 || v6 == 4)
    {

      return 0;
    }

    sub_1A41A1970();
    v7 = [v5 wantsRelatedOverlayVisible];

    if (v7)
    {
      return 0;
    }

    result = sub_1A419F578(1, 0);
    if (result)
    {
      v10 = v8;

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = [v11 viewModel];
        swift_unknownObjectRelease();
        if (v12)
        {
          if (([v12 chromeItemsToBeDisplayedExternally] & 0x200) == 0)
          {
            sub_1A41ACB80(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_1A52F9790;
            *(v13 + 32) = sub_1A41A338C();

            return v13;
          }
        }

        return 0;
      }

      goto LABEL_7;
    }
  }

  return result;
}

_OWORD *sub_1A41A2FE4()
{
  result = sub_1A419F578(1, 0);
  if (result)
  {
    v3 = v1;

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = [v4 viewModel];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return 0;
    }

    v6 = [v5 viewMode];
    if (v6 == 2 || v6 == 4)
    {

      return 0;
    }

    sub_1A41A1970();
    v7 = [v5 wantsRelatedOverlayVisible];

    if (v7)
    {
      return 0;
    }

    v8 = sub_1A41A3690();
    if (v8)
    {
      v9 = v8;
      if (!sub_1A419F578(1, 0))
      {
LABEL_22:

        return 0;
      }

      v12 = v10;

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 viewModel];
        swift_unknownObjectRelease();
        if (v14)
        {
          if (([v14 chromeItemsToBeDisplayedExternally] & 0x40000000) == 0)
          {
            sub_1A41ACB80(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_1A52F9790;
            *(v15 + 32) = v9;

            return v15;
          }
        }

        goto LABEL_22;
      }

LABEL_7:
      swift_unknownObjectRelease();
      return 0;
    }

    v16 = sub_1A41A3998();
    if (v16)
    {
      v17 = v16;
      sub_1A41ACB80(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      result = swift_allocObject();
      result[1] = xmmword_1A52F9790;
      *(result + 4) = v17;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

id sub_1A41A3218()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1A41A328C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherButton);
  if (!v1)
  {
    sub_1A3C52C70(0, &qword_1EB126570, 0x1E69DC738);
    v3 = swift_allocObject();
    swift_unknownObjectUnownedInit();

    sub_1A4112CF0(0xD000000000000012, 0x80000001A53C8330, 0, 0, sub_1A41AB204, v3);
  }

  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherButton);
  v4 = v1;
  return v2;
}

id sub_1A41A338C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
    v4 = sub_1A524C634();
    v5 = [objc_opt_self() _systemImageNamed_];

    v6 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = v6;
    v7 = v0;
    sub_1A524DC64();
    v8 = sub_1A524D2F4();
    v9 = sub_1A524C634();
    [v8 setAccessibilityIdentifier_];

    v10 = *(v7 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void *sub_1A41A354C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationButton;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationButton);
  v3 = v2;
  if (v2 != 1)
  {
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 movieCurationAffordance];

  v3 = 0;
  if (v5 != 2)
  {
LABEL_7:
    v12 = *(v0 + v1);
    *(v0 + v1) = v3;
    v13 = v3;
    sub_1A3C327F4(v12);
LABEL_8:
    sub_1A3C327E4(v2);
    return v3;
  }

  result = sub_1A419F578(1, 0);
  if (result)
  {
    v9 = v7;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 viewModel];
      result = swift_unknownObjectRelease();
      if (v11)
      {
        type metadata accessor for StoryViewCurationButton(0);
        v3 = StoryViewCurationButton.__allocating_init(storyViewModel:)(v11);
        goto LABEL_7;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void *sub_1A41A3690()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationBarButtonItem);
  v3 = v2;
  if (v2 != 1)
  {
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 movieCurationAffordance];

  v3 = 0;
  if (v5 != 2)
  {
LABEL_7:
    v12 = *(v0 + v1);
    *(v0 + v1) = v3;
    v13 = v3;
    sub_1A3C327F4(v12);
LABEL_8:
    sub_1A3C327E4(v2);
    return v3;
  }

  result = sub_1A419F578(1, 0);
  if (result)
  {
    v9 = v7;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 viewModel];
      result = swift_unknownObjectRelease();
      if (v11)
      {
        type metadata accessor for StoryViewCurationBarButtonItem(0);
        v3 = StoryViewCurationBarButtonItem.__allocating_init(storyViewModel:)(v11);
        goto LABEL_7;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void *sub_1A41A37D4(char a1)
{
  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 centralizedFeedbackUI];

  if (!v4 && !*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v6 = result;
    swift_unknownObjectRetain_n();
    v7 = [v6 isGenerative];
    if (v7)
    {
      v9 = sub_1A41A4A2C(v7, v8);
      if (v9)
      {
        v10 = v9;
        type metadata accessor for GenerativeStoryFeedbackButton();
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1A47562D4(v6, v10, a1 & 1, sub_1A41AB050, v11, sub_1A41AB0C0, v12);
      }
    }

    swift_unknownObjectRelease_n();
  }

  return 0;
}

void *sub_1A41A3998()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___feedbackBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___feedbackBarButtonItem);
  v3 = v2;
  if (v2 == 1)
  {
    sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 centralizedFeedbackUI];

    if (!v5 && !*(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24))
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (!v3)
      {
        goto LABEL_5;
      }

      swift_unknownObjectRetain_n();
      v9 = [v3 isGenerative];
      if (v9)
      {
        v11 = sub_1A41A4A2C(v9, v10);
        if (v11)
        {
          v12 = v11;
          sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
          v13 = sub_1A524C634();
          v14 = [objc_opt_self() systemImageNamed_];

          static GenerativeStoryFeedbackMenuFactory.makeMenu(memory:actionPerformer:invertedOrder:presentationPrepareHandler:)(v3, v12, 1, 0, 0);
          v3 = sub_1A524D2F4();

          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease_n();
          v3 = 0;
        }

        goto LABEL_5;
      }

      swift_unknownObjectRelease_n();
    }

    v3 = 0;
LABEL_5:
    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_1A3C327F4(v6);
  }

  sub_1A3C327E4(v2);
  return v3;
}

uint64_t sub_1A41A3BA0()
{
  v1 = v0;
  sub_1A3C7D010(0, &unk_1EB134160, off_1E7721310, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  if (sub_1A419F578(1, 0))
  {
    v6 = v4;

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 viewModel];
      swift_unknownObjectRelease();
      if (v8)
      {
        PXStoryViewModel.currentlyAvailableMenuActions.getter();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_1A3C52C70(0, &qword_1EB126860, off_1E771E0D0);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [v9 centralizedFeedbackUI];

  if (v10 == 1 && !*(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRetain();
      v13 = [v12 isGenerative];
      if (v13 && (v15 = sub_1A41A4A2C(v13, v14)) != 0)
      {
        v16 = v15;
        (*((*MEMORY[0x1E69E7D40] & *v15) + 0x78))(3, 0);
        if (v17)
        {

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

double sub_1A41A425C(uint64_t a1, void *a2, void *a3)
{
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1A41A45B0();
  }

  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1A524CC54();
  v11 = a2;
  v12 = a3;
  v13 = sub_1A524CC44();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  v14[5] = v12;
  sub_1A3D4D930(0, 0, v7, &unk_1A5322190, v14);

  return result;
}

uint64_t sub_1A41A43E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1A524CC54();
  v5[3] = sub_1A524CC44();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1A3E5387C;

  return PhotosFeedbackActionPerformer.reportMemoryFeedback(type:memory:completionHandler:)(3, a5, PXDisplayCollectionDetailedCountsMake, 0);
}

void sub_1A41A44C0(unint64_t a1, __n128 a2)
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
  sub_1A41A9214(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
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

void sub_1A41A45B0()
{
  if (sub_1A419F578(1, 0))
  {
    v2 = v0;

    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 viewModel];
      swift_unknownObjectRelease();
      if (v4)
      {
        v6[4] = sub_1A4173E38;
        v6[5] = 0;
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 1107296256;
        v6[2] = sub_1A3D59380;
        v6[3] = &block_descriptor_261;
        v5 = _Block_copy(v6);
        [v4 performChanges_];
        _Block_release(v5);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A41A46DC(char a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A419F578(1, 0))
  {
    v8 = v6;

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 viewModel];
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = swift_allocObject();
        *(v11 + 16) = a1 & 1;
        *(v11 + 24) = a2;
        *(v11 + 32) = a3;
        v12[4] = sub_1A41AAE70;
        v12[5] = v11;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 1107296256;
        v12[2] = sub_1A3D59380;
        v12[3] = &block_descriptor_258;
        _Block_copy(v12);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A41A4860()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCustomExcludedActionTypes);
  if (v1 == 1)
  {
    sub_1A41ACB80(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FF950;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v3;
    *(inited + 48) = sub_1A524C674();
    *(inited + 56) = v4;
    *(inited + 64) = sub_1A524C674();
    *(inited + 72) = v5;
    sub_1A5246784();
  }

  sub_1A41AAE60(v1);
  return v1;
}

void *sub_1A41A497C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___customBannerView;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___customBannerView);
  v3 = v2;
  if (v2 == 1)
  {
    swift_unknownObjectRetain();
    v3 = sub_1A3C6E9EC();
    swift_unknownObjectRelease();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1A3C327F4(v4);
  }

  sub_1A3C327E4(v2);
  return v3;
}

id sub_1A41A4A2C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___centralizedFeedbackActionPerformer;
  v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___centralizedFeedbackActionPerformer);
  v5 = v4;
  if (v4 == 1)
  {
    type metadata accessor for PhotosFeedbackActionPerformer();
    v6 = v2;
    v5 = PhotosFeedbackActionPerformer.__allocating_init(parentViewController:)(*(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_overlayViewController));
    v7 = *(v2 + v3);
    *(v6 + v3) = v5;
    v8 = v5;
    sub_1A3C327F4(v7);
  }

  sub_1A3C327E4(v4);
  return v5;
}

uint64_t sub_1A41A4ABC(uint64_t result)
{
  v2 = result;
  if ((result & 0x40840020000A008) != 0)
  {
    result = [v1 setNeedsLayout];
  }

  if ((v2 & 0x4000000000000) != 0)
  {
    v3 = v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear];
    v4 = ([*&v1[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationState] visibilityState] != 3) & v3;
    if (sub_1A419F578(1, 0))
    {
      v7 = v5;

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 viewModel];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = [v9 isPerformingAnyExportOperation];

          v4 = (v10 ^ 1) & v4;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return sub_1A419E980(v4);
  }

  return result;
}

id sub_1A41A4C00(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy;
  v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy);
  }

  else
  {
    v6 = type metadata accessor for PhotosDynamicHeaderContentView.Proxy(a1, a2);
    v7 = objc_allocWithZone(v6);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v12.receiver = v7;
    v12.super_class = v6;
    v8 = objc_msgSendSuper2(&v12, sel_init);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_1A41A4D40(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 16);
  v4 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 24);
  v5 = Strong;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  v11[4] = sub_1A41AA4D4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3D7692C;
  v11[3] = &block_descriptor_237;
  v8 = _Block_copy(v11);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v9 = [v6 menuWithDeferredConfiguration_];

  _Block_release(v8);
  return v9;
}

uint64_t sub_1A41A4EF4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-1] - v6;
  v8 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = sub_1A419F8BC(), v15 = v14, v17 = v16, v19 = v18, v12, v13))
  {

    v20 = sub_1A524CCB4();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v21 = sub_1A524CC44();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v13;
    v22[5] = v15;
    v22[6] = a2;
    v22[7] = a3;
    sub_1A3D4D930(0, 0, v7, &unk_1A5322168, v22);

    return swift_unknownObjectRelease();
  }

  else
  {
    v25 = sub_1A5241144();
    v26 = *(*(v25 - 8) + 56);
    v26(v10, 1, 1, v25);
    v26(&v10[*(v8 + 20)], 1, 1, v25);
    v29[3] = v8;
    v29[4] = &off_1F16FB810;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
    sub_1A41AA08C(v10, boxed_opaque_existential_1);
    a2(v29);
    sub_1A41AC4E8(v10, type metadata accessor for PlaceholderTransitionsPauseToken);
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }
}

uint64_t sub_1A41A51BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[21] = swift_task_alloc();
  v7[22] = sub_1A524CC54();
  v7[23] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v7[24] = v9;
  v7[25] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A41A52B8, v9, v8);
}

uint64_t sub_1A41A52B8()
{
  v1 = v0[17];
  v10 = v0[18];
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  v0[26] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v10;
  v4 = *(v10 + 88);
  swift_unknownObjectRetain();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[27] = v5;
  v6 = sub_1A3C34400(0, &qword_1EB12A978, &protocol descriptor for PhotosDynamicHeaderViewTransitionsPauseToken);
  *v5 = v0;
  v5[1] = sub_1A41A5450;
  v7 = v0[18];

  return (v9)(v0 + 7, sub_1A41AA1E4, v3, v6, ObjectType, v7);
}

uint64_t sub_1A41A5450()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1A41A5594, v3, v2);
}

uint64_t sub_1A41A5594()
{

  if (*(v0 + 80))
  {
    sub_1A3C34460((v0 + 56), v0 + 16);
  }

  else
  {
    v1 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
    *(v0 + 40) = v1;
    *(v0 + 48) = &off_1F16FB810;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v3 = sub_1A5241144();
    v4 = *(*(v3 - 8) + 56);
    v4(boxed_opaque_existential_1, 1, 1, v3);
    v4((boxed_opaque_existential_1 + *(v1 + 20)), 1, 1, v3);
    if (*(v0 + 80))
    {
      sub_1A41AB614(v0 + 56, &qword_1EB12A970, &qword_1EB12A978, &protocol descriptor for PhotosDynamicHeaderViewTransitionsPauseToken, sub_1A3E792C4);
    }
  }

  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1A3C341C8(v0 + 16, v0 + 96);

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v6;
  sub_1A3C34460((v0 + 96), (v10 + 6));
  sub_1A3D4D930(0, 0, v5, &unk_1A5322178, v10);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A41A57C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = a1;
  *(a4 + 1) = a2;
  swift_unknownObjectRetain();
  sub_1A5241134();
  v12 = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  v13 = *(v12 + 20);
  [a3 timeIntoCurrentSegment];
  sub_1A524DAE4();
  sub_1A5241064();
  v14 = *(v9 + 56);
  v14(&a4[v13], 0, 1, v8);
  v15 = *(v12 + 24);
  [a3 timeLeftInCurrentSegment];
  sub_1A524DAE4();
  sub_1A5241064();
  swift_unknownObjectRelease();

  (*(v9 + 8))(v11, v8);
  return (v14)(&a4[v15], 0, 1, v8);
}

uint64_t sub_1A41A5970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A5A0C, v8, v7);
}

uint64_t sub_1A41A5A0C()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A41A5A84(uint64_t a1, void (*a2)(void), uint64_t a3, double a4)
{
  v7 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29[-2] - v11;
  v13 = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v29[-2] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29[-2] - v17;
  sub_1A3C341C8(a1, v30);
  sub_1A3C34400(0, &qword_1EB12A978, &protocol descriptor for PhotosDynamicHeaderViewTransitionsPauseToken);
  if (swift_dynamicCast())
  {
    sub_1A41A9EB4(v18, v15);
    v19 = sub_1A524CCB4();
    v20 = *(*(v19 - 8) + 56);
    v28 = *v15;
    v20(v12, 1, 1, v19);
    sub_1A524CC54();
    swift_unknownObjectRetain_n();

    v21 = sub_1A524CC44();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = v28;
    *(v22 + 48) = a2;
    *(v22 + 56) = a3;
    sub_1A3D4D930(0, 0, v12, &unk_1A5322140, v22);
    swift_unknownObjectRelease();

    v24 = type metadata accessor for StoryContentViewTransitionsPauseToken;
    v25 = v15;
LABEL_5:
    sub_1A41AC4E8(v25, v24);
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  if (swift_dynamicCast())
  {
    a2();
    v24 = type metadata accessor for PlaceholderTransitionsPauseToken;
    v25 = v9;
    goto LABEL_5;
  }

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_1A524E404();

  v29[5] = 0xD000000000000017;
  v29[6] = 0x80000001A53CAEF0;
  sub_1A3C341C8(a1, v29);
  v27 = sub_1A524C714();
  MEMORY[0x1A5907B60](v27);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A41A5E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_1A3C7D010(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[4] = swift_task_alloc();
  v7[5] = sub_1A524CC54();
  v7[6] = sub_1A524CC44();
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 88) + **(a5 + 88));
  v10 = swift_task_alloc();
  v7[7] = v10;
  *v10 = v7;
  v10[1] = sub_1A41A600C;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return v13(v7 + 8, sub_1A41A6260, 0, v11, ObjectType, a5);
}

uint64_t sub_1A41A600C()
{

  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A6148, v1, v0);
}

uint64_t sub_1A41A6148()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  sub_1A3D4D930(0, 0, v1, &unk_1A5322158, v6);

  v8 = v0[1];

  return v8();
}

void sub_1A41A6260(void *a1)
{
  v3[4] = sub_1A41A6308;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D59380;
  v3[3] = &block_descriptor_216;
  v2 = _Block_copy(v3);
  [a1 performChanges_];
  _Block_release(v2);
}

id sub_1A41A6308(void *a1)
{
  [a1 setShouldPauseTransitions_];

  return [a1 rewindToBeginningOfCurrentSegment];
}

uint64_t sub_1A41A6354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A524CC54();
  v5[4] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A63EC, v7, v6);
}

uint64_t sub_1A41A63EC()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1A41A6458(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = *a2;
  v18 = *(v7 + 16);
  v18(a3, a1, v6, v14);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v26 = [swift_getObjCClassFromMetadata() sharedInstance];
  v19 = [v26 dynamicHeaderDebugBehavior];
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v28 = v17;
      v27 = 0;
      if (static PhotosDynamicHeaderViewModel.ContentKind.== infix(_:_:)(&v28, &v27))
      {
LABEL_8:
        sub_1A5241034();

        (*(v7 + 8))(a3, v6);
        (*(v7 + 32))(a3, v9, v6);
        return;
      }
    }

    else if (v19 == 3)
    {
      v30 = v17;
      v29 = 1;
      if (static PhotosDynamicHeaderViewModel.ContentKind.== infix(_:_:)(&v30, &v29))
      {
        goto LABEL_8;
      }
    }

LABEL_14:
    v25 = v26;

    return;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      sub_1A5241044();
    }

    goto LABEL_14;
  }

  v20 = &selRef_dynamicHeaderMaximumDelayFromMovie;
  if (!v17)
  {
    v20 = &selRef_dynamicHeaderMaximumDelayFromPreview;
  }

  [v26 *v20];
  sub_1A52410A4();
  sub_1A41AAEE8(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v21 = sub_1A524C534();

  v22 = a3;
  v23 = *(v7 + 8);
  v26 = v22;
  v23();
  if (v21)
  {
    v24 = *(v7 + 32);
    v24(v16, v12, v6);
    v24(v26, v16, v6);
  }

  else
  {
    (v23)(v12, v6);
    (v18)(v16, a1, v6);
    (*(v7 + 32))(v26, v16, v6);
  }
}

id sub_1A41A6808(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A41A6850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A524CC54();
  v8 = v3;
  v9 = a2;
  v10 = a3;
  return sub_1A3C67884(sub_1A41AA05C, &v7, "PhotosUICore/PhotosDynamicHeaderView.swift", 42, 2u, 1195);
}

uint64_t sub_1A41A68D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC54();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  return sub_1A3C67884(sub_1A41A9E44, v8, "PhotosUICore/PhotosDynamicHeaderView.swift", 42, 2u, 1216);
}

void sub_1A41A6C20()
{
  if (qword_1EB176270 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t sub_1A41A6E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A6EF8, v7, v6);
}

uint64_t sub_1A41A6EF8()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = [v1 viewModel];
  v6 = [v5 mainModel];

  v4(v6);
  (*(*(v2 - 8) + 56))(v3, 0, 1, v2);
  v7 = v0[1];

  return v7();
}

void PXStoryViewModel.proto_isActive.setter(char a1)
{
  v3 = a1 & 1;
  sub_1A3C7D010(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([v1 isActive] != v3)
  {
    if (a1)
    {
      sub_1A41A8488();
    }

    sub_1A5241134();
    v12 = swift_allocObject();
    *(v12 + 16) = a1 & 1;
    *(v12 + 17) = 0;
    aBlock[4] = sub_1A41A9780;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D59380;
    aBlock[3] = &block_descriptor_116;
    v13 = _Block_copy(aBlock);

    [v1 performChanges_];
    _Block_release(v13);
    (*(v8 + 16))(v6, v11, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_1A41A8488();
  }
}

void PXStoryView.contentFrameOverride.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  sub_1A41A6C20();
}

void sub_1A41A7848(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  PXStoryView.contentFrameOverride.setter(v3);
}

uint64_t sub_1A41A7914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A41A6E58(a1, a2, a3, a4);
}

uint64_t sub_1A41A79D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1A524CC54();
  v5[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A41A7A74, v7, v6);
}

uint64_t sub_1A41A7A74()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0x90))();
  *(v0 + 80) = v1;
  v8 = (*(*v1 + 216) + **(*v1 + 216));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1A41A7BD0;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return v8(v5, v6, v3, v4);
}

uint64_t sub_1A41A7BD0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A3E8D568, v3, v2);
}

uint64_t sub_1A41A7D14()
{
  v1 = sub_1A52425F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v3);
  sub_1A3E72EF0(0, &qword_1EB1296E8, &unk_1A549DF44);
  swift_getOpaqueTypeConformance2();
  sub_1A5242094();
  swift_unknownObjectRelease();
  v6 = sub_1A52425E4();
  (*(v2 + 8))(v5, v1);
  return v6 & 1;
}

uint64_t sub_1A41A7E6C(char a1)
{
  v3 = sub_1A52425F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v5);
  v8 = MEMORY[0x1E69C1EE8];
  if ((a1 & 1) == 0)
  {
    v8 = MEMORY[0x1E69C1EE0];
  }

  (*(v4 + 104))(v7, *v8, v3);
  sub_1A3E72EF0(0, &qword_1EB1296E8, &unk_1A549DF44);
  swift_getOpaqueTypeConformance2();
  sub_1A52420A4();
  return swift_unknownObjectRelease();
}

double sub_1A41A7FD4(uint64_t a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  (*(*v3 + 192))(a1);

  return result;
}

uint64_t sub_1A41A8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A41A79D4(a1, a2, a3, a4);
}

uint64_t sub_1A41A8128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1A524CC54();
  v4[4] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41A81C0, v6, v5);
}

uint64_t sub_1A41A81C0()
{
  v1 = v0[3];
  v2 = v0[2];

  (*(*(v1 - 8) + 56))(v2, 1, 1, v1);
  v3 = v0[1];

  return v3();
}

double *sub_1A41A8260(double *result)
{
  if ((result[4] & 1) == 0)
  {
    return [v1 setFrame_];
  }

  return result;
}

uint64_t sub_1A41A82EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3D60150;

  return sub_1A41A8128(a1, v7, v8, a4);
}

id sub_1A41A83B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isActive];
  *a2 = result;
  return result;
}

void (*PXStoryViewModel.proto_isActive.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isActive];
  return sub_1A41A8460;
}

void sub_1A41A8488()
{
  if (qword_1EB176130 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

uint64_t sub_1A41A88B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A42E6FA8(1);
  byte_1EB17C918 = result & 1;
  return result;
}

uint64_t sub_1A41A8A10()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1579C8 = result;
  return result;
}

uint64_t sub_1A41A8A7C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B6F8);
  __swift_project_value_buffer(v0, qword_1EB15B6F8);
  if (qword_1EB1579C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1579C8;
  return sub_1A5246F34();
}

char *sub_1A41A8B08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A41ACB80(0, &unk_1EB1262A0, &type metadata for PhotosBarButtonItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A41A8C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A41AC0C4(0);
  v37 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 32 * v20;
      v38 = *v22;
      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if ((v37 & 1) == 0)
      {
        v25 = v24;
        v26 = v23;
        swift_unknownObjectRetain();
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v21);
      v27 = sub_1A524ECE4();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v38;
      *(v16 + 16) = v24;
      *(v16 + 24) = v23;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A41A8EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = a5 & 1;
  v15 = sub_1A3C345C4(a5 & 1);
  v17 = *(v13 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v13 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A41A8C48(v20, a6 & 1);
      v15 = sub_1A3C345C4(v14);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1A41A9094();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    *(v25[6] + v15) = v14;
    v28 = (v25[7] + 32 * v15);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
    v29 = v25[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v25[2] = v30;
      return;
    }

    goto LABEL_15;
  }

  v26 = (v25[7] + 32 * v15);
  v27 = v26[3];
  v31 = v26[2];
  *v26 = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;

  swift_unknownObjectRelease();
}

void sub_1A41A9094()
{
  v1 = v0;
  sub_1A41AC0C4(0);
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v19;
        *(v22 + 24) = v20;
        v23 = v19;
        v24 = v20;
        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1A41A9214(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A3C7D010(0, &qword_1EB134178, sub_1A419BFF0, MEMORY[0x1E69E62F8]);
          sub_1A41AAF30();
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3D5C268(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A419BFF0(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41A93B0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v8 = v4;
  v9 = v6;
  if (sub_1A524DBF4())
  {
    LOBYTE(v22[0]) = v5;
    LOBYTE(v19[0]) = v7;
    sub_1A419C1CC();
    sub_1A524C9C4();
    sub_1A524C9C4();

    if (v26[0] == v23[0] && (sub_1A524DBF4() & 1) != 0)
    {
      __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v23);
      sub_1A524E424();
      v10 = AssociatedTypeWitness;
      v11 = AssociatedConformanceWitness;
      v12 = __swift_project_boxed_opaque_existential_1(v23, AssociatedTypeWitness);
      v26[3] = v10;
      v26[4] = *(v11 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
      __swift_project_boxed_opaque_existential_1((a2 + 24), *(a2 + 48));
      v20 = swift_getAssociatedTypeWitness();
      v21 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1A524E424();
      v14 = v20;
      v15 = v21;
      v16 = __swift_project_boxed_opaque_existential_1(v19, v20);
      v22[3] = v14;
      v22[4] = *(v15 + 8);
      v17 = __swift_allocate_boxed_opaque_existential_1(v22);
      (*(*(v14 - 8) + 16))(v17, v16, v14);
      sub_1A5246794();
    }
  }

  else
  {
  }

  return 0;
}

id sub_1A41A9780(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  result = [a1 setIsActive_];
  if (v4 == 1)
  {

    return [a1 setDesiredPlayState_];
  }

  return result;
}

uint64_t sub_1A41A9810(uint64_t a1)
{
  result = sub_1A3C3A220(&qword_1EB126D10, &qword_1EB126D18, off_1E7720448, MEMORY[0x1E69E81C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41A9864(uint64_t a1)
{
  result = sub_1A41AAEE8(&qword_1EB1296E0, type metadata accessor for LemonadeInlineStoryPlayerUIView, MEMORY[0x1E69E81C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41A98BC(uint64_t a1)
{
  result = sub_1A41AAEE8(&qword_1EB125EB8, type metadata accessor for PhotosPreviewHeaderContentView, MEMORY[0x1E69E81C0]);
  *(a1 + 8) = result;
  return result;
}

void sub_1A41A9B04(uint64_t a1)
{
  sub_1A3C7D010(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A41A9D70()
{
  result = qword_1EB134130;
  if (!qword_1EB134130)
  {
    sub_1A41ACB80(255, &qword_1EB134138, &type metadata for PhotosDynamicHeaderContentView.ContentKind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134130);
  }

  return result;
}

unint64_t sub_1A41A9DF0()
{
  result = qword_1EB18FB50;
  if (!qword_1EB18FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18FB50);
  }

  return result;
}

uint64_t sub_1A41A9EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41A9F18()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A41A5E38(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A41A9FC4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A41A6354(v4, v5, v6, v2, v3);
}

uint64_t sub_1A41AA08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderTransitionsPauseToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_196Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A41AA138()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A41A51BC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A41AA1E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v10[4] = sub_1A41A57B4;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3D59380;
  v10[3] = &block_descriptor_231_0;
  v7 = _Block_copy(v10);
  [a1 performChanges_];
  _Block_release(v7);
  a2[3] = type metadata accessor for StoryContentViewTransitionsPauseToken(0);
  a2[4] = &off_1F16FB7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  swift_unknownObjectRetain();
  return sub_1A41A57C4(v5, v6, a1, boxed_opaque_existential_1);
}

uint64_t sub_1A41AA2E4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A41A5970(v4, v5, v6, v2, v3, v0 + 48);
}

uint64_t sub_1A41AA388(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v10 = v2;
  v11 = v6;
  if ((sub_1A524DBF4() & 1) == 0)
  {

    goto LABEL_5;
  }

  v19 = v3;
  v18 = v7;
  sub_1A419C1CC();
  sub_1A524C9C4();
  sub_1A524C9C4();

  if (v16 != v14)
  {
LABEL_5:
    v12 = 0;
    return v12 & 1;
  }

  v16 = v4;
  v17 = v5;
  v14 = v8;
  v15 = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = static PhotosPreviewableCollection.== infix(_:_:)(&v16, &v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v12 & 1;
}

void sub_1A41AA4D4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = sub_1A524C634();
  v7 = sub_1A524C634();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  v10[4] = sub_1A41AA664;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3F4ECC0;
  v10[3] = &block_descriptor_243;
  v9 = _Block_copy(v10);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  [a1 addItemWithTitle:v6 systemImageName:v7 handler:v9];
  _Block_release(v9);
}

uint64_t objectdestroy_233Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A41AA664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A41AA840;
  *(v5 + 24) = v4;
  v8[4] = sub_1A3D78DD0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3D35A90;
  v8[3] = &block_descriptor_252;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  v7 = [v1 presentAlertWithConfigurationHandler_];
  swift_unknownObjectRelease();
  _Block_release(v6);
  LODWORD(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1A41AA7D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A41ACB80(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A41AA840(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1A524C634();
  [a1 setTitle_];

  LOBYTE(v8) = v4;
  sub_1A3E560D4();
  swift_unknownObjectRetain();
  sub_1A524EA44();
  swift_unknownObjectRelease();
  v6 = sub_1A524C634();

  [a1 setMessage_];

  v7 = sub_1A524C634();
  [a1 addActionWithTitle:v7 style:0 action:0];
}

void sub_1A41AA94C()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insets;
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_sidebarHorizontalPadding;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_insetsObservation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_tapGestureRecognizer) = 0;
  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_scenePhaseView;
  *(v0 + v4) = [objc_allocWithZone(sub_1A5243314()) init];
  v5 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_photosViewModelObservation);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationStateObservation);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_contentCanBeActive) = 0;
  v7 = v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___allowedMovieChromeItems;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_storyContentsByKind) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_movieStoryViewController) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_previewHeaderContentView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___emptyView) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherButton) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieStoryStyleSwitcherBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationButton) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCurationBarButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___feedbackBarButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___movieCustomExcludedActionTypes) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___customBannerView) = 1;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___centralizedFeedbackActionPerformer) = 1;
  v8 = (v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_movieStoryViewModelObservation);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView____lazy_storage___proxy) = 0;
  sub_1A524E6E4();
  __break(1u);
}

BOOL sub_1A41AAB20(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_tapGestureRecognizer);
  if (!v5 || (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v6 = v5, v7 = a1, v8 = sub_1A524DBF4(), v6, v7, (v8 & 1) == 0))
  {
    if (qword_1EB1579C0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB1579C8;
    sub_1A524E404();

    v11 = a1;
    v12 = [v11 description];
    v13 = sub_1A524C674();
    v15 = v14;

    MEMORY[0x1A5907B60](v13, v15);

    v16 = v10;
    sub_1A5246F34();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return (*(**(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 512))() == 0.0 && *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_configuration + 8) == 0;
}

double sub_1A41AAE50(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

void sub_1A41AAE60(uint64_t a1)
{
  if (a1 != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A41AAE70(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  [a1 setMenuIsOpen:v3 withIdentifier:v4];
}

uint64_t sub_1A41AAEE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A41AAF30()
{
  result = qword_1EB134180;
  if (!qword_1EB134180)
  {
    sub_1A3C7D010(255, &qword_1EB134178, sub_1A419BFF0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134180);
  }

  return result;
}

uint64_t sub_1A41AAFB8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A41A43E4(v4, v5, v6, v2, v3);
}

void sub_1A41AB050(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A41A46DC(a1 & 1, 0xD00000000000001ALL, 0x80000001A53CAFC0);
  }
}

void sub_1A41AB0C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_1A419F578(1, 0))
    {
      v4 = v2;

      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = [v5 viewModel];
        swift_unknownObjectRelease();
        if (v6)
        {
          aBlock[4] = sub_1A4173E38;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3D59380;
          aBlock[3] = &block_descriptor_277_0;
          v7 = _Block_copy(aBlock);
          [v6 performChanges_];
          _Block_release(v7);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A41AB204(__n128 a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!sub_1A419F578(1, 0))
  {
    goto LABEL_8;
  }

  v4 = v2;

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v6 = [v5 viewModel];
  swift_unknownObjectRelease();
  v7 = [v6 actionPerformer];

  if (!v7)
  {
LABEL_8:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  [v7 presentStyleSwitcher];

  return swift_unknownObjectRelease();
}

void sub_1A41AB378()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3E9C0EC();
  }
}

uint64_t sub_1A41AB3F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A41ACB80(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A41AB4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_1A419F578(1, 0))
    {
      v9 = v7;

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = [v10 viewModel];

        swift_unknownObjectRelease();
        if (!v11)
        {
          return;
        }

        v6 = [v11 mainModel];

        aBlock[4] = a2;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3D59380;
        aBlock[3] = a3;
        v12 = _Block_copy(aBlock);
        [v6 performChanges_];
        _Block_release(v12);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A41AB614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A41AB674(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_getObjectType();
  v5 = sub_1A524C634();
  [a1 setScrollDisabled:v3 axis:2 forReason:v5];

  if (v3 == 1)
  {
    v8 = sub_1A419F578(1, 0);
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v6;

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 viewModel];
      swift_unknownObjectRelease();
      if (v11)
      {
        v12 = [v11 viewMode];

        v8 = ((v12 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v8 = 0;
LABEL_8:
  v13 = sub_1A524C634();
  [a1 setScrollDisabled:v8 axis:1 forReason:v13];

  v16 = sub_1A419F578(1, 0);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v14;

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = [v18 viewModel];
    swift_unknownObjectRelease();
    if (v19)
    {
      v20 = [v19 viewMode];

      v16 = ((v20 - 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
      goto LABEL_14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v16 = 0;
LABEL_14:
  v21 = sub_1A524C634();
  [a1 setModalInPresentation:v16 forReason:v21];

  [a1 setChromeOpacity_];
  [a1 setAlwaysRequiresLightChrome_];
  if (!v3)
  {
    [a1 setAllowedChromeItems_];
    [a1 setChromeItemsToBeConsideredVisibleForLayoutPurpose_];
    sub_1A47F8AFC(0);
    sub_1A47F9010(0);
    v29 = 0;
    goto LABEL_33;
  }

  if (sub_1A419F578(1, 0))
  {
    v24 = v22;

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = [v25 viewModel];
      swift_unknownObjectRelease();
      if (v26)
      {
        v27 = [v26 viewMode];
        if (v27 == 2)
        {

          v28 = 18;
        }

        else if (v27 == 4)
        {

          v28 = 0;
        }

        else
        {
          if (sub_1A41A1970())
          {
            v42 = 3683;
          }

          else
          {
            v42 = 96;
          }

          v43 = [v26 wantsRelatedOverlayVisible];

          v44 = v42 & 0xFE01;
          if ((v42 & 2) == 0)
          {
            v44 = v42;
          }

          v28 = v44 & 0xE03;
          if (!v43)
          {
            v28 = v42;
          }
        }

LABEL_24:
        [a1 setAllowedChromeItems_];
        if (sub_1A419F578(1, 0))
        {
          v32 = v30;

          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = [v33 viewModel];
            swift_unknownObjectRelease();
            if (v34)
            {
              v35 = [v34 viewMode];
              if (v35 == 2)
              {

                v36 = 18;
                goto LABEL_32;
              }

              if (v35 != 4)
              {
                if (sub_1A41A1970())
                {
                  v45 = 3683;
                }

                else
                {
                  v45 = 96;
                }

                v46 = [v34 wantsRelatedOverlayVisible];

                v47 = v45 & 0xFE01;
                if ((v45 & 2) == 0)
                {
                  v47 = v45;
                }

                v36 = v47 & 0xE03;
                if (!v46)
                {
                  v36 = v45;
                }

                goto LABEL_32;
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v36 = 0;
LABEL_32:
        [a1 setChromeItemsToBeConsideredVisibleForLayoutPurpose_];
        sub_1A41A1B3C();
        sub_1A47F8AFC(v37);
        v38 = sub_1A41A1F38();
        sub_1A47F9010(v38);
        v29 = sub_1A41A2B48();
LABEL_33:
        [a1 setCustomLeadingAccessoryView_];

        if (v3)
        {
          v39 = sub_1A41A2CA8();
          [a1 setCustomTrailingAccessoryView_];

          if (sub_1A41A2E28())
          {
            sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
            v40 = sub_1A524CA14();

LABEL_38:
            [a1 setCustomLeadingAccessoryBarButtonItems_];

            if (v3 && sub_1A41A2FE4())
            {
              sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
              v41 = sub_1A524CA14();
            }

            else
            {
              v41 = 0;
            }

            [a1 setCustomTrailingAccessoryBarButtonItems_];

            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_1A524D7F4();
          }
        }

        else
        {
          [a1 setCustomTrailingAccessoryView_];
        }

        v40 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v28 = 0;
  goto LABEL_24;
}

void sub_1A41ABDF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1A401684C(*(v0 + 24));
  v5.f64[0] = *v1;
  v6.f64[0] = v1[2];
  sub_1A40168D8(v5, v1[1], v6, v1[3]);
  sub_1A4016980(v2, v3);
  sub_1A40167C4(v4);
}

unint64_t sub_1A41ABE60()
{
  result = qword_1EB12AC48;
  if (!qword_1EB12AC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AC48);
  }

  return result;
}

char *sub_1A41ABEB4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(**&result[OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model] + 416))())
    {
      v2 = sub_1A41A3BA0();

      return v2;
    }

    else
    {
      v3 = sub_1A419BCF8();
      v4 = v3;
      if (v3 >> 62)
      {
        v5 = sub_1A524E2B4();
      }

      else
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = v4;
      if (!v5)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_1A41ABFAC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A41A46DC(a1 & 1, 0xD00000000000001DLL, 0x80000001A53CB2B0);
  }
}

uint64_t sub_1A41AC01C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  if ((*(**(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_model) + 416))())
  {
    v2 = sub_1A41A4860();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1A41AC0C4(uint64_t a1)
{
  if (!qword_1EB126490)
  {
    sub_1A41AC128();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126490);
    }
  }
}

unint64_t sub_1A41AC128()
{
  result = qword_1EB18FB60;
  if (!qword_1EB18FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB18FB60);
  }

  return result;
}

void sub_1A41AC17C(void *a1)
{
  swift_getObjectType();
  [a1 setAllowedChromeItems_];
  v2 = 1;
  PXStoryMutableViewModel.actionContext.setter(&v2);
}

unint64_t sub_1A41AC278()
{
  result = qword_1EB176260;
  if (!qword_1EB176260)
  {
    sub_1A3C52C70(255, &qword_1EB126D18, off_1E7720448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB176260);
  }

  return result;
}

uint64_t sub_1A41AC2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A41AC328()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  v2 = v1;
  sub_1A524D7A4();
}

double (*sub_1A41AC3E4())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A41AC440;
}

uint64_t sub_1A41AC448(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A419FC20(a1, v5, v6, v4);
}

uint64_t sub_1A41AC4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41AC548(uint64_t a1)
{
  if (!qword_1EB12ACB0)
  {
    sub_1A41ACB80(255, &unk_1EB12ACB8, &type metadata for PhotosDynamicHeaderView.Configuration, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12ACB0);
    }
  }
}

void *sub_1A41AC5D0(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A41AC610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  return a2;
}

id sub_1A41AC684(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();

    return v3;
  }

  return result;
}

void sub_1A41AC6C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void sub_1A41AC730(uint64_t a1)
{
  if (!qword_1EB1298C0)
  {
    sub_1A3E72EF0(255, &qword_1EB12A9E8, &unk_1A54874CC);
    v3 = v2;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v6 = type metadata accessor for TransparentHostingController(a1, v3, OpaqueTypeConformance2, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1298C0);
    }
  }
}

BOOL sub_1A41AC7C4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1A41A1008(a1);
  }

  else
  {
    return 0;
  }

  return v4;
}

void sub_1A41AC844(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

void sub_1A41AC8B0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = *(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_didAppear);
      v6 = ([*(Strong + OBJC_IVAR____TtC12PhotosUICoreP33_1B50DC52D4D0467ED56FE78BF1017C3930PhotosDynamicHeaderContentView_applicationState) visibilityState] != 3) & v5;
      if (sub_1A419F578(1, 0))
      {
        v9 = v7;

        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 viewModel];
          swift_unknownObjectRelease();
          if (v11)
          {
            v12 = [v11 isPerformingAnyExportOperation];

            v6 = (v12 ^ 1) & v6;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_1A419E980(v6);
    }
  }
}

void sub_1A41ACA00(uint64_t a1)
{
  sub_1A3C7D010(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A41ACAE4(uint64_t a1)
{
  sub_1A3C7D010(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A41ACB80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1A41ACC88()
{
  v0 = swift_allocObject();
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(0, *(*v0 + 80), *(*v0 + 88), v1);
  v5 = sub_1A524C374();
  v2 = sub_1A524C454();
  v3 = sub_1A3C6D790(&v5, v2);

  v0[2] = v3;
  return v0;
}

id OneUpSharePlaySessionMediaProvider.__allocating_init(sessionCoordinator:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A41B4ECC(a1);

  return v4;
}

id OneUpSharePlaySessionMediaProvider.init(sessionCoordinator:)(uint64_t a1)
{
  v1 = sub_1A41B4ECC(a1);

  return v1;
}

uint64_t sub_1A41ACDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A524C454();
  v6 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v6));
  sub_1A41B68AC(v7, &v9);
  os_unfair_lock_unlock((v5 + v6));
  return v9;
}

uint64_t sub_1A41ACEE0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  *(v10 + 448) = v19;
  *(v10 + 456) = v20;
  *(v10 + 432) = a9;
  *(v10 + 440) = a10;
  *(v10 + 416) = a1;
  *(v10 + 424) = a2;
  *(v10 + 400) = a7;
  *(v10 + 408) = a8;
  *(v10 + 392) = a6;
  *(v10 + 464) = *a9;
  v11 = sub_1A524BEE4();
  *(v10 + 472) = v11;
  *(v10 + 480) = *(v11 - 8);
  *(v10 + 488) = swift_task_alloc();
  v12 = sub_1A524BF64();
  *(v10 + 496) = v12;
  *(v10 + 504) = *(v12 - 8);
  *(v10 + 512) = swift_task_alloc();
  v13 = MEMORY[0x1E69E87C8];
  sub_1A41B6A28(0, &unk_1EB1342A8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87C8]);
  *(v10 + 520) = v14;
  *(v10 + 528) = *(v14 - 8);
  *(v10 + 536) = swift_task_alloc();
  sub_1A41B6A28(0, &qword_1EB1342B8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87B8]);
  *(v10 + 544) = v15;
  *(v10 + 552) = *(v15 - 8);
  *(v10 + 560) = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, v13);
  *(v10 + 568) = v16;
  *(v10 + 576) = *(v16 - 8);
  *(v10 + 584) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41AD1E4, 0, 0);
}

id sub_1A41AD1E4()
{
  v48 = v0;
  v47[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 392);
  v2 = [v1 resultHandlerQueue];
  if (!v2)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v2 = sub_1A524D474();
  }

  *(v0 + 592) = v2;
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  [v3 pixelWidth];
  [v3 pixelHeight];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [v1 deliveryMode];
  if (!v5)
  {
    v32 = sub_1A524D264();
    v33 = *sub_1A486DB9C();
    if (os_log_type_enabled(v33, v32))
    {
      v35 = *(v0 + 400);
      v34 = *(v0 + 408);
      swift_unknownObjectRetain();
      v36 = v33;
      v37 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v37 = 134349314;
      *(v37 + 4) = v34;
      *(v37 + 12) = 2082;
      v38 = [v35 uuid];
      result = swift_unknownObjectRelease();
      if (v38)
      {
        v39 = sub_1A524C674();
        v41 = v40;

        sub_1A3C2EF94(v39, v41, v47);
      }

      goto LABEL_29;
    }

    result = [*(v0 + 400) uuid];
    if (result)
    {
      v42 = result;
      sub_1A524C674();

      sub_1A524DA74();
    }

    goto LABEL_27;
  }

  if (v5 != 2)
  {
LABEL_11:
    v21 = sub_1A524D264();
    v22 = *sub_1A486DB9C();
    if (os_log_type_enabled(v22, v21))
    {
      v24 = *(v0 + 400);
      v23 = *(v0 + 408);
      swift_unknownObjectRetain();
      v25 = v22;
      v26 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v26 = 134349314;
      *(v26 + 4) = v23;
      *(v26 + 12) = 2082;
      v27 = [v24 uuid];
      result = swift_unknownObjectRelease();
      if (v27)
      {
        v28 = sub_1A524C674();
        v30 = v29;

        sub_1A3C2EF94(v28, v30, v47);
      }
    }

    else
    {
      result = [*(v0 + 400) uuid];
      if (result)
      {
        v31 = result;
        sub_1A524C674();

        sub_1A524DA74();
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  v6 = sub_1A524D264();
  v7 = *sub_1A486DB9C();
  if (os_log_type_enabled(v7, v6))
  {
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v7;
    swift_unknownObjectRetain();
    v10 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v10 = 134349314;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2082;
    v11 = [v9 uuid];
    result = swift_unknownObjectRelease();
    if (v11)
    {
      v13 = sub_1A524C674();
      v15 = v14;

      sub_1A3C2EF94(v13, v15, v47);
    }

    goto LABEL_28;
  }

  result = [*(v0 + 400) uuid];
  if (!result)
  {
    goto LABEL_26;
  }

  v16 = result;
  v17 = *(v0 + 408);
  v18 = sub_1A524C674();
  v20 = v19;

  *(v0 + 312) = v17;
  *(v0 + 320) = v18;
  *(v0 + 336) = &type metadata for ImageRequestFastFormatChooser;
  *(v0 + 344) = &off_1F16FC070;
  *(v0 + 328) = v20;
  sub_1A3C34460((v0 + 312), v0 + 192);
  v43 = swift_task_alloc();
  *(v0 + 600) = v43;
  *v43 = v0;
  v43[1] = sub_1A41AD868;
  v44 = *(v0 + 584);
  v45 = *(v0 + 400);
  v46 = *(v0 + 408);

  return sub_1A4340ED8(v44, v45, v46);
}

uint64_t sub_1A41AD868()
{

  return MEMORY[0x1EEE6DFA0](sub_1A41AD990, 0, 0);
}

uint64_t sub_1A41AD990()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v0 + 192), v5);
  (*(v6 + 8))(v1, v5, v6);
  sub_1A524CD24();
  (*(v3 + 8))(v2, v4);
  *(v0 + 362) = 0;
  v7 = swift_task_alloc();
  *(v0 + 608) = v7;
  *v7 = v0;
  v7[1] = sub_1A41ADAFC;
  v8 = *(v0 + 544);

  return MEMORY[0x1EEE6DB90](v0 + 352, 0, 0, v8, v0 + 368);
}

uint64_t sub_1A41ADAFC()
{

  if (v0)
  {
    v1 = sub_1A41AEE00;
  }

  else
  {
    v1 = sub_1A41ADC38;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41ADC38(uint64_t a1)
{
  v100 = v1;
  v99[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 352);
  *(v1 + 616) = v2;
  if (v2)
  {
    v3 = *(v1 + 360);
    if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290(*(v1 + 408), v4, v5, v6))
    {
      v93 = *(v1 + 512);
      v96 = *(v1 + 504);
      v97 = *(v1 + 496);
      v94 = *(v1 + 488);
      v7 = *(v1 + 472);
      v95 = *(v1 + 480);
      v8 = *(v1 + 448);
      v9 = *(v1 + 456);
      v11 = *(v1 + 400);
      v10 = *(v1 + 408);
      v12 = swift_allocObject();
      *(v12 + 16) = v2;
      *(v12 + 24) = v3 & 1;
      *(v12 + 32) = v10;
      *(v12 + 40) = v11;
      *(v12 + 48) = v8;
      *(v12 + 56) = v9;
      *(v1 + 176) = sub_1A41B6CEC;
      *(v1 + 184) = v12;
      *(v1 + 144) = MEMORY[0x1E69E9820];
      *(v1 + 152) = 1107296256;
      *(v1 + 160) = sub_1A3C2E0D0;
      *(v1 + 168) = &block_descriptor_92;
      v13 = _Block_copy((v1 + 144));
      swift_unknownObjectRetain();
      v14 = v2;

      sub_1A524BF14();
      *(v1 + 384) = MEMORY[0x1E69E7CC0];
      sub_1A4059F40();
      sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v93, v94, v13);
      _Block_release(v13);

      (*(v95 + 8))(v94, v7);
      (*(v96 + 8))(v93, v97);

      *(v1 + 362) = 1;
      v15 = swift_task_alloc();
      *(v1 + 608) = v15;
      *v15 = v1;
      v15[1] = sub_1A41ADAFC;
      v16 = *(v1 + 544);
      v17 = v1 + 352;
      v18 = v1 + 368;
      v19 = 0;
      v20 = 0;

      return MEMORY[0x1EEE6DB90](v17, v19, v20, v16, v18);
    }

    v21 = sub_1A524D264();
    v22 = *sub_1A486DB9C();
    if (os_log_type_enabled(v22, v21))
    {
      v24 = *(v1 + 400);
      v23 = *(v1 + 408);
      swift_unknownObjectRetain();
      v25 = v22;
      v26 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v26 = 134349314;
      *(v26 + 4) = v23;
      *(v26 + 12) = 2082;
      v27 = [v24 uuid];
      swift_unknownObjectRelease();
      if (v27)
      {
        v28 = sub_1A524C674();
        v30 = v29;

        sub_1A3C2EF94(v28, v30, v99);
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:

      v17 = swift_unknownObjectRelease();
      __break(1u);
      return MEMORY[0x1EEE6DB90](v17, v19, v20, v16, v18);
    }

    v31 = swift_task_alloc();
    *(v1 + 624) = v31;
    *v31 = v1;
    v32 = sub_1A41AE97C;
LABEL_21:
    v31[1] = v32;
    v52 = *(v1 + 400);
    v51 = *(v1 + 408);

    return sub_1A4341188(v52, v51);
  }

  (*(*(v1 + 552) + 8))(*(v1 + 560), *(v1 + 544));
  if ((sub_1A524CDC4() & 1) != 0 || !sub_1A41AF290(*(v1 + 408), v33, v34, v35))
  {
    v42 = sub_1A524D264();
    v43 = *sub_1A486DB9C();
    if (os_log_type_enabled(v43, v42))
    {
      v45 = *(v1 + 400);
      v44 = *(v1 + 408);
      swift_unknownObjectRetain();
      v25 = v43;
      v46 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v46 = 134349314;
      *(v46 + 4) = v44;
      *(v46 + 12) = 2082;
      v47 = [v45 uuid];
      swift_unknownObjectRelease();
      if (v47)
      {
        v48 = sub_1A524C674();
        v50 = v49;

        sub_1A3C2EF94(v48, v50, v99);
      }

      goto LABEL_39;
    }

    v31 = swift_task_alloc();
    *(v1 + 632) = v31;
    *v31 = v1;
    v32 = sub_1A41AEBD8;
    goto LABEL_21;
  }

  if (*(v1 + 362) == 1)
  {
    v36 = *(v1 + 392);
    if (v36 && [v36 progressHandler])
    {
      v37 = *(v1 + 408);
      *(v1 + 361) = 0;
      v38 = MEMORY[0x1E69E6158];
      sub_1A3C5D688(0, &qword_1EB1261F0, &qword_1EB126F70, MEMORY[0x1E69E6158]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = sub_1A524C674();
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 40) = v40;
      *(inited + 48) = v37;
      v41 = sub_1A3C5D7A8(inited);
      swift_setDeallocating();
      sub_1A41B6C90(inited + 32, &qword_1EB126F70, v38);
      sub_1A41AF384(v41);
    }

    (*(*(v1 + 576) + 8))(*(v1 + 584), *(v1 + 568));
    __swift_destroy_boxed_opaque_existential_0((v1 + 192));
LABEL_34:
    v67 = *(v1 + 592);
    sub_1A41AF658(*(v1 + 408), v68, v69, v70);
    goto LABEL_35;
  }

  v54 = sub_1A524D264();
  v55 = *sub_1A486DB9C();
  if (os_log_type_enabled(v55, v54))
  {
    v58 = *(v1 + 400);
    v57 = *(v1 + 408);
    swift_unknownObjectRetain();
    v25 = v55;
    v59 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v59 = 134349314;
    *(v59 + 4) = v57;
    *(v59 + 12) = 2082;
    v60 = [v58 uuid];
    swift_unknownObjectRelease();
    if (v60)
    {
      v61 = sub_1A524C674();
      v63 = v62;

      sub_1A3C2EF94(v61, v63, v99);
    }

    goto LABEL_40;
  }

  v64 = *(v1 + 584);
  v65 = *(v1 + 576);
  v66 = *(v1 + 568);
  type metadata accessor for OneUpSharePlaySessionMediaProvider.Error(0, *(*(v1 + 464) + 80), *(*(v1 + 464) + 88), v56);
  swift_getWitnessTable();
  v25 = swift_allocError();
  swift_willThrow();
  (*(v65 + 8))(v64, v66);
  __swift_destroy_boxed_opaque_existential_0((v1 + 192));
  if ((sub_1A524CDC4() & 1) == 0)
  {
    v71 = sub_1A524D264();
    v72 = *sub_1A486DB9C();
    if (os_log_type_enabled(v72, v71))
    {
      v73 = *(v1 + 400);
      v74 = *(v1 + 408);
      swift_unknownObjectRetain();
      v72;
      v75 = v25;
      v76 = swift_slowAlloc();
      swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v76 = 134349570;
      *(v76 + 4) = v74;
      *(v76 + 12) = 2082;
      v77 = [v73 uuid];
      if (v77)
      {
        v78 = v77;

        swift_unknownObjectRelease();
        v79 = sub_1A524C674();
        v81 = v80;

        sub_1A3C2EF94(v79, v81, v99);
      }

      goto LABEL_41;
    }

    v83 = *(v1 + 504);
    v82 = *(v1 + 512);
    v84 = *(v1 + 488);
    v98 = *(v1 + 496);
    v85 = *(v1 + 472);
    v86 = *(v1 + 480);
    v87 = *(v1 + 448);
    v88 = *(v1 + 456);
    v89 = swift_allocObject();
    v89[2] = v87;
    v89[3] = v88;
    v89[4] = v25;
    *(v1 + 128) = sub_1A41B6AE8;
    *(v1 + 136) = v89;
    *(v1 + 96) = MEMORY[0x1E69E9820];
    *(v1 + 104) = 1107296256;
    *(v1 + 112) = sub_1A3C2E0D0;
    *(v1 + 120) = &block_descriptor_83;
    v90 = _Block_copy((v1 + 96));

    v91 = v25;
    sub_1A524BF14();
    *(v1 + 376) = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v82, v84, v90);
    _Block_release(v90);

    (*(v86 + 8))(v84, v85);
    (*(v83 + 8))(v82, v98);

    goto LABEL_34;
  }

  v67 = *(v1 + 592);

LABEL_35:

  v92 = *(v1 + 8);

  return v92();
}

uint64_t sub_1A41AE97C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A41AEAA4, 0, 0);
}

uint64_t sub_1A41AEAA4()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A41AEBD8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A41AED00, 0, 0);
}

uint64_t sub_1A41AED00()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A41AEE00()
{
  v34 = v0;
  v33[1] = *MEMORY[0x1E69E9840];
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  (*(v0[69] + 8))(v0[70], v0[68]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[46];
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  if (sub_1A524CDC4())
  {
    v5 = v0[74];

LABEL_7:

    v30 = v0[1];

    return v30();
  }

  v6 = sub_1A524D264();
  v7 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v7, v6))
  {
    v18 = v0[63];
    v17 = v0[64];
    v19 = v0[61];
    v32 = v0[62];
    v20 = v0[59];
    v21 = v0[60];
    v22 = v0[56];
    v23 = v0[57];
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = v23;
    v24[4] = v4;
    v0[16] = sub_1A41B6AE8;
    v0[17] = v24;
    v0[12] = MEMORY[0x1E69E9820];
    v0[13] = 1107296256;
    v0[14] = sub_1A3C2E0D0;
    v0[15] = &block_descriptor_83;
    v25 = _Block_copy(v0 + 12);

    v26 = v4;
    sub_1A524BF14();
    v0[47] = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v17, v19, v25);
    _Block_release(v25);

    (*(v21 + 8))(v19, v20);
    (*(v18 + 8))(v17, v32);

    v5 = v0[74];
    sub_1A41AF658(v0[51], v27, v28, v29);
    goto LABEL_7;
  }

  v8 = v0[50];
  v9 = v0[51];
  swift_unknownObjectRetain();
  v7;
  v10 = v4;
  v11 = swift_slowAlloc();
  swift_slowAlloc();
  v33[0] = swift_slowAlloc();
  *v11 = 134349570;
  *(v11 + 4) = v9;
  *(v11 + 12) = 2082;
  v12 = [v8 uuid];
  if (v12)
  {
    v13 = v12;

    swift_unknownObjectRelease();
    v14 = sub_1A524C674();
    v16 = v15;

    sub_1A3C2EF94(v14, v16, v33);
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

BOOL sub_1A41AF290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A524C454();
  v6 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v6));
  sub_1A41B60E8(v7, &v9);
  os_unfair_lock_unlock((v5 + v6));
  return v9;
}

void sub_1A41AF384(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A41B6F54(0, &qword_1EB1263C0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41AF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A524C454();
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1A41B618C(v5 + v6, v8, v9, v10);
  os_unfair_lock_unlock((v5 + v7));
}

void sub_1A41AF744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1A524C454();
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1A41B64F8((v5 + v6), v8, v9, v10);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1A41AF838(void *a1, int a2, void *a3, int a4, void *a5, void *aBlock, double a7, double a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_unknownObjectRetain();
  v15 = a5;
  v16 = a1;
  v17 = sub_1A41B4FA8(a3, a5, sub_1A41B786C, v14, a7, a8);
  swift_unknownObjectRelease();

  return v17;
}

uint64_t OneUpSharePlaySessionMediaProvider.requestImageData(for:options:resultHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a2;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v36 - v9;
  v11 = qword_1EB134210;

  v16 = sub_1A41ACDEC(v12, v13, v14, v15);

  v17 = sub_1A524D264();
  v18 = *sub_1A486DB9C();
  if (os_log_type_enabled(v18, v17))
  {
    v36[1] = a4;
    v36[2] = v11;
    v36[0] = v18;
    swift_unknownObjectRetain();
    v19 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v19 = 134349314;
    *(v19 + 4) = v16;
    *(v19 + 12) = 2082;
    v20 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v20)
    {
      v22 = sub_1A524C674();
      v24 = v23;

      sub_1A3C2EF94(v22, v24, &v39);
    }

    __break(1u);
  }

  else
  {
    v25 = sub_1A524CCB4();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = *(v5 + qword_1EB134218);
    v27 = *(v5 + v11);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v30 = v37;
    v29 = v38;
    v28[4] = v38;
    v28[5] = a1;
    v28[6] = v26;
    v28[7] = v16;
    v28[8] = v27;
    v28[9] = v30;
    v28[10] = a4;
    v31 = v29;

    swift_unknownObjectRetain();

    v32 = sub_1A3D4D930(0, 0, v10, &unk_1A5322320, v28);
    v33 = sub_1A3EE1368(v32, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744(v16, v33, v34, v35);

    return v16;
  }

  return result;
}

uint64_t sub_1A41AFC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[37] = v13;
  v8[38] = v14;
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[32] = a4;
  v8[39] = *a6;
  v9 = sub_1A524BEE4();
  v8[40] = v9;
  v8[41] = *(v9 - 8);
  v8[42] = swift_task_alloc();
  v10 = sub_1A524BF64();
  v8[43] = v10;
  v8[44] = *(v10 - 8);
  v8[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41AFD8C, 0, 0);
}

uint64_t sub_1A41AFD8C()
{
  v1 = [*(v0 + 256) resultHandlerQueue];
  if (!v1)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v1 = sub_1A524D474();
  }

  *(v0 + 368) = v1;
  *(v0 + 232) = *(v0 + 264);
  sub_1A3D435C4();
  sub_1A3C34400(0, &qword_1EB134290, &protocol descriptor for OneUpSharePlayExtendedAssetProperties);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 144);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v2);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  }

  else
  {
    *(v0 + 144) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    sub_1A41B649C(v0 + 112, &unk_1EB134298, &qword_1EB134290, &protocol descriptor for OneUpSharePlayExtendedAssetProperties, sub_1A3C34400);
    v4 = 0;
  }

  if ([*(v0 + 264) respondsToSelector_])
  {
    v5 = [*(v0 + 264) isSpatialMedia];
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_1A41AFF88;
  v7 = *(v0 + 280);
  v8 = *(v0 + 264);

  return sub_1A43414F8(v0 + 152, v8, v5, (v5 | v4) & 1, v7);
}
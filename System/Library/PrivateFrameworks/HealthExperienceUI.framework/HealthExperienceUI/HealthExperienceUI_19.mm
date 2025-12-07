uint64_t sub_1BA100350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1BA1003A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA10028C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BA1003D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9F3AFA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BA100408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA10045C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1BA1004B0(_BYTE *a2@<X8>)
{
  v3 = sub_1B9F3AFA0();

  *a2 = v3 & 1;
}

uint64_t sub_1BA1004F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BA10054C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SnidgetCurrentValueView.id.getter()
{
  v1 = *v0;

  return v1;
}

void SnidgetCurrentValueView.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SnidgetCurrentValueView.viewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 36);
  v6 = type metadata accessor for SnidgetCurrentValueView.ViewModel(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t SnidgetCurrentValueView.viewModel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 36);
  v7 = type metadata accessor for SnidgetCurrentValueView.ViewModel(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t SnidgetCurrentValueView.previousViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 40);
  type metadata accessor for SnidgetCurrentValueView.ViewModel(255, *(a1 + 16), *(a1 + 24), a2);
  v6 = sub_1BA4A7AA8();
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t SnidgetCurrentValueView.previousViewModel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 40);
  type metadata accessor for SnidgetCurrentValueView.ViewModel(255, *(a2 + 16), *(a2 + 24), a4);
  v7 = sub_1BA4A7AA8();
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t sub_1BA100874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA4A58D8();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1BA4A58E8();
}

uint64_t SnidgetCurrentValueView.ViewModel<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v50 = a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v46 = type metadata accessor for SnidgetCurrentValueView.ViewModel.DataCodingKeys(255, v5, v6, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1BA4A8298();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v38 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v52 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v43 = &v38 - v13;
  v15 = type metadata accessor for SnidgetCurrentValueView.ViewModel.NoDataCodingKeys(255, v5, v6, v14);
  v16 = swift_getWitnessTable();
  v42 = v15;
  v40 = v16;
  v41 = sub_1BA4A8298();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v17);
  v38 = &v38 - v18;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SnidgetCurrentValueView.ViewModel.CodingKeys(255, v5, v6, v24);
  swift_getWitnessTable();
  v53 = sub_1BA4A8298();
  v25 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v26);
  v28 = &v38 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v51;
  v29 = v52;
  sub_1BA4A8548();
  (*(v19 + 16))(v23, v54, v50);
  if ((*(v30 + 48))(v23, 1, v29) == 1)
  {
    v55 = 0;
    v31 = v38;
    v32 = v53;
    sub_1BA4A81F8();
    (*(v39 + 8))(v31, v41);
    return (*(v25 + 8))(v28, v32);
  }

  else
  {
    v54 = v25;
    v34 = v43;
    (*(v30 + 32))(v43, v23, v29);
    v56 = 1;
    v35 = v45;
    v36 = v53;
    sub_1BA4A81F8();
    v37 = v48;
    sub_1BA4A8288();
    (*(v47 + 8))(v35, v37);
    (*(v30 + 8))(v34, v29);
    return (*(v54 + 8))(v28, v36);
  }
}

double StandardSnidgetCurrentValueNoDataView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_1BA4A5718();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47BAC(0, &qword_1EDC5EBE8, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v43 - v7;
  v9 = sub_1BA4A5D68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v48 = *(v1 + 8);
  v49 = v14;
  v47 = *(v1 + 16);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v53 = sub_1BA4A1318();
  v54 = v15;
  sub_1B9F252FC();
  v16 = sub_1BA4A5E18();
  v18 = v17;
  v20 = v19;
  v46 = v21;
  (*(v10 + 104))(v13, *MEMORY[0x1E6980F08], v9);
  v22 = *MEMORY[0x1E6980E28];
  v23 = sub_1BA4A5C28();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v8, v22, v23);
  (*(v24 + 56))(v8, 0, 1, v23);
  sub_1BA4A5CD8();
  sub_1BA103284(v8, &qword_1EDC5EBE8, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1B9F47BAC);
  (*(v10 + 8))(v13, v9);
  sub_1BA4A5C48();
  sub_1BA4A5D08();

  v25 = sub_1BA4A5DE8();
  v27 = v26;
  v29 = v28;

  sub_1BA102AF4(v16, v18, v20 & 1);

  sub_1BA4A60F8();
  v30 = sub_1BA4A5DB8();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_1BA102AF4(v25, v27, v29 & 1);

  v53 = v30;
  v54 = v32;
  v55 = v34 & 1;
  v56 = v36;
  if (v47)
  {

    v38 = v49;
  }

  else
  {
    v39 = v49;

    sub_1BA4A6FB8();
    v40 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v41 = v43;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1B9F84D1C(v39, v48, 0);
    (*(v44 + 8))(v41, v45);
    v38 = v51;
    v37 = v52;
  }

  v51 = v38;
  v52 = v37;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1BA4A5F18();

  sub_1BA102AF4(v30, v32, v34 & 1);

  return result;
}

uint64_t sub_1BA101464@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  v5 = sub_1BA4A12C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BA1014F0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BA4A12C8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  v11 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  (*(v5 + 40))(v10 + v11, v9, v4);
  return swift_endAccess();
}

uint64_t sub_1BA101608@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BA101690(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  swift_beginAccess();
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1BA101780(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = MEMORY[0x1E6968848];
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16 - v11;
  sub_1B9F5CC44(a1, &v16 - v11, &unk_1EDC6E290, v8);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  sub_1B9F426D0(v12, v13 + v14);
  return swift_endAccess();
}

uint64_t sub_1BA101888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1B9F5CC44(v2 + v4, a2, &unk_1EDC6E290, MEMORY[0x1E6968848]);
}

uint64_t sub_1BA101904(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1B9F426D0(a1, v2 + v4);
  return swift_endAccess();
}

double sub_1BA1019C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;

  return result;
}

double sub_1BA101A2C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  return result;
}

double sub_1BA101AB0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;

  return result;
}

double sub_1BA101B18(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  return result;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.__allocating_init(supratitleString:primaryString:subtitleString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v18 = *a4;
  v17 = *(a4 + 2);
  v16 = *(a4 + 24);
  v9 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  v10 = sub_1BA4A12C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8 + v9, 1, 1, v10);
  v13 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v12(v8 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, 1, 1, v10);
  v14 = v8 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 0;
  swift_beginAccess();
  sub_1B9F426D0(a1, v8 + v9);
  swift_endAccess();
  (*(v11 + 32))(v8 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString, a2, v10);
  swift_beginAccess();
  sub_1B9F426D0(a3, v8 + v13);
  swift_endAccess();
  swift_beginAccess();
  *v14 = v18;
  *(v14 + 16) = v17;
  *(v14 + 24) = v16;

  return v8;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.init(supratitleString:primaryString:subtitleString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v17 = *a4;
  v16 = *(a4 + 2);
  v15 = *(a4 + 24);
  v8 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  v9 = sub_1BA4A12C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v4 + v8, 1, 1, v9);
  v12 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v11(v4 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, 1, 1, v9);
  v13 = v4 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *v13 = 0;
  swift_beginAccess();
  sub_1B9F426D0(a1, v4 + v8);
  swift_endAccess();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString, a2, v9);
  swift_beginAccess();
  sub_1B9F426D0(a3, v4 + v12);
  swift_endAccess();
  swift_beginAccess();
  *v13 = v17;
  *(v13 + 16) = v16;
  *(v13 + 24) = v15;

  return v4;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  StandardSnidgetCurrentValueDataView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t sub_1BA101FB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA103098(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA101FE0(uint64_t a1)
{
  v2 = sub_1B9F4372C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA10201C(uint64_t a1)
{
  v2 = sub_1B9F4372C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.deinit()
{
  v1 = MEMORY[0x1E6968848];
  v2 = MEMORY[0x1E69E6720];
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, &unk_1EDC6E290, v1, v2, sub_1B9F47BAC);

  return v0;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.__deallocating_deinit()
{
  v1 = MEMORY[0x1E6968848];
  v2 = MEMORY[0x1E69E6720];
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, &unk_1EDC6E290, v1, v2, sub_1B9F47BAC);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1022A4(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A12C8();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6968848];
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1B9F436C8(0, &qword_1EDC5DCF0, MEMORY[0x1E69E6F58]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v34 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F4372C();
  sub_1BA4A8548();
  v21 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  swift_beginAccess();
  v36 = v2;
  sub_1B9F5CC44(v2 + v21, v14, &unk_1EDC6E290, v7);
  LOBYTE(v41) = 0;
  sub_1B9F4D13C(&qword_1EDC6AEB8, MEMORY[0x1E6968848], MEMORY[0x1E6968850]);
  v22 = v16;
  v23 = v40;
  v24 = v39;
  sub_1BA4A8238();
  if (v23)
  {
    sub_1BA103284(v14, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    return (*(v17 + 8))(v20, v22);
  }

  else
  {
    v40 = v17;
    sub_1BA103284(v14, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v26 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
    v27 = v36;
    swift_beginAccess();
    (*(v38 + 16))(v37, v27 + v26, v24);
    LOBYTE(v41) = 1;
    sub_1BA4A8288();
    (*(v38 + 8))(v37, v24);
    v28 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v35;
    sub_1B9F5CC44(v29, v35, &unk_1EDC6E290, MEMORY[0x1E6968848]);
    LOBYTE(v41) = 2;
    sub_1BA4A8238();
    v31 = v40;
    sub_1BA103284(v30, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v32 = (v27 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
    swift_beginAccess();
    v33 = *(v32 + 24);
    v41 = *v32;
    v42 = *(v32 + 1);
    v43 = v33;
    v44 = 3;
    sub_1BA102B04();

    sub_1BA4A8238();

    return (*(v31 + 8))(0, v22);
  }
}

uint64_t StandardSnidgetCurrentValueDataView.$viewModel.getter()
{
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
  sub_1B9F4D13C(&qword_1EDC61320, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for StandardSnidgetCurrentValueDataView.ViewModel);

  return sub_1BA4A5358();
}

void StandardSnidgetCurrentValueDataView.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
  sub_1B9F4D13C(&qword_1EDC61320, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for StandardSnidgetCurrentValueDataView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
}

uint64_t StandardSnidgetCurrentValueDataView.body.getter@<X0>(uint64_t a7@<X8>)
{
  v9 = v7[1];
  v12 = *v7;
  v13[0] = v9;
  *(v13 + 9) = *(v7 + 25);
  *a7 = sub_1BA4A5878();
  *(a7 + 8) = 0x4000000000000000;
  *(a7 + 16) = 0;
  sub_1B9F5B6F4(0);
  return sub_1B9F5B79C(&v12, a7 + *(v10 + 44));
}

double sub_1BA102AF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

unint64_t sub_1BA102B04()
{
  result = qword_1EDC63468;
  if (!qword_1EDC63468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63468);
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F5CC44(v4 + v5, a3, &unk_1EDC6E290, MEMORY[0x1E6968848]);
}

uint64_t sub_1BA102BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BA102C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA102EC0()
{
  result = qword_1EBBEBF10;
  if (!qword_1EBBEBF10)
  {
    sub_1B9F5305C(255);
    sub_1B9F4D13C(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF10);
  }

  return result;
}

unint64_t sub_1BA102F70()
{
  result = qword_1EDC5E978;
  if (!qword_1EDC5E978)
  {
    sub_1B9F47BAC(255, &qword_1EDC5E970, sub_1B9F528CC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E978);
  }

  return result;
}

unint64_t sub_1BA103044()
{
  result = qword_1EBBEBF18;
  if (!qword_1EBBEBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF18);
  }

  return result;
}

uint64_t sub_1BA103098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA4EAEC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x537972616D697270 && a2 == 0xED0000676E697274 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEE00676E69727453 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA4EAEF0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA10321C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA103284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA1032E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA10334C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MutableArrayDataSourceWithLayout.init(arrangedSections:collapseEmptySections:layoutConstructor:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B9F1DAFC(a1, a2, a3, a4);

  return v4;
}

uint64_t MutableArrayDataSourceWithLayout.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA1034CC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA103524(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id (*sub_1BA1035E4())(uint64_t a1, uint64_t a2)
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_1BA4A85D8();
    v11 = sub_1B9F0B82C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s]: layoutConstructor is deprecated and will not behave correctly with context-dependent layout providers", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_allocObject();
  swift_weakInit();
  return sub_1BA1047C8;
}

double sub_1BA1037F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v6[5] = v5;
  v7 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  *v7 = sub_1BA1047D0;
  v7[1] = v6;

  return result;
}

void (*sub_1BA1038BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *v1;
  sub_1BA1035E4();
  *(v4 + 48) = sub_1BA1047C8;
  *(v4 + 56) = v5;
  return sub_1BA10396C;
}

void sub_1BA10396C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  if (a2)
  {
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v5;
    v7[5] = v6;
    v8 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
    swift_beginAccess();
    *v8 = sub_1BA104B60;
    v8[1] = v7;
  }

  else
  {
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v4;
    v9[4] = v5;
    v9[5] = v6;
    v10 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
    swift_beginAccess();
    *v10 = sub_1BA104B60;
    v10[1] = v9;
  }

  free(v2);
}

uint64_t sub_1BA103AA8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA103AEC(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BA103B9C(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v4 = *v3;
  v8 = v7;
  v9 = v2;

  v5 = v4(&v8);

  return v5;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:sectionLayout:)(uint64_t a1, int a2, uint64_t a3)
{
  v31 = sub_1BA4A1798();
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v8);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v25 = a3;
    v26 = a2;
    v27 = v3;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v10, 0);
    v11 = v32;
    v28 = (v7 + 8);
    v29 = a1;
    v12 = 32;
    do
    {
      v13 = *(a1 + v12);

      v14 = v30;
      sub_1BA4A1788();
      v15 = sub_1BA4A1748();
      v17 = v16;
      (*v28)(v14, v31);

      v19 = Array<A>.identifierToIndexDict()(v18);

      v32 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B9F277B0((v20 > 1), v21 + 1, 1);
        v11 = v32;
      }

      *(v11 + 16) = v21 + 1;
      v22 = (v11 + 48 * v21);
      v22[4] = 0;
      v22[5] = 0;
      v22[6] = v13;
      v22[7] = v19;
      v22[8] = v15;
      v22[9] = v17;
      v12 += 8;
      --v10;
      a1 = v29;
    }

    while (v10);

    v3 = v27;
    LOBYTE(a2) = v26;
    a3 = v25;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  return (*(v3 + 560))(v11, a2 & 1, sub_1BA104830, v23);
}

double sub_1BA103E74@<D0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1BA104B2C;
  a2[1] = v6;

  return result;
}

double sub_1BA103F00(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  *v6 = sub_1BA104AF4;
  v6[1] = v5;

  return result;
}

double sub_1BA103F9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_1BA1037F0(sub_1BA104A78, v3);
}

id sub_1BA10400C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = (Strong + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
    swift_beginAccess();
    v7 = *v6;

    *&v11 = a1;
    *(&v11 + 1) = a2;
    *&v12 = sub_1BA1BA9D0(a1);
    swift_unknownObjectRetain();
    v8 = v7(&v11);

    swift_unknownObjectRelease();
    return v8;
  }

  else
  {
    if (qword_1EDC6D2F0 != -1)
    {
      swift_once();
    }

    v19[4] = xmmword_1EDC6D338;
    v19[5] = unk_1EDC6D348;
    v19[6] = xmmword_1EDC6D358;
    v19[7] = unk_1EDC6D368;
    v19[0] = xmmword_1EDC6D2F8;
    v19[1] = *&qword_1EDC6D308;
    v19[2] = xmmword_1EDC6D318;
    v19[3] = unk_1EDC6D328;
    sub_1BA0117AC();
    v15 = xmmword_1EDC6D338;
    v16 = unk_1EDC6D348;
    v17 = xmmword_1EDC6D358;
    v18 = unk_1EDC6D368;
    v11 = xmmword_1EDC6D2F8;
    v12 = *&qword_1EDC6D308;
    v13 = xmmword_1EDC6D318;
    v14 = unk_1EDC6D328;
    sub_1B9F1D9A4(v19, v10);
    return sub_1B9F293A8(&v11);
  }
}

uint64_t sub_1BA1041C4(void *a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = a2(*a1, a1[1]);
  if (!result)
  {
    sub_1BA4A7DF8();

    v6 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v6);

    MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4EB020);
    type metadata accessor for MutableArrayDataSourceWithLayout(0);

    v7 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v7);

    sub_1B9FF806C();
    swift_allocError();
    *v8 = 91;
    *(v8 + 8) = 0xE100000000000000;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(arrangedSections:collapseEmptySections:sectionLayout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v8 = *(v3 + 560);

  return v8(a1, a2, sub_1BA104B78, v7);
}

id sub_1BA104394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a3)
  {
    if (qword_1EDC6D268 != -1)
    {
      swift_once();
    }

    v9[4] = xmmword_1EDC6D2B0;
    v9[5] = *&qword_1EDC6D2C0;
    v9[6] = xmmword_1EDC6D2D0;
    v9[7] = unk_1EDC6D2E0;
    v9[0] = xmmword_1EDC6D270;
    v9[1] = *&qword_1EDC6D280;
    v9[2] = xmmword_1EDC6D290;
    v9[3] = *&qword_1EDC6D2A0;
    sub_1BA0117AC();
    v8[4] = xmmword_1EDC6D2B0;
    v8[5] = *&qword_1EDC6D2C0;
    v8[6] = xmmword_1EDC6D2D0;
    v8[7] = unk_1EDC6D2E0;
    v8[0] = xmmword_1EDC6D270;
    v8[1] = *&qword_1EDC6D280;
    v8[2] = xmmword_1EDC6D290;
    v8[3] = *&qword_1EDC6D2A0;
    sub_1B9F1D9A4(v9, &v7);
    v4 = sub_1B9F293A8(v8);
  }

  v5 = a3;
  return v4;
}

uint64_t MutableArrayDataSourceWithLayout.init(arrangedSections:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B9F2E074(a1, a2, a3, a4);

  return v4;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v34 = sub_1BA4A1798();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v10);
  v33 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v27 = a2;
    v28 = a3;
    v29 = a4;
    v30 = v4;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v12, 0);
    v13 = v35;
    v31 = (v9 + 8);
    v32 = a1;
    v14 = 32;
    do
    {
      v15 = *(a1 + v14);

      v16 = v33;
      sub_1BA4A1788();
      v17 = sub_1BA4A1748();
      v19 = v18;
      (*v31)(v16, v34);

      v21 = Array<A>.identifierToIndexDict()(v20);

      v35 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B9F277B0((v22 > 1), v23 + 1, 1);
        v13 = v35;
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 48 * v23);
      v24[4] = 0;
      v24[5] = 0;
      v24[6] = v15;
      v24[7] = v21;
      v24[8] = v17;
      v24[9] = v19;
      v14 += 8;
      --v12;
      a1 = v32;
    }

    while (v12);

    a4 = v29;
    v4 = v30;
    a3 = v28;
    LOBYTE(a2) = v27;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  return (*(v4 + 584))(v13, a2 & 1, a3, a4);
}

uint64_t MutableArrayDataSourceWithLayout.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA104A78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1BA104ABC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

void *sub_1BA104AF4()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1BA104B2C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1BA104B8C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1BA104BF4(v5);
}

void sub_1BA104BF4(void *a1)
{
  if (!a1)
  {
    goto LABEL_49;
  }

  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints];
  v116[4] = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints];
  v116[5] = v3;
  v102 = v1;
  v116[6] = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints];

  v100 = a1;

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v4 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  while (v4 != 3)
  {
    if (v6 == v4)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      return;
    }

    v7 = v116[v4++ + 4];
    if (v7)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BA27FE28(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1BA27FE28((v8 > 1), v9 + 1, 1, v5);
      }

      v5[2] = v9 + 1;
      v5[v9 + 4] = v7;
      goto LABEL_3;
    }
  }

  sub_1BA10667C(0, &qword_1EBBEBF48, sub_1BA106648, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v10 = v5[2];
  if (!v10)
  {
    goto LABEL_48;
  }

  v11 = 0;
  v110 = v5 + 4;
  v12 = MEMORY[0x1E69E7CC0];
  v104 = v5[2];
  v106 = v5;
  while (1)
  {
    if (v11 >= v5[2])
    {
      goto LABEL_95;
    }

    v13 = v110[v11];
    v14 = v13 >> 62;
    v15 = v13 >> 62 ? sub_1BA4A7CC8() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v12 >> 62;
    if (v12 >> 62)
    {
      break;
    }

    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      goto LABEL_47;
    }

LABEL_23:

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v20 = v12 & 0xFFFFFFFFFFFFFF8;
        v114 = v12;
        if (v18 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_28:
      sub_1BA4A7CC8();
      goto LABEL_29;
    }

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_29:
    v114 = sub_1BA4A7E38();
    v20 = v114 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v14)
    {
      v24 = v20;
      v25 = sub_1BA4A7CC8();
      v20 = v24;
      v23 = v25;
      if (!v25)
      {
LABEL_16:

        if (v15 > 0)
        {
          goto LABEL_96;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_16;
      }
    }

    if (((v22 >> 1) - v21) < v15)
    {
      goto LABEL_99;
    }

    v112 = v11;
    v26 = v20 + 8 * v21 + 32;
    v108 = v20;
    if (v14)
    {
      if (v23 < 1)
      {
        goto LABEL_103;
      }

      sub_1BA106648(0, v19);
      sub_1BA1066E0(v27);
      for (i = 0; i != v23; ++i)
      {
        v29 = sub_1BA0CA818(v117, i, v13);
        v31 = *v30;
        (v29)(v117, 0);
        *(v26 + 8 * i) = v31;
      }

      v10 = v104;
      v5 = v106;
    }

    else
    {
      sub_1B9F740B0();
      swift_arrayInitWithCopy();
    }

    v11 = v112;
    if (v15 > 0)
    {
      v32 = *(v108 + 16);
      v33 = __OFADD__(v32, v15);
      v34 = v32 + v15;
      if (v33)
      {
        goto LABEL_101;
      }

      *(v108 + 16) = v34;
    }

LABEL_17:
    ++v11;
    v12 = v114;
    if (v11 == v10)
    {
      goto LABEL_48;
    }
  }

  v35 = sub_1BA4A7CC8();
  v18 = v35 + v15;
  if (!__OFADD__(v35, v15))
  {
    goto LABEL_23;
  }

LABEL_47:
  __break(1u);
LABEL_48:

  v36 = objc_opt_self();
  sub_1B9F740B0();
  v37 = sub_1BA4A6AE8();

  [v36 deactivateConstraints_];

  [v100 removeFromSuperview];
  v1 = v102;
LABEL_49:
  v38 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v39 = *&v1[v38];
  if (v39)
  {
    v40 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView];
    v41 = v39;
    [v40 addSubview_];
    sub_1B9F109F8();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BA4B7510;
    v43 = v1;
    v44 = [v41 leadingAnchor];
    v45 = [v40 leadingAnchor];
    v46 = [v44 constraintEqualToAnchor_];

    *(v42 + 32) = v46;
    v47 = [v41 trailingAnchor];
    v48 = [v40 trailingAnchor];
    v49 = [v47 &selRef:v48 numberWithInteger:? + 5];

    *(v42 + 40) = v49;
    v50 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints;
    *&v43[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints] = v42;

    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1BA4B7510;
    v52 = [v41 topAnchor];
    v53 = [v40 topAnchor];
    v54 = [v52 &selRef:v53 numberWithInteger:? + 5];

    *(v51 + 32) = v54;
    v55 = [v40 bottomAnchor];
    v56 = [v41 bottomAnchor];
    v57 = [v55 constraintGreaterThanOrEqualToAnchor_];

    *(v51 + 40) = v57;
    v58 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints;
    *&v43[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints] = v51;

    v59 = [v40 heightAnchor];
    v60 = [v43 heightAnchor];
    v61 = [v59 constraintEqualToAnchor_];

    LODWORD(v62) = 1132068864;
    [v61 setPriority_];
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1BA4B7510;
    *(v63 + 32) = v61;
    v101 = v61;
    v103 = v41;
    v64 = [v41 centerYAnchor];
    v65 = [v40 centerYAnchor];
    v66 = [v64 constraintEqualToAnchor_];

    *(v63 + 40) = v66;
    *&v43[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints] = v63;

    v67 = *&v43[v58];
    v118 = *&v43[v50];
    v119 = v67;

    v68 = 0;
    v69 = MEMORY[0x1E69E7CC0];
    while (v68 != 2)
    {
      v70 = *&v117[8 * v68++ + 64];
      if (v70)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1BA27FE28(0, v69[2] + 1, 1, v69);
        }

        v72 = v69[2];
        v71 = v69[3];
        if (v72 >= v71 >> 1)
        {
          v69 = sub_1BA27FE28((v71 > 1), v72 + 1, 1, v69);
        }

        v69[2] = v72 + 1;
        v69[v72 + 4] = v70;
      }
    }

    sub_1BA10667C(0, &qword_1EBBEBF48, sub_1BA106648, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    v73 = v69[2];
    if (!v73)
    {
LABEL_92:

      v98 = objc_opt_self();
      sub_1B9F740B0();
      v99 = sub_1BA4A6AE8();

      [v98 activateConstraints_];

      return;
    }

    v74 = 0;
    v111 = v69 + 4;
    v75 = MEMORY[0x1E69E7CC0];
    v105 = v69[2];
    v107 = v69;
    while (2)
    {
      if (v74 >= v69[2])
      {
        goto LABEL_97;
      }

      v76 = v111[v74];
      v77 = v76 >> 62;
      if (v76 >> 62)
      {
        v78 = sub_1BA4A7CC8();
      }

      else
      {
        v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v79 = v75 >> 62;
      if (v75 >> 62)
      {
        v97 = sub_1BA4A7CC8();
        v81 = v97 + v78;
        if (__OFADD__(v97, v78))
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }
      }

      else
      {
        v80 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v81 = v80 + v78;
        if (__OFADD__(v80, v78))
        {
          goto LABEL_91;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v79)
        {
          v83 = v75 & 0xFFFFFFFFFFFFFF8;
          v115 = v75;
          if (v81 > *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_73:
            v115 = sub_1BA4A7E38();
            v83 = v115 & 0xFFFFFFFFFFFFFF8;
          }

          v84 = *(v83 + 16);
          v85 = *(v83 + 24);
          if (v77)
          {
            v87 = v83;
            v88 = sub_1BA4A7CC8();
            v83 = v87;
            v86 = v88;
            if (v88)
            {
              goto LABEL_78;
            }

LABEL_60:

            if (v78 > 0)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v86 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v86)
            {
              goto LABEL_60;
            }

LABEL_78:
            if (((v85 >> 1) - v84) < v78)
            {
              goto LABEL_100;
            }

            v113 = v74;
            v89 = v83 + 8 * v84 + 32;
            v109 = v83;
            if (v77)
            {
              if (v86 < 1)
              {
                goto LABEL_104;
              }

              sub_1BA106648(0, v82);
              sub_1BA1066E0(v90);
              for (j = 0; j != v86; ++j)
              {
                v92 = sub_1BA0CA818(v117, j, v76);
                v94 = *v93;
                (v92)(v117, 0);
                *(v89 + 8 * j) = v94;
              }

              v73 = v105;
              v69 = v107;
            }

            else
            {
              sub_1B9F740B0();
              swift_arrayInitWithCopy();
            }

            v74 = v113;
            if (v78 > 0)
            {
              v95 = *(v109 + 16);
              v33 = __OFADD__(v95, v78);
              v96 = v95 + v78;
              if (v33)
              {
                goto LABEL_102;
              }

              *(v109 + 16) = v96;
            }
          }

          ++v74;
          v75 = v115;
          if (v74 == v73)
          {
            goto LABEL_92;
          }

          continue;
        }
      }

      else if (!v79)
      {
        goto LABEL_73;
      }

      break;
    }

    sub_1BA4A7CC8();
    goto LABEL_73;
  }
}

void *sub_1BA1057A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA1057F0(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1BA104BF4(v4);
}

void (*sub_1BA10585C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BA1058F8;
}

void sub_1BA1058F8(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1BA104BF4(v8);

    v8 = *v5;
  }

  else
  {
    sub_1BA104BF4(v8);
  }

  free(v3);
}

char *sub_1BA105994(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView] = v9;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for VerticallyCenteredContentScrollView();
  v10 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView;
  v12 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v10[v11];
  v15 = v13;
  [v15 addSubview_];
  v16 = objc_opt_self();
  sub_1B9F109F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5880;
  v18 = [*&v10[v11] topAnchor];
  v19 = [v15 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [*&v10[v11] leadingAnchor];
  v22 = [v15 leadingAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v17 + 40) = v23;
  v24 = [*&v10[v11] trailingAnchor];
  v25 = [v15 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v17 + 48) = v26;
  v27 = [*&v10[v11] widthAnchor];
  v28 = [v15 widthAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v17 + 56) = v29;
  v30 = [*&v10[v11] bottomAnchor];
  v31 = [v15 bottomAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v17 + 64) = v32;
  sub_1B9F740B0();
  v33 = sub_1BA4A6AE8();

  [v16 activateConstraints_];

  return v15;
}

void sub_1BA105DC8()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = type metadata accessor for VerticallyCenteredContentScrollView();
  objc_msgSendSuper2(&v51, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    v6 = v5;
    [v4 frame];
    v8 = v7;
    if (v7 >= v6)
    {
      v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints);
      v10 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        v47 = MEMORY[0x1E69E7CC0];
        if (v9 >> 62)
        {
          v11 = sub_1BA4A7CC8();
        }

        else
        {
          v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v11)
        {
          v39 = v4;
          v43 = v1;
          v12 = 0;
          v1 = &selRef_createHKUnitPreferenceController;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x1BFAF2860](v12, v9);
            }

            else
            {
              if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v13 = *(v9 + 8 * v12 + 32);
            }

            v14 = v13;
            v4 = (v12 + 1);
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if ([v13 isActive])
            {
              sub_1BA4A7ED8();
              sub_1BA4A7F18();
              sub_1BA4A7F28();
              sub_1BA4A7EE8();
            }

            else
            {
            }

            ++v12;
            if (v4 == v11)
            {
              v1 = v43;
              v10 = v47;
              v4 = v39;
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_32:
      }

      if (!(v10 >> 62))
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_46:

LABEL_47:
          v25 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints);
          v26 = MEMORY[0x1E69E7CC0];
          if (v25)
          {
            v49 = MEMORY[0x1E69E7CC0];
            if (v25 >> 62)
            {
              v27 = sub_1BA4A7CC8();
            }

            else
            {
              v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v27)
            {
              v41 = v4;
              v45 = v1;
              v28 = 0;
              v1 = &selRef_createHKUnitPreferenceController;
              while (1)
              {
                if ((v25 & 0xC000000000000001) != 0)
                {
                  v29 = MEMORY[0x1BFAF2860](v28, v25);
                }

                else
                {
                  if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_67;
                  }

                  v29 = *(v25 + 8 * v28 + 32);
                }

                v30 = v29;
                v4 = (v28 + 1);
                if (__OFADD__(v28, 1))
                {
                  break;
                }

                if ([v29 isActive])
                {
                }

                else
                {
                  sub_1BA4A7ED8();
                  sub_1BA4A7F18();
                  sub_1BA4A7F28();
                  sub_1BA4A7EE8();
                }

                ++v28;
                if (v4 == v27)
                {
                  v1 = v45;
                  v26 = v49;
                  v4 = v41;
                  goto LABEL_62;
                }
              }

              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

LABEL_62:
          }

          if (v26 >> 62)
          {
            goto LABEL_91;
          }

          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          goto LABEL_94;
        }

LABEL_35:
        v21 = objc_opt_self();
        sub_1B9F740B0();
        v22 = sub_1BA4A6AE8();

        [v21 deactivateConstraints_];

        goto LABEL_47;
      }

LABEL_45:
      if (!sub_1BA4A7CC8())
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    v15 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v48 = MEMORY[0x1E69E7CC0];
      if (v15 >> 62)
      {
        v17 = sub_1BA4A7CC8();
      }

      else
      {
        v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        v40 = v4;
        v44 = v1;
        v18 = 0;
        v1 = &selRef_createHKUnitPreferenceController;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1BFAF2860](v18, v15);
          }

          else
          {
            if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          v4 = (v18 + 1);
          if (__OFADD__(v18, 1))
          {
            goto LABEL_42;
          }

          if ([v19 isActive])
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }

          else
          {
          }

          ++v18;
          if (v4 == v17)
          {
            v1 = v44;
            v16 = v48;
            v4 = v40;
            break;
          }
        }
      }
    }

    if (!(v16 >> 62))
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_69:

        goto LABEL_70;
      }

LABEL_40:
      v23 = objc_opt_self();
      sub_1B9F740B0();
      v24 = sub_1BA4A6AE8();

      [v23 deactivateConstraints_];

LABEL_70:
      v31 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints);
      v32 = MEMORY[0x1E69E7CC0];
      if (v31)
      {
        v50 = MEMORY[0x1E69E7CC0];
        if (v31 >> 62)
        {
          v33 = sub_1BA4A7CC8();
        }

        else
        {
          v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v33)
        {
          v42 = v4;
          v46 = v1;
          v34 = 0;
          v1 = &selRef_createHKUnitPreferenceController;
          while (1)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x1BFAF2860](v34, v31);
            }

            else
            {
              if (v34 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_90;
              }

              v35 = *(v31 + 8 * v34 + 32);
            }

            v36 = v35;
            v4 = (v34 + 1);
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if ([v35 isActive])
            {
            }

            else
            {
              sub_1BA4A7ED8();
              sub_1BA4A7F18();
              sub_1BA4A7F28();
              sub_1BA4A7EE8();
            }

            ++v34;
            if (v4 == v33)
            {
              v1 = v46;
              v32 = v50;
              v4 = v42;
              goto LABEL_85;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          if (!sub_1BA4A7CC8())
          {
            goto LABEL_94;
          }

LABEL_88:
          v37 = objc_opt_self();
          sub_1B9F740B0();
          v38 = sub_1BA4A6AE8();

          [v37 activateConstraints_];

LABEL_95:
          [v1 setShowsVerticalScrollIndicator_];

          return;
        }

LABEL_85:
      }

      if (v32 >> 62)
      {
        if (sub_1BA4A7CC8())
        {
          goto LABEL_88;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

LABEL_94:

      goto LABEL_95;
    }

LABEL_68:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_69;
    }

    goto LABEL_40;
  }
}

id VerticallyCenteredContentScrollView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticallyCenteredContentScrollView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA10667C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA1066E0(__n128 a1)
{
  result = qword_1EBBE9A30;
  if (!qword_1EBBE9A30)
  {
    sub_1BA106648(255, a1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9A30);
  }

  return result;
}

uint64_t DataType.uniqueIdentifier.getter()
{
  v0 = sub_1BA4A2508();
  if (!v0)
  {
    return 7104878;
  }

  v1 = v0;
  v2 = [v0 identifier];

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v3;
}

uint64_t DataType.reuseIdentifier.getter()
{
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  sub_1BA1067EC();
  return sub_1BA4A6808();
}

unint64_t sub_1BA1067EC()
{
  result = qword_1EDC601D0;
  if (!qword_1EDC601D0)
  {
    type metadata accessor for ContentConfigurationCollectionViewListCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC601D0);
  }

  return result;
}

unint64_t sub_1BA106838()
{
  result = qword_1EBBEBF50;
  if (!qword_1EBBEBF50)
  {
    sub_1BA4A2558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF50);
  }

  return result;
}

uint64_t sub_1BA106890()
{
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  sub_1BA1067EC();
  return sub_1BA4A6808();
}

uint64_t sub_1BA1068CC()
{
  v0 = sub_1BA4A2508();
  if (!v0)
  {
    return 7104878;
  }

  v1 = v0;
  v2 = [v0 identifier];

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v3;
}

uint64_t sub_1BA106948(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA106A08(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for InternalFeedItemDataPropertyViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v2 = sub_1BA4A6758();
  [v1 setTitle_];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v5 clearColor];
  [v7 setBackgroundColor_];

  v9 = [v5 labelColor];
  [v7 setTextColor_];

  [v7 setBounces_];
  sub_1BA106DA4(*&v1[OBJC_IVAR____TtC18HealthExperienceUI42InternalFeedItemDataPropertyViewController_data], *&v1[OBJC_IVAR____TtC18HealthExperienceUI42InternalFeedItemDataPropertyViewController_data + 8]);
  v10 = sub_1BA4A6758();

  [v7 setText_];

  v11 = [objc_opt_self() preferredFontForTextStyle_];
  [v7 setFont_];

  [v7 setEditable_];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  [v12 addSubview_];

  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 layoutMarginsGuide];

    [v7 hk:v16 alignConstraintsWithGuide:?];
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BA106D38(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InternalFeedItemDataPropertyViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA106DA4(uint64_t a1, unint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A67F8();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  if (a2 >> 60 == 15)
  {
    return 0x3E6C696E3CLL;
  }

  v7 = objc_opt_self();
  sub_1B9F206D4(a1, a2);
  v8 = sub_1BA4A15F8();
  v24 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v24];

  v10 = v24;
  if (!v9)
  {
    v20 = v10;
    v21 = sub_1BA4A1488();

    swift_willThrow();
LABEL_10:
    sub_1B9F206D4(a1, a2);
    v23 = sub_1BA4A15E8();
    sub_1B9F6AC8C(a1, a2);
    sub_1B9F6AC8C(a1, a2);

    return v23;
  }

  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v11 = sub_1BA4A8328();
  v24 = 0;
  v12 = [v7 dataWithJSONObject:v11 options:1 error:&v24];
  swift_unknownObjectRelease();
  v13 = v24;
  if (!v12)
  {
    v22 = v13;
    v21 = sub_1BA4A1488();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v25);
    goto LABEL_10;
  }

  v14 = sub_1BA4A1608();
  v16 = v15;

  sub_1BA4A67E8();
  v17 = sub_1BA4A67A8();
  v19 = v18;
  sub_1B9F2BB4C(v14, v16);
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (!v19)
  {
    sub_1B9F206D4(a1, a2);
    v17 = sub_1BA4A15E8();
    sub_1B9F6AC8C(a1, a2);
  }

  sub_1B9F6AC8C(a1, a2);
  return v17;
}

uint64_t sub_1BA1071B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F47ECC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA107220()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
  }
}

uint64_t sub_1BA107240(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_1BA107258(void *a1))()
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  a1[1] = v1;
  a1[2] = v2;
  v3 = (v1 + v2);
  v4 = *(v3 + 8);
  v5 = *v3;
  if (v4)
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1BA10A470;
}

uint64_t sub_1BA10729C()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue);
  }
}

uint64_t sub_1BA1072BC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_1BA1072D4(void *a1))()
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  a1[1] = v1;
  a1[2] = v2;
  v3 = (v1 + v2);
  v4 = *(v3 + 8);
  v5 = *v3;
  if (v4)
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1BA107318;
}

void *sub_1BA107318(void *result)
{
  v1 = result[1] + result[2];
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void sub_1BA107330(void *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue);
  }
}

void *sub_1BA107360(void *result)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_1BA10737C(void *a1))()
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  a1[1] = v1;
  a1[2] = v2;
  v3 = (v1 + v2);
  if (v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *a1 = v4;
  return sub_1BA10A470;
}

id ChartContext.__allocating_init(date:preferredOverlay:trendActive:chartOptions:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v31 = a2;
  v32 = a4;
  v30 = a3;
  v29 = a1;
  v7 = MEMORY[0x1E6968130];
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v27 - v10;
  v12 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v27 - v15;
  v28 = *a5;
  sub_1BA1071B4(a1, &v27 - v15, &qword_1EDC6E440, v12);
  v17 = sub_1BA4A0FA8();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = type metadata accessor for ChartContext(0);
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
  *v22 = 0;
  v22[8] = 1;
  sub_1BA1071B4(v16, &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v12);
  sub_1BA1071B4(v11, &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v7);
  v23 = v30 & 1;
  v24 = v31;
  if (v30)
  {
    v24 = 0;
  }

  *v20 = v24;
  v20[8] = v23;
  *v21 = v32;
  v21[8] = 0;
  *v22 = v28;
  v22[8] = 0;
  v33.receiver = v19;
  v33.super_class = v18;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  sub_1BA108FEC(v29, &qword_1EDC6E440, v12);
  sub_1BA108FEC(v11, &qword_1EDC6E2A0, v7);
  sub_1BA108FEC(v16, &qword_1EDC6E440, v12);
  return v25;
}

id ChartContext.__allocating_init(dateInterval:preferredOverlay:trendActive:chartOptions:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v31 = a2;
  v32 = a4;
  v30 = a3;
  v28 = a1;
  v7 = MEMORY[0x1E6968130];
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v27 - v10;
  v12 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v27 - v15;
  v29 = *a5;
  v17 = sub_1BA4A1728();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1BA1071B4(a1, v11, &qword_1EDC6E2A0, v7);
  v18 = type metadata accessor for ChartContext(0);
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
  *v22 = 0;
  v22[8] = 1;
  sub_1BA1071B4(v16, &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v12);
  sub_1BA1071B4(v11, &v19[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v7);
  v23 = v30 & 1;
  v24 = v31;
  if (v30)
  {
    v24 = 0;
  }

  *v20 = v24;
  v20[8] = v23;
  *v21 = v32;
  v21[8] = 0;
  *v22 = v29;
  v22[8] = 0;
  v33.receiver = v19;
  v33.super_class = v18;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  sub_1BA108FEC(v28, &qword_1EDC6E2A0, v7);
  sub_1BA108FEC(v11, &qword_1EDC6E2A0, v7);
  sub_1BA108FEC(v16, &qword_1EDC6E440, v12);
  return v25;
}

uint64_t sub_1BA107950()
{
  v1 = MEMORY[0x1E6968130];
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v20 - v4;
  v6 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA4EB2F0);
  sub_1BA1071B4(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v10, &qword_1EDC6E440, v6);
  v11 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v11);

  MEMORY[0x1BFAF1350](0x746E496574616420, 0xEF203A6C61767265);
  sub_1BA1071B4(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v5, &qword_1EDC6E2A0, v1);
  v12 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA4EB310);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
  }

  v21 = v13;
  type metadata accessor for HKOverlayRoomPreferredOverlay(0);
  v14 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v14);

  MEMORY[0x1BFAF1350](0x6341646E65727420, 0xEE00203A65766974);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue);
  }

  v21 = v15;
  type metadata accessor for HKOverlayRoomTrendActive(0);
  v16 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v16);

  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EB330);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue);
  }

  v21 = v17;
  v18 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v18);

  return v22;
}

void sub_1BA107C6C(void *a1)
{
  v2 = v1;
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - v11;
  sub_1BA1071B4(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, &v29 - v11, &qword_1EDC6E440, v8);
  v13 = sub_1BA4A1728();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v15 = sub_1BA4A16B8();
    (*(v14 + 8))(v12, v13);
    v16 = v15;
    v17 = sub_1BA4A6758();
    [a1 encodeObject:v16 forKey:v17];
  }

  sub_1BA1071B4(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v7, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  v18 = sub_1BA4A0FA8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) != 1)
  {
    v20 = sub_1BA4A0F28();
    (*(v19 + 8))(v7, v18);
    v21 = v20;
    v22 = sub_1BA4A6758();
    [a1 encodeObject:v21 forKey:v22];
  }

  if ((*(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8) & 1) == 0)
  {
    v23 = sub_1BA4A6DC8();
    v24 = sub_1BA4A6758();
    [a1 encodeObject:v23 forKey:v24];
  }

  if ((*(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8) & 1) == 0)
  {
    v25 = sub_1BA4A6DC8();
    v26 = sub_1BA4A6758();
    [a1 encodeObject:v25 forKey:v26];
  }

  if ((*(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0)
  {
    v27 = sub_1BA4A6DC8();
    v28 = sub_1BA4A6758();
    [a1 encodeObject:v27 forKey:v28];
  }
}

id ChartContext.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1BA109074();

  return v4;
}

id ChartContext.init(coder:)(void *a1)
{
  v2 = sub_1BA109074();

  return v2;
}

uint64_t sub_1BA108188()
{
  v1 = v0;
  v24[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v24[0] = 0;
  v8 = [v7 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v24];
  v9 = v24[0];
  if (v8)
  {
    v10 = sub_1BA4A1608();
  }

  else
  {
    v11 = v9;
    v12 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3E28();
    v13 = v12;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136315138;
      v23 = v12;
      v18 = v12;
      sub_1B9FED358();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1B9F07000, v14, v15, "Failed to encode data with error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v10;
}

id ChartContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1BA1084B0()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746E4965746164;
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

uint64_t sub_1BA108554@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA10A2B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA10857C(uint64_t a1)
{
  v2 = sub_1BA109A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1085B8(uint64_t a1)
{
  v2 = sub_1BA109A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ChartContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartContext(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1086A4(void *a1)
{
  sub_1BA109A9C(0, &qword_1EBBEBF60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA109A48();
  sub_1BA4A8548();
  v10[15] = 0;
  sub_1BA4A1728();
  sub_1B9F42AAC(&qword_1EDC6AE80, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1BA4A8238();
  if (!v1)
  {
    v10[14] = 1;
    sub_1BA4A0FA8();
    sub_1B9F42AAC(&qword_1EDC6AF18, MEMORY[0x1E6968130], MEMORY[0x1E6968138]);
    sub_1BA4A8238();
    v10[13] = 2;
    sub_1BA4A8228();
    v10[12] = 3;
    sub_1BA4A8228();
    v10[11] = 4;
    sub_1BA4A8228();
  }

  return (*(v5 + 8))(v8, v4);
}

void *ChartContext.init(from:)(void *a1)
{
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - v5;
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v38 = &v35 - v9;
  sub_1BA109A9C(0, &qword_1EBBEBF70, MEMORY[0x1E69E6F48]);
  v39 = v10;
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  v14 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  *v15 = 0;
  *(v15 + 8) = 1;
  v41 = v1;
  v42 = a1;
  v16 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  *v16 = 0;
  *(v16 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA109A48();
  v17 = v13;
  v18 = v40;
  sub_1BA4A8528();
  if (v18)
  {
    v34 = v41;
    __swift_destroy_boxed_opaque_existential_1(v42);
    type metadata accessor for ChartContext(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v14;
    v35 = v16;
    v36 = v15;
    v19 = v37;
    sub_1BA4A1728();
    v44 = 0;
    sub_1B9F42AAC(&qword_1EDC6AE70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v20 = v38;
    v21 = v39;
    sub_1BA4A8178();
    v23 = v41;
    sub_1BA109B00(v20, v41 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    sub_1BA4A0FA8();
    v44 = 1;
    sub_1B9F42AAC(&qword_1EDC6AF10, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
    sub_1BA4A8178();
    sub_1BA109B00(v6, v23 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    v44 = 2;
    v24 = sub_1BA4A8168();
    v25 = v40;
    *v40 = v24;
    *(v25 + 8) = v26 & 1;
    v44 = 3;
    v27 = sub_1BA4A8168();
    v28 = v36;
    *v36 = v27;
    *(v28 + 8) = v29 & 1;
    v44 = 4;
    v30 = sub_1BA4A8168();
    v31 = v35;
    *v35 = v30;
    *(v31 + 8) = v32 & 1;
    v33 = type metadata accessor for ChartContext(0);
    v43.receiver = v23;
    v43.super_class = v33;
    v34 = objc_msgSendSuper2(&v43, sel_init);
    (*(v19 + 8))(v17, v21);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return v34;
}

void *sub_1BA108F04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ChartContext(0));
  result = ChartContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for ChartContext(uint64_t a1)
{
  result = qword_1EDC6DDF0;
  if (!qword_1EDC6DDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA108FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F47ECC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ChartContext.interactiveChartOptions.getter()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
  {
    return 0x2000;
  }

  else
  {
    return 0;
  }
}

id sub_1BA109074()
{
  v1 = v0;
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v32 - v4;
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - v8;
  v10 = &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
  *v12 = 0;
  v12[8] = 1;
  sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
  v13 = sub_1BA4A7728();
  if (v13)
  {
    v14 = v13;
    sub_1BA4A16F8();

    v15 = sub_1BA4A1728();
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  }

  else
  {
    v16 = sub_1BA4A1728();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  sub_1BA109B00(v9, &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1B9F0ADF8(0, qword_1EBBEBFB8, 0x1E696AB80);
  v17 = sub_1BA4A7728();
  if (v17)
  {
    v18 = v17;
    sub_1BA4A0F48();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_1BA4A0FA8();
  (*(*(v20 - 8) + 56))(v5, v19, 1, v20);
  sub_1BA109B00(v5, &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  v21 = sub_1BA4A7728();
  v22 = v21;
  if (v21)
  {
    v23 = [v21 integerValue];
  }

  else
  {
    v23 = 0;
  }

  *v10 = v23;
  v10[8] = v22 == 0;
  v24 = sub_1BA4A7728();
  v25 = v24;
  if (v24)
  {
    v26 = [v24 integerValue];
  }

  else
  {
    v26 = 0;
  }

  *v11 = v26;
  v11[8] = v25 == 0;
  v27 = sub_1BA4A7728();
  v28 = v27;
  if (v27)
  {
    v29 = [v27 integerValue];
  }

  else
  {
    v29 = 0;
  }

  *v12 = v29;
  v12[8] = v28 == 0;
  v30 = type metadata accessor for ChartContext(0);
  v32.receiver = v1;
  v32.super_class = v30;
  return objc_msgSendSuper2(&v32, sel_init);
}

id _s18HealthExperienceUI12ChartContextC12archivedDataACSg10Foundation0G0V_tcfC_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27[-v8];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27[-v12];
  sub_1B9F0ADF8(0, &unk_1EBBEBFA8, 0x1E696ACD0);
  v14 = type metadata accessor for ChartContext(0);
  v15 = sub_1BA4A7268();
  if (v15)
  {
    v34 = a1;
    v36 = a2;
    v16 = v15;
    sub_1BA1071B4(v15 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    sub_1BA1071B4(&v16[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], v9, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    v33 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
    v32 = v16[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8];
    v31 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
    v30 = v16[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8];
    v35 = v16;
    v29 = *&v16[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
    v28 = v16[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8];
    v17 = objc_allocWithZone(v14);
    v18 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
    *v18 = 0;
    v18[8] = 1;
    v19 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
    *v19 = 0;
    v19[8] = 1;
    v20 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
    *v20 = 0;
    v20[8] = 1;
    v21 = sub_1BA4A1728();
    if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1 || (v22 = sub_1BA4A0FA8(), result = (*(*(v22 - 8) + 48))(v9, 1, v22), result == 1))
    {
      v24 = MEMORY[0x1E6969530];
      sub_1BA1071B4(v13, &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
      v25 = MEMORY[0x1E6968130];
      sub_1BA1071B4(v9, &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
      *v18 = v33;
      v18[8] = v32;
      *v19 = v31;
      v19[8] = v30;
      *v20 = v29;
      v20[8] = v28;
      v37.receiver = v17;
      v37.super_class = v14;
      v26 = objc_msgSendSuper2(&v37, sel_init);
      sub_1B9F2BB4C(v34, v36);

      sub_1BA108FEC(v9, &qword_1EDC6E2A0, v25);
      sub_1BA108FEC(v13, &qword_1EDC6E440, v24);
      return v26;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
    return 0;
  }

  return result;
}

unint64_t sub_1BA109A48()
{
  result = qword_1EBBEBF68;
  if (!qword_1EBBEBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF68);
  }

  return result;
}

void sub_1BA109A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA109A48();
    v7 = a3(a1, &type metadata for ChartContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA109B00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F47ECC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA109B70()
{
  result = qword_1EBBEBF78;
  if (!qword_1EBBEBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF78);
  }

  return result;
}

unint64_t sub_1BA109BC8()
{
  result = qword_1EBBEBF80;
  if (!qword_1EBBEBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF80);
  }

  return result;
}

unint64_t sub_1BA109C20()
{
  result = qword_1EDC695F8;
  if (!qword_1EDC695F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC695F8);
  }

  return result;
}

unint64_t sub_1BA109C78()
{
  result = qword_1EDC695F0;
  if (!qword_1EDC695F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC695F0);
  }

  return result;
}

void sub_1BA109D88(uint64_t a1)
{
  sub_1B9F47ECC(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1B9F47ECC(319, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BA10A1B0()
{
  result = qword_1EBBEBF90;
  if (!qword_1EBBEBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF90);
  }

  return result;
}

unint64_t sub_1BA10A208()
{
  result = qword_1EBBEBF98;
  if (!qword_1EBBEBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF98);
  }

  return result;
}

unint64_t sub_1BA10A260()
{
  result = qword_1EBBEBFA0;
  if (!qword_1EBBEBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBFA0);
  }

  return result;
}

uint64_t sub_1BA10A2B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BA4EB3F0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4EB410 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BA4EB430 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t CollectionDifference<A>.description.getter()
{
  sub_1BA10A7E8(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v29[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6EF0];
  sub_1BA10AF70(0, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
  v7 = v6;
  (*(*(v6 - 8) + 16))(v4, v0, v6);
  sub_1BA10A8A4(&qword_1EBBEAAA0, &unk_1EBBED8B0, v5, MEMORY[0x1E69E6F00]);
  v8 = sub_1BA4A6E18();
  if (v8)
  {
    v9 = v8;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v8 & ~(v8 >> 63), 0);
    v10 = v31;
    result = sub_1BA4A6DF8();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = *&v32[0];
      v28 = v9;
      while (1)
      {
        v30[4] = v13;
        result = sub_1BA4A6DF8();
        if (v13 < v29[0])
        {
          break;
        }

        result = sub_1BA4A6E38();
        if (v13 >= v29[0])
        {
          goto LABEL_13;
        }

        v14 = sub_1BA4A6E88();
        v16 = *(v15 + 32);
        v17 = *(v15 + 16);
        v32[0] = *v15;
        v32[1] = v17;
        v33 = v16;
        sub_1BA051A74(v32, v29);
        v14(v30, 0);
        v18 = v7;
        v19 = sub_1BA10A904(v12, v32);
        v21 = v20;
        sub_1BA051AF4(v32);
        v31 = v10;
        v22 = v4;
        v24 = *(v10 + 16);
        v23 = *(v10 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1B9F1C360((v23 > 1), v24 + 1, 1);
          v10 = v31;
        }

        ++v12;
        *(v10 + 16) = v24 + 1;
        v25 = v10 + 16 * v24;
        *(v25 + 32) = v19;
        *(v25 + 40) = v21;
        v30[0] = v13;
        sub_1BA4A6E28();
        v13 = v29[0];
        v4 = v22;
        v7 = v18;
        if (v28 == v12)
        {
          sub_1BA10AE04(v4);
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1BA10AE04(v4);
    v10 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v29[0] = v10;
    v26 = MEMORY[0x1E69E62F8];
    sub_1BA10AF70(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BA10A8A4(&qword_1EDC6B660, &qword_1EDC6B670, v26, MEMORY[0x1E69E6310]);
    v27 = sub_1BA4A66D8();

    return v27;
  }

  return result;
}

void sub_1BA10A7E8(uint64_t a1)
{
  if (!qword_1EBBEAA90)
  {
    v1 = MEMORY[0x1E69E6EF0];
    sub_1BA10AF70(255, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
    sub_1BA10A8A4(&qword_1EBBEAA98, &unk_1EBBED8B0, v1, MEMORY[0x1E69E6EF8]);
    v2 = sub_1BA4A8038();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEAA90);
    }
  }
}

uint64_t sub_1BA10A8A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA10AF70(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA10A904(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  if (*(a2 + 33))
  {
    sub_1BA4A7DF8();
    v4 = MEMORY[0x1E69E6530];
    v5 = sub_1BA4A82D8();

    v11 = v5;
    v6 = ". remove element ";
  }

  else
  {
    sub_1BA4A7DF8();
    v4 = MEMORY[0x1E69E6530];
    v7 = sub_1BA4A82D8();

    v11 = v7;
    v6 = ". insert element ";
  }

  MEMORY[0x1BFAF1350](0xD000000000000011, (v6 - 32) | 0x8000000000000000);
  MEMORY[0x1BFAF1350](v2, v3);
  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4EB470);
  sub_1BA10AF70(0, &qword_1EDC6B640, v4, MEMORY[0x1E69E6720]);
  v8 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v8);

  MEMORY[0x1BFAF1350](544497952, 0xE400000000000000);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  return v11;
}

uint64_t DataSourceSectionTransaction.difference.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1BA4A80C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DataSourceSectionTransaction.difference.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1BA4A80C8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DataSourceSectionTransaction.init(sectionIdentifier:difference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v13 = *(type metadata accessor for DataSourceSectionTransaction(0, v16) + 52);
  v14 = sub_1BA4A80C8();
  return (*(*(v14 - 8) + 32))(a7 + v13, a2, v14);
}

uint64_t static DataSourceSectionTransaction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1BA4A6728())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for DataSourceSectionTransaction(0, v12);
    v10 = sub_1BA4A80D8();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1BA10AE04(uint64_t a1)
{
  sub_1BA10A7E8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA10AEBC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1BA4A80C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BA10AF70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA10AFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v10 = *a1;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  swift_beginAccess();
  (*(v6 + 16))(v9, v10 + v11, v5);
  sub_1BA4A1CA8();
  result = (*(v6 + 8))(v9, v5);
  *a2 = v13[7];
  return result;
}

uint64_t sub_1BA10B110(char *a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  sub_1BA4A1CB8();
  return swift_endAccess();
}

uint64_t sub_1BA10B1AC()
{
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  swift_beginAccess();
  (*(v3 + 16))(v6, v0 + v7, v2);
  sub_1BA4A1CA8();
  (*(v3 + 8))(v6, v2);
  return v9[7];
}

uint64_t sub_1BA10B2EC(char a1)
{
  swift_beginAccess();
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  sub_1BA4A1CB8();
  return swift_endAccess();
}

uint64_t (*sub_1BA10B380(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1BA4A1C98();
  return sub_1BA10B450;
}

void sub_1BA10B450(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_1BA10B4A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA10B4E8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA10C8F0(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
  swift_beginAccess();
  sub_1B9F8083C(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1BA10B5A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
  swift_beginAccess();
  return sub_1BA10C8F0(v1 + v3, a1);
}

uint64_t sub_1BA10B5F8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v5 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 16);
  *&v10[5] = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
  v10[7] = v5;
  sub_1BA10CB60();
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {

LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  sub_1B9F1134C(v10, v11);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v10[0] = v2;
  v10[1] = v3;
  v8 = (*(v7 + 40))(v10, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8 & 1;
}

double sub_1BA10B724(uint64_t a1, uint64_t a2)
{
  sub_1B9F11824(0, &qword_1EBBEC040, MEMORY[0x1E69E6168], MEMORY[0x1E69DC2C8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v30 - v6;
  sub_1B9F11824(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v35 = *(v8 - 8);
  *&v36 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v30 - v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1B9F11824(0, &qword_1EBBEC048, MEMORY[0x1E69E6168], MEMORY[0x1E69DC1B0]);
    v15 = sub_1BA4A4688();
    v16 = *(v15 + 16);
    if (v16)
    {
      v31 = v14;
      v37[0] = MEMORY[0x1E69E7CC0];
      sub_1BA067008(0, v16, 0);
      v17 = v37[0];
      v19 = *(v4 + 16);
      v18 = v4 + 16;
      v33 = v19;
      v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
      v30 = v15;
      v21 = v15 + v20;
      v32 = *(v18 + 56);
      v34 = v18;
      v22 = (v18 - 8);
      do
      {
        v33(v7, v21, v3);
        sub_1BA4A4878();
        v23 = v38[0];
        v24 = v38[1];
        MEMORY[0x1BFAEF2A0](v3);
        (*v22)(v7, v3);
        *v11 = v23;
        v11[1] = v24;
        v37[0] = v17;
        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1BA067008((v25 > 1), v26 + 1, 1);
          v17 = v37[0];
        }

        *(v17 + 16) = v26 + 1;
        sub_1BA10CAD8(v11, v17 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26);
        v21 += v32;
        --v16;
      }

      while (v16);

      v14 = v31;
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    v27 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 16);
    v36 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
    *&v37[5] = v36;
    v37[7] = v27;
    sub_1BA10CB60();
    sub_1BA10CBC8();
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v37, v38);
      v28 = v39;
      v29 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v29 + 48))(v17, v28, v29);

      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BA10BB30(int a1)
{
  v2 = v1;
  v28 = a1;
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27[-v11];
  v13 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);
  sub_1BA4A4738();

  v14 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 16);
  swift_unknownObjectRetain();
  v16(ObjectType, v14);
  swift_unknownObjectRelease();
  v17 = sub_1BA4A4538();
  v18 = sub_1B9F12EB8(v17);

  v19 = sub_1BA4A4538();
  v20 = sub_1B9F12EB8(v19);

  v21 = sub_1BA10C350(v20, v18);

  v22 = v21[2];
  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = sub_1BA021990(v21[2], 0);
  v24 = sub_1BA0238B0(&v29, v23 + 4, v22, v21);
  sub_1B9F52E48(v29);
  if (v24 != v22)
  {
    __break(1u);
LABEL_4:
  }

  sub_1BA4A4558();

  (*(*v2 + 296))(v8, v28 & 1, 1, 0, 0);
  v25 = *(v5 + 8);
  v25(v8, v4);
  return (v25)(v12, v4);
}

uint64_t DiffableCollectionViewAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DBCC(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);
  return v0;
}

uint64_t DiffableCollectionViewAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DBCC(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return swift_deallocClassInstance();
}

unint64_t DiffableCollectionViewAdaptor.DebugState.debugDescription.getter()
{
  v1 = v0;
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA10C8F0(v1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0x616974696E696E55;
    }

    (*(v4 + 32))(v7, v11, v3);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v13 = 0x80000001BA4EB4B0;
    v14 = 0xD000000000000012;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v7, v11, v3);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v13 = 0x80000001BA4EB4D0;
    v14 = 0xD000000000000016;
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v13 = 0x80000001BA4EB4F0;
    v14 = 0xD00000000000001BLL;
  }

  v18 = v14;
  v19 = v13;
  v15 = NSDiffableDataSourceSnapshot<>.description.getter();
  MEMORY[0x1BFAF1350](v15);

  v16 = v18;
  (*(v4 + 8))(v7, v3);
  return v16;
}

void *sub_1BA10C2C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_1BA10C514(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1BA10C350(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_1BA10C514((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v11 = v10;
  }

  else
  {
    v13 = swift_slowAlloc();

    v11 = sub_1BA10C2C0(v13, v6, a2, a1);

    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  return v11;
}

void sub_1BA10C514(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v26 = sub_1BA4A84D8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1BA4A8338() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          sub_1BA307414(a1, a2, v53, v5);
          return;
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v39 = sub_1BA4A84D8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1BA4A8338() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        a1[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1BA10C8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA10CAD8(uint64_t a1, uint64_t a2)
{
  sub_1B9F11824(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA10CB60()
{
  result = qword_1EBBEC050;
  if (!qword_1EBBEC050)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEC050);
  }

  return result;
}

unint64_t sub_1BA10CBC8()
{
  result = qword_1EBBEC058;
  if (!qword_1EBBEC058)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEC058);
  }

  return result;
}

uint64_t sub_1BA10CC34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC068 = result;
  unk_1EBBEC070 = v1;
  return result;
}

uint64_t sub_1BA10CCE0()
{
  v0 = type metadata accessor for SummarySharingSelectionFlow(0);
  __swift_allocate_value_buffer(v0, qword_1EBBEC078);
  __swift_project_value_buffer(v0, qword_1EBBEC078);

  return swift_storeEnumTagMultiPayload();
}

void sub_1BA10CD3C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_dataTypeSelectionCVC);
    SummarySharingDataTypeSelectionViewController.reloadAllDataSources()();
  }
}

void sub_1BA10CE3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectionFlowContext;
  memset(v22, 0, 32);
  sub_1BA4A6C68();
  v20 = v0;

  sub_1BA1E091C(sub_1BA10E250, &v19, "HealthExperienceUI/SummarySharingSetupDetailsAnalyticsEvent.swift", 65, 2u, 154);
  v23 = 0uLL;
  *&v24 = 0;
  *(&v24 + 1) = 9;
  sub_1B9FEEC64(ObjectType, v22, 0, &v23);

  sub_1B9FF3BFC(v23, *(&v23 + 1), v24, *(&v24 + 1));
  sub_1B9F0DBB4(v22, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8);
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 16];
  v23 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact];
  v24 = v4;
  v25 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 32];
  v5 = v23;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 24];
  v26 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 8];
  v27 = v6;
  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContactPhotoPublisher];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  v9 = *&v1[v8];
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthExperienceStore], v22);
  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthStore];
  v11 = *&v1[v3];
  v12 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingKitSharingConfirmationViewController());
  v13 = v5;

  v14 = v10;

  sub_1B9F87F44(&v26, v21);
  sub_1B9F87F44(&v27, v21);
  v15 = sub_1BA313E58(&v23, v7, v9, v22, v14, v11);

  v16 = MEMORY[0x1E69E6158];
  sub_1B9F0DBB4(&v26, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
  sub_1B9F0DBB4(&v27, &qword_1EDC6E410, v16);
  v17 = [v1 navigationController];
  if (v17)
  {
    v18 = v17;
    [v17 pushViewController:v15 animated:1];
  }
}

double sub_1BA10D13C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthExperienceStore));

  return result;
}

id sub_1BA10D208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingManualDataTypeSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BA10D330()
{
  swift_beginAccess();

  return result;
}

double sub_1BA10D378(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

char *sub_1BA10D430(char *a1, char **a2, char *a3, void *a4, void *a5, uint64_t a6)
{
  v13 = *a2;
  v14 = *(a2 + 1);
  v114 = *(a2 + 3);
  v115 = v14;
  v15 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v108 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v107 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v96 - v23;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
  sub_1B9F0A534(a1, &v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthExperienceStore]);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthStore] = a5;
  v25 = *(a2 + 1);
  v119 = *(a2 + 3);
  v120 = v25;
  v26 = &v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact];
  v27 = *(a2 + 1);
  *v26 = *a2;
  *(v26 + 1) = v27;
  *(v26 + 4) = a2[4];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContactPhotoPublisher] = a3;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectionFlowContext] = a6;
  v109 = v6;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedDataTypesContext] = a4;
  v97 = a1;
  sub_1B9F0A534(a1, v118);
  v28 = a5;
  v29 = v13;
  sub_1B9F87F44(&v120, v117);
  sub_1B9F87F44(&v119, v117);

  v30 = v29;
  sub_1B9F87F44(&v120, v117);
  sub_1B9F87F44(&v119, v117);
  v31 = qword_1EBBE8360;

  v32 = v28;
  v111 = a6;

  if (v31 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v102 = __swift_project_value_buffer(v15, qword_1EBBEC078);
    sub_1B9FF1628(v102, v24);
    v33 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
    *&v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v34 = v24;
    v35 = MEMORY[0x1E69E7CC0];
    *&v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
    sub_1B9F0A534(v118, &v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
    *&v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
    sub_1B9FF1628(v34, &v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow]);
    v36 = &v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
    *v36 = v13;
    v37 = v115;
    *(v36 + 24) = v114;
    *(v36 + 8) = v37;
    *&v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = a3;
    *&v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = a4;
    v98 = v30;
    sub_1B9F87F44(&v120, v117);
    sub_1B9F87F44(&v119, v117);

    v38 = v111;

    *&v115 = v32;
    v106 = v34;
    *&v33[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = sub_1BA1E1D2C(v118, v32, 1, 0, v34, v38);

    v39 = sub_1B9FE98D4();

    v117[0] = v39;
    sub_1B9FE20B8(v35);
    v40 = v117[0];
    type metadata accessor for CompoundSectionedDataSource(0);
    swift_allocObject();
    v41 = CompoundSectionedDataSource.init(_:)(v40);
    v42 = CompoundDataSourceCollectionViewController.init(dataSource:)(v41);
    v117[0] = a4[6];
    v43 = MEMORY[0x1E695BF70];
    sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
    v45 = v44;
    v46 = sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v43, MEMORY[0x1E695BF88]);
    v47 = v42;
    v105 = v45;
    v104 = v46;
    v117[0] = sub_1BA4A4F98();
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1BA10E0DC;
    *(v49 + 24) = v48;
    v50 = MEMORY[0x1E695BED0];
    sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
    v52 = v51;
    v53 = sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v50, MEMORY[0x1E695BED8]);
    v103 = v52;
    v101 = v53;
    v30 = sub_1BA4A5148();

    swift_beginAccess();
    sub_1BA10E194(0);
    v32 = v54;
    v55 = sub_1BA091D04();
    v100 = v32;
    v99 = v55;
    sub_1BA4A4D38();
    swift_endAccess();

    *&v114 = v47;
    v56 = *&v47[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
    v110 = a4;
    v13 = v56 >> 62 ? sub_1BA4A7CC8() : *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v15 = v115;
    if (!v13)
    {
      break;
    }

    v24 = 0;
    v112 = v56 & 0xFFFFFFFFFFFFFF8;
    v113 = v56 & 0xC000000000000001;
    while (v113)
    {
      v32 = MEMORY[0x1BFAF2860](v24, v56);
      v15 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

LABEL_9:
      *(*(v32 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      a4 = v114;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v57 = a3;
      v58 = swift_allocObject();
      *(v58 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v58 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      v59 = a4;
      v60 = v58;
      a3 = v57;
      sub_1BA29AAC4(v60);
      v30 = v32;
      sub_1BA2FE7FC();

      ++v24;
      v61 = v15 == v13;
      v15 = v115;
      if (v61)
      {
        goto LABEL_15;
      }
    }

    if (v24 < *(v112 + 16))
    {
      v32 = *(v56 + 8 * v24 + 32);

      v15 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_15:

  v62 = v114;

  v63 = MEMORY[0x1E69E6158];
  sub_1B9F0DBB4(&v120, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
  sub_1B9F0DBB4(&v119, &qword_1EDC6E410, v63);
  sub_1BA10E1EC(v106);
  __swift_destroy_boxed_opaque_existential_1(v118);
  v64 = v109;
  *&v109[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_dataTypeSelectionCVC] = v62;
  v65 = v102;
  v66 = v107;
  sub_1B9FF1628(v102, v107);
  v67 = v62;
  sub_1BA454A8C(v67, v68, v69, v70, v71, v72, v73, v74, v96, v97);
  sub_1BA10E1EC(v66);
  sub_1B9FF1628(v65, v66);
  sub_1BA454AAC();
  v76 = v75;
  sub_1BA10E1EC(v66);
  v77 = v108;
  sub_1B9FF1628(v65, v108);
  sub_1BA454934();
  v79 = v78;
  sub_1BA10E1EC(v77);
  *&v64[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v80 = &v64[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v80 = 0;
  v80[8] = 1;
  v81 = &v64[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v81 = 0;
  v81[8] = 1;
  *&v64[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v64[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v67;
  v82 = v67;
  a4 = sub_1BA4A6758();

  if (v76)
  {
    v83 = sub_1BA4A6758();
  }

  else
  {
    v83 = 0;
  }

  v24 = &OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources;
  a3 = v105;
  v84 = type metadata accessor for OnboardingCollectionViewController();
  v116.receiver = v64;
  v116.super_class = v84;
  v85 = objc_msgSendSuper2(&v116, sel_initWithTitle_detailText_icon_contentLayout_, a4, v83, v79, 3);

  v15 = v85;
  v86 = [v15 headerView];
  [v86 setAllowFullWidthIcon_];

  v87 = [v15 navigationItem];
  v88 = sub_1BA35FA28();
  [v87 setTitleView_];

  v118[0] = v110[6];
  v118[0] = sub_1BA4A4F98();
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v90 = swift_allocObject();
  *(v90 + 16) = sub_1BA10E248;
  *(v90 + 24) = v89;
  v30 = sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA4A4D38();
  swift_endAccess();

  v32 = *(*&v15[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_dataTypeSelectionCVC] + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources);
  if (v32 >> 62)
  {
    v13 = sub_1BA4A7CC8();
  }

  else
  {
    v13 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v91 = 0;
    *&v115 = v32 & 0xC000000000000001;
    *&v114 = v32 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v115)
      {
        a4 = MEMORY[0x1BFAF2860](v91, v32);
        v92 = (v91 + 1);
        if (__OFADD__(v91, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v91 >= *(v114 + 16))
        {
          goto LABEL_32;
        }

        a4 = *(v32 + 8 * v91 + 32);

        v92 = (v91 + 1);
        if (__OFADD__(v91, 1))
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      *(*(a4 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &off_1F3806E28;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v24 = swift_allocObject();
      *(v24 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v24 + 24) = &off_1F3806E28;
      swift_unknownObjectWeakAssign();
      a3 = v15;
      sub_1BA29AAC4(v24);
      v30 = a4;
      sub_1BA2FE7FC();

      ++v91;
    }

    while (v92 != v13);
  }

  v93 = sub_1BA4A6758();

  v94 = [v15 hxui_addCancelButton];
  __swift_destroy_boxed_opaque_existential_1(v97);
  return v15;
}

void sub_1BA10E0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA10E150(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA10E0E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA10E194(uint64_t a1)
{
  if (!qword_1EDC5E6C0)
  {
    sub_1BA4A4D58();
    v1 = sub_1BA4A6BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E6C0);
    }
  }
}

uint64_t sub_1BA10E1EC(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectionFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NoDataDataSource.init()()
{
  v31 = *v0;
  v32 = v0;
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBBE8368 != -1)
  {
    swift_once();
  }

  v6 = *algn_1EBBEC0D8;
  v30 = qword_1EBBEC0D0;
  v33 = 0xD000000000000014;
  v34 = 0x80000001BA4EB850;

  sub_1BA4A1788();
  v7 = sub_1BA4A1748();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v5, v1);
  MEMORY[0x1BFAF1350](v7, v9);

  v29 = v1;
  v11 = v33;
  v12 = v34;
  v33 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8(v13);
  v14 = sub_1BA4A6808();
  v16 = v15;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v28 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 56) = &type metadata for PlaceholderTextItem;
  *(v18 + 64) = sub_1B9FE9528();
  v19 = swift_allocObject();
  *(v18 + 32) = v19;
  *(v19 + 16) = v11;
  *(v19 + 24) = v12;
  *(v19 + 32) = v14;
  *(v19 + 40) = v16;
  *(v19 + 48) = v30;
  *(v19 + 56) = v6;
  *(v19 + 64) = 0;
  sub_1BA4A1788();
  v20 = sub_1BA4A1748();
  v22 = v21;
  v10(v5, v29);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v24 = Array<A>.identifierToIndexDict()(v23);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v18;
  *(inited + 56) = v24;
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  v26 = sub_1B9F1DAFC(inited, 1, sub_1BA10E8F0, v25);

  return v26;
}

uint64_t static NoDataDataSource.makeNoDataDataSource()()
{
  if (qword_1EBBE8368 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEC0D0;
  v1 = *algn_1EBBEC0D8;

  return sub_1BA459ADC(v0, v1);
}

uint64_t NoDataDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t NoDataDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA10E7F0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC0D0 = result;
  *algn_1EBBEC0D8 = v1;
  return result;
}

unint64_t sub_1BA10E8A8(__n128 a1)
{
  result = qword_1EBBE9DE8;
  if (!qword_1EBBE9DE8)
  {
    type metadata accessor for PlaceholderTextCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DE8);
  }

  return result;
}

uint64_t type metadata accessor for NoDataDataSource(uint64_t a1)
{
  result = qword_1EBBEC0E0;
  if (!qword_1EBBEC0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA10EB2C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BackgroundHighlightableButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(char *a1, void *a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  v11 = *a1;
  v10 = v6;
  sub_1B9F21BB0(qword_1EDC69DC8, a2, type metadata accessor for HealthAppAnalyticsManager, &protocol conformance descriptor for HealthAppAnalyticsManager);
  v7 = static AnalyticsTransforming.analyticsString(for:)(&v10);
  static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v11, a2, v7, v8, a4);

  return result;
}

uint64_t HealthAppAnalyticsManager.__allocating_init(healthStore:pinnedContentManager:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = a1;
  sub_1B9F25598(a2, v4 + 32);
  return v4;
}

void static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (a2)
  {
    LOBYTE(v29[0]) = *a1;
    v29[0] = HealthAppInteraction.Action.rawValue.getter();
    v29[1] = v16;
    v29[2] = a3;
    v29[3] = a4;
    v17 = a2;

    sub_1BA10F514(v29, v17, a5);
  }

  else
  {
    sub_1BA4A3E58();
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29[0] = v21;
      *v20 = 136315394;
      v22 = sub_1BA4A85D8();
      v24 = sub_1B9F0B82C(v22, v23, v29);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v30 = v15;
      v25 = HealthAppInteraction.Action.rawValue.getter();
      v27 = sub_1B9F0B82C(v25, v26, v29);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v18, v19, "%s Could not submit interaction %s: viewController is nil", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }
}

void sub_1BA10EF5C(void *a1)
{
  v3 = *v1;
  [v1[2] invalidate];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v10[4] = sub_1BA10F6D0;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BA0B06D4;
  v10[3] = &block_descriptor_24;
  v6 = _Block_copy(v10);
  v7 = a1;

  v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:1.0];
  _Block_release(v6);
  v9 = v1[2];
  v1[2] = v8;
}

double sub_1BA10F0A4(uint64_t a1, void *a2)
{
  strcpy(v5, "resizeWindow");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v5[2] = 0;
  v5[3] = 0;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_1BA10F514(v5, a2, v3);
  sub_1BA10F728(v3);

  return result;
}

uint64_t HealthAppAnalyticsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t *sub_1BA10F194(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t *a12)
{
  v39 = a8;
  v40 = a7;
  v36 = a5;
  v37 = a6;
  v34 = a3;
  v35 = a4;
  v38 = a9;
  v33 = a11;
  v41 = *a12;
  v42 = sub_1BA4A72F8();
  v15 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v45[3] = &type metadata for HardwareKeyboardAvailability;
  v45[4] = &protocol witness table for HardwareKeyboardAvailability;
  v44[3] = sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
  v44[4] = &protocol witness table for UIViewController;
  v44[0] = v33;
  a12[27] = MEMORY[0x1E69E7CC8];
  a12[2] = a1;
  a12[3] = a2;
  v23 = v35;
  a12[4] = v34;
  a12[5] = v23;
  v24 = v37;
  a12[6] = v36;
  a12[7] = v24;
  sub_1B9F0A534(a7, (a12 + 8));
  v25 = v38;
  v26 = v39;
  a12[13] = v39;
  a12[14] = v25;
  a12[15] = a10;
  sub_1B9F0A534(v45, (a12 + 16));
  sub_1B9F0A534(v44, (a12 + 21));
  v38 = sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v27 = a1;
  v28 = a2;
  v29 = v26;
  v30 = a10;
  sub_1BA4A85D8();
  sub_1BA4A64A8();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1B9F21BB0(&unk_1EDC5E480, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1B9F21BF8(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F21B28();
  sub_1BA4A7C38();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8090], v42);
  v31 = sub_1BA4A7328();
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  a12[26] = v31;
  return a12;
}

uint64_t sub_1BA10F514(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = UIViewController.resolvedHealthStore.getter();
  if (!v9)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v10 = v9;
  sub_1BA10F7B4(a3, &v21);
  if (v22)
  {
    sub_1B9F25598(&v21, v23);
  }

  else
  {
    UIViewController.resolvedPinnedContentManager.getter(v23);
    if (v22)
    {
      sub_1BA10F728(&v21);
    }
  }

  sub_1B9F0A534(v23, &v21);
  v11 = objc_allocWithZone(MEMORY[0x1E696C0C0]);

  v12 = v10;

  v13 = [v11 initWithHealthStore_];
  v14 = [objc_allocWithZone(MEMORY[0x1E696BEF8]) init];
  sub_1B9F0A534(&v21, v20);
  type metadata accessor for HealthAppInteractionAnalyticEvent();
  v15 = swift_allocObject();
  v16 = a2;
  v17 = v12;
  v18 = v16;
  sub_1BA10F194(v17, v18, v5, v6, v7, v8, v20, v13, v17, v14, v18, v15);

  __swift_destroy_boxed_opaque_existential_1(&v21);
  sub_1B9F21D90();

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1BA10F728(uint64_t a1)
{
  sub_1B9F21BF8(0, &unk_1EDC6ADB0, sub_1B9F6ABD4, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA10F7B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F21BF8(0, &unk_1EDC6ADB0, sub_1B9F6ABD4, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA10F848()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC100 = result;
  *algn_1EBBEC108 = v1;
  return result;
}

id sub_1BA10F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BA4A11C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectedContactPhotoPublisher] = a2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectionFlowContext] = a3;
  v13 = *a1;

  v28 = v13;
  sub_1BA4A7A18();
  LocalizedGeminiString(_:defaultValue:comment:options:)("ONBOARDING_INVITATION_SENT_SUBTITLE", 35, 2u, 0, 0xE000000000000000, "", 0, 2, v12);
  (*(v9 + 8))(v12, v8);
  if (qword_1EBBE8370 != -1)
  {
    swift_once();
  }

  v14 = sub_1BA4A6758();
  sub_1B9F2EAC0(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5480;
  v16 = sub_1BA1FAFCC(v15);
  v18 = v17;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B9F1BE20();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_1BA4A6768();

  v19 = sub_1BA4A6758();

  v20 = type metadata accessor for SummarySharingOnboardingInvitationSentViewController();
  v29.receiver = v4;
  v29.super_class = v20;
  v21 = objc_msgSendSuper2(&v29, sel_initWithTitle_detailText_icon_contentLayout_, v14, v19, 0, 3);

  v22 = v21;
  sub_1BA10FC44();
  v23 = sub_1BA4A6758();

  v24 = [v22 navigationItem];
  [v24 setHidesBackButton_];

  v31 = *(a1 + 8);
  v25 = MEMORY[0x1E69E6158];
  sub_1B9F0DBB4(&v31, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
  v30 = *(a1 + 24);
  sub_1B9F0DBB4(&v30, &qword_1EDC6E410, v25);

  return v22;
}

double sub_1BA10FC44()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC84A30;
  v8 = sub_1BA4A6758();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  if (v9)
  {
    v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectedContactPhotoPublisher];
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = 0x4054000000000000;
    v10[4] = v1;
    sub_1BA1107A8(0);
    sub_1BA11085C();

    v11 = v9;
    v12 = v1;
    sub_1BA4A4F88();
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1B9F0B82C(0xD000000000000034, 0x80000001BA4BF200, &v20);
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Failed to create stitched image; using default contact image", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = v1;
    sub_1BA1107A8(0);
    sub_1BA11085C();
    v17 = v1;

    sub_1BA4A4F88();
  }

  return result;
}

double sub_1BA10FFDC()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC84A30;
  v8 = sub_1BA4A6758();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v7];

  if (v9)
  {
    v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_selectedContactPhotoPublisher];
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = 0x4054000000000000;
    v10[4] = v1;
    sub_1BA1107A8(0);
    sub_1BA11085C();

    v11 = v9;
    v12 = v1;
    sub_1BA4A4F88();
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EBB70, &v20);
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Failed to create stitched image; using default contact image", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = v1;
    sub_1BA1107A8(0);
    sub_1BA11085C();
    v17 = v1;

    sub_1BA4A4F88();
  }

  return result;
}

id sub_1BA11037C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  memset(v9, 0, sizeof(v9));
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 11;
  v8 = 7;

  sub_1B9FEEC64(ObjectType, v9, 0, &v4);

  sub_1B9FF3BFC(v4, v5, v6, v7);
  sub_1B9F0DBB4(v9, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 12;
  v8 = 0;

  sub_1B9FEF9F4(v1, &v4);

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_1BA110520(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingOnboardingInvitationSentViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA1105C4(void *a1, id a2, void *a3, double a4)
{
  [a2 size];
  v9 = v8;
  [a2 size];
  v11 = v10;
  [a2 size];
  v13 = v12 * 0.5 - a4 * 0.5;
  [a2 size];
  v15 = v14;
  [a2 size];
  v17 = v16;
  [a2 scale];
  v19 = v18;
  v26.width = v9;
  v26.height = v11;
  UIGraphicsBeginImageContextWithOptions(v26, 0, v19);
  [a1 drawInRect_];
  [a2 drawInRect:0 blendMode:0.0 alpha:{0.0, v15, v17, 1.0}];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v21 = [a3 headerView];
  v22 = v20;
  if (!v20)
  {
    v22 = a1;
  }

  v23 = v20;
  [v21 setIcon:v22 accessibilityLabel:0];

  v24 = [a3 headerView];
  [v24 setAllowFullWidthIcon_];
}

void sub_1BA1107A8(uint64_t a1)
{
  if (!qword_1EBBEC120)
  {
    sub_1BA110810();
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC120);
    }
  }
}

unint64_t sub_1BA110810()
{
  result = qword_1EDC6E370;
  if (!qword_1EDC6E370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E370);
  }

  return result;
}

unint64_t sub_1BA11085C()
{
  result = qword_1EBBEE650;
  if (!qword_1EBBEE650)
  {
    sub_1BA1107A8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE650);
  }

  return result;
}

uint64_t sub_1BA1108BC()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD000000000000034, 0x80000001BA4BF200, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] Finished createInvitationSentIcon stream", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BA110A88()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EBB70, &v11);
    _os_log_impl(&dword_1B9F07000, v5, v6, "[%s] Finished createInvitationSentIcon stream", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t StackedItemModel.baseIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void StackedItemModel.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall StackedItemModel.init(title:body:accessibilityIdentifierPrefix:)(HealthExperienceUI::StackedItemModel *__return_ptr retstr, Swift::String title, Swift::String_optional body, Swift::String_optional accessibilityIdentifierPrefix)
{
  object = accessibilityIdentifierPrefix.value._object;
  countAndFlagsBits = accessibilityIdentifierPrefix.value._countAndFlagsBits;
  v6 = body.value._object;
  v7 = body.value._countAndFlagsBits;
  v8 = title._object;
  v9 = title._countAndFlagsBits;
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  v12 = 0x4964656B63617453;
  if (object)
  {
    v12 = countAndFlagsBits;
  }

  v13 = 0xEB000000006D6574;
  if (object)
  {
    v13 = object;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  retstr->title._countAndFlagsBits = v9;
  retstr->title._object = v8;
  retstr->body.value._countAndFlagsBits = v7;
  retstr->body.value._object = v6;
  retstr->baseIdentifier.value._countAndFlagsBits = v16;
  retstr->baseIdentifier.value._object = v18;
}

void sub_1BA110DC4(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *OnboardingStackedItemViewController.__allocating_init(title:detailText:stackedItems:initiallyVisibleNumberOfItems:shouldNextButtonDisplayContinueOnLastItem:shouldUseDynamicHorizontalMargins:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, char a8, void *a9)
{
  v15 = objc_allocWithZone(v9);
  v16 = v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate] = 1;
  v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating] = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews] = MEMORY[0x1E69E7CC0];
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints] = v18;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems] = a5;
  v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem] = a7;
  v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins] = a8;
  v19 = *(a5 + 16);
  if (v19 >= a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = *(a5 + 16);
  }

  if ((a6 & 0x8000000000000000) == 0)
  {
    v19 = v20;
  }

  *&v15[v17] = v19;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v21 = sub_1BA4A6758();

  if (a4)
  {
    v22 = sub_1BA4A6758();
  }

  else
  {
    v22 = 0;
  }

  v28.receiver = v16;
  v28.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v23 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, a9, 3);

  v24 = v23;
  v25 = [v24 headerView];
  LODWORD(v26) = 1036831949;
  [v25 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v24) + 0xB8))(0);
  return v24;
}

void *OnboardingStackedItemViewController.init(title:detailText:stackedItems:initiallyVisibleNumberOfItems:shouldNextButtonDisplayContinueOnLastItem:shouldUseDynamicHorizontalMargins:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, char a8, void *a9)
{
  v11 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate] = 1;
  v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews] = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints] = v12;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems] = a5;
  v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem] = a7;
  v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins] = a8;
  v13 = *(a5 + 16);
  if (v13 >= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = *(a5 + 16);
  }

  if ((a6 & 0x8000000000000000) == 0)
  {
    v13 = v14;
  }

  *&v9[v11] = v13;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v15 = sub_1BA4A6758();

  if (a4)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  v22.receiver = v9;
  v22.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v17 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, a9, 3);

  v18 = v17;
  v19 = [v18 headerView];
  LODWORD(v20) = 1036831949;
  [v19 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v18) + 0xB8))(0);
  return v18;
}

void sub_1BA111214()
{
  v73.receiver = v0;
  v73.super_class = type metadata accessor for OnboardingStackedItemViewController();
  objc_msgSendSuper2(&v73, sel_viewDidLoad);
  v1 = [v0 headerView];
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems];
  v71 = 0;
  v72 = 0;
  v70 = v2;
  v56 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews;
  v57 = v0;
  v55 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins;
  v54 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint;
  v58 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;

  sub_1BA09EB20(&v63);
  v3 = v65;
  if (v65)
  {
    v4 = v64;
    v62 = v63;
    v6 = v66;
    v5 = v67;
    v8 = v68;
    v7 = v69;
    while (1)
    {
      v60 = sub_1BA4A6758();
      if (v7)
      {
        v63 = 0x656C7469542ELL;
        v64 = 0xE600000000000000;

        sub_1BA4A69D8();
        sub_1BA4A6908();
        v14 = sub_1BA4A6758();

        v61 = v1;
        if (v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = 0;
        v61 = v1;
        if (v5)
        {
LABEL_11:

          v59 = sub_1BA4A6758();

          if (v7)
          {
            goto LABEL_12;
          }

          goto LABEL_15;
        }
      }

      v59 = 0;
      if (v7)
      {
LABEL_12:
        v63 = 0x79646F422ELL;
        v64 = 0xE500000000000000;

        sub_1BA4A69D8();
        sub_1BA4A6908();
        v15 = v62;
        sub_1BA1127AC(v62, v4, v3, v6, v5, v8, v7);
        v7 = sub_1BA4A6758();

        goto LABEL_16;
      }

LABEL_15:
      v15 = v62;
      sub_1BA1127AC(v62, v4, v3, v6, v5, v8, 0);
LABEL_16:
      v16 = objc_opt_self();
      v17 = v15 + 1;
      v18 = v57;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v17 < 0xFFFFFFFF80000000)
      {
        goto LABEL_46;
      }

      if (v17 > 0x7FFFFFFF)
      {
        goto LABEL_47;
      }

      v19 = v15;
      v20 = [v16 createTitledListItem:v60 titleAccessibilityIdentifier:v14 listBody:v59 bodyAccessibilityIdentifier:v7 itemNumber:?];

      swift_beginAccess();
      v1 = v20;
      MEMORY[0x1BFAF1510]();
      if (*((*(v57 + v56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v57 + v56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      swift_endAccess();
      v21 = [v57 contentView];
      [v21 addSubview_];

      v22 = [v57 contentView];
      v23 = *(v57 + v55);
      if (v23 == 1 && (v24 = [v57 traitCollection], v25 = sub_1BA4A7368(), v24, (v25 - 1) > 1))
      {
        v27 = 88.0;
      }

      else
      {
        HKHealthUIBuddyDirectionalEdgeInsets();
        v27 = v26;
      }

      v30 = sub_1BA111BEC(v22, v27);

      swift_beginAccess();
      sub_1B9F73B50(v30);
      swift_endAccess();
      v31 = v23 ^ 1;
      v32 = 10.0;
      if (v19)
      {
        v31 = 1;
      }

      if ((v31 & 1) == 0)
      {
        v33 = [v57 traitCollection];
        v34 = sub_1BA4A7368();

        if ((v34 - 1) >= 2)
        {
          v32 = 20.0;
        }

        else
        {
          v32 = 10.0;
        }
      }

      v9 = [v1 topAnchor];
      v10 = [v61 bottomAnchor];
      v11 = [v9 constraintEqualToAnchor:v10 constant:v32];

      [v11 setActive_];
      if (!v19)
      {
        v28 = *(v57 + v54);
        *(v57 + v54) = v11;
        v29 = v11;
      }

      if (v19 >= *(v57 + v58))
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 1.0;
      }

      [v1 setAlpha_];

      sub_1BA09EB20(&v63);
      v13 = v1;
      v4 = v64;
      v62 = v63;
      v3 = v65;
      v6 = v66;
      v5 = v67;
      v8 = v68;
      v7 = v69;
      if (!v65)
      {
        goto LABEL_32;
      }
    }
  }

  v13 = v1;
LABEL_32:

  v14 = v56;
  v18 = v57;
  v15 = v13;
  if (*(v57 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem) != 1)
  {
    goto LABEL_37;
  }

  v35 = *(v57 + v58);
  swift_beginAccess();
  v36 = *(v57 + v56);
  if (v36 >> 62)
  {
    if (v35 < sub_1BA4A7CC8())
    {
      goto LABEL_37;
    }
  }

  else if (v35 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  if (qword_1EDC5E100 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v53 = 0xE000000000000000;
    v37 = sub_1BA4A1318();
    (*((*MEMORY[0x1E69E7D40] & *v18) + 0xD0))(v37);

LABEL_37:
    v38 = *(v18 + v58);
    v7 = v38 - 1;
    if (__OFSUB__(v38, 1))
    {
      break;
    }

    swift_beginAccess();
    v39 = *&v14[v18];
    if (v39 >> 62)
    {
      goto LABEL_49;
    }

    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

LABEL_40:
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v40 = *&v14[v18];
    if ((v40 & 0xC000000000000001) != 0)
    {

      v41 = MEMORY[0x1BFAF2860](v7, v40);

      goto LABEL_44;
    }

    if (v7 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v41 = *(v40 + 8 * v7 + 32);
LABEL_44:
      v42 = [v18 contentView];
      v43 = [v42 bottomAnchor];

      v44 = [v41 bottomAnchor];
      v45 = [v43 constraintEqualToAnchor_];

      goto LABEL_51;
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

LABEL_48:
  __break(1u);
LABEL_49:
  if (sub_1BA4A7CC8())
  {
    goto LABEL_40;
  }

LABEL_50:
  v46 = [v18 contentView];
  v44 = [v46 bottomAnchor];

  v47 = [v18 headerView];
  v41 = [v47 bottomAnchor];

  v45 = [v44 constraintEqualToAnchor_];
LABEL_51:

  v48 = *(v18 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint);
  *(v18 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint) = v45;
  v49 = v45;

  if (v49)
  {
    [v49 setActive_];

    if (*(v18 + v55) == 1)
    {
      sub_1B9F7A684(0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1BA4B5480;
      v51 = sub_1BA4A6588();
      v52 = sub_1BA111B94();
      *(v50 + 32) = v51;
      *(v50 + 40) = v52;
      MEMORY[0x1BFAF1C40](v50, sel_widthDesignationDidChangeWithTraitEnvironment_previousTraitCollection_);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA111B94()
{
  result = qword_1EDC5E8D0;
  if (!qword_1EDC5E8D0)
  {
    sub_1BA4A6588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E8D0);
  }

  return result;
}

uint64_t sub_1BA111BEC(void *a1, double a2)
{
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B7510;
  v6 = [v2 leadingAnchor];
  v7 = [a1 safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:a2];
  *(v5 + 32) = v9;
  v10 = [a1 safeAreaLayoutGuide];
  v11 = [v10 trailingAnchor];

  v12 = [v2 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:a2];

  *(v5 + 40) = v13;
  v14 = objc_opt_self();
  sub_1B9F740B0();
  v15 = sub_1BA4A6AE8();
  [v14 activateConstraints_];

  return v5;
}

void sub_1BA111DEC()
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews;
  swift_beginAccess();
  v5 = *(v4 + v0);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      goto LABEL_3;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = sub_1BA4A7CC8();
  v7 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v7 < v3)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
    return;
  }

  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating) = 1;
    v3 = *(v0 + v2);
    v1 = *(v4 + v0);
    v35 = v4;
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v3 = *(v1 + v3 + 4);
LABEL_10:
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      v9 = objc_allocWithZone(MEMORY[0x1E69DD278]);
      v42 = sub_1BA1127FC;
      v43 = v8;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1B9F0B040;
      v41 = &block_descriptor_25;
      v10 = _Block_copy(&aBlock);
      v37 = v3;

      v1 = [v9 initWithDuration:0 curve:v10 animations:0.5];
      _Block_release(v10);
      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v42 = sub_1BA112810;
      v43 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1BA11239C;
      v41 = &block_descriptor_6_1;
      v12 = _Block_copy(&aBlock);
      v4 = v0;

      [v1 addCompletion_];
      _Block_release(v12);
      [v1 startAnimation];
      v13 = *(v0 + v2);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
        v36 = v2;
        *(v0 + v2) = v15;
        sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1BA4B5470;
        v17 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint;
        v18 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint);
        if (v18)
        {
          v19 = v16;
          v20 = objc_opt_self();
          *(v19 + 32) = v18;
          sub_1B9F740B0();
          v21 = v18;
          v22 = sub_1BA4A6AE8();

          [v20 deactivateConstraints_];

          v23 = [v4 contentView];
          v24 = [v23 bottomAnchor];

          v25 = [v37 bottomAnchor];
          v26 = [v24 constraintEqualToAnchor_];

          v27 = *(v4 + v17);
          *(v4 + v17) = v26;

          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1BA4B5470;
          v29 = *(v4 + v17);
          if (v29)
          {
            *(v28 + 32) = v29;
            v30 = v29;
            v31 = sub_1BA4A6AE8();

            [v20 activateConstraints_];

            if (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem) != 1)
            {
              goto LABEL_19;
            }

            v3 = *(v0 + v36);
            v32 = *(v35 + v0);
            if (!(v32 >> 62))
            {
              if (v3 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_16:
                if (qword_1EDC5E100 != -1)
                {
                  swift_once();
                }

                v33 = sub_1BA4A1318();
                (*((*MEMORY[0x1E69E7D40] & *v4) + 0xD0))(v33);
              }

LABEL_19:
              sub_1BA112450(v37);

              return;
            }

LABEL_28:
            if (v3 >= sub_1BA4A7CC8())
            {
              goto LABEL_16;
            }

            goto LABEL_19;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      goto LABEL_26;
    }

LABEL_24:

    v3 = MEMORY[0x1BFAF2860](v3, v1);

    goto LABEL_10;
  }
}

double sub_1BA11239C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1BA112450(void *a1)
{
  v3 = [a1 superview];
  if (v3)
  {
    v18 = v3;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 buttonTray];
      [v6 frame];
      v8 = v7;

      [a1 frame];
      [v18 convertPoint:v5 toCoordinateSpace:?];
      v10 = v9;
      [a1 frame];
      v12 = v10 + v11;
      v13 = [v1 scrollView];
      [v13 bounds];
      v15 = v14;

      v16 = v12 - (v15 - v8);
      if (v16 > 0.0)
      {
        v17 = [v1 scrollView];
        [v17 setContentOffset:1 animated:{0.0, v16}];
      }
    }
  }
}

double sub_1BA11268C()
{

  return result;
}

id OnboardingStackedItemViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingStackedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BA1127AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }

  return result;
}

void sub_1BA1128A4()
{
  v1 = [v0 traitCollection];
  v2 = sub_1BA4A7368();

  if (v2 != sub_1BA4A7368())
  {
    v3 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints;
    swift_beginAccess();
    v4 = *&v30[v3];
    if (v4 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
    {
      v6 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins;

      v7 = &selRef_preferredContentSizeCategory;
      if (!i)
      {
        break;
      }

      v8 = 0;
      v9 = v4 & 0xC000000000000001;
      v10 = v4 & 0xFFFFFFFFFFFFFF8;
      v29 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v9)
        {
          v13 = MEMORY[0x1BFAF2860](v8, v4);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v4 + 8 * v8 + 32);
        }

        v14 = v13;
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v30[v6] == 1 && (v16 = v6, v17 = [v30 traitCollection], v18 = v4, v19 = i, v20 = v7, v21 = sub_1BA4A7368(), v17, v6 = v16, v9 = v29, v22 = v21 - 1, v7 = v20, i = v19, v4 = v18, v22 > 1))
        {
          v12 = 88.0;
        }

        else
        {
          HKHealthUIBuddyDirectionalEdgeInsets();
          v12 = v11;
        }

        [v14 v7[69]];

        ++v8;
        if (v15 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_16:

    v23 = *&v30[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint];
    if (v23)
    {
      v24 = v30[v6];
      v25 = v23;
      v26 = 10.0;
      if (v24 == 1)
      {
        v27 = [v30 traitCollection];
        v28 = sub_1BA4A7368();

        v26 = 20.0;
        if ((v28 - 1) < 2)
        {
          v26 = 10.0;
        }
      }

      [v25 v7[69]];
    }
  }
}

id sub_1BA112B14()
{
  type metadata accessor for PublisherImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  [v2 setContentMode_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v2 layer];
  v5 = [v1 blackColor];
  v6 = [v5 CGColor];

  [v4 setShadowColor_];
  v7 = [v2 layer];
  LODWORD(v8) = 1041865114;
  [v7 setShadowOpacity_];

  v9 = [v2 layer];
  [v9 setShadowOffset_];

  v10 = [v2 layer];
  [v10 setShadowRadius_];

  return v2;
}

id sub_1BA112CE0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

double sub_1BA112CEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBEB060, 0x1E696C428);
    v4 = sub_1BA4A6B08();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

double sub_1BA112D90@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v9[4] = xmmword_1EDC67D78;
  v9[5] = *&qword_1EDC67D88;
  v9[6] = xmmword_1EDC67D98;
  v9[7] = unk_1EDC67DA8;
  v9[0] = xmmword_1EDC67D38;
  v9[1] = *&qword_1EDC67D48;
  v9[2] = xmmword_1EDC67D58;
  v9[3] = *&qword_1EDC67D68;
  v16 = qword_1EDC67D48;
  v15 = xmmword_1EDC67D38;
  v2 = unk_1EDC67D50;
  v4 = xmmword_1EDC67D58;
  v3 = qword_1EDC67D68;
  v14 = qword_1EDC67DB0;
  v12 = unk_1EDC67D90;
  v13 = *(&xmmword_1EDC67D98 + 8);
  v10 = unk_1EDC67D70;
  v11 = *(&xmmword_1EDC67D78 + 8);
  sub_1B9F1D9A4(v9, &v8);
  sub_1B9F1DA18(v2, v4, *(&v4 + 1), v3);
  *a1 = v15;
  *(a1 + 16) = v16;
  v5 = v11;
  *(a1 + 56) = v10;
  *(a1 + 72) = v5;
  v6 = v13;
  *(a1 + 88) = v12;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = v6;
  *(a1 + 120) = v14;
  sub_1B9F1DA18(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 96) = 0x4050800000000000;
  return result;
}

uint64_t sub_1BA112ED4(void *a1, void *a2)
{
  v3 = v2;
  v43 = a1;
  v41 = *v3;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationCancellable) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v11 = objc_allocWithZone(MEMORY[0x1E696C430]);
  v40 = v10;
  v44 = a2;
  v12 = [v11 initWithHealthStore:v10 recipientIdentifier:a2];
  v42 = v3;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationStore) = v12;
  if (qword_1EBBE8380 != -1)
  {
    swift_once();
  }

  v13 = *algn_1EBBEC188;
  v39 = qword_1EBBEC180;
  v45 = 0xD000000000000014;
  v46 = 0x80000001BA4EB850;

  sub_1BA4A1788();
  v14 = sub_1BA4A1748();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v9, v5);
  MEMORY[0x1BFAF1350](v14, v16);

  v18 = v45;
  v38 = v46;
  v45 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8(v19);
  v20 = sub_1BA4A6808();
  v21 = v5;
  v23 = v22;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v37 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v25 = swift_allocObject();
  *(v25 + 16) = v37;
  *(v25 + 56) = &type metadata for PlaceholderTextItem;
  *(v25 + 64) = sub_1B9FE9528();
  v26 = swift_allocObject();
  *(v25 + 32) = v26;
  v28 = v38;
  v27 = v39;
  *(v26 + 16) = v18;
  *(v26 + 24) = v28;
  *(v26 + 32) = v20;
  *(v26 + 40) = v23;
  *(v26 + 48) = v27;
  *(v26 + 56) = v13;
  *(v26 + 64) = 0;
  sub_1BA4A1788();
  v29 = sub_1BA4A1748();
  v31 = v30;
  v17(v9, v21);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v33 = Array<A>.identifierToIndexDict()(v32);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v25;
  *(inited + 56) = v33;
  *(inited + 64) = v29;
  *(inited + 72) = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = v41;
  v35 = sub_1B9F1DAFC(inited, 1, sub_1BA10E8F0, v34);

  sub_1BA113270();

  return v35;
}

double sub_1BA113270()
{
  v1 = v0;
  v25 = *v0;
  sub_1B9F3E26C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1145D8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA114738(0);
  v24 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E695BED0];
  sub_1BA11488C(0, &qword_1EBBEC1A8, MEMORY[0x1E695BED0]);
  sub_1BA1146F4(&qword_1EBBEC1B8, &qword_1EBBEC1A8, v17, MEMORY[0x1E695BED8]);

  sub_1BA4A4EC8();
  sub_1BA11482C(&qword_1EBBEC1C8, sub_1BA1145D8, MEMORY[0x1E695C058]);
  v18 = sub_1BA4A4F98();
  (*(v8 + 8))(v11, v7);
  v27 = v18;
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v19 = sub_1BA4A7308();
  v26 = v19;
  v20 = sub_1BA4A72A8();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_1B9F3DC80();
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v5);

  *(swift_allocObject() + 16) = v25;
  swift_allocObject();
  swift_weakInit();
  sub_1BA11482C(&qword_1EBBEC1D0, sub_1BA114738, MEMORY[0x1E695BE98]);
  v21 = v24;
  v22 = sub_1BA4A5008();

  (*(v13 + 8))(v16, v21);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationCancellable) = v22;

  return result;
}

uint64_t sub_1BA1136A4(void **a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  v12 = *a1;
  if (*a1)
  {
    sub_1BA4A3DD8();
    v13 = v12;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315394;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v34);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v33 = v12;
      v21 = v12;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v22 = sub_1BA4A6828();
      v24 = sub_1B9F0B82C(v22, v23, &v34);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v14, v15, "%s Failed to update placeholder text: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    return (*(v4 + 8))(v11, v3);
  }

  else
  {
    sub_1BA4A3DD8();
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v26, v27, "%s Successfully updated placeholder text", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1BA1139CC(unint64_t *a1, uint64_t a2)
{
  v3 = sub_1BA4A1798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_3;
    }
  }

  else if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v42 = result;
    if (qword_1EBBE8380 != -1)
    {
      swift_once();
    }

    v9 = *algn_1EBBEC188;
    v40 = qword_1EBBEC180;
    v43 = 0xD000000000000014;
    v44 = 0x80000001BA4EB850;

    sub_1BA4A1788();
    v10 = sub_1BA4A1748();
    v12 = v11;
    v13 = *(v4 + 8);
    v13(v7, v3);
    MEMORY[0x1BFAF1350](v10, v12);

    v41 = v3;
    v14 = v43;
    v15 = v44;
    v43 = type metadata accessor for PlaceholderTextCollectionViewCell();
    sub_1BA10E8A8(v16);
    v17 = sub_1BA4A6808();
    v19 = v18;
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v39 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F28360(0);
    v21 = swift_allocObject();
    *(v21 + 16) = v39;
    *(v21 + 56) = &type metadata for PlaceholderTextItem;
    *(v21 + 64) = sub_1B9FE9528();
    v22 = swift_allocObject();
    *(v21 + 32) = v22;
    *(v22 + 16) = v14;
    *(v22 + 24) = v15;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    *(v22 + 48) = v40;
    *(v22 + 56) = v9;
    *(v22 + 64) = 1;
    goto LABEL_12;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v42 = result;
  if (qword_1EBBE8378 != -1)
  {
    swift_once();
  }

  v23 = *algn_1EBBEC178;
  v40 = qword_1EBBEC170;
  v43 = 0xD000000000000014;
  v44 = 0x80000001BA4EB850;

  sub_1BA4A1788();
  v24 = sub_1BA4A1748();
  v26 = v25;
  v13 = *(v4 + 8);
  v13(v7, v3);
  MEMORY[0x1BFAF1350](v24, v26);

  v41 = v3;
  v27 = v43;
  v28 = v44;
  v43 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8(v29);
  v30 = sub_1BA4A6808();
  v32 = v31;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v39 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v21 = swift_allocObject();
  *(v21 + 16) = v39;
  *(v21 + 56) = &type metadata for PlaceholderTextItem;
  *(v21 + 64) = sub_1B9FE9528();
  v33 = swift_allocObject();
  *(v21 + 32) = v33;
  *(v33 + 16) = v27;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = v32;
  *(v33 + 48) = v40;
  *(v33 + 56) = v23;
  *(v33 + 64) = 0;
LABEL_12:
  sub_1BA4A1788();
  v34 = sub_1BA4A1748();
  v36 = v35;
  v13(v7, v41);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v38 = Array<A>.identifierToIndexDict()(v37);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v21;
  *(inited + 56) = v38;
  *(inited + 64) = v34;
  *(inited + 72) = v36;
  sub_1BA0E7F10(inited, 1);

  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

void sub_1BA113E9C(uint64_t *a2@<X8>)
{
  swift_allocObject();
  swift_weakInit();
  v3 = MEMORY[0x1E695C028];
  sub_1BA11488C(0, &qword_1EBBEC1D8, MEMORY[0x1E695C028]);
  swift_allocObject();
  sub_1BA4A4EA8();
  sub_1BA1146F4(&qword_1EBBEC1E0, &qword_1EBBEC1D8, v3, MEMORY[0x1E695C038]);
  v4 = sub_1BA4A4F98();

  *a2 = v4;
}

void sub_1BA113FA8(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationStore);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BA00CD30;
    *(v8 + 24) = v5;
    v16 = sub_1BA114968;
    v17 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1BA112CEC;
    v15 = &block_descriptor_26;
    v9 = _Block_copy(&aBlock);

    v10 = v7;

    [v10 fetchSharingAuthorizationsWithCompletion_];
    _Block_release(v9);
  }

  else
  {

    sub_1BA114914();
    v11 = swift_allocError();
    aBlock = v11;
    LOBYTE(v13) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_1BA11415C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

double sub_1BA11419C(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    if (a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    a3(v7, 0);
  }

  return result;
}

double sub_1BA114274()
{

  return result;
}

uint64_t sub_1BA1142B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA114394()
{
  sub_1BA1142B4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingUpSharingDataSource(uint64_t a1)
{
  result = qword_1EBBEC190;
  if (!qword_1EBBEC190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA114490()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC170 = result;
  *algn_1EBBEC178 = v1;
  return result;
}

uint64_t sub_1BA11452C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC180 = result;
  *algn_1EBBEC188 = v1;
  return result;
}

void sub_1BA1145D8(uint64_t a1)
{
  if (!qword_1EBBEC1A0)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA11488C(255, &qword_1EBBEC1A8, MEMORY[0x1E695BED0]);
    sub_1BA1146F4(&qword_1EBBEC1B8, &qword_1EBBEC1A8, v1, MEMORY[0x1E695BED8]);
    v2 = sub_1BA4A4ED8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEC1A0);
    }
  }
}

void sub_1BA11468C(uint64_t a1)
{
  if (!qword_1EBBEC1B0)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEB060, 0x1E696C428);
    v1 = sub_1BA4A6BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC1B0);
    }
  }
}

uint64_t sub_1BA1146F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA11488C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA114738(uint64_t a1)
{
  if (!qword_1EBBEC1C0)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1BA11488C(255, &qword_1EBBEC1A8, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1BA1146F4(&qword_1EBBEC1B8, &qword_1EBBEC1A8, v1, MEMORY[0x1E695BED8]);
    sub_1B9F3DC80();
    v2 = sub_1BA4A4CC8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBEC1C0);
    }
  }
}

uint64_t sub_1BA11482C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA11488C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1BA11468C(255);
    v7 = v6;
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA114914()
{
  result = qword_1EBBEC1E8;
  if (!qword_1EBBEC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC1E8);
  }

  return result;
}

unint64_t sub_1BA114984()
{
  result = qword_1EBBEC1F0;
  if (!qword_1EBBEC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC1F0);
  }

  return result;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.showTapToRadarButton.getter()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  sub_1B9F0ADF8(0, &qword_1EDC5E538, 0x1E696C370);
  v0 = MEMORY[0x1BFAF1AC0](*MEMORY[0x1E696BD38]);
  v1 = sub_1BA4A7798();

  return v1 & 1;
}

uint64_t sub_1BA114A94()
{
  v1 = [*(v0 + 8) identifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.chartOverlayVersionProvider.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 144) = a1;
  return result;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.chartImageProvider.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.title.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.init(context:hkType:chartOverlayVersionProvider:title:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[120] = 0;
  v25 = 0;
  v26 = 0;
  v12 = *(a1 + 40);
  v22[0] = v12;
  v22[1] = a2;
  sub_1BA114D9C(a1, v23);
  v24 = a3;
  if (a5)
  {
    v13 = v12;
LABEL_6:
    v27 = a4;
    v28 = a5;
    sub_1BA114DF8(v22, a6);
    sub_1BA114E30(a1);
    sub_1BA114E84(v22);
    return;
  }

  v14 = v12;
  v15 = a2;
  v16 = [v14 displayTypeController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 displayTypeForObjectType_];

    if (v18)
    {
      v19 = [v18 localization];

      v20 = [v19 displayName];
      a4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      a5 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.shouldShowAddData.getter()
{
  result = [*v0 displayTypeController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result displayTypeForObjectType_];

  if (!v3)
  {
    return 0;
  }

  if (![v3 allowsManualEntry])
  {

    return 0;
  }

  if (*(v0 + 64) <= 1u && *(v0 + 64))
  {

    return 1;
  }

  else
  {
    v4 = sub_1BA4A8338();

    return v4 & 1;
  }
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.restoreUserActivity(activity:vc:)(void *a1, void *a2)
{
  sub_1BA118F78(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - v10;
  v12 = sub_1BA4A35F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v18 = *(a2 + v17);
  *(a2 + v17) = a1;
  v19 = a1;

  (*(v13 + 104))(v16, *MEMORY[0x1E69A2B80], v12);
  sub_1BA119048(&qword_1EDC6ACD8, MEMORY[0x1E69A2BD8]);
  sub_1BA4A70C8();
  (*(v13 + 8))(v16, v12);
  if (v31)
  {
    if (swift_dynamicCast())
    {
      v20 = _s18HealthExperienceUI12ChartContextC12archivedDataACSg10Foundation0G0V_tcfC_0(v29[1], v29[2]);
      if (v20)
      {
        v21 = v20;
        v22 = a2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
        swift_beginAccess();
        v23 = *(v22 + 13);
        *(v22 + 13) = v21;
      }
    }
  }

  else
  {
    sub_1B9F0DC10(v30, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8);
  }

  v24 = [v19 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v25 = sub_1BA4A3678();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    goto LABEL_10;
  }

  sub_1BA118F04(v11, v7, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720], sub_1BA118F78);
  if ((*(v26 + 88))(v7, v25) != *MEMORY[0x1E69A2C08])
  {
    (*(v26 + 8))(v7, v25);
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v27 = 1;
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x268))(1);
LABEL_11:
  sub_1BA118E78(v11);
  return v27;
}

NSUserActivity_optional __swiftcall DataTypeDetailViewController.HealthKitTypeViewModel.userActivity()()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v1, v3).n128_u64[0];
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = [*v0 displayTypeController];
  if (v8)
  {
    v10 = v8;
    v11 = *(v0 + 8);
    v12 = [v8 displayTypeForObjectType_];

    if (v12)
    {
      v13 = *(v0 + 64);
      v37 = v11;
      v38 = v7;
      if (v13 > 1 || !v13)
      {
        sub_1BA4A8338();
      }

      v15 = [v12 localization];
      v16 = [v15 displayName];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      (*(v2 + 104))(v6, *MEMORY[0x1E69A2C00], v1);
      v35 = sub_1BA4A35B8();

      (*(v2 + 8))(v6, v1);
      sub_1BA118F78(0, &qword_1EDC5DC98, sub_1BA118FDC, MEMORY[0x1E69E6F90]);
      sub_1BA118FDC(0);
      v18 = v17;
      v19 = *(*(v17 - 8) + 72);
      v20 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BA4B5460;
      v22 = v21 + v20;
      v23 = (v21 + v20 + *(v18 + 48));
      v24 = *MEMORY[0x1E69A2B98];
      v25 = sub_1BA4A35F8();
      v26 = *(v25 - 8);
      v27 = v12;
      v36 = v12;
      v28 = *(v26 + 104);
      (v28)(v22, v24, v25);
      v29 = [v27 displayCategory];
      v30 = [v29 categoryID];

      v23[3] = MEMORY[0x1E69E6530];
      *v23 = v30;
      v31 = (v22 + v19 + *(v18 + 48));
      v28();
      v14 = v35;
      v32 = [v37 code];
      v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v31[3] = sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
      *v31 = v33;
      sub_1B9FDBD0C(v21);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1BA119048(&qword_1EDC6ACE8, MEMORY[0x1E69A2BC8]);
      sub_1BA119048(&qword_1EDC6ACD8, MEMORY[0x1E69A2BD8]);
      sub_1BA4A70B8();

      v34 = [v38 profileIdentifier];
      sub_1BA4A7098();
    }

    else
    {
      v14 = 0;
    }

    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = v8;
  result.is_nil = v9;
  return result;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.addData(vc:)(void *a1)
{
  v2 = sub_1BA115A2C();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v4 setModalInPresentation_];
    [v4 setModalPresentationStyle_];
    [a1 presentViewController:v4 animated:1 completion:0];
  }
}

id sub_1BA115A2C()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v1, v3).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*v0 displayTypeController];
  if (result)
  {
    v8 = result;
    v9 = [result displayTypeForObjectType_];

    if (!v9)
    {
      return 0;
    }

    v10 = *(v0 + 56);
    v11 = [objc_opt_self() sharedInstanceForHealthStore_];
    sub_1BA4A1718();
    v12 = sub_1BA4A16B8();
    (*(v2 + 8))(v6, v1);
    v13 = [v9 wd:v10 addDataViewControllerWithHealthStore:v11 healthToolBox:v12 initialStartDate:?];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.addData(vc:sender:)(void *a1, uint64_t a2)
{
  v4 = sub_1BA115A2C();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    v9 = v6;
    if (a2)
    {
      swift_unknownObjectRetain();
      [v9 setModalPresentationStyle_];
      v7 = [v9 presentationController];
      if (v7)
      {
        v8 = v7;
        [v7 setSourceItem_];
      }

      swift_unknownObjectRelease();
      v6 = v9;
    }

    [a1 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_1BA115CC4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = v6;
  if (a3)
  {
    swift_unknownObjectRetain();
    [v9 setModalPresentationStyle_];
    v7 = [v9 presentationController];
    if (v7)
    {
      v8 = v7;
      [v7 setSourceItem_];
    }

    swift_unknownObjectRelease();
    v6 = v9;
  }

  [v3 presentViewController:v6 animated:a2 & 1 completion:0];
}

void DataTypeDetailViewController.HealthKitTypeViewModel.share(vc:)(void *a1)
{
  v2 = v1;
  v66 = a1;
  v68 = sub_1BA4A3EA8();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  sub_1BA118F78(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v64 - v12;
  v14 = sub_1BA4A15D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 152))
  {
    v19 = *(v1 + 160);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    if (v21)
    {
      v22 = v21;
      v23 = [*(v1 + 56) displayTypeController];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 displayTypeForObjectType_];

        if (!v25)
        {
          sub_1BA4A3DD8();
          sub_1BA114DF8(v2, v71);
          v58 = sub_1BA4A3E88();
          v59 = sub_1BA4A6FA8();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v70 = v62;
            *v60 = 136315394;
            *(v60 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v70);
            *(v60 + 12) = 2112;
            v63 = v71[1];
            sub_1BA114E84(v71);
            *(v60 + 14) = v63;
            *v61 = v63;
            _os_log_impl(&dword_1B9F07000, v58, v59, "%s Cannot create displayType for %@", v60, 0x16u);
            sub_1B9F8C6C8(v61);
            MEMORY[0x1BFAF43A0](v61, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v62);
            MEMORY[0x1BFAF43A0](v62, -1, -1);
            MEMORY[0x1BFAF43A0](v60, -1, -1);
          }

          else
          {

            sub_1BA114E84(v71);
          }

          (v67)[1](v9, v68);
          return;
        }

        v26 = v22;
        v27 = [v25 listIcon];
        v67 = v25;
        v28 = sub_1BA11660C(v25);
        v68 = v29;
        if (qword_1EBBE88B8 != -1)
        {
          swift_once();
        }

        v30 = qword_1EBBF13B0;
        v31 = *algn_1EBBF13B8;
        v65 = type metadata accessor for HealthImageActivityItemProvider();
        v32 = objc_allocWithZone(v65);
        *&v32[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image] = v26;
        *&v32[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage] = v27;
        v33 = &v32[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_title];
        v34 = v68;
        *v33 = v28;
        v33[1] = v34;
        v35 = &v32[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_subtitle];
        *v35 = v30;
        v35[1] = v31;
        v36 = v26;

        v37 = v27;
        sub_1BA4A15C8();
        if ((*(v15 + 48))(v13, 1, v14) != 1)
        {
          (*(v15 + 32))(v18, v13, v14);
          v38 = sub_1BA4A1548();
          (*(v15 + 8))(v18, v14);
          v69.receiver = v32;
          v39 = v65;
          v69.super_class = v65;
          v40 = objc_msgSendSuper2(&v69, sel_initWithPlaceholderItem_, v38);

          v41 = v36;
          sub_1B9F233E4(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1BA4B5480;
          *(v42 + 56) = v39;
          *(v42 + 32) = v40;
          v43 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
          v44 = v40;
          v45 = sub_1BA4A6AE8();

          v46 = [v43 initWithActivityItems:v45 applicationActivities:0];

          v47 = [v46 popoverPresentationController];
          v48 = v66;
          if (v47)
          {
            v49 = v47;
            sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
            if (qword_1EBBE84C8 != -1)
            {
              swift_once();
            }

            v50 = qword_1EBC09650;
            v51 = v48;
            v52 = sub_1BA4A7138();
            [v49 setSourceItem_];
          }

          sub_1BA2593F4();
          type metadata accessor for ActivityType(0);
          v53 = sub_1BA4A6AE8();

          [v46 setExcludedActivityTypes_];

          [v48 presentViewController:v46 animated:1 completion:0];
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  sub_1BA4A3DD8();
  v54 = sub_1BA4A3E88();
  v55 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71[0] = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v71);
    _os_log_impl(&dword_1B9F07000, v54, v55, "%s Chart image not available, we have nothing to share!", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x1BFAF43A0](v57, -1, -1);
    MEMORY[0x1BFAF43A0](v56, -1, -1);
  }

  (v67)[1](v5, v68);
}

uint64_t sub_1BA11660C(void *a1)
{
  v1 = [a1 localization];
  v2 = [v1 titleEmbeddedDisplayName];

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B3E0(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B9F1BE20();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  v7 = sub_1BA4A6768();

  return v7;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.tapToRadar(vc:)()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA116A88(v25);
  v6 = v26;
  if (v26)
  {
    v8 = v25[0];
    v7 = v25[1];
    sub_1BA114DF8(v0, v23);
    v29 = v27;
    v9 = swift_allocObject();
    v10 = v23[9];
    *(v9 + 144) = v23[8];
    *(v9 + 160) = v10;
    *(v9 + 176) = v23[10];
    v11 = v24;
    v12 = v23[5];
    *(v9 + 80) = v23[4];
    *(v9 + 96) = v12;
    v13 = v23[7];
    *(v9 + 112) = v23[6];
    *(v9 + 128) = v13;
    v14 = v23[1];
    *(v9 + 16) = v23[0];
    *(v9 + 32) = v14;
    v15 = v23[3];
    *(v9 + 48) = v23[2];
    *(v9 + 64) = v15;
    *(v9 + 192) = v11;
    *(v9 + 200) = v8;
    *(v9 + 208) = v7;
    *(v9 + 216) = v6;
    *(v9 + 224) = v27;
    *(v9 + 240) = v28;

    v16 = MEMORY[0x1E69E6158];
    sub_1BA118F04(&v29, &v22, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F233E4);
    sub_1BA1170A0(v7, v6, sub_1BA11908C, v9);

    sub_1B9F0DC10(&v29, &qword_1EDC6E410, v16);
  }

  else
  {
    sub_1BA4A3DD8();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v23[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v23);
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Unable to make tap to radar components, ignoring tap.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

void sub_1BA116A88(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  sub_1B9F0ADF8(0, &qword_1EDC5E538, 0x1E696C370);
  v10 = MEMORY[0x1BFAF1AC0](*MEMORY[0x1E696BD38]);
  sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
  v11 = sub_1BA4A7798();

  if ((v11 & 1) == 0)
  {
    sub_1BA4A3DD8();
    sub_1BA114DF8(v2, v34);
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v33);
      *(v24 + 12) = 2080;
      v26 = [v35 identifier];
      v32 = v4;
      v27 = v26;
      v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v30 = v29;

      sub_1BA114E84(v34);
      v31 = sub_1B9F0B82C(v28, v30, &v33);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] No tap to radar components specified for object type with identifier %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);

      (*(v5 + 8))(v8, v32);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      sub_1BA114E84(v34);
    }

    v21 = 0;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_9;
  }

  v12 = [*v2 displayTypeController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 displayTypeForObjectType_];

    if (v14)
    {
      v15 = [v14 localization];

      v16 = [v15 displayName];
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v19 = v18;

      v20 = 3;
      v21 = 1318138;
LABEL_9:
      *a1 = v21;
      a1[1] = v17;
      a1[2] = v19;
      a1[3] = 0;
      a1[4] = 0;
      a1[5] = v20;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA116E20(uint64_t *a1)
{
  v2 = sub_1BA4A15D8();
  v21 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 91;
  v23 = 0xE100000000000000;
  MEMORY[0x1BFAF1350](a1[1], a1[2], v4);
  MEMORY[0x1BFAF1350](2112093, 0xE300000000000000);
  v7 = sub_1BA4A6758();

  if (a1[4])
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v10 = *a1;
  sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  v11 = sub_1BA4A6AE8();
  v12 = a1[5];
  v13 = sub_1BA4A6AE8();
  v14 = [v9 hk:v10 tapToHealthRadarURLForComponent:v7 title:v8 description:0 classification:0 reproducibility:v11 keywords:v12 autoDiagnostics:v13 attachments:?];

  sub_1BA4A1588();
  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BA4A1548();
    sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
    v18 = sub_1BA4A6618();

    [v16 openSensitiveURL:v17 withOptions:v18];
  }

  return (*(v21 + 8))(v6, v2);
}

void sub_1BA1170A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA10E26C;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_47;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_50;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_53;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

void sub_1BA1174D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA10E26C;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_34_1;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_37;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_40_2;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

void sub_1BA117908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA10E26C;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_21_0;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_24_0;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_27;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

void sub_1BA117D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA091C30;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_27;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_11_1;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_14_1;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

Swift::Void __swiftcall DataTypeDetailViewController.HealthKitTypeViewModel.sendRoomEntryAnalyticsEvent(chartOverlayVersion:)(__C::HKChartOverlayVersion_optional chartOverlayVersion)
{
  v2 = v1;
  rawValue = chartOverlayVersion.value._rawValue;
  v4 = *(v2 + 144);
  if (!v4 || (v5 = [*(v2 + 144) chartOverlayVersion]) == 0)
  {
    v6 = rawValue;
    v5 = rawValue;
  }

  v24 = v5;
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  v7 = sub_1BA4A2F28();

  if ((v7 & 1) == 0)
  {
    v8 = v24;
    goto LABEL_11;
  }

  v8 = v24;
  if (*(v2 + 136))
  {
LABEL_11:

    return;
  }

  if (v24)
  {
    v9 = v24;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v23 = [v4 chartOverlayVersion];
    if (!v23)
    {
      return;
    }

    v9 = v23;
    v24 = 0;
  }

  sub_1BA114DF8(v2, v26);
  v10 = v27;
  v11 = v24;
  v12 = [v10 identifier];
  v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v15 = v14;

  sub_1BA114E84(v26);
  v16 = *v2;
  sub_1BA4A2F38();
  v17 = sub_1BA4A2F28();

  if (v17)
  {

    v18 = [v16 profileIdentifier];
    v19 = [v18 type];

    v25[5] = v13;
    v25[6] = v15;
    v25[7] = v9;
    v25[8] = v19;
    v20 = sub_1BA4A29B8();
    v21 = v9;
    v22 = sub_1BA4A29A8();
    v25[3] = v20;
    v25[4] = MEMORY[0x1E69A3198];
    v25[0] = v22;
    sub_1BA1190B4();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v25);

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  *(v2 + 136) = 1;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.internalSettingsGestureTriggered(vc:)(char *a1)
{
  v3 = sub_1BA4A28B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BA4A3EA8();
  v8 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v48 - v22;
  sub_1BA2683D8(*(v1 + 8), &v52);
  if (*(&v53 + 1))
  {
    sub_1B9F1134C(&v52, v55);
    sub_1BA4A3E28();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v52 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v52);
      _os_log_impl(&dword_1B9F07000, v24, v25, "[%s]: Debug action gesture recognized, using HealthKitType debug action provider", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
    }

    (*(v8 + 8))(v23, v49);
LABEL_5:
    v28 = v56;
    v29 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v29 + 8))(a1, v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return;
  }

  sub_1BA119108(&v52, &qword_1EDC6B8A8, qword_1EDC6B8B0, &protocol descriptor for DataTypeDetailViewControllerDebugActionProviding);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA119178(&a1[v30], v50);
  if (v51)
  {
    sub_1B9F0D950(0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider);
    sub_1B9F0D950(0, qword_1EDC6B8B0, &protocol descriptor for DataTypeDetailViewControllerDebugActionProviding);
    if (swift_dynamicCast())
    {
      if (*(&v53 + 1))
      {
        sub_1B9F1134C(&v52, v55);
        sub_1BA4A3E28();
        v31 = sub_1BA4A3E88();
        v32 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v52 = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v52);
          _os_log_impl(&dword_1B9F07000, v31, v32, "[%s]: Debug action gesture recognized, using dataSourceProvider", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x1BFAF43A0](v34, -1, -1);
          MEMORY[0x1BFAF43A0](v33, -1, -1);
        }

        (*(v8 + 8))(v19, v49);
        goto LABEL_5;
      }
    }

    else
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
    }
  }

  else
  {
    sub_1BA119108(v50, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider);
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
  }

  sub_1BA119108(&v52, &qword_1EDC6B8A8, qword_1EDC6B8B0, &protocol descriptor for DataTypeDetailViewControllerDebugActionProviding);
  (*(v4 + 104))(v7, *MEMORY[0x1E69A3158], v3);
  v35 = sub_1BA4A2898();
  (*(v4 + 8))(v7, v3);
  if (v35)
  {
    v36 = objc_allocWithZone(type metadata accessor for HealthSharingInternalSettingsViewController());
    HealthSharingInternalSettingsViewController.init()();
    v38 = v37;
    sub_1BA4A3E28();
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v55);
      _os_log_impl(&dword_1B9F07000, v39, v40, "[%s]: Debug action gesture recognized, presenting sharing settings menu", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v8 + 8))(v15, v49);
    v43 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [a1 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    sub_1BA4A3E28();
    v44 = sub_1BA4A3E88();
    v45 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55[0] = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v55);
      _os_log_impl(&dword_1B9F07000, v44, v45, "[%{public}s]: Debug action gesture recognized but data source provider does not provide debug action", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
    }

    (*(v8 + 8))(v11, v49);
  }
}

uint64_t sub_1BA118B10()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t sub_1BA118B40()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  sub_1B9F0ADF8(0, &qword_1EDC5E538, 0x1E696C370);
  v0 = MEMORY[0x1BFAF1AC0](*MEMORY[0x1E696BD38]);
  v1 = sub_1BA4A7798();

  return v1 & 1;
}

void sub_1BA118C04(void *a1)
{
  v2 = sub_1BA115A2C();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v4 setModalInPresentation_];
    [v4 setModalPresentationStyle_];
    [a1 presentViewController:v4 animated:1 completion:0];
  }
}

void sub_1BA118CCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA115A2C();
  if (v3)
  {
    v4 = v3;
    sub_1BA115CC4(v3, 1, a2);
  }
}

uint64_t DataTypeDetailViewController.MeasureViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataTypeDetailViewController.MeasureViewModel.axidIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DataTypeDetailViewController.MeasureViewModel.analyticsIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

NSUserActivity_optional __swiftcall DataTypeDetailViewController.MeasureViewModel.userActivity()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

uint64_t sub_1BA118E10()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1BA118E40()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1BA118E78(uint64_t a1)
{
  sub_1BA118F78(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA118F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BA118F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA118FDC(uint64_t a1)
{
  if (!qword_1EDC6ACD0)
  {
    sub_1BA4A35F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6ACD0);
    }
  }
}

uint64_t sub_1BA119048(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA4A35F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA1190B4()
{
  result = qword_1EBBEC1F8;
  if (!qword_1EBBEC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC1F8);
  }

  return result;
}

uint64_t sub_1BA119108(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F1B3E0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA119178(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B3E0(0, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_1BA119348(uint64_t *a1, int a2)
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

uint64_t sub_1BA119390(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1BA119428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1BA119470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA119590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1898();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11E82C(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel____lazy_storage___defaultDateOfBirth;
  swift_beginAccess();
  sub_1BA120D48(v1 + v19, v18, sub_1BA11E82C);
  sub_1B9F7B6A0(0);
  v21 = v20;
  v22 = *(v20 - 8);
  if ((*(v22 + 48))(v18, 1, v20) != 1)
  {
    return sub_1BA120E18(v18, a1, sub_1B9F7B6A0);
  }

  sub_1BA11FEE8(v18, sub_1BA11E82C);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_calendar;
  result = (*(v32 + 104))(v31, *MEMORY[0x1E6969A68], v33);
  if (__OFSUB__(0, *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_defaultAge)))
  {
    __break(1u);
  }

  else
  {
    sub_1BA4A1718();
    v29 = v14;
    v24 = v1;
    v30 = v19;
    v25 = v31;
    sub_1BA4A1848();
    (*(v4 + 8))(v7, v3);
    (*(v32 + 8))(v25, v33);
    v26 = v29;
    sub_1BA120D48(a1, v29, sub_1B9F7B6A0);
    (*(v22 + 56))(v26, 0, 1, v21);
    v27 = v30;
    swift_beginAccess();
    sub_1BA120DB0(v26, v24 + v27, sub_1BA11E82C);
    return swift_endAccess();
  }

  return result;
}

double sub_1BA11993C(uint64_t a1)
{
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA120D48(a1, v6, type metadata accessor for ConfirmDetailsProvider.Details);
  v7 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120DB0(v6, v1 + v9, sub_1BA11E7F8);
  swift_endAccess();
  sub_1BA11F15C();
  sub_1BA120D48(a1, v6, type metadata accessor for ConfirmDetailsProvider.Details);
  v8(v6, 0, 1, v7);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v19 = v1;
  v20 = v6;

  sub_1BA24A778(sub_1BA120EF8, v18, v11);
  v13 = v12;

  sub_1BA11FEE8(v6, sub_1BA11E7F8);
  v14 = v1 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v15 + 24))(v13, ObjectType, v15);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

void sub_1BA119B74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    *&v71[0] = MEMORY[0x1E69E7CC0];
    sub_1BA066D88(0, v2, 0);
    v3 = *&v71[0];
    v4 = (a1 + 32);
    v5 = v2;
    do
    {
      v6 = *v4;
      *&v71[0] = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_1BA066D88((v7 > 1), v8 + 1, 1);
        v3 = *&v71[0];
      }

      *(v3 + 16) = v8 + 1;
      *(v3 + 8 * v8 + 32) = v6;
      ++v4;
      --v5;
    }

    while (v5);
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  *(v70 + v9) = v3;

  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  v68 = v10;
  *(v70 + v10) = MEMORY[0x1E69E7CC8];

  if (!v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v22 = *(v12 + 2);
    if (!v22)
    {
LABEL_54:

      return;
    }

    v23 = 0;
    v24 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;
    v25 = (v12 + 32);
    v67 = *(v12 + 2);
    v65 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;
    while (1)
    {
      if (v23 >= *(v12 + 2))
      {
        goto LABEL_57;
      }

      v27 = v25[3];
      v26 = v25[4];
      v28 = v25[1];
      v72 = v25[2];
      v73 = v27;
      v29 = *v25;
      v74 = v26;
      v71[0] = v29;
      v71[1] = v28;
      v30 = BYTE8(v73);
      if (*(&v73 + 1) >> 62 == 3)
      {
        break;
      }

LABEL_28:
      ++v23;
      v25 += 5;
      if (v22 == v23)
      {
        goto LABEL_54;
      }
    }

    v31 = *(&v72 + 1);
    v32 = v73;
    v33 = v72;
    v69 = v72;
    if (BYTE8(v73) == 2)
    {

      v34 = v31;
      goto LABEL_44;
    }

    v66 = v73;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v70 + v68);
    *(v70 + v68) = 0x8000000000000000;
    v37 = v31;
    v38 = sub_1B9F24A34(v33, v31);
    v40 = v36[2];
    v41 = (v39 & 1) == 0;
    v20 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (v20)
    {
      goto LABEL_61;
    }

    v43 = v39;
    if (v36[3] >= v42)
    {
      v24 = v65;
      v44 = v69;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v38;
        sub_1BA0F1B08();
        v38 = v46;
        if (v43)
        {
          goto LABEL_39;
        }

        goto LABEL_41;
      }
    }

    else
    {
      sub_1BA0F3C84(v42, isUniquelyReferenced_nonNull_native);
      v44 = v69;
      v38 = sub_1B9F24A34(v69, v37);
      v24 = v65;
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_64;
      }
    }

    if (v43)
    {
LABEL_39:
      *(v36[7] + v38) = v30 & 1;
LABEL_43:
      v34 = v37;
      *(v70 + v68) = v36;
      swift_endAccess();
      v32 = v66;
LABEL_44:
      swift_beginAccess();

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v70 + v24);
      *(v70 + v24) = 0x8000000000000000;
      v52 = v69;
      v53 = sub_1B9F24A34(v69, v34);
      v55 = v51[2];
      v56 = (v54 & 1) == 0;
      v20 = __OFADD__(v55, v56);
      v57 = v55 + v56;
      if (v20)
      {
        goto LABEL_59;
      }

      v58 = v54;
      if (v51[3] >= v57)
      {
        if ((v50 & 1) == 0)
        {
          v63 = v34;
          v64 = v53;
          sub_1BA0F1C84();
          v53 = v64;
          v34 = v63;
          v52 = v69;
          if ((v58 & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_26;
        }
      }

      else
      {
        sub_1BA0F3F38(v57, v50);
        v53 = sub_1B9F24A34(v69, v34);
        if ((v58 & 1) != (v59 & 1))
        {
          goto LABEL_64;
        }
      }

      if ((v58 & 1) == 0)
      {
LABEL_50:
        v51[(v53 >> 6) + 8] |= 1 << v53;
        v60 = (v51[6] + 16 * v53);
        *v60 = v52;
        v60[1] = v34;
        *(v51[7] + 8 * v53) = v32;
        v61 = v51[2];
        v20 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v20)
        {
          goto LABEL_62;
        }

        v51[2] = v62;

        goto LABEL_27;
      }

LABEL_26:
      *(v51[7] + 8 * v53) = v32;

LABEL_27:
      *(v70 + v24) = v51;
      swift_endAccess();
      sub_1B9FF3768(v71);
      v22 = v67;
      goto LABEL_28;
    }

LABEL_41:
    v36[(v38 >> 6) + 8] |= 1 << v38;
    v47 = (v36[6] + 16 * v38);
    *v47 = v44;
    v47[1] = v37;
    *(v36[7] + v38) = v30 & 1;
    v48 = v36[2];
    v20 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v20)
    {
      goto LABEL_63;
    }

    v36[2] = v49;

    goto LABEL_43;
  }

  v11 = (a1 + 32);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = *v11;
    v14 = *(*v11 + 16);
    v15 = *(v12 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    v17 = swift_isUniquelyReferenced_nonNull_native();
    if (v17 && v16 <= *(v12 + 3) >> 1)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v12 = sub_1BA27F490(v17, v18, 1, v12);
      if (!*(v13 + 16))
      {
LABEL_8:

        if (v14)
        {
          goto LABEL_56;
        }

        goto LABEL_9;
      }
    }

    if ((*(v12 + 3) >> 1) - *(v12 + 2) < v14)
    {
      goto LABEL_58;
    }

    swift_arrayInitWithCopy();

    if (v14)
    {
      v19 = *(v12 + 2);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (v20)
      {
        goto LABEL_60;
      }

      *(v12 + 2) = v21;
    }

LABEL_9:
    ++v11;
    if (!--v2)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1BA4A83B8();
  __break(1u);
}

void sub_1BA11A17C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[3] = a3;
  v5 = *a1;
  v7[2] = a2;
  sub_1BA24AAD8(sub_1BA120EC8, v7, v5);
  *a4 = v6;
}

uint64_t sub_1BA11A1D0(char *a1)
{
  v2 = v1;
  *&v164 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  *&v166 = v4;
  *(&v166 + 1) = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v165 = &v151 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v159 = &v151 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v155 = &v151 - v17;
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v158 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A1998();
  v22 = *(v21 - 8);
  v162 = v21;
  *&v163 = v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v161 = &v151 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v157 = &v151 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v160 = &v151 - v34;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v156 = &v151 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v151 - v40;
  v42 = type metadata accessor for ConfirmDetailsProvider.Details(0);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v151 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  v154 = v47;
  sub_1BA120D48(&v2[v47], v41, sub_1BA11E7F8);
  v48 = v43;
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_1BA11FEE8(v41, sub_1BA11E7F8);
    sub_1BA4A3DD8();
    v49 = sub_1BA4A3E88();
    v50 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v179 = v52;
      *v51 = 136446466;
      v53 = sub_1BA4A85D8();
      v55 = sub_1B9F0B82C(v53, v54, &v179);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v179);
      _os_log_impl(&dword_1B9F07000, v49, v50, "[%{public}s.%{public}s]: Attempted to change details before we received them.", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v52, -1, -1);
      MEMORY[0x1BFAF43A0](v51, -1, -1);
    }

    return (*(*(&v166 + 1) + 8))(v8, v166);
  }

  v152 = v42;
  sub_1BA120E18(v41, v46, type metadata accessor for ConfirmDetailsProvider.Details);
  v57 = sub_1BA4A1968();
  v58 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v153 = v58;
  v59 = *(*&v2[v58] + 16);
  v60 = v46;
  v61 = v2;
  v62 = v165;
  if (v57 >= v59)
  {
    goto LABEL_20;
  }

  v63 = a1;
  v60 = sub_1BA4A1938();
  v64 = sub_1BA4A1968();
  if ((v64 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v65 = *&v61[v153];
  if (v64 >= *(v65 + 16))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v66 = v60 < *(*(v65 + 8 * v64 + 32) + 16);
  v60 = v46;
  if (!v66)
  {
LABEL_20:
    sub_1BA4A3DD8();
    v79 = v162;
    v78 = v163;
    (*(v163 + 16))(v25, a1, v162);
    v80 = sub_1BA4A3E88();
    v81 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *&v179 = v161;
      *v82 = 136446722;
      v83 = sub_1BA4A85D8();
      v85 = sub_1B9F0B82C(v83, v84, &v179);
      *&v164 = v60;
      v86 = v85;

      *(v82 + 4) = v86;
      *(v82 + 12) = 2082;
      *(v82 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v179);
      *(v82 + 22) = 2082;
      sub_1BA120E80(&unk_1EBBED850, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
      v87 = sub_1BA4A82D8();
      v89 = v88;
      (*(v78 + 8))(v25, v79);
      v90 = sub_1B9F0B82C(v87, v89, &v179);

      *(v82 + 24) = v90;
      _os_log_impl(&dword_1B9F07000, v80, v81, "[%{public}s.%{public}s]: Unable to determine row for index path %{public}s", v82, 0x20u);
      v91 = v161;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v91, -1, -1);
      MEMORY[0x1BFAF43A0](v82, -1, -1);

      (*(*(&v166 + 1) + 8))(v62, v166);
      v92 = v164;
      return sub_1BA11FEE8(v92, type metadata accessor for ConfirmDetailsProvider.Details);
    }

    (*(v78 + 8))(v25, v79);
    (*(*(&v166 + 1) + 8))(v62, v166);
LABEL_23:
    v92 = v60;
    return sub_1BA11FEE8(v92, type metadata accessor for ConfirmDetailsProvider.Details);
  }

  v63 = a1;
  v67 = sub_1BA4A1968();
  if ((v67 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v68 = *&v61[v153];
  if (v67 >= *(v68 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v25 = *(v68 + 8 * v67 + 32);

  v63 = a1;
  v69 = sub_1BA4A1938();
  if ((v69 & 0x8000000000000000) != 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v70 = *(v25 + 16);
  if (v69 >= v70)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v71 = (v25 + 80 * v69);
  v176[0] = v71[2];
  v72 = v71[3];
  v73 = v71[4];
  v74 = v71[6];
  v177 = v71[5];
  v178 = v74;
  v176[1] = v72;
  v176[2] = v73;
  a1 = LOBYTE(v176[0]);
  v75 = *(&v177 + 1) >> 62;
  if ((*(&v177 + 1) >> 62) > 1)
  {
    v165 = LOBYTE(v176[0]);
    if (v75 != 2)
    {
      v166 = v178;
      v107 = *(&v176[2] + 1);
      v106 = v177;
      v108 = *(v176 + 5);
      v109 = *(v176 + 1);
      v110 = v60;
      v111 = BYTE7(v176[0]);
      v112 = *(&v177 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v163 = *(&v176[1] + 8);
      v164 = *(v176 + 8);
      v173 = v176[2];
      *&v174 = v177;
      v175 = v178;
      v171 = v176[0];
      v172 = v176[1];
      *(&v174 + 1) = *(&v177 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_1BA0AEED4(&v171, &v179);

      LOBYTE(v168[0]) = v165;
      BYTE7(v168[0]) = v111;
      *(v168 + 5) = v108;
      *(v168 + 1) = v109;
      *(&v168[1] + 8) = v163;
      *(v168 + 8) = v164;
      *(&v168[2] + 1) = v107;
      *&v169 = v106;
      *(&v169 + 1) = v112;
      v170 = v166;
      v181 = v176[2];
      *&v182 = v177;
      v183 = v178;
      v179 = v176[0];
      v180 = v176[1];
      *(&v182 + 1) = *(&v177 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_1BA0AEED4(&v179, &v167);
      sub_1BA11BA3C(v168, v110);
      sub_1B9FF3768(v176);
      sub_1BA11FEE8(v110, type metadata accessor for ConfirmDetailsProvider.Details);
      return sub_1B9FF3768(v176);
    }

    v93 = v159;
    sub_1BA4A3DD8();
    v94 = sub_1BA4A3E88();
    v95 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *&v179 = v97;
      *v96 = 136446722;
      v98 = sub_1BA4A85D8();
      v100 = sub_1B9F0B82C(v98, v99, &v179);

      *(v96 + 4) = v100;
      *(v96 + 12) = 2082;
      *(v96 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v179);
      *(v96 + 22) = 2082;
      LOBYTE(v171) = v165;
      v101 = sub_1BA4A6808();
      v103 = sub_1B9F0B82C(v101, v102, &v179);

      *(v96 + 24) = v103;
      _os_log_impl(&dword_1B9F07000, v94, v95, "[%{public}s.%{public}s]: Should not be able to tap on picker %{public}s", v96, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v97, -1, -1);
      MEMORY[0x1BFAF43A0](v96, -1, -1);
    }

    goto LABEL_29;
  }

  if (!v75)
  {
    v46 = 0;
    v76 = v25 + 88;
    while (*v76 >> 62 != 2)
    {
      ++v46;
      v76 += 80;
      if (v70 == v46)
      {
        v165 = v61;

        v46 = v161;
        v77 = v162;
        goto LABEL_43;
      }
    }

    v179 = *(v76 - 56);
    v113 = *(v76 - 40);
    v114 = *(v76 - 24);
    v115 = *(v76 + 8);
    v182 = *(v76 - 8);
    v183 = v115;
    v180 = v113;
    v181 = v114;
    sub_1B9FF3650(&v179, &v171);

    v116 = sub_1BA4A1968();
    MEMORY[0x1BFAEC360](v46, v116);
    v63 = sub_1BA4A1968();
    v117 = v153;
    swift_beginAccess();
    v25 = *&v61[v117];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61[v117] = v25;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v63 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_65;
    }

LABEL_64:
    v25 = sub_1BA2F6838(v25);
    *&v61[v153] = v25;
    if ((v63 & 0x8000000000000000) == 0)
    {
LABEL_36:
      if (v63 < *(v25 + 16))
      {
        sub_1BA0F0AFC(v46, &v171);
        *&v61[v153] = v25;
        swift_endAccess();
        v168[2] = v173;
        v169 = v174;
        v170 = v175;
        v168[0] = v171;
        v168[1] = v172;
        sub_1B9FF3768(v168);
        v119 = &v61[OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate];
        Strong = swift_unknownObjectWeakLoadStrong();
        v121 = v160;
        if (Strong)
        {
          v122 = *(v119 + 1);
          ObjectType = swift_getObjectType();
          (*(v122 + 40))(v121, ObjectType, v122);
          swift_unknownObjectRelease();
        }

        v77 = v162;
        (*(v163 + 8))(v121, v162);
        v46 = v161;
        if (*(&v182 + 1) >> 62 == 2)
        {
          if (a1 == v179)
          {
LABEL_44:
            sub_1B9FF3768(v176);
            goto LABEL_23;
          }

          v165 = v61;
        }

        else
        {
          v165 = v61;
          sub_1B9FF3768(&v179);
        }

LABEL_43:
        v61 = v163;
        v124 = v158;
        if (a1 == 1)
        {
          goto LABEL_44;
        }

        *&v179 = a1;
        *(&v182 + 1) = 0;
        sub_1BA11B40C(&v179, v158);
        if ((*(v61 + 6))(v124, 1, v77) == 1)
        {
          v125 = a1;
          sub_1BA11FEE8(v124, sub_1BA11FEB4);
          v93 = v155;
          sub_1BA4A3DD8();
          v126 = sub_1BA4A3E88();
          v127 = sub_1BA4A6FA8();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            *&v179 = v129;
            *v128 = 136446722;
            v130 = sub_1BA4A85D8();
            v132 = sub_1B9F0B82C(v130, v131, &v179);

            *(v128 + 4) = v132;
            *(v128 + 12) = 2082;
            *(v128 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v179);
            *(v128 + 22) = 2082;
            LOBYTE(v171) = v125;
            v133 = sub_1BA4A6808();
            v135 = sub_1B9F0B82C(v133, v134, &v179);

            *(v128 + 24) = v135;
            _os_log_impl(&dword_1B9F07000, v126, v127, "[%{public}s.%{public}s]: Can't find index of detail %{public}s", v128, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v129, -1, -1);
            MEMORY[0x1BFAF43A0](v128, -1, -1);
          }

          sub_1B9FF3768(v176);
LABEL_29:
          (*(*(&v166 + 1) + 8))(v93, v166);
          goto LABEL_23;
        }

        v63 = v157;
        (*(v61 + 4))(v157, v124, v77);
        v136 = sub_1BA4A1938();
        v25 = v136 + 1;
        if (!__OFADD__(v136, 1))
        {
          v137 = sub_1BA4A1968();
          MEMORY[0x1BFAEC360](v25, v137);
          v46 = a1;
          *&v179 = a1;
          *(&v182 + 1) = 0x8000000000000000;
          v138 = v156;
          sub_1BA120D48(v60, v156, type metadata accessor for ConfirmDetailsProvider.Details);
          a1 = v48[7];
          *(&v166 + 1) = v48 + 7;
          (a1)(v138, 0, 1, v152);
          v139 = v165;
          sub_1BA11CC0C(&v179, v138, &v171);
          v140 = v138;
          v61 = v139;
          sub_1BA11FEE8(v140, sub_1BA11E7F8);
          v63 = sub_1BA4A1968();
          v141 = v153;
          swift_beginAccess();
          v48 = *&v61[v141];
          result = swift_isUniquelyReferenced_nonNull_native();
          *&v61[v141] = v48;
          if (result)
          {
            if ((v63 & 0x8000000000000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_69;
          }

LABEL_68:
          result = sub_1BA2F6838(v48);
          v48 = result;
          *&v61[v153] = result;
          if ((v63 & 0x8000000000000000) == 0)
          {
LABEL_52:
            if (v63 < v48[2])
            {
              if (*(v48[v63 + 4] + 16) >= v25)
              {
                if ((v25 & 0x8000000000000000) == 0)
                {
                  *&v179 = v46;
                  *(&v182 + 1) = 0x8000000000000000;
                  sub_1BA0FBD0C(v25, v25, &v179);
                  *&v61[v153] = v48;
                  swift_endAccess();
                  v142 = &v61[OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate];
                  v143 = swift_unknownObjectWeakLoadStrong();
                  v144 = v161;
                  if (v143)
                  {
                    v145 = *(v142 + 1);
                    v146 = swift_getObjectType();
                    (*(v145 + 32))(&v171, v144, v146, v145);
                    swift_unknownObjectRelease();
                  }

                  sub_1B9FF3768(v176);
                  __swift_destroy_boxed_opaque_existential_1(&v171);
                  v147 = v162;
                  v148 = *(v163 + 8);
                  v148(v144, v162);
                  v148(v157, v147);
                  v149 = v156;
                  sub_1BA120E18(v60, v156, type metadata accessor for ConfirmDetailsProvider.Details);
                  (a1)(v149, 0, 1, v152);
                  v150 = v154;
                  swift_beginAccess();
                  sub_1BA120DB0(v149, &v61[v150], sub_1BA11E7F8);
                  return swift_endAccess();
                }

LABEL_72:
                __break(1u);
                return result;
              }

LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v104 = 0x80000001BA4E14F0;
  v105 = 0xD000000000000016;
  if (a1)
  {
    v105 = 0x636F6C4261746562;
    v104 = 0xEC0000007372656BLL;
  }

  *&v179 = 0;
  *(&v179 + 1) = 0xE000000000000000;
  v180 = 0uLL;
  *&v181 = v105;
  *(&v181 + 1) = v104;
  *&v182 = MEMORY[0x1E69E7CC0];
  WORD4(v182) = 258;
  v183 = 0uLL;
  v173 = v181;
  v174 = v182;
  v175 = 0uLL;
  v171 = v179;
  v172 = 0uLL;
  sub_1BA11BA3C(&v171, v46);
  sub_1BA11FEE8(v46, type metadata accessor for ConfirmDetailsProvider.Details);
  return sub_1BA120A78(&v179);
}
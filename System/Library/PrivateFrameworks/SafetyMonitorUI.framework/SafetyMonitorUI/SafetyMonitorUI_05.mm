uint64_t sub_26469D0F0(uint64_t *a1, char a2)
{
  type metadata accessor for LocationSearchViewModel(0);
  sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
  sub_264783FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_264783EE4();
}

uint64_t sub_26469D1C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26460CCE8(v2, &v14 - v9, &qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2647846F4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_2647859E4();
    v13 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26469D3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v46 = sub_2647849E4();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_264784AA4();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationSearchResultRow(0);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v30 = v6;
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F68, &qword_26478C158);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v34 = &v28 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F70, &qword_26478C160);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v28 - v11;
  v12 = sub_2647845C4();
  v31 = v1;
  v32 = v12;
  v50 = 0;
  sub_26469DAC4(v1, v48);
  v57 = *&v48[96];
  v58 = *&v48[112];
  v59 = *&v48[128];
  v53 = *&v48[32];
  v54 = *&v48[48];
  v55 = *&v48[64];
  v56 = *&v48[80];
  v51 = *v48;
  v52 = *&v48[16];
  v61[6] = *&v48[96];
  v61[7] = *&v48[112];
  v61[8] = *&v48[128];
  v61[2] = *&v48[32];
  v61[3] = *&v48[48];
  v61[4] = *&v48[64];
  v61[5] = *&v48[80];
  v60 = *&v48[144];
  v62 = *&v48[144];
  v61[0] = *v48;
  v61[1] = *&v48[16];
  sub_26460CCE8(&v51, v47, &qword_27FF76F78, &qword_26478C168);
  sub_26460CD50(v61, &qword_27FF76F78, &qword_26478C168);
  *(&v49[6] + 7) = v57;
  *(&v49[7] + 7) = v58;
  *(&v49[8] + 7) = v59;
  *(&v49[2] + 7) = v53;
  *(&v49[3] + 7) = v54;
  *(&v49[4] + 7) = v55;
  *(&v49[5] + 7) = v56;
  *(v49 + 7) = v51;
  *(&v49[9] + 7) = v60;
  *(&v49[1] + 7) = v52;
  v13 = v50;
  sub_264785514();
  sub_264784314();
  *&v47[113] = v49[6];
  *&v47[129] = v49[7];
  *&v47[145] = v49[8];
  *&v47[160] = *(&v49[8] + 15);
  *&v47[49] = v49[2];
  *&v47[65] = v49[3];
  *&v47[81] = v49[4];
  *&v47[97] = v49[5];
  *&v47[17] = v49[0];
  *v47 = v32;
  *&v47[8] = 0x4034000000000000;
  v47[16] = v13;
  *&v47[33] = v49[1];
  v47[288] = 0;
  v29 = v7;
  sub_2646A247C(v2, v7, type metadata accessor for LocationSearchResultRow);
  v14 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v15 = swift_allocObject();
  sub_2646A24F4(v7, v15 + v14, type metadata accessor for LocationSearchResultRow);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F80, &qword_26478C170);
  v17 = sub_2646A16FC();
  v18 = v34;
  sub_264784F14();

  memcpy(v48, v47, sizeof(v48));
  sub_26460CD50(v48, &qword_27FF76F80, &qword_26478C170);
  v19 = v38;
  sub_264784A94();
  *v47 = v16;
  *&v47[8] = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v35;
  v21 = v36;
  sub_264784FF4();
  (*(v40 + 8))(v19, v42);
  (*(v37 + 8))(v18, v21);
  v23 = v29;
  sub_2646A247C(v31, v29, type metadata accessor for LocationSearchResultRow);
  v24 = swift_allocObject();
  sub_2646A24F4(v23, v24 + v14, type metadata accessor for LocationSearchResultRow);
  v25 = v43;
  sub_2647849D4();
  *v47 = v21;
  *&v47[8] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v26 = v39;
  sub_264784FD4();

  (*(v44 + 8))(v25, v46);
  return (*(v41 + 8))(v22, v26);
}

uint64_t sub_26469DAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for LocationSearchResultRow(0) + 28));
  if ((v4 - 1) < 3)
  {
    sub_26469E3D4(v28);
    *&v26[16] = *v29;
    *&v26[25] = *&v29[9];
    v26[41] = 0;
    j__swift_retain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD8, &unk_26478C210);
    sub_2646A21E0();
    sub_264784874();
    v25 = v18;
    *v26 = v19;
LABEL_9:
    LOBYTE(v21[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD0, &qword_26478C208);
    sub_2646A215C();
    sub_264784874();
    sub_26460CD50(v28, &qword_27FF76FD8, &unk_26478C210);
    *&v26[27] = *&v24[27];
    *v26 = *v24;
    *&v26[16] = *&v24[16];
    v25 = v23;
    v30 = v23;
    v31 = *v24;
    v32[0] = *&v24[16];
    *(v32 + 11) = *&v26[27];
    *(v35 + 11) = *&v26[27];
    v34 = *v24;
    v35[0] = *&v24[16];
    v33 = v23;
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v4 == 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    sub_26469DF6C(v28);
    *&v26[16] = *v29;
    *&v26[25] = *&v29[9];
    v26[41] = 1;
    j__swift_retain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD8, &unk_26478C210);
    sub_2646A21E0();
    sub_264784874();
    v25 = v18;
    *v26 = v19;
    goto LABEL_9;
  }

  sub_26469DF6C(&v18);
  v23 = v18;
  *v24 = v19;
  *&v24[16] = v20[0];
  *&v24[25] = *(v20 + 9);
  LOBYTE(v28[0]) = 1;
  v24[42] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD0, &qword_26478C208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FD8, &unk_26478C210);
  sub_2646A215C();
  sub_2646A21E0();
  sub_264784874();
  v30 = v25;
  v31 = *v26;
  v32[0] = *&v26[16];
  *(v32 + 11) = *&v26[27];
  v33 = v25;
  v34 = *v26;
  v35[0] = *&v26[16];
  *(v35 + 11) = *&v26[27];
LABEL_10:
  sub_26460CCE8(&v33, &v25, &qword_27FF77000, &qword_26478C228);
  v6 = sub_264784724();
  LOBYTE(v25) = 0;
  sub_26469E83C(a1, &v18);
  *&v17[7] = v18;
  *&v17[23] = v19;
  *&v17[39] = v20[0];
  *&v17[55] = v20[1];
  v7 = v25;
  v21[0] = v30;
  v21[1] = v31;
  v22[0] = v32[0];
  *(v22 + 11) = *(v32 + 11);
  *&v16[11] = *(v32 + 11);
  v15 = v31;
  *v16 = v32[0];
  v14 = v30;
  *&v23 = v6;
  *(&v23 + 1) = 0x4000000000000000;
  v24[0] = v25;
  *&v24[1] = *v17;
  *&v24[64] = *(&v20[1] + 1);
  *&v24[49] = *&v17[48];
  *&v24[33] = *&v17[32];
  *&v24[17] = *&v17[16];
  sub_26460CCE8(v21, &v25, &qword_27FF77008, &unk_26478C230);
  sub_26460CCE8(&v23, &v25, &qword_27FF76830, &unk_26478AE00);
  sub_26460CD50(&v33, &qword_27FF77000, &qword_26478C228);
  v8 = *v24;
  v10 = *&v24[32];
  v9 = *&v24[48];
  v11 = *&v24[16];
  v12 = *&v24[64];
  *(a2 + 64) = v23;
  *(a2 + 80) = v8;
  *(a2 + 32) = *v16;
  *(a2 + 48) = *&v16[16];
  *(a2 + 144) = v12;
  *(a2 + 96) = v11;
  *(a2 + 112) = v10;
  *(a2 + 128) = v9;
  *a2 = v14;
  *(a2 + 16) = v15;
  *&v25 = v6;
  *(&v25 + 1) = 0x4000000000000000;
  v26[0] = v7;
  *&v26[17] = *&v17[16];
  *&v26[33] = *&v17[32];
  *v27 = *&v17[48];
  *&v27[15] = *&v17[63];
  *&v26[1] = *v17;
  sub_26460CD50(&v25, &qword_27FF76830, &unk_26478AE00);
  v28[0] = v30;
  v28[1] = v31;
  *v29 = v32[0];
  *&v29[11] = *(v32 + 11);
  return sub_26460CD50(v28, &qword_27FF77000, &qword_26478C228);
}

double sub_26469DF6C@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_264785284();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [objc_opt_self() mainScreen];
  v8 = [v7 traitCollection];

  [v8 displayScale];
  v10 = v9;

  v11 = v1 + *(type metadata accessor for LocationSearchResultRow(0) + 24);
  v12 = *(v11 + 8);
  v13 = v12;
  if (!v12)
  {
    v13 = [*v11 mapItem];
  }

  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 imageForMapItem:v13 size:2 forScale:6 format:0 fallbackToBundleIcon:v10];

  if (v16)
  {
    v17 = v16;
    sub_264785254();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v18 = sub_2647852C4();

    (*(v4 + 8))(v6, v3);
    sub_264785504();
    sub_2647840A4();
    v25 = v33;
    v23 = v35;
    v21[8] = 0;
    *&v29 = v18;
    *(&v29 + 1) = v32;
    LOBYTE(v30) = v33;
    *(&v30 + 1) = *v24;
    DWORD1(v30) = *&v24[3];
    *(&v30 + 1) = v34;
    v31[0] = v35;
    *&v31[1] = *v22;
    *&v31[4] = *&v22[3];
    *&v31[8] = v36;
    v31[24] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
    sub_264690D34();
    sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
    sub_264784874();

    v29 = v26;
    v30 = v27;
    *v31 = *v28;
    *&v31[9] = *&v28[9];
  }

  else
  {
    sub_2646A0878(&v29);
    LOBYTE(v32) = 1;
    v26 = v29;
    v27 = v30;
    *v28 = *v31;
    *&v28[16] = *&v31[16];
    v28[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
    sub_264690D34();
    sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
    sub_264784874();
  }

  v19 = v30;
  *a1 = v29;
  a1[1] = v19;
  a1[2] = *v31;
  result = *&v31[9];
  *(a1 + 41) = *&v31[9];
  return result;
}

void sub_26469E3D4(_OWORD *a1@<X8>)
{
  v3 = sub_264785284();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [objc_opt_self() mainScreen];
  v8 = [v7 traitCollection];

  [v8 displayScale];
  v10 = v9;

  v11 = [objc_allocWithZone(MEMORY[0x277D0EB18]) init];
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for LocationSearchResultRow(0);
    v14 = sub_264691340(*(v1 + *(v13 + 28)));

    v15 = [objc_opt_self() imageForStyle:v14 size:2 forScale:6 format:0 nightMode:v10];
    if (v15)
    {
      v16 = v15;
      sub_264785254();
      (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
      v17 = sub_2647852C4();

      (*(v4 + 8))(v6, v3);
      sub_264785504();
      sub_2647840A4();
      v23 = v31;
      v21 = v33;
      v19[8] = 0;
      *&v27 = v17;
      *(&v27 + 1) = v30;
      LOBYTE(v28) = v31;
      *(&v28 + 1) = *v22;
      DWORD1(v28) = *&v22[3];
      *(&v28 + 1) = v32;
      v29[0] = v33;
      *&v29[1] = *v20;
      *&v29[4] = *&v20[3];
      *&v29[8] = v34;
      v29[24] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
      sub_264690D34();
      sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
      sub_264784874();
    }

    else
    {
      sub_2646A0878(&v27);
      LOBYTE(v30) = 1;
      v29[24] = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76FF8, &qword_26478C220);
      sub_264690D34();
      sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
      sub_264784874();
    }

    v27 = v24;
    v28 = v25;
    *v29 = v26[0];
    *&v29[9] = *(v26 + 9);
    v18 = v25;
    *a1 = v24;
    a1[1] = v18;
    a1[2] = *v29;
    *(a1 + 41) = *&v29[9];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26469E83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77010, &unk_26478C240);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v55 = sub_26469EB88();
  *&v56 = v7;
  sub_264613FC4();
  v8 = sub_264784E44();
  v10 = v9;
  v12 = v11;
  v13 = sub_264784E14();
  v53 = v14;
  v54 = v13;
  v52 = v15;
  v17 = v16;
  sub_26460ECC4(v8, v10, v12 & 1);

  v18 = a1 + *(type metadata accessor for LocationSearchResultRow(0) + 24);
  v20 = *(v18 + 24);
  v55 = *v18;
  v19 = v55;
  v56 = *(v18 + 8);
  v57 = v20;
  v21 = v56;

  v22 = v19;
  _s15SafetyMonitorUI0aB11UIUtilitiesC18shortAddressFormat3forSSSgAA31LocationSearchRowCompletionItemVSg_tFZ_0(&v55);
  v24 = v23;
  v26 = v25;
  sub_2646A2318(v55, v56, *(&v56 + 1), v57);
  if (v26)
  {
    v55 = v24;
    *&v56 = v26;
    v27 = sub_264784E44();
    v29 = v28;
    v31 = v30;
    v32 = sub_264784CE4();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    sub_264784D24();
    sub_26460CD50(v6, &qword_27FF77010, &unk_26478C240);
    v33 = sub_264784E24();
    v35 = v34;
    v51 = v17;
    v37 = v36;

    sub_26460ECC4(v27, v29, v31 & 1);

    sub_264785214();
    v38 = sub_264784DE4();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = v37 & 1;
    v17 = v51;
    sub_26460ECC4(v33, v35, v45);

    v26 = v42 & 1;
    sub_26460C474(v38, v40, v42 & 1);
  }

  else
  {
    v38 = 0;
    v40 = 0;
    v44 = 0;
  }

  v46 = v52 & 1;
  v48 = v53;
  v47 = v54;
  sub_26460C474(v54, v53, v52 & 1);

  sub_26466D538(v38, v40, v26, v44);
  sub_26466D57C(v38, v40, v26, v44);
  LOBYTE(v55) = v46;
  *a2 = v47;
  *(a2 + 8) = v48;
  *(a2 + 16) = v46;
  *(a2 + 24) = v17;
  *(a2 + 32) = v38;
  *(a2 + 40) = v40;
  *(a2 + 48) = v26;
  *(a2 + 56) = v44;
  sub_26466D57C(v38, v40, v26, v44);
  sub_26460ECC4(v47, v48, v46);
}

uint64_t sub_26469EB88()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationSearchResultRow(0);
  v6 = *(v0 + *(v5 + 28));
  switch(v6)
  {
    case 3:
      if (qword_27FF75098 != -1)
      {
        swift_once();
      }

      v7 = &qword_27FF78CF0;
      goto LABEL_13;
    case 2:
      if (qword_27FF75090 != -1)
      {
        swift_once();
      }

      v7 = &qword_27FF78CE0;
      goto LABEL_13;
    case 1:
      if (qword_27FF75088 != -1)
      {
        swift_once();
      }

      v7 = &qword_27FF78CD0;
LABEL_13:
      v8 = *v7;
      goto LABEL_14;
  }

  v10 = v0 + *(v5 + 24);
  v8 = *(v10 + 16);
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 24) == 0xE000000000000000;
  }

  if (v11 || (sub_264785E84() & 1) != 0)
  {
    sub_264783DF4();
    v12 = sub_264783E14();
    v13 = sub_2647859D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_264605000, v12, v13, "#Initiator, LocationSearchResultRow, destinationDisplayName empty", v14, 2u);
      MEMORY[0x266740650](v14, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

LABEL_14:

  return v8;
}

void sub_26469EDF0()
{
  v1 = sub_264783E24();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v46 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_264785594();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2647855C4();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationSearchResultRow(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = sub_2647855A4();
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v9 + 32);
  v47 = v0;
  v17 = (v0 + v16);
  v18 = *(v0 + v16 + 8);
  if (v18)
  {
    v46 = v18;
    sub_26469F424(v46);
    v19 = v46;
  }

  else
  {
    v37 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v7;
    v39 = v4;
    v40 = v5;
    v20 = *v17;
    if (*v17)
    {
      v21 = v13;
      v22 = objc_allocWithZone(MEMORY[0x277CD4E38]);
      v46 = v20;
      v23 = [v22 initWithCompletion_];
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      (*(v21 + 104))(v15, *MEMORY[0x277D851B8], v12);
      v24 = sub_264785A64();
      (*(v21 + 8))(v15, v12);
      v25 = v37;
      sub_2646A247C(v47, v37, type metadata accessor for LocationSearchResultRow);
      v26 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v23;
      sub_2646A24F4(v25, v27 + v26, type metadata accessor for LocationSearchResultRow);
      aBlock[4] = sub_2646A1B58;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_7;
      v28 = _Block_copy(aBlock);
      v29 = v23;
      v30 = v38;
      sub_2647855B4();
      v48 = MEMORY[0x277D84F90];
      sub_264695EA8(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
      v31 = v39;
      v32 = v43;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v30, v31, v28);
      _Block_release(v28);

      (*(v45 + 8))(v31, v32);
      (*(v44 + 8))(v30, v40);
    }

    else
    {
      v33 = v46;
      sub_264783DF4();
      v34 = sub_264783E14();
      v35 = sub_2647859E4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_264605000, v34, v35, "#Initiator, LocationSearchResultRow, setLocationAction mklocalsearch response no MKMapItem or searchCompletion", v36, 2u);
        MEMORY[0x266740650](v36, -1, -1);
      }

      (*(v41 + 8))(v33, v42);
    }
  }
}

uint64_t sub_26469F424(void *a1)
{
  v3 = sub_264785594();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647855C4();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationSearchResultRow(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v12 = sub_264785A44();
  sub_2646A247C(v1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSearchResultRow);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_2646A24F4(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LocationSearchResultRow);
  *(v14 + ((v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_2646A1D2C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_63;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_264695EA8(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v8, v5, v15);
  _Block_release(v15);

  (*(v21 + 8))(v5, v3);
  return (*(v19 + 8))(v8, v20);
}

uint64_t sub_26469F7D8(uint64_t a1, id a2)
{
  v5 = sub_2647846F4();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x28223BE20](v5);
  v91 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationSearchResultRow(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v88 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - v13;
  v15 = v7[5];
  v94 = a1;
  v16 = *(a1 + v15 + 8);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_264783ED4(v95);

  v18 = v95[0];
  v19 = v95[0] >> 62;
  v87 = v9;
  if (v95[0] < 0 || (v95[0] & 0x4000000000000000) != 0 || (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) == 0)
  {
    if (v19)
    {
      v78 = sub_264785C14();
      v79 = sub_264785C14();
      if (v79 < 0)
      {
        goto LABEL_59;
      }

      v80 = sub_264785C14();
      if (v78 < 0 || (v22 = v78, v80 < v78))
      {
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v21 = sub_2646A1E4C(0, v22);

    goto LABEL_10;
  }

  if (v19)
  {
    goto LABEL_55;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v79)
  {
    sub_2646A2380(0, i, &qword_27FF76FC8, 0x277CD4E80);
    v21 = v95[0];
LABEL_10:
    swift_getKeyPath();
    v2 = &unk_26478C188;
    swift_getKeyPath();
    v96 = v21;
    v23 = v16;
    sub_264783EE4();
    sub_2646CA060();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v95);

    v24 = a2;
    MEMORY[0x26673F500]();
    if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_264785814();
    }

    sub_264785844();
    v25 = v95[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v96 = v25;
    v26 = v23;
    sub_264783EE4();
    sub_2646CA060();
    v27 = v94;
    v16 = *(v94 + v7[7]);
    swift_getKeyPath();
    swift_getKeyPath();
    v95[0] = v16;
    a2 = v26;
    sub_264783EE4();
    LOBYTE(v27) = *(v27 + v7[8]);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v95[0]) = v27;
    sub_264783EE4();
    swift_getKeyPath();
    v9 = swift_getKeyPath();
    sub_264783ED4(v95);

    v18 = v95[0];
    if (v95[0] >> 62)
    {
      if (!sub_264785C14())
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    else if (!*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
LABEL_48:
      v28 = MEMORY[0x26673FA30](0, v18);
    }

    else
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v28 = *(v18 + 32);
    }

    v2 = v28;

    v29 = [v2 placemark];
    v30 = [v29 location];

    if (!v30)
    {

      goto LABEL_43;
    }

    v84 = v16;
    sub_264783DF4();
    v31 = v30;
    v32 = sub_264783E14();
    v33 = sub_2647859F4();

    v34 = os_log_type_enabled(v32, v33);
    v86 = v31;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v85 = v2;
      v37 = v36;
      v95[0] = v36;
      *v35 = 136642819;
      v38 = [v31 debugDescription];
      v39 = sub_264785724();
      v41 = v40;

      v42 = sub_2646DF234(v39, v41, v95);

      *(v35 + 4) = v42;
      v31 = v86;
      _os_log_impl(&dword_264605000, v32, v33, "#Initiator, LocationSearchResultRow, setting Annotation: %{sensitive}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v43 = v37;
      v2 = v85;
      MEMORY[0x266740650](v43, -1, -1);
      MEMORY[0x266740650](v35, -1, -1);
    }

    v16 = *(v89 + 8);
    (v16)(v14, v90);
    v9 = v87;
    v14 = swift_getKeyPath();
    swift_getKeyPath();
    KeyPath = sub_264783EC4();
    v45 = v44;
    v46 = *v44;
    v85 = v16;
    if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
    {
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v46 = *v45;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }
    }

    if (!(v46 >> 62))
    {
      v49 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_28:
      *v45 = sub_2646A1E4C(0, v49);

      goto LABEL_29;
    }

    v83 = sub_264785C14();
    v79 = sub_264785C14();
    if (v79 < 0)
    {
      goto LABEL_60;
    }

    v81 = sub_264785C14();
    v49 = v83;
    v31 = v86;
    if ((v83 & 0x8000000000000000) == 0 && v81 >= v83)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_55:
    v79 = sub_264785C14();
    if (v79 < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

LABEL_61:
    ;
  }

  if (!(v46 >> 62))
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_57:
  v79 = sub_264785C14();
  if (v79 < 0)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v48 = v79;
  v31 = v86;
LABEL_25:
  sub_2646A2380(0, v48, &qword_27FF76FC0, 0x277CD4F08);
LABEL_29:
  KeyPath(v95, 0);

  sub_2646CFDA4(v2, v84);
  v51 = v50;
  v53 = v52;
  v54 = [objc_allocWithZone(MEMORY[0x277CD4F08]) init];
  [v31 coordinate];
  [v54 setCoordinate_];
  v55 = v54;
  if (v51)
  {

    v56 = sub_264785714();
  }

  else
  {
    v56 = 0;
  }

  [v54 setTitle_];

  if (v53)
  {
    v57 = sub_264785714();
  }

  else
  {
    v57 = 0;
  }

  [v54 setSubtitle_];

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v54;
  a2 = sub_264783EC4();
  v59 = v58;
  MEMORY[0x26673F500]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_50:
    sub_264785814();
  }

  sub_264785844();
  (a2)(v95, 0);

  v60 = v88;
  sub_264783DF4();
  sub_2646A247C(v94, v9, type metadata accessor for LocationSearchResultRow);
  v61 = sub_264783E14();
  v62 = sub_2647859F4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v95[0] = v64;
    *v63 = 136642819;
    swift_getKeyPath();
    v65 = v2;
    v66 = v9;
    swift_getKeyPath();
    sub_264783ED4(&v96);

    v67 = v96;
    v68 = sub_264659B70(0, &qword_27FF76FC0, 0x277CD4F08);
    v69 = MEMORY[0x26673F550](v67, v68);
    v71 = v70;

    sub_2646A1F74(v66);
    v72 = sub_2646DF234(v69, v71, v95);

    *(v63 + 4) = v72;
    _os_log_impl(&dword_264605000, v61, v62, "#Initiator, LocationSearchResultRow, set Annotations: %{sensitive}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x266740650](v64, -1, -1);
    MEMORY[0x266740650](v63, -1, -1);

    v73 = v88;
  }

  else
  {

    sub_2646A1F74(v9);
    v73 = v60;
  }

  v85(v73, v90);
LABEL_43:
  v75 = v92;
  v74 = v93;
  v76 = v91;
  sub_26469D1C4(v91);
  sub_2647846E4();
  return (*(v75 + 8))(v76, v74);
}

void sub_2646A0398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationSearchResultRow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = [objc_allocWithZone(MEMORY[0x277CD4E20]) initWithRequest_];
  sub_2646A247C(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LocationSearchResultRow);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2646A24F4(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LocationSearchResultRow);
  aBlock[4] = sub_2646A20DC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26464CCBC;
  aBlock[3] = &block_descriptor_77;
  v10 = _Block_copy(aBlock);

  [v7 startWithCompletionHandler_];
  _Block_release(v10);
}

void sub_2646A0548(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    sub_264783DF4();
    v15 = a2;
    v16 = sub_264783E14();
    v17 = sub_2647859D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      if (a2)
      {
        v20 = a2;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *(v18 + 4) = v21;
      *v19 = v22;
      _os_log_impl(&dword_264605000, v16, v17, "#Initiator, LocationSearchResultRow, setLocationAction mklocalsearch response nil error:%@", v18, 0xCu);
      sub_26460CD50(v19, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v19, -1, -1);
      MEMORY[0x266740650](v18, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v23 = *(a3 + *(type metadata accessor for LocationSearchResultRow(0) + 24));
    if (v23)
    {
      v24 = [v23 mapItem];
      if (v24)
      {
        v25 = v24;
        sub_26469F424(v24);
      }
    }

    return;
  }

  v11 = [v8 mapItems];
  sub_264659B70(0, &qword_27FF76FC8, 0x277CD4E80);
  v12 = sub_2647857F4();

  if (v12 >> 62)
  {
    if (sub_264785C14())
    {
      goto LABEL_4;
    }

LABEL_20:

    return;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x26673FA30](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v27 = v13;

  sub_26469F424(v27);
  v14 = v27;
}

void sub_2646A0878(uint64_t a1@<X8>)
{
  v2 = sub_264785284();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() mainScreen];
  v7 = [v6 traitCollection];

  [v7 displayScale];
  v9 = v8;

  v10 = objc_opt_self();
  v11 = [objc_opt_self() addressMarkerStyleAttributes];
  v12 = [v10 imageForStyle:v11 size:2 forScale:6 format:0 nightMode:v9];

  if (v12)
  {
    v13 = v12;
    sub_264785254();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v12 = sub_2647852C4();

    (*(v3 + 8))(v5, v2);
    sub_264785504();
    sub_2647840A4();
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    v19 = v24;

    v18 = v19;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
}

uint64_t sub_2646A0B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_2646A0C54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_2646A0D74(uint64_t a1)
{
  sub_2646A163C(319, &qword_27FF76F30, MEMORY[0x277CDF4A0]);
  if (v1 <= 0x3F)
  {
    sub_2646A0EAC(319, &qword_27FF761A8, MEMORY[0x277CDD848]);
    if (v2 <= 0x3F)
    {
      sub_2646A0EAC(319, &qword_27FF76F38, MEMORY[0x277CDDEE8]);
      if (v3 <= 0x3F)
      {
        sub_2646A0F00(319);
        if (v4 <= 0x3F)
        {
          sub_2646A0F94(319);
          if (v5 <= 0x3F)
          {
            sub_2646A1028();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2646A0EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2646A0F00(uint64_t a1)
{
  if (!qword_27FF76F40)
  {
    type metadata accessor for SessionViewModel(255);
    sub_264695EA8(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    v1 = sub_2647841A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF76F40);
    }
  }
}

void sub_2646A0F94(uint64_t a1)
{
  if (!qword_27FF76F48)
  {
    type metadata accessor for UserSessionConfiguration(255);
    sub_264695EA8(&qword_27FF75F58, type metadata accessor for UserSessionConfiguration, &protocol conformance descriptor for UserSessionConfiguration);
    v1 = sub_2647841A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF76F48);
    }
  }
}

void sub_2646A1028()
{
  if (!qword_27FF761C0)
  {
    v0 = sub_264785324();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF761C0);
    }
  }
}

uint64_t sub_2646A1078()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EB8, &qword_26478BF18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76378, &unk_264789F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75FF8, &qword_264789B68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EB0, &qword_26478BF10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EE8, &qword_26478C048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EA8, &qword_26478BF08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76EA0, &qword_26478BF00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E98, &qword_26478BEF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E90, &qword_26478BEF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76ED8, &qword_26478C018);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76E88, &qword_26478BEE8);
  sub_2646975D8();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76EE0, &qword_27FF76ED8, &qword_26478C018, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  sub_264613FC4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_26469A614();
  swift_getOpaqueTypeConformance2();
  sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
  sub_2646A2298(&qword_27FF76048, &qword_27FF75FF8, &qword_264789B68, sub_26465D250);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2646A13B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
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

uint64_t sub_2646A1490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76F18, &qword_26478C0C8);
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

void sub_2646A1558(uint64_t a1)
{
  sub_2646A0EAC(319, &qword_27FF76F38, MEMORY[0x277CDDEE8]);
  if (v1 <= 0x3F)
  {
    sub_2646A163C(319, &qword_27FF76F60, MEMORY[0x277CDF860]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SMSessionDestinationType(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2646A163C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LocationSearchViewModel(255);
    v7 = sub_264695EA8(&qword_27FF76EC0, type metadata accessor for LocationSearchViewModel, &protocol conformance descriptor for LocationSearchViewModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2646A16FC()
{
  result = qword_27FF76F88;
  if (!qword_27FF76F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F80, &qword_26478C170);
    sub_2646A17B4();
    sub_26460CDF0(&qword_27FF76FB0, &qword_27FF76FB8, &qword_26478FD10, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76F88);
  }

  return result;
}

unint64_t sub_2646A17B4()
{
  result = qword_27FF76F90;
  if (!qword_27FF76F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F98, &qword_26478C178);
    sub_26460CDF0(&qword_27FF76FA0, &qword_27FF76FA8, &qword_26478C180, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76F90);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for LocationSearchResultRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2647846F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v5 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646A1A0C()
{
  v1 = type metadata accessor for LocationSearchResultRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2647846F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v5 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2646A1B58()
{
  v1 = *(type metadata accessor for LocationSearchResultRow(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2646A0398(v2, v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646A1BD4()
{
  v1 = type metadata accessor for LocationSearchResultRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2647846F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = (v5 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_2646A1D2C()
{
  v1 = *(type metadata accessor for LocationSearchResultRow(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26469F7D8(v0 + v2, v3);
}

void *sub_2646A1DBC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77020, &qword_26478FE70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_2646A1E4C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_2646A1ED4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_264785C14();
LABEL_9:
  result = sub_264785D14();
  *v2 = result;
  return result;
}

uint64_t sub_2646A1F74(uint64_t a1)
{
  v2 = type metadata accessor for LocationSearchResultRow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646A1FD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_264659B70(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_264785C14();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_264785C14();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_2646A20DC(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for LocationSearchResultRow(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2646A0548(a1, a2, v6);
}

unint64_t sub_2646A215C()
{
  result = qword_27FF76FE0;
  if (!qword_27FF76FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76FD0, &qword_26478C208);
    sub_2646A21E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76FE0);
  }

  return result;
}

unint64_t sub_2646A21E0()
{
  result = qword_27FF76FE8;
  if (!qword_27FF76FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76FD8, &unk_26478C210);
    sub_264690D34();
    sub_2646A2298(&qword_27FF76FF0, &qword_27FF76FF8, &qword_26478C220, sub_264690D34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF76FE8);
  }

  return result;
}

uint64_t sub_2646A2298(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2646A2318(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t sub_2646A2380(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_264785C14();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_264785C14();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_2646A1ED4(result, 1);
    return sub_2646A1FD0(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2646A247C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646A24E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_2646A24F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646A255C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for LocationSelectionView(0);

  return sub_26469A7C8(a1, a2);
}

unint64_t sub_2646A25E4()
{
  result = qword_27FF77080;
  if (!qword_27FF77080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77078, &unk_26478C3B0);
    sub_2646647A8();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77080);
  }

  return result;
}

unint64_t sub_2646A269C()
{
  result = qword_27FF77090;
  if (!qword_27FF77090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77088, &qword_26478C3C0);
    sub_2646A2754();
    sub_26460CDF0(&qword_27FF76B98, &qword_27FF76BA0, &qword_264791250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77090);
  }

  return result;
}

unint64_t sub_2646A2754()
{
  result = qword_27FF77098;
  if (!qword_27FF77098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF770A0, &qword_26478C3C8);
    sub_2646A280C();
    sub_26460CDF0(&qword_27FF76358, &qword_27FF76360, &qword_264789F50, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77098);
  }

  return result;
}

unint64_t sub_2646A280C()
{
  result = qword_27FF770A8;
  if (!qword_27FF770A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF770B0, &qword_26478C3D0);
    sub_26460CDF0(&qword_27FF770B8, &qword_27FF770C0, &unk_26478C3D8, MEMORY[0x277CDF028]);
    sub_264695EA8(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF770A8);
  }

  return result;
}

unint64_t sub_2646A28FC()
{
  result = qword_27FF770E0;
  if (!qword_27FF770E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF770D8, &qword_26478C3E8);
    sub_26460CDF0(&qword_27FF770E8, &qword_27FF770F0, &qword_26478C3F0, MEMORY[0x277CE14C0]);
    sub_2646A29C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF770E0);
  }

  return result;
}

unint64_t sub_2646A29C0()
{
  result = qword_27FF770F8;
  if (!qword_27FF770F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77100, &qword_26478C3F8);
    sub_2646A2A78();
    sub_26460CDF0(&qword_27FF77138, &qword_27FF76C20, &qword_26478B740, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF770F8);
  }

  return result;
}

unint64_t sub_2646A2A78()
{
  result = qword_27FF77108;
  if (!qword_27FF77108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77110, &qword_26478C400);
    sub_26460CDF0(&qword_27FF77118, &qword_27FF77120, &qword_26478C408, MEMORY[0x277CE1138]);
    sub_26460CDF0(&qword_27FF77128, &qword_27FF77130, &unk_26478C410, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77108);
  }

  return result;
}

uint64_t objectdestroy_99Tm()
{
  v1 = type metadata accessor for LocationSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_2646A24E4(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2647840D4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76E78, &qword_26478E520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2647846F4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

unint64_t sub_2646A2D84()
{
  result = qword_27FF77158;
  if (!qword_27FF77158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77148, &qword_26478C4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76378, &unk_264789F90);
    sub_264784B04();
    sub_26460CDF0(&qword_27FF76C08, &qword_27FF76378, &unk_264789F90, MEMORY[0x277CDF028]);
    sub_264695EA8(&qword_27FF76C18, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77158);
  }

  return result;
}

unint64_t sub_2646A2F44()
{
  result = qword_27FF771A0;
  if (!qword_27FF771A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF771A0);
  }

  return result;
}

unint64_t sub_2646A2F98()
{
  result = qword_27FF771B8;
  if (!qword_27FF771B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77190, &qword_26478C4F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77188, &qword_26478C4F0);
    sub_264784214();
    sub_26460CDF0(&qword_27FF771B0, &qword_27FF77188, &qword_26478C4F0, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF77138, &qword_27FF76C20, &qword_26478B740, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF771B8);
  }

  return result;
}

uint64_t sub_2646A3110(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LocationSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2646A31A0()
{
  result = qword_27FF771F8;
  if (!qword_27FF771F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77200, &qword_26478C678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F68, &qword_26478C158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF76F80, &qword_26478C170);
    sub_2646A16FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_264695EA8(&qword_27FF76008, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF771F8);
  }

  return result;
}

uint64_t InitiatorConfigurationView.customTint.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t InitiatorConfigurationView.init(sessionViewModel:handlerManager:customTint:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v19[0]) = 0;
  sub_2647852E4();
  v7 = v20;
  v8 = v21;
  type metadata accessor for SessionViewModel(0);
  sub_2646A5414(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);

  v9 = sub_264784174();
  v11 = v10;
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  if (*(v11 + v12))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_264783ED4(v19);

    v13 = v19[0];
    if (v19[0] && (v14 = [v19[0] sessionState], v13, v14 == 11))
    {
      if (a2)
      {
        swift_beginAccess();
        v16 = *(a2 + 32);
        v15 = *(a2 + 40);
        sub_264611394(v16, v15);

        if (v16)
        {
          v16(v17);
          sub_26460C9A0(v16, v15);
        }
      }
    }

    else
    {
    }
  }

  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = a3;
  *(a4 + 40) = a2;
  *(a4 + 48) = "SMPhonePlatterStaging";
  *(a4 + 56) = 21;
  *(a4 + 64) = 2;
  return result;
}

uint64_t InitiatorConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v55 = type metadata accessor for CheckInView(0);
  MEMORY[0x28223BE20](v55);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77208, &qword_26478C6C8);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77210, &qword_26478C6D0);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v54 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77218, &qword_26478C6D8);
  MEMORY[0x28223BE20](v59);
  v60 = &v54 - v9;
  v10 = v1[1];
  v11 = v1[3];
  v73 = v1[2];
  v74 = v11;
  v12 = v1[1];
  v71 = *v1;
  v72 = v12;
  v13 = v1[3];
  v69[2] = v73;
  v69[3] = v13;
  v75 = *(v1 + 64);
  v70 = *(v1 + 64);
  v69[0] = v71;
  v69[1] = v10;
  sub_2646A3DEC(v66);
  v63[0] = v66[0];
  v63[1] = v66[1];
  v63[2] = v66[2];
  v65 = v68;
  v64 = v67;
  v14 = swift_allocObject();
  v15 = v74;
  *(v14 + 48) = v73;
  *(v14 + 64) = v15;
  *(v14 + 80) = v75;
  v16 = v72;
  *(v14 + 16) = v71;
  *(v14 + 32) = v16;
  sub_2646A505C(&v71, v62);
  CheckInView.init(state:edgeInsets:buttonAction:)(v63, sub_2646A5004, v14, v3, 0.0, 0.0, 0.0, 0.0);
  v62[0] = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF762E0, &qword_26478C6E0);
  sub_264785314();
  v17 = swift_allocObject();
  v18 = v74;
  *(v17 + 48) = v73;
  *(v17 + 64) = v18;
  *(v17 + 80) = v75;
  v19 = v72;
  *(v17 + 16) = v71;
  *(v17 + 32) = v19;
  sub_2646A505C(&v71, v69);
  type metadata accessor for InitiatorConfigurationSheet(0);
  sub_2646A5414(&qword_27FF75440, type metadata accessor for CheckInView, &protocol conformance descriptor for CheckInView);
  sub_2646A5414(&qword_27FF77220, type metadata accessor for InitiatorConfigurationSheet, &unk_264789D98);
  sub_2647850B4();

  v20 = v4;

  sub_2646A509C(v3);
  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77228, &qword_26478C6E8);
  sub_264785A94();

  v24 = swift_allocObject();
  v25 = v74;
  *(v24 + 48) = v73;
  *(v24 + 64) = v25;
  *(v24 + 80) = v75;
  v26 = v72;
  *(v24 + 16) = v71;
  *(v24 + 32) = v26;
  v27 = &v6[*(v23 + 56)];
  *v27 = sub_2646A50F8;
  v27[1] = v24;
  sub_2646A505C(&v71, v69);
  v28 = [v21 defaultCenter];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77230, &qword_26478C6F0);
  sub_264785A94();

  v30 = swift_allocObject();
  v31 = v74;
  *(v30 + 48) = v73;
  *(v30 + 64) = v31;
  *(v30 + 80) = v75;
  v32 = v72;
  *(v30 + 16) = v71;
  *(v30 + 32) = v32;
  v33 = &v6[*(v29 + 56)];
  *v33 = sub_2646A5100;
  v33[1] = v30;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77238, &qword_26478C6F8) + 36)] = 256;
  v34 = swift_allocObject();
  v35 = v74;
  *(v34 + 48) = v73;
  *(v34 + 64) = v35;
  *(v34 + 80) = v75;
  v37 = v71;
  v36 = v72;
  *(v34 + 16) = v71;
  *(v34 + 32) = v36;
  v38 = &v6[*(v20 + 36)];
  *v38 = sub_2646A495C;
  *(v38 + 1) = 0;
  *(v38 + 2) = sub_2646A5108;
  *(v38 + 3) = v34;
  v62[0] = v37;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2646A505C(&v71, v69);
  sub_2646A505C(&v71, v69);
  sub_2646A5110(v62, v69);
  sub_264783ED4(v69);
  sub_2646A5180(v62);

  v39 = *&v69[0];
  if (*&v69[0])
  {
    v40 = [*&v69[0] sessionState];
  }

  else
  {
    v40 = 0;
  }

  *&v66[0] = v40;
  BYTE8(v66[0]) = v39 == 0;
  v41 = swift_allocObject();
  v42 = v74;
  *(v41 + 48) = v73;
  *(v41 + 64) = v42;
  *(v41 + 80) = v75;
  v43 = v72;
  *(v41 + 16) = v71;
  *(v41 + 32) = v43;
  sub_2646A505C(&v71, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77248, &qword_26478C708);
  sub_2646A51F0();
  sub_2646A5360();
  v44 = v56;
  sub_2647850F4();

  sub_26460CD50(v6, &qword_27FF77208, &qword_26478C6C8);
  v45 = swift_allocObject();
  v46 = v74;
  *(v45 + 48) = v73;
  *(v45 + 64) = v46;
  *(v45 + 80) = v75;
  v47 = v72;
  *(v45 + 16) = v71;
  *(v45 + 32) = v47;
  v48 = v60;
  (*(v57 + 32))(v60, v44, v58);
  v49 = (v48 + *(v59 + 36));
  *v49 = sub_2646A545C;
  v49[1] = v45;
  v49[2] = 0;
  v49[3] = 0;
  sub_2646A505C(&v71, v69);
  sub_2646A5110(v62, v69);
  LOBYTE(v45) = SessionViewModel.isInitiatorLoading.getter();
  sub_2646A5180(v62);
  LOBYTE(v66[0]) = v45 & 1;
  v50 = swift_allocObject();
  v51 = v74;
  *(v50 + 48) = v73;
  *(v50 + 64) = v51;
  *(v50 + 80) = v75;
  v52 = v72;
  *(v50 + 16) = v71;
  *(v50 + 32) = v52;
  sub_2646A505C(&v71, v69);
  sub_2646A54BC();
  sub_2647850F4();

  return sub_26460CD50(v48, &qword_27FF77218, &qword_26478C6D8);
}

double sub_2646A3DEC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_264783E24();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264783C74();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  v8 = SessionViewModel.isInitiatorLoading.getter();

  if (v8)
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 50) = -64;
    *(a1 + 48) = 0;
    return result;
  }

  SessionViewModel.sendStartMessageValidity.getter(v7);

  v10 = SessionViewModel.isReadyToConfigure.getter();

  if (v10 & 1) != 0 || (sub_264783C64())
  {

    v43 = sub_264668BD8(v11);
    v13 = v12;

    v44 = v13;
    if (!v13)
    {
      v42 = v5;
      sub_264783DF4();

      v14 = sub_264783E14();
      v15 = sub_2647859D4();

      v41 = v15;
      v16 = v15;
      v17 = v14;
      if (os_log_type_enabled(v14, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v47 = v19;
        *v18 = 136315394;
        *(v18 + 4) = sub_2646DF234(7104878, 0xE300000000000000, &v47);
        *(v18 + 12) = 2080;
        v20 = objc_opt_self();
        v40 = v17;
        v21 = [v20 sessionTypeToString_];
        v22 = sub_264785724();
        v24 = v23;

        v25 = sub_2646DF234(v22, v24, &v47);

        *(v18 + 14) = v25;
        v17 = v40;
        _os_log_impl(&dword_264605000, v40, v41, "#Initiator,InitiatorConfigurationView,checkInStateView - sessionTimeString %s, sessionType %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v19, -1, -1);
        MEMORY[0x266740650](v18, -1, -1);
      }

      (*(v45 + 8))(v4, v2);
      v5 = v42;
    }

    v26 = SessionViewModel.sessionType.getter();

    if (v26 == 4)
    {

      v49 = 0;
      started = _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutStartString8userTypeSSAA04UserJ0O_tFZ_0(&v49);
      v35 = v34;
      (*(v46 + 8))(v7, v5);
      *a1 = started;
      *(a1 + 8) = v35;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      goto LABEL_21;
    }

    v27 = v44;
    if (v26 == 2)
    {
      if (v44)
      {

        v28 = sub_26466856C(v31);
        v30 = v32;

        if (!v30)
        {
          if (qword_27FF750A8 != -1)
          {
            swift_once();
          }

          v28 = qword_27FF78D08;
          v30 = qword_27FF78D10;
        }

        goto LABEL_19;
      }
    }

    else if (v26 == 1)
    {
      if (v44)
      {
        v48 = 0;
        v28 = _s15SafetyMonitorUI0aB11UIUtilitiesC11timerString8userTypeSSAA04UserH0O_tFZ_0(&v48);
        v30 = v29;
LABEL_19:
        (*(v46 + 8))(v7, v5);
        *a1 = v28;
        *(a1 + 8) = v30;
        *(a1 + 16) = v43;
        *(a1 + 24) = v27;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
LABEL_21:
        *(a1 + 50) = 33;
        *(a1 + 48) = 256;
        return result;
      }
    }

    else
    {
    }
  }

  v36 = sub_264783C24();
  v38 = v37;
  (*(v46 + 8))(v7, v5);
  *a1 = v36;
  *(a1 + 8) = v38;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 47) = 0;
  return result;
}

uint64_t sub_2646A431C@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = *a1;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 4);
  sub_2646A5110(&v7, &v6);

  return sub_26465DF00(v3, v4, a2);
}

uint64_t sub_2646A4380(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_264783E24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v10 = sub_264783E14();
  v11 = sub_2647859F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_264605000, v10, v11, "Notification received for didEnterBackgroundNotification, will cancelInitialization()", v12, 2u);
    MEMORY[0x266740650](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v13 = *(a2 + 8);
  v14 = sub_2647858E4();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_2647858B4();

  v15 = sub_2647858A4();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  sub_264635730(0, 0, v5, &unk_26478C7D0, v16);
}

uint64_t sub_2646A45BC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_264783DD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v14 = sub_264783E14();
  v15 = sub_2647859F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = a2;
    v17 = v7;
    v18 = v6;
    v19 = v5;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_264605000, v14, v15, "Notification received for willEnterForegroundNotification, will initializeIfNeeded()", v16, 2u);
    v21 = v20;
    v5 = v19;
    v6 = v18;
    v7 = v17;
    a2 = v29;
    MEMORY[0x266740650](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_264783DC4();
  sub_264785A84();
  if (qword_27FF75010 != -1)
  {
    swift_once();
  }

  sub_264783DB4();
  (*(v7 + 8))(v9, v6);
  v22 = *(a2 + 8);
  v23 = sub_2647858E4();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  sub_2647858B4();

  v24 = sub_2647858A4();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  *(v25 + 32) = v22;
  *(v25 + 40) = 1;
  sub_264635430(0, 0, v5, &unk_264789310, v25);
}

uint64_t sub_2646A495C@<X0>(void *a1@<X8>)
{
  result = sub_2647840E4();
  *a1 = v3;
  return result;
}

void sub_2646A4988(double *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1 > 222.0)
  {
    sub_264783DF4();
    v9 = sub_264783E14();
    v10 = sub_2647859F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v8;
      _os_log_impl(&dword_264605000, v9, v10, "#Initiator,InitiatorConfigurationView, onGeometryChange - requesting to resize view, height, %f", v11, 0xCu);
      MEMORY[0x266740650](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v12 = *(a2 + 40);
    if (v12)
    {
      swift_beginAccess();
      v13 = *(v12 + 64);
      if (v13)
      {
        v14 = *(v12 + 72);

        v13(v15);
        sub_26460C9A0(v13, v14);
      }
    }
  }
}

void sub_2646A4B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 8) & 1) == 0 && *a2 == 10)
  {
    v10 = v7;
    sub_264783DF4();
    v11 = sub_264783E14();
    v12 = sub_2647859F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_264605000, v11, v12, "#Initiator,InitiatorConfigurationView, on session state change - requesting to resize view", v13, 2u);
      MEMORY[0x266740650](v13, -1, -1);
    }

    (*(v6 + 8))(v9, v10);
    v14 = *(a3 + 40);
    if (v14)
    {
      swift_beginAccess();
      v15 = *(v14 + 64);
      if (v15)
      {
        v16 = *(v14 + 72);

        v15(v17);
        sub_26460C9A0(v15, v16);
      }
    }
  }
}

uint64_t sub_2646A4CE0()
{
  v0 = sub_264783DD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DC4();
  sub_264785A84();
  if (qword_27FF75010 != -1)
  {
    swift_once();
  }

  sub_264783DB4();
  return (*(v1 + 8))(v3, v0);
}

void sub_2646A4E4C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_264783DD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v10 = *(a3 + 8);
    v11 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling;
    swift_beginAccess();
    if ((*(v10 + v11) & 1) == 0)
    {
      sub_264783DC4();
      v12 = sub_264785A74();
      if (qword_27FF75010 != -1)
      {
        v13[1] = v12;
        swift_once();
      }

      sub_264783DB4();
      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_2646A509C(uint64_t a1)
{
  v2 = type metadata accessor for CheckInView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646A5110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77240, &qword_26478C700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646A5180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77240, &qword_26478C700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2646A51F0()
{
  result = qword_27FF77250;
  if (!qword_27FF77250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77208, &qword_26478C6C8);
    sub_2646A52A8();
    sub_26460CDF0(&qword_27FF77268, &qword_27FF77270, &qword_26478C710, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77250);
  }

  return result;
}

unint64_t sub_2646A52A8()
{
  result = qword_27FF77258;
  if (!qword_27FF77258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77238, &qword_26478C6F8);
    sub_26460CDF0(&qword_27FF77260, &qword_27FF77230, &qword_26478C6F0, MEMORY[0x277CDDB50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77258);
  }

  return result;
}

unint64_t sub_2646A5360()
{
  result = qword_27FF77278;
  if (!qword_27FF77278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77248, &qword_26478C708);
    sub_2646A5414(&qword_27FF77280, type metadata accessor for SMSessionState, &unk_264787CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77278);
  }

  return result;
}

uint64_t sub_2646A5414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_2646A54BC()
{
  result = qword_27FF77288;
  if (!qword_27FF77288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77218, &qword_26478C6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77208, &qword_26478C6C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77248, &qword_26478C708);
    sub_2646A51F0();
    sub_2646A5360();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77288);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2646A55F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2646A5638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2646A569C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77218, &qword_26478C6D8);
  sub_2646A54BC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2646A57E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;

  return sub_2646A5840();
}

uint64_t sub_2646A5840()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DE4();

  v6 = sub_264783E14();
  v7 = sub_2647859F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = v2;
    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315651;
    v20 = v1;
    type metadata accessor for DestinationMapViewModel();

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0x7461636F4C646E65, 0xEB000000006E6F69, &v21);
    *(v9 + 22) = 2117;
    swift_beginAccess();
    v15 = *(v1 + 16);
    *(v9 + 24) = v15;
    *v10 = v15;
    v16 = v15;
    _os_log_impl(&dword_264605000, v6, v7, "%s, %s: endLocation was changed to %{sensitive}@", v9, 0x20u);
    sub_26468367C(v10);
    MEMORY[0x266740650](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);

    return (*(v3 + 8))(v5, v19);
  }

  else
  {

    return (*(v3 + 8))(v5, v2);
  }
}

void *sub_2646A5AB8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_2646A5AFC(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_2646A5840();
}

uint64_t (*sub_2646A5B5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2646A5BB0;
}

uint64_t sub_2646A5BB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2646A5840();
  }

  return result;
}

uint64_t DestinationMapViewModel.__allocating_init(endLocation:endLocationGeofenceRadius:destinationType:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  swift_beginAccess();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  *(v6 + 32) = a2;
  return v6;
}

uint64_t DestinationMapViewModel.init(endLocation:endLocationGeofenceRadius:destinationType:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  swift_beginAccess();
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;
  return v3;
}

uint64_t DestinationMapViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2646A5EB0(uint64_t a1, uint64_t a2)
{
  result = sub_2646A5ED8(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2646A5ED8(uint64_t a1, uint64_t a2)
{
  result = qword_27FF77290;
  if (!qword_27FF77290)
  {
    type metadata accessor for DestinationMapViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77290);
  }

  return result;
}

uint64_t sub_2646A5F50@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DestinationMapViewModel();
  result = sub_264783E64();
  *a2 = result;
  return result;
}

id sub_2646A5F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

double sub_2646A5FE8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_2646A6030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

void sub_2646A607C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

void sub_2646A60C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t DurationSelectionGroup.body.getter()
{
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF754B8, &qword_264787630);
  MEMORY[0x28223BE20](v4);
  v5 = *(v1 + 1);
  v6 = *(v1 + 2);
  v7 = v1[3];
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264613FC4();
  v10 = sub_264784E44();
  v12 = v11;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  v14 = v13 & 1;
  v18 = v13 & 1;
  v19 = v15;
  sub_264785034();
  sub_26460ECC4(v10, v12, v14);

  sub_2646A6710(v5, v6, &v17, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77298, &qword_26478C8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772A0, &qword_26478C8D0);
  sub_26465D02C();
  sub_2646A7124();
  sub_2646A7290();
  return sub_264785454();
}

__n128 sub_2646A6558@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772B8, &unk_26478C8D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
  sub_2647853F4();
  v17 = *&v15[8];
  *&v18 = v16;
  sub_2646A723C();
  sub_264785034();

  sub_264785504();
  sub_264784314();
  sub_2646A74F4(v10, a3);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77298, &qword_26478C8C8) + 36);
  v12 = v22;
  *(v11 + 64) = v21;
  *(v11 + 80) = v12;
  *(v11 + 96) = v23;
  v13 = v18;
  *v11 = v17;
  *(v11 + 16) = v13;
  result = v20;
  *(v11 + 32) = v19;
  *(v11 + 48) = result;
  return result;
}

double sub_2646A6710@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v58 = a3;
  v7 = sub_264783B94();
  MEMORY[0x28223BE20](v7 - 8);
  v57[3] = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264785704();
  MEMORY[0x28223BE20](v9 - 8);
  v57[2] = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783AF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2647856E4();
  MEMORY[0x28223BE20](v15 - 8);
  sub_264783D04();
  v16 = sub_26462B210();
  v57[1] = MEMORY[0x26673DA20]();
  v18 = v17;

  v19 = sub_26462B210();
  if (v19 && (v20 = v19, v21 = [v19 isGroup], v20, v21))
  {
    sub_2647856D4();
    sub_2647856C4();
    *&v62 = a1;
    *(&v62 + 1) = a2;
    *&v63 = a4;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
    MEMORY[0x26673F100](&v59, v22);
    sub_264783A94();
    v23 = sub_264783A64();
    v24 = [v23 absoluteTimeString:0 preposition:2 capitalized:0];

    sub_264785724();
    (*(v12 + 8))(v14, v11);
    sub_2647856B4();

    sub_2647856C4();
    if (v18)
    {
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_26460EC78();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v62 = sub_264785744();
      *(&v62 + 1) = v27;
      sub_264613FC4();
      *&v59 = sub_264784E44();
      *(&v59 + 1) = v28;
      *&v60 = v29 & 1;
      *(&v60 + 1) = v30;
      LOBYTE(v61) = 0;
    }

    else
    {
      sub_2647856F4();
      sub_26460EC78();
      v46 = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v62 = sub_264785744();
      *(&v62 + 1) = v48;
      sub_264613FC4();
      *&v59 = sub_264784E44();
      *(&v59 + 1) = v49;
      *&v60 = v50 & 1;
      *(&v60 + 1) = v51;
      LOBYTE(v61) = 1;
    }

    sub_264784874();
    v59 = v62;
    v60 = v63;
    v61 = v64;
  }

  else
  {
    sub_2647856D4();
    sub_2647856C4();
    *&v62 = a1;
    *(&v62 + 1) = a2;
    *&v63 = a4;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F0, &qword_26478C998);
    MEMORY[0x26673F100](&v59, v31);
    sub_264783A94();
    v32 = sub_264783A64();
    v33 = [v32 absoluteTimeString:0 preposition:2 capitalized:0];

    sub_264785724();
    (*(v12 + 8))(v14, v11);
    sub_2647856B4();

    sub_2647856C4();
    if (v18)
    {
      sub_2647856B4();

      sub_2647856C4();
      sub_2647856F4();
      sub_26460EC78();
      v34 = swift_getObjCClassFromMetadata();
      v35 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v62 = sub_264785754();
      *(&v62 + 1) = v36;
      sub_264613FC4();
      *&v59 = sub_264784E44();
      *(&v59 + 1) = v37;
      *&v60 = v38 & 1;
      *(&v60 + 1) = v39;
      LOBYTE(v61) = 0;
    }

    else
    {
      sub_2647856F4();
      sub_26460EC78();
      v40 = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass_];
      sub_264783B84();
      *&v62 = sub_264785754();
      *(&v62 + 1) = v42;
      sub_264613FC4();
      *&v59 = sub_264784E44();
      *(&v59 + 1) = v43;
      *&v60 = v44 & 1;
      *(&v60 + 1) = v45;
      LOBYTE(v61) = 1;
    }

    sub_264784874();
    v59 = v62;
    v60 = v63;
    LOBYTE(v61) = v64;
    HIBYTE(v61) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76058, &qword_26478C060);
  sub_26465D250();
  sub_264784874();
  result = *&v62;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v56 = v58;
  *v58 = v62;
  v56[1] = v53;
  *(v56 + 32) = v54;
  *(v56 + 33) = v55;
  return result;
}

unint64_t sub_2646A7124()
{
  result = qword_27FF772A8;
  if (!qword_27FF772A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77298, &qword_26478C8C8);
    sub_2646A71B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772A8);
  }

  return result;
}

unint64_t sub_2646A71B0()
{
  result = qword_27FF772B0;
  if (!qword_27FF772B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772B8, &unk_26478C8D8);
    sub_2646A723C();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772B0);
  }

  return result;
}

unint64_t sub_2646A723C()
{
  result = qword_27FF772C0;
  if (!qword_27FF772C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772C0);
  }

  return result;
}

unint64_t sub_2646A7290()
{
  result = qword_27FF772C8;
  if (!qword_27FF772C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772A0, &qword_26478C8D0);
    sub_26465D250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772C8);
  }

  return result;
}

uint64_t sub_2646A7334(uint64_t *a1, int a2)
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

uint64_t sub_2646A737C(uint64_t result, int a2, int a3)
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

unint64_t sub_2646A73D0()
{
  result = qword_27FF772D0;
  if (!qword_27FF772D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772D8, &qword_26478C988);
    sub_2646A7454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772D0);
  }

  return result;
}

unint64_t sub_2646A7454()
{
  result = qword_27FF772E0;
  if (!qword_27FF772E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF772E8, &qword_26478C990);
    sub_26465D02C();
    sub_2646A7124();
    sub_2646A7290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF772E0);
  }

  return result;
}

uint64_t sub_2646A74F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772B8, &unk_26478C8D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CacheNotAvailableView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t CacheNotAvailableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264784714();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F8, &qword_26478C9F8);
  return sub_2646A7660(v1, a1 + *(v3 + 44));
}

uint64_t sub_2646A7660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_264783B94();
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76378, &unk_264789F90);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = type metadata accessor for CacheNotAvailableView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77320, &qword_264791240);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  sub_2646A816C(a1, &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  sub_2646A82D0(&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  *v22 = sub_2647845C4();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v25 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77328, &unk_26478CA80) + 44)];
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2646A8334;
  *(v26 + 24) = v24;

  sub_264785334();
  v27 = *(v8 + 16);
  v27(v11, v13, v7);
  *v25 = 0;
  v25[8] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77330, &qword_264791A60);
  v27(&v25[*(v28 + 48)], v11, v7);
  v29 = *(v8 + 8);
  v29(v13, v7);
  v29(v11, v7);
  LOBYTE(v29) = sub_264784C44();
  sub_264783F54();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77338, &qword_26478CA90) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  LOBYTE(v29) = sub_264784C84();
  sub_264783F54();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = &v22[*(v18 + 44)];
  *v47 = v29;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  v68 = sub_264785754();
  v69 = v50;
  sub_264613FC4();
  v51 = sub_264784E44();
  v53 = v52;
  LOBYTE(v27) = v54;
  v56 = v55;
  v57 = v64;
  sub_26460CCE8(v22, v64, &qword_27FF77320, &qword_264791240);
  v58 = v67;
  sub_26460CCE8(v57, v67, &qword_27FF77320, &qword_264791240);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77340, &qword_26478CA98);
  v60 = v58 + *(v59 + 48);
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v58 + *(v59 + 64);
  *v61 = v51;
  *(v61 + 8) = v53;
  LOBYTE(v27) = v27 & 1;
  *(v61 + 16) = v27;
  *(v61 + 24) = v56;
  sub_26460C474(v51, v53, v27);

  sub_2646A83DC(v22);
  sub_26460ECC4(v51, v53, v27);

  return sub_2646A83DC(v57);
}

uint64_t sub_2646A7C60(uint64_t a1)
{
  v15 = sub_264784574();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_2647840D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26460CCE8(a1, v7, &qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2647859E4();
    v12 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_2647840C4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2646A7EDC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_264784714();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF772F8, &qword_26478C9F8);
  return sub_2646A7660(v1, a1 + *(v3 + 44));
}

uint64_t sub_2646A7F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2646A7FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76190, &unk_264789D60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CacheNotAvailableView(uint64_t a1)
{
  result = qword_27FF77300;
  if (!qword_27FF77300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2646A8098(uint64_t a1)
{
  sub_26465DD44(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2646A8108()
{
  result = qword_27FF77310;
  if (!qword_27FF77310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77318, &qword_26478CA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77310);
  }

  return result;
}

uint64_t sub_2646A816C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheNotAvailableView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646A81D0()
{
  v1 = *(type metadata accessor for CacheNotAvailableView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2647840D4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646A82D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheNotAvailableView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646A8334()
{
  v1 = *(type metadata accessor for CacheNotAvailableView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2646A7C60(v2);
}

uint64_t sub_2646A8394()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2646A83DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77320, &qword_264791240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2646A8460@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1);
}

uint64_t sub_2646A84E0(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646A8580(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A8624(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77358, &qword_26478CB00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646A87C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77358, &qword_26478CB00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A88FC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77358, &qword_26478CB00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646A8A6C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646A8AEC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646A8B98(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A8C3C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77370, &qword_26478CB58);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646A8DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77370, &qword_26478CB58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A8F14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77370, &qword_26478CB58);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__sessionViewModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646A90B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646A9120(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_2646A91C4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77388, &qword_26478CBB0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646A9364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77388, &qword_26478CBB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A949C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77388, &qword_26478CBB0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__safetyCacheViewModel;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  sub_264783EA4();
  swift_endAccess();
  return sub_2646263E8;
}

uint64_t (*sub_2646A9664(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A9708(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646A98A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A99E0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*sub_2646A9BA8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646A9C4C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646A9DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646A9F24(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646AA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646AA164(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646AA208(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646AA3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646AA4E0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646AA650@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646AA6D0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t sub_2646AA744()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

uint64_t sub_2646AA7C0(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*sub_2646AA830(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646AA8D4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646AAA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646AABAC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_2646AAD1C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_2646AAD9C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  sub_264783EE4();
  return sub_2646AAE18();
}

uint64_t sub_2646AAE18()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v6 = sub_264783E14();
  v7 = sub_2647859B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138739971;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v13);

    v10 = v13;
    *(v8 + 4) = v13;
    *v9 = v10;
    _os_log_impl(&dword_264605000, v6, v7, "resolvedMapItem: %{sensitive}@", v8, 0xCu);
    sub_26460CD50(v9, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v9, -1, -1);
    MEMORY[0x266740650](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_2646AC848();
}

void sub_2646AB028(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;

  sub_264783EE4();
  sub_2646AAE18();
}

void (*sub_2646AB0A8(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(a1 + 1);

  *a1 = a1[1];
  return sub_2646AB13C;
}

void sub_2646AB13C(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  v7 = v4;

  if (a2)
  {
    v5 = v7;
    sub_264783EE4();
    sub_2646AAE18();

    v6 = *a1;
  }

  else
  {
    sub_264783EE4();
    sub_2646AAE18();
    v6 = v7;
  }
}

uint64_t sub_2646AB228(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2646AB3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2646AB500(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D20, &qword_264789158);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t TranscriptViewModel.__allocating_init(message:userType:messageSenderContact:handlerManager:sessionViewModel:safetyCacheViewModel:)(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v38 = a3;
  v39 = a6;
  v41 = a4;
  v42 = a5;
  v40 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = swift_allocObject();
  v37 = *a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    v18 = sub_26476D298(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  *(v17 + 24) = v18;
  v19 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v43 = 0;
  *&v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  v20 = *(v14 + 32);
  v20(v17 + v19, v16, v13);
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString;
  v43 = 0;
  *&v44 = 0;
  sub_264783E94();
  v20(v17 + v21, v16, v13);
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString;
  v43 = 0;
  *&v44 = 0;
  sub_264783E94();
  v20(v17 + v22, v16, v13);
  v23 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  LOBYTE(v43) = 0;
  sub_264783E94();
  (*(v10 + 32))(v17 + v23, v12, v34);
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  sub_264783E94();
  (*(v35 + 32))(v17 + v24, v9, v36);
  v26 = v37;
  v25 = v38;
  *(v17 + 48) = v37;
  *(v17 + 40) = v25;
  *(v17 + 56) = v41;
  swift_beginAccess();
  v49 = v42;
  type metadata accessor for SessionViewModel(0);
  v27 = v25;

  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  v28 = v39;
  v49 = v39;
  type metadata accessor for SafetyCacheViewModel(0);
  v29 = v28;
  sub_264783E94();
  swift_endAccess();
  v30 = v40;
  *(v17 + 16) = v40;
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v32 = v30;
  *(v17 + 64) = [ObjCClassFromObject messageType];
  swift_beginAccess();
  v43 = v26;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  v48 = -96;
  v47 = 0;
  sub_264783E94();
  swift_endAccess();
  *(v17 + 32) = 0;
  sub_2646AF184();
  sub_2646AC134();
  sub_2646ACB28();

  return v17;
}

uint64_t TranscriptViewModel.init(message:userType:messageSenderContact:handlerManager:sessionViewModel:safetyCacheViewModel:)(void *a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v38 = a3;
  v39 = a6;
  v41 = a4;
  v42 = a5;
  v40 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v11 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v37 = *a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_264785C14())
  {
    v18 = sub_26476D298(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  *(v6 + 24) = v18;
  v19 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v43 = 0;
  *&v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  sub_264783E94();
  v20 = *(v15 + 32);
  v20(v6 + v19, v17, v14);
  v21 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString;
  v43 = 0;
  *&v44 = 0;
  sub_264783E94();
  v20(v6 + v21, v17, v14);
  v22 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString;
  v43 = 0;
  *&v44 = 0;
  sub_264783E94();
  v20(v6 + v22, v17, v14);
  v23 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  LOBYTE(v43) = 0;
  sub_264783E94();
  (*(v11 + 32))(v6 + v23, v13, v34);
  v24 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  sub_264783E94();
  (*(v35 + 32))(v6 + v24, v10, v36);
  v26 = v37;
  v25 = v38;
  *(v6 + 48) = v37;
  *(v6 + 40) = v25;
  *(v6 + 56) = v41;
  swift_beginAccess();
  v49 = v42;
  type metadata accessor for SessionViewModel(0);
  v27 = v25;

  sub_264783E94();
  swift_endAccess();
  swift_beginAccess();
  v28 = v39;
  v49 = v39;
  type metadata accessor for SafetyCacheViewModel(0);
  v29 = v28;
  sub_264783E94();
  swift_endAccess();
  v30 = v40;
  *(v6 + 16) = v40;
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v32 = v30;
  *(v6 + 64) = [ObjCClassFromObject messageType];
  swift_beginAccess();
  v43 = v26;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  v48 = -96;
  v47 = 0;
  sub_264783E94();
  swift_endAccess();
  *(v6 + 32) = 0;
  sub_2646AF184();
  sub_2646AC134();
  sub_2646ACB28();

  return v6;
}

uint64_t sub_2646AC020()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v1);

  return v1;
}

id sub_2646AC09C()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {

    return [result destinationType];
  }

  return result;
}

uint64_t sub_2646AC134()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF773E8, &qword_26478CF78);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF773F0, &unk_26478CF80);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v19);

  type metadata accessor for SessionViewModel(0);
  sub_2646B6550(&qword_27FF75DC0, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  v6 = sub_264783E64();

  v19[0] = v6;
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v7 = sub_264785A44();
  v20 = v7;
  v8 = sub_264785A34();
  v9 = *(v8 - 8);
  v16 = *(v9 + 56);
  v17 = v9 + 56;
  v16(v2, 1, 1, v8);
  v15[2] = sub_264783E84();
  v15[1] = sub_2646B66B0();
  sub_264783F04();
  sub_26460CD50(v2, &qword_27FF773E8, &qword_26478CF78);

  swift_allocObject();
  swift_weakInit();
  v15[0] = sub_26460CDF0(&qword_27FF77400, &qword_27FF773F0, &unk_26478CF80, MEMORY[0x277CBCD60]);
  sub_264783F14();

  v10 = *(v18 + 8);
  v18 += 8;
  v10(v5, v3);
  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v19);

  v11 = v19[0];
  type metadata accessor for SafetyCacheViewModel(0);
  sub_2646B6550(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel, &protocol conformance descriptor for SafetyCacheViewModel);
  v12 = sub_264783E64();

  v19[0] = v12;
  v13 = sub_264785A44();
  v20 = v13;
  v16(v2, 1, 1, v8);
  sub_264783F04();
  sub_26460CD50(v2, &qword_27FF773E8, &qword_26478CF78);

  swift_allocObject();
  swift_weakInit();
  sub_264783F14();

  v10(v5, v3);
  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();
}

uint64_t sub_2646AC650(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2646AC848();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TranscriptViewModel(0);
    sub_2646B6550(&qword_27FF75410, type metadata accessor for TranscriptViewModel, &protocol conformance descriptor for TranscriptViewModel);
    sub_264783E64();

    sub_264783E74();
  }

  return result;
}

uint64_t sub_2646AC734(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2646AC848();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2646AF184();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TranscriptViewModel(0);
    sub_2646B6550(&qword_27FF75410, type metadata accessor for TranscriptViewModel, &protocol conformance descriptor for TranscriptViewModel);
    sub_264783E64();

    sub_264783E74();
  }

  return result;
}

uint64_t sub_2646AC848()
{
  v1 = sub_264785594();
  v11 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2647855C4();
  v4 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v7 = sub_264785A44();
  aBlock[4] = sub_2646B669C;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_109;
  v8 = _Block_copy(aBlock);

  sub_2647855B4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2646B6550(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  sub_264785BD4();
  MEMORY[0x26673F780](0, v6, v3, v8);
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

uint64_t sub_2646ACB28()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [swift_getObjCClassFromObject() messageType];
  if (v6 == 3)
  {
    sub_2646ADA7C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v37);

    v35 = *v37;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v37);

    v34 = *v37;
    v19 = *(v1 + 48);
    v20 = sub_2646B395C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v37);

    v21 = 256;
    if ((v20 & 1) == 0)
    {
      v21 = 0;
    }

    v22 = v21 | v19;
    v23 = 0x10000;
    if (!v37[0])
    {
      v23 = 0;
    }

    v24 = v22 | v23;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[16] = v34;
    *v37 = v35;
    *&v37[32] = v24;
    v38 = 0;
    v13 = 96;
    goto LABEL_17;
  }

  if (v6 == 2)
  {
    sub_2646AD1C8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v37);

    v14 = *v37;
    v15 = *(v1 + 48);
    v16 = sub_2646B395C();
    v17 = 256;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
    }

    v18 = v17 | v15;
    swift_getKeyPath();
    swift_getKeyPath();
    *v37 = v14;
    *&v37[16] = v18;
    *&v37[32] = 0;
    v38 = 0;
    v13 = 0x80;
    goto LABEL_17;
  }

  if (v6 == 1)
  {
    sub_2646AE4B8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v37);

    v35 = *v37;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v37);

    v34 = *v37;
    v7 = *(v1 + 48);
    v8 = sub_2646B395C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v37);

    v9 = 0x10000;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
    }

    v10 = v9 | v7;
    v11 = 0x1000000;
    if (!v37[0])
    {
      v11 = 0;
    }

    v12 = v10 | v11;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v37[16] = v34;
    *v37 = v35;
    *&v37[32] = v12;
    v13 = 64;
LABEL_17:
    v40 = v13;
    v39 = 0;
    goto LABEL_24;
  }

  *&v35 = v6;
  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v25 = sub_264783E14();
  v26 = sub_2647859D4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v1;
    *v37 = v28;
    *v27 = 136315650;
    type metadata accessor for TranscriptViewModel(0);

    v29 = sub_264785764();
    v31 = sub_2646DF234(v29, v30, v37);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264796AC0, v37);
    *(v27 + 22) = 2048;
    *(v27 + 24) = v35;
    _os_log_impl(&dword_264605000, v25, v26, "%s, %s: Unknown message type, %lu", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v28, -1, -1);
    MEMORY[0x266740650](v27, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v32 = *(v1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  *v37 = v32;
  memset(&v37[8], 0, 32);
  v38 = 0;
  v40 = -96;
  v39 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *v37 = 0uLL;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  *v37 = 0uLL;
LABEL_24:

  return sub_264783EE4();
}

void sub_2646AD1C8()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v60 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  v12 = *(v1 + 16);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    v16 = [v14 sessionEndReason];
    if (v16 <= 3)
    {
      switch(v16)
      {
        case 1:
          v32 = [v14 destinationType];
          v33 = 0;
          if (qword_287614810 == v32 || qword_287614818 == v32)
          {
            v34 = 0;
          }

          else
          {
            v34 = 0;
            if (qword_287614820 != v32)
            {
              v35 = v32;
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4(&v64);

              isa = v64.isa;
              v33 = _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v64.isa);
              v34 = v37;

              v32 = v35;
            }
          }

          LOBYTE(v64.isa) = *(v1 + 48);
          v47 = _s15SafetyMonitorUI0aB11UIUtilitiesC49formatSafeArrivalTranscriptTextForDestinationType011destinationL07address04userL0SSSo09SMSessionkL0V_SSSgAA04UserL0OtFZ_0(v32, v33, v34, &v64);
          v49 = v48;

          swift_getKeyPath();
          swift_getKeyPath();
          v64.isa = v47;
          v65 = v49;

          goto LABEL_39;
        case 2:
          goto LABEL_36;
        case 3:
          v19 = [v14 sessionType];
          v20 = *(v1 + 48);
          if ((v19 - 1) <= 3)
          {
LABEL_37:
            LOBYTE(v64.isa) = v20;
            v17 = _s15SafetyMonitorUI0aB11UIUtilitiesC21transcriptEndedString8userTypeSSAA04UserI0O_tFZ_0(&v64);
            goto LABEL_38;
          }

          v21 = v19;
          if (*(v1 + 48))
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v50 = sub_264783E14();
          v51 = sub_2647859D4();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v63 = v1;
            v64.isa = v61;
            *v52 = 136315650;
            type metadata accessor for TranscriptViewModel(0);

            v53 = sub_264785764();
            v55 = sub_2646DF234(v53, v54, &v64);
            v62 = v2;
            v56 = v55;

            *(v52 + 4) = v56;
            *(v52 + 12) = 2080;
            *(v52 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264796AA0, &v64);
            *(v52 + 22) = 2048;
            *(v52 + 24) = v21;
            _os_log_impl(&dword_264605000, v50, v51, "%s, %s: Undefined session type, %lu", v52, 0x20u);
            v57 = v61;
            swift_arrayDestroy();
            MEMORY[0x266740650](v57, -1, -1);
            MEMORY[0x266740650](v52, -1, -1);

            v3[1](v11, v62);
            goto LABEL_36;
          }

          v45 = v3[1];
          v46 = v11;
          goto LABEL_35;
      }
    }

    else
    {
      if ((v16 - 4) < 4)
      {
LABEL_36:
        v20 = *(v1 + 48);
        goto LABEL_37;
      }

      if (v16 == 8)
      {
        LOBYTE(v64.isa) = *(v1 + 48);
        v17 = _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutEndedString8userTypeSSAA04UserJ0O_tFZ_0(&v64);
LABEL_38:
        v58 = v17;
        v59 = v18;
        swift_getKeyPath();
        swift_getKeyPath();
        v64.isa = v58;
        v65 = v59;

LABEL_39:
        sub_264783EE4();
        swift_getKeyPath();
        swift_getKeyPath();
        v64.isa = 0;
        v65 = 0;

        sub_264783EE4();

        return;
      }
    }

    v61 = v16;
    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v38 = sub_264783E14();
    v39 = sub_2647859D4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v63 = v1;
      v64.isa = v41;
      *v40 = 136315650;
      type metadata accessor for TranscriptViewModel(0);
      v62 = v2;

      v42 = sub_264785764();
      v44 = sub_2646DF234(v42, v43, &v64);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264796AA0, &v64);
      *(v40 + 22) = 2048;
      *(v40 + 24) = v61;
      _os_log_impl(&dword_264605000, v38, v39, "%s, %s: Undefined session end reason, %lu", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v41, -1, -1);
      MEMORY[0x266740650](v40, -1, -1);

      v3[1](v9, v62);
      goto LABEL_36;
    }

    v45 = v3[1];
    v46 = v9;
LABEL_35:
    v45(v46, v2);
    goto LABEL_36;
  }

  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v22 = sub_264783E14();
  v23 = sub_2647859D4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v62 = v2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v63 = v1;
    v64.isa = v27;
    *v24 = 136315650;
    type metadata accessor for TranscriptViewModel(0);
    v61 = v3;

    v28 = sub_264785764();
    v30 = sub_2646DF234(v28, v29, &v64);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264796AA0, &v64);
    *(v24 + 22) = 2112;
    *(v24 + 24) = v12;
    *v26 = v12;
    v31 = v12;
    _os_log_impl(&dword_264605000, v22, v23, "%s, %s: Unable to transform SMMessage into SMSessionEndMessage, %@", v24, 0x20u);
    sub_26460CD50(v26, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v26, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v27, -1, -1);
    MEMORY[0x266740650](v24, -1, -1);

    (*(v61 + 1))(v6, v62);
  }

  else
  {

    v3[1](v6, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v64.isa = 0;
  v65 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v64.isa = 0;
  v65 = 0;

  sub_264783EE4();
}

void sub_2646ADA7C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v68 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v68 - v10;
  v12 = *(v1 + 16);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    v16 = [v14 triggerType];
    if (*(v1 + 48) == 1)
    {
      v71 = v9;
      v72 = v3;
      v17 = v15;
      v18 = v2;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v74);

      v19 = v74;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v74);

      v20 = v74;
      if (v74 && (v21 = [v74 lowPowerModeWarningState], v20, v21))
      {
        v22 = v21 == 2;
      }

      else
      {
        v22 = [v14 lowPowerModeWarningState] == 2;
      }

      v23 = v22;
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v74) = v23;

      sub_264783EE4();
      v2 = v18;
      v15 = v17;
      v9 = v71;
      v3 = v72;
    }

    if (v16 <= 0x15)
    {
      if (((1 << v16) & 0x3903BF) != 0)
      {
        goto LABEL_15;
      }

      if (((1 << v16) & 0x7C00) != 0)
      {
LABEL_20:
        LOBYTE(v74) = *(v1 + 48);
        v27 = _s15SafetyMonitorUI0aB11UIUtilitiesC33transcriptSOSTriggerPrimaryString8userTypeSSAA04UserJ0O_tFZ_0(&v74);
        v29 = v28;
        swift_getKeyPath();
        swift_getKeyPath();
        v74 = v27;
        v75 = v29;

        sub_264783EE4();
        swift_getKeyPath();
        swift_getKeyPath();
        v74 = 0;
        v75 = 0;

LABEL_34:
        sub_264783EE4();

        return;
      }

      if (v16 == 15)
      {
        LOBYTE(v74) = *(v1 + 48);
        v25 = _s15SafetyMonitorUI0aB11UIUtilitiesC30transcriptOfflinePrimaryString8userTypeSSAA04UserJ0O_tFZ_0(&v74);
        goto LABEL_32;
      }
    }

    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v55 = sub_264783E14();
    v56 = sub_2647859D4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v71 = v9;
      v58 = v57;
      v72 = swift_slowAlloc();
      v73 = v1;
      v74 = v72;
      *v58 = 136315650;
      type metadata accessor for TranscriptViewModel(0);
      LODWORD(v70) = v56;

      v59 = sub_264785764();
      v61 = sub_2646DF234(v59, v60, &v74);
      v69 = v55;
      v62 = v15;
      v63 = v2;
      v64 = v61;

      *(v58 + 4) = v64;
      v2 = v63;
      v15 = v62;
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264796A80, &v74);
      *(v58 + 22) = 2048;
      *(v58 + 24) = v16;
      v65 = v69;
      _os_log_impl(&dword_264605000, v69, v70, "%s, %s: Undefined trigger type, %lu", v58, 0x20u);
      v66 = v72;
      swift_arrayDestroy();
      MEMORY[0x266740650](v66, -1, -1);
      v67 = v58;
      v9 = v71;
      MEMORY[0x266740650](v67, -1, -1);
    }

    else
    {
    }

    (v3)[1](v11, v2);
    if (![v14 isSOSTrigger])
    {
LABEL_15:
      v24 = [v14 sessionType];
      if ((v24 - 2) < 2)
      {
        LOBYTE(v74) = *(v1 + 48);
        v25 = _s15SafetyMonitorUI0aB11UIUtilitiesC38transcriptDestinationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(&v74);
      }

      else if (v24 == 1)
      {
        LOBYTE(v74) = *(v1 + 48);
        v25 = _s15SafetyMonitorUI0aB11UIUtilitiesC35transcriptDurationTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(&v74);
      }

      else
      {
        if (v24 != 4)
        {
          v41 = v24;
          if (*(v1 + 48))
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v47 = sub_264783E14();
          v48 = sub_2647859D4();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v70 = v2;
            v51 = v50;
            v73 = v1;
            v74 = v50;
            *v49 = 136315650;
            type metadata accessor for TranscriptViewModel(0);
            v71 = v9;

            v52 = sub_264785764();
            v54 = sub_2646DF234(v52, v53, &v74);

            *(v49 + 4) = v54;
            *(v49 + 12) = 2080;
            *(v49 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264796A80, &v74);
            *(v49 + 22) = 2048;
            *(v49 + 24) = v41;
            _os_log_impl(&dword_264605000, v47, v48, "%s, %s: Undefined session type, %lu", v49, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v51, -1, -1);
            MEMORY[0x266740650](v49, -1, -1);

            (v3)[1](v71, v70);
          }

          else
          {

            (v3)[1](v9, v2);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v74 = 0;
          v75 = 0;

          goto LABEL_33;
        }

        LOBYTE(v74) = *(v1 + 48);
        v25 = _s15SafetyMonitorUI0aB11UIUtilitiesC34transcriptWorkoutTypePrimaryString04userG0SSAA04UserG0O_tFZ_0(&v74);
      }

LABEL_32:
      v42 = v25;
      v43 = v26;
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = v42;
      v75 = v43;

LABEL_33:
      sub_264783EE4();
      LOBYTE(v74) = *(v1 + 48);
      v44 = _s15SafetyMonitorUI0aB11UIUtilitiesC37transcriptCacheReleaseSecondaryString8userTypeSSAA04UserK0O_tFZ_0(&v74);
      v46 = v45;
      swift_getKeyPath();
      swift_getKeyPath();
      v74 = v44;
      v75 = v46;

      goto LABEL_34;
    }

    goto LABEL_20;
  }

  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v30 = sub_264783E14();
  v31 = sub_2647859D4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v72 = v3;
    v33 = v32;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v70 = v2;
    v36 = v35;
    v73 = v1;
    v74 = v35;
    *v33 = 136315650;
    type metadata accessor for TranscriptViewModel(0);

    v37 = sub_264785764();
    v39 = sub_2646DF234(v37, v38, &v74);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_2646DF234(0xD00000000000001ALL, 0x8000000264796A80, &v74);
    *(v33 + 22) = 2112;
    *(v33 + 24) = v12;
    *v34 = v12;
    v40 = v12;
    _os_log_impl(&dword_264605000, v30, v31, "%s, %s: Unable to transform SMMessage into SMKeyReleaseMessage, %@", v33, 0x20u);
    sub_26460CD50(v34, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v33, -1, -1);

    (v72)[1](v6, v70);
  }

  else
  {

    (v3)[1](v6, v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v74 = 0;
  v75 = 0;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = 0;
  v75 = 0;

  sub_264783EE4();
}

void sub_2646AE4B8()
{
  v1 = v0;
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264785704();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v87 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v87 - v16;
  v18 = *(v1 + 16);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v41 = sub_264783E14();
    v42 = sub_2647859D4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v90 = v9;
      v45 = v44;
      v46 = swift_slowAlloc();
      v91 = v1;
      v92 = v46;
      *v43 = 136315650;
      type metadata accessor for TranscriptViewModel(0);
      v89 = v8;

      v47 = sub_264785764();
      v49 = sub_2646DF234(v47, v48, &v92);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264796A00, &v92);
      *(v43 + 22) = 2112;
      *(v43 + 24) = v18;
      *v45 = v18;
      v50 = v18;
      _os_log_impl(&dword_264605000, v41, v42, "%s, %s: Unable to transform SMMessage into SMSessionStartMessage, %@", v43, 0x20u);
      sub_26460CD50(v45, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v45, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v46, -1, -1);
      MEMORY[0x266740650](v43, -1, -1);

      (*(v90 + 8))(v12, v89);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v92 = 0;
    v93 = 0;

    sub_264783EE4();
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = 0;
    v93 = 0;

    sub_264783EE4();
    return;
  }

  v20 = v19;
  v90 = v9;
  v21 = v18;
  v22 = [v20 sessionType];
  v23 = [v20 destinationType];
  if (*(v1 + 48) == 1)
  {
    v88 = v23;
    v89 = v7;
    v87 = v4;
    v24 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v92);

    v25 = v92;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v92);

    v26 = v92;
    if (v92 && (v27 = [v92 lowPowerModeWarningState], v26, v27))
    {
      v28 = v27 == 2;
    }

    else
    {
      v28 = [v20 lowPowerModeWarningState] == 2;
    }

    v29 = v28;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v92) = v29;

    sub_264783EE4();
    v21 = v24;
    v23 = v88;
    v7 = v89;
  }

  if ((v22 - 2) < 2)
  {
    if ((v23 - 1) >= 3)
    {
      if (v23 != 4)
      {
        v53 = v23;
        if (*(v1 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v67 = sub_264783E14();
        v68 = sub_2647859D4();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v91 = v1;
          v92 = v87;
          *v69 = 136315650;
          type metadata accessor for TranscriptViewModel(0);
          v88 = v53;

          v70 = sub_264785764();
          v72 = sub_2646DF234(v70, v71, &v92);
          v89 = v7;
          v73 = v8;
          v74 = v72;

          *(v69 + 4) = v74;
          *(v69 + 12) = 2080;
          *(v69 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264796A00, &v92);
          *(v69 + 22) = 2048;
          *(v69 + 24) = v88;
          _os_log_impl(&dword_264605000, v67, v68, "%s, %s: Undefined destination type, %lu", v69, 0x20u);
          v75 = v87;
          swift_arrayDestroy();
          MEMORY[0x266740650](v75, -1, -1);
          MEMORY[0x266740650](v69, -1, -1);

          (*(v90 + 8))(v17, v73);
        }

        else
        {

          (*(v90 + 8))(v17, v8);
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v92);

      v76 = v92;
      v77 = _s15SafetyMonitorUI0aB11UIUtilitiesC29fullThoroughfareAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v92);
      v79 = v78;

      if (v79)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v92 = v77;
        v93 = v79;

LABEL_44:
        sub_264783EE4();
        goto LABEL_45;
      }
    }

    else
    {
      v33 = v23;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v92);

      v34 = v92;
      v35 = _s15SafetyMonitorUI0aB11UIUtilitiesC17cityAddressFormat3forSSSgSo9MKMapItemCSg_tFZ_0(v92);
      v37 = v36;

      if (v37)
      {
        LOBYTE(v92) = *(v1 + 48);

        v38 = _s15SafetyMonitorUI0aB11UIUtilitiesC31formatAddressForDestinationType011destinationI07address04userI0SSSo09SMSessionhI0V_SSAA04UserI0OtFZ_0(v33, v35, v37, &v92);
        v40 = v39;

        swift_getKeyPath();
        swift_getKeyPath();
        v92 = v38;
        v93 = v40;

        sub_264783EE4();

LABEL_45:
        v84 = sub_2646B1D04();
        v86 = v85;
        swift_getKeyPath();
        swift_getKeyPath();
        v92 = v84;
        v93 = v86;

        goto LABEL_46;
      }
    }

    sub_264785694();
    sub_264659B70(0, &qword_27FF779F0, 0x277D4AB68);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v81 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    v51 = sub_264785754();
LABEL_43:
    v82 = v51;
    v83 = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = v82;
    v93 = v83;

    goto LABEL_44;
  }

  if (v22 == 1)
  {
    LOBYTE(v92) = *(v1 + 48);
    v51 = _s15SafetyMonitorUI0aB11UIUtilitiesC11timerString8userTypeSSAA04UserH0O_tFZ_0(&v92);
    goto LABEL_43;
  }

  if (v22 == 4)
  {
    LOBYTE(v92) = *(v1 + 48);
    started = _s15SafetyMonitorUI0aB11UIUtilitiesC28transcriptWorkoutStartString8userTypeSSAA04UserJ0O_tFZ_0(&v92);
    v32 = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = started;
    v93 = v32;

    sub_264783EE4();
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = 0;
    v93 = 0;

LABEL_46:
    sub_264783EE4();

    return;
  }

  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v54 = sub_264783E14();
  v55 = sub_2647859D4();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v89 = v21;
    v58 = v57;
    v91 = v1;
    v92 = v57;
    *v56 = 136315650;
    type metadata accessor for TranscriptViewModel(0);

    v59 = sub_264785764();
    v61 = v8;
    v62 = sub_2646DF234(v59, v60, &v92);

    *(v56 + 4) = v62;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264796A00, &v92);
    *(v56 + 22) = 2048;
    *(v56 + 24) = v22;
    _os_log_impl(&dword_264605000, v54, v55, "%s, %s: Undefined message session type, %lu", v56, 0x20u);
    swift_arrayDestroy();
    v63 = v58;
    v21 = v89;
    MEMORY[0x266740650](v63, -1, -1);
    MEMORY[0x266740650](v56, -1, -1);

    (*(v90 + 8))(v15, v61);
  }

  else
  {

    (*(v90 + 8))(v15, v8);
  }

  LOBYTE(v92) = *(v1 + 48);
  v64 = _s15SafetyMonitorUI0aB11UIUtilitiesC23transcriptStartedString8userTypeSSAA04UserI0O_tFZ_0(&v92);
  v66 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v64;
  v93 = v66;

  sub_264783EE4();
  swift_getKeyPath();
  swift_getKeyPath();
  v92 = 0;
  v93 = 0;

  sub_264783EE4();

  *(v1 + 32) = 1;
}

void sub_2646AF184()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v201 = v1;
  v202 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v198 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v200 = &v187 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v197 = &v187 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v196 = &v187 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v187 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v187 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v187 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v187 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v187 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v187 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v187 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v187 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v187 - v35;
  v199 = *(v0 + 16);
  v37 = [swift_getObjCClassFromObject() messageType];
  if ((v37 - 6) < 0xF)
  {
LABEL_2:
    v38 = v0;
    v39 = v200;
    if (*(v0 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v40 = sub_264783E14();
    v41 = sub_2647859D4();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_8;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v203 = v38;
    v204 = v44;
    *v42 = 136315650;
    type metadata accessor for TranscriptViewModel(0);

    v45 = sub_264785764();
    v47 = sub_2646DF234(v45, v46, &v204);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
    *(v42 + 22) = 2112;
    v48 = v199;
    *(v42 + 24) = v199;
    *v43 = v48;
    v49 = v48;
    _os_log_impl(&dword_264605000, v40, v41, "%s, %s: Unable resolve map item for this type of message, %@", v42, 0x20u);
    sub_26460CD50(v43, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v43, -1, -1);
LABEL_7:
    swift_arrayDestroy();
    MEMORY[0x266740650](v44, -1, -1);
    MEMORY[0x266740650](v42, -1, -1);
LABEL_8:

LABEL_9:
    (*(v202 + 8))(v39, v201);
    return;
  }

  v190 = v34;
  v191 = v25;
  v192 = v36;
  v193 = v31;
  v51 = v196;
  v50 = v197;
  v194 = v28;
  v195 = v0;
  v188 = v19;
  v189 = v16;
  if (v37 <= 1)
  {
    v0 = v195;
    if (!v37)
    {
      goto LABEL_2;
    }

    if (v37 == 1)
    {
      objc_opt_self();
      v52 = v199;
      v53 = swift_dynamicCastObjCClass();
      v54 = v195;
      if (v53)
      {
        v55 = v53;
        v56 = v52;
        v57 = [v55 destinationMapItem];
        if (v57)
        {
          v58 = v57;
          v59 = sub_264783A14();
          v61 = v60;

          if ([v55 sessionType] == 2 || objc_msgSend(v55, sel_sessionType) == 3)
          {
            v62 = v192;
            if (*(v54 + 48))
            {
              sub_264783DE4();
            }

            else
            {
              sub_264783DF4();
            }

            v144 = sub_264783E14();
            v145 = sub_2647859F4();

            if (os_log_type_enabled(v144, v145))
            {
              v146 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              v200 = v56;
              v148 = v147;
              v203 = v54;
              v204 = v147;
              *v146 = 136315394;
              type metadata accessor for TranscriptViewModel(0);

              v149 = sub_264785764();
              v151 = sub_2646DF234(v149, v150, &v204);

              *(v146 + 4) = v151;
              *(v146 + 12) = 2080;
              *(v146 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
              _os_log_impl(&dword_264605000, v144, v145, "#Transcript, %s, %s: resolving map item for start message", v146, 0x16u);
              swift_arrayDestroy();
              v152 = v148;
              v56 = v200;
              MEMORY[0x266740650](v152, -1, -1);
              MEMORY[0x266740650](v146, -1, -1);
            }

            (*(v202 + 8))(v62, v201);
            sub_2646B09FC(v59, v61);

            sub_264655264(v59, v61);
            return;
          }

          v167 = v59;
          v168 = v61;
          goto LABEL_85;
        }

        v105 = v190;
        if (*(v54 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v160 = sub_264783E14();
        v161 = sub_2647859B4();

        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v203 = v54;
          v204 = v163;
          *v162 = 136315394;
          type metadata accessor for TranscriptViewModel(0);

          v164 = sub_264785764();
          v166 = sub_2646DF234(v164, v165, &v204);

          *(v162 + 4) = v166;
          *(v162 + 12) = 2080;
          *(v162 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
          _os_log_impl(&dword_264605000, v160, v161, "%s, %s: Destination map item is not available in the SMStartMessage", v162, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v163, -1, -1);
          MEMORY[0x266740650](v162, -1, -1);
        }

        (*(v202 + 8))(v105, v201);
      }

      else
      {
        v94 = v193;
        if (*(v195 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v116 = sub_264783E14();
        v117 = sub_2647859D4();

        if (os_log_type_enabled(v116, v117))
        {
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v203 = v54;
          v204 = v120;
          *v118 = 136315650;
          type metadata accessor for TranscriptViewModel(0);

          v121 = sub_264785764();
          v123 = sub_2646DF234(v121, v122, &v204);

          *(v118 + 4) = v123;
          *(v118 + 12) = 2080;
          *(v118 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
          *(v118 + 22) = 2112;
          v124 = v199;
          *(v118 + 24) = v199;
          *v119 = v124;
          v125 = v124;
          _os_log_impl(&dword_264605000, v116, v117, "%s, %s: Unable to create start message from message, %@", v118, 0x20u);
          sub_26460CD50(v119, &qword_27FF779D0, &qword_26478A9A0);
          MEMORY[0x266740650](v119, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v120, -1, -1);
          MEMORY[0x266740650](v118, -1, -1);
        }

        (*(v202 + 8))(v94, v201);
      }

      return;
    }

LABEL_34:
    v86 = v37;
    v87 = v195;
    v39 = v198;
    if (*(v195 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v40 = sub_264783E14();
    v88 = sub_2647859D4();

    if (!os_log_type_enabled(v40, v88))
    {
      goto LABEL_8;
    }

    v42 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v203 = v87;
    v204 = v44;
    *v42 = 136315650;
    type metadata accessor for TranscriptViewModel(0);

    v89 = sub_264785764();
    v91 = sub_2646DF234(v89, v90, &v204);

    *(v42 + 4) = v91;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
    *(v42 + 22) = 2048;
    *(v42 + 24) = v86;
    _os_log_impl(&dword_264605000, v40, v88, "%s, %s: Undefined message type, %lu", v42, 0x20u);
    goto LABEL_7;
  }

  if (v37 != 2)
  {
    if (v37 != 3)
    {
      goto LABEL_34;
    }

    objc_opt_self();
    v63 = v199;
    v64 = swift_dynamicCastObjCClass();
    v65 = v195;
    v66 = *(v195 + 48);
    if (!v64)
    {
      v95 = v50;
      if (v66)
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v126 = sub_264783E14();
      v127 = sub_2647859D4();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = v63;
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v203 = v65;
        v204 = v131;
        *v128 = 136315650;
        type metadata accessor for TranscriptViewModel(0);

        v132 = sub_264785764();
        v134 = sub_2646DF234(v132, v133, &v204);

        *(v128 + 4) = v134;
        *(v128 + 12) = 2080;
        *(v128 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
        *(v128 + 22) = 2112;
        *(v128 + 24) = v129;
        *v130 = v129;
        v135 = v129;
        _os_log_impl(&dword_264605000, v126, v127, "%s, %s: Unable to create key release message from message, %@", v128, 0x20u);
        sub_26460CD50(v130, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v130, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266740650](v131, -1, -1);
        MEMORY[0x266740650](v128, -1, -1);
      }

      (*(v202 + 8))(v95, v201);
      return;
    }

    v67 = v64;
    v68 = v63;
    if (!v66)
    {
      sub_264783DF4();

      v96 = sub_264783E14();
      v97 = sub_2647859B4();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v203 = v65;
        v204 = v99;
        *v98 = 136315394;
        type metadata accessor for TranscriptViewModel(0);

        v100 = sub_264785764();
        v102 = sub_2646DF234(v100, v101, &v204);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2080;
        *(v98 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
        _os_log_impl(&dword_264605000, v96, v97, "#Transcript, %s, %s: not attempting to resolve map item for key release message for the initiator", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v99, -1, -1);
        MEMORY[0x266740650](v98, -1, -1);
      }

      (*(v202 + 8))(v51, v201);
      return;
    }

    if ([v67 sessionType] == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v204);

      v69 = v204;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v204);

      v70 = v204;
      if (v204)
      {
        v71 = [v204 destinationMapItem];

        if (v71)
        {
          v72 = sub_264783A14();
          v74 = v73;

          v75 = v188;
          if (*(v65 + 48))
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v180 = sub_264783E14();
          v181 = sub_2647859F4();

          if (os_log_type_enabled(v180, v181))
          {
            v182 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v203 = v65;
            v204 = v183;
            *v182 = 136315394;
            type metadata accessor for TranscriptViewModel(0);

            v184 = sub_264785764();
            v186 = sub_2646DF234(v184, v185, &v204);

            *(v182 + 4) = v186;
            *(v182 + 12) = 2080;
            *(v182 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
            _os_log_impl(&dword_264605000, v180, v181, "#Transcript, %s, %s: resolving map item for key release message", v182, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v183, -1, -1);
            MEMORY[0x266740650](v182, -1, -1);

            (*(v202 + 8))(v188, v201);
          }

          else
          {

            (*(v202 + 8))(v75, v201);
          }

          sub_2646B09FC(v72, v74);
          sub_264655264(v72, v74);

          return;
        }
      }

      v39 = v189;
      if (*(v65 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v169 = sub_264783E14();
      v170 = sub_2647859D4();

      if (!os_log_type_enabled(v169, v170))
      {
LABEL_97:

        goto LABEL_9;
      }

      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v203 = v65;
      v204 = v172;
      *v171 = 136315394;
      type metadata accessor for TranscriptViewModel(0);

      v177 = sub_264785764();
      v179 = sub_2646DF234(v177, v178, &v204);

      *(v171 + 4) = v179;
      *(v171 + 12) = 2080;
      *(v171 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
      v176 = "#Transcript, %s, %s: no map item to resolve for key release message";
    }

    else
    {
      v39 = v13;
      if (*(v65 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v169 = sub_264783E14();
      v170 = sub_2647859B4();

      if (!os_log_type_enabled(v169, v170))
      {
        goto LABEL_97;
      }

      v171 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v203 = v65;
      v204 = v172;
      *v171 = 136315394;
      type metadata accessor for TranscriptViewModel(0);

      v173 = sub_264785764();
      v175 = sub_2646DF234(v173, v174, &v204);

      *(v171 + 4) = v175;
      *(v171 + 12) = 2080;
      *(v171 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
      v176 = "#Transcript, %s, %s: not attempting to resolve map item for non-destination session types";
    }

    _os_log_impl(&dword_264605000, v169, v170, v176, v171, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v172, -1, -1);
    MEMORY[0x266740650](v171, -1, -1);
    goto LABEL_97;
  }

  objc_opt_self();
  v76 = v199;
  v77 = swift_dynamicCastObjCClass();
  if (v77)
  {
    v78 = v77;
    v79 = v76;
    v80 = [v78 destinationMapItem];
    if (v80)
    {
      v81 = v80;
      v82 = sub_264783A14();
      v84 = v83;

      if ([v78 sessionType] == 2 || objc_msgSend(v78, sel_sessionType) == 3)
      {
        v85 = v194;
        if (*(v195 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v136 = v195;

        v137 = sub_264783E14();
        v138 = sub_2647859F4();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v203 = v136;
          v204 = v140;
          *v139 = 136315394;
          type metadata accessor for TranscriptViewModel(0);

          v141 = sub_264785764();
          v143 = sub_2646DF234(v141, v142, &v204);

          *(v139 + 4) = v143;
          *(v139 + 12) = 2080;
          *(v139 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
          _os_log_impl(&dword_264605000, v137, v138, "#Transcript, %s, %s: resolving map item for end message", v139, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v140, -1, -1);
          MEMORY[0x266740650](v139, -1, -1);

          (*(v202 + 8))(v194, v201);
        }

        else
        {

          (*(v202 + 8))(v85, v201);
        }

        sub_2646B09FC(v82, v84);

        sub_264655264(v82, v84);
        return;
      }

      v167 = v82;
      v168 = v84;
LABEL_85:

      sub_264655264(v167, v168);
      return;
    }

    v103 = v195;
    v104 = v191;
    if (*(v195 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v153 = sub_264783E14();
    v154 = sub_2647859B4();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v203 = v103;
      v204 = v156;
      *v155 = 136315394;
      type metadata accessor for TranscriptViewModel(0);

      v157 = sub_264785764();
      v159 = sub_2646DF234(v157, v158, &v204);

      *(v155 + 4) = v159;
      *(v155 + 12) = 2080;
      *(v155 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
      _os_log_impl(&dword_264605000, v153, v154, "%s, %s: Destination map item is not available in the SMEndMessage", v155, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v156, -1, -1);
      MEMORY[0x266740650](v155, -1, -1);
    }

    (*(v202 + 8))(v104, v201);
  }

  else
  {
    v92 = v195;
    v93 = v22;
    if (*(v195 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v106 = sub_264783E14();
    v107 = sub_2647859D4();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v110 = v76;
      v111 = swift_slowAlloc();
      v203 = v92;
      v204 = v111;
      *v108 = 136315650;
      type metadata accessor for TranscriptViewModel(0);

      v112 = sub_264785764();
      v114 = sub_2646DF234(v112, v113, &v204);

      *(v108 + 4) = v114;
      *(v108 + 12) = 2080;
      *(v108 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264796AE0, &v204);
      *(v108 + 22) = 2112;
      *(v108 + 24) = v110;
      *v109 = v110;
      v115 = v110;
      _os_log_impl(&dword_264605000, v106, v107, "%s, %s: Unable to create end message from message, %@", v108, 0x20u);
      sub_26460CD50(v109, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v109, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v111, -1, -1);
      MEMORY[0x266740650](v108, -1, -1);
    }

    (*(v202 + 8))(v93, v201);
  }
}

void sub_2646B09FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v61 = a1;
  v62 = a2;
  v56 = sub_264785594();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v65 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2647855C4();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2647855A4();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - v12;
  v14 = sub_264783B94();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783B84();
  v18 = sub_264783B74();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  if (qword_27FF75000 != -1)
  {
    swift_once();
  }

  v21 = *(v3 + 16);
  v22 = *(qword_27FF807E0 + 16);
  v23 = [v21 messageID];
  if (!v23)
  {
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v22 objectForKey_];

  if (v25)
  {
    v26 = v25[2];
    if (v18 == v25[3] && v20 == v25[4] || (sub_264785E84() & 1) != 0)
    {
      v27 = v26;

      if (*(v3 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v28 = sub_264783E14();
      v29 = sub_2647859F4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v69 = v3;
        aBlock[0] = v31;
        *v30 = 136315394;
        type metadata accessor for TranscriptViewModel(0);

        v32 = sub_264785764();
        v34 = sub_2646DF234(v32, v33, aBlock);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
        _os_log_impl(&dword_264605000, v28, v29, "#Transcript, %s, %s: using cached map item", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v31, -1, -1);
        MEMORY[0x266740650](v30, -1, -1);
      }

      (*(v67 + 8))(v13, v68);
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v27;
      v35 = v27;

      sub_264783EE4();
      sub_2646AAE18();

      return;
    }
  }

  if (*(v3 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v36 = sub_264783E14();
  v37 = sub_2647859F4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v69 = v3;
    aBlock[0] = v55;
    *v38 = 136315650;
    type metadata accessor for TranscriptViewModel(0);

    v39 = sub_264785764();
    v41 = sub_2646DF234(v39, v40, aBlock);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
    *(v38 + 22) = 2080;
    v42 = v18;
    *(v38 + 24) = sub_2646DF234(v18, v20, aBlock);
    _os_log_impl(&dword_264605000, v36, v37, "#Transcript, %s, %s: will attempt to hydrate map item,currentLocaleIdentifier,%s", v38, 0x20u);
    v43 = v55;
    swift_arrayDestroy();
    MEMORY[0x266740650](v43, -1, -1);
    MEMORY[0x266740650](v38, -1, -1);

    (*(v67 + 8))(v11, v68);
    v45 = v61;
    v44 = v62;
    v46 = v60;
  }

  else
  {

    (*(v67 + 8))(v11, v68);
    v45 = v61;
    v44 = v62;
    v46 = v60;
    v42 = v18;
  }

  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v47 = v59;
  v48 = v57;
  (*(v59 + 104))(v57, *MEMORY[0x277D851B8], v46);
  v49 = sub_264785A64();
  (*(v47 + 8))(v48, v46);
  v50 = swift_allocObject();
  v50[2] = v45;
  v50[3] = v44;
  v50[4] = v3;
  v50[5] = v42;
  v50[6] = v20;
  aBlock[4] = sub_2646B65E0;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_264659F60;
  aBlock[3] = &block_descriptor_8;
  v51 = _Block_copy(aBlock);

  sub_26465944C(v45, v44);
  v52 = v63;
  sub_2647855B4();
  v69 = MEMORY[0x277D84F90];
  sub_2646B6550(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
  v53 = v65;
  v54 = v56;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v52, v53, v51);
  _Block_release(v51);

  (*(v58 + 8))(v53, v54);
  (*(v64 + 8))(v52, v66);
}

void sub_2646B137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_opt_self();
  v9 = sub_264783A04();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v12[4] = sub_2646B6648;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26464CCBC;
  v12[3] = &block_descriptor_100;
  v11 = _Block_copy(v12);

  [v8 _mapItemFromHandle_completionHandler_];
  _Block_release(v11);
}

void sub_2646B14A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v64 = a5;
  v8 = sub_264785594();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2647855C4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783E24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  if (a2)
  {
    if (*(a3 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v18 = sub_264783E14();
    v19 = sub_2647859D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v20 = 136315394;
      v66 = a3;
      type metadata accessor for TranscriptViewModel(0);
      v56 = v15;

      v21 = sub_264785764();
      v23 = v12;
      v24 = v11;
      v25 = sub_2646DF234(v21, v22, aBlock);
      v15 = v56;

      *(v20 + 4) = v25;
      v11 = v24;
      v12 = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
      _os_log_impl(&dword_264605000, v18, v19, "#Transcript, %s, %s: Error resolving map item from map data handle", v20, 0x16u);
      v26 = v55;
      swift_arrayDestroy();
      MEMORY[0x266740650](v26, -1, -1);
      MEMORY[0x266740650](v20, -1, -1);

      v27 = v23;
    }

    else
    {

      v27 = v12;
    }

    (*(v27 + 8))(v17, v11);
  }

  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v28 = a1;
    v29 = sub_264785A44();
    v30 = swift_allocObject();
    *(v30 + 16) = a3;
    *(v30 + 24) = a1;
    aBlock[4] = sub_2646B6694;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_106;
    v31 = _Block_copy(aBlock);

    v32 = v28;

    v33 = v57;
    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2646B6550(&qword_27FF75CD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90, MEMORY[0x277D83970]);
    v34 = v59;
    v35 = v62;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v33, v34, v31);
    _Block_release(v31);

    (*(v61 + 8))(v34, v35);
    (*(v58 + 8))(v33, v60);
    type metadata accessor for MessageInfo();
    v36 = swift_allocObject();
    v37 = v63;
    v38 = v64;
    v36[2] = v32;
    v36[3] = v37;
    v36[4] = v38;
    v39 = qword_27FF75000;
    v40 = v32;

    if (v39 != -1)
    {
      swift_once();
    }

    v41 = *(a3 + 16);
    v42 = *(qword_27FF807E0 + 16);
    v43 = [v41 messageID];
    if (v43)
    {
      v44 = v43;
      [v42 setObject:v36 forKey:v43];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (*(a3 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v45 = sub_264783E14();
    v46 = sub_2647859D4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v15;
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v47 = 136315650;
      v66 = a3;
      type metadata accessor for TranscriptViewModel(0);

      v51 = sub_264785764();
      v53 = sub_2646DF234(v51, v52, aBlock);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264794670, aBlock);
      *(v47 + 22) = 2112;
      *(v47 + 24) = 0;
      *v48 = 0;
      _os_log_impl(&dword_264605000, v45, v46, "#Transcript, %s, %s: Hydrated map item in invalid,map item,%@", v47, 0x20u);
      sub_26460CD50(v48, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v48, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v50, -1, -1);
      MEMORY[0x266740650](v47, -1, -1);

      (*(v12 + 8))(v49, v11);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }
  }
}

uint64_t sub_2646B1C88(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;

  sub_264783EE4();
  return sub_2646AAE18();
}

uint64_t sub_2646B1D04()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v228 = v2;
  v229 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v224 = &v203 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v221 = &v203 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v216 = &v203 - v12;
  MEMORY[0x28223BE20](v11);
  v212 = &v203 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v217 = &v203 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v203 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v225 = &v203 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v222 = &v203 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v211 = &v203 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v215 = &v203 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v208 = &v203 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v209 = &v203 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v203 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v203 - v38;
  v40 = sub_264783AF4();
  v41 = *(v40 - 8);
  v226 = v40;
  v227 = v41;
  v42 = MEMORY[0x28223BE20](v40);
  v219 = &v203 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v218 = &v203 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v203 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v210 = &v203 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v203 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v203 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v220 = &v203 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v214 = &v203 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v207 = &v203 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v213 = &v203 - v64;
  MEMORY[0x28223BE20](v63);
  v223 = &v203 - v65;
  v66 = *(v1 + 16);
  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (!v67)
  {
    if (*(v1 + 48))
    {
      sub_264783DE4();
    }

    else
    {
      sub_264783DF4();
    }

    v84 = sub_264783E14();
    v85 = sub_2647859D4();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v230[0] = v88;
      *v86 = 136315650;
      v231[0] = v1;
      type metadata accessor for TranscriptViewModel(0);

      v89 = sub_264785764();
      v91 = sub_2646DF234(v89, v90, v230);

      *(v86 + 4) = v91;
      *(v86 + 12) = 2080;
      *(v86 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v230);
      *(v86 + 22) = 2112;
      *(v86 + 24) = v66;
      *v87 = v66;
      v92 = v66;
      _os_log_impl(&dword_264605000, v84, v85, "%s, %s: Unable to create start message from message, %@", v86, 0x20u);
      sub_26460CD50(v87, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v87, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266740650](v88, -1, -1);
      MEMORY[0x266740650](v86, -1, -1);
    }

    (*(v229 + 8))(v6, v228);
    return 0;
  }

  v204 = v17;
  v68 = v67;
  v69 = v66;
  v206 = v68;
  v70 = [v68 sessionType];
  if ((*(v1 + 48) & 1) == 0)
  {
    v78 = v70;
    v225 = v1;
    v79 = v223;
    sub_264783AE4();
    if ((v78 - 2) < 2)
    {
      v216 = v69;
      swift_getKeyPath();
      swift_getKeyPath();
      v94 = v225;
      sub_264783ED4(v230);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v230);

      v95 = v230[0];
      v96 = v226;
      if (v230[0])
      {
        v97 = [v230[0] estimatedEndDate];

        if (v97)
        {
          sub_264783AC4();

          v98 = 0;
        }

        else
        {
          v98 = 1;
        }

        v166 = v227;
        v150 = *(v227 + 56);
        v150(v37, v98, 1, v96);
        sub_26460CF84(v37, v39);
        v167 = v96;
        v168 = *(v166 + 48);
        if (v168(v39, 1, v96) != 1)
        {
          v176 = *(v166 + 32);
          v176(v213, v39, v167);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4(v230);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4(v230);

          v177 = v230[0];
          if (v230[0])
          {
            v178 = [v230[0] coarseEstimatedEndDate];

            v224 = v176;
            if (v178)
            {
              v179 = v208;
              sub_264783AC4();

              v180 = 0;
              v181 = v209;
            }

            else
            {
              v180 = 1;
              v181 = v209;
              v179 = v208;
            }

            v96 = v226;
            v150(v179, v180, 1, v226);
            sub_26460CF84(v179, v181);
            if (v168(v181, 1, v96) != 1)
            {
              v113 = v227;
              (*(v227 + 8))(v213, v96);
              v188 = v207;
              (v224)(v207, v181, v96);
              v117 = v188;
              v94 = v225;
              v79 = v223;
              goto LABEL_83;
            }
          }

          else
          {
            v181 = v209;
            v150(v209, 1, 1, v167);
            v96 = v167;
          }

          sub_26460CD50(v181, &qword_27FF756B8, &qword_26478AC90);
          v113 = v227;
          v94 = v225;
          v79 = v223;
          v144 = v221;
          v117 = v213;
LABEL_84:
          (*(v113 + 40))(v79, v117, v96);
          v93 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
          v190 = v189;
          if (v94[48])
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v191 = sub_264783E14();
          v192 = sub_2647859F4();

          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            v227 = swift_slowAlloc();
            v231[0] = v227;
            *v193 = 136315906;
            v230[0] = v94;
            type metadata accessor for TranscriptViewModel(0);

            v194 = sub_264785764();
            v196 = v113;
            v197 = sub_2646DF234(v194, v195, v231);

            *(v193 + 4) = v197;
            *(v193 + 12) = 2080;
            *(v193 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v231);
            *(v193 + 22) = 2080;
            swift_beginAccess();
            sub_2646B6550(&qword_27FF773E0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v198 = sub_264785E44();
            v200 = sub_2646DF234(v198, v199, v231);

            *(v193 + 24) = v200;
            *(v193 + 32) = 2080;
            *(v193 + 34) = sub_2646DF234(v93, v190, v231);
            _os_log_impl(&dword_264605000, v191, v192, "%s, %s: originator, eta: %s, etaString: %s", v193, 0x2Au);
            v201 = v227;
            swift_arrayDestroy();
            MEMORY[0x266740650](v201, -1, -1);
            MEMORY[0x266740650](v193, -1, -1);

            (*(v229 + 8))(v221, v228);
            (*(v196 + 8))(v79, v96);
          }

          else
          {

            (*(v229 + 8))(v144, v228);
            (*(v113 + 8))(v79, v96);
          }

          return v93;
        }

        v113 = v166;
        v94 = v225;
        v79 = v223;
      }

      else
      {
        v113 = v227;
        v150 = *(v227 + 56);
        v150(v39, 1, 1, v226);
      }

      v144 = v221;
      sub_26460CD50(v39, &qword_27FF756B8, &qword_26478AC90);
      v169 = v206;
      v170 = [v206 coarseEstimatedEndTime];
      if (v170)
      {
        v171 = v220;
        v172 = v170;
        sub_264783AC4();

        v173 = *(v113 + 32);
        v174 = v215;
        v173(v215, v171, v96);
        v150(v174, 0, 1, v96);
        v175 = v214;
        v173(v214, v174, v96);
      }

      else
      {
        v182 = v215;
        v150(v215, 1, 1, v96);
        v183 = [v169 estimatedEndTime];
        v175 = v214;
        sub_264783AC4();

        if ((*(v113 + 48))(v182, 1, v96) != 1)
        {
          v184 = v182;
LABEL_76:
          sub_26460CD50(v184, &qword_27FF756B8, &qword_26478AC90);
        }
      }
    }

    else
    {
      if (v78 != 1)
      {
        v80 = v227;
        if (v78 == 4)
        {
          v81 = v225;
          v82 = v69;
          v83 = v212;
          if (v225[48])
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v151 = sub_264783E14();
          v152 = sub_2647859D4();

          if (os_log_type_enabled(v151, v152))
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v230[0] = v154;
            *v153 = 136315394;
            v231[0] = v81;
            type metadata accessor for TranscriptViewModel(0);

            v155 = sub_264785764();
            v157 = sub_2646DF234(v155, v156, v230);

            *(v153 + 4) = v157;
            *(v153 + 12) = 2080;
            *(v153 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v230);
            _os_log_impl(&dword_264605000, v151, v152, "%s, %s: Workout bound session does not support eta", v153, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v154, -1, -1);
            MEMORY[0x266740650](v153, -1, -1);
          }

          (*(v229 + 8))(v83, v228);
          (*(v80 + 8))(v79, v226);
        }

        else
        {
          v118 = v69;
          v119 = v216;
          if (v225[48])
          {
            sub_264783DE4();
          }

          else
          {
            sub_264783DF4();
          }

          v158 = v225;

          v159 = sub_264783E14();
          v160 = sub_2647859D4();

          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v230[0] = v162;
            *v161 = 136315650;
            v231[0] = v158;
            type metadata accessor for TranscriptViewModel(0);

            v163 = sub_264785764();
            v165 = sub_2646DF234(v163, v164, v230);

            *(v161 + 4) = v165;
            *(v161 + 12) = 2080;
            *(v161 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v230);
            *(v161 + 22) = 2048;
            *(v161 + 24) = v78;
            _os_log_impl(&dword_264605000, v159, v160, "%s, %s: Undefined session type, %lu", v161, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v162, -1, -1);
            MEMORY[0x266740650](v161, -1, -1);

            (*(v229 + 8))(v216, v228);
          }

          else
          {

            (*(v229 + 8))(v119, v228);
          }

          (*(v80 + 8))(v79, v226);
        }

        return 0;
      }

      v216 = v69;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v230);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v230);

      v112 = v230[0];
      v113 = v227;
      if (v230[0])
      {
        v114 = [v230[0] configuration];

        if (v114)
        {
          v115 = [v114 time];

          if (v115)
          {
            v116 = [v115 timeBound];

            sub_264783AC4();
            v96 = v226;
            (*(v113 + 32))(v56, v53, v226);
            v117 = v56;
            v94 = v225;
LABEL_83:
            v144 = v221;
            goto LABEL_84;
          }
        }
      }

      v142 = v206;
      v143 = [v206 coarseEstimatedEndTime];
      v144 = v221;
      if (v143)
      {
        v145 = v220;
        v146 = v143;
        sub_264783AC4();

        v147 = *(v113 + 32);
        v148 = v211;
        v96 = v226;
        v147(v211, v145, v226);
        (*(v113 + 56))(v148, 0, 1, v96);
        v149 = v210;
        v147(v210, v148, v96);
        v117 = v149;
        v94 = v225;
        goto LABEL_84;
      }

      v185 = v211;
      v96 = v226;
      (*(v113 + 56))(v211, 1, 1, v226);
      v186 = [v142 estimatedEndTime];
      v175 = v210;
      sub_264783AC4();

      v187 = (*(v113 + 48))(v185, 1, v96);
      v94 = v225;
      if (v187 != 1)
      {
        v184 = v185;
        goto LABEL_76;
      }
    }

    v117 = v175;
    goto LABEL_84;
  }

  v216 = v69;
  sub_264783AE4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v230);

  v71 = v230[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(v230);

  v72 = v230[0];
  v205 = v48;
  if (!v230[0])
  {
    v99 = v226;
    v74 = v227;
    v100 = *(v227 + 56);
    v100(v225, 1, 1, v226);
    v101 = v224;
    v76 = v222;
    goto LABEL_25;
  }

  v73 = [v230[0] coarseEstimatedEndDate];

  v74 = v227;
  v75 = v224;
  v76 = v222;
  if (v73)
  {
    sub_264783AC4();

    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  v100 = *(v74 + 56);
  v102 = v226;
  v100(v22, v77, 1, v226);
  v103 = v22;
  v99 = v102;
  v104 = v225;
  sub_26460CF84(v103, v225);
  v105 = *(v74 + 48);
  if (v105(v104, 1, v99) == 1)
  {
    v101 = v75;
    v48 = v205;
LABEL_25:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v230);

    v106 = v230[0];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(v230);

    v107 = v230[0];
    if (v230[0])
    {
      v108 = [v230[0] estimatedEndDate];

      if (v108)
      {
        v109 = v217;
        sub_264783AC4();

        v110 = 0;
        v111 = v225;
      }

      else
      {
        v110 = 1;
        v111 = v225;
        v109 = v217;
      }

      v100(v109, v110, 1, v99);
      sub_26460CF84(v109, v76);
    }

    else
    {
      v100(v76, 1, 1, v99);
      v111 = v225;
    }

    v105 = *(v74 + 48);
    if (v105(v111, 1, v99) != 1)
    {
      sub_26460CD50(v111, &qword_27FF756B8, &qword_26478AC90);
    }

    goto LABEL_40;
  }

  (*(v74 + 32))(v76, v104, v99);
  v100(v76, 0, 1, v99);
  v101 = v75;
  v48 = v205;
LABEL_40:
  if (v105(v76, 1, v99) == 1)
  {
    sub_26460CD50(v76, &qword_27FF756B8, &qword_26478AC90);
    v120 = v206;
    v121 = [v206 coarseEstimatedEndTime];
    if (v121)
    {
      v122 = v220;
      v123 = v121;
      sub_264783AC4();

      v124 = *(v74 + 32);
      v125 = v204;
      v124(v204, v122, v99);
      v100(v125, 0, 1, v99);
      v126 = v219;
      v124(v219, v125, v99);
    }

    else
    {
      v140 = v204;
      v100(v204, 1, 1, v99);
      v141 = [v120 estimatedEndTime];
      v126 = v219;
      sub_264783AC4();

      if (v105(v140, 1, v99) != 1)
      {
        sub_26460CD50(v140, &qword_27FF756B8, &qword_26478AC90);
      }
    }
  }

  else
  {
    v126 = v218;
    (*(v74 + 32))(v218, v76, v99);
  }

  (*(v74 + 40))(v48, v126, v99);
  v93 = _s15SafetyMonitorUI0aB11UIUtilitiesC10presentETA3forSS10Foundation4DateV_tFZ_0();
  v128 = v127;
  if (*(v1 + 48))
  {
    sub_264783DE4();
  }

  else
  {
    sub_264783DF4();
  }

  v129 = sub_264783E14();
  v130 = sub_2647859F4();

  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v231[0] = v132;
    *v131 = 136315906;
    v230[0] = v1;
    type metadata accessor for TranscriptViewModel(0);

    v133 = sub_264785764();
    v135 = v74;
    v136 = sub_2646DF234(v133, v134, v231);

    *(v131 + 4) = v136;
    *(v131 + 12) = 2080;
    *(v131 + 14) = sub_2646DF234(0x6E69727453617465, 0xEB00000000292867, v231);
    *(v131 + 22) = 2080;
    swift_beginAccess();
    sub_2646B6550(&qword_27FF773E0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v137 = sub_264785E44();
    v139 = sub_2646DF234(v137, v138, v231);

    *(v131 + 24) = v139;
    *(v131 + 32) = 2080;
    *(v131 + 34) = sub_2646DF234(v93, v128, v231);
    _os_log_impl(&dword_264605000, v129, v130, "%s, %s: receiver, eta: %s, etaString: %s", v131, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v132, -1, -1);
    MEMORY[0x266740650](v131, -1, -1);

    (*(v229 + 8))(v224, v228);
    (*(v135 + 8))(v205, v99);
  }

  else
  {

    (*(v229 + 8))(v101, v228);
    (*(v74 + 8))(v48, v99);
  }

  return v93;
}

uint64_t sub_2646B395C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v150 = v2;
  v151 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v142 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v142 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v142 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v142 - v16;
  v18 = sub_264783B64();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v148 = &v142 - v23;
  v24 = *(v1 + 16);
  v149 = [swift_getObjCClassFromObject() messageType];
  if (*(v1 + 48) == 1)
  {
    v145 = v17;
    v25 = v24;
    v26 = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v153);

    v27 = v153;
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v1;
    sub_264783ED4(&v153);

    v29 = v153;
    if (v153)
    {
      v30 = [v153 sessionID];
      v31 = v148;
      sub_264783B44();

      v32 = [v25 sessionID];
      sub_264783B44();

      LOBYTE(v32) = sub_264783B34();
      v33 = v19[1];
      v33(v22, v26);
      v33(v31, v26);
      v147 = v26;
      if (v32)
      {
        v34 = [v29 sessionState];
        v35 = v28[48];
        v142 = v25;
        v36 = v145;
        if (v35)
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v83 = v29;
        v84 = sub_264783E14();
        v85 = sub_2647859F4();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v145 = v83;
          v87 = v86;
          v144 = swift_slowAlloc();
          v152 = v28;
          v153 = v144;
          *v87 = 136316674;
          type metadata accessor for TranscriptViewModel(0);
          LODWORD(v143) = v85;

          v88 = sub_264785764();
          v90 = sub_2646DF234(v88, v89, &v153);

          *(v87 + 4) = v90;
          *(v87 + 12) = 2080;
          *(v87 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v153);
          *(v87 + 22) = 2080;
          if (v28[48])
          {
            v91 = 82;
          }

          else
          {
            v91 = 73;
          }

          v92 = sub_2646DF234(v91, 0xE100000000000000, &v153);

          *(v87 + 24) = v92;
          *(v87 + 32) = 2048;
          *(v87 + 34) = v149;
          *(v87 + 42) = 2080;
          v93 = [objc_opt_self() convertSessionStateToString_];
          v94 = sub_264785724();
          v149 = v34;
          v96 = v95;

          v97 = sub_2646DF234(v94, v96, &v153);

          *(v87 + 44) = v97;
          *(v87 + 52) = 2080;
          v98 = [v145 sessionID];
          v99 = v148;
          sub_264783B44();

          v100 = sub_264783B04();
          v102 = v101;
          v103 = v147;
          v33(v99, v147);
          v104 = sub_2646DF234(v100, v102, &v153);

          *(v87 + 54) = v104;
          *(v87 + 62) = 2080;
          v105 = [v142 sessionID];
          sub_264783B44();

          v106 = sub_264783B04();
          v108 = v107;
          v33(v99, v103);
          v34 = v149;
          v109 = sub_2646DF234(v106, v108, &v153);

          *(v87 + 64) = v109;
          _os_log_impl(&dword_264605000, v84, v143, "%s, %s: userType: %s, messageType: %lu, sessionState: %s, receiverSessionStatus.sessionID, %s, message.sessionID: %s", v87, 0x48u);
          v110 = v144;
          swift_arrayDestroy();
          MEMORY[0x266740650](v110, -1, -1);
          MEMORY[0x266740650](v87, -1, -1);
        }

        else
        {
        }

        (*(v151 + 8))(v36, v150);
        if (v34 < 0xA)
        {
          v60 = 0x33Cu >> v34;
          return v60 & 1;
        }
      }

      else
      {
        v61 = v28;
        if (v28[48])
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v111 = v29;
        v112 = sub_264783E14();
        v113 = sub_2647859B4();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = v25;
          v115 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v152 = v61;
          v153 = v149;
          *v115 = 136315906;
          type metadata accessor for TranscriptViewModel(0);
          LODWORD(v145) = v113;

          v116 = sub_264785764();
          v118 = sub_2646DF234(v116, v117, &v153);

          *(v115 + 4) = v118;
          *(v115 + 12) = 2080;
          *(v115 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v153);
          *(v115 + 22) = 2080;
          v119 = [v111 sessionID];
          v120 = v148;
          sub_264783B44();

          v121 = sub_264783B04();
          v123 = v122;
          v146 = v111;
          v124 = v147;
          v33(v120, v147);
          v125 = sub_2646DF234(v121, v123, &v153);

          *(v115 + 24) = v125;
          *(v115 + 32) = 2080;
          v126 = [v114 sessionID];
          sub_264783B44();

          v127 = sub_264783B04();
          v129 = v128;
          v33(v120, v124);
          v130 = sub_2646DF234(v127, v129, &v153);

          *(v115 + 34) = v130;
          _os_log_impl(&dword_264605000, v112, v145, "%s, %s: SessionID mismatch, hiding Details button. receiverSessionStatus.sessionID, %s, message.sessionID: %s", v115, 0x2Au);
          v131 = v149;
          swift_arrayDestroy();
          MEMORY[0x266740650](v131, -1, -1);
          MEMORY[0x266740650](v115, -1, -1);
        }

        else
        {
        }

        (*(v151 + 8))(v15, v150);
      }
    }

    else
    {
      v59 = v1;
      if (*(v1 + 48))
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v62 = sub_264783E14();
      v63 = sub_2647859D4();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = v151;
        v68 = v66;
        v152 = v59;
        v153 = v66;
        *v64 = 136315650;
        type metadata accessor for TranscriptViewModel(0);

        v69 = sub_264785764();
        v71 = sub_2646DF234(v69, v70, &v153);

        *(v64 + 4) = v71;
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v153);
        *(v64 + 22) = 2112;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v152);

        v72 = v152;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4(&v152);

        v73 = v152;
        *(v64 + 24) = v152;
        *v65 = v73;
        _os_log_impl(&dword_264605000, v62, v63, "%s, %s: receiverSessionStatus unavailable, %@", v64, 0x20u);
        sub_26460CD50(v65, &qword_27FF779D0, &qword_26478A9A0);
        MEMORY[0x266740650](v65, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266740650](v68, -1, -1);
        MEMORY[0x266740650](v64, -1, -1);

        (*(v67 + 8))(v12, v150);
      }

      else
      {

        (*(v151 + 8))(v12, v150);
      }
    }

LABEL_46:
    LOBYTE(v60) = 0;
    return v60 & 1;
  }

  sub_264783DF4();

  v37 = sub_264783E14();
  v38 = sub_2647859F4();

  v39 = os_log_type_enabled(v37, v38);
  v146 = v1;
  v147 = v18;
  v144 = v19;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v152 = v1;
    v153 = v41;
    *v40 = 136315906;
    type metadata accessor for TranscriptViewModel(0);
    v145 = v6;
    v143 = v22;

    v42 = sub_264785764();
    v44 = v24;
    v45 = v1;
    v46 = sub_2646DF234(v42, v43, &v153);
    v47 = v150;
    v48 = v151;

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    *(v40 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v153);
    *(v40 + 22) = 2080;
    v49 = *(v45 + 48);
    v24 = v44;
    if (v49)
    {
      v50 = 82;
    }

    else
    {
      v50 = 73;
    }

    v51 = sub_2646DF234(v50, 0xE100000000000000, &v153);

    *(v40 + 24) = v51;
    *(v40 + 32) = 2048;
    *(v40 + 34) = v149;
    _os_log_impl(&dword_264605000, v37, v38, "%s, %s: userType: %s, messageType: %lu", v40, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v41, -1, -1);
    MEMORY[0x266740650](v40, -1, -1);

    v52 = v48;
    v22 = v143;
    v53 = *(v52 + 8);
    v54 = v47;
    v6 = v145;
    v53(v9, v54);
  }

  else
  {

    v53 = *(v151 + 8);
    v53(v9, v150);
  }

  v55 = sub_264785714();
  v56 = MGGetSInt32Answer();

  if (v56 != 6 && v56 != 1)
  {
    goto LABEL_46;
  }

  if ([objc_opt_self() zelkovaRemoteControlEnabled])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = v146;
    sub_264783ED4(&v153);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v153);

    v58 = v153 ^ 1;
  }

  else
  {
    v58 = 0;
    v57 = v146;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v153);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4(&v153);

  LOBYTE(v60) = 0;
  if (((v153 | v58) & 1) != 0 && v149)
  {
    if (v149 != 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v153);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v153);

      v74 = v153;
      if (v153)
      {
        v75 = [v153 configuration];
        if (v75)
        {
          v76 = v75;
          v77 = [v75 sessionID];
          v78 = v148;
          sub_264783B44();

          v79 = [v24 sessionID];
          sub_264783B44();

          LOBYTE(v79) = sub_264783B34();
          v80 = v144[1];
          v81 = v147;
          v80(v22, v147);
          v80(v78, v81);
          v82 = [v74 isActiveState];

          LOBYTE(v60) = v82 & v79;
          return v60 & 1;
        }
      }

      if (v57[48])
      {
        sub_264783DE4();
      }

      else
      {
        sub_264783DF4();
      }

      v133 = sub_264783E14();
      v134 = sub_2647859F4();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = v6;
        v137 = swift_slowAlloc();
        v152 = v57;
        v153 = v137;
        *v135 = 136315394;
        type metadata accessor for TranscriptViewModel(0);

        v138 = sub_264785764();
        v140 = sub_2646DF234(v138, v139, &v153);

        *(v135 + 4) = v140;
        *(v135 + 12) = 2080;
        *(v135 + 14) = sub_2646DF234(0xD000000000000016, 0x8000000264796880, &v153);
        _os_log_impl(&dword_264605000, v133, v134, "%s, %s: Session state information missing - hiding view button", v135, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v137, -1, -1);
        MEMORY[0x266740650](v135, -1, -1);

        v141 = v136;
      }

      else
      {

        v141 = v6;
      }

      v53(v141, v150);
      goto LABEL_46;
    }

    LOBYTE(v60) = sub_2646B4B8C();
  }

  return v60 & 1;
}

uint64_t sub_2646B4B8C()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v50 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = (&v50 - v13);
  v15 = sub_264783AF4();
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - v19;
  if (*(v1 + 64) == 2)
  {
    v53 = v9;
    v54 = v3;
    v56 = v18;
    v57 = v5;
    v58 = v17;
    v55 = v2;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v66);

    v21 = v66;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v66);

    v72[2] = v68;
    v72[3] = v69;
    v72[4] = v70;
    v72[5] = v71;
    v72[0] = v66;
    v72[1] = v67;
    if (v67)
    {
      sub_26460CD50(v72, &qword_27FF756F8, &qword_264787DF0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v66);

      v22 = v66;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v14);

      v23 = v58;
      if ((*(v58 + 48))(v14, 1, v15) == 1)
      {
        sub_26460CD50(v14, &qword_27FF756B8, &qword_26478AC90);
      }

      else
      {
        (*(v23 + 32))(v20, v14, v15);
        v24 = v56;
        sub_264783AD4();
        v25 = sub_264783A74();
        v26 = *(v23 + 8);
        v26(v24, v15);
        v26(v20, v15);
        if (v25)
        {
          return 1;
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v60);

    v28 = v60;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4(&v60);

    v68 = v62;
    v69 = v63;
    v70 = v64;
    v71 = v65;
    v66 = v60;
    v67 = v61;
    if (v61)
    {
      sub_26460CD50(&v66, &qword_27FF756F8, &qword_264787DF0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(&v60);

      v29 = v60;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4(v12);

      v30 = *(v58 + 48);
      LODWORD(v29) = v30(v12, 1, v15);
      sub_26460CD50(v12, &qword_27FF756B8, &qword_26478AC90);
      if (v29 != 1)
      {
        v31 = v57;
        if (*(v1 + 48))
        {
          sub_264783DE4();
        }

        else
        {
          sub_264783DF4();
        }

        v32 = sub_264783E14();
        v33 = sub_2647859E4();

        if (os_log_type_enabled(v32, v33))
        {
          v52 = v33;
          v34 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v60 = v51;
          *v34 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4(&v59);

          v35 = v59;
          swift_getKeyPath();
          swift_getKeyPath();
          v36 = v53;
          sub_264783ED4(v53);

          if (v30(v36, 1, v15))
          {
            sub_26460CD50(v36, &qword_27FF756B8, &qword_26478AC90);
            v37 = 0xE300000000000000;
            v38 = 7104878;
          }

          else
          {
            v39 = v58;
            v40 = v56;
            (*(v58 + 16))(v56, v36, v15);
            sub_26460CD50(v36, &qword_27FF756B8, &qword_26478AC90);
            v41 = sub_264783A64();
            v42 = [v41 absoluteTimeString:0 preposition:0 capitalized:0];

            v43 = sub_264785724();
            v37 = v44;

            (*(v39 + 8))(v40, v15);
            v38 = v43;
          }

          v46 = v54;
          v45 = v55;
          v47 = v57;
          v48 = sub_2646DF234(v38, v37, &v60);

          *(v34 + 4) = v48;
          _os_log_impl(&dword_264605000, v32, v52, "Invalid safety cache expiry date, %s, hiding view button", v34, 0xCu);
          v49 = v51;
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x266740650](v49, -1, -1);
          MEMORY[0x266740650](v34, -1, -1);

          (*(v46 + 8))(v47, v45);
        }

        else
        {

          (*(v54 + 8))(v31, v55);
        }
      }
    }
  }

  return 0;
}

uint64_t TranscriptViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77350, &qword_26478CAF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__sessionViewModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77368, &qword_26478CB50);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__safetyCacheViewModel;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77380, &qword_26478CBA8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__primaryDetailString;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__secondaryDetailString, v8);
  v9(v0 + OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__warningString, v8);
  v10 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__showLPMWarningIcon;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC15SafetyMonitorUI19TranscriptViewModel__resolvedMapItem;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t TranscriptViewModel.__deallocating_deinit()
{
  TranscriptViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2646B56B0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TranscriptViewModel(0);
  result = sub_264783E64();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for TranscriptViewModel(uint64_t a1)
{
  result = qword_27FF773B8;
  if (!qword_27FF773B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2646B5754(uint64_t a1)
{
  result = sub_2646B6550(&qword_27FF75410, type metadata accessor for TranscriptViewModel, &protocol conformance descriptor for TranscriptViewModel);
  *(a1 + 8) = result;
  return result;
}

void sub_2646B5954(uint64_t a1)
{
  sub_264656F60(319, &qword_27FF773C8, &type metadata for CheckInViewState);
  if (v1 <= 0x3F)
  {
    sub_2646B64FC(319, &qword_27FF773D0, type metadata accessor for SessionViewModel);
    if (v2 <= 0x3F)
    {
      sub_2646B64FC(319, &qword_27FF773D8, type metadata accessor for SafetyCacheViewModel);
      if (v3 <= 0x3F)
      {
        sub_264656F0C(319, &qword_27FF75E08, &qword_27FF75C40, &qword_264788A70);
        if (v4 <= 0x3F)
        {
          sub_264656F60(319, &qword_27FF75E18, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_264656F0C(319, &qword_27FF75E20, &qword_27FF75C80, &qword_264788A78);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_2646B64FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_264783EF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2646B6550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2646B6598()
{
  sub_264655264(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646B6608()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2646B6654()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2646B66B0()
{
  result = qword_27FF773F8;
  if (!qword_27FF773F8)
  {
    sub_264659B70(255, &qword_27FF76980, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF773F8);
  }

  return result;
}

uint64_t sub_2646B6718()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id CheckInOnboardingViewController4.__allocating_init(isInSettings:sessionType:onboardingCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = objc_allocWithZone(v4);
  return CheckInOnboardingViewController4.init(isInSettings:sessionType:onboardingCompletionHandler:)(v8, a2, a3, a4);
}

id CheckInOnboardingViewController4.init(isInSettings:sessionType:onboardingCompletionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_264783B94();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_264785704();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_onboardingCompletionHandler];
  *v13 = 0;
  v13[1] = 0;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_isInSettings] = a1;
  *&v5[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_sessionType] = a2;
  *v13 = a3;
  v13[1] = a4;
  sub_264611394(a3, a4);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v16 = sub_264785714();

  v19.receiver = v5;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_symbolName_contentLayout_, v16, 0, 0, 2);
  sub_26460C9A0(a3, a4);

  return v17;
}

Swift::Void __swiftcall CheckInOnboardingViewController4.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_264783B94();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_264785704();
  MEMORY[0x28223BE20](v3 - 8);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, sel_viewDidLoad);
  v4 = [objc_opt_self() boldButton];
  if (v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_isInSettings] == 1)
  {
    if (qword_27FF75180 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_264785694();
    sub_26460EC78();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_264783B84();
    sub_264785754();
  }

  v7 = sub_264785714();

  [v4 setTitle:v7 forState:0];

  [v4 addTarget:v0 action:sel_sendCheckIn forControlEvents:64];
  v8 = [objc_opt_self() linkButton];
  if (qword_27FF75048 != -1)
  {
    swift_once();
  }

  v9 = sub_264785714();
  [v8 setTitle:v9 forState:0];

  [v8 addTarget:v0 action:sel_notNowButtonAction forControlEvents:64];
  v10 = [v0 buttonTray];
  [v10 addButton_];

  v11 = [v0 buttonTray];
  [v11 addButton_];

  if (*&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_sessionType] == 4)
  {
    if (qword_27FF750B0 != -1)
    {
      swift_once();
    }

    v12 = sub_264785714();
    if (qword_27FF75120 != -1)
    {
      swift_once();
    }

    v13 = sub_264785714();
    v14 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v12 description:v13 symbolName:v14];

    if (qword_27FF75128 != -1)
    {
      swift_once();
    }

    v15 = sub_264785714();
    if (qword_27FF75130 != -1)
    {
      swift_once();
    }

    v16 = sub_264785714();
    v17 = sub_264785714();
    [v0 addBulletedListItemWithTitle:v15 description:v16 symbolName:v17];

    if (qword_27FF75138 != -1)
    {
      swift_once();
    }

    v18 = sub_264785714();
    if (qword_27FF75140 == -1)
    {
      goto LABEL_32;
    }

LABEL_37:
    swift_once();
    goto LABEL_32;
  }

  if (qword_27FF750B0 != -1)
  {
    swift_once();
  }

  v19 = sub_264785714();
  if (qword_27FF750D0 != -1)
  {
    swift_once();
  }

  v20 = sub_264785714();
  v21 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v19 description:v20 symbolName:v21];

  if (qword_27FF750D8 != -1)
  {
    swift_once();
  }

  v22 = sub_264785714();
  if (qword_27FF750E0 != -1)
  {
    swift_once();
  }

  v23 = sub_264785714();
  v24 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v22 description:v23 symbolName:v24];

  if (qword_27FF750E8 != -1)
  {
    swift_once();
  }

  v18 = sub_264785714();
  if (qword_27FF750F0 != -1)
  {
    goto LABEL_37;
  }

LABEL_32:
  v25 = sub_264785714();
  v26 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v18 description:v25 symbolName:v26];

  if (qword_27FF750B8 != -1)
  {
    swift_once();
  }

  v27 = sub_264785714();
  if (qword_27FF750C8 != -1)
  {
    swift_once();
  }

  v28 = sub_264785714();
  v29 = sub_264785714();
  [v0 addBulletedListItemWithTitle:v27 description:v28 symbolName:v29];
}

void sub_2646B72E4()
{
  v1 = v0;
  if ((v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_isInSettings] & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_onboardingCompletionHandler];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController4_onboardingCompletionHandler + 8];

      v2(v4);
      sub_26460C9A0(v2, v3);
    }
  }

  [objc_opt_self() setHasUserCompletedOnboarding_];
  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

id CheckInOnboardingViewController4.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController4.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController4.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SafetyMonitorAvatarView.init(with:groupID:badgeImageName:diameter:padding:badgeDiameter:badgeImageColor:badgeAlignment:badgeStroke:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, char a13)
{
  if (a7)
  {
    v13 = a10 / 3.2;
  }

  else
  {
    v13 = a6;
  }

  *a9 = result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = v13;
  *(a9 + 40) = a8;
  *(a9 + 48) = a12;
  *(a9 + 56) = a13 & 1;
  *(a9 + 64) = a2;
  *(a9 + 72) = a3;
  *(a9 + 80) = a11;
  return result;
}

uint64_t SafetyMonitorAvatarView.body.getter()
{
  v1 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v1;
  v9[4] = *(v0 + 64);
  v10 = *(v0 + 80);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v3 = v1;
  v8 = 1;
  sub_2646B7A2C(v9, &v21);
  v16 = v26;
  v17 = v27;
  v18[0] = v28[0];
  *(v18 + 10) = *(v28 + 10);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v11 = v21;
  v12 = v22;
  v19[5] = v26;
  v19[6] = v27;
  v20[0] = v28[0];
  *(v20 + 10) = *(v28 + 10);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_26460CCE8(&v11, &v5, &qword_27FF77420, &qword_26478CFD0);
  sub_26460CD50(v19, &qword_27FF77420, &qword_26478CFD0);
  *&v7[103] = v17;
  *&v7[87] = v16;
  *&v7[39] = v13;
  *&v7[23] = v12;
  *&v7[119] = v18[0];
  *&v7[129] = *(v18 + 10);
  *&v7[55] = v14;
  *&v7[71] = v15;
  *&v7[7] = v11;
  *&v6[97] = *&v7[96];
  *&v6[113] = *&v7[112];
  *&v6[129] = *&v7[128];
  *&v6[33] = *&v7[32];
  *&v6[49] = *&v7[48];
  *&v6[65] = *&v7[64];
  *&v6[81] = *&v7[80];
  *&v6[1] = *v7;
  v5 = v3;
  v6[0] = v8;
  v6[145] = BYTE9(v18[1]);
  *&v6[17] = *&v7[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77428, &qword_26478CFD8);
  sub_2646B7C58();
  sub_264784FE4();
  v28[1] = *&v6[112];
  v28[2] = *&v6[128];
  v29 = *&v6[144];
  v25 = *&v6[48];
  v26 = *&v6[64];
  v27 = *&v6[80];
  v28[0] = *&v6[96];
  v21 = v5;
  v22 = *v6;
  v23 = *&v6[16];
  v24 = *&v6[32];
  return sub_26460CD50(&v21, &qword_27FF77428, &qword_26478CFD8);
}

uint64_t sub_2646B7A2C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v45 = a1[2];
  v46 = v4;
  v47 = a1[4];
  *&v48 = *(a1 + 10);
  v5 = a1[1];
  v43 = *a1;
  v44 = v5;
  sub_2646B7CD8(&v50);
  v6 = v50;
  v7 = sub_264784C44();
  sub_264783F54();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_264784C54();
  sub_264783F54();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v43) = 0;
  LOBYTE(v50) = 0;
  v25 = *(a1 + 3);
  if (v25)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    v28 = *(a1 + 5);
    v29 = *(a1 + 56) & 1 | 0x100;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
  }

  *&v36 = v6;
  BYTE8(v36) = v7;
  *&v37 = v9;
  *(&v37 + 1) = v11;
  *&v38 = v13;
  *(&v38 + 1) = v15;
  LOBYTE(v39) = 0;
  BYTE8(v39) = v16;
  *&v40 = v18;
  *(&v40 + 1) = v20;
  *&v41 = v22;
  *(&v41 + 1) = v24;
  v42 = 0;
  LOBYTE(v49) = 0;
  v43 = v36;
  v44 = v37;
  v47 = v40;
  v48 = v41;
  v45 = v38;
  v46 = v39;
  v30 = v37;
  *a2 = v36;
  *(a2 + 16) = v30;
  v31 = v45;
  v32 = v46;
  v33 = v48;
  v34 = v49;
  *(a2 + 64) = v47;
  *(a2 + 80) = v33;
  *(a2 + 32) = v31;
  *(a2 + 48) = v32;
  *(a2 + 96) = v34;
  *(a2 + 104) = v27;
  *(a2 + 112) = v26;
  *(a2 + 120) = v25;
  *(a2 + 128) = v28;
  *(a2 + 136) = v29;

  sub_26460CCE8(&v36, &v50, &qword_27FF77448, &qword_26478D090);
  sub_2646B83C0(v27, v26, v25);
  sub_2646B8404(v27, v26, v25, v28);
  v50 = v6;
  v51 = v7;
  v52 = v9;
  v53 = v11;
  v54 = v13;
  v55 = v15;
  v56 = 0;
  v57 = v16;
  v58 = v18;
  v59 = v20;
  v60 = v22;
  v61 = v24;
  v62 = 0;
  return sub_26460CD50(&v50, &qword_27FF77448, &qword_26478D090);
}

unint64_t sub_2646B7C58()
{
  result = qword_27FF77430;
  if (!qword_27FF77430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77428, &qword_26478CFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77430);
  }

  return result;
}

uint64_t sub_2646B7CD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*v1)
  {
    v9 = v1[8];
    v8 = v1[9];
    if (v7 >> 62)
    {
      if (sub_264785C14())
      {
        goto LABEL_4;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v20 = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77460, &unk_26478D0A0);
      sub_2647852E4();
      v16 = v17;
      v20 = v9;
      v21 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
      sub_2647852E4();
      v15 = v17;
      v10 = v18;
      sub_264785504();
      sub_2647840A4();
      v17 = v16;
      v18 = v15;
      *&v19 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77468, &qword_26478D0B0);
      sub_2646B8448(&qword_27FF77470, &qword_27FF77468, &qword_26478D0B0, sub_26465A1AC);
      goto LABEL_9;
    }
  }

  sub_264783E04();
  v11 = sub_264783E14();
  v12 = sub_2647859D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_264605000, v11, v12, "Empty contact to create avatar for", v13, 2u);
    MEMORY[0x266740650](v13, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_264785504();
  sub_2647840A4();
  v20 = v17;
  LOBYTE(v21) = BYTE8(v17);
  v22 = v18;
  v23 = BYTE8(v18);
  v24 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77450, &qword_26478D098);
  sub_2646B8448(&qword_27FF77458, &qword_27FF77450, &qword_26478D098, sub_264691184);
LABEL_9:
  result = sub_2647853C4();
  *a1 = result;
  return result;
}

uint64_t sub_2646B8028()
{
  v1 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v1;
  v9[4] = *(v0 + 64);
  v10 = *(v0 + 80);
  v2 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v2;
  v3 = v1;
  v8 = 1;
  sub_2646B7A2C(v9, &v21);
  v16 = v26;
  v17 = v27;
  v18[0] = v28[0];
  *(v18 + 10) = *(v28 + 10);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v11 = v21;
  v12 = v22;
  v19[5] = v26;
  v19[6] = v27;
  v20[0] = v28[0];
  *(v20 + 10) = *(v28 + 10);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_26460CCE8(&v11, &v5, &qword_27FF77420, &qword_26478CFD0);
  sub_26460CD50(v19, &qword_27FF77420, &qword_26478CFD0);
  *&v7[103] = v17;
  *&v7[87] = v16;
  *&v7[39] = v13;
  *&v7[23] = v12;
  *&v7[119] = v18[0];
  *&v7[129] = *(v18 + 10);
  *&v7[55] = v14;
  *&v7[71] = v15;
  *&v7[7] = v11;
  *&v6[97] = *&v7[96];
  *&v6[113] = *&v7[112];
  *&v6[129] = *&v7[128];
  *&v6[33] = *&v7[32];
  *&v6[49] = *&v7[48];
  *&v6[65] = *&v7[64];
  *&v6[81] = *&v7[80];
  *&v6[1] = *v7;
  v5 = v3;
  v6[0] = v8;
  v6[145] = BYTE9(v18[1]);
  *&v6[17] = *&v7[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77428, &qword_26478CFD8);
  sub_2646B7C58();
  sub_264784FE4();
  v28[1] = *&v6[112];
  v28[2] = *&v6[128];
  v29 = *&v6[144];
  v25 = *&v6[48];
  v26 = *&v6[64];
  v27 = *&v6[80];
  v28[0] = *&v6[96];
  v21 = v5;
  v22 = *v6;
  v23 = *&v6[16];
  v24 = *&v6[32];
  return sub_26460CD50(&v21, &qword_27FF77428, &qword_26478CFD8);
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

uint64_t sub_2646B8284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2646B82CC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_2646B8334()
{
  result = qword_27FF77438;
  if (!qword_27FF77438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77440, &qword_26478D088);
    sub_2646B7C58();
    sub_264695700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77438);
  }

  return result;
}

uint64_t sub_2646B83C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_2646B8404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t sub_2646B8448(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2646B84E0()
{
  result = qword_27FF77478;
  if (!qword_27FF77478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77478);
  }

  return result;
}

uint64_t sub_2646B8534(uint64_t *a1, int a2)
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
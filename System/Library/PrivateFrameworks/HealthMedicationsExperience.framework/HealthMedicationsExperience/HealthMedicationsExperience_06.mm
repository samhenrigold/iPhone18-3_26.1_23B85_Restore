__n128 sub_1D1668A58(uint64_t a1)
{
  v20 = *(a1 + 72);
  v1 = *(a1 + 88);
  v2 = *(a1 + 96);
  v3 = *(a1 + 64);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v22 = *(a1 + 200);
  v21 = *(a1 + 208);
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);
  v19 = *(a1 + 209);
  v18 = *(a1 + 120);
  v16 = *(a1 + 66);
  v17 = *(a1 + 128);
  v15 = *(a1 + 232);
  v13 = *(a1 + 241);
  v14 = *(a1 + 240);
  type metadata accessor for MedicationListOnboardingEvent();
  v11 = swift_allocObject();
  result = v20;
  *(v11 + 16) = v20;
  *(v11 + 32) = v1;
  *(v11 + 40) = v2;
  *(v11 + 41) = v3;
  *(v11 + 48) = v4;
  *(v11 + 56) = v5;
  *(v11 + 57) = v6;
  *(v11 + 64) = v7;
  *(v11 + 72) = v8;
  *(v11 + 96) = v9;
  *(v11 + 104) = v10;
  *(v11 + 80) = v22;
  *(v11 + 88) = v21;
  *(v11 + 105) = v19;
  *(v11 + 112) = v18;
  *(v11 + 120) = v17;
  *(v11 + 121) = v16;
  *(v11 + 128) = v15;
  *(v11 + 136) = v14;
  *(v11 + 137) = v13;
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1668C00()
{
  result = sub_1D166FA04();
  qword_1EDEC9EE0 = result;
  *algn_1EDEC9EE8 = v1;
  return result;
}

id sub_1D1668C58(uint64_t a1)
{
  v2 = *MEMORY[0x1E69A3A08];
  if (qword_1EDEC9ED8 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v4 = sub_1D166F9C4();
  v5 = [v3 initWithCategory:v2 domainName:v4 healthStore:a1];

  return v5;
}

uint64_t sub_1D1668D34()
{
  result = sub_1D166FA04();
  qword_1EDEC9EC8 = result;
  qword_1EDEC9ED0 = v1;
  return result;
}

uint64_t sub_1D1668D8C()
{
  result = sub_1D166FA04();
  qword_1EDEC9E90 = result;
  *algn_1EDEC9E98 = v1;
  return result;
}

uint64_t sub_1D1668DE4()
{
  result = sub_1D166FA04();
  qword_1EDEC9EA8 = result;
  *algn_1EDEC9EB0 = v1;
  return result;
}

uint64_t sub_1D1668E3C()
{
  result = sub_1D166FA04();
  qword_1EC63E330 = result;
  *algn_1EC63E338 = v1;
  return result;
}

uint64_t MedicationScheduleItemDose.scheduleItemIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MedicationScheduleItemDose.init(_:scheduleItemIdentifier:medication:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t static MedicationScheduleItemDose.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1D16705D4() & 1) == 0)
  {
    return 0;
  }

  v9 = v4;
  v10 = v7;
  v11 = sub_1D16700A4();

  return v11 & 1;
}

uint64_t sub_1D1668FA4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_1D15FAE98();
  if ((sub_1D16700A4() & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1D16705D4() & 1) == 0)
  {
    return 0;
  }

  v9 = v4;
  v10 = v7;
  v11 = sub_1D16700A4();

  return v11 & 1;
}

uint64_t MedicationScheduleItem.__allocating_init(_:scheduleItemDoses:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MedicationScheduleItem.init(_:scheduleItemDoses:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MedicationScheduleItem.description.getter()
{
  v1 = v0;
  sub_1D16702D4();

  strcpy(v9, "scheduleItem: ");
  HIBYTE(v9[1]) = -18;
  v2 = *(v0 + 16);
  v3 = [v2 description];
  v4 = sub_1D166FA04();
  v6 = v5;

  MEMORY[0x1D388CCF0](v4, v6);

  MEMORY[0x1D388CCF0](0xD000000000000014, 0x80000001D1679770);
  v7 = MEMORY[0x1D388CE40](*(v1 + 24), &type metadata for MedicationScheduleItemDose);
  MEMORY[0x1D388CCF0](v7);

  return v9[0];
}

uint64_t MedicationScheduleItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void static MedicationScheduleItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D15FAE98();
  if (sub_1D16700A4())
  {
    v4 = *(a1 + 24);
    v5 = *(a2 + 24);

    sub_1D1620818(v4, v5);
  }
}

void sub_1D16692D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D15FAE98();
  if (sub_1D16700A4())
  {
    v4 = *(v2 + 24);
    v5 = *(v3 + 24);

    sub_1D1620818(v4, v5);
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D1669354(uint64_t *a1, int a2)
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

uint64_t sub_1D166939C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D1669440()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D1669470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D16705D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D16705D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1669548(uint64_t a1)
{
  v2 = sub_1D166AE50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1669584(uint64_t a1)
{
  v2 = sub_1D166AE50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D16695E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D16705D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D166966C(uint64_t a1)
{
  v2 = sub_1D166ADFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D16696A8(uint64_t a1)
{
  v2 = sub_1D166ADFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D16696F0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D1669720(uint64_t a1)
{
  v2 = sub_1D166ADA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D166975C(uint64_t a1)
{
  v2 = sub_1D166ADA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MedicationVisualizationFragment.FragmentModification.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1D166B0B8(0, &qword_1EC63E340, sub_1D166ADA8, &type metadata for MedicationVisualizationFragment.FragmentModification.NoneCodingKeys, MEMORY[0x1E69E6F58]);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v19 - v5;
  sub_1D166B0B8(0, &qword_1EC63E348, sub_1D166ADFC, &type metadata for MedicationVisualizationFragment.FragmentModification.ColorCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  sub_1D166B0B8(0, &qword_1EC63E350, sub_1D166AE50, &type metadata for MedicationVisualizationFragment.FragmentModification.CodingKeys, v3);
  v25 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = v1[1];
  v19 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166AE50();
  sub_1D1670714();
  if (v13 == 1)
  {
    v27 = 1;
    sub_1D166ADA8();
    v14 = v20;
    v15 = v25;
    sub_1D1670524();
    (*(v23 + 8))(v14, v24);
    return (*(v10 + 8))(v12, v15);
  }

  else
  {
    v26 = 0;
    sub_1D166ADFC();
    v17 = v25;
    sub_1D1670524();
    v18 = v22;
    sub_1D1670534();
    (*(v21 + 8))(v8, v18);
    return (*(v10 + 8))(v12, v17);
  }
}

uint64_t MedicationVisualizationFragment.FragmentModification.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  MEMORY[0x1D388D890](0);
  if (!v2)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t MedicationVisualizationFragment.FragmentModification.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D16706A4();
  if (v1 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v1)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t MedicationVisualizationFragment.FragmentModification.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D166B0B8(0, &qword_1EDECABD8, sub_1D166ADA8, &type metadata for MedicationVisualizationFragment.FragmentModification.NoneCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - v6;
  sub_1D166B0B8(0, &qword_1EDECABD0, sub_1D166ADFC, &type metadata for MedicationVisualizationFragment.FragmentModification.ColorCodingKeys, v3);
  v8 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  sub_1D166B0B8(0, &qword_1EDECABE0, sub_1D166AE50, &type metadata for MedicationVisualizationFragment.FragmentModification.CodingKeys, v3);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166AE50();
  v15 = v40;
  sub_1D1670704();
  if (v15)
  {
    goto LABEL_9;
  }

  v17 = v37;
  v16 = v38;
  v33 = v8;
  v40 = a1;
  v18 = v39;
  v19 = v14;
  v20 = sub_1D1670514();
  if (*(v20 + 16) != 1)
  {
    v25 = sub_1D1670334();
    swift_allocError();
    v27 = v26;
    sub_1D166AEA4(0);
    *v27 = &type metadata for MedicationVisualizationFragment.FragmentModification;
    sub_1D16704D4();
    sub_1D1670314();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v17 + 8))(v19, v12);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_9:
    v29 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  if (*(v20 + 32))
  {
    v42 = 1;
    sub_1D166ADA8();
    v21 = v16;
    sub_1D16704C4();
    v22 = v18;
    (*(v36 + 8))(v21, v35);
    (*(v17 + 8))(v19, v12);
    swift_unknownObjectRelease();
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v41 = 0;
    sub_1D166ADFC();
    v28 = v10;
    sub_1D16704C4();
    v22 = v18;
    v38 = v19;
    v31 = v33;
    v23 = sub_1D16704E4();
    v24 = v32;
    (*(v34 + 8))(v28, v31);
    (*(v17 + 8))(v38, v12);
    swift_unknownObjectRelease();
  }

  *v22 = v23;
  v22[1] = v24;
  v29 = v40;
  return __swift_destroy_boxed_opaque_existential_0(v29);
}

uint64_t sub_1D166A114()
{
  v1 = *(v0 + 8);
  sub_1D16706A4();
  if (v1 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v1)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t sub_1D166A1A4(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  MEMORY[0x1D388D890](0);
  if (!v2)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t sub_1D166A234(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D16706A4();
  if (v2 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v2)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t MedicationVisualizationFragment.assetName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MedicationVisualizationFragment.modification.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D15F301C(v2, v3);
}

uint64_t MedicationVisualizationFragment.displayName.getter()
{
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
  }

  sub_1D15F301C(*(v0 + 16), v1);
  return v2;
}

uint64_t sub_1D166A378()
{
  if (*v0)
  {
    return 0x6163696669646F6DLL;
  }

  else
  {
    return 0x6D614E7465737361;
  }
}

uint64_t sub_1D166A3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E7465737361 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D16705D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6163696669646F6DLL && a2 == 0xEC0000006E6F6974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D16705D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D166A4A8(uint64_t a1)
{
  v2 = sub_1D166B010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D166A4E4(uint64_t a1)
{
  v2 = sub_1D166B010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MedicationVisualizationFragment.encode(to:)(void *a1)
{
  sub_1D166B0B8(0, &qword_1EC63E368, sub_1D166B010, &type metadata for MedicationVisualizationFragment.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166B010();
  sub_1D1670714();
  LOBYTE(v15) = 0;
  v9 = v14;
  sub_1D1670544();
  if (!v9)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    sub_1D15F301C(v13, v12);
    sub_1D166B064();
    sub_1D1670564();
    sub_1D15F3228(v15, v16);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MedicationVisualizationFragment.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D166FAE4();
  if (v2 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  MEMORY[0x1D388D890](0);
  if (!v2)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t MedicationVisualizationFragment.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1D16706A4();
  sub_1D166FAE4();
  if (v1 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v1)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t MedicationVisualizationFragment.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1D166B0B8(0, &qword_1EDECABC8, sub_1D166B010, &type metadata for MedicationVisualizationFragment.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1D166B010();
  sub_1D1670704();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v18;
  LOBYTE(v19) = 0;
  v10 = sub_1D16704F4();
  v12 = v11;
  v13 = v10;
  v21 = 1;
  sub_1D166B120();
  sub_1D1670504();
  (*(v6 + 8))(v8, v5);
  v14 = v19;
  v15 = v20;
  *v9 = v13;
  v9[1] = v12;
  v9[2] = v14;
  v9[3] = v15;

  sub_1D15F301C(v14, v15);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_1D15F3228(v14, v15);
}

uint64_t sub_1D166AA8C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D166FAE4();
  if (v2 == 1)
  {
    return MEMORY[0x1D388D890](1);
  }

  MEMORY[0x1D388D890](0);
  if (!v2)
  {
    return sub_1D16706C4();
  }

  sub_1D16706C4();

  return sub_1D166FAE4();
}

uint64_t sub_1D166AB2C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1D16706A4();
  sub_1D166FAE4();
  if (v2 == 1)
  {
    MEMORY[0x1D388D890](1);
  }

  else
  {
    MEMORY[0x1D388D890](0);
    sub_1D16706C4();
    if (v2)
    {
      sub_1D166FAE4();
    }
  }

  return sub_1D16706E4();
}

uint64_t _s27HealthMedicationsExperience31MedicationVisualizationFragmentV0F12ModificationO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 != 1)
  {
    if (v5 != 1)
    {
      if (v3)
      {
        if (!v5)
        {
          sub_1D15F301C(*a2, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_6;
        }

        if (v2 == v4 && v3 == v5)
        {
          sub_1D15F301C(*a1, v3);
          sub_1D15F301C(v2, v3);
          sub_1D15F3228(v2, v3);
          sub_1D15F3228(v2, v3);
          return 1;
        }

        v9 = sub_1D16705D4();
        sub_1D15F301C(v4, v5);
        sub_1D15F301C(v2, v3);
        sub_1D15F3228(v2, v3);
        sub_1D15F3228(v4, v5);
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {

        sub_1D15F301C(v4, v5);
        sub_1D15F301C(v2, 0);
        sub_1D15F3228(v2, 0);
        sub_1D15F3228(v4, v5);
        if (v5)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }

LABEL_5:
    v6 = *a2;
    v7 = a2[1];
LABEL_6:
    sub_1D15F301C(v6, v7);
    sub_1D15F301C(v2, v3);
    sub_1D15F3228(v2, v3);
LABEL_7:
    sub_1D15F3228(v4, v5);
    return 0;
  }

  if (v5 != 1)
  {
    goto LABEL_5;
  }

  sub_1D15F3228(*a1, 1);
  sub_1D15F3228(v4, 1);
  return v5;
}

unint64_t sub_1D166ADA8()
{
  result = qword_1EDECAF78;
  if (!qword_1EDECAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF78);
  }

  return result;
}

unint64_t sub_1D166ADFC()
{
  result = qword_1EDECAF60;
  if (!qword_1EDECAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF60);
  }

  return result;
}

unint64_t sub_1D166AE50()
{
  result = qword_1EDECAF90[0];
  if (!qword_1EDECAF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDECAF90);
  }

  return result;
}

void sub_1D166AEA4(uint64_t a1)
{
  if (!qword_1EC63E358)
  {
    sub_1D166AF14();
    sub_1D1670324();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63E358);
    }
  }
}

unint64_t sub_1D166AF14()
{
  result = qword_1EC63E360;
  if (!qword_1EC63E360)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC63E360);
  }

  return result;
}

uint64_t _s27HealthMedicationsExperience31MedicationVisualizationFragmentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_1D16705D4() & 1) != 0))
  {
    v11 = v2;
    v12 = v3;
    v9 = v4;
    v10 = v5;
    sub_1D15F301C(v2, v3);
    sub_1D15F301C(v4, v5);
    v7 = _s27HealthMedicationsExperience31MedicationVisualizationFragmentV0F12ModificationO2eeoiySbAE_AEtFZ_0(&v11, &v9);
    sub_1D15F3228(v9, v10);
    sub_1D15F3228(v11, v12);
  }

  return v7 & 1;
}

unint64_t sub_1D166B010()
{
  result = qword_1EDECAF40;
  if (!qword_1EDECAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF40);
  }

  return result;
}

unint64_t sub_1D166B064()
{
  result = qword_1EC63E370;
  if (!qword_1EC63E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E370);
  }

  return result;
}

void sub_1D166B0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D166B120()
{
  result = qword_1EDECAF48;
  if (!qword_1EDECAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF48);
  }

  return result;
}

unint64_t sub_1D166B178()
{
  result = qword_1EC63E378;
  if (!qword_1EC63E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E378);
  }

  return result;
}

unint64_t sub_1D166B1D0()
{
  result = qword_1EDECAF20;
  if (!qword_1EDECAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27HealthMedicationsExperience31MedicationVisualizationFragmentV0F12ModificationO(uint64_t a1)
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

uint64_t sub_1D166B248(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D166B290(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D166B2E0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D166B33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D166B398(void *result, unsigned int a2)
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

uint64_t sub_1D166B3E4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D166B474(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D166B558()
{
  result = qword_1EC63E380;
  if (!qword_1EC63E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E380);
  }

  return result;
}

unint64_t sub_1D166B5B0()
{
  result = qword_1EC63E388;
  if (!qword_1EC63E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E388);
  }

  return result;
}

unint64_t sub_1D166B608()
{
  result = qword_1EC63E390;
  if (!qword_1EC63E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E390);
  }

  return result;
}

unint64_t sub_1D166B660()
{
  result = qword_1EDECAF30;
  if (!qword_1EDECAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF30);
  }

  return result;
}

unint64_t sub_1D166B6B8()
{
  result = qword_1EDECAF38;
  if (!qword_1EDECAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF38);
  }

  return result;
}

unint64_t sub_1D166B710()
{
  result = qword_1EDECAF80;
  if (!qword_1EDECAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF80);
  }

  return result;
}

unint64_t sub_1D166B768()
{
  result = qword_1EDECAF88;
  if (!qword_1EDECAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF88);
  }

  return result;
}

unint64_t sub_1D166B7C0()
{
  result = qword_1EDECAF50;
  if (!qword_1EDECAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF50);
  }

  return result;
}

unint64_t sub_1D166B818()
{
  result = qword_1EDECAF58;
  if (!qword_1EDECAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF58);
  }

  return result;
}

unint64_t sub_1D166B870()
{
  result = qword_1EDECAF68;
  if (!qword_1EDECAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF68);
  }

  return result;
}

unint64_t sub_1D166B8C8()
{
  result = qword_1EDECAF70;
  if (!qword_1EDECAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECAF70);
  }

  return result;
}

uint64_t MedicationShape.accessibilityLabel.getter()
{
  switch(*v0)
  {
    case 1:
    case 3:
    case 0xC:
    case 0x14:
    case 0x21:
    case 0x27:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 2:
    case 5:
    case 0xB:
    case 0x17:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 4:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 6:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 7:
    case 0x1E:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 8:
    case 0x11:
    case 0x13:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 9:
    case 0x10:
    case 0x12:
    case 0x20:
    case 0x25:
    case 0x2B:
    case 0x2F:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0xA:
    case 0xF:
    case 0x15:
    case 0x16:
    case 0x1C:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0xD:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0xE:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x18:
    case 0x26:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x19:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x1B:
    case 0x24:
    case 0x2E:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x1D:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    case 0x22:
    case 0x28:
    case 0x2A:
      if (qword_1EDECB050 != -1)
      {
        goto LABEL_34;
      }

      break;
    default:
      if (qword_1EDECB050 != -1)
      {
LABEL_34:
        swift_once();
      }

      break;
  }

  return sub_1D166F004();
}

uint64_t sub_1D166C0D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = 0;
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      sub_1D162E824();
      v6 = sub_1D166FC54();
    }

    **(*(v5 + 64) + 40) = v6;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t MedicationScheduleProvider.__allocating_init(scheduleControl:scheduleControlObserver:)(void *a1, char *a2)
{
  v4 = swift_allocObject();
  MedicationScheduleProvider.init(scheduleControl:scheduleControlObserver:)(a1, a2);
  return v4;
}

void *MedicationScheduleProvider.init(scheduleControl:scheduleControlObserver:)(void *a1, char *a2)
{
  v3 = v2;
  v2[4] = 0;
  sub_1D166C378(0);
  swift_allocObject();
  v2[5] = sub_1D166F674();
  v2[2] = a1;
  v2[3] = a2;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D166C548;
  *(v8 + 24) = v7;
  sub_1D165A76C();
  sub_1D166C998();
  v9 = a1;
  v10 = a2;

  v11 = sub_1D166F7B4();

  v3[4] = v11;

  return v3;
}

void sub_1D166C378(uint64_t a1)
{
  if (!qword_1EC63E398)
  {
    sub_1D166CAC8(255, &qword_1EDEC9FD0, sub_1D162E7F0, MEMORY[0x1E69E6720]);
    v1 = sub_1D166F664();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC63E398);
    }
  }
}

uint64_t sub_1D166C410(void *a1, uint64_t a2)
{
  sub_1D166CAC8(0, &qword_1EDECADE0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1D166FD84();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = a1;

  sub_1D1632CAC(0, 0, v6, &unk_1D1676418, v8);
}

uint64_t sub_1D166C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D166C570, 0, 0);
}

uint64_t sub_1D166C570()
{
  v1 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D166C680;
  v2 = swift_continuation_init();
  sub_1D16440EC(0);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D166C0D0;
  v0[13] = &block_descriptor_16;
  v0[14] = v2;
  [v1 fetchAllSchedulesWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D166C680()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D166C8B0;
  }

  else
  {
    v2 = sub_1D166C790;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D166C790()
{
  v1 = *(v0 + 144);
  v2 = (v0 + 80);
  if (v1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      *v2 = v1;
      sub_1D166F654();
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      *v2 = 0;
      sub_1D166F654();
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D166C8B0(uint64_t a1)
{
  swift_willThrow();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = v1[26];
  if (Strong)
  {

    v1[18] = 0;
    sub_1D166F654();
  }

  v4 = v1[1];

  return v4();
}

unint64_t sub_1D166C998()
{
  result = qword_1EC63E3A0;
  if (!qword_1EC63E3A0)
  {
    sub_1D165A76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63E3A0);
  }

  return result;
}

uint64_t MedicationScheduleProvider.deinit()
{

  return v0;
}

uint64_t MedicationScheduleProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D166CAC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D166CB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D15FFFCC;

  return sub_1D166C550(a1, v4, v5, v7, v6);
}

UIColor __swiftcall UIColor.init(hex:)(Swift::Int hex)
{
  v1 = BYTE2(hex) / 255.0;
  v2 = BYTE1(hex) / 255.0;
  v3 = hex / 255.0;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithRed:v1 green:v2 blue:v3 alpha:1.0];
}

CGColorRef __swiftcall UIColor.cgColor(with:)(UITraitCollection with)
{
  v2 = [v1 resolvedColorWithTraitCollection_];
  v3 = [v2 CGColor];

  return v3;
}

uint64_t MedicationUserFacingTitleProviding.userFacingTitle.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 72))();
  if (!v5)
  {
    return (*(a2 + 24))(a1, a2);
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return (*(a2 + 24))(a1, a2);
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.expandedTitle.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  sub_1D166E15C(0, &unk_1EDECAB90, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = a2[9](a1, a2);
  if (!v8)
  {
    return a2[2](a1, a2);
  }

  v9 = v7;
  v10 = v8;
  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (v12 = a2[5](a1, a2), !v13))
  {

    return a2[2](a1, a2);
  }

  v14 = v12;
  v15 = v13;
  v23[1] = "ion";
  v16 = sub_1D166F1F4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D166E15C(0, &qword_1EDEC9D30, sub_1D160319C, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D16721B0;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1D15F3174();
  *(v17 + 32) = v9;
  *(v17 + 40) = v10;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 64) = v19;
  *(v17 + 72) = v14;
  *(v17 + 80) = v15;
  v20 = sub_1D166F004();
  if (*(v17 + 16))
  {
    v21 = sub_1D166FA34();
  }

  else
  {
    v21 = v20;
  }

  sub_1D166E1C0(v6, &unk_1EDECAB90, MEMORY[0x1E6969770]);
  return v21;
}

uint64_t MedicationUserFacingTitleProviding.nonUserSpecifiedName.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 128))();
  if (!v5)
  {
    result = (*(a2 + 40))(a1, a2);
    if (!v6)
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      return sub_1D166F004();
    }
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.userFacingSubtitle.getter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D166F004();
  (*(a2 + 56))(a1, a2);
  v20[0] = v4;
  v5 = 0;
  v20[1] = (*(a2 + 64))(a1, a2);
  v20[2] = v6;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = &v20[2 * v5];
  while (++v5 != 3)
  {
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if (v10)
    {
      v11 = *(v9 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D15ECAB4(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1D15ECAB4((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      goto LABEL_4;
    }
  }

  sub_1D165BB60(0, &qword_1EDECAE20, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  sub_1D165BB60(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
  sub_1D160172C();
  v15 = sub_1D166F9A4();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    return 0;
  }

  return v15;
}

uint64_t MedicationUserFacingTitleProviding.brandOrGenericOrPreferred.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 88))();
  if (!v5)
  {
    result = (*(a2 + 96))(a1, a2);
    if (!v6)
    {
      return (*(a2 + 80))(a1, a2);
    }
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.manufacturedOrBasicDoseForm.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 104))();
  if (!v5)
  {
    return (*(a2 + 112))(a1, a2);
  }

  return result;
}

uint64_t MedicationUserFacingTitleProviding.doseForm.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 136))();
  if (v5)
  {
    return (*(a2 + 48))(a1, a2);
  }

  HKMedicationFreeTextFormTypeCode.localizationKey.getter(v4);
  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  v7 = sub_1D166F004();

  return v7;
}

uint64_t MedicationUserFacingTitleProviding.unitStrength.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() medicationDoseEventType];
  v5 = (*(a2 + 144))(a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 _unit];
    sub_1D1630C70();
    v8 = [objc_opt_self() percentUnit];
    v9 = sub_1D16700A4();

    v10 = [objc_allocWithZone(MEMORY[0x1E69A4480]) init];
    v11 = v10;
    if (v9)
    {
      [v10 setHasSpaceBetweenValueAndUnit_];
    }

    v12 = [v6 localizedStringForType:v4 parameters:v11];
    v13 = sub_1D166FA04();
  }

  else
  {
    v13 = (*(a2 + 120))(a1, a2);
  }

  return v13;
}

uint64_t sub_1D166D764(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);

  return v2;
}

uint64_t sub_1D166D7D4(SEL *a1)
{
  v2 = [v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D166FA04();

  return v4;
}

id HKMedicationUserDomainConcept.__freeTextMedicationForm.getter()
{
  v1 = [v0 freeTextMedicationFormCode];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 longLongValue];

  return v3;
}

id HKMedicationUserDomainConcept.__freeTextMedicationStrengthQuantity.getter()
{
  v1 = [v0 freeTextMedicationStrengthQuantity];

  return v1;
}

uint64_t sub_1D166D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);

  return v4;
}

uint64_t sub_1D166D998(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D166FA04();

  return v6;
}

id sub_1D166D9FC()
{
  v1 = [*v0 freeTextMedicationFormCode];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 longLongValue];

  return v3;
}

id sub_1D166DA64()
{
  v1 = [*v0 freeTextMedicationStrengthQuantity];

  return v1;
}

uint64_t HKMedicationUserDomainConcept.medmojiConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1D166E15C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = [v2 userVisualizationConfigJSONString];
  if (v7)
  {
    v8 = v7;
    sub_1D166FA04();

    MedicationVisualizationConfig.init(jsonString:)(v6);
    v9 = type metadata accessor for MedicationVisualizationConfig(0);
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) != 1)
    {
      sub_1D15F2F38(v6, a1);
      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    sub_1D166E1C0(v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  v11 = type metadata accessor for MedicationVisualizationConfig(0);
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t HKMedicationUserDomainConcept.resolvedMedicationName.getter()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
  v4 = v3;

  if (!v4)
  {
    v5 = swift_getKeyPath();
    v2 = sub_1D161E974(v5, 0x53555F6E65, 0xE500000000000000);
    v7 = v6;

    if (!v7)
    {
      v8 = swift_getKeyPath();
      v2 = sub_1D161E974(v8, 0x53555F6E65, 0xE500000000000000);
      v10 = v9;

      if (!v10)
      {
        v11 = [v0 freeTextMedicationName];
        if (v11 || (v11 = [v0 userSpecifiedName]) != 0)
        {
          v12 = v11;
          v2 = sub_1D166FA04();
        }

        else
        {
          if (qword_1EDECB050 != -1)
          {
            swift_once();
          }

          return sub_1D166F004();
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1D166DE84(char a1)
{
  v3 = [v1 userSpecifiedName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D166FA04();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      KeyPath = swift_getKeyPath();
      v10 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
      v12 = v11;

      if (v12 || (v13 = swift_getKeyPath(), v10 = sub_1D161E974(v13, 0x53555F6E65, 0xE500000000000000), v12 = v14, , v12) || (v15 = swift_getKeyPath(), v10 = sub_1D161E974(v15, 0x53555F6E65, 0xE500000000000000), v12 = v16, , v12))
      {
        v17 = sub_1D15ECAB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v19 = *(v17 + 2);
        v18 = *(v17 + 3);
        if (v19 >= v18 >> 1)
        {
          v17 = sub_1D15ECAB4((v18 > 1), v19 + 1, 1, v17);
        }

        *(v17 + 2) = v19 + 1;
        v20 = &v17[16 * v19];
        *(v20 + 4) = v10;
        *(v20 + 5) = v12;
        if ((a1 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        v21 = swift_getKeyPath();
        v22 = sub_1D161E974(v21, 0x53555F6E65, 0xE500000000000000);
        v24 = v23;

        if (v24)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    goto LABEL_13;
  }

LABEL_14:
  v25 = HKMedicationUserDomainConcept.localizedResolvedForm.getter();
  if (!v26)
  {
    goto LABEL_21;
  }

  v22 = v25;
  v24 = v26;
LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D15ECAB4(0, *(v17 + 2) + 1, 1, v17);
  }

  v28 = *(v17 + 2);
  v27 = *(v17 + 3);
  if (v28 >= v27 >> 1)
  {
    v17 = sub_1D15ECAB4((v27 > 1), v28 + 1, 1, v17);
  }

  *(v17 + 2) = v28 + 1;
  v29 = &v17[16 * v28];
  *(v29 + 4) = v22;
  *(v29 + 5) = v24;
LABEL_21:
  if (*(v17 + 2))
  {
    sub_1D165BB60(0, &qword_1EDECAE18, MEMORY[0x1E69E62F8]);
    sub_1D160172C();
    v30 = sub_1D166F9A4();
  }

  else
  {

    return 0;
  }

  return v30;
}

void sub_1D166E15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D166E1C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D166E15C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D166E3B8()
{
  swift_beginAccess();
  v0 = HKStringFromMedicationListOnboardingProvenanceType();
  v1 = sub_1D166FA04();

  return v1;
}

uint64_t sub_1D166E458(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1D166E4E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_1D166E580(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1D166E650(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_1D166E728(char a1)
{
  result = swift_beginAccess();
  *(v1 + 49) = a1;
  return result;
}

uint64_t sub_1D166E7F0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t MedicationListOnboardingContext.__allocating_init(provenance:firstTimeMedFlow:medsDetailsEntryPoint:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 40) = 0;
  *(v8 + 48) = 513;
  *(v8 + 56) = 0;
  *(v8 + 64) = 1;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  *(v8 + 40) = a3;
  *(v8 + 48) = a4 & 1;
  *(v8 + 32) = sub_1D162B888(&unk_1F4D4B268);
  return v8;
}

uint64_t MedicationListOnboardingContext.init(provenance:firstTimeMedFlow:medsDetailsEntryPoint:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 40) = 0;
  *(v4 + 48) = 513;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  *(v4 + 40) = a3;
  *(v4 + 48) = a4 & 1;
  *(v4 + 32) = sub_1D162B888(&unk_1F4D4B268);
  return v4;
}

uint64_t sub_1D166E9D0()
{
  swift_beginAccess();
  result = 0;
  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = HKStringFromMedicationListOnboardingDetailsEntryType();
    v3 = sub_1D166FA04();

    return v3;
  }

  return result;
}

uint64_t MedicationListOnboardingContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}
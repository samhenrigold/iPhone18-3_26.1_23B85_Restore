void sub_1A4834F7C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = AssociatedTypeWitness;
  v7 = type metadata accessor for PlaceholderUIItem(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E60(&qword_1EB12A400, v5, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A4835274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[7] = a2;
  v3 = *(a3 + 16);
  v4 = *(*(a3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v14[4] = v3;
  v14[5] = v4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14[10] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v6);
  v14[9] = v14 - v7;
  v10 = type metadata accessor for PlaceholderUIItem(v8, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1A3C50E60(&qword_1EB12A400, v12, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  v14[11] = AssociatedTypeWitness;
  v14[12] = AssociatedTypeWitness;
  v14[13] = v10;
  v14[14] = v10;
  v14[15] = AssociatedConformanceWitness;
  v14[16] = v13;
  v14[17] = v13;
  sub_1A5245A24();
}

void sub_1A4835688(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = AssociatedTypeWitness;
  v7 = type metadata accessor for PlaceholderUIItem(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E60(&qword_1EB12A400, v5, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A4835984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = AssociatedTypeWitness;
  v9 = type metadata accessor for PlaceholderUIItem(v4, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1A3C50E60(&qword_1EB12A400, v6, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

uint64_t sub_1A4835C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v6 + 224))(a1, v5, v6, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A4835E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  v4 = *a1;
  sub_1A44FFE88();
  v6 = v5;
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = v6;
  v11 = sub_1A5249754();
  v81 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v70 - v12;
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v70 - v17;
  v18 = *(v4 + *MEMORY[0x1E69C2290]);
  v77 = *(v18 + 16);
  v19 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v70 - v24;
  v25 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - v27;
  v76 = v29;
  v83 = sub_1A5249754();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v70 - v30;
  sub_1A5242E04();
  v31 = (*(v25 + 88))(v28, v18);
  if (v31 == *off_1E7720FE8)
  {
    (*(v25 + 96))(v28, v18);
    v32 = v75;
    v33 = v28;
    v34 = v77;
    (*(v19 + 32))(v75, v33, v77);
    swift_getAssociatedTypeWitness();
    (*(v19 + 16))(v22, v32, v34);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    (*(v9 + 104))();
    swift_unknownObjectRelease();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = v72;
    v37 = *(v72 + 16);
    v38 = v71;
    v37(v71, v15, AssociatedTypeWitness);
    v39 = *(v36 + 8);
    v39(v15, AssociatedTypeWitness);
    v37(v15, v38, AssociatedTypeWitness);
    v95 = MEMORY[0x1E6981910];
    v96 = MEMORY[0x1E6981900];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = v78;
    sub_1A3DF4798(v15, AssociatedTypeWitness, v79, AssociatedConformanceWitness, OpaqueTypeConformance2);
    v85 = AssociatedConformanceWitness;
    v86 = OpaqueTypeConformance2;
    v42 = v76;
    WitnessTable = swift_getWitnessTable();
    v44 = v80;
    sub_1A3DF4798(v41, v42, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E6982070]);
    (*(v81 + 8))(v41, v42);
    v39(v15, AssociatedTypeWitness);
    v39(v38, AssociatedTypeWitness);
    (*(v19 + 8))(v75, v77);
    v45 = v44;
    v46 = MEMORY[0x1E6981910];
    v47 = MEMORY[0x1E6981900];
  }

  else
  {
    v77 = AssociatedTypeWitness;
    v75 = v8;
    v47 = MEMORY[0x1E6981900];
    v48 = v76;
    if (v31 != *off_1E7720FF8 && v31 != *off_1E7720FF0)
    {
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    (*(v25 + 96))(v28, v18);
    v50 = *v28;
    v51 = *(*v28 + 64);
    sub_1A5242DF4();
    v51(&v95, v93[0]);
    v52 = __swift_project_boxed_opaque_existential_1(&v95, v97);
    v53 = MEMORY[0x1EEE9AC00](v52);
    (*(v55 + 16))(&v70 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0), v53);
    v94 = sub_1A524B8E4();
    v93[3] = type metadata accessor for PlaceholderUIItem(v94, v56);
    v93[4] = sub_1A3C50E60(&qword_1EB125A78, v57, type metadata accessor for PlaceholderUIItem, &unk_1A53686AC);
    v93[0] = v50;
    v58 = v73;
    v46 = MEMORY[0x1E6981910];
    sub_1A524A554();

    __swift_destroy_boxed_opaque_existential_0(v93);
    __swift_destroy_boxed_opaque_existential_0(&v95);
    v59 = v77;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v95 = v46;
    v96 = v47;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v78;
    v62 = v59;
    v63 = v79;
    sub_1A3DF4890(v58, v62, v79, AssociatedConformanceWitness, v60);
    v91 = AssociatedConformanceWitness;
    v92 = v60;
    v64 = swift_getWitnessTable();
    v45 = v80;
    sub_1A3DF4798(v61, v48, MEMORY[0x1E69E73E0], v64, MEMORY[0x1E6982070]);
    (*(v81 + 8))(v61, v48);
    (*(v74 + 8))(v58, v63);
  }

  v65 = MEMORY[0x1E6982070];
  v95 = v46;
  v96 = v47;
  v66 = swift_getOpaqueTypeConformance2();
  v89 = AssociatedConformanceWitness;
  v90 = v66;
  v87 = swift_getWitnessTable();
  v88 = v65;
  v67 = v83;
  swift_getWitnessTable();
  v68 = v82;
  (*(v82 + 16))(v84, v45, v67);
  return (*(v68 + 8))(v45, v67);
}

void sub_1A48368B0(uint64_t a1, void *a2)
{
  v12[7] = a1;
  v12[4] = *(*(*a2 + *off_1E77210A0) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12[2] = v12 - v2;
  v4 = *(v3 + 16);
  v5 = *(*(v3 + 24) + 8);
  swift_getAssociatedTypeWitness();
  v12[0] = v4;
  v12[1] = v5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PlaceholderUIItem(AssociatedTypeWitness, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1A3C50E60(&qword_1EB12A400, v10, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  v12[13] = AssociatedTypeWitness;
  v12[14] = v8;
  v12[15] = v8;
  v12[16] = AssociatedConformanceWitness;
  v12[17] = v11;
  v12[18] = v11;
  sub_1A5245A24();
}

void sub_1A4836EEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v12[4] = a2;
  v12[2] = a1;
  v12[3] = a4;
  v12[0] = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v12[0]);
  v12[1] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = type metadata accessor for PlaceholderUIItem(v6, v7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_1A3C50E60(&qword_1EB12A400, v10, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  v12[6] = AssociatedTypeWitness;
  v12[7] = v8;
  v12[8] = v8;
  v12[9] = AssociatedConformanceWitness;
  v12[10] = v11;
  v12[11] = v11;
  sub_1A5245A24();
}

void sub_1A4837374(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v8 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = AssociatedTypeWitness;
  v11 = type metadata accessor for PlaceholderUIItem(v5, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1A3C50E60(&qword_1EB12A400, v7, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

uint64_t sub_1A48376E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 168))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  if (v16 == *off_1E7720FF8)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E6570657270;
    }

LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v16 == *off_1E7720FF0)
  {
    (*(v12 + 96))(v15, v4);
    if (!*(*v15 + 48))
    {

      return 0x646E65707061;
    }

    goto LABEL_8;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A4837AA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + *MEMORY[0x1E69C2290]);
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1A5242E04();
  v16 = (*(v12 + 88))(v15, v4);
  if (v16 == *off_1E7720FE8)
  {
    (*(v12 + 96))(v15, v4);
    (*(v6 + 32))(v11, v15, v5);
    v17 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    (*(v6 + 16))(v8, v11, v5);
    swift_getAssociatedConformanceWitness();
    sub_1A5242614();
    v18 = (*(v17 + 176))();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  else
  {
    if (v16 == *off_1E7720FF8 || v16 == *off_1E7720FF0)
    {
      (*(v12 + 96))(v15, v4);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A4837E98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1A42E6E80(a1, WitnessTable);
}

uint64_t sub_1A4837EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = swift_allocObject();
  sub_1A4837FB4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  return v21;
}

uint64_t sub_1A4837FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v30 = a6;
  v31 = a7;
  v28 = a3;
  v29 = a4;
  v19 = sub_1A52411C4();
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v22[2] = a11;
  v22[3] = a12;
  v22[4] = a8;
  v22[5] = a10;
  *(v13 + 64) = sub_1A483854C;
  *(v13 + 72) = v22;
  *(v13 + 56) = a9;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  v23 = v29;
  *(v13 + 40) = v28;
  *(v13 + 48) = v23;
  if (!a5)
  {

    sub_1A52411B4();
    sub_1A5241164();
    (*(v27 + 8))(v21, v19);
    a5 = sub_1A524C634();
  }

  *(v13 + 16) = a5;
  v24 = v31;
  *(v13 + 80) = v30;
  *(v13 + 88) = v24;
  return v13;
}

uint64_t sub_1A4838154()
{

  sub_1A3C33378(*(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

void sub_1A48381C0(uint64_t a1, uint64_t a2)
{
  sub_1A3C50E60(&qword_1EB12A400, a2, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);

    ;
  }
}

void sub_1A483822C(uint64_t a1, uint64_t a2)
{
  sub_1A3C50E60(&qword_1EB12A400, a2, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);

    ;
  }
}

void sub_1A4838298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for PlaceholderUIItem(AssociatedTypeWitness, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1A3C50E60(&qword_1EB12A400, v4, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

uint64_t sub_1A483854C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  *(a2 + 24) = *(v2 + 16);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v4(a1);
}

uint64_t sub_1A4838614(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1A48387C0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFE)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = 0;
          *v19 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t sub_1A48389D4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  v9 = type metadata accessor for LemonadeBookmark(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a2 + 48))(a1, a2, v10);
  v13 = v12[16];
  sub_1A3C9ED58(v12, type metadata accessor for LemonadeBookmark);
  v20 = v13;
  v19 = 10;
  sub_1A3C3BE04();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v18 == *&v17[8])
  {

    return 1;
  }

  v14 = sub_1A524EAB4();

  if (v14)
  {
    return 1;
  }

  (*(a2 + 96))(a1, a2);
  v15 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness);
  (*(v6 + 8))(v8, v5);
  if (v15 == 1)
  {
    return 0;
  }

  result = (*(a2 + 72))(a1, a2);
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

id sub_1A4838C9C(uint64_t a1, uint64_t a2, SEL *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  (*(a2 + 96))(a1, a2, v9);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v13 = PhotosModel.photokitObject.getter(AssociatedTypeWitness);
    (*(v12 + 8))(v11, AssociatedTypeWitness);
    if (v13)
    {
      v17[1] = &unk_1F198AE70;
      v14 = swift_dynamicCastObjCProtocolConditional();
      if (v14)
      {
        v15 = [v14 *a3];

        return v15;
      }
    }
  }

  return 0;
}

uint64_t sub_1A4838E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A4838EF0(a1, a2, a3);
  return v6;
}

char *sub_1A4838EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A5241604();
  sub_1A3C5921C(a1, &v3[qword_1EB1EBFA8]);
  *(v3 + 2) = a2;
  v8 = *(*v3 + 112);
  v9 = *(v7 + 80);
  v10 = *(v9 - 8);
  (*(v10 + 32))(&v3[v8], a3, v9);
  (*(v10 + 56))(&v3[v8], 0, 1, v9);
  return v3;
}

uint64_t sub_1A4839034()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 32))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A4839208()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 24))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A48393D0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 40))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A48395A4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 112), v4, v6);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 48))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1A48397B0(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v1;
  sub_1A3C38BD4(0xD000000000000021);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  v5 = objc_allocWithZone(off_1E7721410);

  v6 = sub_1A524C634();

  v7 = sub_1A524C634();
  v11[4] = sub_1A483FFE0;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3C2E0D0;
  v11[3] = &block_descriptor_285;
  v8 = _Block_copy(v11);
  v9 = [v5 initWithTitle:v6 systemImageName:v7 role:1 handler:v8];

  _Block_release(v8);

  sub_1A3C69CFC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1A52F9790;
  *(result + 32) = v9;
  return result;
}

double sub_1A48399D0(uint64_t a1)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1A524CCB4();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_1A524CC54();

    v8 = sub_1A524CC44();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    sub_1A3D4D930(0, 0, v3, &unk_1A5369140, v9);
  }

  return result;
}

uint64_t sub_1A4839B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1A524CC54();
  *(v4 + 24) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4839BB4, v6, v5);
}

void sub_1A4839BB4()
{
  v1 = *(v0 + 16);

  v3 = (*(*v1 + 136))(v2);
  sub_1A42E1AB0(v3, v4);
}

uint64_t *sub_1A4839C9C()
{

  sub_1A3C9ED58(v0 + qword_1EB1EBFA8, type metadata accessor for LemonadeBookmark);
  v1 = *(*v0 + 112);
  v2 = sub_1A524DF24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A4839F4C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v4 + 112);
  v6 = sub_1A524DF24();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1A483A178@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 136))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A483A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A52461D4();
}

uint64_t sub_1A483A450()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1A524DF24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  if (!*(v0 + *(v1 + 128)))
  {
    return 0;
  }

  v13[1] = sub_1A5243164();
  sub_1A524CB74();
  swift_getWitnessTable();
  sub_1A524D074();
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {

    (*(v4 + 8))(v6, v3);

    return 0;
  }

  (*(v7 + 32))(v10, v6, AssociatedTypeWitness);

  v12 = sub_1A52431A4();

  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

uint64_t sub_1A483A734()
{
  v1 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + qword_1EB1EB160;
  v5 = type metadata accessor for LemonadeBookmark(0);
  sub_1A3C58EB8(v4 + *(v5 + 24), v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = sub_1A3C9ED58(v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (EnumCaseMultiPayload != 9)
  {
    v10 = (*(*v0 + 168))(v7);
    if (v10)
    {
      v20 = v10;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v12 = *(AssociatedConformanceWitness + 32);
      v13 = swift_checkMetadataState();
      v14 = v12(v13, AssociatedConformanceWitness);
      v16 = v15;
      swift_unknownObjectRelease();
      if (v16)
      {
        return v14;
      }
    }

    v23 = *(v4 + 16);
    v22 = 10;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v20 == v19[1] && v21 == v19[2])
    {
    }

    else
    {
      v18 = sub_1A524EAB4();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    type metadata accessor for LemonadeMapModel(0);
    return sub_1A3FDB364();
  }

  v8 = *(v4 + 16);
  if (v8 > 5)
  {
    if (*(v4 + 16) > 7u)
    {
      if (v8 == 8)
      {
        v9 = 0xD000000000000026;
        return sub_1A3C38BD4(v9);
      }

      if (v8 == 9)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v8 == 6)
      {
        v9 = 0xD00000000000002ALL;
        return sub_1A3C38BD4(v9);
      }

      if (v8 == 7)
      {
        v9 = 0xD000000000000023;
        return sub_1A3C38BD4(v9);
      }
    }
  }

  else
  {
    if (*(v4 + 16) <= 1u)
    {
      if (*(v4 + 16))
      {
        v9 = 0xD00000000000001FLL;
      }

      else
      {
        v9 = 0xD000000000000020;
      }

      return sub_1A3C38BD4(v9);
    }

    if (v8 == 2)
    {
      v9 = 0xD000000000000022;
      return sub_1A3C38BD4(v9);
    }

    if (v8 == 4)
    {
LABEL_28:
      v9 = 0xD000000000000027;
      return sub_1A3C38BD4(v9);
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A483AB58()
{
  if (!(*(*v0 + 168))())
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 48);
  v3 = swift_checkMetadataState();
  v4 = v2(v3, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A483AC84()
{
  if (!(*(*v0 + 168))())
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 24);
  v3 = swift_checkMetadataState();
  v4 = v2(v3, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A483ADA4()
{
  v1 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + qword_1EB1EB160;
  v5 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v6 = sub_1A3CA1BC0(v4 + v5, v3);
  v7 = sub_1A3C9ED58(v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v6)
  {
    v24 = *(v4 + 16);
    v23 = 7;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v21 == v19 && v22 == v20)
    {

      return 0xD00000000000001BLL;
    }

    v8 = sub_1A524EAB4();

    if (v8)
    {
      return 0xD00000000000001BLL;
    }
  }

  v10 = (*(*v0 + 168))(v7);
  if (!v10 || (v21 = v10, swift_getAssociatedTypeWitness(), AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), v12 = *(AssociatedConformanceWitness + 40), v13 = swift_checkMetadataState(), v9 = v12(v13, AssociatedConformanceWitness), v15 = v14, swift_unknownObjectRelease(), !v15))
  {
    v24 = *(v4 + 16);
    v23 = 10;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v21 == v19 && v22 == v20)
    {
    }

    else
    {
      v16 = sub_1A524EAB4();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    sub_1A3FDB358();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return v9;
}

uint64_t sub_1A483B124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &AssociatedConformanceWitness - v7;
  v9 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &AssociatedConformanceWitness - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v3 + 168))(v10);
  if (!v13)
  {
    LOBYTE(v47) = *(v1 + qword_1EB1EB160 + 16);
    v49 = 10;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v45[0] == v42)
    {
    }

    else
    {
      v20 = sub_1A524EAB4();

      if ((v20 & 1) == 0)
      {
        return sub_1A483CBB8();
      }
    }

    v21 = *(v1 + *(*v1 + 120));
    v22 = *(v21 + 16);
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    v23 = *(v21 + 24);
    v24 = v22;
    v25 = [v23 viewMode];
    sub_1A3C6C180(&v42);
    v47 = v42;
    v48 = BYTE8(v42);
    v26 = sub_1A412FAA0();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = sub_1A3C5A374();
    v34 = sub_1A3C30368();
    LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v24, v45, &v47, v25, 0, 0, 1, v33 & 1, v41, v26, v28, v30, v32, v34 & 1);
    type metadata accessor for LemonadeNavigationDestination(0);
    return swift_storeEnumTagMultiPayload();
  }

  v40 = v13;
  v14 = v1 + qword_1EB1EB160;
  v15 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v14) = sub_1A3CA1BC0(v14 + v15, v12);
  v16 = sub_1A3C9ED58(v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v14)
  {
    (*(*v2 + 240))(v16);
    return swift_unknownObjectRelease();
  }

  sub_1A3CA2A44(0);
  v18 = v40;
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  if ((sub_1A52426F4() & 1) == 0)
  {
    v19 = swift_unknownObjectRelease();
LABEL_12:
    if ((MEMORY[0x1A590D320](v19) & 1) == 0)
    {
      *&v45[0] = v18;
      v35 = swift_checkMetadataState();
      swift_getAssociatedConformanceWitness();
      if (PhotosModel.photokitObject.getter(v35))
      {
        v43 = type metadata accessor for LemonadeObservableCollectionBookmark(0, v6, v4, v36);
        WitnessTable = swift_getWitnessTable();
        *&v42 = v2;

        sub_1A45DF484(&v42);
      }
    }

    swift_checkMetadataState();
    sub_1A5242604();
    goto LABEL_17;
  }

  swift_checkMetadataState();
  sub_1A5242604();
  swift_unknownObjectRelease();
LABEL_17:
  (*(v5 + 112))(v8, *(v2 + *(*v2 + 120)), v6, v5);
  swift_unknownObjectRelease();
  return (*(v38 + 8))(v8, AssociatedTypeWitness);
}

void sub_1A483B910(void *a1@<X8>)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + qword_1EB1EB160;
  v7 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v8 = sub_1A3CA1BC0(v6 + v7, v5);
  sub_1A3C9ED58(v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v8 & 1) == 0)
  {
    type metadata accessor for LemonadeNavigationDestination(0);
    goto LABEL_7;
  }

  v9 = *(v6 + 16);
  if (v9 > 5)
  {
    if (*(v6 + 16) > 7u)
    {
      if (v9 == 8)
      {
        v18 = [*(*(v1 + *(*v1 + 120)) + 16) px_virtualCollections];
        v19 = [v18 sharedAlbumsCollectionList];

        PXDisplayCollectionDetailedCountsMake();
        *a1 = v20;
        a1[1] = v21;
        a1[2] = v22;
        a1[3] = v23;
        type metadata accessor for LemonadeNavigationDestination(0);
        goto LABEL_7;
      }

      if (v9 == 9)
      {
        sub_1A46833FC(*(v1 + *(*v1 + 120)));
      }
    }

    else if (v9 == 6 || v9 == 7)
    {

      PXDisplayCollectionDetailedCountsMake();
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v17;
      type metadata accessor for LemonadeNavigationDestination(0);
      goto LABEL_7;
    }

LABEL_22:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  if (*(v6 + 16) > 1u)
  {
    if (v9 == 2)
    {
      sub_1A45A2EA0(*(v1 + *(*v1 + 120)), a1);
      return;
    }

    if (v9 == 4)
    {
      v28 = 0;
      sub_1A3C36888();

      sub_1A414D2C8(v24, 0, 0xE000000000000000, &v28, &v29);
      v25 = v30;
      v26 = v31;
      *a1 = v29;
      a1[2] = v25;
      *(a1 + 24) = v26;
      type metadata accessor for LemonadeNavigationDestination(0);
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if (!*(v6 + 16))
  {
    v10 = [*(*(v1 + *(*v1 + 120)) + 16) px_rootAlbumCollectionList];

    PXDisplayCollectionDetailedCountsMake();
    *a1 = v11;
    a1[1] = v12;
    a1[2] = v13;
    a1[3] = v14;
    type metadata accessor for LemonadeNavigationDestination(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return;
  }

  sub_1A4331940(*(v1 + *(*v1 + 120)), a1);
}

uint64_t sub_1A483BD24()
{
  v1 = v0;
  v2 = *(*(*(*v0 + 88) + 8) + 8);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v16 - v5;
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + qword_1EB1EB160;
  type metadata accessor for LemonadeBookmark(0);
  swift_storeEnumTagMultiPayload();
  sub_1A4840048(&qword_1EB12A590, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C5B0);
  v11 = sub_1A524C594();
  sub_1A3C9ED58(v9, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v11)
  {
    goto LABEL_2;
  }

  v24 = *(v10 + 16);
  v23 = 10;
  sub_1A3C3BE04();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v21 == v19 && v22 == v20)
  {

    v12 = 1;
    return v12 & 1;
  }

  v13 = sub_1A524EAB4();

  if (v13)
  {
LABEL_2:
    v12 = 1;
  }

  else if ((*(*v1 + 168))(v14))
  {
    swift_checkMetadataState();
    sub_1A5242604();
    v12 = (*(v2 + 128))(v6, v3, v2);
    swift_unknownObjectRelease();
    (*(v17 + 8))(v6, v18);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

id sub_1A483C0AC()
{
  v1 = v0;
  v2 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[2] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9[1] = v9 - v4;
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(*(v1 + *(v2 + 120)) + 16);
  v7 = sub_1A3F9EAF8(v6);

  if (!v7)
  {
    v7 = (*(*v1 + 168))();
    if (v7)
    {
      swift_checkMetadataState();
      sub_1A5242604();
      swift_unknownObjectRelease();
      sub_1A5246234();
    }
  }

  return v7;
}

uint64_t sub_1A483C3B4(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  v2 = *v1;
  sub_1A3C38BD4(0xD00000000000001ALL);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  v5 = objc_allocWithZone(off_1E7721410);

  v6 = sub_1A524C634();

  v7 = sub_1A524C634();
  v11[4] = sub_1A4840090;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3C2E0D0;
  v11[3] = &block_descriptor_20_6;
  v8 = _Block_copy(v11);
  v9 = [v5 initWithTitle:v6 systemImageName:v7 role:1 handler:v8];

  _Block_release(v8);

  sub_1A3C69CFC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1A52F9790;
  *(result + 32) = v9;
  return result;
}

double sub_1A483C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A524CC54();

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a1;
  sub_1A3DCC930(0, 0, v8, &unk_1A5369128, v11);

  return result;
}

uint64_t sub_1A483C708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A524E5E4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A483C7FC, v7, v6);
}

uint64_t sub_1A483C7FC(uint64_t a1)
{
  sub_1A524EBB4();
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = sub_1A483C8C8;

  return sub_1A3DCFAB0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A483C8C8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v3 = v2[11];
  v4 = v2[10];
  if (v0)
  {
    v5 = sub_1A483CB4C;
  }

  else
  {
    v5 = sub_1A483CA50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A483CA50()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(*Strong + 176);

    v4 = v2(v3);
    sub_1A42E1AB0(v4, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A483CB4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A483CBB8()
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1 + qword_1EB1EB160;
  v6 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1A3CA1BC0(v5 + v6, v4);
  v8 = sub_1A3C9ED58(v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if (v7)
  {
    return (*(*v1 + 240))(v8);
  }

  type metadata accessor for LemonadeNavigationDestination(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A483CCD4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - v10;
  v49 = *(v4 + 88);
  v11 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = sub_1A524DF24();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v43 - v13;
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v43 - v15;
  swift_getAssociatedTypeWitness();
  v48 = v11;
  swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v57 = type metadata accessor for LemonadeBookmark(0);
  v46 = *(v57 - 8);
  v20 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v47 = &v43 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v45 = &v43 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v61 = &v43 - v27;
  sub_1A3C58EB8(v2 + qword_1EB1EB160, &v43 - v27, type metadata accessor for LemonadeBookmark);
  (*(v17 + 16))(v19, a1, v16);
  sub_1A3C34400(0, &qword_1EB1406E0, &protocol descriptor for PhotoKitItemList);
  if (swift_dynamicCast())
  {
    v44 = v2;
    sub_1A3C34460(v62, v64);
    v29 = v65;
    v28 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    if (!(*(v28 + 40))(v29, v28))
    {
      swift_getAssociatedConformanceWitness();
      sub_1A52463B4();
    }

    __swift_destroy_boxed_opaque_existential_0(v64);
    v2 = v44;
  }

  else
  {
    v63 = 0;
    memset(v62, 0, sizeof(v62));
    sub_1A3EA8D18(v62, &qword_1EB1434E0, &qword_1EB1406E0, &protocol descriptor for PhotoKitItemList);
  }

  v30 = sub_1A3C4A5F8();
  v32 = v58;
  v31 = v59;
  v33 = v60;
  (*(v58 + 16))(v60, v30, v59);
  v34 = v61;
  sub_1A3C58EB8(v61, v21, type metadata accessor for LemonadeBookmark);
  v35 = sub_1A5246F04();
  v36 = sub_1A524D224();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v37 = 136315138;
    sub_1A4840048(&qword_1EB13E810, type metadata accessor for LemonadeBookmark, &protocol conformance descriptor for LemonadeBookmark);
    v38 = sub_1A524EA44();
    v40 = v39;
    sub_1A3C9ED58(v21, type metadata accessor for LemonadeBookmark);
    sub_1A3C2EF94(v38, v40, v64);
  }

  sub_1A3C9ED58(v21, type metadata accessor for LemonadeBookmark);
  (*(v32 + 8))(v33, v31);
  v41 = *(v2 + *(*v2 + 144));
  os_unfair_lock_lock((v41 + 20));
  *(v41 + 16) = 0;
  os_unfair_lock_unlock((v41 + 20));
  return sub_1A3C9ED58(v34, type metadata accessor for LemonadeBookmark);
}

void sub_1A483D8B8(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v7);
  sub_1A484009C(a3, *(v5 + 80), *(v5 + 88));
}

uint64_t sub_1A483DBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A483DC10, 0, 0);
}

uint64_t sub_1A483DC10()
{
  v1 = v0[3];
  v0[4] = *(v0[2] + 16);
  v0[5] = *v1;
  v0[6] = v1[1];
  sub_1A524CC54();
  v0[7] = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A483DCC0, v3, v2);
}

void sub_1A483DCC0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  sub_1A42E1AB0(v2, v1);
}

uint64_t *sub_1A483DEC8()
{
  v1 = *v0;

  sub_1A3C9ED58(v0 + qword_1EB1EB160, type metadata accessor for LemonadeBookmark);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  swift_unknownObjectRelease();

  v2 = *(*v0 + 152);
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1A483E194@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  return result;
}

uint64_t sub_1A483E3DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A483E42C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1A483E480@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 128))(v3, v4);
  v6 = result;
  if (result)
  {
    result = sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v6;
  a1[3] = result;
  return result;
}

void sub_1A483E508()
{
  sub_1A3C76188();

    ;
  }
}

void sub_1A483E544()
{
  sub_1A3C76188();

    ;
  }
}

uint64_t sub_1A483E580()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

BOOL sub_1A483E5D4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 128))(v1, v2);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      v3 = 0;
    }
  }

  v5 = v3 != 0;

  return v5;
}

uint64_t sub_1A483E664()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 88))(v1, v2);
}

unint64_t sub_1A483E6B8()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return sub_1A4838C9C(v2, v3, &selRef_px_containsPrivateContent) & 1;
}

uint64_t sub_1A483E704(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A483E744(a1);
  return v2;
}

uint64_t *sub_1A483E744(uint64_t a1)
{
  v3 = *v1;
  *(v1 + *(*v1 + 112)) = 0;
  sub_1A5241604();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

double sub_1A483E800(char a1)
{
  v2 = v1;
  v4 = *(*v2 + 112);
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    *(v2 + v4) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 256))(v8);
  }

  return result;
}

uint64_t sub_1A483E9C4(uint64_t a1)
{
  v3 = *v1;
  v10 = *(*v1 + 80);
  v6 = v10;
  v11 = *(v3 + 96);
  KeyPath = swift_getKeyPath();
  v8 = v1;
  v9 = a1;
  (*(*v1 + 256))(KeyPath, sub_1A484027C, v7, MEMORY[0x1E69E7CA8] + 8);

  return (*(*(v6 - 8) + 8))(a1);
}

uint64_t sub_1A483EB60@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  (*(*v1 + 248))();

  v3 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_1A483ECBC(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, v3);
  return (*(**a2 + 168))(v5);
}

uint64_t (*sub_1A483ED9C(uint64_t *a1))()
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
  MEMORY[0x1EEE9AC00](v3);
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 248))(KeyPath, v10, v11);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v12);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableBookmark(255, v6, v7, v8);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A483EAF4(v4);
  return sub_1A483EF80;
}

void sub_1A483EF8C(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 160))(v3);
  sub_1A5246224();
}

uint64_t sub_1A483F0A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 160))(v5);
  v8 = sub_1A5242554();
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A483F23C()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 248))(KeyPath, v2, v3);

  v4 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v4);
}

uint64_t sub_1A483F314@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A483F3AC(uint64_t *a1))()
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
  MEMORY[0x1EEE9AC00](v3);
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 248))(KeyPath, v10, v11);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v12);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableBookmark(255, v6, v7, v8);
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A483F1D0(v4);
  return sub_1A483F590;
}

void sub_1A483F59C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 96);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableBookmark(255, v5, v6, v7);
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v3);
}

uint64_t sub_1A483F878()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 120);
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A483F954(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void (*sub_1A483FA0C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 176))();
  return sub_1A3D3D728;
}

BOOL sub_1A483FB28()
{
  v1 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeBookmark(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 160))(v15, v6);
  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v10 + 48))(v9, v10);
  sub_1A3C58EB8(&v8[*(v5 + 32)], v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  sub_1A3C9ED58(v8, type metadata accessor for LemonadeBookmark);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    PXDisplayCollectionDetailedCountsMake();
    v12 = v11 == 203;
  }

  else
  {
    sub_1A3C9ED58(v3, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v12 = 0;
  }

  sub_1A3F9670C(v15);
  return v12;
}

uint64_t sub_1A483FCE8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  (*(v10 + 160))(v7);
  v11 = a2(v5, a1);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_1A483FE18(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  (*(v7 + 160))(v4);
  v8 = sub_1A5242774();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t objectdestroy_8Tm_2()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4840048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A484009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_1A5246234();
}

uint64_t sub_1A484027C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v2;
  v4 = *(*v2 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v2 + v4, v1);
  return swift_endAccess();
}

uint64_t sub_1A4840358(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4840394(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A484043C(uint64_t a1)
{
  result = sub_1A40F265C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4840468()
{
  result = qword_1EB12A368;
  if (!qword_1EB12A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A368);
  }

  return result;
}

uint64_t sub_1A48404C0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4840550(uint64_t a1)
{
  result = type metadata accessor for LemonadeBookmark(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A524DF24();
    if (v3 <= 0x3F)
    {
      result = sub_1A5241614();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A4840680(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4840758()
{
  v2 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A483DBF0(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A4840860()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A483C708(v3, v4, v5, v2);
}

uint64_t sub_1A48408F4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4839B1C(v3, v4, v5, v2);
}

uint64_t static LemonadeViewFactory.sharedLibraryBannerView(for:delegate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibraryBannerView(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1A4281BD8(a1, (&v16 - v9));
  v11 = *(v5 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v10[v11] = a2;
  sub_1A4840AB4(v10, v7);
  sub_1A4840B18(0);
  v13 = objc_allocWithZone(v12);
  v14 = sub_1A52485F4();
  sub_1A4840B7C(v10);
  return v14;
}

uint64_t sub_1A4840AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedLibraryBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4840B18(uint64_t a1)
{
  if (!qword_1EB1434F0)
  {
    type metadata accessor for SharedLibraryBannerView(255);
    sub_1A4473BBC();
    v1 = sub_1A5248614();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1434F0);
    }
  }
}

uint64_t sub_1A4840B7C(uint64_t a1)
{
  v2 = type metadata accessor for SharedLibraryBannerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id LemonadeViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static LemonadeDnDUtilities.performActionForDragging(containerObject:sourceObjects:targetObject:actionProviderDelegate:merging:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a1)
  {
    sub_1A484210C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F8E10;
    ObjectType = swift_getObjectType();
    *(v10 + 56) = ObjectType;
    *(v10 + 32) = a1;
    sub_1A48417A4();
    swift_unknownObjectRetain_n();
    v12 = MEMORY[0x1A5908EF0](v10);
    v13 = sub_1A4841F60(MEMORY[0x1E69E7CC0]);
    if ((a5 & 1) == 0)
    {
      v24 = *off_1E7721A08;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1A52F8E10;
      *(v25 + 56) = ObjectType;
      *(v25 + 32) = a1;
      swift_unknownObjectRetain();
      v16 = v24;
      v17 = MEMORY[0x1A5908EF0](v25);

      v26 = *off_1E77219C8;
      swift_unknownObjectRetain();
      v27 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v13;
      sub_1A4841C88(a2, v27, isUniquelyReferenced_nonNull_native);

      v35 = v13;
      v29 = *off_1E77219D0;
      swift_unknownObjectRetain();
      sub_1A4841300(a3, v29);
      if (!a4)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    if (a3)
    {
      v14 = *off_1E77219D8;
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1A52F8E10;
      *(v15 + 56) = swift_getObjectType();
      *(v15 + 32) = a3;
      swift_unknownObjectRetain_n();
      v16 = v14;
      v17 = MEMORY[0x1A5908EF0](v15);

      v18 = *off_1E77219C0;
      swift_unknownObjectRetain();
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1A4841C88(a2, v18, v19);
      swift_unknownObjectRelease();

      v35 = v13;
      if (!a4)
      {
LABEL_5:

        swift_unknownObjectRelease();

        return;
      }

LABEL_9:
      sub_1A4841404(v35);
    }

    v30 = sub_1A524D244();
    v31 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = v31;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136315138;
      sub_1A3C2EF94(0xD000000000000064, 0x80000001A53EE1B0, &v34);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_1A524D244();
    v21 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = v21;
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v23 = 136315138;
      sub_1A3C2EF94(0xD000000000000064, 0x80000001A53EE1B0, &v35);
    }
  }
}

void sub_1A4841300(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A4841C88(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v13;
  }

  else
  {
    v6 = sub_1A3C8BF74(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v14 = *v3;
      if (!v9)
      {
        sub_1A4841DF4();
        v10 = v14;
      }

      swift_unknownObjectRelease();
      sub_1A4841AC0(v8, v10, v11);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_1A4841404(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4842084(0, &qword_1EB13C858, MEMORY[0x1E69E7CA0] + 8);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id LemonadeDnDUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeDnDUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeDnDUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A48417A4()
{
  result = qword_1EB126690;
  if (!qword_1EB126690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126690);
  }

  return result;
}

void sub_1A48417F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4842084(0, &unk_1EB143560, MEMORY[0x1E69E7C98] + 8);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      sub_1A524C674();
      sub_1A524EC94();
      sub_1A524C794();
      v24 = sub_1A524ECE4();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4841AC0(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1A524E244() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      sub_1A524C674();
      sub_1A524EC94();
      v11 = v10;
      sub_1A524C794();
      v12 = sub_1A524ECE4();

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v4);
        v16 = (v14 + 8 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v4);
        v19 = (v17 + 8 * v7);
        if (v4 != v7 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

id sub_1A4841C88(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A3C8BF74(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A48417F0(v13, a3 & 1);
      v8 = sub_1A3C8BF74(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PXActionParameterKey();
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A4841DF4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_1A4841DF4()
{
  v1 = v0;
  sub_1A4842084(0, &unk_1EB143560, MEMORY[0x1E69E7C98] + 8);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

unint64_t sub_1A4841F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A4842084(0, &unk_1EB143560, MEMORY[0x1E69E7C98] + 8);
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_1A3C8BF74(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
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

void sub_1A4842084(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for PXActionParameterKey();
    sub_1A3C38278(&unk_1EB1356B0, &unk_1A5377DC0);
    v4 = sub_1A524E7A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A484210C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4842180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0) + 24);
  v7 = sub_1A52411C4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1A4842204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_1A4842278(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A4842300(a1, v3 + OBJC_IVAR____TtCC12PhotosUICore36PhotosDetailsViewHeaderContainerView8UserData_configuration);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1A4843ED4(a1, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  return v4;
}

uint64_t sub_1A4842300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A4842384@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for PhotosDetailsViewHeaderContainerView.UserData(0);
  *a1 = v3;

  return v3;
}

double sub_1A48424B4()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1A4842580(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1A48425F0();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A48425F0()
{
  sub_1A4843DB8(0, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData;
  swift_beginAccess();
  if (*(v0 + v7) && (type metadata accessor for PhotosDetailsViewHeaderContainerView.UserData(0), (v8 = swift_dynamicCastClass()) != 0))
  {
    sub_1A4842300(v8 + OBJC_IVAR____TtCC12PhotosUICore36PhotosDetailsViewHeaderContainerView8UserData_configuration, v6);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v10 - 8) + 56))(v6, v9, 1, v10);
  v11 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_configuration;
  swift_beginAccess();
  sub_1A4843E0C(v0 + v11, v3, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  swift_beginAccess();
  sub_1A4843D38(v6, v0 + v11);
  swift_endAccess();
  sub_1A4842B08(v3);
  sub_1A4843E78(v3, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  return sub_1A4843E78(v6, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
}

uint64_t (*sub_1A48427DC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4842840;
}

uint64_t sub_1A4842840(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A48425F0();
  }

  return result;
}

double sub_1A48428C0()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect;
  swift_beginAccess();
  return *v1;
}

void sub_1A4842978(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

void sub_1A4842B08(uint64_t a1)
{
  v72 = a1;
  v2 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v64 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v62 - v6;
  v7 = sub_1A52411C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45526E4(0);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4843DB8(0, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  sub_1A4843DB8(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  v74 = v1;
  v25 = &v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_configuration];
  swift_beginAccess();
  v28 = *(v3 + 48);
  v27 = v3 + 48;
  v26 = v28;
  if (!v28(v25, 1, v2))
  {
    (*(v8 + 16))(v24, &v25[*(v2 + 24)], v7);
  }

  v70 = v25;
  v29 = v8;
  v30 = *(v8 + 56);
  v75 = v24;
  v30();
  sub_1A4843E0C(v72, v16, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  v31 = v26(v16, 1, v2);
  v68 = v27;
  v69 = v2;
  v66 = v26;
  if (v31 == 1)
  {
    sub_1A4843E78(v16, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    v32 = 1;
  }

  else
  {
    (*(v29 + 16))(v21, &v16[*(v2 + 24)], v7);
    sub_1A4843ED4(v16, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    v32 = 0;
  }

  (v30)(v21, v32, 1, v7);
  v33 = *(v71 + 48);
  v34 = MEMORY[0x1E69695A8];
  v35 = v75;
  v36 = v73;
  sub_1A4843E0C(v75, v73, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  sub_1A4843E0C(v21, v36 + v33, &qword_1EB12AFA0, v34);
  v37 = v29;
  v38 = *(v29 + 48);
  if (v38(v36, 1, v7) == 1)
  {
    v39 = MEMORY[0x1E69695A8];
    sub_1A4843E78(v21, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A4843E78(v35, &qword_1EB12AFA0, v39);
    if (v38(v36 + v33, 1, v7) == 1)
    {
      sub_1A4843E78(v36, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
      return;
    }

    goto LABEL_11;
  }

  v40 = v65;
  sub_1A4843E0C(v36, v65, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  if (v38(v36 + v33, 1, v7) == 1)
  {
    v41 = MEMORY[0x1E69695A8];
    sub_1A4843E78(v21, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
    sub_1A4843E78(v75, &qword_1EB12AFA0, v41);
    (*(v37 + 8))(v40, v7);
LABEL_11:
    sub_1A4843ED4(v36, sub_1A45526E4);
    v42 = v70;
    goto LABEL_12;
  }

  v54 = v40;
  v55 = v37;
  v56 = v62;
  (*(v37 + 32))(v62, v36 + v33, v7);
  sub_1A480D1B4(&unk_1EB12AFB0, MEMORY[0x1E69695C8]);
  v57 = sub_1A524C594();
  v58 = *(v55 + 8);
  v58(v56, v7);
  v59 = MEMORY[0x1E69695A8];
  sub_1A4843E78(v21, &qword_1EB12AFA0, MEMORY[0x1E69695A8]);
  sub_1A4843E78(v75, &qword_1EB12AFA0, v59);
  v58(v54, v7);
  sub_1A4843E78(v36, &qword_1EB12AFA0, v59);
  v42 = v70;
  if ((v57 & 1) == 0)
  {
LABEL_12:
    v43 = v67;
    sub_1A4843E0C(v42, v67, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    if (v66(v43, 1, v69) == 1)
    {
      sub_1A4843E78(v43, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
      v44 = 0;
    }

    else
    {
      v45 = v63;
      sub_1A43F8034(v43, v63);
      v46 = v64;
      sub_1A4842300(v45, v64);
      v47 = type metadata accessor for ContentView();
      v48 = objc_allocWithZone(v47);
      *&v48[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController] = 0;
      *&v48[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_model] = *v46;
      *&v48[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_photosViewHeaderAccessoryModel] = v46[1];
      v76.receiver = v48;
      v76.super_class = v47;

      v44 = objc_msgSendSuper2(&v76, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      sub_1A4843ED4(v46, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
      sub_1A4843ED4(v45, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
    }

    v49 = v74;
    v50 = *&v74[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView];
    *&v74[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView] = v44;
    v51 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView;
    v52 = *&v49[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView];
    v53 = v44;
    if (v52)
    {
      if (v52 == v50)
      {
        goto LABEL_24;
      }

      if (!v50)
      {
        goto LABEL_23;
      }
    }

    else if (!v50)
    {
      goto LABEL_24;
    }

    [v50 removeFromSuperview];
    v52 = *&v74[v51];
    if (v52)
    {
LABEL_23:
      v60 = v52;
      v61 = v74;
      [v74 addSubview_];
      [v61 setNeedsLayout];
    }

LABEL_24:
  }
}

id sub_1A4843570(void *a1)
{
  *&v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_userData] = 0;
  v3 = &v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_clippingRect];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_configuration;
  v5 = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsViewHeaderContainerView_contentView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PhotosDetailsViewHeaderContainerView(0);
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1A4843690(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A4843784(uint64_t a1)
{
  sub_1A4843DB8(319, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A484386C(uint64_t a1)
{
  result = type metadata accessor for PhotosDetailsViewHeaderContainerViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PhotosViewHeaderAccessoryModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_1A52411C4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4843910(uint64_t a1)
{
  result = type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration(319);
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

void sub_1A4843A08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController;
  if (!*&v0[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController])
  {
    v3 = (*(**&v0[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_photosViewHeaderAccessoryModel] + 144))();
    if (v3)
    {
      v4 = v3;

      PXDisplayCollectionDetailedCountsMake();
      v16 = v5;
      v17 = v6;
      sub_1A4843C88(0);
      v8 = objc_allocWithZone(v7);
      v9 = sub_1A5249624();
      [v4 addChildViewController_];
      v10 = [v9 view];
      if (!v10)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v11 = v10;
      [v1 addSubview_];

      [v9 didMoveToParentViewController_];
      v12 = *&v1[v2];
      *&v1[v2] = v9;
    }
  }

  v13 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_B50DC8208AF8C85E284D3BD8D3329DB911ContentView_swiftUIHostingViewController];
  if (!v13)
  {
    return;
  }

  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v1 bounds];
  [v15 setFrame_];
}

void sub_1A4843C88(uint64_t a1)
{
  if (!qword_1EB122DB0)
  {
    sub_1A4843CE4();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122DB0);
    }
  }
}

unint64_t sub_1A4843CE4()
{
  result = qword_1EB125F58;
  if (!qword_1EB125F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125F58);
  }

  return result;
}

uint64_t sub_1A4843D38(uint64_t a1, uint64_t a2)
{
  sub_1A4843DB8(0, &qword_1EB125E10, type metadata accessor for PhotosDetailsViewHeaderContainerView.Configuration);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A4843DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1A4843E0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4843DB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4843E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4843DB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4843ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4843F38(uint64_t a1, uint64_t a2)
{
  sub_1A3EBD0AC(0, a2);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1EBFB0 = result;
  return result;
}

uint64_t *sub_1A4843F98()
{
  if (qword_1EB1DAD70 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBFB0;
}

void sub_1A4843FE8()
{
  v1 = v0;
  if ([v0 people])
  {
    type metadata accessor for SocialGroupCreateGroupAction(0, v2);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = sub_1A524D244();
  v4 = *sub_1A3CAA3FC();
  sub_1A5246DF4(v3, &dword_1A3C1C000, v4, "Failed to perform create Social Group action because there aren't any people.", 77, 2, MEMORY[0x1E69E7CC0]);

  [v1 completeBackgroundTaskWithSuccess:0 error:0];
}

void sub_1A4844274(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_mutationActionDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);

      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1 & 1, a2, 0, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      a2 = sub_1A5240B74();
    }

    [v10 completeBackgroundTaskWithSuccess:a1 & 1 error:a2];
  }
}

id sub_1A48443F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = &v4[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_customTitle];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v4[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_keyAssetUUID];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_photoLibrary] = 0;
  v9 = &v4[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_creationCompletionBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer_mutationActionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0, &unk_1A5377DC0);
  v11 = sub_1A524C3D4();

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithActionType_assetCollectionReference_parameters_, v10, a3, v11);

  return v12;
}

uint64_t sub_1A48446C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = objc_allocWithZone(v4);
  v8 = sub_1A484583C();
  (*(*(*(v5 + qword_1EB1EBFB8) - 8) + 8))(a1);
  return v8;
}

void sub_1A48447E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosSearchCollectionResultsController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBFB8), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBFB8 + 8), a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  PXCanShowInternalUI();
}

void sub_1A4844BEC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for PhotosSearchCollectionResultsController(0, *((*MEMORY[0x1E69E7D40] & v7) + qword_1EB1EBFB8), *((*MEMORY[0x1E69E7D40] & v7) + qword_1EB1EBFB8 + 8), a4);
  v18.receiver = v5;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, sel_viewIsAppearing_, a1 & 1);
  v10 = *(v5 + *((*v8 & *v5) + qword_1EB1EBFB8 + 16));
  if (v10)
  {
    v11 = *(*v10 + 352);

    v11(v17, v12);
    LOBYTE(v11) = v17[0];

    if ((v11 & 1) == 0)
    {
      v15 = [v5 navigationItem];
      sub_1A4845064(v15, v16);
    }

    PhotosSearchBarCoordinator<>.barButtonItems.getter(&protocol witness table for PhotosSearchBarPosition.SystemBar);
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    v13 = sub_1A524CA14();

    [v5 setToolbarItems_];

    v14 = [v5 navigationItem];
    [v14 _setToolbarAvoidsKeyboard_];
  }
}

void sub_1A4845010(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_1A4844BEC(a3, v6, v4, v5);
}

uint64_t sub_1A48452B0()
{
  v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EB1EBFB8 + 24));
  if (*v1)
  {
    return (*v1)();
  }

  return result;
}

void sub_1A4845328(void *a1)
{
  v1 = a1;
  sub_1A48452B0();
}

uint64_t sub_1A48453D0()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = (v0 + *((*v1 & *v0) + qword_1EB1EBFB8 + 24));
  v3 = *v2;
  v4 = v2[1];

  return sub_1A3C784D4(v3, v4);
}

id sub_1A4845490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosSearchCollectionResultsController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBFB8), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EBFB8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1A484550C(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = (a1 + *((*v2 & *a1) + qword_1EB1EBFB8 + 24));
  v4 = *v3;
  v5 = v3[1];

  return sub_1A3C784D4(v4, v5);
}

void sub_1A48455D0(unint64_t a1, __n128 a2)
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
  sub_1A48456C0(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
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

uint64_t sub_1A48456C0(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
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
          sub_1A4845C5C(0);
          sub_1A4845CC4();
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
        sub_1A3C52C70(0, &unk_1EB12FF68, 0x1E69DC720);
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

uint64_t sub_1A484583C()
{
  v1.n128_f64[0] = MEMORY[0x1EEE9AC00]((*(*(*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EB1EBFB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + *(v2 + 16)) = v3;
  v6 = (v0 + *((*v4 & *v0) + *(v5 + 4024) + 24));
  *v6 = v7;
  v6[1] = v8;
  (*(v9 + 16))(&v14 - v10, v11, v12, v1);
  return sub_1A5249624();
}

char *sub_1A48459EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1A3C52C70(0, &unk_1EB12FF68, 0x1E69DC720);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1A524E2B4();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_1A524E2B4();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1A4845B18(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    if (!v10)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1A524E2B4();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v14 = sub_1A524E2B4();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (v15)
  {
    goto LABEL_18;
  }

  sub_1A3D5C1C8(result, 1);

  return sub_1A48459EC(v8, v7, 1, v5, v16);
}

void sub_1A4845C5C(uint64_t a1)
{
  if (!qword_1EB1435C8)
  {
    sub_1A3C52C70(255, &unk_1EB12FF68, 0x1E69DC720);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1435C8);
    }
  }
}

unint64_t sub_1A4845CC4()
{
  result = qword_1EB1435D0;
  if (!qword_1EB1435D0)
  {
    sub_1A4845C5C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1435D0);
  }

  return result;
}

uint64_t sub_1A4845D9C(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1A3E88280;

  return sub_1A484A9EC(a1);
}

uint64_t sub_1A4845E60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1A3E91FB8;

  return sub_1A484A9EC(a1);
}

double sub_1A4845F10()
{
  v1 = v0;
  v2 = *v0;
  v76 = *(*v0 + 872);
  v75 = *(v2 + 864);
  v3 = v75;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v57 - v7;
  sub_1A484C758(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v57 - v10;
  v66 = &v57 - v10;
  v63 = sub_1A524CCB4();
  v12 = *(v63 - 8);
  v73 = *(v12 + 56);
  v69 = v12 + 56;
  v73(v11, 1, 1, v63);
  v13 = swift_allocObject();
  swift_weakInit();
  v70 = *(*v1 + 144);
  v14 = v5;
  v15 = *(v5 + 16);
  v62 = v5 + 16;
  v67 = v15;
  v15(v8, &v1[v70], AssociatedTypeWitness);
  v72 = sub_1A524CC54();

  v16 = sub_1A524CC44();
  v17 = *(v14 + 80);
  v71 = v17;
  v18 = (v17 + 48) & ~v17;
  v74 = v18;
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = v19;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v16;
  v20[3] = v21;
  v22 = v76;
  v20[4] = v3;
  v20[5] = v22;
  v23 = *(v14 + 32);
  v68 = v14 + 32;
  v61 = v23;
  v24 = v20 + v18;
  v25 = v8;
  v23(v24, v8, AssociatedTypeWitness);
  *(v20 + v19) = v13;

  v26 = v66;
  v27 = sub_1A3D4D930(0, 0, v66, &unk_1A53693F0, v20);
  sub_1A3EE1368(v27, MEMORY[0x1E69E7CA8] + 8);

  v60 = *(*v1 + 888);
  swift_beginAccess();
  sub_1A484C758(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  v65 = v28;
  v64 = sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();

  v29 = v63;
  v73(v26, 1, 1, v63);
  v30 = swift_allocObject();
  swift_weakInit();
  v58 = v25;
  v31 = AssociatedTypeWitness;
  v67(v25, &v1[v70], AssociatedTypeWitness);

  v32 = sub_1A524CC44();
  v33 = v59;
  v34 = swift_allocObject();
  *(v34 + 2) = v32;
  v36 = v75;
  v35 = v76;
  *(v34 + 3) = MEMORY[0x1E69E85E0];
  *(v34 + 4) = v36;
  *(v34 + 5) = v35;
  v37 = v25;
  v38 = v31;
  v39 = v31;
  v40 = v61;
  v61(&v34[v74], v37, v38);
  *&v34[v33] = v30;

  v41 = sub_1A3D4D930(0, 0, v26, &unk_1A5369400, v34);
  sub_1A3EE1368(v41, MEMORY[0x1E69E7CA8] + 8);

  swift_beginAccess();
  sub_1A5247874();
  swift_endAccess();

  v73(v26, 1, 1, v29);
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = v58;
  v67(v58, &v1[v70], v39);

  v44 = sub_1A524CC44();
  v45 = swift_allocObject();
  *(v45 + 2) = v44;
  v47 = v75;
  v46 = v76;
  *(v45 + 3) = MEMORY[0x1E69E85E0];
  *(v45 + 4) = v47;
  *(v45 + 5) = v46;
  v40(&v45[v74], v43, v39);
  *&v45[v33] = v42;

  v48 = v66;
  v49 = sub_1A3D4D930(0, 0, v66, &unk_1A5369410, v45);
  sub_1A3EE1368(v49, MEMORY[0x1E69E7CA8] + 8);

  swift_beginAccess();
  sub_1A5247874();
  swift_endAccess();

  v73(v48, 1, 1, v63);
  v50 = swift_allocObject();
  swift_weakInit();
  v67(v43, &v1[v70], v39);

  v51 = sub_1A524CC44();
  v52 = swift_allocObject();
  *(v52 + 2) = v51;
  v54 = v75;
  v53 = v76;
  *(v52 + 3) = MEMORY[0x1E69E85E0];
  *(v52 + 4) = v54;
  *(v52 + 5) = v53;
  v61(&v52[v74], v43, v39);
  *&v52[v33] = v50;

  v55 = sub_1A3D4D930(0, 0, v66, &unk_1A5369420, v52);
  sub_1A3EE1368(v55, MEMORY[0x1E69E7CA8] + 8);

  swift_beginAccess();
  sub_1A5247874();
  swift_endAccess();

  return result;
}

double sub_1A4846730()
{
  v1 = v0;
  sub_1A46EA098();
  sub_1A433C198();
  v2 = *(*v0 + 888);
  swift_beginAccess();
  *(v1 + v2) = MEMORY[0x1E69E7CC0];

  return result;
}

double OneUpSharePlaySessionRecipientCoordinator.dataSourceUpdateMessages.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(*v1 + 904));

  return result;
}

uint64_t sub_1A484680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[25] = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v7[26] = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1A484C758(0, &qword_1EB143668, type metadata accessor for OneUpSharePlayNavigateMessagePayload, MEMORY[0x1E69E6720]);
  v7[27] = swift_task_alloc();
  v9 = type metadata accessor for OneUpSharePlayNavigateMessagePayload(0);
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  sub_1A484C7BC(0, v10);
  v7[35] = swift_task_alloc();
  sub_1A484C840(0, v11);
  v7[36] = v12;
  v7[37] = *(v12 - 8);
  v7[38] = swift_task_alloc();
  sub_1A484C8C4(0, v13);
  v7[39] = v14;
  v7[40] = *(v14 - 8);
  v7[41] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[42] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v7[43] = v16;
  v7[44] = *(v16 + 64);
  v7[45] = swift_task_alloc();
  sub_1A484C758(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], v8);
  v7[46] = swift_task_alloc();
  v7[47] = sub_1A524CC54();
  v7[48] = sub_1A524CC44();
  v18 = sub_1A524CBC4();
  v7[49] = v18;
  v7[50] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1A4846B84, v18, v17);
}

uint64_t sub_1A4846B84()
{
  v1 = v0[46];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v27 = v0[37];
  v25 = v0[38];
  v26 = v0[36];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v4 + 16))(v2, v7, v3);
  v9 = sub_1A524CC44();
  v10 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 2) = v9;
  *(v11 + 3) = v12;
  *(v11 + 4) = v6;
  *(v11 + 5) = v5;
  (*(v4 + 32))(&v11[v10], v2, v3);
  sub_1A3D4D930(0, 0, v1, &unk_1A5369438, v11);

  sub_1A484CAA4(0, &qword_1EB12D810, sub_1A3E91B00, &type metadata for OneUpSharePlayNavigateMessageSchema);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = sub_1A3E91B54();
  v18 = sub_1A3E91BD0();
  v16(v14, v14, v17, v18, v3, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v27 + 8))(v25, v26);
  swift_beginAccess();
  v19 = sub_1A524CC44();
  v0[51] = v19;
  v20 = swift_task_alloc();
  v0[52] = v20;
  *v20 = v0;
  v20[1] = sub_1A4846E50;
  v21 = v0[39];
  v22 = v0[35];
  v23 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v22, v19, v23, v21);
}

uint64_t sub_1A4846E50()
{
  v1 = *v0;

  v2 = *(v1 + 400);
  v3 = *(v1 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1A4846F94, v3, v2);
}

uint64_t sub_1A4846F94(__n128 a1)
{
  v2 = v1[35];
  sub_1A484C3D8(0, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00, &type metadata for OneUpSharePlayNavigateMessageSchema, a1);
  v4 = v3;
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    (*(v1[40] + 8))(v1[41], v1[39]);
  }

  else
  {
    v5 = *v2;
    v6 = *(v4 + 48);
    if (swift_weakLoadStrong())
    {
      v7 = v1[27];
      v8 = sub_1A3E91B00();
      sub_1A3DC0EC0(v5, &type metadata for OneUpSharePlayNavigateMessageSchema, v8, v7);
    }

    (*(v1[40] + 8))(v1[41], v1[39]);

    v9 = sub_1A5241BE4();
    (*(*(v9 - 8) + 8))(v2 + v6, v9);
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1A4847BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1A524CC54();
  v6[10] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[11] = v8;
  v6[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4847C60, v8, v7);
}

uint64_t sub_1A4847C60()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  v0[13] = v2;
  v3 = *v2;
  sub_1A5246DF4(v1, &dword_1A3C1C000, v3, "Requesting initial data source from host", 40, 2, MEMORY[0x1E69E7CC0]);

  PXDisplayCollectionDetailedCountsMake();
  v4 = sub_1A3E91E6C();
  v5 = sub_1A3DC0E14(v4, &type metadata for OneUpSharePlayRequestInitializationMessageSchema, v4);
  v0[14] = v5;
  v0[6] = v5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 40);
  v8 = swift_checkMetadataState();
  v15 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[15] = v9;
  sub_1A484CAA4(0, &qword_1EB12D840, sub_1A3E91E6C, &type metadata for OneUpSharePlayRequestInitializationMessageSchema);
  v11 = v10;
  v12 = sub_1A3E91EC0();
  v13 = sub_1A3E91F3C();
  *v9 = v0;
  v9[1] = sub_1A4847FE0;

  return (v15)(v0 + 6, v11, v12, v13, v8, AssociatedConformanceWitness);
}

uint64_t sub_1A4847FE0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A48480FC;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1A46EBB5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A48480FC()
{
  v12 = v0;

  v1 = v0[16];
  v2 = v0[13];
  v3 = sub_1A524D264();
  v4 = *v2;
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = sub_1A524EBE4();
    sub_1A3C2EF94(v7, v8, &v11);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A4848278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v7[19] = swift_task_alloc();
  sub_1A484C758(0, &qword_1EB143640, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload, MEMORY[0x1E69E6720]);
  v7[20] = swift_task_alloc();
  v8 = type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload(0);
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  sub_1A484C5CC(0, v9);
  v7[27] = swift_task_alloc();
  sub_1A484C650(0, v10);
  v7[28] = v11;
  v7[29] = *(v11 - 8);
  v7[30] = swift_task_alloc();
  sub_1A484C6D4(0, v12);
  v7[31] = v13;
  v7[32] = *(v13 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = sub_1A524CC54();
  v7[35] = sub_1A524CC44();
  v15 = sub_1A524CBC4();
  v7[36] = v15;
  v7[37] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1A4848504, v15, v14);
}

uint64_t sub_1A4848504(__n128 a1)
{
  v2 = v1[30];
  v17 = v1[29];
  v16 = v1[28];
  sub_1A484CAA4(0, &qword_1EB12D6E0, sub_1A3E90934, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema);
  v4 = v3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 56);
  v7 = swift_checkMetadataState();
  v8 = sub_1A3E90988();
  v9 = sub_1A3E90A04();
  v6(v4, v4, v8, v9, v7, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v17 + 8))(v2, v16);
  swift_beginAccess();
  v10 = sub_1A524CC44();
  v1[38] = v10;
  v11 = swift_task_alloc();
  v1[39] = v11;
  *v11 = v1;
  v11[1] = sub_1A4848708;
  v12 = v1[31];
  v13 = v1[27];
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v13, v10, v14, v12);
}

uint64_t sub_1A4848708()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1A484884C, v3, v2);
}

uint64_t sub_1A484884C(__n128 a1)
{
  v2 = v1[27];
  sub_1A484C3D8(0, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema, a1);
  v4 = v3;
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    (*(v1[32] + 8))(v1[33], v1[31]);
  }

  else
  {
    v5 = *v2;
    v6 = *(v4 + 48);
    if (swift_weakLoadStrong())
    {
      v7 = v1[20];
      v8 = sub_1A3E90934();
      sub_1A3DC0EC0(v5, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema, v8, v7);
    }

    (*(v1[32] + 8))(v1[33], v1[31]);

    v9 = sub_1A5241BE4();
    (*(*(v9 - 8) + 8))(v2 + v6, v9);
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1A4849074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  sub_1A484C354(0, a8);
  v8[19] = swift_task_alloc();
  sub_1A484C454(0, v9);
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  sub_1A484C4D8(0, v11);
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = sub_1A524CC54();
  v8[27] = sub_1A524CC44();
  v14 = sub_1A524CBC4();
  v8[28] = v14;
  v8[29] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1A48491F8, v14, v13);
}

uint64_t sub_1A48491F8(__n128 a1)
{
  v2 = v1[22];
  v17 = v1[21];
  v16 = v1[20];
  sub_1A484CAA4(0, &qword_1EB12D7B8, sub_1A3E914E8, &type metadata for OneUpSharePlayNavigationGestureSchema);
  v4 = v3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 56);
  v7 = swift_checkMetadataState();
  v8 = sub_1A3E9153C();
  v9 = sub_1A3E915B8();
  v6(v4, v4, v8, v9, v7, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v17 + 8))(v2, v16);
  swift_beginAccess();
  v10 = sub_1A524CC44();
  v1[30] = v10;
  v11 = swift_task_alloc();
  v1[31] = v11;
  *v11 = v1;
  v11[1] = sub_1A48493FC;
  v12 = v1[23];
  v13 = v1[19];
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v13, v10, v14, v12);
}

uint64_t sub_1A48493FC()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1A4849540, v3, v2);
}

uint64_t sub_1A4849540(__n128 a1)
{
  v2 = *(v1 + 152);
  sub_1A484C3D8(0, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8, &type metadata for OneUpSharePlayNavigationGestureSchema, a1);
  v4 = v3;
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
  }

  else
  {
    v5 = *v2;
    v6 = *(v4 + 48);
    if (swift_weakLoadStrong())
    {
      v7 = sub_1A3E914E8();
      sub_1A3DC0EC0(v5, &type metadata for OneUpSharePlayNavigationGestureSchema, v7, (v1 + 256));
    }

    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));

    v8 = sub_1A5241BE4();
    (*(*(v8 - 8) + 8))(v2 + v6, v8);
  }

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_1A4849B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  sub_1A484C07C(0, a8);
  v8[11] = swift_task_alloc();
  sub_1A484C154(0, v9);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  sub_1A484C1D8(0, v11);
  v8[15] = v12;
  v8[16] = *(v12 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = sub_1A524CC54();
  v8[19] = sub_1A524CC44();
  v14 = sub_1A524CBC4();
  v8[20] = v14;
  v8[21] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1A4849CB0, v14, v13);
}

uint64_t sub_1A4849CB0(__n128 a1)
{
  v2 = v1[14];
  v19 = v1[13];
  v18 = v1[12];
  sub_1A484CAA4(0, &qword_1EB1435F0, sub_1A484C100, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema);
  v4 = v3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(AssociatedConformanceWitness + 56);
  v7 = swift_checkMetadataState();
  v9 = sub_1A484C25C(v8);
  v11 = sub_1A484C2D8(v10);
  v6(v4, v4, v9, v11, v7, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v19 + 8))(v2, v18);
  swift_beginAccess();
  v12 = sub_1A524CC44();
  v1[22] = v12;
  v13 = swift_task_alloc();
  v1[23] = v13;
  *v13 = v1;
  v13[1] = sub_1A4849EB4;
  v14 = v1[15];
  v15 = v1[11];
  v16 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v15, v12, v16, v14);
}

uint64_t sub_1A4849EB4()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A4849FF8, v3, v2);
}

uint64_t sub_1A4849FF8(__n128 a1)
{
  v2 = *(v1 + 88);
  sub_1A484C3D8(0, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema, a1);
  v4 = v3;
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
  }

  else
  {
    v5 = *v2;
    v6 = *(v4 + 48);
    *(v1 + 224) = v6;
    Strong = swift_weakLoadStrong();
    *(v1 + 192) = Strong;
    if (Strong)
    {
      v8 = sub_1A484C100();
      sub_1A3DC0EC0(v5, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema, v8, (v1 + 40));
    }

    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));

    v9 = sub_1A5241BE4();
    (*(*(v9 - 8) + 8))(v2 + v6, v9);
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_1A484A5AC()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  v3 = sub_1A5241BE4();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = sub_1A524CC44();
  *(v0 + 176) = v4;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_1A4849EB4;
  v6 = *(v0 + 120);
  v7 = *(v0 + 88);
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1A484A6B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3E64928;

  return sub_1A484B860();
}

uint64_t sub_1A484A75C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = *(v2 + 864);
  v5 = *(v2 + 872);
  *v3 = v1;
  v3[1] = sub_1A3E91FC0;

  return (sub_1A484B860)(v4, v5);
}

double sub_1A484A830()
{

  return result;
}

char *OneUpSharePlaySessionRecipientCoordinator.deinit()
{
  v0 = OneUpSharePlaySessionCoordinator.deinit();

  return v0;
}

uint64_t OneUpSharePlaySessionRecipientCoordinator.__deallocating_deinit()
{
  OneUpSharePlaySessionRecipientCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A484A9EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = sub_1A52411C4();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  sub_1A484C758(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
  v2[7] = swift_task_alloc();
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = *(type metadata accessor for OneUpSharePlayAssetMetadata(0) - 8);
  v2[11] = swift_task_alloc();
  v2[12] = *(v3 + 872);
  v2[13] = *(v3 + 864);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[14] = AssociatedTypeWitness;
  v2[15] = *(AssociatedTypeWitness - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_1A52419E4();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_1A524CC54();
  v2[25] = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  v2[26] = v9;
  v2[27] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A484AD64, v9, v8);
}

void sub_1A484AD64()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v35 = v0[23];
  v37 = v0[17];
  v38 = v0[15];
  v39 = v0[14];
  log = v0[16];
  v31 = v0[13];
  v33 = v0[12];
  v7 = v0[3];
  *(v7 + *(*v7 + 888)) = MEMORY[0x1E69E7CC0];
  (*(v4 + 104))(v5, *MEMORY[0x1E696B268], v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  v10 = swift_unknownObjectRetain();
  v9(v10, v5, v2, AssociatedConformanceWitness);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal(0, v31, v33, v11);
  (*(v3 + 16))(v35, v1, v2);
  v12 = swift_unknownObjectRetain();
  v13 = sub_1A433BE0C(v12, v35);
  *(v7 + *(*v7 + 880)) = v13;
  *(v7 + *(*v7 + 896)) = *(v13 + *(*v13 + 104));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v0[28] = v14;
  v15 = *(v14 + 72);

  v0[29] = swift_checkMetadataState();
  v15();
  LOBYTE(v3) = sub_1A524D264();
  v16 = sub_1A486DB9C();
  v0[30] = v16;
  v17 = *v16;
  (*(v38 + 16))(log, v37, v39);
  v18 = os_log_type_enabled(v17, v3);
  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[14];
  if (v18)
  {
    v17;
    v22 = swift_slowAlloc();
    swift_slowAlloc();
    *v22 = 136446210;
    v23 = swift_getAssociatedConformanceWitness();
    (*(v23 + 96))(v21, v23);
    (*(v20 + 8))(v19, v21);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v20 + 8))(v0[16], v0[14]);
  v24 = v0[14];
  v34 = v0[9];
  v36 = v0[8];
  v32 = v0[7];
  v25 = v0[3];
  v26 = swift_getAssociatedConformanceWitness();
  v30 = (*(v26 + 72))(v24, v26);
  sub_1A484C758(0, &qword_1EB12D700, type metadata accessor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A52F8E10;
  v28 = *(v26 + 96);
  v28(v24, v26);
  v29 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
  OneUpSharePlayDataSourceMessagePayload.init(dataSourceIdentifier:assetsMetadata:changes:)(v30, v27, v32, v34);
  sub_1A44B67FC(v34, v36, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  sub_1A484B9D0(0);
  swift_allocObject();
  *(v25 + *(*v25 + 904)) = sub_1A5247954();
  v28(v24, v26);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A484B438(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 256) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1A484B560, v4, v3);
}

uint64_t sub_1A484B560()
{
  v24 = v0;
  v1 = v0[30];

  sub_1A4845F10();
  v2 = sub_1A524D264();
  v3 = *v1;
  if (os_log_type_enabled(*v1, v2))
  {
    v4 = v0[28];
    v22 = v0[29];
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    swift_unknownObjectRetain();
    v3;
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136446210;
    (*(v4 + 120))(v22, v4);
    sub_1A484BA98(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1A524EA44();
    v11 = v10;
    swift_unknownObjectRelease();
    (*(v6 + 8))(v5, v7);
    sub_1A3C2EF94(v9, v11, &v23);
  }

  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[22];
  v15 = v0[17];
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[9];
  (*(v0[28] + 160))(v0[29]);

  sub_1A484BA38(v18, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v12, v13);

  v19 = v0[1];
  v20 = v0[32];

  return v19(v20);
}

uint64_t sub_1A484B860()
{
  sub_1A524CC54();
  sub_1A524CC44();
  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A484B8F0, v1, v0);
}

void sub_1A484B9D0(uint64_t a1)
{
  if (!qword_1EB143840)
  {
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload(255);
    v1 = sub_1A5247944();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143840);
    }
  }
}

uint64_t sub_1A484BA38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A484BA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A484BAE0()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A484680C(v7, v8, v9, v0 + v5, v6, v3, v2);
}

uint64_t sub_1A484BC0C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4848278(v7, v8, v9, v0 + v5, v6, v3, v2);
}

uint64_t sub_1A484BD38()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A4849074(v7, v8, v9, v0 + v5, v6, v3, v2, v10);
}

uint64_t objectdestroy_8Tm_3()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A484BF50()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A4849B2C(v7, v8, v9, v0 + v5, v6, v3, v2, v10);
}

void sub_1A484C07C(uint64_t a1, __n128 a2)
{
  if (!qword_1EB1435E0)
  {
    sub_1A484C3D8(255, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema, a2);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1435E0);
    }
  }
}

unint64_t sub_1A484C100()
{
  result = qword_1EB1435F8;
  if (!qword_1EB1435F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1435F8);
  }

  return result;
}

void sub_1A484C154(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143600)
  {
    sub_1A484C3D8(255, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema, a2);
    v2 = sub_1A524CD54();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143600);
    }
  }
}

void sub_1A484C1D8(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143608)
  {
    sub_1A484C3D8(255, &qword_1EB1435E8, &qword_1EB1435F0, sub_1A484C100, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema, a2);
    v2 = sub_1A524CD44();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143608);
    }
  }
}

unint64_t sub_1A484C25C(__n128 a1)
{
  result = qword_1EB143610;
  if (!qword_1EB143610)
  {
    sub_1A484CAA4(255, &qword_1EB1435F0, sub_1A484C100, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143610);
  }

  return result;
}

unint64_t sub_1A484C2D8(__n128 a1)
{
  result = qword_1EB143618;
  if (!qword_1EB143618)
  {
    sub_1A484CAA4(255, &qword_1EB1435F0, sub_1A484C100, &type metadata for OneUpSharePlayRemoveAssetDataMessageSchema);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143618);
  }

  return result;
}

void sub_1A484C354(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143620)
  {
    sub_1A484C3D8(255, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8, &type metadata for OneUpSharePlayNavigationGestureSchema, a2);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143620);
    }
  }
}

void sub_1A484C3D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, __n128 a6)
{
  if (!*a2)
  {
    sub_1A484CAA4(255, a3, a4, a5);
    sub_1A5241BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A484C454(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143630)
  {
    sub_1A484C3D8(255, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8, &type metadata for OneUpSharePlayNavigationGestureSchema, a2);
    v2 = sub_1A524CD54();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143630);
    }
  }
}

void sub_1A484C4D8(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143638)
  {
    sub_1A484C3D8(255, &qword_1EB143628, &qword_1EB12D7B8, sub_1A3E914E8, &type metadata for OneUpSharePlayNavigationGestureSchema, a2);
    v2 = sub_1A524CD44();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143638);
    }
  }
}

uint64_t sub_1A484C55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  sub_1A484C758(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A484C5CC(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143648)
  {
    sub_1A484C3D8(255, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema, a2);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143648);
    }
  }
}

void sub_1A484C650(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143658)
  {
    sub_1A484C3D8(255, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema, a2);
    v2 = sub_1A524CD54();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143658);
    }
  }
}

void sub_1A484C6D4(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143660)
  {
    sub_1A484C3D8(255, &qword_1EB143650, &qword_1EB12D6E0, sub_1A3E90934, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema, a2);
    v2 = sub_1A524CD44();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143660);
    }
  }
}

void sub_1A484C758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A484C7BC(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143670)
  {
    sub_1A484C3D8(255, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00, &type metadata for OneUpSharePlayNavigateMessageSchema, a2);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143670);
    }
  }
}

void sub_1A484C840(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143680)
  {
    sub_1A484C3D8(255, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00, &type metadata for OneUpSharePlayNavigateMessageSchema, a2);
    v2 = sub_1A524CD54();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143680);
    }
  }
}

void sub_1A484C8C4(uint64_t a1, __n128 a2)
{
  if (!qword_1EB143688)
  {
    sub_1A484C3D8(255, &qword_1EB143678, &qword_1EB12D810, sub_1A3E91B00, &type metadata for OneUpSharePlayNavigateMessageSchema, a2);
    v2 = sub_1A524CD44();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB143688);
    }
  }
}

uint64_t sub_1A484C948()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4847BC4(v6, v7, v8, v0 + v5, v2, v3);
}

uint64_t sub_1A484CA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A484CAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for OneUpSharePlayMessage(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A484CB04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for LemonadePeopleHomeSortMenu(0);
  type metadata accessor for LemonadePeopleSortModel(0);
  v3 = a1;
  return sub_1A5247C74();
}

uint64_t sub_1A484CB98@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadePeopleSortModel(0);
  result = sub_1A423E718(v3);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LemonadePeopleHomeSortMenu(uint64_t a1)
{
  result = qword_1EB1DAF00;
  if (!qword_1EB1DAF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A484CC28(uint64_t a1)
{
  if (!qword_1EB143690)
  {
    sub_1A484DAEC(255, &qword_1EB143698, sub_1A484CCF8, MEMORY[0x1E6981F40]);
    sub_1A484CF90(&qword_1EB1436D8, &qword_1EB143698, sub_1A484CCF8);
    v1 = sub_1A524A2F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143690);
    }
  }
}

void sub_1A484CCF8(uint64_t a1)
{
  if (!qword_1EB1436A0)
  {
    sub_1A484CD94(255);
    sub_1A484CF3C(255, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1436A0);
    }
  }
}

void sub_1A484CD94(uint64_t a1)
{
  if (!qword_1EB1436A8)
  {
    sub_1A484DAEC(255, &qword_1EB1436B0, sub_1A484CE48, MEMORY[0x1E6981F40]);
    sub_1A484CF90(&qword_1EB1436D0, &qword_1EB1436B0, sub_1A484CE48);
    v1 = sub_1A524B874();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1436A8);
    }
  }
}

void sub_1A484CE48(uint64_t a1)
{
  if (!qword_1EB1436B8)
  {
    sub_1A484CEB0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1436B8);
    }
  }
}

void sub_1A484CEB0(uint64_t a1)
{
  if (!qword_1EB1436C0)
  {
    sub_1A484CF3C(255, &qword_1EB1436C8, MEMORY[0x1E6981E70], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1436C0);
    }
  }
}

void sub_1A484CF3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A484CF90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A484DAEC(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A484CFF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  sub_1A484CF3C(0, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = v44 - v6;
  v7 = type metadata accessor for LemonadePeopleHomeSortMenu(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44[2] = v9;
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A484CD94(0);
  v46 = v11;
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = v44 - v14;
  sub_1A484DA88(a1, v10);
  v44[1] = sub_1A524CC54();
  v15 = sub_1A524CC44();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  v19 = v18;
  sub_1A484DB50(v10, v17 + v16);
  sub_1A484DA88(a1, v10);
  v20 = sub_1A524CC44();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  sub_1A484DB50(v10, v21 + v16);
  sub_1A524B944();
  v54 = a1;
  v22 = a1;
  sub_1A484DAEC(0, &qword_1EB1436B0, sub_1A484CE48, MEMORY[0x1E6981F40]);
  sub_1A484CF90(&qword_1EB1436D0, &qword_1EB1436B0, sub_1A484CE48);
  v23 = v51;
  sub_1A524B854();
  sub_1A484DA88(v22, v10);
  v24 = sub_1A524CC44();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 24) = MEMORY[0x1E69E85E0];
  sub_1A484DB50(v10, v25 + v16);
  sub_1A484DA88(v22, v10);
  v27 = sub_1A524CC44();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  sub_1A484DB50(v10, v28 + v16);
  sub_1A524B944();
  v29 = v52;
  sub_1A524B854();
  v30 = *(v53 + 16);
  v31 = v45;
  v32 = v23;
  v33 = v46;
  v30(v45, v32, v46);
  v34 = v47;
  v35 = v48;
  v36 = *(v48 + 16);
  v37 = v29;
  v38 = v49;
  v36(v47, v37, v49);
  v39 = v50;
  v30(v50, v31, v33);
  sub_1A484CCF8(0);
  v36(&v39[*(v40 + 48)], v34, v38);
  v41 = *(v35 + 8);
  v41(v52, v38);
  v42 = *(v53 + 8);
  v42(v51, v33);
  v41(v34, v38);
  return (v42)(v31, v33);
}

uint64_t sub_1A484D5B0@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C38BD4(0xD000000000000019);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1A484D620@<X0>(PHPhotoLibrary *a1@<X0>, uint64_t a2@<X8>)
{
  v3._object = 0x80000001A53EE5D0;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  LemonadeLocalizedPeopleAndPetsTitle(for:key:)(a1->super.isa, v3);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1A484D69C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A484D700()
{
  v1 = sub_1A5243064();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A484CC28(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v0;
  v12 = v0;
  sub_1A484DAEC(0, &qword_1EB143698, sub_1A484CCF8, MEMORY[0x1E6981F40]);
  sub_1A484CF90(&qword_1EB1436D8, &qword_1EB143698, sub_1A484CCF8);
  sub_1A524A2E4();
  sub_1A5247D64();
  sub_1A484D69C(&qword_1EB1436E0, sub_1A484CC28, MEMORY[0x1E697CD28]);
  sub_1A484D69C(&qword_1EB124DE0, MEMORY[0x1E69C2380], MEMORY[0x1E69C2378]);
  sub_1A524A944();
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

void sub_1A484D9D4(uint64_t a1, uint64_t a2)
{
  sub_1A3C4B4AC(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A484DAEC(319, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A484DA88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePeopleHomeSortMenu(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A484DAEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A484DB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePeopleHomeSortMenu(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1A484DBB4@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for LemonadePeopleHomeSortMenu(0);
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC28();
  sub_1A524C9C4();
  result = sub_1A524C9C4();
  if (v5 == v4)
  {
    v3 = 1;
  }

  else
  {
    sub_1A5247C84();
    sub_1A423E0E8();

    sub_1A524C9C4();
    result = sub_1A524C9C4();
    v3 = v5 == v4;
  }

  *a1 = v3;
  return result;
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = (type metadata accessor for LemonadePeopleHomeSortMenu(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[7];
  sub_1A484DAEC(0, &qword_1EB1436F0, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A484DAEC(0, &qword_1EB127260, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

uint64_t sub_1A484DEAC()
{
  v1 = type metadata accessor for LemonadePeopleHomeSortMenu(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)));
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC28();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v9 == v8)
  {
    sub_1A5247C84();
    v3 = sub_1A423E304();

    if ((v3 & 1) == 0)
    {
LABEL_3:
      v4 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A5247C84();
    v5 = sub_1A423E304();

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v4 = 2;
LABEL_6:
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC7C();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    type metadata accessor for PeopleUtilities(0, v7);
    return sub_1A3D78590(v4, *v2);
  }

  return result;
}

void sub_1A484E088(uint64_t a1@<X8>)
{
  v16 = sub_1A3C38BD4(0xD000000000000017);
  v17 = v2;
  sub_1A3D5F9DC();
  v3 = sub_1A524A464();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for LemonadePeopleHomeSortMenu(0);
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v10 = sub_1A423E0E8();

  switch(v10)
  {
    case 2:
      sub_1A524B544();

      v11 = MEMORY[0x1E6981E70];
      v12 = MEMORY[0x1E6981748];
      sub_1A5249744();
      sub_1A484CF3C(0, &qword_1EB1436C8, v11, v12, MEMORY[0x1E697F960]);
      sub_1A484E650();
      sub_1A5249744();

      goto LABEL_8;
    case 1:
      sub_1A524B544();
      sub_1A484CF3C(0, &qword_1EB1436C8, MEMORY[0x1E6981E70], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
      sub_1A484E650();
LABEL_7:
      sub_1A5249744();
LABEL_8:
      *a1 = v3;
      *(a1 + 8) = v5;
      v15 = v7 & 1;
      *(a1 + 16) = v15;
      *(a1 + 24) = v9;
      *(a1 + 32) = v16;
      *(a1 + 40) = v17;
      sub_1A3E75E68(v3, v5, v15);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 0:
      v13 = MEMORY[0x1E6981E70];
      v14 = MEMORY[0x1E6981748];
      sub_1A5249744();
      sub_1A484CF3C(0, &qword_1EB1436C8, v13, v14, MEMORY[0x1E697F960]);
      sub_1A484E650();
      goto LABEL_7;
  }

  sub_1A524EB44();
  __break(1u);
}

void *sub_1A484E434@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for LemonadePeopleHomeSortMenu(0);
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC28();
  sub_1A524C9C4();
  result = sub_1A524C9C4();
  *a1 = v4 == v3;
  return result;
}

uint64_t sub_1A484E548()
{
  v1 = *(type metadata accessor for LemonadePeopleHomeSortMenu(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
  sub_1A484DAEC(0, &qword_1EB1436E8, type metadata accessor for LemonadePeopleSortModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A423E0E8();

  sub_1A3D7AC7C();
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    type metadata accessor for PeopleUtilities(0, v4);
    return sub_1A3D78590(0, *v2);
  }

  return result;
}

unint64_t sub_1A484E650()
{
  result = qword_1EB1436F8;
  if (!qword_1EB1436F8)
  {
    sub_1A484CF3C(255, &qword_1EB1436C8, MEMORY[0x1E6981E70], MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1436F8);
  }

  return result;
}

void sub_1A484E6F4(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1A484E704(a1, a2 & 1);
  }
}

double sub_1A484E704(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1A484E710(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1A484E720(a1, a2 & 1);
  }
}

double sub_1A484E720(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL sub_1A484E890()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = (*(**(v3 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content) + 120))();
      v6 = v5;
      v7 = sub_1A45E0F98(v4, v5);
      sub_1A440B338(v4, v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

id sub_1A484E970(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_4:
    type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
    v8 = *((*v4 & *v2) + 0x108);
    v9 = a1;
    v10 = v8();
    v11 = (*((*v4 & *v2) + 0xA8))();
    v12 = sub_1A45E4328(v9, v10, v11);
    v13 = *((*v4 & *v2) + 0xE0);
    v7 = v12;
    v13(v12);
  }

  sub_1A484EB10(0);
  v14 = v7;
  v18[0] = sub_1A49A2C14(v14);
  v18[1] = v15;
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v18);

  return v16;
}

void sub_1A484EB10(uint64_t a1)
{
  if (!qword_1EB143700)
  {
    v2 = sub_1A484EB6C();
    v4 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, &type metadata for PhotosDetailsAssetDescriptionWidgetView, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB143700);
    }
  }
}

unint64_t sub_1A484EB6C()
{
  result = qword_1EB143708;
  if (!qword_1EB143708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143708);
  }

  return result;
}

id sub_1A484EC24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsAssetDescriptionWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static LemonadeSharedWithYouGridConfiguration.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [v2 uuid];
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

double LemonadeSharedWithYouGridConfiguration.hash(into:)(uint64_t a1)
{
  v2 = [*v1 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return result;
}

uint64_t LemonadeSharedWithYouGridConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  v2 = [v1 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A484EE20()
{
  v1 = *v0;
  sub_1A524EC94();
  v2 = [v1 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A484EEA8(uint64_t a1)
{
  v2 = [*v1 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return result;
}

uint64_t sub_1A484EF20(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  v3 = [v2 uuid];
  sub_1A524C674();

  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A484EFA4(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = [v2 uuid];
  v8 = sub_1A524C674();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

id sub_1A484F06C(void **a1)
{
  v1 = PXContentSyndicationPhotosViewConfigurationForAssetCollection(*a1);
  v2 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];

  return v2;
}

unint64_t sub_1A484F0C8()
{
  result = qword_1EB143710;
  if (!qword_1EB143710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143710);
  }

  return result;
}

unint64_t sub_1A484F120()
{
  result = qword_1EB129308;
  if (!qword_1EB129308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129308);
  }

  return result;
}

id sub_1A484F174()
{
  v0 = swift_unknownObjectRetain();
  v1 = PXContentSyndicationPhotosViewConfigurationForAssetCollection(v0);
  v2 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1A484F1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A484F2FC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A484F248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A484F2FC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A484F2AC(uint64_t a1)
{
  sub_1A484F2FC();
  sub_1A5249ED4();
  __break(1u);
}

unint64_t sub_1A484F2FC()
{
  result = qword_1EB143720;
  if (!qword_1EB143720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143720);
  }

  return result;
}

void sub_1A484F358(void *a1)
{
  if ([a1 assetCollectionActionManager])
  {
    sub_1A3C52C70(0, &qword_1EB120708, &off_1E77217F8);
    sub_1A3C3A220(&qword_1EB120738, &qword_1EB126850, &off_1E7721830, off_1E7721400);
    swift_unknownObjectRetain();
    sub_1A524D8F4();
  }

  v1 = sub_1A48D52A4();
  swift_beginAccess();
  v2 = *v1;
  sub_1A484F8E8();
}

void sub_1A484F8E8()
{
  if (qword_1EB158B10 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A484FA90(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 2) != 0)
    {
      sub_1A484F8E8();
    }
  }
}

void sub_1A484FC0C(uint64_t a1)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x2000800000000024) != 0)
  {
    sub_1A4851578();
  }

  if ((a1 & 0x800000000000) != 0)
  {
    sub_1A4852260();
  }

  if ((a1 & 0x1000000000000) != 0)
  {
    [v1 showPlayer];
    if ((a1 & 0x800000000000) == 0)
    {
      return;
    }
  }

  else if ((a1 & 0x800000000000) == 0)
  {
    return;
  }

  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v12 = sub_1A524D474();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_1A4854834;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_287;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_1A524BF14();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1A4855E00(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C2A534(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v11, v6, v14);
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
}

void sub_1A485046C(void *a1)
{
  v2 = v1;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 detailsViewHeaderImplementation];

  if (v5 == 1)
  {
    v6 = [v2 viewModel];
    v7 = sub_1A47A5E88();

    (*(*v7 + 192))();
    if ((v8 & 1) == 0)
    {
      (*(*v7 + 240))();
      if ((v9 & 1) == 0)
      {
        [a1 contentInset];
        [a1 visibleOrigin];
        [a1 contentInset];
        sub_1A484F8E8();
      }
    }
  }

  else
  {
    if (!v5)
    {
      v10 = [v2 viewModel];
      sub_1A524D584();
    }

    type metadata accessor for PXDetailsViewHeaderImplementation(0);
    sub_1A524EB44();
    __break(1u);
  }
}

id sub_1A4851158()
{
  v1 = [v0 viewModel];
  [v1 chromePlayButtonFloatingFraction];
  v3 = v2;

  if (v3 > 0.5)
  {
    v4 = [v0 viewModel];
    v5 = [v4 isInSelectMode];

    if ((v5 & 1) == 0)
    {
      v6 = [v0 viewModel];
      v7 = [v6 allowsPreviewHeader];

      if (v7)
      {
        sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
        v8 = [swift_getObjCClassFromMetadata() sharedInstance];
        v9 = [v8 enableSolariumDetailsView];

        if (v9)
        {
          sub_1A4851018();
        }
      }
    }
  }

  return 0;
}

void sub_1A4851278()
{
  v1 = v0;
  v2 = [v0 viewModel];
  v3 = PXPhotosViewModel.storyConfigurationProvider.getter();
  v5 = v4;

  if (v3)
  {
    v6 = v3();
    sub_1A3C33378(v3, v5);
    [v6 setAllowsVerticalGestures_];
    sub_1A3C52C70(0, &qword_1EB126B38, off_1E7720430);
    static PXStoryUIFactory.viewController(configuration:)(v6);
    v8 = v7;
    swift_unknownObjectRelease();
    v9 = objc_opt_self();
    v10 = sub_1A5242A64();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A4855604;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A4075CF4;
    aBlock[3] = &block_descriptor_51_2;
    v12 = _Block_copy(aBlock);

    v13 = [v9 _zoomWithOptions_sourceItemProvider_];
    _Block_release(v12);

    [v8 setPreferredTransition_];
    [v1 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v14 = sub_1A5246F24();
    __swift_project_value_buffer(v14, qword_1EB15B790);
    oslog = sub_1A5246F04();
    v15 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v15, "can't present memory player because storyConfigurationProvider hasn't been configured", v16, 2u);
      MEMORY[0x1A590EEC0](v16, -1, -1);
    }
  }
}

void sub_1A4851578()
{
  v1 = v0;
  v2 = [v0 barsController];
  v3 = [v0 viewModel];
  v4 = PXPhotosViewModel.additionalLeadingNavigationBarButtonItemsAfterExisting.getter();

  sub_1A4851A5C(v4);
  v6 = v5;

  if (v6)
  {
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    v7 = sub_1A524CA14();
  }

  else
  {
    v7 = 0;
  }

  [v2 setAdditionalLeftBarButtonItemsAfterExisting_];

  v8 = [v1 barsController];
  v9 = [v1 viewModel];
  v10 = PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsBeforeExisting.getter();

  sub_1A4851A5C(v10);
  v12 = v11;

  if (v12)
  {
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    v13 = sub_1A524CA14();
  }

  else
  {
    v13 = 0;
  }

  [v8 setAdditionalRightBarButtonItemsBeforeExisting_];

  v14 = [v1 barsController];
  v15 = [v1 viewModel];
  v16 = PXPhotosViewModel.additionalTrailingNavigationBarButtonItemsAfterExisting.getter();

  sub_1A4851A5C(v16);

  v17 = sub_1A4851158();
  if (v17)
  {
    v18 = v17;
    v19 = [v1 viewModel];
    v20 = [v19 specManager];

    v21 = [v20 spec];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4851A5C(uint64_t a1)
{
  v3 = [v1 viewModel];
  v4 = [v3 allowedChromeItems];

  v5 = [v1 barsController];
  v6 = [v5 barButtonItemsController];

  if (a1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = a1 + 32 + 104 * v8;
        v10 = v8;
        while (1)
        {
          if (v10 >= v7)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            return;
          }

          v11 = *v9;
          v12 = *(v9 + 32);
          v28[1] = *(v9 + 16);
          v28[2] = v12;
          v28[0] = v11;
          v13 = *(v9 + 48);
          v14 = *(v9 + 64);
          v15 = *(v9 + 80);
          v32 = *(v9 + 96);
          v30 = v14;
          v31 = v15;
          v29 = v13;
          v8 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_17;
          }

          if (v4 & 0x800) != 0 || (v29)
          {
            break;
          }

          ++v10;
          v9 += 104;
          if (v8 == v7)
          {
            goto LABEL_14;
          }
        }

        v16 = *(v9 + 80);
        v25 = *(v9 + 64);
        v26 = v16;
        v27 = *(v9 + 96);
        v17 = *(v9 + 16);
        v21 = *v9;
        v22 = v17;
        v18 = *(v9 + 48);
        v23 = *(v9 + 32);
        v24 = v18;
        sub_1A42E6274(v28, v20);
        sub_1A42729C0(v6);
        v19 = sub_1A42E62D0(v28);
        MEMORY[0x1A5907D70](v19);
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
      }

      while (v8 != v7);
    }

LABEL_14:
  }

  else
  {
  }
}

uint64_t sub_1A4851FB0(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for LemonadeDetailsViewScrollDetentsProvider(0, a2);
  v12 = v3;
  result = sub_1A4024230(&v12, a2);
  if (!result)
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v5 = sub_1A5246F24();
    __swift_project_value_buffer(v5, qword_1EB15B790);
    v6 = sub_1A5246F04();
    v7 = sub_1A524D244();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v8 = 136315138;
      v9 = LemonadeDetailsViewScrollDetentsProvider.DetentIdentifier.rawValue.getter();
      sub_1A3C2EF94(v9, v10, &v11);
    }

    return 0;
  }

  return result;
}

void sub_1A4852260()
{
  *(swift_allocObject() + 16) = 0;
  *(swift_allocObject() + 16) = 0;
  sub_1A484F8E8();
}

double sub_1A4852828(uint64_t a1)
{
  sub_1A3C2A534(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
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

  sub_1A3EA52F4(0, 0, v3, &unk_1A53697C8, v8);

  return result;
}

uint64_t sub_1A48529C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4852A60, v6, v5);
}

uint64_t sub_1A4852A60()
{

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A4852260();
  }

  **(v0 + 40) = 1;
  v1 = *(v0 + 8);

  return v1();
}

id sub_1A4852AFC()
{
  v1 = OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_chromeTitleFloatingFractionAnimator;
  *&v0[v1] = [objc_allocWithZone(off_1E77217D0) initWithValue_];
  v2 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_chromeTitleFloatingFractionAnimatorObservation];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_currentClosePermission] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_navigationDestination] = 0;
  v3 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_temporaryOneUpPresentationSource];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_playBarButtonItem] = 0;
  *&v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_chromeTitleFloatingFraction] = 0;
  v4 = &v0[OBJC_IVAR____TtCE12PhotosUICoreCSo24PXPhotosUIViewControllerP33_9726CDE1344AAD79E4E4DCF6A3E951E714AssociatedData_titleModel];
  v5 = _s14AssociatedDataCMa_11();
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1A4852BF4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s14AssociatedDataCMa_11();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A4852FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v6[18] = sub_1A524CC54();
  v6[19] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[20] = v8;
  v6[21] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4853060, v8, v7);
}

void sub_1A4853060()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1A4853120;

    ;
  }
}

uint64_t sub_1A4853120(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 184) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A4853248, v4, v3);
}

uint64_t sub_1A4853248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  return MEMORY[0x1EEE6DFA0](sub_1A48532DC, 0, 0);
}

uint64_t sub_1A48532DC(__n128 a1)
{
  *(v1 + 192) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4853368, v3, v2);
}

uint64_t sub_1A4853368()
{
  v1 = v0[23];

  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_1A5245DE4();
    }

    v3 = Strong;
    v0[6] = sub_1A4855840;
    v0[7] = v1;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1A3C2E0D0;
    v0[5] = &block_descriptor_70_2;
    v4 = _Block_copy(v0 + 2);
    swift_retain_n();

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }

  MEMORY[0x1A590F020](v0 + 14);
  v5 = v0[20];
  v6 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1A48534B8, v5, v6);
}

uint64_t sub_1A48534B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t *sub_1A4853C04()
{
  if (qword_1EB1DB010 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EBFC8;
}

void sub_1A4853DDC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB15B790);
    v4 = a2;
    oslog = sub_1A5246F04();
    v5 = sub_1A524D244();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v6 = 136315138;
      v7 = a2;
      sub_1A421A438(0);
      v8 = sub_1A524C714();
      sub_1A3C2EF94(v8, v9, &v11);
    }
  }
}

id sub_1A4853F94()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeSearchOverlayView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v42 - v7);
  v9 = [v0 viewModel];
  v10 = [v9 currentDataSource];

  v11 = [v10 container];
  if (!v11)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v13 = sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  v14 = dynamic_cast_existential_1_superclass_conditional(v11, ObjectType, v13, &protocol descriptor for LemonadeSearchableContainer);
  if (!v14 || (v16 = v14, v17 = v15, v18 = swift_getObjectType(), (v19 = [v16 photoLibrary]) == 0))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v20 = v19;
  v21 = [v1 viewModel];
  v22 = PXPhotosViewModel.searchQueryFetcher.getter();

  v43 = v20;
  if (!v22)
  {
    type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
    v23 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
    v46 = v18;
    v47 = v17;
    v45[0] = v16;
    swift_unknownObjectRetain();
    LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v23, v45);
  }

  v24 = MEMORY[0x1A590D320]();
  v25 = v22[4];
  if (v24)
  {
    v26 = v25;
    v27 = [v1 traitCollection];
    v28 = [v27 userInterfaceIdiom];

    sub_1A4405284(0, v29, v30, v31);
    v44 = v28 == 0;
    v46 = v18;
    v47 = v17;
    v45[0] = v16;
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    v33 = PhotosSearchHomeCoordinator<>.init(searchQueryManager:suggestedQueryFetcher:placement:initialContainer:initialSearchText:closeAction:customAssetSelectionHandler:)(v26, v22, &v44, v45, 0, 0, sub_1A4855574, v32, 0, 0);
    v34 = (*(*v33 + 184))([v1 setSearchHomeCoordinator_]);

    swift_unknownObjectRelease();

    return v34;
  }

  else
  {
    v46 = v18;
    v47 = v17;
    v45[0] = v16;
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();

    LemonadeSearchOverlayView.init(searchQueryManager:suggestedQueryFetcher:container:onCancellation:)(v25, v22, v45, sub_1A48554D8, v36, v8);
    sub_1A4855C80(v8, v4, type metadata accessor for LemonadeSearchOverlayView);
    sub_1A48554E0(0);
    v38 = objc_allocWithZone(v37);
    v39 = sub_1A5249624();
    result = [v39 view];
    if (result)
    {
      v40 = result;
      v41 = [objc_opt_self() clearColor];
      [v40 setBackgroundColor_];
      swift_unknownObjectRelease();

      sub_1A4855930(v8, type metadata accessor for LemonadeSearchOverlayView);
      return v39;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A4854460()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1EBFC8 = result;
  return result;
}

uint64_t sub_1A48544CC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B790);
  __swift_project_value_buffer(v0, qword_1EB15B790);
  if (qword_1EB1DB010 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1EBFC8;
  return sub_1A5246F34();
}

unint64_t *sub_1A4854558(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1A48549BC(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_1A4854834()
{
  v1 = [*(v0 + 16) viewModel];
  v2 = [v1 allowsPreviewHeader];

  if (v2)
  {
    v6 = 1;
    v5 = 3;
    v3 = &v6;
    v4 = &v5;
  }

  else
  {
    v7 = 0;
    v3 = &v7 + 1;
    v4 = &v7;
  }

  sub_1A4851C4C(v3, v4);
}

id sub_1A4854934(void *a1)
{
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v2 = 1.0;
  }

  return [a1 setValue_];
}

void sub_1A4854954(uint64_t a1)
{
  if (!qword_1EB120E68)
  {
    sub_1A3C34400(255, &qword_1EB120E70, off_1E7721328);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120E68);
    }
  }
}

void sub_1A48549BC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = [a4 customRegionOfInterestForAssetReference_];

    if (v17)
    {
    }

    else
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1A41E2424(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1A4854B28(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v10 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v25 = v7;
    v26 = v3;
    v24 = &v24;
    MEMORY[0x1EEE9AC00](v9);
    v27 = &v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v8);
    v28 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(a1 + 56);
    v3 = (v12 + 63) >> 6;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v17 = v14 | (v11 << 6);
      v18 = *(*(a1 + 48) + 8 * v17);
      v7 = [v10 customRegionOfInterestForAssetReference_];

      if (v7)
      {
      }

      else
      {
        *&v27[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_17:
          v20 = sub_1A41E2424(v27, v25, v28, a1);

          return v20;
        }
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = v10;
  v20 = sub_1A4854558(v22, v7, a1, v23);

  MEMORY[0x1A590EEC0](v22, -1, -1);

  return v20;
}

uint64_t sub_1A4854DB0(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1A4854B28(a1, a2);
  }

  v2 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CD0];
  v3 = a2;
  sub_1A524E274();
  if (sub_1A524E304())
  {
    sub_1A3C52C70(0, &qword_1EB126B50, &off_1E7721490);
    do
    {
      swift_dynamicCast();
      v4 = [v3 customRegionOfInterestForAssetReference_];
      if (v4)
      {
      }

      else
      {
        v5 = *(v2 + 16);
        if (*(v2 + 24) <= v5)
        {
          sub_1A41E1F64(v5 + 1);
        }

        v2 = v17;
        result = sub_1A524DBE4();
        v7 = v17 + 56;
        v8 = -1 << *(v17 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v10 == v13;
            if (v10 == v13)
            {
              v10 = 0;
            }

            v12 |= v14;
            v15 = *(v7 + 8 * v10);
          }

          while (v15 == -1);
          v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v17 + 48) + 8 * v11) = v16;
        ++*(v17 + 16);
      }
    }

    while (sub_1A524E304());
  }

  return v2;
}

uint64_t _sSo24PXPhotosUIViewControllerC12PhotosUICoreE29interactiveDismissShouldBegin2at2in8velocity4axis08proposedI5StateSbSo7CGPointV_So17UICoordinateSpace_pSo8CGVectorVSo6PXAxisVSbtF_0(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  sub_1A3C2A534(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  if ([v7 px_containsViewControllerModalInPresentation])
  {
    return 0;
  }

  if (a2 == 2)
  {
    v19 = [v7 viewModel];
    sub_1A524D5C4();
  }

  if (a2 == 1)
  {
    if (a6 >= 0.0)
    {
      v15 = [v7 contentController];
      v16 = [v15 gridView];

      if (!v16 || (v17 = [v16 scrollViewController], v16, v18 = objc_msgSend(v17, sel_isDecelerating), v17, (v18 & 1) == 0))
      {
        sub_1A4852D2C(a1, a3, a4);
      }
    }

    return 0;
  }

  if (a2)
  {
    type metadata accessor for PXAxis(0);
    result = sub_1A524EB44();
    __break(1u);
  }

  else
  {
    if (qword_1EB1DB018 != -1)
    {
      swift_once();
    }

    v20 = sub_1A5246F24();
    __swift_project_value_buffer(v20, qword_1EB15B790);
    v21 = sub_1A5246F04();
    v22 = sub_1A524D244();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1A3C1C000, v21, v22, "undefined interactive dismiss axis", v23, 2u);
      MEMORY[0x1A590EEC0](v23, -1, -1);
    }

    return 0;
  }

  return result;
}

void sub_1A48554E0(uint64_t a1)
{
  if (!qword_1EB143760)
  {
    type metadata accessor for LemonadeSearchOverlayView(255);
    sub_1A4855E00(&qword_1EB129D38, type metadata accessor for LemonadeSearchOverlayView, &protocol conformance descriptor for LemonadeSearchOverlayView);
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143760);
    }
  }
}

void sub_1A485557C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = a1 & 1;
    v4 = Strong;
    [Strong dismissViewControllerAnimated:v3 completion:0];
  }
}

id sub_1A4855604()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewModel];
    [v2 chromePlayButtonFloatingFraction];
    v4 = v3;

    if (v4 < 0.5)
    {
      v5 = [v1 viewModel];
      v6 = [v5 allowsPreviewHeader];

      if (v6)
      {
        v7 = [v1 viewModel];
        sub_1A524D504();
      }
    }

    sub_1A4851018();
  }

  return 0;
}

void sub_1A4855734(uint64_t a1)
{
  if (!qword_1EB143780)
  {
    sub_1A3C34400(255, &qword_1EB143788, off_1E77211D8);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143780);
    }
  }
}

uint64_t sub_1A485579C()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4852FC0(v4, v5, v6, v0 + 32, v2, v3);
}

void sub_1A4855844(uint64_t a1)
{
  if (!qword_1EB120A80)
  {
    sub_1A3C52C70(255, &qword_1EB126B80, 0x1E69DC708);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120A80);
    }
  }
}

id sub_1A48558AC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  [a1 setHeaderTitle_];
  swift_beginAccess();
  return [a1 setHeaderSubtitle_];
}

uint64_t sub_1A4855930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4855990()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1A5242D54();
  v4 = v3;
  if (v5)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v7 = sub_1A524C634();

    type metadata accessor for Key(0);
    sub_1A4855E00(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
    v8 = sub_1A524C3D4();
    v9 = [v6 initWithString:v7 attributes:v8];

    v10 = *v1;
    *v1 = v9;
  }

  if (v4)
  {
    v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v12 = sub_1A524C634();

    type metadata accessor for Key(0);
    sub_1A4855E00(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
    v13 = sub_1A524C3D4();
    v14 = [v11 initWithString:v12 attributes:v13];

    v15 = *v2;
    *v2 = v14;
  }
}

double (*sub_1A4855B7C())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A4855BD8;
}

uint64_t sub_1A4855BE0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A48529C8(a1, v5, v6, v4);
}

uint64_t sub_1A4855C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4855CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1A4855DB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4855E00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4855E80@<X0>(void *a1@<X8>)
{
  v72 = a1;
  v71 = sub_1A5244084();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A5243624();
  v4 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonFaceView(0);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A48564A4(0, &qword_1EB143790, sub_1A4856454, MEMORY[0x1E697E5E0]);
  v68 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = sub_1A524B9A4();
  v74 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v62 - v23;
  sub_1A524B994();
  sub_1A52424B4();
  v24 = *(v76 + 16);

  v25 = type metadata accessor for FaceContentView(0);
  (*(v4 + 16))(v6, v1 + *(v25 + 28), v62);
  v26 = sub_1A3C5A374();
  sub_1A4308C80(v6, 0, v26 & 1, v10);
  sub_1A3F75AC0(v3);
  sub_1A485658C();
  v27 = v64;
  sub_1A524A784();
  (*(v69 + 8))(v3, v71);
  (*(v65 + 8))(v10, v27);
  sub_1A5243614();
  v29 = v28;
  sub_1A485647C(0);
  v31 = &v15[*(v30 + 36)];
  *v31 = v29;
  *(v31 + 4) = 0;
  v32 = sub_1A524A0C4();
  sub_1A5247BC4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1A4856454(0);
  v42 = &v15[*(v41 + 36)];
  *v42 = v32;
  *(v42 + 1) = v34;
  *(v42 + 2) = v36;
  *(v42 + 3) = v38;
  *(v42 + 4) = v40;
  v42[40] = 0;
  v43 = sub_1A524A054();
  sub_1A5247BC4();
  v44 = &v15[*(v68 + 44)];
  *v44 = v43;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  v49 = v73;
  sub_1A524B994();
  v75 = 1;
  v50 = *(v74 + 16);
  v51 = v66;
  v52 = v63;
  v50(v66, v63, v16);
  v53 = v70;
  sub_1A3D23F48(v15, v70);
  v54 = v67;
  v50(v67, v49, v16);
  v55 = v75;
  v56 = v72;
  *v72 = 0;
  *(v56 + 8) = v55;
  v57 = v56;
  sub_1A485672C(0);
  v59 = v58;
  v50(&v57[*(v58 + 48)], v51, v16);
  sub_1A3D23F48(v53, &v57[*(v59 + 64)]);
  v50(&v57[*(v59 + 80)], v54, v16);
  v60 = *(v74 + 8);
  v60(v73, v16);
  sub_1A3D23FD0(v15);
  v60(v52, v16);
  v60(v54, v16);
  sub_1A3D23FD0(v53);
  return (v60)(v51, v16);
}

void sub_1A48564A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A4856508(uint64_t a1)
{
  if (!qword_1EB1437A8)
  {
    type metadata accessor for PersonFaceView(255);
    sub_1A485658C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1437A8);
    }
  }
}

unint64_t sub_1A485658C()
{
  result = qword_1EB125BC8;
  if (!qword_1EB125BC8)
  {
    type metadata accessor for PersonFaceView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BC8);
  }

  return result;
}

uint64_t type metadata accessor for FaceContentView(uint64_t a1)
{
  result = qword_1EB16E200;
  if (!qword_1EB16E200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4856630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = xmmword_1A53697F0;
  v3 = type metadata accessor for FaceContentView(0);
  v4 = *(v3 + 28);
  v5 = *MEMORY[0x1E69C2530];
  v6 = sub_1A5243624();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(v3 + 32);
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3C6B86C(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A485672C(uint64_t a1)
{
  if (!qword_1EB1437B0)
  {
    sub_1A524B9A4();
    sub_1A48564A4(255, &qword_1EB143790, sub_1A4856454, MEMORY[0x1E697E5E0]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1437B0);
    }
  }
}

void sub_1A4856820(uint64_t a1)
{
  sub_1A3D7A9C4(319);
  if (v1 <= 0x3F)
  {
    sub_1A5243624();
    if (v2 <= 0x3F)
    {
      sub_1A3C6B86C(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A48568FC()
{
  result = qword_1EB1437B8;
  if (!qword_1EB1437B8)
  {
    sub_1A3C6B86C(255, &unk_1EB1437C0, sub_1A485672C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1437B8);
  }

  return result;
}

id sub_1A4856994(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_hostIdentifier] = a1;
  *&v5[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets] = a2;
  v6 = objc_allocWithZone(off_1E77214E0);
  swift_unknownObjectRetain();
  v7 = [v6 init];
  *&v5[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_transientAssetCollection] = v7;
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();
  return v8;
}

id OneUpSharePlayDataSource.asset(atItemIndexPath:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets) objectAtIndexedSubscript_];

  return v1;
}

void OneUpSharePlayDataSource.object(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A52403B4() == a3)
  {
    if (sub_1A52403B4() == a2)
    {
LABEL_13:
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000030, 0x80000001A53EE930);
      v8 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v8);

      MEMORY[0x1A5907B60](2128928, 0xE300000000000000);
      v9 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v9);

      MEMORY[0x1A5907B60](2128928, 0xE300000000000000);
      v10 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v10);

      MEMORY[0x1A5907B60](2128928, 0xE300000000000000);
      v11 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v11);

      sub_1A524E6E4();
      __break(1u);
      return;
    }

    if (!a2)
    {

      swift_unknownObjectRetain();
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = [*(v3 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets) objectAtIndexedSubscript_];

  v7 = v6;
}

id OneUpSharePlayDataSource.assetReference(atItemIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [*(v4 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets) objectAtIndexedSubscript_];
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v10 = [objc_allocWithZone(off_1E7721490) initWithSectionObject:0 itemObject:v9 subitemObject:0 indexPath:v12];
  swift_unknownObjectRelease();
  return v10;
}

uint64_t OneUpSharePlayDataSource.indexPath(for:hintIndexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets);
  if (([v5 respondsToSelector_] & 1) != 0 && (v6 = objc_msgSend(v5, sel_indexOfObject_, a1), v6 != sub_1A52403B4()))
  {
    MEMORY[0x1A58FC8D0](v6, 0);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1A5241574();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v7, 1, v8);
}

void *OneUpSharePlayDataSource.indexPath(for:)(void *a1)
{
  sub_1A4859428(0, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_1A5241574();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  [a1 indexPath];
  v14 = v24;
  if (v14 == [v1 identifier])
  {
    [a1 indexPath];
    return v24;
  }

  else
  {
    [a1 indexPath];
    v16 = v26;
    [a1 indexPath];
    MEMORY[0x1A58FC8D0](v16, v25);
    v17 = [a1 asset];
    v18 = *&v1[OBJC_IVAR____TtC12PhotosUICore24OneUpSharePlayDataSource_assets];
    if (([v18 respondsToSelector_] & 1) != 0 && (v19 = objc_msgSend(v18, sel_indexOfObject_, v17), v19 != sub_1A52403B4()))
    {
      MEMORY[0x1A58FC8D0](v19, 0);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    (*(v7 + 56))(v5, v20, 1, v6);
    swift_unknownObjectRelease();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      [v1 identifier];
      sub_1A5241544();
      PXSimpleIndexPathFromIndexPath();
    }

    sub_1A48593CC(v5, &qword_1EB12AF30, MEMORY[0x1E6969C28]);
    v21 = *(off_1E7722228 + 1);
    v23[0] = *off_1E7722228;
    v23[1] = v21;
    (*(v7 + 8))(v13, v6);
    return *&v23[0];
  }
}

void static OneUpSharePlayDataSource.indexPathForSharePlayAsset(withUUID:in:)(uint64_t a1, uint64_t a2, id a3)
{
  [a3 numberOfItemsInSection_];
  v6 = swift_allocObject();
  v7 = *(off_1E7722228 + 1);
  *(v6 + 16) = *off_1E7722228;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v6;
  v9 = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48579F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = v5[5];
  v28[0] = a1;
  v28[1] = a2;
  v28[2] = a3;
  v28[3] = a4;
  v15 = [objc_msgSend(v11 assetAtItemIndexPath_];
  if (v15)
  {
    v26 = a3;
    v27 = a4;
    v16 = a5;
    v17 = v15;
    v18 = sub_1A524C674();
    v20 = v19;

    if (v18 == v12 && v20 == v13)
    {

      v24 = v26;
      v23 = v27;
    }

    else
    {
      v22 = sub_1A524EAB4();

      v24 = v26;
      v23 = v27;
      if ((v22 & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = v24;
    v14[5] = v23;
    *v16 = 1;
  }

  return swift_unknownObjectRelease();
}

id OneUpSharePlayDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpSharePlayDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4857C60()
{
  v1 = [v0 dataSource];
  type metadata accessor for OneUpSharePlayDataSource();
  v2 = swift_dynamicCastClass();

  if (v2)
  {
    v3 = [v0 dataSource];

    swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }
}

void *OneUpSharePlayDataSourceManager.init(sessionCoordinator:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  sub_1A4859428(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_1EB143800) = 0;
  *(v1 + qword_1EB143808) = 0;
  *(v1 + qword_1EB1437F0) = a1;
  v13 = type metadata accessor for OneUpSharePlayDataSourceManager(0, *((v5 & v3) + 0x50), *((v5 & v3) + 0x58), v12);
  v24.receiver = v1;
  v24.super_class = v13;

  v14 = objc_msgSendSuper2(&v24, sel_init);
  OneUpSharePlaySessionRecipientCoordinator.currentDataSourceMessage.getter();
  v15 = (*((*v4 & *v14) + 0xB8))(v11);
  [v14 setDataSource:v15 changeDetails:0];

  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1A524CC54();

  v18 = sub_1A524CC44();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a1;
  v19[5] = v17;

  v21 = sub_1A3D4D930(0, 0, v8, &unk_1A53698A8, v19);
  v22 = sub_1A3EE1368(v21, MEMORY[0x1E69E7CA8] + 8);

  sub_1A4858C70(v11, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  *(v14 + qword_1EB143800) = v22;

  return v14;
}

uint64_t sub_1A4858088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_1A4859428(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  v5[10] = swift_task_alloc();
  v6 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  sub_1A4859428(0, &qword_1EB143828, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  v5[14] = swift_task_alloc();
  sub_1A4859530(0, &qword_1EB143830, MEMORY[0x1E695BF40]);
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  sub_1A485947C(0);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  sub_1A4859510(0);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = sub_1A524CC54();
  v5[25] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v5[26] = v11;
  v5[27] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4858340, v11, v10);
}

uint64_t sub_1A4858340()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  OneUpSharePlaySessionRecipientCoordinator.dataSourceUpdateMessages.getter(v0 + 5);
  v0[6] = v0[5];
  sub_1A484B9D0(0);
  sub_1A48595CC(&qword_1EB1435D8, sub_1A484B9D0, MEMORY[0x1E695BFB0]);
  sub_1A5247A74();

  v7 = sub_1A48595CC(&qword_1EB143850, sub_1A485947C, MEMORY[0x1E695BD78]);
  MEMORY[0x1A5902E10](v4, v7);
  (*(v1 + 8))(v2, v4);
  sub_1A52478B4();
  (*(v6 + 8))(v3, v5);
  swift_beginAccess();
  v0[28] = sub_1A524CC44();
  v8 = sub_1A48595CC(&qword_1EB143860, sub_1A4859510, MEMORY[0x1E695BF38]);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_1A4858570;
  v10 = v0[21];
  v11 = v0[14];

  return MEMORY[0x1EEE6D8C8](v11, v10, v8);
}

uint64_t sub_1A4858570()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1A524CBC4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1A4858B58;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1A524CBC4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1A4858708;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1A4858708()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1A485876C, v1, v2);
}

uint64_t sub_1A485876C()
{
  v1 = v0[14];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

LABEL_8:

    v14 = v0[1];

    return v14();
  }

  sub_1A42BF46C(v1, v0[13]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v13 = v0[13];

    sub_1A4858C70(v13, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
    (*(v11 + 8))(v10, v12);
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB8))(v0[13]);
  if (*(v3 + qword_1EB143808))
  {
    v5 = v0[10];
    sub_1A4859360(v0[13] + *(v0[11] + 24), v5, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    v6 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
    v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
    v8 = v0[10];
    if (v7 == 1)
    {
      sub_1A48593CC(v0[10], &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
      v9 = 0;
    }

    else
    {
      v16 = [v3 dataSource];
      v17 = [v16 identifier];

      v18 = [v4 identifier];
      OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.convertToChangeDetails(remoteFromDataSourceIdentifier:remoteToDataSourceIdentifier:)(v19, v17, v18);
      v9 = v20;
      sub_1A4858C70(v8, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    }
  }

  else
  {
    v9 = 0;
  }

  v21 = v0[13];
  *(v3 + qword_1EB143808) = 1;
  [v3 setDataSource:v4 changeDetails:v9];

  sub_1A4858C70(v21, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  v0[28] = sub_1A524CC44();
  v22 = sub_1A48595CC(&qword_1EB143860, sub_1A4859510, MEMORY[0x1E695BF38]);
  v23 = swift_task_alloc();
  v0[29] = v23;
  *v23 = v0;
  v23[1] = sub_1A4858570;
  v24 = v0[21];
  v25 = v0[14];

  return MEMORY[0x1EEE6D8C8](v25, v24, v22);
}

uint64_t sub_1A4858B58()
{
  *(v0 + 56) = *(v0 + 240);
  sub_1A3DBD9A0();
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1A4858BD8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4858088(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4858C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4858CD0(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v14 = a1;
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    sub_1A4858F24();
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1A4858F70(v12, v8);
      sub_1A4858F70(v8, v5);
      sub_1A435ED78(v5);
      sub_1A4858C70(v8, type metadata accessor for OneUpSharePlayAssetMetadata);
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v12 += v13;
      --v10;
    }

    while (v10);
    v11 = v15;
  }

  if (!(v11 >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3D435C4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4858F24()
{
  result = qword_1EB143810;
  if (!qword_1EB143810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB143810);
  }

  return result;
}

uint64_t sub_1A4858F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4858FD4(uint64_t a1, uint64_t *a2)
{
  sub_1A3D435C4();
  sub_1A524CA14();
  PXDisplayAssetFetchResultFromArray();
}

id OneUpSharePlayDataSourceManager.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OneUpSharePlayDataSourceManager(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_1A48591A8()
{

  return result;
}

uint64_t sub_1A4859360(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4859428(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A48593CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4859428(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A4859428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1A485947C(uint64_t a1)
{
  if (!qword_1EB143838)
  {
    sub_1A484B9D0(255);
    sub_1A48595CC(&qword_1EB1435D8, sub_1A484B9D0, MEMORY[0x1E695BFB0]);
    v1 = sub_1A5247804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143838);
    }
  }
}

void sub_1A4859530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A485947C(255);
    v7 = v6;
    v8 = sub_1A48595CC(&qword_1EB143850, sub_1A485947C, MEMORY[0x1E695BD78]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A48595CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LemonadeMemoriesEntryCardPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

double LemonadeMemoriesEntryCardPositionManager.position.getter@<D0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v2 = sub_1A3C6A068();
  os_unfair_lock_lock((v2 + 20));
  *a1 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return result;
}

void sub_1A4859778(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v3 = sub_1A3C6A068();
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  *a2 = v4;
}

double sub_1A4859844(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415C4();

  return result;
}

double LemonadeMemoriesEntryCardPositionManager.position.setter(char *a1)
{
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415C4();

  return result;
}

double sub_1A48599E0(uint64_t a1, char a2)
{
  v3 = sub_1A3C6A068();
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a2 & 1;
  os_unfair_lock_unlock((v3 + 20));

  return result;
}

uint64_t (*LemonadeMemoriesEntryCardPositionManager.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v5 = sub_1A3C6A068();
  os_unfair_lock_lock((v5 + 20));
  *(v4 + 32) = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 20));

  return sub_1A4859B84;
}

void sub_1A4859B84(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  *v1 = v1[1];
  sub_1A52415C4();

  free(v1);
}

uint64_t sub_1A4859C54@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  return sub_1A3C7CD54(v5 + v3, a1);
}

uint64_t sub_1A4859D1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  return sub_1A3C7CD54(v3 + v4, a2);
}

uint64_t sub_1A4859DE4(uint64_t a1)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CD54(a1, v4);
  return sub_1A4859E70(v4);
}

uint64_t sub_1A4859E70(uint64_t a1)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  sub_1A3C7CD54(v1 + v6, v5);
  v7 = sub_1A485A468(v5, a1);
  sub_1A3C42ED0(v5, sub_1A3C41108);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1A3C6A020(&unk_1EB1250B8, type metadata accessor for LemonadeMemoriesEntryCardPositionManager, &protocol conformance descriptor for LemonadeMemoriesEntryCardPositionManager);
    sub_1A52415C4();
  }

  else
  {
    swift_beginAccess();
    sub_1A4280C7C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1A3C42ED0(a1, sub_1A3C41108);
}

uint64_t LemonadeMemoriesEntryCardPositionManager.__allocating_init(timeSlotProvider:impressionsCountProvider:lastUsedDateProvider:reloadTimeoutAfterAppWentToBackground:shouldDisableForIPad:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = a6;
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  v18 = sub_1A485A910(v17, a2, a3, a4, a5, v8, a7, v7, v15, v16);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t LemonadeMemoriesEntryCardPositionManager.init(timeSlotProvider:impressionsCountProvider:lastUsedDateProvider:reloadTimeoutAfterAppWentToBackground:shouldDisableForIPad:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v9 = a6;
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  v23 = sub_1A485A754(v21, a2, a3, a4, a5, v9, v8, v16, a7, v17);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v23;
}

double sub_1A485A26C(uint64_t a1)
{
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A5241134();
    v5 = sub_1A5241144();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    sub_1A4859E70(v3);
  }

  return result;
}

uint64_t LemonadeMemoriesEntryCardPositionManager.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_timeSlotProvider));

  sub_1A3C42ED0(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate, sub_1A3C41108);
  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A485A468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E99834(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A3C7CD54(a1, v13);
  sub_1A3C7CD54(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A3C7CD54(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1A3C6A020(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1A3C42ED0(v13, sub_1A3C41108);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A3C42ED0(v13, sub_1A3E99834);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A3C42ED0(v13, sub_1A3C41108);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A485A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v30[3] = a8;
  v30[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a1, a8);
  *(a7 + 16) = 0;
  v20 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_logger;
  v21 = sub_1A3C4A780();
  v22 = sub_1A5246F24();
  (*(*(v22 - 8) + 16))(a7 + v20, v21, v22);
  v23 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  v24 = sub_1A5241144();
  (*(*(v24 - 8) + 56))(a7 + v23, 1, 1, v24);
  sub_1A5241604();
  sub_1A3C341C8(v30, a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_timeSlotProvider);
  v25 = (a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_impressionsCountProvider);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_lastUsedDateProvider);
  *v26 = a4;
  v26[1] = a5;
  *(a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_reloadTimeoutAfterAppWentToBackground) = a9;
  *(a7 + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager_isDisabledForIPad) = a6;

  sub_1A3C507D4(v27, v28);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return a7;
}

uint64_t sub_1A485A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v23 = a6;
  v17 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a1, a9);
  return sub_1A485A754(v19, a2, a3, a4, a5, v23, v20, a9, a7, a10);
}

unint64_t sub_1A485AA50()
{
  result = qword_1EB143868;
  if (!qword_1EB143868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143868);
  }

  return result;
}

uint64_t sub_1A485AB04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesEntryCardPositionManager__enterBackgroundDate;
  swift_beginAccess();
  sub_1A4280C7C(v1, v2 + v3);
  return swift_endAccess();
}

void *sub_1A485AB88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
    result = sub_1A45DF914();
    v4 = *result;
    v5 = result[1];
    v6 = *(result + 16);
    *(a2 + 24) = &type metadata for PhotosCollectionStaticColorGradeModel;
    *(a2 + 32) = &off_1F1718A50;
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    v8 = v7;
    *(a2 + 24) = type metadata accessor for PHMemoryColorGradeModel(0);
    *(a2 + 32) = &off_1F17293C8;
    if (qword_1EB17E4A0 != -1)
    {
      swift_once();
    }

    result = [qword_1EB17E4A8 objectForKey_];
    if (result)
    {
      *a2 = result;
    }

    else
    {
      v9 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_1A485AEF0(v8);
      result = [qword_1EB17E4A8 setObject:v9 forKey:v8];
      *a2 = v9;
    }
  }

  return result;
}

uint64_t type metadata accessor for PHMemoryColorGradeModel(uint64_t a1)
{
  result = qword_1EB185608;
  if (!qword_1EB185608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A485AD1C()
{
  if (*(v0 + 8) || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) == 0))
  {
    v1 = sub_1A45DF914();
    v2 = *v1;
    v3 = v1[1];
    v4 = &type metadata for PhotosCollectionStaticColorGradeModel;
    v5 = &off_1F1718A50;
    v6 = *(v1 + 16);
    v15 = &type metadata for PhotosCollectionStaticColorGradeModel;
    v16 = &off_1F1718A50;
    LOBYTE(v13[0]) = v2;
    v13[1] = v3;
    v14 = v6;
  }

  else
  {
    v8 = v7;
    v4 = type metadata accessor for PHMemoryColorGradeModel(0);
    v15 = v4;
    v16 = &off_1F17293C8;
    if (qword_1EB17E4A0 != -1)
    {
      swift_once();
    }

    v9 = [qword_1EB17E4A8 objectForKey_];
    if (v9)
    {
      v13[0] = v9;
    }

    else
    {
      v10 = swift_allocObject();
      swift_unknownObjectRetain();
      sub_1A485AEF0(v8);
      [qword_1EB17E4A8 setObject:v10 forKey:v8];
      v13[0] = v10;
    }

    v5 = &off_1F17293C8;
  }

  __swift_project_boxed_opaque_existential_1(v13, v4);
  v11 = (v5[2])();
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v11;
}

id sub_1A485AEB4()
{
  result = [objc_opt_self() weakToWeakObjectsMapTable];
  qword_1EB17E4A8 = result;
  return result;
}

id sub_1A485AEF0(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  sub_1A5241604();
  *(v2 + 40) = a1;
  v4 = a1;
  v5 = [v4 storyColorGradeKind];
  if ((*(v2 + 32) & 1) != 0 || *(v2 + 24) != v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[0] = v2;
    sub_1A485B674();
    sub_1A52415C4();
  }

  else
  {
    *(v2 + 32) = 0;
  }

  result = [v4 photoLibrary];
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    swift_weakInit();

    PHPhotoLibrary.registerObserver(_:block:)(0, 0, sub_1A485B6E0, v9, v10);

    swift_beginAccess();
    sub_1A3C6F55C(v10, v2 + 48);
    swift_endAccess();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A485B0E8(uint64_t a1, char a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 24) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 24) = a1;
    *(v2 + 32) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A485B674();
  sub_1A52415C4();

  return result;
}

uint64_t sub_1A485B1EC()
{
  swift_getKeyPath();
  sub_1A485B674();
  sub_1A52415D4();

  return *(v0 + 24);
}

void sub_1A485B260(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A485B674();
  sub_1A52415D4();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v4;
}

void sub_1A485B314()
{
  v1 = v0;
  sub_1A4805AE8();
  v2 = sub_1A524DC34();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectAfterChanges];

    if (v4)
    {
      v5 = [v4 storyColorGradeKind];
      swift_getKeyPath();
      sub_1A485B674();
      sub_1A52415D4();

      if ((*(v1 + 32) & 1) != 0 || v5 != *(v1 + 24))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1A52415C4();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1A485B490()
{
  sub_1A416523C(v0 + 48);
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_2060C365CACF8C7B1973E4BB84E1891323PHMemoryColorGradeModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A485B544(uint64_t a1)
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

uint64_t sub_1A485B600()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A485B674();
  sub_1A52415D4();

  return *(v1 + 24);
}

unint64_t sub_1A485B674()
{
  result = qword_1EB185628;
  if (!qword_1EB185628)
  {
    type metadata accessor for PHMemoryColorGradeModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB185628);
  }

  return result;
}

void sub_1A485B6CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

double sub_1A485B6E0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A485B314();
  }

  return result;
}

Swift::Void __swiftcall LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(CGSize _, UIEdgeInsets newSafeAreaInsets)
{
  v5 = v3;
  v6 = v2;
  right = newSafeAreaInsets.right;
  bottom = newSafeAreaInsets.bottom;
  left = newSafeAreaInsets.left;
  top = newSafeAreaInsets.top;
  height = _.height;
  width = _.width;
  v14 = (*(v3 + 24))() == _.width && v13 == height;
  if (!v14 || ((*(v5 + 48))(v6, v5) == top ? (v18 = v15 == left) : (v18 = 0), v18 ? (v19 = v16 == bottom) : (v19 = 0), v19 ? (v20 = v17 == right) : (v20 = 0), !v20))
  {
    (*(v5 + 32))(v6, v5, width, height);
    (*(v5 + 56))(v6, v5, top, left, bottom, right);
    v34 = v4;
    v21 = *(v5 + 16);
    v22 = *(v21 + 8);
    v23 = v22(v6, v21);
    v33 = v4;
    v24 = *(v21 + 16);
    v24(v6, v21);
    v26 = v23 - v25;
    v34 = v4;
    v24(v6, v21);
    sub_1A4187540(&v34, v26 - v27);
    v28 = v34;
    (*(v5 + 72))(&v33, v6, v5);
    sub_1A3F17D14();
    if ((sub_1A524C594() & 1) == 0)
    {
      LOBYTE(v34) = v28;
      (*(v5 + 80))(&v34, v6, v5);
    }

    sub_1A3C649C4(&v34);
    v29 = v34;
    (*(v5 + 96))(&v33, v6, v5);
    sub_1A4188350();
    if ((sub_1A524C594() & 1) == 0)
    {
      LOBYTE(v34) = v29;
      (*(v5 + 104))(&v34, v6, v5);
    }

    v34 = v4;
    v30 = v22(v6, v21);
    sub_1A4187A08(&v33, v30, v31);
    v32 = v33;
    LOBYTE(v34) = v33;
    (*(v5 + 120))(&v33, v6, v5);
    sub_1A41883A8();
    if ((sub_1A524C594() & 1) == 0)
    {
      LOBYTE(v34) = v32;
      (*(v5 + 128))(&v34, v6, v5);
    }
  }
}

uint64_t LemonadeSpecsProviderView.init(model:presentationContext:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v15 = *a2;
  *a8 = swift_getKeyPath();
  v16 = MEMORY[0x1E697DCB8];
  sub_1A485C108(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v17 = type metadata accessor for LemonadeSpecsProviderView(0, v22);
  v18 = v17[13];
  *&a8[v18] = swift_getKeyPath();
  sub_1A485C108(0, &qword_1EB128A50, MEMORY[0x1E697E730], v16);
  swift_storeEnumTagMultiPayload();
  v19 = *(a4 - 8);
  v20 = (*(v19 + 16))(&a8[v17[14]], a1, a4);
  a8[v17[16]] = v15;
  a3(v20);
  return (*(v19 + 8))(a1, a4);
}

uint64_t sub_1A485BCA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C2218];
  sub_1A485C108(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1A48607B0(v2, &v16 - v10, &qword_1EB128AA0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A485BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697E730];
  sub_1A485C108(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1A48607B0(v2 + *(a1 + 52), &v17 - v11, &qword_1EB128A50, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A52486A4();
    return (*(*(v13 - 8) + 32))(a2, v12, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1A485C108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LemonadeSpecsProviderView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v174 = a2;
  v4 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v148 = (v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1[3];
  sub_1A3EBB1B4(255);
  v175 = v6;
  v7 = sub_1A5248804();
  v137 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v136 = v130 - v8;
  v9 = MEMORY[0x1E6980A08];
  sub_1A48606A8(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  v138 = v7;
  v10 = sub_1A5248804();
  v140 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v139 = v130 - v11;
  v141 = v12;
  v13 = sub_1A5248804();
  v143 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v142 = v130 - v14;
  sub_1A48606A8(255, &qword_1EB127988, &type metadata for LemonadeCellSpec, v9);
  v144 = v13;
  v15 = sub_1A5248804();
  v146 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v145 = v130 - v16;
  v17 = MEMORY[0x1E6980A08];
  sub_1A485C108(255, &qword_1EB127958, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E6980A08]);
  v147 = v15;
  v18 = sub_1A5248804();
  v150 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v149 = v130 - v19;
  sub_1A48606A8(255, &qword_1EB127978, &type metadata for LemonadeStackSpecs, v9);
  v151 = v18;
  v20 = sub_1A5248804();
  v153 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v152 = v130 - v21;
  sub_1A48606A8(255, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass, v9);
  v154 = v20;
  v22 = sub_1A5248804();
  v156 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v155 = v130 - v23;
  sub_1A48606A8(255, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass, v9);
  v157 = v22;
  v24 = sub_1A5248804();
  v159 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v158 = v130 - v25;
  sub_1A48606A8(255, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation, v9);
  v160 = v24;
  v26 = sub_1A5248804();
  v162 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v161 = v130 - v27;
  sub_1A485C108(255, &qword_1EB127728, type metadata accessor for CGSize, v17);
  v163 = v26;
  v28 = sub_1A5248804();
  v165 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v164 = v130 - v29;
  sub_1A485C108(255, &qword_1EB1220B0, type metadata accessor for UIEdgeInsets, v17);
  v166 = v28;
  v30 = sub_1A5248804();
  v170 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v167 = v130 - v31;
  sub_1A48606A8(255, &qword_1EB127968, &type metadata for LemonadeFeedZoomLevel, v9);
  v171 = v30;
  v173 = sub_1A5248804();
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v168 = v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v169 = v130 - v34;
  v35 = sub_1A5246E54();
  v135 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v130 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A485C108(0, &qword_1EB128C00, MEMORY[0x1E69E93D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = v130 - v43;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5905890](a1, WitnessTable);
  v46 = sub_1A5246E94();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v44, 1, v46);
  v176 = v2;
  if (v48 == 1)
  {
    v49 = a1;
    sub_1A48606F8(v44, &qword_1EB128C00, MEMORY[0x1E69E93D8]);
  }

  else
  {
    v133 = v35;
    (*(v38 + 16))(v41, v2, a1);
    sub_1A5246E44();
    v50 = sub_1A5246E84();
    v132 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v51 = swift_slowAlloc();
      v130[1] = v51;
      v131 = swift_slowAlloc();
      v201 = v131;
      *v51 = 136446210;
      v52 = sub_1A524A694();
      v54 = v53;
      v55 = *(v38 + 8);
      v130[0] = v37;
      v55(v41, a1);
      sub_1A3C2EF94(v52, v54, &v201);
    }

    (*(v135 + 8))(v37, v133);
    v49 = a1;
    (*(v38 + 8))(v41, a1);
    (*(v47 + 8))(v44, v46);
  }

  swift_getKeyPath();
  v201 = 2;
  LOBYTE(v202) = 0;
  v56 = v49[5];
  v57 = v136;
  sub_1A524A964();

  swift_getKeyPath();
  sub_1A485E980(v49);
  v59 = v58;
  v60 = v49[4];
  v135 = *(v60 + 24);
  v61 = v49[2];
  v134 = v49;
  v201 = (v135)(v61, v60);
  v202 = v59;
  v203 = v201;
  v204 = v59;
  v62 = sub_1A4860768(&qword_1EB1277A0, sub_1A3EBB1B4, MEMORY[0x1E6980A18]);
  v199 = v56;
  v200 = v62;
  v133 = MEMORY[0x1E697E858];
  v63 = v138;
  v64 = swift_getWitnessTable();
  v65 = v139;
  sub_1A524A964();

  (*(v137 + 8))(v57, v63);
  swift_getKeyPath();
  v66 = v176;
  v175 = v61;
  v138 = v60;
  v201 = (v135)(v61, v60);
  v202 = 0x4038000000000000;
  v203 = v201;
  v204 = 0x4038000000000000;
  v67 = sub_1A485D9D8(&qword_1EB1278A8, &qword_1EB1278A0, MEMORY[0x1E697DA60]);
  v197 = v64;
  v198 = v67;
  v68 = v141;
  v69 = swift_getWitnessTable();
  v70 = v142;
  sub_1A524A964();

  v71 = v65;
  v72 = v66;
  (*(v140 + 8))(v71, v68);
  swift_getKeyPath();
  v73 = v134;
  v201 = sub_1A485DA3C(v134);
  v195 = v69;
  v196 = v67;
  v74 = v144;
  v75 = swift_getWitnessTable();
  v76 = v145;
  sub_1A524A964();

  (*(v143 + 8))(v70, v74);
  swift_getKeyPath();
  v77 = v148;
  sub_1A485E758(v73, v148);
  v78 = sub_1A485D9D8(&qword_1EB127990, &qword_1EB127988, &type metadata for LemonadeCellSpec);
  v193 = v75;
  v194 = v78;
  v79 = v147;
  v80 = swift_getWitnessTable();
  v81 = v149;
  sub_1A524A964();

  sub_1A43A35CC(v77);
  (*(v146 + 8))(v76, v79);
  swift_getKeyPath();
  LOBYTE(v201) = *(v72 + *(v73 + 64));
  v205 = 3;
  if (static LemonadePresentationContext.== infix(_:_:)(&v201, &v205))
  {
    sub_1A52416C4();
    sub_1A52416C4();
  }

  else
  {
    sub_1A52416C4();
    sub_1A3C7E8B0(0, v82);
    v83 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v83 shelfSpacing];
  }

  sub_1A43F25C8();
  sub_1A43F25D0();
  PXDisplayCollectionDetailedCountsMake();
  v201 = v84;
  v202 = v85;
  v203 = v86;
  v204 = v87;
  v88 = sub_1A485E7E8(&qword_1EB127960, &qword_1EB127958, type metadata accessor for LemonadeItemsLayoutSpec);
  v191 = v80;
  v192 = v88;
  v89 = v151;
  v90 = swift_getWitnessTable();
  v91 = v152;
  sub_1A524A964();

  (*(v150 + 8))(v81, v89);
  swift_getKeyPath();
  v92 = v138;
  v93 = v175;
  (*(v138 + 32))(&v201, v175, v138);
  v94 = sub_1A485D9D8(&qword_1EB127980, &qword_1EB127978, &type metadata for LemonadeStackSpecs);
  v189 = v90;
  v190 = v94;
  v95 = v154;
  v96 = swift_getWitnessTable();
  v97 = v155;
  sub_1A524A964();

  (*(v153 + 8))(v91, v95);
  swift_getKeyPath();
  (*(v92 + 40))(&v201, v93, v92);
  v98 = sub_1A485D9D8(&qword_1EB127928, &qword_1EB127920, &type metadata for LemonadeHorizontalSizeClass);
  v187 = v96;
  v188 = v98;
  v99 = v157;
  v100 = swift_getWitnessTable();
  v101 = v158;
  sub_1A524A964();

  (*(v156 + 8))(v97, v99);
  swift_getKeyPath();
  (*(v92 + 48))(&v201, v175, v92);
  v205 = v201;
  v102 = sub_1A485D9D8(&qword_1EB127940, &unk_1EB127930, &type metadata for LemonadeVerticalSizeClass);
  v185 = v100;
  v186 = v102;
  v103 = v160;
  v104 = swift_getWitnessTable();
  v105 = v161;
  sub_1A524A964();

  (*(v159 + 8))(v101, v103);
  swift_getKeyPath();
  v106 = v175;
  v201 = (*(v92 + 8))(v175, v92);
  v202 = v107;
  v108 = sub_1A485D9D8(&qword_1EB127918, &unk_1EB127908, &type metadata for LemonadeRootViewOrientation);
  v183 = v104;
  v184 = v108;
  v109 = v163;
  v110 = swift_getWitnessTable();
  v111 = v164;
  sub_1A524A964();

  (*(v162 + 8))(v105, v109);
  swift_getKeyPath();
  v201 = (*(v92 + 16))(v106, v92);
  v202 = v112;
  v203 = v113;
  v204 = v114;
  v115 = sub_1A485E7E8(&qword_1EB127730, &qword_1EB127728, type metadata accessor for CGSize);
  v181 = v110;
  v182 = v115;
  v116 = v166;
  v117 = swift_getWitnessTable();
  v118 = v167;
  sub_1A524A964();

  (*(v165 + 8))(v111, v116);
  swift_getKeyPath();
  (*(v92 + 56))(&v201, v106, v92);
  v119 = sub_1A485E7E8(&unk_1EB1220B8, &qword_1EB1220B0, type metadata accessor for UIEdgeInsets);
  v179 = v117;
  v180 = v119;
  v120 = v171;
  v121 = swift_getWitnessTable();
  v122 = v168;
  sub_1A524A964();

  (*(v170 + 8))(v118, v120);
  v123 = sub_1A485D9D8(&qword_1EB127970, &qword_1EB127968, &type metadata for LemonadeFeedZoomLevel);
  v177 = v121;
  v178 = v123;
  v124 = v173;
  swift_getWitnessTable();
  v125 = v172;
  v126 = *(v172 + 16);
  v127 = v169;
  v126(v169, v122, v124);
  v128 = *(v125 + 8);
  v128(v122, v124);
  v126(v174, v127, v124);
  return (v128)(v127, v124);
}
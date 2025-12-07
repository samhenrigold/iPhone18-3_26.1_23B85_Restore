uint64_t sub_24EE1E554(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213908, &qword_24F93B498);
    v4 = sub_24F92B618();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 88;
      do
      {
        sub_24E60169C(v3, v14, &qword_27F213908, &qword_24F93B498);
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_24E60169C(v3, v14, &qword_27F213908, &qword_24F93B498);
    return v5;
  }

  return result;
}

void *sub_24EE1E658(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_24F92B618();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *sub_24EE1E704(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    sub_24EE1E790();
    v4 = sub_24F92B618();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

unint64_t sub_24EE1E790()
{
  result = qword_27F225108;
  if (!qword_27F225108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F225108);
  }

  return result;
}

uint64_t sub_24EE1E7DC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EA8, &unk_24F9A4910);
    v4 = sub_24F92B618();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_24EE1E878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800, &qword_24F93B370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE1E90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v33 = a1;
  v36 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_24F924038();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = sub_24F924E38();
  v34 = *(v20 - 8);
  v35 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  if (v33)
  {
    sub_24E615E00(v32, v39);
    MEMORY[0x25304C420](v39, a3, &type metadata for HeroRubberBandEffectModifier, a4);
    sub_24EE1F9C0(v39);
    v23 = sub_24E63E080();
    v37 = a4;
    v38 = v23;
    WitnessTable = swift_getWitnessTable();
    sub_24E7896B8();
    v25 = *(v14 + 8);
    v25(v16, v13);
    sub_24E7896B8();
    sub_24ECCCBA0(v16, v13, a3, WitnessTable, a4);
    v25(v16, v13);
    v25(v19, v13);
  }

  else
  {
    sub_24E7896B8();
    sub_24E7896B8();
    v26 = sub_24E63E080();
    v44 = a4;
    v45 = v26;
    v27 = swift_getWitnessTable();
    sub_24ECCCC98(v9, v13, a3, v27, a4);
    v28 = *(v7 + 8);
    v28(v9, a3);
    v28(v12, a3);
  }

  v29 = sub_24E63E080();
  v42 = a4;
  v43 = v29;
  v40 = swift_getWitnessTable();
  v41 = a4;
  v30 = v35;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v34 + 8))(v22, v30);
}

uint64_t sub_24EE1ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EC8, &unk_24F9A49E8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  if (a1)
  {
    v30 = a3;
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24F93A400;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    swift_retain_n();

    sub_24F927878();
    sub_24F927898();
    MEMORY[0x25304CD70](v13);
    sub_24F923BD8();
    v14 = sub_24F9257F8();
    v15 = sub_24F924058();
    v16 = v40[5];
    v40[3] = sub_24F925048();
    v40[4] = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(v40);
    sub_24F925258();
    v35 = v16;
    v37 = v42;
    v36 = v41;
    v38 = v15;
    v39 = v14;
    sub_24E615E00(v40, v34);
    v17 = swift_allocObject();
    sub_24E612C80(v34, v17 + 16);
    *(v17 + 56) = a4;
    *(v17 + 64) = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230ED0, &qword_24F9A49F8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230ED8, &qword_24F9A4A00);
    v20 = sub_24EE1F7C8();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EE8, &qword_24F9A4A08);
    v22 = sub_24F9243B8();
    v23 = sub_24EE1F854();
    v32 = v22;
    v33 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v21;
    v33 = OpaqueTypeConformance2;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304BC60](sub_24EE1F7B8, v17, v18, v19, v20, v25);

    __swift_destroy_boxed_opaque_existential_1(v40);
    v26 = v30;
    (*(v31 + 32))(v30, v12, v8);
    return (*(v31 + 56))(v26, 0, 1, v8);
  }

  else
  {
    v28 = *(v9 + 56);

    return v28(a3, 1, 1, v8, v10);
  }
}

uint64_t sub_24EE1F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 1);
  v8 = v3[2];
  v9 = sub_24F9275F8();
  v11 = v10;
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EB0, &qword_24F9A49D0) + 36);
  sub_24EE1ED18(v6, v8, v12, v7);
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EB8, &qword_24F9A49D8) + 36));
  *v13 = v9;
  v13[1] = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EC0, &qword_24F9A49E0);
  v15 = *(*(v14 - 8) + 16);

  return v15(a2, a1, v14);
}

double sub_24EE1F1F0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectInset(*&a2, 0.0, -*v5);
  sub_24F927788();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_24EE1F244(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24EE1F2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE1FCB8();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EE1F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE1FCB8();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EE1F394(uint64_t a1)
{
  v2 = sub_24EE1FCB8();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24EE1F3E0@<X0>(uint64_t a1@<X8>)
{
  sub_24E615E00(v1, v10);
  v3 = swift_allocObject();
  sub_24E612C80(v10, v3 + 16);
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F10, &qword_24F9A4AA0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230ED8, &qword_24F9A4A00);
  v6 = sub_24E602068(&qword_27F230F18, &qword_27F230F10, &qword_24F9A4AA0, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EE8, &qword_24F9A4A08);
  sub_24F9243B8();
  sub_24EE1F854();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304BC60](sub_24EE1FD0C, v3, v4, v5, v6, OpaqueTypeConformance2);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F20, &qword_24F9A4AA8);
  v9 = a1 + *(result + 36);
  *v9 = 0x408F400000000000;
  *(v9 + 8) = 256;
  return result;
}

uint64_t sub_24EE1F5A0(double a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EE8, &qword_24F9A4A08);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_24F9239B8();
  MinY = CGRectGetMinY(v28);
  if (MinY > 0.0)
  {
    v13 = MinY;
  }

  else
  {
    v13 = 0.0;
  }

  sub_24F923998();
  v15 = v13 + v14 + a1;
  sub_24F923998();
  v17 = v15 / v16;
  if (a5)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  sub_24F927878();
  v20 = v19;
  v22 = v21;
  v23 = sub_24F9243B8();
  v24 = sub_24EE1F854();
  MEMORY[0x253049230](v23, v24, v18, v17, v20, v22);
  v27[0] = v23;
  v27[1] = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x253049240](v8, OpaqueTypeConformance2, 0.0, -v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24EE1F780()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24EE1F7C8()
{
  result = qword_27F230EE0;
  if (!qword_27F230EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230ED0, &qword_24F9A49F8);
    sub_24E86BC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EE0);
  }

  return result;
}

unint64_t sub_24EE1F854()
{
  result = qword_27F230EF0;
  if (!qword_27F230EF0)
  {
    sub_24F9243B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EF0);
  }

  return result;
}

unint64_t sub_24EE1F8C0()
{
  result = qword_27F230EF8;
  if (!qword_27F230EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EB0, &qword_24F9A49D0);
    sub_24E602068(&qword_27F230F00, &qword_27F230EC0, &qword_24F9A49E0, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F230F08, &qword_27F230EB8, &qword_24F9A49D8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EF8);
  }

  return result;
}

unint64_t sub_24EE1FA04()
{
  result = qword_27F230F28;
  if (!qword_27F230F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F20, &qword_24F9A4AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F10, &qword_24F9A4AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230ED8, &qword_24F9A4A00);
    sub_24E602068(&qword_27F230F18, &qword_27F230F10, &qword_24F9A4AA0, MEMORY[0x277CE04B0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EE8, &qword_24F9A4A08);
    sub_24F9243B8();
    sub_24EE1F854();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F230F30, &qword_27F230F38, &qword_24F9A4AE8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F28);
  }

  return result;
}

unint64_t sub_24EE1FC0C()
{
  result = qword_27F230F50;
  if (!qword_27F230F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F50);
  }

  return result;
}

unint64_t sub_24EE1FC64()
{
  result = qword_27F230F58;
  if (!qword_27F230F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F58);
  }

  return result;
}

unint64_t sub_24EE1FCB8()
{
  result = qword_27F230F60;
  if (!qword_27F230F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F60);
  }

  return result;
}

uint64_t sub_24EE1FDBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F68, &unk_24F9A4CD8);
  v6 = *(v25[0] - 8);
  MEMORY[0x28223BE20](v25[0]);
  v8 = v25 - v7;
  v9 = sub_24F9232F8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_24E7538CC(v2 + 16, v36);
  sub_24EE20574(v2, &v26);
  v10 = swift_allocObject();
  v11 = v27;
  *(v10 + 16) = v26;
  *(v10 + 32) = v11;
  *(v10 + 48) = v28;
  *(v10 + 64) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F70, &qword_24F9A4CE8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F78, &qword_24F9A4CF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F80, &unk_24F9A4CF8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58, &unk_24F935650);
  v15 = sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  v16 = sub_24EC9FF88();
  v32 = v14;
  v33 = &type metadata for ActionLabelStyle;
  v34 = v15;
  v35 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v13;
  v33 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v32 = v12;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v19 = sub_24F9271D8();
  v26 = 0u;
  v27 = 0u;
  *&v28 = 0;
  v30 = v19;
  v31 = sub_24EA41794();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28 + 1);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, v21, v22);
  sub_24E602068(&qword_27F230F88, &qword_27F230F68, &unk_24F9A4CD8, MEMORY[0x277D7EB00]);
  sub_24E620DE8();
  v23 = v25[0];
  sub_24F926178();
  sub_24E6A56E8(&v26);
  return (*(v6 + 8))(v8, v23);
}

uint64_t sub_24EE2018C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_24F9248C8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58, &unk_24F935650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F80, &unk_24F9A4CF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F78, &qword_24F9A4CF0);
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = a1[1];
  v30 = v16;
  v31 = v17;
  sub_24E600AEC();

  sub_24F926EB8();
  LOBYTE(v30) = 0;
  v18 = sub_24E602068(&qword_27F212910, &qword_27F211B58, &unk_24F935650, MEMORY[0x277CDEFF0]);
  v19 = sub_24EC9FF88();
  sub_24F9260E8();
  (*(v5 + 8))(v7, v4);
  v30 = v4;
  v31 = &type metadata for ActionLabelStyle;
  v32 = v18;
  v33 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F9268B8();
  (*(v9 + 8))(v11, v8);
  v21 = v26;
  sub_24F9248B8();
  v30 = v8;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v24;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v27 + 8))(v21, v29);
  return (*(v25 + 8))(v15, v22);
}

uint64_t sub_24EE205AC()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_24EE205FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F68, &unk_24F9A4CD8);
  sub_24E602068(&qword_27F230F88, &qword_27F230F68, &unk_24F9A4CD8, MEMORY[0x277D7EB00]);
  sub_24E620DE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t JSNetworkPerformanceMetrics.metricsData.getter()
{
  v0 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v1 = sub_24F92A1D8();
  v3 = MEMORY[0x277D837D0];
  if (v2)
  {
    v49 = MEMORY[0x277D837D0];
    *&v48 = v1;
    *(&v48 + 1) = v2;
    sub_24E612B0C(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000014, 0x800000024FA5F0E0, isUniquelyReferenced_nonNull_native);
    v50 = v0;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000014, 0x800000024FA5F0E0, &v48);
    sub_24E601704(&v48, &qword_27F2129B0, &unk_24F945320);
  }

  v5 = sub_24F92A1E8();
  if (v6)
  {
    v49 = v3;
    *&v48 = v5;
    *(&v48 + 1) = v6;
    sub_24E612B0C(&v48, v47);
    v7 = v50;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x4C525565676170, 0xE700000000000000, v8);
    v50 = v7;
  }

  else
  {
    sub_24E98EF1C(0x4C525565676170, 0xE700000000000000, &v48);
    sub_24E601704(&v48, &qword_27F2129B0, &unk_24F945320);
  }

  v9 = sub_24F92A198();
  v11 = sub_24E99058C(v9, v10 & 1);
  if (v11)
  {
    v12 = v11;
    v49 = sub_24E9421D0();
    *&v48 = v12;
    sub_24E612B0C(&v48, v47);
    v13 = v50;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000010, 0x800000024FA5F100, v14);
    v50 = v13;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000010, 0x800000024FA5F100, &v48);
    sub_24E601704(&v48, &qword_27F2129B0, &unk_24F945320);
  }

  v15 = sub_24F92A1A8();
  v17 = sub_24E99058C(v15, v16 & 1);
  if (v17)
  {
    v18 = v17;
    v49 = sub_24E9421D0();
    *&v48 = v18;
    sub_24E612B0C(&v48, v47);
    v19 = v50;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000011, 0x800000024FA5F120, v20);
    v50 = v19;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F120, &v48);
    sub_24E601704(&v48, &qword_27F2129B0, &unk_24F945320);
  }

  v21 = sub_24F92A188();
  v23 = sub_24E99058C(v21, v22 & 1);
  if (v23)
  {
    v24 = v23;
    v49 = sub_24E9421D0();
    *&v48 = v24;
    sub_24E612B0C(&v48, v47);
    v25 = v50;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x65736E6F70736572, 0xEF656D6954646E45, v26);
    v50 = v25;
  }

  else
  {
    sub_24E98EF1C(0x65736E6F70736572, 0xEF656D6954646E45, &v48);
    sub_24E601704(&v48, &qword_27F2129B0, &unk_24F945320);
  }

  v27 = sub_24F92A1B8();
  if (v27 != 2)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v49 = sub_24E9421D0();
    *&v48 = v28;
    sub_24E612B0C(&v48, v47);
    v29 = v50;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000011, 0x800000024FA5F140, v30);
    v50 = v29;
  }

  v31 = sub_24F92A178();
  v33 = sub_24E99058C(v31, v32 & 1);
  if (v33)
  {
    v34 = v33;
    v49 = sub_24E9421D0();
    *&v48 = v34;
    sub_24E612B0C(&v48, v47);
    v35 = v50;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x6174536573726170, 0xEE00656D69547472, v36);
    v50 = v35;
  }

  else
  {
    sub_24E98EF1C(0x6174536573726170, 0xEE00656D69547472, &v48);
    sub_24E601704(&v48, &qword_27F2129B0, &unk_24F945320);
  }

  v37 = sub_24F92A168();
  v39 = sub_24E99058C(v37, v38 & 1);
  if (v39)
  {
    v40 = v39;
    v49 = sub_24E9421D0();
    *&v48 = v40;
    sub_24E612B0C(&v48, v47);
    v41 = v50;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x646E456573726170, 0xEC000000656D6954, v42);
    if (!*(v41 + 16))
    {
      return sub_24F928658();
    }
  }

  else
  {
    sub_24E98EF1C(0x646E456573726170, 0xEC000000656D6954, &v48);
    sub_24E601704(&v48, &qword_27F2129B0, &unk_24F945320);
    v41 = v50;
    if (!*(v50 + 16))
    {
      return sub_24F928658();
    }
  }

  v43 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
  if (v44)
  {
    sub_24E643A9C(*(v41 + 56) + 32 * v43, &v48);
    if (swift_dynamicCast())
    {
      v45 = HIBYTE(*(&v47[0] + 1)) & 0xFLL;
      if ((*(&v47[0] + 1) & 0x2000000000000000) == 0)
      {
        v45 = *&v47[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
      }
    }
  }

  return sub_24F928658();
}

uint64_t PageRenderMetricsEvent.metricsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v117[2] = a1;
  v4 = 0xD000000000000011;
  v5 = sub_24F92A1F8();
  v6 = *(v5 - 8);
  v124 = v5;
  v125 = v6;
  MEMORY[0x28223BE20](v5);
  v123 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_24F928698();
  v8 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v152 = v10;
  v11 = MEMORY[0x277D837D0];
  *(&v145 + 1) = MEMORY[0x277D837D0];
  *&v144 = 0x646E655265676170;
  *(&v144 + 1) = 0xEA00000000007265;
  sub_24E612B0C(&v144, v151);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v150 = v10;
  sub_24E81C1D4(v151, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v13 = v150;
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  *(&v145 + 1) = v11;
  v16 = 0x800000024FA5A1B0;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 0xD000000000000011;
  }

  *&v144 = v14;
  *(&v144 + 1) = v16;
  sub_24E612B0C(&v144, v151);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v13;
  sub_24E81C1D4(v151, 0x6369706F74, 0xE500000000000000, v17);
  v18 = v149;
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v20 = sub_24E9421D0();
  *(&v145 + 1) = v20;
  *&v144 = v19;
  sub_24E612B0C(&v144, v151);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v18;
  sub_24E81C1D4(v151, 0x726556746E657665, 0xEC0000006E6F6973, v21);
  v22 = v149;
  v152 = v149;
  if ((byte_27F230F90 & 1) == 0)
  {
    if (qword_27F210600 != -1)
    {
      swift_once();
    }

    *(&v145 + 1) = v11;
    v144 = xmmword_27F22D918;
    sub_24E612B0C(&v144, v151);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v22;
    sub_24E81C1D4(v151, 0xD000000000000014, 0x800000024FA44C30, v23);
    v22 = v149;
    v152 = v149;
    byte_27F230F90 = 1;
  }

  swift_beginAccess();
  v24 = sub_24E99058C(*(v3 + 40), *(v3 + 48));
  if (v24)
  {
    *(&v145 + 1) = v20;
    *&v144 = v24;
    sub_24E612B0C(&v144, v151);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v22;
    sub_24E81C1D4(v151, 0xD000000000000011, 0x800000024FA5F160, v25);
    v152 = v148;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F160, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v26 = sub_24E99058C(*(v3 + 56), *(v3 + 64));
  if (v26)
  {
    *(&v145 + 1) = v20;
    *&v144 = v26;
    sub_24E612B0C(&v144, v151);
    v27 = v152;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v27;
    sub_24E81C1D4(v151, 0x6570704165676170, 0xEE00656D69547261, v28);
    v152 = v147;
  }

  else
  {
    sub_24E98EF1C(0x6570704165676170, 0xEE00656D69547261, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v29 = sub_24E99058C(*(v3 + 72), *(v3 + 80));
  if (v29)
  {
    *(&v145 + 1) = v20;
    *&v144 = v29;
    sub_24E612B0C(&v144, v151);
    v30 = v152;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v143 = v30;
    sub_24E81C1D4(v151, 0xD000000000000011, 0x800000024FA5F180, v31);
    v152 = v143;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F180, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  v32 = *(v3 + 88);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x277D84F90];
  v118 = v3;
  v119 = v20;
  if (v33)
  {
    v143 = MEMORY[0x277D84F90];

    sub_24F457900(0, v33, 0);
    v35 = v143;
    v122 = v8;
    v36 = (v8 + 8);
    v37 = 32;
    do
    {
      v38 = v32;
      v144 = *(v32 + v37);
      v145 = *(v32 + v37 + 16);
      v146[0] = *(v32 + v37 + 32);
      *(v146 + 9) = *(v32 + v37 + 41);
      v39 = v126;
      PageRenderMetricsEvent.DOMChange.metricsData.getter();
      v4 = sub_24F928688();
      (*v36)(v39, v127);
      v143 = v35;
      v41 = v35[2];
      v40 = v35[3];
      if (v41 >= v40 >> 1)
      {
        sub_24F457900((v40 > 1), v41 + 1, 1);
        v35 = v143;
      }

      v35[2] = v41 + 1;
      v35[v41 + 4] = v4;
      v37 += 64;
      --v33;
      v32 = v38;
    }

    while (v33);

    *(&v145 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
    *&v144 = v35;
    sub_24E612B0C(&v144, v151);
    v42 = v152;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v42;
    sub_24E81C1D4(v151, 0x676E6168436D6F64, 0xEA00000000007365, v43);
    v152 = v142;
    v3 = v118;
    v20 = v119;
    v34 = MEMORY[0x277D84F90];
    v8 = v122;
  }

  swift_beginAccess();
  v44 = *(v3 + 96);
  v45 = *(v44 + 16);
  if (v45)
  {
    *&v144 = v34;

    sub_24F457900(0, v45, 0);
    v46 = v144;
    v47 = v126;
    v48 = *(v125 + 16);
    v49 = *(v125 + 80);
    v117[1] = v44;
    v4 = v44 + ((v49 + 32) & ~v49);
    v121 = *(v125 + 72);
    v122 = v48;
    v120 = (v8 + 8);
    v125 += 16;
    v50 = (v125 - 8);
    do
    {
      v52 = v123;
      v51 = v124;
      (v122)(v123, v4, v124);
      JSNetworkPerformanceMetrics.metricsData.getter();
      v53 = sub_24F928688();
      (*v120)(v47, v127);
      (*v50)(v52, v51);
      *&v144 = v46;
      v55 = *(v46 + 16);
      v54 = *(v46 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_24F457900((v54 > 1), v55 + 1, 1);
        v46 = v144;
      }

      *(v46 + 16) = v55 + 1;
      *(v46 + 8 * v55 + 32) = v53;
      v4 += v121;
      --v45;
    }

    while (v45);

    *(&v145 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
    *&v144 = v46;
    sub_24E612B0C(&v144, v151);
    v56 = v152;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v56;
    sub_24E81C1D4(v151, 0x7374736575716572, 0xE800000000000000, v57);
    v152 = v142;
    v3 = v118;
    v20 = v119;
    v34 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v58 = sub_24E99058C(*(v3 + 104), *(v3 + 112));
  if (v58)
  {
    *(&v145 + 1) = v20;
    *&v144 = v58;
    sub_24E612B0C(&v144, v151);
    v59 = v152;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v59;
    sub_24E81C1D4(v151, 0xD000000000000018, 0x800000024FA5CB70, v60);
    v152 = v141;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000018, 0x800000024FA5CB70, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v61 = sub_24E99058C(*(v3 + 120), *(v3 + 128));
  if (v61)
  {
    *(&v145 + 1) = v20;
    *&v144 = v61;
    sub_24E612B0C(&v144, v151);
    v62 = v152;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v62;
    sub_24E81C1D4(v151, 0xD00000000000001ELL, 0x800000024FA5CB90, v63);
    v152 = v140;
  }

  else
  {
    sub_24E98EF1C(0xD00000000000001ELL, 0x800000024FA5CB90, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v64 = sub_24E99058C(*(v3 + 136), *(v3 + 144));
  if (v64)
  {
    *(&v145 + 1) = v20;
    *&v144 = v64;
    sub_24E612B0C(&v144, v151);
    v65 = v152;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v65;
    sub_24E81C1D4(v151, 0xD000000000000016, 0x800000024FA5CBB0, v66);
    v152 = v139;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000016, 0x800000024FA5CBB0, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v67 = sub_24E99058C(*(v3 + 152), *(v3 + 160));
  if (v67)
  {
    *(&v145 + 1) = v20;
    *&v144 = v67;
    sub_24E612B0C(&v144, v151);
    v68 = v152;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v68;
    sub_24E81C1D4(v151, 0xD000000000000011, 0x800000024FA5F1A0, v69);
    v152 = v138;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F1A0, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v70 = *(v3 + 168);
  if (v70 && *(v70 + 16))
  {
    *(&v145 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230FA8, &unk_24F9A4D10);
    *&v144 = v70;
    sub_24E612B0C(&v144, v151);

    v71 = v152;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v71;
    sub_24E81C1D4(v151, 0xD000000000000015, 0x800000024FA5CCD0, v72);
    v152 = v137;
  }

  swift_beginAccess();
  v73 = *(v3 + 176);
  if (v73)
  {
    v74 = *(v73 + 16);
    if (v74)
    {
      *&v144 = v34;

      v75 = &v144;
      sub_24F92C978();
      v76 = 0;
      while (v76 < *(v73 + 16))
      {
        v77 = *(v73 + 8 * v76 + 32);
        v136 = v77;
        v78 = v77;
        sub_24EE24600(&v136, v151);

        ++v76;
        v34 = *&v151[0];
        sub_24F92C948();
        v4 = *(v144 + 16);
        sub_24F92C988();
        sub_24F92C998();
        v75 = &v144;
        sub_24F92C958();
        if (v74 == v76)
        {

          v79 = v144;
          *(&v145 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230FA0, &qword_24F9A4D08);
          *&v144 = v79;
          sub_24E612B0C(&v144, v151);
          v80 = v152;
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v136 = v80;
          sub_24E81C1D4(v151, 0x73726F727265, 0xE600000000000000, v81);
          v152 = v136;
          v20 = v119;
          goto LABEL_50;
        }
      }

      __break(1u);
      goto LABEL_84;
    }
  }

LABEL_50:
  swift_beginAccess();
  v82 = sub_24E99058C(*(v3 + 184), *(v3 + 192));
  if (v82)
  {
    *(&v145 + 1) = v20;
    *&v144 = v82;
    sub_24E612B0C(&v144, v151);
    v83 = v152;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v83;
    sub_24E81C1D4(v151, 0xD00000000000001BLL, 0x800000024FA5F1C0, v84);
    v152 = v135;
  }

  else
  {
    sub_24E98EF1C(0xD00000000000001BLL, 0x800000024FA5F1C0, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v85 = sub_24E99058C(*(v3 + 200), *(v3 + 208));
  if (v85)
  {
    *(&v145 + 1) = v20;
    *&v144 = v85;
    sub_24E612B0C(&v144, v151);
    v86 = v152;
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v86;
    sub_24E81C1D4(v151, 0xD000000000000019, 0x800000024FA5F1E0, v87);
    v152 = v134;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000019, 0x800000024FA5F1E0, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v88 = sub_24E99058C(*(v3 + 216), *(v3 + 224));
  if (v88)
  {
    *(&v145 + 1) = v20;
    *&v144 = v88;
    sub_24E612B0C(&v144, v151);
    v89 = v152;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v89;
    sub_24E81C1D4(v151, 0xD000000000000018, 0x800000024FA5C9B0, v90);
    v152 = v133;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000018, 0x800000024FA5C9B0, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v91 = sub_24E99058C(*(v3 + 232), *(v3 + 240));
  if (v91)
  {
    *(&v145 + 1) = v20;
    *&v144 = v91;
    sub_24E612B0C(&v144, v151);
    v92 = v152;
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v92;
    sub_24E81C1D4(v151, 0x74536C6C6143736ALL, 0xEF656D6954747261, v93);
    v152 = v132;
  }

  else
  {
    sub_24E98EF1C(0x74536C6C6143736ALL, 0xEF656D6954747261, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  swift_beginAccess();
  v94 = sub_24E99058C(*(v3 + 248), *(v3 + 256));
  if (v94)
  {
    *(&v145 + 1) = v20;
    *&v144 = v94;
    sub_24E612B0C(&v144, v151);
    v95 = v152;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v95;
    sub_24E81C1D4(v151, 0x6E456C6C6143736ALL, 0xED0000656D695464, v96);
    v152 = v131;
  }

  else
  {
    sub_24E98EF1C(0x6E456C6C6143736ALL, 0xED0000656D695464, &v144);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
  }

  v97 = *(v3 + 257);
  if (v97 != 2)
  {
    v98 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(&v145 + 1) = v20;
    *&v144 = v98;
    sub_24E612B0C(&v144, v151);
    v99 = v152;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v99;
    sub_24E81C1D4(v151, 0x746144776F4C7369, 0xED000065646F4D61, v100);
    v152 = v131;
  }

  swift_beginAccess();
  if ((*(v3 + 272) & 1) == 0)
  {
    v101 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(&v145 + 1) = v20;
    *&v144 = v101;
    sub_24E612B0C(&v144, v151);
    v102 = v152;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v102;
    sub_24E81C1D4(v151, 0xD000000000000011, 0x800000024FA5CAD0, v103);
    v152 = v130;
  }

  swift_beginAccess();
  v104 = *(v3 + 273);
  if (v104 != 2)
  {
    v105 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(&v145 + 1) = v20;
    *&v144 = v105;
    sub_24E612B0C(&v144, v151);
    v106 = v152;
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v106;
    sub_24E81C1D4(v151, 0xD000000000000010, 0x800000024FA5F200, v107);
    v152 = v129;
  }

  swift_beginAccess();
  if (*(v3 + 288) == 1)
  {
    v75 = v152;
  }

  else
  {
    v108 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(&v145 + 1) = v20;
    *&v144 = v108;
    sub_24E612B0C(&v144, v151);
    v109 = v152;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v109;
    sub_24E81C1D4(v151, 0xD000000000000019, 0x800000024FA5CAF0, v110);
    v75 = v128;
    v152 = v128;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
  v73 = sub_24F92A2C8();
  v4 = *(v73 - 8);
  v76 = *(v4 + 72);
  v111 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_24F93A400;
  v34 = v74 + v111;
  sub_24F92A288();
  if (qword_27F2102C0 != -1)
  {
LABEL_84:
    swift_once();
  }

  v112 = __swift_project_value_buffer(v73, qword_27F229C98);
  (*(v4 + 16))(v34 + v76, v112, v73);
  sub_24E805DFC(v74);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v75 + 2))
  {
    v113 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v114)
    {
      sub_24E643A9C(*(v75 + 7) + 32 * v113, &v144);
      if (swift_dynamicCast())
      {
        v115 = HIBYTE(*(&v151[0] + 1)) & 0xFLL;
        if ((*(&v151[0] + 1) & 0x2000000000000000) == 0)
        {
          v115 = *&v151[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v115)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

void static PageRenderMetricsEvent.lastInteractionTime.setter(double a1)
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F230F98 = *&a1;
}

uint64_t JSNetworkPerformanceMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v65 = a3;
  v73 = sub_24F9288E8();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v6 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v48[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v48[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v48[-v17];
  sub_24F928398();
  v19 = sub_24F928348();
  v63 = v20;
  v64 = v19;
  v21 = *(v8 + 8);
  v21(v18, v7);
  v50 = a1;
  sub_24F928398();
  v22 = sub_24F928348();
  v61 = v23;
  v62 = v22;
  v70 = v7;
  v21(v15, v7);
  v69 = v8 + 8;
  sub_24F928398();
  v49 = *MEMORY[0x277D21C38];
  v24 = v74;
  v25 = v74 + 104;
  v72 = *(v74 + 104);
  v26 = v73;
  v72(v6);
  v68 = v25;
  v60 = sub_24F928228();
  v59 = v27;
  v28 = *(v24 + 8);
  v74 = v24 + 8;
  v71 = v28;
  v28(v6, v26);
  v67 = v21;
  v21(v12, v7);
  v29 = v50;
  sub_24F928398();
  v30 = v49;
  v31 = v72;
  (v72)(v6, v49, v26);
  v57 = sub_24F928228();
  v56 = v32;
  v33 = v71;
  v71(v6, v26);
  v21(v12, v70);
  sub_24F928398();
  v34 = v30;
  v35 = v30;
  v36 = v73;
  v31(v6, v34, v73);
  v55 = sub_24F928228();
  v53 = v37;
  v33(v6, v36);
  v38 = v70;
  v39 = v67;
  v67(v12, v70);
  sub_24F928398();
  v54 = sub_24F928278();
  v39(v12, v38);
  v40 = v58;
  v41 = v29;
  sub_24F928398();
  v42 = v73;
  (v72)(v6, v35, v73);
  v52 = sub_24F928228();
  v51 = v43;
  v71(v6, v42);
  v44 = v67;
  v67(v40, v38);
  sub_24F928398();
  (v72)(v6, v35, v42);
  sub_24F928228();
  v71(v6, v42);
  v45 = v70;
  v44(v40, v70);
  sub_24F92A1C8();
  v46 = sub_24F9285B8();
  (*(*(v46 - 8) + 8))(v66, v46);
  return v44(v41, v45);
}

uint64_t PageRenderMetricsEvent.DOMChange.metricsData.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v10 = sub_24E99058C(v1, v2);
  if (v10)
  {
    v11 = v10;
    v32 = sub_24E9421D0();
    *&v31 = v11;
    sub_24E612B0C(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x617453646C697562, 0xEE00656D69547472, isUniquelyReferenced_nonNull_native);
    v33 = v9;
  }

  else
  {
    sub_24E98EF1C(0x617453646C697562, 0xEE00656D69547472, &v31);
    sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  }

  v13 = sub_24E99058C(v3, v4);
  if (v13)
  {
    v14 = v13;
    v32 = sub_24E9421D0();
    *&v31 = v14;
    sub_24E612B0C(&v31, v30);
    v15 = v33;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x646E45646C697562, 0xEC000000656D6954, v16);
    v33 = v15;
  }

  else
  {
    sub_24E98EF1C(0x646E45646C697562, 0xEC000000656D6954, &v31);
    sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  }

  v17 = sub_24E99058C(v5, v6);
  if (v17)
  {
    v18 = v17;
    v32 = sub_24E9421D0();
    *&v31 = v18;
    sub_24E612B0C(&v31, v30);
    v19 = v33;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x74537265646E6572, 0xEF656D6954747261, v20);
    v33 = v19;
  }

  else
  {
    sub_24E98EF1C(0x74537265646E6572, 0xEF656D6954747261, &v31);
    sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
  }

  v21 = sub_24E99058C(v7, v8);
  if (v21)
  {
    v22 = v21;
    v32 = sub_24E9421D0();
    *&v31 = v22;
    sub_24E612B0C(&v31, v30);
    v23 = v33;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x6E457265646E6572, 0xED0000656D695464, v24);
    v25 = v23;
    if (!*(v23 + 16))
    {
      return sub_24F928658();
    }
  }

  else
  {
    sub_24E98EF1C(0x6E457265646E6572, 0xED0000656D695464, &v31);
    sub_24E601704(&v31, &qword_27F2129B0, &unk_24F945320);
    v25 = v33;
    if (!*(v33 + 16))
    {
      return sub_24F928658();
    }
  }

  v26 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
  if (v27)
  {
    sub_24E643A9C(*(v25 + 56) + 32 * v26, &v31);
    if (swift_dynamicCast())
    {
      v28 = HIBYTE(*(&v30[0] + 1)) & 0xFLL;
      if ((*(&v30[0] + 1) & 0x2000000000000000) == 0)
      {
        v28 = *&v30[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {
      }
    }
  }

  return sub_24F928658();
}

uint64_t PageRenderMetricsEvent.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageRenderMetricsEvent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *PageRenderMetricsEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  *(v2 + 48) = 1;
  v2[7] = 0;
  *(v2 + 64) = 1;
  v2[9] = 0;
  *(v2 + 80) = 1;
  v9 = MEMORY[0x277D84F90];
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = v9;
  v2[13] = 0;
  *(v2 + 112) = 1;
  v2[15] = 0;
  *(v2 + 128) = 1;
  v2[17] = 0;
  *(v2 + 144) = 1;
  v2[19] = 0;
  *(v2 + 160) = 1;
  v2[21] = 0;
  v2[22] = 0;
  v2[23] = 0;
  *(v2 + 192) = 1;
  v2[25] = 0;
  *(v2 + 208) = 1;
  v2[27] = 0;
  *(v2 + 224) = 1;
  v2[29] = 0;
  *(v2 + 240) = 1;
  v2[31] = 0;
  *(v2 + 128) = 513;
  v2[33] = 0;
  *(v2 + 136) = 513;
  v2[35] = 0;
  *(v2 + 288) = 1;
  sub_24F9281F8();
  v10 = sub_24F928E68();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_24E601704(v8, qword_27F221C40, &unk_24F967D80);
LABEL_5:
    v15 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v16 = 0xD000000000000011;
    v16[1] = 0x800000024FA49C20;
    v16[2] = v5;
    v16[3] = v9;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D22540], v15);
    swift_willThrow();
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v21, v17);
    v18 = sub_24F928388();
    (*(*(v18 - 8) + 8))(a1, v18);

    swift_deallocPartialClassInstance();
    return v3;
  }

  v12 = sub_24F928E48();
  (*(v11 + 8))(v8, v10);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = sub_24F9285B8();
  (*(*(v13 - 8) + 8))(v21, v13);
  v14 = sub_24F928388();
  (*(*(v14 - 8) + 8))(a1, v14);
  v3[2] = v12;
  return v3;
}

uint64_t sub_24EE230B8()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 88) = MEMORY[0x277D84F90];
  *(v0 + 96) = v1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 513;
  *(v0 + 264) = 0;
  *(v0 + 272) = 513;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 16) = sub_24E608448(v1);
  return v0;
}

void sub_24EE23164()
{
  v0 = [objc_opt_self() processInfo];
  [v0 ask_launchTime];
  v2 = v1;

  qword_27F230F98 = v2;
}

double static PageRenderMetricsEvent.lastInteractionTime.getter()
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *&qword_27F230F98;
}

uint64_t (*static PageRenderMetricsEvent.lastInteractionTime.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_24EE232C4@<D0>(void *a1@<X8>)
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&qword_27F230F98;
  *a1 = qword_27F230F98;
  return result;
}

void sub_24EE23340(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F230F98 = v1;
}

uint64_t PageRenderMetricsEvent.topic.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PageRenderMetricsEvent.topic.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void PageRenderMetricsEvent.pageRequestedTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
}

void PageRenderMetricsEvent.pageAppearTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
}

void PageRenderMetricsEvent.pageDisappearTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2 & 1;
}

uint64_t (*PageRenderMetricsEvent.domChanges.modify(void *a1))()
{
  *a1 = *(v1 + 88);
  a1[1] = v1;

  return sub_24EE237B0;
}

double PageRenderMetricsEvent.requests.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PageRenderMetricsEvent.requests.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

void PageRenderMetricsEvent.resourceRequestStartTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2 & 1;
}

void PageRenderMetricsEvent.resourceRequestOnScreenEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2 & 1;
}

void PageRenderMetricsEvent.resourceRequestEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2 & 1;
}

void PageRenderMetricsEvent.pageUserReadyTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2 & 1;
}

double PageRenderMetricsEvent.networkQualityReports.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PageRenderMetricsEvent.networkQualityReports.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

double PageRenderMetricsEvent.errors.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PageRenderMetricsEvent.errors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

void PageRenderMetricsEvent.rootViewModelParseStartTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 184) = a1;
  *(v2 + 192) = a2 & 1;
}

void PageRenderMetricsEvent.rootViewModelParseEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 200) = a1;
  *(v2 + 208) = a2 & 1;
}

void PageRenderMetricsEvent.rootViewModelPresentTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 216) = a1;
  *(v2 + 224) = a2 & 1;
}

void PageRenderMetricsEvent.jsCallStartTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 232) = a1;
  *(v2 + 240) = a2 & 1;
}

void PageRenderMetricsEvent.jsCallEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 248) = a1;
  *(v2 + 256) = a2 & 1;
}

void PageRenderMetricsEvent.xpSessionDuration.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 264) = a1;
  *(v2 + 272) = a2 & 1;
}

void PageRenderMetricsEvent.xpSamplingPercentageUsers.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 280) = a1;
  *(v2 + 288) = a2 & 1;
}

unint64_t PageRenderMetricsEvent.description.getter()
{
  v0 = sub_24F928698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PageRenderMetricsEvent.metricsData.getter(v3);
  v4 = sub_24F928688();
  (*(v1 + 8))(v3, v0);
  v10 = v4;
  v11 = sub_24ECE1BD0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D928, &qword_24F9A4D20);
  sub_24ECE1DB8();
  sub_24E600AEC();
  v5 = sub_24F92B4D8();
  v7 = v6;

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_24F92C888();

  v10 = 0xD000000000000017;
  v11 = 0x800000024FA5F220;
  MEMORY[0x253050C20](v5, v7);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v10;
}

uint64_t sub_24EE24600@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v16 = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0, &qword_24F96D908);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v14, v17);
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v7 + 16))(v6, v7);
    v8 = sub_24F92B098();

    *&v14[0] = 0xD000000000000010;
    *(&v14[0] + 1) = 0x800000024FA4BBE0;
    [v4 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v9 = v19;
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = MEMORY[0x28223BE20](v10);
    (*(v9 + 24))(sub_24EE24B98, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_24E601704(v14, &qword_27F2231C8, &unk_24F96D910);
    swift_getErrorValue();
    sub_24F92CFE8();
    v13 = sub_24F92B098();

    v17[0] = 0xD000000000000010;
    v17[1] = 0x800000024FA4BBE0;
    [v4 __swift_setObject_forKeyedSubscript_];

    result = swift_unknownObjectRelease();
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24EE24880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_24E643A9C(a3, v9);
  sub_24F92B188();
  v7 = sub_24F92B098();

  v9[0] = a1;
  v9[1] = a2;

  [a4 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t PageRenderMetricsEvent.deinit()
{

  return v0;
}

uint64_t PageRenderMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EE24A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = PageRenderMetricsEvent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_24EE24A74@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 88);

  return result;
}

uint64_t sub_24EE24A84(void *a1, uint64_t a2)
{
  *(*a2 + 88) = *a1;
}

uint64_t sub_24EE24B2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EE24B4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

uint64_t EditorialMediaFlavor.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = sub_24F92CB88();

    if (v10 < 4)
    {

      v11 = sub_24F9285B8();
      (*(*(v11 - 8) + 8))(a2, v11);
      v12 = sub_24F928388();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      *a3 = v10;
      return result;
    }

    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v19;
    *v19 = v8;
    v19[1] = v9;
    v19[2] = &type metadata for EditorialMediaFlavor;
    v18 = MEMORY[0x277D22520];
  }

  else
  {
    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v15;
    v17 = MEMORY[0x277D84F90];
    *v15 = &type metadata for EditorialMediaFlavor;
    v15[1] = v17;
    v18 = MEMORY[0x277D22538];
  }

  (*(*(v14 - 8) + 104))(v16, *v18, v14);
  swift_willThrow();
  v20 = sub_24F9285B8();
  (*(*(v20 - 8) + 8))(a2, v20);
  v21 = sub_24F928388();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

GameStoreKit::EditorialMediaFlavor_optional __swiftcall EditorialMediaFlavor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t EditorialMediaFlavor.rawValue.getter()
{
  v1 = 0x69746F4D6F726568;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24EE24EE0()
{
  result = qword_27F230FB0;
  if (!qword_27F230FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FB0);
  }

  return result;
}

uint64_t sub_24EE24F34()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE25010(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EE250D8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EE251BC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00397836316E6FLL;
  v3 = 0x69746F4D6F726568;
  v4 = 0x800000024FA3F070;
  v5 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x800000024FA3F090;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024FA3F050;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_24EE25290(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE25310(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DismissDashboardAction(uint64_t a1)
{
  result = qword_27F230FB8;
  if (!qword_27F230FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE253CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230FC8, &qword_24F9A5078);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DismissDashboardAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE256AC();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E862F10();
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24EE25700(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24EE2561C(uint64_t a1)
{
  v2 = sub_24EE256AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE25658(uint64_t a1)
{
  v2 = sub_24EE256AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE256AC()
{
  result = qword_27F230FD0;
  if (!qword_27F230FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FD0);
  }

  return result;
}

uint64_t sub_24EE25700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissDashboardAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE25778()
{
  result = qword_27F230FD8;
  if (!qword_27F230FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FD8);
  }

  return result;
}

unint64_t sub_24EE257D0()
{
  result = qword_27F230FE0;
  if (!qword_27F230FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FE0);
  }

  return result;
}

unint64_t sub_24EE25828()
{
  result = qword_27F230FE8;
  if (!qword_27F230FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FE8);
  }

  return result;
}

uint64_t sub_24EE25890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for GameActivityDraftGameInfo(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE259C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for GameActivityDraftGameInfo(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE25B0C(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameActivityPlayersDraft(319);
    if (v2 <= 0x3F)
    {
      sub_24EE25CA8(319);
      if (v3 <= 0x3F)
      {
        sub_24F928FD8();
        if (v4 <= 0x3F)
        {
          sub_24E6CAE80();
          if (v5 <= 0x3F)
          {
            type metadata accessor for GameActivityDraftGameInfo(319);
            if (v6 <= 0x3F)
            {
              sub_24EE2A4C8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24EE2A4C8(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
                if (v8 <= 0x3F)
                {
                  sub_24EE2A4C8(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EE25CA8(uint64_t a1)
{
  if (!qword_27F231000)
  {
    type metadata accessor for GameActivityPlayerPickerDataSource(255);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F231000);
    }
  }
}

uint64_t sub_24EE25D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = type metadata accessor for PlayerPickerView.SearchableModifier(0);
  MEMORY[0x28223BE20](v37);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PlayerPickerView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231008, &qword_24F9A5208);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231010, &qword_24F9A5210);
  sub_24EE26104(v2, &v12[*(v13 + 44)]);
  sub_24EE29CC0(v2, v8, type metadata accessor for PlayerPickerView);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_24EE298BC(v8, v15 + v14, type metadata accessor for PlayerPickerView);
  v16 = &v12[*(v10 + 44)];
  sub_24F923AD8();
  sub_24F92B818();
  *v16 = &unk_24F9A5220;
  *(v16 + 1) = v15;
  v35 = v5;
  v36 = v2;
  v17 = (v2 + *(v5 + 24));
  v19 = *v17;
  v18 = v17[1];
  v43 = v19;
  v44 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018, &qword_24FA3AA00);
  sub_24F926F58();
  v20 = v39;
  v21 = v40;
  v22 = v41;
  swift_getKeyPath();
  v43 = v20;
  v44 = v21;
  v45 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F10, &qword_24FA3AA30);
  sub_24F927188();

  v23 = v39;
  v24 = v40;
  v25 = v41;
  v26 = v42;

  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    v27 = 1;
  }

  else
  {
    v27 = *(v36 + *(v35 + 52));
  }

  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v28 = v37;
  v29 = *(v37 + 20);
  *(v4 + v29) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v30 = (v4 + *(v28 + 24));
  *v30 = v23;
  v30[1] = v24;
  v30[2] = v25;
  v30[3] = v26;
  *(v4 + *(v28 + 28)) = v27;
  v31 = v38;
  sub_24E6009C8(v12, v38, &qword_27F231008, &qword_24F9A5208);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231020, &unk_24F9A52C8);
  return sub_24EE298BC(v4, v31 + *(v32 + 36), type metadata accessor for PlayerPickerView.SearchableModifier);
}

uint64_t sub_24EE26104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231028, &qword_24F9A5338);
  MEMORY[0x28223BE20](v141);
  v134 = v112 - v3;
  v117 = sub_24F924848();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for PlayerSuggestionView(0);
  MEMORY[0x28223BE20](v131);
  v139 = v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255140, &qword_24F9A5340);
  MEMORY[0x28223BE20](v130);
  v132 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = v112 - v8;
  MEMORY[0x28223BE20](v9);
  v133 = v112 - v10;
  v125 = sub_24F9248C8();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_24F926C08();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231030, &qword_24F9A5348);
  MEMORY[0x28223BE20](v121);
  v14 = v112 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231038, &qword_24F9A5350);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v122 = v112 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231040, &qword_24F9A5358);
  MEMORY[0x28223BE20](v16 - 8);
  v128 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v136 = v112 - v19;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231048, &qword_24F9A5360);
  MEMORY[0x28223BE20](v135);
  v138 = v112 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231050, &qword_24F9A5368);
  MEMORY[0x28223BE20](v137);
  v22 = v112 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231058, &qword_24F9A5370);
  MEMORY[0x28223BE20](v23);
  v140 = v112 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231060, &qword_24F9A5378);
  MEMORY[0x28223BE20](v25);
  v27 = v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255060, &qword_24F9A5380);
  MEMORY[0x28223BE20](v28);
  v30 = v112 - v29;
  v31 = type metadata accessor for PlayerPickerView(0);
  v32 = (a1 + v31[11]);
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v146) = v33;
  *(&v146 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v143 == 1)
  {
    sub_24F923798();
    v35 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231098, &qword_24FA3AC70) + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118, &qword_24F950C70) + 28);
    v37 = *MEMORY[0x277CDF438];
    v38 = sub_24F9234F8();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    v39 = sub_24F9257F8();
    v40 = &v30[*(v28 + 36)];
    *v40 = v39;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    v40[40] = 1;
    sub_24E60169C(v30, v27, &unk_27F255060, &qword_24F9A5380);
    swift_storeEnumTagMultiPayload();
    sub_24EE29A98();
    sub_24EE29C08();
    sub_24F924E28();
    return sub_24E601704(v30, &unk_27F255060, &qword_24F9A5380);
  }

  else
  {
    v112[1] = v25;
    v113 = v27;
    v112[0] = v28;
    v114 = v23;
    v42 = (a1 + v31[12]);
    v43 = *v42;
    v44 = v42[1];
    LOBYTE(v42) = *(v42 + 16);
    *&v146 = v43;
    *(&v146 + 1) = v44;
    LOBYTE(v147) = v42;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
    MEMORY[0x25304CAF0](&v143, v45);
    v46 = a1;
    if (v143)
    {
      if (qword_27F210D28 != -1)
      {
        swift_once();
      }

      v47 = v131;
      v48 = v127;
      if ((byte_27F39D1B1 & 1) != 0 || *(a1 + v31[13]) == 1)
      {
        *v14 = sub_24F9249A8();
        *(v14 + 1) = 0;
        v14[16] = 1;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310B0, &qword_24F9A53A8);
        sub_24EE27700(a1, &v14[*(v49 + 44)]);
        v50 = sub_24F9257F8();
        v51 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310B8, &qword_24F9A53B0) + 36)];
        *v51 = v50;
        *(v51 + 8) = 0u;
        *(v51 + 24) = 0u;
        v51[40] = 1;
        sub_24F927618();
        sub_24F9238C8();
        v52 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310C0, &qword_24F9A53B8) + 36)];
        v53 = v147;
        *v52 = v146;
        *(v52 + 1) = v53;
        *(v52 + 2) = v148;
        v54 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310C8, &qword_24F9A53C0) + 36)];
        v55 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
        v56 = type metadata accessor for GradientBackground(0);
        (*(*(v56 - 8) + 56))(&v54[v55], 1, 1, v56);
        *v54 = swift_getKeyPath();
        v54[8] = 0;
        *(v54 + 3) = 0;
        *(v54 + 4) = 0;
        *(v54 + 2) = 0x4036000000000000;
        *(v54 + 20) = 1;
        (*(v119 + 104))(v118, *MEMORY[0x277CE0ED0], v120);
        v57 = sub_24F926D58();
        v58 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310D0, &qword_24F9A53F8) + 36)];
        *v58 = v57;
        v58[1] = 0x4014000000000000;
        v58[2] = 0;
        v58[3] = 0;
        LOBYTE(v57) = sub_24F9257F8();
        v59 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310D8, &qword_24F9A5400) + 36)];
        *v59 = v57;
        *(v59 + 8) = 0u;
        *(v59 + 24) = 0u;
        v59[40] = 1;
        LOBYTE(v57) = sub_24F925828();
        sub_24F923318();
        v60 = &v14[*(v121 + 36)];
        *v60 = v57;
        *(v60 + 1) = v61;
        *(v60 + 2) = v62;
        *(v60 + 3) = v63;
        *(v60 + 4) = v64;
        v60[40] = 0;
        v65 = v123;
        sub_24F9248B8();
        sub_24EE29DA0();
        v66 = v122;
        _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
        (*(v124 + 8))(v65, v125);
        sub_24E601704(v14, &qword_27F231030, &qword_24F9A5348);
        v67 = *(v48 + 36);
        v68 = *MEMORY[0x277CDF3C0];
        v69 = sub_24F9234D8();
        v70 = *(v69 - 8);
        (*(v70 + 104))(v66 + v67, v68, v69);
        (*(v70 + 56))(v66 + v67, 0, 1, v69);
        v71 = v136;
        sub_24E6009C8(v66, v136, &qword_27F231038, &qword_24F9A5350);
        v72 = 0;
      }

      else
      {
        v72 = 1;
        v71 = v136;
      }

      (*(v126 + 56))(v71, v72, 1, v48);
      v79 = v31[6];
      v80 = *(v46 + v31[5]);
      v82 = *(v46 + v79 + 8);
      v143 = *(v46 + v79);
      v81 = v143;
      v144 = v82;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018, &qword_24FA3AA00);
      sub_24F926F38();
      sub_24F8EFE20();
      v84 = v83;

      v143 = v81;
      v144 = v82;
      sub_24F926F38();
      v85 = v145;
      swift_getKeyPath();
      v143 = v85;
      sub_24EE2A1FC(&qword_27F254F30, type metadata accessor for GameActivityPlayerPickerDataSource, &unk_24FA3A7B0);
      sub_24F91FD88();

      v86 = *(v85 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText);
      v87 = *(v85 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText + 8);

      if ((v87 & 0x2000000000000000) != 0)
      {
        v88 = HIBYTE(v87) & 0xF;
      }

      else
      {
        v88 = v86 & 0xFFFFFFFFFFFFLL;
      }

      v89 = v139;
      sub_24EE29CC0(v46, &v139[v47[9]], type metadata accessor for Player);
      v90 = v47[10];
      sub_24EE29CC0(v46 + v31[10], &v89[v90], type metadata accessor for GameActivityDraftGameInfo);
      v91 = type metadata accessor for GameActivityDraftGameInfo(0);
      (*(*(v91 - 8) + 56))(&v89[v90], 0, 1, v91);
      v92 = v46 + v31[14];
      v93 = *(v92 + 8);
      if (*(v92 + 32) == 1)
      {
        v94 = *(v92 + 8);
      }

      else
      {
        v95 = *v92;
        v96 = *(v92 + 16);
        v97 = *(v92 + 24);

        sub_24F92BDC8();
        v98 = sub_24F9257A8();
        sub_24F921FD8();

        v99 = v115;
        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E669FC4(v95, v93, v96, v97, 0);
        (*(v116 + 8))(v99, v117);
        v94 = v144;
      }

      v100 = v88 != 0;
      v101 = v139;
      *v139 = v80;
      v101[1] = v84;
      v101[2] = 0;
      v101[3] = 0;
      *(v101 + 32) = v100;
      v101[5] = 0;
      v101[6] = 0;
      *(v101 + v47[11]) = 1;
      *(v101 + v47[12]) = 2;
      *(v101 + v47[13]) = v94;
      v102 = sub_24F9257F8();
      v103 = v101;
      v104 = v129;
      sub_24EE298BC(v103, v129, type metadata accessor for PlayerSuggestionView);
      v105 = v104 + *(v130 + 36);
      *v105 = v102;
      *(v105 + 8) = 0u;
      *(v105 + 24) = 0u;
      *(v105 + 40) = 1;
      v106 = v133;
      sub_24EE29D28(v104, v133);
      v107 = v136;
      v108 = v128;
      sub_24E60169C(v136, v128, &qword_27F231040, &qword_24F9A5358);
      v109 = v132;
      sub_24E60169C(v106, v132, &qword_27F255140, &qword_24F9A5340);
      v110 = v134;
      sub_24E60169C(v108, v134, &qword_27F231040, &qword_24F9A5358);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310A8, &qword_24F9A53A0);
      sub_24E60169C(v109, v110 + *(v111 + 48), &qword_27F255140, &qword_24F9A5340);
      sub_24E601704(v109, &qword_27F255140, &qword_24F9A5340);
      sub_24E601704(v108, &qword_27F231040, &qword_24F9A5358);
      sub_24E60169C(v110, v138, &qword_27F231028, &qword_24F9A5338);
      swift_storeEnumTagMultiPayload();
      sub_24EE299E0();
      sub_24E602068(&qword_27F231088, &qword_27F231028, &qword_24F9A5338, MEMORY[0x277CE14C0]);
      v77 = v140;
      sub_24F924E28();
      sub_24E601704(v110, &qword_27F231028, &qword_24F9A5338);
      sub_24E601704(v106, &qword_27F255140, &qword_24F9A5340);
      sub_24E601704(v107, &qword_27F231040, &qword_24F9A5358);
      v78 = v113;
    }

    else
    {
      *v22 = sub_24F924C88();
      *(v22 + 1) = 0;
      v22[16] = 1;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231068, &qword_24F9A5388);
      sub_24EE2732C(a1, &v22[*(v73 + 44)]);
      v74 = sub_24F9257F8();
      v75 = v138;
      v76 = &v22[*(v137 + 36)];
      *v76 = v74;
      *(v76 + 8) = 0u;
      *(v76 + 24) = 0u;
      v76[40] = 1;
      sub_24E60169C(v22, v75, &qword_27F231050, &qword_24F9A5368);
      swift_storeEnumTagMultiPayload();
      sub_24EE299E0();
      sub_24E602068(&qword_27F231088, &qword_27F231028, &qword_24F9A5338, MEMORY[0x277CE14C0]);
      v77 = v140;
      sub_24F924E28();
      sub_24E601704(v22, &qword_27F231050, &qword_24F9A5368);
      v78 = v113;
    }

    sub_24E60169C(v77, v78, &qword_27F231058, &qword_24F9A5370);
    swift_storeEnumTagMultiPayload();
    sub_24EE29A98();
    sub_24EE29C08();
    sub_24F924E28();
    return sub_24E601704(v77, &qword_27F231058, &qword_24F9A5370);
  }
}

uint64_t sub_24EE2732C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for InviteFriendsUpsellComponent(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F6A8();
  (*(v4 + 16))(v6, v9, v3);
  sub_24EE2A1FC(&qword_27F2551B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24F92C7F8();
  (*(v4 + 8))(v9, v3);
  v14._countAndFlagsBits = 0xD000000000000028;
  v14._object = 0x800000024FA5F2F0;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = localizedString(_:comment:)(v14, v15);
  object = v16._object;
  countAndFlagsBits = v16._countAndFlagsBits;
  v17._countAndFlagsBits = 0xD00000000000002BLL;
  v17._object = 0x800000024FA5F320;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = localizedString(_:comment:)(v17, v18);
  v37 = v19._countAndFlagsBits;
  v20._object = 0x800000024FA5F350;
  v20._countAndFlagsBits = 0xD000000000000015;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = localizedString(_:comment:)(v20, v21);
  v23 = type metadata accessor for PlayerPickerView(0);
  v24 = (a1 + *(v23 + 24));
  v26 = *v24;
  v25 = v24[1];
  v43[0] = v26;
  v43[1] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018, &qword_24FA3AA00);
  sub_24F926F38();
  v27 = *&v41[0];
  swift_getKeyPath();
  v43[0] = v27;
  sub_24EE2A1FC(&qword_27F254F30, type metadata accessor for GameActivityPlayerPickerDataSource, &unk_24FA3A7B0);
  sub_24F91FD88();

  LODWORD(v9) = *(v27 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__hasAnyFriendSuggestions);

  v28 = 36;
  if (v9)
  {
    v28 = 32;
  }

  sub_24E615E00(a1 + *(v23 + v28), v43);
  v29 = *(v11 + 44);
  v30 = sub_24F929608();
  (*(*(v30 - 8) + 56))(&v13[v29], 1, 1, v30);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v31 = *&v43[7];
  *v13 = *&v43[5];
  *(v13 + 1) = v31;
  v33 = object;
  v32 = countAndFlagsBits;
  *(v13 + 4) = v43[9];
  *(v13 + 5) = v32;
  v34 = v37;
  *(v13 + 6) = v33;
  *(v13 + 7) = v34;
  *(v13 + 8) = v19._object;
  *(v13 + 72) = v22;
  sub_24E612C80(v43, (v13 + 88));
  v35 = &v13[*(v11 + 48)];
  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  sub_24E7D5870(v41, v35);
  sub_24EA3E4CC();
  sub_24F921D38();
  return sub_24EA3FFC4(v13);
}

uint64_t sub_24EE27700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231130, &qword_24F9A5450) - 8;
  MEMORY[0x28223BE20](v61);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v58 - v5;
  v65 = sub_24F926DF8();
  v64 = sub_24F926C48();
  KeyPath = swift_getKeyPath();
  v62 = sub_24F925838();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v76._countAndFlagsBits) = 0;
  v15._object = 0x800000024FA5F2C0;
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v76 = localizedString(_:comment:)(v15, v16);
  sub_24E600AEC();
  v17 = sub_24F925E18();
  v19 = v18;
  v21 = v20;
  v76._countAndFlagsBits = sub_24F926C48();
  v22 = sub_24F925C58();
  v68 = v23;
  v59 = v24;
  v69 = v25;
  sub_24E600B40(v17, v19, v21 & 1);

  v26 = (a1 + *(type metadata accessor for PlayerPickerView(0) + 24));
  v28 = *v26;
  v27 = v26[1];
  *&v71 = v28;
  *(&v71 + 1) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018, &qword_24FA3AA00);
  sub_24F926F58();
  countAndFlagsBits = v76._countAndFlagsBits;
  object = v76._object;
  v31 = v77;
  swift_getKeyPath();
  *&v71 = countAndFlagsBits;
  *(&v71 + 1) = object;
  *&v72 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F10, &qword_24FA3AA30);
  sub_24F927188();

  LOBYTE(v19) = v59 & 1;
  v60 = v22;
  sub_24E5FD138(v22, v68, v59 & 1);

  sub_24F9277E8();
  LOBYTE(a1) = sub_24F925808();
  sub_24F923318();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231138, &qword_24F9A5488) + 36)];
  *v40 = a1;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(a1) = sub_24F925858();
  sub_24F923318();
  v41 = *(v61 + 44);
  v58 = v6;
  v42 = &v6[v41];
  *v42 = a1;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v66;
  sub_24E60169C(v6, v66, &qword_27F231130, &qword_24F9A5450);
  v48 = v65;
  *&v71 = v65;
  v49 = KeyPath;
  *(&v71 + 1) = KeyPath;
  v50 = v64;
  *&v72 = v64;
  LOBYTE(v22) = v62;
  BYTE8(v72) = v62;
  *(&v72 + 9) = *v70;
  HIDWORD(v72) = *&v70[3];
  *&v73 = v8;
  *(&v73 + 1) = v10;
  *&v74 = v12;
  *(&v74 + 1) = v14;
  v75 = 0;
  v51 = v71;
  v52 = v72;
  v53 = v73;
  v54 = v74;
  v55 = v67;
  *(v67 + 64) = 0;
  v55[2] = v53;
  v55[3] = v54;
  *v55 = v51;
  v55[1] = v52;
  v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231140, &qword_24F9A5490) + 48);
  sub_24E60169C(v47, v56, &qword_27F231130, &qword_24F9A5450);
  sub_24E60169C(&v71, &v76, &qword_27F231148, &qword_24F9A5498);
  sub_24E600B40(v60, v68, v19);

  sub_24E601704(v58, &qword_27F231130, &qword_24F9A5450);
  sub_24E601704(v47, &qword_27F231130, &qword_24F9A5450);
  v76._countAndFlagsBits = v48;
  v76._object = v49;
  v77 = v50;
  v78 = v22;
  *v79 = *v70;
  *&v79[3] = *&v70[3];
  v80 = v8;
  v81 = v10;
  v82 = v12;
  v83 = v14;
  v84 = 0;
  return sub_24E601704(&v76, &qword_27F231148, &qword_24F9A5498);
}

uint64_t sub_24EE27CB4(uint64_t a1)
{
  v1[25] = a1;
  sub_24F92B7F8();
  v1[26] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[27] = v3;
  v1[28] = v2;

  return MEMORY[0x2822009F8](sub_24EE27D4C, v3, v2);
}

uint64_t sub_24EE27D4C()
{
  v1 = *(v0 + 200);
  v2 = type metadata accessor for PlayerPickerView(0);
  *(v0 + 232) = v2;
  v3 = (v1 + *(v2 + 44));
  v4 = *v3;
  *(v0 + 36) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 40) = v4;
  *(v0 + 240) = v5;
  *(v0 + 48) = v5;
  *(v0 + 33) = 1;

  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F48();
  v6 = (v1 + *(v2 + 24));
  v7 = *v6;
  *(v0 + 256) = *v6;
  v8 = v6[1];
  *(v0 + 264) = v8;
  *(v0 + 56) = v7;
  *(v0 + 64) = v8;
  *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018, &qword_24FA3AA00);
  sub_24F926F38();
  *(v0 + 280) = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_24EE27E6C, 0, 0);
}

uint64_t sub_24EE27E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_24EE27F38;
  v2 = *(v0 + 280);
  v3 = MEMORY[0x277D84F78] + 8;
  v4 = MEMORY[0x277D84F78] + 8;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v1, v3, v4, 0, 0, &unk_24F9A52D8, v2, v5);
}

void sub_24EE27F38()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24EE2805C, 0, 0);
  }
}

uint64_t sub_24EE2805C(__n128 a1)
{
  sub_24F8F0D1C(a1);

  v2 = *(v1 + 216);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_24EE280C8, v2, v3);
}

uint64_t sub_24EE280C8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  sub_24F926F38();
  v3 = sub_24F8FD110();

  if (v3 >> 62)
  {
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 || (v5 = *(v0 + 264), *(v0 + 104) = *(v0 + 256), *(v0 + 112) = v5, sub_24F926F38(), v6 = *(v0 + 152), swift_getKeyPath(), *(v0 + 160) = v6, sub_24EE2A1FC(&qword_27F254F30, type metadata accessor for GameActivityPlayerPickerDataSource, &unk_24FA3A7B0), sub_24F91FD88(), , v7 = *(v6 + 24), swift_getKeyPath(), *(v0 + 168) = v6, , sub_24F91FD88(), , v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText), v9 = *(v6 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText + 8), , v10 = sub_24F8E1A64(v8, v9, v7), , , , v11 = *(v10 + 16), , v11))
  {
    v12 = 1;
  }

  else
  {
    v20 = *(v0 + 264);
    *(v0 + 120) = *(v0 + 256);
    *(v0 + 128) = v20;
    sub_24F926F38();
    v21 = *(v0 + 176);
    swift_getKeyPath();
    *(v0 + 184) = v21;
    sub_24F91FD88();

    v22 = *(v21 + 16);
    swift_getKeyPath();
    *(v0 + 192) = v21;

    sub_24F91FD88();

    v24 = *(v21 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText);
    v23 = *(v21 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText + 8);

    sub_24F8E1544(v24, v23, v22);
    v26 = v25;

    v27 = *(v26 + 16);

    v12 = v27 != 0;
  }

  v13 = *(v0 + 240);
  v14 = (*(v0 + 200) + *(*(v0 + 232) + 48));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v14 + 16);
  *(v0 + 16) = v15;
  v17 = *(v0 + 36);
  *(v0 + 24) = v16;
  *(v0 + 32) = v14;
  *(v0 + 34) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927178();
  *(v0 + 88) = v17;
  *(v0 + 96) = v13;
  *(v0 + 35) = 0;
  sub_24F926F48();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24EE2842C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924F28();
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_24F925218();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v10);
  v66 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v47[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v64 = &v47[-v18];
  MEMORY[0x28223BE20](v19);
  v65 = &v47[-v20];
  MEMORY[0x28223BE20](v21);
  v67 = &v47[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v47[-v24];
  MEMORY[0x28223BE20](v26);
  v28 = &v47[-v27];
  v29 = type metadata accessor for PlayerPickerView.SearchableModifier(0);
  if (*(v2 + *(v29 + 28)) != 1)
  {
    v55 = v29;
    v49 = v6;
    v50 = v4;
    v60 = a1;
    v57 = v2;
    sub_24F769764(v28);
    v31 = v8[13];
    v53 = *MEMORY[0x277CE0560];
    v54 = v8 + 13;
    v52 = v31;
    v31(v25);
    v51 = v8[7];
    v51(v25, 0, 1, v7);
    v56 = v10;
    v32 = *(v10 + 48);
    sub_24E60169C(v28, v14, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v25, &v14[v32], &qword_27F215598, &qword_24F945EF0);
    v59 = v8;
    v33 = v8[6];
    v34 = v7;
    if (v33(v14, 1, v7) == 1)
    {
      v58 = v33;
      sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
      if (v58(&v14[v32], 1, v7) != 1)
      {
LABEL_17:
        sub_24E601704(v14, &unk_27F254F20, &qword_24F940790);
        return sub_24F924F48();
      }

      sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
    }

    else
    {
      v35 = v67;
      sub_24E60169C(v14, v67, &qword_27F215598, &qword_24F945EF0);
      if (v33(&v14[v32], 1, v34) == 1)
      {
LABEL_15:
        v41 = v59;
        sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
        sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
        (v41[1])(v35, v34);
        goto LABEL_17;
      }

      v58 = v33;
      v36 = v63;
      (v59[4])(v63, &v14[v32], v34);
      sub_24EE2A1FC(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v48 = sub_24F92AFF8();
      v37 = v59[1];
      v37(v36, v34);
      sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
      v37(v35, v34);
      sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
      if ((v48 & 1) == 0)
      {
        return sub_24F924F48();
      }
    }

    v28 = v65;
    sub_24F769764(v65);
    v25 = v64;
    v52(v64, v53, v34);
    v51(v25, 0, 1, v34);
    v38 = *(v56 + 48);
    v39 = v66;
    sub_24E60169C(v28, v66, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v25, &v39[v38], &qword_27F215598, &qword_24F945EF0);
    v40 = v58;
    if (v58(v39, 1, v34) == 1)
    {
      sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
      if (v40(&v39[v38], 1, v34) == 1)
      {
        sub_24E601704(v39, &qword_27F215598, &qword_24F945EF0);
LABEL_21:
        v46 = v49;
        sub_24F924F18();
        sub_24F924F08();
        return (*(v61 + 8))(v46, v50);
      }

      v14 = v39;
      goto LABEL_17;
    }

    v35 = v62;
    sub_24E60169C(v39, v62, &qword_27F215598, &qword_24F945EF0);
    if (v40(&v39[v38], 1, v34) == 1)
    {
      v14 = v39;
      goto LABEL_15;
    }

    v42 = v59;
    v43 = v63;
    (v59[4])(v63, &v39[v38], v34);
    sub_24EE2A1FC(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v44 = sub_24F92AFF8();
    v45 = v42[1];
    v45(v43, v34);
    sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
    v45(v35, v34);
    sub_24E601704(v39, &qword_27F215598, &qword_24F945EF0);
    if (v44)
    {
      goto LABEL_21;
    }

    return sub_24F924F48();
  }

  return sub_24F924F38();
}

uint64_t sub_24EE28CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v31 = a2;
  v32 = sub_24F925758();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F924F58();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231190, &qword_24F9A5548);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = (v2 + *(type metadata accessor for PlayerPickerView.SearchableModifier(0) + 24));
  v12 = *v11;
  countAndFlagsBits = v11[1]._countAndFlagsBits;
  object = v11[1]._object;
  v34 = v12;
  v35 = countAndFlagsBits;
  v36 = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231198, &qword_24F9A5550);
  sub_24F927198();
  v23 = v33;
  sub_24EE2842C(v6);
  v15._object = 0x800000024FA5F370;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v34 = localizedString(_:comment:)(v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311A0, qword_24F9A5558);
  v21 = sub_24E602068(&qword_27F2311A8, &qword_27F2311A0, qword_24F9A5558, MEMORY[0x277CE04B0]);
  v22 = sub_24E600AEC();
  sub_24F926148();

  (*(v24 + 8))(v6, v25);
  v18 = v29;
  sub_24F925738();
  v34._countAndFlagsBits = v17;
  v34._object = MEMORY[0x277D837D0];
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v19 = v26;
  sub_24F926898();
  (*(v30 + 8))(v18, v32);
  return (*(v27 + 8))(v10, v19);
}

uint64_t sub_24EE29080()
{
  v1 = type metadata accessor for PlayerPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v35 = *(v6 - 8);
  v36 = *(v35 + 8);
  v36(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v34 = v6;
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v35 + 48))(v7 + v11, 1, v34))
      {
        v36(v7 + v11, v34);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v35 + 48))(v12 + v13, 1, v34))
      {
        v36(v12 + v13, v34);
      }
    }

    v6 = v34;
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game(0);
    v36(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v35 + 48))(v14 + v17, 1, v6))
    {
      v36(v14 + v17, v6);
    }

    v18 = v6;

    v19 = v16[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v14 + v19, 1, v20))
    {
      (*(v21 + 8))(v14 + v19, v20);
    }

    v6 = v18;
  }

  v22 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game(0);
    v36(v22 + v24[18], v6);
    v25 = v24[19];
    if (!(*(v35 + 48))(v22 + v25, 1, v6))
    {
      v36(v22 + v25, v6);
    }

    v26 = v6;

    v27 = v24[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v22 + v27, 1, v28))
    {
      (*(v29 + 8))(v22 + v27, v28);
    }

    v6 = v26;
  }

  __swift_destroy_boxed_opaque_existential_1((v3 + v1[8]));
  __swift_destroy_boxed_opaque_existential_1((v3 + v1[9]));
  v30 = v3 + v1[10];

  v31 = type metadata accessor for GameActivityDraftGameInfo(0);
  v36(v30 + *(v31 + 28), v6);

  v32 = v3 + v1[14];
  sub_24E669FC4(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32));

  return swift_deallocObject();
}

uint64_t sub_24EE297D8()
{
  v2 = *(type metadata accessor for PlayerPickerView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24EE27CB4(v0 + v3);
}

uint64_t sub_24EE298BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE29924(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24E614970;

  return sub_24F8F07AC(a1, a2, v2);
}

unint64_t sub_24EE299E0()
{
  result = qword_27F231070;
  if (!qword_27F231070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231050, &qword_24F9A5368);
    sub_24E602068(&qword_27F231078, &qword_27F231080, &unk_24F9A5390, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231070);
  }

  return result;
}

unint64_t sub_24EE29A98()
{
  result = qword_27F231090;
  if (!qword_27F231090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F255060, &qword_24F9A5380);
    sub_24EE29B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231090);
  }

  return result;
}

unint64_t sub_24EE29B24()
{
  result = qword_27F255070;
  if (!qword_27F255070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231098, &qword_24FA3AC70);
    sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    sub_24E602068(&qword_27F236280, &qword_27F217118, &qword_24F950C70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F255070);
  }

  return result;
}

unint64_t sub_24EE29C08()
{
  result = qword_27F2310A0;
  if (!qword_27F2310A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231058, &qword_24F9A5370);
    sub_24EE299E0();
    sub_24E602068(&qword_27F231088, &qword_27F231028, &qword_24F9A5338, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310A0);
  }

  return result;
}

uint64_t sub_24EE29CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE29D28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255140, &qword_24F9A5340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE29DA0()
{
  result = qword_27F2310E0;
  if (!qword_27F2310E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231030, &qword_24F9A5348);
    sub_24EE29E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310E0);
  }

  return result;
}

unint64_t sub_24EE29E2C()
{
  result = qword_27F2310E8;
  if (!qword_27F2310E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310D8, &qword_24F9A5400);
    sub_24EE29EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310E8);
  }

  return result;
}

unint64_t sub_24EE29EB8()
{
  result = qword_27F2310F0;
  if (!qword_27F2310F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310D0, &qword_24F9A53F8);
    sub_24EE29F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310F0);
  }

  return result;
}

unint64_t sub_24EE29F44()
{
  result = qword_27F2310F8;
  if (!qword_27F2310F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310C8, &qword_24F9A53C0);
    sub_24EE2A000();
    sub_24EE2A1FC(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2310F8);
  }

  return result;
}

unint64_t sub_24EE2A000()
{
  result = qword_27F231100;
  if (!qword_27F231100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310C0, &qword_24F9A53B8);
    sub_24EE2A08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231100);
  }

  return result;
}

unint64_t sub_24EE2A08C()
{
  result = qword_27F231108;
  if (!qword_27F231108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231110, &qword_24F9A5408);
    sub_24EE2A144();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231108);
  }

  return result;
}

unint64_t sub_24EE2A144()
{
  result = qword_27F231118;
  if (!qword_27F231118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2310B8, &qword_24F9A53B0);
    sub_24E602068(&qword_27F231120, &qword_27F231128, &unk_24F9A5410, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231118);
  }

  return result;
}

uint64_t sub_24EE2A1FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE2A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EE2A350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24EE2A418(uint64_t a1)
{
  sub_24E684120(319);
  if (v1 <= 0x3F)
  {
    sub_24EE2A4C8(319, &qword_27F231160, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EE2A4C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_24EE2A51C()
{
  result = qword_27F231168;
  if (!qword_27F231168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231020, &unk_24F9A52C8);
    sub_24EE2A5D8();
    sub_24EE2A1FC(&qword_27F231188, type metadata accessor for PlayerPickerView.SearchableModifier, &unk_24F9A54F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231168);
  }

  return result;
}

unint64_t sub_24EE2A5D8()
{
  result = qword_27F231170;
  if (!qword_27F231170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231008, &qword_24F9A5208);
    sub_24E602068(&qword_27F231178, &qword_27F231180, &qword_24F9A54F0, MEMORY[0x277CE1198]);
    sub_24EE2A1FC(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231170);
  }

  return result;
}

uint64_t sub_24EE2A6DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231190, &qword_24F9A5548);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2311A0, qword_24F9A5558);
  sub_24E602068(&qword_27F2311A8, &qword_27F2311A0, qword_24F9A5558, MEMORY[0x277CE04B0]);
  sub_24E600AEC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ItemLayoutContext(0);
  v9 = *(a4 + 8);
  v10 = a1 + *(v8 + 32);

  return v9(v10, a2, a3, a4);
}

uint64_t ShelfComponentTypeMappingProvider.configurableComponentContainerViewType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a1, a2, a3);
  if (result)
  {
    result = dynamic_cast_existential_2_conditional(result, result, &protocol descriptor for ConfigurableCell, &protocol descriptor for DelegatingShelfComponentContainerView);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

{
  result = (*(a4 + 8))(a1, a2, a3);
  if (result)
  {
    result = dynamic_cast_existential_2_conditional(result, result, &protocol descriptor for ConfigurableCell, &protocol descriptor for DelegatingShelfComponentContainerView);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))(a1, a2, a3);
}

{
  return (*(a4 + 16))(a1, a2, a3);
}

__n128 _FrameLayout.init(view:skipLayoutMeasurements:shouldViewFitAvailableWidth:layoutMargins:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_24E612E28(a1, v18);
  BYTE8(v19) = a2;
  BYTE9(v19) = a3;
  *&v20 = a5;
  *(&v20 + 1) = a6;
  *&v21 = a7;
  *(&v21 + 1) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788, &qword_24F985490);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 48) = v19;
  *(v15 + 64) = v16;
  *(v15 + 80) = v21;
  result = v18[1];
  *(v15 + 16) = v18[0];
  *(v15 + 32) = result;
  *a4 = v15;
  return result;
}

uint64_t _FrameLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *v5;
  swift_beginAccess();
  sub_24F92C1C8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (*(v6 + 56) == 1)
  {
    sub_24EE2B324(v6 + 16, v16);
    sub_24E612E28(v16, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v17);
    return sub_24F922128();
  }

  else
  {
    sub_24EE2B324(v6 + 16, v16);
    sub_24E612E28(v16, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v17);
    if (*(v6 + 57))
    {
      v19.origin.x = v8;
      v19.origin.y = v10;
      v19.size.width = v12;
      v19.size.height = v14;
      CGRectGetWidth(v19);
    }

    v20.origin.x = v8;
    v20.origin.y = v10;
    v20.size.width = v12;
    v20.size.height = v14;
    CGRectGetMinX(v20);
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    CGRectGetMinY(v21);
    sub_24EE2B324(v6 + 16, v16);
    sub_24E612E28(v16, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v17);
    sub_24EE2B324(v6 + 16, v16);
    sub_24E612E28(v16, v17);
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_24F922218();
    sub_24F922138();
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }
}

uint64_t _FrameLayout.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v5);
  return sub_24E612E28(v5, a1);
}

uint64_t sub_24EE2ACD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v5);
  return sub_24E612E28(v5, a2);
}

void _FrameLayout.view.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  sub_24E612E28(a1, v8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24EE2B35C(v8, v4 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788, &qword_24F985490);
    v5 = swift_allocObject();
    v6 = v8[3];
    v5[3] = v8[2];
    v5[4] = v6;
    v5[5] = v8[4];
    v7 = v8[1];
    v5[1] = v8[0];
    v5[2] = v7;

    *v1 = v5;
  }
}

void (*_FrameLayout.view.modify(__int128 **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v5 + 16, v4);
  sub_24E612E28(v4, (v4 + 5));
  return sub_24EE2AEB4;
}

void sub_24EE2AEB4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 80);
  if (a2)
  {
    sub_24E615E00(v3, v2);
    _FrameLayout.view.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 80));
  }

  else
  {
    _FrameLayout.view.setter(v3);
  }

  free(v2);
}

uint64_t _FrameLayout.skipLayoutMeasurements.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

void _FrameLayout.skipLayoutMeasurements.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v8);
  BYTE8(v9) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24EE2B35C(v8, v4 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788, &qword_24F985490);
    v5 = swift_allocObject();
    v6 = v10;
    v5[3] = v9;
    v5[4] = v6;
    v5[5] = v11;
    v7 = v8[1];
    v5[1] = v8[0];
    v5[2] = v7;

    *v1 = v5;
  }
}

void (*_FrameLayout.skipLayoutMeasurements.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 56);
  return sub_24EE2B0C0;
}

uint64_t _FrameLayout.shouldViewFitAvailableWidth.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 57);
}

void _FrameLayout.shouldViewFitAvailableWidth.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24EE2B324(v3 + 16, v8);
  BYTE9(v9) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24EE2B35C(v8, v4 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788, &qword_24F985490);
    v5 = swift_allocObject();
    v6 = v10;
    v5[3] = v9;
    v5[4] = v6;
    v5[5] = v11;
    v7 = v8[1];
    v5[1] = v8[0];
    v5[2] = v7;

    *v1 = v5;
  }
}

void (*_FrameLayout.shouldViewFitAvailableWidth.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 57);
  return sub_24EE2B284;
}

void sub_24EE2B29C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

double _FrameLayout.layoutMargins.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

void _FrameLayout.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_24EE2B324(v9 + 16, v14);
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v4;
    swift_beginAccess();
    sub_24EE2B35C(v14, v10 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229788, &qword_24F985490);
    v11 = swift_allocObject();
    v12 = v15;
    v11[3] = v14[2];
    v11[4] = v12;
    v11[5] = v16;
    v13 = v14[1];
    v11[1] = v14[0];
    v11[2] = v13;

    *v4 = v11;
  }
}

void (*_FrameLayout.layoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 80);
  *v4 = *(v5 + 64);
  v4[1] = v6;
  return sub_24EE2B518;
}

void sub_24EE2B518(double **a1)
{
  v1 = *a1;
  _FrameLayout.layoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double _FrameLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = *v3;
  swift_beginAccess();
  sub_24F92C228();
  sub_24EE2B324(v4 + 16, v8);
  sub_24E612E28(v8, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_24F922288();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

double sub_24EE2B648(uint64_t a1, double a2, double a3)
{
  v4 = *v3;
  swift_beginAccess();
  sub_24F92C228();
  sub_24EE2B324(v4 + 16, v8);
  sub_24E612E28(v8, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_24F922288();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

void sub_24EE2B76C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

void sub_24EE2B7DC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 57);
}

__n128 sub_24EE2B84C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t FastImpressionFlushGate.__allocating_init(delayToFlush:)(double a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t FastImpressionFlushGate.init(delayToFlush:)(double a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_24EE2B96C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24EE2BA00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24E9A0188;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_24E5FCA4C(v3, v4);
  return sub_24E824448(v8, v9);
}

uint64_t sub_24EE2BABC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_24E5FCA4C(v1, *(v0 + 40));
  return v1;
}

double sub_24EE2BB0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_24E824448(v5, v6);
}

void sub_24EE2BB60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_24ECB2170;
    v8[5] = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_24ECAEFC8;
    v8[3] = &block_descriptor_80;
    v4 = _Block_copy(v8);
    v5 = objc_opt_self();

    v6 = [v5 timerWithTimeInterval:0 repeats:v4 block:v2];
    _Block_release(v4);

    v7 = [objc_opt_self() mainRunLoop];
    [v7 addTimer:v6 forMode:*MEMORY[0x277CBE738]];

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_24EE2BD04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_24EE2BD3C(void *a1, uint64_t a2)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      swift_beginAccess();
      v6 = *(v4 + 32);
      v5 = *(v4 + 40);
      sub_24E5FCA4C(v6, v5);

      if (v6)
      {
        v6(v7);
        sub_24E824448(v6, v5);
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EE2BE34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  return swift_unknownObjectWeakAssign();
}

uint64_t FastImpressionFlushGate.deinit()
{
  MEMORY[0x2530543E0](v0 + 24);
  sub_24E824448(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t FastImpressionFlushGate.__deallocating_deinit()
{
  MEMORY[0x2530543E0](v0 + 24);
  sub_24E824448(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_24EE2BFF8()
{

  return swift_deallocObject();
}

uint64_t ShelfBasedCollectionViewControllerDependencies.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  swift_allocObject();
  *a1 = sub_24F929978();
  a1[9] = &type metadata for EmptyLayoutSectionProvider;
  a1[10] = &protocol witness table for EmptyLayoutSectionProvider;
  a1[14] = &type metadata for EmptyPageGridProvider;
  a1[15] = &protocol witness table for EmptyPageGridProvider;
  v2 = type metadata accessor for EmptyShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  a1[4] = v2;
  a1[5] = &protocol witness table for EmptyShelfComponentTypeMappingProvider;
  a1[1] = v3;
  a1[19] = &type metadata for EmptyShelfLayoutSpacingProvider;
  a1[20] = &protocol witness table for EmptyShelfLayoutSpacingProvider;
  type metadata accessor for EmptyShelfSupplementaryProvider();
  a1[21] = swift_allocObject();
  a1[22] = &protocol witness table for EmptyShelfSupplementaryProvider;
  type metadata accessor for EmptyItemSupplementaryProvider();
  a1[23] = swift_allocObject();
  a1[24] = &protocol witness table for EmptyItemSupplementaryProvider;
  type metadata accessor for EmptyCollectionElementsObserver();
  result = swift_allocObject();
  a1[25] = result;
  a1[26] = &protocol witness table for EmptyCollectionElementsObserver;
  return result;
}

uint64_t sub_24EE2C148(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
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

uint64_t sub_24EE2C190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Trailers.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Trailers.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Trailers.__allocating_init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E9BBAA8(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t Trailers.init(id:videos:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E9BBAA8(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t Trailers.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v42 = a2;
  v41 = sub_24F9285B8();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = v34 - v6;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34[1] = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = v34 - v16;
  v43 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v39 = v12;
  v40 = v11;
  if (v19)
  {
    v44 = v18;
    v45 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v22 = v3;
    v24 = v23;
    (*(v21 + 8))(v10, v7);
    v44 = v20;
    v45 = v24;
    v3 = v22;
  }

  sub_24F92C7F8();
  v36 = *(v12 + 8);
  v36(v17, v11);
  v25 = v47;
  v26 = v49;
  *(v49 + 32) = v46;
  *(v26 + 48) = v25;
  *(v26 + 64) = v48;
  v27 = v43;
  sub_24F928398();
  v28 = *(v3 + 16);
  v30 = v41;
  v29 = v42;
  v28(v37, v42, v41);
  type metadata accessor for Video(0);
  sub_24EE2CB50(&qword_27F221590, 255, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v31 = v38;
  v32 = sub_24F92B678();
  if (v31)
  {
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    sub_24E6585F8(v49 + 32);
    type metadata accessor for Trailers();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v49 + 16) = v32;
    v38 = type metadata accessor for MediaPlatform();
    sub_24F928398();
    v28(v35, v29, v30);
    sub_24EE2CB50(&qword_27F225270, 255, type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
    sub_24F929548();
    (*(v3 + 8))(v29, v30);
    v36(v27, v40);
    *(v49 + 24) = v46;
  }

  return v49;
}

uint64_t Trailers.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t Trailers.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE2CB50(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24EE2CBA8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Trailers();
  v7 = swift_allocObject();
  result = Trailers.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE2CCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311B8, &qword_24F9A5908);
  MEMORY[0x28223BE20](v39);
  v7 = &v38 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311C0, &qword_24F9A5910);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - v8;
  v9 = type metadata accessor for GroupedPlayerAvatarTrioView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GroupedPlayerAvatarDuoView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311C8, &qword_24F9A5918);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311D0, &qword_24F9A5920);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2311D8, &qword_24F9A5928);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v23 = *(a1 + 16);
  if (v23 == 2)
  {
    v28 = v12[10];
    v40 = v20;
    v38 = type metadata accessor for PlayerAvatarView(0);
    v39 = a2;
    v29 = *(v38 - 8);
    v30 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    sub_24EE2D7F8(v30, &v14[v28], type metadata accessor for PlayerAvatarView);
    sub_24EE2D7F8(v30 + *(v29 + 72), &v14[v12[11]], type metadata accessor for PlayerAvatarView);
    *v14 = xmmword_24F9A5830;
    *(v14 + 1) = xmmword_24F9A5840;
    *(v14 + 2) = vdupq_n_s64(0x3FF599999999999AuLL);
    *&v14[v12[12]] = a3 * 0.5;
    sub_24EE2D7F8(v14, v18, type metadata accessor for GroupedPlayerAvatarDuoView);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D6F4(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    sub_24EE2D6F4(&qword_27F2311F0, type metadata accessor for GroupedPlayerAvatarDuoView, &unk_24F9A5978);
    sub_24F924E28();
    sub_24E60169C(v22, v42, &qword_27F2311D8, &qword_24F9A5928);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D608();
    sub_24EE2D73C();
    sub_24F924E28();
    sub_24E601704(v22, &qword_27F2311D8, &qword_24F9A5928);
    return sub_24EE2D860(v14, type metadata accessor for GroupedPlayerAvatarDuoView);
  }

  if (v23 == 1)
  {
    v24 = *(type metadata accessor for PlayerAvatarView(0) - 8);
    sub_24EE2D7F8(a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v18, type metadata accessor for PlayerAvatarView);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D6F4(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    sub_24EE2D6F4(&qword_27F2311F0, type metadata accessor for GroupedPlayerAvatarDuoView, &unk_24F9A5978);
    sub_24F924E28();
    v25 = &qword_27F2311D8;
    v26 = &qword_24F9A5928;
    sub_24E60169C(v22, v42, &qword_27F2311D8, &qword_24F9A5928);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D608();
    sub_24EE2D73C();
    sub_24F924E28();
    v27 = v22;
  }

  else
  {
    if (v23 >= 3)
    {
      v32 = v9[13];
      v33 = *(type metadata accessor for PlayerAvatarView(0) - 8);
      v34 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      sub_24EE2D7F8(v34, &v11[v32], type metadata accessor for PlayerAvatarView);
      v35 = *(v33 + 72);
      sub_24EE2D7F8(v34 + v35, &v11[v9[14]], type metadata accessor for PlayerAvatarView);
      sub_24EE2D7F8(v34 + 2 * v35, &v11[v9[15]], type metadata accessor for PlayerAvatarView);
      *v11 = xmmword_24F9A5830;
      *(v11 + 1) = xmmword_24F9A5850;
      *(v11 + 2) = xmmword_24F9A5860;
      *(v11 + 3) = xmmword_24F9A5870;
      *(v11 + 8) = 0x3FF8CCCCCCCCCCCDLL;
      *&v11[v9[16]] = a3 * 0.5;
      sub_24EE2D7F8(v11, v7, type metadata accessor for GroupedPlayerAvatarTrioView);
      swift_storeEnumTagMultiPayload();
      sub_24EE2D6F4(&qword_27F2311E0, type metadata accessor for GroupedPlayerAvatarTrioView, &unk_24F9A59C8);
      v36 = v40;
      sub_24F924E28();
      sub_24E60169C(v36, v42, &qword_27F2311C0, &qword_24F9A5910);
      swift_storeEnumTagMultiPayload();
      sub_24EE2D608();
      sub_24EE2D73C();
      sub_24F924E28();
      sub_24E601704(v36, &qword_27F2311C0, &qword_24F9A5910);
      return sub_24EE2D860(v11, type metadata accessor for GroupedPlayerAvatarTrioView);
    }

    swift_storeEnumTagMultiPayload();
    sub_24EE2D6F4(&qword_27F2311E0, type metadata accessor for GroupedPlayerAvatarTrioView, &unk_24F9A59C8);
    v37 = v40;
    sub_24F924E28();
    v25 = &qword_27F2311C0;
    v26 = &qword_24F9A5910;
    sub_24E60169C(v37, v42, &qword_27F2311C0, &qword_24F9A5910);
    swift_storeEnumTagMultiPayload();
    sub_24EE2D608();
    sub_24EE2D73C();
    sub_24F924E28();
    v27 = v37;
  }

  return sub_24E601704(v27, v25, v26);
}

unint64_t sub_24EE2D608()
{
  result = qword_27F2311E8;
  if (!qword_27F2311E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2311D8, &qword_24F9A5928);
    sub_24EE2D6F4(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    sub_24EE2D6F4(&qword_27F2311F0, type metadata accessor for GroupedPlayerAvatarDuoView, &unk_24F9A5978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2311E8);
  }

  return result;
}

uint64_t sub_24EE2D6F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EE2D73C()
{
  result = qword_27F2311F8;
  if (!qword_27F2311F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2311C0, &qword_24F9A5910);
    sub_24EE2D6F4(&qword_27F2311E0, type metadata accessor for GroupedPlayerAvatarTrioView, &unk_24F9A59C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2311F8);
  }

  return result;
}

uint64_t sub_24EE2D7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE2D860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EE2D8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatarView(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 52);

  return v7(v8, a2, v6);
}

uint64_t sub_24EE2D964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PlayerAvatarView(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 52);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24EE2D9E4(uint64_t a1)
{
  result = type metadata accessor for PlayerAvatarView(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EE2DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatarView(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 40);

  return v7(v8, a2, v6);
}

uint64_t sub_24EE2DB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PlayerAvatarView(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 40);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_24EE2DBA8(uint64_t a1)
{
  result = type metadata accessor for PlayerAvatarView(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EE2DC44()
{
  result = qword_27F231220;
  if (!qword_27F231220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231228, &qword_24F9A5970);
    sub_24EE2D608();
    sub_24EE2D73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231220);
  }

  return result;
}

uint64_t sub_24EE2DCEC@<X0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231240, &unk_24F9A5A28);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for GroupedPlayerAvatarDuoView(0);
  v17 = v16[10];
  *&v18 = *(a1->f64 + v16[12]);
  v30 = v18;
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v17, v15, type metadata accessor for PlayerAvatarView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v20 = &v15[*(v19 + 36)];
  v21 = v32;
  *v20 = v31;
  *(v20 + 1) = v21;
  *(v20 + 2) = v33;
  *&v15[*(v4 + 44)] = vmulq_n_f64(a1[1], *&v30);
  v22 = v16[11];
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v22, v12, type metadata accessor for PlayerAvatarView);
  v23 = &v12[*(v19 + 36)];
  v24 = v35;
  *v23 = v34;
  *(v23 + 1) = v24;
  *(v23 + 2) = v36;
  *&v12[*(v4 + 44)] = vmulq_n_f64(a1[2], *&v30);
  sub_24E60169C(v15, v9, &qword_27F231240, &unk_24F9A5A28);
  sub_24E60169C(v12, v6, &qword_27F231240, &unk_24F9A5A28);
  v25 = v29;
  sub_24E60169C(v9, v29, &qword_27F231240, &unk_24F9A5A28);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231260, &qword_24F9A5A50);
  sub_24E60169C(v6, v25 + *(v26 + 48), &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v12, &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v15, &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v6, &qword_27F231240, &unk_24F9A5A28);
  return sub_24E601704(v9, &qword_27F231240, &unk_24F9A5A28);
}

uint64_t sub_24EE2DFE8@<X0>(uint64_t a2@<X8>)
{
  v10 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F927618();
  sub_24F9238C8();
  v4 = sub_24F927618();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231250, &qword_24F9A5A40) + 36);
  sub_24EE2DCEC(v2, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231258, &qword_24F9A5A48);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_24EE2E114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231240, &unk_24F9A5A28);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - v7;
  MEMORY[0x28223BE20](v8);
  v37 = &v37 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for GroupedPlayerAvatarTrioView(0);
  v20 = v19[13];
  *&v21 = *(a1 + v19[16]);
  v41[0] = v21;
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v20, v18, type metadata accessor for PlayerAvatarView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v23 = &v18[*(v22 + 36)];
  v24 = *(&v41[2] + 8);
  *v23 = *(&v41[1] + 8);
  *(v23 + 1) = v24;
  *(v23 + 2) = *(&v41[3] + 8);
  *&v18[*(v4 + 44)] = vmulq_n_f64(*(a1 + 24), *v41);
  v25 = v19[14];
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v25, v15, type metadata accessor for PlayerAvatarView);
  v26 = &v15[*(v22 + 36)];
  v27 = *(&v41[5] + 8);
  *v26 = *(&v41[4] + 8);
  *(v26 + 1) = v27;
  *(v26 + 2) = *(&v41[6] + 8);
  *&v15[*(v4 + 44)] = vmulq_n_f64(*(a1 + 40), *v41);
  v28 = v19[15];
  sub_24F927618();
  sub_24F9238C8();
  sub_24EE2D7F8(a1 + v28, v12, type metadata accessor for PlayerAvatarView);
  v29 = &v12[*(v22 + 36)];
  v30 = *(&v41[8] + 8);
  *v29 = *(&v41[7] + 8);
  *(v29 + 1) = v30;
  *(v29 + 2) = *(&v41[9] + 8);
  *&v12[*(v4 + 44)] = vmulq_n_f64(*(a1 + 56), *v41);
  v31 = v37;
  sub_24E60169C(v18, v37, &qword_27F231240, &unk_24F9A5A28);
  v32 = v38;
  sub_24E60169C(v15, v38, &qword_27F231240, &unk_24F9A5A28);
  v33 = v39;
  sub_24E60169C(v12, v39, &qword_27F231240, &unk_24F9A5A28);
  v34 = v40;
  sub_24E60169C(v31, v40, &qword_27F231240, &unk_24F9A5A28);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231248, &qword_24F9A5A38);
  sub_24E60169C(v32, v34 + *(v35 + 48), &qword_27F231240, &unk_24F9A5A28);
  sub_24E60169C(v33, v34 + *(v35 + 64), &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v12, &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v15, &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v18, &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v33, &qword_27F231240, &unk_24F9A5A28);
  sub_24E601704(v32, &qword_27F231240, &unk_24F9A5A28);
  return sub_24E601704(v31, &qword_27F231240, &unk_24F9A5A28);
}

uint64_t sub_24EE2E56C@<X0>(uint64_t a2@<X8>)
{
  v10 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F927618();
  sub_24F9238C8();
  v4 = sub_24F927618();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231230, &qword_24F9A5A18) + 36);
  sub_24EE2E114(v2, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231238, &qword_24F9A5A20);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

unint64_t sub_24EE2E690()
{
  result = qword_27F231268;
  if (!qword_27F231268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231230, &qword_24F9A5A18);
    sub_24EE2E748();
    sub_24E602068(&qword_27F231288, &qword_27F231238, &qword_24F9A5A20, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231268);
  }

  return result;
}

unint64_t sub_24EE2E748()
{
  result = qword_27F231270;
  if (!qword_27F231270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231278, &qword_24F9A5A88);
    sub_24EE2E7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231270);
  }

  return result;
}

unint64_t sub_24EE2E7D4()
{
  result = qword_27F231280;
  if (!qword_27F231280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231280);
  }

  return result;
}

unint64_t sub_24EE2E82C()
{
  result = qword_27F231290;
  if (!qword_27F231290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231250, &qword_24F9A5A40);
    sub_24EE2E748();
    sub_24E602068(&qword_27F231298, &qword_27F231258, &qword_24F9A5A48, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231290);
  }

  return result;
}

uint64_t sub_24EE2E900@<X0>(uint64_t a2@<X8>)
{
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v3 = sub_24F926D08();

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2312A0, &qword_24F9A5AE0) + 36);
  v5 = *MEMORY[0x277CE13B8];
  v6 = sub_24F927748();
  result = (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  *a2 = v3;
  *(a2 + 8) = 256;
  return result;
}

unint64_t sub_24EE2E9B8()
{
  result = qword_27F2312A8;
  if (!qword_27F2312A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2312A0, &qword_24F9A5AE0);
    sub_24E602068(&qword_27F2312B0, &qword_27F2312B8, &unk_24F9A5AE8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2312A8);
  }

  return result;
}

uint64_t PrivacyDefinition.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrivacyDefinition.definition.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrivacyDefinition.__allocating_init(id:title:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    sub_24E9BBAA8(a1);
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v24[0] = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = v15;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v24[1] = v19;
    v24[2] = v21;
    a5 = v18;
    a4 = v17;
    a3 = v16;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v25);
  }

  v22 = v29;
  *(v14 + 48) = v28;
  *(v14 + 64) = v22;
  *(v14 + 80) = v30;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t PrivacyDefinition.init(id:title:definition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_24E9BBAA8(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v26);
  }

  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t PrivacyDefinition.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = 0x656C746974;
  v4 = sub_24F91F6B8();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  sub_24F928398();
  v44 = sub_24F928348();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v15, v6);
  v45 = v18;
  if (!v17)
  {
    v27 = 0xE500000000000000;
LABEL_7:
    v28 = sub_24F92AC38();
    sub_24EE2F37C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v29 = v3;
    v29[1] = v27;
    v29[2] = v46;
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D22530], v28);
    swift_willThrow();
    v30 = sub_24F9285B8();
    (*(*(v30 - 8) + 8))(v50, v30);
    v45(a1, v6);
    return v17;
  }

  v43 = v17;
  v3 = 0x6974696E69666564;
  sub_24F928398();
  v17 = sub_24F928348();
  v20 = v19;
  v18(v12, v6);
  v21 = v6;
  if (!v20)
  {
    v27 = 0xEA00000000006E6FLL;

    goto LABEL_7;
  }

  v22 = v17;
  sub_24F928398();
  v23 = sub_24F928348();
  if (v24)
  {
    v47 = v23;
    v48 = v24;
    sub_24F92C7F8();
    v25 = v9;
    v26 = v6;
  }

  else
  {
    v31 = v40;
    sub_24F91F6A8();
    v32 = v21;
    v33 = sub_24F91F668();
    v35 = v34;
    (*(v41 + 8))(v31, v42);
    v47 = v33;
    v48 = v35;
    v21 = v32;
    sub_24F92C7F8();
    v25 = v9;
    v26 = v32;
  }

  v36 = v45;
  v45(v25, v26);
  v17 = swift_allocObject();
  PrivacyDefinition.init(id:title:definition:)(v49, v44, v43, v22, v20);
  v37 = sub_24F9285B8();
  (*(*(v37 - 8) + 8))(v50, v37);
  v36(a1, v21);
  return v17;
}

uint64_t PrivacyDefinition.deinit()
{

  sub_24E6585F8(v0 + 48);
  return v0;
}

uint64_t PrivacyDefinition.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE2F37C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24EE2F3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PrivacyDefinition.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t ImpressionsCollectionElementsObserver.__allocating_init(componentTypeMappingProvider:impressionsCalculator:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 56) = 0;
  sub_24E612C80(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  sub_24E612C80(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t ImpressionsCollectionElementsObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ImpressionsCollectionElementsObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_24EE2F568(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v80 = a1;
  v11 = sub_24F929598();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v59 - v15;
  MEMORY[0x28223BE20](v16);
  v66 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v59 - v28;
  v30 = sub_24F929608();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v77 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v81 = a2;
  if (a2)
  {
    v82 = &v59 - v34;
    v76 = v26;
    sub_24E615E00(v80, v85);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2312C8, &qword_24F9A5CC0);
    if (swift_dynamicCast())
    {
      v79 = v23;
      v75 = v20;
      sub_24E612C80(v83, &v86);
      v35 = v87;
      v36 = v88;
      __swift_project_boxed_opaque_existential_1(&v86, v87);
      v37 = (*(v36 + 16))(v35, v36);
      if (v37)
      {
        v59 = v37;
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = v59 + 32;
          v40 = v31;
          v41 = (v31 + 48);
          v72 = (v40 + 32);
          v78 = (v40 + 8);
          v71 = (v12 + 56);
          v70 = (v12 + 48);
          v61 = (v12 + 8);
          v68 = (v40 + 16);
          v60 = (v12 + 16);
          v74 = v29;
          v73 = v41;
          v69 = v30;
          do
          {
            sub_24E615E00(v39, v85);
            __swift_project_boxed_opaque_existential_1(v85, v85[3]);
            sub_24F92ADC8();
            __swift_destroy_boxed_opaque_existential_1(v85);
            v42 = *v41;
            if ((*v41)(v29, 1, v30) == 1)
            {
              sub_24E601704(v29, &qword_27F213E68, &unk_24F93BC80);
            }

            else
            {
              (*v72)(v82, v29, v30);
              __swift_project_boxed_opaque_existential_1(v80, v80[3]);
              v43 = v76;
              sub_24F92ADC8();
              if (v42(v43, 1, v30) == 1)
              {
                sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
                v44 = 1;
                v45 = v75;
                v46 = v79;
              }

              else
              {
                v46 = v79;
                sub_24F9295B8();
                (*v78)(v43, v30);
                v44 = 0;
                v45 = v75;
              }

              (*v71)(v46, v44, 1, v11);
              sub_24EE32C14(v46, v45);
              if ((*v70)(v45, 1, v11) == 1)
              {
                sub_24E601704(v45, &qword_27F228618, &qword_24F982808);
                v47 = v77;
                v48 = v82;
                (*v68)(v77, v82, v30);
              }

              else
              {
                v64 = sub_24F929588();
                v49 = *v61;
                (*v61)(v45, v11);
                v50 = v65;
                v48 = v82;
                sub_24F9295B8();
                v63 = sub_24F929588();
                v62 = v51;
                v49(v50, v11);
                v52 = v67;
                sub_24F9295B8();
                sub_24F929558();
                v53 = v52;
                v54 = v50;
                v49(v53, v11);

                v55 = v66;
                sub_24F929568();
                v56 = v77;
                (*v68)(v77, v48, v69);
                (*v60)(v54, v55, v11);
                sub_24F9295C8();
                v46 = v79;

                v57 = v55;
                v47 = v56;
                v49(v57, v11);
                v30 = v69;
              }

              v29 = v74;
              ImpressionsCalculator.addElement(_:at:)(v47, a3, a4, a5, a6);
              v58 = *v78;
              (*v78)(v47, v30);
              sub_24E601704(v46, &qword_27F228618, &qword_24F982808);
              v58(v48, v30);
              v41 = v73;
            }

            v39 += 40;
            --v38;
          }

          while (v38);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v86);
    }

    else
    {

      v84 = 0;
      memset(v83, 0, sizeof(v83));
      sub_24E601704(v83, qword_27F2312D0, &qword_24F9A5CC8);
    }
  }
}

uint64_t sub_24EE2FDD0(void *a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v110 = a1;
  v115 = sub_24F929598();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v100 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = &v95 - v10;
  MEMORY[0x28223BE20](v11);
  v114 = &v95 - v12;
  MEMORY[0x28223BE20](v13);
  v102 = &v95 - v14;
  MEMORY[0x28223BE20](v15);
  v104 = &v95 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v113 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v105 = &v95 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v95 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v95 - v25;
  v27 = sub_24F929608();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v98 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v103 = &v95 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v95 - v33;
  v35 = type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v36 = a2;
  sub_24F928A58();
  __swift_project_boxed_opaque_existential_1(v116, v117);
  sub_24F92ADC8();
  v37 = *(v28 + 48);
  v38 = v37(v26, 1, v27);
  v111 = v28;
  v108 = v35;
  v109 = v37;
  if (v38 == 1)
  {
    sub_24E601704(v26, &qword_27F213E68, &unk_24F93BC80);
    v39 = v114;
    v40 = v110;
  }

  else
  {
    v41 = *(v28 + 32);
    v96 = v34;
    v41(v34, v26, v27);
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    v97 = v36;
    sub_24F928A48();

    if (v37(v23, 1, v27) == 1)
    {
      v42 = v27;
      sub_24E601704(v23, &qword_27F213E68, &unk_24F93BC80);
      v43 = 1;
      v44 = v104;
    }

    else
    {
      v44 = v104;
      sub_24F9295B8();
      v42 = v27;
      (*(v28 + 8))(v23, v27);
      v43 = 0;
    }

    v45 = v102;
    v46 = v112;
    v47 = v115;
    (*(v112 + 56))(v44, v43, 1, v115);
    sub_24EE32C14(v44, v45);
    v48 = (*(v46 + 48))(v45, 1, v47);
    v49 = v96;
    if (v48 == 1)
    {
      sub_24E601704(v45, &qword_27F228618, &qword_24F982808);
      v50 = 0;
      v51 = 0;
    }

    else
    {
      v52 = sub_24F929588();
      v51 = v53;
      (*(v46 + 8))(v45, v47);
      v50 = v52;
    }

    v39 = v114;
    v54 = v103;
    ImpressionMetrics.withParentId(_:)(v50, v51, v103);

    v40 = v110;
    [v110 frame];
    v55 = v107;
    ImpressionsCalculator.addElement(_:at:)(v54, v56, v57, v58, v59);
    [v40 frame];
    sub_24EE2F568(v116, v55, v60, v61, v62, v63);
    v64 = *(v111 + 8);
    v27 = v42;
    v64(v54, v42);
    sub_24E601704(v44, &qword_27F228618, &qword_24F982808);
    v64(v49, v42);
  }

  swift_getObjectType();
  v65 = swift_conformsToProtocol2();
  v66 = v115;
  v67 = v113;
  v68 = v109;
  if (v65 && v40)
  {
    v104 = v65;
    swift_getKeyPath();
    v110 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    v69 = v105;
    sub_24F928A48();

    if (v68(v69, 1, v27) == 1)
    {
      sub_24E601704(v69, &qword_27F213E68, &unk_24F93BC80);
      v70 = 1;
    }

    else
    {
      sub_24F9295B8();
      (*(v111 + 8))(v69, v27);
      v70 = 0;
    }

    v71 = v112;
    v108 = *(v112 + 56);
    v108(v39, v70, 1, v66);
    __swift_project_boxed_opaque_existential_1(v116, v117);
    sub_24F92ADC8();
    if (v68(v67, 1, v27) == 1)
    {
      sub_24E601704(v67, &qword_27F213E68, &unk_24F93BC80);
      v72 = v106;
      sub_24EE32C14(v39, v106);
      v73 = (*(v71 + 48))(v72, 1, v66);
    }

    else
    {
      v74 = v99;
      sub_24EE32C14(v39, v99);
      v109 = *(v71 + 48);
      if (v109(v74, 1, v66) == 1)
      {
        sub_24E601704(v74, &qword_27F228618, &qword_24F982808);
        v75 = 0;
        v76 = 0;
      }

      else
      {
        v77 = v74;
        v78 = sub_24F929588();
        v76 = v79;
        v80 = v77;
        v67 = v113;
        (*(v71 + 8))(v80, v66);
        v75 = v78;
      }

      v81 = v98;
      ImpressionMetrics.withParentId(_:)(v75, v76, v98);

      v82 = *(v111 + 8);
      v82(v67, v27);
      v83 = v100;
      sub_24F9295B8();
      v82(v81, v27);
      v72 = v106;
      (*(v71 + 32))(v106, v83, v66);
      v108(v72, 0, 1, v66);
      v73 = v109(v72, 1, v66);
    }

    v84 = v110;
    if (v73 == 1)
    {
      sub_24E601704(v114, &qword_27F228618, &qword_24F982808);
    }

    else
    {
      v85 = v101;
      (*(v71 + 32))(v101, v72, v66);
      [v84 bounds];
      *&v118 = v86;
      *(&v118 + 1) = v87;
      v119 = v88;
      v120 = v89;
      v121 = 0;
      ImpressionsCalculator.childCalculator(for:viewBounds:)(v85, &v118);
      v91 = v114;
      if (v90)
      {
        v92 = v90;
        ObjectType = swift_getObjectType();
        (*(v104 + 8))(v116, v92, ObjectType);
      }

      else
      {
      }

      (*(v71 + 8))(v85, v66);
      v72 = v91;
    }

    sub_24E601704(v72, &qword_27F228618, &qword_24F982808);
  }

  return __swift_destroy_boxed_opaque_existential_1(v116);
}

uint64_t sub_24EE30850(void *a1, uint64_t *a2, void *a3)
{
  v107 = a3;
  v109 = a2;
  v105 = a1;
  v96 = sub_24F929598();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v97 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_24F91F968();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F91FA78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v10 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v12 = &v88 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v101 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  v18 = sub_24F929608();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = *(v3 + 56);
  if (v23)
  {
    v93 = v22;
    v106 = &v88 - v21;
    v102 = v12;
    v103 = v9;
    v104 = v10;
    v94 = v7;
    v24 = type metadata accessor for ItemLayoutContext(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
    sub_24F928A58();
    __swift_project_boxed_opaque_existential_1(v110, v111);
    sub_24F92ADC8();
    v25 = *(v19 + 48);
    if (v25(v17, 1, v18) == 1)
    {

      sub_24E601704(v17, &qword_27F213E68, &unk_24F93BC80);
    }

    else
    {
      v92 = v23;
      v91 = v6;
      v90 = v19;
      v89 = *(v19 + 32);
      v89(v106, v17, v18);
      v28 = v109;
      v29 = v109 + *(v24 + 32);
      v30 = v108;
      (*(v104 + 16))(v102, v29, v108);
      v31 = *v28;
      v32 = type metadata accessor for ShelfLayoutContext(0);
      MEMORY[0x253045380](v31, *&v29[*(v32 + 20)]);
      v33 = [v107 collectionViewLayout];
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v35 = v34;
        v107 = v33;
        swift_getKeyPath();
        v36 = v101;
        sub_24F928A48();

        if (v25(v36, 1, v18) == 1)
        {
          v37 = v109;

          sub_24E601704(v36, &qword_27F213E68, &unk_24F93BC80);
          v38 = v91;
          v39 = v103;
          v40 = v90;
        }

        else
        {
          v41 = v93;
          v89(v93, v36, v18);
          v42 = [v35 _orthogonalScrollingSections];
          v43 = v98;
          sub_24F91F8D8();

          v39 = v103;
          sub_24F91FA18();
          LOBYTE(v42) = sub_24F91F918();
          (*(v99 + 8))(v43, v100);
          if (v42)
          {
            v109 = v18;
            [v35 _layoutFrameForSection_];
            v45 = v44;
            v47 = v46;
            v49 = v48;
            v51 = v50;
            [v35 _offsetForOrthogonalScrollingSection_];
            v53 = v52;
            ImpressionsCalculator.addElement(_:at:)(v41, v45, v47, v49, v51);
            v54 = v97;
            sub_24F9295B8();
            v116 = v53;
            v117 = v49;
            v118 = v51;
            v119 = 0;
            ImpressionsCalculator.childCalculator(for:viewBounds:)(v54, &v116);
            v56 = v55;
            v57 = *(v95 + 8);
            v58 = v96;
            v57(v54, v96);
            v59 = v91;
            if (v56)
            {
              v60 = v105;
              [v105 frame];
              v62 = v61;
              v64 = v63;
              v66 = v65;
              v68 = v67;
              v120.origin.x = v45;
              v120.origin.y = v47;
              v120.size.width = v49;
              v120.size.height = v51;
              v69 = -CGRectGetMinY(v120);
              v121.origin.x = v62;
              v121.origin.y = v64;
              v121.size.width = v66;
              v121.size.height = v68;
              v122 = CGRectOffset(v121, 0.0, v69);
              x = v122.origin.x;
              y = v122.origin.y;
              width = v122.size.width;
              height = v122.size.height;
              ImpressionsCalculator.addElement(_:at:)(v106, v122.origin.x, v122.origin.y, v122.size.width, v122.size.height);

              sub_24EE2F568(v110, v56, x, y, width, height);

              swift_getObjectType();
              v74 = swift_conformsToProtocol2();
              if (v74 && v60)
              {
                v75 = v74;
                v76 = v60;
                v77 = v97;
                sub_24F9295B8();
                [v76 bounds];
                *&v112 = v78;
                *(&v112 + 1) = v79;
                v113 = v80;
                v114 = v81;
                v115 = 0;
                ImpressionsCalculator.childCalculator(for:viewBounds:)(v77, &v112);
                v83 = v82;
                v57(v77, v58);
                if (v83)
                {
                  ObjectType = swift_getObjectType();
                  (*(v75 + 64))(v110, v83, ObjectType, v75);
                }

                else
                {
                }

                v59 = v91;
              }

              else
              {
              }
            }

            else
            {
              if (qword_27F210580 != -1)
              {
                swift_once();
              }

              v85 = sub_24F92AAE8();
              __swift_project_value_buffer(v85, qword_27F39C3E0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
              sub_24F928468();
              *(swift_allocObject() + 16) = xmmword_24F93DE60;
              v114 = MEMORY[0x277D837D0];
              *&v112 = 0xD000000000000066;
              *(&v112 + 1) = 0x800000024FA5F580;
              sub_24F928438();
              sub_24E601704(&v112, &qword_27F2129B0, &unk_24F945320);
              sub_24F92A5B8();
            }

            v86 = *(v90 + 8);
            v87 = v109;
            v86(v93, v109);
            (*(v94 + 8))(v39, v59);
            (*(v104 + 8))(v102, v108);
            v86(v106, v87);
            return __swift_destroy_boxed_opaque_existential_1(v110);
          }

          v37 = v109;
          v40 = v90;
          (*(v90 + 8))(v41, v18);

          v38 = v91;
        }

        v30 = v108;
      }

      else
      {
        v37 = v28;

        v38 = v91;
        v39 = v103;
        v40 = v90;
      }

      sub_24EE2FDD0(v105, v37, v92);

      (*(v94 + 8))(v39, v38);
      (*(v104 + 8))(v102, v30);
      (*(v40 + 8))(v106, v18);
    }

    return __swift_destroy_boxed_opaque_existential_1(v110);
  }

  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v26 = sub_24F92AAE8();
  __swift_project_value_buffer(v26, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v111 = MEMORY[0x277D837D0];
  v110[0] = 0xD00000000000005CLL;
  v110[1] = 0x800000024FA5F520;
  sub_24F928438();
  sub_24E601704(v110, &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5B8();
}

void sub_24EE315D0(void *a1, uint64_t *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v25 = v11;
    v26 = a3;
    type metadata accessor for ItemLayoutContext(0);
    swift_getKeyPath();
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
    sub_24F928A48();

    if (LOBYTE(v27[0]) == 1)
    {
      sub_24EE30850(v14, a2, v26);
    }

    else
    {
      v15 = *(v3 + 56);
      if (v15)
      {
        swift_getKeyPath();

        sub_24F928A48();

        v16 = v25;
        if ((*(v25 + 48))(v9, 1, v10) == 1)
        {
          sub_24E601704(v9, &qword_27F213E68, &unk_24F93BC80);
        }

        else
        {
          (*(v16 + 32))(v13, v9, v10);
          v18 = [v14 frame];
          v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
          *(&v24 - 8) = v13;
          *(&v24 - 7) = v15;
          *(&v24 - 6) = v19;
          *(&v24 - 5) = v20;
          *(&v24 - 4) = v21;
          *(&v24 - 3) = v22;
          *(&v24 - 16) = 1;
          sub_24EB0B828(sub_24EB0E840, (&v24 - 10), v23);
          (*(v16 + 8))(v13, v10);
        }

        sub_24EE2FDD0(v14, a2, v15);
      }

      else
      {
        if (qword_27F210580 != -1)
        {
          swift_once();
        }

        v17 = sub_24F92AAE8();
        __swift_project_value_buffer(v17, qword_27F39C3E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        v27[3] = MEMORY[0x277D837D0];
        v27[0] = 0xD00000000000005ELL;
        v27[1] = 0x800000024FA5F4C0;
        sub_24F928438();
        sub_24E601704(v27, &qword_27F2129B0, &unk_24F945320);
        sub_24F92A5B8();
      }
    }
  }
}

void sub_24EE31A1C(void *a1)
{
  v72 = a1;
  v2 = sub_24F929598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v49 - v6;
  MEMORY[0x28223BE20](v7);
  v58 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v49 - v19;
  v20 = sub_24F929608();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v69 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = *(v1 + 56);
  if (v25)
  {
    v73 = &v49 - v24;
    sub_24E615E00(v72, v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2312C8, &qword_24F9A5CC0);
    if (swift_dynamicCast())
    {
      v68 = v25;
      v66 = v17;
      v71 = v14;
      v67 = v11;
      sub_24E612C80(v75, &v78);
      v26 = v79;
      v27 = v80;
      __swift_project_boxed_opaque_existential_1(&v78, v79);
      v28 = (*(v27 + 16))(v26, v27);
      if (v28)
      {
        v50 = v28;
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = v50 + 32;
          v31 = (v21 + 48);
          v64 = (v21 + 32);
          v70 = (v21 + 8);
          v63 = (v3 + 56);
          v62 = (v3 + 48);
          v61 = (v3 + 8);
          v60 = (v21 + 16);
          v51 = (v3 + 16);
          v65 = (v21 + 48);
          do
          {
            sub_24E615E00(v30, v77);
            __swift_project_boxed_opaque_existential_1(v77, v77[3]);
            v32 = v74;
            sub_24F92ADC8();
            v33 = v32;
            __swift_destroy_boxed_opaque_existential_1(v77);
            v34 = *v31;
            if ((*v31)(v33, 1, v20) == 1)
            {
              sub_24E601704(v33, &qword_27F213E68, &unk_24F93BC80);
            }

            else
            {
              (*v64)(v73, v33, v20);
              __swift_project_boxed_opaque_existential_1(v72, v72[3]);
              v35 = v66;
              sub_24F92ADC8();
              if (v34(v35, 1, v20) == 1)
              {
                sub_24E601704(v35, &qword_27F213E68, &unk_24F93BC80);
                v36 = 1;
                v37 = v67;
                v38 = v71;
              }

              else
              {
                v38 = v71;
                sub_24F9295B8();
                (*v70)(v35, v20);
                v36 = 0;
                v37 = v67;
              }

              (*v63)(v38, v36, 1, v2);
              sub_24EE32C14(v38, v37);
              if ((*v62)(v37, 1, v2) == 1)
              {
                sub_24E601704(v37, &qword_27F228618, &qword_24F982808);
                v39 = v69;
                v40 = v73;
                (*v60)(v69, v73, v20);
              }

              else
              {
                v56 = sub_24F929588();
                v54 = v41;
                v42 = *v61;
                (*v61)(v37, v2);
                v43 = v57;
                v40 = v73;
                sub_24F9295B8();
                v53 = sub_24F929588();
                v52 = v44;
                v42(v43, v2);
                v55 = v42;
                v45 = v59;
                sub_24F9295B8();
                sub_24F929558();
                v46 = v45;
                v47 = v58;
                v42(v46, v2);

                sub_24F929568();
                v39 = v69;
                (*v60)(v69, v40, v20);
                (*v51)(v43, v47, v2);
                sub_24F9295C8();
                v38 = v71;

                v55(v47, v2);
              }

              ImpressionsCalculator.removeElement(_:)(v39);
              v48 = *v70;
              (*v70)(v39, v20);
              sub_24E601704(v38, &qword_27F228618, &qword_24F982808);
              v48(v40, v20);
              v31 = v65;
            }

            v30 += 40;
            --v29;
          }

          while (v29);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {

      v76 = 0;
      memset(v75, 0, sizeof(v75));
      sub_24E601704(v75, qword_27F2312D0, &qword_24F9A5CC8);
    }
  }
}

void sub_24EE32234(void *a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v83 = a2;
  v81 = sub_24F929598();
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v75 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v70 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v70 - v17;
  v19 = sub_24F929608();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v79 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v80 = v70 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v70 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v85 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v70 - v28;
  if (v3[7])
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (a1)
      {
        v72 = v15;
        v73 = v20;
        v70[0] = v10;
        v71 = type metadata accessor for ItemLayoutContext(0);
        v30 = v83;
        (*(v85 + 16))(v29, v83 + *(v71 + 32), v27);
        v31 = v19;
        v32 = v3[5];
        v33 = v3[6];
        v70[1] = v3;
        __swift_project_boxed_opaque_existential_1(v3 + 2, v32);
        v74 = a1;

        v34 = v30;
        v35 = v27;
        v36 = v31;
        if (ShelfComponentTypeMappingProvider.configurableComponentContainerViewType(for:asPartOf:)(v34, v82, v32, v33))
        {
          swift_getKeyPath();
          sub_24F928A48();

          v37 = v73;
          if ((*(v73 + 48))(v18, 1, v31) != 1)
          {
            (*(v37 + 32))(v26, v18, v31);
            ImpressionsCalculator.removeElement(_:)(v26);

            (*(v37 + 8))(v26, v31);
            (*(v85 + 8))(v29, v35);
            return;
          }

          sub_24E601704(v18, &qword_27F213E68, &unk_24F93BC80);
        }

        swift_getKeyPath();
        sub_24F928A48();

        if (v86[0])
        {
          (*(v85 + 8))(v29, v35);
        }

        else
        {
          v82 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
          sub_24F928A58();
          __swift_project_boxed_opaque_existential_1(v86, v86[3]);
          v38 = v72;
          sub_24F92ADC8();
          v39 = v73;
          v40 = *(v73 + 48);
          v41 = v40(v38, 1, v36);
          v42 = v74;
          if (v41 == 1)
          {
            (*(v85 + 8))(v29, v82);

            sub_24E601704(v38, &qword_27F213E68, &unk_24F93BC80);
          }

          else
          {
            v43 = v80;
            (*(v39 + 32))(v80, v38, v36);
            swift_getKeyPath();
            v44 = v76;
            sub_24F928A48();

            if (v40(v44, 1, v36) == 1)
            {
              sub_24E601704(v44, &qword_27F213E68, &unk_24F93BC80);
              v45 = 1;
              v46 = v70[0];
            }

            else
            {
              v46 = v70[0];
              sub_24F9295B8();
              (*(v39 + 8))(v44, v36);
              v45 = 0;
            }

            v48 = v78;
            v47 = v79;
            v49 = v77;
            v50 = v81;
            (*(v78 + 56))(v46, v45, 1, v81);
            sub_24EE32C14(v46, v49);
            if ((*(v48 + 48))(v49, 1, v50) == 1)
            {
              sub_24E601704(v49, &qword_27F228618, &qword_24F982808);
              v51 = 0;
              v52 = 0;
            }

            else
            {
              v53 = v49;
              v54 = v43;
              v55 = v46;
              v56 = sub_24F929588();
              v52 = v57;
              (*(v48 + 8))(v53, v50);
              v51 = v56;
              v46 = v55;
              v43 = v54;
              v42 = v74;
            }

            ImpressionMetrics.withParentId(_:)(v51, v52, v47);

            swift_getObjectType();
            v58 = swift_conformsToProtocol2();
            if (v58)
            {
              v59 = v58;
              v60 = v42;
              v61 = v75;
              sub_24F9295B8();
              [v60 bounds];
              *&v87 = v62;
              *(&v87 + 1) = v63;
              v88 = v64;
              v89 = v65;
              v90 = 0;
              ImpressionsCalculator.childCalculator(for:viewBounds:)(v61, &v87);
              v67 = v66;
              (*(v48 + 8))(v61, v81);
              if (v67)
              {
                ObjectType = swift_getObjectType();
                (*(v59 + 72))(v67, ObjectType, v59);
              }

              else
              {
              }

              v47 = v79;
              v43 = v80;
              v42 = v74;
            }

            ImpressionsCalculator.removeElement(_:)(v47);

            sub_24EE31A1C(v86);

            v69 = *(v73 + 8);
            v69(v47, v36);
            sub_24E601704(v46, &qword_27F228618, &qword_24F982808);
            v69(v43, v36);
            (*(v85 + 8))(v29, v82);
          }

          __swift_destroy_boxed_opaque_existential_1(v86);
        }
      }
    }
  }
}

uint64_t sub_24EE32C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228618, &qword_24F982808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id InlineUnifiedMessagePresenter.__allocating_init(objectGraph:)()
{
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, sel_init);

  return v1;
}

id InlineUnifiedMessagePresenter.init(objectGraph:)()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_init);

  return v1;
}

id InlineUnifiedMessagePresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InlineUnifiedMessagePresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EE32E48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92B098();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_8;
  }

  sub_24E9421D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_24F91F508();

  v5 = 0;
LABEL_9:
  v6 = sub_24F91F648();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_24EE32FA0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E728A00(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
    v11 = sub_24F92B098();
    [v2 removeObjectForKey_];

    return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_24F91F518();
    v14 = v13;
    v15 = sub_24F92B098();
    [v2 setDouble:v15 forKey:v14];

    sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
    return (*(v8 + 8))(v10, v7);
  }
}

id sub_24EE331D8()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  }

  return 0;
}

uint64_t ObjectGraphPair.init(value:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for ObjectGraphPair(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t ObjectGraphPairable.pairedWith<A>(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  (*(v9 + 32))(a4, v12, a2);
  *(a4 + *(type metadata accessor for ObjectGraphPair(0, a2, a3, v13) + 36)) = a1;
}

uint64_t sub_24EE334CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EE33558(_DWORD *a1, unsigned int a2, uint64_t a3)
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

_DWORD *sub_24EE33694(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t ShareSheetAppEventMetadata.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShareSheetAppEventMetadata.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetAppEventMetadata.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetAppEventMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ShareSheetAppEventMetadata.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v31 = *v3;
  v33 = sub_24F9285B8();
  v5 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v3[2] = v14;
    v3[3] = v16;
    v18 = v35;
    sub_24F928398();
    v19 = sub_24F928348();
    v21 = v20;
    v30 = v17;
    v17(v10, v7);
    v3[4] = v19;
    v3[5] = v21;
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v22 = *(v5 + 16);
    v31 = v7;
    v24 = v33;
    v23 = v34;
    v22(v32, v34, v33);
    sub_24EA864C0(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    (*(v5 + 8))(v23, v24);
    v30(v18, v31);
    v3[6] = v36;
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24EA864C0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 1954047348;
    v27 = v31;
    v26[1] = 0xE400000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v5 + 8))(v34, v33);
    v17(v35, v7);
    type metadata accessor for ShareSheetAppEventMetadata();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

void *ShareSheetAppEventMetadata.__allocating_init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *ShareSheetAppEventMetadata.init(text:subtitle:artwork:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t ShareSheetAppEventMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetAppEventMetadata.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EE33E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShareSheetAppEventMetadata();
  v7 = swift_allocObject();
  result = ShareSheetAppEventMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE33EE4()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageLockupViewModel(uint64_t a1)
{
  result = qword_27F231358;
  if (!qword_27F231358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EE33FD4()
{
  result = qword_27F231368;
  if (!qword_27F231368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F231368);
  }

  return result;
}

void Array<A>.identifiersOfShelves<A>(using:)(uint64_t result, unint64_t a2, void *a3, uint64_t a4)
{
  v15 = MEMORY[0x277D84FA0];
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253052270](i, a2, a3);
      }

      else
      {
        v7 = *(a2 + 8 * i + 32);
      }

      sub_24EA90A64();

      v8 = sub_24F92BAB8();

      if (v8)
      {
      }

      else
      {
        sub_24E65864C(v7 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v13);
        sub_24ED7EDA8(&v14, v13);

        sub_24E772780(&v14);
      }
    }

    v9 = v15;
    v10 = *(v15 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_24EAE6938(v10, 0);
        v12 = sub_24EAE88FC(&v14, (v11 + 4), v10, v9);
        sub_24E6586B4(v14);
        if (v12 == v10)
        {
          break;
        }

        __break(1u);
LABEL_15:
        v5 = sub_24F92C738();
        if (v5)
        {
          goto LABEL_3;
        }

LABEL_16:
        v9 = MEMORY[0x277D84FA0];
        v10 = *(MEMORY[0x277D84FA0] + 16);
        if (!v10)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
    }
  }
}

__int128 *Array<A>.personalizedShelves(with:)(__int128 *result, unint64_t a2)
{
  v8 = result[1];
  v9 = *result;
  v11 = MEMORY[0x277D84F90];
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_24F92C738();
  v3 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](i, a2);
      }

      else
      {
        v6 = *(a2 + 8 * i + 32);
      }

      if (*(*(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) + 16))
      {
        v10[0] = v9;
        v10[1] = v8;
        Shelf.makePersonalizedShelf(with:)(v10);

        MEMORY[0x253050F00](v5);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
      }

      else
      {

        MEMORY[0x253050F00](v7);
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();
      }
    }

    return v11;
  }

  return result;
}

id Shelf.makePersonalizedShelf(with:)(__int128 *a1)
{
  v2 = v1;
  v115 = *v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226820, &unk_24F97B5F0);
  v93 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v89 - v4;
  v5 = sub_24F91F6B8();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v89 - v14;
  v15 = v2[3];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v15 + 32;
    v19 = a1[1];
    v116 = *a1;
    v117 = v19;
    while (1)
    {
      sub_24E615E00(v18, v139);
      sub_24E615E00(v139, &v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_24E612C80(&v130, &v136);
      v20 = *(&v137 + 1);
      v21 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      if ((PersonalizableModel.needsClientPersonalization.getter(v20, v21) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v136);
        goto LABEL_14;
      }

      v22 = *(&v137 + 1);
      v23 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      PersonalizableModel.unpersonalized.getter(v22, v23, &v133);
      v24 = *(&v134 + 1);
      v25 = v135;
      __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
      v126 = v116;
      v127 = v117;
      PersonalizableModel.personalized(with:)(&v126, v24, v25, &v130);
      sub_24E615E00(&v130, &v126);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_24E61710C(0, v17[2] + 1, 1, v17);
      }

      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        v17 = sub_24E61710C((v26 > 1), v27 + 1, 1, v17);
      }

      __swift_destroy_boxed_opaque_existential_1(&v130);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v17[2] = v27 + 1;
      sub_24E612C80(&v126, &v17[5 * v27 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v133);
      __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_4:
      v18 += 40;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v132 = 0;
    v130 = 0u;
    v131 = 0u;
    sub_24E601704(&v130, &qword_27F222730, &unk_24F9E1470);
LABEL_14:
    sub_24E615E00(v139, &v136);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_24E61710C(0, v17[2] + 1, 1, v17);
    }

    v29 = v17[2];
    v28 = v17[3];
    if (v29 >= v28 >> 1)
    {
      v17 = sub_24E61710C((v28 > 1), v29 + 1, 1, v17);
    }

    __swift_destroy_boxed_opaque_existential_1(v139);
    v17[2] = v29 + 1;
    sub_24E612C80(&v136, &v17[5 * v29 + 4]);
    goto LABEL_4;
  }

LABEL_18:
  v140 = 0;
  memset(v139, 0, sizeof(v139));
  LODWORD(v116) = *(v2 + 16);
  v102 = *(v2 + 17);
  *&v112 = v2[5];
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v110, &qword_27F228530, &unk_24F93C6E0);
  LODWORD(v105) = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched);
  v30 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup + 8);
  v104 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v106 = v30;
  v95 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  *&v117 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle);
  v103 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden);
  v98 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal);
  v31 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle + 8);
  v94 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  v99 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);
  v32 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
  v33 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
  v35 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
  v34 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
  v36 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
  v97 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints);
  v37 = sub_24F91F648();
  (*(*(v37 - 8) + 56))(v109, 1, 1, v37);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, v111, &qword_27F213E68, &unk_24F93BC80);
  v38 = sub_24F91F4A8();
  (*(*(v38 - 8) + 56))(v108, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A50, &unk_24F97B600);
  swift_allocObject();
  v96 = v31;

  sub_24ED8F454(v117);
  v39 = v32;
  v40 = v32;
  v41 = v33;
  v42 = v33;
  v43 = v35;
  v101 = v34;
  v100 = v36;
  sub_24E951F10(v40, v42, v35, v34, v36);
  v107 = sub_24F9280D8();
  v44 = swift_allocObject();
  sub_24E60169C(v139, &v133, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v134 + 1))
  {
    v136 = v133;
    v137 = v134;
    v138 = v135;
  }

  else
  {
    v45 = v90;
    sub_24F91F6A8();
    v46 = v41;
    v47 = v39;
    v48 = sub_24F91F668();
    v50 = v49;
    (*(v91 + 8))(v45, v92);
    *&v130 = v48;
    v39 = v47;
    v41 = v46;
    v43 = v35;
    *(&v130 + 1) = v50;
    sub_24F92C7F8();
    sub_24E601704(&v133, &qword_27F235830, &qword_24F93B8C0);
  }

  v51 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
  v52 = v137;
  *v51 = v136;
  *(v51 + 16) = v52;
  *(v51 + 32) = v138;
  sub_24E60169C(v111, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v53 = v116;
  *(v44 + 16) = v116;
  *(v44 + 17) = v102;
  *(v44 + 18) = 1;
  *(v44 + 24) = v17;
  LOBYTE(v136) = v53;

  *(v44 + 32) = sub_24F2EBA74(v54, &v136);
  sub_24E60169C(v110, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, &qword_27F228530, &unk_24F93C6E0);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched) = v105;
  v55 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
  v56 = v106;
  *v55 = v104;
  v55[1] = v56;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_fetchStrategy) = 0;
  *(v44 + 40) = v112;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) = v103;
  v57 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_contentsMetadata;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0u;
  *(v57 + 56) = 0;
  *(v57 + 64) = 0;
  *(v57 + 48) = 3221225472;
  if (v117 < 2)
  {

LABEL_25:
    v63 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
    v64 = v95;
    v65 = v96;
    *v63 = v94;
    v63[1] = v65;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = v64;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = v117;

    goto LABEL_27;
  }

  v105 = v43;
  v58 = objc_opt_self();

  result = [v58 defaultWorkspace];
  if (!result)
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v60 = result;

  v61 = sub_24F92B098();
  v62 = [v60 applicationIsInstalled_];

  v43 = v105;
  if (v62)
  {
    goto LABEL_25;
  }

  sub_24ED8F464(v117);

  v66 = (v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  *v66 = 0;
  v66[1] = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerStyle) = 1;
LABEL_27:
  v67 = MEMORY[0x277D84F90];
  sub_24E60169C(v109, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(v108, v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_refreshUrl, &qword_27F228530, &unk_24F93C6E0);
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_presentationHints) = v97;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHorizontal) = v98;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isPersonalized) = 1;
  v68 = v99;
  if (!v99)
  {
    LOBYTE(v136) = v116;
    v68 = sub_24F2EBC94();
  }

  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn) = v68;
  v69 = v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background;
  *v69 = v39;
  *(v69 + 8) = v41;
  v70 = v101;
  *(v69 + 16) = v43;
  *(v69 + 24) = v70;
  *(v69 + 32) = v100;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onShouldRemoveModel) = v107;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents) = v67;
  *&v116 = v44;
  v71 = *(v44 + 24);
  v72 = sub_24EA90A64();

  v73 = 0;
  v129 = MEMORY[0x253051460](0, &type metadata for PersonalizationStyle, v72);
  v74 = v71 + 32;
  v75 = 0uLL;
  v112 = xmmword_24F950E90;
  *&v117 = v71 + 32;
  while (2)
  {
    v76 = *(v71 + 16);
    if (v73 == v76)
    {
LABEL_33:
      v124 = 0;
      v73 = v76;
      v122 = v75;
      v123 = v75;
      goto LABEL_37;
    }

    while (1)
    {
      if ((v73 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        v84 = sub_24F92C738();
        if (!v84)
        {
          goto LABEL_65;
        }

LABEL_55:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160, &unk_24F97B620);
        if (v84 >= 1)
        {
          *&v117 = v72 & 0xC000000000000001;
          v85 = (v93 + 8);

          v86 = 0;
          v87 = v72;
          do
          {
            if (v117)
            {
              MEMORY[0x253052270](v86, v72);
            }

            else
            {
            }

            ++v86;
            sub_24EA90AB8();
            sub_24F9288B8();
            v88 = v113;
            sub_24F9288C8();

            __swift_destroy_boxed_opaque_existential_1(&v136);
            (*v85)(v88, v114);
            v72 = v87;
          }

          while (v84 != v86);

          v73 = v116;
          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_68;
      }

      if (v73 >= *(v71 + 16))
      {
        goto LABEL_63;
      }

      sub_24E615E00(v74 + 40 * v73++, &v122);
LABEL_37:
      v120[0] = v122;
      v120[1] = v123;
      v121 = v124;
      if (!*(&v123 + 1))
      {
        memset(v125, 0, 24);
        *(&v125[1] + 8) = v112;
LABEL_45:
        sub_24E601704(v125, &qword_27F226830, &unk_24F97B610);
        v132 = 0;
        v130 = 0u;
        v131 = 0u;
        goto LABEL_46;
      }

      sub_24E612C80(v120, v119);
      sub_24E615E00(v119, &v118);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226840, &unk_24F97B630);
      if ((swift_dynamicCast() & 1) == 0)
      {
        memset(v125, 0, 40);
      }

      __swift_destroy_boxed_opaque_existential_1(v119);
      if (*(&v125[1] + 1) == 1)
      {
        goto LABEL_45;
      }

      v126 = v125[0];
      v127 = v125[1];
      v128 = *&v125[2];
      if (*(&v125[1] + 1))
      {
        break;
      }

      sub_24E601704(&v126, &qword_27F222730, &unk_24F9E1470);
      v75 = 0uLL;
      if (v73 == v76)
      {
        goto LABEL_33;
      }
    }

    *(&v127 + 1) = *(&v125[1] + 1);
    result = sub_24E60169C(&v126, v125, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v125[1] + 1))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    sub_24E612C80(v125, &v130);
    sub_24E601704(&v126, &qword_27F222730, &unk_24F9E1470);
    if (!*(&v131 + 1))
    {
LABEL_46:
      sub_24E601704(&v130, &qword_27F222730, &unk_24F9E1470);
      v136 = 0u;
      v137 = 0u;
      v138 = 0;
      goto LABEL_47;
    }

    sub_24E612C80(&v130, &v133);
    v79 = *(&v134 + 1);
    v80 = v135;
    v81 = __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
    v82 = v79;
    v72 = v81;
    if ((PersonalizableModel.needsClientPersonalization.getter(v82, v80) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v133);
LABEL_31:
      v74 = v117;
      v75 = 0uLL;
      continue;
    }

    break;
  }

  sub_24E612C80(&v133, &v136);
LABEL_47:
  v133 = v136;
  v134 = v137;
  v135 = v138;
  if (*(&v137 + 1))
  {
    sub_24E612C80(&v133, &v130);
    v77 = *(&v131 + 1);
    v78 = v132;
    __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
    (*(v78 + 16))(&v126, v77, v78);
    LOBYTE(v78) = v126;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v72 = &v129;
    sub_24ED7CC74(&v136, v78);
    goto LABEL_31;
  }

  v73 = v116;
  *(v116 + OBJC_IVAR____TtC12GameStoreKit5Shelf_personalizationStyles) = v129;
  v83 = (v73 + OBJC_IVAR____TtC12GameStoreKit5Shelf_accessibilityMetadata);
  *v83 = 0u;
  v83[1] = 0u;
  v72 = *(v73 + OBJC_IVAR____TtC12GameStoreKit5Shelf_onRemoveModelEvents);
  if (v72 >> 62)
  {
    goto LABEL_64;
  }

  v84 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v84)
  {
    goto LABEL_55;
  }

LABEL_65:

LABEL_66:
  sub_24E601704(v108, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v111, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v109, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v110, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(v139, &qword_27F235830, &qword_24F93B8C0);
  return v73;
}

void Array<A>.indicesOfShelves<A>(using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_24F91F958();
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v7 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x253052270](v7, a2);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      sub_24EA90A64();

      v9 = sub_24F92BAB8();

      if ((v9 & 1) == 0)
      {
        sub_24F91F8F8();
      }

      ++v7;
      if (v8 == i)
      {
        return;
      }
    }

    if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v8 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_24EE356B4@<X0>(uint64_t (*a1)(void)@<X4>, void *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

double sub_24EE356E4(char *a1, uint64_t a2)
{
  v26 = a2;
  v4 = 0x6874646977;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = 0xE500000000000000;
  sub_24F928398();
  v25 = sub_24F928308();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14 & 1) != 0 || (v4 = 0x746867696568, v12 = 0xE600000000000000, sub_24F928398(), sub_24F928308(), v17 = v16, v15(v8, v5), (v17))
  {
    v18 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v20 = v19;
    type metadata accessor for CGSize(0);
    *v20 = v4;
    v20[1] = v12;
    v20[2] = v21;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D22530], v18);
    swift_willThrow();
    v22 = sub_24F9285B8();
    (*(*(v22 - 8) + 8))(v26, v22);
    v15(a1, v5);
  }

  else
  {
    v2 = *&v25;
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v26, v23);
    v15(a1, v5);
  }

  return v2;
}

double sub_24EE359A4(char *a1, uint64_t a2)
{
  v26 = a2;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = 120;
  sub_24F928398();
  v12 = sub_24F928308();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v10, v4);
  if (v14 & 1) != 0 || (v11 = 121, sub_24F928398(), sub_24F928308(), v17 = v16, v15(v7, v4), (v17))
  {
    v18 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v20 = v19;
    type metadata accessor for CGPoint(0);
    *v20 = v11;
    v20[1] = 0xE100000000000000;
    v20[2] = v21;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D22530], v18);
    swift_willThrow();
    v22 = sub_24F9285B8();
    (*(*(v22 - 8) + 8))(v26, v22);
    v15(a1, v4);
  }

  else
  {
    v2 = *&v12;
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v26, v23);
    v15(a1, v4);
  }

  return v2;
}

void *ExternalUrlAction.__allocating_init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v55 = a8;
  v54 = a7;
  v53 = a6;
  v51 = a5;
  v57 = a3;
  v58 = a2;
  v56 = a1;
  v59 = a9;
  v60 = a11;
  v50 = sub_24F91F6B8();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v46 - v13;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v46 - v19;
  v21 = sub_24F91F4A8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  sub_24F91F488();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    (*(v15 + 8))(v60, v14);

    sub_24E601704(v20, &qword_27F228530, &unk_24F93C6E0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v47 = a10;
    (*(v22 + 32))(v24, v20, v21);
    (*(v22 + 16))(v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v24, v21);
    *(v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = v51 & 1;
    *(v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = v53 & 1;
    v26 = v25 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v26 = v54;
    v26[8] = v55 & 1;
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    v27 = *(v15 + 16);
    v57 = v17;
    v28 = v60;
    v27(v17, v60, v14);
    v29 = sub_24F929608();
    v30 = v52;
    (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
    v31 = (v25 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v31 = 0u;
    v31[1] = 0u;
    sub_24E65E064(v69, &v63);
    v32 = v14;
    if (*(&v64 + 1))
    {
      v33 = v28;
      v66 = v63;
      v67 = v64;
      v68 = v65;
    }

    else
    {
      v34 = v48;
      sub_24F91F6A8();
      v35 = sub_24F91F668();
      v36 = v30;
      v37 = v32;
      v39 = v38;
      (*(v49 + 8))(v34, v50);
      v61 = v35;
      v62 = v39;
      v32 = v37;
      v30 = v36;
      sub_24F92C7F8();
      sub_24E601704(&v63, &qword_27F235830, &qword_24F93B8C0);
      v33 = v60;
    }

    v41 = v58;
    v40 = v59;
    (*(v15 + 8))(v33, v32);
    sub_24E601704(v69, &qword_27F235830, &qword_24F93B8C0);
    (*(v22 + 8))(v24, v21);
    v42 = v25 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v43 = v67;
    *v42 = v66;
    *(v42 + 1) = v43;
    *(v42 + 4) = v68;
    sub_24E65E0D4(v30, v25 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    v25[2] = v56;
    v25[3] = v41;
    v44 = v47;
    v25[4] = v40;
    v25[5] = v44;
    (*(v15 + 32))(v25 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v57, v32);
  }

  return v25;
}

void *ExternalUrlAction.init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  LODWORD(v52) = a8;
  v51 = a7;
  v50 = a6;
  v49 = a5;
  v54 = a3;
  v57 = a2;
  v53 = a1;
  v55 = a11;
  v56 = a9;
  v48 = *v11;
  v47 = sub_24F91F6B8();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v44 - v22;
  v24 = sub_24F91F4A8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    (*(v18 + 8))(v55, v17);

    sub_24E601704(v23, &qword_27F228530, &unk_24F93C6E0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v48 = a10;
    (*(v25 + 32))(v27, v23, v24);
    (*(v25 + 16))(v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v27, v24);
    *(v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = v49 & 1;
    *(v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = v50 & 1;
    v28 = v12 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v28 = v51;
    v28[8] = v52 & 1;
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    v29 = *(v18 + 16);
    v54 = v20;
    v30 = v55;
    v29(v20, v55, v17);
    v31 = sub_24F929608();
    (*(*(v31 - 8) + 56))(v16, 1, 1, v31);
    v32 = (v12 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v32 = 0u;
    v32[1] = 0u;
    sub_24E65E064(v66, &v60);
    v33 = v16;
    if (*(&v61 + 1))
    {
      v63 = v60;
      v64 = v61;
      v65 = v62;
    }

    else
    {
      v34 = v45;
      sub_24F91F6A8();
      v35 = sub_24F91F668();
      v52 = v33;
      v37 = v36;
      (*(v46 + 8))(v34, v47);
      v58 = v35;
      v59 = v37;
      v33 = v52;
      sub_24F92C7F8();
      sub_24E601704(&v60, &qword_27F235830, &qword_24F93B8C0);
    }

    v39 = v56;
    v38 = v57;
    (*(v18 + 8))(v30, v17);
    sub_24E601704(v66, &qword_27F235830, &qword_24F93B8C0);
    (*(v25 + 8))(v27, v24);
    v40 = v12 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    *(v40 + 4) = v65;
    v41 = v64;
    *v40 = v63;
    *(v40 + 1) = v41;
    sub_24E65E0D4(v33, v12 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    v12[2] = v53;
    v12[3] = v38;
    v42 = v48;
    v12[4] = v39;
    v12[5] = v42;
    (*(v18 + 32))(v12 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v54, v17);
  }

  return v12;
}

uint64_t ExternalUrlAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v72 = v3;
  v61 = *v3;
  v5 = sub_24F9285B8();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F9288E8();
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v56 - v16;
  MEMORY[0x28223BE20](v17);
  v56 = &v56 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v25 = sub_24F91F4A8();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v65 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  sub_24F928398();
  sub_24F928268();
  v58 = v13;
  v28 = *(v13 + 8);
  v74 = v12;
  v73 = v28;
  v28(v24, v12);
  v66 = v26;
  v67 = v25;
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
    v29 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v30 = 7107189;
    v31 = v61;
    v30[1] = 0xE300000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    (*(v70 + 8))(v68, v71);
    v73(v69, v74);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v65;
    v32 = v66;
    v34 = v67;
    (*(v66 + 32))(v65, v11, v67);
    v35 = v72;
    (*(v32 + 16))(v72 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url, v33, v34);
    v36 = v69;
    sub_24F928398();
    LOBYTE(v34) = sub_24F928278();
    v37 = v21;
    v38 = v60;
    v39 = v73;
    v73(v37, v74);
    v40 = v39;
    v41 = v35;
    *(v35 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_isSensitive) = v34 & 1;
    v42 = v56;
    sub_24F928398();
    LOBYTE(v34) = sub_24F928278();
    v40(v42, v74);
    *(v41 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_allowFromLockscreen) = v34 & 1;
    v43 = v57;
    sub_24F928398();
    v44 = v62;
    (*(v7 + 104))(v38, *MEMORY[0x277D21C40], v62);
    v45 = sub_24F928228();
    LOBYTE(v40) = v46;
    (*(v7 + 8))(v38, v44);
    v47 = v36;
    v73(v43, v74);
    v48 = v74;
    v29 = v72;
    v49 = v72 + OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_timeoutSeconds;
    *v49 = v45;
    v49[8] = v40 & 1;
    v50 = v59;
    (*(v58 + 16))(v59, v47, v48);
    v51 = v63;
    v52 = v68;
    (*(v70 + 16))(v63, v68, v71);
    v53 = v64;
    v54 = Action.init(deserializing:using:)(v50, v51);
    if (!v53)
    {
      v29 = v54;
    }

    (*(v70 + 8))(v52, v71);
    v73(v47, v48);
    (*(v66 + 8))(v65, v67);
  }

  return v29;
}

uint64_t ExternalUrlAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EE371B4()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v2 = sub_24F91F4A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ExternalUrlAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  v3 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ExternalUrlAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  v3 = OBJC_IVAR____TtC12GameStoreKit17ExternalUrlAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExternalUrlAction(uint64_t a1)
{
  result = qword_27F231370;
  if (!qword_27F231370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE374CC(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t CondensedAdLockupWithIconBackground.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CondensedAdLockupWithIconBackground.init(deserializing:using:)(a1, a2);
  return v4;
}

void *CondensedAdLockupWithIconBackground.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v53 = v3;
  v45 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v55 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = sub_24F928388();
  v51 = *(v17 - 8);
  v52 = v17;
  MEMORY[0x28223BE20](v17);
  v43 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v46 = &v43 - v20;
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v43 - v23;
  sub_24F929608();
  sub_24F928398();
  v50 = v8;
  v25 = *(v8 + 16);
  v25(v16, a2, v7);
  v48 = v24;
  v26 = a1;
  sub_24F929548();
  v27 = v55;
  v25(v55, a2, v7);
  v28 = v46;
  sub_24F928398();
  v29 = v47;
  v54 = v7;
  v25(v47, v27, v7);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v30 = v49;
  v31 = Lockup.init(deserializing:using:)(v28, v29);
  if (v30)
  {
    v32 = *(v50 + 8);
    v33 = v54;
    v32(a2, v54);
    (*(v51 + 8))(v26, v52);
    v32(v55, v33);
    sub_24EB05BC8(v48);
    v34 = v53;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v49 = a2;
    v35 = v50;
    v36 = v53;
    v53[2] = v31;
    type metadata accessor for Artwork(0);
    v37 = v43;
    sub_24F928398();
    v38 = v44;
    v25(v44, v55, v54);
    v34 = v36;
    v40 = Artwork.__allocating_init(deserializing:using:)(v37, v38);
    v41 = *(v35 + 8);
    v42 = v54;
    v41(v49, v54);
    (*(v51 + 8))(v26, v52);
    v41(v55, v42);
    v34[3] = v40;
    sub_24E65E0D4(v48, v34 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  }

  return v34;
}

uint64_t CondensedAdLockupWithIconBackground.__allocating_init(lockup:backgroundArtwork:clickAction:searchAd:clickSender:decorations:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v10 = swift_allocObject();

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_24E65E0D4(a7, v10 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v10;
}

uint64_t CondensedAdLockupWithIconBackground.init(lockup:backgroundArtwork:clickAction:searchAd:clickSender:decorations:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_24E65E0D4(a7, v7 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v7;
}

double CondensedAdLockupWithIconBackground.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;

  return result;
}

uint64_t CondensedAdLockupWithIconBackground.clickSender.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  *a1 = v1;
}

double CondensedAdLockupWithIconBackground.decorations.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t CondensedAdLockupWithIconBackground.debugDescription.getter()
{
  sub_24F92C888();
  v1 = sub_24F92D1E8();

  v15 = v1;
  MEMORY[0x253050C20](539828256, 0xE400000000000000);
  v2 = *(v0 + 16);
  v3 = v2[2];
  v4 = v2[3];

  MEMORY[0x253050C20](v3, v4);
  MEMORY[0x253050C20](93, 0xE100000000000000);

  MEMORY[0x253050C20](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x253050C20](0x6964616548202D20, 0xEC000000203A676ELL);
  v5 = v2[11];
  if (v5)
  {
    v6 = v2[10];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v2[11];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v6, v7);

  MEMORY[0x253050C20](0x3A656C746974202CLL, 0xE900000000000020);
  v8 = v2[13];
  if (v8)
  {
    v9 = v2[12];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v2[13];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](0x746974627573202CLL, 0xEB000000003A656CLL);
  v11 = v2[15];
  if (v11)
  {
    v12 = v2[14];
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v2[15];
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x253050C20](v12, v13);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v15;
}

uint64_t CondensedAdLockupWithIconBackground.deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);
  return v0;
}

uint64_t CondensedAdLockupWithIconBackground.__deallocating_deinit()
{

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit35CondensedAdLockupWithIconBackground_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE3801C@<X0>(void *a1@<X8>)
{
  v3 = *(*(*v1 + 16) + 264);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24EE38380(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *sub_24EE380C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = CondensedAdLockupWithIconBackground.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_24EE38148@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;

  return result;
}

double sub_24EE3815C()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackground(uint64_t a1)
{
  result = qword_27F231388;
  if (!qword_27F231388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EE3828C(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EE38380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EE383C8()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39CA50);
  __swift_project_value_buffer(v4, qword_27F39CA50);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

double Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v63 = a7;
  v64 = a8;
  v66 = a5;
  v67 = a6;
  v69 = a3;
  v57 = a15;
  v68 = a14;
  v61 = a12;
  v62 = a13;
  v58 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v52 - v20;
  v22 = sub_24F92A468();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2[1];
  v56 = *a2;
  v55 = v26;
  v54 = *(a2 + 16);
  v53 = *a4;
  v27 = type metadata accessor for Bootstrap(0);
  v28 = *(v27 + 24);
  type metadata accessor for RenderPipelineDiagnostics.Recorder();
  swift_allocObject();
  *(a9 + v28) = RenderPipelineDiagnostics.Recorder.init()();
  v29 = *(v23 + 16);
  v59 = a1;
  v29(v25, a1, v22);
  sub_24E615E00(v69, v72);
  v60 = v21;
  v30 = v21;
  v31 = v57;
  sub_24E60169C(v68, v30, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v31, v70, &unk_27F22EC00, &qword_24F99A9E8);
  v32 = *(v27 + 20);
  v65 = a9;
  v33 = a9 + v32;
  v34 = type metadata accessor for ASKBootstrapV2(0);
  v35 = &v33[v34[8]];
  *(v35 + 4) = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = &v33[v34[9]];
  *v36 = 0;
  v36[1] = 0;
  v29(&v33[v34[5]], v25, v22);
  v37 = v58;
  v38 = &v33[v34[6]];
  v39 = v55;
  *v38 = v56;
  *(v38 + 1) = v39;
  v38[16] = v54;
  *v33 = v53;
  sub_24E615E00(v72, &v33[v34[7]]);
  v40 = [objc_opt_self() currentProcess];
  if (v37)
  {
    v41 = sub_24F92B098();
    [v40 setTreatmentNamespace_];
  }

  sub_24E601704(v31, &unk_27F22EC00, &qword_24F99A9E8);
  sub_24E601704(v68, &qword_27F228530, &unk_24F93C6E0);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v42 = *(v23 + 8);
  v42(v59, v22);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v42(v25, v22);
  *&v33[v34[10]] = v40;
  v43 = &v33[v34[11]];
  v44 = v62;
  *v43 = v61;
  v43[1] = v44;
  v45 = &v33[v34[12]];
  v46 = v64;
  *v45 = v63;
  v45[1] = v46;
  sub_24E6009C8(v60, &v33[v34[13]], &qword_27F228530, &unk_24F93C6E0);
  v47 = &v33[v34[14]];
  result = *v70;
  v49 = v70[1];
  *v47 = v70[0];
  *(v47 + 1) = v49;
  *(v47 + 4) = v71;
  v50 = v65;
  v51 = v67;
  *v65 = v66;
  v50[1] = v51;
  return result;
}

uint64_t type metadata accessor for Bootstrap(uint64_t a1)
{
  result = qword_27F231398;
  if (!qword_27F231398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Bootstrap.run(rootViewController:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_24F91F648();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_24F92B7F8();
  v3[19] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v3[20] = v6;
  v3[21] = v5;

  return MEMORY[0x2822009F8](sub_24EE38A4C, v6, v5);
}

uint64_t sub_24EE38A4C()
{
  if (qword_27F210790 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  *(v0 + 176) = v1;
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_27F39CA50);
  *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  v2 = *(sub_24F928468() - 8);
  *(v0 + 200) = *(v2 + 72);
  *(v0 + 232) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_24EE38C18;
  v4 = *(v0 + 112);

  return sub_24EE39048(v4);
}

uint64_t sub_24EE38C18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_24EE38DD4;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_24EE38D40;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24EE38D40()
{
  v1 = v0[28];
  v2 = v0[13];

  sub_24EE396C4(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EE38DD4()
{

  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v1 = v0[6];
  v2 = v0[7];
  v0[5] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  sub_24F928438();
  sub_24E601704((v0 + 2), &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  if (qword_27F210618 != -1)
  {
    swift_once();
  }

  v4 = qword_27F22D9A8;
  [qword_27F22D9A8 lock];
  if (qword_27F210610 != -1)
  {
    swift_once();
  }

  v5 = off_27F22D9A0;
  if (off_27F22D9A0)
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[16];

    sub_24F91F638();
    sub_24F91F5E8();
    v10 = v9;
    (*(v7 + 8))(v6, v8);
    swift_beginAccess();
    v5[20] = v10;
    *(v5 + 168) = 0;
  }

  [v4 unlock];
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24EE39048(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(type metadata accessor for ASKBootstrapV2(0) - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EE3910C, 0, 0);
}

uint64_t sub_24EE3910C()
{
  v1 = v0[9];
  v2 = *(type metadata accessor for Bootstrap(0) + 20);
  if (qword_27F210570 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  if (qword_27F210010 != -1)
  {
    swift_once();
  }

  v4 = v0[12];
  v5 = v0[10];
  UserEngagementManager.startDefaultTabRequest()();
  sub_24EE3D064(v1 + v2, v4, type metadata accessor for ASKBootstrapV2);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_allocObject();
  sub_24ED352E4(v4, v7 + v6);
  v0[13] = sub_24ED33C1C(sub_24ED34F20, 0, sub_24EE3D004, v7);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB50, &qword_24F99A948);
  v9 = sub_24E602068(&qword_27F2313B0, &unk_27F22EB50, &qword_24F99A948, MEMORY[0x277D224B8]);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24EE3940C;

  return MEMORY[0x282180360](v0 + 7, v8, v9);
}

uint64_t sub_24EE3940C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 128) = *(v2 + 56);

    return MEMORY[0x2822009F8](sub_24EE39578, 0, 0);
  }
}

uint64_t sub_24EE39578()
{
  v2 = v0[15];
  v1 = v0[16];

  sub_24F928F58();
  v3 = sub_24EE3B4EC(v1);
  sub_24EE39E84(v0 + 2);
  if (v2)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    v7 = sub_24EE3B60C(v0[16], (v0 + 2), v3, v6);
    sub_24EE3C484(v6, v7);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_24EE396C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = sub_24F92A498();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9290F8();
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F929F48();
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  MEMORY[0x28223BE20](v7);
  v50 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v59 = sub_24F929158();
  v53 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_24EE3C6C0(a1);
  if (qword_27F210790 != -1)
  {
    swift_once();
  }

  v16 = sub_24F92AAE8();
  __swift_project_value_buffer(v16, qword_27F39CA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  v17 = swift_allocObject();
  v47 = xmmword_24F93DE60;
  *(v17 + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  type metadata accessor for DiagnosticsReporter(0);
  sub_24F928F28();
  v18 = type metadata accessor for Bootstrap(0);
  DiagnosticsReporter.flushRecorder(_:)(*&v48[*(v18 + 24)], v19);

  sub_24EE3CA8C(a1);
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v20 = v61;
  sub_24F92A758();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  v21.n128_f64[0] = (*(v11 + 8))(v13, v10);
  static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)(v15, v61, v62, v21);

  v22 = v50;
  v23 = v55;
  sub_24F928F28();
  sub_24F929E08();
  sub_24F928F28();
  v44 = v63;
  v48 = v15;
  v45 = v20;
  v46 = a1;
  sub_24F928F28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313A8, &qword_24F9A6178);
  v24 = swift_allocObject();
  *(v24 + 16) = v47;
  v25 = v49;
  v26 = v52;
  sub_24F928F28();
  v27 = swift_allocObject();
  (*(v51 + 32))(v27 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bag, v25, v26);
  *(v27 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_isOfflineBag) = 0;
  v28 = v27 + OBJC_IVAR____TtC12GameStoreKit14ASKBagContract_bagOfflinePolicy;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_24ED447C8;
  *(v29 + 24) = v27;
  *(v24 + 32) = sub_24E94DFB8;
  *(v24 + 40) = v29;
  type metadata accessor for MetricsPipelineTransformer(0);
  v30 = swift_allocObject();
  *(v30 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x277D84F90];
  *(v30 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v31 = v30 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState;
  v32 = v56;
  v33 = v22;
  v34 = v22;
  v35 = v23;
  (*(v56 + 16))(v30 + OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_originalState, v34, v23);
  v36 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v37 = v57;
  v38 = v60;
  (*(v57 + 16))(v31 + v36[6], v60, v5);
  *(v31 + v36[5]) = v44;
  *(v31 + v36[7]) = MEMORY[0x277D84F90];
  *(v31 + v36[8]) = v24;

  (*(v37 + 8))(v38, v5);
  (*(v32 + 8))(v33, v35);
  (*(v53 + 8))(v48, v59);
  v39 = OBJC_IVAR____TtC12GameStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v30 + v39) = MEMORY[0x277D84F90];

  v40 = v58;
  v41 = v54;
  *v58 = v46;
  v40[1] = v41;
  v40[2] = v30;
}

void sub_24EE39E84(uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313D0, &qword_24F9A6180);
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v37 - v4;
  v6 = sub_24F929DA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = v37 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  MEMORY[0x28223BE20](v17);
  v51 = v37 - v18;
  v19 = type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  v47 = v19;
  sub_24F92A758();
  v55 = v54[0];
  type metadata accessor for DeepLinkWithReferrerIntent(0);
  sub_24EE3D180(&qword_27F2313D8, type metadata accessor for DeepLinkWithReferrerIntent, &protocol conformance descriptor for DeepLinkWithReferrerIntent);
  sub_24F92A258();
  if (v2)
  {
  }

  else
  {
    sub_24F929D98();
    sub_24E602068(&qword_27F2313E0, &qword_27F2313D0, &qword_24F9A6180, MEMORY[0x277D222F0]);
    v44 = 0;
    sub_24F929D58();
    v20 = v13;
    v39 = v13;
    v21 = *(v7 + 8);
    v21(v20, v6);
    v22 = v7 + 8;
    (*(v46 + 8))(v5, v3);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313E8, &qword_24F9A6188);
    v42 = *(v7 + 72);
    v41 = *(v7 + 80);
    v23 = (v41 + 32) & ~v41;
    v24 = swift_allocObject();
    v25 = *(v7 + 16);
    v45 = v25;
    v25((v24 + v23), v16, v6);
    v46 = v7 + 16;
    v38 = v16;
    sub_24F929D98();
    v26 = v39;
    v25(v39, v24 + v23, v6);
    swift_setDeallocating();
    v21((v24 + v23), v6);
    swift_deallocClassInstance();
    sub_24F929D88();
    v27 = v26;
    v21(v26, v6);
    v21(v38, v6);
    v37[1] = v22;
    v28 = v50;
    sub_24F929D98();
    sub_24EE3D12C();
    v29 = v49;
    sub_24F929D58();
    v21(v28, v6);
    v30 = swift_allocObject();
    v31 = v45;
    v45((v30 + v23), v29, v6);
    sub_24F929D98();
    v31(v28, v30 + v23, v6);
    swift_setDeallocating();
    v21((v30 + v23), v6);
    swift_deallocClassInstance();
    sub_24F929D88();
    v40 = v21;
    v21(v28, v6);
    v21(v29, v6);
    v53[3] = v47;
    v53[4] = sub_24EE3D180(&qword_27F2313F8, type metadata accessor for JSIntentDispatcher, &protocol conformance descriptor for JSIntentDispatcher);
    v53[0] = v55;
    v54[3] = v6;
    v54[4] = MEMORY[0x277D22188];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
    v33 = v45;
    v45(boxed_opaque_existential_1, v27, v6);
    sub_24E60169C(v53, v52, &qword_27F231400, &qword_24F9A6190);

    sub_24F929D68();
    v34 = v40;
    v40(v27, v6);
    sub_24E601704(v53, &qword_27F231400, &qword_24F9A6190);
    v35 = v48;
    v48[3] = v6;
    v35[4] = MEMORY[0x277D22188];
    __swift_allocate_boxed_opaque_existential_1(v35);
    v36 = v51;
    v33();
    sub_24E60169C(v54, v53, &qword_27F231400, &qword_24F9A6190);
    sub_24F929D68();

    v34(v36, v6);
    sub_24E601704(v54, &qword_27F231400, &qword_24F9A6190);
  }
}

uint64_t sub_24EE3A554()
{
  v1 = v0;
  v2 = sub_24F928B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928B58();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231408, &unk_24F9A61A0);
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_24F93DE60;
    (*(v3 + 32))(v1 + v6, v5, v2);
  }

  return v1;
}

uint64_t sub_24EE3A6D8(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  v3 = sub_24F91F6B8();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v2[40] = swift_task_alloc();
  v4 = sub_24F928AD8();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v2[45] = swift_task_alloc();
  v5 = sub_24F9291A8();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EE3A8CC, 0, 0);
}

uint64_t sub_24EE3A8CC()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_24F928CA8();
  v4 = sub_24F9291B8();
  v6 = v5;
  result = (*(v2 + 8))(v1, v3);
  if (v6)
  {
    *(v0 + 248) = v4;
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 328);
    v39 = *(v0 + 344);
    v40 = *(v0 + 320);
    *(v0 + 256) = v6;
    sub_24F92C7F8();
    v12 = sub_24F91F4A8();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    sub_24F928A98();
    v13 = sub_24F929D28();
    v15 = v14;
    v16 = type metadata accessor for FlowAction(0);
    v17 = swift_allocObject();
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v18 = v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0;
    v19 = (v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v19 = 0;
    v19[1] = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 8;
    sub_24E60169C(v9, v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    v20 = (v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v20 = 0;
    v20[1] = 0;
    v21 = v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v21 = xmmword_24F9406F0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
    *(v21 + 40) = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v22 = (v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v22 = v13;
    v22[1] = v15;
    sub_24E60169C(v0 + 56, v0 + 96, &qword_27F235830, &qword_24F93B8C0);
    (*(v10 + 16))(v39, v8, v11);
    v23 = sub_24F929608();
    (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
    v24 = (v17 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v24 = 0u;
    v24[1] = 0u;
    sub_24E60169C(v0 + 96, v0 + 136, &qword_27F235830, &qword_24F93B8C0);
    if (*(v0 + 160))
    {
      v41 = *(v0 + 136);
      v42 = *(v0 + 152);
      v43 = *(v0 + 168);
    }

    else
    {
      v26 = *(v0 + 304);
      v25 = *(v0 + 312);
      v27 = *(v0 + 296);
      sub_24F91F6A8();
      v28 = sub_24F91F668();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      *(v0 + 264) = v28;
      *(v0 + 272) = v30;
      sub_24F92C7F8();
      sub_24E601704(v0 + 136, &qword_27F235830, &qword_24F93B8C0);
    }

    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);
    v35 = *(v0 + 320);
    v36 = *(v0 + 328);
    sub_24E601704(v0 + 96, &qword_27F235830, &qword_24F93B8C0);
    v37 = v17 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    *v37 = v41;
    *(v37 + 16) = v42;
    *(v37 + 32) = v43;
    sub_24E6009C8(v35, v17 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    (*(v33 + 32))(v17 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v34, v36);

    FlowAction.setPageData(_:)(v0 + 216);

    (*(v33 + 8))(v31, v36);
    sub_24E601704(v0 + 216, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v32, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(v0 + 56, &qword_27F235830, &qword_24F93B8C0);
    *(v0 + 40) = v16;
    *(v0 + 48) = sub_24EE3D180(&qword_27F216400, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v0 + 16) = v17;
    sub_24E615E00(v0 + 16, v0 + 176);
    sub_24F92A6C8();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    __break(1u);
  }

  return result;
}